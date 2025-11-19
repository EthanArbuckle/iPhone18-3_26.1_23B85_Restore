uint64_t sub_231208A04()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = v2[17];
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[18] = v0;

  if (v0)
  {
    v7 = sub_231208B74;
  }

  else
  {
    v9 = v3[15];
    v8 = v3[16];

    v7 = sub_231208B14;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_231208B14()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_56_0();

  return v2();
}

uint64_t sub_231208B74()
{
  v29 = v0;
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_231369100();
  v5 = v1;
  v6 = sub_2313698A0();
  v7 = sub_23136A3B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 144);
    v9 = *(v0 + 104);
    v27 = *(v0 + 112);
    v10 = *(v0 + 96);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    OUTLINED_FUNCTION_16_5(4.8149e-34);
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 72);
    v16 = sub_23136A980();
    v18 = sub_2311CFD58(v16, v17, &v28);

    *(v11 + 4) = v18;
    OUTLINED_FUNCTION_14_5(&dword_2311CB000, v19, v20, "Error caching trial experiment identifiers: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v9 + 8))(v27, v10);
  }

  else
  {
    v22 = *(v0 + 104);
    v21 = *(v0 + 112);
    v23 = *(v0 + 96);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 112);

  OUTLINED_FUNCTION_56_0();

  return v25();
}

uint64_t TrialTriggerLogger.emitTriggerFromCache(requestID:)()
{
  OUTLINED_FUNCTION_8();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_2313698C0();
  v1[13] = v3;
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_3_3();
  v1[14] = v5;
  v7 = *(v6 + 64);
  v1[15] = OUTLINED_FUNCTION_43();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43768, &qword_23136D5F0) - 8) + 64);
  v1[16] = OUTLINED_FUNCTION_43();
  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231208E04()
{
  sub_2311CF324(v0[12] + 16, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  if (qword_280F82FD0 != -1)
  {
    OUTLINED_FUNCTION_4_4();
  }

  v3 = v0[16];
  v4 = v0[11];
  v5 = sub_2313667A0();
  __swift_project_value_buffer(v5, qword_280F8E660);
  v6 = sub_231366780();
  v0[17] = v6;
  sub_2312094E4(v4, v3);
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) != 1)
  {
    v8 = v0[16];
    v7 = sub_231366780();
    (*(*(v5 - 8) + 8))(v8, v5);
  }

  v0[18] = v7;
  v9 = *(v2 + 8);
  OUTLINED_FUNCTION_3_3();
  v15 = (v10 + *v10);
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  v0[19] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_34_0(v13);

  return v15(v6, v7, v1, v2);
}

uint64_t sub_231209010()
{
  OUTLINED_FUNCTION_12();
  v3 = v2[19];
  v4 = v2[18];
  v5 = v2[17];
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 160) = v0;

  if (v0)
  {
    v9 = sub_2312091B8;
  }

  else
  {
    v9 = sub_231209150;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_231209150()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[15];
  v1 = v0[16];

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_2312091B8()
{
  v28 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_231369100();
  v3 = v1;
  v4 = sub_2313698A0();
  v5 = sub_23136A3B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 160);
    v7 = *(v0 + 112);
    v26 = *(v0 + 120);
    v8 = *(v0 + 104);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    OUTLINED_FUNCTION_16_5(4.8149e-34);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 72);
    v14 = sub_23136A980();
    v16 = sub_2311CFD58(v14, v15, &v27);

    *(v9 + 4) = v16;
    OUTLINED_FUNCTION_14_5(&dword_2311CB000, v17, v18, "Error emitting trigger event from cache: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v7 + 8))(v26, v8);
  }

  else
  {
    v20 = *(v0 + 112);
    v19 = *(v0 + 120);
    v21 = *(v0 + 104);

    (*(v20 + 8))(v19, v21);
  }

  v23 = *(v0 + 120);
  v22 = *(v0 + 128);

  OUTLINED_FUNCTION_56_0();

  return v24();
}

uint64_t TrialTriggerLogger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_9_5();

  return swift_deallocClassInstance();
}

uint64_t sub_2312093BC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209AAC;

  return TrialTriggerLogger.cacheTrialExperimentIdentifiers()();
}

uint64_t sub_23120944C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209AAC;

  return TrialTriggerLogger.emitTriggerFromCache(requestID:)();
}

uint64_t sub_2312094E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43768, &qword_23136D5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of TriggerLogger.cacheTrialExperimentIdentifiers()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  OUTLINED_FUNCTION_3_3();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_30(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_34_0(v9);

  return v12(a1, a2);
}

uint64_t dispatch thunk of TriggerLogger.emitTriggerFromCache(requestID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  OUTLINED_FUNCTION_3_3();
  v14 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_30(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_34_0(v11);

  return v14(a1, a2, a3);
}

uint64_t dispatch thunk of ExperimentationAnalyticsProtocol.emitTriggerFromCache(for:requestID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(OUTLINED_FUNCTION_10_5(a1, a2, a3, a4) + 8);
  OUTLINED_FUNCTION_3_3();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_30(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_6_4(v9);

  return v12(v11);
}

uint64_t dispatch thunk of ExperimentationAnalyticsProtocol.cacheTrialExperimentIdentifiers(for:namespaces:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(OUTLINED_FUNCTION_10_5(a1, a2, a3, a4) + 16);
  OUTLINED_FUNCTION_3_3();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_30(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_6_4(v9);

  return v12(v11);
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

uint64_t sub_231209AF0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_231209C08;

  return v9(a1, a2);
}

uint64_t sub_231209C08()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_231209CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_231209EB0;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_231209E30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_231209E58()
{
  sub_231209E30();

  return swift_deallocClassInstance();
}

uint64_t sub_231209EC8()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_231209F1C(uint64_t a1)
{
  result = sub_231209F44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231209F44()
{
  result = qword_280F82120;
  if (!qword_280F82120)
  {
    type metadata accessor for DisabledMotionManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F82120);
  }

  return result;
}

uint64_t sub_231209FB4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43778, &unk_23136D960);
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  v4 = sub_231369EE0();
  sub_23120A02C(v4, v2);
  return v3;
}

uint64_t sub_23120A02C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2313698C0();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  sub_231369EE0();
  v14 = sub_2313698A0();
  v15 = sub_23136A390();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v9;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    v19 = sub_231366690();
    v20 = MEMORY[0x23192A860](a1, v19);
    v22 = sub_2311CFD58(v20, v21, &v30);
    v28 = v6;
    v23 = v3;
    v24 = a2;
    v25 = v22;

    *(v17 + 4) = v25;
    a2 = v24;
    v3 = v23;
    _os_log_impl(&dword_2311CB000, v14, v15, "Creating generator bundle scanner from %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v29 + 8))(v13, v28);
  }

  else
  {

    (*(v9 + 8))(v13, v6);
  }

  *(v3 + 16) = a2;
  *(v3 + 24) = a1;
  return v3;
}

uint64_t sub_23120A218()
{
  v1 = v0;
  v2 = sub_2313698C0();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v11 = sub_2312980F8();
  sub_231369100();

  sub_231369EE0();
  v12 = sub_2313698A0();
  v13 = sub_23136A390();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = *(v1 + 24);
    v16 = sub_231366690();
    v17 = MEMORY[0x23192A860](v15, v16);
    v19 = sub_2311CFD58(v17, v18, &v27);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43770, &unk_231373CE0);
    v21 = MEMORY[0x23192A860](v11, v20);
    v23 = sub_2311CFD58(v21, v22, &v27);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_2311CB000, v12, v13, "Loading generators from bundle at: %s with classes: %s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  (*(v5 + 8))(v9, v2);
  type metadata accessor for DefaultGeneratorProvider();
  inited = swift_initStackObject();
  inited[3] = 0xD000000000000018;
  inited[4] = 0x800000023137CCA0;
  inited[2] = v11;
  v25 = DefaultGeneratorProvider.generatorsAvailable()();
  swift_setDeallocating();
  DefaultGeneratorProvider.deinit();
  swift_deallocClassInstance();
  return v25;
}

uint64_t sub_23120A48C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_23120A4B4()
{
  sub_23120A48C();

  return swift_deallocClassInstance();
}

uint64_t sub_23120A50C()
{
  v2 = *v0;
  v3 = sub_23120A218();
  v4 = *(v1 + 8);

  return v4(v3);
}

unint64_t sub_23120A58C(uint64_t a1)
{
  result = sub_23120A5B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23120A5B4()
{
  result = qword_280F81350;
  if (!qword_280F81350)
  {
    type metadata accessor for BundleGeneratorProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F81350);
  }

  return result;
}

uint64_t sub_23120A608(uint64_t *a1)
{
  v2 = *(type metadata accessor for RankedCandidateSuggestion() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E65A4(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_23120B4F4(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_23120A6B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_231367C70();
  v3[5] = v4;
  OUTLINED_FUNCTION_0(v4);
  v3[6] = v5;
  v7 = *(v6 + 64);
  v3[7] = OUTLINED_FUNCTION_43();
  v8 = sub_231367290();
  v3[8] = v8;
  OUTLINED_FUNCTION_0(v8);
  v3[9] = v9;
  v11 = *(v10 + 64);
  v3[10] = OUTLINED_FUNCTION_43();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43780, &qword_231377300) - 8) + 64);
  v3[11] = OUTLINED_FUNCTION_43();
  v13 = sub_231367300();
  v3[12] = v13;
  OUTLINED_FUNCTION_0(v13);
  v3[13] = v14;
  v16 = *(v15 + 64);
  v3[14] = OUTLINED_FUNCTION_43();
  v17 = type metadata accessor for RankedCandidateSuggestion();
  v3[15] = v17;
  OUTLINED_FUNCTION_0(v17);
  v3[16] = v18;
  v20 = *(v19 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23120A8E8, 0, 0);
}

uint64_t sub_23120A8E8()
{
  v120 = v0;
  v2 = 0;
  OUTLINED_FUNCTION_1_10();
  v3 = v0[16];
  v118 = v0[15];
  v4 = *(v0[2] + 16);
  while (1)
  {
    if (v4 == v2)
    {
      v17 = 0;
      v99 = 1;
      v18 = MEMORY[0x277D84F90];
      goto LABEL_20;
    }

    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = *(v3 + 72);
    v7 = v0[2] + v5 + v6 * v2;
    v8 = (v7 + *(v118 + 20));
    v9 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_231368320();
    OUTLINED_FUNCTION_3_7();
    v11 = v11 && v10 == v1;
    if (v11)
    {
    }

    else
    {
      v12 = sub_23136A900();

      if ((v12 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v13 = v0[22];
    sub_23120B41C(v7 + *(v118 + 24), v13);
    v14 = sub_231366E80();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
    v16 = v0[22];
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    v1 = sub_231366E60();
    (*(*(v14 - 8) + 8))(v16, v14);
    if (v1)
    {
      goto LABEL_15;
    }

LABEL_12:
    ++v2;
    OUTLINED_FUNCTION_1_10();
  }

  sub_23120B48C(v0[22]);
LABEL_15:
  v19 = v0[3];
  v20 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v21 = sub_2313677F0();
  if (v21 != 2 && (v21 & 1) != 0)
  {
    v22 = v0[19];
    v23 = v0[14];
    v113 = v0[20];
    v115 = v0[15];
    v24 = v0[13];
    v109 = v0[12];
    v25 = v0[11];
    v26 = v0[9];
    v111 = v0[8];
    sub_2311E1984(v7, v22);
    (*(v24 + 16))(v23, v7, v109);
    v27 = *(v26 + 104);
    v1 = v26 + 104;
    v27(v25, *MEMORY[0x277D60720], v111);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v111);
    sub_2313672A0();
    sub_2311CF324(v22 + *(v118 + 20), v113 + *(v118 + 20));
    sub_23120B41C(v22 + *(v118 + 24), v113 + *(v118 + 24));
    v28 = *(v115 + 28);
    v29 = sub_231369050();
    OUTLINED_FUNCTION_11(v29);
    (*(v30 + 16))(v113 + v28, v22 + v28);
    sub_2311E1928(v22);
    sub_23126DA48(0, 1, 1, MEMORY[0x277D84F90]);
    v18 = v31;
    v33 = *(v31 + 16);
    v32 = *(v31 + 24);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      goto LABEL_55;
    }

    goto LABEL_18;
  }

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v99 = 1;
  OUTLINED_FUNCTION_1_10();
LABEL_20:
  v119[0] = v0[2];
  sub_231369EE0();
  sub_23120A608(v119);
  v6 = *(v119[0] + 16);
  if (v6)
  {
    v110 = v0[15];
    v36 = v0[9];
    v37 = v0[6];
    v98 = v0[4];
    v108 = v0[3];
    v107 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v38 = v119[0] + v107;
    v33 = *(v3 + 72);
    v105 = (v37 + 88);
    v104 = *MEMORY[0x277D60AC0];
    v95 = (v37 + 96);
    v96 = (v37 + 8);
    v94 = *MEMORY[0x277D60DB8];
    v93 = *MEMORY[0x277D60720];
    v103 = (v36 + 104);
    v101 = (v36 + 16);
    v102 = (v0[13] + 16);
    v100 = (v36 + 8);
    v97 = *MEMORY[0x277D60728];
    v106 = v33;
    while (1)
    {
      v39 = v0[18];
      sub_2311E1984(v38, v39);
      v40 = (v39 + *(v118 + 20));
      v41 = v40[4];
      __swift_project_boxed_opaque_existential_1(v40, v40[3]);
      sub_231368320();
      OUTLINED_FUNCTION_3_7();
      if (v11 && v42 == v1)
      {
      }

      else
      {
        v44 = sub_23136A900();

        if ((v44 & 1) == 0)
        {
          v45 = v0[21];
          sub_23120B41C(v0[18] + *(v118 + 24), v45);
          v5 = sub_231366E80();
          v46 = __swift_getEnumTagSinglePayload(v45, 1, v5);
          v34 = v0[21];
          v112 = v6;
          if (v46 == 1)
          {
            sub_23120B48C(v34);
LABEL_31:
            if (__OFADD__(v17++, 1))
            {
              __break(1u);
LABEL_55:
              OUTLINED_FUNCTION_4_5(v32);
              v18 = v92;
LABEL_18:
              OUTLINED_FUNCTION_1_10();
              v35 = v0[20];
              *(v18 + 16) = v34;
              sub_2311E18C4(v35, v18 + v5 + v33 * v6);
              v99 = 0;
              v17 = 1;
              goto LABEL_20;
            }
          }

          else
          {
            v1 = sub_231366E60();
            (*(*(v5 - 8) + 8))(v34, v5);
            if (v1)
            {
              goto LABEL_31;
            }
          }

          v48 = v0[7];
          v49 = v0[5];
          v50 = *(v108 + 32);
          __swift_project_boxed_opaque_existential_1(v0[3], *(v108 + 24));
          sub_2313677D0();
          v51 = (*v105)(v48, v49);
          v52 = v0[7];
          v53 = v0[5];
          v114 = v17;
          v116 = v18;
          if (v51 != v104)
          {
            (*v96)(v52, v53);
            v61 = *v103;
            goto LABEL_39;
          }

          (*v95)(v52, v53);
          v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
          v55 = sub_2313681A0();
          v56 = *(v55 - 8);
          v57 = (*(v56 + 88))(v52, v55);
          v58 = sub_231368210();
          OUTLINED_FUNCTION_11(v58);
          (*(v59 + 8))(v52 + v54);
          (*(v56 + 8))(v52, v55);
          if (v57 == v94)
          {
            v60 = v99;
          }

          else
          {
            v60 = 1;
          }

          v61 = *v103;
          if (v60)
          {
            v17 = v114;
LABEL_39:
            v62 = v0[10];
            v63 = v0[8];
            if (*(v98 + 32) >= v17)
            {
              v64 = v93;
LABEL_43:
              v61(v62, v64, v63);
              v66 = v0[18];
              v65 = v0[19];
              v67 = v0[17];
              v1 = v0[14];
              v68 = v0[11];
              v69 = v0[12];
              v70 = v0[10];
              v71 = v0[8];
              sub_2311E1984(v66, v65);
              (*v102)(v1, v66, v69);
              (*v101)(v68, v70, v71);
              __swift_storeEnumTagSinglePayload(v68, 0, 1, v71);
              sub_2313672A0();
              sub_2311CF324(v65 + *(v118 + 20), v67 + *(v118 + 20));
              sub_23120B41C(v65 + *(v118 + 24), v67 + *(v118 + 24));
              v72 = *(v110 + 28);
              v73 = sub_231369050();
              OUTLINED_FUNCTION_11(v73);
              (*(v74 + 16))(v67 + v72, v65 + v72);
              sub_2311E1928(v65);
              v18 = v116;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_23126DA48(0, *(v116 + 16) + 1, 1, v116);
                v18 = v78;
              }

              OUTLINED_FUNCTION_1_10();
              v6 = v112;
              v17 = v114;
              v76 = *(v18 + 16);
              v75 = *(v18 + 24);
              if (v76 >= v75 >> 1)
              {
                OUTLINED_FUNCTION_4_5(v75);
                v18 = v79;
              }

              v3 = v0[17];
              (*v100)(v0[10], v0[8]);
              *(v18 + 16) = v76 + 1;
              v77 = v18 + v107 + v76 * v106;
              v33 = v106;
              sub_2311E18C4(v3, v77);
              goto LABEL_48;
            }
          }

          else
          {
            v62 = v0[10];
            v63 = v0[8];
          }

          v64 = v97;
          goto LABEL_43;
        }
      }

LABEL_48:
      sub_2311E1928(v0[18]);
      v38 += v33;
      if (!--v6)
      {
        v117 = v18;
        goto LABEL_51;
      }
    }
  }

  v117 = v18;
LABEL_51:

  v81 = v0[21];
  v80 = v0[22];
  v83 = v0[19];
  v82 = v0[20];
  v85 = v0[17];
  v84 = v0[18];
  v86 = v0[14];
  v88 = v0[10];
  v87 = v0[11];
  v89 = v0[7];

  v90 = v0[1];

  return v90(v117);
}

uint64_t sub_23120B278(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23120B320;

  return sub_23120A6B0(a1, a2);
}

uint64_t sub_23120B320(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_23120B41C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23120B48C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23120B4F4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23136A8A0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for RankedCandidateSuggestion();
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for RankedCandidateSuggestion() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23120B82C(v8, v9, a1, v4);
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
    return sub_23120B624(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23120B624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for RankedCandidateSuggestion();
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *(v16 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v36 = *a4;
    v30 = v19;
    v23 = v36 + v19 * a3;
    while (2)
    {
      v34 = v20;
      v35 = a3;
      v32 = v23;
      v33 = v22;
      v24 = v22;
      v25 = v20;
      do
      {
        sub_2311E1984(v23, v18);
        sub_2311E1984(v25, v14);
        v26 = sub_2313672C0();
        v27 = sub_2313672C0();
        sub_2311E1928(v14);
        result = sub_2311E1928(v18);
        if (v26 >= v27)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return result;
        }

        sub_2311E18C4(v23, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_2311E18C4(v11, v25);
        v25 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v24++, 1));
      a3 = v35 + 1;
      v20 = v34 + v30;
      v22 = v33 - 1;
      v23 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23120B82C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v103 = a1;
  v117 = type metadata accessor for RankedCandidateSuggestion();
  v110 = *(v117 - 8);
  v7 = *(v110 + 64);
  v8 = MEMORY[0x28223BE20](v117);
  v107 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v116 = &v101 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v101 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v101 - v15;
  v112 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_101:
    v4 = *v103;
    if (!*v103)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v113;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_103:
      v114 = v19;
      v94 = (v19 + 16);
      for (i = *(v19 + 2); ; *v94 = i)
      {
        v19 = (i - 2);
        if (i < 2)
        {
          break;
        }

        if (!*v112)
        {
          goto LABEL_138;
        }

        v96 = &v114[16 * i];
        v97 = *v96;
        v98 = &v94[2 * i];
        v99 = *(v98 + 1);
        sub_23120C044(*v112 + *(v110 + 72) * *v96, *v112 + *(v110 + 72) * *v98, *v112 + *(v110 + 72) * v99, v4);
        if (v16)
        {
          break;
        }

        if (v99 < v97)
        {
          goto LABEL_126;
        }

        if (v19 >= *v94)
        {
          goto LABEL_127;
        }

        *v96 = v97;
        *(v96 + 1) = v99;
        v100 = *v94 - i;
        if (*v94 < i)
        {
          goto LABEL_128;
        }

        i = *v94 - 1;
        sub_2311E6448(v98 + 16, v100, v98);
      }

LABEL_99:

      return;
    }

LABEL_135:
    v19 = sub_2311E6430(v19);
    goto LABEL_103;
  }

  v102 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v104 = v18;
    if (v18 + 1 < v17)
    {
      v114 = v19;
      v22 = *v112;
      v23 = *(v110 + 72);
      v4 = v18;
      v24 = *v112 + v23 * v21;
      sub_2311E1984(v24, v16);
      sub_2311E1984(v22 + v23 * v4, v14);
      v109 = sub_2313672C0();
      v108 = sub_2313672C0();
      sub_2311E1928(v14);
      sub_2311E1928(v16);
      v25 = (v4 + 2);
      v111 = v23;
      v26 = v22 + v23 * (v4 + 2);
      while (1)
      {
        v19 = v25;
        v27 = v21 + 1;
        if (v27 >= v17)
        {
          break;
        }

        v115 = v27;
        v28 = v17;
        v29 = v109 < v108;
        sub_2311E1984(v26, v16);
        sub_2311E1984(v24, v14);
        v4 = sub_2313672C0();
        v30 = sub_2313672C0();
        sub_2311E1928(v14);
        sub_2311E1928(v16);
        v31 = v29 ^ (v4 >= v30);
        v17 = v28;
        v21 = v115;
        v26 += v111;
        v24 += v111;
        v25 = v19 + 1;
        if ((v31 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v21 = v17;
LABEL_9:
      if (v109 < v108)
      {
        v20 = v104;
        if (v21 < v104)
        {
          goto LABEL_132;
        }

        if (v104 >= v21)
        {
          v19 = v114;
          goto LABEL_30;
        }

        if (v17 >= v19)
        {
          v32 = v19;
        }

        else
        {
          v32 = v17;
        }

        v33 = v111 * (v32 - 1);
        v4 = v111 * v32;
        v34 = v104;
        v35 = v104 * v111;
        v36 = v21;
        v115 = v21;
        do
        {
          if (v34 != --v36)
          {
            v37 = *v112;
            if (!*v112)
            {
              goto LABEL_139;
            }

            sub_2311E18C4(v37 + v35, v107);
            v38 = v35 < v33 || v37 + v35 >= (v37 + v4);
            if (v38)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v35 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2311E18C4(v107, v37 + v33);
            v21 = v115;
          }

          ++v34;
          v33 -= v111;
          v4 -= v111;
          v35 += v111;
        }

        while (v34 < v36);
      }

      v19 = v114;
      v20 = v104;
    }

LABEL_30:
    v39 = v112[1];
    if (v21 < v39)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_131;
      }

      if (v21 - v20 < v102)
      {
        break;
      }
    }

LABEL_47:
    if (v21 < v20)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = *(v19 + 2);
      sub_23126DB78();
      v19 = v91;
    }

    v50 = *(v19 + 2);
    v51 = v50 + 1;
    if (v50 >= *(v19 + 3) >> 1)
    {
      sub_23126DB78();
      v19 = v92;
    }

    *(v19 + 2) = v51;
    v4 = (v19 + 32);
    v52 = &v19[16 * v50 + 32];
    *v52 = v104;
    *(v52 + 1) = v21;
    v111 = *v103;
    if (!v111)
    {
      goto LABEL_140;
    }

    v115 = v21;
    if (v50)
    {
      v114 = v19;
      while (1)
      {
        v53 = v51 - 1;
        v54 = (v4 + 16 * (v51 - 1));
        v55 = &v19[16 * v51];
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v56 = *(v19 + 4);
          v57 = *(v19 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_68:
          if (v59)
          {
            goto LABEL_117;
          }

          v71 = *v55;
          v70 = *(v55 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_120;
          }

          v75 = v54[1];
          v76 = v75 - *v54;
          if (__OFSUB__(v75, *v54))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v73, v76))
          {
            goto LABEL_125;
          }

          if (v73 + v76 >= v58)
          {
            if (v58 < v76)
            {
              v53 = v51 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v51 < 2)
        {
          goto LABEL_119;
        }

        v78 = *v55;
        v77 = *(v55 + 1);
        v66 = __OFSUB__(v77, v78);
        v73 = v77 - v78;
        v74 = v66;
LABEL_83:
        if (v74)
        {
          goto LABEL_122;
        }

        v80 = *v54;
        v79 = v54[1];
        v66 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v66)
        {
          goto LABEL_124;
        }

        if (v81 < v73)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v53 - 1 >= v51)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v112)
        {
          goto LABEL_137;
        }

        v85 = v4 + 16 * (v53 - 1);
        v19 = *v85;
        v86 = v4 + 16 * v53;
        v87 = *(v86 + 8);
        v88 = v113;
        sub_23120C044(*v112 + *(v110 + 72) * *v85, *v112 + *(v110 + 72) * *v86, *v112 + *(v110 + 72) * v87, v111);
        v113 = v88;
        if (v88)
        {
          goto LABEL_99;
        }

        if (v87 < v19)
        {
          goto LABEL_112;
        }

        v89 = *(v114 + 2);
        if (v53 > v89)
        {
          goto LABEL_113;
        }

        *v85 = v19;
        *(v85 + 8) = v87;
        if (v53 >= v89)
        {
          goto LABEL_114;
        }

        v51 = v89 - 1;
        sub_2311E6448((v86 + 16), v89 - 1 - v53, (v4 + 16 * v53));
        v19 = v114;
        *(v114 + 2) = v89 - 1;
        if (v89 <= 2)
        {
          goto LABEL_97;
        }
      }

      v60 = v4 + 16 * v51;
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_115;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_116;
      }

      v67 = *(v55 + 1);
      v68 = v67 - *v55;
      if (__OFSUB__(v67, *v55))
      {
        goto LABEL_118;
      }

      v66 = __OFADD__(v58, v68);
      v69 = v58 + v68;
      if (v66)
      {
        goto LABEL_121;
      }

      if (v69 >= v63)
      {
        v83 = *v54;
        v82 = v54[1];
        v66 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v66)
        {
          goto LABEL_129;
        }

        if (v58 < v84)
        {
          v53 = v51 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v17 = v112[1];
    v18 = v115;
    if (v115 >= v17)
    {
      goto LABEL_101;
    }
  }

  if (__OFADD__(v20, v102))
  {
    goto LABEL_133;
  }

  if (v20 + v102 >= v39)
  {
    v40 = v112[1];
  }

  else
  {
    v40 = v20 + v102;
  }

  if (v40 < v20)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v21 == v40)
  {
    goto LABEL_47;
  }

  v114 = v19;
  v41 = v21;
  v42 = *v112;
  v43 = *(v110 + 72);
  v44 = *v112 + v43 * (v41 - 1);
  v45 = -v43;
  v46 = v20 - v41;
  v115 = v41;
  v105 = v43;
  v106 = v40;
  v4 = v42 + v41 * v43;
LABEL_40:
  v108 = v4;
  v109 = v46;
  v111 = v44;
  while (1)
  {
    sub_2311E1984(v4, v16);
    sub_2311E1984(v44, v14);
    v47 = sub_2313672C0();
    v48 = sub_2313672C0();
    sub_2311E1928(v14);
    sub_2311E1928(v16);
    if (v47 >= v48)
    {
LABEL_45:
      v44 = v111 + v105;
      v46 = v109 - 1;
      v4 = v108 + v105;
      if (++v115 == v106)
      {
        v21 = v106;
        v19 = v114;
        v20 = v104;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v42)
    {
      break;
    }

    v49 = v116;
    sub_2311E18C4(v4, v116);
    swift_arrayInitWithTakeFrontToBack();
    sub_2311E18C4(v49, v44);
    v44 += v45;
    v4 += v45;
    v38 = __CFADD__(v46++, 1);
    if (v38)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

uint64_t sub_23120C044(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = type metadata accessor for RankedCandidateSuggestion();
  v8 = *(*(v55 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v55);
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v48 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v16 = a2 - a1;
  v17 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v17)
  {
    goto LABEL_60;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v20 = v16 / v15;
  v59 = a1;
  v58 = a4;
  v21 = v18 / v15;
  if (v16 / v15 >= v18 / v15)
  {
    v53 = a1;
    sub_23126F660(a2, v18 / v15, a4);
    v29 = a4 + v21 * v15;
    v30 = -v15;
    v31 = v29;
    v51 = -v15;
LABEL_36:
    v54 = a2;
    v32 = a2 + v30;
    v49 = v31;
    v33 = v31;
    v52 = a2 + v30;
    while (1)
    {
      if (v29 <= a4)
      {
        v59 = v54;
        v57 = v33;
        goto LABEL_58;
      }

      if (v54 <= v53)
      {
        break;
      }

      v50 = v33;
      v34 = a4;
      v35 = a3 + v30;
      v36 = v29 + v30;
      v37 = v29;
      sub_2311E1984(v29 + v30, v13);
      v38 = v13;
      v39 = v56;
      sub_2311E1984(v32, v56);
      v40 = sub_2313672C0();
      v41 = sub_2313672C0();
      v42 = v39;
      v13 = v38;
      sub_2311E1928(v42);
      sub_2311E1928(v38);
      if (v40 < v41)
      {
        v44 = a3 < v54 || v35 >= v54;
        a4 = v34;
        if (v44)
        {
          v45 = v52;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v35;
          a2 = v45;
          v31 = v50;
          v30 = v51;
          v29 = v37;
        }

        else
        {
          v30 = v51;
          v31 = v50;
          v17 = a3 == v54;
          v46 = v52;
          a3 = v35;
          a2 = v52;
          v29 = v37;
          if (!v17)
          {
            v47 = v50;
            swift_arrayInitWithTakeBackToFront();
            v29 = v37;
            a2 = v46;
            v31 = v47;
          }
        }

        goto LABEL_36;
      }

      v43 = a3 < v37 || v35 >= v37;
      a4 = v34;
      if (v43)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v35;
        v29 = v36;
        v33 = v36;
        v30 = v51;
        v32 = v52;
      }

      else
      {
        v33 = v36;
        v17 = v37 == a3;
        a3 = v35;
        v29 = v36;
        v30 = v51;
        v32 = v52;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v35;
          v29 = v36;
          v33 = v36;
        }
      }
    }

    v59 = v54;
    v57 = v49;
  }

  else
  {
    sub_23126F660(a1, v16 / v15, a4);
    v54 = a4 + v20 * v15;
    v57 = v54;
    while (a4 < v54 && a2 < a3)
    {
      sub_2311E1984(a2, v13);
      v23 = a2;
      v24 = v56;
      sub_2311E1984(a4, v56);
      v25 = sub_2313672C0();
      v26 = sub_2313672C0();
      sub_2311E1928(v24);
      sub_2311E1928(v13);
      if (v25 >= v26)
      {
        if (a1 < a4 || a1 >= a4 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v23;
        }

        else
        {
          a2 = v23;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v58 = a4 + v15;
        a4 += v15;
      }

      else
      {
        a2 = v23 + v15;
        if (a1 < v23 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a1 += v15;
      v59 = a1;
    }
  }

LABEL_58:
  sub_23120C514(&v59, &v58, &v57, type metadata accessor for RankedCandidateSuggestion);
  return 1;
}

void sub_23120C514(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  OUTLINED_FUNCTION_11(v7);
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_6_5();
  v12 = !v12 || v4 >= v11;
  if (v12)
  {
    OUTLINED_FUNCTION_27();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_27();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_23120C5F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_11(v8);
  v10 = *(v9 + 72);
  if (!v10)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_6_5();
  v13 = !v13 || v5 >= v12;
  if (v13)
  {
    OUTLINED_FUNCTION_27();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    OUTLINED_FUNCTION_27();

    swift_arrayInitWithTakeBackToFront();
  }
}

BOOL sub_23120C6CC(uint64_t a1)
{
  v2 = sub_231366E80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(a1 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    (*(v3 + 16))(v7, a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8++, v2, v5);
    v11 = sub_231366E60();
    (*(v3 + 8))(v7, v2);
  }

  while ((v11 & 1) != 0);
  return v9 == v10;
}

void *sub_23120C804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t sub_23120C818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = v3[2];
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  sub_23132BA7C(sub_23120C9F8, v11, v5);
  v6 = v3[3];
  v7 = v3[4];
  v6();
  v9 = v4[5];
  v8 = v4[6];
  sub_231369EE0();
  return sub_231366E50();
}

uint64_t sub_23120C8C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  return (*(v8 + 8))(a2, a3, a4, v7, v8);
}

void *sub_23120C950()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return v0;
}

uint64_t sub_23120C980()
{
  sub_23120C950();

  return swift_deallocClassInstance();
}

uint64_t sub_23120CA1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437A0, &qword_23136DB10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23136B670;
  v1 = sub_231367D20();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_23120DCA0(&qword_280F7CA60, 255, MEMORY[0x277D60B68]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B58], v1);
  return v0;
}

uint64_t sub_23120CAF8()
{
  v1[3] = v0;
  v2 = sub_2313698C0();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23120CBDC, 0, 0);
}

uint64_t sub_23120CBDC()
{
  v1 = v0[9];
  sub_231369150();
  v2 = sub_2313698A0();
  v3 = sub_23136A390();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2311CB000, v2, v3, "AppViewEntitySignalExtractor:: Fetching view entities...", v4, 2u);
    OUTLINED_FUNCTION_29();
  }

  v5 = v0[9];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];

  v9 = *(v7 + 8);
  v0[10] = v9;
  v9(v5, v6);
  v10 = *__swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_23120CD2C;

  return sub_231242440();
}

uint64_t sub_23120CD2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_23120D388;
  }

  else
  {
    v5 = sub_23120CE40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_23120CE40()
{
  v75 = v0;
  v1 = sub_23125D7A0(v0[12]);
  if (v1)
  {
    v2 = v1;
    v74 = MEMORY[0x277D84F90];
    sub_23136A6C0();
    if (v2 < 0)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v3 = 0;
    v4 = v0[12];
    v5 = v4 & 0xC000000000000001;
    v6 = v4 + 32;
    do
    {
      if (v5)
      {
        v7 = MEMORY[0x23192AD10](v3, v0[12]);
      }

      else
      {
        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      ++v3;
      v9 = [v7 identifier];

      sub_23136A6A0();
      v10 = *(v74 + 16);
      sub_23136A6D0();
      sub_23136A6E0();
      sub_23136A6B0();
    }

    while (v2 != v3);
    v11 = v0[12];

    v12 = v74;
  }

  else
  {
    v13 = v0[12];

    v12 = MEMORY[0x277D84F90];
  }

  v14 = v0[7];
  sub_231369150();
  sub_231369EE0();
  v15 = sub_2313698A0();
  v16 = sub_23136A3A0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v73 = v18;
    *v17 = 136315138;
    v19 = sub_23125D7A0(v12);
    v20 = MEMORY[0x277D84F90];
    log = v15;
    v71 = v16;
    v69 = v18;
    buf = v17;
    if (v19)
    {
      v21 = v19;
      v74 = MEMORY[0x277D84F90];
      sub_2311F4E34();
      if (v21 < 0)
      {
LABEL_42:
        __break(1u);
        return;
      }

      v22 = 0;
      v20 = v74;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x23192AD10](v22, v12);
        }

        else
        {
          v23 = *(v12 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = [v23 description];
        v26 = sub_231369FD0();
        v28 = v27;

        v74 = v20;
        v29 = *(v20 + 16);
        if (v29 >= *(v20 + 24) >> 1)
        {
          sub_2311F4E34();
          v20 = v74;
        }

        ++v22;
        *(v20 + 16) = v29 + 1;
        v30 = v20 + 16 * v29;
        *(v30 + 32) = v26;
        *(v30 + 40) = v28;
      }

      while (v21 != v22);
    }

    v31 = v0[10];
    v37 = v0[7];
    v39 = v0[4];
    v38 = v0[5];
    v40 = MEMORY[0x23192A860](v20, MEMORY[0x277D837D0]);
    v42 = v41;

    v43 = sub_2311CFD58(v40, v42, &v73);

    *(buf + 4) = v43;
    _os_log_impl(&dword_2311CB000, log, v71, "AppViewEntitySignalExtractor:: Fetched view entities: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v35 = v37;
    v36 = v39;
  }

  else
  {
    v31 = v0[10];
    v32 = v0[7];
    v33 = v0[4];
    v34 = v0[5];

    v35 = v32;
    v36 = v33;
  }

  v31(v35, v36);
  v44 = v0[3];
  v45 = *(v44 + 64);
  v46 = (*(v44 + 56))(v12);
  if (v46)
  {
    v47 = v46;
    v48 = sub_23125D7A0(v46);
    if (v48)
    {
      v49 = v48;
      v74 = MEMORY[0x277D84F90];
      sub_23136A6C0();
      if ((v49 & 0x8000000000000000) == 0)
      {
        v50 = 0;
        do
        {
          if ((v47 & 0xC000000000000001) != 0)
          {
            v51 = MEMORY[0x23192AD10](v50, v47);
          }

          else
          {
            v51 = *(v47 + 8 * v50 + 32);
          }

          v52 = v0[3];
          ++v50;
          sub_23120D58C(v51, v12);

          sub_23136A6A0();
          v53 = *(v74 + 16);
          sub_23136A6D0();
          sub_23136A6E0();
          sub_23136A6B0();
        }

        while (v49 != v50);

        v54 = v74;
        goto LABEL_37;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v55 = v0[6];

    sub_231369150();
    v56 = sub_2313698A0();
    v57 = sub_23136A3A0();
    v58 = os_log_type_enabled(v56, v57);
    v59 = v0[10];
    v61 = v0[5];
    v60 = v0[6];
    v62 = v0[4];
    if (v58)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_2311CB000, v56, v57, "AppViewEntitySignalExtractor:: No app view signal.", v63, 2u);
      OUTLINED_FUNCTION_29();
    }

    v59(v60, v62);
  }

  v54 = MEMORY[0x277D84F90];
LABEL_37:
  v65 = v0[8];
  v64 = v0[9];
  v67 = v0[6];
  v66 = v0[7];

  v68 = v0[1];

  v68(v54);
}

uint64_t sub_23120D388()
{
  v29 = v0;
  v1 = v0[13];
  v2 = v0[8];
  sub_231369150();
  v3 = v1;
  v4 = sub_2313698A0();
  v5 = sub_23136A3B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v26 = v0[8];
    v27 = v0[10];
    v8 = v0[4];
    v7 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;
    v0[2] = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    v12 = sub_23136A010();
    v14 = sub_2311CFD58(v12, v13, &v28);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2311CB000, v4, v5, "Unable to fetch app view signals. %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v27(v26, v8);
  }

  else
  {
    v6 = v0[13];
    v15 = v0[10];
    v16 = v0[8];
    v17 = v0[4];
    v18 = v0[5];

    v15(v16, v17);
  }

  v20 = v0[8];
  v19 = v0[9];
  v22 = v0[6];
  v21 = v0[7];

  v23 = v0[1];
  v24 = MEMORY[0x277D84F90];

  return v23(v24);
}

void sub_23120D58C(uint64_t a1, uint64_t a2)
{
  v46 = sub_231367B50();
  v4 = *(v46 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231367B80();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v41[2] = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2313698C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369150();
  swift_bridgeObjectRetain_n();

  v15 = sub_2313698A0();
  v16 = sub_23136A3A0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v48 = v43;
    *v17 = 136315650;
    LODWORD(v42) = v16;
    sub_231369240();
    v44 = v10;
    __swift_project_boxed_opaque_existential_1(v47, v47[3]);
    v18 = sub_2313676C0();
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    v21 = sub_2311CFD58(v18, v20, &v48);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = sub_231369250();
    v24 = sub_2311CFD58(v22, v23, &v48);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2048;
    v25 = sub_23125D7A0(a2);

    *(v17 + 24) = v25;

    _os_log_impl(&dword_2311CB000, v15, v42, "Creating %s signal with value %s and %ld view entities", v17, 0x20u);
    v26 = v43;
    swift_arrayDestroy();
    MEMORY[0x23192B930](v26, -1, -1);
    MEMORY[0x23192B930](v17, -1, -1);

    (*(v11 + 8))(v14, v44);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v11 + 8))(v14, v10);
  }

  v27 = sub_23125D7A0(a2);
  if (!v27)
  {
LABEL_13:
    sub_231367B60();
    v38 = sub_2313692F0();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();

    sub_2313692B0();
    return;
  }

  v28 = v27;
  v47[0] = MEMORY[0x277D84F90];
  sub_2311F5C1C(0, v27 & ~(v27 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v41[1] = a1;
    v29 = 0;
    v30 = v47[0];
    v42 = v4 + 32;
    v43 = a2 & 0xC000000000000001;
    v44 = a2;
    do
    {
      if (v43)
      {
        v31 = MEMORY[0x23192AD10](v29, a2);
      }

      else
      {
        v31 = *(a2 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = [v31 typeIdentifier];
      sub_231369FD0();

      v34 = [v32 instanceIdentifier];
      sub_231369FD0();

      v35 = v45;
      sub_231367B40();

      v47[0] = v30;
      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_2311F5C1C(v36 > 1, v37 + 1, 1);
        v30 = v47[0];
      }

      ++v29;
      *(v30 + 16) = v37 + 1;
      (*(v4 + 32))(v30 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v37, v35, v46);
      a2 = v44;
    }

    while (v28 != v29);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_23120DA98()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_23120DB14()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23120B320;

  return sub_23120CAF8();
}

void sub_23120DBA4(uint64_t a1, uint64_t a2)
{
  sub_23120DCA0(&qword_27DD43798, a2, type metadata accessor for AppViewEntitySignalExtractor);

  JUMPOUT(0x2319284B0);
}

uint64_t sub_23120DCA0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_23120DCE8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t (*sub_23120DD0C(uint64_t a1, unint64_t a2, uint64_t a3))(uint64_t *)
{
  OUTLINED_FUNCTION_1_11(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v8 = MEMORY[0x23192AD10](v5, v4);
  }

  *v3 = v8;
  return j__OUTLINED_FUNCTION_0_8;
}

void (*sub_23120DD78(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_1_11(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x23192AD10](v5, v4);
  }

  *v3 = v7;
  return sub_23120DDE0;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_0_8(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_23120DEA4()
{
  v1 = *v0;
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000001FLL, 0x800000023137CE80);
  v4 = v0[2];
  v2 = *(v1 + 80);
  sub_23136A250();
  sub_2311EB3FC();
  sub_231369EF0();
  swift_getWitnessTable();
  sub_23136A8D0();
  OUTLINED_FUNCTION_10_6();
  return 0;
}

uint64_t sub_23120DF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_23120DFBC, 0, 0);
}

uint64_t sub_23120DFBC()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_23120E0EC;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return v11(v9, v7, v8, v2, v3);
}

uint64_t sub_23120E0EC(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_23120E1EC, 0, 0);
}

uint64_t sub_23120E1EC()
{
  v1 = *(v0 + 56);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433E0, &qword_23136C900);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_23136B670;
    *(v2 + 32) = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_23120E294()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v9 = *(v5 + 16);
  OUTLINED_FUNCTION_12_4();
  v9();
  type metadata accessor for JointProviderKeyExtractor();
  if (swift_dynamicCast())
  {
    v10 = v13[0];
    v13[0] = v3;
    swift_getMetatypeMetadata();
    sub_23136A010();
    MEMORY[0x23192A730](95, 0xE100000000000000);
    sub_2312108A0(v10 + 16, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43018, &qword_23136B8F0);
    v11 = sub_23136A010();
    MEMORY[0x23192A730](v11);

    MEMORY[0x23192A730](95, 0xE100000000000000);
    sub_2312108A0(v10 + 56, v13);
    v12 = sub_23136A010();
    MEMORY[0x23192A730](v12);

    v14 = v3;
    v15 = v1;
    __swift_allocate_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_12_4();
    v9();
    OUTLINED_FUNCTION_15_5();
    sub_2312C4F70(v13);
    swift_endAccess();
  }

  else
  {
    v13[0] = v3;
    swift_getMetatypeMetadata();
    sub_23136A010();
    v14 = v3;
    v15 = v1;
    __swift_allocate_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_12_4();
    v9();
    OUTLINED_FUNCTION_15_5();
    sub_2312C4F70(v13);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_23120E4BC()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_2313698C0();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  switch(v1 >> 61)
  {
    case 1uLL:
      v13 = type metadata accessor for PerSuggestionProviderKeyExtractor();
      inited = swift_initStaticObject();
      v15 = &off_2845F7C38;
      goto LABEL_9;
    case 2uLL:
      v13 = type metadata accessor for PerLoggingIdProviderKeyExtractor();
      inited = swift_initStaticObject();
      v15 = &off_2845F5A38;
      goto LABEL_9;
    case 3uLL:
      v13 = type metadata accessor for ChannelProviderKeyExtractor();
      inited = swift_initStaticObject();
      v15 = &off_2845F6290;
      goto LABEL_9;
    case 4uLL:
      v13 = type metadata accessor for DeliveryVehicleProviderKeyExtractor();
      inited = swift_initStaticObject();
      v15 = &off_2845F5860;
      goto LABEL_9;
    case 5uLL:
      v13 = type metadata accessor for SourceOwnedProviderKeyExtractor();
      inited = swift_initStaticObject();
      v15 = &off_2845F6350;
      goto LABEL_9;
    case 6uLL:
      sub_2313690F0();

      v16 = sub_2313698A0();
      v17 = sub_23136A3B0();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v23 = v19;
        *v18 = 136315138;
        sub_23120EB78();
        v22 = sub_2311CFD58(v20, v21, &v23);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_2311CB000, v16, v17, "Unable to add key extractor of type %s as it has no extractor registered", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();
      }

      (*(v7 + 8))(v12, v4);
      *(v3 + 32) = 0;
      *v3 = 0u;
      *(v3 + 16) = 0u;
      goto LABEL_10;
    case 7uLL:
      v13 = type metadata accessor for GlobalKeyExtractor();
      inited = swift_initStaticObject();
      v15 = &off_2845F5A28;
      goto LABEL_9;
    default:
      v13 = type metadata accessor for InvocationTypeProviderKeyExtractor();
      inited = swift_initStaticObject();
      v15 = &off_2845F6E50;
LABEL_9:
      *(v3 + 24) = v13;
      *(v3 + 32) = v15;
      *v3 = inited;
LABEL_10:
      OUTLINED_FUNCTION_9_0();
      return;
  }
}

void *sub_23120E774()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[17];

  v4 = v0[19];

  v5 = v0[21];
  sub_2311D8D2C(v0[20]);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23120E7BC()
{
  sub_23120E774();

  return MEMORY[0x282200960](v0);
}

void *sub_23120E7E8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];
  sub_2311D8D2C(v0[8]);
  return v0;
}

uint64_t sub_23120E828()
{
  sub_23120E7E8();

  return swift_deallocClassInstance();
}

uint64_t sub_23120E900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_23120B320;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t get_enum_tag_for_layout_string_15SiriSuggestions11ProviderKeyO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 == 7)
  {
    return (*a1 >> 3) + 7;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23120EA68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 8))
    {
      v2 = *a1 + 120;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x78)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_23120EABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_23120EB1C(unint64_t *result, uint64_t a2)
{
  if (a2 < 7)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 7)) | 0xE000000000000000;
  }

  *result = v2;
  return result;
}

void sub_23120EB78()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v2 = sub_231367D80();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v50 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  v10 = sub_231369330();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v18 = v17 - v16;
  v19 = sub_231367C70();
  v20 = OUTLINED_FUNCTION_0_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_4();
  v26 = v25 - v24;
  switch(v1 >> 61)
  {
    case 1uLL:
      v36 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v37 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      OUTLINED_FUNCTION_9_6();
      sub_23136A650();

      strcpy(&v51, "suggestionId{");
      HIWORD(v51) = -4864;
      v38 = v36;
      v39 = v37;
      goto LABEL_11;
    case 2uLL:
      v38 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v39 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v40 = 0x49676E6967676F6CLL;
      v41 = 0xEA00000000007B64;
      goto LABEL_10;
    case 3uLL:
      v32 = swift_projectBox();
      (*(v13 + 16))(v18, v32, v10);
      *&v51 = 0x7B6C656E6E616863;
      *(&v51 + 1) = 0xE800000000000000;
      OUTLINED_FUNCTION_3_8();
      sub_231210978(v33, v34);
      v35 = sub_23136A8B0();
      MEMORY[0x23192A730](v35);

      OUTLINED_FUNCTION_10_6();
      (*(v13 + 8))(v18, v10);
      break;
    case 4uLL:
      v46 = swift_projectBox();
      (*(v50 + 16))(v9, v46, v2);
      OUTLINED_FUNCTION_9_6();
      sub_23136A650();

      *&v51 = 0xD000000000000010;
      *(&v51 + 1) = 0x800000023137CE60;
      OUTLINED_FUNCTION_5_7();
      sub_231210978(v47, v48);
      v49 = sub_23136A8B0();
      MEMORY[0x23192A730](v49);

      OUTLINED_FUNCTION_10_6();
      (*(v50 + 8))(v9, v2);
      break;
    case 5uLL:
      v38 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v39 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v40 = 0x7B64656E776FLL;
      v41 = 0xE600000000000000;
LABEL_10:
      *&v51 = v40;
      *(&v51 + 1) = v41;
LABEL_11:
      MEMORY[0x23192A730](v38, v39);
      goto LABEL_12;
    case 6uLL:
      v42 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v43 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      *&v51 = 0x7B746E696F6ALL;
      *(&v51 + 1) = 0xE600000000000000;
      v44 = sub_23120EB78(v42);
      MEMORY[0x23192A730](v44);

      MEMORY[0x23192A730](8236, 0xE200000000000000);
      v45 = sub_23120EB78(v43);
      MEMORY[0x23192A730](v45);

LABEL_12:
      OUTLINED_FUNCTION_10_6();
      break;
    case 7uLL:
      break;
    default:
      v27 = v23;
      v28 = swift_projectBox();
      (*(v27 + 16))(v26, v28, v19);
      OUTLINED_FUNCTION_9_6();
      sub_23136A650();

      *&v51 = 0x697461636F766E69;
      *(&v51 + 1) = 0xEF7B657079546E6FLL;
      OUTLINED_FUNCTION_4_6();
      sub_231210978(v29, v30);
      v31 = sub_23136A8B0();
      MEMORY[0x23192A730](v31);

      OUTLINED_FUNCTION_10_6();
      (*(v27 + 8))(v26, v19);
      break;
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_23120F048()
{
  while (1)
  {
    OUTLINED_FUNCTION_11_0();
    v1 = v0;
    v3 = v2;
    v4 = sub_231367D80();
    v5 = OUTLINED_FUNCTION_0_0(v4);
    v62 = v6;
    v63 = v5;
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_22();
    v11 = v9 - v10;
    MEMORY[0x28223BE20](v12);
    v14 = &v60 - v13;
    v15 = sub_231369330();
    v16 = OUTLINED_FUNCTION_0_0(v15);
    v61 = v17;
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v16);
    OUTLINED_FUNCTION_22();
    v22 = (v20 - v21);
    MEMORY[0x28223BE20](v23);
    v25 = &v60 - v24;
    v26 = sub_231367C70();
    v27 = OUTLINED_FUNCTION_0_0(v26);
    v29 = *(v28 + 64);
    MEMORY[0x28223BE20](v27);
    OUTLINED_FUNCTION_22();
    v32 = (v30 - v31);
    MEMORY[0x28223BE20](v33);
    v36 = &v60 - v35;
    switch(v3 >> 61)
    {
      case 1uLL:
        if (v1 >> 61 == 1)
        {
          goto LABEL_13;
        }

        goto LABEL_26;
      case 2uLL:
        if (v1 >> 61 != 2)
        {
          goto LABEL_26;
        }

        goto LABEL_13;
      case 3uLL:
        if (v1 >> 61 == 3)
        {
          v48 = swift_projectBox();
          v49 = swift_projectBox();
          v50 = v61;
          v51 = *(v61 + 16);
          v51(v25, v48, v15);
          v51(v22, v49, v15);
          sub_231369310();
          v52 = *(v50 + 8);
          v52(v22, v15);
          v52(v25, v15);
        }

        goto LABEL_26;
      case 4uLL:
        if (v1 >> 61 == 4)
        {
          swift_projectBox();
          v42 = swift_projectBox();
          v44 = v62;
          v43 = v63;
          v45 = *(v62 + 16);
          v46 = OUTLINED_FUNCTION_11_6();
          v45(v46);
          (v45)(v11, v42, v43);
          sub_231311D04(v14, v11);
          v47 = *(v44 + 8);
          v47(v11, v43);
          v47(v14, v43);
        }

        goto LABEL_26;
      case 5uLL:
        if (v1 >> 61 != 5)
        {
          goto LABEL_26;
        }

LABEL_13:
        if (*((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
        {
LABEL_26:
          OUTLINED_FUNCTION_9_0();
        }

        else
        {
          OUTLINED_FUNCTION_9_0();

          sub_23136A900();
        }

        return;
      case 6uLL:
        if (v1 >> 61 != 6)
        {
          goto LABEL_26;
        }

        v55 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v56 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v57 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v58 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        if ((sub_23120F048(v55, v57) & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_9_0();

        break;
      case 7uLL:
        goto LABEL_26;
      default:
        if (!(v1 >> 61))
        {
          v37 = v34;
          v38 = swift_projectBox();
          v39 = swift_projectBox();
          v40 = *(v37 + 16);
          v40(v36, v38, v26);
          v40(v32, v39, v26);
          sub_231367C60();
          v41 = *(v37 + 8);
          v41(v32, v26);
          v41(v36, v26);
        }

        goto LABEL_26;
    }
  }
}

void sub_23120F4F0()
{
  while (2)
  {
    OUTLINED_FUNCTION_11_0();
    v1 = v0;
    v3 = v2;
    v4 = sub_231367D80();
    v5 = OUTLINED_FUNCTION_0_0(v4);
    v42 = v6;
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_1_4();
    v11 = v10 - v9;
    v12 = sub_231369330();
    v13 = OUTLINED_FUNCTION_0_0(v12);
    v15 = v14;
    v17 = *(v16 + 64);
    MEMORY[0x28223BE20](v13);
    OUTLINED_FUNCTION_1_4();
    v20 = v19 - v18;
    v21 = sub_231367C70();
    v22 = OUTLINED_FUNCTION_0_0(v21);
    v24 = v23;
    v26 = *(v25 + 64);
    MEMORY[0x28223BE20](v22);
    OUTLINED_FUNCTION_1_4();
    v29 = v28 - v27;
    switch(v1 >> 61)
    {
      case 1uLL:
        OUTLINED_FUNCTION_13_6();
        v36 = 1;
        goto LABEL_10;
      case 2uLL:
        OUTLINED_FUNCTION_13_6();
        v36 = 2;
        goto LABEL_10;
      case 3uLL:
        v37 = swift_projectBox();
        (*(v15 + 16))(v20, v37, v12);
        MEMORY[0x23192B090](3);
        OUTLINED_FUNCTION_3_8();
        sub_231210978(v38, v39);
        sub_231369F40();
        (*(v15 + 8))(v20, v12);
        goto LABEL_7;
      case 4uLL:
        v33 = swift_projectBox();
        (*(v42 + 16))(v11, v33, v4);
        MEMORY[0x23192B090](5);
        OUTLINED_FUNCTION_5_7();
        sub_231210978(v34, v35);
        sub_231369F40();
        (*(v42 + 8))(v11, v4);
        goto LABEL_7;
      case 5uLL:
        OUTLINED_FUNCTION_13_6();
        v36 = 6;
LABEL_10:
        MEMORY[0x23192B090](v36);
        OUTLINED_FUNCTION_9_0();

        sub_23136A060();
        return;
      case 6uLL:
        OUTLINED_FUNCTION_13_6();
        MEMORY[0x23192B090](7);
        sub_23120F4F0(v3, v4);
        OUTLINED_FUNCTION_9_0();

        continue;
      case 7uLL:
        MEMORY[0x23192B090](4);
        goto LABEL_7;
      default:
        v30 = swift_projectBox();
        (*(v24 + 16))(v29, v30, v21);
        MEMORY[0x23192B090](0);
        OUTLINED_FUNCTION_4_6();
        sub_231210978(v31, v32);
        sub_231369F40();
        (*(v24 + 8))(v29, v21);
LABEL_7:
        OUTLINED_FUNCTION_9_0();
        return;
    }
  }
}

uint64_t sub_23120F8B4()
{
  sub_23136A9D0();
  sub_23120F4F0();
  return sub_23136AA00();
}

uint64_t sub_23120F914()
{
  v1 = *v0;
  sub_23136A9D0();
  sub_23120F4F0();
  return sub_23136AA00();
}

void sub_23120F958(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_23120F048();
}

unint64_t sub_23120F968()
{
  result = qword_280F84D20;
  if (!qword_280F84D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84D20);
  }

  return result;
}

void sub_23120FA10()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_21();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  v51 = sub_2313698C0();
  v12 = OUTLINED_FUNCTION_0_0(v51);
  v50 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v18 = v17 - v16;
  v64 = v1;
  v65 = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  v20 = *(v5 + 16);
  v53 = boxed_opaque_existential_1;
  OUTLINED_FUNCTION_12_4();
  v52 = v21;
  v21();
  sub_2313690F0();
  sub_2311CF324(v63, &v59);
  v22 = v2 & 0x1FFFFFFFFFFFFFFFLL;

  v23 = sub_2313698A0();
  v24 = sub_23136A3A0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *&v54 = swift_slowAlloc();
    *v25 = 136315650;
    sub_2311CF324(&v59, &v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43020, &qword_23136BD80);
    v49 = v11;
    v26 = sub_23136A010();
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(&v59);
    v29 = sub_2311CFD58(v26, v28, &v54);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    sub_23120EB78();
    v32 = sub_2311CFD58(v30, v31, &v54);
    v11 = v49;

    *(v25 + 14) = v32;
    v22 = v2 & 0x1FFFFFFFFFFFFFFFLL;
    *(v25 + 22) = 2080;
    *(v25 + 24) = sub_2311CFD58(v0[16], v0[17], &v54);
    _os_log_impl(&dword_2311CB000, v23, v24, "adding %s against %s for provider of type %s", v25, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v59);
  }

  (*(v50 + 8))(v18, v51);
  swift_beginAccess();
  v33 = v0[14];
  sub_231369EE0();
  v34 = OUTLINED_FUNCTION_11_6();
  v36 = sub_2312177D0(v34, v35);

  if (!v36)
  {
    v36 = MEMORY[0x277D84F90];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v46 = *(v36 + 16);
    sub_23126DD64();
    v36 = v47;
    v62 = v47;
  }

  v38 = *(v36 + 16);
  if (v38 >= *(v36 + 24) >> 1)
  {
    sub_23126DD64();
    v62 = v48;
  }

  (v52)(v11, v53, v1);
  sub_2312100D8(v38, v11, &v62, v1, v3, sub_2311E6A28);
  swift_beginAccess();
  v39 = v0[14];
  swift_isUniquelyReferenced_nonNull_native();
  *&v56 = v0[14];
  sub_231259AFC();
  v0[14] = v56;
  swift_endAccess();
  if (v2 >> 61 == 6)
  {
    v40 = *(v22 + 16);
    v41 = *(v22 + 24);
    sub_23120E4BC();
    sub_23120E4BC();
    v42 = type metadata accessor for JointProviderKeyExtractor();
    v43 = swift_allocObject();
    v44 = v60;
    *(v43 + 16) = v59;
    *(v43 + 32) = v44;
    v45 = v57;
    *(v43 + 56) = v56;
    *(v43 + 48) = v61;
    *(v43 + 72) = v45;
    *(v43 + 88) = v58;
    *(&v60 + 1) = v42;
    v61 = &off_2845F5A70;
    *&v59 = v43;
  }

  else
  {
    sub_23120E4BC();
  }

  sub_2312108A0(&v59, &v54);
  if (v55)
  {
    sub_2311D38A8(&v54, &v56);
    __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
    sub_23120E294();
    sub_231210910(&v59);
    __swift_destroy_boxed_opaque_existential_1Tm(&v56);
  }

  else
  {
    sub_231210910(&v59);
    sub_231210910(&v54);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  OUTLINED_FUNCTION_9_0();
}

void sub_23120FF7C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_21();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  (*(v4 + 16))(v9 - v8);
  v11 = swift_allocObject();
  sub_231367AD0();
  v12 = v22;
  v13 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  *(v11 + 16) = MEMORY[0x231929610](v12, v13);
  *(v11 + 24) = v14;
  v15 = *(v2 + 24);
  v16 = *(v2 + 32);
  v17 = OUTLINED_FUNCTION_11_6();
  v19 = __swift_project_boxed_opaque_existential_1(v17, v18);
  sub_2312102F4(v19, v11 | 0xA000000000000000, v0, v15, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v20 = *(v4 + 8);

  v20(v10, v1);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2312100D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v14[3] = a4;
  v14[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v12 = *a3;
  *(v12 + 16) = a1 + 1;
  return a6(v14, v12 + 40 * a1 + 32);
}

void sub_231210198()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_21();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  v17 = v16 - v15;
  (*(v11 + 16))(v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43010, qword_231374B70);
  v18 = swift_allocBox();
  v20 = v19;
  v21 = sub_231367C70();
  (*(*(v21 - 8) + 16))(v20, v9, v21);
  v1(v17, v18, v7, v5, v3);

  v22 = *(v11 + 8);

  v23 = OUTLINED_FUNCTION_11_6();
  v22(v23);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2312102F4(uint64_t *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2313698C0();
  v54 = *(v55 - 8);
  v14 = *(v54 + 64);
  MEMORY[0x28223BE20](v55);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67[3] = a4;
  v67[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  v19 = *(v10 + 16);
  v18 = v10 + 16;
  v57 = boxed_opaque_existential_1;
  v56 = v19;
  v19(boxed_opaque_existential_1, a1, a4);
  sub_2313690F0();
  sub_2311CF324(v67, &v63);
  v20 = a2 & 0x1FFFFFFFFFFFFFFFLL;

  v21 = sub_2313698A0();
  v22 = sub_23136A3A0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v52 = v18;
    v24 = v23;
    v50 = swift_slowAlloc();
    *&v58 = v50;
    *v24 = 136315650;
    sub_2311CF324(&v63, &v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43028, &qword_23136B920);
    v25 = sub_23136A010();
    v53 = v13;
    v26 = v25;
    v51 = a2 & 0x1FFFFFFFFFFFFFFFLL;
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(&v63);
    v29 = sub_2311CFD58(v26, v28, &v58);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    sub_23120EB78();
    v32 = sub_2311CFD58(v30, v31, &v58);
    v13 = v53;

    *(v24 + 14) = v32;
    v20 = v51;
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_2311CFD58(a3[16], a3[17], &v58);
    _os_log_impl(&dword_2311CB000, v21, v22, "adding %s against %s for provider of type %s", v24, 0x20u);
    v33 = v50;
    swift_arrayDestroy();
    MEMORY[0x23192B930](v33, -1, -1);
    MEMORY[0x23192B930](v24, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v63);
  }

  (*(v54 + 8))(v16, v55);
  swift_beginAccess();
  v34 = a3[14];
  sub_231369EE0();
  v35 = sub_2312177D0(a2, v34);

  if (!v35)
  {
    v35 = MEMORY[0x277D84F90];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v46 = *(v35 + 16);
    sub_23126DE08();
    v35 = v47;
    v66 = v47;
  }

  v37 = *(v35 + 16);
  if (v37 >= *(v35 + 24) >> 1)
  {
    sub_23126DE08();
    v66 = v48;
  }

  v56(v13, v57, a4);
  sub_2312100D8(v37, v13, &v66, a4, a5, sub_2311E6A28);
  swift_beginAccess();
  v38 = a3[14];
  swift_isUniquelyReferenced_nonNull_native();
  *&v60 = a3[14];
  sub_231259C20();
  a3[14] = v60;
  swift_endAccess();
  if (a2 >> 61 == 6)
  {
    v39 = *(v20 + 16);
    v40 = *(v20 + 24);
    sub_23120E4BC();
    sub_23120E4BC();
    v41 = type metadata accessor for JointProviderKeyExtractor();
    v42 = swift_allocObject();
    v43 = v64;
    *(v42 + 16) = v63;
    *(v42 + 32) = v43;
    v44 = v61;
    *(v42 + 56) = v60;
    *(v42 + 48) = v65;
    *(v42 + 72) = v44;
    *(v42 + 88) = v62;
    *(&v64 + 1) = v41;
    v65 = &off_2845F5A70;
    *&v63 = v42;
  }

  else
  {
    sub_23120E4BC();
  }

  sub_2312108A0(&v63, &v58);
  if (v59)
  {
    sub_2311D38A8(&v58, &v60);
    __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
    sub_23120E294();
    sub_231210910(&v63);
    __swift_destroy_boxed_opaque_existential_1Tm(&v60);
  }

  else
  {
    sub_231210910(&v63);
    sub_231210910(&v58);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v67);
}

uint64_t sub_2312108A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43018, &qword_23136B8F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231210910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43018, &qword_23136B8F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231210978(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2312109F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_231210A38(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_231210A78(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_231210AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = sub_231215F6C(a1, a2);
  if ((v6 & 1) == 0)
  {
    v3 = 0;
LABEL_5:
    v7 = 1;
    return v3 | (v7 << 32);
  }

  v7 = 0;
  v3 = *(*(a3 + 56) + 4 * v5);
  return v3 | (v7 << 32);
}

double sub_231210B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_73_1(a1, a2, a3);
  if (v7 && (v8 = v6, v9 = sub_231215F6C(v4, v5), (v10 & 1) != 0))
  {
    v11 = OUTLINED_FUNCTION_95(v9, *(v8 + 56));

    sub_231215FE4(v11, v12);
  }

  else
  {
    result = 0.0;
    v3[1] = 0u;
    v3[2] = 0u;
    *v3 = 0u;
  }

  return result;
}

void sub_231210BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_73_1(a1, a2, a3);
  if (v7 && (v8 = v6, v9 = sub_231215F6C(v4, v5), (v10 & 1) != 0))
  {
    sub_2311E66F0(*(v8 + 56) + 32 * v9, v3, &qword_27DD443C0, &unk_23136E000);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = 1;
  }
}

double sub_231210C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_73_1(a1, a2, a3);
  if (!v7)
  {
    return OUTLINED_FUNCTION_94();
  }

  v8 = v6;
  v9 = sub_231215F6C(v4, v5);
  if ((v10 & 1) == 0)
  {
    return OUTLINED_FUNCTION_94();
  }

  v11 = *(v8 + 56) + 32 * v9;

  sub_2311D1D6C(v11, v3);
  return result;
}

uint64_t sub_231210CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_231215F6C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];
  sub_231369EE0();
  return v7;
}

uint64_t sub_231210D14(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_97(a1, a2);
  if (v4 && (v5 = v3, v6 = sub_231216260(), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437C0, &qword_23136DFD0);
    OUTLINED_FUNCTION_11(v10);
    (*(v11 + 16))(v2, v9 + *(v11 + 72) * v8, v10);
    OUTLINED_FUNCTION_62_2();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437C0, &qword_23136DFD0);
    OUTLINED_FUNCTION_52();
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_231210DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_231215F6C(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_75_0(v3);
}

uint64_t sub_231210E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_75_0(v3);
  return sub_231369EE0();
}

double sub_231210E90(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_97(a1, a2);
  if (!v5)
  {
    return OUTLINED_FUNCTION_94();
  }

  v6 = v4;
  v7 = sub_231216888(v3);
  if ((v8 & 1) == 0)
  {
    return OUTLINED_FUNCTION_94();
  }

  v9 = *(v6 + 56) + 32 * v7;

  sub_2311D1D6C(v9, v2);
  return result;
}

double sub_231210F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_73_1(a1, a2, a3);
  if (v7 && (v8 = v6, v9 = sub_231215F6C(v4, v5), (v10 & 1) != 0))
  {
    v11 = OUTLINED_FUNCTION_95(v9, *(v8 + 56));
    sub_2311CF324(v11, v12);
  }

  else
  {
    *(v3 + 32) = 0;
    return OUTLINED_FUNCTION_94();
  }

  return result;
}

uint64_t sub_231210F68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3();
  if (v4)
  {
    return OUTLINED_FUNCTION_75_0(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231210FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_73_1(a1, a2, a3);
  if (v9 && (v10 = v8, v11 = sub_231215F6C(v6, v7), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = a4(0);
    OUTLINED_FUNCTION_11(v15);
    (*(v16 + 16))(v4, v14 + *(v16 + 72) * v13, v15);
    v17 = v4;
    v18 = 0;
    v19 = 1;
    v20 = v15;
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_52();
  }

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

double sub_2312110B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_97(a1, a2);
  if (v5 && (v6 = v3, v7 = v4(), (v8 & 1) != 0))
  {
    v9 = OUTLINED_FUNCTION_95(v7, *(v6 + 56));
    sub_2311CF324(v9, v10);
  }

  else
  {
    *(v2 + 32) = 0;
    return OUTLINED_FUNCTION_94();
  }

  return result;
}

uint64_t sub_231211120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_75_0(v3);
  return sub_231369EE0();
}

void *sub_231211170(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_2312169BC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

double sub_2312111B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_97(a1, a2);
  if (v4 && (v5 = v3, v6 = sub_2312165D8(), (v7 & 1) != 0))
  {
    v8 = OUTLINED_FUNCTION_95(v6, *(v5 + 56));

    sub_231217710(v8, v9);
  }

  else
  {
    result = 0.0;
    v2[1] = 0u;
    v2[2] = 0u;
    *v2 = 0u;
  }

  return result;
}

uint64_t sub_23121121C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_231215F6C(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_75_0(v3);
  return sub_231369EE0();
}

uint64_t sub_231211268()
{
  sub_23136A060();
}

uint64_t sub_2312112DC()
{
  sub_23136A060();
}

uint64_t sub_231211384(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_59_2();
  }

  else
  {
    OUTLINED_FUNCTION_74_2();
  }

  sub_23136A060();
}

uint64_t sub_2312113F4(uint64_t a1, char a2)
{
  sub_23133F8E8(a2);
  sub_23136A060();
}

uint64_t sub_231211448()
{
  sub_23136A060();
}

uint64_t sub_2312114BC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_74_2();
      break;
  }

  sub_23136A060();
}

uint64_t sub_23121159C()
{
  sub_23136A060();
}

uint64_t sub_231211608(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_43_4();
  }

  sub_23136A060();
}

uint64_t sub_231211690()
{
  OUTLINED_FUNCTION_83_0();
  if (!v0)
  {
    OUTLINED_FUNCTION_43_4();
  }

  OUTLINED_FUNCTION_85_0();

  return sub_23136AA00();
}

uint64_t sub_23121171C()
{
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_85_0();

  return sub_23136AA00();
}

uint64_t sub_2312117A4()
{
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_85_0();

  return sub_23136AA00();
}

uint64_t sub_231211834(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_23136A9D0();
  a3(a2);
  sub_23136A060();

  return sub_23136AA00();
}

uint64_t sub_23121189C()
{
  OUTLINED_FUNCTION_83_0();
  if (v0)
  {
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_59_2();
  }

  else
  {
    OUTLINED_FUNCTION_74_2();
  }

  OUTLINED_FUNCTION_85_0();

  return sub_23136AA00();
}

uint64_t sub_231211910()
{
  OUTLINED_FUNCTION_83_0();
  sub_2312112DC();
  return sub_23136AA00();
}

uint64_t sub_23121194C()
{
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_85_0();

  return sub_23136AA00();
}

uint64_t static IntentSuggestionsGenerator.createGenerators()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F0, &unk_23136BC80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23136B670;
  v2 = swift_allocObject();
  *(v1 + 56) = v0;
  *(v1 + 64) = sub_231217784(qword_280F85520, v3, type metadata accessor for IntentSuggestionsGenerator);
  *(v1 + 32) = v2;
  return v1;
}

uint64_t IntentSuggestionsGenerator.generateCandidateSuggestions(interaction:environment:factory:)()
{
  OUTLINED_FUNCTION_8();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437A8, &unk_23136DEC0);
  OUTLINED_FUNCTION_40_0(v4);
  v6 = *(v5 + 64);
  v1[24] = OUTLINED_FUNCTION_43();
  v7 = sub_231368BB0();
  v1[25] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[26] = v8;
  v10 = *(v9 + 64);
  v1[27] = OUTLINED_FUNCTION_43();
  v11 = sub_2313667A0();
  v1[28] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[29] = v12;
  v14 = *(v13 + 64);
  v1[30] = OUTLINED_FUNCTION_43();
  v15 = sub_231367490();
  v1[31] = v15;
  OUTLINED_FUNCTION_0(v15);
  v1[32] = v16;
  v18 = *(v17 + 64);
  v1[33] = OUTLINED_FUNCTION_43();
  v19 = sub_2313698C0();
  v1[34] = v19;
  OUTLINED_FUNCTION_0(v19);
  v1[35] = v20;
  v22 = *(v21 + 64);
  v1[36] = OUTLINED_FUNCTION_67();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v23 = sub_231367C70();
  v1[40] = v23;
  OUTLINED_FUNCTION_0(v23);
  v1[41] = v24;
  v26 = *(v25 + 64);
  v1[42] = OUTLINED_FUNCTION_67();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v27 = sub_231367D80();
  v1[45] = v27;
  OUTLINED_FUNCTION_0(v27);
  v1[46] = v28;
  v30 = *(v29 + 64);
  v1[47] = OUTLINED_FUNCTION_43();
  v31 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_231211D20()
{
  v133 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 168);
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_71();
  sub_2313677D0();
  v6 = *(v3 + 88);
  v7 = OUTLINED_FUNCTION_26_1();
  v8 = v6(v7);
  v9 = *MEMORY[0x277D60AC8];
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_26_1();
  v10(v11);
  if (v8 == v9)
  {
    v12 = MEMORY[0x277D60B80];
    goto LABEL_3;
  }

  v129 = v10;
  v36 = *(v0 + 344);
  v37 = *(v0 + 320);
  v38 = v4[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 168), v4[3]);
  OUTLINED_FUNCTION_71();
  sub_2313677D0();
  v39 = OUTLINED_FUNCTION_26_1();
  v40 = v6(v39);
  v41 = *(v0 + 344);
  if (v40 != *MEMORY[0x277D60AC0])
  {
    (v129)(*(v0 + 344), *(v0 + 320));
    goto LABEL_25;
  }

  (*(*(v0 + 328) + 96))(*(v0 + 344), *(v0 + 320));
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
  v43 = *(sub_2313681A0() - 8);
  v44 = v43[11];
  v45 = OUTLINED_FUNCTION_67_0();
  v47 = v46(v45);
  v48 = *(v0 + 344);
  if (v47 != *MEMORY[0x277D60DC0])
  {
    v103 = sub_231368210();
    OUTLINED_FUNCTION_11(v103);
    (*(v104 + 8))(v41 + v42);
    v105 = v43[1];
    v106 = OUTLINED_FUNCTION_26_1();
    v107(v106);
    goto LABEL_25;
  }

  v49 = v43[12];
  v50 = OUTLINED_FUNCTION_26_1();
  v51(v50);
  v52 = *(sub_231368270() - 8);
  v53 = *(v52 + 88);
  v54 = OUTLINED_FUNCTION_26_1();
  v56 = v55(v54);
  v57 = *MEMORY[0x277D60E60];
  v58 = *(v52 + 8);
  v59 = OUTLINED_FUNCTION_26_1();
  v60(v59);
  v61 = sub_231368210();
  OUTLINED_FUNCTION_11(v61);
  (*(v62 + 8))(v41 + v42);
  if (v56 != v57)
  {
LABEL_25:
    v108 = *(v0 + 312);
    sub_2313690F0();
    v109 = sub_2313698A0();
    v110 = sub_23136A3A0();
    v111 = os_log_type_enabled(v109, v110);
    v112 = *(v0 + 312);
    v113 = *(v0 + 272);
    v68 = *(v0 + 280);
    if (v111)
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_2311CB000, v109, v110, "IntentSuggestionsGenerator: invocationType is is not .offlineGeneration or conversation continuer. returning no candidate.", v114, 2u);
      OUTLINED_FUNCTION_40_3();
    }

    goto LABEL_28;
  }

  v12 = MEMORY[0x277D60B78];
  v10 = v129;
LABEL_3:
  v13 = *(v0 + 168);
  (*(*(v0 + 368) + 104))(*(v0 + 376), *v12, *(v0 + 360));
  v14 = v4[3];
  v15 = v4[4];
  v16 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_56(v16, v17);
  OUTLINED_FUNCTION_26_1();
  v18 = sub_231367830();
  *(v0 + 384) = v18;
  if (!v18)
  {
    v63 = *(v0 + 288);
    sub_2313690F0();
    v64 = sub_2313698A0();
    v65 = sub_23136A3A0();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2311CB000, v64, v65, "IntentSuggestionsGenerator: No intentsToSuggest found from interaction, returning no candidate", v66, 2u);
      OUTLINED_FUNCTION_29();
    }

    v68 = *(v0 + 368);
    v67 = *(v0 + 376);
    v69 = *(v0 + 360);
    v71 = *(v0 + 280);
    v70 = *(v0 + 288);
    v72 = *(v0 + 272);

    v73 = *(v71 + 8);
    v74 = OUTLINED_FUNCTION_54_0();
    v75(v74);
LABEL_28:
    v115 = *(v68 + 8);
    v116 = OUTLINED_FUNCTION_28_0();
    v117(v116);
    v102 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v19 = v18;
  v20 = *(v0 + 304);
  v21 = *(v0 + 168);
  sub_2313690F0();
  sub_2311CF324(v21, v0 + 64);
  sub_231369EE0();
  v22 = sub_2313698A0();
  v23 = sub_23136A3A0();

  if (os_log_type_enabled(v22, v23))
  {
    v128 = v10;
    v24 = *(v0 + 336);
    v119 = *(v0 + 328);
    v25 = *(v0 + 320);
    v122 = *(v0 + 280);
    v123 = *(v0 + 272);
    v125 = *(v0 + 304);
    v121 = *(v0 + 248);
    v26 = swift_slowAlloc();
    v132 = OUTLINED_FUNCTION_44();
    *v26 = 136315394;
    v27 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
    v120 = v23;
    sub_2313677D0();
    sub_231217784(&qword_280F7CA70, 255, MEMORY[0x277D60AE8]);
    sub_23136A8B0();
    v128(v24, v25);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
    v28 = OUTLINED_FUNCTION_68_1();
    v31 = sub_2311CFD58(v28, v29, v30);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    v32 = MEMORY[0x23192A860](v19, v121);
    v34 = sub_2311CFD58(v32, v33, &v132);

    *(v26 + 14) = v34;
    _os_log_impl(&dword_2311CB000, v22, v120, "IntentSuggestionsGenerator: %s received intentQueries: %s. Attempting to generate candidates", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v35 = *(v122 + 8);
    v35(v125, v123);
  }

  else
  {
    v76 = *(v0 + 304);
    v77 = *(v0 + 272);
    v78 = *(v0 + 280);

    v35 = *(v78 + 8);
    v35(v76, v77);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  }

  v79 = *(v0 + 296);
  v81 = v4[3];
  v80 = v4[4];
  OUTLINED_FUNCTION_56(*(v0 + 168), v81);
  *(v0 + 392) = sub_2313677E0();
  sub_2313690F0();
  sub_231369EE0();
  v82 = sub_2313698A0();
  v83 = sub_23136A3A0();

  v84 = os_log_type_enabled(v82, v83);
  v85 = *(v0 + 296);
  v87 = *(v0 + 272);
  v86 = *(v0 + 280);
  if (v84)
  {
    v130 = v35;
    v88 = swift_slowAlloc();
    v126 = v85;
    v89 = swift_slowAlloc();
    v132 = v89;
    *v88 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43300, &qword_23136BF00);
    v90 = sub_231369E90();
    v92 = sub_2311CFD58(v90, v91, &v132);

    *(v88 + 4) = v92;
    _os_log_impl(&dword_2311CB000, v82, v83, "IntentSuggestionsGenerator: execParams %s", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v89);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    result = v130(v126, v87);
  }

  else
  {

    result = (v35)(v85, v87);
  }

  *(v0 + 160) = MEMORY[0x277D84F90];
  v94 = *(v19 + 16);
  *(v0 + 400) = v94;
  if (v94)
  {
    v95 = *(v0 + 256);
    v96 = *(v95 + 80);
    *(v0 + 464) = v96;
    *(v0 + 408) = 0;
    v97 = *(v0 + 384);
    if (*(v97 + 16))
    {
      (*(v95 + 16))(*(v0 + 264), v97 + ((v96 + 32) & ~v96), *(v0 + 248));
      v98 = swift_task_alloc();
      *(v0 + 416) = v98;
      *v98 = v0;
      OUTLINED_FUNCTION_1_12(v98);

      return sub_231212E84();
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  OUTLINED_FUNCTION_78_0();

  v99 = *(v87 + 8);
  v100 = OUTLINED_FUNCTION_28_0();
  v101(v100);
  v102 = *(v0 + 160);
LABEL_29:
  v131 = v102;
  OUTLINED_FUNCTION_7_6();
  v124 = *(v0 + 216);
  v127 = *(v0 + 192);

  OUTLINED_FUNCTION_14();

  return v118(v131);
}

uint64_t sub_23121266C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v1 + 416);
  v9 = *v0;
  *(v2 + 424) = v4;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_23121275C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_70_1();
  *(v14 + 144) = 0xD000000000000010;
  v15 = *(v14 + 392);
  v16 = *(v14 + 264);
  v18 = *(v14 + 232);
  v17 = *(v14 + 240);
  v19 = *(v14 + 224);
  *(v14 + 152) = 0x800000023137CEA0;
  sub_231367480();
  v20 = sub_231366770();
  v22 = v21;
  (*(v18 + 8))(v17, v19);
  MEMORY[0x23192A730](v20, v22);

  v24 = *(v14 + 144);
  v23 = *(v14 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43300, &qword_23136BF00);
  v25 = sub_231369EC0();
  if (*(v15 + 16) && (v26 = *(v14 + 392), v27 = sub_231215F6C(v24, v23), (v28 & 1) != 0))
  {
    sub_231215FE4(*(*(v14 + 392) + 56) + 48 * v27, v14 + 16);
  }

  else
  {
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 16) = 0u;
  }

  v30 = *(v14 + 192);
  v29 = *(v14 + 200);
  if (*(v14 + 40))
  {
    v31 = *(v14 + 192);
    v32 = *(v14 + 200);
    v33 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v30, v33 ^ 1u, 1, v29);
    if (__swift_getEnumTagSinglePayload(v30, 1, v29) != 1)
    {
      v35 = *(v14 + 208);
      v34 = *(v14 + 216);
      v37 = *(v14 + 192);
      v36 = *(v14 + 200);

      (*(v35 + 32))(v34, v37, v36);
      v25 = sub_231368BA0();
      v38 = *(v35 + 8);
      v39 = OUTLINED_FUNCTION_67_0();
      v40(v39);
      goto LABEL_10;
    }
  }

  else
  {
    sub_2311D1F18(v14 + 16, &qword_27DD432F8, &qword_23136DEE0);
    OUTLINED_FUNCTION_52();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v29);
  }

  sub_2311D1F18(*(v14 + 192), &qword_27DD437A8, &unk_23136DEC0);
LABEL_10:
  *(v14 + 432) = v25;
  v44 = *(v14 + 424);
  v45 = *(v44 + 16);
  *(v14 + 440) = v45;
  if (v45)
  {
    *(v14 + 448) = 0;
    sub_2311CF324(v44 + 32, v14 + 104);
    v46 = swift_task_alloc();
    *(v14 + 456) = v46;
    *v46 = v14;
    v46[1] = sub_231212B6C;
    v47 = *(v14 + 432);
    v48 = *(v14 + 264);
    OUTLINED_FUNCTION_7();

    sub_231214520();
  }

  else
  {
    v51 = *(v14 + 400);
    v50 = *(v14 + 408);
    v53 = *(v14 + 256);
    v52 = *(v14 + 264);
    v54 = *(v14 + 248);

    sub_2312673B4();
    v55 = *(v53 + 8);
    v56 = OUTLINED_FUNCTION_71();
    v57(v56);
    if (v50 + 1 == v51)
    {
      OUTLINED_FUNCTION_78_0();

      v58 = *(v44 + 8);
      v59 = OUTLINED_FUNCTION_28_0();
      v60(v59);
      v61 = *(v14 + 160);
      OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_102();

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_7();

      v64(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      OUTLINED_FUNCTION_51_3();
      if (v71)
      {
        __break(1u);
      }

      else
      {
        v72 = OUTLINED_FUNCTION_31_3(v70);
        v73(v72);
        v74 = swift_task_alloc();
        *(v14 + 416) = v74;
        *v74 = v14;
        OUTLINED_FUNCTION_1_12();
        OUTLINED_FUNCTION_7();

        sub_231212E84();
      }
    }
  }
}

uint64_t sub_231212B6C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v1 + 456);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 104));
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_231212C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_70_1();
  v15 = v14[56] + 1;
  if (v15 == v14[55])
  {
    v17 = v14[53];
    v16 = v14[54];
    v19 = v14[50];
    v18 = v14[51];
    v21 = v14[32];
    v20 = v14[33];
    v22 = v14[31];

    sub_2312673B4();
    v23 = *(v21 + 8);
    v24 = OUTLINED_FUNCTION_26_1();
    v25(v24);
    if (v18 + 1 == v19)
    {
      OUTLINED_FUNCTION_78_0();

      v26 = *(v22 + 8);
      v27 = OUTLINED_FUNCTION_28_0();
      v28(v27);
      v29 = v14[20];
      OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_102();

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_7();

      v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      OUTLINED_FUNCTION_51_3();
      if (v43)
      {
        __break(1u);
      }

      else
      {
        v44 = OUTLINED_FUNCTION_31_3(v42);
        v45(v44);
        v46 = swift_task_alloc();
        v14[52] = v46;
        *v46 = v14;
        OUTLINED_FUNCTION_1_12();
        OUTLINED_FUNCTION_7();

        sub_231212E84();
      }
    }
  }

  else
  {
    v14[56] = v15;
    sub_2311CF324(v14[53] + 40 * v15 + 32, (v14 + 13));
    v38 = swift_task_alloc();
    v14[57] = v38;
    *v38 = v14;
    v38[1] = sub_231212B6C;
    v39 = v14[54];
    v40 = v14[33];
    OUTLINED_FUNCTION_7();

    sub_231214520();
  }
}

uint64_t sub_231212E84()
{
  OUTLINED_FUNCTION_8();
  v0[34] = v1;
  v0[35] = v2;
  v0[33] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  OUTLINED_FUNCTION_40_0(v4);
  v6 = *(v5 + 64);
  v0[36] = OUTLINED_FUNCTION_43();
  v7 = sub_2313673A0();
  v0[37] = v7;
  OUTLINED_FUNCTION_0(v7);
  v0[38] = v8;
  v10 = *(v9 + 64);
  v0[39] = OUTLINED_FUNCTION_43();
  v11 = sub_231367490();
  v0[40] = v11;
  OUTLINED_FUNCTION_0(v11);
  v0[41] = v12;
  v14 = *(v13 + 64);
  v0[42] = OUTLINED_FUNCTION_67();
  v0[43] = swift_task_alloc();
  v15 = sub_2313698C0();
  v0[44] = v15;
  OUTLINED_FUNCTION_0(v15);
  v0[45] = v16;
  v18 = *(v17 + 64);
  v0[46] = OUTLINED_FUNCTION_67();
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v19 = sub_231367D80();
  v0[49] = v19;
  OUTLINED_FUNCTION_0(v19);
  v0[50] = v20;
  v22 = *(v21 + 64);
  v0[51] = OUTLINED_FUNCTION_43();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  OUTLINED_FUNCTION_40_0(v23);
  v25 = *(v24 + 64);
  v0[52] = OUTLINED_FUNCTION_43();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  OUTLINED_FUNCTION_40_0(v26);
  v28 = *(v27 + 64);
  v0[53] = OUTLINED_FUNCTION_43();
  v29 = sub_2313694E0();
  v0[54] = v29;
  OUTLINED_FUNCTION_0(v29);
  v0[55] = v30;
  v32 = *(v31 + 64);
  v0[56] = OUTLINED_FUNCTION_43();
  v33 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_231213104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_70_1();
  v15 = v14[55];
  v16 = v14[56];
  v18 = v14[53];
  v17 = v14[54];
  v19 = v14[52];
  v21 = v14[49];
  v20 = v14[50];
  v22 = v14[34];
  v23 = v14[35];
  v44 = v22[4];
  v43 = __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  (*(v15 + 104))(v16, *MEMORY[0x277D61380], v17);
  (*(v20 + 16))(v18, v23, v21);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v21);
  sub_2313676B0();
  OUTLINED_FUNCTION_52();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v28 = *(MEMORY[0x277D61138] + 4);
  v29 = swift_task_alloc();
  v14[57] = v29;
  *v29 = v14;
  v29[1] = sub_231213248;
  v30 = v14[56];
  v32 = v14[52];
  v31 = v14[53];
  v33 = v14[33];
  OUTLINED_FUNCTION_7();

  return MEMORY[0x2821C73A0](v34, v35, v36, v37, v38, v39, v40, v41, a9, v43, v44, a12, a13, a14);
}

uint64_t sub_231213248()
{
  OUTLINED_FUNCTION_12();
  v2 = v1[57];
  v3 = v1[56];
  v4 = v1[55];
  v5 = v1[54];
  v6 = v1[53];
  v7 = v1[52];
  v8 = *v0;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  *(v11 + 464) = v10;

  sub_2311D1F18(v7, &qword_27DD432D8, &unk_23136BED0);
  sub_2311D1F18(v6, &qword_27DD42F18, &unk_23136B810);
  (*(v4 + 8))(v3, v5);
  v12 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2312133F4()
{
  v177 = v0;
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[49];
  v7 = v0[35];
  if (v0[58])
  {
    v8 = v0[58];
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  (*(v5 + 104))(v0[51], *MEMORY[0x277D60B80], v0[49]);
  OUTLINED_FUNCTION_4_7();
  sub_231217784(v9, 255, v10);
  v11 = sub_231369F60();
  v12 = *(v5 + 8);
  v13 = OUTLINED_FUNCTION_44_0();
  v14(v13);
  if ((v11 & 1) == 0)
  {
    v27 = v0[48];
    v28 = v0[43];
    v29 = v0[40];
    v30 = v0[41];
    v31 = v0[33];
    sub_2313690F0();
    v32 = OUTLINED_FUNCTION_37_3();
    v33(v32);
    sub_231369EE0();
    v34 = sub_2313698A0();
    v35 = sub_23136A3A0();

    if (os_log_type_enabled(v34, v35))
    {
      v166 = v0[43];
      v36 = v0[41];
      v171 = v0[40];
      bufa = v34;
      v37 = v0[38];
      v38 = v0[39];
      v39 = v0[37];
      v40 = swift_slowAlloc();
      v168 = OUTLINED_FUNCTION_44();
      v175 = v168;
      *v40 = 136315394;
      sub_231367430();
      OUTLINED_FUNCTION_5_8();
      sub_231217784(v41, 255, v42);
      OUTLINED_FUNCTION_79_0();
      v43 = OUTLINED_FUNCTION_13_7();
      v44(v43);
      (*(v36 + 8))(v166, v171);
      v45 = OUTLINED_FUNCTION_28();
      v48 = sub_2311CFD58(v45, v46, v47);

      *(v40 + 4) = v48;
      v172 = v40;
      *(v40 + 12) = 2080;
      v49 = *(v8 + 16);
      v50 = MEMORY[0x277D84F90];
      if (v49)
      {
        LODWORD(v166) = v35;
        OUTLINED_FUNCTION_11_7();
        OUTLINED_FUNCTION_86_0();
        do
        {
          sub_2311CF324(v38, (v0 + 2));
          v51 = v0[6];
          __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
          OUTLINED_FUNCTION_28();
          v52 = sub_231368320();
          v54 = v53;
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
          v176 = v50;
          v56 = v50[2];
          v55 = v50[3];
          if (v56 >= v55 >> 1)
          {
            OUTLINED_FUNCTION_29_2(v55);
            sub_2311F4E34();
            v50 = v176;
          }

          v50[2] = v56 + 1;
          v57 = &v50[2 * v56];
          v57[4] = v52;
          v57[5] = v54;
          v38 += 40;
          --v49;
        }

        while (v49);
        LOBYTE(v35) = v166;
      }

      v112 = v0[48];
      v114 = v0[44];
      v113 = v0[45];
      MEMORY[0x23192A860](v50, MEMORY[0x277D837D0]);

      v115 = OUTLINED_FUNCTION_26_1();
      v118 = sub_2311CFD58(v115, v116, v117);

      *(v172 + 14) = v118;
      OUTLINED_FUNCTION_48_2(&dword_2311CB000, v119, v35, "IntentSuggestionsGenerator: intentQuery.intentType: %s resulted in candidates SuggestionIds: %s", v120, v121, v122, v123, v164, v166, v168, v172, bufa);
      OUTLINED_FUNCTION_49_2();
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_29();

      v124 = *(v113 + 8);
      v75 = OUTLINED_FUNCTION_68_1();
    }

    else
    {
      v65 = v0[48];
      v66 = v0[44];
      v67 = v0[45];
      v68 = v0[43];
      v69 = v0[40];
      v70 = v0[41];

      v71 = *(v70 + 8);
      v72 = OUTLINED_FUNCTION_54_0();
      v73(v72);
      v74 = *(v67 + 8);
      v75 = OUTLINED_FUNCTION_28();
    }

    v76(v75);
LABEL_51:
    OUTLINED_FUNCTION_41_3();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_31();

    __asm { BRAA            X2, X16 }
  }

  v15 = v0[47];
  sub_2313690F0();
  sub_231369EE0();
  v16 = sub_2313698A0();
  v17 = sub_23136A3A0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    buf = v18;
    v175 = v170;
    *v18 = 136315138;
    v19 = *(v8 + 16);
    v3 = MEMORY[0x277D84F90];
    if (v19)
    {
      LODWORD(v165) = v17;
      v167 = v16;
      OUTLINED_FUNCTION_11_7();
      OUTLINED_FUNCTION_86_0();
      do
      {
        sub_2311CF324(v17, (v0 + 27));
        v20 = v0[31];
        __swift_project_boxed_opaque_existential_1(v0 + 27, v0[30]);
        OUTLINED_FUNCTION_67_0();
        v21 = sub_231368320();
        v23 = v22;
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
        v176 = v3;
        v25 = v3[2];
        v24 = v3[3];
        if (v25 >= v24 >> 1)
        {
          OUTLINED_FUNCTION_29_2(v24);
          sub_2311F4E34();
          v3 = v176;
        }

        v3[2] = v25 + 1;
        v26 = &v3[2 * v25];
        v26[4] = v21;
        v26[5] = v23;
        v17 += 40;
        --v19;
      }

      while (v19);
      v16 = v167;
      LOBYTE(v17) = v165;
    }

    v77 = v0[47];
    v2 = v0[44];
    v78 = v0[45];
    MEMORY[0x23192A860](v3, MEMORY[0x277D837D0]);

    v79 = OUTLINED_FUNCTION_54_0();
    v82 = sub_2311CFD58(v79, v80, v81);

    v62 = buf;
    *(buf + 4) = v82;
    _os_log_impl(&dword_2311CB000, v16, v17, "IntentSuggestionsGenerator: all candidate SuggestionIds: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v170);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_40_3();

    v83 = *(v78 + 8);
    v1 = (v78 + 8);
    v61 = v83;
    v84 = OUTLINED_FUNCTION_68_1();
    v83(v84);
  }

  else
  {
    v58 = v0[47];
    v59 = v0[44];
    v60 = v0[45];

    v63 = *(v60 + 8);
    v62 = v60 + 8;
    v61 = v63;
    v64 = OUTLINED_FUNCTION_67_0();
    v63(v64);
  }

  v0[59] = v61;
  v85 = *(v8 + 16);
  v0[60] = v85;
  if (!v85)
  {
LABEL_41:

    OUTLINED_FUNCTION_76_1();
    v126 = OUTLINED_FUNCTION_37_3();
    v127(v126);
    sub_231369EE0();
    v128 = sub_2313698A0();
    v129 = sub_23136A3A0();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = OUTLINED_FUNCTION_47_3();
      v169 = OUTLINED_FUNCTION_44();
      v175 = v169;
      *v130 = 136315394;
      sub_231367430();
      OUTLINED_FUNCTION_5_8();
      sub_231217784(v131, 255, v132);
      OUTLINED_FUNCTION_79_0();
      v133 = OUTLINED_FUNCTION_13_7();
      v134(v133);
      (*(v62 + 8))(v2, v165);
      v135 = OUTLINED_FUNCTION_28();
      sub_2311CFD58(v135, v136, v137);

      OUTLINED_FUNCTION_99();
      v138 = MEMORY[0x277D84F90];
      if (v2)
      {
        v165 = v130;
        OUTLINED_FUNCTION_11_7();
        OUTLINED_FUNCTION_86_0();
        do
        {
          sub_2311CF324(v128, (v0 + 17));
          v139 = v0[21];
          __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
          OUTLINED_FUNCTION_28();
          sub_231368320();
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
          OUTLINED_FUNCTION_89();
          if (v141)
          {
            OUTLINED_FUNCTION_29_2(v140);
            sub_2311F4E34();
            v138 = v176;
          }

          OUTLINED_FUNCTION_72_1();
        }

        while (!v142);
      }

      v147 = v0[59];
      v149 = v0[45];
      v148 = v0[46];
      v150 = v0[44];
      v151 = MEMORY[0x23192A860](v138, MEMORY[0x277D837D0]);
      v153 = v152;

      v154 = sub_2311CFD58(v151, v153, &v175);

      *(v130 + 14) = v154;

      OUTLINED_FUNCTION_48_2(&dword_2311CB000, v155, v170, "IntentSuggestionsGenerator: intentQuery.intentType: %s resulted in candidates SuggestionIds: %s", v156, v157, v158, v159, v164, v165, v169, v170, buf);
      OUTLINED_FUNCTION_49_2();
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_29();

      v160 = OUTLINED_FUNCTION_68_1();
      v147(v160);
    }

    else
    {
      OUTLINED_FUNCTION_84_0();
      v143 = v3[1];
      v144 = OUTLINED_FUNCTION_54_0();
      v145(v144);
      v146 = OUTLINED_FUNCTION_28();
      v1(v146);
    }

    goto LABEL_51;
  }

  v86 = 0;
  v87 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[63] = v87;
    v0[64] = v87;
    v0[61] = 0;
    v0[62] = v86;
    v88 = v0[58];
    v89 = v0[36];
    v90 = v0[33];
    if (!v88)
    {
      v88 = MEMORY[0x277D84F90];
    }

    sub_2311CF324(v88 + 40 * v86 + 32, (v0 + 7));
    sub_231367410();
    v91 = sub_231367550();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v89, 1, v91);
    sub_2311D1F18(v89, &qword_27DD43808, &qword_231373E90);
    if (EnumTagSinglePayload != 1)
    {
      break;
    }

    sub_2311CF324((v0 + 7), (v0 + 12));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[32] = v87;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v102 = *(v87 + 16);
      OUTLINED_FUNCTION_23();
      sub_23126DF64();
      OUTLINED_FUNCTION_96(v103);
    }

    v95 = *(v87 + 16);
    v94 = *(v87 + 24);
    if (v95 >= v94 >> 1)
    {
      OUTLINED_FUNCTION_30_2(v94);
      sub_23126DF64();
      OUTLINED_FUNCTION_96(v104);
    }

    v96 = v0[15];
    v1 = v0[16];
    v2 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v96);
    OUTLINED_FUNCTION_21();
    v98 = v97;
    v100 = *(v99 + 64);
    v3 = OUTLINED_FUNCTION_43();
    (*(v98 + 16))(v3, v2, v96);
    sub_2312E6494(v95, v3, v0 + 32, v96, v1);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

    v101 = v0[60];
    v62 = v0[62] + 1;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    if (v62 == v101)
    {
      if (v0[58])
      {
        v125 = v0[58];
      }

      goto LABEL_41;
    }

    v86 = v0[62] + 1;
  }

  v105 = v0[11];
  OUTLINED_FUNCTION_56(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[65] = v106;
  v0[66] = v107;
  v0[67] = swift_getObjectType();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v108, v109, v110);
}

uint64_t sub_231213E20()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v0[68] = sub_2313693F0();
  swift_unknownObjectRelease();
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231213E90()
{
  v99 = v0;
  v3 = v0[68];
  if (v3)
  {
    v4 = v0[61];
    v5 = *(v3 + 16);
    if (v4 < v5)
    {
      v6 = v0[64];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F10, &unk_23136C970);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_23136B670;
      sub_2311CF324((v0 + 7), v7 + 32);
      v8 = *(v3 + 16);

LABEL_11:
      v9 = v7;
      goto LABEL_13;
    }

    v10 = v0[68];

    v9 = v0[64];
    if (v5 == v4)
    {
      sub_2311CF324((v0 + 7), (v0 + 22));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[32] = v9;
      v7 = v0[64];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v89 = *(v7 + 16);
        OUTLINED_FUNCTION_23();
        sub_23126DF64();
        OUTLINED_FUNCTION_96(v90);
      }

      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        OUTLINED_FUNCTION_30_2(v12);
        sub_23126DF64();
        OUTLINED_FUNCTION_96(v91);
      }

      v14 = v0[25];
      v15 = v0[26];
      v16 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 22), v14);
      OUTLINED_FUNCTION_21();
      v18 = v17;
      v20 = *(v19 + 64);
      v21 = OUTLINED_FUNCTION_43();
      v22 = *(v18 + 16);
      v1 = v18 + 16;
      v22(v21, v16, v14);
      sub_2312E6494(v13, v21, v0 + 32, v14, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);

      v8 = v0[61];
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v0[64];
  }

  v7 = v0[63];
  v8 = v0[61];
  while (1)
  {
LABEL_13:
    v23 = v0[60];
    v24 = (v0[62] + 1);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    if (v24 == v23)
    {
      if (v0[58])
      {
        v43 = v0[58];
      }

      OUTLINED_FUNCTION_76_1();
      v44 = OUTLINED_FUNCTION_37_3();
      v45(v44);
      sub_231369EE0();
      v46 = sub_2313698A0();
      v47 = sub_23136A3A0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_47_3();
        v95 = OUTLINED_FUNCTION_44();
        v98[0] = v95;
        *v48 = 136315394;
        sub_231367430();
        OUTLINED_FUNCTION_5_8();
        sub_231217784(v49, 255, v50);
        OUTLINED_FUNCTION_79_0();
        v51 = OUTLINED_FUNCTION_13_7();
        v52(v51);
        MEMORY[0](v1);
        v53 = OUTLINED_FUNCTION_28();
        sub_2311CFD58(v53, v54, v55);

        OUTLINED_FUNCTION_99();
        v56 = MEMORY[0x277D84F90];
        if (v1)
        {
          v94 = v48;
          OUTLINED_FUNCTION_11_7();
          OUTLINED_FUNCTION_86_0();
          do
          {
            sub_2311CF324(v46, (v0 + 17));
            v57 = v0[21];
            __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
            OUTLINED_FUNCTION_28();
            sub_231368320();
            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
            OUTLINED_FUNCTION_89();
            if (v59)
            {
              OUTLINED_FUNCTION_29_2(v58);
              sub_2311F4E34();
              v56 = v98[1];
            }

            OUTLINED_FUNCTION_72_1();
          }

          while (!v60);
        }

        v73 = v0[59];
        v75 = v0[45];
        v74 = v0[46];
        v76 = v0[44];
        v77 = MEMORY[0x23192A860](v56, MEMORY[0x277D837D0]);
        v79 = v78;

        v80 = sub_2311CFD58(v77, v79, v98);

        *(v48 + 14) = v80;

        OUTLINED_FUNCTION_48_2(&dword_2311CB000, v81, v96, "IntentSuggestionsGenerator: intentQuery.intentType: %s resulted in candidates SuggestionIds: %s", v82, v83, v84, v85, v93, v94, v95, v96, v97);
        OUTLINED_FUNCTION_49_2();
        OUTLINED_FUNCTION_40_3();
        OUTLINED_FUNCTION_29();

        v86 = OUTLINED_FUNCTION_68_1();
        v73(v86);
      }

      else
      {
        OUTLINED_FUNCTION_84_0();
        v69 = *(v2 + 8);
        v70 = OUTLINED_FUNCTION_54_0();
        v71(v70);
        v72 = OUTLINED_FUNCTION_28();
        v24(v72);
      }

      OUTLINED_FUNCTION_41_3();

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_31();

      __asm { BRAA            X2, X16 }
    }

    v25 = v0[62];
    v0[63] = v7;
    v0[64] = v9;
    v0[61] = v8;
    v0[62] = v25 + 1;
    v26 = v0[58];
    v27 = v0[36];
    v28 = v0[33];
    if (!v26)
    {
      v26 = MEMORY[0x277D84F90];
    }

    sub_2311CF324(v26 + 40 * v25 + 72, (v0 + 7));
    sub_231367410();
    v29 = sub_231367550();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v29);
    sub_2311D1F18(v27, &qword_27DD43808, &qword_231373E90);
    if (EnumTagSinglePayload != 1)
    {
      break;
    }

    sub_2311CF324((v0 + 7), (v0 + 12));
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v0[32] = v9;
    if ((v31 & 1) == 0)
    {
      v40 = *(v9 + 16);
      OUTLINED_FUNCTION_23();
      sub_23126DF64();
      v9 = v41;
      v0[32] = v41;
    }

    v33 = *(v9 + 16);
    v32 = *(v9 + 24);
    if (v33 >= v32 >> 1)
    {
      OUTLINED_FUNCTION_30_2(v32);
      sub_23126DF64();
      v9 = v42;
      v0[32] = v42;
    }

    v34 = v0[15];
    v35 = v0[16];
    v1 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v34);
    OUTLINED_FUNCTION_21();
    v37 = v36;
    v39 = *(v38 + 64);
    v2 = OUTLINED_FUNCTION_43();
    (*(v37 + 16))(v2, v1, v34);
    sub_2312E6494(v33, v2, v0 + 32, v34, v35);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

    v7 = v9;
  }

  v61 = v0[11];
  OUTLINED_FUNCTION_56(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[65] = v62;
  v0[66] = v63;
  v0[67] = swift_getObjectType();
  v64 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_15_6(v64);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v65, v66, v67);
}

uint64_t sub_231214520()
{
  OUTLINED_FUNCTION_8();
  v0[89] = v1;
  v0[88] = v2;
  v0[87] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437E8, &qword_23136DFD8);
  OUTLINED_FUNCTION_40_0(v4);
  v6 = *(v5 + 64);
  v0[90] = OUTLINED_FUNCTION_43();
  v7 = sub_231366380();
  v0[91] = v7;
  OUTLINED_FUNCTION_0(v7);
  v0[92] = v8;
  v10 = *(v9 + 64);
  v0[93] = OUTLINED_FUNCTION_43();
  v11 = sub_2313673A0();
  v0[94] = v11;
  OUTLINED_FUNCTION_0(v11);
  v0[95] = v12;
  v14 = *(v13 + 64);
  v0[96] = OUTLINED_FUNCTION_67();
  v0[97] = swift_task_alloc();
  v15 = sub_231367D80();
  v0[98] = v15;
  OUTLINED_FUNCTION_0(v15);
  v0[99] = v16;
  v18 = *(v17 + 64);
  v0[100] = OUTLINED_FUNCTION_43();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437F0, &unk_23136DFE0);
  v0[101] = v19;
  OUTLINED_FUNCTION_40_0(v19);
  v21 = *(v20 + 64);
  v0[102] = OUTLINED_FUNCTION_43();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  OUTLINED_FUNCTION_40_0(v22);
  v24 = *(v23 + 64);
  v0[103] = OUTLINED_FUNCTION_67();
  v0[104] = swift_task_alloc();
  v0[105] = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_231214710()
{
  OUTLINED_FUNCTION_70_1();
  v5 = *(v0 + 704);
  v6 = *(v0 + 696);
  v7 = *(v5 + 32);
  *(v0 + 1000) = v7;
  v8 = -1;
  v9 = -1 << v7;
  if (-(-1 << v7) < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v5 + 64);
  v11 = sub_231369EE0();
  if (!v10)
  {
    v13 = 0;
    while (((63 - v9) >> 6) - 1 != v13)
    {
      v12 = v13 + 1;
      v10 = *(v11 + 8 * v13++ + 72);
      if (v10)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_54_3();

    OUTLINED_FUNCTION_82_0();
    v37 = *(v4 + 104);
    v36 = (v4 + 104);
    v37(v2, *MEMORY[0x277D60B80], v10);
    OUTLINED_FUNCTION_62_2();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    v42 = *(v3 + 48);
    v43 = OUTLINED_FUNCTION_55_2();
    sub_2311E66F0(v43, v44, &qword_27DD42F18, &unk_23136B810);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_53(v9);
    if (v18)
    {
      v48 = *(v0 + 840);
      v45 = *(v0 + 784);
      sub_2311D1F18(*(v0 + 832), &qword_27DD42F18, &unk_23136B810);
      v46 = OUTLINED_FUNCTION_67_0();
      sub_2311D1F18(v46, v47, &unk_23136B810);
      OUTLINED_FUNCTION_53(v9 + v42);
      if (v18)
      {
        sub_2311D1F18(*(v0 + 816), &qword_27DD42F18, &unk_23136B810);
LABEL_33:
        OUTLINED_FUNCTION_46_4();
        OUTLINED_FUNCTION_98("sirikit.intents.custom.com.apple.siri.SiriTimeAlarmInternal.AlarmIntentsExtension.CreateAlarmIntent");
        v66 = *MEMORY[0x277D60868];
        v67 = OUTLINED_FUNCTION_69_1();
        (unk_23136B810)(v67);
        OUTLINED_FUNCTION_55_2();
        sub_231367390();
        v68 = OUTLINED_FUNCTION_92();
        v36(v68);
        v69 = OUTLINED_FUNCTION_54_0();
        v36(v69);
        v70 = "siriKitIntentEvent";
        if ((v48 & 1) == 0)
        {
          goto LABEL_55;
        }

        v71 = *(v0 + 712);
        sub_231367440();
        v72 = OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_108(v72);

        if (*(v0 + 536) == 1)
        {
          v73 = &unk_27DD43800;
          v74 = &unk_231377070;
          v75 = v0 + 512;
LABEL_54:
          sub_2311D1F18(v75, v73, v74);
          goto LABEL_55;
        }

        v76 = *(v0 + 528);
        *(v0 + 480) = *(v0 + 512);
        *(v0 + 496) = v76;
        if (!*(v0 + 504))
        {
          v73 = &qword_27DD443C0;
          v74 = &unk_23136E000;
          v75 = v0 + 480;
          goto LABEL_54;
        }

        if ((OUTLINED_FUNCTION_107() & 1) == 0)
        {
LABEL_55:
          OUTLINED_FUNCTION_64_2();
          v107 = OUTLINED_FUNCTION_25_4("sirikit.intents.custom.com.apple.siri.SiriTimeInternal.TimerIntentsExtension.CreateTimerIntent");
          v108(v107);
          OUTLINED_FUNCTION_54_0();
          v109 = sub_231367390();
          v110 = OUTLINED_FUNCTION_71();
          v36(v110);
          (v36)(v70, &unk_23136B810);
          if (v109)
          {
            v111 = *(v0 + 712);
            sub_231367440();
            v112 = OUTLINED_FUNCTION_9_7();
            OUTLINED_FUNCTION_108(v112);

            if (*(v0 + 376) == 1)
            {
              v58 = &unk_27DD43800;
              v59 = &unk_231377070;
              v57 = v0 + 352;
              goto LABEL_31;
            }

            v113 = *(v0 + 368);
            *(v0 + 320) = *(v0 + 352);
            *(v0 + 336) = v113;
            if (!*(v0 + 344))
            {
              v58 = &qword_27DD443C0;
              v59 = &unk_23136E000;
              v57 = v0 + 320;
              goto LABEL_31;
            }

            if (swift_dynamicCast())
            {
              v114 = *(v0 + 656);
              v115 = *(v0 + 664);
              OUTLINED_FUNCTION_10_7();
              if (v18 && v116 == v115)
              {
              }

              else
              {
                v118 = OUTLINED_FUNCTION_27_4();

                if ((v118 & 1) == 0)
                {
                  goto LABEL_73;
                }
              }

              v119 = *(v0 + 712);
              v120 = sub_231367440();
              v121 = OUTLINED_FUNCTION_34_2();
              sub_231210BE8(v121, 0xE800000000000000, v120);

              if (*(v0 + 440) == 1)
              {
                v58 = &unk_27DD43800;
                v59 = &unk_231377070;
                v57 = v0 + 416;
                goto LABEL_31;
              }

              v122 = *(v0 + 432);
              *(v0 + 384) = *(v0 + 416);
              *(v0 + 400) = v122;
              if (!*(v0 + 408))
              {
                v58 = &qword_27DD443C0;
                v59 = &unk_23136E000;
                v57 = v0 + 384;
                goto LABEL_31;
              }

              if (swift_dynamicCast())
              {
                v123 = *(v0 + 696);
                v124 = *(v0 + 688);
                v125 = v123[4];
                OUTLINED_FUNCTION_56(v123, v123[3]);
                OUTLINED_FUNCTION_26_1();
                v126 = sub_231368300();
                v128 = OUTLINED_FUNCTION_106(v126, v127);
                OUTLINED_FUNCTION_81_0(v128);
                OUTLINED_FUNCTION_23_2();
                goto LABEL_19;
              }
            }
          }

LABEL_73:
          OUTLINED_FUNCTION_3_9();

          OUTLINED_FUNCTION_56_0();
          OUTLINED_FUNCTION_18_1();

          __asm { BRAA            X1, X16 }
        }

        v77 = *(v0 + 672);
        v78 = *(v0 + 680);
        OUTLINED_FUNCTION_10_7();
        if (v18 && v79 == v78)
        {
        }

        else
        {
          v70 = OUTLINED_FUNCTION_27_4();

          if ((v70 & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        v81 = *(v0 + 712);
        v82 = sub_231367440();
        v83 = OUTLINED_FUNCTION_63_2();
        sub_231210BE8(v83, v84, v82);

        if (*(v0 + 600) == 1)
        {
          v85 = &unk_27DD43800;
          v86 = &unk_231377070;
          v87 = v0 + 576;
        }

        else
        {
          v88 = *(v0 + 592);
          *(v0 + 544) = *(v0 + 576);
          *(v0 + 560) = v88;
          if (*(v0 + 568))
          {
            v89 = OUTLINED_FUNCTION_57_3();
            OUTLINED_FUNCTION_67_1(v89);
            if (!v18)
            {
              v90 = OUTLINED_FUNCTION_35_4();
              v91(v90);
              v92 = *(v82 + 24);
              v93 = *(v82 + 32);
              v94 = OUTLINED_FUNCTION_67_0();
              OUTLINED_FUNCTION_56(v94, v95);
              OUTLINED_FUNCTION_54_0();
              sub_231368300();
              OUTLINED_FUNCTION_91();
              *(v0 + 952) = v96;
              *(v0 + 960) = v97;
              ObjectType = swift_getObjectType();
              v99 = OUTLINED_FUNCTION_101(ObjectType);
              MEMORY[0xC0FFE74804](v99, v9, v66);
              v100 = *(*(v92 + 8) + 8);
              sub_23136A260();
              OUTLINED_FUNCTION_21_5();
              goto LABEL_19;
            }

            goto LABEL_53;
          }

          v85 = &qword_27DD443C0;
          v86 = &unk_23136E000;
          v87 = v0 + 544;
        }

        sub_2311D1F18(v87, v85, v86);
        v101 = *(v0 + 728);
        v102 = *(v0 + 720);
        OUTLINED_FUNCTION_52();
        __swift_storeEnumTagSinglePayload(v103, v104, v105, v106);
LABEL_53:
        v75 = *(v0 + 720);
        v73 = &unk_27DD437E8;
        v74 = &unk_23136DFD8;
        goto LABEL_54;
      }
    }

    else
    {
      v48 = *(v0 + 784);
      sub_2311E66F0(*(v0 + 816), *(v0 + 824), &qword_27DD42F18, &unk_23136B810);
      OUTLINED_FUNCTION_88();
      if (!v49)
      {
        v60 = OUTLINED_FUNCTION_26_5();
        v61(v60);
        OUTLINED_FUNCTION_4_7();
        sub_231217784(v62, 255, v63);
        OUTLINED_FUNCTION_105();
        v64 = OUTLINED_FUNCTION_93();
        v2(v64);
        OUTLINED_FUNCTION_80_1(&unk_23136B810);
        OUTLINED_FUNCTION_80_1(v1);
        v65 = OUTLINED_FUNCTION_44_0();
        v2(v65);
        OUTLINED_FUNCTION_80_1(v132);
        if ((v9 & 1) == 0)
        {
          goto LABEL_73;
        }

        goto LABEL_33;
      }

      v50 = *(v0 + 792);
      v51 = *(v0 + 784);
      sub_2311D1F18(&unk_23136B810, &qword_27DD42F18, &unk_23136B810);
      v52 = OUTLINED_FUNCTION_55_2();
      sub_2311D1F18(v52, v53, &unk_23136B810);
      v54 = *(v50 + 8);
      v55 = OUTLINED_FUNCTION_44_0();
      v56(v55);
    }

    v57 = *(v0 + 816);
    v58 = &unk_27DD437F0;
    v59 = &unk_23136DFE0;
LABEL_31:
    sub_2311D1F18(v57, v58, v59);
    goto LABEL_73;
  }

  v12 = 0;
LABEL_8:
  *(v0 + 856) = v12;
  *(v0 + 848) = v10;
  v14 = __clz(__rbit64(v10)) | (v12 << 6);
  v15 = (*(v11 + 48) + 16 * v14);
  v16 = *v15;
  *(v0 + 864) = *v15;
  v17 = v15[1];
  *(v0 + 872) = v17;
  sub_231215FE4(*(v11 + 56) + 48 * v14, v0 + 32);
  *(v0 + 80) = v16;
  *(v0 + 88) = v17;
  sub_23121776C((v0 + 32), (v0 + 96));
  v18 = v16 == 0xD000000000000013 && 0x800000023137CF00 == v17;
  if (v18 || (OUTLINED_FUNCTION_44_0(), (sub_23136A900() & 1) != 0))
  {
    sub_2311E66F0(v0 + 80, v0 + 144, &qword_27DD437F8, &unk_23136DFF0);
    v19 = *(v0 + 152);
    sub_231369EE0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43300, &qword_23136BF00);
    if (swift_dynamicCast())
    {
      v20 = *(v0 + 696);
      v21 = *(v0 + 640);
      *(v0 + 880) = *(v0 + 648);
      v22 = v20[4];
      OUTLINED_FUNCTION_56(v20, v20[3]);
      OUTLINED_FUNCTION_54_0();
      sub_231368300();
      OUTLINED_FUNCTION_91();
      *(v0 + 888) = v23;
      swift_getObjectType();
      v24 = *(MEMORY[0x277D61348] + 4);
      v25 = swift_task_alloc();
      *(v0 + 896) = v25;
      *v25 = v0;
      OUTLINED_FUNCTION_12_5(v25);
      OUTLINED_FUNCTION_18_1();

      return MEMORY[0x2821C77A8]();
    }
  }

  else
  {
    sub_231369EE0();
  }

  v27 = *(v0 + 696);
  v28 = v27[4];
  OUTLINED_FUNCTION_56(v27, v27[3]);
  OUTLINED_FUNCTION_28_0();
  *(v0 + 904) = sub_231368300();
  *(v0 + 912) = v29;
  *(v0 + 920) = swift_getObjectType();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 928) = v30;
  *(v0 + 936) = v31;
  *(v0 + 944) = swift_getObjectType();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_22_4();
LABEL_19:
  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_231215018()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1[112];
  v3 = v1[111];
  v4 = v1[110];
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  swift_unknownObjectRelease();

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231215134()
{
  OUTLINED_FUNCTION_70_1();
  sub_2311D1F18(v2 + 80, &qword_27DD437F8, &unk_23136DFF0);
  v8 = *(v2 + 856);
  v9 = (*(v2 + 848) - 1) & *(v2 + 848);
  if (v9)
  {
    v10 = *(v2 + 704);
    goto LABEL_7;
  }

  do
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v11 >= (((1 << *(v2 + 1000)) + 63) >> 6))
    {
      OUTLINED_FUNCTION_54_3();
      v34 = *(v2 + 704);
      v35 = *(v2 + 696);

      OUTLINED_FUNCTION_82_0();
      v36 = *(v7 + 104);
      v7 += 104;
      v36(v4, *MEMORY[0x277D60B80], v1);
      OUTLINED_FUNCTION_62_2();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
      v41 = *(v6 + 48);
      v5 = &unk_23136B810;
      v42 = OUTLINED_FUNCTION_55_2();
      sub_2311E66F0(v42, v43, &qword_27DD42F18, &unk_23136B810);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_53(v0);
      if (v16)
      {
        v47 = *(v2 + 840);
        v44 = *(v2 + 784);
        sub_2311D1F18(*(v2 + 832), &qword_27DD42F18, &unk_23136B810);
        v45 = OUTLINED_FUNCTION_67_0();
        sub_2311D1F18(v45, v46, &unk_23136B810);
        OUTLINED_FUNCTION_53(v0 + v41);
        if (v16)
        {
          sub_2311D1F18(*(v2 + 816), &qword_27DD42F18, &unk_23136B810);
LABEL_32:
          OUTLINED_FUNCTION_46_4();
          OUTLINED_FUNCTION_98("sirikit.intents.custom.com.apple.siri.SiriTimeAlarmInternal.AlarmIntentsExtension.CreateAlarmIntent");
          v1 = *MEMORY[0x277D60868];
          v65 = OUTLINED_FUNCTION_69_1();
          (unk_23136B810)(v65);
          OUTLINED_FUNCTION_55_2();
          sub_231367390();
          v66 = OUTLINED_FUNCTION_92();
          (v7)(v66);
          v67 = OUTLINED_FUNCTION_54_0();
          (v7)(v67);
          v3 = "siriKitIntentEvent";
          if ((v47 & 1) == 0)
          {
            goto LABEL_55;
          }

          v68 = *(v2 + 712);
          sub_231367440();
          v69 = OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_108(v69);

          if (*(v2 + 536) == 1)
          {
            v70 = &unk_27DD43800;
            v71 = &unk_231377070;
            v72 = v2 + 512;
LABEL_54:
            sub_2311D1F18(v72, v70, v71);
            goto LABEL_55;
          }

          v73 = *(v2 + 528);
          *(v2 + 480) = *(v2 + 512);
          *(v2 + 496) = v73;
          if (!*(v2 + 504))
          {
            v70 = &qword_27DD443C0;
            v71 = &unk_23136E000;
            v72 = v2 + 480;
            goto LABEL_54;
          }

          if ((OUTLINED_FUNCTION_107() & 1) == 0)
          {
LABEL_55:
            OUTLINED_FUNCTION_64_2();
            v104 = OUTLINED_FUNCTION_25_4("sirikit.intents.custom.com.apple.siri.SiriTimeInternal.TimerIntentsExtension.CreateTimerIntent");
            v105(v104);
            OUTLINED_FUNCTION_54_0();
            v106 = sub_231367390();
            v107 = OUTLINED_FUNCTION_71();
            (v7)(v107);
            (v7)(v3, v5);
            if (v106)
            {
              v108 = *(v2 + 712);
              sub_231367440();
              v109 = OUTLINED_FUNCTION_9_7();
              OUTLINED_FUNCTION_108(v109);

              if (*(v2 + 376) == 1)
              {
                v57 = &unk_27DD43800;
                v58 = &unk_231377070;
                v56 = v2 + 352;
                goto LABEL_30;
              }

              v110 = *(v2 + 368);
              *(v2 + 320) = *(v2 + 352);
              *(v2 + 336) = v110;
              if (!*(v2 + 344))
              {
                v57 = &qword_27DD443C0;
                v58 = &unk_23136E000;
                v56 = v2 + 320;
                goto LABEL_30;
              }

              if (swift_dynamicCast())
              {
                v111 = *(v2 + 656);
                v112 = *(v2 + 664);
                OUTLINED_FUNCTION_10_7();
                if (v16 && v113 == v112)
                {
                }

                else
                {
                  v115 = OUTLINED_FUNCTION_27_4();

                  if ((v115 & 1) == 0)
                  {
                    goto LABEL_73;
                  }
                }

                v116 = *(v2 + 712);
                v117 = sub_231367440();
                v118 = OUTLINED_FUNCTION_34_2();
                sub_231210BE8(v118, 0xE800000000000000, v117);

                if (*(v2 + 440) == 1)
                {
                  v57 = &unk_27DD43800;
                  v58 = &unk_231377070;
                  v56 = v2 + 416;
                  goto LABEL_30;
                }

                v119 = *(v2 + 432);
                *(v2 + 384) = *(v2 + 416);
                *(v2 + 400) = v119;
                if (!*(v2 + 408))
                {
                  v57 = &qword_27DD443C0;
                  v58 = &unk_23136E000;
                  v56 = v2 + 384;
                  goto LABEL_30;
                }

                if (swift_dynamicCast())
                {
                  v120 = *(v2 + 696);
                  v121 = *(v2 + 688);
                  v122 = v120[4];
                  OUTLINED_FUNCTION_56(v120, v120[3]);
                  OUTLINED_FUNCTION_26_1();
                  v123 = sub_231368300();
                  v125 = OUTLINED_FUNCTION_106(v123, v124);
                  OUTLINED_FUNCTION_81_0(v125);
                  OUTLINED_FUNCTION_23_2();
                  goto LABEL_18;
                }
              }
            }

LABEL_73:
            OUTLINED_FUNCTION_3_9();

            OUTLINED_FUNCTION_56_0();
            OUTLINED_FUNCTION_18_1();

            __asm { BRAA            X1, X16 }
          }

          v74 = *(v2 + 672);
          v75 = *(v2 + 680);
          OUTLINED_FUNCTION_10_7();
          if (!v16 || v76 != v75)
          {
            v3 = OUTLINED_FUNCTION_27_4();

            if ((v3 & 1) == 0)
            {
              goto LABEL_55;
            }

LABEL_46:
            v78 = *(v2 + 712);
            v79 = sub_231367440();
            v80 = OUTLINED_FUNCTION_63_2();
            sub_231210BE8(v80, v81, v79);

            if (*(v2 + 600) == 1)
            {
              v82 = &unk_27DD43800;
              v83 = &unk_231377070;
              v84 = v2 + 576;
            }

            else
            {
              v85 = *(v2 + 592);
              *(v2 + 544) = *(v2 + 576);
              *(v2 + 560) = v85;
              if (*(v2 + 568))
              {
                v86 = OUTLINED_FUNCTION_57_3();
                OUTLINED_FUNCTION_67_1(v86);
                if (!v16)
                {
                  v87 = OUTLINED_FUNCTION_35_4();
                  v88(v87);
                  v89 = *(v79 + 24);
                  v90 = *(v79 + 32);
                  v91 = OUTLINED_FUNCTION_67_0();
                  OUTLINED_FUNCTION_56(v91, v92);
                  OUTLINED_FUNCTION_54_0();
                  sub_231368300();
                  OUTLINED_FUNCTION_91();
                  *(v2 + 952) = v93;
                  *(v2 + 960) = v94;
                  ObjectType = swift_getObjectType();
                  v96 = OUTLINED_FUNCTION_101(ObjectType);
                  v5[2](v96, v0, v1);
                  v97 = *(*(v89 + 8) + 8);
                  sub_23136A260();
                  OUTLINED_FUNCTION_21_5();
                  goto LABEL_18;
                }

                goto LABEL_53;
              }

              v82 = &qword_27DD443C0;
              v83 = &unk_23136E000;
              v84 = v2 + 544;
            }

            sub_2311D1F18(v84, v82, v83);
            v98 = *(v2 + 728);
            v99 = *(v2 + 720);
            OUTLINED_FUNCTION_52();
            __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
LABEL_53:
            v72 = *(v2 + 720);
            v70 = &unk_27DD437E8;
            v71 = &unk_23136DFD8;
            goto LABEL_54;
          }

LABEL_45:

          goto LABEL_46;
        }
      }

      else
      {
        v47 = *(v2 + 784);
        sub_2311E66F0(*(v2 + 816), *(v2 + 824), &qword_27DD42F18, &unk_23136B810);
        OUTLINED_FUNCTION_88();
        if (!v48)
        {
          v59 = OUTLINED_FUNCTION_26_5();
          v60(v59);
          OUTLINED_FUNCTION_4_7();
          sub_231217784(v61, 255, v62);
          OUTLINED_FUNCTION_105();
          v63 = OUTLINED_FUNCTION_93();
          v4(v63);
          OUTLINED_FUNCTION_80_1(&unk_23136B810);
          OUTLINED_FUNCTION_80_1(v3);
          v64 = OUTLINED_FUNCTION_44_0();
          v4(v64);
          OUTLINED_FUNCTION_80_1(v129);
          if ((v0 & 1) == 0)
          {
            goto LABEL_73;
          }

          goto LABEL_32;
        }

        v49 = *(v2 + 792);
        v50 = *(v2 + 784);
        sub_2311D1F18(&unk_23136B810, &qword_27DD42F18, &unk_23136B810);
        v51 = OUTLINED_FUNCTION_55_2();
        sub_2311D1F18(v51, v52, &unk_23136B810);
        v53 = *(v49 + 8);
        v54 = OUTLINED_FUNCTION_44_0();
        v55(v54);
      }

      v56 = *(v2 + 816);
      v57 = &unk_27DD437F0;
      v58 = &unk_23136DFE0;
LABEL_30:
      sub_2311D1F18(v56, v57, v58);
      goto LABEL_73;
    }

    v10 = *(v2 + 704);
    v9 = *(v10 + 8 * v11 + 64);
    ++v8;
  }

  while (!v9);
  v8 = v11;
LABEL_7:
  *(v2 + 856) = v8;
  *(v2 + 848) = v9;
  v12 = __clz(__rbit64(v9)) | (v8 << 6);
  v13 = (*(v10 + 48) + 16 * v12);
  v14 = *v13;
  *(v2 + 864) = *v13;
  v15 = v13[1];
  *(v2 + 872) = v15;
  sub_231215FE4(*(v10 + 56) + 48 * v12, v2 + 32);
  *(v2 + 80) = v14;
  *(v2 + 88) = v15;
  sub_23121776C((v2 + 32), (v2 + 96));
  v16 = v14 == 0xD000000000000013 && 0x800000023137CF00 == v15;
  if (v16 || (OUTLINED_FUNCTION_44_0(), (sub_23136A900() & 1) != 0))
  {
    sub_2311E66F0(v2 + 80, v2 + 144, &qword_27DD437F8, &unk_23136DFF0);
    v17 = *(v2 + 152);
    sub_231369EE0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43300, &qword_23136BF00);
    if (swift_dynamicCast())
    {
      v18 = *(v2 + 696);
      v19 = *(v2 + 640);
      *(v2 + 880) = *(v2 + 648);
      v20 = v18[4];
      OUTLINED_FUNCTION_56(v18, v18[3]);
      OUTLINED_FUNCTION_54_0();
      sub_231368300();
      OUTLINED_FUNCTION_91();
      *(v2 + 888) = v21;
      swift_getObjectType();
      v22 = *(MEMORY[0x277D61348] + 4);
      v23 = swift_task_alloc();
      *(v2 + 896) = v23;
      *v23 = v2;
      OUTLINED_FUNCTION_12_5();
      OUTLINED_FUNCTION_18_1();

      return MEMORY[0x2821C77A8]();
    }
  }

  else
  {
    sub_231369EE0();
  }

  v25 = *(v2 + 696);
  v26 = v25[4];
  OUTLINED_FUNCTION_56(v25, v25[3]);
  OUTLINED_FUNCTION_28_0();
  *(v2 + 904) = sub_231368300();
  *(v2 + 912) = v27;
  *(v2 + 920) = swift_getObjectType();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v2 + 928) = v28;
  *(v2 + 936) = v29;
  *(v2 + 944) = swift_getObjectType();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_22_4();
LABEL_18:
  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_231215A44()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[116];
  sub_231369380();
  swift_unknownObjectRelease();
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231215AB4()
{
  v1 = v0[115];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[29];
  v5 = v0[30];
  v6 = __swift_project_boxed_opaque_existential_1(v0 + 26, v4);
  v0[34] = v4;
  v0[35] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 31);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  v8 = v0[15];
  v9 = __swift_project_boxed_opaque_existential_1(v0 + 12, v8);
  v0[39] = v8;
  v10 = __swift_allocate_boxed_opaque_existential_1(v0 + 36);
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  v11 = *(*(v2 + 8) + 8);
  v13 = sub_23136A260();

  return MEMORY[0x2822009F8](sub_231215BF0, v13, v12);
}

uint64_t sub_231215BF0()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[115];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[109];
  v5 = v0[108];
  sub_231369450();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 36);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 31);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 26);
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231215C84()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[121];
  v2 = v0[120];
  v3 = v0[119];
  OUTLINED_FUNCTION_63_2();
  sub_231369390();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 76);
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231215D00()
{
  (*(v0[92] + 8))(v0[93], v0[91]);
  OUTLINED_FUNCTION_3_9();

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_231215DCC()
{
  v1 = v0[124];
  v2 = v0[123];
  v3 = v0[122];
  OUTLINED_FUNCTION_34_2();
  sub_231369390();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  OUTLINED_FUNCTION_3_9();

  OUTLINED_FUNCTION_56_0();

  return v4();
}

uint64_t sub_231215EC0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311DDECC;

  return IntentSuggestionsGenerator.generateCandidateSuggestions(interaction:environment:factory:)();
}

unint64_t sub_231215F6C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23136A9D0();
  sub_23136A060();
  v6 = sub_23136AA00();

  return sub_231216A44(a1, a2, v6);
}

uint64_t sub_231215FE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2312160A8()
{
  OUTLINED_FUNCTION_104();
  sub_23120F4F0();
  v1 = sub_23136AA00();

  return sub_231216AF8(v0, v1);
}

unint64_t sub_231216104()
{
  OUTLINED_FUNCTION_0_9();
  sub_231367E10();
  OUTLINED_FUNCTION_60_2(&qword_280F7CA28);
  v0 = OUTLINED_FUNCTION_16_6();
  return OUTLINED_FUNCTION_14_7(v0, v0, MEMORY[0x277D60C78], &qword_280F7CA20, v1, MEMORY[0x277D60C88]);
}

unint64_t sub_2312161B0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2313692F0();
  sub_231217784(&unk_280F7C910, 255, MEMORY[0x277D612D0]);
  v4 = sub_231369F30();
  return sub_231216BB0(a1, v4);
}

unint64_t sub_231216260()
{
  OUTLINED_FUNCTION_0_9();
  sub_231369D50();
  OUTLINED_FUNCTION_60_2(&qword_280F7C888);
  v0 = OUTLINED_FUNCTION_16_6();
  return OUTLINED_FUNCTION_14_7(v0, v0, MEMORY[0x277D72D58], &qword_27DD43360, v1, MEMORY[0x277D72D70]);
}

unint64_t sub_23121630C(char a1)
{
  v3 = *(v1 + 40);
  sub_23136A9D0();
  sub_2312112DC();
  v4 = sub_23136AA00();

  return sub_231216E40(a1, v4);
}

unint64_t sub_231216378()
{
  OUTLINED_FUNCTION_104();
  sub_2312B7044();
  v1 = sub_23136AA00();

  return sub_231217010(v0, v1);
}

unint64_t sub_2312163D4()
{
  OUTLINED_FUNCTION_0_9();
  sub_231367E50();
  OUTLINED_FUNCTION_60_2(&qword_280F7CA10);
  v0 = OUTLINED_FUNCTION_16_6();
  return OUTLINED_FUNCTION_14_7(v0, v0, MEMORY[0x277D60CC0], &qword_27DD437C8, v1, MEMORY[0x277D60CD0]);
}

unint64_t sub_231216480()
{
  OUTLINED_FUNCTION_0_9();
  sub_231368260();
  OUTLINED_FUNCTION_60_2(&qword_280F7C9A0);
  v0 = OUTLINED_FUNCTION_16_6();
  return OUTLINED_FUNCTION_14_7(v0, v0, MEMORY[0x277D60E40], &qword_280F7C998, v1, MEMORY[0x277D60E50]);
}

unint64_t sub_23121652C()
{
  OUTLINED_FUNCTION_0_9();
  sub_2313673A0();
  OUTLINED_FUNCTION_60_2(&qword_280F7CAF0);
  v0 = OUTLINED_FUNCTION_16_6();
  return OUTLINED_FUNCTION_14_7(v0, v0, MEMORY[0x277D60890], &qword_280F7CAE8, v1, MEMORY[0x277D608A0]);
}

unint64_t sub_2312165D8()
{
  OUTLINED_FUNCTION_0_9();
  sub_231369330();
  OUTLINED_FUNCTION_60_2(&qword_280F7C8F0);
  v0 = OUTLINED_FUNCTION_16_6();
  return OUTLINED_FUNCTION_14_7(v0, v0, MEMORY[0x277D61310], &qword_280F7C8E8, v1, MEMORY[0x277D61320]);
}

unint64_t sub_231216684()
{
  OUTLINED_FUNCTION_0_9();
  sub_2313694E0();
  OUTLINED_FUNCTION_60_2(&qword_280F7C8C8);
  v0 = OUTLINED_FUNCTION_16_6();
  return OUTLINED_FUNCTION_14_7(v0, v0, MEMORY[0x277D61388], &qword_280F7C8C0, v1, MEMORY[0x277D61398]);
}

unint64_t sub_231216730()
{
  OUTLINED_FUNCTION_0_9();
  sub_231367050();
  OUTLINED_FUNCTION_60_2(&qword_280F7CB18);
  v0 = OUTLINED_FUNCTION_16_6();
  return OUTLINED_FUNCTION_14_7(v0, v0, MEMORY[0x277D607F8], &qword_280F7CB10, v1, MEMORY[0x277D60808]);
}

unint64_t sub_2312167DC()
{
  OUTLINED_FUNCTION_0_9();
  sub_231367C70();
  OUTLINED_FUNCTION_60_2(&qword_280F7CA80);
  v0 = OUTLINED_FUNCTION_16_6();
  return OUTLINED_FUNCTION_14_7(v0, v0, MEMORY[0x277D60AE8], &qword_280F7CA78, v1, MEMORY[0x277D60B00]);
}

unint64_t sub_231216888(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23136A5D0();

  return sub_231217450(a1, v5);
}

unint64_t sub_2312168CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23136A470();

  return sub_231217514(a1, v5);
}

unint64_t sub_231216910()
{
  OUTLINED_FUNCTION_0_9();
  sub_231369DD0();
  OUTLINED_FUNCTION_60_2(&qword_27DD437D8);
  v0 = OUTLINED_FUNCTION_16_6();
  return OUTLINED_FUNCTION_14_7(v0, v0, MEMORY[0x277D73148], &qword_27DD437E0, v1, MEMORY[0x277D73158]);
}

unint64_t sub_2312169BC(char a1)
{
  v3 = *(v1 + 40);
  sub_23136A9D0();
  sub_23133F8E8(a1);
  sub_23136A060();

  v4 = sub_23136AA00();

  return sub_2312175D4(a1, v4);
}

unint64_t sub_231216A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_23136A900() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231216AF8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);

    sub_23120F048();
    v7 = v6;

    if (v7)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231216BB0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_2313692F0();
    v6 = *(*(v2 + 48) + 8 * i);
    sub_231217784(&qword_280F7C908, 255, MEMORY[0x277D612D0]);
    if (sub_231369F60())
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231216CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v22 = a4;
  v20 = a1;
  v8 = a3(0);
  OUTLINED_FUNCTION_21();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  v25 = v6 + 64;
  v21 = v6;
  v16 = ~(-1 << *(v6 + 32));
  for (i = a2 & v16; ((1 << i) & *(v25 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v16)
  {
    (*(v10 + 16))(v15, *(v21 + 48) + *(v10 + 72) * i, v8);
    sub_231217784(v22, 255, v23);
    v18 = sub_231369F60();
    (*(v10 + 8))(v15, v8);
    if (v18)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231216E40(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = &unk_23137A540;
      v8 = 0xD00000000000001FLL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_A";
          break;
        case 2:
          v8 = 0xD000000000000019;
          v7 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
          break;
        case 3:
          v8 = 0xD00000000000001ALL;
          v7 = "SIRI_SUGGESTIONS_PLATFORM";
          break;
        default:
          break;
      }

      v9 = v7 | 0x8000000000000000;
      v10 = 0xD00000000000001FLL;
      v11 = &unk_23137A540;
      switch(a1)
      {
        case 1:
          v11 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_A";
          break;
        case 2:
          v10 = 0xD000000000000019;
          v11 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
          break;
        case 3:
          v10 = 0xD00000000000001ALL;
          v11 = "SIRI_SUGGESTIONS_PLATFORM";
          break;
        default:
          break;
      }

      if (v8 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_23136A900();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_231217010(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a1;
  v5 = sub_231369D50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B0, &unk_23136DFC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v20 = v3 + 64;
  v21 = -1 << *(v3 + 32);
  v22 = a2 & ~v21;
  if ((*(v3 + 64 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
  {
    v37 = v17;
    v38 = ~v21;
    v31 = (v6 + 32);
    v32 = v9;
    v39 = *(v16 + 72);
    v35 = (v6 + 8);
    v36 = v3 + 64;
    v30 = v3;
    do
    {
      sub_2311E66F0(*(v3 + 48) + v39 * v22, v19, &qword_27DD437B8, &qword_23136FA60);
      v23 = *(v9 + 48);
      sub_2311E66F0(v19, v12, &qword_27DD437B8, &qword_23136FA60);
      sub_2311E66F0(v40, &v12[v23], &qword_27DD437B8, &qword_23136FA60);
      if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
      {
        sub_2311D1F18(v19, &qword_27DD437B8, &qword_23136FA60);
        if (__swift_getEnumTagSinglePayload(&v12[v23], 1, v5) == 1)
        {
          sub_2311D1F18(v12, &qword_27DD437B8, &qword_23136FA60);
          return v22;
        }
      }

      else
      {
        v24 = v37;
        sub_2311E66F0(v12, v37, &qword_27DD437B8, &qword_23136FA60);
        if (__swift_getEnumTagSinglePayload(&v12[v23], 1, v5) != 1)
        {
          v25 = &v12[v23];
          v26 = v33;
          (*v31)(v33, v25, v5);
          sub_231217784(&qword_27DD43360, 255, MEMORY[0x277D72D58]);
          v34 = sub_231369F60();
          v27 = *v35;
          (*v35)(v26, v5);
          sub_2311D1F18(v19, &qword_27DD437B8, &qword_23136FA60);
          v27(v24, v5);
          v3 = v30;
          v9 = v32;
          sub_2311D1F18(v12, &qword_27DD437B8, &qword_23136FA60);
          v20 = v36;
          if (v34)
          {
            return v22;
          }

          goto LABEL_10;
        }

        sub_2311D1F18(v19, &qword_27DD437B8, &qword_23136FA60);
        (*v35)(v24, v5);
        v20 = v36;
      }

      sub_2311D1F18(v12, &qword_27DD437B0, &unk_23136DFC0);
LABEL_10:
      v22 = (v22 + 1) & v38;
    }

    while (((*(v20 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
  }

  return v22;
}

unint64_t sub_231217450(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_2311E5778(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x23192AC90](v8, a1);
    sub_2311E57D4(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231217514(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_2312176CC();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_23136A480();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2312175D4(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = sub_23133F8E8(*(*(v2 + 48) + i));
    v8 = v7;
    if (v6 == sub_23133F8E8(a1) && v8 == v9)
    {

      return i;
    }

    v11 = sub_23136A900();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_2312176CC()
{
  result = qword_27DD437D0;
  if (!qword_27DD437D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD437D0);
  }

  return result;
}

_OWORD *sub_23121776C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_231217784(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_6()
{
  result = v0[47];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[36];
  v7 = v0[37];
  v9 = v0[33];
  v10 = v0[30];
  return result;
}

uint64_t OUTLINED_FUNCTION_26_5()
{
  v4 = v0[102];
  v1 = v0[98];
  v2 = *(v0[99] + 32);
  return v0[100];
}

uint64_t OUTLINED_FUNCTION_46_4()
{
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
  v5 = v0[94];
  v6 = v0[89];

  return sub_231367430();
}

uint64_t OUTLINED_FUNCTION_47_3()
{
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[39];
  v8 = v0[40];
  v5 = v0[37];
  v6 = v0[38];

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_54_3()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[99];
  v6 = v0[98];
}

uint64_t OUTLINED_FUNCTION_57_3()
{
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_76_1()
{
  v2 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[40];
  v6 = v0[33];

  return sub_2313690F0();
}

uint64_t OUTLINED_FUNCTION_78_0()
{
  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[45];
}

uint64_t OUTLINED_FUNCTION_79_0()
{

  return sub_23136A8B0();
}

uint64_t OUTLINED_FUNCTION_80_1(uint64_t a1)
{

  return sub_2311D1F18(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_81_0(uint64_t a1)
{
  v3[124] = a1;
  v3[59] = v1;
  v3[56] = v5;
  v6 = *(*(v2 + 8) + 8);

  return sub_23136A260();
}

void OUTLINED_FUNCTION_84_0()
{
  v3 = v0[59];
  v5 = v0[45];
  v4 = v0[46];
  v6 = v0[44];
  v8 = v0[41];
  v7 = v0[42];
  v9 = v0[40];
}

uint64_t OUTLINED_FUNCTION_85_0()
{

  return sub_23136A060();
}

uint64_t OUTLINED_FUNCTION_88()
{
  result = __swift_getEnumTagSinglePayload(v0 + v3, 1, v1);
  v5 = v2[105];
  v6 = v2[104];
  v7 = v2[103];
  return result;
}

double OUTLINED_FUNCTION_94()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

void OUTLINED_FUNCTION_99()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2080;
  v3 = *(v0 + 16);
}

uint64_t *OUTLINED_FUNCTION_101(uint64_t a1)
{
  v2[121] = a1;
  v2[79] = v1;

  return __swift_allocate_boxed_opaque_existential_1(v2 + 76);
}

uint64_t OUTLINED_FUNCTION_102()
{
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
}

uint64_t OUTLINED_FUNCTION_103()
{

  return sub_2311E66F0(v2, v0 + v4, v1, v3);
}

uint64_t OUTLINED_FUNCTION_104()
{
  v2 = *(v0 + 40);

  return sub_23136A9D0();
}

uint64_t OUTLINED_FUNCTION_105()
{

  return sub_231369F60();
}

uint64_t OUTLINED_FUNCTION_106(uint64_t a1, uint64_t a2)
{
  *(v2 + 976) = a1;
  *(v2 + 984) = a2;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_107()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_108(uint64_t a1)
{

  sub_231210BE8(a1, 0xE600000000000000, v1);
}

uint64_t OUTLINED_FUNCTION_109()
{
  v2 = *(*(v0 + 8) + 8);

  return sub_23136A260();
}

uint64_t sub_231217CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  v6 = v5;
  if (v4)
  {
    sub_2311E66F0(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, &qword_27DD434C0, &unk_23136CA00);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_231217DF4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

double sub_231217EA0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2311E66F0(a1 + 32, a2, &qword_27DD434E8, &unk_23136E480);
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t EducationalSuggestions.rawValue.getter()
{
  v1 = 0x536874695777656ELL;
  if (*v0 != 1)
  {
    v1 = 0x4F6874695777656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4874736567677573;
  }
}

BOOL sub_231217F58(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

BOOL sub_231217FE8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;
    sub_231369EE0();
    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_231218158(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = a4(0);
    OUTLINED_FUNCTION_0(v11);
    v14 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v14 & 1) == 0);
  return v9 != v10;
}

SiriSuggestions::EducationalSuggestions_optional __swiftcall EducationalSuggestions.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23136A7B0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2312182CC@<X0>(uint64_t *a1@<X8>)
{
  result = EducationalSuggestions.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_231218304()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436D0, &qword_23136D3E0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  strcpy(&v11 - v5, "com.apple.siri");
  (&v11 - v5)[15] = -18;
  v7 = *MEMORY[0x277D61238];
  v8 = sub_231368F50();
  OUTLINED_FUNCTION_11(v8);
  (*(v9 + 104))(v6, v7, v8);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  return sub_231369060();
}

uint64_t static SuggestionsForHelpDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  OUTLINED_FUNCTION_8();
  v0[17] = v1;
  v0[18] = v2;
  v3 = sub_2313698C0();
  v0[19] = v3;
  OUTLINED_FUNCTION_0(v3);
  v0[20] = v4;
  v6 = *(v5 + 64) + 15;
  v0[21] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23121850C()
{
  v1 = v0[17];
  v2 = sub_231367000();
  v3 = sub_231366FF0();
  v0[5] = v2;
  v0[6] = sub_23121CD34(&qword_280F7CB20, 255, MEMORY[0x277D607D8]);
  v0[2] = v3;
  v8 = (v1 + *v1);
  v4 = v1[1];
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_231218664;
  v6 = v0[18];

  return v8(v0 + 2);
}

uint64_t sub_231218664()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v1 + 176);
  v9 = *v0;
  *(v2 + 184) = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23121875C()
{
  v1 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43810, &qword_23136E028);
  v2 = sub_231368EF0();
  if (v2)
  {
    sub_2311D924C(v2, v0 + 96);

    if (*(v0 + 120))
    {
      v3 = *(v0 + 184);
      sub_2311D38A8((v0 + 96), v0 + 56);
      type metadata accessor for MentionedAppResolver();
      v4 = static MentionedAppResolver.mentionedAppParamType(appUtils:)(v0 + 56);
      v5 = swift_task_alloc();
      *(v5 + 16) = v0 + 56;
      *(v5 + 24) = v4;
      sub_231368EB0();

      OUTLINED_FUNCTION_20_4();
      sub_231368EB0();

      OUTLINED_FUNCTION_20_4();
      sub_231368EB0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43598, &qword_23136CAD8);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_23136B670;
      sub_231368ED0();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      goto LABEL_8;
    }
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  v7 = *(v0 + 168);
  sub_2311D1F18(v0 + 96, &qword_27DD43818, &unk_23136E030);
  sub_2313690F0();
  v8 = sub_2313698A0();
  v9 = sub_23136A3B0();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 184);
  v13 = *(v0 + 160);
  v12 = *(v0 + 168);
  v14 = *(v0 + 152);
  if (v10)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2311CB000, v8, v9, "No appUtils instance set on the lifecycle container", v15, 2u);
    OUTLINED_FUNCTION_29();
  }

  v16 = *(v13 + 8);
  v17 = OUTLINED_FUNCTION_26_1();
  v18(v17);

  v6 = MEMORY[0x277D84F90];
LABEL_8:
  v19 = *(v0 + 168);

  OUTLINED_FUNCTION_14();

  return v20(v6);
}

uint64_t static MentionedAppResolver.mentionedAppParamType(appUtils:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43820, &qword_23136E040);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  if (qword_280F826C8 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v7 = qword_280F826C0;
  sub_231369EE0();
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_280F8E648);
  (*(v3 + 16))(v6, v8, v2);
  sub_2311CF324(a1, &v17);
  OUTLINED_FUNCTION_21_1();
  v9 = swift_allocObject();
  sub_2311D38A8(&v17, v9 + 16);
  v10 = OUTLINED_FUNCTION_54_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v19 = sub_23121C788(&qword_280F7CAD8, &qword_27DD43828, &qword_23136E058);
  __swift_allocate_boxed_opaque_existential_1(&v17);
  sub_231367550();
  sub_231367DC0();
  sub_2313674C0();
  v12 = sub_231368540();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  return sub_231368500();
}

uint64_t sub_231218CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  *&v45 = a3;
  v4 = sub_2313673A0();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v46 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 40);
  v43 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
  v8 = sub_231367D80();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23136D280;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v12 + v11, *MEMORY[0x277D60B78], v8);
  v14(v13 + v10, *MEMORY[0x277D60B80], v8);
  v15 = v13 + 2 * v10;
  v16 = *MEMORY[0x277D607E8];
  v17 = sub_231367020();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  v14(v15, *MEMORY[0x277D60BA0], v8);
  v69 = v43;
  v70 = v7;
  __swift_allocate_boxed_opaque_existential_1(v68);
  sub_231368B30();

  v18 = v70;
  v43 = v69;
  __swift_project_boxed_opaque_existential_1(v68, v69);
  sub_231368B80();
  v66 = v43;
  v67 = v18;
  __swift_allocate_boxed_opaque_existential_1(v65);
  sub_231368B10();

  v19 = v67;
  v43 = v66;
  __swift_project_boxed_opaque_existential_1(v65, v66);
  if (qword_280F7CB60 != -1)
  {
    swift_once();
  }

  v63 = v43;
  v64 = v19;
  __swift_allocate_boxed_opaque_existential_1(v62);
  sub_231368AE0();
  v20 = v64;
  v43 = v63;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  if (qword_280F7CB48 != -1)
  {
    swift_once();
  }

  v60 = v43;
  v61 = v20;
  __swift_allocate_boxed_opaque_existential_1(v59);
  sub_231368B00();
  v21 = v61;
  v43 = v60;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  if (qword_280F826C8 != -1)
  {
    swift_once();
  }

  sub_2311CF324(v44, &v56);
  v22 = type metadata accessor for MentionedAppResolver();
  v23 = swift_allocObject();
  MentionedAppResolver.init(appUtils:)(&v56);
  *&v54 = v22;
  *(&v54 + 1) = sub_23121CD34(&qword_280F826A8, v24, type metadata accessor for MentionedAppResolver);
  v53[0] = v23;
  v57 = v43;
  v58 = v21;
  __swift_allocate_boxed_opaque_existential_1(&v56);
  sub_231368B50();
  sub_2311D1F18(v53, &qword_27DD43878, &unk_23136E490);
  v25 = v58;
  v45 = v57;
  __swift_project_boxed_opaque_existential_1(&v56, v57);
  v26 = type metadata accessor for SuggestHelpAssetProvider();
  v27 = swift_allocObject();
  *&v51 = v26;
  *(&v51 + 1) = sub_23121CD34(qword_280F80760, v28, type metadata accessor for SuggestHelpAssetProvider);
  v50[0] = v27;
  v54 = v45;
  v55 = v25;
  __swift_allocate_boxed_opaque_existential_1(v53);
  sub_231368AF0();
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  v29 = v55;
  v45 = v54;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v31 = v46;
  v30 = v47;
  *v46 = 0x4874736567677573;
  v31[1] = 0xEB00000000706C65;
  v32 = v48;
  (*(v30 + 104))(v31, *MEMORY[0x277D60880], v48);
  v51 = v45;
  v52 = v29;
  __swift_allocate_boxed_opaque_existential_1(v50);
  sub_231368AC0();
  (*(v30 + 8))(v31, v32);
  v33 = v51;
  v34 = __swift_project_boxed_opaque_existential_1(v50, v51);
  v35 = *(v33 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v43 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SuggestHelpFilter();
  v40 = swift_allocObject();
  v49[3] = v39;
  v49[4] = sub_23121CD34(qword_280F834D0, v41, type metadata accessor for SuggestHelpFilter);
  v49[0] = v40;
  sub_231368B40();
  (*(v35 + 8))(v38, v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  __swift_destroy_boxed_opaque_existential_1Tm(&v56);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v65);
  return __swift_destroy_boxed_opaque_existential_1Tm(v68);
}

uint64_t MentionedAppResolver.__allocating_init(appUtils:)(__int128 *a1)
{
  v2 = swift_allocObject();
  MentionedAppResolver.init(appUtils:)(a1);
  return v2;
}

uint64_t sub_23121947C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v16 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_231368B80();
  v24 = v16;
  v25 = v1;
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_231368B10();

  v2 = v25;
  v16 = v24;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  if (qword_280F7CB60 != -1)
  {
    swift_once();
  }

  v21 = v16;
  v22 = v2;
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_231368AE0();
  v3 = v22;
  v16 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  if (qword_280F7CB80 != -1)
  {
    swift_once();
  }

  v18 = v16;
  v19 = v3;
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_231368B00();
  v4 = v18;
  v5 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
  v10 = sub_231367D80();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23136B670;
  (*(v11 + 104))(v14 + v13, *MEMORY[0x277D60B78], v10);
  sub_231368B30();

  (*(v6 + 8))(v9, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

uint64_t sub_2312197AC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v20 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_231368B80();
  v32 = v20;
  v33 = v1;
  __swift_allocate_boxed_opaque_existential_1(v31);
  sub_231368B10();

  v2 = v33;
  v20 = v32;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  if (qword_280F7CB60 != -1)
  {
    swift_once();
  }

  v29 = v20;
  v30 = v2;
  __swift_allocate_boxed_opaque_existential_1(v28);
  sub_231368AE0();
  v3 = v30;
  v20 = v29;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  if (qword_280F7CB80 != -1)
  {
    swift_once();
  }

  v26 = v20;
  v27 = v3;
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_231368B00();
  v4 = v27;
  v20 = v26;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
  v5 = sub_231367D80();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23136B670;
  (*(v6 + 104))(v9 + v8, *MEMORY[0x277D60B78], v5);
  v23 = v20;
  v24 = v4;
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_231368B30();

  v10 = v23;
  v11 = __swift_project_boxed_opaque_existential_1(v22, v23);
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DeviceTypeResolver();
  v17 = swift_allocObject();
  if (qword_280F832C8 != -1)
  {
    swift_once();
  }

  *(v17 + 16) = sub_231368520();
  *(v17 + 24) = v18;
  v21[3] = v16;
  v21[4] = sub_23121CD34(&qword_280F832B0, v18, type metadata accessor for DeviceTypeResolver);
  v21[0] = v17;
  sub_231368B50();
  (*(v12 + 8))(v15, v10);
  sub_2311D1F18(v21, &qword_27DD43878, &unk_23136E490);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return __swift_destroy_boxed_opaque_existential_1Tm(v31);
}

uint64_t sub_231219C48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311DDECC;

  return static SuggestionsForHelpDefinitionFactory.createOwnerDefinitions(builderFactory:)();
}

uint64_t sub_231219CE4()
{
  result = sub_231366F80();
  qword_280F826D0 = result;
  unk_280F826D8 = v1;
  return result;
}

uint64_t static MentionedAppResolver.typeIdentifier.getter()
{
  if (qword_280F826C8 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v0 = qword_280F826D0;
  sub_231369EE0();
  return v0;
}

uint64_t sub_231219D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_231367550();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v7 = sub_231369050();
  v3[18] = v7;
  v8 = *(v7 - 8);
  v3[19] = v8;
  v9 = *(v8 + 64) + 15;
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231219E80, 0, 0);
}

uint64_t sub_231219E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14 + 17;
  v17 = v14 + 16;
  v16 = v14[16];
  v18 = v14 + 15;
  (*(v16 + 16))(v14[17], v14[13], v14[15]);
  v19 = *(v16 + 88);
  v20 = OUTLINED_FUNCTION_27();
  if (v21(v20) != *MEMORY[0x277D60928])
  {
    goto LABEL_6;
  }

  v15 = v14 + 20;
  v22 = v14[20];
  v17 = v14 + 19;
  v23 = v14[19];
  v18 = v14 + 18;
  v24 = v14[18];
  v25 = v14[17];
  (*(v14[16] + 96))(v25, v14[15]);
  (*(v23 + 32))(v22, v25, v24);
  v26 = sub_231369010();
  v27 = sub_231366F80();
  sub_231210CBC(v27, v28, v26);
  v30 = v29;

  if (v30)
  {
    v31 = v14[14];
    v32 = v31[4];
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    OUTLINED_FUNCTION_27();
    sub_2313694D0();

    v33 = v14[10];
    v34 = v14[11];
    __swift_project_boxed_opaque_existential_1(v14 + 7, v33);
    v35 = *(MEMORY[0x277D60D78] + 4);
    v41 = swift_task_alloc();
    v14[21] = v41;
    *v41 = v14;
    v41[1] = sub_23121A118;

    return MEMORY[0x2821C6CC0](v14 + 2, v33, v34, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
  }

  else
  {
LABEL_6:
    v42 = v14[12];
    (*(*v17 + 8))(*v15, *v18);
    v43 = *MEMORY[0x277D60C40];
    v44 = sub_231367DC0();
    OUTLINED_FUNCTION_11(v44);
    (*(v45 + 104))(v42, v43);
    v46 = v14[20];
    v47 = v14[17];

    v48 = v14[1];

    return v48();
  }
}

uint64_t sub_23121A118()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23121A1FC()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43830, &unk_23136E070);
  OUTLINED_FUNCTION_21_1();
  v5 = swift_allocObject();
  *v4 = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 48);
  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_27();
  v9(v8);
  v10 = *MEMORY[0x277D60C38];
  v11 = sub_231367DC0();
  OUTLINED_FUNCTION_11(v11);
  (*(v12 + 104))(v4, v10);
  v13 = *(v0 + 160);
  v14 = *(v0 + 136);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t MentionedAppResolver.init(appUtils:)(__int128 *a1)
{
  if (qword_280F826C8 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v3 = unk_280F826D8;
  *(v1 + 16) = qword_280F826D0;
  *(v1 + 24) = v3;
  sub_2311D38A8(a1, v1 + 32);
  sub_231369EE0();
  return v1;
}

uint64_t MentionedAppResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_8();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = sub_2313698C0();
  v1[20] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[21] = v5;
  v7 = *(v6 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v8 = sub_231367C70();
  v1[26] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[27] = v9;
  v11 = *(v10 + 64) + 15;
  v1[28] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_23121A4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v26 = v22[27];
  v25 = v22[28];
  v27 = v22[26];
  v28 = v22[17];
  v29 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  OUTLINED_FUNCTION_54_0();
  sub_2313677D0();
  v30 = *(v26 + 88);
  v31 = OUTLINED_FUNCTION_28_0();
  v33 = v32(v31);
  v34 = v22[27];
  v35 = v22[28];
  v36 = v22[26];
  if (v33 == *MEMORY[0x277D60AC0])
  {
    (*(v34 + 96))(v22[28], v36);
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
    v38 = *(sub_2313681A0() - 8);
    v39 = *(v38 + 88);
    v40 = OUTLINED_FUNCTION_27();
    v42 = v41(v40);
    v43 = *MEMORY[0x277D60DB8];
    v44 = sub_231368210();
    OUTLINED_FUNCTION_11(v44);
    (*(v45 + 8))(v35 + v37);
    v46 = *(v38 + 8);
    v47 = OUTLINED_FUNCTION_27();
    v48(v47);
    if (v42 == v43)
    {
      v49 = v22[25];
      v50 = v22[18];
      v51 = v50[4];
      __swift_project_boxed_opaque_existential_1(v50, v50[3]);
      OUTLINED_FUNCTION_27();
      v52 = sub_2313683E0();
      sub_231369160();
      sub_231369EE0();
      v53 = sub_2313698A0();
      v54 = sub_23136A3A0();

      v55 = os_log_type_enabled(v53, v54);
      v56 = v22[25];
      v58 = v22[20];
      v57 = v22[21];
      if (v55)
      {
        a10 = v22[25];
        v59 = OUTLINED_FUNCTION_60();
        v60 = swift_slowAlloc();
        a11 = v60;
        *v59 = 136315138;
        v61 = MEMORY[0x23192A860](v52, MEMORY[0x277D837D0]);
        v63 = sub_2311CFD58(v61, v62, &a11);

        *(v59 + 4) = v63;
        _os_log_impl(&dword_2311CB000, v53, v54, "MentionedAppResolver: open apps: %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_29();

        v64 = *(v57 + 8);
        v64(a10, v58);
      }

      else
      {

        v64 = *(v57 + 8);
        v64(v56, v58);
      }

      v22[29] = v64;
      if (v52[2])
      {
        v79 = v22[24];
        v22[30] = v52[4];
        v22[31] = v52[5];
        sub_231369EE0();

        sub_231369160();
        sub_231369EE0();
        v80 = sub_2313698A0();
        v81 = sub_23136A3A0();

        v82 = os_log_type_enabled(v80, v81);
        v83 = v22[24];
        v85 = v22[20];
        v84 = v22[21];
        if (v82)
        {
          OUTLINED_FUNCTION_60();
          a10 = v83;
          v86 = OUTLINED_FUNCTION_57_0();
          a11 = v86;
          *v83 = 136315138;
          v87 = OUTLINED_FUNCTION_26_1();
          *(v83 + 4) = sub_2311CFD58(v87, v88, v89);
          OUTLINED_FUNCTION_15_7();
          _os_log_impl(v90, v91, v92, v93, v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v86);
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_24();
        }

        v64(v83, v85);
        v104 = v22[19];
        v105 = v104[8];
        __swift_project_boxed_opaque_existential_1(v104 + 4, v104[7]);
        OUTLINED_FUNCTION_26_1();
        sub_2313694D0();
        v106 = v22[11];
        __swift_project_boxed_opaque_existential_1(v22 + 7, v22[10]);
        v107 = *(MEMORY[0x277D60D78] + 4);
        v108 = swift_task_alloc();
        v22[32] = v108;
        *v108 = v22;
        v108[1] = sub_23121A9FC;
        OUTLINED_FUNCTION_7();

        return MEMORY[0x2821C6CC0](v109, v110, v111, v112, v113, v114, v115, v116, a9, a10, a11, a12, a13, a14);
      }

      v95 = v22[22];

      sub_231369160();
      v96 = sub_2313698A0();
      v97 = sub_23136A3A0();
      v98 = os_log_type_enabled(v96, v97);
      v100 = v22[21];
      v99 = v22[22];
      v101 = v22[20];
      if (v98)
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_2311CB000, v96, v97, "MentionedAppResolver: No salient appId", v102, 2u);
        OUTLINED_FUNCTION_29();
      }

      v103 = OUTLINED_FUNCTION_28_0();
      (v64)(v103);
    }
  }

  else
  {
    (*(v34 + 8))(v22[28], v36);
  }

  v65 = v22[28];
  v66 = v22[24];
  v67 = v22[25];
  v69 = v22[22];
  v68 = v22[23];

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  return v72(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23121A9FC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 256);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23121AAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v24;
  a22 = v25;
  a20 = v22;
  v26 = *(v22 + 248);
  if (*(v22 + 120))
  {
    v27 = *(v22 + 248);

    sub_2311D38A8((v22 + 96), v22 + 16);
    __swift_destroy_boxed_opaque_existential_1Tm((v22 + 56));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_23136B670;
    v29 = *(v22 + 40);
    v30 = __swift_project_boxed_opaque_existential_1((v22 + 16), v29);
    *(v28 + 56) = v29;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v28 + 32));
    (*(*(v29 - 8) + 16))(boxed_opaque_existential_1, v30, v29);
    __swift_destroy_boxed_opaque_existential_1Tm((v22 + 16));
  }

  else
  {
    v32 = *(v22 + 184);
    sub_2311D1F18(v22 + 96, &qword_27DD43830, &unk_23136E070);
    __swift_destroy_boxed_opaque_existential_1Tm((v22 + 56));
    sub_231369160();
    sub_231369EE0();
    v33 = sub_2313698A0();
    v34 = sub_23136A3B0();

    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v22 + 248);
    if (v35)
    {
      v37 = *(v22 + 240);
      a10 = *(v22 + 232);
      v38 = *(v22 + 184);
      v39 = *(v22 + 160);
      v40 = *(v22 + 168);
      OUTLINED_FUNCTION_60();
      v41 = OUTLINED_FUNCTION_57_0();
      a11 = v41;
      *v23 = 136315138;
      v42 = sub_2311CFD58(v37, v36, &a11);

      *(v23 + 4) = v42;
      _os_log_impl(&dword_2311CB000, v33, v34, "Can not get app details for: %s.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();

      v43 = OUTLINED_FUNCTION_28_0();
      a10(v43);
    }

    else
    {
      v44 = *(v22 + 232);
      v45 = *(v22 + 184);
      v46 = *(v22 + 160);
      v47 = *(v22 + 168);
      v48 = *(v22 + 248);

      v49 = OUTLINED_FUNCTION_28_0();
      v44(v49);
    }
  }

  v50 = *(v22 + 224);
  v52 = *(v22 + 192);
  v51 = *(v22 + 200);
  v54 = *(v22 + 176);
  v53 = *(v22 + 184);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23121AD5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43820, &qword_23136E040);
  __swift_allocate_value_buffer(v0, qword_280F8E648);
  __swift_project_value_buffer(v0, qword_280F8E648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C0, &unk_23136E000);
  return sub_231366B20();
}

uint64_t sub_23121ADF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2313698C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311D1D6C(a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43850, &qword_23136E468);
  if (swift_dynamicCast())
  {
    sub_2311D38A8(v25, v28);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    v10 = sub_231367620();
    *(a2 + 24) = MEMORY[0x277D837D0];
    *a2 = v10;
    *(a2 + 8) = v11;
    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_2311D1F18(v25, &qword_27DD43830, &unk_23136E070);
    sub_231369160();
    sub_2311D1D6C(a1, v28);
    v13 = sub_2313698A0();
    v14 = sub_23136A3B0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v28[6] = v2;
      v16 = v15;
      v17 = swift_slowAlloc();
      v24 = v5;
      v18 = v17;
      v27[0] = v17;
      *v16 = 136315138;
      sub_2311D1D6C(v28, v25);
      v19 = sub_23136A010();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      v22 = sub_2311CFD58(v19, v21, v27);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_2311CB000, v13, v14, "Input for MentionedAppResolver.loggingKeyTransformer does not conform to AppDetails. It is: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x23192B930](v18, -1, -1);
      MEMORY[0x23192B930](v16, -1, -1);

      result = (*(v6 + 8))(v9, v24);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      result = (*(v6 + 8))(v9, v5);
    }

    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t MentionedAppResolver.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  return v0;
}

uint64_t MentionedAppResolver.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_23121B11C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311E6A24;

  return MentionedAppResolver.resolveParameter(parameter:suggestion:interaction:environment:)();
}

uint64_t sub_23121B1C4()
{
  sub_231368540();
  result = sub_231368510();
  qword_280F832D0 = result;
  return result;
}

uint64_t static DeviceTypeResolver.deviceTypeParamType.getter()
{
  if (qword_280F832C8 != -1)
  {
    swift_once();
  }
}

uint64_t DeviceTypeResolver.resolverTypeOperand.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_231369EE0();
  return v1;
}

uint64_t DeviceTypeResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_8();
  v0[2] = v1;
  v2 = sub_231367650();
  v0[3] = v2;
  OUTLINED_FUNCTION_0(v2);
  v0[4] = v3;
  v5 = *(v4 + 64) + 15;
  v0[5] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23121B34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  v16 = v14[4];
  v15 = v14[5];
  v17 = v14[2];
  v18 = v14[3];
  v19 = v17[3];
  v20 = v17[4];
  OUTLINED_FUNCTION_6_6(v17);
  v21 = sub_231368370();
  v22 = *MEMORY[0x277D609A8];
  v23 = *(v16 + 104);
  v24 = OUTLINED_FUNCTION_16_7();
  v60 = v25;
  v25(v24);
  v26 = swift_task_alloc();
  *(v26 + 16) = v15;
  v27 = sub_231218158(sub_23121C698, v26, v21, MEMORY[0x277D609D0]);

  v28 = *(v16 + 8);
  v29 = OUTLINED_FUNCTION_54_0();
  v28(v29);
  if (v27)
  {
    goto LABEL_3;
  }

  v30 = v14[5];
  v31 = v14[3];
  v22 = *MEMORY[0x277D60998];
  v32 = OUTLINED_FUNCTION_16_7();
  v60(v32);
  v33 = swift_task_alloc();
  a9 = v28;
  *(v33 + 16) = v30;
  v34 = sub_231218158(sub_23121CD88, v33, v21, MEMORY[0x277D609D0]);

  v35 = OUTLINED_FUNCTION_54_0();
  v28(v35);
  if (v34)
  {
LABEL_3:

    v36 = v60;
LABEL_4:
    v37 = v14[5];
    v38 = v14[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_23136B670;
    (v36)(v37, v22, v38);
    v40 = sub_231367640();
    v42 = v41;
    v43 = OUTLINED_FUNCTION_26_1();
    v28(v43);
    *(v39 + 56) = MEMORY[0x277D837D0];
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    goto LABEL_5;
  }

  v54 = v14[5];
  v55 = v14[3];
  v22 = *MEMORY[0x277D60988];
  v56 = OUTLINED_FUNCTION_16_7();
  v60(v56);
  v57 = swift_task_alloc();
  *(v57 + 16) = v54;
  v58 = sub_231218158(sub_23121CD88, v57, v21, MEMORY[0x277D609D0]);

  v59 = OUTLINED_FUNCTION_54_0();
  v28(v59);
  v36 = v60;
  if (v58)
  {
    goto LABEL_4;
  }

LABEL_5:
  v44 = v14[5];

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, v60, a11, a12, a13, a14);
}

uint64_t DeviceTypeResolver.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t DeviceTypeResolver.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_23121B680()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311E6A24;

  return DeviceTypeResolver.resolveParameter(parameter:suggestion:interaction:environment:)();
}

uint64_t sub_23121B714()
{
  v0 = sub_231366690();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  type metadata accessor for SuggestionsForHelpDefinitionFactory();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = [v9 bundleURL];

  sub_231366650();
  sub_231366620();
  v11 = *(v1 + 8);
  v11(v5, v0);
  v12 = sub_231366660();
  v14 = v13;
  result = (v11)(v7, v0);
  qword_280F7CB68 = v12;
  *algn_280F7CB70 = v14;
  return result;
}

uint64_t sub_23121B8A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43880, &qword_2313706E0);
  v0 = sub_231367650();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23136D290;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D609A8], v0);
  v6(v5 + v2, *MEMORY[0x277D60998], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D60988], v0);
  result = (v6)(v5 + 3 * v2, *MEMORY[0x277D609C8], v0);
  qword_280F7CB50 = v4;
  return result;
}

uint64_t sub_23121B9FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43880, &qword_2313706E0);
  v0 = sub_231367650();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23136D280;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D609A8], v0);
  v6(v5 + v2, *MEMORY[0x277D60998], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x277D60988], v0);
  qword_280F7CB88 = v4;
  return result;
}

uint64_t sub_23121BB30()
{
  OUTLINED_FUNCTION_8();
  v0[16] = v1;
  v0[17] = v2;
  v3 = sub_2313698C0();
  v0[18] = v3;
  OUTLINED_FUNCTION_0(v3);
  v0[19] = v4;
  v6 = *(v5 + 64) + 15;
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23121BBE8()
{
  v57 = v0;
  v2 = *(v0 + 128);
  v3 = v2[3];
  v4 = v2[4];
  OUTLINED_FUNCTION_6_6(v2);
  v5 = sub_2313682F0();
  v6 = sub_231366F80();
  sub_231210C60(v6, v7, v5);

  if (*(v0 + 120))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43850, &qword_23136E468);
    if (swift_dynamicCast())
    {
      if (*(v0 + 80))
      {
        sub_2311D38A8((v0 + 56), v0 + 16);
        v8 = *(v0 + 40);
        v9 = *(v0 + 48);
        OUTLINED_FUNCTION_6_6((v0 + 16));
        v10 = sub_231367620();
        v12 = v11;
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
        goto LABEL_11;
      }
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }
  }

  else
  {
    sub_2311D1F18(v0 + 96, &qword_27DD443C0, &unk_23136E000);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  v13 = *(v0 + 136);
  sub_2311D1F18(v0 + 56, &qword_27DD43830, &unk_23136E070);
  v14 = v13[3];
  v15 = v13[4];
  OUTLINED_FUNCTION_6_6(v13);
  v16 = sub_2313683E0();
  if (!v16[2])
  {
    goto LABEL_16;
  }

  v17 = *(v0 + 168);
  v10 = v16[4];
  v12 = v16[5];
  sub_231369EE0();

  sub_2313690F0();
  v18 = sub_2313698A0();
  v19 = sub_23136A3A0();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 168);
  v22 = *(v0 + 144);
  v23 = *(v0 + 152);
  if (v20)
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    OUTLINED_FUNCTION_15_7();
    _os_log_impl(v24, v25, v26, v27, v28, 2u);
    OUTLINED_FUNCTION_24();
  }

  v29 = *(v23 + 8);
  v30 = OUTLINED_FUNCTION_54_0();
  v31(v30);
LABEL_11:
  if (qword_27DD42C98 != -1)
  {
    swift_once();
  }

  v32 = qword_27DD4B7B0;
  sub_231369EE0();
  v33 = sub_2311EFC44(v10, v12, v32);

  if (!v33)
  {
    v34 = *(v0 + 160);
    sub_2313690F0();
    sub_231369EE0();
    v35 = sub_2313698A0();
    v36 = sub_23136A3A0();

    v37 = os_log_type_enabled(v35, v36);
    v39 = *(v0 + 152);
    v38 = *(v0 + 160);
    v40 = *(v0 + 144);
    if (v37)
    {
      OUTLINED_FUNCTION_60();
      v41 = OUTLINED_FUNCTION_57_0();
      v56 = v41;
      *v1 = 136315138;
      v42 = sub_2311CFD58(v10, v12, &v56);

      *(v1 + 4) = v42;
      OUTLINED_FUNCTION_15_7();
      _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
    }

    else
    {
    }

    v49 = *(v39 + 8);
    v50 = OUTLINED_FUNCTION_54_0();
    v51(v50);
    v48 = 0;
    goto LABEL_19;
  }

LABEL_16:

  v48 = 1;
LABEL_19:
  v53 = *(v0 + 160);
  v52 = *(v0 + 168);

  OUTLINED_FUNCTION_14();

  return v54(v48);
}

uint64_t sub_23121BF7C()
{
  result = sub_23121BF9C();
  qword_27DD4B7B0 = result;
  return result;
}

uint64_t sub_23121BF9C()
{
  v0 = sub_231368290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43858, &unk_23136E470);
  v4 = *(v1 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = 23;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23136E010;
  v21 = v7;
  v8 = v7 + v5;
  v9 = *(v1 + 104);
  v9(v7 + v5, *MEMORY[0x277D60EF0], v0);
  v9(v8 + v4, *MEMORY[0x277D60EA0], v0);
  v9(v8 + 2 * v4, *MEMORY[0x277D60F10], v0);
  v9(v8 + 3 * v4, *MEMORY[0x277D60EA8], v0);
  v9(v8 + 4 * v4, *MEMORY[0x277D60F18], v0);
  v9(v8 + 5 * v4, *MEMORY[0x277D60F20], v0);
  v9(v8 + 6 * v4, *MEMORY[0x277D60EB0], v0);
  v9(v8 + 7 * v4, *MEMORY[0x277D60F00], v0);
  v9(v8 + 8 * v4, *MEMORY[0x277D60F28], v0);
  v9(v8 + 9 * v4, *MEMORY[0x277D60E80], v0);
  v9(v8 + 10 * v4, *MEMORY[0x277D60F30], v0);
  v9(v8 + 11 * v4, *MEMORY[0x277D60EB8], v0);
  v9(v8 + 12 * v4, *MEMORY[0x277D60E88], v0);
  v9(v8 + 13 * v4, *MEMORY[0x277D60EC0], v0);
  v9(v8 + 14 * v4, *MEMORY[0x277D60EC8], v0);
  v9(v8 + 15 * v4, *MEMORY[0x277D60ED8], v0);
  v9(v8 + 16 * v4, *MEMORY[0x277D60F38], v0);
  v9(v8 + 17 * v4, *MEMORY[0x277D60F48], v0);
  v9(v8 + 18 * v4, *MEMORY[0x277D60EE0], v0);
  v9(v8 + 19 * v4, *MEMORY[0x277D60F40], v0);
  v9(v8 + 20 * v4, *MEMORY[0x277D60E98], v0);
  v9(v8 + 21 * v4, *MEMORY[0x277D60E70], v0);
  v23 = v4;
  v10 = *MEMORY[0x277D60F08];
  v25 = v0;
  v9(v8 + 22 * v4, v10, v0);
  v26 = MEMORY[0x277D84F90];
  sub_2311F4E34();
  v11 = v26;
  v22 = *(v1 + 16);
  v12 = (v1 + 8);
  do
  {
    v13 = v24;
    v14 = v25;
    v22(v24, v8, v25);
    v15 = sub_231368280();
    v17 = v16;
    (*v12)(v13, v14);
    v26 = v11;
    v18 = *(v11 + 16);
    if (v18 >= *(v11 + 24) >> 1)
    {
      sub_2311F4E34();
      v11 = v26;
    }

    *(v11 + 16) = v18 + 1;
    v19 = v11 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v17;
    v8 += v23;
    --v6;
  }

  while (v6);
  swift_setDeallocating();
  sub_231322A88();
  return sub_231255354(v11);
}

uint64_t sub_23121C4D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311DDECC;

  return sub_23121BB30();
}

uint64_t sub_23121C59C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2311D44D4;

  return sub_231219D60(a1, a2, v2 + 16);
}

uint64_t sub_23121C698()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_5_9();
  return sub_23121CBE4(v2, v3, v4, v5, MEMORY[0x277D609D0]) & 1;
}

unint64_t sub_23121C6F0()
{
  result = qword_27DD43838;
  if (!qword_27DD43838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43838);
  }

  return result;
}

uint64_t sub_23121C788(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for TrialUseCase(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for EducationalSuggestions(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23121CB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_23136A900() & 1;
  }
}

uint64_t sub_23121CBE4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_23121CD34(a4, 255, a5);
  return sub_231369F60() & 1;
}

uint64_t sub_23121CD34(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_23121CDE4()
{
  v1 = *(v0 + 104);
  v2 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  OUTLINED_FUNCTION_1_6();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_1_2(v6);

  return v8(v7);
}

uint64_t sub_23121CEE8()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 112);
  v4 = *v0;
  *(*v0 + 120) = v2;

  return MEMORY[0x2822009F8](sub_23121CFE4, 0, 0);
}

void sub_23121CFE4()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v4 = v1 + 32;
    while (1)
    {
      sub_2311CF324(v4, (v0 + 2));
      v5 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      sub_231367DD0();
      v6 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v7 = sub_231368730();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      v8 = *(v7 + 16);
      v9 = *(v3 + 16);
      if (__OFADD__(v9, v8))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v9 + v8 > *(v3 + 24) >> 1)
      {
        sub_23126E834();
        v3 = v10;
      }

      if (*(v7 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v8)
        {
          goto LABEL_21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43428, &unk_23136C940);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v11 = *(v3 + 16);
          v12 = __OFADD__(v11, v8);
          v13 = v11 + v8;
          if (v12)
          {
            goto LABEL_22;
          }

          *(v3 + 16) = v13;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_20;
        }
      }

      v4 += 40;
      if (!--v2)
      {
        v14 = v0[15];

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
LABEL_16:
    v15 = v0[13];
    v16 = sub_23121DA18(v3);

    v0[12] = v16;
    v17 = v15[6];
    __swift_project_boxed_opaque_existential_1(v15 + 2, v15[5]);
    OUTLINED_FUNCTION_1_6();
    v24 = v18 + *v18;
    v20 = *(v19 + 4);
    v21 = swift_task_alloc();
    v0[16] = v21;
    *v21 = v0;
    v22 = OUTLINED_FUNCTION_1_2(v21);

    v23(v22);
  }
}

uint64_t sub_23121D288()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 128);
  v4 = *v0;
  *(*v0 + 136) = v2;

  return MEMORY[0x2822009F8](sub_23121D384, 0, 0);
}

uint64_t sub_23121D384()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[17];
  sub_23126750C();
  v2 = v0[12];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_23121D40C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311F4480;

  return sub_23121CDC4();
}

uint64_t sub_23121D49C()
{
  v1 = *(v0 + 16);
  v2 = sub_231298174();
  type metadata accessor for DefaultResolverProvider();
  *(swift_initStackObject() + 16) = v2;
  sub_23121D57C();
  v4 = v3;

  return v4;
}

uint64_t sub_23121D51C()
{
  v2 = *v0;
  v3 = sub_23121D49C();
  v4 = *(v1 + 8);

  return v4(v3);
}

void sub_23121D57C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    for (i = (v1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = sub_231368910();
      v8 = *(v7 + 16);
      v9 = *(v3 + 16);
      if (__OFADD__(v9, v8))
      {
        break;
      }

      v10 = v7;
      if (!swift_isUniquelyReferenced_nonNull_native() || v9 + v8 > *(v3 + 24) >> 1)
      {
        sub_23126E7FC();
        v3 = v11;
      }

      if (*(v10 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v8)
        {
          goto LABEL_18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43440, &qword_23136C960);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v12 = *(v3 + 16);
          v13 = __OFADD__(v12, v8);
          v14 = v12 + v8;
          if (v13)
          {
            goto LABEL_19;
          }

          *(v3 + 16) = v14;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_17;
        }
      }

      if (!--v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }
}

uint64_t sub_23121D6F0()
{
  v2 = *v0;
  sub_23121D57C();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_23121D750(uint64_t a1)
{
  v2 = type metadata accessor for IntentDetails();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2311F59F0();
    v12 = v18;
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_23122509C(v13, v10, type metadata accessor for IntentDetails);
      swift_dynamicCast();
      v18 = v12;
      v15 = *(v12 + 16);
      if (v15 >= *(v12 + 24) >> 1)
      {
        sub_2311F59F0();
        v12 = v18;
      }

      *(v12 + 16) = v15 + 1;
      sub_2312250F8(&v17, (v12 + 32 * v15 + 32));
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_23121D8D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v18 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_38_5();
    sub_2311F5B70(v4, v5, v6);
    v2 = v18;
    v7 = a1 + 32;
    do
    {
      sub_231204D4C(v7, v14, &qword_27DD438B8, &qword_23136EA38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438B8, &qword_23136EA38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434E8, &unk_23136E480);
      swift_dynamicCast();
      v18 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2311F5B70(v8 > 1, v9 + 1, 1);
        v2 = v18;
      }

      *(v2 + 16) = v9 + 1;
      v10 = (v2 + 48 * v9);
      v11 = v15;
      v12 = v17;
      v10[3] = v16;
      v10[4] = v12;
      v10[2] = v11;
      v7 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_23121DA18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_38_5();
    sub_2311F5C74(v4, v5, v6);
    v2 = v13;
    v7 = a1 + 32;
    do
    {
      sub_2311CF388(v7, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43428, &unk_23136C940);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43440, &qword_23136C960);
      swift_dynamicCast();
      v13 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2311F5C74(v8 > 1, v9 + 1, 1);
        v2 = v13;
      }

      *(v2 + 16) = v9 + 1;
      sub_2311D38A8(&v12, v2 + 40 * v9 + 32);
      v7 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_23121DB48(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2311F5CD8(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_2311CF388(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43640, &qword_23136CB80);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2311F5CD8(v5 > 1, v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_2311D38A8(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_23121DC80(uint64_t a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435D0, &qword_23136CB10);
  OUTLINED_FUNCTION_0_0(v24);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435C0, &unk_23136CB00);
  OUTLINED_FUNCTION_0_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v25 = MEMORY[0x277D84F90];
    sub_2311F5D18(0, v17, 0);
    v18 = v25;
    v19 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v20 = *(v3 + 72);
    do
    {
      sub_231204D4C(v19, v8, &qword_27DD435D0, &qword_23136CB10);
      swift_dynamicCast();
      v25 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2311F5D18(v21 > 1, v22 + 1, 1);
        v18 = v25;
      }

      *(v18 + 16) = v22 + 1;
      sub_231225108(v16, v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22);
      v19 += v20;
      --v17;
    }

    while (v17);
  }

  return v18;
}