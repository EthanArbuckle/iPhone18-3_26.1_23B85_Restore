uint64_t Assembly.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BEF0, &qword_220CA6840);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_220CA4A60;
  v2 = type metadata accessor for TelemetryAssembly();
  v3 = swift_allocObject();
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_220BF5ED4(qword_2812D18C0, type metadata accessor for TelemetryAssembly);
  *(v1 + 32) = v3;
  v4 = type metadata accessor for TrackerAssembly();
  v5 = swift_allocObject();
  *(v1 + 96) = v4;
  *(v1 + 104) = sub_220BF5ED4(&qword_2812D1960, type metadata accessor for TrackerAssembly);
  *(v1 + 72) = v5;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_220BF5ED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220BF5F84(uint64_t a1)
{
  v2 = sub_220CA0704();
  v3 = OUTLINED_FUNCTION_3(v2);
  v34 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220CA0634();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812D1768 != -1)
  {
    swift_once();
  }

  v17 = sub_220CA0A84();
  __swift_project_value_buffer(v17, qword_2812D1770);
  v18 = sub_220CA0A64();
  v19 = sub_220CA0DA4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_220BF4000, v18, v19, "Load Telemetry Container", v20, 2u);
    MEMORY[0x223D95B30](v20, -1, -1);
  }

  sub_220CA0674();
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3C8, &qword_220CB0480);
  (*(v12 + 104))(v16, *MEMORY[0x277D6CB30], v9);
  sub_220CA06E4();
  (*(v12 + 8))(v16, v9);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_220CA0664();
  sub_220CA0694();

  sub_220CA0654();
  OUTLINED_FUNCTION_3_0();
  sub_220CA0464();
  v32[2] = "lytics15TrackerAssembly";
  OUTLINED_FUNCTION_0_23();
  sub_220CA06A4();

  v33 = *MEMORY[0x277D6CF00];
  v21 = v34;
  v22 = v34 + 104;
  v23 = *(v34 + 104);
  v23(v8);
  sub_220CA0554();

  v24 = *(v21 + 8);
  v25 = OUTLINED_FUNCTION_2_20();
  v24(v25);
  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3D0, &qword_220CB0488);
  OUTLINED_FUNCTION_1_26();

  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3D8, &qword_220CB0490);
  OUTLINED_FUNCTION_1_26();

  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3E0, &qword_220CB0498);
  OUTLINED_FUNCTION_1_26();

  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3E8, &unk_220CB04A0);
  OUTLINED_FUNCTION_1_26();

  LODWORD(v34) = *MEMORY[0x277D6CF10];
  v32[0] = v22;
  v23(v8);
  sub_220CA0554();

  v26 = OUTLINED_FUNCTION_2_20();
  v32[1] = a1;
  v24(v26);
  sub_220CA0654();
  OUTLINED_FUNCTION_3_0();
  sub_220CA0114();
  OUTLINED_FUNCTION_0_23();
  sub_220CA06A4();

  sub_220CA0544();

  v27 = v33;
  (v23)(v8, v33, v2);
  sub_220CA0554();

  v28 = OUTLINED_FUNCTION_2_20();
  v24(v28);
  sub_220CA0654();
  OUTLINED_FUNCTION_3_0();
  sub_220CA0184();
  OUTLINED_FUNCTION_0_23();
  sub_220CA06A4();

  (v23)(v8, v27, v2);
  sub_220CA0554();

  v29 = OUTLINED_FUNCTION_2_20();
  v24(v29);
  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D158, &qword_220CAF6B8);
  OUTLINED_FUNCTION_0_23();
  sub_220CA06B4();

  (v23)(v8, v34, v2);
  sub_220CA0554();

  v30 = OUTLINED_FUNCTION_2_20();
  return (v24)(v30);
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return sub_220CA1094();
}

uint64_t OUTLINED_FUNCTION_1_4()
{

  return sub_220CA10D4();
}

void OUTLINED_FUNCTION_8()
{

  JUMPOUT(0x223D95B30);
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_11@<X0>(char a1@<W8>)
{
  *(v1 - 256) = a1;
  result = v1 - 256;
  v3 = *(v1 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_16@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = a1;
}

uint64_t OUTLINED_FUNCTION_1_18()
{

  return sub_220CA1054();
}

uint64_t OUTLINED_FUNCTION_1_19()
{

  return sub_220CA10D4();
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return sub_220CA1034();
}

uint64_t OUTLINED_FUNCTION_1_23()
{

  return sub_220CA1034();
}

uint64_t OUTLINED_FUNCTION_1_24()
{
  v2 = *(v0 - 160);

  return sub_220CA0FC4();
}

uint64_t OUTLINED_FUNCTION_1_26()
{

  return sub_220CA06B4();
}

uint64_t OUTLINED_FUNCTION_1_27()
{

  return sub_220CA1044();
}

uint64_t OUTLINED_FUNCTION_1_28()
{
  v3 = *(v1 - 208);
  *(v1 - 304) = *(v1 - 224);
  *(v1 - 288) = v3;
  v4 = *(v0 + 48);
  *(v1 - 272) = *(v0 + 32);
  *(v1 - 256) = v4;

  return sub_220C32880(v1 - 304);
}

uint64_t OUTLINED_FUNCTION_1_31()
{

  return sub_220CA10D4();
}

uint64_t sub_220BF6A04()
{
  v0 = sub_220CA0A84();
  __swift_allocate_value_buffer(v0, qword_2812D1770);
  __swift_project_value_buffer(v0, qword_2812D1770);
  return sub_220CA0A74();
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

uint64_t OUTLINED_FUNCTION_3_3()
{

  return sub_220CA1104();
}

uint64_t OUTLINED_FUNCTION_3_6()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return sub_220CA1034();
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return sub_220CA1034();
}

uint64_t OUTLINED_FUNCTION_3_16()
{

  return sub_220CA0FF4();
}

uint64_t OUTLINED_FUNCTION_3_18()
{

  return sub_220CA1034();
}

__n128 OUTLINED_FUNCTION_3_19()
{
  v2 = *(v1 - 144);
  *(v0 + 96) = *(v1 - 160);
  *(v0 + 112) = v2;
  result = *(v1 - 128);
  v4 = *(v1 - 112);
  *(v0 + 128) = result;
  *(v0 + 144) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_22()
{

  return sub_220CA10D4();
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return sub_220CA0FC4();
}

uint64_t OUTLINED_FUNCTION_0_7()
{

  return sub_220CA1004();
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return sub_220CA0FC4();
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return sub_220CA1034();
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return sub_220CA1124();
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return sub_220CA1004();
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return sub_220CA1034();
}

uint64_t OUTLINED_FUNCTION_0_21()
{

  return sub_220CA1104();
}

uint64_t OUTLINED_FUNCTION_0_24()
{

  return sub_220CA0C94();
}

void OUTLINED_FUNCTION_0_27()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x223D95B30);
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return sub_220CA1034();
}

uint64_t OUTLINED_FUNCTION_2_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return sub_220CA1034();
}

uint64_t OUTLINED_FUNCTION_2_13()
{
  v2 = *(v0 - 152);

  return sub_220CA1034();
}

uint64_t OUTLINED_FUNCTION_2_15()
{

  return sub_220CA1034();
}

uint64_t sub_220BF7378()
{
  v0 = sub_220CA0634();
  v1 = OUTLINED_FUNCTION_3(v0);
  v41 = v2;
  v42 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_11();
  v40 = v6 - v5;
  v7 = sub_220CA0744();
  v8 = OUTLINED_FUNCTION_3(v7);
  v38 = v9;
  v39 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v37 = v13 - v12;
  v14 = sub_220CA0704();
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  v22 = v21 - v20;
  sub_220CA0654();
  OUTLINED_FUNCTION_3_0();
  sub_220C9FE44();
  sub_220CA06A4();
  OUTLINED_FUNCTION_5_12();
  v23 = *MEMORY[0x277D6CF10];
  v24 = *(v17 + 104);
  v43 = *MEMORY[0x277D6CF10];
  v24(v22, v23, v14);
  OUTLINED_FUNCTION_9_8();

  v25 = *(v17 + 8);
  v26 = OUTLINED_FUNCTION_4_15();
  v25(v26);
  sub_220CA0654();
  OUTLINED_FUNCTION_3_0();
  sub_220CA0154();
  OUTLINED_FUNCTION_0_22();
  sub_220CA06A4();
  OUTLINED_FUNCTION_5_12();
  sub_220CA0544();

  v24(v22, v23, v14);
  sub_220CA0554();

  v27 = OUTLINED_FUNCTION_4_15();
  v25(v27);
  sub_220CA0654();
  OUTLINED_FUNCTION_3_0();
  sub_220CA0114();
  OUTLINED_FUNCTION_0_22();
  sub_220CA06A4();
  OUTLINED_FUNCTION_5_12();
  sub_220CA0544();

  v36 = *MEMORY[0x277D6CF00];
  (v24)(v22);
  sub_220CA0554();

  v28 = OUTLINED_FUNCTION_4_15();
  v25(v28);
  sub_220CA0654();
  OUTLINED_FUNCTION_3_0();
  sub_220CA0124();
  OUTLINED_FUNCTION_0_22();
  sub_220CA06B4();

  sub_220CA0654();
  OUTLINED_FUNCTION_3_0();
  sub_220CA0074();
  OUTLINED_FUNCTION_0_22();
  sub_220CA06A4();
  OUTLINED_FUNCTION_5_12();
  v24(v22, *MEMORY[0x277D6CF08], v14);
  OUTLINED_FUNCTION_9_8();

  v29 = OUTLINED_FUNCTION_4_15();
  v25(v29);
  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D138, &qword_220CAF690);
  OUTLINED_FUNCTION_0_22();
  sub_220CA06B4();
  OUTLINED_FUNCTION_5_12();
  v24(v22, v43, v14);
  OUTLINED_FUNCTION_9_8();

  (v25)(v22, v14);
  sub_220CA0654();
  OUTLINED_FUNCTION_3_0();
  sub_220C9FF44();
  OUTLINED_FUNCTION_0_22();
  sub_220CA06A4();
  OUTLINED_FUNCTION_5_12();
  v24(v22, v43, v14);
  OUTLINED_FUNCTION_9_8();

  v30 = OUTLINED_FUNCTION_6_12();
  v25(v30);
  sub_220CA0654();
  OUTLINED_FUNCTION_0_22();
  sub_220CA06B4();
  OUTLINED_FUNCTION_5_12();
  (*(v38 + 104))(v37, *MEMORY[0x277D6CF70], v39);
  sub_220CA0534();

  (*(v38 + 8))(v37, v39);
  sub_220CA0664();
  OUTLINED_FUNCTION_3_0();
  type metadata accessor for FlushAnalyticsBatchesTask();
  OUTLINED_FUNCTION_0_22();
  sub_220CA06A4();

  sub_220CA0674();
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  (*(v41 + 104))(v40, *MEMORY[0x277D6CB30], v42);
  sub_220CA06D4();
  (*(v41 + 8))(v40, v42);
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_220CA0654();
  OUTLINED_FUNCTION_3_0();
  sub_220CA0464();
  OUTLINED_FUNCTION_0_22();
  sub_220CA06A4();
  OUTLINED_FUNCTION_7_13();
  v24(v22, v36, v14);
  OUTLINED_FUNCTION_8_11();

  v31 = OUTLINED_FUNCTION_4_15();
  v25(v31);
  sub_220CA0664();
  OUTLINED_FUNCTION_3_0();
  sub_220CA01E4();
  OUTLINED_FUNCTION_0_22();
  sub_220CA06A4();

  sub_220CA0664();
  OUTLINED_FUNCTION_3_0();
  sub_220CA0294();
  OUTLINED_FUNCTION_0_22();
  sub_220CA06A4();

  sub_220CA0654();
  OUTLINED_FUNCTION_3_0();
  sub_220CA0424();
  OUTLINED_FUNCTION_0_22();
  sub_220CA06A4();

  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D140, &qword_220CAF698);
  OUTLINED_FUNCTION_0_22();
  sub_220CA06B4();

  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D148, &unk_220CAF6A0);
  OUTLINED_FUNCTION_0_22();
  sub_220CA06B4();

  sub_220CA0654();
  OUTLINED_FUNCTION_3_0();
  sub_220CA0234();

  sub_220CA06A4();
  OUTLINED_FUNCTION_7_13();

  v24(v22, v43, v14);
  OUTLINED_FUNCTION_8_11();

  v32 = OUTLINED_FUNCTION_6_12();
  v25(v32);
  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D150, &qword_220CAF6B0);
  OUTLINED_FUNCTION_0_22();
  sub_220CA06A4();

  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D158, &qword_220CAF6B8);
  OUTLINED_FUNCTION_0_22();
  sub_220CA06B4();
  OUTLINED_FUNCTION_7_13();
  v24(v22, v43, v14);
  OUTLINED_FUNCTION_8_11();

  v33 = OUTLINED_FUNCTION_6_12();
  v25(v33);
  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D160, &unk_220CAF6C0);
  OUTLINED_FUNCTION_0_22();
  sub_220CA06B4();
  OUTLINED_FUNCTION_7_13();
  v24(v22, v43, v14);
  OUTLINED_FUNCTION_8_11();

  v34 = OUTLINED_FUNCTION_6_12();
  v25(v34);
  sub_220CA0664();
  sub_220CA0694();
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return sub_220CA1034();
}

uint64_t OUTLINED_FUNCTION_4_5@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return sub_220CA1154();
}

void OUTLINED_FUNCTION_4_10()
{
  v5 = (v3 + *(v2 + 24));
  *v5 = v1;
  v5[1] = v0;
  *(v3 + *(v2 + 28)) = v4;
}

uint64_t OUTLINED_FUNCTION_4_11()
{

  return sub_220CA1094();
}

void OUTLINED_FUNCTION_4_12()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
  *(v2 - 128) = MEMORY[0x277D85DD0];
}

uint64_t OUTLINED_FUNCTION_4_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821D2960](a1, 0xE400000000000000, a3, 0, 0, v3);
}

uint64_t OUTLINED_FUNCTION_7_0()
{
  v2 = *(v0 - 152);

  return sub_220CA1034();
}

uint64_t OUTLINED_FUNCTION_5_11()
{

  return sub_220CA1034();
}

uint64_t OUTLINED_FUNCTION_5_12()
{
}

uint64_t OUTLINED_FUNCTION_5_13@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  v3 = *(v1 - 160);

  return sub_220CA0FF4();
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return type metadata accessor for ReverseGeocodingFailedEvent(0);
}

void OUTLINED_FUNCTION_8_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 72);

  _os_log_impl(a1, v8, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_8_6(uint64_t a1)
{

  return sub_220C47CA4(v1, a1 + v3, v2);
}

uint64_t OUTLINED_FUNCTION_8_7()
{

  return type metadata accessor for WeatherDataLoadFailedEvent(0);
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return sub_220CA0FC4();
}

uint64_t OUTLINED_FUNCTION_8_9()
{

  return type metadata accessor for WidgetRefreshFailedEvent(0);
}

uint64_t OUTLINED_FUNCTION_8_10()
{

  return sub_220C9FA74();
}

uint64_t OUTLINED_FUNCTION_8_11()
{

  return sub_220CA0554();
}

uint64_t OUTLINED_FUNCTION_8_13()
{

  return type metadata accessor for WidgetRefreshEvent(0);
}

void OUTLINED_FUNCTION_8_14()
{

  JUMPOUT(0x223D95B30);
}

uint64_t OUTLINED_FUNCTION_8_15()
{

  return sub_220CA0C54();
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return MEMORY[0x2821FCDF8](v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_6_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821D2960](a1, a2, a3, 0, 0, v3);
}

void OUTLINED_FUNCTION_6_13()
{

  JUMPOUT(0x223D95B30);
}

uint64_t OUTLINED_FUNCTION_7_1()
{
  v1 = *(v0 - 120);
  v2 = *(*(v0 - 128) + 8);
  return *(v0 - 112);
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return type metadata accessor for WeatherSession();
}

void OUTLINED_FUNCTION_7_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_7_5(uint64_t a1)
{

  return sub_220C3E174(v1, a1 + v2);
}

uint64_t OUTLINED_FUNCTION_7_13()
{
}

uint64_t OUTLINED_FUNCTION_7_14()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_15()
{

  return swift_slowAlloc();
}

uint64_t sub_220BF84BC(void *a1)
{
  v2 = sub_220CA0254();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D1B0, &unk_220CB04C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D1B8, &unk_220CAF710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - v10;
  v12 = sub_220CA00F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220CA0324();
  v36 = *(v17 - 8);
  v18 = *(v36 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D1C0, &unk_220CB04D0);
  v21 = *(v13 + 72);
  v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_220CA4A60;
  sub_220CA00D4();
  sub_220CA00E4();
  v41[0] = v23;
  sub_220BF89D8(&qword_2812D1A18, 255, MEMORY[0x277CEAD38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D1C8, &unk_220CAF720);
  sub_220BF8A20(&qword_2812D1750, &qword_27CF7D1C8, &unk_220CAF720);
  v37 = v16;
  sub_220CA0F14();
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0074();
  result = sub_220CA0614();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v35 = v17;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = sub_220CA0124();
  sub_220CA0624();
  result = __swift_getEnumTagSinglePayload(v11, 1, v27);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v41[3] = v27;
  v41[4] = MEMORY[0x277CEAD58];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(*(v27 - 8) + 32))(boxed_opaque_existential_1, v11, v27);
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D138, &qword_220CAF690);
  result = sub_220CA0624();
  if (!v40)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = sub_220CA02A4();
  v32 = v38;
  sub_220CA0624();
  result = __swift_getEnumTagSinglePayload(v32, 1, v31);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_220CA0244();
  sub_220CA0314();
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C9FE44();
  result = sub_220CA0614();
  if (result)
  {
    v34 = sub_220C9FE24();

    (*(v36 + 8))(v20, v35);
    return v34;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_220BF89D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220BF8A20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_220BF8A74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D1A0, &qword_220CAF6F8);
  v0 = *(sub_220C9FEF4() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_220CAF600;
  sub_220C9FEE4();
  sub_220C9FEC4();
  sub_220C9FED4();
  sub_220BF89D8(&qword_2812D1A20, 255, MEMORY[0x277CEAC90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D1A8, &unk_220CAF700);
  sub_220BF8A20(&qword_2812D1758, &qword_27CF7D1A8, &unk_220CAF700);
  return sub_220CA0F14();
}

uint64_t sub_220BF8BF0()
{
  v0 = sub_220C9FEF4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_220BF8A74();
  v2 = sub_220CA0074();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_220CA0064();
}

uint64_t sub_220BF8C84@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_220CAF5F0;
  v2 = *MEMORY[0x277CEAD48];
  v3 = sub_220CA0124();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_220BF8D8C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_220CA0364();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_220CA0354();
  v6 = MEMORY[0x277CEAE28];
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_220BF8DD4(void *a1)
{
  v2 = sub_220CA0274();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0154();
  result = sub_220CA0614();
  if (result)
  {
    sub_220C9FE44();
    sub_220C9FFF4();
    sub_220C9FFE4();
    sub_220CA0264();
    return sub_220C9FE34();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220BF8EF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_220CA0B54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220CA0B94();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220BF9260(0, &qword_2812D0F50, 0x277CCA8D8);
  result = sub_220CA0EB4();
  if ((result & 1) == 0)
  {
    result = sub_220CA0EA4();
    if ((result & 1) == 0)
    {
      sub_220BF9260(0, &qword_2812D1740, 0x277D85C78);
      v19 = sub_220CA0DE4();
      sub_220BF92A0(a2, v21);
      v14 = swift_allocObject();
      sub_220BF9210(v21, v14 + 16);
      aBlock[4] = sub_220C01FB8;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_220C01EFC;
      aBlock[3] = &block_descriptor_2;
      v18 = _Block_copy(aBlock);

      sub_220CA0B64();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_220BF89D8(&qword_2812D1760, 255, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF30, &qword_220CA6BB0);
      sub_220BF8A20(&qword_2812D1748, &qword_27CF7BF30, &qword_220CA6BB0);
      sub_220CA0F14();
      v16 = v18;
      v15 = v19;
      MEMORY[0x223D95170](0, v12, v7, v18);
      _Block_release(v16);

      (*(v4 + 8))(v7, v3);
      return (*(v9 + 8))(v12, v8);
    }
  }

  return result;
}

uint64_t sub_220BF9210(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_220BF9228()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220BF9260(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_220BF92A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_220BF9354@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, char *)@<X4>, uint64_t *a5@<X8>)
{
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_3_0();
  sub_220CA0464();
  OUTLINED_FUNCTION_4_17();
  result = sub_220CA05F4();
  if (result)
  {
    v12 = result;
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3F8, &qword_220CB2B40);
    result = sub_220CA0624();
    if (v15)
    {
      a5[3] = a2;
      a5[4] = a3;
      *a5 = swift_allocObject();
      return a4(v12, v14);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220BF948C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0114();
  result = sub_220CA05F4();
  if (result)
  {
    v3 = sub_220CA0104();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220BF9510(void *a1)
{
  v2 = sub_220CA0254();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D1B0, &unk_220CB04C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D1B8, &unk_220CAF710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - v10;
  v12 = sub_220CA00F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220CA0324();
  v36 = *(v17 - 8);
  v18 = *(v36 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D1C0, &unk_220CB04D0);
  v21 = *(v13 + 72);
  v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_220CA4A60;
  sub_220CA00D4();
  sub_220CA00E4();
  v41[0] = v23;
  sub_220BF9A84(&qword_2812D1A18, MEMORY[0x277CEAD38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D1C8, &unk_220CAF720);
  sub_220BF9A3C(&qword_2812D1750, &qword_27CF7D1C8, &unk_220CAF720);
  v37 = v16;
  sub_220CA0F14();
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0074();
  result = sub_220CA0614();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v35 = v17;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = sub_220CA0124();
  sub_220CA0624();
  result = __swift_getEnumTagSinglePayload(v11, 1, v27);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v41[3] = v27;
  v41[4] = MEMORY[0x277CEAD58];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(*(v27 - 8) + 32))(boxed_opaque_existential_1, v11, v27);
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D138, &qword_220CAF690);
  result = sub_220CA0624();
  if (!v40)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = sub_220CA02A4();
  v32 = v38;
  sub_220CA0624();
  result = __swift_getEnumTagSinglePayload(v32, 1, v31);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_220CA0244();
  sub_220CA0314();
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C9FE44();
  result = sub_220CA0614();
  if (result)
  {
    v34 = sub_220C9FE24();

    (*(v36 + 8))(v20, v35);
    return v34;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_220BF9A3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_220BF9A84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220BF9ACC()
{
  v0 = sub_220CA0704();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220CA01E4();
  sub_220CA06A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D168, &qword_220CB04E0);
  sub_220CA06B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D170, &unk_220CAF6D0);
  sub_220CA06B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3F8, &qword_220CB2B40);
  sub_220CA06B4();

  type metadata accessor for TelemetrySessionManager();
  sub_220CA06A4();
  sub_220CA0544();

  v5 = *MEMORY[0x277D6CF10];
  v6 = v1[13];
  v6(v4, v5, v0);
  sub_220CA0554();

  v7 = v1[1];
  v7(v4, v0);
  type metadata accessor for WidgetNetworkTelemetryManager();
  sub_220CA06A4();
  v6(v4, v5, v0);
  sub_220CA0554();

  v7(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D400, qword_220CB04E8);
  sub_220CA06B4();

  sub_220CA0294();
  sub_220CA06A4();
}

uint64_t sub_220BF9E84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D198, &unk_220CB2BC0);
  result = sub_220CA0624();
  if (v12)
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D170, &unk_220CAF6D0);
    result = sub_220CA0624();
    if (v10)
    {
      v7 = type metadata accessor for TelemetryPrivacySampler();
      v8 = swift_allocObject();
      type metadata accessor for AppConfigTelemetryPrivacySampler();
      swift_allocObject();
      result = sub_220BFA138(&v11, &v9);
      *(v8 + 16) = result;
      a2[3] = v7;
      a2[4] = &off_28346D668;
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

uint64_t sub_220BF9FA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D168, &qword_220CB04E0);
  result = sub_220CA0624();
  if (v9)
  {
    v5 = sub_220C9FB24();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = sub_220C9FB14();
    v8 = MEMORY[0x277D7AA48];
    a2[3] = v5;
    a2[4] = v8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220BFA048@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D178, &qword_220CB04B0);
  result = sub_220CA0624();
  if (v9)
  {
    v5 = sub_220C9FC64();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = sub_220C9FC54();
    v8 = MEMORY[0x277D7AB00];
    a2[3] = v5;
    a2[4] = v8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220BFA138(__int128 *a1, __int128 *a2)
{
  *(v2 + 96) = 2;
  sub_220BF9210(a1, v2 + 16);
  sub_220BF9210(a2, v2 + 56);
  return v2;
}

void sub_220BFA178()
{
  OUTLINED_FUNCTION_13_4();
  v1 = v0;
  v23 = v0;
  v3 = v2;
  v5 = v4;
  v24 = sub_220CA0DD4();
  v6 = OUTLINED_FUNCTION_3(v24);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v13 = v12 - v11;
  v14 = sub_220CA0DC4();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  v18 = sub_220CA0B94();
  v19 = OUTLINED_FUNCTION_14_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11();
  *v5 = v3;
  sub_220BF92A0(v1, (v5 + 1));
  sub_220BFA50C();

  sub_220CA0B84();
  sub_220BFD0B4(&qword_2812D0F58, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CCD0, &qword_220CACAE0);
  sub_220BF8A20(&qword_2812D0F80, &qword_27CF7CCD0, &qword_220CACAE0);
  sub_220CA0F14();
  (*(v8 + 104))(v13, *MEMORY[0x277D85260], v24);
  v22 = sub_220CA0E04();

  __swift_destroy_boxed_opaque_existential_1(v23);
  v5[6] = v22;
  OUTLINED_FUNCTION_10_5();
}

uint64_t OUTLINED_FUNCTION_17()
{

  return sub_220CA1104();
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return type metadata accessor for ComponentExposureEvent(0);
}

uint64_t OUTLINED_FUNCTION_13_3()
{

  return sub_220CA1154();
}

void OUTLINED_FUNCTION_15_0()
{
  v2 = *(v0 - 176);

  JUMPOUT(0x223D95170);
}

uint64_t OUTLINED_FUNCTION_13_5(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return type metadata accessor for MapViewEvent(0);
}

uint64_t OUTLINED_FUNCTION_13_7()
{
  v2 = *(v0 + 32);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_13_9()
{

  return type metadata accessor for ComponentEngagementEvent(0);
}

unint64_t sub_220BFA50C()
{
  result = qword_2812D1740;
  if (!qword_2812D1740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812D1740);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10()
{

  return type metadata accessor for AppSessionEndEvent(0);
}

uint64_t OUTLINED_FUNCTION_10_3()
{
  v1 = *(*(v0 - 144) + 8);
  result = *(v0 - 128);
  v3 = *(v0 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_4()
{

  return type metadata accessor for MenuDetailViewEvent(0);
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_220CA0F14();
}

uint64_t type metadata accessor for GeocodeTelemetry()
{
  result = qword_2812D1530;
  if (!qword_2812D1530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220BFA6C0()
{
  result = sub_220CA0A84();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t GeocodeTelemetry.init(backend:clock:)(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v6 = sub_220CA05A4();
  v7 = OUTLINED_FUNCTION_14_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11();
  sub_220CA0594();
  v10 = sub_220CA05C4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v2 + 16) = sub_220CA05B4();
  v13 = OBJC_IVAR____TtC16WeatherAnalytics16GeocodeTelemetry_logger;
  if (qword_2812D0F98 != -1)
  {
    swift_once();
  }

  v14 = sub_220CA0A84();
  v15 = __swift_project_value_buffer(v14, qword_2812D0FA0);
  (*(*(v14 - 8) + 16))(v3 + v13, v15, v14);
  *(v3 + OBJC_IVAR____TtC16WeatherAnalytics16GeocodeTelemetry_geocodingTasks) = MEMORY[0x277D84F98];
  sub_220BF9210(a1, v3 + 24);
  sub_220BF9210(a2, v3 + 64);
  return v3;
}

uint64_t sub_220BFA8D0()
{
  v0 = sub_220CA0A84();
  __swift_allocate_value_buffer(v0, qword_2812D0FA0);
  __swift_project_value_buffer(v0, qword_2812D0FA0);
  return sub_220CA0A74();
}

uint64_t GeocodeTelemetry.__deallocating_deinit()
{
  GeocodeTelemetry.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *GeocodeTelemetry.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v2 = OBJC_IVAR____TtC16WeatherAnalytics16GeocodeTelemetry_logger;
  v3 = sub_220CA0A84();
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + OBJC_IVAR____TtC16WeatherAnalytics16GeocodeTelemetry_geocodingTasks);

  return v0;
}

uint64_t sub_220BFAA28@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(char *, void *)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D198, &unk_220CB2BC0);
  result = sub_220CA0624();
  if (v16)
  {
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D170, &unk_220CAF6D0);
    result = sub_220CA0624();
    if (v14[3])
    {
      v13 = a2(0);
      swift_allocObject();
      result = a3(v15, v14);
      a5[3] = v13;
      a5[4] = a4;
      *a5 = result;
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

uint64_t sub_220BFAB70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D168, &qword_220CB04E0);
  sub_220CA06B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D170, &unk_220CAF6D0);
  sub_220CA06B4();
}

uint64_t sub_220BFAC40(__int128 *a1, __int128 *a2)
{
  *(v2 + 100) = 256;
  *(v2 + 96) = 0;
  sub_220BF9210(a1, v2 + 16);
  sub_220BF9210(a2, v2 + 56);
  return v2;
}

uint64_t sub_220BFAC84(uint64_t a1, void *a2)
{
  sub_220BF92A0(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3C8, &qword_220CB0480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D440, &qword_220CB0538);
  if (swift_dynamicCast())
  {
    v3 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D448, &unk_220CB0540);
    result = sub_220CA0624();
    if (!v21)
    {
      __break(1u);
      return result;
    }

    sub_220BF9210(&v20, v22);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    sub_220C9FDC4();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v5 = objc_opt_self();
  v6 = sub_220BFAF38([v5 mainBundle]);
  if (v7)
  {
    if (v6 == 0xD000000000000018 && v7 == 0x8000000220CB5220)
    {
    }

    else
    {
      v9 = sub_220CA1154();

      if ((v9 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v19 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for WidgetNetworkTelemetryManager();
    goto LABEL_25;
  }

LABEL_10:
  v10 = sub_220BFAF38([v5 mainBundle]);
  if (v11)
  {
    if (v10 == 0xD000000000000012 && v11 == 0x8000000220CB61A0)
    {
    }

    v13 = sub_220CA1154();

    if (v13)
    {
      return result;
    }
  }

  v14 = sub_220BFAF38([v5 mainBundle]);
  if (!v15)
  {
LABEL_22:
    v18 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for TelemetrySessionManager();
LABEL_25:
    sub_220CA0614();
  }

  if (v14 == 0xD000000000000016 && v15 == 0x8000000220CB6180)
  {
  }

  v17 = sub_220CA1154();

  if ((v17 & 1) == 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_220BFAF38(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_220CA0C24();

  return v3;
}

uint64_t sub_220BFAFA8(void *a1)
{
  v2 = sub_220CA05A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0114();
  result = sub_220CA05F4();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D418, &qword_220CB0510);
  result = sub_220CA0624();
  if (!v53[3])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D420, &qword_220CB0518);
  result = sub_220CA0624();
  if (!v52[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D178, &qword_220CB04B0);
  result = sub_220CA0624();
  if (!v51[3])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3F8, &qword_220CB2B40);
  result = sub_220CA0624();
  if (!v50[3])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3C8, &qword_220CB0480);
  result = sub_220CA0624();
  if (!v49)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D188, &qword_220CAF6E8);
  result = sub_220CA0624();
  if (!v47[3])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D400, qword_220CB04E8);
  result = sub_220CA0624();
  v15 = v46;
  if (v46)
  {
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
    v41 = &v41;
    v17 = *(*(v15 - 8) + 64);
    MEMORY[0x28223BE20](v16);
    v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v22 = type metadata accessor for NetworkTelemetryTracker();
    v44[3] = v22;
    v44[4] = &off_28346D710;
    v44[0] = v21;
    type metadata accessor for TelemetrySessionManager();
    v23 = swift_allocObject();
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v44, v22);
    v25 = *(*(v22 - 8) + 64);
    MEMORY[0x28223BE20](v24);
    v27 = (&v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    v29 = *v27;
    v43[3] = v22;
    v43[4] = &off_28346D710;
    v43[0] = v29;
    v23[33] = dispatch_group_create();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D428, &qword_220CB0520);
    v30 = *(v3 + 72);
    v31 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_220CA4A70;
    sub_220CA0594();
    v42 = v32;
    sub_220BF9A84(&qword_2812D0D70, MEMORY[0x277D6CA08]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D430, &qword_220CB0528);
    sub_220BF9A3C(&qword_2812CE7B8, &qword_27CF7D430, &qword_220CB0528);
    sub_220CA0F14();
    v33 = sub_220CA05C4();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v23[34] = sub_220CA05B4();
    LOBYTE(v42) = 0;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D438, &qword_220CB0530);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v23[35] = sub_220CA0714();
    v23[36] = 0;
    v23[2] = v7;
    sub_220BF92A0(v53, (v23 + 3));
    sub_220BF92A0(v52, (v23 + 8));
    sub_220BF92A0(v51, (v23 + 13));
    sub_220BF92A0(v50, (v23 + 18));
    sub_220BF92A0(v47, (v23 + 23));
    sub_220BF92A0(v43, (v23 + 28));
    __swift_project_boxed_opaque_existential_1(v48, v49);

    v42 = sub_220CA09E4();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D408, &qword_220CB0500);
    sub_220BF9A3C(&qword_2812D0F90, &qword_27CF7D408, &qword_220CB0500);
    v39 = sub_220CA0A94();

    v40 = v23[36];
    v23[36] = v39;

    sub_220BFBA88();

    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v50);
    __swift_destroy_boxed_opaque_existential_1(v51);
    __swift_destroy_boxed_opaque_existential_1(v52);
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v48);
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    return v23;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_220BFB710()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220BFB748@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_220C9FCB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220C9FB84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D198, &unk_220CB2BC0);
  result = sub_220CA0624();
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1(v20, v21);
    sub_220C9FD94();
    __swift_destroy_boxed_opaque_existential_1(v20);
    sub_220C9FB74();
    v16 = sub_220C9FCA4();
    (*(v5 + 8))(v8, v4);
    v17 = type metadata accessor for NetworkTelemetryTracker();
    swift_allocObject();
    v18 = sub_220BFB99C(v16 & 1);
    a2[3] = v17;
    a2[4] = &off_28346D710;
    *a2 = v18;
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220BFB99C(char a1)
{
  if (a1)
  {
    v2 = 1;
  }

  else
  {
    sub_220C9FA04();
    sub_220C9F9F4();
    if (qword_2812D0EE8 != -1)
    {
      swift_once();
    }

    sub_220C9F9E4();

    v2 = v4;
  }

  *(v1 + 16) = v2;
  return v1;
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

uint64_t sub_220BFBA88()
{
  v1 = sub_220C9F7D4();
  v2 = OUTLINED_FUNCTION_3(v1);
  v42 = v3;
  v43 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  v41 = v7 - v6;
  v8 = sub_220C9F804();
  v9 = OUTLINED_FUNCTION_3(v8);
  v39 = v10;
  v40 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v15 = v14 - v13;
  v38 = sub_220CA0434();
  v16 = OUTLINED_FUNCTION_3(v38);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v23 = v22 - v21;
  v24 = sub_220C9FC14();
  v25 = OUTLINED_FUNCTION_3(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_11();
  v32 = v31 - v30;
  v33 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  sub_220C9FDB4();
  (*(v27 + 8))(v32, v24);
  v34 = v0[2];
  (*(v18 + 104))(v23, *MEMORY[0x277CEAE78], v38);
  sub_220C9F7F4();
  sub_220C9F7E4();
  (*(v39 + 8))(v15, v40);
  sub_220C9F7C4();
  sub_220CA00C4();

  (*(v42 + 8))(v41, v43);
  (*(v18 + 8))(v23, v38);
  v35 = v0[21];
  v36 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v35);
  (*(v36 + 8))(2, v35, v36);
  return sub_220BFCA74();
}

uint64_t sub_220BFBDBC()
{
  v1 = *(v0 + 16);
  KeyPath = swift_getKeyPath();
  LOBYTE(v1) = sub_220BFBE64(KeyPath, 0x746C7561666544, 0xE700000000000000);

  return v1 & 1;
}

uint64_t sub_220BFBE38@<X0>(void *a1@<X8>)
{
  result = sub_220C9FC94();
  *a1 = v3;
  return result;
}

uint64_t sub_220BFBE64(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_220C9FB84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_220BFC2D8())
  {
    if (qword_2812D1768 != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    v11 = sub_220CA0A84();
    __swift_project_value_buffer(v11, qword_2812D1770);

    v12 = sub_220CA0A64();
    v13 = sub_220CA0DA4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = *&v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_220BFC484(a2, a3, &v27);
      _os_log_impl(&dword_220BF4000, v12, v13, "%s: Bypass Sampling has been enabled in the Debug menu.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();
    }

    v16 = 1;
  }

  else
  {
    v17 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    sub_220C9FD94();
    swift_getAtKeyPath();
    (*(v7 + 8))(v10, v6);
    v18 = v27;
    v19 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
    v16 = sub_220C9FBF4();
    if (qword_2812D1768 != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    v20 = sub_220CA0A84();
    __swift_project_value_buffer(v20, qword_2812D1770);

    v21 = sub_220CA0A64();
    v22 = sub_220CA0DA4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = *&v24;
      *v23 = 136315650;
      *(v23 + 4) = sub_220BFC484(a2, a3, &v27);
      *(v23 + 12) = 1026;
      *(v23 + 14) = v16 & 1;
      *(v23 + 18) = 2050;
      *(v23 + 20) = v18;
      _os_log_impl(&dword_220BF4000, v21, v22, "%s: Privacy sampler evinced result %{BOOL,public}d for sampling rate : %{public}f", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();
    }
  }

  return v16 & 1;
}

uint64_t sub_220BFC1C4()
{
  v0 = sub_220C9FA14();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_14();
  v4 = sub_220C9FA34();
  v5 = OUTLINED_FUNCTION_14_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_20_1();
  v8 = *MEMORY[0x277D6D098];
  v9 = OUTLINED_FUNCTION_5_9();
  v10(v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDA8, &qword_220CAD568);
  OUTLINED_FUNCTION_13_5(v11);
  OUTLINED_FUNCTION_7_10();
  result = OUTLINED_FUNCTION_8_10();
  qword_2812D16D8 = result;
  return result;
}

uint64_t sub_220BFC2D8()
{
  v1 = *v0;
  v2 = *(v0 + 96);
  if (v2 == 2)
  {
    if (qword_2812D16D0 != -1)
    {
      swift_once();
    }

    sub_220BFC400();
    sub_220C9F994();
    LOBYTE(v2) = v4;
    *(v0 + 96) = v4;
  }

  return v2 & 1;
}

void OUTLINED_FUNCTION_20_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 144);

  _os_log_impl(a1, v8, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return sub_220C9FA24();
}

unint64_t sub_220BFC400()
{
  result = qword_2812D10D8[0];
  if (!qword_2812D10D8[0])
  {
    type metadata accessor for AppConfigTelemetryPrivacySampler();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812D10D8);
  }

  return result;
}

uint64_t sub_220BFC484(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_220BFC6AC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_220BFC908(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_220BFC548(uint64_t a1, unint64_t a2)
{
  v4 = sub_220BFC594(a1, a2);
  sub_220BFC824(&unk_283464370);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_220BFC594(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_220CA0C84())
  {
    result = sub_220BFC7AC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_220CA0F44();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_220CA0F54();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_220BFC6AC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_220BFC548(a5, a6);
    *a1 = v9;
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
    result = sub_220CA0F54();
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

void *sub_220BFC7AC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD98, &qword_220CA5B70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_220BFC824(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_220C34C90(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_220BFC908(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_9_1()
{
  result = *(v0 - 128);
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);
  v4 = *(v0 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_4()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_6()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return sub_220CA0554();
}

uint64_t OUTLINED_FUNCTION_9_9()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_9_10(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;
  v13 = *(v11 + 112);
  v14 = *(v11 + 120);

  return sub_220BFC484(v13, v14, &a10);
}

uint64_t OUTLINED_FUNCTION_9_11()
{

  return sub_220CA11F4();
}

uint64_t sub_220BFCA74()
{
  v1 = *(v0 + 280);

  sub_220CA0734();
}

void sub_220BFCAF0()
{
  OUTLINED_FUNCTION_13_4();
  v1 = v0;
  v21 = v0;
  v3 = v2;
  v5 = v4;
  v22 = sub_220CA0DD4();
  v6 = OUTLINED_FUNCTION_3(v22);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v13 = v12 - v11;
  v14 = sub_220CA0DC4();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  v18 = sub_220CA0B94();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_11();
  *v5 = v3;
  sub_220BF92A0(v1, (v5 + 1));
  sub_220BFA50C();

  sub_220CA0B84();
  sub_220BFD0FC(&qword_2812D0F58, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CCD0, &qword_220CACAE0);
  sub_220BF8A20(&qword_2812D0F80, &qword_27CF7CCD0, &qword_220CACAE0);
  sub_220CA0F14();
  (*(v8 + 104))(v13, *MEMORY[0x277D85260], v22);
  v20 = sub_220CA0E04();

  __swift_destroy_boxed_opaque_existential_1(v21);
  v5[6] = v20;
  OUTLINED_FUNCTION_10_5();
}

WeatherAnalytics::AppData __swiftcall AppData.init(appVersion:appBuildNumber:)(Swift::String appVersion, Swift::String appBuildNumber)
{
  *v2 = appVersion;
  v2[1] = appBuildNumber;
  result.appBuildNumber = appBuildNumber;
  result.appVersion = appVersion;
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

unint64_t sub_220BFCE78()
{
  result = qword_2812D0FB8;
  if (!qword_2812D0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0FB8);
  }

  return result;
}

unint64_t sub_220BFCED0()
{
  result = qword_2812D0FC0;
  if (!qword_2812D0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0FC0);
  }

  return result;
}

uint64_t sub_220BFCF48(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t sub_220BFCF94()
{
  v0 = sub_220C9FA14();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_14();
  v4 = sub_220C9FA34();
  v5 = OUTLINED_FUNCTION_14_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_20_1();
  v8 = *MEMORY[0x277D6D090];
  v9 = OUTLINED_FUNCTION_5_9();
  v10(v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDD0, qword_220CAD590);
  OUTLINED_FUNCTION_13_5(v11);
  result = OUTLINED_FUNCTION_8_10();
  qword_2812D1708 = result;
  return result;
}

uint64_t sub_220BFD0B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220BFD0FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LocationAccessDataProvider.locationAccessData.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  result = sub_220C9FC44();
  v5 = 0x101020200uLL >> (8 * result);
  if (result >= 5)
  {
    LOBYTE(v5) = 0;
  }

  *a1 = v5;
  return result;
}

WeatherAnalytics::TemperatureScaleData __swiftcall TemperatureScaleData.init(_:)(NSUnitTemperature_optional *a1)
{
  v3 = v1;
  v4 = objc_opt_self();
  v5 = [v4 celsius];
  if (!v5)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_8:
    v5 = [v4 fahrenheit];
    if (v5)
    {
      v10 = v5;
      if (a1)
      {
        sub_220BFD3C8();
        v11 = a1;
        v12 = sub_220CA0ED4();

        if (v12)
        {

LABEL_13:
          v9 = 2;
          goto LABEL_24;
        }
      }

      else
      {
      }
    }

    else if (!a1)
    {
      goto LABEL_13;
    }

    v5 = [v4 kelvin];
    if (v5)
    {
      v13 = v5;
      if (a1)
      {
        sub_220BFD3C8();
        v14 = a1;
        v15 = sub_220CA0ED4();

        if ((v15 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_21:
        v9 = 3;
        goto LABEL_24;
      }
    }

    else
    {
      if (!a1)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  v6 = v5;
  if (!a1)
  {

    goto LABEL_8;
  }

  sub_220BFD3C8();
  v7 = a1;
  v8 = sub_220CA0ED4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v9 = 1;
LABEL_24:
  *v3 = v9;
  return v5;
}

unint64_t sub_220BFD3C8()
{
  result = qword_2812CE770;
  if (!qword_2812CE770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812CE770);
  }

  return result;
}

uint64_t UserData.init(userID:userStartDate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_220BFD43C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D410, &qword_220CB0508);
  result = sub_220CA0624();
  if (v6)
  {
    sub_220BF9210(&v5, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_220BF9A84(qword_2812CF6A0, type metadata accessor for TelemetrySessionManager);
    sub_220CA06C4();
    __swift_destroy_boxed_opaque_existential_1(&v5);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220BFD530(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_220CA0624();
  if (v7 == 3)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = Configuration.isEnabled.getter();
  if ((result & 1) == 0)
  {
    return result;
  }

  sub_220CA0084();
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220CA0184();
  result = sub_220CA05F4();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_220CA0164();
}

_BYTE *storeEnumTagSinglePayload for Configuration(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x220BFD704);
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

uint64_t getEnumTagSinglePayload for Configuration(unsigned __int8 *a1, unsigned int a2)
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
      if (v4)
      {
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 3;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t Configuration.isEnabled.getter()
{
  v1 = *v0;
  if (v1 == 2)
  {
    sub_220C9FA04();
    sub_220C9F9F4();
    if (qword_2812D1710 != -1)
    {
      swift_once();
    }

    sub_220C9F9E4();
    if (v9)
    {

      LOBYTE(v1) = 0;
      return v1 & 1;
    }

    v2 = [objc_opt_self() mainBundle];
    v3 = sub_220BFAF38(v2);
    if (!v4)
    {
LABEL_12:

      LOBYTE(v1) = 1;
      return v1 & 1;
    }

    if (v3 == 0xD000000000000018 && v4 == 0x8000000220CB5220)
    {
    }

    else
    {
      v6 = sub_220CA1154();

      if ((v6 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (qword_2812D0EF8 != -1)
    {
      swift_once();
    }

    sub_220C9F9E4();

    LOBYTE(v1) = v8 ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_220BFD95C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_220CA0624();
  if (v8 == 3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = Configuration.isEnabled.getter();
  if ((result & 1) == 0)
  {
    return result;
  }

  sub_220CA0084();
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220CA01E4();
  result = sub_220CA0614();
  if (!result)
  {
    goto LABEL_8;
  }

  sub_220CA0164();

  sub_220CA0084();
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220CA0294();
  result = sub_220CA0614();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_220CA0164();
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_220BFDB30()
{
  result = qword_2812D0FF8;
  if (!qword_2812D0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0FF8);
  }

  return result;
}

unint64_t sub_220BFDB88()
{
  result = qword_2812D1000;
  if (!qword_2812D1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1000);
  }

  return result;
}

unint64_t sub_220BFDBF8()
{
  result = qword_2812D16A0;
  if (!qword_2812D16A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D16A0);
  }

  return result;
}

unint64_t sub_220BFDC50()
{
  result = qword_2812D16A8;
  if (!qword_2812D16A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D16A8);
  }

  return result;
}

uint64_t static DeviceInfo.current.getter@<X0>(void *a1@<X8>)
{
  if (qword_2812D1668 != -1)
  {
    swift_once();
  }

  v2 = *algn_2812D1678;
  v3 = qword_2812D1680;
  v4 = unk_2812D1688;
  v5 = qword_2812D1690;
  v6 = unk_2812D1698;
  *a1 = qword_2812D1670;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
}

void sub_220BFDD78(uint64_t *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 marketingProductName];
  v4 = sub_220CA0C24();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  v7 = [v2 productVersion];
  v8 = sub_220CA0C24();
  v10 = v9;

  a1[2] = v8;
  a1[3] = v10;
  v11 = [v2 buildVersion];
  v12 = sub_220CA0C24();
  v14 = v13;

  a1[4] = v12;
  a1[5] = v14;
}

uint64_t sub_220BFDE68()
{
  v0 = sub_220C9FA34();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_220C9FA14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.WeatherAnalytics.Debugging.Overrides();
  (*(v3 + 104))(v6, *MEMORY[0x277D6D098], v2);
  sub_220C9FA24();
  result = sub_220C9F9B4();
  qword_2812D0E98 = result;
  return result;
}

uint64_t type metadata accessor for Settings.WeatherAnalytics.Debugging.Overrides()
{
  result = qword_2812D0EC8;
  if (!qword_2812D0EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Settings.WeatherAnalytics.Debugging.Overrides.__allocating_init(key:defaultValue:access:)()
{
  v1 = OUTLINED_FUNCTION_12_4();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  v5 = *(v0 + 48);
  v6 = *(v0 + 52);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_10_6();
  v9(v8);
  OUTLINED_FUNCTION_19_2();
  v10 = OUTLINED_FUNCTION_16_4();
  v11(v10);
  return v7;
}

uint64_t OUTLINED_FUNCTION_16()
{

  return sub_220CA1104();
}

uint64_t OUTLINED_FUNCTION_12_2()
{

  return type metadata accessor for DataTableExposureEvent(0);
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return sub_220C9FA14();
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return type metadata accessor for ReportWeatherExposureEvent(0);
}

uint64_t OUTLINED_FUNCTION_19_2()
{

  return MEMORY[0x2821D2898](v2, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_220C67510(v4, a1 + v3, v2);
}

uint64_t OUTLINED_FUNCTION_16_5()
{

  return type metadata accessor for LocationViewEvent(0);
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return swift_once();
}

uint64_t sub_220BFE344(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0114();
  result = sub_220CA0614();
  if (result)
  {
    v3 = sub_220CA0104();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DeviceInfo.marketingProductName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

WeatherAnalytics::DevicePlatform_optional __swiftcall DevicePlatform.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for AppSessionEndEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t DeviceInfo.buildVersion.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t DeviceInfo.productVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

unint64_t sub_220BFE564()
{
  result = qword_2812D03F0;
  if (!qword_2812D03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D03F0);
  }

  return result;
}

unint64_t sub_220BFE5BC()
{
  result = qword_2812D03F8;
  if (!qword_2812D03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D03F8);
  }

  return result;
}

uint64_t type metadata accessor for SessionData()
{
  result = qword_2812D0818;
  if (!qword_2812D0818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220BFE664()
{
  sub_220BFE7B0(319, &qword_2812D0760);
  if (v0 <= 0x3F)
  {
    sub_220BFE7B0(319, &qword_2812CFE70);
    if (v1 <= 0x3F)
    {
      sub_220BFE7B0(319, &qword_2812CF1A0);
      if (v2 <= 0x3F)
      {
        sub_220BFE7FC(319, &qword_2812D0D98, &qword_27CF7BE18, &qword_220CA5D20);
        if (v3 <= 0x3F)
        {
          sub_220BFE7FC(319, &qword_2812D0DA0, &qword_27CF7BE20, &qword_220CA5D28);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_220BFE7B0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_220CA0EE4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_220BFE7FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_220CA02F4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for StartMethod(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x220BFE91CLL);
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

_BYTE *storeEnumTagSinglePayload for LocationAccessData(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x220BFEA18);
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

uint64_t sub_220BFEA40(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_220BFEB94(a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CellularRadioAccessTechnology(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x220BFEB6CLL);
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

uint64_t sub_220BFEB94(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v3 = sub_220CA0B54();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220CA0B94();
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220CA08C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v23 = *(v1 + 264);
  sub_220BFA50C();
  v14 = sub_220CA0DE4();
  v15 = *(v1 + 16);
  v16 = sub_220CA0104();
  sub_220BF92A0(v2 + 184, v30);
  sub_220BF92A0(v2 + 224, v29);
  sub_220BFF208(v22, &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v12 + 80) + 104) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  sub_220BF9210(v30, v18 + 24);
  sub_220BF9210(v29, v18 + 64);
  sub_220BFF420(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  *(v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  aBlock[4] = sub_220C04400;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220C01EFC;
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);

  sub_220CA0B64();
  v27 = MEMORY[0x277D84F90];
  sub_220BFF484();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF30, &qword_220CA6BB0);
  sub_220BFF510();
  sub_220CA0F14();
  sub_220CA0DB4();
  _Block_release(v19);

  (*(v26 + 8))(v6, v3);
  (*(v24 + 8))(v10, v25);
}

uint64_t sub_220BFEF20()
{
  v1 = sub_220CA08C4();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 104) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v6 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_220C9F7D4();
    OUTLINED_FUNCTION_0_2(v7);
    (*(v8 + 8))(v0 + v3);
    v9 = sub_220CA0A24();
    sub_220C04814(*&v6[*(v9 + 24)], v6[*(v9 + 24) + 8], v6[*(v9 + 24) + 9]);
  }

  else
  {
    sub_220CA09D4();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
        v10 = sub_220CA0684();
        OUTLINED_FUNCTION_0_2(v10);
        (*(v11 + 8))(v0 + v3);
        break;
      case 0x12u:
        v16 = sub_220CA0684();
        OUTLINED_FUNCTION_0_2(v16);
        (*(v17 + 8))(v0 + v3);
        v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF20, &unk_220CA6BA0);
        v18 = *&v6[*(v1 + 48)];

        v19 = *(v1 + 64);
        v20 = sub_220CA07F4();
        if (!OUTLINED_FUNCTION_3_7(v20))
        {
          (*(*(v1 - 8) + 8))(&v6[v19]);
        }

        break;
      default:
        break;
    }

    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF28, &qword_220CB2D60) + 48);
    v13 = sub_220CA0994();
    if (!OUTLINED_FUNCTION_3_7(v13))
    {
      (*(*(v1 - 8) + 8))(&v6[v12], v1);
    }
  }

  v14 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + v14);

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v2 | 7);
}

uint64_t sub_220BFF208(uint64_t a1, uint64_t a2)
{
  v4 = sub_220CA08C4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SessionData.init(utcOffset:languageCode:countryCode:startMethod:productType:locationAccess:cellularRadioAccessTechnology:userSegmentationTreatmentIDs:userSegmentationSegmentSetIDs:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11)
{
  v16 = *a6;
  v17 = *a10;
  v18 = *a11;
  *(a9 + 40) = 6;
  *(a9 + 64) = 1029;
  v19 = type metadata accessor for SessionData();
  v20 = *(v19 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE18, &qword_220CA5D20);
  sub_220CA02B4();
  v21 = *(v19 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE20, &qword_220CA5D28);
  sub_220CA02B4();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = v16;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v17;
  *(a9 + 65) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE28, &qword_220CA5D30);
  sub_220CA02E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE30, &qword_220CA5D38);
  return sub_220CA02E4();
}

uint64_t sub_220BFF3DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220BFF420(uint64_t a1, uint64_t a2)
{
  v4 = sub_220CA08C4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_220BFF484()
{
  result = qword_2812D1760;
  if (!qword_2812D1760)
  {
    sub_220CA0B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1760);
  }

  return result;
}

unint64_t sub_220BFF510()
{
  result = qword_2812D1748;
  if (!qword_2812D1748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF7BF30, &qword_220CA6BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1748);
  }

  return result;
}

unint64_t sub_220BFF5AC()
{
  result = qword_2812CFC30;
  if (!qword_2812CFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC30);
  }

  return result;
}

unint64_t sub_220BFF604()
{
  result = qword_2812CFC38;
  if (!qword_2812CFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC38);
  }

  return result;
}

unint64_t sub_220BFF65C()
{
  result = qword_2812D0FC8;
  if (!qword_2812D0FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0FC8);
  }

  return result;
}

unint64_t sub_220BFF6B4()
{
  result = qword_2812D0FD0;
  if (!qword_2812D0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0FD0);
  }

  return result;
}

uint64_t PrivateUserData.init(privateUserID:privateUserHashMod:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 20) = BYTE4(a3) & 1;
  return result;
}

unint64_t sub_220BFF730()
{
  result = qword_2812D1550;
  if (!qword_2812D1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1550);
  }

  return result;
}

unint64_t sub_220BFF788()
{
  result = qword_2812D1558;
  if (!qword_2812D1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1558);
  }

  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t AppData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B670, &qword_220CA2570);
  v5 = OUTLINED_FUNCTION_3(v4);
  v17 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v16[1] = v1[3];
  v16[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220BFFBE4();
  sub_220CA1254();
  v19 = 0;
  sub_220CA10C4();
  if (!v2)
  {
    v18 = 1;
    sub_220CA10C4();
  }

  return (*(v17 + 8))(v10, v4);
}

uint64_t sub_220BFF994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF38, &qword_220CA6BB8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - v7;
  v9 = *(v6 + 56);
  v10 = sub_220CA0564();
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v12(v8, a1, v10);
  v12(&v8[v9], a2, v10);
  v13 = (*(v11 + 88))(&v8[v9], v10);
  if (v13 != *MEMORY[0x277D6C9D0] && v13 != *MEMORY[0x277D6C9D8])
  {
    if (v13 != *MEMORY[0x277D6C9C8])
    {
      return sub_220C41EA0(v8);
    }

    sub_220C41940();
  }

  return (*(v11 + 8))(v8, v10);
}

unint64_t sub_220BFFB1C()
{
  result = qword_2812D1010;
  if (!qword_2812D1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1010);
  }

  return result;
}

unint64_t sub_220BFFB90()
{
  result = qword_2812D1018;
  if (!qword_2812D1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1018);
  }

  return result;
}

unint64_t sub_220BFFBE4()
{
  result = qword_2812D1020;
  if (!qword_2812D1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1020);
  }

  return result;
}

uint64_t DeviceData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D0B8, &qword_220CAEBC0);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v21 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = *(v1 + 16);
  v22 = *(v1 + 17);
  v23 = v14;
  v15 = v1[3];
  v21[2] = v1[4];
  v21[3] = v15;
  v16 = v1[5];
  v21[0] = v1[6];
  v21[1] = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220BFFF30();
  sub_220CA1254();
  v31 = 0;
  v18 = v24;
  sub_220CA10C4();
  if (!v18)
  {
    v19 = v22;
    v30 = v23;
    v29 = 1;
    sub_220BFFF84();
    OUTLINED_FUNCTION_1_1();
    sub_220CA1104();
    v28 = v19;
    v27 = 2;
    sub_220C000E4();
    OUTLINED_FUNCTION_1_1();
    sub_220CA1104();
    v26 = 3;
    OUTLINED_FUNCTION_1_1();
    sub_220CA10C4();
    v25 = 4;
    OUTLINED_FUNCTION_1_1();
    sub_220CA10C4();
  }

  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_220BFFE84()
{
  result = qword_2812D16B8;
  if (!qword_2812D16B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D16B8);
  }

  return result;
}

unint64_t sub_220BFFEDC()
{
  result = qword_2812D16C0;
  if (!qword_2812D16C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D16C0);
  }

  return result;
}

unint64_t sub_220BFFF30()
{
  result = qword_2812D16C8;
  if (!qword_2812D16C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D16C8);
  }

  return result;
}

unint64_t sub_220BFFF84()
{
  result = qword_2812D1620;
  if (!qword_2812D1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1620);
  }

  return result;
}

uint64_t sub_220C00030(char a1)
{
  if (a1)
  {
    return 0x646C697542707061;
  }

  else
  {
    return 0x6973726556707061;
  }
}

unint64_t sub_220C00078()
{
  result = qword_2812D1618;
  if (!qword_2812D1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1618);
  }

  return result;
}

unint64_t sub_220C000E4()
{
  result = qword_2812D1468[0];
  if (!qword_2812D1468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812D1468);
  }

  return result;
}

unint64_t sub_220C00188()
{
  result = qword_2812D1460;
  if (!qword_2812D1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1460);
  }

  return result;
}

uint64_t OrientationData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D268, &qword_220CAF940);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v16 = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C0050C();
  sub_220CA1254();
  v20 = v12;
  v19 = 0;
  sub_220C00654();
  sub_220CA1104();
  if (!v2)
  {
    v18 = v16;
    v17 = 1;
    sub_220C007D4();
    sub_220CA1104();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_220C00380()
{
  result = qword_2812D0400;
  if (!qword_2812D0400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0400);
  }

  return result;
}

unint64_t sub_220C003E0(char a1)
{
  result = 0x6F4D656369766564;
  switch(a1)
  {
    case 1:
      result = 0x6C50656369766564;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6F6973726556736FLL;
      break;
    case 4:
      result = 0x656C646E7542736FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C004B8()
{
  result = qword_2812D0408;
  if (!qword_2812D0408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0408);
  }

  return result;
}

unint64_t sub_220C0050C()
{
  result = qword_2812D0410;
  if (!qword_2812D0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0410);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x220C0062CLL);
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

unint64_t sub_220C00654()
{
  result = qword_2812D01A0;
  if (!qword_2812D01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D01A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InterfaceOrientation(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_220C00780()
{
  result = qword_2812D0198;
  if (!qword_2812D0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0198);
  }

  return result;
}

unint64_t sub_220C007D4()
{
  result = qword_2812CFC68;
  if (!qword_2812CFC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC68);
  }

  return result;
}

uint64_t sub_220C00878@<X0>(uint64_t *a1@<X8>)
{
  result = DevicePlatform.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_220C008A0()
{
  result = qword_2812CFC60;
  if (!qword_2812CFC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC60);
  }

  return result;
}

uint64_t DevicePlatform.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 5459817;
      break;
    case 2:
      result = 0x534F64615069;
      break;
    case 3:
      result = 0x534F63616DLL;
      break;
    case 4:
      result = 0x534F6E6F69736976;
      break;
    case 5:
      result = 0x534F6863746177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SessionData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D280, &qword_220CAFB50);
  OUTLINED_FUNCTION_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v10);
  v12 = &v27[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C00E0C();
  sub_220CA1254();
  v14 = *v3;
  v27[15] = 0;
  OUTLINED_FUNCTION_1_1();
  sub_220CA1114();
  if (!v2)
  {
    v15 = *(v3 + 1);
    v16 = *(v3 + 2);
    v27[14] = 1;
    OUTLINED_FUNCTION_1_1();
    sub_220CA10C4();
    v17 = *(v3 + 3);
    v18 = *(v3 + 4);
    v27[13] = 2;
    OUTLINED_FUNCTION_1_1();
    sub_220CA10C4();
    v27[12] = *(v3 + 40);
    v27[11] = 3;
    sub_220C00E60();
    OUTLINED_FUNCTION_1_1();
    sub_220CA1094();
    v19 = *(v3 + 6);
    v20 = *(v3 + 7);
    v27[10] = 4;
    OUTLINED_FUNCTION_1_1();
    sub_220CA10C4();
    v27[9] = *(v3 + 64);
    v27[8] = 5;
    sub_220C00F58();
    OUTLINED_FUNCTION_1_1();
    sub_220CA1094();
    v27[7] = *(v3 + 65);
    v27[6] = 6;
    sub_220C01050();
    OUTLINED_FUNCTION_1_1();
    sub_220CA1094();
    v21 = type metadata accessor for SessionData();
    v22 = *(v21 + 44);
    v27[5] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE18, &qword_220CA5D20);
    OUTLINED_FUNCTION_2_18();
    sub_220C012C4(v23);
    OUTLINED_FUNCTION_1_1();
    sub_220CA1064();
    v24 = *(v21 + 48);
    v27[4] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE20, &qword_220CA5D28);
    OUTLINED_FUNCTION_2_18();
    sub_220C7D1E0(v25);
    OUTLINED_FUNCTION_1_1();
    sub_220CA1064();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_220C00CD0@<X0>(uint64_t *a1@<X8>)
{
  result = OsInstallVariant.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_220C00CF8()
{
  result = qword_2812D1650;
  if (!qword_2812D1650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1650);
  }

  return result;
}

uint64_t OsInstallVariant.rawValue.getter()
{
  v1 = 0x6C616E7265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_220C00DA0()
{
  result = qword_2812D1658;
  if (!qword_2812D1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1658);
  }

  return result;
}

unint64_t sub_220C00E0C()
{
  result = qword_2812D1660;
  if (!qword_2812D1660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1660);
  }

  return result;
}

unint64_t sub_220C00E60()
{
  result = qword_2812D1630;
  if (!qword_2812D1630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1630);
  }

  return result;
}

unint64_t sub_220C00F04()
{
  result = qword_2812D1628;
  if (!qword_2812D1628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1628);
  }

  return result;
}

unint64_t sub_220C00F58()
{
  result = qword_2812D1458;
  if (!qword_2812D1458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1458);
  }

  return result;
}

unint64_t sub_220C00FFC()
{
  result = qword_2812D1450;
  if (!qword_2812D1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1450);
  }

  return result;
}

unint64_t sub_220C01050()
{
  result = qword_2812D11B0;
  if (!qword_2812D11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D11B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OrientationData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x220C011C0);
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

unint64_t sub_220C011E8()
{
  result = qword_2812D11A8;
  if (!qword_2812D11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D11A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_220C012C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF7BE18, &qword_220CA5D20);
    result = OUTLINED_FUNCTION_9_9();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TemperatureScaleData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D928, &qword_220CB2890);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C01674();
  sub_220CA1254();
  v15 = v11;
  sub_220C016C8();
  sub_220CA1104();
  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_220C01470@<X0>(unint64_t *a1@<X8>)
{
  result = DeviceOrientation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t DeviceOrientation.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x7469617274726F70;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
    case 4:
      result = 0x70616373646E616CLL;
      break;
    case 5:
      result = 0x705565636166;
      break;
    case 6:
      result = 0x6E776F4465636166;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C01588()
{
  result = qword_2812CFC40;
  if (!qword_2812CFC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC40);
  }

  return result;
}

unint64_t sub_220C015E8(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000011;
  }
}

unint64_t sub_220C01620()
{
  result = qword_2812CFC48;
  if (!qword_2812CFC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC48);
  }

  return result;
}

unint64_t sub_220C01674()
{
  result = qword_2812CFC50;
  if (!qword_2812CFC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC50);
  }

  return result;
}

unint64_t sub_220C016C8()
{
  result = qword_2812D01B8;
  if (!qword_2812D01B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D01B8);
  }

  return result;
}

unint64_t sub_220C0171C@<X0>(unint64_t *a1@<X8>)
{
  result = InterfaceOrientation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t InterfaceOrientation.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x7469617274726F70;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
    case 4:
      result = 0x70616373646E616CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C0184C()
{
  result = qword_2812D01B0;
  if (!qword_2812D01B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D01B0);
  }

  return result;
}

uint64_t UserData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CE68, &qword_220CADA30);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v16[0] = v1[2];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C01AE4();
  sub_220CA1254();
  v18 = 0;
  v14 = v16[1];
  sub_220CA10C4();
  if (!v14)
  {
    v17 = 1;
    sub_220CA1124();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_220C01A38()
{
  result = qword_2812D0FE0;
  if (!qword_2812D0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0FE0);
  }

  return result;
}

unint64_t sub_220C01A90()
{
  result = qword_2812D0FE8;
  if (!qword_2812D0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0FE8);
  }

  return result;
}

unint64_t sub_220C01AE4()
{
  result = qword_2812D0FF0;
  if (!qword_2812D0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0FF0);
  }

  return result;
}

unint64_t sub_220C01B40(char a1)
{
  result = 0x657366664F637475;
  switch(a1)
  {
    case 1:
      result = 0x65676175676E616CLL;
      break;
    case 2:
      result = 0x437972746E756F63;
      break;
    case 3:
      result = 0x74654D7472617473;
      break;
    case 4:
      result = 0x54746375646F7270;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x220C01D68);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationExposureEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_220C01E18@<X0>(unint64_t *a1@<X8>)
{
  result = StartMethod.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t StartMethod.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6469577961646F74;
      break;
    case 2:
      result = 1936744813;
      break;
    case 3:
      result = 1769105779;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 1937204590;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C01EFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_220C01F40(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FlushAnalyticsBatchesTask();
  result = sub_220CA0614();
  if (result)
  {
    sub_220C02E18(0, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220C01FC0@<X0>(uint64_t *a1@<X8>)
{
  result = LocationAccessData.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_220C01FE8(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C9FF44();
  result = sub_220CA0614();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220CA01E4();
    result = sub_220CA0614();
    if (result)
    {
      v6 = result;
      type metadata accessor for FlushAnalyticsBatchesTask();
      result = swift_allocObject();
      *(result + 16) = v4;
      *(result + 24) = v6;
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

uint64_t LocationAccessData.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x64656C62616E65;
      break;
    case 2:
      result = 0x64656C6261736964;
      break;
    case 3:
      result = 0x657372616F63;
      break;
    case 4:
      result = 0x65736963657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C0213C(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C9FE44();
  result = sub_220CA0614();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0424();
  result = sub_220CA0614();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D150, &qword_220CAF6B0);
  result = sub_220CA0614();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0234();
  result = sub_220CA0614();
  if (result)
  {
    sub_220C9FF44();
    v7 = sub_220CA0344();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_220CA0334();
    return sub_220C9FF14();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for TemperatureScale(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_220C02348(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D198, &unk_220CB2BC0);
  result = sub_220CA0624();
  if (v5)
  {
    type metadata accessor for DynamicEndpoint();
    v3 = swift_allocObject();
    *(v3 + 16) = 7;
    sub_220BF9210(&v4, v3 + 24);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220C02414(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_220CA0234();
  v4 = sub_220CA0224();
  if (qword_2812D16E0 != -1)
  {
    swift_once();
  }

  sub_220BF89D8(qword_2812D1968, v3, type metadata accessor for TrackerAssembly);
  sub_220C9F994();
  v5 = sub_220CA01F4();

  if (qword_2812D1720 != -1)
  {
    swift_once();
  }

  sub_220C9F994();
  v6 = sub_220CA0214();

  if (qword_2812D16F0 != -1)
  {
    swift_once();
  }

  sub_220C9F994();
  v7 = sub_220CA0204();

  return v7;
}

uint64_t sub_220C025E8@<X0>(uint64_t *a1@<X8>)
{
  result = CellularRadioAccessTechnology.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_220C02610()
{
  v0 = sub_220C9FA14();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_18_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDC8, &qword_220CAD588);
  v6 = *MEMORY[0x277D6D090];
  v7 = *(v3 + 104);
  v8 = OUTLINED_FUNCTION_15_6();
  v9(v8);
  OUTLINED_FUNCTION_17_2();
  result = sub_220C9FA64();
  qword_2812D16E8 = result;
  return result;
}

uint64_t CellularRadioAccessTechnology.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 1768319351;
      break;
    case 2:
      result = 1851881335;
      break;
    case 3:
      result = 0x6863616552746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18()
{
  v2 = *(v0 - 168);

  return sub_220CA1034();
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return sub_220CA1034();
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return type metadata accessor for LocationExposureEvent(0);
}

uint64_t OUTLINED_FUNCTION_17_0()
{
}

uint64_t sub_220C0298C()
{
  v0 = sub_220C9FA14();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_14();
  v4 = sub_220C9FA34();
  v5 = OUTLINED_FUNCTION_14_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_20_1();
  v8 = *MEMORY[0x277D6D090];
  v9 = OUTLINED_FUNCTION_5_9();
  v10(v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDA8, &qword_220CAD568);
  OUTLINED_FUNCTION_13_5(v11);
  OUTLINED_FUNCTION_7_10();
  result = OUTLINED_FUNCTION_8_10();
  qword_2812D1728 = result;
  return result;
}

uint64_t sub_220C02AA0()
{
  v0 = sub_220C9FA14();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_18_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDC8, &qword_220CAD588);
  v6 = *MEMORY[0x277D6D090];
  v7 = *(v3 + 104);
  v8 = OUTLINED_FUNCTION_15_6();
  v9(v8);
  OUTLINED_FUNCTION_17_2();
  result = sub_220C9FA64();
  qword_2812D16F8 = result;
  return result;
}

uint64_t sub_220C02C24()
{
  v0 = sub_220C02C4C();

  return MEMORY[0x2821E1F88](v0);
}

uint64_t sub_220C02C4C()
{
  v1 = *v0;
  result = *(v0 + 16);
  if (result == 7)
  {
    sub_220C9F964();
    sub_220C02CDC();
    sub_220C9F994();

    result = v3;
    *(v0 + 16) = v3;
  }

  return result;
}

unint64_t sub_220C02CDC()
{
  result = qword_2812D1610;
  if (!qword_2812D1610)
  {
    type metadata accessor for DynamicEndpoint();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1610);
  }

  return result;
}

uint64_t sub_220C02D30()
{
  v0 = sub_220CA0304();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220CA01E4();
  *v4 = 11;
  (*(v1 + 104))(v4, *MEMORY[0x277CEAE08], v0);
  return sub_220CA01D4();
}

uint64_t sub_220C02E18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_2812D1768 != -1)
  {
    swift_once();
  }

  v6 = sub_220CA0A84();
  __swift_project_value_buffer(v6, qword_2812D1770);
  v7 = sub_220CA0A64();
  v8 = sub_220CA0DA4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_220BF4000, v7, v8, "FlushAnalyticsBatchesTask runs repairThenFlush", v9, 2u);
    MEMORY[0x223D95B30](v9, -1, -1);
  }

  v10 = *(v3 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  sub_220C02FC8(a1);
  sub_220C9FF24();
}

uint64_t sub_220C02F88()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220C02FC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureScaleData.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x220C03074);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherJSONData.CodingKeys(unsigned int *a1, int a2)
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

uint64_t sub_220C03150()
{
  v1 = sub_220C9F7D4();
  v2 = OUTLINED_FUNCTION_3(v1);
  v54 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  v53 = v7 - v6;
  v8 = sub_220C9F904();
  v9 = OUTLINED_FUNCTION_3(v8);
  v51 = v10;
  v52 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v15 = v14 - v13;
  v50 = sub_220C9F924();
  v16 = OUTLINED_FUNCTION_3(v50);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v23 = v22 - v21;
  v24 = sub_220C9FCB4();
  v25 = OUTLINED_FUNCTION_3(v24);
  v48 = v26;
  v49 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_11();
  v31 = v30 - v29;
  v32 = sub_220C9FB84();
  v33 = OUTLINED_FUNCTION_3(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_11();
  v40 = v39 - v38;
  if ((sub_220C035E4() & 0x100000000) != 0)
  {
    v42 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_220C9FD94();
    sub_220C9FB74();
    v43 = v40;
    v41 = v0;
    (*(v35 + 8))(v43, v32);
    sub_220C9FC84();
    (*(v48 + 8))(v31, v49);
  }

  else
  {
    v41 = v0;
  }

  sub_220C9FDE4();
  sub_220C9F8F4();
  (*(v51 + 104))(v15, *MEMORY[0x277CC9980], v52);
  sub_220C9F7C4();
  sub_220C9F914();
  (*(v54 + 8))(v53, v1);
  (*(v51 + 8))(v15, v52);
  (*(v18 + 8))(v23, v50);
  v44 = sub_220CA1134();
  MEMORY[0x223D94FE0](v44);

  MEMORY[0x223D94FE0](45, 0xE100000000000000);
  sub_220CA0D74();
  MEMORY[0x223D94FE0](45, 0xE100000000000000);
  sub_220CA0D74();
  v45 = v41[11];
  __swift_project_boxed_opaque_existential_1(v41 + 7, v41[10]);
  v46 = sub_220C9FBE4();

  return v46 & 1;
}

uint64_t sub_220C035BC@<X0>(uint64_t *a1@<X8>)
{
  result = TemperatureScale.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_220C035E4()
{
  v1 = *v0;
  if (*(v0 + 101))
  {
    if (qword_2812D0F18 != -1)
    {
      swift_once();
    }

    sub_220C040F0();
    sub_220C9F994();
    v2 = 0;
    switch(v6)
    {
      case 1:
        goto LABEL_11;
      case 2:
        v2 = 1048576000;
        goto LABEL_11;
      case 3:
        v2 = 1056964608;
        goto LABEL_11;
      case 4:
        v2 = 1061158912;
        goto LABEL_11;
      case 5:
        v2 = 1065353216;
LABEL_11:
        v4 = 0;
        v3 = v2;
        break;
      default:
        v2 = 0;
        v3 = 0x100000000;
        v4 = 1;
        break;
    }

    *(v0 + 24) = v3;
    *(v0 + 50) = BYTE4(v3);
  }

  else
  {
    v2 = *(v0 + 24);
    v4 = *(v0 + 100) & 1;
  }

  return v2 | (v4 << 32);
}

uint64_t TemperatureScale.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x737569736C6563;
      break;
    case 2:
      result = 0x65686E6572686166;
      break;
    case 3:
      result = 0x6E69766C656BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C037BC()
{
  v1 = sub_220C9FA34();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_18_2();
  v7 = sub_220C9FA14();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDB0, &qword_220CAD570);
  v29 = 0;
  (*(v10 + 104))(v0, *MEMORY[0x277D6D098], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDB8, &qword_220CAD578);
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDC0, &qword_220CAD580) - 8) + 72);
  *(OUTLINED_FUNCTION_9_6() + 16) = xmmword_220CAD3F0;
  v28 = 0;
  OUTLINED_FUNCTION_6_9(0x746C7561666544, 0xE700000000000000, &v28);
  v27 = 1;
  OUTLINED_FUNCTION_6_9(3157552, 0xE300000000000000, &v27);
  v26 = 2;
  OUTLINED_FUNCTION_4_13(892481072, v14, &v26);
  v25 = 3;
  OUTLINED_FUNCTION_4_13(808791600, v15, &v25);
  v24 = 4;
  OUTLINED_FUNCTION_4_13(892808752, v16, &v24);
  v23 = 5;
  OUTLINED_FUNCTION_4_13(808463921, v17, &v23);
  v18 = *MEMORY[0x277D6D0A8];
  v19 = *(v4 + 104);
  v20 = OUTLINED_FUNCTION_15_6();
  v21(v20);
  sub_220C03E18();
  result = OUTLINED_FUNCTION_11_6(47, 0x8000000220CB5AB0, &v29);
  qword_2812D0F20 = result;
  return result;
}

uint64_t sub_220C03AC8()
{
  v1 = sub_220C9FA34();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_18_2();
  v7 = sub_220C9FA14();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDB0, &qword_220CAD570);
  v29 = 0;
  (*(v10 + 104))(v0, *MEMORY[0x277D6D098], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDB8, &qword_220CAD578);
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDC0, &qword_220CAD580) - 8) + 72);
  *(OUTLINED_FUNCTION_9_6() + 16) = xmmword_220CAD3F0;
  v28 = 0;
  OUTLINED_FUNCTION_6_9(0x746C7561666544, 0xE700000000000000, &v28);
  v27 = 1;
  OUTLINED_FUNCTION_6_9(3157552, 0xE300000000000000, &v27);
  v26 = 2;
  OUTLINED_FUNCTION_4_13(892481072, v14, &v26);
  v25 = 3;
  OUTLINED_FUNCTION_4_13(808791600, v15, &v25);
  v24 = 4;
  OUTLINED_FUNCTION_4_13(892808752, v16, &v24);
  v23 = 5;
  OUTLINED_FUNCTION_4_13(808463921, v17, &v23);
  v18 = *MEMORY[0x277D6D0A8];
  v19 = *(v4 + 104);
  v20 = OUTLINED_FUNCTION_15_6();
  v21(v20);
  sub_220C03E18();
  result = OUTLINED_FUNCTION_11_6(48, 0x8000000220CB5AE0, &v29);
  qword_2812D0F10 = result;
  return result;
}

unint64_t sub_220C03DC4()
{
  result = qword_2812D0F38;
  if (!qword_2812D0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0F38);
  }

  return result;
}

unint64_t sub_220C03E18()
{
  result = qword_2812D0F28;
  if (!qword_2812D0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0F28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return sub_220CA1104();
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return type metadata accessor for WidgetExposureEvent(0);
}

uint64_t OUTLINED_FUNCTION_11_4@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v4 = *(v1 - 192);
  v3 = *(v1 - 184);
  v5 = *(v1 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  v9 = v3;
  v10 = *(v6 - 96);

  return MEMORY[0x2821D2990](v8, a2, a3, v9, v4, v5);
}

uint64_t OUTLINED_FUNCTION_11_7()
{

  return type metadata accessor for ListViewEvent(0);
}

uint64_t sub_220C03F48(uint64_t a1)
{
  v2 = sub_220C03F9C();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

unint64_t sub_220C03F9C()
{
  result = qword_2812D0F30;
  if (!qword_2812D0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0F30);
  }

  return result;
}

uint64_t sub_220C03FF0@<X0>(uint64_t *a1@<X8>)
{
  result = Settings.WeatherAnalytics.SamplingRate.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Settings.WeatherAnalytics.SamplingRate.rawValue.getter()
{
  result = 0x746C7561666564;
  switch(*v0)
  {
    case 1:
      result = 1869768058;
      break;
    case 2:
      result = 0x694679746E657774;
      break;
    case 3:
      result = 0x7974666966;
      break;
    case 4:
      result = 0x4679746E65766573;
      break;
    case 5:
      result = 0x72646E7548656E6FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C040F0()
{
  result = qword_2812D02D8[0];
  if (!qword_2812D02D8[0])
  {
    type metadata accessor for GeocodingSampler();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812D02D8);
  }

  return result;
}

uint64_t sub_220C04144(char a1)
{
  if (a1)
  {
    return 0x7261745372657375;
  }

  else
  {
    return 0x444972657375;
  }
}

_BYTE *_s16WeatherAnalyticsV12SamplingRateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x220C04250);
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

uint64_t sub_220C04278()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_220C042A8()
{
  sub_220C042DC();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_220C042DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

WeatherAnalytics::NotificationSettingsData __swiftcall NotificationSettingsData.init(isNotificationsEnabled:isCurrentLocationPrecipitationNotificationEnabled:isOtherLocationsPrecipitationNotificationEnabled:isCurrentLocationSevereNotificationEnabled:isOtherLocationsSevereNotificationEnabled:)(Swift::Bool isNotificationsEnabled, Swift::Bool_optional isCurrentLocationPrecipitationNotificationEnabled, Swift::Bool_optional isOtherLocationsPrecipitationNotificationEnabled, Swift::Bool_optional isCurrentLocationSevereNotificationEnabled, Swift::Bool_optional isOtherLocationsSevereNotificationEnabled)
{
  v5->value = isNotificationsEnabled;
  v5[1].value = isCurrentLocationPrecipitationNotificationEnabled.value;
  v5[2].value = isOtherLocationsPrecipitationNotificationEnabled.value;
  v5[3].value = isCurrentLocationSevereNotificationEnabled.value;
  v5[4].value = isOtherLocationsSevereNotificationEnabled.value;
  result.isNotificationsEnabled = isNotificationsEnabled;
  return result;
}

unint64_t sub_220C04330()
{
  result = qword_2812CF650;
  if (!qword_2812CF650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF650);
  }

  return result;
}

unint64_t sub_220C04388()
{
  result = qword_2812CF658;
  if (!qword_2812CF658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF658);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

void sub_220C04400()
{
  v1 = *(sub_220CA08C4() - 8);
  v2 = (*(v1 + 80) + 104) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = v0[2];

  sub_220C044F0(v4, v0 + 3, v0 + 8, v0 + v2, v3);
}

unint64_t sub_220C0449C()
{
  result = qword_2812CE800;
  if (!qword_2812CE800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE800);
  }

  return result;
}

void sub_220C044F0(void *a1, void *a2, void *a3, uint64_t a4, NSObject *a5)
{
  v10 = sub_220C9FB04();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_220C047CC())
  {
    v34 = a5;
    v15 = a2[3];
    v16 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v15);
    (*(v16 + 8))(v36, v15, v16);
    v17 = v36[0];
    v18 = a1[17];
    __swift_project_boxed_opaque_existential_1(a1 + 13, a1[16]);
    sub_220C9FC34();
    v19 = sub_220C9FAE4();
    v21 = v20;
    (*(v11 + 8))(v14, v10);
    v22 = a1[21];
    v23 = a1[22];
    __swift_project_boxed_opaque_existential_1(a1 + 18, v22);
    v24 = (*(v23 + 16))(v22, v23);
    if (v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24;
    }

    if (v26 >= 0xFFFFFFFF80000000)
    {
      if (v26 > 0x7FFFFFFF)
      {
        __break(1u);
      }

      else
      {
        v27 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
        v36[0] = v19;
        v36[1] = v21;
        v37 = v26;
        v38 = 0;
        v35 = v17;
        v28 = *v27;
        sub_220C94250(a4, v34, v36, &v35);
      }

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_2812D1768 != -1)
  {
LABEL_15:
    swift_once();
  }

  v29 = sub_220CA0A84();
  __swift_project_value_buffer(v29, qword_2812D1770);
  v34 = sub_220CA0A64();
  v30 = sub_220CA0DA4();
  if (os_log_type_enabled(v34, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_220BF4000, v34, v30, "Sampling is disabled for the current session - discarding telemetry activity.", v31, 2u);
    MEMORY[0x223D95B30](v31, -1, -1);
  }

  v32 = v34;
}

uint64_t sub_220C047CC()
{
  v1 = *(v0 + 280);

  sub_220CA0724();

  return v3;
}

void sub_220C04814(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

unint64_t sub_220C04820()
{
  result = qword_2812CE808;
  if (!qword_2812CE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE808);
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

uint64_t sub_220C048AC()
{
  v0 = sub_220C9FA34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220C9FA14();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v13[15] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDA8, &qword_220CAD568);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_220C9FA74();
  qword_2812D0EE0 = result;
  return result;
}

uint64_t sub_220C04A8C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220C04AC4()
{
  sub_220C04EB8();
  if (v0 <= 0x3F)
  {
    sub_220C05010();
    if (v1 <= 0x3F)
    {
      sub_220C05348(319, &qword_2812D0E20, sub_220BFE564, sub_220BFE5BC);
      if (v2 <= 0x3F)
      {
        sub_220C05348(319, &qword_2812D0DB8, sub_220C0449C, sub_220C04820);
        if (v3 <= 0x3F)
        {
          sub_220C05348(319, &qword_2812D0DE8, sub_220C053C4, sub_220C05418);
          if (v4 <= 0x3F)
          {
            sub_220C05348(319, &qword_2812D0E00, sub_220BFF5AC, sub_220BFF604);
            if (v5 <= 0x3F)
            {
              sub_220C05348(319, &qword_2812D0DF0, sub_220C0546C, sub_220C054C0);
              if (v6 <= 0x3F)
              {
                sub_220C05348(319, &qword_2812D0E38, sub_220C05514, sub_220C05568);
                if (v7 <= 0x3F)
                {
                  sub_220C05348(319, &qword_2812D0DD0, sub_220C055BC, sub_220C05610);
                  if (v8 <= 0x3F)
                  {
                    sub_220C05348(319, &qword_2812D0DC8, sub_220C05664, sub_220C056B8);
                    if (v9 <= 0x3F)
                    {
                      sub_220C05348(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
                      if (v10 <= 0x3F)
                      {
                        sub_220C05348(319, &qword_2812D0DC0, sub_220C0570C, sub_220C05760);
                        if (v11 <= 0x3F)
                        {
                          sub_220C05348(319, &qword_2812D0E08, sub_220C057B4, sub_220C05808);
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_220C04EB8()
{
  if (!qword_2812D0DB0)
  {
    sub_220CA0494();
    v0 = MEMORY[0x277CEAEB0];
    sub_220C04F84(&qword_2812D0D88, MEMORY[0x277CEAEB0]);
    sub_220C04F84(&qword_2812D0D90, v0);
    v1 = sub_220CA0044();
    if (!v2)
    {
      atomic_store(v1, &qword_2812D0DB0);
    }
  }
}

uint64_t sub_220C04F84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220C04FCC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_220CA0494();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_220C05010()
{
  if (!qword_2812D0DA8)
  {
    sub_220CA04D4();
    v0 = MEMORY[0x277CEAED0];
    sub_220C04F84(&qword_2812D0D78, MEMORY[0x277CEAED0]);
    sub_220C04F84(&qword_2812D0D80, v0);
    v1 = sub_220CA0044();
    if (!v2)
    {
      atomic_store(v1, &qword_2812D0DA8);
    }
  }
}

void sub_220C050DC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_220CA0044();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220C05158(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_220CA0044();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220C051D4(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_220CA0044();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220C05250(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_220CA0044();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220C052CC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_220CA0044();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220C05348(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_220CA0044();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_220C053C4()
{
  result = qword_2812CF678;
  if (!qword_2812CF678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF678);
  }

  return result;
}

unint64_t sub_220C05418()
{
  result = qword_2812CF680;
  if (!qword_2812CF680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF680);
  }

  return result;
}

unint64_t sub_220C0546C()
{
  result = qword_2812CFBF0;
  if (!qword_2812CFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFBF0);
  }

  return result;
}

unint64_t sub_220C054C0()
{
  result = qword_2812CFBF8;
  if (!qword_2812CFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFBF8);
  }

  return result;
}

unint64_t sub_220C05514()
{
  result = qword_2812D0738;
  if (!qword_2812D0738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0738);
  }

  return result;
}

unint64_t sub_220C05568()
{
  result = qword_2812D0740;
  if (!qword_2812D0740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0740);
  }

  return result;
}

unint64_t sub_220C055BC()
{
  result = qword_2812CF4A0;
  if (!qword_2812CF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF4A0);
  }

  return result;
}

unint64_t sub_220C05610()
{
  result = qword_2812CF4A8[0];
  if (!qword_2812CF4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812CF4A8);
  }

  return result;
}

unint64_t sub_220C05664()
{
  result = qword_2812CF338;
  if (!qword_2812CF338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF338);
  }

  return result;
}

unint64_t sub_220C056B8()
{
  result = qword_2812CF340[0];
  if (!qword_2812CF340[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812CF340);
  }

  return result;
}

unint64_t sub_220C0570C()
{
  result = qword_2812CE838;
  if (!qword_2812CE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE838);
  }

  return result;
}

unint64_t sub_220C05760()
{
  result = qword_2812CE840;
  if (!qword_2812CE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE840);
  }

  return result;
}

unint64_t sub_220C057B4()
{
  result = qword_2812CFDA0;
  if (!qword_2812CFDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFDA0);
  }

  return result;
}

unint64_t sub_220C05808()
{
  result = qword_2812CFDA8;
  if (!qword_2812CFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFDA8);
  }

  return result;
}

uint64_t NotificationSettingsData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BAA0, &qword_220CA3EB0);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v17 - v10;
  v12 = *v1;
  v13 = v1[1];
  v17[2] = v1[2];
  v17[3] = v13;
  v14 = v1[3];
  v17[0] = v1[4];
  v17[1] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C05E00();
  sub_220CA1254();
  v22 = 0;
  OUTLINED_FUNCTION_1_2();
  sub_220CA10D4();
  if (!v2)
  {
    v21 = 1;
    OUTLINED_FUNCTION_1_2();
    sub_220CA1084();
    v20 = 2;
    OUTLINED_FUNCTION_1_2();
    sub_220CA1084();
    v19 = 3;
    OUTLINED_FUNCTION_1_2();
    sub_220CA1084();
    v18 = 4;
    OUTLINED_FUNCTION_1_2();
    sub_220CA1084();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t type metadata accessor for VisibleLocationFailedLoadingEvent()
{
  result = qword_2812CEC00;
  if (!qword_2812CEC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220C05AB4()
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v0 <= 0x3F)
  {
    sub_220C9F7D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220C05B48(uint64_t a1, unint64_t *a2)
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

unint64_t sub_220C05B98()
{
  result = qword_2812CF660;
  if (!qword_2812CF660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF660);
  }

  return result;
}

uint64_t type metadata accessor for VisibleLocationFinishedLoadingEvent()
{
  result = qword_2812CEB68;
  if (!qword_2812CEB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220C05C4C()
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v0 <= 0x3F)
  {
    sub_220C9F7D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_220C05CE4()
{
  result = qword_2812CF668;
  if (!qword_2812CF668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF668);
  }

  return result;
}

uint64_t VisibleLocationFinishedLoadingEvent.init(location:startTime:endTime:endReason:loadingBeganDuringObservation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, double *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v11 = *a3;
  *a5 = a6;
  a5[1] = a7;
  v12 = type metadata accessor for VisibleLocationFinishedLoadingEvent();
  v13 = v12[5];
  v14 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v14);
  v16 = *(v15 + 32);
  v16(a5 + v13, a1, v14);
  result = (v16)(a5 + v12[6], a2, v14);
  *(a5 + v12[7]) = v11;
  *(a5 + v12[8]) = a4;
  return result;
}

unint64_t sub_220C05E00()
{
  result = qword_2812CF670;
  if (!qword_2812CF670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF670);
  }

  return result;
}

void sub_220C05E5C()
{
  OUTLINED_FUNCTION_13_4();
  v41 = v1;
  v2 = sub_220CA0B54();
  v3 = OUTLINED_FUNCTION_3(v2);
  v44 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v7 = sub_220CA0B94();
  v8 = OUTLINED_FUNCTION_3(v7);
  v42 = v9;
  v43 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v14 = v13 - v12;
  v15 = type metadata accessor for VisibleLocationFinishedLoadingEvent();
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v0[4]);
  v22 = OUTLINED_FUNCTION_11_8();
  if (v23(v22))
  {
    v40 = v0[6];
    v24 = *v0;
    sub_220C79750(v41, &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisibleLocationFinishedLoadingEvent);
    v25 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v26 = swift_allocObject();
    sub_220C797B0(&v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for VisibleLocationFinishedLoadingEvent);
    *(v26 + ((v20 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
    OUTLINED_FUNCTION_4_12();
    OUTLINED_FUNCTION_5_8(COERCE_DOUBLE(1107296256));
    v46[2] = v27;
    v46[3] = &block_descriptor_9_0;
    v28 = _Block_copy(v46);

    sub_220CA0B64();
    v45 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_6_11();
    sub_220BFD0FC(v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF30, &qword_220CA6BB0);
    sub_220BF8A20(&qword_2812D1748, &qword_27CF7BF30, &qword_220CA6BB0);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_15_0();
    _Block_release(v28);
    v31 = OUTLINED_FUNCTION_18_1();
    v32(v31);
    (*(v42 + 8))(v14, v43);

    OUTLINED_FUNCTION_10_5();
  }

  else
  {
    if (qword_2812D1768 != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    v33 = sub_220CA0A84();
    __swift_project_value_buffer(v33, qword_2812D1770);
    v44 = sub_220CA0A64();
    v34 = sub_220CA0D84();
    if (os_log_type_enabled(v44, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      OUTLINED_FUNCTION_20_0(&dword_220BF4000, v36, v37, "Skipping logging of visible location finished loading event; session is not part of sample.");
      MEMORY[0x223D95B30](v35, -1, -1);
    }

    OUTLINED_FUNCTION_10_5();
  }
}

uint64_t sub_220C06208()
{
  OUTLINED_FUNCTION_13_4();
  v2 = type metadata accessor for VisibleLocationFinishedLoadingEvent();
  OUTLINED_FUNCTION_3_15(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1 + v7;
  v10 = *(v0 + 28);
  v11 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 8);
  v13(v9 + v10, v11);
  v13(v9 + *(v0 + 32), v11);
  v14 = *(v1 + v8);

  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

unint64_t sub_220C06300(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000031;
      break;
    case 2:
      result = 0xD000000000000030;
      break;
    case 3:
      result = 0xD00000000000002ALL;
      break;
    case 4:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t dispatch thunk of WeatherDataVisibleLocationLoadingTelemetryBackend.record(event:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return type metadata accessor for DetailViewEvent(0);
}

void sub_220C06424()
{
  sub_220C04EB8();
  if (v0 <= 0x3F)
  {
    sub_220C052CC(319, &qword_2812D0E20, sub_220BFE564, sub_220BFE5BC);
    if (v1 <= 0x3F)
    {
      sub_220C052CC(319, &qword_2812D0E00, sub_220BFF5AC, sub_220BFF604);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_220C0656C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_220C06634(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_220C0677C()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_2812CFD48);
  __swift_project_value_buffer(v0, qword_2812CFD48);
  return sub_220CA0244();
}

uint64_t AppSessionStartEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 104))(a1, v2);
  started = type metadata accessor for AppSessionStartEvent(0);
  v6 = *(started + 20);
  v7 = *MEMORY[0x277CEACF0];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_1(v8);
  (*(v9 + 104))(a1 + v6, v7);
  v10 = *(started + 24);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 104);

  return v13(a1 + v10, v7);
}

void sub_220C0690C()
{
  sub_220C04EB8();
  if (v0 <= 0x3F)
  {
    sub_220C050DC(319, &qword_2812D0E20, sub_220BFE564, sub_220BFE5BC);
    if (v1 <= 0x3F)
    {
      sub_220C050DC(319, &qword_2812D0E00, sub_220BFF5AC, sub_220BFF604);
      if (v2 <= 0x3F)
      {
        sub_220C050DC(319, &qword_2812D0E28, sub_220C06AD0, sub_220C06B24);
        if (v3 <= 0x3F)
        {
          sub_220C05010();
          if (v4 <= 0x3F)
          {
            sub_220C050DC(319, &qword_2812D0DE0, sub_220C04330, sub_220C04388);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_220C06AD0()
{
  result = qword_2812D0588;
  if (!qword_2812D0588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0588);
  }

  return result;
}

unint64_t sub_220C06B24()
{
  result = qword_2812D0590;
  if (!qword_2812D0590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0590);
  }

  return result;
}

uint64_t sub_220C06DBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
      v16 = OUTLINED_FUNCTION_4(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B608, &qword_220CA1EA8);
        v19 = OUTLINED_FUNCTION_4(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
          v22 = OUTLINED_FUNCTION_4(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B618, &qword_220CA1EB8);
            v14 = a3[9];
          }
        }
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C06F9C()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
      v14 = OUTLINED_FUNCTION_4(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B608, &qword_220CA1EA8);
        v17 = OUTLINED_FUNCTION_4(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[7];
        }

        else
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
          v20 = OUTLINED_FUNCTION_4(v19);
          if (*(v21 + 84) == v3)
          {
            v7 = v20;
            v12 = v2[8];
          }

          else
          {
            v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B618, &qword_220CA1EB8);
            v12 = v2[9];
          }
        }
      }
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C07178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220CA0494();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_220CA04D4();
  v12 = OUTLINED_FUNCTION_4(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 36));
  if (v15 >= 2)
  {
    v16 = ((v15 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v16 = -2;
  }

  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_220C07280()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_220CA04D4();
    result = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) != v3)
    {
      *(v1 + *(v2 + 36)) = v0 + 2;
      return result;
    }

    v7 = result;
    v8 = v1 + *(v2 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C07460(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B6E8, &qword_220CA29A0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_220C074B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B6E8, &qword_220CA29A0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_220C075E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C076E4()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = *(v2 + 20);
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v12 = *(v2 + 24);
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C077DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220CA0494();
  OUTLINED_FUNCTION_4(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_6_0();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 24) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_220C07880()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  result = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = (v0 - 1);
  }

  return result;
}

uint64_t sub_220C07954(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B848, &unk_220CA3388);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v16 = OUTLINED_FUNCTION_4(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B850, &qword_220CA3398);
        v14 = a3[7];
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C07A9C()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B848, &unk_220CA3388);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = OUTLINED_FUNCTION_4(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B850, &qword_220CA3398);
        v12 = v2[7];
      }
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C07BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220CA0494();
  OUTLINED_FUNCTION_4(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_6_0();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_220C07C80()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  result = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_220C07D98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
      v16 = OUTLINED_FUNCTION_4(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
        v19 = OUTLINED_FUNCTION_4(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8F0, &qword_220CA3710);
          v22 = OUTLINED_FUNCTION_4(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8F8, &qword_220CA3718);
            v25 = OUTLINED_FUNCTION_4(v24);
            if (*(v26 + 84) == a2)
            {
              v9 = v25;
              v14 = a3[9];
            }

            else
            {
              v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B900, &qword_220CA3720);
              v14 = a3[10];
            }
          }
        }
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C07FC4()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
      v14 = OUTLINED_FUNCTION_4(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
        v17 = OUTLINED_FUNCTION_4(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[7];
        }

        else
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8F0, &qword_220CA3710);
          v20 = OUTLINED_FUNCTION_4(v19);
          if (*(v21 + 84) == v3)
          {
            v7 = v20;
            v12 = v2[8];
          }

          else
          {
            v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8F8, &qword_220CA3718);
            v23 = OUTLINED_FUNCTION_4(v22);
            if (*(v24 + 84) == v3)
            {
              v7 = v23;
              v12 = v2[9];
            }

            else
            {
              v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B900, &qword_220CA3720);
              v12 = v2[10];
            }
          }
        }
      }
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C081EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220CA0494();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = sub_220CA04D4();
    v10 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v11 = *(a1 + *(a3 + 20) + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_220C082BC()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  result = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = result;
    v8 = v1;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 20) + 8) = (v0 - 1);
      return result;
    }

    v7 = sub_220CA04D4();
    v8 = v1 + *(v2 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C083C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
      v16 = OUTLINED_FUNCTION_4(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
        v19 = OUTLINED_FUNCTION_4(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
          v22 = OUTLINED_FUNCTION_4(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
            v25 = OUTLINED_FUNCTION_4(v24);
            if (*(v26 + 84) == a2)
            {
              v9 = v25;
              v14 = a3[9];
            }

            else
            {
              v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
              v28 = OUTLINED_FUNCTION_4(v27);
              if (*(v29 + 84) == a2)
              {
                v9 = v28;
                v14 = a3[10];
              }

              else
              {
                v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
                v14 = a3[11];
              }
            }
          }
        }
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C0863C()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
      v14 = OUTLINED_FUNCTION_4(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
        v17 = OUTLINED_FUNCTION_4(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[7];
        }

        else
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
          v20 = OUTLINED_FUNCTION_4(v19);
          if (*(v21 + 84) == v3)
          {
            v7 = v20;
            v12 = v2[8];
          }

          else
          {
            v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
            v23 = OUTLINED_FUNCTION_4(v22);
            if (*(v24 + 84) == v3)
            {
              v7 = v23;
              v12 = v2[9];
            }

            else
            {
              v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
              v26 = OUTLINED_FUNCTION_4(v25);
              if (*(v27 + 84) == v3)
              {
                v7 = v26;
                v12 = v2[10];
              }

              else
              {
                v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
                v12 = v2[11];
              }
            }
          }
        }
      }
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C088B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220CA0494();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_220CA04D4();
  v12 = OUTLINED_FUNCTION_4(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 32) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_220C089A0()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_220CA04D4();
    result = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) != v3)
    {
      *(v1 + *(v2 + 32) + 8) = (v0 - 1);
      return result;
    }

    v7 = result;
    v8 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C08ACC(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
      v16 = OUTLINED_FUNCTION_4(v15);
      if (*(v17 + 84) == v3)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA40, &unk_220CAE130);
        v19 = OUTLINED_FUNCTION_4(v18);
        if (*(v20 + 84) == v3)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
          v22 = OUTLINED_FUNCTION_4(v21);
          if (*(v23 + 84) == v3)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
            v25 = OUTLINED_FUNCTION_4(v24);
            if (*(v26 + 84) == v3)
            {
              v9 = v25;
              v14 = a3[9];
            }

            else
            {
              v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
              v28 = OUTLINED_FUNCTION_4(v27);
              if (*(v29 + 84) == v3)
              {
                v9 = v28;
                v14 = a3[10];
              }

              else
              {
                v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
                v31 = OUTLINED_FUNCTION_4(v30);
                if (*(v32 + 84) == v3)
                {
                  v9 = v31;
                  v14 = a3[11];
                }

                else
                {
                  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
                  v14 = a3[12];
                }
              }
            }
          }
        }
      }
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_220C08D8C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v9 = OUTLINED_FUNCTION_4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v14 = OUTLINED_FUNCTION_4(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
      v18 = OUTLINED_FUNCTION_4(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA40, &unk_220CAE130);
        v21 = OUTLINED_FUNCTION_4(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
          v24 = OUTLINED_FUNCTION_4(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[8];
          }

          else
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
            v27 = OUTLINED_FUNCTION_4(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[9];
            }

            else
            {
              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
              v30 = OUTLINED_FUNCTION_4(v29);
              if (*(v31 + 84) == a3)
              {
                v11 = v30;
                v16 = a4[10];
              }

              else
              {
                v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
                v33 = OUTLINED_FUNCTION_4(v32);
                if (*(v34 + 84) == a3)
                {
                  v11 = v33;
                  v16 = a4[11];
                }

                else
                {
                  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
                  v16 = a4[12];
                }
              }
            }
          }
        }
      }
    }

    v12 = v5 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_220C09054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  v6 = sub_220CA0494();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, v3, v9);
  }

  v11 = sub_220CA04D4();
  v12 = OUTLINED_FUNCTION_4(v11);
  if (*(v13 + 84) == v3)
  {
    v9 = v12;
    v10 = v4 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(v4 + *(a3 + 44) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_220C09140(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  v8 = sub_220CA0494();
  v9 = OUTLINED_FUNCTION_4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = sub_220CA04D4();
    result = OUTLINED_FUNCTION_4(v13);
    if (*(v15 + 84) != a3)
    {
      *(v5 + *(a4 + 44) + 8) = (v4 - 1);
      return result;
    }

    v11 = result;
    v12 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_220C09278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BB00, &qword_220CA40D0);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C09374()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = *(v2 + 20);
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BB00, &qword_220CA40D0);
      v12 = *(v2 + 24);
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C0946C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220CA0494();
  OUTLINED_FUNCTION_4(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_6_0();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 24) + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_220C09510()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  result = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 24) + 24) = (v0 - 1);
  }

  return result;
}

uint64_t sub_220C09624()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_220C0971C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC70, &qword_220CA4D90);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_220C097B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC70, &qword_220CA4D90);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220C09964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD10, &qword_220CA5520);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C09A60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD10, &qword_220CA5520);
  v9 = OUTLINED_FUNCTION_4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v14 = OUTLINED_FUNCTION_4(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220C09B64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_220CA04D4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_220C09BEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220CA04D4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220C09D10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220C09D4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE38, &unk_220CA5D40);
  OUTLINED_FUNCTION_0_2(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_220C0A210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220C9F7D4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_220C0A2B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_220C9F7D4();
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

uint64_t sub_220C0A388(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_0();
  v4 = sub_220C9F7D4();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_220C0A3CC()
{
  OUTLINED_FUNCTION_3_0();
  sub_220C9F7D4();
  v0 = OUTLINED_FUNCTION_6_6();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_220C0A408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220C9F7D4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24));
    if (v8 >= 4)
    {
      return v8 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_220C0A4AC(uint64_t a1, char a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_0();
  result = sub_220C9F7D4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_6_6();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 24)) = a2 + 3;
  }

  return result;
}

uint64_t sub_220C0A6A8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_220C0A6F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220C0A740()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220C0A7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v10 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C0A850()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v8 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C0A8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220CA04D4();
  OUTLINED_FUNCTION_4(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_6_0();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_220C0A9A4()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA04D4();
  result = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }

  return result;
}

uint64_t sub_220C0AC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C158, &qword_220CA7D20);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C0AD1C()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = *(v2 + 20);
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C158, &qword_220CA7D20);
      v12 = *(v2 + 24);
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C0AE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220CA0494();
  OUTLINED_FUNCTION_4(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_6_0();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 24) + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_220C0AEB8()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  result = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 24) + 24) = (v0 - 1);
  }

  return result;
}

uint64_t sub_220C0AF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C210, &qword_220CA7F70);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C0B078()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = *(v2 + 20);
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C210, &qword_220CA7F70);
      v12 = *(v2 + 24);
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C0B170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220CA0494();
  OUTLINED_FUNCTION_4(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_6_0();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_220C0B220()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  result = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }

  return result;
}