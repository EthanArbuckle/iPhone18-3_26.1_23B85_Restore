uint64_t sub_1C7058BFC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1416) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C7058D0C()
{
  v1 = v0[177];
  v2 = v0[157];
  v3 = v0[158];
  sub_1C754DB8C();
  OUTLINED_FUNCTION_137();
  sub_1C754DB7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8);
  sub_1C70594B8();
  v29 = v3;
  v30 = v2;
  sub_1C754DB5C();
  if (v1)
  {
    v4 = v0[173];
    v5 = v0[172];
    v6 = v0[170];
    v24 = v0[171];
    v7 = v0[168];
    v8 = v0[167];
    v9 = v0[166];
    v26 = v0[165];
    v28 = v0[162];
    sub_1C6FF6930(v0[164]);

    sub_1C6FC1640(v30, v3);
    sub_1C6FC1640(v5, v4);
    sub_1C6FC1640(v6, v24);

    v10 = OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_70(v10, v11);
    sub_1C754F1AC();
    (*(v9 + 8))(v8, v26);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v12 + 8))(v28);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_20_4();

    __asm { BRAA            X1, X16 }
  }

  sub_1C754F2EC();
  v13 = v0[173];
  v14 = v0[172];
  v15 = v0[171];
  v16 = v0[170];
  v17 = v0[168];
  v27 = v0[167];
  v18 = v0[166];
  v25 = v0[165];
  v19 = v0[161];
  sub_1C6FF6930(v0[164]);

  sub_1C6FC1640(v30, v29);
  sub_1C6FC1640(v14, v13);
  sub_1C6FC1640(v16, v15);

  OUTLINED_FUNCTION_70(v19, v19[3]);
  sub_1C754F1AC();
  (*(v18 + 8))(v27, v25);

  OUTLINED_FUNCTION_20_4();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C7059020()
{
  v1 = v0[173];
  v2 = v0[172];
  v3 = v0[171];
  v4 = v0[170];
  v11 = v0[168];
  v12 = v0[167];
  v5 = v0[166];
  v6 = v0[164];
  v13 = v0[165];
  v14 = v0[162];
  v7 = v0[161];

  sub_1C6FC1640(v2, v1);
  sub_1C6FC1640(v4, v3);

  sub_1C6FF6930(v6);
  OUTLINED_FUNCTION_70(v7, v7[3]);
  sub_1C754F1AC();
  (*(v5 + 8))(v12, v13);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v8 + 8))(v14);

  OUTLINED_FUNCTION_43();

  return v9();
}

unint64_t sub_1C7059190()
{
  result = qword_1EC2165B0;
  if (!qword_1EC2165B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2165B0);
  }

  return result;
}

uint64_t PersonalTraitGenerator.deinit()
{
  OUTLINED_FUNCTION_26_9(v3);
  sub_1C7059364(v3);
  v1 = *(v0 + 232);

  return v0;
}

uint64_t PersonalTraitGenerator.__deallocating_deinit()
{
  PersonalTraitGenerator.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C7059260()
{
  result = qword_1EDD09930;
  if (!qword_1EDD09930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09930);
  }

  return result;
}

unint64_t sub_1C7059310()
{
  result = qword_1EDD07120;
  if (!qword_1EDD07120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07120);
  }

  return result;
}

uint64_t sub_1C70593B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = v4[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v5 + 16) = v14;
  *v14 = v15;
  v14[1] = sub_1C6F739D4;

  return sub_1C72A6F58(a1, a2, a3, a4, v10, v11, v12, v13);
}

unint64_t sub_1C70594B8()
{
  result = qword_1EDD06BC0;
  if (!qword_1EDD06BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2165B8);
    sub_1C70596E0(&qword_1EDD0C080, type metadata accessor for PersonalTrait);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06BC0);
  }

  return result;
}

uint64_t sub_1C70595CC()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_88_0();

  return sub_1C7057F6C(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1C705968C()
{
  result = qword_1EC2165C8;
  if (!qword_1EC2165C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2165C8);
  }

  return result;
}

uint64_t sub_1C70596E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C7059728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C70597B4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 24) = a1;
  v10 = sub_1C754DFFC();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 128) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C7059898, 0, 0);
}

uint64_t sub_1C7059898()
{
  v17 = v0;
  v1 = *(v0 + 128);
  sub_1C754DFEC();
  v16 = v1;
  v2 = 0xE500000000000000;
  v3 = 0x726568746FLL;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_55_2();
      v3 = v6 + 13;
      break;
    case 2:
      OUTLINED_FUNCTION_55_2();
      v3 = v7 + 7;
      break;
    case 3:
      OUTLINED_FUNCTION_55_2();
      v3 = v5 + 6;
      break;
    case 4:
      OUTLINED_FUNCTION_55_2();
      v3 = v9 | 8;
      break;
    case 5:
      v3 = 0xD000000000000014;
      v2 = 0x80000001C75969B0;
      break;
    case 6:
      OUTLINED_FUNCTION_55_2();
      v3 = v8 + 15;
      break;
    case 7:
      break;
    default:
      OUTLINED_FUNCTION_55_2();
      v3 = v4 + 12;
      break;
  }

  v10 = *(v0 + 32);
  (*(*(v0 + 64) + 8))(&v16, v3, v2, *(v0 + 104), *(v0 + 48));

  *(v0 + 16) = 0;
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *v11 = v0;
  v11[1] = sub_1C7059AA0;
  v12 = *(v0 + 104);
  v13 = *(v0 + 24);

  return v15(v13, v12);
}

uint64_t sub_1C7059AA0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1C7059C80;
  }

  else
  {
    v2 = sub_1C7059BB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C7059BB4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  sub_1C7059E7C(*(v0 + 72), *(v0 + 128), v1, v2, (v0 + 16), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1C7059C80()
{
  v1 = v0;
  if (qword_1EC213CE0 != -1)
  {
    OUTLINED_FUNCTION_5_19();
  }

  v2 = *(v0 + 120);
  v3 = sub_1C754FF1C();
  __swift_project_value_buffer(v3, qword_1EC2165D8);
  v4 = v2;
  v5 = sub_1C754FEEC();
  v6 = sub_1C755119C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 120);
    v8 = OUTLINED_FUNCTION_41_0();
    v9 = OUTLINED_FUNCTION_102();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C6F5C000, v5, v6, "Caught Adapter Call Error: %@", v8, 0xCu);
    sub_1C6FB5FC8(v9, &qword_1EC215190);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v12 = *(v1 + 120);
  v14 = *(v1 + 96);
  v13 = *(v1 + 104);
  v15 = *(v1 + 80);
  v16 = *(v1 + 88);
  v17 = *(v1 + 72);
  v18 = *(v1 + 48);
  v23 = *(v1 + 56);
  v24 = *(v1 + 64);
  v19 = *(v1 + 128);

  *(v1 + 16) = v12;
  swift_willThrow();
  sub_1C7059E7C(v17, v19, v14, v13, (v1 + 16), v18, v23, v24);
  v20 = *(v16 + 8);
  v20(v14, v15);
  v20(v13, v15);

  v21 = *(v1 + 8);

  return v21();
}

uint64_t sub_1C7059E7C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, id *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a2;
  v8 = 0xE500000000000000;
  v9 = 0x726568746FLL;
  switch(a2)
  {
    case 1:
      v8 = 0x80000001C7596920;
      v9 = 0xD000000000000021;
      break;
    case 2:
      v8 = 0x80000001C7596950;
      v9 = 0xD00000000000001BLL;
      break;
    case 3:
      v8 = 0x80000001C7596970;
      v9 = 0xD00000000000001ALL;
      break;
    case 4:
      v8 = 0x80000001C7596990;
      v9 = 0xD00000000000001CLL;
      break;
    case 5:
      v9 = 0xD000000000000014;
      v8 = 0x80000001C75969B0;
      break;
    case 6:
      v8 = 0x80000001C75969D0;
      v9 = 0xD000000000000023;
      break;
    case 7:
      break;
    default:
      v8 = 0x80000001C75968F0;
      v9 = 0xD000000000000020;
      break;
  }

  v14 = *a5;
  v15 = *(a8 + 16);
  v16 = *a5;
  v15(&v18, v9, v8, a3, a4, v14, a6, a8);
}

uint64_t sub_1C705A044()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2165D8);
  __swift_project_value_buffer(v0, qword_1EC2165D8);
  return sub_1C754FEFC();
}

uint64_t static StoryAppleIntelligenceEventReporter.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213CE0 != -1)
  {
    OUTLINED_FUNCTION_5_19();
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EC2165D8);
  OUTLINED_FUNCTION_62_2();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t StoryAppleIntelligenceEventReporter.__allocating_init()()
{
  v0 = swift_allocObject();
  StoryAppleIntelligenceEventReporter.init()();
  return v0;
}

void StoryAppleIntelligenceEventReporter.init()()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_13_16();
  v6 = sub_1C754FA3C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_logger;
  if (qword_1EC213CE0 != -1)
  {
    OUTLINED_FUNCTION_5_19();
  }

  v14 = __swift_project_value_buffer(v2, qword_1EC2165D8);
  (*(v4 + 16))(v1 + v13, v14, v2);
  v15 = v1 + OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_sessionUseCase;
  strcpy((v1 + OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_sessionUseCase), "memoryCreation");
  *(v15 + 15) = -18;
  sub_1C754DFEC();
  (*(v8 + 32))(v1 + OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_invocationID, v12, v6);
  sub_1C754F9FC();
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_reporter) = sub_1C754F9EC();
  OUTLINED_FUNCTION_25_0();
}

void sub_1C705A46C()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v67 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216610);
  v5 = OUTLINED_FUNCTION_76(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_2();
  v60 = v6;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_140_1();
  v61 = v8;
  sub_1C754F97C();
  OUTLINED_FUNCTION_3_0();
  v62 = v10;
  v63 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  sub_1C754F9AC();
  OUTLINED_FUNCTION_3_0();
  v58[1] = v15;
  v58[2] = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_2();
  v58[0] = v16;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_130();
  v58[3] = v18;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_511();
  MEMORY[0x1EEE9AC00](v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30);
  v22 = OUTLINED_FUNCTION_76(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_2();
  v66 = v23;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_130();
  v59 = v25;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v58 - v28;
  v30 = sub_1C754DFFC();
  v31 = 1;
  v64 = v29;
  v32 = OUTLINED_FUNCTION_15_6();
  __swift_storeEnumTagSinglePayload(v32, v33, 1, v30);
  v34 = OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_invocationID;
  v35 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_sessionUseCase);
  v65 = v30;
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v30);
  sub_1C705AB64(v2 + v34, v35, 0x536E6F6973736553, 0xEC00000074726174, v1, 0, v13);
  sub_1C6FB5FC8(v1, &unk_1EC217A30);
  v36 = v61;
  if (*(v2 + OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_reporter))
  {
    sub_1C754F9DC();
    v31 = 0;
  }

  v37 = sub_1C754FA3C();
  __swift_storeEnumTagSinglePayload(v36, v31, 1, v37);
  v38 = v60;
  sub_1C705CAC4(v36, v60, &qword_1EC216610);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v37);
  v43 = v66;
  v44 = v59;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C6FB5FC8(v36, &qword_1EC216610);
    v45 = OUTLINED_FUNCTION_14_14();
    v46(v45);
    v47 = v64;
    sub_1C6FB5FC8(v64, &unk_1EC217A30);
    sub_1C6FB5FC8(v38, &qword_1EC216610);
    v48 = 1;
  }

  else
  {
    MEMORY[0x1CCA5BF20](EnumTagSinglePayload, v40, v41, v42);
    sub_1C6FB5FC8(v36, &qword_1EC216610);
    v49 = OUTLINED_FUNCTION_14_14();
    v50(v49);
    v47 = v64;
    sub_1C6FB5FC8(v64, &unk_1EC217A30);
    OUTLINED_FUNCTION_62_2();
    (*(v51 + 8))(v38, v37);
    v48 = 0;
  }

  v52 = v65;
  __swift_storeEnumTagSinglePayload(v44, v48, 1, v65);
  sub_1C705C864(v44, v47);
  sub_1C705CAC4(v47, v43, &unk_1EC217A30);
  v53 = OUTLINED_FUNCTION_15_6();
  if (__swift_getEnumTagSinglePayload(v53, v54, v52) == 1)
  {
    sub_1C754DFEC();
    sub_1C6FB5FC8(v47, &unk_1EC217A30);
    v55 = OUTLINED_FUNCTION_15_6();
    if (__swift_getEnumTagSinglePayload(v55, v56, v52) != 1)
    {
      sub_1C6FB5FC8(v43, &unk_1EC217A30);
    }
  }

  else
  {
    sub_1C6FB5FC8(v47, &unk_1EC217A30);
    OUTLINED_FUNCTION_62_2();
    (*(v57 + 32))(v67, v43, v52);
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C705AB64@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, uint64_t a7@<X8>)
{
  v45 = a1;
  v46 = a5;
  v48 = a3;
  v49 = a4;
  v44 = a2;
  v50 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216618);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216620);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v43 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216610);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  v24 = sub_1C754F99C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6 && (v51 = a6, v28 = a6, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216638), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v53 + 1))
    {
      sub_1C6F699F8(&v52, v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216630);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1C755BAB0;
      v42 = v29;
      sub_1C6F699F8(v55, v29 + 32);
      goto LABEL_9;
    }
  }

  else
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
  }

  sub_1C6FB5FC8(&v52, &qword_1EC216628);
  if (a6)
  {
    v30 = a6;
    sub_1C754F89C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216630);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1C755BAB0;
    v42 = v31;
    sub_1C6F699F8(v55, v31 + 32);
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

LABEL_9:
  sub_1C75504FC();
  sub_1C75504DC();
  v32 = v27;
  sub_1C754F98C();
  v33 = sub_1C754DFFC();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v33);
  v34 = sub_1C754FA3C();
  v44 = v23;
  v35 = v34;
  (*(*(v34 - 8) + 16))(v14, v45, v34);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v35);
  sub_1C705CAC4(v46, v20, &unk_1EC217A30);
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v33);
  v36 = v43;
  (*(v25 + 16))(v43, v32, v24);
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v24);
  v37 = sub_1C754F9BC();
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v37);
  sub_1C75504FC();
  v38 = v50;
  sub_1C754F8BC();
  (*(v25 + 8))(v32, v24);
  v39 = *MEMORY[0x1E698C390];
  v40 = sub_1C754F97C();
  return (*(*(v40 - 8) + 104))(v38, v39, v40);
}

void sub_1C705B128()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v47 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216610);
  OUTLINED_FUNCTION_76(v6);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v45 = v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30);
  OUTLINED_FUNCTION_76(v9);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v44 - v11;
  v48 = sub_1C754F97C();
  OUTLINED_FUNCTION_3_0();
  v46 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  v17 = v16 - v15;
  v18 = sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_0();
  v24 = v23 - v22;
  v49 = sub_1C754FA3C();
  OUTLINED_FUNCTION_3_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_13_16();
  sub_1C754F9AC();
  OUTLINED_FUNCTION_3_0();
  v44[3] = v29;
  v44[4] = v28;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14_2();
  v44[2] = v30;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_130();
  v44[5] = v32;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_511();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_140_1();
  v44[1] = v35;
  (*(v20 + 16))(v24, v5, v18);
  sub_1C754FA1C();
  v36 = OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_invocationID;
  v37 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_sessionUseCase);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
  sub_1C705AB64(v2 + v36, v37, 0x456E6F6973736553, 0xEA0000000000646ELL, v12, v47, v17);
  sub_1C6FB5FC8(v12, &unk_1EC217A30);
  if (*(v2 + OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_reporter))
  {
    v38 = v45;
    v39 = v46;
    v40 = v49;
    (*(v26 + 16))(v45, v1, v49);
    OUTLINED_FUNCTION_25_8();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
    sub_1C754F9CC();
    sub_1C6FB5FC8(v38, &qword_1EC216610);
    (*(v39 + 8))(v17, v48);
  }

  else
  {
    (*(v46 + 8))(v17, v48);
  }

  (*(v26 + 8))(v1, v49);
  OUTLINED_FUNCTION_25_0();
}

void StoryAppleIntelligenceEventReporter.emitAdapterCallStartEvent(_:stepIdentifier:clientRequestID:)()
{
  OUTLINED_FUNCTION_33();
  v74 = v3;
  v75 = v0;
  v68 = v5;
  v69 = v4;
  v70 = v6;
  v8 = v7;
  sub_1C754FA3C();
  OUTLINED_FUNCTION_3_0();
  v58 = v10;
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_23_11(v11);
  sub_1C754F97C();
  OUTLINED_FUNCTION_3_0();
  v71 = v13;
  v72 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v16 = v15 - v14;
  v17 = sub_1C754F9AC();
  OUTLINED_FUNCTION_3_0();
  v62 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_130();
  v65 = v23;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_130();
  v66 = v25;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_140_1();
  v60 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30);
  v29 = OUTLINED_FUNCTION_76(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_14_2();
  v73 = v30;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_511();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v58 - v34;
  v36 = *v8;
  v37 = sub_1C754DFFC();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v37);
  v38 = 0x726568746FLL;
  v61 = v21;
  v63 = v17;
  switch(v36)
  {
    case 1:
      OUTLINED_FUNCTION_4_15();
      v38 = v41 + 13;
      break;
    case 2:
      OUTLINED_FUNCTION_4_15();
      v38 = v42 + 7;
      break;
    case 3:
      OUTLINED_FUNCTION_4_15();
      v38 = v40 + 6;
      break;
    case 4:
      OUTLINED_FUNCTION_4_15();
      v38 = v44 | 8;
      break;
    case 5:
      v38 = 0xD000000000000014;
      break;
    case 6:
      OUTLINED_FUNCTION_4_15();
      v38 = v43 + 15;
      break;
    case 7:
      break;
    default:
      OUTLINED_FUNCTION_4_15();
      v38 = v39 + 12;
      break;
  }

  v45 = OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_invocationID;
  v64 = *(v37 - 8);
  (*(v64 + 16))(v1, v68, v37);
  v46 = 1;
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v37);
  v50 = v75;
  sub_1C705AB64(v75 + v45, v38, v69, v70, v1, 0, v16);

  sub_1C6FB5FC8(v1, &unk_1EC217A30);
  if (*(v50 + OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_reporter))
  {
    v51 = v67;
    v52 = sub_1C754F9DC();
    MEMORY[0x1CCA5BF20](v52);
    (*(v58 + 8))(v51, v59);
    v46 = 0;
  }

  (*(v71 + 8))(v16, v72);
  sub_1C6FB5FC8(v35, &unk_1EC217A30);
  __swift_storeEnumTagSinglePayload(v2, v46, 1, v37);
  sub_1C705C864(v2, v35);
  v53 = v73;
  sub_1C705CAC4(v35, v73, &unk_1EC217A30);
  v54 = OUTLINED_FUNCTION_15_6();
  if (__swift_getEnumTagSinglePayload(v54, v55, v37) == 1)
  {
    sub_1C754DFEC();
    sub_1C6FB5FC8(v35, &unk_1EC217A30);
    v56 = OUTLINED_FUNCTION_15_6();
    if (__swift_getEnumTagSinglePayload(v56, v57, v37) != 1)
    {
      sub_1C6FB5FC8(v53, &unk_1EC217A30);
    }
  }

  else
  {
    sub_1C6FB5FC8(v35, &unk_1EC217A30);
    (*(v64 + 32))(v74, v53, v37);
  }

  OUTLINED_FUNCTION_25_0();
}

void StoryAppleIntelligenceEventReporter.emitAdapterCallEndEvent(_:stepIdentifier:startEventID:clientRequestID:error:)()
{
  OUTLINED_FUNCTION_33();
  v60 = v3;
  v61 = v2;
  v65 = v4;
  v62 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216610);
  OUTLINED_FUNCTION_76(v8);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23_11(v10);
  v11 = sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  v59 = (v16 - v15);
  sub_1C754FA3C();
  OUTLINED_FUNCTION_3_0();
  v66 = v18;
  v67 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_0();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30);
  OUTLINED_FUNCTION_76(v22);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v57 - v24;
  sub_1C754F97C();
  OUTLINED_FUNCTION_3_0();
  v63 = v27;
  v64 = v26;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_13_16();
  sub_1C754F9AC();
  OUTLINED_FUNCTION_3_0();
  v57[3] = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_14_2();
  v57[2] = v30;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_130();
  v57[5] = v32;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_130();
  v57[6] = v34;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_140_1();
  v57[1] = v36;
  v37 = *v7;
  v38 = 0x726568746FLL;
  v57[4] = v39;
  switch(v37)
  {
    case 1:
      OUTLINED_FUNCTION_55_2();
      v38 = v42 + 13;
      break;
    case 2:
      OUTLINED_FUNCTION_55_2();
      v38 = v43 + 7;
      break;
    case 3:
      OUTLINED_FUNCTION_55_2();
      v38 = v41 + 6;
      break;
    case 4:
      OUTLINED_FUNCTION_55_2();
      v38 = v45 | 8;
      break;
    case 5:
      v38 = 0xD000000000000014;
      break;
    case 6:
      OUTLINED_FUNCTION_55_2();
      v38 = v44 + 15;
      break;
    case 7:
      break;
    default:
      OUTLINED_FUNCTION_55_2();
      v38 = v40 + 12;
      break;
  }

  v46 = OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_invocationID;
  v47 = *(v13 + 16);
  v47(v25, v60, v11);
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v11);
  sub_1C705AB64(v0 + v46, v38, v61, v62, v25, 0, v1);

  sub_1C6FB5FC8(v25, &unk_1EC217A30);
  v47(v59, v65, v11);
  sub_1C754FA1C();
  if (*(v0 + OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_reporter))
  {
    v52 = v66;
    v51 = v67;
    v53 = v58;
    (*(v66 + 16))(v58, v21, v67);
    OUTLINED_FUNCTION_25_8();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v51);
    sub_1C754F9CC();
    sub_1C6FB5FC8(v53, &qword_1EC216610);
    (*(v52 + 8))(v21, v51);
  }

  else
  {
    (*(v66 + 8))(v21, v67);
  }

  (*(v63 + 8))(v1, v64);
  OUTLINED_FUNCTION_25_0();
}

uint64_t StoryAppleIntelligenceEventReporter.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC18PhotosIntelligence35StoryAppleIntelligenceEventReporter_invocationID;
  sub_1C754FA3C();
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t StoryAppleIntelligenceEventReporter.__deallocating_deinit()
{
  StoryAppleIntelligenceEventReporter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C705C600()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2165F0);
  __swift_project_value_buffer(v0, qword_1EC2165F0);
  return sub_1C754FEFC();
}

uint64_t sub_1C705C680()
{
  if (qword_1EC213CE8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C754FF1C();
  __swift_project_value_buffer(v0, qword_1EC2165F0);
  v1 = sub_1C754FEEC();
  v2 = sub_1C75511BC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C6F5C000, v1, v2, "IgnoreStoryAIReporter, do nothing", v3, 2u);
    MEMORY[0x1CCA5F8E0](v3, -1, -1);
  }

  return sub_1C754DFEC();
}

void sub_1C705C770()
{
  if (qword_1EC213CE8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C754FF1C();
  __swift_project_value_buffer(v0, qword_1EC2165F0);
  oslog = sub_1C754FEEC();
  v1 = sub_1C75511BC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1C6F5C000, oslog, v1, "IgnoreStoryAIReporter, do nothing", v2, 2u);
    MEMORY[0x1CCA5F8E0](v2, -1, -1);
  }
}

uint64_t sub_1C705C864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C705C8D4()
{
  result = qword_1EC216608;
  if (!qword_1EC216608)
  {
    sub_1C754F9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216608);
  }

  return result;
}

uint64_t type metadata accessor for StoryAppleIntelligenceEventReporter()
{
  result = qword_1EDD0CAE8;
  if (!qword_1EDD0CAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C705C9A8()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = sub_1C754FA3C();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C705CAC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_62_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

BOOL sub_1C705CB28(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE300000000000000;
    v8 = 7105633;
    switch(*v4)
    {
      case 1:
        v8 = 0x4B6F72747365616DLL;
        v7 = 0xEE0064726F777965;
        break;
      case 2:
        v8 = 0xD000000000000010;
        v7 = 0x80000001C7596010;
        break;
      case 3:
        OUTLINED_FUNCTION_1_4();
        v8 = v13 + 7;
        v7 = 0x80000001C7596030;
        break;
      case 4:
        OUTLINED_FUNCTION_1_4();
        v8 = v10 + 3;
        v7 = 0x80000001C7596050;
        break;
      case 5:
        v7 = 0xE800000000000000;
        v8 = 0x7974697669746361;
        break;
      case 6:
        v7 = 0xE600000000000000;
        v8 = 0x656C706F6570;
        break;
      case 7:
        v7 = 0xE400000000000000;
        v8 = 1701669236;
        break;
      case 8:
        v7 = 0xE500000000000000;
        v8 = 0x6563616C70;
        break;
      case 9:
        v8 = 0x74617262656C6563;
        v12 = 7237481;
        goto LABEL_33;
      case 0xA:
        v7 = 0xE700000000000000;
        v11 = 0x6164696C6F68;
        goto LABEL_27;
      case 0xB:
        v7 = 0xE400000000000000;
        v8 = 1885958772;
        break;
      case 0xC:
        v7 = 0xE700000000000000;
        v11 = 0x72746E756F63;
LABEL_27:
        v8 = v11 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
        break;
      case 0xD:
        v7 = 0xE700000000000000;
        v8 = 0x41535579746963;
        break;
      case 0xE:
        OUTLINED_FUNCTION_1_4();
        v8 = v9 + 1;
        v7 = 0x80000001C75960A0;
        break;
      case 0xF:
        v7 = 0xE600000000000000;
        v8 = 0x6C6175736976;
        break;
      case 0x10:
        v7 = 0xE800000000000000;
        v8 = 0x656E6F54646F6F6DLL;
        break;
      case 0x11:
        v7 = 0xE800000000000000;
        v8 = 0x6E6F697461727563;
        break;
      case 0x12:
        v8 = 7628144;
        break;
      case 0x13:
        v7 = 0xE500000000000000;
        v8 = OUTLINED_FUNCTION_8_13() & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
        break;
      case 0x14:
        v7 = 0xE600000000000000;
        v8 = OUTLINED_FUNCTION_8_13() & 0xFFFF0000FFFFFFFFLL | 0x746100000000;
        break;
      case 0x15:
        v7 = 0xE600000000000000;
        v8 = OUTLINED_FUNCTION_8_13() & 0xFFFF0000FFFFFFFFLL | 0x6E6500000000;
        break;
      case 0x16:
        v7 = 0xE700000000000000;
        v8 = OUTLINED_FUNCTION_8_13() | 0x65726500000000;
        break;
      case 0x17:
        v8 = 0x697254726F467369;
        v7 = 0xE900000000000070;
        break;
      case 0x18:
        v8 = 0x726F5769746C756DLL;
        v7 = 0xEF65736172685064;
        break;
      case 0x19:
        v7 = 0xE700000000000000;
        v8 = 0x646574736F6F62;
        break;
      case 0x1A:
        v8 = 0x54646574736F6F62;
        v12 = 7367026;
LABEL_33:
        v7 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 0x1B:
        v8 = 0x6146656C706F6570;
        v7 = 0xEC000000796C696DLL;
        break;
      default:
        break;
    }

    v14 = 0xE300000000000000;
    v15 = 7105633;
    switch(a1)
    {
      case 1:
        v15 = 0x4B6F72747365616DLL;
        v14 = 0xEE0064726F777965;
        break;
      case 2:
        v15 = 0xD000000000000010;
        v14 = 0x80000001C7596010;
        break;
      case 3:
        OUTLINED_FUNCTION_1_4();
        v15 = v20 + 7;
        v14 = 0x80000001C7596030;
        break;
      case 4:
        OUTLINED_FUNCTION_1_4();
        v15 = v17 + 3;
        v14 = 0x80000001C7596050;
        break;
      case 5:
        v14 = 0xE800000000000000;
        v15 = 0x7974697669746361;
        break;
      case 6:
        v14 = 0xE600000000000000;
        v15 = 0x656C706F6570;
        break;
      case 7:
        v14 = 0xE400000000000000;
        v15 = 1701669236;
        break;
      case 8:
        v14 = 0xE500000000000000;
        v15 = 0x6563616C70;
        break;
      case 9:
        v15 = 0x74617262656C6563;
        v19 = 7237481;
        goto LABEL_63;
      case 10:
        v14 = 0xE700000000000000;
        v18 = 0x6164696C6F68;
        goto LABEL_57;
      case 11:
        v14 = 0xE400000000000000;
        v15 = 1885958772;
        break;
      case 12:
        v14 = 0xE700000000000000;
        v18 = 0x72746E756F63;
LABEL_57:
        v15 = v18 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
        break;
      case 13:
        v14 = 0xE700000000000000;
        v15 = 0x41535579746963;
        break;
      case 14:
        OUTLINED_FUNCTION_1_4();
        v15 = v16 + 1;
        v14 = 0x80000001C75960A0;
        break;
      case 15:
        v14 = 0xE600000000000000;
        v15 = 0x6C6175736976;
        break;
      case 16:
        v14 = 0xE800000000000000;
        v15 = 0x656E6F54646F6F6DLL;
        break;
      case 17:
        v14 = 0xE800000000000000;
        v15 = 0x6E6F697461727563;
        break;
      case 18:
        v15 = 7628144;
        break;
      case 19:
        v14 = 0xE500000000000000;
        OUTLINED_FUNCTION_10_16();
        v15 = v24 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
        break;
      case 20:
        v14 = 0xE600000000000000;
        OUTLINED_FUNCTION_10_16();
        v15 = v21 & 0xFFFF0000FFFFFFFFLL | 0x746100000000;
        break;
      case 21:
        v14 = 0xE600000000000000;
        OUTLINED_FUNCTION_10_16();
        v15 = v22 & 0xFFFF0000FFFFFFFFLL | 0x6E6500000000;
        break;
      case 22:
        v14 = 0xE700000000000000;
        OUTLINED_FUNCTION_10_16();
        v15 = v23 | 0x65726500000000;
        break;
      case 23:
        v15 = 0x697254726F467369;
        v14 = 0xE900000000000070;
        break;
      case 24:
        v15 = 0x726F5769746C756DLL;
        v14 = 0xEF65736172685064;
        break;
      case 25:
        v14 = 0xE700000000000000;
        v15 = 0x646574736F6F62;
        break;
      case 26:
        v15 = 0x54646574736F6F62;
        v19 = 7367026;
LABEL_63:
        v14 = v19 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 27:
        v15 = 0x6146656C706F6570;
        v14 = 0xEC000000796C696DLL;
        break;
      default:
        break;
    }

    if (v8 == v15 && v7 == v14)
    {

      return v5 != 0;
    }

    v26 = OUTLINED_FUNCTION_6_21();

    ++v4;
  }

  while ((v26 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1C705D108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1C705D134(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE400000000000000;
    v8 = 1701736302;
    switch(*v4)
    {
      case 1:
        v7 = 0xE600000000000000;
        v9 = 1936876912;
        goto LABEL_22;
      case 2:
        v8 = 0x67416E6F73726570;
        v11 = 0x6570795465;
        goto LABEL_13;
      case 3:
        v8 = 1702125924;
        break;
      case 4:
        v7 = 0xE900000000000079;
        v8 = 0x6144664F74726170;
        break;
      case 5:
        v7 = 0xEA00000000006B65;
        v8 = 0x6557664F74726170;
        break;
      case 6:
        v7 = 0xE600000000000000;
        v9 = 1935762803;
LABEL_22:
        v8 = v9 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
        break;
      case 7:
        v7 = 0xE800000000000000;
        v10 = 1633906540;
        goto LABEL_17;
      case 8:
        v8 = 0x4C636972656E6567;
        v7 = 0xEF6E6F697461636FLL;
        break;
      case 9:
        v8 = 1952540791;
        break;
      case 0xA:
        v8 = 0x764563696C627570;
        v7 = 0xEB00000000746E65;
        break;
      case 0xB:
        v8 = 0x6C616E6F73726570;
        v11 = 0x746E657645;
LABEL_13:
        v7 = v11 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        break;
      case 0xC:
        v8 = 0x746954636973756DLL;
        v7 = 0xEA0000000000656CLL;
        break;
      case 0xD:
        v7 = 0xEB00000000747369;
        v8 = 0x747241636973756DLL;
        break;
      case 0xE:
        v7 = 0xEA00000000006572;
        v8 = 0x6E6547636973756DLL;
        break;
      case 0xF:
        v8 = 1685024621;
        break;
      case 0x10:
        v7 = 0xE800000000000000;
        v10 = 1634891108;
LABEL_17:
        v8 = v10 | 0x6E6F697400000000;
        break;
      case 0x11:
        v7 = 0xE600000000000000;
        v8 = 0x706972547369;
        break;
      case 0x12:
        v8 = 0x6D69546C6C417369;
        v7 = 0xE900000000000065;
        break;
      case 0x13:
        v7 = 0xE900000000000072;
        v8 = 0x6564724F74726F73;
        break;
      default:
        break;
    }

    v12 = 0xE400000000000000;
    v13 = 1701736302;
    switch(a1)
    {
      case 1:
        v12 = 0xE600000000000000;
        v14 = 1936876912;
        goto LABEL_45;
      case 2:
        v13 = 0x67416E6F73726570;
        v16 = 0x6570795465;
        goto LABEL_36;
      case 3:
        v13 = 1702125924;
        break;
      case 4:
        v12 = 0xE900000000000079;
        v13 = 0x6144664F74726170;
        break;
      case 5:
        v12 = 0xEA00000000006B65;
        v13 = 0x6557664F74726170;
        break;
      case 6:
        v12 = 0xE600000000000000;
        v14 = 1935762803;
LABEL_45:
        v13 = v14 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
        break;
      case 7:
        v12 = 0xE800000000000000;
        v15 = 1633906540;
        goto LABEL_40;
      case 8:
        v13 = 0x4C636972656E6567;
        v12 = 0xEF6E6F697461636FLL;
        break;
      case 9:
        v13 = 1952540791;
        break;
      case 10:
        v13 = 0x764563696C627570;
        v12 = 0xEB00000000746E65;
        break;
      case 11:
        v13 = 0x6C616E6F73726570;
        v16 = 0x746E657645;
LABEL_36:
        v12 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        break;
      case 12:
        v13 = 0x746954636973756DLL;
        v12 = 0xEA0000000000656CLL;
        break;
      case 13:
        v12 = 0xEB00000000747369;
        v13 = 0x747241636973756DLL;
        break;
      case 14:
        v12 = 0xEA00000000006572;
        v13 = 0x6E6547636973756DLL;
        break;
      case 15:
        v13 = 1685024621;
        break;
      case 16:
        v12 = 0xE800000000000000;
        v15 = 1634891108;
LABEL_40:
        v13 = v15 | 0x6E6F697400000000;
        break;
      case 17:
        v12 = 0xE600000000000000;
        v13 = 0x706972547369;
        break;
      case 18:
        v13 = 0x6D69546C6C417369;
        v12 = 0xE900000000000065;
        break;
      case 19:
        v12 = 0xE900000000000072;
        v13 = 0x6564724F74726F73;
        break;
      default:
        break;
    }

    if (v8 == v13 && v7 == v12)
    {

      return v5 != 0;
    }

    v18 = OUTLINED_FUNCTION_6_21();

    ++v4;
  }

  while ((v18 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1C705D5AC(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xEC00000065636E61;
    v8 = 0x746E696175716361;
    switch(*v4)
    {
      case 1:
        v7 = 0xE700000000000000;
        v9 = 0x6568746F7262;
        goto LABEL_8;
      case 2:
        v7 = 0xE500000000000000;
        v8 = 0x646C696863;
        break;
      case 3:
        OUTLINED_FUNCTION_1_4();
        v8 = v12 + 5;
        v7 = 0x80000001C7596B70;
        break;
      case 4:
        v7 = 0xE800000000000000;
        v11 = 0x6B726F776F63;
        goto LABEL_19;
      case 5:
        v7 = 0xE800000000000000;
        v11 = 0x746867756164;
LABEL_19:
        v8 = v11 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 6:
        OUTLINED_FUNCTION_1_4();
        v8 = v13 + 3;
        v7 = 0x80000001C7596BA0;
        break;
      case 7:
        v7 = 0xE600000000000000;
        v8 = 0x796C696D6166;
        break;
      case 8:
        v7 = 0xE600000000000000;
        v10 = 1752457574;
        goto LABEL_24;
      case 9:
        v7 = 0xE600000000000000;
        v8 = 0x646E65697266;
        break;
      case 0xA:
        v8 = 0xD000000000000010;
        v7 = 0x80000001C7596BD0;
        break;
      case 0xB:
        v7 = 0xE200000000000000;
        v8 = 25965;
        break;
      case 0xC:
        v8 = 0x726568746F6DLL;
        v7 = 0xE600000000000000;
        break;
      case 0xD:
        v7 = 0xE600000000000000;
        v8 = 0x746E65726170;
        break;
      case 0xE:
        v7 = 0xE700000000000000;
        v9 = 0x656E74726170;
LABEL_8:
        v8 = v9 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 0xF:
        v7 = 0xE300000000000000;
        v8 = 7237491;
        break;
      case 0x10:
        v7 = 0xE600000000000000;
        v10 = 1953720691;
LABEL_24:
        v8 = v10 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 0x11:
        v7 = 0xE300000000000000;
        v8 = 7367030;
        break;
      default:
        break;
    }

    v14 = 0x746E696175716361;
    v15 = 0xEC00000065636E61;
    switch(a1)
    {
      case 1:
        v15 = 0xE700000000000000;
        v16 = 0x6568746F7262;
        goto LABEL_29;
      case 2:
        v15 = 0xE500000000000000;
        v14 = 0x646C696863;
        break;
      case 3:
        OUTLINED_FUNCTION_1_4();
        v14 = v19 + 5;
        v15 = 0x80000001C7596B70;
        break;
      case 4:
        v15 = 0xE800000000000000;
        v18 = 0x6B726F776F63;
        goto LABEL_40;
      case 5:
        v15 = 0xE800000000000000;
        v18 = 0x746867756164;
LABEL_40:
        v14 = v18 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 6:
        OUTLINED_FUNCTION_1_4();
        v14 = v20 + 3;
        v15 = 0x80000001C7596BA0;
        break;
      case 7:
        v15 = 0xE600000000000000;
        v14 = 0x796C696D6166;
        break;
      case 8:
        v15 = 0xE600000000000000;
        v17 = 1752457574;
        goto LABEL_45;
      case 9:
        v15 = 0xE600000000000000;
        v14 = 0x646E65697266;
        break;
      case 10:
        v14 = 0xD000000000000010;
        v15 = 0x80000001C7596BD0;
        break;
      case 11:
        v15 = 0xE200000000000000;
        v14 = 25965;
        break;
      case 12:
        v14 = 0x726568746F6DLL;
        v15 = 0xE600000000000000;
        break;
      case 13:
        v15 = 0xE600000000000000;
        v14 = 0x746E65726170;
        break;
      case 14:
        v15 = 0xE700000000000000;
        v16 = 0x656E74726170;
LABEL_29:
        v14 = v16 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 15:
        v15 = 0xE300000000000000;
        v14 = 7237491;
        break;
      case 16:
        v15 = 0xE600000000000000;
        v17 = 1953720691;
LABEL_45:
        v14 = v17 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 17:
        v15 = 0xE300000000000000;
        v14 = 7367030;
        break;
      default:
        break;
    }

    if (v8 == v14 && v7 == v15)
    {

      return v5 != 0;
    }

    v22 = OUTLINED_FUNCTION_6_21();

    ++v4;
  }

  while ((v22 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_1C705D970()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  result = sub_1C755146C();
  qword_1EC216640 = result;
  return result;
}

uint64_t static AssetFetcher.fetchAssets(options:)(uint64_t a1)
{
  if (qword_1EC213CF0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC216640;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v4 = v3;
  v70 = PerformanceMeasure.init(name:log:)();
  v76[1] = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + OBJC_IVAR___PNAssetFetcherOptions_limit);
  v6 = AssetFetcherOptions.sources.getter(v70);
  v71 = v4;
  if (sub_1C6F89BF4(1u, v6) || sub_1C6F89BF4(2u, v6))
  {
    v7 = v6;
    OUTLINED_FUNCTION_2_14();
    v8 = v4;
    v9 = PerformanceMeasure.init(name:log:)();
    v10 = sub_1C705E220(v5, a1);
    v11 = v9;
    sub_1C6F85170();
    v12 = v10[2];
    v13 = __OFSUB__(v5, v12);
    v5 -= v12;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      sub_1C6FD2568(v10);
      OUTLINED_FUNCTION_22_1();
      sub_1C755180C();
      v72 = v12;
      v14 = sub_1C7551D8C();
      v16 = v15;

      v74 = v14;
      v75 = v16;
      MEMORY[0x1CCA5CD70](0xD000000000000022, 0x80000001C759AD00);
      v12 = v14;
      v4 = v75;
      sub_1C6FB1814();
      v18 = v17;
      v1 = *(v17 + 16);
      v11 = &v1->isa + 1;
      if (v1 < *(v17 + 24) >> 1)
      {
LABEL_7:

        *(v18 + 16) = v11;
        v19 = v18 + 16 * v1;
        *(v19 + 32) = v12;
        *(v19 + 40) = v4;
        v6 = v7;
        v4 = v71;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_0_25();
    v18 = v63;
    goto LABEL_7;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_9:
  if (v5 < 1)
  {
    goto LABEL_34;
  }

  if (sub_1C6F89BF4(3u, v6))
  {
    OUTLINED_FUNCTION_2_14();
    v20 = v4;
    PerformanceMeasure.init(name:log:)();
    v21 = OUTLINED_FUNCTION_4_16();
    v24 = sub_1C705E840(v21, v22, v23);
    sub_1C6F85170();
    v25 = v24[2];
    sub_1C6FD2568(v24);
    OUTLINED_FUNCTION_22_1();
    sub_1C755180C();
    v72 = v25;
    sub_1C7551D8C();
    OUTLINED_FUNCTION_7_13();
    v74 = &v72;
    v75 = v1;
    MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C759ACB0);
    v1 = v75;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_20();
      v18 = v64;
    }

    OUTLINED_FUNCTION_9_14();
    if (v26)
    {
      OUTLINED_FUNCTION_0_25();
      v18 = v65;
    }

    OUTLINED_FUNCTION_11_14();
    v4 = v71;
    if (v27 != v13)
    {
      goto LABEL_34;
    }
  }

  if (!sub_1C6F89BF4(4u, v6))
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_2_14();
  v69 = v4;
  PerformanceMeasure.init(name:log:)();
  v28 = OUTLINED_FUNCTION_4_16();
  v31 = sub_1C705EC88(v28, v29, v30, 0);
  sub_1C6F85170();
  v32 = *(v31 + 16);
  v33 = sub_1C75504FC();
  sub_1C6FD2568(v33);
  OUTLINED_FUNCTION_22_1();
  sub_1C755180C();
  v72 = v32;
  sub_1C7551D8C();
  OUTLINED_FUNCTION_7_13();
  v74 = &v72;
  v75 = v1;
  MEMORY[0x1CCA5CD70](0x6465746172756320, 0xEF73746573736120);
  v34 = v75;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_5_20();
    v18 = v66;
  }

  OUTLINED_FUNCTION_9_14();
  if (v26)
  {
    OUTLINED_FUNCTION_0_25();
    v18 = v67;
  }

  OUTLINED_FUNCTION_11_14();
  if (v27 != v13)
  {
  }

  else
  {
    v35 = OBJC_IVAR___PNAssetFetcherOptions_limiters;
    swift_beginAccess();
    v4 = v71;
    if (sub_1C6FB6304() <= 0)
    {

      goto LABEL_34;
    }

    v36 = *(a1 + v35);
    if (!sub_1C6FB6304())
    {

      goto LABEL_34;
    }

    sub_1C6FB6330(0, (v36 & 0xC000000000000001) == 0, v36);
    if ((v36 & 0xC000000000000001) != 0)
    {
      sub_1C75504FC();
      v38 = MEMORY[0x1CCA5DDD0](0, v36);
    }

    else
    {
      v37 = *(v36 + 32);
      sub_1C75504FC();
      v38 = v37;
    }

    v39 = *&v38[OBJC_IVAR___PNAssetFetcherLimiter_type];
    if (v39 >= 2)
    {
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_2_14();
    v40 = v69;
    PerformanceMeasure.init(name:log:)();
    v41 = OUTLINED_FUNCTION_4_16();
    v44 = sub_1C705EC88(v41, v42, v43, 1);
    sub_1C6F85170();
    v45 = *(v44 + 16);
    sub_1C6FD2568(v44);
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_1C755180C();
    v76[0] = v45;
    sub_1C7551D8C();
    OUTLINED_FUNCTION_7_13();
    v72 = v76;
    v73 = v34;
    MEMORY[0x1CCA5CD70](0xD00000000000001DLL, 0x80000001C759AC70);
    v46 = v72;
    v47 = v73;
    v48 = *(v18 + 16);
    if (v48 >= *(v18 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_25();
      v18 = v68;
    }

    *(v18 + 16) = v48 + 1;
    v49 = v18 + 16 * v48;
    *(v49 + 32) = v46;
    *(v49 + 40) = v47;
  }

  v4 = v71;
LABEL_34:
  v50 = *(v18 + 16);
  v51 = sub_1C755117C();
  v52 = v51;
  if (v50)
  {
    if (os_log_type_enabled(v4, v51))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v72 = v54;
      *v53 = 136315138;
      v76[0] = v18;
      sub_1C75504FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C703328C();
      v55 = sub_1C75505FC();
      v57 = v56;

      v58 = sub_1C6F765A4(v55, v57, &v72);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_1C6F5C000, v4, v52, "returned with a set of %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1CCA5F8E0](v54, -1, -1);
      MEMORY[0x1CCA5F8E0](v53, -1, -1);
    }
  }

  else
  {
    sub_1C754FDFC();
  }

  sub_1C6F85170();
  v59 = objc_opt_self();
  v60 = sub_1C7550B3C();
  v61 = [v59 fetchAssetsWithUUIDs:v60 options:*(a1 + OBJC_IVAR___PNAssetFetcherOptions_fetchOptions)];

  if (v61)
  {

    return v61;
  }

  __break(1u);
LABEL_44:
  v72 = v39;
  result = sub_1C7551E1C();
  __break(1u);
  return result;
}

id sub_1C705E220(uint64_t a1, uint64_t a2)
{
  result = [*(a2 + OBJC_IVAR___PNAssetFetcherOptions_fetchOptions) photoLibrary];
  if (result)
  {
    v4 = result;
    v5 = [result librarySpecificFetchOptions];

    v6 = [v5 setFetchLimit_];
    v30 = MEMORY[0x1E69E7CC0];
    v7 = AssetFetcherOptions.sources.getter(v6);
    if (sub_1C6F89BF4(1u, v7))
    {
      sub_1C755117C();
      if (qword_1EC213CF0 != -1)
      {
        swift_once();
      }

      sub_1C754FDFC();
      v8 = [objc_opt_self() predicateForAllFeaturedStateEnabledSuggestionTypesForWallpaper];
      MEMORY[0x1CCA5D040]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
    }

    v9 = sub_1C6F89BF4(2u, v7);

    if (v9)
    {
      sub_1C755117C();
      if (qword_1EC213CF0 != -1)
      {
        swift_once();
      }

      sub_1C754FDFC();
      v10 = [objc_opt_self() predicateForAllAmbientSuggestions];
      MEMORY[0x1CCA5D040]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
    }

    sub_1C6F65BE8(0, &qword_1EDD0FA80);
    v11 = sub_1C74B8340();
    sub_1C6F65BE8(0, &qword_1EDD0FAD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C75604F0;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1C6F6D524();
    *(v12 + 32) = 0x6574617473;
    *(v12 + 40) = 0xE500000000000000;
    v13 = MEMORY[0x1E69E7660];
    *(v12 + 96) = MEMORY[0x1E69E75F8];
    *(v12 + 104) = v13;
    *(v12 + 72) = 4;
    v14 = sub_1C755112C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C7564A90;
    *(v15 + 32) = v11;
    *(v15 + 40) = v14;
    v16 = v11;
    v17 = v14;
    v18 = sub_1C6F6E5C4();
    [v5 setPredicate_];

    if (qword_1EC213CF0 != -1)
    {
      swift_once();
    }

    v19 = qword_1EC216640;
    type metadata accessor for PerformanceMeasure();
    swift_allocObject();
    v20 = v19;
    PerformanceMeasure.init(name:log:)();
    v21 = [objc_opt_self() fetchSuggestionsWithOptions_];
    sub_1C6F85170();
    if ([v21 count])
    {
      v22 = sub_1C71CDE24(MEMORY[0x1E69E7CC0], 0, 0);
      swift_allocObject();
      v23 = v20;
      PerformanceMeasure.init(name:log:)();
      v24 = [objc_opt_self() fetchKeyAssetForEachSuggestion:v21 options:v22];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 fetchedObjects];

        if (v26)
        {
          sub_1C6F65BE8(0, &qword_1EDD0FA70);
          v27 = sub_1C7550B5C();

          if (sub_1C6FB6304() >= 1)
          {
            sub_1C6F85170();
            v28 = sub_1C705F0B0(a1, a2, v27, 0);

            return v28;
          }
        }
      }

      sub_1C6F85170();
    }

    else
    {
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C705E840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a3 + OBJC_IVAR___PNAssetFetcherOptions_fetchOptions) photoLibrary];
  if (result)
  {
    v6 = result;
    v7 = [result librarySpecificFetchOptions];

    [v7 setFetchLimit_];
    v8 = objc_opt_self();
    v9 = [v8 predicateForAllFeaturedStateEnabledSuggestionTypesForWidget];
    sub_1C6F65BE8(0, &qword_1EDD0FAD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C75604F0;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1C6F6D524();
    *(v10 + 32) = 0x6574617473;
    *(v10 + 40) = 0xE500000000000000;
    v11 = MEMORY[0x1E69E7660];
    *(v10 + 96) = MEMORY[0x1E69E75F8];
    *(v10 + 104) = v11;
    *(v10 + 72) = 4;
    v12 = sub_1C755112C();
    sub_1C6F65BE8(0, &qword_1EDD0FA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C7564A90;
    *(v13 + 32) = v9;
    *(v13 + 40) = v12;
    v14 = v9;
    v15 = v12;
    v16 = sub_1C6F6E5C4();
    [v7 setPredicate_];

    if (qword_1EC213CF0 != -1)
    {
      swift_once();
    }

    v17 = qword_1EC216640;
    type metadata accessor for PerformanceMeasure();
    swift_allocObject();
    v18 = v17;
    PerformanceMeasure.init(name:log:)();
    v19 = [v8 fetchSuggestionsWithOptions_];
    sub_1C6F85170();
    if ([v19 count])
    {
      v20 = sub_1C71CDE24(a2, 61, 0);
      swift_allocObject();
      v21 = v18;
      PerformanceMeasure.init(name:log:)();
      v22 = [objc_opt_self() fetchKeyAssetForEachSuggestion:v19 options:v20];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 fetchedObjects];

        if (v24)
        {
          sub_1C6F65BE8(0, &qword_1EDD0FA70);
          v25 = sub_1C7550B5C();

          if (sub_1C6FB6304() >= 1)
          {
            sub_1C6F85170();
            v26 = sub_1C705F0B0(a1, a3, v25, 1);

LABEL_13:

            return v26;
          }
        }
      }

      sub_1C6F85170();
    }

    else
    {
    }

    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C705EC88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1C71CE494();
  if (a4)
  {
    v26 = a2;
    v27 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C7564A90;
    sub_1C6F65BE8(0, &qword_1EDD0FAD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C75604F0;
    v11 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1C6F6D524();
    *(v10 + 32) = 0xD000000000000028;
    *(v10 + 40) = 0x80000001C759AE50;
    v13 = MEMORY[0x1E69E6530];
    v14 = MEMORY[0x1E69E65A8];
    *(v10 + 96) = MEMORY[0x1E69E6530];
    *(v10 + 104) = v14;
    *(v10 + 64) = v12;
    *(v10 + 72) = 0;
    *(v9 + 32) = sub_1C755112C();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C75604F0;
    *(v15 + 56) = v11;
    *(v15 + 64) = v12;
    strcpy((v15 + 32), "detectedFaces");
    *(v15 + 46) = -4864;
    *(v15 + 96) = v13;
    *(v15 + 104) = v14;
    *(v15 + 72) = 0;
    *(v9 + 40) = sub_1C755112C();
    if (v8)
    {
      v16 = v8;
      MEMORY[0x1CCA5D040]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
    }

    a1 = v27;
    a2 = v26;
    sub_1C6F65BE8(0, &qword_1EDD0FA80);
    v17 = sub_1C6F6E5C4();

    v8 = v17;
  }

  v18 = sub_1C71CDE24(a2, 61, v8);
  if (qword_1EC213CF0 != -1)
  {
    swift_once();
  }

  v19 = qword_1EC216640;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v20 = v19;
  PerformanceMeasure.init(name:log:)();
  v21 = [objc_opt_self() fetchAssetsWithOptions_];
  v22 = [v21 fetchedObjects];

  if (!v22)
  {
    goto LABEL_13;
  }

  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v23 = sub_1C7550B5C();

  if (sub_1C6FB6304() < 1)
  {

LABEL_13:
    sub_1C6F85170();

    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  sub_1C6F85170();
  v24 = sub_1C705F0B0(a1, a3, v23, 1);

LABEL_14:
  return v24;
}

uint64_t sub_1C705F0B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v109 = MEMORY[0x1E69E7CC0];
  v6 = sub_1C71CE784();
  v7 = sub_1C7259820(v6, a3);

  v8 = AssetFetcherOptions.filters.getter();
  v9 = OBJC_IVAR___PNAssetFetcherOptions_limiters;
  swift_beginAccess();
  v10 = *(a2 + v9);
  v100 = v7;
  if (*(v8 + 16) || sub_1C6FB6304() >= 1)
  {
    v11 = qword_1EC213CF0;
    sub_1C75504FC();
    if (v11 == -1)
    {
LABEL_4:
      v12 = qword_1EC216640;
      type metadata accessor for PerformanceMeasure();
      swift_allocObject();
      v13 = v12;
      v96 = PerformanceMeasure.init(name:log:)();
      if (a4)
      {
        v14 = objc_opt_self();
        sub_1C6F65BE8(0, &qword_1EDD0FA70);
        v15 = sub_1C7550B3C();
        v16 = sub_1C71CE890();
        [v14 prefetchOnAssets:v15 options:4 curationContext:v16];

        v104 = AssetFetcherOptions.filters.getter();
      }

      else
      {
        if (sub_1C6FB6304() >= 1)
        {
          v17 = objc_opt_self();
          sub_1C6F65BE8(0, &qword_1EDD0FA70);
          v18 = sub_1C7550B3C();
          v19 = sub_1C71CE890();
          [v17 prefetchOnAssets:v18 options:4 curationContext:v19];
        }

        v104 = MEMORY[0x1E69E7CC0];
      }

      v20 = MEMORY[0x1E69E7CC0];
      v102 = sub_1C6FB6304();
      if (v102)
      {
        v21 = 0;
        v101 = v7 & 0xC000000000000001;
        v97 = v7 + 32;
        v98 = v7 & 0xFFFFFFFFFFFFFF8;
        v22 = v10 & 0xC000000000000001;
        v105 = v10 >> 62;
        v106 = v20;
        do
        {
          if (v101)
          {
            v23 = MEMORY[0x1CCA5DDD0](v21, v7);
          }

          else
          {
            if (v21 >= *(v98 + 16))
            {
              goto LABEL_87;
            }

            v23 = *(v97 + 8 * v21);
          }

          v108 = v23;
          v24 = __OFADD__(v21, 1);
          v25 = v21 + 1;
          if (v24)
          {
            __break(1u);
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v107 = v25;
          if (a4)
          {
            v26 = *(v104 + 16);
            v27 = (v104 + 32);
            while (v26)
            {
              v28 = *v27++;
              --v26;
              if (v28 == 1)
              {
                if (![objc_opt_self() assetIsSafeForWidgetDisplay_])
                {
                  goto LABEL_25;
                }

                break;
              }
            }

            if (!sub_1C6F89BF4(3u, v104) || (v29 = [v108 curationModel], v30 = objc_msgSend(v29, sel_isNonMemorableWithAsset_, v108), v29, (v30 & 1) == 0))
            {
              if (!sub_1C6F89BF4(2u, v104))
              {
                goto LABEL_26;
              }

              v31 = [v108 curationModel];
              v32 = [v31 isMemeWithAsset_];

              if ((v32 & 1) == 0)
              {
                goto LABEL_26;
              }
            }

LABEL_25:
            v33 = v108;
LABEL_53:
          }

          else
          {
LABEL_26:
            if (v105)
            {
              v34 = sub_1C75516BC();
            }

            else
            {
              v34 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v34 < 1)
            {
              if (v20 >> 62 && sub_1C75516BC())
              {
                sub_1C707EA68(v20, v54, v55, v56, v57, v58, v59, v60, v96);
                v36 = v61;
              }

              else
              {
                v36 = MEMORY[0x1E69E7CD0];
              }
            }

            else
            {
              v35 = [v108 clsSceneClassifications];
              sub_1C6F65BE8(0, &qword_1EDD0CE08);
              sub_1C705FBD8();
              v36 = sub_1C7550F8C();
            }

            if (v105)
            {
              v37 = sub_1C75516BC();
              if (v37)
              {
LABEL_36:
                v7 = 4;
                while (1)
                {
                  sub_1C6FB6330(v7 - 4, v22 == 0, v10);
                  v38 = v22 ? MEMORY[0x1CCA5DDD0](v7 - 4, v10) : *(v10 + 8 * v7);
                  v33 = v38;
                  v39 = v7 - 3;
                  if (__OFADD__(v7 - 4, 1))
                  {
                    break;
                  }

                  v40 = a2;
                  v41 = sub_1C71CE890();
                  sub_1C74E0CEC(v108, v36);
                  v43 = v42;

                  if (v43)
                  {
                    if (sub_1C74E1090())
                    {

                      v7 = v100;
                      a2 = v40;
                      v20 = MEMORY[0x1E69E7CC0];
                      goto LABEL_53;
                    }

                    sub_1C74E10B4();
                  }

                  ++v7;
                  a2 = v40;
                  if (v39 == v37)
                  {
                    goto LABEL_45;
                  }
                }

                __break(1u);
LABEL_82:
                sub_1C75504FC();
                goto LABEL_83;
              }
            }

            else
            {
              v37 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v37)
              {
                goto LABEL_36;
              }
            }

LABEL_45:
            v44 = v108;
            result = sub_1C6FCA214(v44);
            if (!v46)
            {
              __break(1u);
              return result;
            }

            v47 = result;
            v48 = v46;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C6FB1814();
              v106 = v52;
            }

            v49 = *(v106 + 16);
            v50 = v49 + 1;
            if (v49 >= *(v106 + 24) >> 1)
            {
              sub_1C6FB1814();
              v106 = v53;
            }

            *(v106 + 16) = v50;
            v51 = v106 + 16 * v49;
            *(v51 + 32) = v47;
            *(v51 + 40) = v48;
            v109 = v106;
            v7 = v100;
            v20 = MEMORY[0x1E69E7CC0];
            if (v50 == a1)
            {
              break;
            }
          }

          v21 = v107;
        }

        while (v107 != v102);
      }

      sub_1C6F85170();

      return v109;
    }

LABEL_90:
    swift_once();
    goto LABEL_4;
  }

  if (sub_1C6FB6304() <= a1)
  {
    v64 = sub_1C6FB6304();
    v65 = 0;
    v10 = v7 & 0xC000000000000001;
    v66 = v7 & 0xFFFFFFFFFFFFFF8;
    v67 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v64 == v65)
      {

        goto LABEL_114;
      }

      if (v10)
      {
        v68 = MEMORY[0x1CCA5DDD0](v65, v7);
      }

      else
      {
        if (v65 >= *(v66 + 16))
        {
          goto LABEL_89;
        }

        v68 = *(v7 + 8 * v65 + 32);
      }

      v7 = v68;
      v69 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      v70 = sub_1C70CAC04(v68);
      v72 = v71;

      ++v65;
      v7 = v100;
      if (v72)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v67 = v75;
        }

        v73 = *(v67 + 16);
        if (v73 >= *(v67 + 24) >> 1)
        {
          sub_1C6FB1814();
          v67 = v76;
        }

        *(v67 + 16) = v73 + 1;
        v74 = v67 + 16 * v73;
        *(v74 + 32) = v70;
        *(v74 + 40) = v72;
        v65 = v69;
        v7 = v100;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_92;
  }

  v33 = ((a1 - 1) & ~((a1 - 1) >> 63)) + 1;
  sub_1C70359E0(0, v7);
  sub_1C70359E0(v33, v7);
  if ((v7 & 0xC000000000000001) == 0)
  {
    goto LABEL_82;
  }

  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  sub_1C75504FC();
  v62 = 0;
  do
  {
    v63 = v62 + 1;
    sub_1C755189C();
    v62 = v63;
  }

  while (v33 != v63);
LABEL_83:

  if (v7 >> 62)
  {
LABEL_92:
    v78 = sub_1C7551ADC();
    v67 = v81;
    v77 = v82;
    v79 = v83;

    if ((v79 & 1) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_93;
  }

  v77 = 0;
  v78 = v7 & 0xFFFFFFFFFFFFFF8;
  v67 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
  v79 = (2 * v33) | 1;
  if ((v79 & 1) == 0)
  {
LABEL_85:
    sub_1C739C610(v78, v67, v77, v79);
    v77 = v80;
LABEL_99:
    swift_unknownObjectRelease();
    goto LABEL_100;
  }

LABEL_93:
  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v84 = swift_dynamicCastClass();
  if (!v84)
  {
    swift_unknownObjectRelease();
    v84 = MEMORY[0x1E69E7CC0];
  }

  v85 = *(v84 + 16);

  if (__OFSUB__(v79 >> 1, v77))
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if (v85 != (v79 >> 1) - v77)
  {
LABEL_118:
    swift_unknownObjectRelease_n();
    goto LABEL_85;
  }

  v77 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v77)
  {
    v77 = MEMORY[0x1E69E7CC0];
    goto LABEL_99;
  }

LABEL_100:
  v78 = sub_1C6FB6304();
  v79 = 0;
  v67 = MEMORY[0x1E69E7CC0];
  while (v78 != v79)
  {
    if ((v77 & 0xC000000000000001) != 0)
    {
      v86 = MEMORY[0x1CCA5DDD0](v79, v77);
    }

    else
    {
      if (v79 >= *(v77 + 16))
      {
        goto LABEL_116;
      }

      v86 = *(v77 + 8 * v79 + 32);
    }

    v87 = v86;
    v88 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v89 = sub_1C70CAC04(v86);
    v91 = v90;

    ++v79;
    if (v91)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v67 = v94;
      }

      v92 = *(v67 + 16);
      if (v92 >= *(v67 + 24) >> 1)
      {
        sub_1C6FB1814();
        v67 = v95;
      }

      *(v67 + 16) = v92 + 1;
      v93 = v67 + 16 * v92;
      *(v93 + 32) = v89;
      *(v93 + 40) = v91;
      v79 = v88;
    }
  }

LABEL_114:
  sub_1C6FD2568(v67);
  return v109;
}

id AssetFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssetFetcher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AssetFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C705FBD8()
{
  result = qword_1EDD0CE00;
  if (!qword_1EDD0CE00)
  {
    sub_1C6F65BE8(255, &qword_1EDD0CE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CE00);
  }

  return result;
}

uint64_t sub_1C705FC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v37 = *(a1 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  sub_1C716DD68(0, v3, 0);
  v4 = v38;
  result = sub_1C719D92C(a1);
  v8 = result;
  v10 = v9;
  v11 = a3;
  v12 = v37;
  v13 = 0;
  v14 = a1 + 56;
  v15 = a2;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v8 < 1 << *(a1 + 32))
    {
      v16 = v8 >> 6;
      if ((*(v14 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_28;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_29;
      }

      v17 = *(*(a1 + 48) + 8 * v8);
      v18 = *(v15 + 8);
      v19 = v17 * v18;
      if ((v17 * v18) >> 64 != (v17 * v18) >> 63)
      {
        goto LABEL_30;
      }

      v20 = __OFADD__(v19, v11);
      v21 = v19 + v11;
      if (v20)
      {
        goto LABEL_31;
      }

      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v22 = *(v15 + 16);
      if (v21 >= *(v22 + 16))
      {
        goto LABEL_33;
      }

      v23 = *(v22 + 4 * v21 + 32);
      v25 = *(v38 + 16);
      v24 = *(v38 + 24);
      if (v25 >= v24 >> 1)
      {
        v34 = v7;
        result = sub_1C716DD68(v24 > 1, v25 + 1, 1);
        v7 = v34;
        v14 = a1 + 56;
        v15 = a2;
        v11 = a3;
        v12 = v37;
      }

      *(v38 + 16) = v25 + 1;
      *(v38 + 4 * v25 + 32) = v23;
      if (v7)
      {
        goto LABEL_37;
      }

      v26 = 1 << *(a1 + 32);
      if (v8 >= v26)
      {
        goto LABEL_34;
      }

      v27 = *(v14 + 8 * v16);
      if ((v27 & (1 << v8)) == 0)
      {
        goto LABEL_35;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_36;
      }

      v28 = v27 & (-2 << (v8 & 0x3F));
      if (v28)
      {
        v26 = __clz(__rbit64(v28)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v16 << 6;
        v30 = v16 + 1;
        v31 = (a1 + 64 + 8 * v16);
        while (v30 < (v26 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_1C6F9ED50(v8, v10, 0);
            v14 = a1 + 56;
            v15 = a2;
            v11 = a3;
            v12 = v37;
            v26 = __clz(__rbit64(v32)) + v29;
            goto LABEL_23;
          }
        }

        result = sub_1C6F9ED50(v8, v10, 0);
        v14 = a1 + 56;
        v15 = a2;
        v11 = a3;
        v12 = v37;
      }

LABEL_23:
      if (++v13 == v12)
      {
        return v4;
      }

      v7 = 0;
      v10 = *(a1 + 36);
      v8 = v26;
      if (v26 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalizationProfileConstants(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C705FFB0(uint64_t a1, uint64_t a2)
{
  v270 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = "ionType";
  if (v4 <= a2)
  {
    goto LABEL_51;
  }

  if ((v4 * v4) >> 64 != (v4 * v4) >> 63)
  {
    goto LABEL_281;
  }

  v246 = 0;
  sub_1C725CE9C(v4 * v4, 0.0);
  v7 = v6;
  v268[0] = v4;
  v268[1] = v4;
  v269 = v6;
  if (v4)
  {
    v2 = 0;
    v8 = 0;
    v9 = a1 + 32;
    v3 = 32;
    do
    {
      if ((v8 * v4) >> 64 != (v8 * v4) >> 63)
      {
        goto LABEL_209;
      }

      v262 = v8 + 1;
      sub_1C6FB632C(v8);
      v10 = 0;
      v11 = *(v9 + 8 * v8);
      v12 = v3;
      do
      {
        v13 = *(v9 + 8 * v10);
        v14 = *(v11 + 16);
        if (v14 != *(v13 + 16))
        {
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216650);
          v49 = sub_1C75504DC();

          goto LABEL_196;
        }

        LODWORD(__C) = 0;
        sub_1C75504FC();
        sub_1C75504FC();
        vDSP_dotpr((v11 + 32), 1, (v13 + 32), 1, &__C, v14);
        if (v14 >> 31)
        {
          goto LABEL_192;
        }

        v15 = *&__C;
        cblas_snrm2_NEWLAPACK();
        v17 = v16;

        cblas_snrm2_NEWLAPACK();
        v19 = v18;

        v20 = ((v15 / (v17 * v19)) + 1.0) * 0.5;
        if (v20 <= 0.0)
        {
          v21 = 3.4028e38;
        }

        else
        {
          v21 = (1.0 - v20) / v20;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v2 < 0)
          {
            goto LABEL_193;
          }
        }

        else
        {
          sub_1C70E3D94();
          v7 = v22;
          if (v2 < 0)
          {
            goto LABEL_193;
          }
        }

        if ((v2 + v10) >= *(v7 + 16))
        {
          goto LABEL_194;
        }

        ++v10;
        *(v7 + v12) = v21;
        v12 += 4;
      }

      while (v4 != v10);
      v2 += v4;
      v3 += 4 * v4;
      v8 = v262;
    }

    while (v262 != v4);
    v269 = v7;
  }

  v23 = sub_1C706E610(0, v4);
  __C = MEMORY[0x1E69E7CD0];
  sub_1C725CE9C(*(v23 + 16), 0.0);
  v25 = v24;
  v26 = v23 + 56;
  v2 = 1;
  v27 = 1 << *(v23 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & *(v23 + 56);
  v30 = (v27 + 63) >> 6;
  v249 = v7 + 32;
  v255 = v23;
  sub_1C75504FC();
  v31 = 0;
  if (v29)
  {
    while (1)
    {
      v32 = v31;
      v33 = v7 + 32;
LABEL_30:
      v34 = 0;
      v35 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v36 = (v32 << 9) | (8 * v35);
      v37 = 1 << *(v255 + 32);
      v38 = *(v255 + 48);
      if (v37 < 64)
      {
        v39 = ~(-1 << v37);
      }

      else
      {
        v39 = -1;
      }

      v40 = v39 & *(v255 + 56);
      v3 = *(v38 + v36);
      v41 = (v37 + 63) >> 6;
      v42 = 0.0;
      if (v40)
      {
        while (1)
        {
          v43 = v34;
LABEL_38:
          v44 = *(v38 + ((v43 << 9) | (8 * __clz(__rbit64(v40)))));
          v45 = v44 * v4;
          if ((v44 * v4) >> 64 != (v44 * v4) >> 63)
          {
            goto LABEL_204;
          }

          v46 = __OFADD__(v45, v3);
          v47 = v45 + v3;
          if (v46)
          {
            goto LABEL_205;
          }

          if ((v47 & 0x8000000000000000) != 0)
          {
            goto LABEL_206;
          }

          if (v47 >= *(v7 + 16))
          {
            goto LABEL_207;
          }

          v40 &= v40 - 1;
          v42 = v42 + *(v33 + 4 * v47);
          v34 = v43;
          if (!v40)
          {
            goto LABEL_35;
          }
        }
      }

      while (1)
      {
LABEL_35:
        v43 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
LABEL_198:
          __break(1u);
          goto LABEL_199;
        }

        if (v43 >= v41)
        {
          break;
        }

        v40 = *(v26 + 8 * v43);
        ++v34;
        if (v40)
        {
          goto LABEL_38;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        break;
      }

      sub_1C70E3D94();
      v25 = v48;
      if (v3 < 0)
      {
        goto LABEL_50;
      }

LABEL_46:
      if (v3 >= *(v25 + 16))
      {
LABEL_247:
        __break(1u);
LABEL_248:
        __break(1u);
        goto LABEL_249;
      }

      *(v25 + 4 * v3 + 32) = v42;
      v31 = v32;
      if (!v29)
      {
        goto LABEL_26;
      }
    }

    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    if (!v4)
    {
      return MEMORY[0x1E69E7CC8];
    }

    v7 = 0;
    v49 = MEMORY[0x1E69E7CC8];
    v263 = *(v5 + 171);
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D08);
      v3 = swift_allocObject();
      *(v3 + 16) = v263;
      *(v3 + 32) = v7;
      swift_isUniquelyReferenced_nonNull_native();
      v268[0] = v49;
      sub_1C6FCABD0(v7);
      OUTLINED_FUNCTION_2_15();
      if (v46)
      {
        break;
      }

      v52 = v50;
      v2 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216648);
      if (sub_1C7551A2C())
      {
        v53 = sub_1C6FCABD0(v7);
        if ((v2 & 1) != (v54 & 1))
        {
LABEL_296:
          sub_1C7551E4C();
          __break(1u);
          goto LABEL_297;
        }

        v52 = v53;
      }

      v49 = v268[0];
      if (v2)
      {
        *(*(v268[0] + 56) + 8 * v52) = v3;
      }

      else
      {
        OUTLINED_FUNCTION_1_3(v268[0] + 8 * (v52 >> 6));
        *(v49[6] + 8 * v52) = v7;
        *(v49[7] + 8 * v52) = v3;
        v55 = v49[2];
        v46 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v46)
        {
          goto LABEL_202;
        }

        v49[2] = v56;
      }

      if (v4 == ++v7)
      {
        return v49;
      }
    }

LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
    goto LABEL_210;
  }

LABEL_26:
  v33 = v7 + 32;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_200;
    }

    if (v32 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v32);
    ++v31;
    if (v29)
    {
      goto LABEL_30;
    }
  }

  v57 = v255;

  v58 = *(v25 + 16);
  if (!v58)
  {
    goto LABEL_244;
  }

  v59 = 0;
  v60 = 0;
  v61 = 0;
  v2 = 0;
  while (v58 - 1 != v59)
  {
    if (v61 >= v58)
    {
      goto LABEL_201;
    }

    if (*(v25 + 4 * v59 + 36) < *(v25 + 32 + 4 * v61))
    {
      v60 = v59 + 1;
      v61 = v59 + 1;
    }

    ++v59;
  }

  sub_1C70F428C(&v266, v60);
  v62 = __C;
  if (*(__C + 16) >= a2)
  {
    goto LABEL_109;
  }

  v3 = 1;
  do
  {
    sub_1C75504FC();
    v63 = v62;
    v64 = sub_1C723883C(v62, v57);
    v65 = 0;
    v66 = 0;
    v67 = v64 + 56;
    v238 = v64;
    v68 = 1 << *(v64 + 32);
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    else
    {
      v69 = -1;
    }

    v70 = v69 & *(v64 + 56);
    v71 = (v68 + 63) >> 6;
    v72 = 0.0;
    v234 = v64 + 56;
    v233 = v71;
    v264 = v63;
    if (!v70)
    {
      goto LABEL_78;
    }

    do
    {
      v246 = v65;
      v73 = v66;
LABEL_82:
      v243 = (v70 - 1) & v70;
      v74 = *(*(v238 + 48) + ((v73 << 9) | (8 * __clz(__rbit64(v70)))));
      sub_1C75504FC();
      sub_1C723883C(v63, v255);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D08);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C755BAB0;
      *(inited + 32) = v74;
      sub_1C74C4018();
      v77 = v76;
      swift_setDeallocating();
      v78 = 0;
      v80 = v77 + 56;
      v79 = *(v77 + 56);
      v259 = v77;
      v81 = 1 << *(v77 + 32);
      if (v81 < 64)
      {
        v82 = ~(-1 << v81);
      }

      else
      {
        v82 = -1;
      }

      v83 = v82 & v79;
      v3 = (v81 + 63) >> 6;
      v240 = v74;
      v251 = v74 * v4;
      v253 = (v74 * v4) >> 64 != (v74 * v4) >> 63;
      v84 = 0.0;
      if ((v82 & v79) == 0)
      {
        goto LABEL_87;
      }

      do
      {
        v85 = v78;
LABEL_90:
        v86 = *(*(v259 + 48) + ((v85 << 9) | (8 * __clz(__rbit64(v83)))));
        v87 = sub_1C705FC44(v264, v268, v86);
        v88 = *(v87 + 16);
        if (!v88)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216650);
          v49 = sub_1C75504DC();

LABEL_196:

          return v49;
        }

        v89 = *(v87 + 32);
        v90 = v88 - 1;
        if (v90)
        {
          v91 = (v87 + 36);
          do
          {
            v92 = *v91++;
            v93 = v92;
            if (v92 < v89)
            {
              v89 = v93;
            }

            --v90;
          }

          while (v90);
        }

        if (v253)
        {
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          v246 = v2;
          v261 = v73;
          v256 = *(v73 + 16);
          if (v256)
          {
            v179 = v73;
            v180 = 0;
            v181 = 0;
            v182 = MEMORY[0x1E69E7CC8];
            v183 = (v179 + 40);
            while (v181 < *(v261 + 16))
            {
              v184 = *(v183 - 1);
              v185 = *v183;
              sub_1C6F6E5B4(v180);
              swift_isUniquelyReferenced_nonNull_native();
              v266 = v182;
              v186 = sub_1C6FCABD0(v184);
              if (__OFADD__(*(v182 + 16), (v187 & 1) == 0))
              {
                goto LABEL_292;
              }

              v188 = v186;
              v189 = v187;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216658);
              v190 = sub_1C7551A2C();
              v191 = v266;
              if (v190)
              {
                v192 = sub_1C6FCABD0(v184);
                if ((v189 & 1) != (v193 & 1))
                {
                  goto LABEL_296;
                }

                v188 = v192;
              }

              if ((v189 & 1) == 0)
              {
                OUTLINED_FUNCTION_1_3(&v191[v188 >> 6]);
                *(v191[6] + 8 * v188) = v184;
                *(v191[7] + 8 * v188) = MEMORY[0x1E69E7CC0];
                v194 = v191[2];
                v46 = __OFADD__(v194, 1);
                v195 = v194 + 1;
                if (v46)
                {
                  goto LABEL_293;
                }

                v191[2] = v195;
              }

              v2 = v191;
              v196 = v191[7];
              v197 = *(v196 + 8 * v188);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v196 + 8 * v188) = v197;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1C6FB2C20();
                v197 = v202;
                *(v196 + 8 * v188) = v202;
              }

              v200 = *(v197 + 16);
              v199 = *(v197 + 24);
              if (v200 >= v199 >> 1)
              {
                OUTLINED_FUNCTION_3_4(v199);
                sub_1C6FB2C20();
                v197 = v203;
                *(v196 + 8 * v188) = v203;
              }

              v182 = v2;
              v201 = v197 + 16 * v200;
              *(v201 + 32) = v181;
              *(v197 + 16) = v200 + 1;
              *(v201 + 40) = v185;
              v183 += 4;
              v180 = sub_1C6F86C50;
              if (v256 == ++v181)
              {
                goto LABEL_250;
              }
            }

            goto LABEL_291;
          }

LABEL_249:
          v180 = 0;
          v182 = MEMORY[0x1E69E7CC8];
LABEL_250:
          v242 = v180;
          v205 = v182 + 64;
          v206 = 1 << *(v182 + 32);
          v207 = -1;
          if (v206 < 64)
          {
            v207 = ~(-1 << v206);
          }

          v208 = v207 & *(v182 + 64);
          v209 = (v206 + 63) >> 6;
          sub_1C75504FC();
          v210 = 0;
          v49 = MEMORY[0x1E69E7CC8];
          v2 = v246;
          v248 = v182;
          v250 = v209;
          v245 = v182 + 64;
          if (!v208)
          {
            while (1)
            {
LABEL_253:
              v211 = v210 + 1;
              if (__OFADD__(v210, 1))
              {
                goto LABEL_286;
              }

              if (v211 >= v209)
              {
                break;
              }

              v208 = *(v205 + 8 * v211);
              ++v210;
              if (v208)
              {
                v210 = v211;
                goto LABEL_257;
              }
            }

            sub_1C6F6E5B4(v242);
            return v49;
          }

LABEL_257:
          while (1)
          {
            v252 = v210;
            v212 = (v210 << 9) | (8 * __clz(__rbit64(v208)));
            v257 = *(*(v182 + 48) + v212);
            v266 = *(*(v182 + 56) + v212);
            swift_bridgeObjectRetain_n();
            sub_1C70621E4(&v266);
            if (v2)
            {
              break;
            }

            v213 = v266;
            v214 = v266[2];
            if (v214)
            {
              v266 = MEMORY[0x1E69E7CC0];
              sub_1C716D854();
              v2 = v266;
              v215 = v266[2];
              v216 = 32;
              do
              {
                v217 = *(v213 + v216);
                v266 = v2;
                if (v215 >= *(v2 + 24) >> 1)
                {
                  sub_1C716D854();
                  v2 = v266;
                }

                *(v2 + 16) = v215 + 1;
                *(v2 + 8 * v215 + 32) = v217;
                v216 += 16;
                ++v215;
                --v214;
              }

              while (v214);

              v182 = v248;
              v205 = v245;
            }

            else
            {

              v2 = MEMORY[0x1E69E7CC0];
            }

            swift_isUniquelyReferenced_nonNull_native();
            v266 = v49;
            sub_1C6FCABD0(v257);
            OUTLINED_FUNCTION_2_15();
            if (v46)
            {
              goto LABEL_294;
            }

            v220 = v218;
            v221 = v219;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216648);
            if (sub_1C7551A2C())
            {
              v222 = sub_1C6FCABD0(v257);
              v209 = v250;
              if ((v221 & 1) != (v223 & 1))
              {
                goto LABEL_296;
              }

              v220 = v222;
            }

            else
            {
              v209 = v250;
            }

            v49 = v266;
            if (v221)
            {
              *(v266[7] + 8 * v220) = v2;
            }

            else
            {
              OUTLINED_FUNCTION_1_3(&v266[v220 >> 6]);
              *(v49[6] + 8 * v220) = v257;
              *(v49[7] + 8 * v220) = v2;
              v224 = v49[2];
              v46 = __OFADD__(v224, 1);
              v225 = v224 + 1;
              if (v46)
              {
                goto LABEL_295;
              }

              v49[2] = v225;
            }

            v2 = 0;
            v210 = v252;
            v208 &= v208 - 1;
            if (!v208)
            {
              goto LABEL_253;
            }
          }

LABEL_297:

          __break(1u);
          return result;
        }

        v94 = v251 + v86;
        if (__OFADD__(v251, v86))
        {
          goto LABEL_224;
        }

        if ((v94 & 0x8000000000000000) != 0)
        {
          goto LABEL_225;
        }

        if (v94 >= *(v7 + 16))
        {
          goto LABEL_226;
        }

        v83 &= v83 - 1;
        v95 = v89 - *(v7 + 32 + 4 * v94);
        if (v95 <= 0.0)
        {
          v95 = 0.0;
        }

        v84 = v84 + v95;
        v78 = v85;
      }

      while (v83);
      while (1)
      {
LABEL_87:
        v85 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          goto LABEL_198;
        }

        if (v85 >= v3)
        {
          break;
        }

        v83 = *(v80 + 8 * v85);
        ++v78;
        if (v83)
        {
          goto LABEL_90;
        }
      }

      v70 = v243;
      v65 = v246;
      if (v72 < v84)
      {
        v65 = v240;
        v72 = v84;
      }

      v66 = v73;
      v63 = v264;
      v3 = 1;
      v67 = v234;
      v71 = v233;
    }

    while (v243);
    while (1)
    {
LABEL_78:
      v73 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        goto LABEL_208;
      }

      if (v73 >= v71)
      {
        break;
      }

      v70 = *(v67 + 8 * v73);
      ++v66;
      if (v70)
      {
        v246 = v65;
        goto LABEL_82;
      }
    }

    sub_1C70F428C(&v266, v65);
    v62 = __C;
    v57 = v255;
  }

  while (*(__C + 16) < a2);
LABEL_109:
  OUTLINED_FUNCTION_0_26();
  v260 = sub_1C7061514(v96, v97, v98, v99, v100);
  OUTLINED_FUNCTION_0_26();
  v247 = sub_1C7061A08(v101, v102, v103, v104, v105);
  v106 = 0;
  v3 = v62;
  while (1)
  {
    v226 = v106 + 1;
    v230 = v3 + 56;
    v107 = 1 << *(v3 + 32);
    v108 = v107 < 64 ? ~(-1 << v107) : -1;
    v109 = v108 & *(v3 + 56);
    v229 = (v107 + 63) >> 6;
    v235 = v3 + 56;
    sub_1C75504FC();
    v241 = 0;
    v239 = 0;
    v110 = 0;
    v111 = INFINITY;
LABEL_114:
    if (v109)
    {
      break;
    }

    while (1)
    {
      v112 = v110 + 1;
      if (__OFADD__(v110, 1))
      {
        goto LABEL_248;
      }

      if (v112 >= v229)
      {
        break;
      }

      v109 = *(v230 + 8 * v112);
      ++v110;
      if (v109)
      {
        v246 = v2;
        goto LABEL_120;
      }
    }

    if (v111 <= 0.0)
    {
      if (v111 < 0.0)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D08);
        v153 = swift_initStackObject();
        *(v153 + 16) = xmmword_1C755BAB0;
        *(v153 + 32) = v239;
        sub_1C74C4018();
        v155 = v154;
        swift_setDeallocating();
        __C = v155;
        sub_1C70F428C(&v266, v241);
        v3 = __C;
        OUTLINED_FUNCTION_0_26();
        v260 = sub_1C7061514(v156, v157, v158, v159, v160);
        OUTLINED_FUNCTION_0_26();
        v247 = sub_1C7061A08(v161, v162, v163, v164, v165);
      }

      v106 = v226;
      if (v226 != 1000)
      {
        continue;
      }
    }

    goto LABEL_211;
  }

  v246 = v2;
  v112 = v110;
LABEL_120:
  v227 = v112;
  v228 = (v109 - 1) & v109;
  v244 = *(*(v3 + 48) + ((v112 << 9) | (8 * __clz(__rbit64(v109)))));
  sub_1C75504FC();
  v113 = sub_1C723883C(v3, v57);
  v114 = 0;
  v115 = v113 + 56;
  v116 = 1 << *(v113 + 32);
  if (v116 < 64)
  {
    v117 = ~(-1 << v116);
  }

  else
  {
    v117 = -1;
  }

  v118 = v117 & *(v113 + 56);
  v119 = (v116 + 63) >> 6;
  v231 = v119;
  v232 = v113 + 56;
  v265 = v3;
  v237 = v113;
  if (!v118)
  {
    goto LABEL_125;
  }

  while (2)
  {
    v2 = v114;
LABEL_128:
    v254 = *(*(v113 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v118)))));
    v120 = *(v57 + 16);
    if (*(v3 + 16) > v120 >> 3)
    {
      sub_1C75504FC();
      sub_1C74C3CA4();
LABEL_144:
      v118 &= v118 - 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D08);
      v128 = swift_initStackObject();
      *(v128 + 16) = xmmword_1C755BAB0;
      *(v128 + 32) = v254;
      sub_1C74C4018();
      v130 = v129;
      swift_setDeallocating();
      v131 = 0;
      v132 = 1 << *(v130 + 32);
      if (v132 < 64)
      {
        v133 = ~(-1 << v132);
      }

      else
      {
        v133 = -1;
      }

      v134 = v133 & *(v130 + 56);
      v3 = (v132 + 63) >> 6;
      v135 = 0.0;
      while (v134)
      {
LABEL_153:
        if (!*(v260 + 16))
        {
          goto LABEL_195;
        }

        v137 = *(*(v130 + 48) + ((v131 << 9) | (8 * __clz(__rbit64(v134)))));
        v138 = sub_1C6FCABD0(v137);
        if ((v139 & 1) == 0)
        {
          goto LABEL_195;
        }

        if (!*(v247 + 16))
        {
          goto LABEL_195;
        }

        v140 = *(*(v260 + 56) + 4 * v138);
        v141 = sub_1C6FCABD0(v137);
        if ((v142 & 1) == 0)
        {
          goto LABEL_195;
        }

        v143 = v137 * v4;
        if ((v137 * v4) >> 64 != (v137 * v4) >> 63)
        {
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
LABEL_293:
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
        }

        v144 = v143 + v244;
        if (__OFADD__(v143, v244))
        {
          goto LABEL_278;
        }

        if ((v144 & 0x8000000000000000) != 0)
        {
          goto LABEL_279;
        }

        v145 = *(v7 + 16);
        if (v144 >= v145)
        {
          goto LABEL_280;
        }

        v146 = *(v249 + 4 * v144);
        v46 = __OFADD__(v143, v254);
        v147 = v143 + v254;
        v148 = v46;
        if (v140 >= v146)
        {
          if (v148)
          {
            goto LABEL_282;
          }

          if (v147 >= v145)
          {
            goto LABEL_285;
          }

          v150 = *(*(v247 + 56) + 4 * v141);
          if (v150 >= *(v249 + 4 * v147))
          {
            v150 = *(v249 + 4 * v147);
          }

          v149 = v150 - v140;
        }

        else
        {
          if (v148)
          {
            goto LABEL_283;
          }

          if (v147 >= v145)
          {
            goto LABEL_284;
          }

          v149 = *(v249 + 4 * v147) - v140;
          if (v149 > 0.0)
          {
            v149 = 0.0;
          }
        }

        v134 &= v134 - 1;
        v135 = v135 + v149;
      }

      while (1)
      {
        v136 = v131 + 1;
        if (__OFADD__(v131, 1))
        {
          goto LABEL_203;
        }

        if (v136 >= v3)
        {
          break;
        }

        v134 = *(v130 + 56 + 8 * v136);
        ++v131;
        if (v134)
        {
          v131 = v136;
          goto LABEL_153;
        }
      }

      v151 = v241;
      v57 = v255;
      if (v135 < v111)
      {
        v151 = v254;
      }

      v241 = v151;
      v113 = v237;
      v152 = v239;
      if (v135 < v111)
      {
        v152 = v244;
      }

      v239 = v152;
      if (v135 < v111)
      {
        v111 = v135;
      }

      v114 = v2;
      v3 = v265;
      v119 = v231;
      v115 = v232;
      if (!v118)
      {
LABEL_125:
        while (1)
        {
          v2 = v114 + 1;
          if (__OFADD__(v114, 1))
          {
            break;
          }

          if (v2 >= v119)
          {

            v110 = v227;
            v109 = v228;
            v2 = v246;
            goto LABEL_114;
          }

          v118 = *(v115 + 8 * v2);
          ++v114;
          if (v118)
          {
            goto LABEL_128;
          }
        }

        __break(1u);
        goto LABEL_247;
      }

      continue;
    }

    break;
  }

  v266 = v57;
  if (!v120)
  {
    sub_1C75504FC();
    goto LABEL_144;
  }

  v121 = 1 << *(v3 + 32);
  if (v121 < 64)
  {
    v122 = ~(-1 << v121);
  }

  else
  {
    v122 = -1;
  }

  v123 = v122 & *(v3 + 56);
  v124 = (v121 + 63) >> 6;
  sub_1C75504FC();
  sub_1C75504FC();
  v125 = 0;
  while (v123)
  {
    v126 = v125;
LABEL_140:
    v127 = __clz(__rbit64(v123));
    v123 &= v123 - 1;
    sub_1C7421E0C(*(*(v3 + 48) + ((v126 << 9) | (8 * v127))));
  }

  while (1)
  {
    v126 = v125 + 1;
    if (__OFADD__(v125, 1))
    {
      break;
    }

    if (v126 >= v124)
    {

      goto LABEL_144;
    }

    v123 = *(v235 + 8 * v126);
    ++v125;
    if (v123)
    {
      v125 = v126;
      goto LABEL_140;
    }
  }

LABEL_210:
  __break(1u);
LABEL_211:

  v166 = 0;
  v73 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v4 == v166)
    {
      goto LABEL_227;
    }

    v167 = sub_1C706205C(v3, v268, v166);
    if (v168)
    {
      break;
    }

    v169 = v167;
    v170 = v167 * v4;
    if ((v167 * v4) >> 64 != (v167 * v4) >> 63)
    {
      goto LABEL_287;
    }

    v46 = __OFADD__(v170, v166);
    v171 = v170 + v166;
    if (v46)
    {
      goto LABEL_288;
    }

    if ((v171 & 0x8000000000000000) != 0)
    {
      goto LABEL_289;
    }

    if (v171 >= *(v7 + 16))
    {
      goto LABEL_290;
    }

    v172 = *(v249 + 4 * v171);
    v173 = v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB2C20();
      v73 = v177;
    }

    v175 = *(v73 + 16);
    v174 = *(v73 + 24);
    if (v175 >= v174 >> 1)
    {
      OUTLINED_FUNCTION_3_4(v174);
      sub_1C6FB2C20();
      v73 = v178;
    }

    *(v73 + 16) = v175 + 1;
    v176 = v73 + 16 * v175;
    *(v176 + 32) = v169;
    *(v176 + 40) = v172;
    ++v166;
    v2 = v173;
  }

LABEL_244:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216650);
  v49 = sub_1C75504DC();

  return v49;
}

uint64_t sub_1C7061514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C75504FC();
  v8 = sub_1C723883C(a2, a1);
  v9 = v8;
  v10 = 0;
  v11 = v8 + 56;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v8 + 56);
  v15 = (v12 + 63) >> 6;
  v65 = a5;
  v74 = a5 + 32;
  v16 = MEMORY[0x1E69E7CC8];
  v67 = v15;
  v63 = v8 + 56;
  v64 = v8;
  if (v14)
  {
    while (1)
    {
      v17 = v10;
LABEL_8:
      v68 = v17;
      v69 = v14;
      v73 = *(*(v9 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v14)))));
      v18 = *(a2 + 16);
      if (v18)
      {
        break;
      }

      v19 = MEMORY[0x1E69E7CC0];
LABEL_34:
      v48 = *(v19 + 16);
      if (!v48)
      {

        v16 = sub_1C75504DC();
        goto LABEL_51;
      }

      v49 = *(v19 + 32);
      v50 = v48 - 1;
      if (v50)
      {
        v51 = (v19 + 36);
        do
        {
          v52 = *v51++;
          v53 = v52;
          if (v52 < v49)
          {
            v49 = v53;
          }

          --v50;
        }

        while (v50);
      }

      swift_isUniquelyReferenced_nonNull_native();
      v54 = sub_1C6FCABD0(v73);
      if (__OFADD__(v16[2], (v55 & 1) == 0))
      {
        goto LABEL_62;
      }

      v56 = v54;
      v57 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152B0);
      if (sub_1C7551A2C())
      {
        v58 = sub_1C6FCABD0(v73);
        if ((v57 & 1) != (v59 & 1))
        {
          goto LABEL_65;
        }

        v56 = v58;
      }

      v14 = (v69 - 1) & v69;
      if (v57)
      {
        *(v16[7] + 4 * v56) = v49;
      }

      else
      {
        v16[(v56 >> 6) + 8] |= 1 << v56;
        *(v16[6] + 8 * v56) = v73;
        *(v16[7] + 4 * v56) = v49;
        v60 = v16[2];
        v35 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v35)
        {
          goto LABEL_63;
        }

        v16[2] = v61;
      }

      v10 = v68;
      v15 = v67;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v66 = v16;
    v75 = MEMORY[0x1E69E7CC0];
    v72 = *(a2 + 16);
    sub_1C716DD68(0, v18, 0);
    v19 = v75;
    v20 = sub_1C719D92C(a2);
    v22 = v72;
    v21 = v73;
    v24 = a2 + 56;
    v23 = a4;
    v25 = v20;
    v27 = v26;
    v29 = v28;
    v30 = 0;
    v31 = *(v65 + 16);
    v70 = v31;
    if ((v20 & 0x8000000000000000) == 0)
    {
      while (v25 < 1 << *(a2 + 32))
      {
        v32 = v25 >> 6;
        if ((*(v24 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
        {
          goto LABEL_53;
        }

        if (*(a2 + 36) != v27)
        {
          goto LABEL_54;
        }

        v33 = *(*(a2 + 48) + 8 * v25);
        v34 = v33 * v23;
        if ((v33 * v23) >> 64 != (v33 * v23) >> 63)
        {
          goto LABEL_55;
        }

        v35 = __OFADD__(v34, v21);
        v36 = v34 + v21;
        if (v35)
        {
          goto LABEL_56;
        }

        if (v36 >= v31)
        {
          goto LABEL_57;
        }

        v37 = *(v74 + 4 * v36);
        v39 = *(v75 + 16);
        v38 = *(v75 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1C716DD68(v38 > 1, v39 + 1, 1);
          v31 = v70;
          v24 = a2 + 56;
          v22 = v72;
          v21 = v73;
          v23 = a4;
        }

        *(v75 + 16) = v39 + 1;
        *(v75 + 4 * v39 + 32) = v37;
        if (v29)
        {
          goto LABEL_64;
        }

        v40 = 1 << *(a2 + 32);
        if (v25 >= v40)
        {
          goto LABEL_58;
        }

        v41 = *(v24 + 8 * v32);
        if ((v41 & (1 << v25)) == 0)
        {
          goto LABEL_59;
        }

        if (*(a2 + 36) != v27)
        {
          goto LABEL_60;
        }

        v42 = v41 & (-2 << (v25 & 0x3F));
        if (v42)
        {
          v40 = __clz(__rbit64(v42)) | v25 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v43 = v32 << 6;
          v44 = v32 + 1;
          v45 = (a2 + 64 + 8 * v32);
          while (v44 < (v40 + 63) >> 6)
          {
            v47 = *v45++;
            v46 = v47;
            v43 += 64;
            ++v44;
            if (v47)
            {
              sub_1C6F9ED50(v25, v27, 0);
              v31 = v70;
              v24 = a2 + 56;
              v22 = v72;
              v21 = v73;
              v23 = a4;
              v40 = __clz(__rbit64(v46)) + v43;
              goto LABEL_29;
            }
          }

          sub_1C6F9ED50(v25, v27, 0);
          v31 = v70;
          v24 = a2 + 56;
          v22 = v72;
          v21 = v73;
          v23 = a4;
        }

LABEL_29:
        if (++v30 == v22)
        {
          v11 = v63;
          v9 = v64;
          v16 = v66;
          goto LABEL_34;
        }

        v29 = 0;
        v27 = *(a2 + 36);
        v25 = v40;
        if (v40 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
LABEL_51:

        return v16;
      }

      v14 = *(v11 + 8 * v17);
      ++v10;
      if (v14)
      {
        goto LABEL_8;
      }
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C7061A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C75504FC();
  v8 = sub_1C723883C(a2, a1);
  v9 = v8;
  v10 = 0;
  v11 = v8 + 56;
  v12 = 1 << *(v8 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v8 + 56);
  v15 = (v12 + 63) >> 6;
  v16 = a2 + 56;
  v17 = a5 + 32;
  v18 = MEMORY[0x1E69E7CC8];
  v19 = a2 + 64;
  v89 = a2 + 64;
  v90 = a2 + 56;
  v95 = a5 + 32;
  if (v14)
  {
    while (2)
    {
      result = a4;
LABEL_11:
      v22 = *(*(v9 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v14)))));
      v23 = 1 << *(a2 + 32);
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v25 = v24 & *(a2 + 56);
      if (v25)
      {
        v26 = 0;
        v27 = __clz(__rbit64(v25));
        v28 = (v25 - 1) & v25;
        v29 = (v23 + 63) >> 6;
        goto LABEL_20;
      }

      v30 = 0;
      v29 = (v23 + 63) >> 6;
      do
      {
        v26 = v25 + 1;
        if (v25 + 1 >= v29)
        {

          v18 = sub_1C75504DC();
LABEL_77:

          return v18;
        }

        v31 = *(v19 + 8 * v25);
        v30 += 64;
        ++v25;
      }

      while (!v31);
      v28 = (v31 - 1) & v31;
      v27 = __clz(__rbit64(v31)) + v30;
LABEL_20:
      v32 = (v14 - 1) & v14;
      v33 = *(a2 + 48);
      v34 = *(v33 + 8 * v27);
      v35 = v34;
      if (!v28)
      {
        goto LABEL_22;
      }

      do
      {
        v36 = v26;
LABEL_25:
        v37 = *(v33 + ((v36 << 9) | (8 * __clz(__rbit64(v28)))));
        v38 = v37 * result;
        if ((v37 * result) >> 64 != (v37 * result) >> 63)
        {
          goto LABEL_89;
        }

        v39 = __OFADD__(v38, v22);
        v40 = v38 + v22;
        if (v39)
        {
          goto LABEL_90;
        }

        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_91;
        }

        v41 = *(a5 + 16);
        if (v40 >= v41)
        {
          goto LABEL_92;
        }

        v42 = v35 * result;
        if ((v35 * result) >> 64 != (v35 * result) >> 63)
        {
          goto LABEL_93;
        }

        v39 = __OFADD__(v42, v22);
        v43 = v42 + v22;
        if (v39)
        {
          goto LABEL_94;
        }

        if (v43 >= v41)
        {
          goto LABEL_95;
        }

        v28 &= v28 - 1;
        if (*(v17 + 4 * v40) < *(v17 + 4 * v43))
        {
          v34 = v37;
          v35 = v37;
        }

        v26 = v36;
      }

      while (v28);
      while (1)
      {
LABEL_22:
        v36 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        if (v36 >= v29)
        {
          break;
        }

        v28 = *(v16 + 8 * v36);
        ++v26;
        if (v28)
        {
          goto LABEL_25;
        }
      }

      v96 = v22;
      v91 = v32;
      v92 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D08);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C755BAB0;
      v88 = v34;
      *(inited + 32) = v34;

      sub_1C74C4018();
      v46 = v45;
      swift_setDeallocating();
      v47 = *(v46 + 16);
      if (v47)
      {
        v82 = v15;
        v83 = v10;
        v84 = v11;
        v85 = a2;
        v87 = v9;
        v98 = MEMORY[0x1E69E7CC0];
        v94 = *(v46 + 16);
        sub_1C716DD68(0, v47, 0);
        v48 = v98;
        result = sub_1C719D92C(v46);
        v49 = result;
        v51 = v50;
        v53 = v94;
        v52 = v95;
        v55 = v54;
        v56 = 0;
        v57 = v46 + 56;
        v86 = a5;
        v58 = *(a5 + 16);
        v93 = v58;
        v60 = v96;
        v59 = a4;
        if ((result & 0x8000000000000000) == 0)
        {
          while (v49 < 1 << *(v46 + 32))
          {
            v61 = v49 >> 6;
            if ((*(v57 + 8 * (v49 >> 6)) & (1 << v49)) == 0)
            {
              goto LABEL_80;
            }

            if (*(v46 + 36) != v51)
            {
              goto LABEL_81;
            }

            v62 = *(*(v46 + 48) + 8 * v49);
            v63 = v62 * v59;
            if ((v62 * v59) >> 64 != (v62 * v59) >> 63)
            {
              goto LABEL_82;
            }

            v39 = __OFADD__(v63, v60);
            v64 = v63 + v60;
            if (v39)
            {
              goto LABEL_83;
            }

            if (v64 >= v58)
            {
              goto LABEL_84;
            }

            v65 = *(v52 + 4 * v64);
            v67 = *(v98 + 16);
            v66 = *(v98 + 24);
            if (v67 >= v66 >> 1)
            {
              result = sub_1C716DD68(v66 > 1, v67 + 1, 1);
              v58 = v93;
              v57 = v46 + 56;
              v53 = v94;
              v52 = v95;
              v60 = v96;
              v59 = a4;
            }

            *(v98 + 16) = v67 + 1;
            *(v98 + 4 * v67 + 32) = v65;
            if (v55)
            {
              goto LABEL_100;
            }

            v68 = 1 << *(v46 + 32);
            if (v49 >= v68)
            {
              goto LABEL_85;
            }

            v69 = *(v57 + 8 * v61);
            if ((v69 & (1 << v49)) == 0)
            {
              goto LABEL_86;
            }

            if (*(v46 + 36) != v51)
            {
              goto LABEL_87;
            }

            v70 = v69 & (-2 << (v49 & 0x3F));
            if (v70)
            {
              v68 = __clz(__rbit64(v70)) | v49 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v71 = v61 << 6;
              v72 = v61 + 1;
              v73 = (v46 + 64 + 8 * v61);
              while (v72 < (v68 + 63) >> 6)
              {
                v75 = *v73++;
                v74 = v75;
                v71 += 64;
                ++v72;
                if (v75)
                {
                  result = sub_1C6F9ED50(v49, v51, 0);
                  v58 = v93;
                  v57 = v46 + 56;
                  v53 = v94;
                  v52 = v95;
                  v60 = v96;
                  v59 = a4;
                  v68 = __clz(__rbit64(v74)) + v71;
                  goto LABEL_57;
                }
              }

              result = sub_1C6F9ED50(v49, v51, 0);
              v58 = v93;
              v57 = v46 + 56;
              v53 = v94;
              v52 = v95;
              v60 = v96;
              v59 = a4;
            }

LABEL_57:
            if (++v56 == v53)
            {

              a5 = v86;
              v9 = v87;
              v11 = v84;
              a2 = v85;
              v15 = v82;
              v10 = v83;
              goto LABEL_62;
            }

            v55 = 0;
            v51 = *(v46 + 36);
            v49 = v68;
            if (v68 < 0)
            {
              goto LABEL_79;
            }
          }
        }

        goto LABEL_79;
      }

      v48 = MEMORY[0x1E69E7CC0];
LABEL_62:
      v76 = *(v48 + 16);
      if (v76)
      {
        v77 = *(v48 + 32);
        v78 = v76 - 1;
        if (v78)
        {
          v79 = 36;
          do
          {
            if (*(v48 + v79) < v77)
            {
              v77 = *(v48 + v79);
            }

            v79 += 4;
            --v78;
          }

          while (v78);
        }

LABEL_74:
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C6FC852C(v96, v77);
        v18 = v92;
        v19 = v89;
        v16 = v90;
        v17 = v95;
        v14 = v91;
        if (v91)
        {
          continue;
        }

        goto LABEL_6;
      }

      break;
    }

    v80 = v88 * a4;
    if ((v88 * a4) >> 64 != (v88 * a4) >> 63)
    {
      goto LABEL_96;
    }

    v39 = __OFADD__(v80, v96);
    v81 = v80 + v96;
    if (v39)
    {
      goto LABEL_97;
    }

    if ((v81 & 0x8000000000000000) != 0)
    {
      goto LABEL_98;
    }

    if (v81 < *(a5 + 16))
    {
      v77 = *(v95 + 4 * v81);
      goto LABEL_74;
    }
  }

  else
  {
LABEL_6:
    result = a4;
    while (1)
    {
      v21 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v21 >= v15)
      {
        goto LABEL_77;
      }

      v14 = *(v11 + 8 * v21);
      ++v10;
      if (v14)
      {
        v10 = v21;
        goto LABEL_11;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
  }

  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

uint64_t sub_1C706205C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  if (v6)
  {
    v7 = 0;
    v8 = __clz(__rbit64(v6));
    v9 = (v6 - 1) & v6;
    v10 = (v4 + 63) >> 6;
LABEL_9:
    v14 = *(a1 + 48);
    result = *(v14 + 8 * v8);
    v16 = result;
    if (!v9)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v17 = v7;
LABEL_14:
      v18 = *(v14 + ((v17 << 9) | (8 * __clz(__rbit64(v9)))));
      v19 = *(a2 + 8);
      v20 = v18 * v19;
      if ((v18 * v19) >> 64 != (v18 * v19) >> 63)
      {
        break;
      }

      v21 = __OFADD__(v20, a3);
      v22 = v20 + a3;
      if (v21)
      {
        goto LABEL_29;
      }

      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v23 = *(a2 + 16);
      v24 = *(v23 + 16);
      if (v22 >= v24)
      {
        goto LABEL_31;
      }

      v25 = v16 * v19;
      if ((v16 * v19) >> 64 != (v16 * v19) >> 63)
      {
        goto LABEL_32;
      }

      v26 = v25 + a3;
      if (__OFADD__(v25, a3))
      {
        goto LABEL_33;
      }

      if (v26 >= v24)
      {
        goto LABEL_34;
      }

      v9 &= v9 - 1;
      if (*(v23 + 32 + 4 * v22) < *(v23 + 32 + 4 * v26))
      {
        result = v18;
        v16 = v18;
      }

      v7 = v17;
      if (!v9)
      {
LABEL_11:
        while (1)
        {
          v17 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v17 >= v10)
          {
            return result;
          }

          v9 = *(v3 + 8 * v17);
          ++v7;
          if (v9)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v10 = (v4 + 63) >> 6;
    while (1)
    {
      v7 = v12 + 1;
      if (v12 + 1 >= v10)
      {
        return 0;
      }

      v13 = *(a1 + 64 + 8 * v12);
      v11 += 64;
      ++v12;
      if (v13)
      {
        v9 = (v13 - 1) & v13;
        v8 = __clz(__rbit64(v13)) + v11;
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_1C70621E4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422CB4();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C7062250(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C7062250(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216660);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C70623C0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C7062354(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C7062354(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = *(v8 + 8);
        if (v9 >= *(v8 - 8))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v8;
        *v8 = *(v8 - 16);
        *(v8 - 8) = v9;
        *(v8 - 16) = v10;
        v8 -= 16;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C70623C0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v84 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v79 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9 + 8);
        v11 = 16 * v7;
        v12 = *a3 + 16 * v7;
        v13 = *(v12 + 8);
        v14 = (v12 + 40);
        v15 = v7 + 2;
        while (1)
        {
          v16 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = (v10 < v13) ^ (*v14 >= *(v14 - 4));
          v14 += 4;
          ++v15;
          if ((v17 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_114;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v18 = 16 * v6 - 16;
            v19 = v9;
            v20 = v7;
            do
            {
              if (v20 != --v19)
              {
                v21 = *a3;
                if (!*a3)
                {
                  goto LABEL_119;
                }

                v22 = v21 + v11;
                v23 = v21 + v18;
                v24 = *v22;
                v25 = *(v22 + 8);
                v26 = v11 != v18 || v22 >= v23 + 16;
                if (v26)
                {
                  *v22 = *v23;
                }

                *v23 = v24;
                *(v23 + 8) = v25;
              }

              ++v20;
              v18 -= 16;
              v11 += 16;
            }

            while (v20 < v19);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_113;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_115;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v27 = *a3;
            v28 = *a3 + 16 * v9;
            v29 = v7 - v9;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                v32 = *(v31 + 8);
                if (v32 >= *(v31 - 8))
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_117;
                }

                v33 = *v31;
                *v31 = *(v31 - 16);
                *(v31 - 8) = v32;
                *(v31 - 16) = v33;
                v31 -= 16;
                v26 = __CFADD__(v30++, 1);
              }

              while (!v26);
              ++v9;
              v28 += 16;
              --v29;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_112;
      }

      v81 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v8 = v77;
      }

      v34 = v8[2];
      v35 = v34 + 1;
      if (v34 >= v8[3] >> 1)
      {
        sub_1C6FB17EC();
        v8 = v78;
      }

      v8[2] = v35;
      v36 = v8 + 4;
      v37 = &v8[2 * v34 + 4];
      *v37 = v7;
      v37[1] = v9;
      v82 = *a1;
      if (!*a1)
      {
        goto LABEL_120;
      }

      if (v34)
      {
        while (1)
        {
          v38 = v35 - 1;
          v39 = &v36[2 * v35 - 2];
          v40 = &v8[2 * v35];
          if (v35 >= 4)
          {
            break;
          }

          if (v35 == 3)
          {
            v41 = v8[4];
            v42 = v8[5];
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_62:
            if (v44)
            {
              goto LABEL_102;
            }

            v56 = *v40;
            v55 = v40[1];
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_105;
            }

            v60 = v39[1];
            v61 = v60 - *v39;
            if (__OFSUB__(v60, *v39))
            {
              goto LABEL_108;
            }

            if (__OFADD__(v58, v61))
            {
              goto LABEL_110;
            }

            if (v58 + v61 >= v43)
            {
              if (v43 < v61)
              {
                v38 = v35 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v35 < 2)
          {
            goto LABEL_104;
          }

          v63 = *v40;
          v62 = v40[1];
          v51 = __OFSUB__(v62, v63);
          v58 = v62 - v63;
          v59 = v51;
LABEL_77:
          if (v59)
          {
            goto LABEL_107;
          }

          v65 = *v39;
          v64 = v39[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_109;
          }

          if (v66 < v58)
          {
            goto LABEL_91;
          }

LABEL_84:
          if (v38 - 1 >= v35)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v70 = &v36[2 * v38 - 2];
          v71 = *v70;
          v72 = &v36[2 * v38];
          v73 = v72[1];
          sub_1C70629E0((*a3 + 16 * *v70), (*a3 + 16 * *v72), (*a3 + 16 * v73), v82);
          if (v5)
          {
            goto LABEL_95;
          }

          if (v73 < v71)
          {
            goto LABEL_97;
          }

          v74 = v8;
          v75 = v8[2];
          if (v38 > v75)
          {
            goto LABEL_98;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v38 >= v75)
          {
            goto LABEL_99;
          }

          v35 = v75 - 1;
          memmove(&v36[2 * v38], v72 + 2, 16 * (v75 - 1 - v38));
          v74[2] = v75 - 1;
          v76 = v75 > 2;
          v8 = v74;
          v5 = 0;
          if (!v76)
          {
            goto LABEL_91;
          }
        }

        v45 = &v36[2 * v35];
        v46 = *(v45 - 8);
        v47 = *(v45 - 7);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_100;
        }

        v50 = *(v45 - 6);
        v49 = *(v45 - 5);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_101;
        }

        v52 = v40[1];
        v53 = v52 - *v40;
        if (__OFSUB__(v52, *v40))
        {
          goto LABEL_103;
        }

        v51 = __OFADD__(v43, v53);
        v54 = v43 + v53;
        if (v51)
        {
          goto LABEL_106;
        }

        if (v54 >= v48)
        {
          v68 = *v39;
          v67 = v39[1];
          v51 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v51)
          {
            goto LABEL_111;
          }

          if (v43 < v69)
          {
            v38 = v35 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_91:
      v6 = a3[1];
      v7 = v81;
      a4 = v79;
      if (v81 >= v6)
      {
        v84 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_121;
  }

  sub_1C70628B4(&v84, *a1, a3);
LABEL_95:
}

uint64_t sub_1C70628B4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C70629E0((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C70629E0(char *a1, char *a2, float *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C7423CF4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v6[2] >= v4[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 4;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 4;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1C7423CF4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[4 * v9];
LABEL_15:
  for (v5 -= 4; v10 > v4 && v6 > v7; v5 -= 4)
  {
    if (*(v10 - 2) < *(v6 - 2))
    {
      v15 = v6 - 4;
      v13 = v5 + 4 == v6;
      v6 -= 4;
      if (!v13)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 4)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 4;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[4 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t sub_1C7062B68()
{
  result = 0x6E6F73726570;
  switch(*v0)
  {
    case 1:
      result = 7628144;
      break;
    case 2:
      result = 0x6D75626C61;
      break;
    case 3:
      result = 1885958772;
      break;
    case 4:
      result = 0x79726F6D656DLL;
      break;
    case 5:
      result = 0x746E657665;
      break;
    case 6:
      result = 0x72476C6169636F73;
      break;
    case 7:
      result = 0x707954616964656DLL;
      break;
    case 8:
    case 9:
      result = 0x6465727574616566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FeaturedCollectionKind.phSuggestionSubtype.getter()
{
  result = 910;
  switch(*v0)
  {
    case 1:
      result = 911;
      break;
    case 2:
      result = 912;
      break;
    case 3:
      result = 913;
      break;
    case 4:
      result = 914;
      break;
    case 5:
      result = 915;
      break;
    case 6:
      result = 916;
      break;
    case 7:
      result = 917;
      break;
    case 8:
    case 9:
      v2 = *v0;
      sub_1C755180C();

      if (v2 == 9)
      {
        v3 = 0xEE0079726F6D654DLL;
      }

      else
      {
        v3 = 0xED00006F746F6850;
      }

      MEMORY[0x1CCA5CD70](0x6465727574616566, v3);

      result = sub_1C7551AAC();
      __break(1u);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FeaturedCollectionKind.init(with:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result + 114;
  if (((result - 910) & 0xFFF8) != 0)
  {
    v2 = 10;
  }

  *a2 = v2;
  return result;
}

PhotosIntelligence::FeaturedCollectionKind_optional __swiftcall FeaturedCollectionKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C7062E5C@<X0>(uint64_t *a1@<X8>)
{
  result = FeaturedCollectionKind.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C7062F4C()
{
  result = qword_1EC216668;
  if (!qword_1EC216668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216668);
  }

  return result;
}

unint64_t sub_1C7062FA4()
{
  result = qword_1EC216670;
  if (!qword_1EC216670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216670);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeaturedCollectionKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C70630E4()
{
  result = qword_1EDD0E2F0;
  if (!qword_1EDD0E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E2F0);
  }

  return result;
}

id sub_1C7063168()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_fetchResult;
  OUTLINED_FUNCTION_1_6();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1C70631AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_fetchResult;
  OUTLINED_FUNCTION_0_27();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1C70631F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C7063268(v1);
}

void *sub_1C7063228()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_error;
  OUTLINED_FUNCTION_1_6();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C7063268(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_error;
  OUTLINED_FUNCTION_0_27();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C70632B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C75504FC();
  return sub_1C7063348(v1, v2);
}

uint64_t sub_1C70632F0()
{
  v1 = (v0 + OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_debugString);
  swift_beginAccess();
  v2 = *v1;
  sub_1C75504FC();
  return v2;
}

uint64_t sub_1C7063348(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_debugString);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id AssetElectionResult.init(fetchResult:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_error] = 0;
  v2 = &v1[OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_debugString];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_fetchResult] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AssetElectionResult();
  return objc_msgSendSuper2(&v4, sel_init);
}

id AssetElectionResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssetElectionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetElectionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C7063630()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC216698);
  __swift_project_value_buffer(v0, qword_1EC216698);
  return sub_1C754FEFC();
}

id sub_1C70636FC(uint64_t a1, __int16 a2, __int16 a3)
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v6 = OUTLINED_FUNCTION_20_0();
  *(v6 + 16) = xmmword_1C75604F0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1C6F6D524();
  v7 = MEMORY[0x1E69E75F8];
  *(v6 + 32) = 1684957547;
  *(v6 + 40) = 0xE400000000000000;
  v8 = MEMORY[0x1E69E7660];
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = a2;
  OUTLINED_FUNCTION_2_16(0x3D204B25u);
  result = sub_1C755112C();
  v10 = result;
  if (a1)
  {
    v11 = sub_1C706484C([*(a1 + 24) sharingFilter], a3);
    sub_1C6F65BE8(0, &qword_1EDD0FA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v12 = OUTLINED_FUNCTION_13_1();
    *(v12 + 16) = xmmword_1C7564A90;
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;
    return sub_1C6F6E5C4();
  }

  return result;
}

id sub_1C7063844(char a1)
{
  if (qword_1EC213CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EC216698);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1C6F765A4(1918985561, 0xE400000000000000, &v9);
    _os_log_impl(&dword_1C6F5C000, v3, v4, "CollectionFetcher.%s do not supports favorites", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1CCA5F8E0](v6, -1, -1);
    MEMORY[0x1CCA5F8E0](v5, -1, -1);
  }

  v7 = [objc_opt_self() predicateWithValue_];

  return v7;
}

id sub_1C70639B0(char a1)
{
  if (qword_1EC213D08 != -1)
  {
    swift_once();
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EC2166C8);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1C6F765A4(7954756, 0xE300000000000000, &v9);
    _os_log_impl(&dword_1C6F5C000, v3, v4, "CollectionFetcher.%s do not supports favorites", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1CCA5F8E0](v6, -1, -1);
    MEMORY[0x1CCA5F8E0](v5, -1, -1);
  }

  v7 = [objc_opt_self() predicateWithValue_];

  return v7;
}

id sub_1C7063B1C(char a1)
{
  if (qword_1EC213D00 != -1)
  {
    swift_once();
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EC2166B0);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1C6F765A4(0x68746E6F4DLL, 0xE500000000000000, &v9);
    _os_log_impl(&dword_1C6F5C000, v3, v4, "CollectionFetcher.%s do not supports favorites", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1CCA5F8E0](v6, -1, -1);
    MEMORY[0x1CCA5F8E0](v5, -1, -1);
  }

  v7 = [objc_opt_self() predicateWithValue_];

  return v7;
}

id sub_1C7063C8C(char a1)
{
  if (qword_1EC213D10 != -1)
  {
    swift_once();
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EC2166E0);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1C6F765A4(0x746E657645796144, 0xE900000000000073, &v9);
    _os_log_impl(&dword_1C6F5C000, v3, v4, "CollectionFetcher.%s do not supports favorites", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1CCA5F8E0](v6, -1, -1);
    MEMORY[0x1CCA5F8E0](v5, -1, -1);
  }

  v7 = [objc_opt_self() predicateWithValue_];

  return v7;
}

id sub_1C7063E04(char a1)
{
  if (qword_1EC213D18 != -1)
  {
    swift_once();
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EC2166F8);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1C6F765A4(0x6867694870697254, 0xEE0073746867696CLL, &v9);
    _os_log_impl(&dword_1C6F5C000, v3, v4, "CollectionFetcher.%s do not supports favorites", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1CCA5F8E0](v6, -1, -1);
    MEMORY[0x1CCA5F8E0](v5, -1, -1);
  }

  v7 = [objc_opt_self() predicateWithValue_];

  return v7;
}

uint64_t sub_1C7063F88()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2166B0);
  __swift_project_value_buffer(v0, qword_1EC2166B0);
  return sub_1C754FEFC();
}

id static MonthFetcher.fetchChildMonths(for:using:)(void *a1, uint64_t a2)
{
  if ([a1 kind] == 2)
  {
    return sub_1C70640C8(a1, a2, sub_1C7065C9C);
  }

  sub_1C7066FB8();
  swift_allocError();
  return swift_willThrow();
}

id sub_1C70640C8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v5 = [objc_opt_self() fetchChildHighlightsForHighlight:a1 options:*(a2 + 24)];

  return v5;
}

uint64_t sub_1C7064158()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2166C8);
  __swift_project_value_buffer(v0, qword_1EC2166C8);
  return sub_1C754FEFC();
}

id static DayFetcher.fetchChildDays(for:using:)(void *a1, uint64_t a2)
{
  if ([a1 kind] == 1)
  {
    return sub_1C70640C8(a1, a2, sub_1C7065908);
  }

  sub_1C7066FB8();
  swift_allocError();
  return swift_willThrow();
}

id static DayFetcher.basePredicate(using:)(uint64_t a1)
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C755BAA0;
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v4 = sub_1C6F6D524();
  *(v2 + 64) = v4;
  *(v2 + 32) = 1684957547;
  *(v2 + 40) = 0xE400000000000000;
  v5 = MEMORY[0x1E69E75F8];
  v6 = MEMORY[0x1E69E7660];
  *(v2 + 96) = MEMORY[0x1E69E75F8];
  *(v2 + 104) = v6;
  *(v2 + 72) = 0;
  *(v2 + 136) = v5;
  *(v2 + 144) = v6;
  *(v2 + 112) = 3;
  sub_1C755112C();
  OUTLINED_FUNCTION_8_14();
  v7 = OUTLINED_FUNCTION_20_0();
  *(v7 + 16) = xmmword_1C75604F0;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 32) = 1701869940;
  *(v7 + 40) = 0xE400000000000000;
  *(v7 + 96) = v5;
  *(v7 + 104) = v6;
  *(v7 + 72) = 1;
  OUTLINED_FUNCTION_2_16(0x21204B25u);
  v8 = sub_1C755112C();
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v9 = OUTLINED_FUNCTION_13_1();
  *(v9 + 16) = xmmword_1C7564A90;
  *(v9 + 32) = v2;
  *(v9 + 40) = v8;
  v10 = v2;
  v11 = v8;
  v12 = sub_1C6F6E5C4();
  if (a1)
  {
    v13 = sub_1C70644DC([*(a1 + 24) sharingFilter]);
    v14 = OUTLINED_FUNCTION_13_1();
    *(v14 + 16) = xmmword_1C7564A90;
    *(v14 + 32) = v12;
    *(v14 + 40) = v13;
    v15 = v12;
    v16 = v13;
    v12 = sub_1C6F6E5C4();

    v17 = v11;
  }

  else
  {
    v17 = v10;
    v10 = v11;
  }

  return v12;
}

id sub_1C70644DC(__int16 a1)
{
  sub_1C7065114(a1, v12);
  v11 = MEMORY[0x1E69E7CC0];
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x1E69E75F8];
  v4 = MEMORY[0x1E69E7660];
  do
  {
    v5 = v1;
    v6 = *(&unk_1F469F108 + v2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C75604F0;
    sub_1C6FB5E28(v12, v7 + 32);
    *(v7 + 96) = v3;
    *(v7 + 104) = v4;
    *(v7 + 72) = v6;
    v8 = sub_1C755112C();
    MEMORY[0x1CCA5D040]();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C7550B9C();
    }

    sub_1C7550BEC();

    v1 = 1;
    v2 = 1;
  }

  while ((v5 & 1) == 0);
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  v9 = sub_1C74B8340();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

id sub_1C7064694(__int16 a1)
{
  sub_1C7065114(a1, v12);
  v11 = MEMORY[0x1E69E7CC0];
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x1E69E75F8];
  v4 = MEMORY[0x1E69E7660];
  do
  {
    v5 = v1;
    v6 = *(&unk_1F469F130 + v2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C75604F0;
    sub_1C6FB5E28(v12, v7 + 32);
    *(v7 + 96) = v3;
    *(v7 + 104) = v4;
    *(v7 + 72) = v6;
    v8 = sub_1C755112C();
    MEMORY[0x1CCA5D040]();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C7550B9C();
    }

    sub_1C7550BEC();

    v1 = 1;
    v2 = 1;
  }

  while ((v5 & 1) == 0);
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  v9 = sub_1C74B8340();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

id sub_1C706484C(__int16 a1, __int16 a2)
{
  sub_1C7065114(a1, v9);
  v8 = MEMORY[0x1E69E7CC0];
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v3 = OUTLINED_FUNCTION_20_0();
  *(v3 + 16) = xmmword_1C75604F0;
  sub_1C6FB5E28(v9, v3 + 32);
  v4 = MEMORY[0x1E69E7660];
  *(v3 + 96) = MEMORY[0x1E69E75F8];
  *(v3 + 104) = v4;
  *(v3 + 72) = a2;
  OUTLINED_FUNCTION_2_16(0x3D204B25u);
  v5 = sub_1C755112C();
  MEMORY[0x1CCA5D040]();
  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C7550B9C();
  }

  sub_1C7550BEC();

  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  v6 = sub_1C74B8340();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

uint64_t sub_1C70649D4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2166E0);
  __swift_project_value_buffer(v0, qword_1EC2166E0);
  return sub_1C754FEFC();
}

id static DayEventsFetcher.basePredicate(using:)(uint64_t a1)
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C755F060;
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v4 = sub_1C6F6D524();
  *(v2 + 64) = v4;
  v5 = MEMORY[0x1E69E75F8];
  v6 = MEMORY[0x1E69E7660];
  *(v2 + 32) = 1684957547;
  *(v2 + 40) = 0xE400000000000000;
  *(v2 + 96) = v5;
  *(v2 + 104) = v6;
  *(v2 + 72) = 0;
  *(v2 + 136) = v3;
  *(v2 + 144) = v4;
  *(v2 + 112) = 1701869940;
  *(v2 + 120) = 0xE400000000000000;
  *(v2 + 176) = v5;
  *(v2 + 184) = v6;
  *(v2 + 152) = 7;
  result = sub_1C755112C();
  v8 = result;
  if (a1)
  {
    v9 = sub_1C7064694([*(a1 + 24) sharingFilter]);
    sub_1C6F65BE8(0, &qword_1EDD0FA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v10 = OUTLINED_FUNCTION_13_1();
    *(v10 + 16) = xmmword_1C7564A90;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9;
    return sub_1C6F6E5C4();
  }

  return result;
}

uint64_t sub_1C7064C34()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2166F8);
  __swift_project_value_buffer(v0, qword_1EC2166F8);
  return sub_1C754FEFC();
}

uint64_t sub_1C7064CD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C754FF1C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

id sub_1C7064D78()
{
  result = sub_1C7064D98();
  qword_1EDD0E5D8 = result;
  return result;
}

id sub_1C7064D98()
{
  v0 = [objc_opt_self() predicateForAllTripHighlights];
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C75604F0;
  v2 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v3 = sub_1C6F6D524();
  *(v1 + 64) = v3;
  *(v1 + 32) = 1684957547;
  *(v1 + 40) = 0xE400000000000000;
  v4 = MEMORY[0x1E69E75F8];
  v5 = MEMORY[0x1E69E7660];
  *(v1 + 96) = MEMORY[0x1E69E75F8];
  *(v1 + 104) = v5;
  *(v1 + 72) = 3;
  v6 = sub_1C755112C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C75604F0;
  *(v7 + 56) = v2;
  *(v7 + 64) = v3;
  *(v7 + 32) = 0x656D686369726E65;
  *(v7 + 40) = 0xEF6574617453746ELL;
  *(v7 + 96) = v4;
  *(v7 + 104) = v5;
  *(v7 + 72) = 3;
  v8 = sub_1C755112C();
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C75650C0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v0;
  *(v9 + 48) = v8;
  return sub_1C6F6E5C4();
}

id static TripHighlightFetcher.basePredicate(using:)(uint64_t a1)
{
  if (qword_1EDD0E5D0 != -1)
  {
    OUTLINED_FUNCTION_11_15();
  }

  v2 = qword_1EDD0E5D8;
  if (a1)
  {
    v3 = *(a1 + 24);
    v4 = qword_1EDD0E5D8;
    v5 = static TripHighlightFetcher.predicateForVisibilityState(sharingFilter:)([v3 sharingFilter]);
    sub_1C6F65BE8(0, &qword_1EDD0FA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v6 = OUTLINED_FUNCTION_13_1();
    *(v6 + 16) = xmmword_1C7564A90;
    *(v6 + 32) = v4;
    *(v6 + 40) = v5;
    return sub_1C6F6E5C4();
  }

  else
  {

    return v2;
  }
}

uint64_t static TripHighlightFetcher.predicateForVisibilityState(sharingFilter:)(__int16 a1)
{
  sub_1C7065114(a1, v5);
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v1 = OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = xmmword_1C75604F0;
  sub_1C6FB5E28(v5, v1 + 32);
  v2 = MEMORY[0x1E69E7660];
  *(v1 + 96) = MEMORY[0x1E69E75F8];
  *(v1 + 104) = v2;
  *(v1 + 72) = 0;
  OUTLINED_FUNCTION_2_16(0x21204B25u);
  v3 = sub_1C755112C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

unint64_t sub_1C7065114@<X0>(__int16 a1@<W0>, unint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = 0xD000000000000014;
    v4 = 0x80000001C759B110;
    if (a1 == 1)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v4 = 0x80000001C759B0F0;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = v3;
    }

    if (a1 == 2)
    {
      v6 = 0x80000001C759B0F0;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0xEF65746174537974;
    v5 = 0x696C696269736976;
  }

  a2[3] = MEMORY[0x1E69E6158];
  result = sub_1C6F6D524();
  a2[4] = result;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t static TripHighlightUtilities.dateForMiddleOfTrip(highlight:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C754DF6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v28 - v15;
  v30[3] = sub_1C6F65BE8(0, &qword_1EC2155D8);
  v30[0] = a1;
  sub_1C6F774EC(v30, v29);
  v17 = a1;
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
LABEL_9:
    v26 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v26, 1, v4);
  }

  v18 = v28[1];
  if (qword_1EDD0E5D0 != -1)
  {
    OUTLINED_FUNCTION_11_15();
  }

  v19 = [qword_1EDD0E5D8 evaluateWithObject_];

  __swift_destroy_boxed_opaque_existential_1(v30);
  if ((v19 & 1) == 0)
  {
    goto LABEL_9;
  }

  v20 = [v17 startDate];
  if (!v20)
  {
    goto LABEL_9;
  }

  v21 = v20;
  sub_1C754DF2C();

  v22 = *(v5 + 32);
  v22(v16, v13, v4);
  v23 = [v17 endDate];
  if (!v23)
  {
    (*(v5 + 8))(v16, v4);
    goto LABEL_9;
  }

  v24 = v23;
  sub_1C754DF2C();

  v22(v10, v7, v4);
  sub_1C754DE3C();
  sub_1C754DE3C();
  sub_1C754DE2C();
  v25 = *(v5 + 8);
  v25(v10, v4);
  v25(v16, v4);
  v26 = 0;
  return __swift_storeEnumTagSinglePayload(a2, v26, 1, v4);
}

id static TripHighlightUtilities.fetchTrip(dateForMiddleOfTrip:fetchOptions:photoLibrary:)(int a1, int a2, id a3)
{
  v17 = [a3 librarySpecificFetchOptions];
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v3 = OUTLINED_FUNCTION_13_1();
  *(v3 + 16) = xmmword_1C7564A90;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v4 = OUTLINED_FUNCTION_20_0();
  *(v4 + 16) = xmmword_1C75604F0;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1C6F6D524();
  *(v4 + 64) = v6;
  *(v4 + 32) = 0x7461447472617473;
  *(v4 + 40) = 0xE900000000000065;
  v7 = sub_1C754DECC();
  v8 = sub_1C6F65BE8(0, &unk_1EDD0CD28);
  *(v4 + 96) = v8;
  v9 = sub_1C706700C();
  *(v4 + 104) = v9;
  *(v4 + 72) = v7;
  *(v3 + 32) = sub_1C755112C();
  v10 = OUTLINED_FUNCTION_20_0();
  *(v10 + 16) = xmmword_1C75604F0;
  *(v10 + 56) = v5;
  *(v10 + 64) = v6;
  *(v10 + 32) = 0x65746144646E65;
  *(v10 + 40) = 0xE700000000000000;
  v11 = sub_1C754DECC();
  *(v10 + 96) = v8;
  *(v10 + 104) = v9;
  *(v10 + 72) = v11;
  *(v3 + 40) = sub_1C755112C();
  v12 = sub_1C6F6E5C4();
  [v17 setPredicate_];

  v19 = 0;
  type metadata accessor for CollectionFetcherOptions();
  swift_initStackObject();
  v13 = v17;
  v14 = CollectionFetcherOptions.init(photoLibrary:fetchOptions:fetchContext:sortAscending:)(a3, v17, &v19, 0);
  sub_1C7066580(v14);
  v15 = [objc_opt_self() fetchHighlightsWithOptions_];

  return v15;
}

void sub_1C7065AC8(uint64_t a1, uint64_t (*a2)(void), void *a3, uint64_t a4)
{
  v8 = *(a1 + 24);
  if (![v8 fetchLimit])
  {
    OUTLINED_FUNCTION_7_14();
    [v8 setFetchLimit_];
  }

  v10 = [v8 sortDescriptors];
  if (!v10)
  {
    sub_1C70667BC(*(a1 + 33));
    sub_1C6F65BE8(0, &qword_1EDD108F0);
    v10 = sub_1C7550B3C();

    [v8 setSortDescriptors_];
  }

  v28 = sub_1C6F6D460(a1, a2);
  v11 = sub_1C6F6F294(a1, a3, a4);
  if (v11)
  {
    sub_1C6F65BE8(0, &qword_1EDD0FA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v12 = OUTLINED_FUNCTION_13_1();
    v11 = OUTLINED_FUNCTION_1_26(v12, xmmword_1C7564A90, v13, v14, v15, v16, v17, v18, v19, v27, v28);
    v28 = v11;
  }

  v20 = OUTLINED_FUNCTION_17_15(v11, sel_setPredicate_);
  OUTLINED_FUNCTION_16_12(v20, sel_setInternalPredicate_, v21, v22, v23, v24, v25, v26, v27, v28);
}

void sub_1C7066580(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (![v2 fetchLimit])
  {
    OUTLINED_FUNCTION_7_14();
    [v2 setFetchLimit_];
  }

  v4 = [v2 sortDescriptors];
  if (!v4)
  {
    sub_1C70668B4(a1);
    sub_1C6F65BE8(0, &qword_1EDD108F0);
    v4 = sub_1C7550B3C();

    [v2 setSortDescriptors_];
  }

  v24 = sub_1C7066C8C(a1);
  OUTLINED_FUNCTION_4_17();
  v7 = sub_1C6F6F294(a1, v5, v6);
  if (v7)
  {
    sub_1C6F65BE8(0, &qword_1EDD0FA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v8 = OUTLINED_FUNCTION_13_1();
    v7 = OUTLINED_FUNCTION_1_26(v8, xmmword_1C7564A90, v9, v10, v11, v12, v13, v14, v15, v23, v24);
    v24 = v7;
  }

  v16 = OUTLINED_FUNCTION_17_15(v7, sel_setPredicate_);
  OUTLINED_FUNCTION_16_12(v16, sel_setInternalPredicate_, v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1C70666F8(char a1)
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v2 = OUTLINED_FUNCTION_20_0();
  *(v2 + 16) = xmmword_1C75604F0;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1C6F6D524();
  v3 = MEMORY[0x1E69E6370];
  *(v2 + 32) = 0x657469726F766166;
  *(v2 + 40) = 0xE800000000000000;
  v4 = MEMORY[0x1E69E63A8];
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  *(v2 + 72) = a1;
  OUTLINED_FUNCTION_2_16(0x3D204B25u);
  return sub_1C755112C();
}

uint64_t sub_1C70667BC(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C75650C0;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 32) = sub_1C6F6AF98(0x7461447472617473, 0xE900000000000065, a1);
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 40) = sub_1C6F6AF98(0x65746144646E65, 0xE700000000000000, a1);
  v5 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 48) = sub_1C6F6AF98(0x44497463656A626FLL, 0xE800000000000000, 1);
  return v2;
}

id sub_1C70668BC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v5 = a2();
  v6 = 1;
  switch(*(a1 + 32))
  {
    case 1:
      goto LABEL_4;
    case 2:
      v6 = 0;
LABEL_4:
      a3(v6);
      sub_1C6F65BE8(0, &qword_1EDD0FA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v8 = OUTLINED_FUNCTION_13_1();
      result = OUTLINED_FUNCTION_21_15(v8, xmmword_1C7564A90);
      break;
    default:
      result = v5;
      break;
  }

  return result;
}

id sub_1C7066974(uint64_t a1, __int16 a2, __int16 a3, void (*a4)(uint64_t))
{
  v6 = sub_1C70636FC(a1, a2, a3);
  v7 = 1;
  switch(*(a1 + 32))
  {
    case 1:
      goto LABEL_4;
    case 2:
      v7 = 0;
LABEL_4:
      a4(v7);
      sub_1C6F65BE8(0, &qword_1EDD0FA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v9 = OUTLINED_FUNCTION_13_1();
      result = OUTLINED_FUNCTION_21_15(v9, xmmword_1C7564A90);
      break;
    default:
      result = v6;
      break;
  }

  return result;
}

id sub_1C7066A28(uint64_t a1)
{
  result = [objc_opt_self() predicateWithValue_];
  v3 = *(a1 + 32);
  v4 = result;
  switch(v3)
  {
    case 1:
      goto LABEL_3;
    case 2:
      v3 = 0;
LABEL_3:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1C75604F0;
      *(v5 + 56) = MEMORY[0x1E69E6158];
      v6 = sub_1C6F6D524();
      *(v5 + 32) = 1701869940;
      *(v5 + 40) = 0xE400000000000000;
      v7 = MEMORY[0x1E69E65A8];
      *(v5 + 96) = MEMORY[0x1E69E6530];
      *(v5 + 104) = v7;
      *(v5 + 64) = v6;
      *(v5 + 72) = v3;
      v8 = sub_1C755112C();
      sub_1C6F65BE8(0, &qword_1EDD0FA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C7564A90;
      *(v9 + 32) = v4;
      *(v9 + 40) = v8;
      result = sub_1C6F6E5C4();
      break;
    default:
      return result;
  }

  return result;
}

id sub_1C7066BA8(uint64_t a1)
{
  v2 = 1;
  result = [objc_opt_self() predicateWithValue_];
  v4 = result;
  switch(*(a1 + 32))
  {
    case 1:
      goto LABEL_3;
    case 2:
      v2 = 0;
LABEL_3:
      v5 = static SocialGroupFetcher.predicateForFavorites(_:)(v2);
      sub_1C6F65BE8(0, &qword_1EDD0FA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1C7564A90;
      *(v6 + 32) = v4;
      *(v6 + 40) = v5;
      result = sub_1C6F6E5C4();
      break;
    default:
      return result;
  }

  return result;
}

id sub_1C7066C8C(uint64_t a1)
{
  type metadata accessor for TripHighlightFetcher();
  v2 = static TripHighlightFetcher.basePredicate(using:)(a1);
  v3 = 1;
  switch(*(a1 + 32))
  {
    case 1:
      goto LABEL_4;
    case 2:
      v3 = 0;
LABEL_4:
      v5 = sub_1C7063E04(v3);
      sub_1C6F65BE8(0, &qword_1EDD0FA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1C7564A90;
      *(v6 + 32) = v2;
      *(v6 + 40) = v5;
      result = sub_1C6F6E5C4();
      break;
    default:
      result = v2;
      break;
  }

  return result;
}

uint64_t sub_1C7066D58(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C75650C0;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 32) = sub_1C6F6AF98(1701869940, 0xE400000000000000, a1);
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 40) = sub_1C6F6AF98(0x724F6C61756E616DLL, 0xEB00000000726564, (a1 & 1) == 0);
  v5 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 48) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
  return v2;
}

id sub_1C7066E38(char a1)
{
  if (qword_1EC2141E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EC21C7E0);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1C6F765A4(0x6465727574616546, 0xEF736F746F685020, &v9);
    _os_log_impl(&dword_1C6F5C000, v3, v4, "CollectionFetcher.%s do not supports favorites", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1CCA5F8E0](v6, -1, -1);
    MEMORY[0x1CCA5F8E0](v5, -1, -1);
  }

  v7 = [objc_opt_self() predicateWithValue_];

  return v7;
}

unint64_t sub_1C7066FB8()
{
  result = qword_1EC216710;
  if (!qword_1EC216710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216710);
  }

  return result;
}

unint64_t sub_1C706700C()
{
  result = qword_1EDD0CD20;
  if (!qword_1EDD0CD20)
  {
    sub_1C6F65BE8(255, &unk_1EDD0CD28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CD20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HighlightCollectionFetcherError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C706728C()
{
  result = qword_1EC216718;
  if (!qword_1EC216718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216718);
  }

  return result;
}

id OUTLINED_FUNCTION_21_15(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;
  a1[2].n128_u64[1] = v3;

  return sub_1C6F6E5C4();
}

uint64_t sub_1C7067310(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = a1;
  v5 = *(a2 + 16);
  v6 = (a2 + 40);
  if (!v5)
  {
    return v10;
  }

  while (1)
  {
    v7 = *v6;
    v9[0] = *(v6 - 1);
    v9[1] = v7;
    sub_1C75504FC();
    sub_1C70695B0(&v10, v9, a3);
    if (v3)
    {
      break;
    }

    v6 += 2;
    if (!--v5)
    {
      return v10;
    }
  }
}

uint64_t sub_1C70673C4()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  result = sub_1C755146C();
  qword_1EDD0DD00 = result;
  return result;
}

uint64_t sub_1C7067440()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0DCD8);
  __swift_project_value_buffer(v0, qword_1EDD0DCD8);
  if (qword_1EDD0DCF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD0DD00;
  return sub_1C754FF2C();
}

uint64_t MomentGroundingProcessor.__allocating_init(storyPhotoLibraryContext:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  MomentGroundingProcessor.init(storyPhotoLibraryContext:)(a1);
  return v2;
}

uint64_t MomentGroundingProcessor.init(storyPhotoLibraryContext:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = a1[2];
  v5 = OBJC_IVAR____TtC18PhotosIntelligence24MomentGroundingProcessor_logger;
  if (qword_1EDD0DCD0 != -1)
  {
    swift_once();
  }

  v6 = sub_1C754FF1C();
  __swift_project_value_buffer(v6, qword_1EDD0DCD8);
  OUTLINED_FUNCTION_62_2();
  (*(v7 + 16))(v1 + v5);
  v8 = v1 + OBJC_IVAR____TtC18PhotosIntelligence24MomentGroundingProcessor_storyPhotoLibraryContext;
  *v8 = v2;
  *(v8 + 8) = v3;
  *(v8 + 16) = v4;
  return v1;
}

uint64_t MomentGroundingProcessor.assetUUIDsWithoutLocationDataFromMoments(of:maximumNumberOfAssetsToFetch:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3 + OBJC_IVAR____TtC18PhotosIntelligence24MomentGroundingProcessor_storyPhotoLibraryContext;
  v6 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence24MomentGroundingProcessor_storyPhotoLibraryContext);
  v7 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence24MomentGroundingProcessor_storyPhotoLibraryContext + 16);
  v8 = *(v5 + 8);
  aBlock = v6;
  LOWORD(v31) = v8;
  v32 = v7;
  v9 = v6;

  v10 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(a1, &aBlock);
  v11 = aBlock;

  v12 = sub_1C706D87C(v10);
  v13 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(v9, v8, 0);
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C7564A90;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C75604F0;
  v16 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1C6F6D524();
  *(v15 + 64) = v17;
  *(v15 + 32) = 0x752E746E656D6F6DLL;
  *(v15 + 40) = 0xEB00000000646975;
  *(v15 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  *(v15 + 104) = sub_1C7067A60();
  *(v15 + 72) = v12;
  *(v14 + 32) = sub_1C755112C();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C755BAB0;
  *(v18 + 56) = v16;
  *(v18 + 64) = v17;
  strcpy((v18 + 32), "locationData");
  *(v18 + 45) = 0;
  *(v18 + 46) = -5120;
  *(v14 + 40) = sub_1C755112C();
  v19 = sub_1C6F6E5C4();
  [v13 setInternalPredicate_];

  if ((a3 & 1) == 0)
  {
    [v13 setFetchLimit_];
  }

  v20 = [objc_opt_self() fetchAssetsWithOptions_];
  v21 = swift_allocObject();
  *(v21 + 16) = MEMORY[0x1E69E7CD0];
  v34 = sub_1C7067B40;
  v35 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1C7067B48;
  v33 = &block_descriptor_3;
  v22 = _Block_copy(&aBlock);

  [v20 enumerateObjectsUsingBlock_];
  _Block_release(v22);

  sub_1C75504FC();
  v23 = sub_1C754FEEC();
  v24 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    *(v25 + 4) = *(a1 + 16);

    *(v25 + 12) = 2048;
    swift_beginAccess();
    *(v25 + 14) = *(*(v21 + 16) + 16);

    _os_log_impl(&dword_1C6F5C000, v23, v24, "There are %ld assets with %ld additional assets without location data", v25, 0x16u);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  swift_beginAccess();
  v26 = *(v21 + 16);
  sub_1C75504FC();

  return v26;
}

unint64_t sub_1C7067A60()
{
  result = qword_1EDD0CEE0;
  if (!qword_1EDD0CEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC215BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CEE0);
  }

  return result;
}

uint64_t sub_1C7067AC4(void *a1)
{
  result = sub_1C70CAC04(a1);
  if (v2)
  {
    v3 = result;
    v4 = v2;
    swift_beginAccess();
    sub_1C70F082C(v5, v3, v4);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C7067B48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t MomentGroundingProcessor.safeOverlappingMomentGrounding(in:sensitiveFlags:eventRecorder:)(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  result = MomentGroundingProcessor.assetUUIDsBackedByOverlappingBalancedMoments(in:eventRecorder:)(a1, a3);
  if (!result)
  {
    v6 = *(v4 + 16);
    v7 = sub_1C754FEEC();
    v8 = sub_1C75511BC();
    v9 = os_log_type_enabled(v7, v8);
    if (v6)
    {
      if (v9)
      {
        v10 = OUTLINED_FUNCTION_127();
        *v10 = 0;
        _os_log_impl(&dword_1C6F5C000, v7, v8, "assetUUIDsInOverlappingMoments failed, but the query contains sensitive scenes. NOT falling back to union of assets.", v10, 2u);
        OUTLINED_FUNCTION_109();
      }

      return MEMORY[0x1E69E7CD0];
    }

    else
    {
      if (v9)
      {
        v11 = OUTLINED_FUNCTION_127();
        *v11 = 0;
        _os_log_impl(&dword_1C6F5C000, v7, v8, "Falling back to union of assets.", v11, 2u);
        OUTLINED_FUNCTION_109();
      }

      result = sub_1C7069D48(a1);
      if (!result)
      {
        return MEMORY[0x1E69E7CD0];
      }
    }
  }

  return result;
}

uint64_t MomentGroundingProcessor.assetUUIDsBackedByOverlappingBalancedMoments(in:eventRecorder:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C754F1CC();
  v12 = *(a1 + 16);
  if (v12 < 2 || (v13 = sub_1C7069D48(a1)) == 0)
  {
    v29 = sub_1C754FEEC();
    v30 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_32(v30))
    {
      v31 = OUTLINED_FUNCTION_41_0();
      *v31 = 134217984;
      *(v31 + 4) = v12;
      _os_log_impl(&dword_1C6F5C000, v29, v3, "There are %ld groups of asset uuids.", v31, 0xCu);
      OUTLINED_FUNCTION_109();
    }

    if (v12)
    {
      v32 = *(a1 + 32);
      sub_1C75504FC();
    }

    else
    {
      v32 = MEMORY[0x1E69E7CD0];
    }

    goto LABEL_23;
  }

  v14 = v13;
  v79 = v6;
  v80 = v8;
  v81 = OBJC_IVAR____TtC18PhotosIntelligence24MomentGroundingProcessor_logger;
  v15 = sub_1C754FEEC();
  v16 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v16))
  {
    v17 = OUTLINED_FUNCTION_127();
    *v17 = 0;
    _os_log_impl(&dword_1C6F5C000, v15, v16, "Perform moment grounding", v17, 2u);
    OUTLINED_FUNCTION_109();
  }

  v18 = sub_1C7068570(a1);
  v19 = sub_1C70686B0(v18);

  if (!v19)
  {
LABEL_15:

    v33 = OUTLINED_FUNCTION_7_15();
    v34 = sub_1C75511BC();
    v35 = OUTLINED_FUNCTION_32(v34);
    v8 = v80;
    if (v35)
    {
      v36 = OUTLINED_FUNCTION_127();
      *v36 = 0;
      v37 = &dword_1C6F5C000;
      v38 = "There are no overlapping moments.";
      v39 = v3;
      v40 = v33;
      v41 = v36;
      v42 = 2;
LABEL_21:
      _os_log_impl(v37, v40, v39, v38, v41, v42);
      OUTLINED_FUNCTION_10_1();
    }

LABEL_22:

    v32 = 0;
    v6 = v79;
    goto LABEL_23;
  }

  if (!*(v19 + 16))
  {

    goto LABEL_15;
  }

  sub_1C75504FC();
  v20 = OUTLINED_FUNCTION_7_15();
  v21 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v21))
  {
    v22 = swift_slowAlloc();
    LODWORD(v82) = v21;
    v23 = v22;
    v78 = swift_slowAlloc();
    v83 = v78;
    *v23 = 134218242;
    *(v23 + 4) = *(v19 + 16);

    *(v23 + 12) = 2080;
    v24 = sub_1C7550F9C();
    v26 = sub_1C6F765A4(v24, v25, &v83);
    v77 = v20;
    v27 = v26;

    *(v23 + 14) = v27;
    v28 = v77;
    _os_log_impl(&dword_1C6F5C000, v77, v82, "Received %ld overlapping balanced moments=%s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v78);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v8 = v80;
  v43 = StoryGenerationCache.assetUUIDs(forMomentUUIDs:)();

  OUTLINED_FUNCTION_0_29();
  sub_1C7069B34(v43, v14, v44, sub_1C70A9074);
  v32 = v45;

  v46 = *(v32 + 16);
  if (v46 < 0x1E)
  {

    v33 = OUTLINED_FUNCTION_7_15();
    v47 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_32(v47))
    {
      v48 = OUTLINED_FUNCTION_41_0();
      *v48 = 134217984;
      *(v48 + 4) = v46;
      OUTLINED_FUNCTION_1_27();
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v50 = 1.0 / v12;
  [objc_opt_self() assetsSelectionUsingOverlappingMomentsThreshold];
  if (v51 < v50)
  {
    v50 = v51;
  }

  v52 = (a1 + 32);
  v78 = v46;
  v82 = xmmword_1C75604F0;
  while (1)
  {
    v53 = *v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150E0);
    inited = swift_initStackObject();
    *(inited + 16) = v82;
    *(inited + 32) = v32;
    *(inited + 40) = v53;
    sub_1C75504FC();

    sub_1C6FDE498(inited);
    v56 = v55;
    swift_setDeallocating();
    sub_1C6FDCA18();
    if (v56)
    {
      v57 = *(v56 + 16);

      if (v57 / v46 < v50)
      {
        break;
      }
    }

    ++v52;
    if (!--v12)
    {
      v58 = OUTLINED_FUNCTION_7_15();
      v59 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_32(v59))
      {
        v60 = OUTLINED_FUNCTION_41_0();
        *v60 = 134217984;
        *(v60 + 4) = v78;
        OUTLINED_FUNCTION_1_27();
        _os_log_impl(v61, v62, v63, v64, v65, v66);
        OUTLINED_FUNCTION_10_1();
      }

      goto LABEL_36;
    }
  }

  v67 = OUTLINED_FUNCTION_7_15();
  v68 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_32(v68))
  {
    v69 = OUTLINED_FUNCTION_41_0();
    *v69 = 134217984;
    *(v69 + 4) = v50;
    OUTLINED_FUNCTION_1_27();
    _os_log_impl(v70, v71, v72, v73, v74, v75);
    OUTLINED_FUNCTION_10_1();
  }

  v32 = 0;
LABEL_36:
  v6 = v79;
  v8 = v80;
LABEL_23:
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C754F1AC();
  (*(v8 + 8))(v11, v6);
  return v32;
}

uint64_t MomentGroundingProcessor.assetUUIDsBackedByOverlappingMoments(for:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 >= 2)
  {
    v3 = sub_1C7069D48(a1);
    if (v3)
    {
      v4 = v3;
      v5 = sub_1C7068570(a1);
      v6 = sub_1C70686B0(v5);

      if (v6)
      {
        if (*(v6 + 16))
        {
          sub_1C75504FC();
          v7 = sub_1C754FEEC();
          v8 = sub_1C75511BC();
          if (OUTLINED_FUNCTION_32(v8))
          {
            v9 = OUTLINED_FUNCTION_41_0();
            *v9 = 134217984;
            *(v9 + 4) = *(v6 + 16);

            OUTLINED_FUNCTION_1_27();
            _os_log_impl(v10, v11, v12, v13, v14, v15);
            OUTLINED_FUNCTION_10_1();
          }

          else
          {
          }

          v23 = StoryGenerationCache.assetUUIDs(forMomentUUIDs:)();

          sub_1C75504FC();
          OUTLINED_FUNCTION_0_29();
          sub_1C7069B34(v23, v4, v24, sub_1C70A9074);
          v19 = v25;

          if (*(v19 + 16))
          {

            return v19;
          }

          return v4;
        }
      }

      v20 = sub_1C754FEEC();
      v21 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v21))
      {
        v22 = OUTLINED_FUNCTION_127();
        *v22 = 0;
        _os_log_impl(&dword_1C6F5C000, v20, v21, "There are no overlapping moments, immediately return all asset uuids", v22, 2u);
        OUTLINED_FUNCTION_109();
      }

      return v4;
    }
  }

  v16 = sub_1C754FEEC();
  v17 = sub_1C75511BC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_41_0();
    *v18 = 134217984;
    *(v18 + 4) = v2;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "There are %ld groups of asset uuids.", v18, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v19 = *(a1 + 32);
  sub_1C75504FC();
  return v19;
}

uint64_t sub_1C7068570(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v1 + OBJC_IVAR____TtC18PhotosIntelligence24MomentGroundingProcessor_storyPhotoLibraryContext;
  v4 = (a1 + 32);
  for (i = MEMORY[0x1E69E7CC0]; v2; --v2)
  {
    v6 = *v4;
    v8 = *(v3 + 8);
    v9 = *(v3 + 16);
    v19 = *v3;
    v7 = v19;
    v20 = v8;
    v21 = v9;
    sub_1C75504FC();
    v10 = v7;

    v11 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v6, &v19);
    v12 = v19;

    v13 = sub_1C706D87C(v11);
    v14 = sub_1C71CD85C(v13);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB226C();
      i = v16;
    }

    v15 = *(i + 16);
    if (v15 >= *(i + 24) >> 1)
    {
      sub_1C6FB226C();
      i = v17;
    }

    *(i + 16) = v15 + 1;
    *(i + 8 * v15 + 32) = v14;
    ++v4;
  }

  return i;
}

uint64_t sub_1C70686B0(uint64_t a1)
{
  v97 = sub_1C754DF6C();
  v90 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v95 = &v84 - v4;
  v5 = 0;
  v6 = *(a1 + 16);
  v100 = a1 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  while (v6 != v5)
  {
    v9 = *(v100 + 8 * v5);
    v10 = *(v9 + 16);
    v11 = *(v8 + 16);
    if (__OFADD__(v11, v10))
    {
      goto LABEL_62;
    }

    sub_1C75504FC();
    if (!swift_isUniquelyReferenced_nonNull_native() || v11 + v10 > *(v8 + 24) >> 1)
    {
      sub_1C6FB1814();
      v8 = v12;
    }

    if (*(v9 + 16))
    {
      if ((*(v8 + 24) >> 1) - *(v8 + 16) < v10)
      {
        goto LABEL_64;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        v13 = *(v8 + 16);
        v14 = __OFADD__(v13, v10);
        v15 = v13 + v10;
        if (v14)
        {
          goto LABEL_65;
        }

        *(v8 + 16) = v15;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_63;
      }
    }

    ++v5;
  }

  sub_1C706D154(v8);
  v16 = *(v85 + OBJC_IVAR____TtC18PhotosIntelligence24MomentGroundingProcessor_storyPhotoLibraryContext + 8);
  v17 = *(v85 + OBJC_IVAR____TtC18PhotosIntelligence24MomentGroundingProcessor_storyPhotoLibraryContext + 16);
  v101 = *(v85 + OBJC_IVAR____TtC18PhotosIntelligence24MomentGroundingProcessor_storyPhotoLibraryContext);
  LOWORD(v102) = v16;
  v103 = v17;
  v18 = v101;

  static StoryGenerationUtilities.momentLocalStartDateByMomentUUID(for:storyPhotoLibraryContext:)();
  v20 = v19;

  v21 = v101;

  v105 = v7;
  if (v6)
  {
    v22 = 0;
    v89 = v90 + 16;
    v87 = (v90 + 32);
    v88 = (v90 + 8);
    v23 = MEMORY[0x1E69E7CC0];
    v86 = (v90 + 40);
    v91 = v6;
LABEL_16:
    v98 = v23;
    v24 = *(v100 + 8 * v22++);
    v25 = *(v24 + 16);
    sub_1C75504FC();
    v26 = 0;
    v27 = v24 + 40;
    v99 = MEMORY[0x1E69E7CC8];
LABEL_17:
    for (i = (v27 + 16 * v26); ; i += 2)
    {
      if (v25 == v26)
      {

        v50 = MomentGroundingProcessor.momentUUIDsByLocalStartDateString(with:)(v99);

        v23 = v98;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB2C48();
          v23 = v53;
        }

        v51 = v91;
        v52 = *(v23 + 16);
        if (v52 >= *(v23 + 24) >> 1)
        {
          sub_1C6FB2C48();
          v23 = v54;
        }

        *(v23 + 16) = v52 + 1;
        *(v23 + 8 * v52 + 32) = v50;
        if (v22 == v51)
        {

          v105 = v23;
          goto LABEL_41;
        }

        goto LABEL_16;
      }

      if (v26 >= *(v24 + 16))
      {
        break;
      }

      if (*(v20 + 16))
      {
        v29 = *(i - 1);
        v30 = *i;
        sub_1C75504FC();
        v31 = sub_1C6F78124(v29, v30);
        if (v32)
        {
          v92 = v22;
          v33 = *(v20 + 56);
          v93 = *(v90 + 72);
          v94 = v27;
          v34 = *(v90 + 16);
          v35 = v95;
          v36 = v97;
          v34(v95, v33 + v93 * v31, v97);
          v34(v96, v35, v36);
          v37 = v99;
          swift_isUniquelyReferenced_nonNull_native();
          v101 = v37;
          v38 = sub_1C6F78124(v29, v30);
          if (__OFADD__(v37[2], (v39 & 1) == 0))
          {
            goto LABEL_67;
          }

          v40 = v38;
          LODWORD(v99) = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216738);
          if (sub_1C7551A2C())
          {
            v41 = sub_1C6F78124(v29, v30);
            v43 = v99;
            v27 = v94;
            if ((v99 & 1) != (v42 & 1))
            {
              goto LABEL_69;
            }

            v40 = v41;
          }

          else
          {
            v27 = v94;
            v43 = v99;
          }

          v44 = v101;
          if (v43)
          {
            v45 = v97;
            (*v86)(*(v101 + 7) + v40 * v93, v96, v97);

            (*v88)(v95, v45);
          }

          else
          {
            *(v101 + (v40 >> 6) + 8) |= 1 << v40;
            v46 = (v44[6] + 16 * v40);
            *v46 = v29;
            v46[1] = v30;
            v47 = v97;
            (*v87)(v44[7] + v40 * v93, v96, v97);
            (*v88)(v95, v47);
            v48 = v44[2];
            v14 = __OFADD__(v48, 1);
            v49 = v48 + 1;
            if (v14)
            {
              goto LABEL_68;
            }

            v44[2] = v49;
          }

          v99 = v44;
          ++v26;
          v22 = v92;
          goto LABEL_17;
        }
      }

      ++v26;
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_41:
  v55 = *(v23 + 16);
  if (v55)
  {
    v104 = MEMORY[0x1E69E7CC0];
    sub_1C716D5B0(0, v55, 0);
    v100 = v104;
    v98 = v23;
    v56 = v23 + 32;
    do
    {
      v57 = *v56;
      v58 = *(*v56 + 16);
      if (v58)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
        v59 = swift_allocObject();
        v60 = _swift_stdlib_malloc_size(v59);
        v59[2] = v58;
        v59[3] = 2 * ((v60 - 32) / 16);
        v99 = sub_1C70D452C(&v101, v59 + 32, v58, v57, v61, v62, v63, v64, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
        sub_1C75504FC();
        sub_1C6F61E88();
        if (v99 != v58)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v59 = MEMORY[0x1E69E7CC0];
      }

      v104 = v100;
      v66 = *(v100 + 16);
      v65 = *(v100 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1C716D5B0((v65 > 1), v66 + 1, 1);
        v100 = v104;
      }

      v67 = v100;
      *(v100 + 16) = v66 + 1;
      *(v67 + 8 * v66 + 32) = v59;
      v56 += 8;
      --v55;
    }

    while (v55);
  }

  else
  {
    v100 = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027AF4();
  v69 = v68;

  if (v69)
  {
    sub_1C703FD7C();
    v71 = v70;

    sub_1C75504FC();
    v72 = sub_1C754FEEC();
    v73 = sub_1C75511BC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v101 = v75;
      *v74 = 134218242;
      *(v74 + 4) = *(v71 + 16);

      *(v74 + 12) = 2080;
      v76 = MEMORY[0x1CCA5D090](v71, MEMORY[0x1E69E6158]);
      v78 = sub_1C6F765A4(v76, v77, &v101);

      *(v74 + 14) = v78;
      _os_log_impl(&dword_1C6F5C000, v72, v73, "There are %ld overlapping date strings = %s", v74, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x1CCA5F8E0](v75, -1, -1);
      MEMORY[0x1CCA5F8E0](v74, -1, -1);
    }

    else
    {
    }

    v82 = sub_1C7067310(MEMORY[0x1E69E7CD0], v71, &v105);
  }

  else
  {
    v79 = sub_1C754FEEC();
    v80 = sub_1C75511BC();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_1C6F5C000, v79, v80, "There are no groups of date strings", v81, 2u);
      MEMORY[0x1CCA5F8E0](v81, -1, -1);
    }

    return 0;
  }

  return v82;
}

uint64_t MomentGroundingProcessor.momentUUIDsByLocalStartDateString(with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v70 = &v59 - v3;
  v4 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  v74 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216728);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_14_2();
  v69 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v59 - v14;
  v15 = *(a1 + 64);
  v68 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v60 = (v16 + 63) >> 6;
  v61 = v6 + 16;
  v71 = (v6 + 32);
  v63 = v6;
  v64 = a1;
  v65 = (v6 + 8);
  sub_1C75504FC();
  v19 = 0;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC8];
  v66 = v4;
  while (1)
  {
    v73 = v19;
    if (!v18)
    {
      break;
    }

    v22 = v20;
LABEL_11:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = v24 | (v22 << 6);
    v26 = v63;
    v27 = (*(v64 + 48) + 16 * v25);
    v29 = *v27;
    v28 = v27[1];
    v30 = v62;
    (*(v63 + 16))(v62, *(v64 + 56) + *(v63 + 72) * v25, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216730);
    v32 = *(v31 + 48);
    v33 = v69;
    *v69 = v29;
    *(v33 + 1) = v28;
    v34 = v30;
    v23 = v33;
    (*(v26 + 32))(&v33[v32], v34, v4);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v31);
    sub_1C75504FC();
LABEL_12:
    v35 = v23;
    v36 = v67;
    sub_1C7069DB4(v35, v67);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216730);
    if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
    {

      sub_1C6F6E5B4(v73);
      return v21;
    }

    v38 = *v36;
    v72 = *(v36 + 1);
    (*v71)(v74, &v36[*(v37 + 48)], v4);
    v39 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v40 = v70;
    sub_1C754E31C();
    v41 = sub_1C754E35C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v41);
    v43 = 0;
    if (EnumTagSinglePayload != 1)
    {
      v44 = v70;
      v43 = sub_1C754E32C();
      OUTLINED_FUNCTION_62_2();
      (*(v45 + 8))(v44, v41);
    }

    [v39 setTimeZone_];

    sub_1C7069CE4(0x64644D4D5959, 0xE600000000000000, v39);
    v46 = sub_1C754DECC();
    v47 = [v39 stringFromDate_];

    v48 = sub_1C755068C();
    v50 = v49;

    sub_1C6F6E5B4(v73);
    swift_isUniquelyReferenced_nonNull_native();
    v75 = v21;
    v51 = sub_1C6F78124(v48, v50);
    if (__OFADD__(*(v21 + 16), (v52 & 1) == 0))
    {
      goto LABEL_26;
    }

    v53 = v51;
    v54 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
    if (sub_1C7551A2C())
    {
      v55 = sub_1C6F78124(v48, v50);
      if ((v54 & 1) != (v56 & 1))
      {
        goto LABEL_27;
      }

      v53 = v55;
    }

    v21 = v75;
    if (v54)
    {
    }

    else
    {
      sub_1C6FCABE4(v53);
    }

    sub_1C70F082C(&v75, v38, v72);

    v4 = v66;
    (*v65)(v74, v66);
    v19 = sub_1C6F9EEA8;
  }

  v23 = v69;
  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v60)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216730);
      __swift_storeEnumTagSinglePayload(v23, 1, 1, v57);
      v18 = 0;
      goto LABEL_12;
    }

    v18 = *(v68 + 8 * v22);
    ++v20;
    if (v18)
    {
      v20 = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C70695B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *a2;
  v6 = a2[1];
  v7 = *a3;
  v8 = *(*a3 + 16);
  sub_1C75504FC();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (v8 != v9)
  {
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v11 = *(v7 + 8 * v9 + 32);
    if (*(v11 + 16))
    {
      sub_1C75504FC();
      v12 = sub_1C6F78124(v5, v6);
      if ((v13 & 1) == 0)
      {

        goto LABEL_7;
      }

      v14 = *(*(v11 + 56) + 8 * v12);
      sub_1C75504FC();

      v22 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB20F8();
        v10 = v16;
      }

      v15 = *(v10 + 16);
      if (v15 >= *(v10 + 24) >> 1)
      {
        sub_1C6FB20F8();
        v10 = v17;
      }

      ++v9;
      *(v10 + 16) = v15 + 1;
      *(v10 + 8 * v15 + 32) = v14;
      v4 = v22;
    }

    else
    {
LABEL_7:
      ++v9;
    }
  }

  v18 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v19 = *(v10 + 16);
  while (v19 != v18)
  {
    if (v18 >= *(v10 + 16))
    {
      goto LABEL_19;
    }

    v20 = v18 + 1;
    v21 = sub_1C75504FC();
    sub_1C6FD25FC(v21);
    v18 = v20;
  }

  sub_1C73978C4(v23);
}

uint64_t MomentGroundingProcessor.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence24MomentGroundingProcessor_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_62_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence24MomentGroundingProcessor_storyPhotoLibraryContext);

  return v0;
}

uint64_t MomentGroundingProcessor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence24MomentGroundingProcessor_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_62_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence24MomentGroundingProcessor_storyPhotoLibraryContext);

  return swift_deallocClassInstance();
}

uint64_t sub_1C7069894(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v3);
  v1 = sub_1C7550F9C();

  return v1;
}

uint64_t sub_1C7069904(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v3);
  v1 = MEMORY[0x1CCA5D090](v3, &type metadata for QueryToken);

  return v1;
}

uint64_t sub_1C706996C(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);

  return sub_1C755142C();
}

void *sub_1C70699B4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C70A942C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1C7069A44()
{
  OUTLINED_FUNCTION_0_29();

  sub_1C7069B34(v0, v1, v2, sub_1C70A9074);
}

void sub_1C7069AB4(uint64_t a1, uint64_t a2)
{

  sub_1C7069B34(a1, a2, sub_1C70A942C, sub_1C70699B4);
}

void sub_1C7069B34(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;

  if (v7 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1C71FAC38(0, v8, v10 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    OUTLINED_FUNCTION_11_16();
    a3();
    if (!v8)
    {

      return;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    swift_slowAlloc();

    OUTLINED_FUNCTION_11_16();
    a4();

    if (!v8)
    {

      OUTLINED_FUNCTION_10_1();
      return;
    }
  }

  OUTLINED_FUNCTION_10_1();
  __break(1u);
}

void sub_1C7069CE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C755065C();

  [a3 setDateFormat_];
}

uint64_t sub_1C7069D48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v5 = MEMORY[0x1E69E7CD0];
  v2 = a1 + 32;
  do
  {
    v2 += 8;
    v3 = sub_1C75504FC();
    sub_1C739796C(v3);
    --v1;
  }

  while (v1);
  return v5;
}

uint64_t sub_1C7069DB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MomentGroundingProcessor()
{
  result = qword_1EDD0DCB8;
  if (!qword_1EDD0DCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7069E78()
{
  result = sub_1C754FF1C();
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

uint64_t sub_1C7069F50()
{
  if (qword_1EDD0A988 != -1)
  {
    result = swift_once();
  }

  byte_1EC216740 = 19;
  return result;
}

uint64_t static AssetCurationOutlierDetector.tokenGen.getter()
{
  if (qword_1EC213D30 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC25B650);
  v0 = qword_1EC25B658;
  if (!qword_1EC25B658)
  {
    if (qword_1EC213D28 != -1)
    {
      OUTLINED_FUNCTION_3_19();
    }

    static LLMWrapper.tokenGenerator(for:)();
    v0 = v1;
    qword_1EC25B658 = v1;
  }

  os_unfair_lock_unlock(&dword_1EC25B650);
  return v0;
}

uint64_t static AssetCurationOutlierDetector.generateOutlierCompletionsGMS(with:eventRecorder:progressReporter:diagnosticContext:aiEventReporting:)()
{
  OUTLINED_FUNCTION_42();
  v0[14] = v1;
  v0[15] = v2;
  v0[12] = v3;
  v0[13] = v4;
  v0[11] = v5;
  v6 = sub_1C754FA7C();
  v0[16] = v6;
  OUTLINED_FUNCTION_18(v6);
  v0[17] = v7;
  v0[18] = OUTLINED_FUNCTION_77();
  v8 = sub_1C754E72C();
  v0[19] = v8;
  OUTLINED_FUNCTION_18(v8);
  v0[20] = v9;
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = type metadata accessor for LLMConfiguration(0);
  v0[25] = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  v0[26] = OUTLINED_FUNCTION_77();
  v10 = sub_1C754F38C();
  v0[27] = v10;
  OUTLINED_FUNCTION_18(v10);
  v0[28] = v11;
  v0[29] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C706A23C()
{
  v68 = v0;
  v1 = static AssetCurationOutlierDetector.tokenGen.getter();
  *(v0 + 240) = v1;
  if (!v1)
  {
    v8 = *(v0 + 104);
    sub_1C6FB5280();
    swift_allocError();
    swift_willThrow();
    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    (*(v9 + 8))(v8);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_130_0();

    __asm { BRAA            X1, X16 }
  }

  v2 = v1;
  v3 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  sub_1C754F60C();
  v4 = sub_1C754F61C();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  sub_1C754F16C();
  sub_1C6FD7FC8(v3, &qword_1EC214BF0);
  sub_1C754F2CC();
  type metadata accessor for LLMConfigurationProvider();
  if (qword_1EC213D28 != -1)
  {
    OUTLINED_FUNCTION_3_19();
  }

  LOBYTE(v66[0]) = byte_1EC216740;
  if (qword_1EC213DB8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 200);
  v6 = sub_1C754FF1C();
  v7 = __swift_project_value_buffer(v6, qword_1EC25B660);
  *(v0 + 248) = v7;
  static LLMConfigurationProvider.configuration(for:logger:)(v66, v7, v5);
  v12 = *(v0 + 112);
  v13 = (*(v0 + 200) + *(*(v0 + 192) + 40));
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  *(v0 + 57) = *(v13 + 41);
  *(v0 + 32) = v15;
  *(v0 + 48) = v16;
  *(v0 + 16) = v14;
  v17 = v13[1];
  v66[0] = *v13;
  v66[1] = v17;
  v67[0] = v13[2];
  *(v67 + 9) = *(v13 + 41);
  static LLMWrapper.gmsSamplingParameters(from:)();
  if (v12)
  {
    v18 = *(v0 + 112);
    sub_1C75504FC();
    if (sub_1C71656D8())
    {
      v19 = *(v0 + 88);
      v20 = (v18 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
      os_unfair_lock_lock(v20);
      sub_1C706AF7C(&v20[2], v19, (v0 + 16));
      os_unfair_lock_unlock(v20);
    }
  }

  (*(*(v0 + 160) + 16))(*(v0 + 176), *(v0 + 184), *(v0 + 152));
  sub_1C75504FC();
  v21 = sub_1C754FEEC();
  v22 = sub_1C75511BC();

  v65 = v22;
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 176);
  if (v23)
  {
    v64 = *(v0 + 160);
    v25 = *(v0 + 152);
    v26 = swift_slowAlloc();
    *&v66[0] = swift_slowAlloc();
    *v26 = 136643075;
    v27 = sub_1C75504BC();
    v29 = sub_1C6F765A4(v27, v28, v66);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    v30 = OUTLINED_FUNCTION_98_1();
    v31(v30);
    v32 = sub_1C75506EC();
    v34 = v33;
    v35 = v21;
    v36 = *(v64 + 8);
    v36(v24, v25);
    v37 = sub_1C6F765A4(v32, v34, v66);

    *(v26 + 14) = v37;
    _os_log_impl(&dword_1C6F5C000, v35, v65, "Generating asset curation outlier using GMS one-shot path with prompt bindings %{sensitive}s and sampling parameters: %s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
    v38 = *(v0 + 152);
    v39 = *(v0 + 160);

    v36 = *(v39 + 8);
    v36(v24, v38);
  }

  *(v0 + 256) = v36;
  (*(*(v0 + 136) + 16))(*(v0 + 144), *(v0 + 200) + *(*(v0 + 192) + 24), *(v0 + 128));
  sub_1C75504FC();
  v40 = sub_1C754FEEC();
  v41 = sub_1C75511BC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v66[0] = v43;
    *v42 = 136642819;
    v44 = sub_1C75504BC();
    v46 = sub_1C6F765A4(v44, v45, v66);

    *(v42 + 4) = v46;
    OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v47, v48, "Generating asset curation outlier with prompt bindings: %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1(v43);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v49 = *(v0 + 200);
  v50 = *(v0 + 184);
  v51 = *(v0 + 144);
  v52 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  *(v0 + 73) = 6;
  v53 = swift_task_alloc();
  *(v0 + 264) = v53;
  v53[2] = v51;
  v53[3] = v52;
  v53[4] = v2;
  v53[5] = v50;
  v53[6] = v49;
  v54 = swift_task_alloc();
  *(v0 + 272) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  *v54 = v0;
  v54[1] = sub_1C706A960;
  OUTLINED_FUNCTION_130_0();

  return sub_1C70597B4(v55, v56, v57, v58, v59, v60, v61);
}

uint64_t sub_1C706A960()
{
  OUTLINED_FUNCTION_42();
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v2 = v7;
  *(v7 + 280) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C706AA6C()
{
  v34 = v0;
  v1 = v0[10];
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v33 = v5;
    *v4 = 136642819;
    v6 = MEMORY[0x1CCA5D090](v1, MEMORY[0x1E69E6158]);
    v8 = sub_1C6F765A4(v6, v7, &v33);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v9, v10, "Generated asset curation outlier completion %{sensitive}s from GMS one-shot templated completion SPI");
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v11 = v0[35];
  sub_1C754F2EC();
  v12 = v0[32];
  v13 = v0[29];
  v15 = v0[27];
  v14 = v0[28];
  if (v11)
  {
    v30 = v0[25];
    v31 = v0[29];
    v16 = v0[23];
    v17 = v0[19];
    v18 = v0[32];
    v32 = v0[27];
    v19 = v0[17];
    v20 = v0[18];
    v21 = v0[16];
    v22 = v0[12];

    (*(v19 + 8))(v20, v21);
    v18(v16, v17);
    sub_1C706CB5C(v30);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    sub_1C754F1AC();

    (*(v14 + 8))(v31, v32);

    OUTLINED_FUNCTION_43();

    return v23();
  }

  else
  {
    v25 = v0[25];
    v26 = v0[23];
    v27 = v0[19];
    v28 = v0[12];
    (*(v0[17] + 8))();
    v12(v26, v27);
    sub_1C706CB5C(v25);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    sub_1C754F1AC();

    (*(v14 + 8))(v13, v15);

    v29 = v0[1];

    return v29(v1);
  }
}

uint64_t sub_1C706ADD8()
{
  v11 = v0[32];
  v12 = v0[29];
  v1 = v0[28];
  v13 = v0[27];
  v2 = v0[25];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[12];
  v14 = v0[13];

  (*(v3 + 8))(v4, v5);
  v7 = OUTLINED_FUNCTION_98_1();
  v11(v7);
  sub_1C706CB5C(v2);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1C754F1AC();

  (*(v1 + 8))(v12, v13);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v8 + 8))(v14);

  OUTLINED_FUNCTION_43();

  return v9();
}

void sub_1C706AF7C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (qword_1EC213D28 != -1)
  {
    swift_once();
  }

  v6 = byte_1EC216740;
  sub_1C75504FC();
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + 64);
  v8 = sub_1C6FC296C();
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C58);
  if (sub_1C7551A2C())
  {
    v12 = sub_1C6FC296C();
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_7;
    }

LABEL_11:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

LABEL_7:
  *(a1 + 64) = v7;
  if ((v11 & 1) == 0)
  {
    sub_1C6FCABDC(v10, v6, MEMORY[0x1E69E7CC0], v7);
  }

  v14 = *(v7 + 56) + 8 * v10;
  sub_1C6FB0734();
  v15 = *(*v14 + 16);
  sub_1C6FB0FE8();
  v16 = *v14;
  *(v16 + 16) = v15 + 1;
  v17 = v16 + 72 * v15;
  *(v17 + 32) = a2;
  v18 = a3[1];
  *(v17 + 40) = *a3;
  *(v17 + 56) = v18;
  *(v17 + 72) = a3[2];
  *(v17 + 81) = *(a3 + 41);
}

uint64_t sub_1C706B114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C706B1BC, 0, 0);
}

uint64_t sub_1C706B1BC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = *(type metadata accessor for LLMConfiguration(0) + 44);
  v4 = sub_1C754E15C();
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(v1, v2 + v3, v4);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1C706B2C0;
  v7 = v0[9];
  v9 = v0[6];
  v8 = v0[7];
  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[3];

  return sub_1C706B484(v11, v7, v12, v10, v8, v9);
}

uint64_t sub_1C706B2C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 88) = v1;

  v7 = *(v4 + 72);
  if (!v1)
  {
    *(v5 + 96) = a1;
  }

  sub_1C6FD7FC8(v7, &qword_1EC214DF8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C706B41C()
{
  OUTLINED_FUNCTION_42();
  **(v0 + 16) = *(v0 + 96);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C706B484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v6[31] = *a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E00);
  v6[32] = v7;
  v6[33] = *(v7 - 8);
  v6[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E08);
  v6[35] = swift_task_alloc();
  v6[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E10);
  v6[37] = swift_task_alloc();
  v8 = sub_1C754EECC();
  v6[38] = v8;
  v6[39] = *(v8 - 8);
  v6[40] = swift_task_alloc();
  v9 = sub_1C754EEEC();
  v6[41] = v9;
  v6[42] = *(v9 - 8);
  v6[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18);
  v6[44] = swift_task_alloc();
  v10 = sub_1C754FD9C();
  v6[45] = v10;
  v6[46] = *(v10 - 8);
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20);
  v6[49] = v11;
  v6[50] = *(v11 - 8);
  v6[51] = swift_task_alloc();
  v12 = sub_1C755029C();
  v6[52] = v12;
  v6[53] = *(v12 - 8);
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C706B858, 0, 0);
}

uint64_t sub_1C706B858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v55 = *(v26 + 472);
  v27 = *(v26 + 448);
  v29 = *(v26 + 424);
  v28 = *(v26 + 432);
  v30 = *(v26 + 416);
  v52 = *(v26 + 408);
  v50 = *(v26 + 400);
  v53 = *(v26 + 392);
  v54 = *(v26 + 464);
  v51 = *(v26 + 232);
  v56 = *(v26 + 352);
  v31 = *(v26 + 200);
  *(swift_task_alloc() + 16) = v31;
  sub_1C75502AC();

  sub_1C755028C();
  v32 = *(v29 + 8);
  *(v26 + 488) = v32;
  *(v26 + 496) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v28, v30);
  sub_1C754DF8C();
  *(v26 + 504) = sub_1C706CBD4(&qword_1EDD06CA8, MEMORY[0x1E69C61F8]);
  sub_1C75503AC();

  v33 = OUTLINED_FUNCTION_98_1();
  (v32)(v33);
  sub_1C70BFEC0();
  sub_1C75503DC();

  v32(v27, v30);
  *(v26 + 512) = sub_1C754E72C();
  OUTLINED_FUNCTION_12();
  v35 = *(v34 + 16);
  *(v26 + 520) = v35;
  *(v26 + 528) = (v34 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v35(v52, v51);
  *(v26 + 600) = *MEMORY[0x1E69A1370];
  v36 = *(v50 + 104);
  *(v26 + 536) = v36;
  *(v26 + 544) = (v50 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v36(v52);
  sub_1C75503BC();
  v37 = *(v50 + 8);
  *(v26 + 552) = v37;
  *(v26 + 560) = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v52, v53);
  v38 = OUTLINED_FUNCTION_98_1();
  (v32)(v38);
  sub_1C755037C();
  v32(v54, v30);
  sub_1C755038C();
  v32(v55, v30);
  v39 = sub_1C754FD8C();
  __swift_storeEnumTagSinglePayload(v56, 1, 1, v39);
  sub_1C754FD7C();
  v40 = swift_task_alloc();
  *(v26 + 568) = v40;
  *v40 = v26;
  v40[1] = sub_1C706BC10;
  OUTLINED_FUNCTION_130_0();

  return MEMORY[0x1EEE0B310](v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}