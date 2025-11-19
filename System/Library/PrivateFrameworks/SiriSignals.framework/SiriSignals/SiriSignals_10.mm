void sub_231557A74()
{
  OUTLINED_FUNCTION_14_9();
  memcpy(v0, v1, 0x51uLL);
  v2 = OUTLINED_FUNCTION_18_9();
  sub_23154F0E0(v2, v3, v4);
}

uint64_t sub_231557AB8()
{
  OUTLINED_FUNCTION_14_9();
  memcpy(v0, v1, 0x51uLL);
  v2 = OUTLINED_FUNCTION_18_9();
  return sub_231552218(v2, v3, v4);
}

void sub_231557B00()
{
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_63(v0, v1, v2, v3, v4, v5, v6, v7, v11);
  v8 = OUTLINED_FUNCTION_18_9();
  sub_23154F08C(v8, v9, v10);
}

uint64_t sub_231557B40()
{
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_63(v0, v1, v2, v3, v4, v5, v6, v7, v12);
  v8 = OUTLINED_FUNCTION_18_9();
  return sub_23155216C(v8, v9, v10);
}

void sub_231557B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  sub_23154EF54(a1, a2, a3);
}

uint64_t sub_231557BA0()
{
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_63(v0, v1, v2, v3, v4, v5, v6, v7, v12);
  v8 = OUTLINED_FUNCTION_18_9();
  return sub_23154E8B0(v8, v9, v10);
}

uint64_t sub_231557BE0()
{
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_63(v0, v1, v2, v3, v4, v5, v6, v7, v12);
  v8 = OUTLINED_FUNCTION_18_9();
  return sub_23154FB34(v8, v9, v10);
}

uint64_t sub_231557C20()
{
  OUTLINED_FUNCTION_6_22();
  OUTLINED_FUNCTION_62();
  return sub_231547714();
}

void sub_231557C54()
{
  OUTLINED_FUNCTION_6_22();
  OUTLINED_FUNCTION_62();
  sub_23154E904(v0, v1, v2);
}

uint64_t sub_231557C84()
{
  OUTLINED_FUNCTION_6_22();
  OUTLINED_FUNCTION_62();
  return sub_23154FBE0(v0, v1, v2);
}

uint64_t sub_231557F30()
{
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v1 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v1, qword_280D72248);
  v2 = sub_231585FE4();
  v3 = sub_2315865E4();
  if (OUTLINED_FUNCTION_21_4(v3))
  {
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_54();
    *v0 = 136315138;
    OUTLINED_FUNCTION_22_4();

    v4 = sub_2314A22E8();

    *(v0 + 4) = v4;
    OUTLINED_FUNCTION_51(&dword_231496000, v5, v3, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list");
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_53();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_231558038()
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v0 = sub_231585FF4();
  __swift_project_value_buffer(v0, qword_280D72248);
  v1 = sub_231585FE4();
  v2 = sub_2315865E4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v3 = 136315138;
    swift_beginAccess();

    v4 = sub_2314A22E8();

    *(v3 + 4) = v4;
    _os_log_impl(&dword_231496000, v1, v2, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x231931280](v6, -1, -1);
    MEMORY[0x231931280](v3, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2315581A4()
{
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v0 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v0, qword_280D72248);
  v1 = sub_231585FE4();
  v2 = sub_2315865E4();
  if (OUTLINED_FUNCTION_21_4(v2))
  {
    v3 = OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_47();
    *v3 = 136315138;
    *(v3 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v1, v2, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list", v3, 0xCu);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_10();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_231558294()
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v0 = sub_231585FF4();
  __swift_project_value_buffer(v0, qword_280D72248);
  v1 = sub_231585FE4();
  v2 = sub_2315865E4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v3 = 136315138;
    *(v3 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v1, v2, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x231931280](v5, -1, -1);
    MEMORY[0x231931280](v3, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

void sub_231558428()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v7 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v7, qword_280D72248);
  v8 = sub_231585FE4();
  v9 = sub_2315865E4();
  if (OUTLINED_FUNCTION_21_4(v9))
  {
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_54();
    *v0 = 136315138;
    if (*v6 != -1)
    {
      swift_once();
    }

    v10 = *v4;
    v11 = *v2;
    *(v0 + 4) = sub_2314A22E8();
    OUTLINED_FUNCTION_51(&dword_231496000, v12, v9, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list");
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_53();
  }

  OUTLINED_FUNCTION_119();
}

void sub_231558528()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v7 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v7, qword_280D72248);
  v8 = sub_231585FE4();
  v9 = sub_2315865E4();
  if (OUTLINED_FUNCTION_21_4(v9))
  {
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_54();
    *v0 = 136315138;
    if (*v6 != -1)
    {
      swift_once();
    }

    v10 = *v4;
    v11 = *v2;
    *(v0 + 4) = sub_2314A22E8();
    OUTLINED_FUNCTION_51(&dword_231496000, v12, v9, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list");
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_53();
  }

  OUTLINED_FUNCTION_119();
}

void sub_231558628()
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v4 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v4, qword_280D72248);
  v5 = sub_231585FE4();
  sub_2315865E4();
  OUTLINED_FUNCTION_90();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_22();
    v10 = OUTLINED_FUNCTION_54();
    *v0 = 136315138;
    v7 = OUTLINED_FUNCTION_3_28();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    sub_231586204();
    sub_2314A22E8();
    OUTLINED_FUNCTION_7_18();
    *(v0 + 4) = v3;
    OUTLINED_FUNCTION_51(&dword_231496000, v9, v1, "%s no intent given");
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_53();
  }

  OUTLINED_FUNCTION_119();
}

void sub_231558728()
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v4 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v4, qword_280D72248);
  v5 = sub_231585FE4();
  sub_2315865E4();
  OUTLINED_FUNCTION_90();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_22();
    v10 = OUTLINED_FUNCTION_54();
    *v0 = 136315138;
    v7 = OUTLINED_FUNCTION_3_28();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    sub_231586204();
    sub_2314A22E8();
    OUTLINED_FUNCTION_7_18();
    *(v0 + 4) = v3;
    OUTLINED_FUNCTION_51(&dword_231496000, v9, v1, "%s no intent given");
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_53();
  }

  OUTLINED_FUNCTION_119();
}

uint64_t sub_231558828()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13[-1] - v2;
  v4 = sub_231585D34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[3] = &type metadata for NoParameters;
  v13[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v13, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_23155B0E4(v3, &qword_27DD5B008, &unk_23158A5C0);
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v10 = (*(v5 + 32))(v8, v3, v4);
    MEMORY[0x28223BE20](v10);
    *(&v12 - 2) = v8;
    v9 = sub_2314DCD00(sub_231502BC0, (&v12 - 4), &unk_284610020);
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

uint64_t sub_231558A4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19[-v4 - 8];
  v6 = sub_231585D34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v20[3] = &type metadata for SignalComputationContext;
  v20[4] = &protocol witness table for SignalComputationContext;
  v11 = swift_allocObject();
  v20[0] = v11;
  v12 = *(a1 + 16);
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = *(a1 + 32);
  sub_2314B5008(a1, v19);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v20, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_23155B0E4(v5, &qword_27DD5B008, &unk_23158A5C0);
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = *(a1 + 40);
    v15 = (*(v7 + 32))(v10, v5, v6);
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &unk_284610020;
    }

    MEMORY[0x28223BE20](v15);
    *(&v18 - 2) = v10;

    v13 = sub_2314DCD00(sub_23155BBCC, (&v18 - 4), v16);

    (*(v7 + 8))(v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v13;
}

void sub_231558CD4()
{
  OUTLINED_FUNCTION_118();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v8 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v8, qword_280D72248);
  v9 = sub_231585FE4();
  sub_2315865E4();
  OUTLINED_FUNCTION_90();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_54();
    *v0 = 136315138;
    if (*v7 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_4();
    v11 = *v5;
    v12 = *v3;

    OUTLINED_FUNCTION_3_28();
    sub_2314A22E8();
    OUTLINED_FUNCTION_7_18();
    *(v0 + 4) = v11;
    OUTLINED_FUNCTION_51(&dword_231496000, v13, v1, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list");
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_53();
  }

  OUTLINED_FUNCTION_117();
}

uint64_t sub_231558DF4()
{
  OUTLINED_FUNCTION_16_11();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  OUTLINED_FUNCTION_19(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v4);
  v6 = v20 - v5;
  v21[3] = &type metadata for NoParameters;
  v21[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v21, v6);
  v7 = sub_231585D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  sub_23155B0E4(v6, &qword_27DD5B008, &unk_23158A5C0);
  if (EnumTagSinglePayload != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v9 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v9, qword_280D72248);
    v10 = sub_231585FE4();
    sub_2315865E4();
    OUTLINED_FUNCTION_90();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_22();
      v13 = OUTLINED_FUNCTION_47();
      v20[2] = v13;
      *v12 = 136315138;
      v20[1] = v0(0);
      v14 = OUTLINED_FUNCTION_18_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
      sub_231586204();
      v16 = sub_2314A22E8();

      *(v12 + 4) = v16;
      OUTLINED_FUNCTION_145(&dword_231496000, v17, v18, "%s no intent given");
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_10();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return MEMORY[0x277D84F90];
}

uint64_t sub_231558FE8(_OWORD *a1, uint64_t (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  OUTLINED_FUNCTION_19(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v27[3] = &type metadata for SignalComputationContext;
  v27[4] = &protocol witness table for SignalComputationContext;
  v10 = swift_allocObject();
  v27[0] = v10;
  v11 = a1[1];
  v10[1] = *a1;
  v10[2] = v11;
  v10[3] = a1[2];
  sub_2314B5008(a1, &v26);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v27, v9);
  v12 = sub_231585D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v12);
  sub_23155B0E4(v9, &qword_27DD5B008, &unk_23158A5C0);
  if (EnumTagSinglePayload != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v14 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v14, qword_280D72248);
    v15 = sub_231585FE4();
    sub_2315865E4();
    OUTLINED_FUNCTION_90();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_22();
      v18 = OUTLINED_FUNCTION_47();
      v26 = v18;
      *v17 = 136315138;
      v25 = a2(0);
      v19 = OUTLINED_FUNCTION_18_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
      sub_231586204();
      v21 = sub_2314A22E8();

      *(v17 + 4) = v21;
      OUTLINED_FUNCTION_145(&dword_231496000, v22, v23, "%s no intent given");
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_10();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return MEMORY[0x277D84F90];
}

uint64_t sub_23155921C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v35 - v2;
  v4 = sub_231585D34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &type metadata for NoParameters;
  v40 = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v38, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_23155B0E4(v3, &qword_27DD5B008, &unk_23158A5C0);
LABEL_22:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  (*(v5 + 32))(v8, v3, v4);
  v9 = v39;
  v10 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v11 = (v10[3])(v9, v10);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &unk_28460FF58;
  }

  v13 = v39;
  v14 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v15 = (v14[6])(v13, v14);
  if (!v15)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v22 = sub_231585FF4();
    __swift_project_value_buffer(v22, qword_280D72248);
    v23 = sub_231585FE4();
    v24 = sub_2315865E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = v26;
      *v25 = 136315138;
      v36 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B570, &unk_23158DE20);
      sub_231586204();
      v27 = sub_2314A22E8();

      *(v25 + 4) = v27;
      _os_log_impl(&dword_231496000, v23, v24, "%s no intent given", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x231931280](v26, -1, -1);
      MEMORY[0x231931280](v25, -1, -1);
    }

    goto LABEL_21;
  }

  v16 = v15;
  v17 = v39;
  v18 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v19 = *((v18[1])(v17, v18) + 16);

  if (!v19)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v28 = sub_231585FF4();
    __swift_project_value_buffer(v28, qword_280D72248);
    v29 = sub_231585FE4();
    v30 = sub_2315865E4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 136315138;
      v36 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B570, &unk_23158DE20);
      sub_231586204();
      v33 = sub_2314A22E8();

      *(v31 + 4) = v33;
      _os_log_impl(&dword_231496000, v29, v30, "%s no bundleIds given", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x231931280](v32, -1, -1);
      MEMORY[0x231931280](v31, -1, -1);
    }

LABEL_21:
    (*(v5 + 8))(v8, v4);
    goto LABEL_22;
  }

  MEMORY[0x28223BE20](v20);
  *(&v35 - 4) = v8;
  *(&v35 - 3) = v16;
  *(&v35 - 2) = v38;
  v21 = sub_2314DCD00(sub_2314EF3D0, (&v35 - 6), v12);

  (*(v5 + 8))(v8, v4);
LABEL_23:
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v21;
}

uint64_t sub_2315597A8(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39[-v4];
  v6 = sub_231585D34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = &type metadata for SignalComputationContext;
  v44 = &protocol witness table for SignalComputationContext;
  v11 = swift_allocObject();
  v42[0] = v11;
  v12 = a1[1];
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = a1[2];
  sub_2314B5008(a1, &v41);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v42, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_23155B0E4(v5, &qword_27DD5B008, &unk_23158A5C0);
LABEL_22:
    v25 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  (*(v7 + 32))(v10, v5, v6);
  v13 = v43;
  v14 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v15 = (v14[3])(v13, v14);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = &unk_28460FF58;
  }

  v17 = v43;
  v18 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v19 = (v18[6])(v17, v18);
  if (!v19)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v26 = sub_231585FF4();
    __swift_project_value_buffer(v26, qword_280D72248);
    v27 = sub_231585FE4();
    v28 = sub_2315865E4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41 = v30;
      *v29 = 136315138;
      v40 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B570, &unk_23158DE20);
      sub_231586204();
      v31 = sub_2314A22E8();

      *(v29 + 4) = v31;
      _os_log_impl(&dword_231496000, v27, v28, "%s no intent given", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x231931280](v30, -1, -1);
      MEMORY[0x231931280](v29, -1, -1);
    }

    goto LABEL_21;
  }

  v20 = v19;
  v21 = v43;
  v22 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v23 = *((v22[1])(v21, v22) + 16);

  if (!v23)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v32 = sub_231585FF4();
    __swift_project_value_buffer(v32, qword_280D72248);
    v33 = sub_231585FE4();
    v34 = sub_2315865E4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v41 = v36;
      *v35 = 136315138;
      v40 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B570, &unk_23158DE20);
      sub_231586204();
      v37 = sub_2314A22E8();

      *(v35 + 4) = v37;
      _os_log_impl(&dword_231496000, v33, v34, "%s no bundleIds given", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x231931280](v36, -1, -1);
      MEMORY[0x231931280](v35, -1, -1);
    }

LABEL_21:
    (*(v7 + 8))(v10, v6);
    goto LABEL_22;
  }

  MEMORY[0x28223BE20](v24);
  *&v39[-32] = v10;
  *&v39[-24] = v20;
  *&v39[-16] = v42;
  v25 = sub_2314DCD00(sub_23155BBFC, &v39[-48], v16);

  (*(v7 + 8))(v10, v6);
LABEL_23:
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v25;
}

void sub_231559E7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

void sub_231559EC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

uint64_t sub_231559F04(uint64_t *a1, int a2, int a3, void *__src)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  memcpy(v7, __src, sizeof(v7));
  return sub_2315569E8();
}

uint64_t sub_231559F68(uint64_t a1, void (*a2)(void), uint64_t a3, __int128 *a4)
{
  v4 = *a1;
  v5 = a4[1];
  v7[0] = *a4;
  v7[1] = v5;
  v8[0] = a4[2];
  *(v8 + 9) = *(a4 + 41);
  return sub_2315565A0(v4, *(a1 + 8), a2, a3, v7);
}

uint64_t sub_231559FBC(uint64_t *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = *a1;
  v7 = *a4;
  v8 = a4[1];
  v9 = *(a4 + 4);
  v5 = *(a1 + 8);
  return sub_2315569E8();
}

void sub_23155A008(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

uint64_t sub_23155A04C(uint64_t a1, void (*a2)(void), uint64_t a3, void *__src)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  memcpy(__dst, __src, 0x41uLL);
  return sub_231556674(v6, v7, a2, a3, __dst);
}

uint64_t sub_23155A0B0(uint64_t a1, void (*a2)(void), uint64_t a3, __int128 *a4)
{
  v4 = *a1;
  v5 = a4[1];
  v8[0] = *a4;
  v8[1] = v5;
  v6 = a4[3];
  v8[2] = a4[2];
  v8[3] = v6;
  return sub_2315565A0(v4, *(a1 + 8), a2, a3, v8);
}

uint64_t sub_23155A0FC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = a4[1];
  return sub_231556750(*a1, *(a1 + 8), a2);
}

void sub_23155A1FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

void sub_23155A240(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

void sub_23155A284(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a4;
  v6 = a4[1];
  v7 = a4[2];
  v8 = a4[3];
  v9 = *(a1 + 8);
  sub_231556A88();
}

void sub_23155A2BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

void sub_23155A300(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

uint64_t sub_23155A344(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = *(a4 + 4);
  return sub_231556C10(*a1, *(a1 + 8), a2);
}

void sub_23155A368(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a4;
  v6 = a4[1];
  v7 = a4[2];
  v8 = *(a1 + 8);
  sub_231556A88();
}

void sub_23155A3A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

void sub_23155A400(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

uint64_t sub_23155A444(uint64_t a1, void (*a2)(void), uint64_t a3, void *__src)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  memcpy(__dst, __src, 0x51uLL);
  return sub_2315565A0(v6, v7, a2, a3, __dst);
}

void sub_23155A4A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

void sub_23155A4EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

uint64_t sub_23155A530(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = a4[2];
  v6 = a4[3];
  v7 = *(a4 + 8);
  return sub_231557050(*a1, *(a1 + 8), a2);
}

void sub_23155A558(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

void sub_23155A59C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

void sub_23155A5E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

void sub_23155A624(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

void sub_23155A668(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

void sub_23155A6C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

void sub_23155A70C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

void sub_23155A76C()
{
  OUTLINED_FUNCTION_118();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v8 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v8, qword_280D72248);
  v9 = sub_231585FE4();
  sub_2315865E4();
  OUTLINED_FUNCTION_90();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_54();
    *v0 = 136315138;
    if (*v7 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_4();
    v11 = *v5;
    v12 = *v3;

    OUTLINED_FUNCTION_3_28();
    sub_2314A22E8();
    OUTLINED_FUNCTION_7_18();
    *(v0 + 4) = v11;
    OUTLINED_FUNCTION_51(&dword_231496000, v13, v1, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list");
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_53();
  }

  OUTLINED_FUNCTION_117();
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 105, 7);
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = OUTLINED_FUNCTION_98();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t objectdestroy_62Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  v5 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = OUTLINED_FUNCTION_73();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23155B0E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_28(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_123Tm()
{
  v2 = OUTLINED_FUNCTION_101();
  v4 = v3(v2);
  OUTLINED_FUNCTION_19_9(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = *(v1 + 24);

  v10 = v1 + ((v6 + 32) & ~v6);
  v11 = sub_231585D34();
  OUTLINED_FUNCTION_4_28(v11);
  (*(v12 + 8))(v10);

  v13 = *(v0 + 32);
  v14 = sub_231585A84();
  OUTLINED_FUNCTION_4_28(v14);
  (*(v15 + 8))(v10 + v13);
  v16 = OUTLINED_FUNCTION_65();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t objectdestroy_127Tm(uint64_t a1, void (*a2)(void))
{
  v4 = OUTLINED_FUNCTION_101();
  v6 = (v5(v4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);
  v10 = *(v2 + 24);

  v11 = sub_231585D34();
  OUTLINED_FUNCTION_4_28(v11);
  (*(v12 + 8))(v2 + v8);
  a2(*(v2 + v8 + v6[8] + 8));

  return MEMORY[0x2821FE8E8](v2, v8 + v9, v7 | 7);
}

uint64_t objectdestroy_18Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  a1(*(v1 + 40));
  v3 = OUTLINED_FUNCTION_1_34();

  return MEMORY[0x2821FE8E8](v3, v4, 7);
}

uint64_t objectdestroy_114Tm()
{
  v1 = OUTLINED_FUNCTION_101();
  v3 = *(v2(v1) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 24);

  v8 = sub_231585D34();
  OUTLINED_FUNCTION_4_28(v8);
  (*(v9 + 8))(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_76Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_79Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = OUTLINED_FUNCTION_72();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t objectdestroy_197Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t objectdestroy_42Tm()
{
  v2 = OUTLINED_FUNCTION_101();
  v4 = v3(v2);
  OUTLINED_FUNCTION_19_9(v4);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v9 = *(v8 + 64);
  v10 = *(v1 + 24);

  v11 = *(v1 + v7);

  v12 = *(v0 + 28);
  v13 = sub_231585D34();
  OUTLINED_FUNCTION_4_28(v13);
  (*(v14 + 8))(v1 + v7 + v12);

  return MEMORY[0x2821FE8E8](v1, v7 + v9, v6 | 7);
}

uint64_t sub_23155B9E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_28(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23155BA98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE20, qword_23158DE30);
  OUTLINED_FUNCTION_19(v2);
  v4 = *(v3 + 80);

  return sub_2315579D8(a1);
}

unint64_t sub_23155BB10()
{
  result = qword_280D6D010;
  if (!qword_280D6D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6D010);
  }

  return result;
}

void OUTLINED_FUNCTION_31_2()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x231931280);
}

void OUTLINED_FUNCTION_44_0()
{

  JUMPOUT(0x231931280);
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_57()
{

  return sub_231585D14();
}

void *OUTLINED_FUNCTION_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, v9, 0x49uLL);
}

void OUTLINED_FUNCTION_64()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_66(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v6 = *v3;
  v5 = v3[1];
  v2[4] = *v3;
  v2[5] = v5;
  v2[6] = v6;
  v2[7] = v5;

  return swift_bridgeObjectRetain_n();
}

void OUTLINED_FUNCTION_70()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x231931280);
}

uint64_t OUTLINED_FUNCTION_76()
{
  *(v1 - 128) = v0;
  *(v1 - 120) = 1;
  result = v1 - 128;
  v3 = *(v1 - 152);
  v4 = *(v1 - 168);
  return result;
}

void OUTLINED_FUNCTION_82()
{
  *(v1 - 72) = *v0;

  sub_23157562C();
}

BOOL OUTLINED_FUNCTION_83(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *OUTLINED_FUNCTION_86(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, v9, 0x49uLL);
}

void OUTLINED_FUNCTION_89()
{

  sub_23152D598();
}

double OUTLINED_FUNCTION_97()
{
  result = v1;
  *v0 = v1;
  *(v0 + 8) = 0;
  return result;
}

void OUTLINED_FUNCTION_99()
{

  sub_23155597C();
}

void OUTLINED_FUNCTION_100()
{

  sub_23155597C();
}

__n128 OUTLINED_FUNCTION_104(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  result = *a4;
  v6 = *(a4 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_106(uint64_t result)
{
  *(result + 16) = v1;
  v5 = result + 16 * v3;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2 | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_107()
{
  v2 = *v0;
  v3 = v0[1];
}

uint64_t OUTLINED_FUNCTION_108()
{

  return sub_2314A1DFC(1, 2);
}

uint64_t OUTLINED_FUNCTION_109(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  v2[4] = v6;
  v2[5] = v5;
  v2[6] = v6;
  v2[7] = v5;

  return swift_bridgeObjectRetain_n();
}

void OUTLINED_FUNCTION_112()
{

  JUMPOUT(0x23192FF80);
}

uint64_t OUTLINED_FUNCTION_113()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return sub_2314A5EEC(v2, v3);
}

uint64_t OUTLINED_FUNCTION_114()
{
}

uint64_t OUTLINED_FUNCTION_121()
{

  return sub_2315860F4();
}

__n128 OUTLINED_FUNCTION_126(uint64_t a1)
{
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  result = *v1;
  v5 = *(v1 + 16);
  *(a1 + 32) = *v1;
  *(a1 + 48) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_139(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

void OUTLINED_FUNCTION_142(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_143()
{

  sub_23152D598();
}

void OUTLINED_FUNCTION_144(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_145(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void *OUTLINED_FUNCTION_146(void *a1)
{
  v2 = a1[4];
  v3 = a1[3];

  return __swift_project_boxed_opaque_existential_1(a1, v3);
}

uint64_t OUTLINED_FUNCTION_147()
{

  return sub_231586A54();
}

uint64_t OUTLINED_FUNCTION_148()
{

  return sub_2314A5168(v1, v0);
}

uint64_t OUTLINED_FUNCTION_150()
{

  return sub_2314A5168(v1, v0);
}

void OUTLINED_FUNCTION_151(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];

  JUMPOUT(0x23192FF80);
}

uint64_t OUTLINED_FUNCTION_152()
{

  return sub_231586A54();
}

uint64_t OUTLINED_FUNCTION_153(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_231553FC8(a1, v3, a3, v4);
}

uint64_t OUTLINED_FUNCTION_154()
{

  return sub_231585CF4();
}

uint64_t sub_23155C480()
{
  OUTLINED_FUNCTION_37_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B2F0, &qword_231589310);
  OUTLINED_FUNCTION_19(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_35_1();
  v6 = type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(v5);
  v7 = OUTLINED_FUNCTION_8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = OUTLINED_FUNCTION_34_3();
  if (__swift_getEnumTagSinglePayload(v10, v11, v12) == 1)
  {
    v13 = OUTLINED_FUNCTION_13_7();
    sub_2314A2910(v13, v14, &qword_231589310);
    v15 = OUTLINED_FUNCTION_32_2();
    sub_231561B9C(v15, v16, v17, v18, v19, v20, v21);

    v22 = OUTLINED_FUNCTION_30_2();
    return sub_2314A2910(v22, v23, v24);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_13_7();
    sub_2314ABAD8(v26, v27, v28);
    v29 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_13_10();
    sub_231575FB4();

    *v0 = v30;
  }

  return result;
}

uint64_t sub_23155C5E8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  OUTLINED_FUNCTION_19(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_35_1();
  v5 = sub_231585D34();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = OUTLINED_FUNCTION_34_3();
  if (__swift_getEnumTagSinglePayload(v9, v10, v5) == 1)
  {
    v11 = OUTLINED_FUNCTION_13_7();
    sub_2314A2910(v11, v12, &unk_23158A5C0);
    v13 = OUTLINED_FUNCTION_32_2();
    sub_231561A5C(v13, v14, v15, v16, v17, v18);

    v19 = OUTLINED_FUNCTION_30_2();
    return sub_2314A2910(v19, v20, v21);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_84();
    v24(v23);
    v25 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v26 = OUTLINED_FUNCTION_13_10();
    sub_2315761D0(v26, v27, v28, v29);

    *v0 = v30;
  }

  return result;
}

uint64_t sub_23155C75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE60, &qword_23158E058);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v16) == 1)
  {
    sub_2314A2910(a1, &qword_27DD5BE60, &qword_23158E058);
    sub_231561B9C(a2, a3, &qword_27DD5BE68, &qword_23158E060, type metadata accessor for SignalRepository.PrewarmStatus.Record, type metadata accessor for SignalRepository.PrewarmStatus.Record, v11);

    return sub_2314A2910(v11, &qword_27DD5BE60, &qword_23158E058);
  }

  else
  {
    sub_2314ABAD8(a1, v15, type metadata accessor for SignalRepository.PrewarmStatus.Record);
    v18 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_2315762D8();

    *v4 = v20;
  }

  return result;
}

uint64_t sub_23155C934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_231571BB0(*(a1 + 16), 0);
  v4 = sub_231572028(&v6, v3 + 32, v1, a1);

  sub_2314A4B70();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v6 = v3;
  sub_231561E00(&v6);
  return v6;
}

void sub_23155CA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_43_0();
  a25 = v26;
  a26 = v28;
  v29 = *(v27 + 16);
  if (!v29)
  {
    goto LABEL_4;
  }

  v30 = sub_231571BB0(*(v27 + 16), 0);
  sub_231572A38();
  v32 = v31;

  OUTLINED_FUNCTION_30_2();
  sub_2314A4B70();
  if (v32 != v29)
  {
    __break(1u);
LABEL_4:
    v30 = MEMORY[0x277D84F90];
  }

  a10 = v30;
  sub_231561E00(&a10);
  OUTLINED_FUNCTION_44();
}

void sub_23155CADC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v27[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_231586824();
    _s4NodeCMa();
    sub_2314AA79C(&qword_27DD5BB80, _s4NodeCMa);
    OUTLINED_FUNCTION_3_10();
    sub_231586554();
    v2 = v27[2];
    v3 = v27[3];
    v4 = v27[4];
    v5 = v27[5];
    v6 = v27[6];
  }

  else
  {
    v5 = 0;
    v7 = *(a1 + 32);
    OUTLINED_FUNCTION_17_7();
    v3 = v2 + 56;
    v4 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(v8 << v10);
    }

    else
    {
      v11 = v8;
    }

    v6 = v11 & *(v2 + 56);
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v5;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    OUTLINED_FUNCTION_9_0();
    v16 = v15 & v14;
    v18 = *(*(v2 + 48) + ((v13 << 9) | (8 * v17)));

    if (!v18)
    {
LABEL_18:
      sub_2314A4B70();
      return;
    }

    while (1)
    {
      sub_2314AAB1C(v27, v18, v19, v20, v21, v22, v23, v24, v26);

      v5 = v13;
      v6 = v16;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v25 = sub_231586894();
      if (v25)
      {
        v26 = v25;
        _s4NodeCMa();
        swift_dynamicCast();
        v18 = v27[0];
        v13 = v5;
        v16 = v6;
        if (v27[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    ++v12;
    if (*(v3 + 8 * v13))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_23155CCC4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2314A00A4();
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return a2;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23155CF34()
{
  v10 = sub_231586674();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_231586654();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_231586064();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2314AA3E8();
  sub_231586044();
  v11 = MEMORY[0x277D84F90];
  sub_2314AA79C(&qword_280D6FE90, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B228, &qword_23158B8E0);
  sub_2314AA8B4(&qword_280D6FEA8, &qword_27DD5B228, &qword_23158B8E0);
  sub_2315867C4();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_2315866A4();
  qword_280D6DCA8 = result;
  return result;
}

uint64_t sub_23155D198()
{
  v10 = sub_231586674();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_231586654();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_231586064();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2314AA3E8();
  sub_231586044();
  v11 = MEMORY[0x277D84F90];
  sub_2314AA79C(&qword_280D6FE90, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B228, &qword_23158B8E0);
  sub_2314AA8B4(&qword_280D6FEA8, &qword_27DD5B228, &qword_23158B8E0);
  sub_2315867C4();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_2315866A4();
  qword_280D6DCE0 = result;
  return result;
}

id static SignalRepository.mainPrewarmingQueue.getter()
{
  if (qword_280D6DCD8 != -1)
  {
    OUTLINED_FUNCTION_28_2();
  }

  v1 = qword_280D6DCE0;

  return v1;
}

uint64_t sub_23155D448()
{
  v0 = sub_231586674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_231586654();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_231586064();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_2314AA3E8();
  sub_231586044();
  sub_231586644();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  result = sub_2315866A4();
  qword_280D72188 = result;
  return result;
}

uint64_t sub_23155D5F8()
{
  v10 = sub_231586674();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_231586654();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_231586064();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2314AA3E8();
  sub_231586044();
  v11 = MEMORY[0x277D84F90];
  sub_2314AA79C(&qword_280D6FE90, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B228, &qword_23158B8E0);
  sub_2314AA8B4(&qword_280D6FEA8, &qword_27DD5B228, &qword_23158B8E0);
  sub_2315867C4();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_2315866A4();
  qword_280D72180 = result;
  return result;
}

uint64_t sub_23155D85C()
{
  type metadata accessor for SignalRepository(0);
  result = sub_2314A2E60();
  qword_280D6DC98 = result;
  return result;
}

uint64_t static SignalRepository.shared.getter()
{
  if (qword_280D6DC90 != -1)
  {
    swift_once();
  }
}

void sub_23155D8F4()
{
  OUTLINED_FUNCTION_17_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v1 = OUTLINED_FUNCTION_19(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_11_0();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_35();
  v70 = v8;
  OUTLINED_FUNCTION_29_0();
  v72 = sub_231585884();
  v9 = OUTLINED_FUNCTION_4_1(v72);
  v65 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_0();
  v66 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  if (qword_280D70420 != -1)
  {
LABEL_25:
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v18 = sub_231585FF4();
  v64 = __swift_project_value_buffer(v18, qword_280D72248);
  v19 = sub_231585FE4();
  v20 = sub_2315865D4();
  if (OUTLINED_FUNCTION_11_5(v20))
  {
    v21 = OUTLINED_FUNCTION_5_3();
    *v21 = 0;
    _os_log_impl(&dword_231496000, v19, v20, "SignalRepository: hourlyPrewarm triggered", v21, 2u);
    OUTLINED_FUNCTION_10();
  }

  v22 = sub_23155CDC8();
  v23 = 0;
  v25 = v22 + 56;
  v24 = *(v22 + 56);
  v68 = v22;
  OUTLINED_FUNCTION_44_1(v22);
  v28 = v27 & v26;
  v30 = (v29 + 63) >> 6;
  v60 = v65 + 16;
  v63 = (v65 + 32);
  v71 = (v65 + 8);
  *&v31 = 136315138;
  v58 = v31;
  v62 = xmmword_231588340;
  v67 = v6;
  v61 = v17;
  while (v28)
  {
LABEL_10:
    v33 = (*(v68 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v28)))));
    v34 = *v33;
    v35 = v33[1];

    v36 = v73;
    os_unfair_lock_lock(v73 + 30);
    v37 = *&v36[32]._os_unfair_lock_opaque;
    v38 = *(v37 + 16);
    v69 = v34;
    if (v38 && (v39 = sub_23149C888(v34, v35), (v40 & 1) != 0))
    {
      v41 = v72;
      (*(v65 + 16))(v70, *(v37 + 56) + *(v65 + 72) * v39, v72);
      v42 = 0;
    }

    else
    {
      v42 = 1;
      v41 = v72;
    }

    v43 = v70;
    __swift_storeEnumTagSinglePayload(v70, v42, 1, v41);
    sub_2314A0710(v43, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v41) == 1)
    {
      sub_231585794();
      sub_2314A2910(v6, &qword_27DD5BF60, &qword_231587FD0);
    }

    else
    {
      (*v63)(v17, v6, v41);
    }

    v44 = v17;
    v28 &= v28 - 1;
    v45 = v73;
    os_unfair_lock_unlock(v73 + 30);
    v46 = *&v45[8]._os_unfair_lock_opaque;
    v47 = *&v45[10]._os_unfair_lock_opaque;
    v48 = v66;
    v46();
    sub_2315857A4();
    v50 = v49;
    v51 = *v71;
    (*v71)(v48, v41);
    sub_2315864D4();
    if (v50 <= v52)
    {

      v53 = sub_231585FE4();
      v54 = sub_2315865D4();

      if (os_log_type_enabled(v53, v54))
      {
        OUTLINED_FUNCTION_22();
        v59 = v51;
        v55 = OUTLINED_FUNCTION_42_1();
        v74 = v55;
        *v51 = v58;
        v56 = v69;
        *(v51 + 4) = sub_2314A22E8();
        _os_log_impl(&dword_231496000, v53, v54, "SignalRepository: prewarming signals based on biome event update on %s within past one hour", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        OUTLINED_FUNCTION_26_4();
        v51 = v59;
        OUTLINED_FUNCTION_10();
      }

      else
      {

        v56 = v69;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE28, &qword_23158DE48);
      inited = swift_initStackObject();
      *(inited + 16) = v62;
      *(inited + 32) = v56;
      *(inited + 40) = v35;
      *(inited + 48) = 4;
      sub_23149CA8C(inited);
      sub_23149B7B4();

      v17 = v61;
      (v51)(v61, v72);
      v6 = v67;
    }

    else
    {
      (v51)(v44, v41);

      v17 = v44;
      v6 = v67;
    }
  }

  while (1)
  {
    v32 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v32 >= v30)
    {
      break;
    }

    v28 = *(v25 + 8 * v32);
    ++v23;
    if (v28)
    {
      v23 = v32;
      goto LABEL_10;
    }
  }

  sub_23149CA8C(&unk_284612AB8);
  sub_23149B7B4();

  OUTLINED_FUNCTION_16_3();
}

void sub_23155DE48()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_231585884();
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_231562DDC(v3, &v37);
  if (!v38)
  {
    sub_2314A2910(&v37, &qword_27DD5BE90, &qword_23158E090);
    goto LABEL_12;
  }

  sub_23149FD3C(&v37, v40);
  if (!*(v0 + 24))
  {
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v40);
    goto LABEL_12;
  }

  v13 = v41;
  v14 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v15 = v41;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_11_2(v15);
  (*(v16 + 16))();

  sub_2315344E8(&v37, &v35);
  __swift_destroy_boxed_opaque_existential_1(&v37);
  v33 = v35;
  v34 = v36;
  (*(v14 + 16))(&v37, v5, &v33, v13, v14);
  sub_2314D70F4(v33, v34);
  v17 = BYTE8(v37);
  if (BYTE8(v37) == 255)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v23 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v23, qword_280D72248);
    sub_2314A5780(v40, &v37);
    v24 = sub_231585FE4();
    v25 = sub_2315865D4();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_22();
      v35 = OUTLINED_FUNCTION_42_1();
      *v6 = 136315138;
      v26 = v39;
      __swift_project_boxed_opaque_existential_1(&v37, v38);
      v27 = *(*(v26 + 8) + 16);
      v28 = OUTLINED_FUNCTION_54_0();
      v30 = v29(v28);
      __swift_destroy_boxed_opaque_existential_1(&v37);
      sub_2314A22E8();
      OUTLINED_FUNCTION_54_0();

      *(v6 + 4) = v30;
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_10();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v37);
    }

    goto LABEL_11;
  }

  v18 = v37;
  v19 = v41;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_11_2(v19);
  v21 = (*(v20 + 16))();
  v35 = v18;
  v36 = v17;
  v22 = *(v1 + 40);
  (*(v1 + 32))(v21);
  sub_231536060(&v37, &v35, v12);
  v31 = OUTLINED_FUNCTION_77();
  v32(v31);

  sub_2314D70F4(v18, v17);
  __swift_destroy_boxed_opaque_existential_1(&v37);
  __swift_destroy_boxed_opaque_existential_1(v40);
LABEL_12:
  OUTLINED_FUNCTION_3_6();
}

void sub_23155E3E4()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v50 = v2;
  v51 = v3;
  if (qword_280D70420 != -1)
  {
LABEL_19:
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v4 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v4, qword_280D72248);

  v48 = v0;
  v5 = sub_231585FE4();
  v6 = sub_2315865D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_22();
    v8 = OUTLINED_FUNCTION_47();
    v56[0] = v8;
    *v7 = 136315138;
    v9 = sub_23149B2D0(v8);
    v10 = sub_23155CDC8();
    sub_23155CCC4(v10, v9);
    sub_231586524();

    v11 = sub_2314A22E8();

    *(v7 + 4) = v11;
    _os_log_impl(&dword_231496000, v5, v6, "SignalRepository: will subscribe to %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v0 = v1;
  v13 = sub_23149B2D0(v12);
  v49 = v1;
  v14 = sub_23155CDC8();
  v15 = sub_23155CCC4(v14, v13);
  v1 = 0;
  v16 = 0;
  v18 = v15 + 56;
  v17 = *(v15 + 56);
  v19 = OUTLINED_FUNCTION_44_1(v15);
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v45 = v51 + 8;
  v46 = (v50 - 8);
  v44 = v51 + 16;
  *&v25 = 136315138;
  v43 = v25;
  v47 = v19;
  while (v22)
  {
LABEL_10:
    v27 = *(v15 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v22))));
    v28 = *(v27 + 8);
    v22 &= v22 - 1;
    v55 = *v27;
    v56[0] = v55;
    v56[1] = v28;
    MEMORY[0x28223BE20](v19);
    v0 = (&v43 - 2);
    *(&v43 - 2) = v56;

    if (sub_2314E62A8(sub_2314BB954, (&v43 - 2), &unk_284612970))
    {
    }

    else
    {

      v29 = sub_231585FE4();
      v30 = sub_2315865D4();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_22();
        v32 = OUTLINED_FUNCTION_47();
        v56[0] = v32;
        *v31 = v43;
        *(v31 + 4) = sub_2314A22E8();
        _os_log_impl(&dword_231496000, v29, v30, "SignalRepository: subscribing to %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        OUTLINED_FUNCTION_5_8();
        OUTLINED_FUNCTION_10();
      }

      v53 = &v43;
      v54 = v16;
      v52 = *v46;
      v33 = *(v52 + 64);
      OUTLINED_FUNCTION_5_1();
      MEMORY[0x28223BE20](v34);
      v36 = &v43 - v35;
      if (qword_280D6DCB8 != -1)
      {
        swift_once();
      }

      v37 = qword_280D72180;
      v38 = v51;
      v39 = v28;
      v40 = v50;
      (*(v51 + 8))(v55, v39, qword_280D72180, v50, v51);
      v55 = *(v38 + 16);
      v41 = v49;

      v42 = v37;
      v0 = v36;
      v55(sub_23149A714, v41, v40, v38);

      v19 = (*(v52 + 8))(v36, v40);
      v16 = v54;
      v15 = v47;
    }
  }

  while (1)
  {
    v26 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v26 >= v24)
    {
      break;
    }

    v22 = *(v18 + 8 * v26);
    ++v1;
    if (v22)
    {
      v1 = v26;
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_3_6();
}

uint64_t sub_23155E880@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v24 - v13;
  v15 = *a1;
  if (*(v15 + 16) && (v16 = sub_23149C888(a2, a3), (v17 & 1) != 0))
  {
    v18 = v16;
    v19 = *(v15 + 56);
    v20 = sub_231585884();
    (*(*(v20 - 8) + 16))(v14, v19 + *(*(v20 - 8) + 72) * v18, v20);
    v21 = v14;
    v22 = 0;
  }

  else
  {
    v20 = sub_231585884();
    v21 = v14;
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v21, v22, 1, v20);
  sub_2314A0710(v14, v12);
  sub_231585884();
  if (__swift_getEnumTagSinglePayload(v12, 1, v20) != 1)
  {
    return (*(*(v20 - 8) + 32))(a4, v12, v20);
  }

  sub_231585794();
  return sub_2314A2910(v12, &qword_27DD5BF60, &qword_231587FD0);
}

uint64_t sub_23155EA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE28, &qword_23158DE48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = 0;

  sub_23149CA8C(inited);
  sub_23149B7B4();
}

void sub_23155EAEC()
{
  v1 = v0;
  if (qword_280D6E340 != -1)
  {
    swift_once();
  }

  v2 = *(qword_280D721C8 + 56);
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v3 = sub_231585FF4();
  __swift_project_value_buffer(v3, qword_280D72248);
  v4 = sub_231585FE4();
  v5 = sub_2315865D4();
  if (OUTLINED_FUNCTION_11_5(v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2 != 2;
    _os_log_impl(&dword_231496000, v4, v5, "SignalRepository: #AppInstallListener starting check for meDevice, currently=%{BOOL}d", v6, 8u);
    OUTLINED_FUNCTION_5_8();
  }

  if (qword_280D6DCA0 != -1)
  {
    swift_once();
  }

  v7 = qword_280D6DCA8;
  v8 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v9 = sub_231560678(0xD000000000000012, 0x80000002315931E0, v7);
  v10 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v11 = [v10 Install];
  swift_unknownObjectRelease();
  v12 = [v11 DSLPublisher];

  v13 = sub_231585FE4();
  v14 = sub_2315865D4();
  if (OUTLINED_FUNCTION_11_5(v14))
  {
    v15 = OUTLINED_FUNCTION_5_3();
    *v15 = 0;
    OUTLINED_FUNCTION_51_0();
    _os_log_impl(v16, v17, v18, v19, v15, 2u);
    OUTLINED_FUNCTION_10();
  }

  v20 = [v12 subscribeOn_];
  v28 = nullsub_1;
  v29 = 0;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2314B901C;
  v27 = &block_descriptor_18;
  v21 = _Block_copy(&v24);
  v28 = sub_231562B30;
  v29 = v1;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_23149A630;
  v27 = &block_descriptor_3;
  v22 = _Block_copy(&v24);

  v23 = [v20 sinkWithCompletion:v21 receiveInput:v22];
  _Block_release(v22);
  _Block_release(v21);
}

void sub_23155EE84(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v11 = sub_231585FF4();
    __swift_project_value_buffer(v11, qword_280D72248);
    v18 = sub_231585FE4();
    v12 = sub_2315865E4();
    if (os_log_type_enabled(v18, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_231496000, v18, v12, "SignalRepository: #AppInstallListener event is not BMAppInstall", v13, 2u);
      MEMORY[0x231931280](v13, -1, -1);
    }

    goto LABEL_9;
  }

  v4 = [v3 eventBody];
  if (v4)
  {
    v18 = v4;
    v5 = sub_2314D752C(v4);
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      v9 = [v18 isInstall];
      type metadata accessor for AudioAppSignalsSyncer();
      v10 = AudioAppSignalsSyncer.__allocating_init()();
      sub_231562E4C(v10, v7, v8, v9 ^ 1, a2);

      swift_unknownObjectRelease();
LABEL_9:

      return;
    }
  }

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v14 = sub_231585FF4();
  __swift_project_value_buffer(v14, qword_280D72248);
  v15 = sub_231585FE4();
  v16 = sub_2315865E4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_231496000, v15, v16, "SignalRepository: #AppInstallListener event has no body/bundleID", v17, 2u);
    MEMORY[0x231931280](v17, -1, -1);
  }

  swift_unknownObjectRelease();
}

void sub_23155F118(char a1)
{
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v2 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v2, qword_280D72248);
  oslog = sub_231585FE4();
  v3 = sub_2315865D4();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_231496000, oslog, v3, "SignalRepository: #AppInstallListener AudioAppSignalsSyncer success=%{BOOL}d", v4, 8u);
    OUTLINED_FUNCTION_26_4();
  }
}

uint64_t sub_23155F200(uint64_t a1)
{
  v2 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDE0, &qword_23158DAA0);
  v3 = sub_2315860F4();
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v47 = v2 + 32;
    while (v5 < *(v2 + 16))
    {
      v49 = *(v47 + 16 * v5);
      (*(*(v47 + 16 * v5 + 8) + 120))();
      v6 = sub_231586224();
      v8 = v7;

      swift_isUniquelyReferenced_nonNull_native();
      v9 = sub_23149C888(v6, v8);
      if (__OFADD__(v3[2], (v10 & 1) == 0))
      {
        goto LABEL_38;
      }

      v11 = v9;
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE38, &qword_23158DE60);
      if (sub_231586A64())
      {
        v13 = sub_23149C888(v6, v8);
        if ((v12 & 1) != (v14 & 1))
        {
          goto LABEL_40;
        }

        v11 = v13;
      }

      if (v12)
      {

        *(v3[7] + 16 * v11) = v49;
      }

      else
      {
        v3[(v11 >> 6) + 8] |= 1 << v11;
        v15 = (v3[6] + 16 * v11);
        *v15 = v6;
        v15[1] = v8;
        *(v3[7] + 16 * v11) = v49;
        v16 = v3[2];
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          goto LABEL_39;
        }

        v3[2] = v18;
      }

      if (v4 == ++v5)
      {
        goto LABEL_13;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = sub_231586C84();
    __break(1u);
  }

  else
  {
LABEL_13:
    v19 = 0;
    v20 = *(a1 + 16);
    v48 = MEMORY[0x277D84F90];
    v21 = a1 + 40;
    v46 = a1 + 40;
LABEL_14:
    v22 = (v21 + 16 * v19);
    for (i = v19; v20 != i; ++i)
    {
      if (i >= v20)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v19 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_36;
      }

      v25 = *(v22 - 1);
      v24 = *v22;
      v26 = sub_231586224();
      v28 = v27;
      if (v3[2])
      {
        v29 = v26;

        v30 = sub_23149C888(v29, v28);
        if (v31)
        {
          v44 = *(v3[7] + 16 * v30);

          v36 = v48;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v40 = *(v48 + 16);
            OUTLINED_FUNCTION_19_2();
            sub_2314F18AC();
            v36 = v41;
          }

          v21 = v46;
          v39 = *(v36 + 16);
          v38 = *(v36 + 24);
          if (v39 >= v38 >> 1)
          {
            OUTLINED_FUNCTION_18(v38);
            sub_2314F18AC();
            v36 = v42;
          }

          *(v36 + 16) = v39 + 1;
          v48 = v36;
          *(v36 + 16 * v39 + 32) = v44;
          goto LABEL_14;
        }
      }

      else
      {
      }

      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_3();
        swift_once();
      }

      v32 = sub_231585FF4();
      OUTLINED_FUNCTION_1_4(v32, qword_280D72248);

      v33 = sub_231585FE4();
      v34 = sub_2315865E4();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_22();
        v50 = OUTLINED_FUNCTION_47();
        *v35 = 136315138;
        *(v35 + 4) = sub_2314A22E8();
        _os_log_impl(&dword_231496000, v33, v34, "SignalRepository: No match to name %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_31_3();
      }

      v22 += 2;
    }

    sub_2314A8208();
  }

  return result;
}

void sub_23155F64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v9 = sub_231585884();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v17 = sub_231585FF4();
  __swift_project_value_buffer(v17, qword_280D72248);
  (*(v10 + 16))(v16, a5, v9);

  v18 = sub_231585FE4();
  v19 = sub_2315865D4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32 = a6;
    v21 = v20;
    v31 = swift_slowAlloc();
    v33 = v31;
    *v21 = 136315394;
    sub_231586D94();
    v22 = sub_2314A22E8();

    *(v21 + 4) = v22;
    *(v21 + 12) = 2048;
    v24 = *(a4 + 40);
    (*(a4 + 32))(v23);
    sub_2315857A4();
    v26 = v25;
    v27 = *(v10 + 8);
    v27(v14, v9);
    v27(v16, v9);
    *(v21 + 14) = v26;
    _os_log_impl(&dword_231496000, v18, v19, "SignalRepository: willPrewarm before dispatchGroup.leave() prewarmableSignalType: %s in %f seconds", v21, 0x16u);
    v28 = v31;
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x231931280](v28, -1, -1);
    v29 = v21;
    a6 = v32;
    MEMORY[0x231931280](v29, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v16, v9);
  }

  dispatch_group_leave(a6);
}

void sub_23155F90C()
{
  OUTLINED_FUNCTION_17_3();
  v31 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  v1 = OUTLINED_FUNCTION_4_1(v31);
  v29 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_12();
  v30 = v5;
  os_unfair_lock_lock((v0 + 16));
  v6 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));

  v8 = sub_23155C934(v7);

  v9 = *(v8 + 16);
  if (v9)
  {
    v34 = MEMORY[0x277D84F90];
    sub_23152D598();
    v10 = 0;
    v11 = (v8 + 40);
    v32 = v8;
    while (v10 < *(v8 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v33 = *v11;
      swift_bridgeObjectRetain_n();
      MEMORY[0x23192FF80](64, 0xE100000000000000);
      if (*(v6 + 16))
      {
        v14 = sub_23149C888(v13, v12);
        if (v15)
        {
          sub_2314ABA74(*(v6 + 56) + *(v29 + 72) * v14, v30);
          v16 = v30 + *(v31 + 20);
          sub_231585784();
          OUTLINED_FUNCTION_88();
          if (!(v19 ^ v20 | v18))
          {
            goto LABEL_19;
          }

          if (v17 <= -9.22337204e18)
          {
            goto LABEL_20;
          }

          if (v17 >= 9.22337204e18)
          {
            goto LABEL_21;
          }

          sub_231586C24();
          if (*(v30 + *(v31 + 24)))
          {
            v21 = 88;
          }

          else
          {
            v21 = 120;
          }

          MEMORY[0x23192FF80](v21, 0xE100000000000000);
          sub_2314ABD30(v30);
        }
      }

      v22 = OUTLINED_FUNCTION_24_3();
      MEMORY[0x23192FF80](v22);

      v24 = *(v34 + 16);
      v23 = *(v34 + 24);
      if (v24 >= v23 >> 1)
      {
        OUTLINED_FUNCTION_18(v23);
        sub_23152D598();
      }

      ++v10;
      *(v34 + 16) = v24 + 1;
      v25 = v34 + 16 * v24;
      *(v25 + 32) = v13;
      *(v25 + 40) = v33;
      v11 += 2;
      v8 = v32;
      if (v9 == v10)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_17:

    v26 = OUTLINED_FUNCTION_3_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    OUTLINED_FUNCTION_2_34();
    sub_2314AA8B4(v28, &qword_27DD5B0E8, &unk_231589320);
    OUTLINED_FUNCTION_52_0();
    sub_231586154();

    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_16_3();
  }
}

uint64_t sub_23155FC34()
{
  v1 = v0;
  v2 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  v3 = v0 + *(v2 + 20);
  sub_23149C774();
  v6 = sub_231586C24();
  if (*(v1 + *(v2 + 24)))
  {
    v4 = 88;
  }

  else
  {
    v4 = 120;
  }

  MEMORY[0x23192FF80](v4, 0xE100000000000000);

  return v6;
}

void sub_23155FCCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE60, &qword_23158E058);
  OUTLINED_FUNCTION_19(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v13);
  v15 = (v25 - v14);
  v25[0] = a1;
  v25[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDE0, &qword_23158DAA0);
  v16 = sub_231586204();
  v18 = v17;
  os_unfair_lock_lock(v5 + 4);
  v19 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  v20 = *(v19 + 20);
  v21 = sub_231585884();
  OUTLINED_FUNCTION_8(v21);
  (*(v22 + 16))(v15 + v20, a3);
  *v15 = v16;
  v15[1] = v18;
  *(v15 + *(v19 + 24)) = a4;
  v23 = OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v23, v24, 1, v19);

  sub_23155C75C(v15, v16, v18);
  os_unfair_lock_unlock(v5 + 4);
}

void sub_23155FE18()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v3 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v45 = v5;
  v46 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_12();
  v44 = v8;
  os_unfair_lock_lock((v0 + 16));
  v9 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  v10 = *(v2 + 16);
  if (v10)
  {
    v48 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_76_0();
    sub_23152D598();
    v11 = v48;
    v12 = (v2 + 32);
    do
    {
      v47 = *v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDE0, &qword_23158DAA0);
      v13 = sub_231586204();
      v15 = v14;
      v17 = *(v48 + 16);
      v16 = *(v48 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_18(v16);
        sub_23152D598();
      }

      *(v48 + 16) = v18;
      v19 = v48 + 16 * v17;
      *(v19 + 32) = v13;
      *(v19 + 40) = v15;
      ++v12;
      --v10;
    }

    while (v10);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    v18 = *(MEMORY[0x277D84F90] + 16);
    if (!v18)
    {
      goto LABEL_21;
    }
  }

  v20 = (v11 + 40);
  v21 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  do
  {
    v23 = *(v20 - 1);
    v24 = *v20;
    v25 = *(v9 + 16);

    if (v25 && (v26 = OUTLINED_FUNCTION_24_3(), v28 = sub_23149C888(v26, v27), (v29 & 1) != 0) && (sub_2314ABA74(*(v9 + 56) + *(v45 + 72) * v28, v44), v30 = *(v44 + *(v46 + 24)), sub_2314ABD30(v44), v30 == 1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = *(v21 + 16);
        OUTLINED_FUNCTION_19_2();
        sub_23149D588();
        v21 = v40;
      }

      v32 = *(v21 + 16);
      v31 = *(v21 + 24);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        OUTLINED_FUNCTION_18(v31);
        OUTLINED_FUNCTION_83_0();
        sub_23149D588();
        v21 = v34;
      }

      else
      {
        v34 = v21;
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = *(v22 + 16);
        OUTLINED_FUNCTION_19_2();
        sub_23149D588();
        v22 = v38;
      }

      v32 = *(v22 + 16);
      v35 = *(v22 + 24);
      v33 = v32 + 1;
      if (v32 >= v35 >> 1)
      {
        OUTLINED_FUNCTION_18(v35);
        OUTLINED_FUNCTION_83_0();
        sub_23149D588();
        v22 = v34;
      }

      else
      {
        v34 = v22;
      }
    }

    *(v34 + 16) = v33;
    v36 = v34 + 16 * v32;
    *(v36 + 32) = v23;
    *(v36 + 40) = v24;
    v20 += 2;
    --v18;
  }

  while (v18);
LABEL_21:

  v41 = OUTLINED_FUNCTION_3_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
  OUTLINED_FUNCTION_2_34();
  sub_2314AA8B4(v43, &qword_27DD5B0E8, &unk_231589320);
  OUTLINED_FUNCTION_52_0();
  sub_231586154();

  OUTLINED_FUNCTION_52_0();
  sub_231586154();

  OUTLINED_FUNCTION_3_6();
}

uint64_t sub_231560174()
{
  v0 = sub_231585884();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  __swift_allocate_value_buffer(v5, qword_280D72190);
  v6 = __swift_project_value_buffer(v5, qword_280D72190);
  sub_231585794();
  *v6 = 0x656E696665646E75;
  *(v6 + 1) = 0xE900000000000064;
  result = (*(v1 + 32))(&v6[*(v5 + 20)], v4, v0);
  v6[*(v5 + 24)] = 0;
  return result;
}

uint64_t sub_231560294()
{
  result = sub_2314A1DFC(30, 1);
  qword_280D721A8 = result;
  unk_280D721B0 = v1;
  qword_280D721B8 = v2;
  return result;
}

uint64_t sub_2315602C8()
{
  sub_2314A2910(v0 + 24, &qword_27DD5BE70, &unk_23158E068);

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

void sub_231560334()
{
  if (__OFADD__(*(v0 + 40), *(v0 + 48)))
  {
    __break(1u);
  }
}

uint64_t sub_23156036C()
{
  sub_231586954();

  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x23192FF80](v1, v2);

  v3 = OUTLINED_FUNCTION_52_0();
  MEMORY[0x23192FF80](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A8, &unk_23158E4B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231588340;
  sub_231560334();
  v5 = MEMORY[0x277D83A80];
  *(v4 + 56) = MEMORY[0x277D839F8];
  *(v4 + 64) = v5;
  *(v4 + 32) = v6;
  v7 = sub_2315861D4();
  MEMORY[0x23192FF80](v7);

  MEMORY[0x23192FF80](0x756F656D69742025, 0xEC000000202C7374);
  v10 = v0[7];
  v8 = sub_231586C24();
  MEMORY[0x23192FF80](v8);

  MEMORY[0x23192FF80](0x756365736E6F6320, 0xEC00000065766974);
  return 0x3D74756F656D6954;
}

uint64_t sub_2315604F8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void *SignalRepository.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  v5 = v0[14];

  sub_2314A2910((v0 + 16), &qword_27DD5BE40, &qword_23158DE68);
  v6 = v0[17];

  v7 = v0 + OBJC_IVAR____TtC11SiriSignals16SignalRepository_lastAppInstallEventAt;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE48, &qword_23158DE70) + 28);
  v9 = sub_231585884();
  OUTLINED_FUNCTION_8(v9);
  (*(v10 + 8))(&v7[v8]);
  return v0;
}

uint64_t SignalRepository.__deallocating_deinit()
{
  SignalRepository.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id sub_231560678(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_231586174();

  v6 = [v3 initWithIdentifier:v5 targetQueue:a3];

  return v6;
}

void sub_2315606DC()
{
  OUTLINED_FUNCTION_13_4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_13();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
      v8 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_16_12(v8);
      OUTLINED_FUNCTION_17_12(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_26();
        sub_2314AA8FC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_9_20();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_231560794(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BEE8, &unk_23158E120);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_2314F2764(a4 + 32, v8, v10 + 4);
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BEF0, &unk_23158ECD0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2315608AC(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BED8, &qword_23158E110);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_2314F2764(a4 + 32, v8, v10 + 4);
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BEE0, &qword_23158E118);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2315609C4()
{
  OUTLINED_FUNCTION_13_4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_13();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
      v8 = OUTLINED_FUNCTION_43_1();
      OUTLINED_FUNCTION_12_13(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_26();
        sub_2314F2768(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    OUTLINED_FUNCTION_9_20();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_231560AF0()
{
  OUTLINED_FUNCTION_13_4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_13();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5C0, &qword_23158E0D0);
      v8 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_16_12(v8);
      OUTLINED_FUNCTION_17_12(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_26();
        sub_2314F18F8(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_9_20();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_231560BD0()
{
  OUTLINED_FUNCTION_13_4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_13();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BEB8, &qword_23158E0D8);
      v8 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_16_12(v8);
      OUTLINED_FUNCTION_17_12(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_26();
        sub_2314AA8FC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BEC0, &qword_23158E0E0);
    OUTLINED_FUNCTION_9_20();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_231560C98()
{
  OUTLINED_FUNCTION_13_4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_13();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4E8, &qword_23158A630);
      v8 = OUTLINED_FUNCTION_43_1();
      OUTLINED_FUNCTION_12_13(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_26();
        sub_2314F2764(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF08, &qword_23158E148);
    OUTLINED_FUNCTION_9_20();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_231560D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_85();
  if ((v13 & 1) == 0)
  {
    v14 = v12;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_13();
  if (v15 == v16)
  {
LABEL_7:
    OUTLINED_FUNCTION_57_0(v14);
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
      v19 = OUTLINED_FUNCTION_20();
      v20 = _swift_stdlib_malloc_size(v19);
      v19[2] = v9;
      v19[3] = 2 * ((v20 - 32) / 8);
      if (v8)
      {
LABEL_9:
        v21 = OUTLINED_FUNCTION_59_0();
        a7(v21);
        *(v7 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
      if (v8)
      {
        goto LABEL_9;
      }
    }

    memcpy(v19 + 4, (v7 + 32), 8 * v9);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v15)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_231560E58(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF30, &qword_23158EF50);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80) - 8) + 80);
  if (v5)
  {
    sub_2314F1918();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_231561024()
{
  OUTLINED_FUNCTION_13_4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_13();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BEF8, &qword_23158E130);
      v8 = OUTLINED_FUNCTION_43_1();
      OUTLINED_FUNCTION_12_13(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_26();
        sub_2314F2764(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF00, &unk_23158E138);
    OUTLINED_FUNCTION_9_20();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2315610EC()
{
  OUTLINED_FUNCTION_13_4();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_13();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BED0, &unk_23158E0F0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * v10 - 64;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_7_26();
        sub_2314F19D8(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v14 = OUTLINED_FUNCTION_9_20();
    memcpy(v14, v15, v16);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2315611C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_85();
  if ((v11 & 1) == 0)
  {
    v12 = v10;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_13();
  if (v13 == v14)
  {
LABEL_7:
    OUTLINED_FUNCTION_57_0(v12);
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF20, &qword_23158E178);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v7;
      v15[3] = 2 * ((v16 - 32) / 40);
      if (v6)
      {
LABEL_9:
        v17 = OUTLINED_FUNCTION_59_0();
        a5(v17);
        *(v5 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v6)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB30, &qword_23158C660);
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v13)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2315612B8()
{
  OUTLINED_FUNCTION_13_4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_13();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF28, &unk_23158E180);
      v8 = OUTLINED_FUNCTION_43_1();
      OUTLINED_FUNCTION_12_13(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_26();
        sub_2314AE148(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_9_20();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_231561370()
{
  OUTLINED_FUNCTION_13_4();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_13();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4B0, &qword_23158A5B8);
      v9 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_16_12(v9);
      OUTLINED_FUNCTION_17_12(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_7_26();
        sub_2314F1A00(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 4 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_231561428()
{
  OUTLINED_FUNCTION_13_4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_13();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B668, &unk_23158E1A0);
      v8 = OUTLINED_FUNCTION_43_1();
      OUTLINED_FUNCTION_12_13(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_26();
        sub_2314F1A20(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_9_20();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2315614E0()
{
  OUTLINED_FUNCTION_13_4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_13();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE98, &qword_23158E098);
      v8 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_16_12(v8);
      OUTLINED_FUNCTION_17_12(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_26();
        sub_2314F18D8(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B420, &unk_23158E0A0);
    OUTLINED_FUNCTION_9_20();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2315615D0()
{
  OUTLINED_FUNCTION_13_4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_13();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE78, &qword_23158E078);
      v8 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_16_12(v8);
      OUTLINED_FUNCTION_17_12(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_26();
        sub_2314F18F8(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE80, &qword_23158E080);
    OUTLINED_FUNCTION_9_20();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2315616D4()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_85();
  if (v9)
  {
    OUTLINED_FUNCTION_3_13();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_12_1();
      if (v11)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v10 = v6;
  }

  v13 = *(v0 + 16);
  if (v10 <= v13)
  {
    v14 = *(v0 + 16);
  }

  else
  {
    v14 = v10;
  }

  if (!v14)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v15 = *(v5(0) - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  v19 = _swift_stdlib_malloc_size(v18);
  if (!v16)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v19 - v17 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_23;
  }

  v18[2] = v13;
  v18[3] = 2 * ((v19 - v17) / v16);
LABEL_18:
  v21 = *(v5(0) - 8);
  if (v1)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v3(v0 + v22, v13, v18 + v22);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_3_6();
}

uint64_t sub_231561874(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_23149C888(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v9 = *(*v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
  sub_231586A64();
  v10 = *(*(v13 + 48) + 16 * v7 + 8);

  v11 = *(*(v13 + 56) + 8 * v7);
  sub_231586A84();
  *v3 = v13;
  return v11;
}

uint64_t sub_231561958(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_23149C888(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  v9 = *(*v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B200, &unk_23158E100);
  sub_231586A64();
  v10 = *(*(v15 + 48) + 16 * v7 + 8);

  v11 = *(v15 + 56) + 16 * v7;
  v12 = *v11;
  v13 = *(v11 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F8, &unk_231588F10);
  sub_231586A84();
  *v3 = v15;
  return v12;
}

uint64_t sub_231561A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = *v6;
  v13 = sub_23149C888(a1, a2);
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    swift_isUniquelyReferenced_nonNull_native();
    v27 = *v10;
    v17 = *(*v10 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_231586A64();
    v18 = *(*(v27 + 48) + 16 * v15 + 8);

    v19 = *(v27 + 56);
    v20 = a5(0);
    OUTLINED_FUNCTION_8(v20);
    (*(v21 + 32))(a6, v19 + *(v21 + 72) * v15, v20);
    sub_231586A84();
    v22 = OUTLINED_FUNCTION_63_0();
  }

  else
  {
    a5(0);
    v22 = OUTLINED_FUNCTION_78();
  }

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

uint64_t sub_231561B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = *v7;
  v15 = sub_23149C888(a1, a2);
  if (v16)
  {
    v17 = v15;
    v18 = *v12;
    swift_isUniquelyReferenced_nonNull_native();
    v29 = *v12;
    v19 = *(*v12 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_231586A64();
    v20 = *(*(v29 + 48) + 16 * v17 + 8);

    v21 = *(v29 + 56);
    v22 = a5(0);
    OUTLINED_FUNCTION_8(v22);
    sub_2314ABAD8(v21 + *(v23 + 72) * v17, a7, a6);
    sub_231586A84();
    v24 = OUTLINED_FUNCTION_63_0();
  }

  else
  {
    a5(0);
    v24 = OUTLINED_FUNCTION_78();
  }

  return __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
}

unint64_t *sub_231561CD0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_23149ED34(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_231561D60(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    swift_retain_n();
    v8 = sub_2315628E0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_231561E00(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231562A7C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_231561E6C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_231561E6C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231586C14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = v2 / 2;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2315863E4();
        *(v5 + 16) = v4;
      }

      OUTLINED_FUNCTION_58_0();
      sub_231561F58(v6, v7, v8, v9);
      *(v5 + 16) = 0;
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
    return sub_231546D40(0, v2, 1, a1);
  }

  return result;
}

void sub_231561F58(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_231586C44();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_231586C44()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_231586C44() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        OUTLINED_FUNCTION_19_2();
        sub_2314F0BEC();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_2314F0BEC();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_23154743C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_231547310(&v92, *a1, a3);
LABEL_102:
}

char *sub_231562470(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_23156249C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5B0, &qword_23158AA68);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_23156259C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v66 = 0;
    v35 = 0;
    v36 = *(a3 + 56);
    v37 = *(a3 + 32);
    OUTLINED_FUNCTION_10_16();
    v40 = v39 & v38;
    v42 = (v41 + 63) >> 6;
    v43 = v4 + 56;
LABEL_22:
    while (v40)
    {
      OUTLINED_FUNCTION_69();
LABEL_29:
      v63 = v44 | (v35 << 6);
      v48 = (*(v5 + 48) + 16 * v63);
      v50 = *v48;
      v49 = v48[1];
      v51 = *(v4 + 40);
      sub_231586D14();

      sub_231586274();
      sub_231586D44();
      v52 = *(v4 + 32);
      OUTLINED_FUNCTION_17_7();
      v55 = ~v54;
      do
      {
        v56 = v53 & v55;
        if (((*(v43 + (((v53 & v55) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v53 & v55)) & 1) == 0)
        {

          v4 = a4;
          v40 = v64;
          goto LABEL_22;
        }

        v57 = (*(a4 + 48) + 16 * v56);
        if (*v57 == v50 && v57[1] == v49)
        {
          break;
        }

        v59 = sub_231586C44();
        v53 = v56 + 1;
      }

      while ((v59 & 1) == 0);

      *(a1 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
      v34 = __OFADD__(v66++, 1);
      v4 = a4;
      v40 = v64;
      if (v34)
      {
        goto LABEL_44;
      }
    }

    v45 = v35;
    while (1)
    {
      v35 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v35 >= v42)
      {
LABEL_40:

        sub_23152B004(a1, a2, v66, v5);
        return;
      }

      ++v45;
      if (*(v5 + 56 + 8 * v35))
      {
        OUTLINED_FUNCTION_9_0();
        v64 = v47 & v46;
        goto LABEL_29;
      }
    }
  }

  else
  {
    v66 = 0;
    v6 = 0;
    v7 = *(a4 + 56);
    v60 = a4 + 56;
    v8 = *(a4 + 32);
    OUTLINED_FUNCTION_10_16();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    v14 = v5 + 56;
    v62 = v13;
LABEL_3:
    while (v11)
    {
      OUTLINED_FUNCTION_69();
LABEL_10:
      v19 = (*(v4 + 48) + 16 * (v15 | (v6 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v5 + 40);
      sub_231586D14();

      sub_231586274();
      sub_231586D44();
      v23 = v5;
      v24 = *(v5 + 32);
      OUTLINED_FUNCTION_17_7();
      v27 = ~v26;
      do
      {
        v28 = v25 & v27;
        v29 = (v25 & v27) >> 6;
        v30 = 1 << (v25 & v27);
        if ((v30 & *(v14 + 8 * v29)) == 0)
        {

          v5 = v23;
          v4 = a4;
          v13 = v62;
          v11 = v64;
          goto LABEL_3;
        }

        v31 = (*(v23 + 48) + 16 * v28);
        if (*v31 == v21 && v31[1] == v20)
        {
          break;
        }

        v33 = sub_231586C44();
        v25 = v28 + 1;
      }

      while ((v33 & 1) == 0);

      v11 = v64;
      a1[v29] |= v30;
      v34 = __OFADD__(v66++, 1);
      v5 = v23;
      v4 = a4;
      v13 = v62;
      if (v34)
      {
        goto LABEL_43;
      }
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        goto LABEL_40;
      }

      ++v16;
      if (*(v60 + 8 * v6))
      {
        OUTLINED_FUNCTION_9_0();
        v64 = v18 & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_2315628E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v23 = result;
  v24 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(a3 + 48) + 24 * v13;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = __swift_project_boxed_opaque_existential_1((v28 + 72), *(v28 + 96));
    v26[0] = v15;
    v26[1] = v16;
    v27 = v17;
    v19 = *v18;
    sub_23149D47C(v15, v16, v17);
    LOBYTE(v19) = sub_23149BF44(v26);
    result = sub_2314A01D4(v15, v16, v17);
    if (v19)
    {
      *(v23 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:

        v21 = sub_23149E818(v23, a2, v24, a3);

        return v21;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231562AF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_17_7();
  result = sub_2315867D4();
  v4 = *(a1 + 36);
  return result;
}

void sub_231562B40()
{
  sub_231562D1C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_231562D1C()
{
  if (!qword_280D6C6F0)
  {
    sub_231585884();
    v0 = sub_231585E44();
    if (!v1)
    {
      atomic_store(v0, &qword_280D6C6F0);
    }
  }
}

uint64_t sub_231562DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE90, &qword_23158E090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231562E4C(NSObject *a1, uint64_t a2, NSObject *a3, int a4, uint64_t a5)
{
  v46 = a4;
  v44 = a2;
  v45 = a3;
  v47 = a1;
  v6 = sub_231585884();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v43 = &v43 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v43 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  sub_231585874();
  v21 = (a5 + OBJC_IVAR____TtC11SiriSignals16SignalRepository_lastAppInstallEventAt);
  os_unfair_lock_lock(v21);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE48, &qword_23158DE70) + 28);
  v23 = v7[2];
  v23(v15, v21 + v22, v6);
  os_unfair_lock_unlock(v21);
  sub_2315857B4();
  v24 = v7[1];
  v24(v15, v6);
  sub_2314AA79C(&qword_280D6FBD8, MEMORY[0x277CC9578]);
  v49 = v18;
  if (sub_231586164())
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v25 = sub_231585FF4();
    __swift_project_value_buffer(v25, qword_280D72248);
    v26 = v43;
    v23(v43, v20, v6);
    v28 = v48;
    v27 = v49;
    v23(v48, v49, v6);
    v29 = sub_231585FE4();
    v30 = sub_2315865D4();
    if (!os_log_type_enabled(v29, v30))
    {

      v24(v28, v6);
      v24(v26, v6);
      v41 = v27;
      goto LABEL_13;
    }

    v31 = v26;
    v32 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v50[0] = v47;
    *v32 = 136315394;
    sub_2314AA79C(&qword_280D6FBD0, MEMORY[0x277CC9578]);
    v46 = v30;
    v45 = v29;
    sub_231586C24();
    v24(v31, v6);
    v33 = sub_2314A22E8();

    *(v32 + 4) = v33;
    *(v32 + 12) = 2080;
    sub_231586C24();
    v24(v28, v6);
    v34 = sub_2314A22E8();

    *(v32 + 14) = v34;
    v35 = v45;
    _os_log_impl(&dword_231496000, v45, v46, "SignalRepository: #AppInstallListener Ignoring Biome notification for App.Install (%s < %s)", v32, 0x16u);
    v36 = v47;
    swift_arrayDestroy();
    MEMORY[0x231931280](v36, -1, -1);
    MEMORY[0x231931280](v32, -1, -1);
  }

  else
  {
    os_unfair_lock_lock(v21);
    v24(v21 + v22, v6);
    v23(v21 + v22, v20, v6);
    os_unfair_lock_unlock(v21);
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v37 = sub_231585FF4();
    __swift_project_value_buffer(v37, qword_280D72248);
    v38 = sub_231585FE4();
    v39 = sub_2315865D4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_231496000, v38, v39, "SignalRepository: #AppInstallListener Received Biome notification for App.Install", v40, 2u);
      MEMORY[0x231931280](v40, -1, -1);
    }

    v50[0] = v44;
    v50[1] = v45;
    v51 = v46;
    sub_2314C2D00(0, v50, v47);
  }

  v41 = v49;
LABEL_13:
  v24(v41, v6);
  return (v24)(v20, v6);
}

void sub_231563414(uint64_t a1)
{
  v3 = *(sub_231585884() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_23155F64C(a1, v5, v6, v7, v1 + v4, v8);
}

void OUTLINED_FUNCTION_31_3()
{

  JUMPOUT(0x231931280);
}

uint64_t OUTLINED_FUNCTION_42_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_1@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = (a6 + 16 * a1);
  result = *v6;
  v8 = *(v6[1] + 72);
  return result;
}

void OUTLINED_FUNCTION_57_0(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_66_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 16) = v13;
  v15 = v12 + 16 * v14;
  *(v15 + 32) = a12;
  *(v15 + 40) = a11;
}

uint64_t OUTLINED_FUNCTION_81()
{
  result = v0[15];
  v2 = *(v0[16] + 8);
  v3 = v0[17];
  return result;
}

__n128 OUTLINED_FUNCTION_82_0(uint64_t a1)
{
  *(v2 - 160) = a1;
  result = *(v2 - 448);
  *v1 = result.n128_u32[0];
  return result;
}

BOOL OUTLINED_FUNCTION_93_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_2315636F8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_231586584();
  if (!v26)
  {
    return sub_2315863D4();
  }

  v48 = v26;
  v52 = sub_231586A34();
  v39 = sub_231586A44();
  sub_2315869E4();
  result = sub_231586574();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_2315865A4();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_231586A24();
      result = sub_231586594();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_231563B54()
{
  OUTLINED_FUNCTION_10_17();
  v25 = v2;
  v4 = v3;
  v30 = v5;
  v32 = v6(0);
  v7 = OUTLINED_FUNCTION_4_1(v32);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v27 = v12;
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_27();
  v14 = 0;
  v31 = *(v4 + 16);
  v15 = (v9 + 8);
  v26 = (v9 + 32);
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v31 == v14)
    {

LABEL_14:
      OUTLINED_FUNCTION_13_11();
      OUTLINED_FUNCTION_11_16();
      return;
    }

    if (v14 >= *(v4 + 16))
    {
      break;
    }

    v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v17 = *(v9 + 72);
    (*(v9 + 16))(v1, v4 + v16 + v17 * v14, v32);
    v18 = v30(v1);
    if (v0)
    {
      (*v15)(v1, v32);

      goto LABEL_14;
    }

    if (v18)
    {
      v24 = *v26;
      (*v26)(v27, v1, v32);
      v33 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25(0, *(v28 + 16) + 1, 1);
      }

      v19 = v28;
      v21 = *(v28 + 16);
      v20 = *(v28 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v29 = v21 + 1;
        v23 = v21;
        v25(v20 > 1, v21 + 1, 1);
        v22 = v29;
        v21 = v23;
        v19 = v33;
      }

      ++v14;
      *(v19 + 16) = v22;
      v28 = v19;
      v24(v19 + v16 + v21 * v17, v27, v32);
    }

    else
    {
      (*v15)(v1, v32);
      ++v14;
    }
  }

  __break(1u);
}

id SignalStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SignalStore.init()()
{
  v1 = type metadata accessor for SignalStore.BackingStore(0);
  v2 = OUTLINED_FUNCTION_8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_231585E74();
  swift_storeEnumTagMultiPayload();
  sub_231563EFC(v7, v0 + OBJC_IVAR___SISignalStore_backingStore);
  v9.receiver = v0;
  v9.super_class = type metadata accessor for SignalStore(0);
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_231563EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalStore.BackingStore(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_231563FA4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SignalStore.BackingStore(0);
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_231564050(a1, a2, (v10 - v9));
  sub_231563EFC(v11, v2 + OBJC_IVAR___SISignalStore_backingStore);
  v13.receiver = v2;
  v13.super_class = type metadata accessor for SignalStore(0);
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_231564050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_11;
  }

  v13[0] = a1;
  v13[1] = a2;
  MEMORY[0x28223BE20](a1);
  v12[2] = v13;
  if (!sub_2314E62A8(sub_2314BB954, v12, &unk_284612AF0))
  {

LABEL_11:
    sub_231585E74();
    type metadata accessor for SignalStore.BackingStore(0);
    return swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for DESIntentEventStore();
  swift_allocObject();
  v6 = sub_2314E1210(a1, a2);
  if (!v6)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v7 = sub_231585FF4();
    __swift_project_value_buffer(v7, qword_280D72248);
    v8 = sub_231585FE4();
    v9 = sub_2315865E4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_231496000, v8, v9, "Tried to created DESRecordStore based on intentGroupIdentifier but failed; reverting to default storage", v10, 2u);
      MEMORY[0x231931280](v10, -1, -1);
    }

    goto LABEL_11;
  }

  *a3 = v6;
  type metadata accessor for SignalStore.BackingStore(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_23156420C()
{
  OUTLINED_FUNCTION_10_17();
  v52 = v0;
  v56 = v3;
  v57 = v4;
  v54 = v5;
  v55 = v6;
  v58 = v7;
  v8 = sub_231585884();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v53 = v14;
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_27();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF48, &qword_23158E1B0);
  OUTLINED_FUNCTION_19(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_15_11();
  v21 = OUTLINED_FUNCTION_4_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v29 = sub_231585F44();
  v30 = OUTLINED_FUNCTION_4_1(v29);
  v50 = v31;
  v51 = v30;
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v30);
  v36 = &v49 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v49 - v37;
  (*(v23 + 16))(v28, v56, v20);
  sub_231585F94();
  v39 = OUTLINED_FUNCTION_8_22();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  (*(v11 + 16))(v2, v57, v8);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_5_27();
  sub_231585ED4();
  if (!v1)
  {
    v43 = v51;
    v44 = v50;
    (*(v50 + 16))(v36, v38, v51);

    sub_231585F34();
    v45 = sub_231585EB4();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v48 = sub_231585E94();
    sub_231564540(v48);
    (*(v44 + 8))(v38, v43);
  }

  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_11_16();
}

uint64_t sub_231564540(uint64_t a1)
{
  v2 = v1;
  v4 = sub_231585E84();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = type metadata accessor for SignalStore.BackingStore(0);
  v14 = OUTLINED_FUNCTION_8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v19 = (v18 - v17);
  sub_2315659E0(v2, v18 - v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    sub_2314E1A58(a1);
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
      swift_willThrowTypedImpl();
    }
  }

  else
  {
    (*(v7 + 32))(v12, v19, v4);
    sub_231585E64();
    v23 = *(v7 + 8);
    v24 = OUTLINED_FUNCTION_3_5();
    return v25(v24);
  }
}

void sub_2315646EC()
{
  OUTLINED_FUNCTION_10_17();
  v50 = v0;
  v55 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF48, &qword_23158E1B0);
  OUTLINED_FUNCTION_19(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_15_11();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_231585F44();
  v18 = OUTLINED_FUNCTION_4_1(v17);
  v53 = v19;
  v54 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v52 = v22;
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_27();
  v24 = sub_231585884();
  v25 = OUTLINED_FUNCTION_4_1(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_1();
  v51 = v30;
  OUTLINED_FUNCTION_19_3();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v50 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v50 - v35;
  sub_231585874();
  (*(v11 + 104))(v16, *MEMORY[0x277D5B328], v8);
  sub_231585F94();
  v37 = OUTLINED_FUNCTION_8_22();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  v41 = *(v27 + 16);
  v41(v34, v36, v24);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_5_27();
  sub_231585ED4();
  if (!v1)
  {
    (*(v53 + 16))(v52, v2, v54);
    v41(v51, v36, v24);
    v42 = sub_231585EB4();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    v45 = sub_231585E94();
    v46 = v53;
    sub_231564540(v45);

    v47 = *(v46 + 8);
    v48 = OUTLINED_FUNCTION_3_5();
    v49(v48);
  }

  (*(v27 + 8))(v36, v24);
  OUTLINED_FUNCTION_11_16();
}

void static SignalStore.logViaXPC(signals:)()
{
  v0 = sub_231570BA4(1, sub_231564B0C, 0);
  v1 = sub_2315860C4();
  [v0 saveToInferenceDESWithSignals_];
  swift_unknownObjectRelease();
}

void sub_231564B0C(void *a1)
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v2 = sub_231585FF4();
  __swift_project_value_buffer(v2, qword_280D72248);
  v3 = a1;
  oslog = sub_231585FE4();
  v4 = sub_2315865E4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v5 = 136315138;
    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
    sub_231586204();
    v7 = sub_2314A22E8();

    *(v5 + 4) = v7;
    _os_log_impl(&dword_231496000, oslog, v4, "error saving signals over XPC bridge: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x231931280](v9, -1, -1);
    MEMORY[0x231931280](v5, -1, -1);
  }

  else
  {
  }
}

void sub_231564CB0()
{
  OUTLINED_FUNCTION_10_17();
  v17 = v1;
  v18 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF50, &qword_23158E1B8);
  OUTLINED_FUNCTION_19(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = sub_231585F64();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;

  sub_231585F54();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2314A2910(v7, &qword_27DD5BF50, &qword_23158E1B8);
    sub_231564E74();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v16, v7, v8);
    sub_23156420C();
    (*(v11 + 8))(v16, v8);
  }

  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_11_16();
}

unint64_t sub_231564E74()
{
  result = qword_27DD5BF58;
  if (!qword_27DD5BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BF58);
  }

  return result;
}

uint64_t sub_2315650A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2315651C8();
  if (!v5)
  {
    MEMORY[0x28223BE20](v7);
    KeyPath = swift_getKeyPath();
    type metadata accessor for Signal();
    v9 = sub_231586454();
    WitnessTable = swift_getWitnessTable();
    v4 = sub_2315636F8(sub_2315659B4, KeyPath, v9, a4, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  }

  return v4;
}

void sub_2315651C8()
{
  OUTLINED_FUNCTION_10_17();
  v86 = v2;
  v87 = v3;
  v91 = v4;
  v92 = v5;
  v6 = sub_231585F44();
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v94 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v95 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v14 = OUTLINED_FUNCTION_19(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v90 = v17;
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v18);
  v89 = &v83 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF68, &qword_23158E1E8);
  OUTLINED_FUNCTION_19(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v23);
  v25 = &v83 - v24;
  v26 = type metadata accessor for SignalStore.BackingStore(0);
  v27 = OUTLINED_FUNCTION_8(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  v33 = sub_231585E84();
  v34 = OUTLINED_FUNCTION_4_1(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5();
  v41 = v40 - v39;
  sub_2315659E0(v0 + OBJC_IVAR___SISignalStore_backingStore, v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_231565A44(v32);
    if (qword_280D70420 == -1)
    {
LABEL_3:
      v42 = sub_231585FF4();
      __swift_project_value_buffer(v42, qword_280D72248);
      v43 = sub_231585FE4();
      v44 = sub_2315865E4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_231496000, v43, v44, "DESStore-backed SignalStore cannot fetch events", v45, 2u);
        MEMORY[0x231931280](v45, -1, -1);
      }

      type metadata accessor for Signal();
      sub_2315863D4();
LABEL_25:
      OUTLINED_FUNCTION_13_11();
      OUTLINED_FUNCTION_11_16();
      return;
    }

LABEL_28:
    OUTLINED_FUNCTION_3();
    swift_once();
    goto LABEL_3;
  }

  v84 = v36;
  v85 = v33;
  (*(v36 + 32))(v41, v32, v33);
  v46 = sub_231585634();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v93 = sub_231585624();
  v49 = *MEMORY[0x277D5B310];
  v50 = sub_231585EC4();
  OUTLINED_FUNCTION_8(v50);
  (*(v51 + 104))(v25, v49, v50);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v50);
  v52 = sub_231585884();
  v53 = v89;
  v54 = OUTLINED_FUNCTION_8_22();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v52);
  v57 = v90;
  __swift_storeEnumTagSinglePayload(v90, 1, 1, v52);
  v58 = sub_231585E54();
  sub_2314A2910(v57, &qword_27DD5BF60, &qword_231587FD0);
  sub_2314A2910(v53, &qword_27DD5BF60, &qword_231587FD0);
  sub_2314A2910(v25, &qword_27DD5BF68, &qword_23158E1E8);
  v59 = sub_2314AA920(v58);
  v83 = v41;
  if (!v59)
  {
LABEL_18:

    v70 = v87;
    MEMORY[0x28223BE20](v69);
    *(&v83 - 2) = v71;
    sub_231563B54();
    MEMORY[0x28223BE20](v72);
    *(&v83 - 2) = v70;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5BF80, &unk_23158E1F0);
    v74 = type metadata accessor for Signal();
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
    v76 = sub_2315661BC();
    sub_2315636F8(sub_23156619C, (&v83 - 4), v73, v74, v75, v76, MEMORY[0x277D84950], &v96);
    if (v1)
    {

      v68 = v96;
LABEL_23:
      v78 = v84;
      v77 = v85;
      swift_getErrorValue();
      v79 = sub_231586C94();
      v81 = v80;
      sub_231566128();
      swift_allocError();
      *v82 = v79;
      *(v82 + 8) = v81;
      *(v82 + 16) = 1;
      swift_willThrow();

      (*(v78 + 8))(v83, v77);
    }

    else
    {
      (*(v84 + 8))(v83, v85);
    }

    goto LABEL_25;
  }

  v60 = v59;
  v97 = MEMORY[0x277D84F90];
  sub_23152D894();
  if ((v60 & 0x8000000000000000) == 0)
  {
    v61 = 0;
    v91 = v58;
    v92 = v58 & 0xC000000000000001;
    v88 = v58 & 0xFFFFFFFFFFFFFF8;
    v89 = (v94 + 32);
    v90 = v60;
    while (1)
    {
      v62 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v92)
      {
        MEMORY[0x231930660](v61, v58);
      }

      else
      {
        if (v61 >= *(v88 + 16))
        {
          goto LABEL_27;
        }

        v63 = *(v58 + 8 * v61 + 32);
      }

      v64 = sub_231585EA4();
      v66 = v65;
      sub_2315660D0();
      sub_231585614();
      if (v1)
      {
        sub_2314BEE4C(v64, v66);

        v68 = v1;
        goto LABEL_23;
      }

      sub_2314BEE4C(v64, v66);

      v67 = *(v97 + 16);
      if (v67 >= *(v97 + 24) >> 1)
      {
        sub_23152D894();
      }

      *(v97 + 16) = v67 + 1;
      (*(v94 + 32))(v97 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v67, v95, v6);
      ++v61;
      v58 = v91;
      if (v62 == v90)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __break(1u);
}

uint64_t sub_2315659E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalStore.BackingStore(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231565A44(uint64_t a1)
{
  v2 = type metadata accessor for SignalStore.BackingStore(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231565AA0()
{
  v0 = sub_231585F64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231585EE4();
  v5 = sub_2315133DC();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_231565B8C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v40 = a3;
  v41 = a2;
  v4 = v3;
  v6 = sub_231585884();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF48, &qword_23158E1B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Signal.Metadata();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - v15;
  sub_23156659C();
  v17 = sub_231585F04();
  v19 = v18;
  v20 = sub_231586604();
  result = sub_2314BEE4C(v17, v19);
  if (v3)
  {
    goto LABEL_2;
  }

  v37 = a1;
  v38 = v16;
  v23 = v39;
  v22 = v40;
  if (!v20)
  {
    sub_2315665E0();
    v4 = swift_allocError();
    result = swift_willThrow();
LABEL_2:
    *v41 = v4;
    return result;
  }

  v44 = v20;
  v36 = v20;
  v24 = sub_231585F24();
  v41 = v25;
  v26 = sub_231585EF4();
  v34 = v27;
  v35 = v26;
  v28 = v12;
  sub_231585F14();
  v29 = sub_231585F94();
  if (__swift_getEnumTagSinglePayload(v12, 1, v29) == 1)
  {
    sub_2314A2910(v12, &qword_27DD5BF48, &qword_23158E1B0);
    v30 = 2;
    v31 = v37;
    v32 = v38;
  }

  else
  {
    v31 = v37;
    sub_2314DFF40(&v43);
    (*(*(v29 - 8) + 8))(v28, v29);
    v30 = v43;
    v32 = v38;
  }

  v42 = v30;
  sub_231585F34();

  Signal.Metadata.init(turnId:resultCandidateId:source:timestamp:)(v24, v41, v35, v34, &v42, v23, v32);
  return Signal.init(value:metadata:)(&v44, v32, v31, v22);
}

uint64_t sub_231565E6C()
{
  v1 = type metadata accessor for SignalStore.BackingStore(0);
  v2 = OUTLINED_FUNCTION_8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_2315659E0(v0 + OBJC_IVAR___SISignalStore_backingStore, v6 - v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v9 = *(*v7 + 40);
    v10 = *(v8 + 48);
    __swift_project_boxed_opaque_existential_1((v8 + 16), v9);
    v11 = (*(v10 + 16))(v9, v10);
  }

  else
  {
    sub_231565A44(v7);
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t sub_231565F4C(char a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for SignalStore.BackingStore(0);
  v8 = OUTLINED_FUNCTION_8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  if (a1)
  {
    goto LABEL_5;
  }

  sub_2315659E0(v3 + OBJC_IVAR___SISignalStore_backingStore, v13);
  OUTLINED_FUNCTION_3_5();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_231565A44(v13);
LABEL_5:
    v15 = 1;
    return v15 & 1;
  }

  v14 = *v13;
  v15 = sub_2314E1BFC(a2, a3 & 1);

  return v15 & 1;
}

id SignalStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignalStore(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2315660D0()
{
  result = qword_27DD5BF70;
  if (!qword_27DD5BF70)
  {
    sub_231585F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BF70);
  }

  return result;
}

unint64_t sub_231566128()
{
  result = qword_27DD5BF78;
  if (!qword_27DD5BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BF78);
  }

  return result;
}

unint64_t sub_2315661BC()
{
  result = qword_27DD5BF90;
  if (!qword_27DD5BF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD5BF80, &unk_23158E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BF90);
  }

  return result;
}

uint64_t sub_231566244()
{
  result = type metadata accessor for SignalStore.BackingStore(319);
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

uint64_t dispatch thunk of SignalStore.log(data:signalType:intentId:timestamp:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_16_13();
  return (*(v3 + 104))();
}

{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_16_13();
  return (*(v3 + 120))();
}

uint64_t dispatch thunk of SignalStore.log(appSelectionSignal:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_16_13();
  return (*(v3 + 112))();
}

uint64_t dispatch thunk of SignalStore.find<A>(byIntentId:signalType:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_16_13();
  return (*(v3 + 128))();
}

uint64_t dispatch thunk of SignalStore.fetch<A>(byIntentId:signalType:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_16_13();
  return (*(v3 + 136))();
}

uint64_t dispatch thunk of SignalStore.shouldMakeRecord(force:frequencyDenominator:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_16_13();
  return (*(v3 + 152))();
}

uint64_t sub_2315664D0()
{
  result = sub_231585E84();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DESIntentEventStore();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_231566548()
{
  result = qword_27DD5BFC8;
  if (!qword_27DD5BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BFC8);
  }

  return result;
}

unint64_t sub_23156659C()
{
  result = qword_27DD5BFD0;
  if (!qword_27DD5BFD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD5BFD0);
  }

  return result;
}

unint64_t sub_2315665E0()
{
  result = qword_27DD5BFD8;
  if (!qword_27DD5BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BFD8);
  }

  return result;
}

_BYTE *sub_231566634(_BYTE *result, int a2, int a3)
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

unint64_t sub_2315666E4()
{
  result = qword_27DD5BFE0;
  if (!qword_27DD5BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BFE0);
  }

  return result;
}

void *sub_231566778(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_231586A94();

    if (v4)
    {
      sub_23156C510();
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16) && (v5 = sub_231574BF0(a1), (v6 & 1) != 0))
  {
    v4 = *(*(a2 + 56) + 8 * v5);
    v7 = v4;
  }

  else
  {
    return 0;
  }

  return v4;
}

double sub_23156682C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v5 = sub_23149C888(a1, a2), (v6 & 1) != 0))
  {
    v7 = OUTLINED_FUNCTION_31_4(v5);

    sub_2314A24F0(v7, v8);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_231566888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_23149C888(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0);
    OUTLINED_FUNCTION_8(v10);
    sub_23156C450(v9 + *(v11 + 72) * v8, a4);
    v12 = OUTLINED_FUNCTION_30_3();
    v15 = v10;
  }

  else
  {
    type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0);
    v12 = OUTLINED_FUNCTION_78();
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_23156691C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_231574C34(a1);
  if (v3)
  {
    return OUTLINED_FUNCTION_25_2(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23156696C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_231574C34(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_2315669BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_23149C888(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_231566A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (v8 = sub_23149C888(a1, a2), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(a3 + 56);
    v12 = a4(0);
    OUTLINED_FUNCTION_8(v12);
    (*(v13 + 16))(a5, v11 + *(v13 + 72) * v10, v12);
    v14 = OUTLINED_FUNCTION_30_3();
    v17 = v12;
  }

  else
  {
    a4(0);
    v14 = OUTLINED_FUNCTION_78();
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_231566AE8(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_231574C34(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

double sub_231566B38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_231574D18(a1), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_31_4(v4);

    sub_2314A24F0(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_231566B94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_231574E10(a1), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_31_4(v4);

    sub_2314A24F0(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_231566BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_23149C888(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 56) + 24 * v4;
  result = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  return result;
}

Swift::Double_optional __swiftcall SignalValue.value(for:)(Swift::String a1)
{
  v3 = *v1;
  switch(*(v1 + 8))
  {
    case 1:
      if (!*(v3 + 16))
      {
        goto LABEL_10;
      }

      v4 = *v1;
      v5 = sub_23149C888(a1._countAndFlagsBits, a1._object);
      if ((v6 & 1) == 0)
      {
        goto LABEL_10;
      }

      v2 = *(*(v3 + 56) + 8 * v5);
      goto LABEL_6;
    case 2:
      break;
    case 3:
      if (*(v3 + 16) && (v7 = *v1, v8 = sub_23149C888(a1._countAndFlagsBits, a1._object), (v9 & 1) != 0))
      {
        v3 = *(*(v3 + 56) + 8 * v8);
      }

      else
      {
LABEL_10:
        LOBYTE(v3) = 0;
      }

      break;
    default:
      v2 = v3;
LABEL_6:
      LOBYTE(v3) = LOBYTE(v2);
      break;
  }

  v10 = v3;
  result.value = v2;
  result.is_nil = v10;
  return result;
}

void sub_231566D24(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a3 >> 1 == a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    v5 = OUTLINED_FUNCTION_78();
  }

  else
  {
    if ((a3 >> 1) <= a2)
    {
      __break(1u);
      return;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    OUTLINED_FUNCTION_8(v11);
    sub_23156C554(a1 + *(v12 + 72) * a2, a4);
    v5 = OUTLINED_FUNCTION_30_3();
    v8 = v11;
  }

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_231566DD0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_23156BA74(a1);
  if (v6)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {

    return sub_23156BAB4(result, v5, a1, a2);
  }

  return result;
}

Swift::Int_optional __swiftcall SignalValue.valueInt(for:)(Swift::String a1)
{
  v2 = v1;
  v3 = *v1;
  switch(*(v2 + 8))
  {
    case 1:
      if (!*(v3 + 16))
      {
        goto LABEL_16;
      }

      v7 = sub_23149C888(a1._countAndFlagsBits, a1._object);
      if ((v8 & 1) == 0)
      {
        goto LABEL_16;
      }

      v9 = *(*(v3 + 56) + 8 * v7);
      goto LABEL_8;
    case 3:
      if (!*(v3 + 16) || (v4 = sub_23149C888(a1._countAndFlagsBits, a1._object), (v5 & 1) == 0))
      {
LABEL_16:
        v17 = 0;
        v16 = 1;
        goto LABEL_19;
      }

      v6 = *(*(v3 + 56) + 8 * v4);
LABEL_8:
      OUTLINED_FUNCTION_1_0();
      if (!v11)
      {
        v16 = 0;
        v17 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_19;
      }

      v12 = OUTLINED_FUNCTION_6_1(v10);
      if (!(v11 ^ v14 | v13))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (v12 <= -9.22337204e18)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_1_0();
      if (v11)
      {
        v16 = 0;
        v17 = v15;
        goto LABEL_19;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      result.value = v17;
      result.is_nil = v16;
      return result;
    default:
      goto LABEL_8;
  }
}

void sub_231566F38(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (!v6)
  {
    goto LABEL_21;
  }

  v67 = *a1;
  if (v4 == 3)
  {
    v38 = *(v2 + 3);
    if (*(v2 + 32))
    {
      v39 = -1.0;
    }

    else
    {
      v39 = v2[3];
    }

    v40 = MEMORY[0x277D84F98];
    v41 = (v5 + 40);
    while (1)
    {
      v43 = *(v41 - 1);
      v42 = *v41;
      v44 = *(v3 + 16);

      v45 = v39;
      if (v44)
      {
        v46 = OUTLINED_FUNCTION_39();
        v48 = sub_23149C888(v46, v47);
        v45 = v39;
        if (v49)
        {
          v45 = *(*(v3 + 56) + 8 * v48);
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      v50 = OUTLINED_FUNCTION_39();
      v52 = sub_23149C888(v50, v51);
      OUTLINED_FUNCTION_3_14(v52, v53);
      if (v24)
      {
        goto LABEL_43;
      }

      v56 = v54;
      v57 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
      if (OUTLINED_FUNCTION_45_2())
      {
        v58 = OUTLINED_FUNCTION_39();
        v60 = sub_23149C888(v58, v59);
        if ((v57 & 1) != (v61 & 1))
        {
          goto LABEL_46;
        }

        v56 = v60;
      }

      if (v57)
      {
        *(*(v40 + 56) + 8 * v56) = v45;
      }

      else
      {
        OUTLINED_FUNCTION_3_34();
        *(v62 + 8 * v56) = v45;
        v63 = *(v40 + 16);
        v24 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v24)
        {
          goto LABEL_45;
        }

        *(v40 + 16) = v64;
      }

      v41 += 2;
      --v6;
      v3 = v67;
      if (!v6)
      {
        *a2 = v40;
        *(a2 + 8) = 3;
LABEL_41:
        OUTLINED_FUNCTION_49_0();
        return;
      }
    }
  }

  if (v4 != 1)
  {
LABEL_21:
    *a2 = v3;
    *(a2 + 8) = v4;
    OUTLINED_FUNCTION_49_0();

    sub_2314A5168(v34, v35);
    return;
  }

  if (*(v2 + 16))
  {
    v7 = -1;
  }

  else
  {
    v7 = *(v2 + 1);
  }

  v66 = v7;
  v8 = MEMORY[0x277D84F98];
  v9 = (v5 + 40);
  while (1)
  {
    v11 = *(v9 - 1);
    v10 = *v9;
    v12 = *(v3 + 16);

    v13 = v66;
    if (v12)
    {
      v14 = OUTLINED_FUNCTION_39();
      v16 = sub_23149C888(v14, v15);
      v13 = v66;
      if (v17)
      {
        v13 = *(*(v3 + 56) + 8 * v16);
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    v18 = OUTLINED_FUNCTION_39();
    v20 = sub_23149C888(v18, v19);
    OUTLINED_FUNCTION_3_14(v20, v21);
    if (v24)
    {
      break;
    }

    v25 = v22;
    v26 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
    if (OUTLINED_FUNCTION_45_2())
    {
      v27 = OUTLINED_FUNCTION_39();
      v29 = sub_23149C888(v27, v28);
      if ((v26 & 1) != (v30 & 1))
      {
        goto LABEL_46;
      }

      v25 = v29;
    }

    if (v26)
    {
      *(*(v8 + 56) + 8 * v25) = v13;
    }

    else
    {
      OUTLINED_FUNCTION_3_34();
      *(v31 + 8 * v25) = v13;
      v32 = *(v8 + 16);
      v24 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v24)
      {
        goto LABEL_44;
      }

      *(v8 + 16) = v33;
    }

    v9 += 2;
    --v6;
    v3 = v67;
    if (!v6)
    {
      *a2 = v8;
      *(a2 + 8) = 1;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  sub_231586C84();
  __break(1u);
}

Swift::Double_optional __swiftcall SignalValue.value()()
{
  v1 = *v0;
  switch(*(v0 + 8))
  {
    case 1:
    case 3:
      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v2 = sub_231585FF4();
      __swift_project_value_buffer(v2, qword_280D72248);
      v3 = sub_231585FE4();
      v4 = sub_2315865E4();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_231496000, v3, v4, "SignalValue#value: Requested independent value on a dependent signal; returning nil", v5, 2u);
        MEMORY[0x231931280](v5, -1, -1);
      }

      LOBYTE(v1) = 0;
      break;
    case 2:
      break;
    default:
      v6 = *&v1;
      v1 = *&v1;
      break;
  }

  result.value = v6;
  result.is_nil = LOBYTE(v1);
  return result;
}

Swift::Int_optional __swiftcall SignalValue.valueInt()()
{
  v9 = *v0;
  v10 = *(v0 + 8);
  SignalValue.value()();
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_0();
    if (!v4)
    {
      v2 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_11;
    }

    v5 = OUTLINED_FUNCTION_6_1(v3);
    if (v4 ^ v7 | v6)
    {
      if (v5 > -9.22337204e18)
      {
        OUTLINED_FUNCTION_1_0();
        if (v4)
        {
          v2 = v8;
          goto LABEL_11;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  v2 = 0;
LABEL_11:
  v1 &= 1u;
LABEL_14:
  result.value = v2;
  result.is_nil = v1;
  return result;
}

void static SignalValue.from(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  sub_231566DD0(a1, &v182);
  if (!*(&v183[0] + 1))
  {
    sub_2314A2910(&v182, &qword_27DD5B218, &unk_23158A010);
    goto LABEL_76;
  }

  v5 = sub_2314D6070(&v182, v184);
  OUTLINED_FUNCTION_50_0(v5, v6, v7, v8, v9, v10, v11, v12, v124, v127, v131, v136, v144, v151, v156, v163, v168, v172, v173, v174, v175, v176, v177, v178, v179, *(&v179 + 1), v180, v181, v182);
  v13 = MEMORY[0x277D84F70];
  v14 = OUTLINED_FUNCTION_6_23();
  v164 = v3;
  if (!v14)
  {
    OUTLINED_FUNCTION_50_0(v14, v15, v16, v17, v18, v19, v20, v21, v125, v128, v132, v137, v145, v152, v157, v3, v169, v172, v173, v174, v175, v176, v177, v178, v179, *(&v179 + 1), v180, v181, v182);
    v44 = OUTLINED_FUNCTION_6_23();
    if (v44)
    {
      v52 = *(v3 + 16);
      v23 = MEMORY[0x277D84F90];
      if (v52)
      {
        OUTLINED_FUNCTION_11_17();
        sub_23152D678();
        v23 = v176;
        v53 = sub_23156BA74(v3);
        v54 = 0;
        v55 = v3 + 64;
        v140 = v52;
        while ((v53 & 0x8000000000000000) == 0)
        {
          OUTLINED_FUNCTION_23_6();
          if (v30 == v31)
          {
            break;
          }

          v58 = v53 >> 6;
          v59 = v57 << v53;
          if ((*(v55 + 8 * (v53 >> 6)) & (v57 << v53)) == 0)
          {
            goto LABEL_106;
          }

          if (*(v3 + 36) != v56)
          {
            goto LABEL_107;
          }

          v60 = v56;
          v61 = OUTLINED_FUNCTION_44_2();
          sub_2314A24F0(v61, v183);
          v177 = v2;
          v178 = v52;
          sub_2314D6070(v183, &v179);
          sub_2314A24F0(&v179, &v172);

          if (!swift_dynamicCast())
          {
            goto LABEL_75;
          }

          sub_2314A2910(&v177, &qword_27DD5BFF0, &qword_23158E4A8);
          OUTLINED_FUNCTION_39_2();
          if (v38)
          {
            OUTLINED_FUNCTION_2_35(v62);
            sub_23152D678();
            v23 = v176;
          }

          *(v23 + 16) = &v177;
          v63 = (v23 + 24 * v54);
          v63[4] = v2;
          v63[5] = v52;
          v3 = v165;
          v63[6] = v170;
          OUTLINED_FUNCTION_10_18();
          if (v30 == v31)
          {
            goto LABEL_108;
          }

          if ((*(v55 + 8 * v58) & v59) == 0)
          {
            goto LABEL_109;
          }

          if (*(v165 + 36) != v60)
          {
            goto LABEL_110;
          }

          OUTLINED_FUNCTION_17_13();
          if (v40)
          {
            OUTLINED_FUNCTION_15_12();
            while (v65 < v64)
            {
              OUTLINED_FUNCTION_29_4();
              if (v58)
              {
                v66 = OUTLINED_FUNCTION_40_2();
                sub_2314ABA68(v66, v67, v68);
                OUTLINED_FUNCTION_27_4();
                goto LABEL_49;
              }
            }

            v69 = OUTLINED_FUNCTION_40_2();
            sub_2314ABA68(v69, v70, v71);
          }

          else
          {
            OUTLINED_FUNCTION_16_14();
          }

LABEL_49:
          ++v54;
          v53 = v52;
          v52 = v140;
          if (v54 == v140)
          {
LABEL_77:
            a2 = v125;
            goto LABEL_78;
          }
        }

        goto LABEL_105;
      }

      goto LABEL_78;
    }

    OUTLINED_FUNCTION_50_0(v44, v45, v46, v47, v48, v49, v50, v51, v125, v129, v134, v139, v147, v154, v159, v165, v170, v172, v173, v174, v175, v176, v177, v178, v179, *(&v179 + 1), v180, v181, v182);
    v72 = OUTLINED_FUNCTION_6_23();
    if (v72)
    {
      v80 = *(v3 + 16);
      v81 = MEMORY[0x277D84F90];
      if (v80)
      {
        OUTLINED_FUNCTION_11_17();
        sub_23152D774();
        v81 = v176;
        v82 = sub_23156BA74(v3);
        v84 = v83;
        v85 = v3 + 64;
        v142 = v83;
        v149 = v80;
        while ((v82 & 0x8000000000000000) == 0)
        {
          OUTLINED_FUNCTION_23_6();
          if (v30 == v31)
          {
            break;
          }

          v88 = v82 >> 6;
          v89 = v87 << v82;
          if ((*(v85 + 8 * (v82 >> 6)) & (v87 << v82)) == 0)
          {
            goto LABEL_112;
          }

          if (*(v3 + 36) != v84)
          {
            goto LABEL_113;
          }

          v161 = v86;
          v90 = OUTLINED_FUNCTION_44_2();
          sub_2314A24F0(v90, v183);
          v177 = v2;
          v178 = v80;
          sub_2314D6070(v183, &v179);
          sub_2314A24F0(&v179, &v172);

          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_75:
            sub_2314A2910(&v177, &qword_27DD5BFF0, &qword_23158E4A8);
            __swift_destroy_boxed_opaque_existential_1(v184);

            a2 = v125;
            goto LABEL_76;
          }

          sub_2314A2910(&v177, &qword_27DD5BFF0, &qword_23158E4A8);
          v176 = v81;
          v92 = *(v81 + 16);
          v91 = *(v81 + 24);
          if (v92 >= v91 >> 1)
          {
            OUTLINED_FUNCTION_2_35(v91);
            sub_23152D774();
            v81 = v176;
          }

          *(v81 + 16) = v92 + 1;
          v93 = (v81 + 24 * v92);
          v93[4] = v2;
          v93[5] = v80;
          v93[6] = v171;
          v3 = v166;
          OUTLINED_FUNCTION_10_18();
          if (v30 == v31)
          {
            goto LABEL_114;
          }

          if ((*(v85 + 8 * v88) & v89) == 0)
          {
            goto LABEL_115;
          }

          if (*(v166 + 36) != v84)
          {
            goto LABEL_116;
          }

          OUTLINED_FUNCTION_17_13();
          if (v40)
          {
            OUTLINED_FUNCTION_15_12();
            while (v95 < v94)
            {
              OUTLINED_FUNCTION_29_4();
              if (v88)
              {
                v96 = OUTLINED_FUNCTION_40_2();
                sub_2314ABA68(v96, v84, v97);
                OUTLINED_FUNCTION_27_4();
                goto LABEL_73;
              }
            }

            v98 = OUTLINED_FUNCTION_40_2();
            sub_2314ABA68(v98, v84, v99);
          }

          else
          {
            OUTLINED_FUNCTION_16_14();
          }

LABEL_73:
          v82 = v80;
          v84 = v142;
          v80 = v149;
          if (v161 + 1 == v149)
          {
            a2 = v125;
            goto LABEL_84;
          }
        }

        goto LABEL_111;
      }

LABEL_84:
      v103 = sub_231507660(v81);
      __swift_destroy_boxed_opaque_existential_1(v184);
      *a2 = v103;
      v100 = 3;
LABEL_80:
      *(a2 + 8) = v100;
      return;
    }

    OUTLINED_FUNCTION_50_0(v72, v73, v74, v75, v76, v77, v78, v79, v125, v130, v135, v141, v148, v155, v160, v166, v171, v172, v173, v174, v175, v176, v177, v178, v179, *(&v179 + 1), v180, v181, v182);
    if (OUTLINED_FUNCTION_6_23())
    {

      v102 = objc_allocWithZone(MEMORY[0x277CCAC68]);
      v104 = sub_23156A144(0xD000000000000028, 0x8000000231593500, 0);
      v105 = *(v3 + 16);
      v106 = MEMORY[0x277D84F90];
      if (v105)
      {
        v172 = MEMORY[0x277D84F90];
        sub_23152D678();
        v106 = v172;
        v108 = sub_23156BA74(v3);
        v109 = v3 + 64;
        v110 = v105 - 1;
        v126 = a2;
        v143 = v3 + 64;
        if ((v108 & 0x8000000000000000) == 0)
        {
          while (v108 < 1 << *(v3 + 32))
          {
            if ((*(v109 + 8 * (v108 >> 6)) & (1 << v108)) == 0)
            {
              goto LABEL_118;
            }

            v150 = v110;
            v162 = v107;
            if (v107 != *(v167 + 36))
            {
              goto LABEL_119;
            }

            v111 = (*(v167 + 48) + 16 * v108);
            v112 = *v111;
            v113 = v111[1];
            sub_2314A24F0(*(v167 + 56) + 32 * v108, v183);
            v177 = v112;
            v178 = v113;
            sub_2314D6070(v183, &v179);

            v114 = v104;
            sub_231567DCC(v112, v113, &v179, v104);
            v116 = v115;
            v118 = v117;
            v120 = v119;
            sub_2314A2910(&v177, &qword_27DD5BFF0, &qword_23158E4A8);
            v172 = v106;
            v121 = *(v106 + 16);
            if (v121 >= *(v106 + 24) >> 1)
            {
              sub_23152D678();
              v106 = v172;
            }

            *(v106 + 16) = v121 + 1;
            v122 = (v106 + 24 * v121);
            v122[4] = v116;
            v122[5] = v118;
            v122[6] = v120;
            if (v108 >= -(-1 << *(v167 + 32)))
            {
              goto LABEL_120;
            }

            v109 = v143;
            a2 = v126;
            if ((*(v143 + 8 * (v108 >> 6)) & (1 << v108)) == 0)
            {
              goto LABEL_121;
            }

            v104 = v114;
            v3 = v167;
            if (v162 != *(v167 + 36))
            {
              goto LABEL_122;
            }

            v123 = sub_2315867F4();
            if (!v150)
            {
              goto LABEL_98;
            }

            v108 = v123;
            v107 = *(v167 + 36);
            v110 = v150 - 1;
            if (v123 < 0)
            {
              goto LABEL_117;
            }
          }
        }

        goto LABEL_117;
      }

LABEL_98:
      v101 = sub_231507638(v106);

      goto LABEL_79;
    }

    __swift_destroy_boxed_opaque_existential_1(v184);
LABEL_76:
    *a2 = 0;
    v100 = -1;
    goto LABEL_80;
  }

  v22 = *(v3 + 16);
  v23 = MEMORY[0x277D84F90];
  if (!v22)
  {
LABEL_78:
    v101 = sub_231507638(v23);
LABEL_79:
    __swift_destroy_boxed_opaque_existential_1(v184);
    *a2 = v101;
    v100 = 1;
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_11_17();
  sub_23152D678();
  v23 = v176;
  v24 = sub_23156BA74(v3);
  v26 = v25;
  v158 = v3 + 64;
  v133 = v25;
  v138 = v22;
  while ((v24 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_23_6();
    if (v30 == v31)
    {
      break;
    }

    v32 = v24 >> 6;
    v33 = v29 << v24;
    if ((*(v158 + 8 * (v24 >> 6)) & (v29 << v24)) == 0)
    {
      goto LABEL_100;
    }

    if (*(v3 + 36) != v26)
    {
      goto LABEL_101;
    }

    v153 = v28;
    v146 = v27;
    v34 = (*(v3 + 48) + 16 * v24);
    v36 = *v34;
    v35 = v34[1];
    sub_2314A24F0(*(v3 + 56) + 32 * v24, v183);
    v177 = v36;
    v178 = v35;
    sub_2314D6070(v183, &v179);
    sub_2314A24F0(&v179, &v172);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_75;
    }

    sub_2314A2910(&v177, &qword_27DD5BFF0, &qword_23158E4A8);
    OUTLINED_FUNCTION_39_2();
    if (v38)
    {
      OUTLINED_FUNCTION_2_35(v37);
      sub_23152D678();
      v23 = v176;
    }

    *(v23 + 16) = &v177;
    v39 = (v23 + 24 * v13);
    v39[4] = v36;
    v39[5] = v35;
    v39[6] = v169;
    v3 = v164;
    OUTLINED_FUNCTION_10_18();
    if (v30 == v31)
    {
      goto LABEL_102;
    }

    if ((*(v158 + 8 * v32) & v33) == 0)
    {
      goto LABEL_103;
    }

    if (*(v164 + 36) != v26)
    {
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_17_13();
    if (v40)
    {
      OUTLINED_FUNCTION_15_12();
      v13 = MEMORY[0x277D84F70];
      v41 = v138;
      while (v43 < v42)
      {
        OUTLINED_FUNCTION_29_4();
        if (v32)
        {
          sub_2314ABA68(v24, v26, v146 & 1);
          OUTLINED_FUNCTION_27_4();
          goto LABEL_24;
        }
      }

      sub_2314ABA68(v24, v26, v146 & 1);
    }

    else
    {
      OUTLINED_FUNCTION_16_14();
      v13 = MEMORY[0x277D84F70];
      v41 = v138;
    }

LABEL_24:
    v24 = v35;
    v26 = v133;
    if (v153 + 1 == v41)
    {
      goto LABEL_77;
    }
  }

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
LABEL_122:
  __break(1u);
}

void sub_231567DCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_2314A24F0(a3, v44);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0;
LABEL_67:
    sub_23156C4BC();
    swift_allocError();
    *v42 = v21;
    swift_willThrow();
    return;
  }

  v5 = sub_231586284();
  v6 = sub_231586174();

  v7 = sub_231586174();
  v8 = [a4 stringByReplacingMatchesInString:v6 options:0 range:0 withTemplate:{v5, v7}];

  v9 = sub_2315861A4();
  v11 = v10;

  v12 = HIBYTE(v11) & 0xF;
  v13 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v14 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    goto LABEL_66;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    sub_2314CB6E0(v9, v11, 10);
    v41 = v43;
    goto LABEL_65;
  }

  if ((v11 & 0x2000000000000000) != 0)
  {
    v44[0] = v9;
    v44[1] = v11 & 0xFFFFFFFFFFFFFFLL;
    if (v9 == 43)
    {
      if (v12)
      {
        if (--v12)
        {
          v30 = 0;
          v31 = v44 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v30;
            if ((v30 * 10) >> 64 != (10 * v30) >> 63)
            {
              break;
            }

            v30 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v12)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_75:
      __break(1u);
      return;
    }

    if (v9 != 45)
    {
      if (v12)
      {
        v37 = 0;
        v38 = v44;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v37;
          if ((v37 * 10) >> 64 != (10 * v37) >> 63)
          {
            break;
          }

          v37 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v12)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v12)
    {
      if (--v12)
      {
        v22 = 0;
        v23 = v44 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v12)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_73;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    v15 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v15 = sub_2315869B4();
  }

  v16 = *v15;
  if (v16 == 43)
  {
    if (v13 < 1)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v12 = v13 - 1;
    if (v13 != 1)
    {
      v26 = 0;
      if (v15)
      {
        v27 = v15 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            goto LABEL_63;
          }

          v29 = 10 * v26;
          if ((v26 * 10) >> 64 != (10 * v26) >> 63)
          {
            goto LABEL_63;
          }

          v26 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            goto LABEL_63;
          }

          ++v27;
          if (!--v12)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_55;
    }

LABEL_63:
    LOBYTE(v12) = 1;
    goto LABEL_64;
  }

  if (v16 != 45)
  {
    if (v13)
    {
      v34 = 0;
      if (v15)
      {
        while (1)
        {
          v35 = *v15 - 48;
          if (v35 > 9)
          {
            goto LABEL_63;
          }

          v36 = 10 * v34;
          if ((v34 * 10) >> 64 != (10 * v34) >> 63)
          {
            goto LABEL_63;
          }

          v34 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            goto LABEL_63;
          }

          ++v15;
          if (!--v13)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_55;
    }

    goto LABEL_63;
  }

  if (v13 < 1)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v12 = v13 - 1;
  if (v13 == 1)
  {
    goto LABEL_63;
  }

  v17 = 0;
  if (v15)
  {
    v18 = v15 + 1;
    while (1)
    {
      v19 = *v18 - 48;
      if (v19 > 9)
      {
        goto LABEL_63;
      }

      v20 = 10 * v17;
      if ((v17 * 10) >> 64 != (10 * v17) >> 63)
      {
        goto LABEL_63;
      }

      v17 = v20 - v19;
      if (__OFSUB__(v20, v19))
      {
        goto LABEL_63;
      }

      ++v18;
      if (!--v12)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_55:
  LOBYTE(v12) = 0;
LABEL_64:
  v41 = v12;
LABEL_65:

  if (v41)
  {
LABEL_66:
    v21 = 1;
    goto LABEL_67;
  }
}

void *SignalValue.description.getter()
{
  v1 = *v0;
  switch(*(v0 + 8))
  {
    case 1:
      sub_23156A24C(*v0, sub_231571C3C, sub_231572114);
      v29 = v19;
      sub_23156A4D0(&v29);
      v11 = v29;
      if (!v29[2])
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_35_2();
      v12 = v31;
      do
      {
        if (!v11[2])
        {
          goto LABEL_25;
        }

        v20 = v11[5];
        v21 = v11[6];
        v29 = v11[4];
        v30 = v20;
        swift_bridgeObjectRetain_n();
        MEMORY[0x23192FF80](8250, 0xE200000000000000);
        v22 = sub_231586C24();
        MEMORY[0x23192FF80](v22);

        OUTLINED_FUNCTION_34_4();
        if (v17)
        {
          sub_23152D598();
          v12 = v31;
        }

        OUTLINED_FUNCTION_22_10();
      }

      while (!v18);
      goto LABEL_20;
    case 2:
      OUTLINED_FUNCTION_24_4();
      sub_231586954();

      OUTLINED_FUNCTION_12_14();
      v29 = (v6 + 2);
      v30 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A8, &unk_23158E4B0);
      v7 = swift_allocObject();
      v8 = MEMORY[0x277D839F8];
      *(v7 + 16) = xmmword_231588340;
      v9 = MEMORY[0x277D83A80];
      *(v7 + 56) = v8;
      *(v7 + 64) = v9;
      *(v7 + 32) = v1;
      v4 = sub_2315861D4();
      goto LABEL_4;
    case 3:
      sub_23156A24C(*v0, sub_231571C28, sub_23157202C);
      v29 = v10;
      sub_23156A42C(&v29);
      v11 = v29;
      if (v29[2])
      {
        OUTLINED_FUNCTION_35_2();
        v12 = v31;
        do
        {
          if (!v11[2])
          {
            __break(1u);
LABEL_25:
            __break(1u);

            __break(1u);
            return result;
          }

          v13 = v11[5];
          v14 = v11[6];
          v29 = v11[4];
          v30 = v13;
          swift_bridgeObjectRetain_n();
          MEMORY[0x23192FF80](8250, 0xE200000000000000);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A8, &unk_23158E4B0);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_231588340;
          *(v15 + 56) = MEMORY[0x277D839F8];
          *(v15 + 64) = MEMORY[0x277D83A80];
          *(v15 + 32) = v14;
          v16 = sub_2315861D4();
          MEMORY[0x23192FF80](v16);

          OUTLINED_FUNCTION_34_4();
          if (v17)
          {
            sub_23152D598();
            v12 = v31;
          }

          OUTLINED_FUNCTION_22_10();
        }

        while (!v18);
LABEL_20:
      }

      else
      {
LABEL_21:

        v12 = MEMORY[0x277D84F90];
      }

      v29 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
      sub_2314A7490();
      v23 = sub_231586154();
      v25 = v24;

      OUTLINED_FUNCTION_24_4();
      sub_231586954();

      OUTLINED_FUNCTION_12_14();
      v29 = v27;
      v30 = v26;
      MEMORY[0x23192FF80](v23, v25);
LABEL_23:

      MEMORY[0x23192FF80](62, 0xE100000000000000);
      return v29;
    default:
      OUTLINED_FUNCTION_24_4();
      sub_231586954();

      OUTLINED_FUNCTION_12_14();
      v29 = (v3 + 2);
      v30 = v2;
      v31 = v1;
      v4 = sub_231586C24();
LABEL_4:
      MEMORY[0x23192FF80](v4);
      goto LABEL_23;
  }
}

uint64_t static SignalValue.of(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2314A2C74(a1, v7);
  type metadata accessor for SignalValue.Computation();
  swift_allocObject();
  v3 = sub_2315686E4(v7);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_2315074D0(v4, v5);

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2315686E4(uint64_t *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = -1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 8);
  v6 = *(v5 + 24);

  v6(sub_23156C4B4, v1, v3, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_231568790(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  *(a2 + 16) = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 24);
  *(a2 + 24) = v4;
  sub_2314A5168(v2, v4);

  return sub_2314D70F4(v3, v5);
}

uint64_t sub_2315687E8()
{
  sub_2314D70F4(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t static SignalValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 1u:
      if (v5 != 1)
      {
        goto LABEL_11;
      }

      sub_2314A5168(*a2, 1u);
      sub_2314A5168(v2, 1u);
      v8 = sub_2315689AC(v2, v4);
      sub_2314A5EEC(v2, 1u);
      v9 = v4;
      v10 = 1;
      goto LABEL_10;
    case 2u:
      if (v5 != 2)
      {
        goto LABEL_12;
      }

      v7 = *a2;
      sub_2314A5EEC(*a1, 2u);
      sub_2314A5EEC(v4, 2u);
      result = *&v2 == *&v4;
      break;
    case 3u:
      if (v5 == 3)
      {
        sub_2314A5168(*a2, 3u);
        sub_2314A5168(v2, 3u);
        v8 = sub_231568AE0(v2, v4);
        sub_2314A5EEC(v2, 3u);
        v9 = v4;
        v10 = 3;
LABEL_10:
        sub_2314A5EEC(v9, v10);
        result = v8 & 1;
      }

      else
      {
LABEL_11:
        v11 = *a1;

LABEL_12:
        sub_2314A5168(v4, v5);
        sub_2314A5EEC(v2, v3);
        sub_2314A5EEC(v4, v5);
        result = 0;
      }

      break;
    default:
      if (*(a2 + 8))
      {
        goto LABEL_12;
      }

      sub_2314A5EEC(*a1, 0);
      sub_2314A5EEC(v4, 0);
      result = v2 == v4;
      break;
  }

  return result;
}

uint64_t sub_2315689AC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_23149C888(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231568AE0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_23149C888(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231568C1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E657065646E69 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_231586C44() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65646E65706564 && a2 == 0xE900000000000074;
    if (v6 || (sub_231586C44() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000002315935E0 == a2;
      if (v7 || (sub_231586C44() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E65646E65706564 && a2 == 0xEF656C62756F4474)
      {

        return 3;
      }

      else
      {
        v9 = sub_231586C44();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_231568D98(char a1)
{
  result = 0x646E657065646E69;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0x6E65646E65706564;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231568E34(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_231586C44();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_231568EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231568C1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231568ED4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231568D90();
  *a1 = result;
  return result;
}

uint64_t sub_231568EFC(uint64_t a1)
{
  v2 = sub_23156B654();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231568F38(uint64_t a1)
{
  v2 = sub_23156B654();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231568F94@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_43();
  *a1 = result & 1;
  return result;
}

uint64_t sub_231568FC0(uint64_t a1)
{
  v2 = sub_23156B750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231568FFC(uint64_t a1)
{
  v2 = sub_23156B750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231569038(uint64_t a1)
{
  v2 = sub_23156B6A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231569074(uint64_t a1)
{
  v2 = sub_23156B6A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2315690B0(uint64_t a1)
{
  v2 = sub_23156B804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2315690EC(uint64_t a1)
{
  v2 = sub_23156B804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231569128(uint64_t a1)
{
  v2 = sub_23156B6FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231569164(uint64_t a1)
{
  v2 = sub_23156B6FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SignalValue.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BFF8, &qword_23158E4C0);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v59 = v6;
  v60 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_43_2();
  v58 = v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C000, &qword_23158E4C8);
  OUTLINED_FUNCTION_4_1(v57);
  v55 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_43_2();
  v53 = v15;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C008, &qword_23158E4D0);
  OUTLINED_FUNCTION_4_1(v56);
  v54 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C010, &qword_23158E4D8);
  OUTLINED_FUNCTION_4_1(v22);
  v52 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v26);
  v28 = &v51 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C018, &qword_23158E4E0);
  v30 = OUTLINED_FUNCTION_4_1(v29);
  v61 = v31;
  v62 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v34);
  v36 = &v51 - v35;
  v37 = *v2;
  v38 = *(v2 + 8);
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23156B654();
  sub_231586D64();
  switch(v38)
  {
    case 1:
      LOBYTE(v63) = 1;
      sub_23156B750();
      OUTLINED_FUNCTION_46_2(&type metadata for SignalValue.DependentCodingKeys, &v63);
      v63 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B2E8, &unk_23158B460);
      OUTLINED_FUNCTION_5_28();
      sub_23156B7A4(v46);
      v47 = v56;
      sub_231586C04();
      (*(v54 + 8))(v21, v47);
      goto LABEL_7;
    case 2:
      LOBYTE(v63) = 2;
      sub_23156B6FC();
      v40 = v53;
      OUTLINED_FUNCTION_47_1(&type metadata for SignalValue.IndependentDoubleCodingKeys, &v63);
      v41 = v57;
      sub_231586BE4();
      (*(v55 + 8))(v40, v41);
      return (*(v61 + 8))(v36, v21);
    case 3:
      LOBYTE(v63) = 3;
      sub_23156B6A8();
      v43 = v58;
      OUTLINED_FUNCTION_46_2(&type metadata for SignalValue.DependentDoubleCodingKeys, &v63);
      v63 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C020, &unk_23158E4E8);
      OUTLINED_FUNCTION_5_28();
      sub_23156BB84(v44);
      v45 = v60;
      sub_231586C04();
      (*(v59 + 8))(v43, v45);
LABEL_7:
      v48 = OUTLINED_FUNCTION_26_5();
      return v50(v48, v49);
    default:
      LOBYTE(v63) = 0;
      sub_23156B804();
      OUTLINED_FUNCTION_47_1(&type metadata for SignalValue.IndependentCodingKeys, &v63);
      sub_231586BF4();
      (*(v52 + 8))(v28, v22);
      return (*(v61 + 8))(v36, v21);
  }
}

uint64_t SignalValue.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 8))
  {
    case 1:
      MEMORY[0x231930A00](1);

      result = sub_23156B970(a1, v2);
      break;
    case 2:
      MEMORY[0x231930A00](2);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v2;
      }

      else
      {
        v5 = 0;
      }

      result = MEMORY[0x231930A10](v5);
      break;
    case 3:
      MEMORY[0x231930A00](3);

      result = sub_23156B858(a1, v2);
      break;
    default:
      MEMORY[0x231930A00](0);
      result = MEMORY[0x231930A00](v2);
      break;
  }

  return result;
}

uint64_t SignalValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_231586D14();
  switch(v2)
  {
    case 1:
      v14 = MEMORY[0x231930A00](1);
      v22 = OUTLINED_FUNCTION_42_2(v14, v15, v16, v17, v18, v19, v20, v21, v25, v26);
      sub_23156B970(v22, v23);
      break;
    case 2:
      MEMORY[0x231930A00](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      MEMORY[0x231930A10](v3);
      break;
    case 3:
      v4 = MEMORY[0x231930A00](3);
      v12 = OUTLINED_FUNCTION_42_2(v4, v5, v6, v7, v8, v9, v10, v11, v25, v26);
      sub_23156B858(v12, v13);
      break;
    default:
      MEMORY[0x231930A00](0);
      MEMORY[0x231930A00](v1);
      break;
  }

  return sub_231586D44();
}

uint64_t SignalValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C030, &qword_23158E4F8);
  OUTLINED_FUNCTION_4_1(v92);
  v88 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_43_2();
  v91 = v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C038, &qword_23158E500);
  OUTLINED_FUNCTION_4_1(v84);
  v86 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_43_2();
  v89 = v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C040, &qword_23158E508);
  OUTLINED_FUNCTION_4_1(v87);
  v85 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v16);
  v18 = v83 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C048, &qword_23158E510);
  OUTLINED_FUNCTION_4_1(v19);
  v83[5] = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v23);
  v25 = v83 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C050, &qword_23158E518);
  OUTLINED_FUNCTION_4_1(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v31);
  v32 = a1[3];
  v33 = a1[4];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_23156B654();
  v34 = v94;
  sub_231586D54();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(v93);
  }

  v83[3] = v25;
  v83[4] = v18;
  v35 = v92;
  v94 = v28;
  v36 = sub_231586B94();
  result = sub_23156B5E8(v36, 0);
  if (v39 == v40 >> 1)
  {
    goto LABEL_7;
  }

  v83[1] = 0;
  if (v39 >= (v40 >> 1))
  {
    __break(1u);
    return result;
  }

  v41 = *(v38 + v39);
  v42 = sub_23156BB08(v39 + 1, v40 >> 1, result, v38, v39, v40);
  v44 = v43;
  v46 = v45;
  swift_unknownObjectRelease();
  v83[2] = v42;
  if (v44 != v46 >> 1)
  {
LABEL_7:
    v49 = sub_2315869A4();
    swift_allocError();
    v51 = v50;
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C058, &qword_23158E520) + 48);
    *v51 = &type metadata for SignalValue;
    sub_231586B24();
    sub_231586994();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84160], v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    v53 = OUTLINED_FUNCTION_32_3();
    v54(v53, v26);
    return __swift_destroy_boxed_opaque_existential_1(v93);
  }

  v47 = v41;
  v48 = v90;
  switch(v41)
  {
    case 1:
      LOBYTE(v95) = 1;
      sub_23156B750();
      OUTLINED_FUNCTION_8_23(&type metadata for SignalValue.DependentCodingKeys, &v95);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B2E8, &unk_23158B460);
      OUTLINED_FUNCTION_4_29();
      sub_23156B7A4(v59);
      sub_231586B84();
      v60 = v94;
      swift_unknownObjectRelease();
      v78 = OUTLINED_FUNCTION_38_1();
      v79(v78);
      v80 = *(v60 + 8);
      v81 = OUTLINED_FUNCTION_7_0();
      v82(v81);
      v73 = v95;
      goto LABEL_12;
    case 2:
      LOBYTE(v95) = 2;
      sub_23156B6FC();
      OUTLINED_FUNCTION_8_23(&type metadata for SignalValue.IndependentDoubleCodingKeys, &v95);
      v55 = v93;
      sub_231586B64();
      v56 = v94;
      v62 = v61;
      swift_unknownObjectRelease();
      v63 = OUTLINED_FUNCTION_26_5();
      v64(v63);
      v65 = *(v56 + 8);
      v66 = OUTLINED_FUNCTION_7_0();
      v67(v66);
      v73 = v62;
      v48 = v90;
      break;
    case 3:
      v89 = v41;
      LOBYTE(v95) = 3;
      sub_23156B6A8();
      OUTLINED_FUNCTION_8_23(&type metadata for SignalValue.DependentDoubleCodingKeys, &v95);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C020, &unk_23158E4E8);
      OUTLINED_FUNCTION_4_29();
      sub_23156BB84(v57);
      sub_231586B84();
      v58 = v94;
      swift_unknownObjectRelease();
      v68 = OUTLINED_FUNCTION_32_3();
      v69(v68, v35);
      v70 = *(v58 + 8);
      v71 = OUTLINED_FUNCTION_7_0();
      v72(v71);
      v73 = v95;
      v55 = v93;
      v47 = v89;
      break;
    default:
      LOBYTE(v95) = 0;
      sub_23156B804();
      OUTLINED_FUNCTION_8_23(&type metadata for SignalValue.IndependentCodingKeys, &v95);
      v73 = sub_231586B74();
      swift_unknownObjectRelease();
      v74 = OUTLINED_FUNCTION_32_3();
      v75(v74, v19);
      v76 = OUTLINED_FUNCTION_1_39();
      v77(v76);
LABEL_12:
      v55 = v93;
      break;
  }

  *v48 = v73;
  *(v48 + 8) = v47;
  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_23156A0F4()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_231586D14();
  SignalValue.hash(into:)(v3);
  return sub_231586D44();
}

id sub_23156A144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_231586174();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_2315856D4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_23156A24C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_28_3();
    v8 = v7(v6);
    a3(v10, v8 + 32, v4, v3);
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_51_1();
    if (!v9)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_49_0();
}

void *sub_23156A2DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = OUTLINED_FUNCTION_28_3();
  v5 = sub_231571C50(v3, v4);
  v6 = sub_2315721FC(&v8, v5 + 4, v2, v1);

  if (v6 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v5;
}

void sub_23156A368(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = OUTLINED_FUNCTION_28_3();
    sub_231571D5C(v1, v2);
    v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80) - 8) + 80);
    sub_231572430();
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_51_1();
    if (!v4)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_49_0();
}

uint64_t sub_23156A42C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_231562A94(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_23156A574(v5, &qword_27DD5BEF0, &unk_23158ECD0, sub_23156A844, sub_23156A690);
  *a1 = v2;
  return result;
}

uint64_t sub_23156A4D0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_231562AAC(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_23156A574(v5, &qword_27DD5BEE0, &qword_23158E118, sub_23156AD98, sub_23156A76C);
  *a1 = v2;
  return result;
}

uint64_t sub_23156A574(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_231586C14();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_2315863E4();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_23156A690(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == v12[1])
        {
          break;
        }

        result = sub_231586C44();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = v12[3];
        v10 = v12[4];
        v14 = v12[5];
        v15 = v12[2];
        *(v12 + 3) = *v12;
        v12[5] = v15;
        *v12 = result;
        v12[1] = v10;
        v12[2] = v14;
        v12 -= 3;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_23156A76C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == v12[1])
        {
          break;
        }

        result = sub_231586C44();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = v12[4];
        v14 = v12[5];
        v15 = v12[2];
        result = v12[3];
        *(v12 + 3) = *v12;
        v12[5] = v15;
        *v12 = result;
        v12[1] = v10;
        v12[2] = v14;
        v12 -= 3;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23156A844(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v98 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_231586C44();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_231586C44()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = v25[1];
              v29 = v25[2];
              v30 = *v26;
              *v25 = *(v26 - 1);
              v25[2] = v30;
              *(v26 - 2) = v27;
              *(v26 - 1) = v28;
              *v26 = v29;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v31 = a3[1];
      if (v7 < v31)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = v9 + a4;
          }

          if (v32 < v9)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 != v32)
          {
            v33 = *a3;
            v34 = *a3 + 24 * v7 - 24;
            v95 = v9;
            v35 = v9 - v7;
            do
            {
              v36 = (v33 + 24 * v7);
              v37 = *v36;
              v38 = v36[1];
              v39 = v35;
              v40 = v34;
              do
              {
                v41 = v37 == *v40 && v38 == v40[1];
                if (v41 || (sub_231586C44() & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_125;
                }

                v37 = v40[3];
                v38 = v40[4];
                v42 = v40[5];
                v43 = v40[2];
                *(v40 + 3) = *v40;
                v40[5] = v43;
                *v40 = v37;
                v40[1] = v38;
                v40[2] = v42;
                v40 -= 3;
              }

              while (!__CFADD__(v39++, 1));
              ++v7;
              v34 += 24;
              --v35;
            }

            while (v7 != v32);
            v7 = v32;
            v9 = v95;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = v8[2];
        sub_2314F0BEC();
        v8 = v90;
      }

      v45 = v8[2];
      v46 = v45 + 1;
      if (v45 >= v8[3] >> 1)
      {
        sub_2314F0BEC();
        v8 = v91;
      }

      v8[2] = v46;
      v47 = v8 + 4;
      v48 = &v8[2 * v45 + 4];
      *v48 = v9;
      v48[1] = v7;
      v96 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v45)
      {
        v94 = v8 + 4;
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v8[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v8[4];
            v53 = v8[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_70:
            if (v55)
            {
              goto LABEL_110;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_113;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_118;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v46 < 2)
          {
            goto LABEL_112;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_85:
          if (v70)
          {
            goto LABEL_115;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (v77 < v69)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v49 - 1 >= v46)
          {
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
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = v49;
          v84 = &v47[2 * v49];
          v85 = v84[1];
          sub_23156B420((*a3 + 24 * *v81), (*a3 + 24 * *v84), *a3 + 24 * v85, v96);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v85 < v82)
          {
            goto LABEL_105;
          }

          v86 = v8;
          v87 = v8[2];
          if (v83 > v87)
          {
            goto LABEL_106;
          }

          *v81 = v82;
          v81[1] = v85;
          if (v83 >= v87)
          {
            goto LABEL_107;
          }

          v46 = v87 - 1;
          memmove(v84, v84 + 2, 16 * (v87 - 1 - v83));
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v8 = v86;
          v5 = 0;
          v47 = v94;
          if (!v88)
          {
            goto LABEL_99;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_108;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_109;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_111;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_114;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v98 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_23156B2E8(&v98, *a1, a3);
LABEL_103:
}