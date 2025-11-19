unint64_t sub_1BCC61668()
{
  result = qword_1EBD0B650;
  if (!qword_1EBD0B650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B5E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B5D8);
    sub_1BCC61420();
    swift_getOpaqueTypeConformance2();
    sub_1BCC61760(&qword_1EDA1EE68, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B650);
  }

  return result;
}

uint64_t sub_1BCC61760(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BCC617A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1BCC61814()
{
  result = qword_1EBD0B698;
  if (!qword_1EBD0B698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B690);
    sub_1BCA5B4A0(&qword_1EBD0B6A0, &unk_1EBD0B6A8);
    sub_1BCA5B4A0(&qword_1EBD0B6B0, &unk_1EBD0B6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B698);
  }

  return result;
}

unint64_t sub_1BCC618F8()
{
  result = qword_1EBD0B6C0;
  if (!qword_1EBD0B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B6C0);
  }

  return result;
}

uint64_t objectdestroy_32Tm()
{
  v1 = v0;
  HourPrecipitationChartContentView = type metadata accessor for NextHourPrecipitationChartContentView(0);
  OUTLINED_FUNCTION_13_30();
  v4 = *(v3 + 80);
  v40 = *(v5 + 64);
  v42 = sub_1BCE1AF60();
  OUTLINED_FUNCTION_2();
  v39 = v6;
  v37 = *(v6 + 80);
  v38 = *(v7 + 64);
  v41 = (v4 + 16) & ~v4;
  v8 = v0 + v41;

  HourPrecipitationChartViewModel = type metadata accessor for NextHourPrecipitationChartViewModel(0);
  v10 = HourPrecipitationChartViewModel[10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E18);
  if (!__swift_getEnumTagSinglePayload(v8 + v10, 1, v11))
  {
    sub_1BCE19060();
    OUTLINED_FUNCTION_0_4();
    (*(v12 + 8))(v8 + v10);
  }

  v13 = HourPrecipitationChartViewModel[12];
  HourPrecipitationChartView = type metadata accessor for NextHourPrecipitationChartViewModel.Point(0);
  if (!__swift_getEnumTagSinglePayload(v8 + v13, 1, HourPrecipitationChartView))
  {
    sub_1BCE19060();
    OUTLINED_FUNCTION_0_4();
    (*(v15 + 8))(v8 + v13);
  }

  v16 = v8 + HourPrecipitationChartViewModel[13];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E78);
  if (!__swift_getEnumTagSinglePayload(v16, 1, v17))
  {
    v36 = v1;
    v18 = sub_1BCE19060();
    v19 = v4;
    v20 = *(*(v18 - 8) + 8);
    v20(v16, v18);
    v21 = v18;
    v1 = v36;
    v20(v16 + *(v17 + 36), v21);
    v4 = v19;
  }

  v22 = HourPrecipitationChartViewModel[14];
  v23 = sub_1BCE19060();
  if (!__swift_getEnumTagSinglePayload(v8 + v22, 1, v23))
  {
    OUTLINED_FUNCTION_3_2();
    (*(v24 + 8))(v8 + v22, v23);
  }

  v25 = v8 + HourPrecipitationChartContentView[5];
  if (!__swift_getEnumTagSinglePayload(v25, 1, v23))
  {
    OUTLINED_FUNCTION_3_2();
    (*(v26 + 8))(v25, v23);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B590);

  v27 = v8 + HourPrecipitationChartContentView[7];

  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B578) + 32);
  if (!__swift_getEnumTagSinglePayload(v27 + v28, 1, HourPrecipitationChartView))
  {
    OUTLINED_FUNCTION_3_2();
    (*(v29 + 8))(v27 + v28, v23);
  }

  v30 = HourPrecipitationChartContentView[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08428);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BCE1B850();
    OUTLINED_FUNCTION_0_4();
    (*(v31 + 8))(v8 + v30);
  }

  else
  {
  }

  sub_1BCA21FC4(*(v8 + HourPrecipitationChartContentView[9]), *(v8 + HourPrecipitationChartContentView[9] + 8));
  v32 = HourPrecipitationChartContentView[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A188);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BCE1B4E0();
    OUTLINED_FUNCTION_0_4();
    (*(v33 + 8))(v8 + v32);
  }

  else
  {
  }

  v34 = (v41 + v40 + v37) & ~v37;
  (*(v39 + 8))(v1 + v34, v42);

  return MEMORY[0x1EEE6BDD0](v1, v34 + v38, v4 | v37 | 7);
}

uint64_t sub_1BCC61E24(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void, unint64_t, uint64_t))
{
  v8 = *(type metadata accessor for NextHourPrecipitationChartContentView(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1BCE1AF60() - 8);
  v12 = v4 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return a4(a1, a2, a3 & 1, v4 + v9, v12);
}

uint64_t sub_1BCC61F24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_10_1();
  v5(v4);
  return a2;
}

uint64_t objectdestroyTm_4()
{
  HourPrecipitationChartContentView = type metadata accessor for NextHourPrecipitationChartContentView(0);
  OUTLINED_FUNCTION_13_30();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v34 = v0;
  v35 = *(v5 + 64);
  v6 = v0 + v4;

  HourPrecipitationChartViewModel = type metadata accessor for NextHourPrecipitationChartViewModel(0);
  v8 = HourPrecipitationChartViewModel[10];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E18);
  if (!__swift_getEnumTagSinglePayload(v0 + v4 + v8, 1, v9))
  {
    sub_1BCE19060();
    OUTLINED_FUNCTION_0_4();
    (*(v10 + 8))(v6 + v8);
  }

  v11 = HourPrecipitationChartViewModel[12];
  HourPrecipitationChartView = type metadata accessor for NextHourPrecipitationChartViewModel.Point(0);
  if (!__swift_getEnumTagSinglePayload(v6 + v11, 1, HourPrecipitationChartView))
  {
    sub_1BCE19060();
    OUTLINED_FUNCTION_0_4();
    (*(v13 + 8))(v6 + v11);
  }

  v14 = v6 + HourPrecipitationChartViewModel[13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E78);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    v33 = v3;
    v16 = sub_1BCE19060();
    OUTLINED_FUNCTION_4();
    v18 = *(v17 + 8);
    v18(v14, v16);
    v19 = v16;
    v3 = v33;
    v18(v14 + *(v15 + 36), v19);
  }

  v20 = HourPrecipitationChartViewModel[14];
  v21 = sub_1BCE19060();
  if (!__swift_getEnumTagSinglePayload(v6 + v20, 1, v21))
  {
    OUTLINED_FUNCTION_3_2();
    (*(v22 + 8))(v6 + v20, v21);
  }

  v23 = v6 + HourPrecipitationChartContentView[5];
  if (!__swift_getEnumTagSinglePayload(v23, 1, v21))
  {
    OUTLINED_FUNCTION_3_2();
    (*(v24 + 8))(v23, v21);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B590);

  v25 = v6 + HourPrecipitationChartContentView[7];

  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B578) + 32);
  if (!__swift_getEnumTagSinglePayload(v25 + v26, 1, HourPrecipitationChartView))
  {
    OUTLINED_FUNCTION_3_2();
    (*(v27 + 8))(v25 + v26, v21);
  }

  v28 = HourPrecipitationChartContentView[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08428);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BCE1B850();
    OUTLINED_FUNCTION_0_4();
    (*(v29 + 8))(v6 + v28);
  }

  else
  {
  }

  sub_1BCA21FC4(*(v6 + HourPrecipitationChartContentView[9]), *(v6 + HourPrecipitationChartContentView[9] + 8));
  v30 = HourPrecipitationChartContentView[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A188);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BCE1B4E0();
    OUTLINED_FUNCTION_0_4();
    (*(v31 + 8))(v6 + v30);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v34, v4 + v35, v3 | 7);
}

uint64_t sub_1BCC623E0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for NextHourPrecipitationChartContentView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1BCC6248C()
{
  result = qword_1EBD0B6D0;
  if (!qword_1EBD0B6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B6C8);
    sub_1BCC62510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B6D0);
  }

  return result;
}

unint64_t sub_1BCC62510()
{
  result = qword_1EBD0B6D8;
  if (!qword_1EBD0B6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B6E0);
    sub_1BCC625A4();
    sub_1BCC62760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B6D8);
  }

  return result;
}

unint64_t sub_1BCC625A4()
{
  result = qword_1EBD0B6E8;
  if (!qword_1EBD0B6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B6F0);
    sub_1BCC6265C();
    sub_1BCA5B4A0(&qword_1EBD0B718, &unk_1EBD0B720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B6E8);
  }

  return result;
}

unint64_t sub_1BCC6265C()
{
  result = qword_1EBD0B6F8;
  if (!qword_1EBD0B6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B700);
    sub_1BCE1B310();
    swift_getOpaqueTypeConformance2();
    sub_1BCA5B4A0(&qword_1EBD0B708, &qword_1EBD0B710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B6F8);
  }

  return result;
}

unint64_t sub_1BCC62760()
{
  result = qword_1EBD0B728;
  if (!qword_1EBD0B728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B730);
    sub_1BCE1AF80();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B728);
  }

  return result;
}

uint64_t sub_1BCC62848(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_14_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BCC628BC()
{
  result = qword_1EBD0B770;
  if (!qword_1EBD0B770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B768);
    sub_1BCC62940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B770);
  }

  return result;
}

unint64_t sub_1BCC62940()
{
  result = qword_1EBD0B778;
  if (!qword_1EBD0B778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B788);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B790);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B798);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B7A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B7A8);
    sub_1BCA5B4A0(&qword_1EBD0B7B0, &qword_1EBD0B7A8);
    sub_1BC970820();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BCC62B84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B778);
  }

  return result;
}

unint64_t sub_1BCC62B84()
{
  result = qword_1EBD0B7B8;
  if (!qword_1EBD0B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B7B8);
  }

  return result;
}

uint64_t sub_1BCC62BE0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14_2(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_0_4();
  (*(v4 + 8))(a1);
  return a1;
}

id sub_1BCC62D1C()
{
  v1 = sub_1BCE1D240();

  v2 = sub_1BCE1D560();

  v3 = [v0 initWithTitle:v1 categoryOrder:v2];

  return v3;
}

id sub_1BCC62D9C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1BCE1D240();

  sub_1BC947608(0, &qword_1EBD0B828);
  v6 = sub_1BCE1D560();

  v7 = [v3 initWithName:v5 isContinuous:a3 & 1 dataPoints:v6];

  return v7;
}

unint64_t sub_1BCC62EC8()
{
  result = qword_1EBD0B810;
  if (!qword_1EBD0B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B810);
  }

  return result;
}

unint64_t sub_1BCC62F20()
{
  result = qword_1EBD0B818;
  if (!qword_1EBD0B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B818);
  }

  return result;
}

uint64_t sub_1BCC62F74()
{
  result = sub_1BCE1CBD0();
  qword_1EBD0B838 = result;
  return result;
}

uint64_t sub_1BCC62FD0()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  v0 = qword_1EDA1EFB8;
  result = sub_1BCE1CC20();
  qword_1EDA1E980 = result;
  return result;
}

uint64_t sub_1BCC63074()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  v0 = qword_1EDA1EFB8;
  result = sub_1BCE1CC20();
  qword_1EDA1E968 = result;
  return result;
}

uint64_t sub_1BCC63118()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  v0 = qword_1EDA1EFB8;
  result = sub_1BCE1CC20();
  qword_1EDA1E950 = result;
  return result;
}

uint64_t sub_1BCC631BC()
{
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EDA1EFB8;
  result = sub_1BCE1CC20();
  qword_1EDA1B5C8 = result;
  return result;
}

uint64_t sub_1BCC6327C()
{
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EDA1EFB8;
  result = sub_1BCE1CC20();
  qword_1EDA1B600 = result;
  return result;
}

uint64_t sub_1BCC63340()
{
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EDA1EFB8;
  result = sub_1BCE1CC20();
  qword_1EDA1B5D8 = result;
  return result;
}

uint64_t sub_1BCC63404()
{
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EDA1EFB8;
  result = sub_1BCE1CC20();
  qword_1EDA1B5F0 = result;
  return result;
}

uint64_t static Image.windDirectionImage(angle:)(double a1)
{
  static Image.windDirectionSymbolName(angle:)(a1);

  return sub_1BCE1CBD0();
}

uint64_t static Image.windDirectionSymbolName(angle:)(double a1)
{
  v1 = round((a1 + 180.0) * 0.0174532925 * 57.2957795 / 45.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 % 8 >= 0)
  {
    v2 = qword_1F3B4E090[2 * (v1 % 8) + 4];

    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for WindHourlyGlyphContentView()
{
  result = qword_1EBD0B850;
  if (!qword_1EBD0B850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCC63638()
{
  result = type metadata accessor for WindComplicationHourlyViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BCC636EC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1BCE1CEE0();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B860);
  return sub_1BCC63738(v1, a1 + *(v4 + 44));
}

uint64_t sub_1BCC63738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B868);
  MEMORY[0x1EEE9AC00](v71);
  v73 = (&v66 - v4);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B870);
  MEMORY[0x1EEE9AC00](v72);
  v6 = &v66 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B878);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B880);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v74 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v66 - v16;
  *v17 = sub_1BCE1BDF0();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B888);
  sub_1BCC63DC4(a1, &v17[*(v18 + 44)]);
  v19 = sub_1BCC64EEC();
  if (v20 & 1) != 0 || (v21 = v19, v22 = type metadata accessor for WindHourlyGlyphContentView(), (*(a1 + *(v22 + 20))))
  {
    v67 = v17;
    v68 = v12;
    v69 = v9;
    v70 = a2;
    if (qword_1EBD06FD0 != -1)
    {
      swift_once();
    }

    v75 = qword_1EBD2A0F8;
    v76 = unk_1EBD2A100;
    sub_1BC970820();

    v23 = sub_1BCE1C6A0();
    v25 = v24;
    v27 = v26;
    type metadata accessor for WindHourlyGlyphContentView();
    v28 = sub_1BCE1C610();
    v30 = v29;
    v32 = v31;
    sub_1BC998CF4(v23, v25, v27 & 1);

    v33 = sub_1BCE1C5C0();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    sub_1BC998CF4(v28, v30, v32 & 1);

    v40 = v73;
    *v73 = v33;
    v40[1] = v35;
    *(v40 + 16) = v37 & 1;
    v40[3] = v39;
    swift_storeEnumTagMultiPayload();
    sub_1BCC65240();
    v41 = v68;
    sub_1BCE1BF60();
    v9 = v69;
    a2 = v70;
    v17 = v67;
  }

  else
  {
    v42 = v22;
    v43 = sub_1BCE1CBD0();
    v68 = v43;
    v44 = sub_1BCE1C460();
    v69 = a1;
    v45 = v44;
    KeyPath = swift_getKeyPath();
    v75 = v43;
    v76 = KeyPath;
    v77 = v45;
    sub_1BCE1C380();
    v67 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A380);
    sub_1BCB8CCC4();
    v70 = v21;
    sub_1BCE1C7B0();

    v48 = *&v69[*(v42 + 36)];
    v49 = swift_getKeyPath();
    v50 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B8B0) + 36)];
    *v50 = v49;
    v50[1] = v48;

    sub_1BCE1CFC0();
    v52 = v51;
    v54 = v53;
    v55 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B8A0) + 36)];
    *v55 = v70;
    *(v55 + 1) = v52;
    *(v55 + 2) = v54;
    v56 = swift_getKeyPath();
    v57 = &v6[*(v72 + 36)];
    v58 = v12;
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B8B8) + 28);
    v60 = *MEMORY[0x1E697E7D0];
    v61 = sub_1BCE1B850();
    v62 = v57 + v59;
    v41 = v58;
    (*(*(v61 - 8) + 104))(v62, v60, v61);
    *v57 = v56;
    sub_1BC952B1C(v6, v73, &qword_1EBD0B870);
    swift_storeEnumTagMultiPayload();
    sub_1BCC65240();
    sub_1BCE1BF60();
    sub_1BC94C05C(v6, &qword_1EBD0B870);
  }

  v63 = v74;
  sub_1BC952B1C(v17, v74, &qword_1EBD0B880);
  sub_1BC952B1C(v41, v9, &qword_1EBD0B878);
  sub_1BC952B1C(v63, a2, &qword_1EBD0B880);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B8C0);
  sub_1BC952B1C(v9, a2 + *(v64 + 48), &qword_1EBD0B878);
  sub_1BC94C05C(v41, &qword_1EBD0B878);
  sub_1BC94C05C(v17, &qword_1EBD0B880);
  sub_1BC94C05C(v9, &qword_1EBD0B878);
  return sub_1BC94C05C(v63, &qword_1EBD0B880);
}

uint64_t sub_1BCC63DC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v105 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09440);
  MEMORY[0x1EEE9AC00](v97);
  v4 = v89 - v3;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09448);
  MEMORY[0x1EEE9AC00](v99);
  v104 = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v98 = v89 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v103 = v89 - v9;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B8D0);
  MEMORY[0x1EEE9AC00](v96);
  v89[0] = v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B8D8);
  v101 = *(v11 - 8);
  v102 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v100 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v106 = a1;
  v107 = v89 - v14;
  v110 = sub_1BCC645D0();
  v111 = v15;
  v94 = sub_1BC970820();
  v16 = sub_1BCE1C6A0();
  v18 = v17;
  v20 = v19;
  v21 = type metadata accessor for WindHourlyGlyphContentView();
  v93 = *(a1 + *(v21 + 28));
  v22 = sub_1BCE1C610();
  v24 = v23;
  v26 = v25;
  sub_1BC998CF4(v16, v18, v20 & 1);

  v95 = v106 + *(v21 + 36);
  v27 = sub_1BCE1C5C0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1BC998CF4(v22, v24, v26 & 1);

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A00);
  v35 = v89[0];
  v36 = (v89[0] + *(v34 + 36));
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A08);
  v37 = *(v92 + 28);
  v38 = *MEMORY[0x1E6980FD8];
  v39 = sub_1BCE1C600();
  v40 = *(v39 - 8);
  v41 = *(v40 + 104);
  v91 = v38;
  v90 = v41;
  v89[1] = v40 + 104;
  v41(v36 + v37, v38, v39);
  __swift_storeEnumTagSinglePayload(v36 + v37, 0, 1, v39);
  *v36 = swift_getKeyPath();
  *v35 = v27;
  *(v35 + 8) = v29;
  *(v35 + 16) = v31 & 1;
  *(v35 + 24) = v33;
  if (qword_1EBD07258 != -1)
  {
    swift_once();
  }

  v42 = -*&qword_1EBD0B848;
  v43 = v35 + *(v96 + 36);
  *v43 = 0;
  *(v43 + 8) = v42;
  sub_1BCC65478();
  sub_1BCE1C750();
  sub_1BC94C05C(v35, &qword_1EBD0B8D0);
  v44 = v106;
  v110 = sub_1BCC64C44();
  v111 = v45;
  v46 = sub_1BCE1C6A0();
  v48 = v47;
  v50 = v49;
  v96 = sub_1BCE1C610();
  v94 = v51;
  v53 = v52;
  v93 = v54;
  sub_1BC998CF4(v46, v48, v50 & 1);

  KeyPath = swift_getKeyPath();
  v56 = swift_getKeyPath();
  v57 = v53 & 1;
  v109 = v53 & 1;
  v108 = 0;
  v58 = sub_1BCE1C240();
  sub_1BCE1B4A0();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  LOBYTE(v110) = 0;
  v67 = type metadata accessor for WindComplicationHourlyViewModel();
  v68 = 24;
  if (*(v44 + *(v67 + 32)))
  {
    v68 = 16;
  }

  v69 = *(v95 + v68);

  v70 = swift_getKeyPath();
  v71 = &v4[*(v97 + 36)];
  v72 = *(v92 + 28);
  v90(v71 + v72, v91, v39);
  __swift_storeEnumTagSinglePayload(v71 + v72, 0, 1, v39);
  *v71 = swift_getKeyPath();
  v73 = v94;
  *v4 = v96;
  *(v4 + 1) = v73;
  v4[16] = v57;
  *(v4 + 3) = v93;
  *(v4 + 4) = KeyPath;
  *(v4 + 5) = 1;
  v4[48] = 0;
  *(v4 + 7) = v56;
  *(v4 + 8) = 0x3FE6666666666666;
  v4[72] = v58;
  *(v4 + 10) = v60;
  *(v4 + 11) = v62;
  *(v4 + 12) = v64;
  *(v4 + 13) = v66;
  v4[112] = 0;
  *(v4 + 15) = v70;
  *(v4 + 16) = v69;
  if (qword_1EBD07250 != -1)
  {
    swift_once();
  }

  v74 = qword_1EBD0B840;
  v75 = v98;
  sub_1BC9643D8(v4, v98, &qword_1EBD09440);
  v76 = (v75 + *(v99 + 36));
  *v76 = 0;
  v76[1] = v74;
  v77 = v103;
  sub_1BC9643D8(v75, v103, &qword_1EBD09448);
  v79 = v100;
  v78 = v101;
  v80 = *(v101 + 16);
  v81 = v107;
  v82 = v102;
  v80(v100, v107, v102);
  v83 = v104;
  sub_1BC952B1C(v77, v104, &qword_1EBD09448);
  v84 = v105;
  v80(v105, v79, v82);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B8E8);
  v86 = &v84[*(v85 + 48)];
  *v86 = 0;
  v86[8] = 1;
  sub_1BC952B1C(v83, &v84[*(v85 + 64)], &qword_1EBD09448);
  sub_1BC94C05C(v77, &qword_1EBD09448);
  v87 = *(v78 + 8);
  v87(v81, v82);
  sub_1BC94C05C(v83, &qword_1EBD09448);
  return (v87)(v79, v82);
}

uint64_t sub_1BCC645D0()
{
  v1 = sub_1BCE19280();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v44 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v42 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle(0);
  MEMORY[0x1EEE9AC00](v42);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v40 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07898);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v40 - v20);
  v22 = type metadata accessor for WindComplicationHourlyViewModel();
  sub_1BC952B1C(v0 + *(v22 + 28), v17, &qword_1EBD07898);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1BC94C05C(v17, &qword_1EBD07898);
LABEL_5:
    if (qword_1EBD06FD0 != -1)
    {
      swift_once();
    }

    v23 = qword_1EBD2A0F8;

    return v23;
  }

  (*(v19 + 32))(v21, v17, v18);
  if (*(v0 + *(type metadata accessor for WindHourlyGlyphContentView() + 20)))
  {
    (*(v19 + 8))(v21, v18);
    goto LABEL_5;
  }

  v41 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078A8);
  v24 = *(type metadata accessor for NSUnitSpeed.WeatherFormatComponent(0) - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BCE3E050;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
  __swift_storeEnumTagSinglePayload(v26 + v25, 1, 1, v27);
  sub_1BC9795A8();
  v29 = v28;
  v30 = v46;
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v46);
  sub_1BC952B1C(v10, v7, &qword_1EBD07890);
  *v12 = v29;
  v12[8] = 0;
  v31 = v47;
  sub_1BC952B1C(v7, v47, &qword_1EBD07890);
  if (__swift_getEnumTagSinglePayload(v31, 1, v30) == 1)
  {
    v32 = v44;
    if (qword_1EDA1F658 != -1)
    {
      swift_once();
    }

    sub_1BCE1A9F0();

    sub_1BC94C05C(v7, &qword_1EBD07890);
    sub_1BC94C05C(v10, &qword_1EBD07890);
    v33 = v47;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v30);
    v35 = v45;
    if (EnumTagSinglePayload != 1)
    {
      sub_1BC94C05C(v33, &qword_1EBD07890);
    }
  }

  else
  {
    sub_1BC94C05C(v7, &qword_1EBD07890);
    sub_1BC94C05C(v10, &qword_1EBD07890);
    v32 = v44;
    v35 = v45;
    (*(v45 + 32))(v44, v31, v30);
  }

  v36 = v42;
  (*(v35 + 32))(&v12[*(v42 + 24)], v32, v30);
  v12[*(v36 + 28)] = 0;
  v12[*(v36 + 32)] = 1;
  v37 = v43;
  sub_1BC979F00(v12, v43);
  sub_1BCE1A3E0();
  v38 = sub_1BCE1A3A0();
  v23 = sub_1BC979F64(v37, 0, v38, v21);

  sub_1BCBF2960(v37);
  (*(v41 + 8))(v21, v18);
  return v23;
}

uint64_t sub_1BCC64C44()
{
  v1 = sub_1BCE19280();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07888);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  if (*(v0 + *(type metadata accessor for WindHourlyGlyphContentView() + 20)))
  {
    if (qword_1EBD06FD0 != -1)
    {
      swift_once();
    }

    v8 = qword_1EBD2A0F8;
  }

  else
  {
    if (qword_1EBD07170 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for WindComplicationHourlyViewModel();
    v10 = v9[9];
    v11 = v9[10];
    v12 = sub_1BCE19470();
    (*(*(v12 - 8) + 16))(v7, v0 + v11, v12);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
    sub_1BCE191B0();
    v8 = sub_1BCBA01D4(v0 + v10, v4, v7);
    (*(v2 + 8))(v4, v1);
    sub_1BC94C05C(v7, &qword_1EBD07888);
    if (*(v0 + v9[8]) == 1)
    {
      type metadata accessor for RectangularContentView.TimeFormatter();
      static RectangularContentView.TimeFormatter.now.getter();
      v13 = sub_1BCE1D380();

      if (v13 <= 5)
      {

        return static RectangularContentView.TimeFormatter.now.getter();
      }
    }
  }

  return v8;
}

uint64_t sub_1BCC64EEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B8C8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07B60);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for WindComplicationHourlyViewModel();
  sub_1BC952B1C(v0 + *(v11 + 20), v3, &qword_1EBD0B8C8);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1BC94C05C(v3, &qword_1EBD0B8C8);
    *&result = 0.0;
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v13 = [objc_opt_self() degrees];
    sub_1BCE18680();

    sub_1BCE185E0();
    v15 = v14;
    v16 = *(v5 + 8);
    v16(v7, v4);
    v16(v10, v4);
    *&result = (v15 + 180.0) * 0.0174532925;
  }

  return result;
}

double sub_1BCC65138()
{
  v0 = [objc_opt_self() systemFontOfSize:9.0 weight:*MEMORY[0x1E69DB980]];
  [v0 descender];
  v2 = v1;

  result = fabs(v2);
  qword_1EBD0B840 = *&result;
  return result;
}

double sub_1BCC651B0()
{
  v0 = [objc_opt_self() systemFontOfSize:9.0 weight:*MEMORY[0x1E69DB980]];
  [v0 ascender];
  v2 = v1;
  [v0 capHeight];
  v4 = v3;

  result = v2 - v4;
  *&qword_1EBD0B848 = v2 - v4;
  return result;
}

unint64_t sub_1BCC65240()
{
  result = qword_1EBD0B890;
  if (!qword_1EBD0B890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B870);
    sub_1BCC652F8();
    sub_1BC957184(&qword_1EDA1B6C8, &qword_1EBD0B8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B890);
  }

  return result;
}

unint64_t sub_1BCC652F8()
{
  result = qword_1EBD0B898;
  if (!qword_1EBD0B898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B8A0);
    sub_1BCC65384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B898);
  }

  return result;
}

unint64_t sub_1BCC65384()
{
  result = qword_1EBD0B8A8;
  if (!qword_1EBD0B8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B8B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A380);
    sub_1BCB8CCC4();
    swift_getOpaqueTypeConformance2();
    sub_1BC957184(&qword_1EDA1B6A0, &qword_1EBD07AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B8A8);
  }

  return result;
}

unint64_t sub_1BCC65478()
{
  result = qword_1EBD0B8E0;
  if (!qword_1EBD0B8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B8D0);
    sub_1BCAC3980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B8E0);
  }

  return result;
}

uint64_t type metadata accessor for UltravioletComplicationDataStatus()
{
  result = qword_1EDA177A0;
  if (!qword_1EDA177A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCC65578()
{
  v0 = type metadata accessor for UltravioletComplicationViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1BCC655D0(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v63 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A0C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v48 = &v44[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v44[-v5];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07978);
  MEMORY[0x1EEE9AC00](v46);
  v58 = &v44[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09C18);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v44[-v8];
  v66 = sub_1BCE18900();
  v60 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v59 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v44[-v11];
  v12 = sub_1BCE18A60();
  v65 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1BCE18A40();
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1BCE18A70();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A0C8);
  v22 = v21 - 8;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v44[-v24];
  (*(v18 + 16))(v20, v63, v17, v23);
  v26 = v12;
  v27 = MEMORY[0x1E69687C8];
  sub_1BC95003C(&qword_1EDA1EC10, MEMORY[0x1E69687C8]);
  sub_1BCE1D4B0();
  v28 = *(v22 + 44);
  v29 = v15;
  v30 = sub_1BC95003C(&qword_1EDA1F670, v27);
  ++v65;
  v61 = (v50 + 16);
  v54 = (v60 + 2);
  v55 = (v60 + 4);
  v53 = (v60 + 11);
  v52 = *MEMORY[0x1E69683F0];
  v51 = v60 + 1;
  v60 = (v50 + 8);
  v45 = v14;
  v56 = v15;
  v63 = v28;
  v64 = v17;
  v62 = v30;
  while (1)
  {
    sub_1BCE1D750();
    sub_1BC95003C(&qword_1EDA1F678, MEMORY[0x1E69687B0]);
    v31 = sub_1BCE1D210();
    (*v65)(v14, v26);
    if (v31)
    {
      break;
    }

    v32 = sub_1BCE1D780();
    (*v61)(v69);
    v32(v68, 0);
    sub_1BCE1D760();
    sub_1BCE18910();
    sub_1BC95003C(&qword_1EDA1EC50, MEMORY[0x1E6968438]);
    v33 = v67;
    sub_1BCE18A50();
    if (__swift_getEnumTagSinglePayload(v33, 1, v66) == 1)
    {
      sub_1BC94C05C(v67, &qword_1EBD09C18);
    }

    else
    {
      v34 = v57;
      v35 = v66;
      (*v55)(v57, v67, v66);
      v36 = v59;
      (*v54)(v59, v34, v35);
      v37 = (*v53)(v36, v35);
      if (v37 == v52)
      {
        sub_1BCE18A30();
        v38 = v47;
        sub_1BCE1C630();
        v39 = sub_1BCE1C640();
        __swift_storeEnumTagSinglePayload(v38, 0, 1, v39);
        sub_1BC957184(&qword_1EDA1C1D8, &qword_1EBD07978);
        v50 = sub_1BCE18B40();
        sub_1BCBDA45C();
        sub_1BCB7A108();
        v14 = v45;
        sub_1BCE18C20();
        v40 = v66;
        sub_1BC94C05C(v38, &qword_1EBD0A0C0);
        (v50)(v68, 0);
        sub_1BC94C05C(v58, &qword_1EBD07978);
        (*v51)(v34, v40);
      }

      else
      {
        v41 = *v51;
        v42 = v66;
        (*v51)(v34, v66);
        v41(v59, v42);
      }

      v29 = v56;
    }

    (*v60)(v69, v29);
  }

  return sub_1BC94C05C(v25, &qword_1EBD0A0C8);
}

void NSUnitTemperature.BaseWeatherFormatStyle.attributed.getter()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v3 = *v0;
  v4 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  v5 = *(v4 + 20);
  v6 = *(v4 + 32);
  v7 = type metadata accessor for NSUnitTemperature.AttributedWeatherFormatStyle(0);

  sub_1BC96C320();
  v8 = *(v7 + 24);
  sub_1BCE19280();
  OUTLINED_FUNCTION_4();
  (*(v9 + 16))(&v2[v8], &v0[v5]);
  v10 = *(v7 + 28);
  sub_1BCE18D50();
  OUTLINED_FUNCTION_4();
  (*(v11 + 16))(&v2[v10], &v0[v6]);
  *v2 = v3;
  OUTLINED_FUNCTION_18_8();
}

void static WeatherFormatStyle<>.weather(_:sign:locale:)()
{
  OUTLINED_FUNCTION_20_0();
  v31 = v4;
  v32 = v3;
  v29 = v5;
  v7 = v6;
  v8 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v30 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_36_0();
  v11 = sub_1BCE18D50();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_15();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  v16 = OUTLINED_FUNCTION_14(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  sub_1BCBDA45C();
  v20 = *(v13 + 16);
  v31 = v0;
  v21 = v0;
  v22 = v29;
  v23 = v32;
  v32 = v11;
  v20(v21, v23, v11);
  *v7 = v22;
  sub_1BCBDA45C();
  OUTLINED_FUNCTION_6(v2);
  if (v24)
  {
    v26 = v30;
    v25 = qword_1EDA1F658;

    if (v25 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    sub_1BCE1A9F0();

    sub_1BC94C05C(v19, &qword_1EBD07890);
    OUTLINED_FUNCTION_6(v2);
    if (!v24)
    {
      sub_1BC94C05C(v2, &qword_1EBD07890);
    }
  }

  else
  {

    sub_1BC94C05C(v19, &qword_1EBD07890);
    v26 = v30;
    (*(v30 + 32))(v1, v2, v8);
  }

  v27 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  (*(v26 + 32))(&v7[*(v27 + 20)], v1, v8);
  OUTLINED_FUNCTION_38_10();
  (*(v13 + 32))(&v7[v28], v31, v32);
  OUTLINED_FUNCTION_21();
}

void static Set<>.full(includingScale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_96();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF8);
  OUTLINED_FUNCTION_2();
  v24 = v23;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CD8);
  OUTLINED_FUNCTION_11_32();
  v29 = *(v28 + 72);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BCE3E030;
  v33 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  sub_1BC947608(0, qword_1EDA1EFC0);
  sub_1BCE18630();
  v37 = OUTLINED_FUNCTION_51_4();
  v38(v37);
  *(v32 + v31 + v29 + *(v33 + 20)) = v21;
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v33);
  (*(v24 + 8))(v27, v22);
  sub_1BC9639B4();
  OUTLINED_FUNCTION_18_8();
}

void static Set<>.unit(includingScale:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF8);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CD8);
  OUTLINED_FUNCTION_11_32();
  OUTLINED_FUNCTION_42_6();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BCE3E050;
  v10 = v9 + v1;
  sub_1BC947608(0, qword_1EDA1EFC0);
  sub_1BCE18630();
  v11 = OUTLINED_FUNCTION_51_4();
  v12(v11);
  *(v10 + *(OUTLINED_FUNCTION_55_5() + 20)) = a1;
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  (*(v5 + 8))(v8, v3);
  sub_1BC9639B4();
}

void static NSUnitTemperature.WeatherFormatComponent.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_96();
  a17 = v20;
  a18 = v21;
  v23 = v22;
  v25 = v24;
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  v30 = type metadata accessor for NSUnitTemperature.WeatherFormatComponent(0);
  v31 = OUTLINED_FUNCTION_14(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_15();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF0);
  OUTLINED_FUNCTION_14(v32);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v37 = *(v36 + 56);
  sub_1BC96D168(v25, &a9 - v34);
  sub_1BC96D168(v23, &v35[v37]);
  OUTLINED_FUNCTION_6(v35);
  if (!v39)
  {
    sub_1BC96D168(v35, v18);
    OUTLINED_FUNCTION_6(&v35[v37]);
    if (!v39)
    {
      OUTLINED_FUNCTION_16_25();
      sub_1BC96D10C();
      sub_1BC947608(0, qword_1EDA1EFC0);
      v41 = sub_1BCE18640();
      if (v41)
      {
        v42 = *(v19 + 20);
        v43 = *(v18 + v42);
        v44 = *(v29 + v42);
        OUTLINED_FUNCTION_0_57();
        sub_1BC969FDC(v29, v45);
        if (v43 == v44)
        {
          OUTLINED_FUNCTION_0_57();
          sub_1BC969FDC(v18, v46);
          goto LABEL_5;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_57();
        sub_1BC969FDC(v29, v47);
      }

      OUTLINED_FUNCTION_0_57();
      sub_1BC969FDC(v18, v48);
      OUTLINED_FUNCTION_2_60();
      sub_1BC969FDC(v35, v49);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_0_57();
    sub_1BC969FDC(v18, v40);
LABEL_9:
    sub_1BC94C05C(v35, &qword_1EBD08BF0);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6(&v35[v37]);
  if (!v39)
  {
    goto LABEL_9;
  }

LABEL_5:
  OUTLINED_FUNCTION_2_60();
  sub_1BC969FDC(v35, v38);
LABEL_15:
  OUTLINED_FUNCTION_18_8();
}

uint64_t static NSUnitTemperature.WeatherFormatUnitConfiguration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_9();
  sub_1BC947608(0, qword_1EDA1EFC0);
  if (sub_1BCE18640())
  {
    v2 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
    v3 = *(v1 + *(v2 + 20)) ^ *(v0 + *(v2 + 20)) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t NSUnitTemperature.WeatherFormatUnitConfiguration.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF8);
  OUTLINED_FUNCTION_10_0();
  sub_1BC957184(v0, &qword_1EBD08BF8);
  sub_1BCE1D190();
  type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
  return sub_1BCE1E120();
}

uint64_t NSUnitTemperature.WeatherFormatUnitConfiguration.hashValue.getter()
{
  sub_1BCE1E100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF8);
  OUTLINED_FUNCTION_10_0();
  v1 = sub_1BC957184(v0, &qword_1EBD08BF8);
  OUTLINED_FUNCTION_54_2(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_1BCE1D190();
  type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
  sub_1BCE1E120();
  return sub_1BCE1E150();
}

uint64_t sub_1BCC66AE0()
{
  sub_1BCE1E100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF8);
  sub_1BC957184(&qword_1EDA1F690, &qword_1EBD08BF8);
  sub_1BCE1D190();
  sub_1BCE1E120();
  return sub_1BCE1E150();
}

void NSUnitTemperature.BaseWeatherFormatStyle.format(_:placeholder:unitManager:)()
{
  OUTLINED_FUNCTION_101_0();
  swift_getObjectType();
  OUTLINED_FUNCTION_69();

  sub_1BC967B28();
}

void NSUnitTemperature.BaseWeatherFormatStyle.accessible.getter()
{
  OUTLINED_FUNCTION_20_0();
  v4 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_13();
  sub_1BCE18D50();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  v11 = OUTLINED_FUNCTION_14(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_54();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16_0();
  v13 = *v0;
  type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  v14 = OUTLINED_FUNCTION_22_20();
  v15(v14);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v4);
  v19 = OUTLINED_FUNCTION_53_2();
  v20(v19);
  *v9 = v13;
  sub_1BCBDA45C();
  OUTLINED_FUNCTION_6(v2);
  if (v21)
  {
    v22 = qword_1EDA1F658;

    if (v22 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    sub_1BCE1A9F0();

    sub_1BC94C05C(v3, &qword_1EBD07890);
    OUTLINED_FUNCTION_6(v2);
    if (!v21)
    {
      sub_1BC94C05C(v2, &qword_1EBD07890);
    }
  }

  else
  {

    sub_1BC94C05C(v3, &qword_1EBD07890);
    v23 = OUTLINED_FUNCTION_28_10();
    v24(v23);
  }

  v25 = OUTLINED_FUNCTION_30_11(v1[5]);
  v26(v25);
  *(v9 + v1[6]) = 1;
  v27 = OUTLINED_FUNCTION_27_9(v1[7]);
  v28(v27);
  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BCC66EC4(void (*a1)(_BYTE *))
{
  sub_1BCE1E100();
  a1(v3);
  return sub_1BCE1E150();
}

uint64_t sub_1BCC66F28(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1BCE1E100();
  a4(v6);
  return sub_1BCE1E150();
}

void NSUnitTemperature.AttributedWeatherFormatStyle.format(_:placeholder:unitManager:)()
{
  OUTLINED_FUNCTION_20_0();
  v50 = v3;
  v51 = v2;
  v5 = v4;
  v60 = v6;
  sub_1BCE18A70();
  OUTLINED_FUNCTION_2();
  v47 = v8;
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v46 = v10 - v9;
  OUTLINED_FUNCTION_13();
  sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  v58 = v12;
  v59 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v57 = v14 - v13;
  v15 = OUTLINED_FUNCTION_11_32();
  v56 = v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  v55 = v18 - v17;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B918);
  OUTLINED_FUNCTION_2();
  v49 = v19;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_77();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_2();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_54();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v46 - v26;
  v53 = *v5;
  v28 = *(type metadata accessor for NSUnitTemperature.AttributedWeatherFormatStyle(0) + 24);
  swift_getObjectType();
  v54 = v28;
  v29 = sub_1BCE1A410();
  sub_1BCE18680();

  sub_1BCE185E0();
  sub_1BCE185F0();
  sub_1BCE185E0();
  if (v30 == 0.0)
  {
    sub_1BCE185F0();
  }

  (*(v23 + 32))(v27, v1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD098E8);
  sub_1BCE18600();
  sub_1BC957184(&qword_1EBD0B920, &qword_1EBD0B918);
  v31 = v60;
  v32 = v52;
  sub_1BCE186A0();
  (*(v49 + 8))(v0, v32);
  (*(v23 + 8))(v27, v21);
  OUTLINED_FUNCTION_56_3();
  v33 = v55;
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v21);
  sub_1BC96D35C();
  v38 = v37;
  OUTLINED_FUNCTION_2_60();
  sub_1BC969FDC(v33, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CD8);
  OUTLINED_FUNCTION_42_6();
  *(swift_allocObject() + 16) = xmmword_1BCE3E050;
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v21);
  sub_1BC9639B4();
  sub_1BC96A034();
  LOBYTE(v32) = v43;

  sub_1BCCFFF44(v38 & 1, v32 & 1, qword_1BCE5BEC0[v53], qword_1BCE5BEE0[v53]);

  v44 = v57;
  sub_1BCE19270();
  LOBYTE(v32) = sub_1BCE191C0();
  (*(v58 + 8))(v44, v59);
  if (v32)
  {
    v45 = v46;
    sub_1BCE18A90();
    sub_1BCC655D0(v45, v31);
    (*(v47 + 8))(v45, v48);
  }

  OUTLINED_FUNCTION_21();
}

uint64_t static NSUnitTemperature.AttributedWeatherFormatStyle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_9();
  sub_1BC96A034();
  if (v0)
  {
    v1 = type metadata accessor for NSUnitTemperature.AttributedWeatherFormatStyle(0);
    sub_1BC947608(0, qword_1EDA1EFC0);
    if (sub_1BCE18610())
    {
      v2 = OUTLINED_FUNCTION_104(*(v1 + 24));
      if (MEMORY[0x1BFB2B8A0](v2))
      {
        OUTLINED_FUNCTION_104(*(v1 + 28));

        JUMPOUT(0x1BFB2B460);
      }
    }
  }

  return 0;
}

void NSUnitTemperature.AttributedWeatherFormatStyle.hash(into:)()
{
  OUTLINED_FUNCTION_96();
  sub_1BC98CB2C();
  type metadata accessor for NSUnitTemperature.AttributedWeatherFormatStyle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD098E8);
  OUTLINED_FUNCTION_14_22();
  sub_1BC957184(v0, v1);
  sub_1BCE1D190();
  sub_1BCE19280();
  OUTLINED_FUNCTION_7_45();
  sub_1BC95003C(v2, v3);
  OUTLINED_FUNCTION_58();
  sub_1BCE1D190();
  sub_1BCE18D50();
  OUTLINED_FUNCTION_6_42();
  sub_1BC95003C(v4, v5);
  OUTLINED_FUNCTION_58();
  sub_1BCE1D190();
  OUTLINED_FUNCTION_18_8();
}

uint64_t NSUnitTemperature.AttributedWeatherFormatStyle.hashValue.getter()
{
  sub_1BCE1E100();
  sub_1BC98CB2C();
  type metadata accessor for NSUnitTemperature.AttributedWeatherFormatStyle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD098E8);
  OUTLINED_FUNCTION_14_22();
  v2 = sub_1BC957184(v0, v1);
  OUTLINED_FUNCTION_54_2(v2, v3, v4, v5, v6, v7, v8, v9, v31, v34);
  sub_1BCE1D190();
  sub_1BCE19280();
  OUTLINED_FUNCTION_7_45();
  v12 = sub_1BC95003C(v10, v11);
  OUTLINED_FUNCTION_54_2(v12, v13, v14, v15, v16, v17, v18, v19, v32, v35);
  sub_1BCE1D190();
  sub_1BCE18D50();
  OUTLINED_FUNCTION_6_42();
  v22 = sub_1BC95003C(v20, v21);
  OUTLINED_FUNCTION_54_2(v22, v23, v24, v25, v26, v27, v28, v29, v33, v36);
  sub_1BCE1D190();
  return sub_1BCE1E150();
}

uint64_t sub_1BCC67768()
{
  sub_1BCE1E100();
  sub_1BC98CB2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD098E8);
  sub_1BC957184(&qword_1EBD0B928, &qword_1EBD098E8);
  sub_1BCE1D190();
  sub_1BCE19280();
  sub_1BC95003C(&unk_1EDA1F648, MEMORY[0x1E6969770]);
  sub_1BCE1D190();
  sub_1BCE18D50();
  sub_1BC95003C(&qword_1EDA1F668, MEMORY[0x1E6968EF8]);
  sub_1BCE1D190();
  return sub_1BCE1E150();
}

uint64_t sub_1BCC678D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  __swift_allocate_value_buffer(v0, qword_1EBD0B900);
  __swift_project_value_buffer(v0, qword_1EBD0B900);
  v1 = [objc_opt_self() celsius];
  sub_1BC947608(0, qword_1EDA1EFC0);
  return sub_1BCE185D0();
}

uint64_t sub_1BCC67CD4(uint64_t a1)
{
  result = sub_1BC95003C(&unk_1EDA16900, type metadata accessor for NSUnitTemperature.AttributedWeatherFormatStyle);
  *(a1 + 8) = result;
  return result;
}

void sub_1BCC67DC4()
{
  sub_1BC95F620();
  if (v0 <= 0x3F)
  {
    sub_1BC95F7F8(319, &qword_1EDA1BFE8, MEMORY[0x1E6968048]);
    if (v1 <= 0x3F)
    {
      sub_1BCE19280();
      if (v2 <= 0x3F)
      {
        sub_1BCE18D50();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_53_2()
{
  result = v0;
  *(v2 - 88) = v1;
  return result;
}

uint64_t sub_1BCC67EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  sub_1BCE191B0();
  sub_1BCE19270();
  (*(v13 + 8))(v17, v11);
  LOBYTE(v17) = sub_1BCE19210();
  (*(v6 + 8))(v10, v4);
  if (v17)
  {
    MEMORY[0x1BFB2FB00](a1, a2);
    MEMORY[0x1BFB2FB00](11108834, 0xA300000000000000);
    return 11043298;
  }

  else
  {
  }

  return a1;
}

__n128 sub_1BCC68054@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCBB5F8C();
  v4 = v3;
  sub_1BCBB7FDC();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC361000000000000;
  *(a1 + 80) = xmmword_1BCE4B020;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3AC49BA63F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3C680;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = result;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x401CCCCD3E99999ALL;
  *(a1 + 672) = 0x409800003F800000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3E4CCCCD3E3851ECLL;
  *(a1 + 720) = 0x41A0000041600000;
  *(a1 + 728) = 1102714503;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE48B20;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79320;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79340;
  *(a1 + 800) = 9;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3EB333343E800000;
  *(a1 + 848) = vdup_n_s32(0x414C0000u);
  *(a1 + 856) = 1096286208;
  *(a1 + 864) = 1;
  *(a1 + 872) = 3;
  *(a1 + 880) = xmmword_1BCE5BF10;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 10;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3ECCCCCD3E99999ALL;
  *(a1 + 976) = 0x40F8000040D80000;
  *(a1 + 984) = 1078984704;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 3;
  *(a1 + 1008) = xmmword_1BCE5BF20;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 15;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x404F5C293FC00000;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x2073756C756D7543;
  *(a1 + 1160) = 0xEB0000000053202DLL;
  *(a1 + 1168) = 0x5F73756C756D7543;
  *(a1 + 1176) = 0xEF53656C676E6953;
  *(a1 + 1184) = 5;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE3E540;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(v2 + 198) = xmmword_1BCE3E560;
  *(a1 + 1650) = 1;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C7B0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3C7D0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3F500;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x416681063F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE5BF30;
  *(a1 + 2240) = xmmword_1BCE3C800;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
  return result;
}

uint64_t PrecipitationComplicationHourlyViewModel.id.getter()
{
  OUTLINED_FUNCTION_19_1();
  sub_1BCE19090();
  OUTLINED_FUNCTION_4();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t PrecipitationComplicationHourlyViewModel.id.setter(uint64_t a1)
{
  sub_1BCE19090();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t PrecipitationComplicationHourlyViewModel.precipitation.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = type metadata accessor for PrecipitationComplicationHourlyViewModel();
  return sub_1BC952B1C(v1 + *(v2 + 20), v0, &qword_1EBD09B08);
}

uint64_t type metadata accessor for PrecipitationComplicationHourlyViewModel()
{
  result = qword_1EDA17230;
  if (!qword_1EDA17230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrecipitationComplicationHourlyViewModel.condition.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = type metadata accessor for PrecipitationComplicationHourlyViewModel();
  return sub_1BC952B1C(v1 + *(v2 + 28), v0, &qword_1EBD08688);
}

uint64_t PrecipitationComplicationHourlyViewModel.time.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = *(type metadata accessor for PrecipitationComplicationHourlyViewModel() + 40);
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t PrecipitationComplicationHourlyViewModel.timeZone.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = *(type metadata accessor for PrecipitationComplicationHourlyViewModel() + 44);
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t PrecipitationComplicationHourlyViewModel.init(precipitation:chance:condition:isDaytime:now:time:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_1BCE19080();
  v18 = type metadata accessor for PrecipitationComplicationHourlyViewModel();
  sub_1BC9643D8(a1, a9 + v18[5], &qword_1EBD09B08);
  v19 = a9 + v18[6];
  *v19 = a2;
  *(v19 + 8) = a3 & 1;
  sub_1BC9643D8(a4, a9 + v18[7], &qword_1EBD08688);
  *(a9 + v18[8]) = a5;
  *(a9 + v18[9]) = a6;
  v20 = v18[10];
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  (*(v21 + 32))(a9 + v20, a7);
  v22 = v18[11];
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  v24 = *(v23 + 32);

  return v24(a9 + v22, a8);
}

uint64_t static PrecipitationComplicationHourlyViewModel.make(now:time:timeZone:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PrecipitationComplicationHourlyViewModel();
  v9 = v8[5];
  v10 = sub_1BCE19BA0();
  __swift_storeEnumTagSinglePayload(a4 + v9, 1, 1, v10);
  v11 = v8[7];
  v12 = sub_1BCE199D0();
  __swift_storeEnumTagSinglePayload(a4 + v11, 1, 1, v12);
  v13 = v8[10];
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  (*(v14 + 16))(a4 + v13, a2);
  v15 = v8[11];
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  (*(v16 + 16))(a4 + v15, a3);
  result = sub_1BCE19080();
  v18 = a4 + v8[6];
  *v18 = 0;
  *(v18 + 8) = 1;
  *(a4 + v8[8]) = 1;
  *(a4 + v8[9]) = a1;
  return result;
}

uint64_t static PrecipitationComplicationHourlyViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BCE199D0();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v68 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08688);
  OUTLINED_FUNCTION_14(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v64 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B948);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v64 - v14;
  v15 = sub_1BCE19BA0();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B08);
  OUTLINED_FUNCTION_14(v22);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B950);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v64 - v28;
  if ((sub_1BCE19070() & 1) == 0)
  {
    goto LABEL_12;
  }

  v65 = v6;
  v66 = v4;
  v64 = type metadata accessor for PrecipitationComplicationHourlyViewModel();
  v30 = v64[5];
  v31 = *(v26 + 48);
  v67 = a1;
  sub_1BC952B1C(a1 + v30, v29, &qword_1EBD09B08);
  v32 = a2 + v30;
  v33 = a2;
  sub_1BC952B1C(v32, &v29[v31], &qword_1EBD09B08);
  OUTLINED_FUNCTION_8_0(v29);
  if (v34)
  {
    OUTLINED_FUNCTION_8_0(&v29[v31]);
    if (v34)
    {
      sub_1BC94C05C(v29, &qword_1EBD09B08);
      goto LABEL_15;
    }

LABEL_10:
    v35 = &qword_1EBD0B950;
    v36 = v29;
LABEL_11:
    sub_1BC94C05C(v36, v35);
    goto LABEL_12;
  }

  sub_1BC952B1C(v29, v25, &qword_1EBD09B08);
  OUTLINED_FUNCTION_8_0(&v29[v31]);
  if (v34)
  {
    (*(v17 + 8))(v25, v15);
    goto LABEL_10;
  }

  (*(v17 + 32))(v21, &v29[v31], v15);
  OUTLINED_FUNCTION_2_61();
  sub_1BCC6A3EC(v39, v40);
  v41 = sub_1BCE1D210();
  v42 = *(v17 + 8);
  v42(v21, v15);
  v42(v25, v15);
  sub_1BC94C05C(v29, &qword_1EBD09B08);
  if ((v41 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v43 = v64;
  v44 = v64[6];
  v45 = v67;
  v46 = (v67 + v44);
  v47 = *(v67 + v44 + 8);
  v48 = (a2 + v44);
  v49 = *(a2 + v44 + 8);
  if (v47)
  {
    v51 = v65;
    v50 = v66;
    if (!v49)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    v51 = v65;
    v50 = v66;
    if (v49)
    {
      goto LABEL_12;
    }
  }

  v52 = v64[7];
  v53 = v71;
  v54 = *(v70 + 48);
  sub_1BC952B1C(v67 + v52, v71, &qword_1EBD08688);
  v55 = v53;
  sub_1BC952B1C(v33 + v52, v53 + v54, &qword_1EBD08688);
  OUTLINED_FUNCTION_21_1(v53);
  if (!v34)
  {
    v56 = v53;
    v57 = v69;
    sub_1BC952B1C(v56, v69, &qword_1EBD08688);
    OUTLINED_FUNCTION_21_1(v55 + v54);
    if (!v58)
    {
      v59 = v68;
      (*(v51 + 32))(v68, v55 + v54, v50);
      OUTLINED_FUNCTION_3_56();
      sub_1BCC6A3EC(v60, v61);
      v62 = sub_1BCE1D210();
      v63 = *(v51 + 8);
      v63(v59, v50);
      v63(v57, v50);
      sub_1BC94C05C(v55, &qword_1EBD08688);
      if ((v62 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }

    (*(v51 + 8))(v57, v50);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_21_1(v53 + v54);
  if (!v34)
  {
LABEL_29:
    v35 = &qword_1EBD0B948;
    v36 = v55;
    goto LABEL_11;
  }

  sub_1BC94C05C(v53, &qword_1EBD08688);
LABEL_31:
  if (*(v45 + v43[8]) == *(v33 + v43[8]) && *(v45 + v43[9]) == *(v33 + v43[9]) && (sub_1BCE19010() & 1) != 0)
  {
    v37 = MEMORY[0x1BFB2BB80](v45 + v43[11], v33 + v43[11]);
    return v37 & 1;
  }

LABEL_12:
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_1BCC6932C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65636E616863 && a2 == 0xE600000000000000;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
        if (v8 || (sub_1BCE1E090() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D69747961447369 && a2 == 0xE900000000000065;
          if (v9 || (sub_1BCE1E090() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 7827310 && a2 == 0xE300000000000000;
            if (v10 || (sub_1BCE1E090() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1701669236 && a2 == 0xE400000000000000;
              if (v11 || (sub_1BCE1E090() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1BCE1E090();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BCC695B4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7469706963657270;
      break;
    case 2:
      result = 0x65636E616863;
      break;
    case 3:
      result = 0x6F697469646E6F63;
      break;
    case 4:
      result = 0x6D69747961447369;
      break;
    case 5:
      result = 7827310;
      break;
    case 6:
      result = 1701669236;
      break;
    case 7:
      result = 0x656E6F5A656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCC69698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCC6932C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCC696C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BCC695AC();
  *a1 = result;
  return result;
}

uint64_t sub_1BCC696E8(uint64_t a1)
{
  v2 = sub_1BCC69AB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCC69724(uint64_t a1)
{
  v2 = sub_1BCC69AB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PrecipitationComplicationHourlyViewModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B960);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCC69AB0();
  sub_1BCE1E170();
  v20[15] = 0;
  sub_1BCE19090();
  OUTLINED_FUNCTION_6_43();
  sub_1BCC6A3EC(v9, v10);
  OUTLINED_FUNCTION_4_3();
  sub_1BCE1E020();
  if (!v1)
  {
    type metadata accessor for PrecipitationComplicationHourlyViewModel();
    v20[14] = 1;
    sub_1BCE19BA0();
    OUTLINED_FUNCTION_2_61();
    sub_1BCC6A3EC(v11, v12);
    OUTLINED_FUNCTION_4_3();
    sub_1BCE1DFC0();
    v20[13] = 2;
    sub_1BCE1DFB0();
    v20[12] = 3;
    sub_1BCE199D0();
    OUTLINED_FUNCTION_3_56();
    sub_1BCC6A3EC(v13, v14);
    OUTLINED_FUNCTION_4_3();
    sub_1BCE1DFC0();
    v20[11] = 4;
    sub_1BCE1DFE0();
    v20[10] = 5;
    sub_1BCE1DFE0();
    v20[9] = 6;
    sub_1BCE19060();
    OUTLINED_FUNCTION_8_41();
    sub_1BCC6A3EC(v15, v16);
    OUTLINED_FUNCTION_4_3();
    sub_1BCE1E020();
    v20[8] = 7;
    sub_1BCE19470();
    OUTLINED_FUNCTION_7_46();
    sub_1BCC6A3EC(v17, v18);
    OUTLINED_FUNCTION_4_3();
    sub_1BCE1E020();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1BCC69AB0()
{
  result = qword_1EBD0B968;
  if (!qword_1EBD0B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B968);
  }

  return result;
}

uint64_t PrecipitationComplicationHourlyViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v60 = sub_1BCE19470();
  OUTLINED_FUNCTION_2();
  v58 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v61 = v6 - v5;
  v67 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v64 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v62 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08688);
  OUTLINED_FUNCTION_14(v11);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B08);
  OUTLINED_FUNCTION_14(v15);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  v19 = sub_1BCE19090();
  OUTLINED_FUNCTION_2();
  v66 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B970);
  OUTLINED_FUNCTION_2();
  v63 = v25;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v58 - v27;
  v71 = type metadata accessor for PrecipitationComplicationHourlyViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_0();
  v32 = v31 - v30;
  v33 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1BCC69AB0();
  v68 = v28;
  v34 = v69;
  sub_1BCE1E160();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v69 = v14;
  v79 = 0;
  OUTLINED_FUNCTION_6_43();
  sub_1BCC6A3EC(v35, v36);
  OUTLINED_FUNCTION_12_35();
  sub_1BCE1DF70();
  v37 = v32;
  (*(v66 + 32))(v32, v24, v19);
  sub_1BCE19BA0();
  v78 = 1;
  OUTLINED_FUNCTION_2_61();
  sub_1BCC6A3EC(v38, v39);
  OUTLINED_FUNCTION_12_35();
  sub_1BCE1DF10();
  v40 = v71;
  sub_1BC9643D8(v18, v32 + *(v71 + 20), &qword_1EBD09B08);
  v77 = 2;
  OUTLINED_FUNCTION_12_35();
  v41 = sub_1BCE1DF00();
  v42 = v32 + v40[6];
  *v42 = v41;
  *(v42 + 8) = v43 & 1;
  sub_1BCE199D0();
  v76 = 3;
  OUTLINED_FUNCTION_3_56();
  sub_1BCC6A3EC(v44, v45);
  v46 = v69;
  OUTLINED_FUNCTION_12_35();
  sub_1BCE1DF10();
  sub_1BC9643D8(v46, v37 + v40[7], &qword_1EBD08688);
  v75 = 4;
  OUTLINED_FUNCTION_12_35();
  *(v37 + v40[8]) = sub_1BCE1DF30() & 1;
  v74 = 5;
  OUTLINED_FUNCTION_12_35();
  *(v37 + v40[9]) = sub_1BCE1DF30() & 1;
  v73 = 6;
  OUTLINED_FUNCTION_8_41();
  sub_1BCC6A3EC(v47, v48);
  v49 = v62;
  v50 = v67;
  sub_1BCE1DF70();
  (*(v64 + 32))(v37 + v40[10], v49, v50);
  v72 = 7;
  OUTLINED_FUNCTION_7_46();
  sub_1BCC6A3EC(v51, v52);
  v53 = v60;
  v54 = v61;
  OUTLINED_FUNCTION_12_35();
  sub_1BCE1DF70();
  v55 = OUTLINED_FUNCTION_13_31();
  v56(v55);
  (*(v58 + 32))(v37 + v40[11], v54, v53);
  sub_1BCB50790(v37, v59);
  __swift_destroy_boxed_opaque_existential_1(v70);
  return sub_1BCB507F4(v37);
}

uint64_t sub_1BCC6A2D0(void *a1)
{
  a1[1] = sub_1BCC6A3EC(&qword_1EBD0B978, type metadata accessor for PrecipitationComplicationHourlyViewModel);
  a1[2] = sub_1BCC6A3EC(&qword_1EBD0B980, type metadata accessor for PrecipitationComplicationHourlyViewModel);
  a1[3] = sub_1BCC6A3EC(&qword_1EBD0B988, type metadata accessor for PrecipitationComplicationHourlyViewModel);
  result = sub_1BCC6A3EC(&qword_1EBD0AA50, type metadata accessor for PrecipitationComplicationHourlyViewModel);
  a1[4] = result;
  return result;
}

uint64_t sub_1BCC6A3EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BCC6A494()
{
  sub_1BCE19090();
  if (v0 <= 0x3F)
  {
    sub_1BCC6A5C0(319, &qword_1EDA1BEB8, MEMORY[0x1E6984DE0]);
    if (v1 <= 0x3F)
    {
      sub_1BC99AD8C();
      if (v2 <= 0x3F)
      {
        sub_1BCC6A5C0(319, &qword_1EDA1EB68, MEMORY[0x1E6984D30]);
        if (v3 <= 0x3F)
        {
          sub_1BCE19060();
          if (v4 <= 0x3F)
          {
            sub_1BCE19470();
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

void sub_1BCC6A5C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BCE1DB10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PrecipitationComplicationHourlyViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PrecipitationComplicationHourlyViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BCC6A77C()
{
  result = qword_1EBD0B990;
  if (!qword_1EBD0B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B990);
  }

  return result;
}

unint64_t sub_1BCC6A7D4()
{
  result = qword_1EBD0B998;
  if (!qword_1EBD0B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B998);
  }

  return result;
}

unint64_t sub_1BCC6A82C()
{
  result = qword_1EBD0B9A0;
  if (!qword_1EBD0B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B9A0);
  }

  return result;
}

uint64_t sub_1BCC6A880()
{
  v0 = type metadata accessor for TemperatureComplicationViewModel();
  __swift_allocate_value_buffer(v0, qword_1EBD0B9A8);
  v1 = __swift_project_value_buffer(v0, qword_1EBD0B9A8);
  return sub_1BCC6A8CC(v1);
}

uint64_t sub_1BCC6A8CC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = objc_opt_self();
  v13 = [v12 fahrenheit];
  sub_1BCA301DC();
  sub_1BCE185D0();
  v14 = [v12 fahrenheit];
  sub_1BCE185D0();
  v15 = [v12 fahrenheit];
  sub_1BCE185D0();
  v16 = type metadata accessor for TemperatureComplicationViewModel();
  v17 = *(v3 + 16);
  v17(a1 + v16[5], v11, v2);
  v17(a1 + v16[6], v8, v2);
  v17(a1 + v16[7], v5, v2);
  sub_1BCE19080();
  v18 = *(v3 + 8);
  v18(v5, v2);
  v18(v8, v2);
  return (v18)(v11, v2);
}

uint64_t static TemperatureComplicationViewModel.demo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD07268 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TemperatureComplicationViewModel();
  v3 = __swift_project_value_buffer(v2, qword_1EBD0B9A8);

  return sub_1BCC6AB98(v3, a1);
}

uint64_t sub_1BCC6AB98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemperatureComplicationViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BCC6ABFC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = a9 + 1436;
  __asm { FMOV            V0.2D, #0.5 }

  sub_1BCC6B414(_Q0, xmmword_1BCE5C1F0, _Q0, xmmword_1BCE5C200, vdupq_n_s64(0x3FE3333340000000uLL), xmmword_1BCE5C210, 18.0, 6.0, a1, a2, a3, a4, a5, a6, a7, a8, 0xC031FFFFFFFFFFFFLL, 0xC04E000000000000);
  v17 = v16;
  __asm { FMOV            V0.2D, #1.0 }

  sub_1BCC6B414(_Q0, xmmword_1BCE3CBC0, xmmword_1BCE3CBC0, xmmword_1BCE3E350, _Q0, xmmword_1BCE3CBC0, 18.0, 6.0, v16, v19, v20, v21, v22, v23, v24, v25, 0xC032000000000004, 0xC04E000000000002);
  *a9 = 0x4006666666666666;
  *(a9 + 8) = 5;
  *(a9 + 16) = 0x3FF0000000000000;
  *(a9 + 24) = 48;
  *(a9 + 32) = xmmword_1BCE3BED0;
  *(a9 + 48) = xmmword_1BCE3BED0;
  *(a9 + 64) = 0x42C8000042480000;
  *(a9 + 72) = 0xC422800000000000;
  *(a9 + 80) = xmmword_1BCE3E630;
  *(a9 + 96) = xmmword_1BCE3BEF0;
  *(a9 + 112) = 0x3E8000003DF5C28FLL;
  *(a9 + 128) = xmmword_1BCE3C7C0;
  *(a9 + 144) = xmmword_1BCE3D840;
  *(a9 + 160) = xmmword_1BCE3BF00;
  *(a9 + 176) = 1153138688;
  *(a9 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a9 + 192) = xmmword_1BCE3C7C0;
  *(a9 + 208) = xmmword_1BCE3C700;
  *(a9 + 224) = xmmword_1BCE5C220;
  *(a9 + 240) = 0x4204000041727059;
  *(a9 + 248) = 1096810496;
  *(a9 + 256) = 0x3F19999A3ECCCCCDLL;
  *(a9 + 264) = 0x40A0000041100000;
  *(a9 + 272) = 1093310349;
  __asm { FMOV            V0.4S, #1.0 }

  *(a9 + 288) = xmmword_1BCE3C7C0;
  *(a9 + 304) = _Q0;
  *(a9 + 320) = 0x41C8000041B00000;
  *(a9 + 328) = 0x3F19999A3E99999ALL;
  *(a9 + 336) = 0x4000000041100000;
  *(a9 + 352) = xmmword_1BCE3C7C0;
  *(a9 + 368) = xmmword_1BCE3C700;
  *(a9 + 384) = 0;
  *(a9 + 388) = 0x3CA3D70A3F800000;
  *(a9 + 400) = xmmword_1BCE3BF20;
  *(a9 + 416) = 0x3F0000003F000000;
  *(a9 + 424) = 10;
  *(a9 + 432) = xmmword_1BCE3BF30;
  *(a9 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a9 + 464) = _Q0;
  *(a9 + 480) = xmmword_1BCE3D870;
  *(a9 + 496) = 0x43FA000040400000;
  *(a9 + 504) = 1116471296;
  *(a9 + 512) = 0x3E8000003DF5C28FLL;
  *(a9 + 528) = _Q0;
  *(a9 + 544) = _Q0;
  *(a9 + 560) = 0x4248000044BB8000;
  *(a9 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a9 + 576) = xmmword_1BCE3C700;
  *(a9 + 592) = xmmword_1BCE3D880;
  *(a9 + 608) = 0x40E0000040C00000;
  *(a9 + 624) = xmmword_1BCE3C700;
  *(a9 + 640) = xmmword_1BCE3D880;
  *(a9 + 656) = 0x4220000041200000;
  *(a9 + 664) = 0x3FC000003E99999ALL;
  *(a9 + 672) = 0x40C0000040400000;
  *(a9 + 688) = _Q0;
  *(a9 + 704) = 1065353216;
  *(a9 + 712) = 0x3F99999A3F19999ALL;
  *(a9 + 720) = 0x4200000041D00000;
  *(a9 + 728) = 1101976344;
  *(a9 + 736) = 1;
  *(a9 + 744) = 9;
  *(a9 + 752) = xmmword_1BCE3FB40;
  *(a9 + 768) = 0x617274736F746C41;
  *(a9 + 776) = 0xEF4C202D20737574;
  *(a9 + 784) = 0xD000000000000013;
  *(a9 + 792) = 0x80000001BCE798E0;
  *(a9 + 800) = 9;
  *(a9 + 816) = _Q0;
  *(a9 + 832) = 1065353216;
  *(a9 + 840) = 0x3F4CCCCD3ECCCCCDLL;
  *(a9 + 848) = 0x4190E66641594DD2;
  *(a9 + 856) = 1094340698;
  *(a9 + 864) = 1;
  *(a9 + 872) = 4;
  *(a9 + 880) = xmmword_1BCE3F4C0;
  *(a9 + 896) = 0xD000000000000010;
  *(a9 + 904) = 0x80000001BCE79860;
  *(a9 + 912) = 0xD000000000000014;
  *(a9 + 920) = 0x80000001BCE79880;
  *(a9 + 928) = 6;
  *(a9 + 944) = _Q0;
  *(a9 + 960) = 1065353216;
  *(a9 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a9 + 976) = 0x417B58104100CCCDLL;
  *(a9 + 984) = 1075767314;
  *(a9 + 992) = 1;
  *(a9 + 1000) = 5;
  *(a9 + 1008) = xmmword_1BCE3C6F0;
  *(a9 + 1024) = 0x617274736F746C41;
  *(a9 + 1032) = 0xEF4C202D20737574;
  *(a9 + 1040) = 0xD000000000000013;
  *(a9 + 1048) = 0x80000001BCE798E0;
  *(a9 + 1056) = 6;
  *(a9 + 1072) = _Q0;
  *(a9 + 1088) = 1065353216;
  *(a9 + 1096) = 0x3F8000003F000000;
  *(a9 + 1104) = 0x401333333FDCCCCDLL;
  *(a9 + 1112) = 1083965739;
  *(a9 + 1120) = 0;
  *(a9 + 1128) = 4;
  *(a9 + 1136) = xmmword_1BCE3D8A0;
  *(a9 + 1152) = 0x7970736957;
  *(a9 + 1160) = 0xE500000000000000;
  strcpy((a9 + 1168), "Wispy_Single");
  *(a9 + 1181) = 0;
  *(a9 + 1182) = -5120;
  *(a9 + 1184) = 6;
  *(a9 + 1200) = _Q0;
  *(a9 + 1216) = xmmword_1BCE5C230;
  *(a9 + 1232) = 0;
  *(a9 + 1236) = 1;
  *(a9 + 1240) = 0x617274736F746C41;
  *(a9 + 1248) = 0xEB00000000737574;
  *(a9 + 1256) = 0xD000000000000013;
  *(a9 + 1264) = 0x80000001BCE79300;
  *(a9 + 1272) = 8;
  *(a9 + 1280) = 0;
  *(a9 + 1288) = 0x3F0000003E99999ALL;
  __asm { FMOV            V3.2S, #15.0 }

  *(a9 + 1296) = _D3;
  *(a9 + 1304) = 1099951505;
  *(a9 + 1312) = xmmword_1BCE3C7C0;
  *(a9 + 1328) = xmmword_1BCE3FB70;
  *(a9 + 1344) = 0x4170000041200000;
  *(a9 + 1352) = 1090519040;
  *(a9 + 1360) = 0;
  *(a9 + 1368) = 5;
  *(a9 + 1408) = 0u;
  *(a9 + 1392) = 0u;
  *(a9 + 1376) = 0u;
  *(a9 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a9 + 1432) = 1;
  *v10 = xmmword_1BCE3BFC0;
  *(a9 + 1456) = 0x42DC000042B40000;
  *(a9 + 1472) = _Q0;
  *(a9 + 1488) = _Q0;
  *(a9 + 1504) = 1097859072;
  *(a9 + 1512) = 0x736168506E6F6F6DLL;
  *(a9 + 1520) = 0xEA00000000003065;
  *(a9 + 1528) = 1112014848;
  *(a9 + 1536) = _Q0;
  *(a9 + 1552) = xmmword_1BCE3F4F0;
  *(a9 + 1568) = 0x4248000042200000;
  *(a9 + 1584) = 0u;
  *(a9 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a9 + 1616) = -_D2;
  *(a9 + 1624) = 0x40000000;
  *(a9 + 1628) = 0;
  *(a9 + 1630) = 1;
  *(a9 + 1637) = 0;
  *(a9 + 1631) = 0;
  *(v10 + 209) = 16843009;
  *(v10 + 213) = 50331648;
  *(a9 + 1656) = 0;
  *(a9 + 1657) = v30;
  *(a9 + 1659) = v31;
  *(a9 + 1660) = 1066611507;
  *(a9 + 1664) = 0x40C0000040A00000;
  *(a9 + 1672) = 3;
  *(a9 + 1680) = xmmword_1BCE3C000;
  *(a9 + 1696) = xmmword_1BCE3C010;
  *(a9 + 1712) = xmmword_1BCE3C020;
  *(a9 + 1728) = 0x3F0000003EB33333;
  *(a9 + 1736) = 0x3E800000453B8000;
  *(a9 + 1744) = 0u;
  *(a9 + 1760) = 12;
  *(a9 + 1776) = xmmword_1BCE3D8B0;
  *(a9 + 1792) = xmmword_1BCE3D8C0;
  *(a9 + 1808) = xmmword_1BCE3C7A0;
  *(a9 + 1824) = 1;
  *(a9 + 1828) = xmmword_1BCE3C060;
  *(a9 + 1844) = 1040187392;
  *(a9 + 1848) = 0x4100000041700000;
  *(a9 + 1856) = 3;
  *(a9 + 1864) = 0x40000000;
  *(a9 + 1872) = 0x408000003F400000;
  *(a9 + 1880) = 1109393408;
  *(a9 + 1888) = _Q0;
  *(a9 + 1904) = 0x3DCCCCCD00000000;
  *(a9 + 1912) = 1101004800;
  *(a9 + 1920) = 0;
  *(a9 + 1928) = 1107820544;
  *(a9 + 1936) = _Q0;
  *(a9 + 1952) = 1077936128;
  *(a9 + 1960) = 0x420C000041C80000;
  *(a9 + 1968) = xmmword_1BCE48840;
  *(a9 + 1984) = 0x3F800000412D53BALL;
  *(a9 + 1992) = 1061158912;
  *(a9 + 2000) = 0x407333333FB33333;
  *(a9 + 2008) = 0x408000004019999ALL;
  *(a9 + 2016) = xmmword_1BCE3C7E0;
  *(a9 + 2096) = 0u;
  *(a9 + 2080) = 0u;
  *(a9 + 2064) = 0u;
  *(a9 + 2048) = 0u;
  *(a9 + 2032) = 0u;
  *(a9 + 2112) = 1056964608;
  *(a9 + 2120) = 0x3F51EB853EF5C28FLL;
  *(a9 + 2128) = 0x406666663FC00000;
  *(a9 + 2136) = 0x4040000040000000;
  *(a9 + 2144) = -1046478848;
  *(a9 + 2160) = _Q0;
  *(a9 + 2176) = _Q0;
  *(a9 + 2192) = 1057272701;
  *(a9 + 2200) = 10;
  *(a9 + 2208) = 0x40A000003FC00000;
  *(a9 + 2224) = xmmword_1BCE3C090;
  *(a9 + 2240) = xmmword_1BCE3C0A0;
  *(a9 + 2256) = _Q0;
  *(a9 + 2304) = 0;
  *(a9 + 2288) = 0u;
  *(a9 + 2272) = 0u;
  *(a9 + 2312) = v17;
  *(a9 + 2320) = v29;
}

__n128 sub_1BCC6B414(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BCE3EBD0;
  *(v20 + 6112) = a7;
  *(v20 + 4912) = xmmword_1BCE3FD40;
  *(v20 + 6128) = xmmword_1BCE3FD40;
  *(v20 + 4928) = 1147207680;
  *(v20 + 6144) = 1147207680;
  *(v20 + 4976) = xmmword_1BCE3FD50;
  *(v20 + 6192) = xmmword_1BCE3FD50;
  *(v20 + 4992) = xmmword_1BCE3FD60;
  *(v20 + 6208) = xmmword_1BCE3FD60;
  *(v20 + 5008) = xmmword_1BCE3EEF0;
  *(v20 + 6224) = xmmword_1BCE3EEF0;
  *(v20 + 5024) = xmmword_1BCE3EF00;
  *(v20 + 6240) = xmmword_1BCE3EF00;
  *(v20 + 5184) = xmmword_1BCE3E2C0;
  *(v20 + 6400) = xmmword_1BCE3E2C0;
  *(v20 + 5200) = xmmword_1BCE3FD70;
  *(v20 + 6416) = xmmword_1BCE3FD70;
  *(v20 + 5264) = xmmword_1BCE3FD80;
  *(v20 + 6480) = xmmword_1BCE3FD80;
  *(v20 + 5568) = xmmword_1BCE3EE20;
  *(v20 + 6784) = xmmword_1BCE3EE20;
  *(v20 + 5600) = xmmword_1BCE3CBB0;
  *(v20 + 6816) = xmmword_1BCE3CBB0;
  *(v20 + 7328) = a8;
  *(v20 + 3696) = xmmword_1BCE3EE30;
  *(v20 + 7344) = xmmword_1BCE3EE30;
  *(v20 + 3712) = 1143930880;
  *(v20 + 7360) = 1143930880;
  *(v20 + 3760) = xmmword_1BCE3FD00;
  *(v20 + 7408) = xmmword_1BCE3FD00;
  *(v20 + 3776) = xmmword_1BCE3F930;
  *(v20 + 7424) = xmmword_1BCE3F930;
  *(v20 + 3792) = xmmword_1BCE3E180;
  *(v20 + 7440) = xmmword_1BCE3E180;
  *(v20 + 3808) = xmmword_1BCE3CB90;
  *(v20 + 7456) = xmmword_1BCE3CB90;
  *(v20 + 3984) = xmmword_1BCE3FD10;
  *(v20 + 7632) = xmmword_1BCE3FD10;
  *(v20 + 4000) = xmmword_1BCE3FD20;
  *(v20 + 5216) = xmmword_1BCE3FD20;
  *(v20 + 6432) = xmmword_1BCE3FD20;
  *(v20 + 7648) = xmmword_1BCE3FD20;
  v21 = vdupq_n_s32(0x3F666666u);
  *(v20 + 4016) = v21;
  *(v20 + 5232) = v21;
  *(v20 + 6448) = v21;
  *(v20 + 7664) = v21;
  *(v20 + 4032) = 1063675494;
  *(v20 + 5248) = 1063675494;
  *(v20 + 6464) = 1063675494;
  *(v20 + 7680) = 1063675494;
  *(v20 + 4048) = xmmword_1BCE3CDC0;
  *(v20 + 7696) = xmmword_1BCE3CDC0;
  *(v20 + 4288) = xmmword_1BCE3CEE0;
  *(v20 + 7936) = xmmword_1BCE3CEE0;
  *(v20 + 4384) = xmmword_1BCE3CCC0;
  *(v20 + 8032) = xmmword_1BCE3CCC0;
  *(v20 + 8544) = a17;
  *(v20 + 2480) = xmmword_1BCE3F7B0;
  *(v20 + 8560) = xmmword_1BCE3F7B0;
  *(v20 + 2496) = 1128792064;
  *(v20 + 8576) = 1128792064;
  *(v20 + 2544) = xmmword_1BCE3FCA0;
  *(v20 + 8624) = xmmword_1BCE3FCA0;
  *(v20 + 2560) = xmmword_1BCE3FCB0;
  *(v20 + 8640) = xmmword_1BCE3FCB0;
  *(v20 + 2576) = xmmword_1BCE3FCC0;
  *(v20 + 8656) = xmmword_1BCE3FCC0;
  *(v20 + 2592) = xmmword_1BCE3FCD0;
  *(v20 + 8672) = xmmword_1BCE3FCD0;
  v22 = vdupq_n_s64(0x3FE09C5FA0000000uLL);
  *(v20 + 2640) = v22;
  *(v20 + 8720) = v22;
  *(v20 + 2656) = xmmword_1BCE46320;
  *(v20 + 8736) = xmmword_1BCE46320;
  *(v20 + 2752) = xmmword_1BCE3E1D0;
  *(v20 + 8832) = xmmword_1BCE3E1D0;
  *(v20 + 2768) = xmmword_1BCE3FCE0;
  *(v20 + 8848) = xmmword_1BCE3FCE0;
  *(v20 + 2784) = xmmword_1BCE3FCF0;
  *(v20 + 8864) = xmmword_1BCE3FCF0;
  *(v20 + 48) = xmmword_1BCE3F510;
  *(v20 + 3472) = a5;
  *(v20 + 9552) = a5;
  *(v20 + 64) = 0x420C000043480000;
  *(v20 + 3488) = a6;
  *(v20 + 9568) = a6;
  *(v20 + 9760) = a18;
  *(v20 + 1360) = xmmword_1BCE3FC30;
  *(v20 + 9872) = xmmword_1BCE3FC30;
  *(v20 + 1376) = xmmword_1BCE3FC40;
  *(v20 + 9888) = xmmword_1BCE3FC40;
  *(v20 + 1456) = xmmword_1BCE3FC50;
  *(v20 + 9968) = xmmword_1BCE3FC50;
  *(v20 + 1488) = xmmword_1BCE3FC60;
  *(v20 + 10000) = xmmword_1BCE3FC60;
  *(v20 + 1504) = xmmword_1BCE3FC70;
  *(v20 + 10016) = xmmword_1BCE3FC70;
  *(v20 + 1520) = xmmword_1BCE3FC80;
  *(v20 + 10032) = xmmword_1BCE3FC80;
  *(v20 + 1552) = xmmword_1BCE3FC90;
  *(v20 + 10064) = xmmword_1BCE3FC90;
  *(v20 + 1888) = xmmword_1BCE3CBC0;
  *(v20 + 3104) = xmmword_1BCE3CBC0;
  *(v20 + 4704) = xmmword_1BCE3CBC0;
  *(v20 + 5920) = xmmword_1BCE3CBC0;
  *(v20 + 7136) = xmmword_1BCE3CBC0;
  *(v20 + 8352) = xmmword_1BCE3CBC0;
  *(v20 + 9184) = xmmword_1BCE3CBC0;
  *(v20 + 10400) = xmmword_1BCE3CBC0;
  *(v20 + 80) = xmmword_1BCE3E140;
  *(v20 + 96) = xmmword_1BCE3E150;
  *(v20 + 1952) = a4;
  *(v20 + 10464) = a4;
  *(v20 + 1264) = xmmword_1BCE3F510;
  *(v20 + 9776) = xmmword_1BCE3F510;
  *(v20 + 10992) = xmmword_1BCE3F510;
  *(v20 + 112) = xmmword_1BCE3FB80;
  *(v20 + 128) = xmmword_1BCE3FB90;
  *(v20 + 1280) = 0x420C000043480000;
  *(v20 + 9792) = 0x420C000043480000;
  *(v20 + 11008) = 0x420C000043480000;
  *(v20 + 1296) = xmmword_1BCE3E140;
  *(v20 + 2512) = xmmword_1BCE3E140;
  *(v20 + 3728) = xmmword_1BCE3E140;
  *(v20 + 4944) = xmmword_1BCE3E140;
  *(v20 + 6160) = xmmword_1BCE3E140;
  *(v20 + 7376) = xmmword_1BCE3E140;
  *(v20 + 8592) = xmmword_1BCE3E140;
  *(v20 + 9808) = xmmword_1BCE3E140;
  *(v20 + 11024) = xmmword_1BCE3E140;
  *(v20 + 144) = xmmword_1BCE3F6E0;
  *(v20 + 160) = xmmword_1BCE3ED00;
  *(v20 + 1312) = xmmword_1BCE3E150;
  *(v20 + 2528) = xmmword_1BCE3E150;
  *(v20 + 3744) = xmmword_1BCE3E150;
  *(v20 + 4960) = xmmword_1BCE3E150;
  *(v20 + 6176) = xmmword_1BCE3E150;
  *(v20 + 7392) = xmmword_1BCE3E150;
  *(v20 + 8608) = xmmword_1BCE3E150;
  *(v20 + 9824) = xmmword_1BCE3E150;
  *(v20 + 11040) = xmmword_1BCE3E150;
  __asm { FMOV            V0.2D, #1.0 }

  *(v20 + 1328) = xmmword_1BCE3FB80;
  *(v20 + 9840) = xmmword_1BCE3FB80;
  *(v20 + 11056) = xmmword_1BCE3FB80;
  v28 = vdupq_n_s64(0x3FDF8963C0000000uLL);
  *(v20 + 1344) = xmmword_1BCE3FB90;
  *(v20 + 9856) = xmmword_1BCE3FB90;
  *(v20 + 11072) = xmmword_1BCE3FB90;
  *(v20 + 208) = v28;
  *(v20 + 224) = xmmword_1BCE46310;
  *(v20 + 11088) = xmmword_1BCE3F6E0;
  *(v20 + 11104) = xmmword_1BCE3ED00;
  *(v20 + 240) = xmmword_1BCE3FBA0;
  *(v20 + 256) = xmmword_1BCE3FBB0;
  *(v20 + 1424) = v28;
  *(v20 + 9936) = v28;
  *(v20 + 11152) = v28;
  *(v20 + 1440) = xmmword_1BCE46310;
  *(v20 + 9952) = xmmword_1BCE46310;
  *(v20 + 11168) = xmmword_1BCE46310;
  *(v20 + 272) = xmmword_1BCE3FBC0;
  *(v20 + 288) = xmmword_1BCE3FBD0;
  *(v20 + 11184) = xmmword_1BCE3FBA0;
  *(v20 + 11200) = xmmword_1BCE3FBB0;
  *(v20 + 304) = xmmword_1BCE3FBE0;
  *(v20 + 320) = xmmword_1BCE3E220;
  *(v20 + 11216) = xmmword_1BCE3FBC0;
  *(v20 + 11232) = xmmword_1BCE3FBD0;
  *(v20 + 336) = xmmword_1BCE3FBF0;
  *(v20 + 352) = xmmword_1BCE3FC00;
  *(v20 + 11248) = xmmword_1BCE3FBE0;
  v29 = vdupq_n_s32(0x3F4CCCCDu);
  *(v20 + 368) = v29;
  *(v20 + 1536) = xmmword_1BCE3E220;
  *(v20 + 10048) = xmmword_1BCE3E220;
  *(v20 + 11264) = xmmword_1BCE3E220;
  *(v20 + 384) = 0x3F8000003F4CCCCDLL;
  *(v20 + 11280) = xmmword_1BCE3FBF0;
  *(v20 + 432) = 0u;
  *(v20 + 448) = 0u;
  *(v20 + 1568) = xmmword_1BCE3FC00;
  *(v20 + 10080) = xmmword_1BCE3FC00;
  *(v20 + 11296) = xmmword_1BCE3FC00;
  *(v20 + 1584) = v29;
  *(v20 + 2800) = v29;
  *(v20 + 2816) = v29.i64[0];
  *(v20 + 8880) = v29;
  *(v20 + 8896) = v29.i64[0];
  *(v20 + 10096) = v29;
  *(v20 + 11312) = v29;
  *(v20 + 512) = xmmword_1BCE3A880;
  *(v20 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v20 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v20 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v20 + 544) = xmmword_1BCE3D430;
  *(v20 + 576) = xmmword_1BCE3A880;
  *(v20 + 1664) = 0u;
  *(v20 + 1648) = 0u;
  *(v20 + 2880) = 0u;
  *(v20 + 2864) = 0u;
  *(v20 + 4096) = 0u;
  *(v20 + 4080) = 0u;
  *(v20 + 5312) = 0u;
  *(v20 + 5296) = 0u;
  *(v20 + 6528) = 0u;
  *(v20 + 6512) = 0u;
  *(v20 + 7744) = 0u;
  *(v20 + 7728) = 0u;
  *(v20 + 8960) = 0u;
  *(v20 + 8944) = 0u;
  *(v20 + 10176) = 0u;
  *(v20 + 10160) = 0u;
  *(v20 + 11392) = 0u;
  *(v20 + 11376) = 0u;
  *(v20 + 640) = xmmword_1BCE3A880;
  *(v20 + 672) = a2;
  *(v20 + 704) = xmmword_1BCE3A880;
  *(v20 + 1760) = xmmword_1BCE3D430;
  *(v20 + 2976) = xmmword_1BCE3D430;
  *(v20 + 4192) = xmmword_1BCE3D430;
  *(v20 + 5408) = xmmword_1BCE3D430;
  *(v20 + 6624) = xmmword_1BCE3D430;
  *(v20 + 7840) = xmmword_1BCE3D430;
  *(v20 + 9056) = xmmword_1BCE3D430;
  *(v20 + 10272) = xmmword_1BCE3D430;
  *(v20 + 11488) = xmmword_1BCE3D430;
  *(v20 + 736) = xmmword_1BCE3E350;
  *(v20 + 11616) = a2;
  *(v20 + 800) = xmmword_1BCE3DD90;
  *(v20 + 832) = xmmword_1BCE3A880;
  *(v20 + 3168) = xmmword_1BCE3E350;
  *(v20 + 3968) = xmmword_1BCE3E350;
  *(v20 + 4672) = xmmword_1BCE3E350;
  *(v20 + 5888) = xmmword_1BCE3E350;
  *(v20 + 7104) = xmmword_1BCE3E350;
  *(v20 + 7616) = xmmword_1BCE3E350;
  *(v20 + 8320) = xmmword_1BCE3E350;
  *(v20 + 9248) = xmmword_1BCE3E350;
  *(v20 + 11680) = xmmword_1BCE3E350;
  *(v20 + 2016) = xmmword_1BCE3DD90;
  *(v20 + 3232) = xmmword_1BCE3DD90;
  *(v20 + 4448) = xmmword_1BCE3DD90;
  *(v20 + 5664) = xmmword_1BCE3DD90;
  *(v20 + 6880) = xmmword_1BCE3DD90;
  *(v20 + 8096) = xmmword_1BCE3DD90;
  *(v20 + 9312) = xmmword_1BCE3DD90;
  *(v20 + 10528) = xmmword_1BCE3DD90;
  *(v20 + 11744) = xmmword_1BCE3DD90;
  *(v20 + 8336) = result;
  *(v20 + 8368) = result;
  *(v20 + 1728) = xmmword_1BCE3A880;
  *(v20 + 1792) = xmmword_1BCE3A880;
  *(v20 + 8256) = xmmword_1BCE3C8C0;
  *(v20 + 8272) = result;
  *(v20 + 8288) = xmmword_1BCE3DAE0;
  *(v20 + 8304) = result;
  *(v20 + 8160) = xmmword_1BCE3FC20;
  *(v20 + 8176) = result;
  *(v20 + 0x2000) = result;
  *(v20 + 8208) = result;
  *(v20 + 8224) = result;
  *(v20 + 8240) = result;
  *(v20 + 1856) = xmmword_1BCE3A880;
  *(v20 + 8064) = result;
  *(v20 + 8080) = result;
  *(v20 + 8112) = result;
  *(v20 + 8128) = xmmword_1BCE3A880;
  *(v20 + 8144) = result;
  *(v20 + 1920) = xmmword_1BCE3A880;
  *(v20 + 7968) = result;
  *(v20 + 7984) = result;
  *(v20 + 8000) = xmmword_1BCE3A880;
  *(v20 + 8016) = result;
  *(v20 + 8048) = result;
  *(v20 + 2048) = xmmword_1BCE3A880;
  *(v20 + 7872) = xmmword_1BCE3A880;
  *(v20 + 7888) = result;
  *(v20 + 7904) = xmmword_1BCE3C8C0;
  *(v20 + 7920) = result;
  *(v20 + 7952) = result;
  *(v20 + 2944) = xmmword_1BCE3A880;
  *(v20 + 7776) = xmmword_1BCE3DAE0;
  *(v20 + 7792) = result;
  *(v20 + 7808) = xmmword_1BCE3A880;
  *(v20 + 7824) = result;
  *(v20 + 7856) = result;
  *(v20 + 3008) = xmmword_1BCE3A880;
  *(v20 + 3072) = xmmword_1BCE3A880;
  *(v20 + 3136) = xmmword_1BCE3A880;
  *(v20 + 3264) = xmmword_1BCE3A880;
  *(v20 + 7720) = 0;
  *(v20 + 7760) = result;
  *(v20 + 4160) = xmmword_1BCE3A880;
  *(v20 + 4224) = xmmword_1BCE3A880;
  *(v20 + 7688) = 0x3FEF0AE2E0000000;
  *(v20 + 7712) = 0x3FF0000000000000;
  *(v20 + 4352) = xmmword_1BCE3A880;
  *(v20 + 4480) = xmmword_1BCE3A880;
  *(v20 + 7552) = result;
  *(v20 + 7568) = result;
  *(v20 + 7584) = result;
  *(v20 + 7600) = result;
  *(v20 + 5376) = xmmword_1BCE3A880;
  *(v20 + 7472) = result;
  *(v20 + 7488) = result;
  *(v20 + 7504) = result;
  *(v20 + 7520) = xmmword_1BCE3DAE0;
  *(v20 + 7536) = result;
  *(v20 + 5440) = xmmword_1BCE3A880;
  *(v20 + 5696) = xmmword_1BCE3A880;
  *(v20 + 6592) = xmmword_1BCE3A880;
  *(v20 + 6640) = result;
  *(v20 + 6656) = xmmword_1BCE3A880;
  *(v20 + 6672) = result;
  *(v20 + 6688) = xmmword_1BCE3C8C0;
  *(v20 + 7337) = *v41;
  *(v20 + 6704) = result;
  *(v20 + 6720) = result;
  *(v20 + 7336) = 1;
  *(v20 + 7340) = *&v41[3];
  *(v20 + 7368) = 1058642330;
  *(v20 + 6736) = result;
  *(v20 + 6752) = result;
  *(v20 + 7264) = result;
  *(v20 + 7280) = result;
  *(v20 + 7296) = result;
  *(v20 + 7312) = 0x3FF0000000000000;
  *(v20 + 7184) = result;
  *(v20 + 7200) = xmmword_1BCE3DAE0;
  *(v20 + 7216) = result;
  *(v20 + 7232) = result;
  *(v20 + 7248) = 0x4170000042480000;
  *(v20 + 7256) = 0x3FF0000000000000;
  *(v20 + 6768) = result;
  *(v20 + 6800) = result;
  *(v20 + 7088) = result;
  *(v20 + 7120) = result;
  *(v20 + 7152) = result;
  *(v20 + 7168) = xmmword_1BCE3C8C0;
  *(v20 + 6992) = result;
  *(v20 + 7008) = result;
  *(v20 + 7024) = result;
  *(v20 + 7040) = xmmword_1BCE3C8C0;
  *(v20 + 7056) = result;
  *(v20 + 7072) = xmmword_1BCE3DAE0;
  *(v20 + 6896) = result;
  *(v20 + 6912) = xmmword_1BCE3A880;
  *(v20 + 6928) = result;
  *(v20 + 6944) = xmmword_1BCE3FC20;
  *(v20 + 6960) = result;
  *(v20 + 6976) = result;
  *(v20 + 6832) = result;
  *(v20 + 6848) = result;
  *(v20 + 6864) = result;
  *(v20 + 9024) = xmmword_1BCE3A880;
  *(v20 + 9088) = xmmword_1BCE3A880;
  *(v20 + 9152) = xmmword_1BCE3A880;
  *(v20 + 9216) = xmmword_1BCE3A880;
  *(v20 + 9344) = xmmword_1BCE3A880;
  *(v20 + 10240) = xmmword_1BCE3A880;
  *(v20 + 10304) = xmmword_1BCE3A880;
  *(v20 + 10368) = xmmword_1BCE3A880;
  *(v20 + 10432) = xmmword_1BCE3A880;
  *(v20 + 10560) = xmmword_1BCE3A880;
  *(v20 + 11456) = xmmword_1BCE3A880;
  *(v20 + 11520) = xmmword_1BCE3A880;
  *(v20 + 11584) = xmmword_1BCE3A880;
  *(v20 + 11648) = xmmword_1BCE3A880;
  *(v20 + 11776) = xmmword_1BCE3A880;
  *(v20 + 688) = xmmword_1BCE3ECA0;
  *(v20 + 6544) = result;
  *(v20 + 6560) = xmmword_1BCE3DAE0;
  *(v20 + 6576) = result;
  *(v20 + 6608) = result;
  *(v20 + 816) = xmmword_1BCE3ECA0;
  *(v20 + 1904) = xmmword_1BCE3ECA0;
  *(v20 + 2032) = xmmword_1BCE3ECA0;
  *(v20 + 6472) = 0x3FF0000000000000;
  *(v20 + 6496) = 0x3FF0000000000000;
  *(v20 + 6504) = 0;
  *(v20 + 2064) = xmmword_1BCE3ECA0;
  *(v20 + 3120) = xmmword_1BCE3ECA0;
  *(v20 + 3248) = xmmword_1BCE3ECA0;
  *(v20 + 3280) = xmmword_1BCE3ECA0;
  *(v20 + 6121) = *v40;
  *(v20 + 6336) = result;
  *(v20 + 6352) = result;
  *(v20 + 6368) = result;
  *(v20 + 6384) = result;
  *(v20 + 6120) = 1;
  *(v20 + 6272) = result;
  *(v20 + 6288) = result;
  *(v20 + 6304) = xmmword_1BCE3DAE0;
  *(v20 + 6320) = result;
  *(v20 + 6124) = *&v40[3];
  *(v20 + 6152) = 1061997773;
  *(v20 + 6256) = result;
  *(v20 + 9200) = xmmword_1BCE3ECA0;
  *(v20 + 9328) = xmmword_1BCE3ECA0;
  *(v20 + 9360) = xmmword_1BCE3ECA0;
  *(v20 + 10416) = xmmword_1BCE3ECA0;
  *(v20 + 10544) = xmmword_1BCE3ECA0;
  *(v20 + 10576) = xmmword_1BCE3ECA0;
  *(v20 + 11632) = xmmword_1BCE3ECA0;
  *(v20 + 11760) = xmmword_1BCE3ECA0;
  *(v20 + 11792) = xmmword_1BCE3ECA0;
  *(v20 + 848) = xmmword_1BCE3ECA0;
  *(v20 + 864) = xmmword_1BCE3FC20;
  *(v20 + 6040) = 0x3FF0000000000000;
  *(v20 + 6048) = result;
  *(v20 + 6064) = result;
  *(v20 + 6080) = result;
  *(v20 + 6096) = 0x3FF0000000000000;
  *(v20 + 5952) = xmmword_1BCE3C8C0;
  *(v20 + 5968) = result;
  *(v20 + 5984) = xmmword_1BCE3DAE0;
  *(v20 + 6000) = result;
  *(v20 + 6016) = result;
  *(v20 + 6032) = 0x4170000042480000;
  *(v20 + 5856) = xmmword_1BCE3DAE0;
  *(v20 + 5872) = result;
  *(v20 + 5904) = result;
  *(v20 + 5936) = result;
  *(v20 + 5760) = result;
  *(v20 + 5776) = result;
  *(v20 + 5792) = result;
  *(v20 + 5808) = result;
  *(v20 + 5824) = xmmword_1BCE3C8C0;
  *(v20 + 5840) = result;
  *(v20 + 2080) = xmmword_1BCE3FC20;
  *(v20 + 3296) = xmmword_1BCE3FC20;
  *(v20 + 5680) = result;
  *(v20 + 5712) = result;
  *(v20 + 5728) = xmmword_1BCE3FC20;
  *(v20 + 5744) = result;
  *(v20 + 4512) = xmmword_1BCE3FC20;
  *(v20 + 5504) = result;
  *(v20 + 5584) = result;
  *(v20 + 5616) = result;
  *(v20 + 5632) = result;
  *(v20 + 5648) = result;
  *(v20 + 5520) = result;
  *(v20 + 5536) = result;
  *(v20 + 5552) = result;
  *(v20 + 9376) = xmmword_1BCE3FC20;
  *(v20 + 10592) = xmmword_1BCE3FC20;
  *(v20 + 11808) = xmmword_1BCE3FC20;
  *(v20 + 1024) = xmmword_1BCE3E230;
  *(v20 + 5424) = result;
  *(v20 + 5456) = result;
  *(v20 + 5472) = xmmword_1BCE3C8C0;
  *(v20 + 5488) = result;
  *(v20 + 2240) = xmmword_1BCE3E230;
  *(v20 + 3456) = xmmword_1BCE3E230;
  *(v20 + 5328) = result;
  *(v20 + 5344) = xmmword_1BCE3DAE0;
  *(v20 + 5360) = result;
  *(v20 + 5392) = result;
  *(v20 + 9536) = xmmword_1BCE3E230;
  *(v20 + 10752) = xmmword_1BCE3E230;
  *(v20 + 11968) = xmmword_1BCE3E230;
  *(v20 + 5256) = 0x3FF0000000000000;
  *(v20 + 5280) = 0x3FF0000000000000;
  *(v20 + 5288) = 0;
  *(v20 + 656) = a1;
  *(v20 + 1040) = a1;
  *(v20 + 1936) = a1;
  *(v20 + 2256) = a1;
  *(v20 + 5152) = result;
  *(v20 + 5168) = result;
  *(v20 + 5056) = result;
  *(v20 + 5072) = result;
  *(v20 + 5088) = xmmword_1BCE3DAE0;
  *(v20 + 5104) = result;
  *(v20 + 5120) = result;
  *(v20 + 5136) = result;
  *(v20 + 10448) = a1;
  *(v20 + 10768) = a1;
  *(v20 + 11600) = a1;
  *(v20 + 11984) = a1;
  *(v20 + 1056) = a3;
  *(v20 + 5040) = result;
  *(v20 + 2272) = a3;
  *(v20 + 10784) = a3;
  *(v20 + 12000) = a3;
  *(v20 + 4824) = 0x3FF0000000000000;
  *(v20 + 4904) = 0;
  *(v20 + 4905) = *v39;
  *(v20 + 4908) = *&v39[3];
  *(v20 + 4936) = 1061997773;
  *(v20 + 4832) = result;
  *(v20 + 4848) = result;
  *(v20 + 4864) = result;
  *(v20 + 4880) = 0x3FF0000000000000;
  *(v20 + 4896) = 0x4032000000000001;
  *(v20 + 4736) = xmmword_1BCE3C8C0;
  *(v20 + 4752) = result;
  *(v20 + 4768) = xmmword_1BCE3DAE0;
  *(v20 + 4784) = result;
  *(v20 + 4800) = result;
  *(v20 + 4816) = 0x4170000042480000;
  *(v20 + 608) = xmmword_1BCE3C8C0;
  *(v20 + 960) = xmmword_1BCE3C8C0;
  *(v20 + 4640) = xmmword_1BCE3DAE0;
  *(v20 + 4656) = result;
  *(v20 + 4688) = result;
  *(v20 + 4720) = result;
  *(v20 + 4544) = result;
  *(v20 + 4560) = result;
  *(v20 + 4576) = result;
  *(v20 + 4592) = result;
  *(v20 + 4608) = xmmword_1BCE3C8C0;
  *(v20 + 4624) = result;
  *(v20 + 1088) = xmmword_1BCE3C8C0;
  *(v20 + 1824) = xmmword_1BCE3C8C0;
  *(v20 + 2176) = xmmword_1BCE3C8C0;
  *(v20 + 4464) = result;
  *(v20 + 4496) = result;
  *(v20 + 4528) = result;
  *(v20 + 2304) = xmmword_1BCE3C8C0;
  *(v20 + 3040) = xmmword_1BCE3C8C0;
  *(v20 + 4368) = result;
  *(v20 + 4400) = result;
  *(v20 + 4416) = result;
  *(v20 + 4432) = result;
  *(v20 + 3392) = xmmword_1BCE3C8C0;
  *(v20 + 4256) = xmmword_1BCE3C8C0;
  *(v20 + 4272) = result;
  *(v20 + 4304) = result;
  *(v20 + 4320) = result;
  *(v20 + 4336) = result;
  *(v20 + 3520) = xmmword_1BCE3C8C0;
  *(v20 + 4040) = 0x3FEF0AE2E0000000;
  *(v20 + 4064) = 0x3FF0000000000000;
  *(v20 + 4176) = result;
  *(v20 + 4208) = result;
  *(v20 + 4240) = result;
  *(v20 + 4072) = 0;
  *(v20 + 4112) = result;
  *(v20 + 4128) = xmmword_1BCE3DAE0;
  *(v20 + 4144) = result;
  *(v20 + 8384) = xmmword_1BCE3C8C0;
  *(v20 + 9120) = xmmword_1BCE3C8C0;
  *(v20 + 9472) = xmmword_1BCE3C8C0;
  *(v20 + 9600) = xmmword_1BCE3C8C0;
  *(v20 + 10336) = xmmword_1BCE3C8C0;
  *(v20 + 10688) = xmmword_1BCE3C8C0;
  *(v20 + 10816) = xmmword_1BCE3C8C0;
  *(v20 + 11552) = xmmword_1BCE3C8C0;
  *(v20 + 11904) = xmmword_1BCE3C8C0;
  *(v20 + 12032) = xmmword_1BCE3C8C0;
  *(v20 + 3904) = result;
  *(v20 + 3920) = result;
  *(v20 + 3936) = result;
  *(v20 + 3952) = result;
  *(v20 + 480) = xmmword_1BCE3DAE0;
  *(v20 + 3824) = result;
  *(v20 + 3840) = result;
  *(v20 + 3856) = result;
  *(v20 + 3872) = xmmword_1BCE3DAE0;
  *(v20 + 3888) = result;
  *(v20 + 992) = xmmword_1BCE3DAE0;
  *(v20 + 1120) = xmmword_1BCE3DAE0;
  *(v20 + 1696) = xmmword_1BCE3DAE0;
  *(v20 + 2208) = xmmword_1BCE3DAE0;
  *(v20 + 2336) = xmmword_1BCE3DAE0;
  *(v20 + 2912) = xmmword_1BCE3DAE0;
  *(v20 + 3312) = result;
  *(v20 + 3648) = result;
  *(v20 + 3689) = *v38;
  *(v20 + 3720) = 1058642330;
  *(v20 + 3664) = 0x3FF0000000000000;
  *(v20 + 3680) = 0x4017FFFFFFFFFFFALL;
  *(v20 + 3688) = 0;
  *(v20 + 3692) = *&v38[3];
  *(v20 + 3568) = result;
  *(v20 + 3584) = result;
  *(v20 + 3600) = 0x4170000042480000;
  *(v20 + 3608) = 0x3FF0000000000000;
  *(v20 + 3616) = result;
  *(v20 + 3632) = result;
  *(v20 + 3328) = result;
  *(v20 + 3344) = result;
  *(v20 + 3360) = result;
  *(v20 + 3504) = result;
  *(v20 + 3536) = result;
  *(v20 + 3552) = xmmword_1BCE3DAE0;
  *(v20 + 3376) = result;
  *(v20 + 3408) = result;
  *(v20 + 3424) = xmmword_1BCE3DAE0;
  *(v20 + 3440) = result;
  *(v20 + 8416) = xmmword_1BCE3DAE0;
  *(v20 + 8992) = xmmword_1BCE3DAE0;
  *(v20 + 9504) = xmmword_1BCE3DAE0;
  *(v20 + 9632) = xmmword_1BCE3DAE0;
  *(v20 + 10208) = xmmword_1BCE3DAE0;
  *(v20 + 10720) = xmmword_1BCE3DAE0;
  *(v20 + 10848) = xmmword_1BCE3DAE0;
  *(v20 + 11424) = xmmword_1BCE3DAE0;
  *(v20 + 11936) = xmmword_1BCE3DAE0;
  *(v20 + 12064) = xmmword_1BCE3DAE0;
  *(v20 + 1168) = 0x4170000042480000;
  *(v20 + 3184) = result;
  *(v20 + 3200) = result;
  *(v20 + 3216) = result;
  *(v20 + 2384) = 0x4170000042480000;
  *(v20 + 3088) = result;
  *(v20 + 3152) = result;
  *(v20 + 8464) = 0x4170000042480000;
  *(v20 + 9680) = 0x4170000042480000;
  *(v20 + 10896) = 0x4170000042480000;
  *(v20 + 12112) = 0x4170000042480000;
  *(v20 + 464) = result;
  *(v20 + 496) = result;
  *(v20 + 2992) = result;
  *(v20 + 3024) = result;
  *(v20 + 3056) = result;
  *(v20 + 528) = result;
  *(v20 + 560) = result;
  *(v20 + 592) = result;
  *(v20 + 2896) = result;
  *(v20 + 2928) = result;
  *(v20 + 2960) = result;
  *(v20 + 624) = result;
  *(v20 + 720) = result;
  *(v20 + 2824) = 0x3FF0000000000000;
  *(v20 + 2832) = result;
  *(v20 + 2848) = 0x3FF0000000000000;
  *(v20 + 2856) = 0;
  *(v20 + 768) = result;
  *(v20 + 784) = result;
  *(v20 + 944) = result;
  *(v20 + 976) = result;
  *(v20 + 1008) = result;
  *(v20 + 2736) = result;
  *(v20 + 176) = result;
  *(v20 + 192) = result;
  *(v20 + 2672) = result;
  *(v20 + 2688) = result;
  *(v20 + 2704) = result;
  *(v20 + 2720) = result;
  *(v20 + 400) = result;
  *(v20 + 416) = 0x3FF0000000000000;
  *(v20 + 424) = 0;
  *(v20 + 2608) = result;
  *(v20 + 2624) = result;
  *(v20 + 752) = result;
  *(v20 + 880) = result;
  *(v20 + 896) = result;
  *(v20 + 2400) = result;
  *(v20 + 2416) = result;
  *(v20 + 2473) = *v37;
  *(v20 + 2476) = *&v37[3];
  *(v20 + 2504) = 1045220557;
  *(v20 + 2432) = result;
  *(v20 + 2448) = 0x3FF0000000000000;
  *(v20 + 2464) = 0xC031FFFFFFFFFFFFLL;
  *(v20 + 2472) = 0;
  *(v20 + 912) = result;
  *(v20 + 928) = result;
  *(v20 + 1072) = result;
  *(v20 + 2320) = result;
  *(v20 + 2352) = result;
  *(v20 + 2368) = result;
  *(v20 + 2392) = 0x3FF0000000000000;
  *(v20 + 1104) = result;
  *(v20 + 1136) = result;
  *(v20 + 1152) = result;
  *(v20 + 1176) = 0x3FF0000000000000;
  *(v20 + 2224) = result;
  *(v20 + 2288) = result;
  *(v20 + 1184) = result;
  *(v20 + 1200) = result;
  *(v20 + 1216) = result;
  *(v20 + 2144) = result;
  *(v20 + 2160) = result;
  *(v20 + 2192) = result;
  *(v20 + 1232) = 0x3FF0000000000000;
  *(v20 + 1248) = 0xC04E000000000000;
  *(v20 + 1256) = 0;
  *(v20 + 2112) = result;
  *(v20 + 2128) = result;
  *(v20 + 1257) = *v36;
  *(v20 + 1260) = *&v36[3];
  *(v20 + 2096) = result;
  *(v20 + 1288) = 1036831949;
  *(v20 + 1392) = result;
  *(v20 + 1408) = result;
  *(v20 + 1968) = result;
  *(v20 + 1984) = result;
  *(v20 + 2000) = result;
  *(v20 + 1472) = result;
  *(v20 + 1608) = 0x3FF0000000000000;
  *(v20 + 1616) = result;
  *(v20 + 1632) = 0x3FF0000000000000;
  *(v20 + 1840) = result;
  *(v20 + 1872) = result;
  *(v20 + 1640) = 0;
  *(v20 + 1680) = result;
  *(v20 + 1712) = result;
  *(v20 + 1744) = result;
  *(v20 + 1776) = result;
  *(v20 + 1808) = result;
  *(v20 + 8400) = result;
  *(v20 + 8432) = result;
  *(v20 + 8448) = result;
  *(v20 + 8480) = result;
  *(v20 + 8496) = result;
  *(v20 + 8512) = result;
  *(v20 + 8688) = result;
  *(v20 + 8704) = result;
  *(v20 + 8752) = result;
  *(v20 + 8768) = result;
  *(v20 + 8784) = result;
  *(v20 + 8800) = result;
  *(v20 + 8816) = result;
  *(v20 + 8912) = result;
  *(v20 + 8976) = result;
  *(v20 + 9008) = result;
  *(v20 + 9040) = result;
  *(v20 + 9072) = result;
  *(v20 + 9104) = result;
  *(v20 + 9136) = result;
  *(v20 + 9168) = result;
  *(v20 + 9232) = result;
  *(v20 + 9264) = result;
  *(v20 + 9280) = result;
  *(v20 + 9296) = result;
  *(v20 + 9392) = result;
  *(v20 + 9408) = result;
  *(v20 + 9424) = result;
  *(v20 + 9440) = result;
  *(v20 + 9456) = result;
  *(v20 + 9488) = result;
  *(v20 + 9520) = result;
  *(v20 + 9584) = result;
  *(v20 + 9616) = result;
  *(v20 + 9648) = result;
  *(v20 + 9664) = result;
  *(v20 + 9696) = result;
  *(v20 + 9712) = result;
  *(v20 + 9728) = result;
  *(v20 + 9904) = result;
  *(v20 + 9920) = result;
  *(v20 + 9984) = result;
  *(v20 + 10128) = result;
  *(v20 + 10192) = result;
  *(v20 + 10224) = result;
  *(v20 + 10256) = result;
  *(v20 + 10288) = result;
  *(v20 + 10320) = result;
  *(v20 + 10352) = result;
  *(v20 + 10384) = result;
  *(v20 + 10480) = result;
  *(v20 + 10496) = result;
  *(v20 + 10512) = result;
  *(v20 + 10608) = result;
  *(v20 + 10624) = result;
  *(v20 + 10640) = result;
  *(v20 + 10656) = result;
  *(v20 + 10672) = result;
  *(v20 + 10704) = result;
  *(v20 + 10736) = result;
  *(v20 + 10800) = result;
  *(v20 + 10832) = result;
  *(v20 + 10864) = result;
  *(v20 + 10880) = result;
  *(v20 + 10912) = result;
  *(v20 + 10928) = result;
  *(v20 + 10944) = result;
  *(v20 + 11120) = result;
  *(v20 + 11136) = result;
  *(v20 + 11344) = result;
  *(v20 + 11408) = result;
  *(v20 + 11440) = result;
  *(v20 + 11472) = result;
  *(v20 + 11504) = result;
  *(v20 + 11536) = result;
  *(v20 + 11568) = result;
  *(v20 + 11664) = result;
  *(v20 + 11696) = result;
  *(v20 + 11712) = result;
  *(v20 + 11728) = result;
  *(v20 + 11824) = result;
  *(v20 + 11840) = result;
  *(v20 + 11856) = result;
  *(v20 + 11872) = result;
  *(v20 + 11888) = result;
  *(v20 + 11920) = result;
  *(v20 + 11952) = result;
  *(v20 + 12016) = result;
  *(v20 + 12048) = result;
  *(v20 + 12080) = result;
  *(v20 + 12096) = result;
  *(v20 + 12128) = result;
  *(v20 + 12144) = result;
  *(v20 + 12160) = result;
  *(v20 + 392) = 0x3FF0000000000000;
  *(v20 + 32) = 0xC056800000000000;
  *(v20 + 40) = 0;
  *(v20 + 72) = 1036831949;
  *(v20 + 8472) = 0x3FF0000000000000;
  *(v20 + 8528) = 0x3FF0000000000000;
  *(v20 + 8552) = 1;
  *(v20 + 8553) = *v42;
  *(v20 + 8556) = *&v42[3];
  *(v20 + 8584) = 1045220557;
  *(v20 + 8904) = 0x3FF0000000000000;
  *(v20 + 8928) = 0x3FF0000000000000;
  *(v20 + 8936) = 0;
  *(v20 + 9688) = 0x3FF0000000000000;
  *(v20 + 9744) = 0x3FF0000000000000;
  *(v20 + 9769) = *v43;
  *(v20 + 9768) = 1;
  *(v20 + 9772) = *&v43[3];
  *(v20 + 9800) = 1036831949;
  *(v20 + 10120) = 0x3FF0000000000000;
  *(v20 + 10144) = 0x3FF0000000000000;
  *(v20 + 10152) = 0;
  *(v20 + 10904) = 0x3FF0000000000000;
  *(v20 + 10960) = 0x3FF0000000000000;
  *(v20 + 10976) = 0xC056800000000000;
  *(v20 + 10984) = 1;
  *(v20 + 10985) = *v44;
  *(v20 + 10988) = *&v44[3];
  *(v20 + 11016) = 1036831949;
  *(v20 + 11336) = 0x3FF0000000000000;
  *(v20 + 11360) = 0x3FF0000000000000;
  *(v20 + 11368) = 0;
  *(v20 + 12120) = 0x3FF0000000000000;
  *(v20 + 12176) = 0x3FF0000000000000;
  return result;
}

__n128 sub_1BCC6C480@<Q0>(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  v3 = sub_1BCB22878();
  sub_1BCC6CBA8();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC402000000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B03126F3F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3C680;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = result;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = vdup_n_s32(0x3E4CCCCDu);
  *(a1 + 720) = 0x4182A3D74124CCCDLL;
  *(a1 + 728) = 1095382335;
  *(a1 + 736) = 1;
  *(a1 + 744) = 8;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3E99999A3E4CCCCDLL;
  *(a1 + 848) = 0x41A0000041700000;
  *(a1 + 856) = 0x41A7353F415472B0;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE3E0B0;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF4C202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE798E0;
  *(a1 + 928) = 9;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3ECCCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x4199999A417947AELL;
  *(a1 + 984) = 0x3F5A9FBE4109374CLL;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE42370;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF53202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE792E0;
  *(a1 + 1056) = 9;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x617274736F746C41;
  *(a1 + 1160) = 0xEF53202D20737574;
  *(a1 + 1168) = 0xD000000000000013;
  *(a1 + 1176) = 0x80000001BCE792E0;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE435B0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE5C290;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(v2 + 198) = 0x1000001010001;
  *(v2 + 206) = 0x10000;
  *(a1 + 1646) = 16843009;
  *(a1 + 1650) = 1;
  *(a1 + 1651) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v11;
  *(a1 + 1659) = v12;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 1;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C7B0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1056964608;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 0x40000000;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3EBC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE42410;
  *(a1 + 2240) = xmmword_1BCE43060;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v3;
  *(a1 + 2320) = v10;
  return result;
}

double sub_1BCC6CBA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3D330;
  *(v0 + 64) = 0x432A000043160000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3DCE0;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE42430;
  *(v0 + 192) = xmmword_1BCE42440;
  __asm { FMOV            V29.2D, #0.5 }

  *(v0 + 208) = _Q29;
  *(v0 + 224) = xmmword_1BCE3D910;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 240) = _Q0;
  *(v0 + 256) = xmmword_1BCE433C0;
  *(v0 + 272) = _Q0;
  *(v0 + 288) = _Q0;
  *(v0 + 304) = _Q0;
  *(v0 + 320) = xmmword_1BCE3C8C0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = _Q0;
  *(v0 + 368) = xmmword_1BCE3C900;
  *(v0 + 384) = 0x3E4CCCCD3F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = _Q0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = _Q0;
  *(v0 + 448) = _Q0;
  *(v0 + 464) = _Q0;
  *(v0 + 480) = _Q0;
  *(v0 + 496) = _Q0;
  *(v0 + 512) = _Q0;
  *(v0 + 528) = _Q0;
  *(v0 + 544) = _Q0;
  *(v0 + 560) = _Q0;
  *(v0 + 576) = _Q0;
  *(v0 + 592) = _Q0;
  *(v0 + 608) = _Q0;
  *(v0 + 624) = _Q0;
  *(v0 + 640) = _Q0;
  *(v0 + 656) = _Q0;
  *(v0 + 672) = _Q0;
  *(v0 + 688) = _Q0;
  *(v0 + 704) = _Q0;
  *(v0 + 720) = _Q0;
  *(v0 + 736) = _Q0;
  *(v0 + 752) = _Q0;
  *(v0 + 768) = _Q0;
  *(v0 + 784) = _Q0;
  *(v0 + 800) = _Q0;
  *(v0 + 816) = _Q0;
  *(v0 + 832) = _Q0;
  *(v0 + 848) = _Q0;
  *(v0 + 864) = _Q0;
  *(v0 + 880) = _Q0;
  *(v0 + 896) = _Q0;
  *(v0 + 912) = _Q0;
  *(v0 + 928) = _Q0;
  *(v0 + 944) = _Q0;
  *(v0 + 960) = _Q0;
  *(v0 + 976) = _Q0;
  *(v0 + 992) = _Q0;
  *(v0 + 1008) = _Q0;
  *(v0 + 1024) = _Q0;
  *(v0 + 1040) = _Q0;
  *(v0 + 1056) = _Q0;
  v7 = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1072) = v7;
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = xmmword_1BCE3D350;
  *(v0 + 1152) = _Q0;
  *(v0 + 1168) = 0x4120000042FA0000;
  *(v0 + 1176) = 0x3FEB89F080000000;
  *(v0 + 1184) = xmmword_1BCE3D360;
  *(v0 + 1200) = _Q0;
  *(v0 + 1216) = xmmword_1BCE3D370;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v11;
  *(v0 + 1260) = *&v11[3];
  *(v0 + 1264) = xmmword_1BCE3D330;
  *(v0 + 1280) = 0x432A000043160000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3DCE0;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE42430;
  *(v0 + 1408) = xmmword_1BCE42440;
  *(v0 + 1424) = _Q29;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = _Q0;
  *(v0 + 1472) = xmmword_1BCE433C0;
  *(v0 + 1488) = _Q0;
  *(v0 + 1504) = _Q0;
  *(v0 + 1520) = _Q0;
  *(v0 + 1536) = xmmword_1BCE3C8C0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = _Q0;
  *(v0 + 1584) = xmmword_1BCE3C900;
  *(v0 + 1600) = 0x3E4CCCCD3F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q0;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = _Q0;
  *(v0 + 1664) = _Q0;
  *(v0 + 1680) = _Q0;
  *(v0 + 1696) = _Q0;
  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  *(v0 + 1760) = _Q0;
  *(v0 + 1776) = _Q0;
  *(v0 + 1792) = _Q0;
  *(v0 + 1808) = _Q0;
  *(v0 + 1824) = _Q0;
  *(v0 + 1840) = _Q0;
  *(v0 + 1856) = _Q0;
  *(v0 + 1872) = _Q0;
  *(v0 + 1888) = _Q0;
  *(v0 + 1904) = _Q0;
  *(v0 + 1920) = _Q0;
  *(v0 + 1936) = _Q0;
  *(v0 + 1952) = _Q0;
  *(v0 + 1968) = _Q0;
  *(v0 + 1984) = _Q0;
  *(v0 + 2000) = _Q0;
  *(v0 + 2400) = xmmword_1BCE3D380;
  *(v0 + 2432) = xmmword_1BCE3D390;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3E2C0;
  *(v0 + 2768) = xmmword_1BCE42480;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = xmmword_1BCE3D3E0;
  *(v0 + 3584) = _Q0;
  *(v0 + 3600) = 0x4120000042B40000;
  *(v0 + 3608) = 0x3FE9EB8500000000;
  *(v0 + 3648) = xmmword_1BCE3D400;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v13;
  *(v0 + 3692) = *&v13[3];
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = _Q0;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = xmmword_1BCE424A0;
  *(v0 + 3840) = xmmword_1BCE424B0;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3888) = _Q0;
  *(v0 + 3904) = xmmword_1BCE433C0;
  *(v0 + 3920) = _Q0;
  *(v0 + 3936) = _Q0;
  *(v0 + 3952) = _Q0;
  *(v0 + 3968) = xmmword_1BCE3E230;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4016) = xmmword_1BCE3CAE0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4048) = _Q0;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = _Q0;
  *(v0 + 4096) = _Q0;
  *(v0 + 4112) = _Q0;
  *(v0 + 4128) = _Q0;
  *(v0 + 4144) = _Q0;
  *(v0 + 4160) = _Q0;
  *(v0 + 4176) = _Q0;
  *(v0 + 4192) = _Q0;
  *(v0 + 4208) = _Q0;
  *(v0 + 4224) = _Q0;
  *(v0 + 4240) = _Q0;
  *(v0 + 4256) = _Q0;
  *(v0 + 4272) = _Q0;
  *(v0 + 4288) = _Q0;
  *(v0 + 4304) = _Q0;
  *(v0 + 4320) = _Q0;
  *(v0 + 4336) = _Q0;
  *(v0 + 4352) = _Q0;
  *(v0 + 4368) = _Q0;
  *(v0 + 4384) = _Q0;
  *(v0 + 4400) = _Q0;
  *(v0 + 4416) = _Q0;
  *(v0 + 4432) = _Q0;
  *(v0 + 4448) = _Q0;
  *(v0 + 4464) = _Q0;
  *(v0 + 4480) = _Q0;
  *(v0 + 4496) = _Q0;
  *(v0 + 4512) = _Q0;
  *(v0 + 4528) = _Q0;
  *(v0 + 4544) = _Q0;
  *(v0 + 4560) = _Q0;
  *(v0 + 4576) = _Q0;
  *(v0 + 4592) = _Q0;
  *(v0 + 4608) = _Q0;
  *(v0 + 4624) = _Q0;
  *(v0 + 4640) = _Q0;
  *(v0 + 4656) = _Q0;
  *(v0 + 4672) = _Q0;
  *(v0 + 4688) = _Q0;
  *(v0 + 4704) = _Q0;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = xmmword_1BCE3D410;
  *(v0 + 4800) = _Q0;
  *(v0 + 4816) = 0x4170000041F00000;
  *(v0 + 4824) = 0x3FE8000000000000;
  *(v0 + 4848) = xmmword_1BCE3D430;
  *(v0 + 4864) = xmmword_1BCE3D440;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE424E0;
  *(v0 + 5200) = vdupq_n_s64(0x3FEF9F9F80000000uLL);
  strcpy((v0 + 5232), "fff?fff?333?fff?fff?");
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 4832) = xmmword_1BCE3E5A0;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v14;
  *(v0 + 4908) = *&v14[3];
  *(v0 + 4936) = 1061997773;
  *(v0 + 6000) = xmmword_1BCE3D410;
  *(v0 + 6032) = 0x4170000041A00000;
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 6048) = xmmword_1BCE3E5A0;
  *(v0 + 6080) = xmmword_1BCE3D460;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE42520;
  *(v0 + 6416) = xmmword_1BCE42530;
  *(v0 + 6432) = xmmword_1BCE42540;
  *(v0 + 6448) = xmmword_1BCE42550;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7264) = xmmword_1BCE3E5B0;
  *(v0 + 7280) = xmmword_1BCE3D480;
  *(v0 + 7296) = xmmword_1BCE3D490;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3CD60;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 7552) = _Q0;
  *(v0 + 7632) = xmmword_1BCE42570;
  *(v0 + 7648) = xmmword_1BCE42580;
  *(v0 + 7664) = xmmword_1BCE3CDB0;
  *(v0 + 7696) = xmmword_1BCE3E2F0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8480) = xmmword_1BCE3D4A0;
  *(v0 + 8512) = xmmword_1BCE3D4C0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 9696) = xmmword_1BCE3D4D0;
  *(v0 + 9728) = xmmword_1BCE3D4F0;
  *(v0 + 10944) = xmmword_1BCE3D500;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1151500288;
  *(v0 + 11008) = 1151500288;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 11264) = xmmword_1BCE42590;
  v8 = vdupq_n_s32(0x3F666666u);
  *(v0 + 8880) = v8;
  *(v0 + 10096) = v8;
  *(v0 + 11312) = v8;
  *(v0 + 10816) = xmmword_1BCE447D0;
  *(v0 + 12032) = xmmword_1BCE447D0;
  *(v0 + 10800) = xmmword_1BCE447C0;
  *(v0 + 10832) = xmmword_1BCE447C0;
  *(v0 + 12016) = xmmword_1BCE447C0;
  *(v0 + 12048) = xmmword_1BCE447C0;
  *(v0 + 10848) = xmmword_1BCE447E0;
  *(v0 + 12064) = xmmword_1BCE447E0;
  *(v0 + 12160) = xmmword_1BCE3D510;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  _Q1 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = _Q1;
  *(v0 + 8592) = _Q1;
  *(v0 + 9808) = _Q1;
  *(v0 + 11024) = _Q1;
  *(v0 + 12240) = _Q1;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 12528) = xmmword_1BCE3CEF0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 9600) = xmmword_1BCE447A0;
  *(v0 + 13248) = xmmword_1BCE447A0;
  *(v0 + 9584) = xmmword_1BCE44790;
  *(v0 + 9616) = xmmword_1BCE44790;
  *(v0 + 13232) = xmmword_1BCE44790;
  *(v0 + 13264) = xmmword_1BCE44790;
  *(v0 + 9632) = xmmword_1BCE447B0;
  *(v0 + 13280) = xmmword_1BCE447B0;
  *(v0 + 13376) = xmmword_1BCE3D520;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 7488) = xmmword_1BCE3CBA0;
  *(v0 + 13568) = xmmword_1BCE3CBA0;
  *(v0 + 13712) = xmmword_1BCE425F0;
  *(v0 + 13744) = xmmword_1BCE3CF70;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14560) = xmmword_1BCE3E5C0;
  *(v0 + 14592) = xmmword_1BCE3D540;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 3616) = xmmword_1BCE3D610;
  *(v0 + 3632) = xmmword_1BCE3CBC0;
  *(v0 + 2016) = _Q0;
  *(v0 + 2032) = _Q0;
  *(v0 + 2048) = _Q0;
  *(v0 + 2064) = _Q0;
  *(v0 + 2080) = _Q0;
  *(v0 + 3488) = _Q0;
  *(v0 + 3392) = _Q0;
  *(v0 + 3408) = _Q0;
  *(v0 + 3424) = _Q0;
  *(v0 + 3440) = _Q0;
  *(v0 + 3456) = _Q0;
  *(v0 + 3472) = _Q0;
  *(v0 + 3296) = _Q0;
  *(v0 + 3312) = _Q0;
  *(v0 + 3328) = _Q0;
  *(v0 + 3344) = _Q0;
  *(v0 + 3360) = _Q0;
  *(v0 + 3376) = _Q0;
  *(v0 + 3200) = _Q0;
  *(v0 + 3216) = _Q0;
  *(v0 + 3232) = _Q0;
  *(v0 + 3248) = _Q0;
  *(v0 + 3264) = _Q0;
  *(v0 + 3280) = _Q0;
  *(v0 + 3104) = _Q0;
  *(v0 + 3120) = _Q0;
  *(v0 + 3136) = _Q0;
  *(v0 + 3152) = _Q0;
  *(v0 + 3168) = _Q0;
  *(v0 + 3184) = _Q0;
  *(v0 + 3008) = _Q0;
  *(v0 + 3024) = _Q0;
  *(v0 + 3040) = _Q0;
  *(v0 + 3056) = _Q0;
  *(v0 + 3072) = _Q0;
  *(v0 + 3088) = _Q0;
  *(v0 + 2912) = _Q0;
  *(v0 + 2928) = _Q0;
  *(v0 + 2944) = _Q0;
  *(v0 + 2960) = _Q0;
  *(v0 + 2976) = _Q0;
  *(v0 + 2992) = _Q0;
  *(v0 + 2096) = _Q0;
  *(v0 + 2112) = _Q0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = _Q0;
  *(v0 + 2880) = _Q0;
  *(v0 + 2896) = _Q0;
  *(v0 + 2816) = 0x3E4CCCCD3F4CCCCDLL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q0;
  *(v0 + 2848) = 0;
  *(v0 + 2128) = _Q0;
  *(v0 + 2144) = _Q0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  *(v0 + 2160) = _Q0;
  *(v0 + 2176) = _Q0;
  *(v0 + 2192) = _Q0;
  *(v0 + 2688) = xmmword_1BCE433C0;
  *(v0 + 2624) = xmmword_1BCE42470;
  *(v0 + 2640) = _Q29;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2672) = _Q0;
  *(v0 + 2528) = _Q0;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2592) = _Q0;
  *(v0 + 2608) = xmmword_1BCE42430;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2472) = 0;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2473) = *v12;
  *(v0 + 2476) = *&v12[3];
  *(v0 + 2480) = xmmword_1BCE3D330;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2208) = _Q0;
  *(v0 + 2320) = xmmword_1BCE3C920;
  *(v0 + 2416) = _Q0;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2336) = xmmword_1BCE3C930;
  *(v0 + 2352) = xmmword_1BCE3D350;
  *(v0 + 2368) = _Q0;
  *(v0 + 2384) = 0x4120000042FA0000;
  *(v0 + 2392) = 0x3FEBA9FBE0000000;
  *(v0 + 2224) = _Q0;
  *(v0 + 2240) = _Q0;
  *(v0 + 2256) = _Q0;
  *(v0 + 2272) = _Q0;
  *(v0 + 2288) = v7;
  *(v0 + 2304) = xmmword_1BCE3C910;
  *(v0 + 5040) = xmmword_1BCE424D0;
  *(v0 + 5056) = xmmword_1BCE3C8C0;
  *(v0 + 5072) = _Q0;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = _Q0;
  *(v0 + 5120) = _Q0;
  *(v0 + 5136) = _Q0;
  *(v0 + 5152) = _Q0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5253) = 0;
  *(v0 + 5254) = 0;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = _Q0;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = _Q0;
  *(v0 + 5312) = _Q0;
  *(v0 + 5328) = _Q0;
  *(v0 + 5344) = _Q0;
  *(v0 + 5360) = _Q0;
  *(v0 + 5376) = _Q0;
  *(v0 + 5392) = _Q0;
  *(v0 + 5408) = _Q0;
  *(v0 + 5424) = _Q0;
  *(v0 + 5440) = _Q0;
  *(v0 + 5456) = _Q0;
  *(v0 + 5472) = _Q0;
  *(v0 + 5488) = _Q0;
  *(v0 + 5504) = _Q0;
  *(v0 + 5520) = _Q0;
  *(v0 + 5536) = _Q0;
  *(v0 + 5552) = _Q0;
  *(v0 + 5568) = _Q0;
  *(v0 + 5584) = _Q0;
  *(v0 + 5600) = _Q0;
  *(v0 + 5616) = _Q0;
  *(v0 + 5632) = _Q0;
  *(v0 + 5648) = _Q0;
  *(v0 + 5664) = _Q0;
  *(v0 + 5680) = _Q0;
  *(v0 + 5696) = _Q0;
  *(v0 + 5712) = _Q0;
  *(v0 + 5728) = _Q0;
  *(v0 + 5744) = _Q0;
  *(v0 + 5760) = _Q0;
  *(v0 + 5776) = _Q0;
  *(v0 + 5792) = _Q0;
  *(v0 + 5808) = _Q0;
  *(v0 + 5824) = _Q0;
  *(v0 + 5840) = _Q0;
  *(v0 + 5856) = _Q0;
  *(v0 + 5872) = _Q0;
  *(v0 + 5888) = _Q0;
  *(v0 + 5904) = _Q0;
  *(v0 + 5920) = _Q0;
  *(v0 + 6016) = _Q0;
  *(v0 + 6040) = 0x3FE6666680000000;
  *(v0 + 6064) = _Q0;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v15;
  *(v0 + 6124) = *&v15[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = _Q0;
  *(v0 + 6272) = _Q0;
  *(v0 + 6288) = _Q0;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = _Q0;
  *(v0 + 6336) = _Q0;
  *(v0 + 6352) = _Q0;
  *(v0 + 6368) = _Q0;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = _Q0;
  *(v0 + 6528) = _Q0;
  *(v0 + 6544) = _Q0;
  *(v0 + 6560) = _Q0;
  *(v0 + 6576) = _Q0;
  *(v0 + 6592) = _Q0;
  *(v0 + 6608) = _Q0;
  *(v0 + 6624) = _Q0;
  *(v0 + 6640) = _Q0;
  *(v0 + 6656) = _Q0;
  *(v0 + 6672) = _Q0;
  *(v0 + 6688) = _Q0;
  *(v0 + 6704) = _Q0;
  *(v0 + 6720) = _Q0;
  *(v0 + 6736) = _Q0;
  *(v0 + 6752) = _Q0;
  *(v0 + 6768) = _Q0;
  *(v0 + 6784) = _Q0;
  *(v0 + 6800) = _Q0;
  *(v0 + 6816) = _Q0;
  *(v0 + 6832) = _Q0;
  *(v0 + 6848) = _Q0;
  *(v0 + 6864) = _Q0;
  *(v0 + 6880) = _Q0;
  *(v0 + 6896) = _Q0;
  *(v0 + 6912) = _Q0;
  *(v0 + 6928) = _Q0;
  *(v0 + 6944) = _Q0;
  *(v0 + 6960) = _Q0;
  *(v0 + 6976) = _Q0;
  *(v0 + 6992) = _Q0;
  *(v0 + 7008) = _Q0;
  *(v0 + 7024) = _Q0;
  *(v0 + 7040) = _Q0;
  *(v0 + 7056) = _Q0;
  *(v0 + 7072) = _Q0;
  *(v0 + 7088) = _Q0;
  *(v0 + 7104) = _Q0;
  *(v0 + 7120) = _Q0;
  *(v0 + 7136) = _Q0;
  *(v0 + 7216) = _Q0;
  *(v0 + 7232) = _Q0;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FE206D360000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v16;
  *(v0 + 7340) = *&v16[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = _Q0;
  *(v0 + 7504) = _Q0;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = _Q0;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14928) = xmmword_1BCE42660;
  *(v0 + 14944) = xmmword_1BCE42670;
  *(v0 + 14960) = xmmword_1BCE42680;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15776) = xmmword_1BCE3E5D0;
  *(v0 + 9712) = xmmword_1BCE3D4E0;
  *(v0 + 10928) = xmmword_1BCE3D4E0;
  *(v0 + 12144) = xmmword_1BCE3D4E0;
  *(v0 + 13360) = xmmword_1BCE3D4E0;
  *(v0 + 15792) = xmmword_1BCE3D4E0;
  *(v0 + 15808) = xmmword_1BCE3D560;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 16000) = xmmword_1BCE3CBB0;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 7616) = xmmword_1BCE3E230;
  *(v0 + 10048) = xmmword_1BCE3E230;
  *(v0 + 13696) = xmmword_1BCE3E230;
  *(v0 + 16128) = xmmword_1BCE3E230;
  *(v0 + 16144) = xmmword_1BCE42690;
  *(v0 + 16160) = xmmword_1BCE426A0;
  *(v0 + 16176) = xmmword_1BCE426B0;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 16944) = xmmword_1BCE3D570;
  *(v0 + 16960) = xmmword_1BCE3D580;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 16992) = xmmword_1BCE3E5E0;
  *(v0 + 17024) = xmmword_1BCE3D5A0;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D44160000;
  *(v0 + 17104) = xmmword_1BCE3D5B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE424D0;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 8832) = xmmword_1BCE3ECB0;
  *(v0 + 12480) = xmmword_1BCE3ECB0;
  *(v0 + 14912) = xmmword_1BCE3ECB0;
  *(v0 + 17344) = xmmword_1BCE3ECB0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE426C0;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18160) = xmmword_1BCE3D5C0;
  *(v0 + 18176) = xmmword_1BCE3D5D0;
  __asm { FMOV            V1.2S, #20.0 }

  *(v0 + 18192) = _Q1.i64[0];
  *(v0 + 18208) = xmmword_1BCE3E5F0;
  *(v0 + 8496) = xmmword_1BCE3D4B0;
  *(v0 + 14576) = xmmword_1BCE3D4B0;
  *(v0 + 18224) = xmmword_1BCE3D4B0;
  *(v0 + 18240) = xmmword_1BCE3D5F0;
  *(v0 + 18304) = vdup_n_s32(0x43960000u);
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3C980;
  *(v0 + 18368) = xmmword_1BCE3C990;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18416) = xmmword_1BCE426E0;
  *(v0 + 18432) = xmmword_1BCE42470;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3D2D0;
  *(v0 + 18560) = xmmword_1BCE3E350;
  *(v0 + 18576) = xmmword_1BCE426F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = 0x3E4CCCCD3F4CCCCDLL;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19376) = xmmword_1BCE3D600;
  *(v0 + 19408) = 0x41F0000042B40000;
  *(v0 + 19424) = xmmword_1BCE3D610;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 17008) = xmmword_1BCE3CBC0;
  *(v0 + 19440) = xmmword_1BCE3CBC0;
  *(v0 + 19456) = xmmword_1BCE3D620;
  *(v0 + 20640) = xmmword_1BCE3D630;
  *(v0 + 20672) = xmmword_1BCE3D640;
  *(v0 + 18288) = xmmword_1BCE3D330;
  *(v0 + 19504) = xmmword_1BCE3D330;
  *(v0 + 20720) = xmmword_1BCE3D330;
  *(v0 + 19520) = 0x432A000043160000;
  *(v0 + 20736) = 0x432A000043160000;
  *(v0 + 19536) = xmmword_1BCE3DCE0;
  *(v0 + 20752) = xmmword_1BCE3DCE0;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 19632) = xmmword_1BCE42430;
  *(v0 + 20848) = xmmword_1BCE42430;
  *(v0 + 19648) = xmmword_1BCE42440;
  *(v0 + 20864) = xmmword_1BCE42440;
  *(v0 + 10912) = _Q29;
  *(v0 + 12128) = _Q29;
  *(v0 + 13344) = _Q29;
  *(v0 + 18448) = _Q29;
  *(v0 + 19664) = _Q29;
  *(v0 + 20880) = _Q29;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 16064) = xmmword_1BCE433C0;
  *(v0 + 17280) = xmmword_1BCE433C0;
  *(v0 + 19712) = xmmword_1BCE433C0;
  *(v0 + 20928) = xmmword_1BCE433C0;
  *(v0 + 18080) = _Q0;
  *(v0 + 17984) = _Q0;
  *(v0 + 18000) = _Q0;
  *(v0 + 18016) = _Q0;
  *(v0 + 18032) = _Q0;
  *(v0 + 18048) = _Q0;
  *(v0 + 18064) = _Q0;
  *(v0 + 17888) = _Q0;
  *(v0 + 17904) = _Q0;
  *(v0 + 17920) = _Q0;
  *(v0 + 17936) = _Q0;
  *(v0 + 17952) = _Q0;
  *(v0 + 17968) = _Q0;
  *(v0 + 17792) = _Q0;
  *(v0 + 17808) = _Q0;
  *(v0 + 17824) = _Q0;
  *(v0 + 17840) = _Q0;
  *(v0 + 17856) = _Q0;
  *(v0 + 17872) = _Q0;
  *(v0 + 17696) = _Q0;
  *(v0 + 17712) = _Q0;
  *(v0 + 17728) = _Q0;
  *(v0 + 17744) = _Q0;
  *(v0 + 17760) = _Q0;
  *(v0 + 17776) = _Q0;
  *(v0 + 17600) = _Q0;
  *(v0 + 17616) = _Q0;
  *(v0 + 17632) = _Q0;
  *(v0 + 17648) = _Q0;
  *(v0 + 17664) = _Q0;
  *(v0 + 17680) = _Q0;
  *(v0 + 17520) = _Q0;
  *(v0 + 17536) = _Q0;
  *(v0 + 17552) = _Q0;
  *(v0 + 17568) = _Q0;
  *(v0 + 17584) = _Q0;
  *(v0 + 17216) = xmmword_1BCE3C8C0;
  *(v0 + 17472) = _Q0;
  *(v0 + 17488) = _Q0;
  *(v0 + 17504) = _Q0;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 665496235;
  *(v0 + 17456) = _Q0;
  *(v0 + 19776) = xmmword_1BCE3C8C0;
  *(v0 + 20992) = xmmword_1BCE3C8C0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 17312) = _Q0;
  *(v0 + 17328) = _Q0;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 19840) = 0x3E4CCCCD3F800000;
  *(v0 + 21056) = 0x3E4CCCCD3F800000;
  *(v0 + 17264) = _Q0;
  *(v0 + 17296) = _Q0;
  *(v0 + 20528) = v7;
  *(v0 + 21744) = v7;
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 20560) = xmmword_1BCE3C920;
  *(v0 + 21776) = xmmword_1BCE3C920;
  *(v0 + 20576) = xmmword_1BCE3C930;
  *(v0 + 21792) = xmmword_1BCE3C930;
  *(v0 + 17096) = 1050388079;
  *(v0 + 17120) = _Q0;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 17065) = *v24;
  *(v0 + 17068) = *&v24[3];
  *(v0 + 20592) = xmmword_1BCE3D350;
  *(v0 + 21808) = xmmword_1BCE3D350;
  *(v0 + 20624) = 0x4120000042FA0000;
  *(v0 + 21840) = 0x4120000042FA0000;
  *(v0 + 21856) = xmmword_1BCE3D360;
  *(v0 + 16984) = 0x3FE8000000000000;
  *(v0 + 7568) = _Q0;
  *(v0 + 7584) = _Q0;
  *(v0 + 7600) = _Q0;
  *(v0 + 16848) = _Q0;
  *(v0 + 16864) = _Q0;
  *(v0 + 16752) = _Q0;
  *(v0 + 16768) = _Q0;
  *(v0 + 16784) = _Q0;
  *(v0 + 16800) = _Q0;
  *(v0 + 16816) = _Q0;
  *(v0 + 16832) = _Q0;
  *(v0 + 16656) = _Q0;
  *(v0 + 16672) = _Q0;
  *(v0 + 16688) = _Q0;
  *(v0 + 16704) = _Q0;
  *(v0 + 16720) = _Q0;
  *(v0 + 16736) = _Q0;
  *(v0 + 16560) = _Q0;
  *(v0 + 16576) = _Q0;
  *(v0 + 16592) = _Q0;
  *(v0 + 16608) = _Q0;
  *(v0 + 16624) = _Q0;
  *(v0 + 16640) = _Q0;
  *(v0 + 16464) = _Q0;
  *(v0 + 16480) = _Q0;
  *(v0 + 16496) = _Q0;
  *(v0 + 16512) = _Q0;
  *(v0 + 16528) = _Q0;
  *(v0 + 16544) = _Q0;
  *(v0 + 16368) = _Q0;
  *(v0 + 0x4000) = _Q0;
  *(v0 + 16400) = _Q0;
  *(v0 + 16416) = _Q0;
  *(v0 + 16432) = _Q0;
  *(v0 + 16448) = _Q0;
  *(v0 + 16272) = _Q0;
  *(v0 + 16288) = _Q0;
  *(v0 + 16304) = _Q0;
  *(v0 + 16320) = _Q0;
  *(v0 + 16336) = _Q0;
  *(v0 + 16352) = _Q0;
  *(v0 + 7728) = _Q0;
  *(v0 + 7744) = _Q0;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = _Q0;
  *(v0 + 16256) = _Q0;
  *(v0 + 7760) = _Q0;
  *(v0 + 7776) = _Q0;
  *(v0 + 7792) = _Q0;
  *(v0 + 7808) = _Q0;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 7824) = _Q0;
  *(v0 + 7840) = _Q0;
  *(v0 + 7856) = _Q0;
  *(v0 + 16048) = _Q0;
  *(v0 + 16096) = _Q0;
  *(v0 + 16112) = _Q0;
  *(v0 + 7872) = _Q0;
  *(v0 + 7888) = _Q0;
  *(v0 + 7904) = _Q0;
  *(v0 + 7920) = _Q0;
  *(v0 + 15984) = _Q0;
  *(v0 + 16016) = _Q0;
  *(v0 + 7936) = _Q0;
  *(v0 + 7952) = _Q0;
  *(v0 + 7968) = _Q0;
  *(v0 + 7984) = _Q0;
  *(v0 + 8000) = _Q0;
  *(v0 + 15849) = *v23;
  *(v0 + 15852) = *&v23[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 8016) = _Q0;
  *(v0 + 8032) = _Q0;
  *(v0 + 8048) = _Q0;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 8064) = _Q0;
  *(v0 + 8080) = _Q0;
  *(v0 + 15728) = _Q0;
  *(v0 + 15744) = _Q0;
  *(v0 + 15768) = 0x3FE4CCCCC0000000;
  *(v0 + 8096) = _Q0;
  *(v0 + 8112) = _Q0;
  *(v0 + 8128) = _Q0;
  *(v0 + 15616) = _Q0;
  *(v0 + 15632) = _Q0;
  *(v0 + 15648) = _Q0;
  *(v0 + 15520) = _Q0;
  *(v0 + 15536) = _Q0;
  *(v0 + 15552) = _Q0;
  *(v0 + 15568) = _Q0;
  *(v0 + 15584) = _Q0;
  *(v0 + 15600) = _Q0;
  *(v0 + 15424) = _Q0;
  *(v0 + 15440) = _Q0;
  *(v0 + 15456) = _Q0;
  *(v0 + 15472) = _Q0;
  *(v0 + 15488) = _Q0;
  *(v0 + 15504) = _Q0;
  *(v0 + 15328) = _Q0;
  *(v0 + 15344) = _Q0;
  *(v0 + 15360) = _Q0;
  *(v0 + 15376) = _Q0;
  *(v0 + 15392) = _Q0;
  *(v0 + 15408) = _Q0;
  *(v0 + 15232) = _Q0;
  *(v0 + 15248) = _Q0;
  *(v0 + 15264) = _Q0;
  *(v0 + 15280) = _Q0;
  *(v0 + 15296) = _Q0;
  *(v0 + 15312) = _Q0;
  *(v0 + 15136) = _Q0;
  *(v0 + 15152) = _Q0;
  *(v0 + 15168) = _Q0;
  *(v0 + 15184) = _Q0;
  *(v0 + 15200) = _Q0;
  *(v0 + 15216) = _Q0;
  *(v0 + 8144) = _Q0;
  *(v0 + 15056) = _Q0;
  *(v0 + 15072) = _Q0;
  *(v0 + 15088) = _Q0;
  *(v0 + 15104) = _Q0;
  *(v0 + 15120) = _Q0;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = _Q0;
  *(v0 + 15040) = _Q0;
  *(v0 + 8160) = _Q0;
  *(v0 + 8176) = _Q0;
  *(v0 + 0x2000) = _Q0;
  *(v0 + 8208) = _Q0;
  *(v0 + 8224) = _Q0;
  *(v0 + 14896) = _Q0;
  *(v0 + 8240) = _Q0;
  *(v0 + 8256) = _Q0;
  *(v0 + 14800) = _Q0;
  *(v0 + 14832) = _Q0;
  *(v0 + 14848) = _Q0;
  *(v0 + 14880) = _Q0;
  *(v0 + 8272) = _Q0;
  *(v0 + 8288) = _Q0;
  *(v0 + 8304) = _Q0;
  *(v0 + 14768) = _Q0;
  *(v0 + 14784) = _Q0;
  *(v0 + 8320) = _Q0;
  *(v0 + 8336) = _Q0;
  *(v0 + 8352) = _Q0;
  *(v0 + 14633) = *v22;
  *(v0 + 8432) = _Q0;
  *(v0 + 8448) = _Q0;
  *(v0 + 14636) = *&v22[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 8472) = 0x3FE0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 8553) = *v17;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 8552) = 0;
  *(v0 + 8556) = *&v17[3];
  *(v0 + 14512) = _Q0;
  *(v0 + 14528) = _Q0;
  *(v0 + 14552) = 0x3FE0000000000000;
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = _Q0;
  *(v0 + 14384) = _Q0;
  *(v0 + 14400) = _Q0;
  *(v0 + 14416) = _Q0;
  *(v0 + 14432) = _Q0;
  *(v0 + 14288) = _Q0;
  *(v0 + 14304) = _Q0;
  *(v0 + 14320) = _Q0;
  *(v0 + 14336) = _Q0;
  *(v0 + 14352) = _Q0;
  *(v0 + 14368) = _Q0;
  *(v0 + 14192) = _Q0;
  *(v0 + 14208) = _Q0;
  *(v0 + 14224) = _Q0;
  *(v0 + 14240) = _Q0;
  *(v0 + 14256) = _Q0;
  *(v0 + 14272) = _Q0;
  *(v0 + 14096) = _Q0;
  *(v0 + 14112) = _Q0;
  *(v0 + 14128) = _Q0;
  *(v0 + 14144) = _Q0;
  *(v0 + 14160) = _Q0;
  *(v0 + 14176) = _Q0;
  *(v0 + 14000) = _Q0;
  *(v0 + 14016) = _Q0;
  *(v0 + 14032) = _Q0;
  *(v0 + 14048) = _Q0;
  *(v0 + 14064) = _Q0;
  *(v0 + 14080) = _Q0;
  *(v0 + 13904) = _Q0;
  *(v0 + 13920) = _Q0;
  *(v0 + 13936) = _Q0;
  *(v0 + 13952) = _Q0;
  *(v0 + 13968) = _Q0;
  *(v0 + 13984) = _Q0;
  *(v0 + 8656) = _Q0;
  *(v0 + 13824) = _Q0;
  *(v0 + 13840) = _Q0;
  *(v0 + 13856) = _Q0;
  *(v0 + 13872) = _Q0;
  *(v0 + 13888) = _Q0;
  *(v0 + 8672) = _Q0;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = _Q0;
  *(v0 + 8688) = _Q0;
  *(v0 + 8704) = _Q0;
  *(v0 + 8720) = _Q0;
  *(v0 + 8752) = _Q0;
  *(v0 + 13664) = _Q0;
  *(v0 + 13680) = _Q0;
  *(v0 + 8768) = _Q0;
  *(v0 + 8784) = _Q0;
  *(v0 + 13584) = _Q0;
  *(v0 + 13616) = _Q0;
  *(v0 + 13632) = _Q0;
  *(v0 + 13648) = _Q0;
  *(v0 + 8800) = _Q0;
  *(v0 + 8816) = _Q0;
  *(v0 + 8864) = _Q0;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 13552) = _Q0;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = _Q0;
  *(v0 + 8960) = _Q0;
  *(v0 + 8976) = _Q0;
  *(v0 + 8992) = _Q0;
  *(v0 + 13417) = *v21;
  *(v0 + 13448) = 1060320051;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v21[3];
  *(v0 + 9008) = _Q0;
  *(v0 + 9024) = _Q0;
  *(v0 + 9040) = _Q0;
  *(v0 + 13296) = _Q0;
  *(v0 + 13312) = _Q0;
  *(v0 + 13336) = 0x3FE0000000000000;
  *(v0 + 9056) = _Q0;
  *(v0 + 9072) = _Q0;
  *(v0 + 9088) = _Q0;
  *(v0 + 9104) = _Q0;
  *(v0 + 13200) = _Q0;
  *(v0 + 13216) = _Q0;
  *(v0 + 13104) = _Q0;
  *(v0 + 13120) = _Q0;
  *(v0 + 13136) = _Q0;
  *(v0 + 13152) = _Q0;
  *(v0 + 13168) = _Q0;
  *(v0 + 13184) = _Q0;
  *(v0 + 13008) = _Q0;
  *(v0 + 13024) = _Q0;
  *(v0 + 13040) = _Q0;
  *(v0 + 13056) = _Q0;
  *(v0 + 13072) = _Q0;
  *(v0 + 13088) = _Q0;
  *(v0 + 12912) = _Q0;
  *(v0 + 12928) = _Q0;
  *(v0 + 12944) = _Q0;
  *(v0 + 12960) = _Q0;
  *(v0 + 12976) = _Q0;
  *(v0 + 12992) = _Q0;
  *(v0 + 12816) = _Q0;
  *(v0 + 12832) = _Q0;
  *(v0 + 12848) = _Q0;
  *(v0 + 12864) = _Q0;
  *(v0 + 12880) = _Q0;
  *(v0 + 12896) = _Q0;
  *(v0 + 12720) = _Q0;
  *(v0 + 12736) = _Q0;
  *(v0 + 12752) = _Q0;
  *(v0 + 12768) = _Q0;
  *(v0 + 12784) = _Q0;
  *(v0 + 12800) = _Q0;
  *(v0 + 12624) = _Q0;
  *(v0 + 12640) = _Q0;
  *(v0 + 12656) = _Q0;
  *(v0 + 12672) = _Q0;
  *(v0 + 12688) = _Q0;
  *(v0 + 12704) = _Q0;
  *(v0 + 9120) = _Q0;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = _Q0;
  *(v0 + 12608) = _Q0;
  *(v0 + 9136) = _Q0;
  *(v0 + 9152) = _Q0;
  *(v0 + 9168) = _Q0;
  *(v0 + 12464) = _Q0;
  *(v0 + 12496) = _Q0;
  *(v0 + 12512) = _Q0;
  *(v0 + 9184) = _Q0;
  *(v0 + 12368) = _Q0;
  *(v0 + 12400) = _Q0;
  *(v0 + 12416) = _Q0;
  *(v0 + 12432) = _Q0;
  *(v0 + 12448) = _Q0;
  *(v0 + 9200) = _Q0;
  *(v0 + 12288) = _Q0;
  *(v0 + 12304) = _Q0;
  *(v0 + 12320) = _Q0;
  *(v0 + 12336) = _Q0;
  *(v0 + 12352) = _Q0;
  *(v0 + 9216) = _Q0;
  *(v0 + 9232) = _Q0;
  *(v0 + 9248) = _Q0;
  *(v0 + 9264) = _Q0;
  *(v0 + 9280) = _Q0;
  *(v0 + 12201) = *v20;
  *(v0 + 12204) = *&v20[3];
  *(v0 + 12232) = 1061158912;
  *(v0 + 9296) = _Q0;
  *(v0 + 9312) = _Q0;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 9328) = _Q0;
  *(v0 + 9344) = _Q0;
  *(v0 + 9360) = _Q0;
  *(v0 + 12080) = _Q0;
  *(v0 + 12096) = _Q0;
  *(v0 + 12120) = 0x3FE0000000000000;
  *(v0 + 9376) = _Q0;
  *(v0 + 9392) = _Q0;
  *(v0 + 11952) = _Q0;
  *(v0 + 11968) = _Q0;
  *(v0 + 11984) = _Q0;
  *(v0 + 12000) = _Q0;
  *(v0 + 11856) = _Q0;
  *(v0 + 11872) = _Q0;
  *(v0 + 11888) = _Q0;
  *(v0 + 11904) = _Q0;
  *(v0 + 11920) = _Q0;
  *(v0 + 11936) = _Q0;
  *(v0 + 11760) = _Q0;
  *(v0 + 11776) = _Q0;
  *(v0 + 11792) = _Q0;
  *(v0 + 11808) = _Q0;
  *(v0 + 11824) = _Q0;
  *(v0 + 11840) = _Q0;
  *(v0 + 11664) = _Q0;
  *(v0 + 11680) = _Q0;
  *(v0 + 11696) = _Q0;
  *(v0 + 11712) = _Q0;
  *(v0 + 11728) = _Q0;
  *(v0 + 11744) = _Q0;
  *(v0 + 11568) = _Q0;
  *(v0 + 11584) = _Q0;
  *(v0 + 11600) = _Q0;
  *(v0 + 11616) = _Q0;
  *(v0 + 11632) = _Q0;
  *(v0 + 11648) = _Q0;
  *(v0 + 11472) = _Q0;
  *(v0 + 11488) = _Q0;
  *(v0 + 11504) = _Q0;
  *(v0 + 11520) = _Q0;
  *(v0 + 11536) = _Q0;
  *(v0 + 11552) = _Q0;
  *(v0 + 11376) = _Q0;
  *(v0 + 11392) = _Q0;
  *(v0 + 11408) = _Q0;
  *(v0 + 11424) = _Q0;
  *(v0 + 11440) = _Q0;
  *(v0 + 11456) = _Q0;
  *(v0 + 9408) = _Q0;
  *(v0 + 9424) = _Q0;
  *(v0 + 9440) = _Q0;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 9456) = _Q0;
  *(v0 + 9472) = _Q0;
  *(v0 + 9488) = _Q0;
  *(v0 + 11216) = _Q0;
  *(v0 + 11232) = _Q0;
  *(v0 + 11296) = _Q0;
  *(v0 + 9504) = _Q0;
  *(v0 + 11120) = _Q0;
  *(v0 + 11136) = _Q0;
  *(v0 + 11152) = _Q0;
  *(v0 + 11184) = _Q0;
  *(v0 + 11200) = _Q0;
  *(v0 + 9520) = _Q0;
  *(v0 + 9536) = _Q0;
  *(v0 + 9552) = _Q0;
  *(v0 + 9568) = _Q0;
  *(v0 + 9648) = _Q0;
  *(v0 + 9664) = _Q0;
  *(v0 + 9688) = 0x3FD9999980000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 11016) = 1061997773;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10985) = *v19;
  *(v0 + 9769) = *v18;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10988) = *&v19[3];
  *(v0 + 9768) = 0;
  *(v0 + 9772) = *&v18[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 10904) = 0x3FE0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 9904) = _Q0;
  *(v0 + 9920) = _Q0;
  *(v0 + 9936) = _Q0;
  *(v0 + 9968) = _Q0;
  *(v0 + 10864) = _Q0;
  *(v0 + 10880) = _Q0;
  *(v0 + 10704) = _Q0;
  *(v0 + 10720) = _Q0;
  *(v0 + 10736) = _Q0;
  *(v0 + 10752) = _Q0;
  *(v0 + 10768) = _Q0;
  *(v0 + 10784) = _Q0;
  *(v0 + 10608) = _Q0;
  *(v0 + 10624) = _Q0;
  *(v0 + 10640) = _Q0;
  *(v0 + 10656) = _Q0;
  *(v0 + 10672) = _Q0;
  *(v0 + 10688) = _Q0;
  *(v0 + 10512) = _Q0;
  *(v0 + 10528) = _Q0;
  *(v0 + 10544) = _Q0;
  *(v0 + 10560) = _Q0;
  *(v0 + 10576) = _Q0;
  *(v0 + 10592) = _Q0;
  *(v0 + 10416) = _Q0;
  *(v0 + 10432) = _Q0;
  *(v0 + 10448) = _Q0;
  *(v0 + 10464) = _Q0;
  *(v0 + 10480) = _Q0;
  *(v0 + 10496) = _Q0;
  *(v0 + 10320) = _Q0;
  *(v0 + 10336) = _Q0;
  *(v0 + 10352) = _Q0;
  *(v0 + 10368) = _Q0;
  *(v0 + 10384) = _Q0;
  *(v0 + 10400) = _Q0;
  *(v0 + 10224) = _Q0;
  *(v0 + 10240) = _Q0;
  *(v0 + 10256) = _Q0;
  *(v0 + 10272) = _Q0;
  *(v0 + 10288) = _Q0;
  *(v0 + 10304) = _Q0;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = _Q0;
  *(v0 + 10176) = _Q0;
  *(v0 + 10192) = _Q0;
  *(v0 + 10208) = _Q0;
  *(v0 + 9984) = _Q0;
  *(v0 + 10000) = _Q0;
  *(v0 + 10016) = _Q0;
  *(v0 + 10032) = _Q0;
  *(v0 + 10080) = _Q0;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 18336) = _Q0;
  *(v0 + 18400) = _Q0;
  *(v0 + 18480) = _Q0;
  *(v0 + 18496) = _Q0;
  *(v0 + 18640) = _Q0;
  *(v0 + 18672) = _Q0;
  *(v0 + 18688) = _Q0;
  *(v0 + 18704) = _Q0;
  *(v0 + 18720) = _Q0;
  *(v0 + 18736) = _Q0;
  *(v0 + 18752) = _Q0;
  *(v0 + 18768) = _Q0;
  *(v0 + 18784) = _Q0;
  *(v0 + 18800) = _Q0;
  *(v0 + 18816) = _Q0;
  *(v0 + 18832) = _Q0;
  *(v0 + 18848) = _Q0;
  *(v0 + 18864) = _Q0;
  *(v0 + 18880) = _Q0;
  *(v0 + 18896) = _Q0;
  *(v0 + 18912) = _Q0;
  *(v0 + 18928) = _Q0;
  *(v0 + 18944) = _Q0;
  *(v0 + 18960) = _Q0;
  *(v0 + 18976) = _Q0;
  *(v0 + 18992) = _Q0;
  *(v0 + 19008) = _Q0;
  *(v0 + 19024) = _Q0;
  *(v0 + 19040) = _Q0;
  *(v0 + 19056) = _Q0;
  *(v0 + 19072) = _Q0;
  *(v0 + 19088) = _Q0;
  *(v0 + 19104) = _Q0;
  *(v0 + 19120) = _Q0;
  *(v0 + 19136) = _Q0;
  *(v0 + 19152) = _Q0;
  *(v0 + 19168) = _Q0;
  *(v0 + 19184) = _Q0;
  *(v0 + 19200) = _Q0;
  *(v0 + 19216) = _Q0;
  *(v0 + 19232) = _Q0;
  *(v0 + 19248) = _Q0;
  *(v0 + 19264) = _Q0;
  *(v0 + 19280) = _Q0;
  *(v0 + 19296) = _Q0;
  *(v0 + 19392) = _Q0;
  *(v0 + 19696) = _Q0;
  *(v0 + 19728) = _Q0;
  *(v0 + 19744) = _Q0;
  *(v0 + 19760) = _Q0;
  *(v0 + 19808) = _Q0;
  *(v0 + 19856) = _Q0;
  *(v0 + 19888) = _Q0;
  *(v0 + 19904) = _Q0;
  *(v0 + 19920) = _Q0;
  *(v0 + 19936) = _Q0;
  *(v0 + 19952) = _Q0;
  *(v0 + 19968) = _Q0;
  *(v0 + 19984) = _Q0;
  *(v0 + 20000) = _Q0;
  *(v0 + 20016) = _Q0;
  *(v0 + 20032) = _Q0;
  *(v0 + 20048) = _Q0;
  *(v0 + 20064) = _Q0;
  *(v0 + 20080) = _Q0;
  *(v0 + 20096) = _Q0;
  *(v0 + 20112) = _Q0;
  *(v0 + 20128) = _Q0;
  *(v0 + 20144) = _Q0;
  *(v0 + 20160) = _Q0;
  *(v0 + 20176) = _Q0;
  *(v0 + 20192) = _Q0;
  *(v0 + 20208) = _Q0;
  *(v0 + 20224) = _Q0;
  *(v0 + 20240) = _Q0;
  *(v0 + 20256) = _Q0;
  *(v0 + 20272) = _Q0;
  *(v0 + 20288) = _Q0;
  *(v0 + 20304) = _Q0;
  *(v0 + 20320) = _Q0;
  *(v0 + 20336) = _Q0;
  *(v0 + 20352) = _Q0;
  *(v0 + 20368) = _Q0;
  *(v0 + 20384) = _Q0;
  *(v0 + 20400) = _Q0;
  *(v0 + 20416) = _Q0;
  *(v0 + 20432) = _Q0;
  *(v0 + 20448) = _Q0;
  *(v0 + 20464) = _Q0;
  *(v0 + 20480) = _Q0;
  *(v0 + 20496) = _Q0;
  *(v0 + 20512) = _Q0;
  *(v0 + 20608) = _Q0;
  *(v0 + 20656) = _Q0;
  *(v0 + 20912) = _Q0;
  *(v0 + 20944) = _Q0;
  *(v0 + 20960) = _Q0;
  *(v0 + 20976) = _Q0;
  *(v0 + 21024) = _Q0;
  *(v0 + 21072) = _Q0;
  *(v0 + 21104) = _Q0;
  *(v0 + 21120) = _Q0;
  *(v0 + 21136) = _Q0;
  *(v0 + 21152) = _Q0;
  *(v0 + 21168) = _Q0;
  *(v0 + 21184) = _Q0;
  *(v0 + 21200) = _Q0;
  *(v0 + 21216) = _Q0;
  *(v0 + 21232) = _Q0;
  *(v0 + 21248) = _Q0;
  *(v0 + 21264) = _Q0;
  *(v0 + 21280) = _Q0;
  *(v0 + 21296) = _Q0;
  *(v0 + 21312) = _Q0;
  *(v0 + 21328) = _Q0;
  *(v0 + 21344) = _Q0;
  *(v0 + 21360) = _Q0;
  *(v0 + 21376) = _Q0;
  *(v0 + 21392) = _Q0;
  *(v0 + 21408) = _Q0;
  *(v0 + 21424) = _Q0;
  *(v0 + 21440) = _Q0;
  *(v0 + 21456) = _Q0;
  *(v0 + 21472) = _Q0;
  *(v0 + 21488) = _Q0;
  *(v0 + 21504) = _Q0;
  *(v0 + 21520) = _Q0;
  *(v0 + 21536) = _Q0;
  *(v0 + 21552) = _Q0;
  *(v0 + 21568) = _Q0;
  *(v0 + 21584) = _Q0;
  *(v0 + 21600) = _Q0;
  *(v0 + 21616) = _Q0;
  *(v0 + 21632) = _Q0;
  *(v0 + 21648) = _Q0;
  *(v0 + 21664) = _Q0;
  *(v0 + 21680) = _Q0;
  *(v0 + 21696) = _Q0;
  *(v0 + 21712) = _Q0;
  *(v0 + 21728) = _Q0;
  *(v0 + 21824) = _Q0;
  *(v0 + 21872) = _Q0;
  result = 0.799999952;
  *(v0 + 21888) = xmmword_1BCE3D370;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FE99999A0000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v25;
  *(v0 + 18284) = *&v25[3];
  *(v0 + 18312) = 1036831949;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FE93332C0000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v26;
  *(v0 + 19500) = *&v26[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FEB89F0C0000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v27;
  *(v0 + 20716) = *&v27[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FEB89F080000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

void sub_1BCC6EDFC(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA0FF88();
  v4 = v3;
  sub_1BCA0FF88();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 2;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC348000000000000;
  *(a1 + 80) = xmmword_1BCE3EB50;
  *(a1 + 96) = xmmword_1BCE499E0;
  *(a1 + 112) = 0x3E3333333E24DD2FLL;
  *(a1 + 128) = xmmword_1BCE3E650;
  *(a1 + 144) = xmmword_1BCE3E660;
  *(a1 + 160) = xmmword_1BCE3E670;
  *(a1 + 176) = 1168891904;
  *(a1 + 184) = 0x3E3439583DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3E680;
  *(a1 + 208) = xmmword_1BCE3E690;
  *(a1 + 224) = xmmword_1BCE3E6A0;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F6666663F333333;
  *(a1 + 720) = vdup_n_s32(0x41827AE1u);
  *(a1 + 728) = 1086324736;
  *(a1 + 736) = 1;
  *(a1 + 744) = 5;
  *(a1 + 752) = xmmword_1BCE53B20;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 10;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F8000003F666666;
  *(a1 + 848) = vdup_n_s32(0x40FA3D71u);
  *(a1 + 856) = 1075838976;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE5C2C0;
  *(a1 + 896) = 0x2073757461727453;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73757461727453;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 9;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F4CCCCDLL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 3221225472;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 1084503840;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE5C2D0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0xD000000000000010;
  *(a1 + 1248) = 0x80000001BCE798A0;
  *(a1 + 1256) = 0xD000000000000015;
  *(a1 + 1264) = 0x80000001BCE798C0;
  *(a1 + 1272) = 6;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE49A20;
  *(a1 + 1568) = 0x42CFE66642A8E147;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3E6F0;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 16777472;
  *(a1 + 1638) = 0;
  *(a1 + 1632) = 0;
  *(v2 + 210) = 16843009;
  *(a1 + 1650) = 0;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 10;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x40C4CCCD40000000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E19999A3D4CCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4090000040800000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1051169383;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

void sub_1BCC6F630(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCC6FDB0();
  v4 = v3;
  sub_1BCC71D94();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3D4800000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3AC49BA63F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3C680;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3E4CCCCD3E3851ECLL;
  *(a1 + 720) = 0x41A0000041600000;
  *(a1 + 728) = 1102714503;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3C6C0;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79320;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79340;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3E99999A3E800000;
  *(a1 + 848) = 0x41BFD70A41900000;
  *(a1 + 856) = 0xBFFCED9141349DF0;
  *(a1 + 864) = 1;
  *(a1 + 872) = 3;
  *(a1 + 880) = xmmword_1BCE3C6E0;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF4C202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE798E0;
  *(a1 + 928) = 9;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3ECCCCCD3E99999ALL;
  *(a1 + 976) = 0x41999999417947AELL;
  *(a1 + 984) = 1077621264;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 3;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF53202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE792E0;
  *(a1 + 1056) = 9;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V4.2S, #3.25 }

  *(a1 + 1104) = _D4;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3C710;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE3E540;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(v2 + 198) = 0x1000101010001;
  *(v2 + 206) = 0x10000;
  *(a1 + 1646) = 1;
  *(a1 + 1648) = 16843009;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 1;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C7B0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3C7D0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417D020C3F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE3C7F0;
  *(a1 + 2240) = xmmword_1BCE3C800;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

__n128 sub_1BCC6FDB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3C830;
  *(v0 + 64) = 0x432A000042480000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE45B80;
  *(v0 + 96) = xmmword_1BCE3D340;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE3C8A0;
  *(v0 + 192) = xmmword_1BCE3C8B0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 208) = result;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = xmmword_1BCE3C8C0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = result;
  *(v0 + 368) = xmmword_1BCE3C900;
  *(v0 + 384) = 0x3F3333333F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = result;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = result;
  *(v0 + 448) = result;
  *(v0 + 464) = result;
  *(v0 + 480) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 624) = result;
  *(v0 + 640) = result;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 704) = result;
  *(v0 + 720) = result;
  *(v0 + 736) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 1008) = result;
  *(v0 + 1024) = result;
  *(v0 + 1040) = result;
  *(v0 + 1056) = result;
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1168) = 0x4170000000000000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v9;
  *(v0 + 1260) = *&v9[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000042480000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE3C8A0;
  *(v0 + 1408) = xmmword_1BCE3C8B0;
  *(v0 + 1424) = result;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = xmmword_1BCE3C8C0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = result;
  *(v0 + 1584) = xmmword_1BCE3C900;
  *(v0 + 1600) = 0x3F3333333F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = result;
  *(v0 + 1664) = result;
  *(v0 + 1680) = result;
  *(v0 + 1696) = result;
  *(v0 + 1712) = result;
  *(v0 + 1728) = result;
  *(v0 + 1744) = result;
  *(v0 + 1760) = result;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 1824) = result;
  *(v0 + 1840) = result;
  *(v0 + 1856) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1920) = result;
  *(v0 + 1936) = result;
  *(v0 + 1952) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 2208) = result;
  *(v0 + 2224) = result;
  *(v0 + 2240) = result;
  *(v0 + 2256) = result;
  *(v0 + 2272) = result;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 2384) = 0x4170000000000000;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v10;
  *(v0 + 2476) = *&v10[3];
  *(v0 + 2480) = xmmword_1BCE3C780;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = result;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = result;
  *(v0 + 2608) = xmmword_1BCE3C9B0;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2640) = result;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  *(v0 + 2816) = 0x3F3333333F4CCCCDLL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = result;
  *(v0 + 2880) = result;
  *(v0 + 2896) = result;
  *(v0 + 2912) = result;
  *(v0 + 2928) = result;
  *(v0 + 2944) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3008) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 3056) = result;
  *(v0 + 3072) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000000000000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v11;
  *(v0 + 3692) = *&v11[3];
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 4704) = result;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v12;
  *(v0 + 4908) = *&v12[3];
  *(v0 + 4936) = 1061997773;
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000000000000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4656) = result;
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4272) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 4208) = result;
  *(v0 + 3952) = result;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  *(v0 + 4112) = result;
  *(v0 + 4128) = result;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 4048) = xmmword_1BCE3CAF0;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FEFBFBFC0000000;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4016) = xmmword_1BCE3CAE0;
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3888) = result;
  *(v0 + 3904) = result;
  *(v0 + 3920) = result;
  *(v0 + 3936) = result;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = result;
  *(v0 + 3856) = result;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 3824) = xmmword_1BCE3CAB0;
  *(v0 + 3840) = xmmword_1BCE3CAC0;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE45B90;
  *(v0 + 5024) = xmmword_1BCE45BA0;
  *(v0 + 5040) = result;
  *(v0 + 5056) = xmmword_1BCE3CBA0;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5152) = result;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5232) = xmmword_1BCE3CC00;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = result;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = result;
  *(v0 + 5312) = result;
  *(v0 + 5328) = result;
  *(v0 + 5344) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5488) = result;
  *(v0 + 5504) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000000000000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v13;
  *(v0 + 6124) = *&v13[3];
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6152) = 1060739482;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 6368) = result;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6448) = xmmword_1BCE3CCF0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE45BB0;
  *(v0 + 7440) = xmmword_1BCE45BC0;
  *(v0 + 7552) = result;
  *(v0 + 7456) = xmmword_1BCE3DEF0;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7664) = xmmword_1BCE3CDB0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1148846080;
  *(v0 + 11008) = 1148846080;
  *(v0 + 8624) = xmmword_1BCE44780;
  *(v0 + 9840) = xmmword_1BCE44780;
  *(v0 + 11056) = xmmword_1BCE44780;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 9856) = xmmword_1BCE3C9D0;
  *(v0 + 11072) = xmmword_1BCE3C9D0;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  v6 = vdupq_n_s32(0x3F666666u);
  *(v0 + 8880) = v6;
  *(v0 + 10096) = v6;
  *(v0 + 11312) = v6;
  *(v0 + 10816) = xmmword_1BCE447D0;
  *(v0 + 12032) = xmmword_1BCE447D0;
  *(v0 + 10800) = xmmword_1BCE447C0;
  *(v0 + 10832) = xmmword_1BCE447C0;
  *(v0 + 12016) = xmmword_1BCE447C0;
  *(v0 + 12048) = xmmword_1BCE447C0;
  *(v0 + 10848) = xmmword_1BCE447E0;
  *(v0 + 12064) = xmmword_1BCE447E0;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A00000447A0000;
  *(v0 + 12224) = 0x41A00000447A0000;
  v7 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = v7;
  *(v0 + 8592) = v7;
  *(v0 + 9808) = v7;
  *(v0 + 11024) = v7;
  *(v0 + 12240) = v7;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 12528) = xmmword_1BCE3CEF0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 9600) = xmmword_1BCE447A0;
  *(v0 + 13248) = xmmword_1BCE447A0;
  *(v0 + 9584) = xmmword_1BCE44790;
  *(v0 + 9616) = xmmword_1BCE44790;
  *(v0 + 13232) = xmmword_1BCE44790;
  *(v0 + 13264) = xmmword_1BCE44790;
  *(v0 + 9632) = xmmword_1BCE447B0;
  *(v0 + 13280) = xmmword_1BCE447B0;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 6400) = xmmword_1BCE3CCC0;
  *(v0 + 7616) = xmmword_1BCE3CCC0;
  *(v0 + 8832) = xmmword_1BCE3CCC0;
  *(v0 + 10048) = xmmword_1BCE3CCC0;
  *(v0 + 12480) = xmmword_1BCE3CCC0;
  *(v0 + 13696) = xmmword_1BCE3CCC0;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13744) = xmmword_1BCE3CF70;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 6384) = xmmword_1BCE3CCB0;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = result;
  *(v0 + 6528) = result;
  *(v0 + 6544) = result;
  *(v0 + 6560) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6720) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v14;
  *(v0 + 7340) = *&v14[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 7536) = result;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14896) = xmmword_1BCE3D020;
  *(v0 + 14912) = xmmword_1BCE3D030;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14960) = xmmword_1BCE3D050;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 16000) = xmmword_1BCE3CBA0;
  *(v0 + 7600) = xmmword_1BCE3CCB0;
  *(v0 + 8816) = xmmword_1BCE3CCB0;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 12464) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16112) = xmmword_1BCE3D120;
  *(v0 + 16128) = xmmword_1BCE3D130;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 16176) = xmmword_1BCE3D140;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D445C8321;
  *(v0 + 17104) = xmmword_1BCE3D1A0;
  *(v0 + 17120) = xmmword_1BCE3D1B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE3D200;
  *(v0 + 17216) = xmmword_1BCE3CAC0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE3D210;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3C780;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3D270;
  *(v0 + 18352) = xmmword_1BCE3D280;
  *(v0 + 18368) = xmmword_1BCE3D290;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18416) = xmmword_1BCE3D2A0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3D2D0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = 0x3F3333333F4CCCCDLL;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19632) = xmmword_1BCE3E590;
  __asm { FMOV            V25.2D, #0.25 }

  *(v0 + 20528) = _Q25;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 19504) = xmmword_1BCE3C830;
  *(v0 + 20720) = xmmword_1BCE3C830;
  *(v0 + 19520) = 0x432A000042480000;
  *(v0 + 20736) = 0x432A000042480000;
  *(v0 + 19536) = xmmword_1BCE3C840;
  *(v0 + 20752) = xmmword_1BCE3C840;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 20848) = xmmword_1BCE3C8A0;
  *(v0 + 19648) = xmmword_1BCE3C8B0;
  *(v0 + 20864) = xmmword_1BCE3C8B0;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12384) = xmmword_1BCE3C8C0;
  *(v0 + 13600) = xmmword_1BCE3C8C0;
  *(v0 + 14816) = xmmword_1BCE3C8C0;
  *(v0 + 16032) = xmmword_1BCE3C8C0;
  *(v0 + 17248) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 18432) = xmmword_1BCE3C8C0;
  *(v0 + 18464) = xmmword_1BCE3C8C0;
  *(v0 + 18560) = xmmword_1BCE3C8C0;
  *(v0 + 19680) = xmmword_1BCE3C8C0;
  *(v0 + 19776) = xmmword_1BCE3C8C0;
  *(v0 + 20896) = xmmword_1BCE3C8C0;
  *(v0 + 20992) = xmmword_1BCE3C8C0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 19840) = 0x3F3333333F800000;
  *(v0 + 21056) = 0x3F3333333F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 18192) = 0x4170000000000000;
  *(v0 + 19408) = 0x4170000000000000;
  *(v0 + 20624) = 0x4170000000000000;
  *(v0 + 21840) = 0x4170000000000000;
  *(v0 + 7568) = result;
  *(v0 + 7584) = result;
  *(v0 + 7728) = result;
  *(v0 + 7744) = result;
  *(v0 + 7760) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 18080) = result;
  *(v0 + 17984) = result;
  *(v0 + 18000) = result;
  *(v0 + 18016) = result;
  *(v0 + 18032) = result;
  *(v0 + 18048) = result;
  *(v0 + 18064) = result;
  *(v0 + 17888) = result;
  *(v0 + 17904) = result;
  *(v0 + 17920) = result;
  *(v0 + 17936) = result;
  *(v0 + 17952) = result;
  *(v0 + 17968) = result;
  *(v0 + 17792) = result;
  *(v0 + 17808) = result;
  *(v0 + 17824) = result;
  *(v0 + 17840) = result;
  *(v0 + 17856) = result;
  *(v0 + 17872) = result;
  *(v0 + 17696) = result;
  *(v0 + 17712) = result;
  *(v0 + 17728) = result;
  *(v0 + 17744) = result;
  *(v0 + 17760) = result;
  *(v0 + 17776) = result;
  *(v0 + 17600) = result;
  *(v0 + 17616) = result;
  *(v0 + 17632) = result;
  *(v0 + 17648) = result;
  *(v0 + 17664) = result;
  *(v0 + 17680) = result;
  *(v0 + 17504) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 17488) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 665496235;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 8048) = result;
  *(v0 + 17296) = result;
  *(v0 + 17312) = result;
  *(v0 + 17328) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 17232) = result;
  *(v0 + 17264) = result;
  *(v0 + 17280) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 16992) = result;
  *(v0 + 17065) = *v22;
  *(v0 + 17068) = *&v22[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 17008) = result;
  *(v0 + 17024) = result;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 8288) = result;
  *(v0 + 8304) = result;
  *(v0 + 16816) = result;
  *(v0 + 16832) = result;
  *(v0 + 16848) = result;
  *(v0 + 16864) = result;
  *(v0 + 16720) = result;
  *(v0 + 16736) = result;
  *(v0 + 16752) = result;
  *(v0 + 16768) = result;
  *(v0 + 16784) = result;
  *(v0 + 16800) = result;
  *(v0 + 16624) = result;
  *(v0 + 16640) = result;
  *(v0 + 16656) = result;
  *(v0 + 16672) = result;
  *(v0 + 16688) = result;
  *(v0 + 16704) = result;
  *(v0 + 16528) = result;
  *(v0 + 16544) = result;
  *(v0 + 16560) = result;
  *(v0 + 16576) = result;
  *(v0 + 16592) = result;
  *(v0 + 16608) = result;
  *(v0 + 16432) = result;
  *(v0 + 16448) = result;
  *(v0 + 16464) = result;
  *(v0 + 16480) = result;
  *(v0 + 16496) = result;
  *(v0 + 16512) = result;
  *(v0 + 16336) = result;
  *(v0 + 16352) = result;
  *(v0 + 16368) = result;
  *(v0 + 0x4000) = result;
  *(v0 + 16400) = result;
  *(v0 + 16416) = result;
  *(v0 + 8320) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 16320) = result;
  *(v0 + 8336) = result;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = result;
  *(v0 + 8352) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8480) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 16064) = result;
  *(v0 + 16096) = result;
  *(v0 + 8553) = *v15;
  *(v0 + 16016) = result;
  *(v0 + 16048) = result;
  *(v0 + 8552) = 0;
  *(v0 + 8556) = *&v15[3];
  *(v0 + 8584) = 1061158912;
  *(v0 + 15984) = result;
  *(v0 + 8640) = result;
  *(v0 + 8656) = result;
  *(v0 + 8672) = result;
  *(v0 + 8688) = result;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v21;
  *(v0 + 15852) = *&v21[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 15808) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 8704) = result;
  *(v0 + 8720) = result;
  *(v0 + 8752) = result;
  *(v0 + 8768) = result;
  *(v0 + 15728) = result;
  *(v0 + 15744) = result;
  *(v0 + 8784) = result;
  *(v0 + 15584) = result;
  *(v0 + 15600) = result;
  *(v0 + 15616) = result;
  *(v0 + 15632) = result;
  *(v0 + 15648) = result;
  *(v0 + 15488) = result;
  *(v0 + 15504) = result;
  *(v0 + 15520) = result;
  *(v0 + 15536) = result;
  *(v0 + 15552) = result;
  *(v0 + 15568) = result;
  *(v0 + 15392) = result;
  *(v0 + 15408) = result;
  *(v0 + 15424) = result;
  *(v0 + 15440) = result;
  *(v0 + 15456) = result;
  *(v0 + 15472) = result;
  *(v0 + 15296) = result;
  *(v0 + 15312) = result;
  *(v0 + 15328) = result;
  *(v0 + 15344) = result;
  *(v0 + 15360) = result;
  *(v0 + 15376) = result;
  *(v0 + 15200) = result;
  *(v0 + 15216) = result;
  *(v0 + 15232) = result;
  *(v0 + 15248) = result;
  *(v0 + 15264) = result;
  *(v0 + 15280) = result;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 15136) = result;
  *(v0 + 15152) = result;
  *(v0 + 15168) = result;
  *(v0 + 15184) = result;
  *(v0 + 8800) = result;
  *(v0 + 15024) = result;
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 15072) = result;
  *(v0 + 15088) = result;
  *(v0 + 8864) = result;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
  *(v0 + 14880) = result;
  *(v0 + 8976) = result;
  *(v0 + 8992) = result;
  *(v0 + 14784) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 14848) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
  *(v0 + 9072) = result;
  *(v0 + 14768) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14633) = *v20;
  *(v0 + 14636) = *&v20[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 9120) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 9136) = result;
  *(v0 + 9152) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 14512) = result;
  *(v0 + 14528) = result;
  *(v0 + 14352) = result;
  *(v0 + 14368) = result;
  *(v0 + 14384) = result;
  *(v0 + 14400) = result;
  *(v0 + 14416) = result;
  *(v0 + 14432) = result;
  *(v0 + 14256) = result;
  *(v0 + 14272) = result;
  *(v0 + 14288) = result;
  *(v0 + 14304) = result;
  *(v0 + 14320) = result;
  *(v0 + 14336) = result;
  *(v0 + 14160) = result;
  *(v0 + 14176) = result;
  *(v0 + 14192) = result;
  *(v0 + 14208) = result;
  *(v0 + 14224) = result;
  *(v0 + 14240) = result;
  *(v0 + 14064) = result;
  *(v0 + 14080) = result;
  *(v0 + 14096) = result;
  *(v0 + 14112) = result;
  *(v0 + 14128) = result;
  *(v0 + 14144) = result;
  *(v0 + 13968) = result;
  *(v0 + 13984) = result;
  *(v0 + 14000) = result;
  *(v0 + 14016) = result;
  *(v0 + 14032) = result;
  *(v0 + 14048) = result;
  *(v0 + 13872) = result;
  *(v0 + 13888) = result;
  *(v0 + 13904) = result;
  *(v0 + 13920) = result;
  *(v0 + 13936) = result;
  *(v0 + 13952) = result;
  *(v0 + 9200) = result;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 13856) = result;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 9248) = result;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 13632) = result;
  *(v0 + 13648) = result;
  *(v0 + 13664) = result;
  *(v0 + 13680) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 13552) = result;
  *(v0 + 13568) = result;
  *(v0 + 13584) = result;
  *(v0 + 13616) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 13416) = 1;
  *(v0 + 13417) = *v19;
  *(v0 + 13420) = *&v19[3];
  *(v0 + 13448) = 1060320051;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 13296) = result;
  *(v0 + 13312) = result;
  *(v0 + 9520) = result;
  *(v0 + 13152) = result;
  *(v0 + 13168) = result;
  *(v0 + 13184) = result;
  *(v0 + 13200) = result;
  *(v0 + 13216) = result;
  *(v0 + 13056) = result;
  *(v0 + 13072) = result;
  *(v0 + 13088) = result;
  *(v0 + 13104) = result;
  *(v0 + 13120) = result;
  *(v0 + 13136) = result;
  *(v0 + 12960) = result;
  *(v0 + 12976) = result;
  *(v0 + 12992) = result;
  *(v0 + 13008) = result;
  *(v0 + 13024) = result;
  *(v0 + 13040) = result;
  *(v0 + 12864) = result;
  *(v0 + 12880) = result;
  *(v0 + 12896) = result;
  *(v0 + 12912) = result;
  *(v0 + 12928) = result;
  *(v0 + 12944) = result;
  *(v0 + 12768) = result;
  *(v0 + 12784) = result;
  *(v0 + 12800) = result;
  *(v0 + 12816) = result;
  *(v0 + 12832) = result;
  *(v0 + 12848) = result;
  *(v0 + 12672) = result;
  *(v0 + 12688) = result;
  *(v0 + 12704) = result;
  *(v0 + 12720) = result;
  *(v0 + 12736) = result;
  *(v0 + 12752) = result;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = result;
  *(v0 + 12608) = result;
  *(v0 + 12624) = result;
  *(v0 + 12640) = result;
  *(v0 + 12656) = result;
  *(v0 + 9536) = result;
  *(v0 + 9552) = result;
  *(v0 + 9568) = result;
  *(v0 + 12512) = result;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 12416) = result;
  *(v0 + 12432) = result;
  *(v0 + 12448) = result;
  *(v0 + 12496) = result;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 12320) = result;
  *(v0 + 12336) = result;
  *(v0 + 12352) = result;
  *(v0 + 12368) = result;
  *(v0 + 12400) = result;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 12288) = result;
  *(v0 + 12304) = result;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 12201) = *v18;
  *(v0 + 12204) = *&v18[3];
  *(v0 + 12232) = 1061158912;
  *(v0 + 9768) = 0;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 9769) = *v16;
  *(v0 + 12096) = result;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 9772) = *&v16[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = result;
  *(v0 + 9920) = result;
  *(v0 + 12000) = result;
  *(v0 + 12080) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11984) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11696) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11600) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 9936) = result;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 9968) = result;
  *(v0 + 9984) = result;
  *(v0 + 10000) = result;
  *(v0 + 10016) = result;
  *(v0 + 11296) = result;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 10080) = result;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 11232) = result;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 11120) = result;
  *(v0 + 11136) = result;
  *(v0 + 11152) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10240) = result;
  *(v0 + 10985) = *v17;
  *(v0 + 10988) = *&v17[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10288) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10304) = result;
  *(v0 + 10320) = result;
  *(v0 + 10736) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10720) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10624) = result;
  *(v0 + 10448) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10528) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10432) = result;
  *(v0 + 10336) = result;
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
  *(v0 + 18448) = result;
  *(v0 + 18480) = result;
  *(v0 + 18496) = result;
  *(v0 + 18640) = result;
  *(v0 + 18672) = result;
  *(v0 + 18688) = result;
  *(v0 + 18704) = result;
  *(v0 + 18720) = result;
  *(v0 + 18736) = result;
  *(v0 + 18752) = result;
  *(v0 + 18768) = result;
  *(v0 + 18784) = result;
  *(v0 + 18800) = result;
  *(v0 + 18816) = result;
  *(v0 + 18832) = result;
  *(v0 + 18848) = result;
  *(v0 + 18864) = result;
  *(v0 + 18880) = result;
  *(v0 + 18896) = result;
  *(v0 + 18912) = result;
  *(v0 + 18928) = result;
  *(v0 + 18944) = result;
  *(v0 + 18960) = result;
  *(v0 + 18976) = result;
  *(v0 + 18992) = result;
  *(v0 + 19008) = result;
  *(v0 + 19024) = result;
  *(v0 + 19040) = result;
  *(v0 + 19056) = result;
  *(v0 + 19072) = result;
  *(v0 + 19088) = result;
  *(v0 + 19104) = result;
  *(v0 + 19120) = result;
  *(v0 + 19136) = result;
  *(v0 + 19152) = result;
  *(v0 + 19168) = result;
  *(v0 + 19184) = result;
  *(v0 + 19200) = result;
  *(v0 + 19216) = result;
  *(v0 + 19232) = result;
  *(v0 + 19248) = result;
  *(v0 + 19264) = result;
  *(v0 + 19280) = result;
  *(v0 + 19296) = result;
  *(v0 + 19376) = result;
  *(v0 + 19392) = result;
  *(v0 + 19424) = result;
  *(v0 + 19440) = result;
  *(v0 + 19456) = result;
  *(v0 + 19664) = result;
  *(v0 + 19696) = result;
  *(v0 + 19712) = result;
  *(v0 + 19728) = result;
  *(v0 + 19744) = result;
  *(v0 + 19760) = result;
  *(v0 + 19808) = result;
  *(v0 + 19856) = result;
  *(v0 + 19888) = result;
  *(v0 + 19904) = result;
  *(v0 + 19920) = result;
  *(v0 + 19936) = result;
  *(v0 + 19952) = result;
  *(v0 + 19968) = result;
  *(v0 + 19984) = result;
  *(v0 + 20000) = result;
  *(v0 + 20016) = result;
  *(v0 + 20032) = result;
  *(v0 + 20048) = result;
  *(v0 + 20064) = result;
  *(v0 + 20080) = result;
  *(v0 + 20096) = result;
  *(v0 + 20112) = result;
  *(v0 + 20128) = result;
  *(v0 + 20144) = result;
  *(v0 + 20160) = result;
  *(v0 + 20176) = result;
  *(v0 + 20192) = result;
  *(v0 + 20208) = result;
  *(v0 + 20224) = result;
  *(v0 + 20240) = result;
  *(v0 + 20256) = result;
  *(v0 + 20272) = result;
  *(v0 + 20288) = result;
  *(v0 + 20304) = result;
  *(v0 + 20320) = result;
  *(v0 + 20336) = result;
  *(v0 + 20352) = result;
  *(v0 + 20368) = result;
  *(v0 + 20384) = result;
  *(v0 + 20400) = result;
  *(v0 + 20416) = result;
  *(v0 + 20432) = result;
  *(v0 + 20448) = result;
  *(v0 + 20464) = result;
  *(v0 + 20480) = result;
  *(v0 + 20496) = result;
  *(v0 + 20512) = result;
  *(v0 + 20592) = result;
  *(v0 + 20608) = result;
  *(v0 + 20640) = result;
  *(v0 + 20656) = result;
  *(v0 + 20672) = result;
  *(v0 + 20880) = result;
  *(v0 + 20912) = result;
  *(v0 + 20928) = result;
  *(v0 + 20944) = result;
  *(v0 + 20960) = result;
  *(v0 + 20976) = result;
  *(v0 + 21024) = result;
  *(v0 + 21072) = result;
  *(v0 + 21104) = result;
  *(v0 + 21120) = result;
  *(v0 + 21136) = result;
  *(v0 + 21152) = result;
  *(v0 + 21168) = result;
  *(v0 + 21184) = result;
  *(v0 + 21200) = result;
  *(v0 + 21216) = result;
  *(v0 + 21232) = result;
  *(v0 + 21248) = result;
  *(v0 + 21264) = result;
  *(v0 + 21280) = result;
  *(v0 + 21296) = result;
  *(v0 + 21312) = result;
  *(v0 + 21328) = result;
  *(v0 + 21344) = result;
  *(v0 + 21360) = result;
  *(v0 + 21376) = result;
  *(v0 + 21392) = result;
  *(v0 + 21408) = result;
  *(v0 + 21424) = result;
  *(v0 + 21440) = result;
  *(v0 + 21456) = result;
  *(v0 + 21472) = result;
  *(v0 + 21488) = result;
  *(v0 + 21504) = result;
  *(v0 + 21520) = result;
  *(v0 + 21536) = result;
  *(v0 + 21552) = result;
  *(v0 + 21568) = result;
  *(v0 + 21584) = result;
  *(v0 + 21600) = result;
  *(v0 + 21616) = result;
  *(v0 + 21632) = result;
  *(v0 + 21648) = result;
  *(v0 + 21664) = result;
  *(v0 + 21680) = result;
  *(v0 + 21696) = result;
  *(v0 + 21712) = result;
  *(v0 + 21728) = result;
  *(v0 + 21808) = result;
  *(v0 + 21824) = result;
  *(v0 + 21856) = result;
  *(v0 + 21872) = result;
  *(v0 + 21888) = result;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FF0000000000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v23;
  *(v0 + 18284) = *&v23[3];
  *(v0 + 18312) = 1036831948;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FF0000000000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v24;
  *(v0 + 19500) = *&v24[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FF0000000000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v25;
  *(v0 + 20716) = *&v25[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FF0000000000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

double sub_1BCC71D94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE45BD0;
  *(v0 + 64) = 0x432A000043160000;
  *(v0 + 72) = 1040242952;
  v1 = vdupq_n_s64(0x3FD7575760000000uLL);
  *(v0 + 80) = v1;
  *(v0 + 96) = xmmword_1BCE3D340;
  v2 = v1;
  v14 = v1;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE3C8A0;
  *(v0 + 192) = xmmword_1BCE3C8B0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 208) = _Q0;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 240) = _Q0;
  *(v0 + 256) = _Q0;
  *(v0 + 272) = _Q0;
  *(v0 + 288) = _Q0;
  *(v0 + 304) = _Q0;
  *(v0 + 320) = xmmword_1BCE3C8C0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = _Q0;
  *(v0 + 368) = xmmword_1BCE3C900;
  *(v0 + 384) = 0x3F3333333F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = _Q0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = _Q0;
  *(v0 + 448) = _Q0;
  *(v0 + 464) = _Q0;
  *(v0 + 480) = _Q0;
  *(v0 + 496) = _Q0;
  *(v0 + 512) = _Q0;
  *(v0 + 528) = _Q0;
  *(v0 + 544) = _Q0;
  *(v0 + 560) = _Q0;
  *(v0 + 576) = _Q0;
  *(v0 + 592) = _Q0;
  *(v0 + 608) = _Q0;
  *(v0 + 624) = _Q0;
  *(v0 + 640) = _Q0;
  *(v0 + 656) = _Q0;
  *(v0 + 672) = _Q0;
  *(v0 + 688) = _Q0;
  *(v0 + 704) = _Q0;
  *(v0 + 720) = _Q0;
  *(v0 + 736) = _Q0;
  *(v0 + 752) = _Q0;
  *(v0 + 768) = _Q0;
  *(v0 + 784) = _Q0;
  *(v0 + 800) = _Q0;
  *(v0 + 816) = _Q0;
  *(v0 + 832) = _Q0;
  *(v0 + 848) = _Q0;
  *(v0 + 864) = _Q0;
  *(v0 + 880) = _Q0;
  *(v0 + 896) = _Q0;
  *(v0 + 912) = _Q0;
  *(v0 + 928) = _Q0;
  *(v0 + 944) = _Q0;
  *(v0 + 960) = _Q0;
  *(v0 + 976) = _Q0;
  *(v0 + 992) = _Q0;
  *(v0 + 1008) = _Q0;
  *(v0 + 1024) = _Q0;
  *(v0 + 1040) = _Q0;
  *(v0 + 1056) = _Q0;
  v8 = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 1072) = v8;
  *(v0 + 1088) = xmmword_1BCE3C940;
  *(v0 + 1104) = xmmword_1BCE3C950;
  *(v0 + 1120) = xmmword_1BCE3C960;
  *(v0 + 1136) = xmmword_1BCE3D350;
  *(v0 + 1152) = _Q0;
  *(v0 + 1168) = 0x4100000042FA0000;
  *(v0 + 1176) = 0x3FEB89F080000000;
  *(v0 + 1184) = xmmword_1BCE3D360;
  *(v0 + 1200) = _Q0;
  *(v0 + 1216) = xmmword_1BCE3D370;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v15;
  *(v0 + 1260) = *&v15[3];
  *(v0 + 1264) = xmmword_1BCE45BD0;
  *(v0 + 1280) = 0x432A000043160000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = v2;
  *(v0 + 1312) = xmmword_1BCE3D340;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE3C8A0;
  *(v0 + 1408) = xmmword_1BCE3C8B0;
  *(v0 + 1424) = _Q0;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1456) = _Q0;
  *(v0 + 1472) = _Q0;
  *(v0 + 1488) = _Q0;
  *(v0 + 1504) = _Q0;
  *(v0 + 1520) = _Q0;
  *(v0 + 1536) = xmmword_1BCE3C8C0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = _Q0;
  *(v0 + 1584) = xmmword_1BCE3C900;
  *(v0 + 1600) = 0x3F3333333F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q0;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = _Q0;
  *(v0 + 1664) = _Q0;
  *(v0 + 1680) = _Q0;
  *(v0 + 1696) = _Q0;
  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  *(v0 + 1760) = _Q0;
  *(v0 + 1776) = _Q0;
  *(v0 + 1792) = _Q0;
  *(v0 + 1808) = _Q0;
  *(v0 + 1824) = _Q0;
  *(v0 + 1840) = _Q0;
  *(v0 + 1856) = _Q0;
  *(v0 + 1872) = _Q0;
  *(v0 + 1888) = _Q0;
  *(v0 + 1904) = _Q0;
  *(v0 + 1920) = _Q0;
  *(v0 + 1936) = _Q0;
  *(v0 + 1952) = _Q0;
  *(v0 + 1968) = _Q0;
  *(v0 + 1984) = _Q0;
  *(v0 + 2000) = _Q0;
  *(v0 + 2016) = _Q0;
  *(v0 + 2032) = _Q0;
  *(v0 + 2048) = _Q0;
  *(v0 + 2064) = _Q0;
  *(v0 + 2080) = _Q0;
  *(v0 + 2096) = _Q0;
  *(v0 + 2112) = _Q0;
  *(v0 + 2128) = _Q0;
  *(v0 + 2144) = _Q0;
  *(v0 + 2160) = _Q0;
  *(v0 + 2176) = _Q0;
  *(v0 + 2192) = _Q0;
  *(v0 + 2208) = _Q0;
  *(v0 + 2224) = _Q0;
  *(v0 + 2400) = xmmword_1BCE3D380;
  *(v0 + 2432) = xmmword_1BCE3D390;
  *(v0 + 3472) = _Q0;
  v9 = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3568) = xmmword_1BCE3D3E0;
  *(v0 + 3600) = 0x4100000042B40000;
  *(v0 + 3608) = 0x3FE9EB8500000000;
  *(v0 + 3632) = xmmword_1BCE3CBC0;
  *(v0 + 3648) = xmmword_1BCE3D400;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v17;
  *(v0 + 3692) = *&v17[3];
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 3712) = 0x447A000044480000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = _Q0;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = xmmword_1BCE3CAB0;
  *(v0 + 3840) = xmmword_1BCE3CAC0;
  *(v0 + 3856) = _Q0;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 3888) = _Q0;
  *(v0 + 3904) = _Q0;
  *(v0 + 3920) = _Q0;
  *(v0 + 3936) = _Q0;
  *(v0 + 3952) = _Q0;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4016) = xmmword_1BCE3CAE0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FEFBFBFC0000000;
  *(v0 + 4048) = xmmword_1BCE3CAF0;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = _Q0;
  *(v0 + 4096) = _Q0;
  *(v0 + 4112) = _Q0;
  *(v0 + 4128) = _Q0;
  *(v0 + 4144) = _Q0;
  *(v0 + 4160) = _Q0;
  *(v0 + 4176) = _Q0;
  *(v0 + 4192) = _Q0;
  *(v0 + 4208) = _Q0;
  *(v0 + 4224) = _Q0;
  *(v0 + 4240) = _Q0;
  *(v0 + 4256) = _Q0;
  *(v0 + 4272) = _Q0;
  *(v0 + 4288) = _Q0;
  *(v0 + 4304) = _Q0;
  *(v0 + 4320) = _Q0;
  *(v0 + 4336) = _Q0;
  *(v0 + 4352) = _Q0;
  *(v0 + 4368) = _Q0;
  *(v0 + 4384) = _Q0;
  *(v0 + 4400) = _Q0;
  *(v0 + 4416) = _Q0;
  *(v0 + 4432) = _Q0;
  *(v0 + 4448) = _Q0;
  *(v0 + 4464) = _Q0;
  *(v0 + 4480) = _Q0;
  *(v0 + 4496) = _Q0;
  *(v0 + 4512) = _Q0;
  *(v0 + 4528) = _Q0;
  *(v0 + 4544) = _Q0;
  *(v0 + 4560) = _Q0;
  *(v0 + 4576) = _Q0;
  *(v0 + 4592) = _Q0;
  *(v0 + 4608) = _Q0;
  *(v0 + 4624) = _Q0;
  *(v0 + 4640) = _Q0;
  *(v0 + 4656) = _Q0;
  *(v0 + 4672) = _Q0;
  *(v0 + 4688) = _Q0;
  *(v0 + 4704) = _Q0;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = xmmword_1BCE3D410;
  *(v0 + 4800) = _Q0;
  *(v0 + 4816) = 0x4100000041F00000;
  *(v0 + 4824) = 0x3FE8000000000000;
  *(v0 + 4848) = xmmword_1BCE3D430;
  *(v0 + 4864) = xmmword_1BCE3D440;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5232) = xmmword_1BCE3CC00;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 4832) = xmmword_1BCE3E5A0;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v18;
  *(v0 + 4936) = 1061997773;
  *(v0 + 6000) = xmmword_1BCE3D410;
  *(v0 + 6032) = 0x4170000041A00000;
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4908) = *&v18[3];
  *(v0 + 6048) = xmmword_1BCE3E5A0;
  *(v0 + 6080) = xmmword_1BCE3D460;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6448) = xmmword_1BCE3CCF0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7264) = xmmword_1BCE3E5B0;
  *(v0 + 7280) = xmmword_1BCE3D480;
  *(v0 + 7296) = xmmword_1BCE3D490;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3CD60;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 7552) = _Q0;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7664) = xmmword_1BCE3CDB0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8480) = xmmword_1BCE3D4A0;
  *(v0 + 8512) = xmmword_1BCE3D4C0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 9696) = xmmword_1BCE3D4D0;
  *(v0 + 9728) = xmmword_1BCE3D4F0;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 10944) = xmmword_1BCE3D500;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1148846080;
  *(v0 + 11008) = 1148846080;
  *(v0 + 8624) = xmmword_1BCE58FD0;
  *(v0 + 9840) = xmmword_1BCE58FD0;
  *(v0 + 11056) = xmmword_1BCE58FD0;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 9856) = xmmword_1BCE3C9D0;
  *(v0 + 11072) = xmmword_1BCE3C9D0;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  v10 = vdupq_n_s32(0x3F666666u);
  *(v0 + 8880) = v10;
  *(v0 + 10096) = v10;
  *(v0 + 11312) = v10;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12160) = xmmword_1BCE3D510;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A00000447A0000;
  *(v0 + 12224) = 0x41A00000447A0000;
  v11 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = v11;
  *(v0 + 8592) = v11;
  *(v0 + 9808) = v11;
  *(v0 + 11024) = v11;
  *(v0 + 12240) = v11;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE5C300;
  *(v0 + 12528) = xmmword_1BCE3CEF0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  __asm { FMOV            V1.2D, #0.5 }

  *(v0 + 10912) = _Q1;
  *(v0 + 12128) = _Q1;
  *(v0 + 13344) = _Q1;
  *(v0 + 13376) = xmmword_1BCE3D520;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 6400) = xmmword_1BCE3CCC0;
  *(v0 + 7616) = xmmword_1BCE3CCC0;
  *(v0 + 8832) = xmmword_1BCE3CCC0;
  *(v0 + 10048) = xmmword_1BCE3CCC0;
  *(v0 + 12480) = xmmword_1BCE3CCC0;
  *(v0 + 13696) = xmmword_1BCE3CCC0;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13744) = xmmword_1BCE3CF70;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14560) = xmmword_1BCE3E5C0;
  *(v0 + 14592) = xmmword_1BCE3D540;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 3616) = xmmword_1BCE3D610;
  *(v0 + 3488) = _Q0;
  *(v0 + 3504) = v9;
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3584) = _Q0;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3376) = _Q0;
  *(v0 + 3392) = _Q0;
  *(v0 + 3408) = _Q0;
  *(v0 + 3424) = _Q0;
  *(v0 + 3440) = _Q0;
  *(v0 + 3456) = _Q0;
  *(v0 + 3280) = _Q0;
  *(v0 + 3296) = _Q0;
  *(v0 + 3312) = _Q0;
  *(v0 + 3328) = _Q0;
  *(v0 + 3344) = _Q0;
  *(v0 + 3360) = _Q0;
  *(v0 + 3184) = _Q0;
  *(v0 + 3200) = _Q0;
  *(v0 + 3216) = _Q0;
  *(v0 + 3232) = _Q0;
  *(v0 + 3248) = _Q0;
  *(v0 + 3264) = _Q0;
  *(v0 + 3088) = _Q0;
  *(v0 + 3104) = _Q0;
  *(v0 + 3120) = _Q0;
  *(v0 + 3136) = _Q0;
  *(v0 + 3152) = _Q0;
  *(v0 + 3168) = _Q0;
  *(v0 + 2992) = _Q0;
  *(v0 + 3008) = _Q0;
  *(v0 + 3024) = _Q0;
  *(v0 + 3040) = _Q0;
  *(v0 + 3056) = _Q0;
  *(v0 + 3072) = _Q0;
  *(v0 + 2896) = _Q0;
  *(v0 + 2912) = _Q0;
  *(v0 + 2928) = _Q0;
  *(v0 + 2944) = _Q0;
  *(v0 + 2960) = _Q0;
  *(v0 + 2976) = _Q0;
  *(v0 + 2240) = _Q0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = _Q0;
  *(v0 + 2880) = _Q0;
  *(v0 + 2473) = *v16;
  *(v0 + 2832) = _Q0;
  *(v0 + 2848) = 0;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  *(v0 + 2816) = 0x3F3333333F4CCCCDLL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2476) = *&v16[3];
  *(v0 + 2640) = _Q0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 2672) = _Q0;
  *(v0 + 2688) = _Q0;
  *(v0 + 2480) = xmmword_1BCE45BD0;
  *(v0 + 2608) = xmmword_1BCE3C9B0;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2560) = xmmword_1BCE51C90;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = _Q0;
  *(v0 + 2528) = _Q0;
  *(v0 + 2544) = xmmword_1BCE51C80;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2256) = _Q0;
  *(v0 + 2416) = _Q0;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2352) = xmmword_1BCE3D350;
  *(v0 + 2368) = _Q0;
  *(v0 + 2384) = 0x4100000042FA0000;
  *(v0 + 2392) = 0x3FEBA9FBE0000000;
  *(v0 + 2272) = _Q0;
  *(v0 + 2288) = v8;
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 5040) = _Q0;
  *(v0 + 5056) = xmmword_1BCE3CBA0;
  *(v0 + 5072) = _Q0;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 5104) = _Q0;
  *(v0 + 5120) = _Q0;
  *(v0 + 5136) = _Q0;
  *(v0 + 5152) = _Q0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = _Q0;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = _Q0;
  *(v0 + 5312) = _Q0;
  *(v0 + 5328) = _Q0;
  *(v0 + 5344) = _Q0;
  *(v0 + 5360) = _Q0;
  *(v0 + 5376) = _Q0;
  *(v0 + 5392) = _Q0;
  *(v0 + 5408) = _Q0;
  *(v0 + 5424) = _Q0;
  *(v0 + 5440) = _Q0;
  *(v0 + 5456) = _Q0;
  *(v0 + 5472) = _Q0;
  *(v0 + 5488) = _Q0;
  *(v0 + 5504) = _Q0;
  *(v0 + 5520) = _Q0;
  *(v0 + 5536) = _Q0;
  *(v0 + 5552) = _Q0;
  *(v0 + 5568) = _Q0;
  *(v0 + 5584) = _Q0;
  *(v0 + 5600) = _Q0;
  *(v0 + 5616) = _Q0;
  *(v0 + 5632) = _Q0;
  *(v0 + 5648) = _Q0;
  *(v0 + 5664) = _Q0;
  *(v0 + 5680) = _Q0;
  *(v0 + 5696) = _Q0;
  *(v0 + 5712) = _Q0;
  *(v0 + 5728) = _Q0;
  *(v0 + 5744) = _Q0;
  *(v0 + 5760) = _Q0;
  *(v0 + 5776) = _Q0;
  *(v0 + 5792) = _Q0;
  *(v0 + 5808) = _Q0;
  *(v0 + 5824) = _Q0;
  *(v0 + 5840) = _Q0;
  *(v0 + 5856) = _Q0;
  *(v0 + 5872) = _Q0;
  *(v0 + 5888) = _Q0;
  *(v0 + 5904) = _Q0;
  *(v0 + 5920) = _Q0;
  *(v0 + 6016) = _Q0;
  *(v0 + 6040) = 0x3FE6666680000000;
  *(v0 + 6064) = _Q0;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v19;
  *(v0 + 6124) = *&v19[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = _Q0;
  *(v0 + 6272) = _Q0;
  *(v0 + 6288) = _Q0;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 6320) = _Q0;
  *(v0 + 6336) = _Q0;
  *(v0 + 6352) = _Q0;
  *(v0 + 6368) = _Q0;
  *(v0 + 6384) = xmmword_1BCE3CCB0;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = _Q0;
  *(v0 + 6528) = _Q0;
  *(v0 + 6544) = _Q0;
  *(v0 + 6560) = _Q0;
  *(v0 + 6576) = _Q0;
  *(v0 + 6592) = _Q0;
  *(v0 + 6608) = _Q0;
  *(v0 + 6624) = _Q0;
  *(v0 + 6640) = _Q0;
  *(v0 + 6656) = _Q0;
  *(v0 + 6672) = _Q0;
  *(v0 + 6688) = _Q0;
  *(v0 + 6704) = _Q0;
  *(v0 + 6720) = _Q0;
  *(v0 + 6736) = _Q0;
  *(v0 + 6752) = _Q0;
  *(v0 + 6768) = _Q0;
  *(v0 + 6784) = _Q0;
  *(v0 + 6800) = _Q0;
  *(v0 + 6816) = _Q0;
  *(v0 + 6832) = _Q0;
  *(v0 + 6848) = _Q0;
  *(v0 + 6864) = _Q0;
  *(v0 + 6880) = _Q0;
  *(v0 + 6896) = _Q0;
  *(v0 + 6912) = _Q0;
  *(v0 + 6928) = _Q0;
  *(v0 + 6944) = _Q0;
  *(v0 + 6960) = _Q0;
  *(v0 + 6976) = _Q0;
  *(v0 + 6992) = _Q0;
  *(v0 + 7008) = _Q0;
  *(v0 + 7024) = _Q0;
  *(v0 + 7040) = _Q0;
  *(v0 + 7056) = _Q0;
  *(v0 + 7072) = _Q0;
  *(v0 + 7088) = _Q0;
  *(v0 + 7104) = _Q0;
  *(v0 + 7120) = _Q0;
  *(v0 + 7136) = _Q0;
  *(v0 + 7216) = _Q0;
  *(v0 + 7232) = _Q0;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FE206D360000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v20;
  *(v0 + 7340) = *&v20[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = _Q0;
  *(v0 + 7488) = _Q0;
  *(v0 + 7504) = _Q0;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 7536) = _Q0;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14896) = xmmword_1BCE3D020;
  *(v0 + 14912) = xmmword_1BCE3D030;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14960) = xmmword_1BCE3D050;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15776) = xmmword_1BCE3E5D0;
  *(v0 + 9712) = xmmword_1BCE3D4E0;
  *(v0 + 10928) = xmmword_1BCE3D4E0;
  *(v0 + 12144) = xmmword_1BCE3D4E0;
  *(v0 + 13360) = xmmword_1BCE3D4E0;
  *(v0 + 15792) = xmmword_1BCE3D4E0;
  *(v0 + 15808) = xmmword_1BCE3D560;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 16000) = xmmword_1BCE3CBA0;
  *(v0 + 7600) = xmmword_1BCE3CCB0;
  *(v0 + 8816) = xmmword_1BCE3CCB0;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 12464) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16112) = xmmword_1BCE3D120;
  *(v0 + 16128) = xmmword_1BCE3D130;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 16176) = xmmword_1BCE3D140;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 16944) = xmmword_1BCE3D570;
  *(v0 + 16960) = xmmword_1BCE3D580;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 16992) = xmmword_1BCE3E5E0;
  *(v0 + 17024) = xmmword_1BCE3D5A0;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D44160000;
  *(v0 + 17104) = xmmword_1BCE3D5B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE3D200;
  *(v0 + 17216) = xmmword_1BCE3CAC0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE3D210;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18160) = xmmword_1BCE3D5C0;
  *(v0 + 18176) = xmmword_1BCE3D5D0;
  *(v0 + 18192) = 0x4100000041A00000;
  *(v0 + 18208) = xmmword_1BCE3E5F0;
  *(v0 + 8496) = xmmword_1BCE3D4B0;
  *(v0 + 14576) = xmmword_1BCE3D4B0;
  *(v0 + 18224) = xmmword_1BCE3D4B0;
  *(v0 + 18240) = xmmword_1BCE3D5F0;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE51C80;
  *(v0 + 18368) = xmmword_1BCE51C90;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18416) = xmmword_1BCE3C9B0;
  *(v0 + 18512) = xmmword_1BCE3D3C0;
  *(v0 + 18528) = xmmword_1BCE3D3D0;
  *(v0 + 18544) = xmmword_1BCE3C9E0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = 0x3F3333333F4CCCCDLL;
  *(v0 + 19312) = v9;
  *(v0 + 19328) = xmmword_1BCE3CA20;
  *(v0 + 19344) = xmmword_1BCE3CA30;
  *(v0 + 19360) = xmmword_1BCE3CA40;
  *(v0 + 19376) = xmmword_1BCE3D600;
  *(v0 + 19408) = 0x4100000042B40000;
  *(v0 + 19424) = xmmword_1BCE3D610;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 17008) = xmmword_1BCE3CBC0;
  *(v0 + 19440) = xmmword_1BCE3CBC0;
  *(v0 + 19456) = xmmword_1BCE3D620;
  *(v0 + 20640) = xmmword_1BCE3D630;
  *(v0 + 20672) = xmmword_1BCE3D640;
  *(v0 + 18288) = xmmword_1BCE45BD0;
  *(v0 + 19504) = xmmword_1BCE45BD0;
  *(v0 + 20720) = xmmword_1BCE45BD0;
  *(v0 + 19520) = 0x432A000043160000;
  *(v0 + 20736) = 0x432A000043160000;
  *(v0 + 19536) = v14;
  *(v0 + 20752) = v14;
  *(v0 + 19552) = xmmword_1BCE3D340;
  *(v0 + 20768) = xmmword_1BCE3D340;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 19632) = xmmword_1BCE3C8A0;
  *(v0 + 20848) = xmmword_1BCE3C8A0;
  *(v0 + 19648) = xmmword_1BCE3C8B0;
  *(v0 + 20864) = xmmword_1BCE3C8B0;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12384) = xmmword_1BCE3C8C0;
  *(v0 + 13600) = xmmword_1BCE3C8C0;
  *(v0 + 14816) = xmmword_1BCE3C8C0;
  *(v0 + 16032) = xmmword_1BCE3C8C0;
  *(v0 + 17248) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 17520) = _Q0;
  *(v0 + 17536) = _Q0;
  *(v0 + 17552) = _Q0;
  *(v0 + 17568) = _Q0;
  *(v0 + 17584) = _Q0;
  *(v0 + 18080) = _Q0;
  *(v0 + 17984) = _Q0;
  *(v0 + 18000) = _Q0;
  *(v0 + 18016) = _Q0;
  *(v0 + 18032) = _Q0;
  *(v0 + 18048) = _Q0;
  *(v0 + 18064) = _Q0;
  *(v0 + 17888) = _Q0;
  *(v0 + 17904) = _Q0;
  *(v0 + 17920) = _Q0;
  *(v0 + 17936) = _Q0;
  *(v0 + 17952) = _Q0;
  *(v0 + 17968) = _Q0;
  *(v0 + 17792) = _Q0;
  *(v0 + 17808) = _Q0;
  *(v0 + 17824) = _Q0;
  *(v0 + 17840) = _Q0;
  *(v0 + 17856) = _Q0;
  *(v0 + 17872) = _Q0;
  *(v0 + 17696) = _Q0;
  *(v0 + 17712) = _Q0;
  *(v0 + 17728) = _Q0;
  *(v0 + 17744) = _Q0;
  *(v0 + 17760) = _Q0;
  *(v0 + 17776) = _Q0;
  *(v0 + 17600) = _Q0;
  *(v0 + 17616) = _Q0;
  *(v0 + 17632) = _Q0;
  *(v0 + 17648) = _Q0;
  *(v0 + 17664) = _Q0;
  *(v0 + 17680) = _Q0;
  *(v0 + 18432) = xmmword_1BCE3C8C0;
  *(v0 + 18464) = xmmword_1BCE3C8C0;
  *(v0 + 18560) = xmmword_1BCE3C8C0;
  *(v0 + 19680) = xmmword_1BCE3C8C0;
  *(v0 + 19776) = xmmword_1BCE3C8C0;
  *(v0 + 20896) = xmmword_1BCE3C8C0;
  *(v0 + 20992) = xmmword_1BCE3C8C0;
  *(v0 + 17472) = _Q0;
  *(v0 + 17488) = _Q0;
  *(v0 + 17504) = _Q0;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 665496235;
  *(v0 + 17456) = _Q0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 17312) = _Q0;
  *(v0 + 17328) = _Q0;
  *(v0 + 19840) = 0x3F3333333F800000;
  *(v0 + 21056) = 0x3F3333333F800000;
  *(v0 + 17232) = _Q0;
  *(v0 + 17264) = _Q0;
  *(v0 + 17280) = _Q0;
  *(v0 + 17296) = _Q0;
  *(v0 + 20528) = v8;
  *(v0 + 21744) = v8;
  *(v0 + 20544) = xmmword_1BCE3C940;
  *(v0 + 21760) = xmmword_1BCE3C940;
  *(v0 + 20560) = xmmword_1BCE3C950;
  *(v0 + 21776) = xmmword_1BCE3C950;
  *(v0 + 17096) = 1050388079;
  *(v0 + 17120) = _Q0;
  *(v0 + 20576) = xmmword_1BCE3C960;
  *(v0 + 21792) = xmmword_1BCE3C960;
  *(v0 + 20592) = xmmword_1BCE3D350;
  *(v0 + 21808) = xmmword_1BCE3D350;
  *(v0 + 17065) = *v28;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 17068) = *&v28[3];
  *(v0 + 20624) = 0x4100000042FA0000;
  *(v0 + 21840) = 0x4100000042FA0000;
  *(v0 + 21856) = xmmword_1BCE3D360;
  *(v0 + 16984) = 0x3FE8000000000000;
  *(v0 + 7568) = _Q0;
  *(v0 + 7584) = _Q0;
  *(v0 + 7728) = _Q0;
  *(v0 + 7744) = _Q0;
  *(v0 + 16848) = _Q0;
  *(v0 + 16864) = _Q0;
  *(v0 + 16752) = _Q0;
  *(v0 + 16768) = _Q0;
  *(v0 + 16784) = _Q0;
  *(v0 + 16800) = _Q0;
  *(v0 + 16816) = _Q0;
  *(v0 + 16832) = _Q0;
  *(v0 + 16656) = _Q0;
  *(v0 + 16672) = _Q0;
  *(v0 + 16688) = _Q0;
  *(v0 + 16704) = _Q0;
  *(v0 + 16720) = _Q0;
  *(v0 + 16736) = _Q0;
  *(v0 + 16560) = _Q0;
  *(v0 + 16576) = _Q0;
  *(v0 + 16592) = _Q0;
  *(v0 + 16608) = _Q0;
  *(v0 + 16624) = _Q0;
  *(v0 + 16640) = _Q0;
  *(v0 + 16464) = _Q0;
  *(v0 + 16480) = _Q0;
  *(v0 + 16496) = _Q0;
  *(v0 + 16512) = _Q0;
  *(v0 + 16528) = _Q0;
  *(v0 + 16544) = _Q0;
  *(v0 + 16368) = _Q0;
  *(v0 + 0x4000) = _Q0;
  *(v0 + 16400) = _Q0;
  *(v0 + 16416) = _Q0;
  *(v0 + 16432) = _Q0;
  *(v0 + 16448) = _Q0;
  *(v0 + 16272) = _Q0;
  *(v0 + 16288) = _Q0;
  *(v0 + 16304) = _Q0;
  *(v0 + 16320) = _Q0;
  *(v0 + 16336) = _Q0;
  *(v0 + 16352) = _Q0;
  *(v0 + 7760) = _Q0;
  *(v0 + 7776) = _Q0;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = _Q0;
  *(v0 + 16256) = _Q0;
  *(v0 + 7792) = _Q0;
  *(v0 + 7808) = _Q0;
  *(v0 + 7824) = _Q0;
  *(v0 + 7840) = _Q0;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 7856) = _Q0;
  *(v0 + 7872) = _Q0;
  *(v0 + 7888) = _Q0;
  *(v0 + 16048) = _Q0;
  *(v0 + 16064) = _Q0;
  *(v0 + 16096) = _Q0;
  *(v0 + 7904) = _Q0;
  *(v0 + 7920) = _Q0;
  *(v0 + 7936) = _Q0;
  *(v0 + 7952) = _Q0;
  *(v0 + 15984) = _Q0;
  *(v0 + 16016) = _Q0;
  *(v0 + 7968) = _Q0;
  *(v0 + 7984) = _Q0;
  *(v0 + 8000) = _Q0;
  *(v0 + 8016) = _Q0;
  *(v0 + 8032) = _Q0;
  *(v0 + 15849) = *v27;
  *(v0 + 15852) = *&v27[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 8048) = _Q0;
  *(v0 + 8064) = _Q0;
  *(v0 + 8080) = _Q0;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 8096) = _Q0;
  *(v0 + 8112) = _Q0;
  *(v0 + 15728) = _Q0;
  *(v0 + 15744) = _Q0;
  *(v0 + 15768) = 0x3FE4CCCCC0000000;
  *(v0 + 8128) = _Q0;
  *(v0 + 8144) = _Q0;
  *(v0 + 8160) = _Q0;
  *(v0 + 15616) = _Q0;
  *(v0 + 15632) = _Q0;
  *(v0 + 15648) = _Q0;
  *(v0 + 15520) = _Q0;
  *(v0 + 15536) = _Q0;
  *(v0 + 15552) = _Q0;
  *(v0 + 15568) = _Q0;
  *(v0 + 15584) = _Q0;
  *(v0 + 15600) = _Q0;
  *(v0 + 15424) = _Q0;
  *(v0 + 15440) = _Q0;
  *(v0 + 15456) = _Q0;
  *(v0 + 15472) = _Q0;
  *(v0 + 15488) = _Q0;
  *(v0 + 15504) = _Q0;
  *(v0 + 15328) = _Q0;
  *(v0 + 15344) = _Q0;
  *(v0 + 15360) = _Q0;
  *(v0 + 15376) = _Q0;
  *(v0 + 15392) = _Q0;
  *(v0 + 15408) = _Q0;
  *(v0 + 15232) = _Q0;
  *(v0 + 15248) = _Q0;
  *(v0 + 15264) = _Q0;
  *(v0 + 15280) = _Q0;
  *(v0 + 15296) = _Q0;
  *(v0 + 15312) = _Q0;
  *(v0 + 15136) = _Q0;
  *(v0 + 15152) = _Q0;
  *(v0 + 15168) = _Q0;
  *(v0 + 15184) = _Q0;
  *(v0 + 15200) = _Q0;
  *(v0 + 15216) = _Q0;
  *(v0 + 8176) = _Q0;
  *(v0 + 15056) = _Q0;
  *(v0 + 15072) = _Q0;
  *(v0 + 15088) = _Q0;
  *(v0 + 15104) = _Q0;
  *(v0 + 15120) = _Q0;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = _Q0;
  *(v0 + 15040) = _Q0;
  *(v0 + 0x2000) = _Q0;
  *(v0 + 8208) = _Q0;
  *(v0 + 8224) = _Q0;
  *(v0 + 8240) = _Q0;
  *(v0 + 8256) = _Q0;
  *(v0 + 8272) = _Q0;
  *(v0 + 8288) = _Q0;
  *(v0 + 8304) = _Q0;
  *(v0 + 14800) = _Q0;
  *(v0 + 14832) = _Q0;
  *(v0 + 14848) = _Q0;
  *(v0 + 14880) = _Q0;
  *(v0 + 8320) = _Q0;
  *(v0 + 8336) = _Q0;
  *(v0 + 8352) = _Q0;
  *(v0 + 8432) = _Q0;
  *(v0 + 14768) = _Q0;
  *(v0 + 14784) = _Q0;
  *(v0 + 8448) = _Q0;
  *(v0 + 8472) = 0x3FE0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 8552) = 0;
  *(v0 + 14633) = *v26;
  *(v0 + 14664) = 1061158912;
  *(v0 + 8553) = *v21;
  *(v0 + 14636) = *&v26[3];
  *(v0 + 8556) = *&v21[3];
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = _Q0;
  *(v0 + 8656) = _Q0;
  *(v0 + 14512) = _Q0;
  *(v0 + 14528) = _Q0;
  *(v0 + 14552) = 0x3FE0000000000000;
  *(v0 + 8672) = _Q0;
  *(v0 + 8688) = _Q0;
  *(v0 + 14384) = _Q0;
  *(v0 + 14400) = _Q0;
  *(v0 + 14416) = _Q0;
  *(v0 + 14432) = _Q0;
  *(v0 + 14288) = _Q0;
  *(v0 + 14304) = _Q0;
  *(v0 + 14320) = _Q0;
  *(v0 + 14336) = _Q0;
  *(v0 + 14352) = _Q0;
  *(v0 + 14368) = _Q0;
  *(v0 + 14192) = _Q0;
  *(v0 + 14208) = _Q0;
  *(v0 + 14224) = _Q0;
  *(v0 + 14240) = _Q0;
  *(v0 + 14256) = _Q0;
  *(v0 + 14272) = _Q0;
  *(v0 + 14096) = _Q0;
  *(v0 + 14112) = _Q0;
  *(v0 + 14128) = _Q0;
  *(v0 + 14144) = _Q0;
  *(v0 + 14160) = _Q0;
  *(v0 + 14176) = _Q0;
  *(v0 + 14000) = _Q0;
  *(v0 + 14016) = _Q0;
  *(v0 + 14032) = _Q0;
  *(v0 + 14048) = _Q0;
  *(v0 + 14064) = _Q0;
  *(v0 + 14080) = _Q0;
  *(v0 + 13904) = _Q0;
  *(v0 + 13920) = _Q0;
  *(v0 + 13936) = _Q0;
  *(v0 + 13952) = _Q0;
  *(v0 + 13968) = _Q0;
  *(v0 + 13984) = _Q0;
  *(v0 + 8704) = _Q0;
  *(v0 + 13824) = _Q0;
  *(v0 + 13840) = _Q0;
  *(v0 + 13856) = _Q0;
  *(v0 + 13872) = _Q0;
  *(v0 + 13888) = _Q0;
  *(v0 + 8720) = _Q0;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = _Q0;
  *(v0 + 8752) = _Q0;
  *(v0 + 8768) = _Q0;
  *(v0 + 8784) = _Q0;
  *(v0 + 8800) = _Q0;
  *(v0 + 13664) = _Q0;
  *(v0 + 13680) = _Q0;
  *(v0 + 8864) = _Q0;
  *(v0 + 13584) = _Q0;
  *(v0 + 13616) = _Q0;
  *(v0 + 13632) = _Q0;
  *(v0 + 13648) = _Q0;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = _Q0;
  *(v0 + 13552) = _Q0;
  *(v0 + 13568) = _Q0;
  *(v0 + 8960) = _Q0;
  *(v0 + 8976) = _Q0;
  *(v0 + 8992) = _Q0;
  *(v0 + 9008) = _Q0;
  *(v0 + 9024) = _Q0;
  *(v0 + 9040) = _Q0;
  *(v0 + 13417) = *v25;
  *(v0 + 13448) = 1060320051;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v25[3];
  *(v0 + 9056) = _Q0;
  *(v0 + 9072) = _Q0;
  *(v0 + 9088) = _Q0;
  *(v0 + 13296) = _Q0;
  *(v0 + 13312) = _Q0;
  *(v0 + 13336) = 0x3FE0000000000000;
  *(v0 + 9104) = _Q0;
  *(v0 + 9120) = _Q0;
  *(v0 + 9136) = _Q0;
  *(v0 + 9152) = _Q0;
  *(v0 + 13200) = _Q0;
  *(v0 + 13216) = _Q0;
  *(v0 + 13104) = _Q0;
  *(v0 + 13120) = _Q0;
  *(v0 + 13136) = _Q0;
  *(v0 + 13152) = _Q0;
  *(v0 + 13168) = _Q0;
  *(v0 + 13184) = _Q0;
  *(v0 + 13008) = _Q0;
  *(v0 + 13024) = _Q0;
  *(v0 + 13040) = _Q0;
  *(v0 + 13056) = _Q0;
  *(v0 + 13072) = _Q0;
  *(v0 + 13088) = _Q0;
  *(v0 + 12912) = _Q0;
  *(v0 + 12928) = _Q0;
  *(v0 + 12944) = _Q0;
  *(v0 + 12960) = _Q0;
  *(v0 + 12976) = _Q0;
  *(v0 + 12992) = _Q0;
  *(v0 + 12816) = _Q0;
  *(v0 + 12832) = _Q0;
  *(v0 + 12848) = _Q0;
  *(v0 + 12864) = _Q0;
  *(v0 + 12880) = _Q0;
  *(v0 + 12896) = _Q0;
  *(v0 + 12720) = _Q0;
  *(v0 + 12736) = _Q0;
  *(v0 + 12752) = _Q0;
  *(v0 + 12768) = _Q0;
  *(v0 + 12784) = _Q0;
  *(v0 + 12800) = _Q0;
  *(v0 + 12624) = _Q0;
  *(v0 + 12640) = _Q0;
  *(v0 + 12656) = _Q0;
  *(v0 + 12672) = _Q0;
  *(v0 + 12688) = _Q0;
  *(v0 + 12704) = _Q0;
  *(v0 + 9168) = _Q0;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = _Q0;
  *(v0 + 12608) = _Q0;
  *(v0 + 9184) = _Q0;
  *(v0 + 9200) = _Q0;
  *(v0 + 9216) = _Q0;
  *(v0 + 9232) = _Q0;
  *(v0 + 12496) = _Q0;
  *(v0 + 12512) = _Q0;
  *(v0 + 9248) = _Q0;
  *(v0 + 12368) = _Q0;
  *(v0 + 12400) = _Q0;
  *(v0 + 12416) = _Q0;
  *(v0 + 12432) = _Q0;
  *(v0 + 12448) = _Q0;
  *(v0 + 9264) = _Q0;
  *(v0 + 12288) = _Q0;
  *(v0 + 12304) = _Q0;
  *(v0 + 12320) = _Q0;
  *(v0 + 12336) = _Q0;
  *(v0 + 12352) = _Q0;
  *(v0 + 9280) = _Q0;
  *(v0 + 9296) = _Q0;
  *(v0 + 9312) = _Q0;
  *(v0 + 9328) = _Q0;
  *(v0 + 9344) = _Q0;
  *(v0 + 12201) = *v24;
  *(v0 + 12204) = *&v24[3];
  *(v0 + 12232) = 1061158912;
  *(v0 + 9360) = _Q0;
  *(v0 + 9376) = _Q0;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 9392) = _Q0;
  *(v0 + 9408) = _Q0;
  *(v0 + 9424) = _Q0;
  *(v0 + 12080) = _Q0;
  *(v0 + 12096) = _Q0;
  *(v0 + 12120) = 0x3FE0000000000000;
  *(v0 + 9440) = _Q0;
  *(v0 + 9456) = _Q0;
  *(v0 + 11952) = _Q0;
  *(v0 + 11968) = _Q0;
  *(v0 + 11984) = _Q0;
  *(v0 + 12000) = _Q0;
  *(v0 + 11856) = _Q0;
  *(v0 + 11872) = _Q0;
  *(v0 + 11888) = _Q0;
  *(v0 + 11904) = _Q0;
  *(v0 + 11920) = _Q0;
  *(v0 + 11936) = _Q0;
  *(v0 + 11760) = _Q0;
  *(v0 + 11776) = _Q0;
  *(v0 + 11792) = _Q0;
  *(v0 + 11808) = _Q0;
  *(v0 + 11824) = _Q0;
  *(v0 + 11840) = _Q0;
  *(v0 + 11664) = _Q0;
  *(v0 + 11680) = _Q0;
  *(v0 + 11696) = _Q0;
  *(v0 + 11712) = _Q0;
  *(v0 + 11728) = _Q0;
  *(v0 + 11744) = _Q0;
  *(v0 + 11568) = _Q0;
  *(v0 + 11584) = _Q0;
  *(v0 + 11600) = _Q0;
  *(v0 + 11616) = _Q0;
  *(v0 + 11632) = _Q0;
  *(v0 + 11648) = _Q0;
  *(v0 + 11472) = _Q0;
  *(v0 + 11488) = _Q0;
  *(v0 + 11504) = _Q0;
  *(v0 + 11520) = _Q0;
  *(v0 + 11536) = _Q0;
  *(v0 + 11552) = _Q0;
  *(v0 + 11376) = _Q0;
  *(v0 + 11392) = _Q0;
  *(v0 + 11408) = _Q0;
  *(v0 + 11424) = _Q0;
  *(v0 + 11440) = _Q0;
  *(v0 + 11456) = _Q0;
  *(v0 + 9472) = _Q0;
  *(v0 + 9488) = _Q0;
  *(v0 + 9504) = _Q0;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 9520) = _Q0;
  *(v0 + 9536) = _Q0;
  *(v0 + 9552) = _Q0;
  *(v0 + 11216) = _Q0;
  *(v0 + 11232) = _Q0;
  *(v0 + 11296) = _Q0;
  *(v0 + 9568) = _Q0;
  *(v0 + 9648) = _Q0;
  *(v0 + 11136) = _Q0;
  *(v0 + 11152) = _Q0;
  *(v0 + 11184) = _Q0;
  *(v0 + 11200) = _Q0;
  *(v0 + 9664) = _Q0;
  *(v0 + 9688) = 0x3FD9999980000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 11120) = _Q0;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 9768) = 0;
  *(v0 + 9769) = *v22;
  *(v0 + 9772) = *&v22[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v23;
  *(v0 + 10988) = *&v23[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 9904) = _Q0;
  *(v0 + 9920) = _Q0;
  *(v0 + 9936) = _Q0;
  *(v0 + 9968) = _Q0;
  *(v0 + 10904) = 0x3FE0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 9984) = _Q0;
  *(v0 + 10000) = _Q0;
  *(v0 + 10016) = _Q0;
  *(v0 + 10080) = _Q0;
  *(v0 + 10864) = _Q0;
  *(v0 + 10880) = _Q0;
  *(v0 + 10704) = _Q0;
  *(v0 + 10720) = _Q0;
  *(v0 + 10736) = _Q0;
  *(v0 + 10752) = _Q0;
  *(v0 + 10768) = _Q0;
  *(v0 + 10784) = _Q0;
  *(v0 + 10608) = _Q0;
  *(v0 + 10624) = _Q0;
  *(v0 + 10640) = _Q0;
  *(v0 + 10656) = _Q0;
  *(v0 + 10672) = _Q0;
  *(v0 + 10688) = _Q0;
  *(v0 + 10512) = _Q0;
  *(v0 + 10528) = _Q0;
  *(v0 + 10544) = _Q0;
  *(v0 + 10560) = _Q0;
  *(v0 + 10576) = _Q0;
  *(v0 + 10592) = _Q0;
  *(v0 + 10416) = _Q0;
  *(v0 + 10432) = _Q0;
  *(v0 + 10448) = _Q0;
  *(v0 + 10464) = _Q0;
  *(v0 + 10480) = _Q0;
  *(v0 + 10496) = _Q0;
  *(v0 + 10320) = _Q0;
  *(v0 + 10336) = _Q0;
  *(v0 + 10352) = _Q0;
  *(v0 + 10368) = _Q0;
  *(v0 + 10384) = _Q0;
  *(v0 + 10400) = _Q0;
  *(v0 + 10224) = _Q0;
  *(v0 + 10240) = _Q0;
  *(v0 + 10256) = _Q0;
  *(v0 + 10272) = _Q0;
  *(v0 + 10288) = _Q0;
  *(v0 + 10304) = _Q0;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = _Q0;
  *(v0 + 10176) = _Q0;
  *(v0 + 10192) = _Q0;
  *(v0 + 10208) = _Q0;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 18336) = _Q0;
  *(v0 + 18400) = _Q0;
  *(v0 + 18448) = _Q0;
  *(v0 + 18480) = _Q0;
  *(v0 + 18496) = _Q0;
  *(v0 + 18640) = _Q0;
  *(v0 + 18672) = _Q0;
  *(v0 + 18688) = _Q0;
  *(v0 + 18704) = _Q0;
  *(v0 + 18720) = _Q0;
  *(v0 + 18736) = _Q0;
  *(v0 + 18752) = _Q0;
  *(v0 + 18768) = _Q0;
  *(v0 + 18784) = _Q0;
  *(v0 + 18800) = _Q0;
  *(v0 + 18816) = _Q0;
  *(v0 + 18832) = _Q0;
  *(v0 + 18848) = _Q0;
  *(v0 + 18864) = _Q0;
  *(v0 + 18880) = _Q0;
  *(v0 + 18896) = _Q0;
  *(v0 + 18912) = _Q0;
  *(v0 + 18928) = _Q0;
  *(v0 + 18944) = _Q0;
  *(v0 + 18960) = _Q0;
  *(v0 + 18976) = _Q0;
  *(v0 + 18992) = _Q0;
  *(v0 + 19008) = _Q0;
  *(v0 + 19024) = _Q0;
  *(v0 + 19040) = _Q0;
  *(v0 + 19056) = _Q0;
  *(v0 + 19072) = _Q0;
  *(v0 + 19088) = _Q0;
  *(v0 + 19104) = _Q0;
  *(v0 + 19120) = _Q0;
  *(v0 + 19136) = _Q0;
  *(v0 + 19152) = _Q0;
  *(v0 + 19168) = _Q0;
  *(v0 + 19184) = _Q0;
  *(v0 + 19200) = _Q0;
  *(v0 + 19216) = _Q0;
  *(v0 + 19232) = _Q0;
  *(v0 + 19248) = _Q0;
  *(v0 + 19264) = _Q0;
  *(v0 + 19280) = _Q0;
  *(v0 + 19296) = _Q0;
  *(v0 + 19392) = _Q0;
  *(v0 + 19664) = _Q0;
  *(v0 + 19696) = _Q0;
  *(v0 + 19712) = _Q0;
  *(v0 + 19728) = _Q0;
  *(v0 + 19744) = _Q0;
  *(v0 + 19760) = _Q0;
  *(v0 + 19808) = _Q0;
  *(v0 + 19856) = _Q0;
  *(v0 + 19888) = _Q0;
  *(v0 + 19904) = _Q0;
  *(v0 + 19920) = _Q0;
  *(v0 + 19936) = _Q0;
  *(v0 + 19952) = _Q0;
  *(v0 + 19968) = _Q0;
  *(v0 + 19984) = _Q0;
  *(v0 + 20000) = _Q0;
  *(v0 + 20016) = _Q0;
  *(v0 + 20032) = _Q0;
  *(v0 + 20048) = _Q0;
  *(v0 + 20064) = _Q0;
  *(v0 + 20080) = _Q0;
  *(v0 + 20096) = _Q0;
  *(v0 + 20112) = _Q0;
  *(v0 + 20128) = _Q0;
  *(v0 + 20144) = _Q0;
  *(v0 + 20160) = _Q0;
  *(v0 + 20176) = _Q0;
  *(v0 + 20192) = _Q0;
  *(v0 + 20208) = _Q0;
  *(v0 + 20224) = _Q0;
  *(v0 + 20240) = _Q0;
  *(v0 + 20256) = _Q0;
  *(v0 + 20272) = _Q0;
  *(v0 + 20288) = _Q0;
  *(v0 + 20304) = _Q0;
  *(v0 + 20320) = _Q0;
  *(v0 + 20336) = _Q0;
  *(v0 + 20352) = _Q0;
  *(v0 + 20368) = _Q0;
  *(v0 + 20384) = _Q0;
  *(v0 + 20400) = _Q0;
  *(v0 + 20416) = _Q0;
  *(v0 + 20432) = _Q0;
  *(v0 + 20448) = _Q0;
  *(v0 + 20464) = _Q0;
  *(v0 + 20480) = _Q0;
  *(v0 + 20496) = _Q0;
  *(v0 + 20512) = _Q0;
  *(v0 + 20608) = _Q0;
  *(v0 + 20656) = _Q0;
  *(v0 + 20880) = _Q0;
  *(v0 + 20912) = _Q0;
  *(v0 + 20928) = _Q0;
  *(v0 + 20944) = _Q0;
  *(v0 + 20960) = _Q0;
  *(v0 + 20976) = _Q0;
  *(v0 + 21024) = _Q0;
  *(v0 + 21072) = _Q0;
  *(v0 + 21104) = _Q0;
  *(v0 + 21120) = _Q0;
  *(v0 + 21136) = _Q0;
  *(v0 + 21152) = _Q0;
  *(v0 + 21168) = _Q0;
  *(v0 + 21184) = _Q0;
  *(v0 + 21200) = _Q0;
  *(v0 + 21216) = _Q0;
  *(v0 + 21232) = _Q0;
  *(v0 + 21248) = _Q0;
  *(v0 + 21264) = _Q0;
  *(v0 + 21280) = _Q0;
  *(v0 + 21296) = _Q0;
  *(v0 + 21312) = _Q0;
  *(v0 + 21328) = _Q0;
  *(v0 + 21344) = _Q0;
  *(v0 + 21360) = _Q0;
  *(v0 + 21376) = _Q0;
  *(v0 + 21392) = _Q0;
  *(v0 + 21408) = _Q0;
  *(v0 + 21424) = _Q0;
  *(v0 + 21440) = _Q0;
  *(v0 + 21456) = _Q0;
  *(v0 + 21472) = _Q0;
  *(v0 + 21488) = _Q0;
  *(v0 + 21504) = _Q0;
  *(v0 + 21520) = _Q0;
  *(v0 + 21536) = _Q0;
  *(v0 + 21552) = _Q0;
  *(v0 + 21568) = _Q0;
  *(v0 + 21584) = _Q0;
  *(v0 + 21600) = _Q0;
  *(v0 + 21616) = _Q0;
  *(v0 + 21632) = _Q0;
  *(v0 + 21648) = _Q0;
  *(v0 + 21664) = _Q0;
  *(v0 + 21680) = _Q0;
  *(v0 + 21696) = _Q0;
  *(v0 + 21712) = _Q0;
  *(v0 + 21728) = _Q0;
  *(v0 + 21824) = _Q0;
  *(v0 + 21872) = _Q0;
  result = 0.799999952;
  *(v0 + 21888) = xmmword_1BCE3D370;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FE99999A0000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v29;
  *(v0 + 18284) = *&v29[3];
  *(v0 + 18312) = 1036831949;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FE93332C0000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v30;
  *(v0 + 19500) = *&v30[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FEB89F0C0000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v31;
  *(v0 + 20716) = *&v31[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FEB89F080000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

uint64_t SunriseSunsetModel.currentWeather.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1BCE196E0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t SunriseSunsetModel.dailyForecast.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SunriseSunsetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t static SunriseSunsetModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1BCE19690() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SunriseSunsetModel() + 20);
  v5 = sub_1BCE19540();
  v6 = MEMORY[0x1E6984AE8];
  v7 = sub_1BC947424(&qword_1EDA1EBA0, MEMORY[0x1E6984AE8]);
  v8 = sub_1BC947424(&qword_1EDA1EBB0, v6);
  v9 = sub_1BC947424(&qword_1EDA1EBA8, v6);

  return MEMORY[0x1EEDE7A30](a1 + v4, a2 + v4, v5, v7, v8, v9);
}

uint64_t sub_1BCC74160(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x57746E6572727563 && a2 == 0xEE00726568746165;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F46796C696164 && a2 == 0xED00007473616365)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BCE1E090();

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

uint64_t sub_1BCC74238(char a1)
{
  if (a1)
  {
    return 0x726F46796C696164;
  }

  else
  {
    return 0x57746E6572727563;
  }
}

uint64_t sub_1BCC74290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCC74160(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCC742B8(uint64_t a1)
{
  v2 = sub_1BCC744EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCC742F4(uint64_t a1)
{
  v2 = sub_1BCC744EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SunriseSunsetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B9C0);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCC744EC();
  sub_1BCE1E170();
  v12[15] = 0;
  sub_1BCE196E0();
  OUTLINED_FUNCTION_2_62();
  sub_1BC947424(v9, v10);
  OUTLINED_FUNCTION_4_47();
  if (!v1)
  {
    type metadata accessor for SunriseSunsetModel();
    v12[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
    sub_1BCC748F4(&qword_1EBD0B9D8);
    OUTLINED_FUNCTION_4_47();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1BCC744EC()
{
  result = qword_1EBD0B9C8;
  if (!qword_1EBD0B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B9C8);
  }

  return result;
}

uint64_t SunriseSunsetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
  OUTLINED_FUNCTION_2();
  v30 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v36 = sub_1BCE196E0();
  OUTLINED_FUNCTION_2();
  v32 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B9E0);
  OUTLINED_FUNCTION_2();
  v35 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v13 = type metadata accessor for SunriseSunsetModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCC744EC();
  sub_1BCE1E160();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v13;
  v17 = v16;
  v19 = v32;
  v18 = v33;
  v39 = 0;
  OUTLINED_FUNCTION_2_62();
  sub_1BC947424(v20, v21);
  v22 = v34;
  sub_1BCE1DF70();
  v23 = *(v19 + 32);
  v28 = v17;
  v23(v17, v22, v36);
  v38 = 1;
  sub_1BCC748F4(&qword_1EBD0B9F0);
  sub_1BCE1DF70();
  v24 = OUTLINED_FUNCTION_3_57();
  v25(v24);
  v26 = v28;
  (*(v30 + 32))(v28 + *(v29 + 20), v7, v18);
  sub_1BCC74944(v26, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BCC749A8(v26);
}

uint64_t sub_1BCC748F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD085A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BCC74944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunriseSunsetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCC749A8(uint64_t a1)
{
  v2 = type metadata accessor for SunriseSunsetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BCC74A60()
{
  sub_1BCE196E0();
  if (v0 <= 0x3F)
  {
    sub_1BC947304();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SunriseSunsetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BCC74BC4()
{
  result = qword_1EBD0B9F8;
  if (!qword_1EBD0B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B9F8);
  }

  return result;
}

unint64_t sub_1BCC74C1C()
{
  result = qword_1EBD0BA00;
  if (!qword_1EBD0BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BA00);
  }

  return result;
}

unint64_t sub_1BCC74C74()
{
  result = qword_1EBD0BA08;
  if (!qword_1EBD0BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BA08);
  }

  return result;
}

uint64_t type metadata accessor for PlatterViewLocation()
{
  result = qword_1EBD0BA10;
  if (!qword_1EBD0BA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BCC74D3C()
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v0 <= 0x3F)
  {
    sub_1BCE19470();
    if (v1 <= 0x3F)
    {
      sub_1BC965D24();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_1BCC74DE8@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08780);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  if (qword_1EBD07280 != -1)
  {
    swift_once();
  }

  v6 = qword_1EBD2A350;
  v5 = *algn_1EBD2A358;
  v8 = qword_1EBD2A360;
  v7 = unk_1EBD2A368;
  v9 = qword_1EBD07278;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_0_59();
  }

  v10 = qword_1EBD2A348;

  sub_1BCE1C3C0();
  v11 = *MEMORY[0x1E6980E28];
  v12 = sub_1BCE1C350();
  OUTLINED_FUNCTION_4();
  (*(v13 + 104))(v4, v11, v12);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v12);
  v14 = sub_1BCE1C3D0();
  sub_1BC94C05C(v4, &qword_1EBD08780);
  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v8;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  *(a1 + 40) = xmmword_1BCE551E0;
  result = 4.0;
  *(a1 + 56) = xmmword_1BCE551F0;
  *(a1 + 72) = 0x4008000000000000;
  *(a1 + 80) = v10;
  *(a1 + 88) = v14;
  return result;
}

double sub_1BCC74FB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v21 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08780);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22[-v12 - 7];
  if (qword_1EBD07278 != -1)
  {
    OUTLINED_FUNCTION_0_59();
  }

  v14 = qword_1EBD2A348;

  sub_1BCE1C3C0();
  v15 = *MEMORY[0x1E6980E28];
  v16 = sub_1BCE1C350();
  OUTLINED_FUNCTION_4();
  (*(v17 + 104))(v13, v15, v16);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v16);
  v18 = sub_1BCE1C3D0();
  sub_1BC94C05C(v13, &qword_1EBD08780);
  *a6 = a1;
  *(a6 + 8) = a2;
  v19 = v21;
  *(a6 + 16) = a3;
  *(a6 + 24) = v19;
  *(a6 + 32) = a5 & 1;
  *(a6 + 33) = *v22;
  *(a6 + 36) = *&v22[3];
  *(a6 + 40) = xmmword_1BCE551E0;
  result = 4.0;
  *(a6 + 56) = xmmword_1BCE551F0;
  *(a6 + 72) = 0x4008000000000000;
  *(a6 + 80) = v14;
  *(a6 + 88) = v18;
  return result;
}