uint64_t sub_23131BEE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231275DA4;

  return sub_23131BF84();
}

uint64_t sub_23131BF84()
{
  OUTLINED_FUNCTION_8();
  v0[22] = v1;
  v0[23] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44710, &qword_231375250);
  OUTLINED_FUNCTION_40_0(v3);
  v5 = *(v4 + 64);
  v0[24] = OUTLINED_FUNCTION_43();
  v6 = sub_2313694E0();
  OUTLINED_FUNCTION_40_0(v6);
  v8 = *(v7 + 64);
  v0[25] = OUTLINED_FUNCTION_43();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449C8, &qword_2313772F8);
  OUTLINED_FUNCTION_40_0(v9);
  v11 = *(v10 + 64);
  v0[26] = OUTLINED_FUNCTION_43();
  v12 = sub_231369050();
  OUTLINED_FUNCTION_40_0(v12);
  v14 = *(v13 + 64);
  v0[27] = OUTLINED_FUNCTION_43();
  v15 = sub_231367300();
  v0[28] = v15;
  OUTLINED_FUNCTION_0(v15);
  v0[29] = v16;
  v18 = *(v17 + 64);
  v0[30] = OUTLINED_FUNCTION_43();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  OUTLINED_FUNCTION_40_0(v19);
  v21 = *(v20 + 64);
  v0[31] = OUTLINED_FUNCTION_43();
  v22 = sub_231369090();
  v0[32] = v22;
  OUTLINED_FUNCTION_0(v22);
  v0[33] = v23;
  v25 = *(v24 + 64);
  v0[34] = OUTLINED_FUNCTION_43();
  v26 = sub_231367230();
  OUTLINED_FUNCTION_40_0(v26);
  v28 = *(v27 + 64);
  v0[35] = OUTLINED_FUNCTION_43();
  v29 = sub_231367D80();
  v0[36] = v29;
  OUTLINED_FUNCTION_0(v29);
  v0[37] = v30;
  v32 = *(v31 + 64);
  v0[38] = OUTLINED_FUNCTION_43();
  v33 = sub_2313667A0();
  OUTLINED_FUNCTION_40_0(v33);
  v35 = *(v34 + 64);
  v0[39] = OUTLINED_FUNCTION_43();
  v36 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v36, v37, v38);
}

uint64_t sub_23131C1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18 + 304);
  v20 = *(v18 + 312);
  v21 = *(v18 + 288);
  v22 = *(v18 + 296);
  v23 = *(v18 + 184);
  v24 = *(v23 + 1);
  v62 = *v23;
  v25 = *(v23 + 3);
  v61 = *(v23 + 2);
  v26 = type metadata accessor for SuggestionViewDetails(0);
  *(v18 + 320) = v26;
  sub_23123EA8C(&v23[v26[8]], v18 + 16, &qword_27DD44A38, &qword_231377858);
  v27 = v26[5];
  *(v18 + 352) = v27;
  v28 = &v23[v27];
  v59 = type metadata accessor for RankedCandidateSuggestion();
  v60 = v28;
  v29 = *(v59 + 20);
  *(v18 + 356) = v29;
  v30 = &v28[v29];
  sub_231369EE0();
  sub_231369EE0();
  sub_231366790();
  v31 = type metadata accessor for ViewDetails(0);
  v32 = &v23[v31[8]];
  *(v18 + 328) = *v32;
  *(v18 + 336) = *(v32 + 1);
  (*(v22 + 16))(v19, &v23[v31[9]], v21);
  v33 = *(v30 + 4);
  __swift_project_boxed_opaque_existential_1(v30, *(v30 + 3));
  sub_231369EE0();
  OUTLINED_FUNCTION_54_0();
  sub_2313682A0();
  sub_2313676D0();

  sub_2311CF388(&v23[v26[7]], v18 + 96);
  v34 = *(v18 + 184);
  if (*(v23 + 5))
  {
    v58 = *(v34 + 32);
    v55 = *(v23 + 5);
  }

  v35 = *(v18 + 280);
  v36 = *(v18 + 248);
  v37 = *(v18 + 232);
  v56 = *(v18 + 224);
  v57 = *(v18 + 240);
  (*(*(v18 + 264) + 16))(*(v18 + 272), v34 + v31[7], *(v18 + 256));
  sub_23123EA8C(&v60[*(v59 + 24)], v36, &qword_27DD42F20, &qword_23136D410);
  v38 = (v34 + v31[12]);
  v39 = *v38;
  v40 = v38[1];
  sub_231369EE0();
  sub_231369EE0();
  sub_2313671F0();
  sub_23123EA8C(v18 + 16, v18 + 136, &qword_27DD44A38, &qword_231377858);
  (*(v37 + 16))(v57, v60, v56);
  v41 = *(v30 + 3);
  v42 = *(v30 + 4);
  OUTLINED_FUNCTION_3_2(v30);
  v43 = *(MEMORY[0x277D60F68] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v18 + 344) = v44;
  *v44 = v45;
  v44[1] = sub_23131C498;
  v46 = *(v18 + 216);
  OUTLINED_FUNCTION_92_1();

  return MEMORY[0x2821C6E60](v47, v48, v42, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23131C498()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 344);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23131C57C()
{
  v18 = *(v0 + 328);
  v19 = *(v0 + 336);
  v1 = *(v0 + 320);
  v15 = *(v0 + 312);
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v20 = *(v0 + 272);
  v21 = *(v0 + 248);
  v14 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v12 = *(v0 + 176);
  v13 = *(v0 + 216);
  v6 = (v5 + *(v0 + 352) + *(v0 + 356));
  v7 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_231317680(v2);
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_231368310();
  sub_23123EA8C(v5 + *(v1 + 36), v3, &qword_27DD44710, &qword_231375250);
  sub_2313670A0();
  sub_2311D1F18(v0 + 16, &qword_27DD44A38, &qword_231377858);
  v9 = sub_231367120();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v9);

  OUTLINED_FUNCTION_56_0();

  return v10();
}

BOOL sub_23131C778(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = sub_231367300();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RankedCandidateSuggestion();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  sub_23123EA8C(a1, &v23 - v17, &qword_27DD43530, &unk_23136CA70);
  v19 = type metadata accessor for SuggestionViewDetails(0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_2311D1F18(v18, &qword_27DD43530, &unk_23136CA70);
    v20 = 0;
  }

  else
  {
    sub_231327110(&v18[*(v19 + 20)], v11);
    sub_231327168();
    (*(v4 + 16))(v7, v11, v3);
    sub_231327168();
    v20 = sub_2313672C0();
    (*(v4 + 8))(v7, v3);
  }

  sub_23123EA8C(v24, v15, &qword_27DD43530, &unk_23136CA70);
  if (__swift_getEnumTagSinglePayload(v15, 1, v19) == 1)
  {
    sub_2311D1F18(v15, &qword_27DD43530, &unk_23136CA70);
    v21 = 0;
  }

  else
  {
    sub_231327110(&v15[*(v19 + 20)], v11);
    sub_231327168();
    (*(v4 + 16))(v7, v11, v3);
    sub_231327168();
    v21 = sub_2313672C0();
    (*(v4 + 8))(v7, v3);
  }

  return v20 < v21;
}

void *SuggestionService.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v2 = v0[8];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  v3 = v0[14];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SuggestionService.__deallocating_deinit()
{
  SuggestionService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_23131CB64()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209AAC;

  return SuggestionService.suggestNext(interaction:)();
}

uint64_t sub_23131CC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_231209AAC;

  return SuggestionService.logShown(for:deliveryVehicle:generationId:)(a1, a2, a3);
}

uint64_t sub_23131CCC0()
{
  v2 = *v0;
  v3 = SuggestionService.getSuggestionPool()();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_23131CD20(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231209AAC;

  return SuggestionService.getSystemEnvironmentService()(a1);
}

void sub_23131CDBC()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v2 = sub_2313667A0();
  v3 = OUTLINED_FUNCTION_40_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v6 = sub_2313698C0();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  sub_2313690F0();
  v16 = sub_2313698A0();
  v17 = sub_23136A3B0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_63();
    *v18 = 0;
    _os_log_impl(&dword_2311CB000, v16, v17, "No suggestions service configured. Check logs for initialization errors", v18, 2u);
    v19 = OUTLINED_FUNCTION_17_19();
    MEMORY[0x23192B930](v19);
  }

  v20 = *(v9 + 8);
  v21 = OUTLINED_FUNCTION_28();
  v20(v21);
  sub_2313690F0();

  v22 = sub_2313698A0();
  v23 = sub_23136A3B0();

  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_17();
    v33 = v20;
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_16();
    v25 = swift_slowAlloc();
    v34[0] = v25;
    *v24 = 136315138;
    v26 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449F8, &qword_2313777C0);
    v27 = sub_23136A010();
    v29 = sub_2311CFD58(v27, v28, v34);

    *(v24 + 4) = v29;
    OUTLINED_FUNCTION_37_2(&dword_2311CB000, v30, v31, "No suggestions service configured: startupError: (%s). Check logs for initalisation errors");
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v32 = OUTLINED_FUNCTION_17_19();
    MEMORY[0x23192B930](v32);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();

    (v33)(v14, v6);
  }

  else
  {

    (v20)(v14, v6);
  }

  sub_2313691D0();
  OUTLINED_FUNCTION_24_0();
  v34[3] = sub_231367980();
  v34[4] = sub_231327268(&qword_280F7CA98, MEMORY[0x277D60A60]);
  v34[0] = v22;
  sub_231366790();
  sub_2313671D0();
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_23131D0C4()
{
  OUTLINED_FUNCTION_8();
  v1[3] = v0;
  v2 = sub_2313698C0();
  v1[4] = v2;
  OUTLINED_FUNCTION_0(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_43();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23131D168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_50_9();
  a18 = v20;
  v23 = v20[6];
  v24 = v20[3];
  sub_2313690F0();

  v25 = sub_2313698A0();
  v26 = sub_23136A3B0();

  if (os_log_type_enabled(v25, v26))
  {
    v28 = v20[5];
    v27 = v20[6];
    v30 = v20[3];
    v29 = v20[4];
    OUTLINED_FUNCTION_17();
    v31 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_16();
    v32 = swift_slowAlloc();
    a9 = v32;
    *v31 = 136315138;
    v33 = *(v30 + 16);
    v20[2] = v33;
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449F8, &qword_2313777C0);
    v35 = sub_23136A010();
    v37 = sub_2311CFD58(v35, v36, &a9);

    *(v31 + 4) = v37;
    OUTLINED_FUNCTION_47_9(&dword_2311CB000, v38, v26, "No suggestions service configured: startupError: (%s). Check logs for initalisation errors");
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v39 = OUTLINED_FUNCTION_12_22();
    MEMORY[0x23192B930](v39);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();

    v40 = *(v28 + 8);
  }

  else
  {
    v44 = v20[5];
    v43 = v20[6];
    v45 = v20[4];

    v46 = *(v44 + 8);
  }

  v41 = OUTLINED_FUNCTION_28_0();
  v42(v41);
  v47 = v20[6];

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_40();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
}

uint64_t sub_23131D2F8()
{
  OUTLINED_FUNCTION_8();
  v1[3] = v0;
  v2 = sub_2313698C0();
  v1[4] = v2;
  OUTLINED_FUNCTION_0(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_43();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_23131D39C()
{
  OUTLINED_FUNCTION_11_0();
  v1 = sub_2313698C0();
  v2 = OUTLINED_FUNCTION_0_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  sub_2313690F0();

  v7 = sub_2313698A0();
  v8 = sub_23136A3B0();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_17();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_16();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449F8, &qword_2313777C0);
    v12 = sub_23136A010();
    v14 = sub_2311CFD58(v12, v13, &v19);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2311CB000, v7, v8, "No suggestions service configured: startupError: (%s). Check logs for initalisation errors", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    v15 = OUTLINED_FUNCTION_12_22();
    MEMORY[0x23192B930](v15);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  v16 = *(v4 + 8);
  v17 = OUTLINED_FUNCTION_27();
  v18(v17);
  if (qword_280F849F8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_23131D574()
{
  OUTLINED_FUNCTION_54();

  return swift_deallocClassInstance();
}

uint64_t sub_23131D5A8()
{
  v2 = *v0;
  sub_23131CDBC();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_23131D60C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209AAC;

  return sub_23131D0C4();
}

uint64_t sub_23131D69C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209AAC;

  return sub_23131D2F8();
}

uint64_t sub_23131D72C()
{
  v2 = *v0;
  sub_23131D39C();
  v3 = *(v1 + 8);

  return v3();
}

void sub_23131D7C4()
{
  OUTLINED_FUNCTION_11_0();
  v49 = v0;
  v50 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v51 = v10;
  v11 = *(v10 + 24);
  v47 = *(v10 + 32);
  v48 = v12;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  OUTLINED_FUNCTION_21();
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  v17 = OUTLINED_FUNCTION_85_2(v16);
  v18(v17);
  v19 = *(v9 + 24);
  v45 = *(v9 + 32);
  v46 = v9;
  __swift_mutable_project_boxed_opaque_existential_1(v9, v19);
  OUTLINED_FUNCTION_21();
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_4();
  v25 = v24 - v23;
  (*(v26 + 16))(v24 - v23);
  v27 = *(v7 + 24);
  v43 = *(v7 + 32);
  v44 = v7;
  __swift_mutable_project_boxed_opaque_existential_1(v7, v27);
  OUTLINED_FUNCTION_21();
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_4();
  v32 = OUTLINED_FUNCTION_86_1(v31);
  v33(v32);
  v34 = v5[3];
  v35 = v5[4];
  __swift_mutable_project_boxed_opaque_existential_1(v5, v34);
  OUTLINED_FUNCTION_21();
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_4();
  v41 = v40 - v39;
  (*(v42 + 16))(v40 - v39);
  v50(v2, v25, v1, v41, v48, v49, v11, v27, v19, v34, v47, v43, v45, v35);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  OUTLINED_FUNCTION_9_0();
}

void ConfigRetrievalWrapper.__allocating_init(runtimeConfigProvider:ownerConfigProviderFactory:)()
{
  OUTLINED_FUNCTION_11_0();
  v28 = v0;
  v4 = v3;
  v6 = v5;
  sub_2311CF388(v5, v37);
  sub_2311CF388(v4, v34);
  v7 = type metadata accessor for DefaultEngagementEstimatorModelProvider();
  swift_allocObject();
  DefaultEngagementEstimatorModelProvider.init()();
  OUTLINED_FUNCTION_109_1();
  v8 = type metadata accessor for DefaultNormalizerProvider();
  OUTLINED_FUNCTION_36_2();
  v9 = swift_allocObject();
  *(v9 + 16) = 0xD000000000000028;
  *(v9 + 24) = 0x800000023137F290;
  v10 = type metadata accessor for DefaultDenyListsProvider();
  OUTLINED_FUNCTION_33_16();
  v32 = v10;
  v33 = &protocol witness table for DefaultDenyListsProvider;
  *&v31 = swift_allocObject();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  v11 = v38;
  v12 = v39;
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  OUTLINED_FUNCTION_21();
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  v17 = OUTLINED_FUNCTION_86_1(v16);
  v18(v17);
  v20 = v35;
  v19 = v36;
  __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  OUTLINED_FUNCTION_21();
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_4();
  v25 = OUTLINED_FUNCTION_85_2(v24);
  v26(v25);
  v29 = v9;
  v30 = v1;
  *&v27 = v12;
  *(&v27 + 1) = &protocol witness table for DefaultEngagementEstimatorModelProvider;
  sub_231325F60(v4, v2, &v30, &v29, &v31, v28, v11, v7, v20, v8, v27, v19, &off_2845F5D90);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  OUTLINED_FUNCTION_9_0();
}

uint64_t ConfigRetrievalWrapper.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  return OUTLINED_FUNCTION_72_6(v0 + 22);
}

uint64_t ConfigRetrievalWrapper.__deallocating_deinit()
{
  ConfigRetrievalWrapper.deinit();

  return swift_deallocClassInstance();
}

void TrialSuggestionsServiceFactory.__allocating_init(enabled:appUtils:selfLogger:suggestionsLoggerFactory:featureServiceFactory:trialRuntimeConfigProvider:clock:bookkeepingXPCClient:)()
{
  OUTLINED_FUNCTION_11_0();
  v66 = v1;
  v62 = v2;
  v4 = v3;
  v65 = v5;
  v64 = v6;
  v63 = v7;
  v67 = v8;
  v61 = v9;
  v57 = type metadata accessor for TrialOwnerConfigProviderFactory();
  OUTLINED_FUNCTION_33_16();
  v56 = swift_allocObject();
  v60 = type metadata accessor for DefaultEngagementEstimatorModelProvider();
  swift_allocObject();
  DefaultEngagementEstimatorModelProvider.init()();
  OUTLINED_FUNCTION_32_6();
  v10 = type metadata accessor for DefaultTrialClientProvider();
  OUTLINED_FUNCTION_33_16();
  v76 = v10;
  v77 = &off_2845F70C8;
  *&v75 = swift_allocObject();
  v73 = v60;
  v74 = &protocol witness table for DefaultEngagementEstimatorModelProvider;
  *&v72 = v0;
  v54 = type metadata accessor for TrialEngagementEstimatorModelProvider();
  v11 = OUTLINED_FUNCTION_55_6();
  __swift_mutable_project_boxed_opaque_existential_1(&v75, v10);
  OUTLINED_FUNCTION_21();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = *(v13 + 16);
  v19(&v53 - v18, v17);
  v20 = *(&v53 - v18);
  v11[5] = v10;
  v11[6] = &off_2845F70C8;
  v11[2] = v20;
  sub_2311D38A8(&v72, (v11 + 7));
  v21 = v4;
  v59 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm(&v75);
  v22 = type metadata accessor for DefaultNormalizerProvider();
  v55 = v22;
  OUTLINED_FUNCTION_36_2();
  v23 = swift_allocObject();
  v58 = 0x800000023137F290;
  *(v23 + 16) = 0xD000000000000028;
  *(v23 + 24) = 0x800000023137F290;
  OUTLINED_FUNCTION_33_16();
  v24 = swift_allocObject();
  v76 = v10;
  v77 = &off_2845F70C8;
  *&v75 = v24;
  v73 = v22;
  v74 = &off_2845F5D90;
  *&v72 = v23;
  v25 = type metadata accessor for TrialNormalizerProvider();
  v26 = OUTLINED_FUNCTION_55_6();
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v75, v10);
  v28 = MEMORY[0x28223BE20](v27);
  v19(&v53 - v18, v28);
  v29 = *(&v53 - v18);
  v26[5] = v10;
  v26[6] = &off_2845F70C8;
  v26[2] = v29;
  sub_2311D38A8(&v72, (v26 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(&v75);
  v30 = type metadata accessor for TrialDenyListsProvider();
  OUTLINED_FUNCTION_55_6();
  v31 = TrialDenyListsProvider.init()();
  v76 = v30;
  v77 = &protocol witness table for TrialDenyListsProvider;
  *&v75 = v31;
  v53 = type metadata accessor for ConfigRetrievalWrapper();
  swift_allocObject();
  OUTLINED_FUNCTION_121_0();
  v30[5] = type metadata accessor for TrialRuntimeConfigProvider();
  v30[6] = &protocol witness table for TrialRuntimeConfigProvider;
  v30[2] = v21;
  v30[10] = v57;
  v30[11] = &off_2845F3200;
  v30[7] = v56;
  v30[15] = v54;
  v30[16] = &protocol witness table for TrialEngagementEstimatorModelProvider;
  v30[12] = v11;
  v30[20] = v25;
  v30[21] = &off_2845F5D80;
  v30[17] = v26;
  sub_2311D38A8(&v75, (v30 + 22));
  v56 = type metadata accessor for DefaultSuggestionServiceFactory();
  sub_2311CF388(v67, &v75);
  sub_2311CF388(v62, &v72);
  sub_2311CF388(v63, v71);
  sub_2311CF388(v64, v70);
  sub_2311CF388(v65, v69);
  sub_2311CF388(v66, v68);

  OUTLINED_FUNCTION_60_7();
  DefaultSuggestionServiceFactory.__allocating_init(enabled:appUtils:configRetrievalWrapper:clock:selfLogger:suggestionsLoggerFactory:featureServiceFactory:bookkeepingXPCClient:)();
  v57 = v32;
  v33 = type metadata accessor for DefaultRuntimeConfigProvider();
  OUTLINED_FUNCTION_36_2();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2311F0E84;
  *(v34 + 24) = 0;
  v35 = type metadata accessor for DefaultOwnerConfigProviderFactory();
  OUTLINED_FUNCTION_33_16();
  v54 = swift_allocObject();
  v36 = v60;
  swift_allocObject();
  DefaultEngagementEstimatorModelProvider.init()();
  v38 = v37;
  v39 = v55;
  OUTLINED_FUNCTION_36_2();
  v40 = swift_allocObject();
  *(v40 + 16) = 0xD000000000000028;
  *(v40 + 24) = v58;
  v41 = type metadata accessor for DefaultDenyListsProvider();
  OUTLINED_FUNCTION_33_16();
  v42 = swift_allocObject();
  v76 = v41;
  v77 = &protocol witness table for DefaultDenyListsProvider;
  *&v75 = v42;
  v43 = swift_allocObject();
  v43[5] = v33;
  v43[6] = &protocol witness table for DefaultRuntimeConfigProvider;
  v43[2] = v34;
  v43[10] = v35;
  v43[11] = &off_2845F3210;
  v43[7] = v54;
  v43[15] = v36;
  v43[16] = &protocol witness table for DefaultEngagementEstimatorModelProvider;
  v43[12] = v38;
  v43[20] = v39;
  v43[21] = &off_2845F5D90;
  v43[17] = v40;
  sub_2311D38A8(&v75, (v43 + 22));
  sub_2311CF388(v67, &v75);
  v44 = v62;
  sub_2311CF388(v62, &v72);
  v45 = v63;
  sub_2311CF388(v63, v71);
  v46 = v64;
  sub_2311CF388(v64, v70);
  v47 = v65;
  sub_2311CF388(v65, v69);
  v48 = v66;
  sub_2311CF388(v66, v68);

  OUTLINED_FUNCTION_60_7();
  DefaultSuggestionServiceFactory.__allocating_init(enabled:appUtils:configRetrievalWrapper:clock:selfLogger:suggestionsLoggerFactory:featureServiceFactory:bookkeepingXPCClient:)();
  OUTLINED_FUNCTION_32_6();
  type metadata accessor for TrialTriggerLoggerProvider();
  OUTLINED_FUNCTION_33_16();
  swift_allocObject();
  OUTLINED_FUNCTION_33_16();
  swift_allocObject();
  OUTLINED_FUNCTION_61_6();
  sub_231326C08(v49, v50, v51, v52);

  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  OUTLINED_FUNCTION_9_0();
}

void DefaultSuggestionServiceFactory.__allocating_init(enabled:appUtils:configRetrievalWrapper:clock:selfLogger:suggestionsLoggerFactory:featureServiceFactory:bookkeepingXPCClient:)()
{
  OUTLINED_FUNCTION_11_0();
  v54 = v1;
  v55 = v0;
  v49 = v2;
  v50 = v3;
  v5 = v4;
  v51 = v4;
  v52 = v6;
  v7 = v6;
  v9 = v8;
  v53 = v8;
  v57 = v10;
  v11 = v1;
  v56 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  OUTLINED_FUNCTION_40_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v16);
  v48 = &v47 - v17;
  OUTLINED_FUNCTION_18();
  v18 = sub_231366690();
  v19 = OUTLINED_FUNCTION_0_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v47 - v26;
  sub_2311CF388(v11, v77);
  sub_2311CF388(v9, v76);
  sub_2311CF388(v7, v75);
  sub_2311CF388(v5, v74);
  v28 = v49;
  sub_2311CF388(v49, v73);
  v29 = v50;
  sub_2311CF388(v50, v72);
  v71[3] = &type metadata for DefaultDataServiceFactory;
  v71[4] = &off_2845F6C20;
  sub_231367340();
  v30 = v48;
  OUTLINED_FUNCTION_52();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v18);
  sub_2311CF388(v76, v70);
  sub_2311CF388(v71, v69);
  sub_2311CF388(v77, v68);
  sub_2311CF388(v75, v65);
  sub_2311CF388(v74, v64);
  sub_2311CF388(v73, v63);
  sub_2311CF388(v72, v62);
  type metadata accessor for SuggestionPipelineFactories();
  sub_231367330();
  sub_2312BF28C(v24, v61);
  (*(v21 + 8))(v24, v18);
  v34 = sub_2313686F0();
  v35 = sub_2313686E0();
  v59 = v34;
  v60 = MEMORY[0x277D60FF0];
  *&v58 = v35;
  v36 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v37 = swift_allocObject();
  (*(v21 + 32))(v37 + v36, v27, v18);
  v38 = v66;
  v39 = v67;
  __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  OUTLINED_FUNCTION_21();
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_4();
  v44 = OUTLINED_FUNCTION_116_0(v43);
  v45(v44);
  *(&v46 + 1) = v63;
  *&v46 = v64;
  sub_231325C0C(v56, v57, sub_231326D9C, v37, v30, v61, &v58, v70, v69, v68, v27, v46, v62, v55, v38, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  OUTLINED_FUNCTION_72_6(v65);
  OUTLINED_FUNCTION_9_0();
}

uint64_t TrialSuggestionsServiceFactory.create(refreshableService:)()
{
  OUTLINED_FUNCTION_8();
  v1[55] = v2;
  v1[56] = v0;
  v1[53] = v3;
  v1[54] = v4;
  v5 = sub_2313698C0();
  v1[57] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[58] = v6;
  v8 = *(v7 + 64);
  v1[59] = OUTLINED_FUNCTION_67();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23131E828()
{
  OUTLINED_FUNCTION_50_9();
  v1 = *(v0 + 488);
  sub_231369100();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v3))
  {
    v4 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v4);
    OUTLINED_FUNCTION_0_26();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  v10 = *(v0 + 488);
  v11 = *(v0 + 456);
  v12 = *(v0 + 464);
  v13 = *(v0 + 448);

  *(v0 + 496) = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_28_0();
  v15(v14);
  v16 = *__swift_project_boxed_opaque_existential_1(v13 + 17, v13[20]);
  sub_231343BB8((v0 + 16));
  v17 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v18 = *(v17 + 56);
  v19 = OUTLINED_FUNCTION_28_0();
  v20(v19);
  *(v0 + 504) = v31;
  v21 = v13[5];
  v22 = v13[6];
  v29 = (OUTLINED_FUNCTION_14_27(v13 + 2) + 8);
  v30 = (*v29 + **v29);
  v23 = (*v29)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 520) = v24;
  *v24 = v25;
  v24[1] = sub_23131EA14;
  v26 = *(v0 + 432);
  v27 = *(v0 + 440);
  OUTLINED_FUNCTION_88_1();

  return v30();
}

uint64_t sub_23131EA14()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 520);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_23131EAF8()
{
  sub_2311CF388((v0 + 7), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440A0, &qword_2313773B0);
  type metadata accessor for NoOpSuggestionService();
  if (swift_dynamicCast())
  {
    v1 = v0[60];
    v2 = v0[52];

    sub_231369100();
    v3 = sub_2313698A0();
    v4 = sub_23136A3B0();
    if (OUTLINED_FUNCTION_40_1(v4))
    {
      v5 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_68(v5);
      OUTLINED_FUNCTION_0_26();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v12 = v0[63];
    v11 = v0[64];
    v13 = v0[62];
    v14 = v0[60];
    v15 = v0[57];
    v16 = v0[58];
    v17 = v0[56];

    v18 = OUTLINED_FUNCTION_54_0();
    v13(v18);
    v19 = sub_231368C80();
    OUTLINED_FUNCTION_10_2(v19);
    v20 = swift_allocObject();
    sub_231368C70();
    OUTLINED_FUNCTION_24_0();
    v21 = type metadata accessor for DefaultTrialCoreAnalyticsLogger();
    OUTLINED_FUNCTION_10_2(v21);
    swift_allocObject();
    v22 = MEMORY[0x277D61160];
    v0[45] = v19;
    v0[46] = v22;
    v0[42] = v20;
    sub_2311CF388((v0 + 42), (v0 + 47));
    sub_231368330();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 42);
    v62[0] = v12;
    v62[1] = v11;
    v63 = 0;
    sub_2313024A8(v62, 3, &v63, 0xD00000000000001FLL, 0x8000000231381450);

    v23 = v17[11];
    __swift_project_boxed_opaque_existential_1(v17 + 7, v17[10]);
    OUTLINED_FUNCTION_1_6();
    v60 = v24 + *v24;
    v26 = *(v25 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[66] = v27;
    *v27 = v28;
    v27[1] = sub_23131EF10;
    v29 = v0[54];
    v30 = v0[55];
    v31 = v0[53];
    OUTLINED_FUNCTION_88_1();
    OUTLINED_FUNCTION_122_0();

    __asm { BRAA            X5, X16 }
  }

  v34 = v0[59];
  sub_231369100();
  v35 = sub_2313698A0();
  v36 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v36))
  {
    v37 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v37);
    OUTLINED_FUNCTION_0_26();
    _os_log_impl(v38, v39, v40, v41, v42, 2u);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  v43 = v0[62];
  v45 = v0[58];
  v44 = v0[59];
  v47 = v0[56];
  v46 = v0[57];

  v48 = OUTLINED_FUNCTION_28_0();
  v43(v48);
  v49 = v47[16];
  __swift_project_boxed_opaque_existential_1(v47 + 12, v47[15]);
  v50 = *(v49 + 8);
  v51 = OUTLINED_FUNCTION_28_0();
  v52(v51);
  v53 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  OUTLINED_FUNCTION_1_6();
  v61 = v54 + *v54;
  v56 = *(v55 + 4);
  v57 = swift_task_alloc();
  v0[67] = v57;
  *v57 = v0;
  v57[1] = sub_23131F078;
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_122_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_23131EF10()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 528);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23131EFF4()
{
  OUTLINED_FUNCTION_26();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[59];
  OUTLINED_FUNCTION_72_6(v0 + 2);

  OUTLINED_FUNCTION_56_0();

  return v4();
}

uint64_t sub_23131F078()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 536);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23131F15C()
{
  OUTLINED_FUNCTION_50_9();
  v18 = v0;
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 424);
  v4 = sub_231368C80();
  OUTLINED_FUNCTION_10_2(v4);
  v5 = swift_allocObject();
  sub_231368C70();
  OUTLINED_FUNCTION_24_0();
  v6 = type metadata accessor for DefaultTrialCoreAnalyticsLogger();
  OUTLINED_FUNCTION_10_2(v6);
  swift_allocObject();
  v7 = MEMORY[0x277D61160];
  *(v0 + 200) = v4;
  *(v0 + 208) = v7;
  *(v0 + 176) = v5;
  sub_2311CF388(v0 + 176, v0 + 216);
  sub_231368330();
  v8 = OUTLINED_FUNCTION_10_11();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  *&v17 = v2;
  *(&v17 + 1) = v1;
  v16 = 0;
  sub_2313024A8(&v17, 3, &v16, 0, 0);

  sub_2311CF388(v0 + 56, v0 + 256);
  *&v17 = v2;
  *(&v17 + 1) = v1;
  sub_2311CF388(v0 + 136, v0 + 296);
  v9 = type metadata accessor for TrialBasedSuggestionService();
  OUTLINED_FUNCTION_55_10();
  v10 = swift_allocObject();
  sub_231317A28((v0 + 256), &v17, (v0 + 296));
  v3[3] = v9;
  v3[4] = &off_2845F6BD0;
  *v3 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  v11 = *(v0 + 480);
  v12 = *(v0 + 488);
  v13 = *(v0 + 472);
  OUTLINED_FUNCTION_72_6((v0 + 16));

  OUTLINED_FUNCTION_56_0();

  return v14();
}

uint64_t TrialSuggestionsServiceFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  return OUTLINED_FUNCTION_72_6(v0 + 17);
}

uint64_t TrialSuggestionsServiceFactory.__deallocating_deinit()
{
  TrialSuggestionsServiceFactory.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_23131F344()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311D05C8;

  return TrialSuggestionsServiceFactory.create(refreshableService:)();
}

uint64_t sub_23131F3F8@<X0>(uint64_t a1@<X2>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v46 = a1;
  v5 = sub_2313698C0();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v51 = v7;
  v52 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22();
  v48 = v10 - v11;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v12);
  v49 = &v45 - v13;
  v15 = a2[21];
  v14 = a2[22];
  v16 = a2[23];
  v17 = a2[24];
  v56 = v16;
  v18 = sub_231368D90();
  OUTLINED_FUNCTION_10_2(v18);
  swift_allocObject();

  v19 = sub_231368D80();
  v20 = type metadata accessor for AppUsageDataService();
  OUTLINED_FUNCTION_21_1();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D611B8];
  v21[5] = v18;
  v21[6] = v22;
  v21[2] = v19;
  v23 = type metadata accessor for SiriRemembersDataService();
  OUTLINED_FUNCTION_36_2();
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_231375110;
  *(v24 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F10, &qword_231370D30);
  OUTLINED_FUNCTION_55_10();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_23136C1C0;
  *(v25 + 56) = v23;
  *(v25 + 64) = &protocol witness table for SiriRemembersDataService;
  *(v25 + 32) = v24;
  *(v25 + 96) = v20;
  *(v25 + 104) = &protocol witness table for AppUsageDataService;
  *(v25 + 72) = v21;
  v50 = v15;
  v26 = v15 == 0x797469746E656469 && v14 == 0xED00006C65646F4DLL;
  if (v26 || (sub_23136A900()) && (v56 == 0x797469746E656469 ? (v27 = v17 == 0xED00006C65646F4DLL) : (v27 = 0), v27 || (sub_23136A900()))
  {
    v49 = v24;

    v28 = v48;
    sub_231369100();
    sub_231369EE0();
    sub_231369EE0();
    v29 = sub_2313698A0();
    v30 = sub_23136A390();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47 = a3;
      *&v53 = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_2311CFD58(v50, v14, &v53);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2311CFD58(v56, v17, &v53);
      _os_log_impl(&dword_2311CB000, v29, v30, "both models %s, %s are identity model, disabling feature extraction service for inference", v31, 0x16u);
      swift_arrayDestroy();
      a3 = v47;
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    (*(v51 + 8))(v28, v52);
  }

  else
  {
    v47 = a3;

    v33 = v49;
    sub_231369100();
    sub_231369EE0();
    sub_231369EE0();
    v34 = sub_2313698A0();
    v35 = sub_23136A390();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *&v53 = swift_slowAlloc();
      *v36 = 136315394;
      *(v36 + 4) = sub_2311CFD58(v50, v14, &v53);
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_2311CFD58(v56, v17, &v53);
      _os_log_impl(&dword_2311CB000, v34, v35, "Detected non-identity model %s, %s, enabling feature extraction service for inference", v36, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      v37 = OUTLINED_FUNCTION_12_22();
      MEMORY[0x23192B930](v37);

      (*(v51 + 8))(v49, v52);
    }

    else
    {

      (*(v51 + 8))(v33, v52);
    }

    sub_2311CF388(v46, &v53);
    v38 = sub_231369750();
    OUTLINED_FUNCTION_21_1();
    swift_allocObject();
    v39 = sub_231369740();
    v40 = *(v25 + 16);
    a3 = v47;
    if (v40 >= *(v25 + 24) >> 1)
    {
      sub_23126EBE8();
      v25 = v44;
    }

    v54 = v38;
    v55 = &protocol witness table for SiriSuggestionsIntelligence.IntelligenceFeatureSetService;
    *&v53 = v39;
    *(v25 + 16) = v40 + 1;
    sub_2311D38A8(&v53, v25 + 40 * v40 + 32);
  }

  v41 = type metadata accessor for UnionDataService();
  OUTLINED_FUNCTION_54();
  v42 = swift_allocObject();
  *(v42 + 16) = v25;
  a3[3] = v41;
  a3[4] = &protocol witness table for UnionDataService;

  *a3 = v42;
  return result;
}

uint64_t sub_23131F9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 832) = v8;
  *(v9 + 824) = v16;
  *(v9 + 816) = a8;
  *(v9 + 808) = a7;
  *(v9 + 800) = a6;
  *(v9 + 792) = a4;
  *(v9 + 784) = a2;
  *(v9 + 776) = a1;
  v11 = sub_231368DB0();
  *(v9 + 840) = v11;
  v12 = *(v11 - 8);
  *(v9 + 848) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 856) = swift_task_alloc();
  *(v9 + 864) = *(a3 + 272);
  *(v9 + 872) = *(a3 + 280);
  *(v9 + 880) = *(a3 + 288);
  *(v9 + 896) = *(a3 + 304);
  *(v9 + 904) = *(a3 + 312);
  *(v9 + 912) = *(a3 + 320);
  *(v9 + 928) = *(a3 + 336);
  *(v9 + 936) = *(a3 + 344);

  return MEMORY[0x2822009F8](sub_23131FB10, 0, 0);
}

uint64_t sub_23131FB10()
{
  OUTLINED_FUNCTION_60_0();
  v1 = *(v0 + 808);
  v2 = v1[3];
  v3 = v1[4];
  OUTLINED_FUNCTION_3_2(v1);
  OUTLINED_FUNCTION_28_0();
  if (sub_231368410())
  {
    v4 = *(v0 + 936);
    v5 = *(v0 + 928);
    v6 = *(v0 + 920);
    v23 = *(v0 + 904);
    v7 = sub_2313272B0();
    OUTLINED_FUNCTION_21_1();
    v8 = swift_allocObject();
    *(v8 + 16) = v23;
    *(v8 + 32) = v6;
    *(v8 + 40) = v5;
    *(v8 + 48) = v4;
    v9 = &type metadata for AssistantSuggestionsPolicyConfig;
  }

  else
  {
    v10 = *(v0 + 896);
    v11 = *(v0 + 888);
    v12 = *(v0 + 880);
    v13 = *(v0 + 872);
    v14 = *(v0 + 864);
    v7 = sub_2312927D0();
    OUTLINED_FUNCTION_21_1();
    v8 = swift_allocObject();
    *(v8 + 16) = v14;
    *(v8 + 24) = v13;
    *(v8 + 32) = v12;
    *(v8 + 40) = v11;
    *(v8 + 48) = v10;
    v9 = &type metadata for SiriHintsPolicyConfig;
  }

  v15 = *(v0 + 784);
  v16 = *(v0 + 776);
  *(v0 + 40) = v9;
  *(v0 + 48) = v7;
  *(v0 + 16) = v8;
  *(v0 + 944) = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A88, &qword_2313778E0);
  *(v0 + 952) = *(v15 + 8);
  v17 = *(MEMORY[0x277D61088] + 4);
  v18 = swift_task_alloc();
  *(v0 + 960) = v18;
  *v18 = v0;
  v18[1] = sub_23131FCB4;
  v19 = *(v0 + 776);
  OUTLINED_FUNCTION_88_1();

  return MEMORY[0x2821C7278](v20, v21);
}

uint64_t sub_23131FCB4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 960);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23131FD98()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[100];
  v2 = sub_231368CE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A90, &qword_2313778E8);
  OUTLINED_FUNCTION_121_0();
  v3 = sub_231368580();
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_23136B670;
  sub_231368660();
  sub_2311CF388((v0 + 2), (v0 + 7));
  sub_2311CF388(v1, (v0 + 12));
  v8 = *(v2 + 48);
  v9 = *(v2 + 52);
  swift_allocObject();
  v10 = sub_231368CD0();
  v0[121] = v10;
  v0[94] = v10;
  v11 = *(MEMORY[0x277D61088] + 4);
  v12 = swift_task_alloc();
  v0[122] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_13_22(v12);
  v13 = OUTLINED_FUNCTION_78_5();

  return MEMORY[0x2821C7278](v13, v14);
}

uint64_t sub_23131FF10()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_2();
  *v2 = v0;
  v3 = v0[122];
  v4 = v0[121];
  v5 = *v1;
  *v2 = *v1;

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A98, &unk_2313778F0);
  v7 = *(MEMORY[0x277D61088] + 4);
  v8 = swift_task_alloc();
  v0[123] = v8;
  *v8 = v5;
  v8[1] = sub_2313200BC;
  v9 = v0[119];
  v10 = v0[118];
  v11 = v0[100];
  v12 = v0[97];

  return MEMORY[0x2821C7278](v6, v11);
}

uint64_t sub_2313200BC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_2();
  *v2 = v0;
  v3 = v0[123];
  v4 = v0[104];
  v5 = *v1;
  *v2 = *v1;

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43810, &qword_23136E028);
  v7 = OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_appUtils;
  v0[124] = OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_appUtils;
  v8 = *(MEMORY[0x277D61088] + 4);
  v9 = swift_task_alloc();
  v0[125] = v9;
  *v9 = v5;
  v9[1] = sub_231320264;
  v10 = v0[119];
  v11 = v0[118];
  v12 = v0[97];

  return MEMORY[0x2821C7278](v6, v4 + v7);
}

uint64_t sub_231320264()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 1000);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231320348()
{
  OUTLINED_FUNCTION_60_0();
  v1 = v0[118];
  v2 = v0[104];
  v3 = v0[98];
  v4 = v0[97];
  v5 = (v2 + v0[124]);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v0[20] = v6;
  v0[21] = *(v7 + 8);
  __swift_allocate_boxed_opaque_existential_1(v0 + 17);
  OUTLINED_FUNCTION_26_0(v6);
  (*(v8 + 16))();
  v9 = v5[3];
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v9);
  v0[25] = v9;
  v0[26] = *(v10 + 16);
  __swift_allocate_boxed_opaque_existential_1(v0 + 22);
  OUTLINED_FUNCTION_26_0(v9);
  (*(v11 + 16))();
  v12 = sub_2313677B0();
  v0[126] = v12;
  OUTLINED_FUNCTION_10_2(v12);
  swift_allocObject();
  v13 = sub_2313677A0();
  v0[127] = v13;
  v14 = type metadata accessor for AppInstallUpdater();
  v0[128] = v14;
  v15 = OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_bookkeepingXPCClient;
  v0[129] = OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_bookkeepingXPCClient;
  sub_2311CF388(v2 + v15, (v0 + 27));
  v0[95] = v13;
  v16 = *(v3 + 16);
  v0[130] = v16;

  swift_unknownObjectRetain();
  v0[131] = sub_23128A92C((v0 + 95), v4, v0 + 27, v14, v12, v1, MEMORY[0x277D60A30], v16);
  sub_2313695F0();
  sub_2313695E0();
  OUTLINED_FUNCTION_32_6();
  sub_2313695D0();
  OUTLINED_FUNCTION_10_11();

  sub_2313695C0();
  OUTLINED_FUNCTION_121_0();
  v17 = sub_231369550();

  sub_231369540();
  OUTLINED_FUNCTION_24_0();
  v18 = type metadata accessor for LocaleChangeCacheUpdater();
  swift_allocObject();
  v19 = OUTLINED_FUNCTION_28_0();
  v22 = sub_2313252FC(v19, v20, v17, v21);
  v0[132] = v22;

  v0[65] = v18;
  v0[62] = v22;
  v23 = *(MEMORY[0x277D61098] + 4);

  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[133] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_4_27(v24);

  return MEMORY[0x2821C7288](v0 + 62);
}

uint64_t sub_2313205E0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 1064);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 496));
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2313206C4()
{
  OUTLINED_FUNCTION_8();
  sub_2311CF388(*(v0 + 832) + *(v0 + 1032), v0 + 256);
  v1 = type metadata accessor for AutoCompleteIndexUpdater();
  swift_allocObject();
  v2 = sub_2312A425C((v0 + 256));
  *(v0 + 1072) = v2;
  *(v0 + 552) = v1;
  *(v0 + 528) = v2;
  v3 = *(MEMORY[0x277D61098] + 4);

  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 1080) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_4_27(v4);

  return MEMORY[0x2821C7288](v0 + 528);
}

uint64_t sub_2313207A0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 1080);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 528));
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231320884()
{
  OUTLINED_FUNCTION_16();
  v3 = 0xD00000000000001FLL;
  v4 = type metadata accessor for TrialConfigRefresher();
  v1[136] = v4;
  v1[137] = 0;
  v5 = &unk_23137A540;
  v6 = v4;
  switch(byte_2845F1048)
  {
    case 1:
      v5 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_A";
      break;
    case 2:
      v5 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
      v3 = 0xD000000000000019;
      break;
    case 3:
      v5 = "SIRI_SUGGESTIONS_PLATFORM";
      v3 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_74_6();
  v7 = swift_unknownObjectRetain();
  v8 = sub_231349790(v7, v3, v5 | 0x8000000000000000, (v1 + 37), v6, v2, v0);
  v1[138] = v8;
  v1[73] = v6;
  v1[70] = v8;
  v9 = *(MEMORY[0x277D61098] + 4);

  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v1[139] = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_4_27(v10);

  return MEMORY[0x2821C7288](v1 + 70);
}

uint64_t sub_2313209E4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 1112);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 560));
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231320AC8()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 1104);
  v4 = *(v1 + 1096);

  if (v4 == 3)
  {
    v5 = *(v1 + 1032);
    v6 = *(v1 + 832);
    v7 = type metadata accessor for BiomeStreamRefresher();
    sub_2311CF388(v6 + v5, v1 + 336);
    v8 = BiomeStreamRefresher.__allocating_init(bookkeepingXPCClient:)((v1 + 336));
    *(v1 + 1120) = v8;
    *(v1 + 616) = v7;
    *(v1 + 592) = v8;
    v9 = *(MEMORY[0x277D61098] + 4);

    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v1 + 1128) = v10;
    *v10 = v11;
    OUTLINED_FUNCTION_4_27(v10);
    v12 = v1 + 592;
  }

  else
  {
    v13 = 0xD00000000000001FLL;
    v14 = *(v1 + 1096) + 1;
    *(v1 + 1096) = v14;
    v15 = &unk_23137A540;
    switch(*(&unk_2845F1028 + v14 + 32))
    {
      case 1:
        v15 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_A";
        break;
      case 2:
        v15 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
        v13 = 0xD000000000000019;
        break;
      case 3:
        v15 = "SIRI_SUGGESTIONS_PLATFORM";
        v13 = 0xD00000000000001ALL;
        break;
      default:
        break;
    }

    v16 = *(v1 + 1088);
    OUTLINED_FUNCTION_74_6();
    v17 = swift_unknownObjectRetain();
    v18 = sub_231349790(v17, v13, v15 | 0x8000000000000000, v1 + 296, v16, v2, v0);
    *(v1 + 1104) = v18;
    *(v1 + 584) = v16;
    *(v1 + 560) = v18;
    v19 = *(MEMORY[0x277D61098] + 4);

    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v1 + 1112) = v20;
    *v20 = v21;
    OUTLINED_FUNCTION_4_27(v20);
    v12 = v1 + 560;
  }

  return MEMORY[0x2821C7288](v12);
}

uint64_t sub_231320CC8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 1128);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 592));
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231320DAC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[127];
  v2 = v0[126];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44AA0, &qword_231377900);
  v3 = MEMORY[0x277D60A38];
  v0[50] = v2;
  v0[51] = v3;
  v0[47] = v1;
  v4 = *(MEMORY[0x277D61088] + 4);

  v5 = swift_task_alloc();
  v0[142] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_13_22(v5);
  v6 = OUTLINED_FUNCTION_78_5();

  return MEMORY[0x2821C7278](v6, v7);
}

uint64_t sub_231320E80()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 1136);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 376));
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231320F64()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[127];
  v2 = v0[126];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44AA8, &qword_231377908);
  v3 = MEMORY[0x277D60A30];
  v0[55] = v2;
  v0[56] = v3;
  v0[52] = v1;
  v4 = *(MEMORY[0x277D61088] + 4);

  v5 = swift_task_alloc();
  v0[143] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_13_22(v5);
  v6 = OUTLINED_FUNCTION_78_5();

  return MEMORY[0x2821C7278](v6, v7);
}

uint64_t sub_231321038()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 1144);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 416));
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23132111C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[107];
  v2 = (v0[104] + v0[124]);
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_28_0();
  sub_2313694B0();
  v4 = *(MEMORY[0x277D61088] + 4);
  v5 = swift_task_alloc();
  v0[144] = v5;
  *v5 = v0;
  v5[1] = sub_2313211F4;
  v6 = v0[119];
  v7 = v0[118];
  v8 = v0[107];
  v9 = v0[105];
  v10 = v0[97];

  return MEMORY[0x2821C7278](v9, v8);
}

uint64_t sub_2313211F4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1[144];
  v3 = v1[107];
  v4 = v1[106];
  v5 = v1[105];
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_27();
  v10(v9);
  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231321330()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[131];
  v0[81] = v0[128];
  v0[78] = v1;
  v2 = *(MEMORY[0x277D61098] + 4);

  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[145] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_4_27(v3);

  return MEMORY[0x2821C7288](v0 + 78);
}

uint64_t sub_2313213D8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 1160);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 624));
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2313214BC()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[99];
  v0[85] = swift_getObjectType();
  v0[82] = v1;
  v2 = *(MEMORY[0x277D61098] + 4);
  swift_unknownObjectRetain();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[146] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_4_27(v3);

  return MEMORY[0x2821C7288](v0 + 82);
}

uint64_t sub_23132156C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 1168);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 656));
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231321650()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[103];
  v0[89] = sub_231367CA0();
  v0[86] = v1;
  v2 = *(MEMORY[0x277D61098] + 4);

  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[147] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_4_27(v3);

  return MEMORY[0x2821C7288](v0 + 86);
}

uint64_t sub_231321700()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 1176);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 688));
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2313217E4()
{
  OUTLINED_FUNCTION_60_0();
  v3 = v2[102];
  v4 = *(v3 + 16);
  v2[148] = v4;
  if (v4)
  {
    v2[149] = 0;
    OUTLINED_FUNCTION_106_1(v3);
    OUTLINED_FUNCTION_26_0(v0);
    v6 = *(v5 + 16);
    OUTLINED_FUNCTION_61_6();
    v7();
    v8 = *(MEMORY[0x277D61098] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v2[150] = v9;
    *v9 = v10;
    OUTLINED_FUNCTION_4_27(v9);
    OUTLINED_FUNCTION_55();

    return MEMORY[0x2821C7288]();
  }

  else
  {
    v12 = type metadata accessor for DefaultToolParametersResolverFactory();
    OUTLINED_FUNCTION_33_16();
    v13 = swift_allocObject();
    v2[60] = v12;
    v2[61] = &off_2845F2F80;
    v2[57] = v13;
    type metadata accessor for ToolKitIntentService();
    v14 = swift_allocObject();
    OUTLINED_FUNCTION_127_0(v14);
    OUTLINED_FUNCTION_21();
    v16 = *(v15 + 64);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_112_0();
    v17();
    OUTLINED_FUNCTION_36_14();
    v1[2] = v18;
    v1[9] = sub_2312F57FC;
    v1[10] = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 57);

    v2[96] = v1;
    v19 = *(MEMORY[0x277D61088] + 4);
    v20 = swift_task_alloc();
    v2[152] = v20;
    *v20 = v2;
    OUTLINED_FUNCTION_13_22(v20);
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_55();

    return MEMORY[0x2821C7278]();
  }
}

uint64_t sub_2313219F4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 1200);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 720));
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231321AD8()
{
  OUTLINED_FUNCTION_60_0();
  v3 = v2[149] + 1;
  if (v3 == v2[148])
  {
    v4 = type metadata accessor for DefaultToolParametersResolverFactory();
    OUTLINED_FUNCTION_33_16();
    v5 = swift_allocObject();
    v2[60] = v4;
    v2[61] = &off_2845F2F80;
    v2[57] = v5;
    type metadata accessor for ToolKitIntentService();
    v6 = swift_allocObject();
    OUTLINED_FUNCTION_127_0(v6);
    OUTLINED_FUNCTION_21();
    v8 = *(v7 + 64);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_112_0();
    v9();
    OUTLINED_FUNCTION_36_14();
    v1[2] = v10;
    v1[9] = sub_2312F57FC;
    v1[10] = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 57);

    v2[96] = v1;
    v11 = *(MEMORY[0x277D61088] + 4);
    v12 = swift_task_alloc();
    v2[152] = v12;
    *v12 = v2;
    OUTLINED_FUNCTION_13_22(v12);
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_55();

    return MEMORY[0x2821C7278]();
  }

  else
  {
    v2[149] = v3;
    OUTLINED_FUNCTION_106_1(v2[102] + 40 * v3);
    OUTLINED_FUNCTION_26_0(v0);
    v15 = *(v14 + 16);
    OUTLINED_FUNCTION_61_6();
    v16();
    v17 = *(MEMORY[0x277D61098] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v2[150] = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_4_27(v18);
    OUTLINED_FUNCTION_55();

    return MEMORY[0x2821C7288]();
  }
}

uint64_t sub_231321CF8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 1216);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231321DDC()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[151];
  v2 = v0[140];
  v3 = v0[134];
  v4 = v0[132];
  v5 = v0[131];
  v6 = v0[127];
  v7 = v0[107];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_56_0();

  return v8();
}

id sub_231321E94()
{
  v0 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v1 = [v0 InFocus];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_231321F08@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v90 = a5;
  v93 = a4;
  v87 = a3;
  v88 = a2;
  v6 = sub_2313694E0();
  v94 = OUTLINED_FUNCTION_0_0(v6);
  v95 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_1_4();
  v89 = v11 - v10;
  OUTLINED_FUNCTION_18();
  v12 = sub_2313698C0();
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_22();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v84 - v22;
  memcpy(v107, a1, 0x1A8uLL);
  v92 = *&v107[21];
  v24 = *&v107[22];
  sub_231284BEC(&v107[13], &v96);
  sub_231369EE0();
  sub_231369100();
  sub_231369EE0();
  v25 = sub_2313698A0();
  v26 = sub_23136A3A0();

  v27 = os_log_type_enabled(v25, v26);
  v91 = v15;
  if (v27)
  {
    OUTLINED_FUNCTION_17();
    v28 = swift_slowAlloc();
    v86 = v20;
    v29 = v28;
    OUTLINED_FUNCTION_30_16();
    v30 = swift_slowAlloc();
    *&v96 = v30;
    *v29 = 136315138;
    v31 = v12;
    v32 = v92;
    *(v29 + 4) = sub_2311CFD58(v92, v24, &v96);
    _os_log_impl(&dword_2311CB000, v25, v26, "loading %s as engagementScorer model", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v33 = OUTLINED_FUNCTION_17_19();
    MEMORY[0x23192B930](v33);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();

    v20 = v86;
    v34 = v91[1];
    v35 = OUTLINED_FUNCTION_68_1();
    v34(v35);
  }

  else
  {

    v34 = v15[1];
    (v34)(v23, v12);
    v31 = v12;
    v32 = v92;
  }

  v36 = v93[3];
  v37 = v93[4];
  __swift_project_boxed_opaque_existential_1(v93, v36);
  if ((*(v37 + 8))(v32, v24, v36, v37))
  {
    OUTLINED_FUNCTION_109_1();
    sub_231369820();
    swift_allocObject();
    v93 = sub_231369800();
    v97 = &type metadata for SiriSuggestionsRuntimeConfig.SiriSuggestionsEngagementConfig;
    v98 = &off_2845F6AC8;
    OUTLINED_FUNCTION_55_10();
    *&v96 = swift_allocObject();
    memcpy((v96 + 16), &v107[13], 0x60uLL);
    sub_2311CF388(v87, &v104);
    sub_2311CF388(v88, &v101);
    sub_2311CF388(&v96, v100);
    __swift_mutable_project_boxed_opaque_existential_1(v100, v100[3]);
    v91 = &v84;
    OUTLINED_FUNCTION_21();
    v39 = *(v38 + 64);
    MEMORY[0x28223BE20](v40);
    OUTLINED_FUNCTION_1_4();
    v92 = v36;
    v42 = OUTLINED_FUNCTION_116_0(v41);
    v43(v42);
    v99[3] = &type metadata for SiriSuggestionsRuntimeConfig.SiriSuggestionsEngagementConfig;
    v99[4] = &off_2845F6AC8;
    OUTLINED_FUNCTION_55_10();
    v99[0] = swift_allocObject();
    memcpy((v99[0] + 16), v36, 0x60uLL);
    v44 = type metadata accessor for EngagementScorer();
    v45 = OUTLINED_FUNCTION_10_2(v44);
    v46 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v99, &type metadata for SiriSuggestionsRuntimeConfig.SiriSuggestionsEngagementConfig);
    v88 = &v84;
    OUTLINED_FUNCTION_21();
    v48 = *(v47 + 64);
    MEMORY[0x28223BE20](v49);
    OUTLINED_FUNCTION_1_4();
    v52 = (v51 - v50);
    (*(v53 + 16))(v51 - v50);
    v54 = (v46 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_config);
    v54[3] = &type metadata for SiriSuggestionsRuntimeConfig.SiriSuggestionsEngagementConfig;
    v54[4] = &off_2845F6AC8;
    OUTLINED_FUNCTION_55_10();
    v55 = swift_allocObject();
    *v54 = v55;
    memcpy((v55 + 16), v52, 0x60uLL);
    v57 = v95 + 104;
    v56 = *(v95 + 104);
    v56(v46 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_objective, *MEMORY[0x277D61368], v94);
    v86 = v56;
    v87 = v57;
    sub_2311D38A8(&v104, v46 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_normalizer);
    sub_2311D38A8(&v101, v46 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_clock);
    *(v46 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_engagementEstimator) = v93;
    swift_unknownObjectRetain();

    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    v106 = &off_2845F6E98;
    v85 = v45;
    v105 = v45;
    *&v104 = v46;
    swift_retain_n();
    __swift_destroy_boxed_opaque_existential_1Tm(&v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A78, &qword_2313778C8);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_23136D290;
    v102 = &type metadata for SiriSuggestionsRuntimeConfig;
    v103 = &off_2845F6CC8;
    OUTLINED_FUNCTION_18_18();
    *&v101 = swift_allocObject();
    memcpy((v101 + 16), v107, 0x1A8uLL);
    sub_231286BB0(v107, &v96);
    sub_23128B7B0(&v101, (v58 + 32));
    __swift_destroy_boxed_opaque_existential_1Tm(&v101);
    sub_2311CF388(&v104, v58 + 72);
    v59 = v89;
    v60 = v94;
    v56(v89, *MEMORY[0x277D61370], v94);
    v97 = v45;
    v98 = &off_2845F6E88;
    *&v96 = v46;
    v61 = type metadata accessor for DefaultObjectiveScorer(0);
    OUTLINED_FUNCTION_10_2(v61);
    v62 = swift_allocObject();
    sub_2311D38A8(&v96, v62 + 16);
    v63 = *(v95 + 32);
    v95 += 32;
    v63(v62 + OBJC_IVAR____TtC15SiriSuggestions22DefaultObjectiveScorer_objective, v59, v60);
    *(v58 + 136) = v61;
    *(v58 + 144) = &off_2845F57F0;
    *(v58 + 112) = v62;
    v86(v59, *MEMORY[0x277D61378], v60);
    v97 = v85;
    v98 = &off_2845F6E88;
    *&v96 = v46;
    v64 = *(v61 + 48);
    v65 = *(v61 + 52);
    v66 = swift_allocObject();
    sub_2311D38A8(&v96, v66 + 16);
    v63(v66 + OBJC_IVAR____TtC15SiriSuggestions22DefaultObjectiveScorer_objective, v59, v60);
    *(v58 + 176) = v61;
    *(v58 + 184) = &off_2845F57F0;
    *(v58 + 152) = v66;
    v67 = 1.0 - v107[12];
    type metadata accessor for StochasticNormalizer();
    OUTLINED_FUNCTION_54();
    v68 = swift_allocObject();
    sub_231351000(v67);
    OUTLINED_FUNCTION_24_0();
    v69 = type metadata accessor for ObjectiveBasedRanker();
    v70 = swift_allocObject();

    v71 = sub_2313253C0(v58, v68, v70);
    v72 = v90;
    v90[3] = v69;
    v72[4] = &off_2845F5D48;
    swift_unknownObjectRelease();

    *v72 = v71;
    return __swift_destroy_boxed_opaque_existential_1Tm(&v104);
  }

  else
  {
    sub_231286610(&v107[13]);
    sub_231369100();
    sub_231369EE0();
    v74 = sub_2313698A0();
    v75 = sub_23136A3A0();

    if (os_log_type_enabled(v74, v75))
    {
      OUTLINED_FUNCTION_17();
      v76 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_16();
      v77 = swift_slowAlloc();
      v86 = v20;
      v78 = v31;
      v79 = v77;
      *&v96 = v77;
      *v76 = 136315138;
      v80 = sub_2311CFD58(v32, v24, &v96);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_2311CB000, v74, v75, "%s not found", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      v81 = v86;
      v82 = v78;
    }

    else
    {

      v81 = OUTLINED_FUNCTION_80();
    }

    (v34)(v81, v82);
    sub_231326378();
    OUTLINED_FUNCTION_108_0();
    swift_allocError();
    *v83 = 2;
    return swift_willThrow();
  }
}

uint64_t DefaultSuggestionServiceFactory.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_2311D1F18(v0 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_overrideCatTemplateDirectory, &qword_27DD44108, &unk_231373A40);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_pipelineFactory));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_featureEnabledProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_dataServiceFactory));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_clock));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_appUtils));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_selfLogger));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_suggestionsLoggerFactory));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_featureServiceFactory));
  return OUTLINED_FUNCTION_72_6((v0 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_bookkeepingXPCClient));
}

uint64_t DefaultSuggestionServiceFactory.__deallocating_deinit()
{
  DefaultSuggestionServiceFactory.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_231322980()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209AAC;

  return DefaultSuggestionServiceFactory.create(refreshableService:)();
}

uint64_t sub_231322A48()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_24_3();

  return swift_deallocClassInstance();
}

uint64_t sub_231322AE8(uint64_t (*a1)(void))
{
  v2 = *(*(a1(0) - 8) + 80);
  OUTLINED_FUNCTION_35_0();
  v3 = *(v1 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_24_3();

  return swift_deallocClassInstance();
}

uint64_t sub_231322B5C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_24_3();

  return swift_deallocClassInstance();
}

uint64_t sub_231322B9C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_24_3();

  return swift_deallocClassInstance();
}

uint64_t sub_231322BEC(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_24_3();

  return swift_deallocClassInstance();
}

uint64_t sub_231322C34()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A28, &qword_231377830) - 8) + 80);
  OUTLINED_FUNCTION_35_0();
  v2 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_24_3();

  return swift_deallocClassInstance();
}

uint64_t sub_231322CAC(uint64_t a1, char a2, uint64_t *a3)
{
  v47 = a3;
  v44 = sub_2313694E0();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v44);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435B0, &qword_23136CAF0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v42 = &v36 - v13;
  v41 = *(a1 + 16);
  if (!v41)
  {
  }

  v14 = 0;
  v40 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v38 = v5;
  v39 = v15;
  v43 = (v5 + 32);
  v37 = (v5 + 8);
  while (v14 < *(a1 + 16))
  {
    v16 = v12;
    v17 = v42;
    sub_23123EA8C(v40 + *(v12 + 72) * v14, v42, &qword_27DD435B0, &qword_23136CAF0);
    v18 = *v43;
    (*v43)(v8, v17, v44);
    sub_2311D38A8((v17 + v39), v46);
    v19 = *v47;
    v21 = sub_231216684();
    v22 = *(v19 + 16);
    v23 = (v20 & 1) == 0;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_20;
    }

    v24 = v20;
    if (*(v19 + 24) >= v22 + v23)
    {
      if (a2)
      {
        if (v20)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A80, &unk_2313778D0);
        sub_23136A710();
        if (v24)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v25 = v47;
      sub_2312B57C0();
      v26 = *v25;
      v27 = sub_231216684();
      if ((v24 & 1) != (v28 & 1))
      {
        goto LABEL_22;
      }

      v21 = v27;
      if (v24)
      {
LABEL_11:
        v29 = *v47;
        sub_2311CF388(*(*v47 + 56) + 40 * v21, v45);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        (*v37)(v8, v44);
        v30 = (*(v29 + 56) + 40 * v21);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        sub_2311D38A8(v45, v30);
        goto LABEL_15;
      }
    }

    v31 = *v47;
    *(*v47 + 8 * (v21 >> 6) + 64) |= 1 << v21;
    v18((v31[6] + *(v38 + 72) * v21), v8, v44);
    sub_2311D38A8(v46, v31[7] + 40 * v21);
    v32 = v31[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_21;
    }

    v31[2] = v34;
LABEL_15:
    ++v14;
    a2 = 1;
    v12 = v16;
    if (v41 == v14)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_23136A970();
  __break(1u);
  return result;
}

void sub_231323044(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23136A8A0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2313236E8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23132318C(0, v2, 1, a1);
  }
}

void sub_23132318C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v64 = sub_231367300();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v64);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RankedCandidateSuggestion();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
  v15 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v67 = &v49 - v22;
  MEMORY[0x28223BE20](v23);
  v66 = &v49 - v26;
  v51 = a2;
  if (a3 != a2)
  {
    v27 = v25;
    v28 = *a4;
    v29 = *(v24 + 72);
    v60 = (v8 + 8);
    v61 = (v8 + 16);
    v30 = v28 + v29 * (a3 - 1);
    v56 = -v29;
    v57 = v28;
    v31 = a1 - a3;
    v50 = v29;
    v32 = v28 + v29 * a3;
    v65 = v19;
    v62 = v25;
    while (2)
    {
      v54 = v30;
      v55 = a3;
      v52 = v32;
      v53 = v31;
      do
      {
        v33 = v66;
        sub_23123EA8C(v32, v66, &qword_27DD43530, &unk_23136CA70);
        sub_23123EA8C(v30, v67, &qword_27DD43530, &unk_23136CA70);
        sub_23123EA8C(v33, v27, &qword_27DD43530, &unk_23136CA70);
        v34 = type metadata accessor for SuggestionViewDetails(0);
        if (__swift_getEnumTagSinglePayload(v27, 1, v34) == 1)
        {
          sub_2311D1F18(v27, &qword_27DD43530, &unk_23136CA70);
          v35 = 0;
        }

        else
        {
          v36 = v27 + *(v34 + 20);
          v37 = v63;
          sub_231327110(v36, v63);
          sub_231327168();
          v38 = v64;
          (*v61)(v11, v37, v64);
          sub_231327168();
          v35 = sub_2313672C0();
          v39 = v38;
          v19 = v65;
          (*v60)(v11, v39);
        }

        sub_23123EA8C(v67, v19, &qword_27DD43530, &unk_23136CA70);
        if (__swift_getEnumTagSinglePayload(v19, 1, v34) == 1)
        {
          sub_2311D1F18(v19, &qword_27DD43530, &unk_23136CA70);
          v40 = 0;
        }

        else
        {
          v41 = &v19[*(v34 + 20)];
          v42 = v63;
          sub_231327110(v41, v63);
          sub_231327168();
          v43 = v64;
          (*v61)(v11, v42, v64);
          sub_231327168();
          v40 = sub_2313672C0();
          v44 = v43;
          v19 = v65;
          (*v60)(v11, v44);
        }

        sub_2311D1F18(v67, &qword_27DD43530, &unk_23136CA70);
        sub_2311D1F18(v66, &qword_27DD43530, &unk_23136CA70);
        v45 = v35 < v40;
        v27 = v62;
        if (!v45)
        {
          break;
        }

        if (!v57)
        {
          __break(1u);
          return;
        }

        v46 = v58;
        sub_23123E9F8(v32, v58, &qword_27DD43530, &unk_23136CA70);
        swift_arrayInitWithTakeFrontToBack();
        v47 = v46;
        v19 = v65;
        sub_23123E9F8(v47, v30, &qword_27DD43530, &unk_23136CA70);
        v30 += v56;
        v32 += v56;
      }

      while (!__CFADD__(v31++, 1));
      a3 = v55 + 1;
      v30 = v54 + v50;
      v31 = v53 - 1;
      v32 = v52 + v50;
      if (v55 + 1 != v51)
      {
        continue;
      }

      break;
    }
  }
}

void sub_2313236E8(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v161 = a1;
  v185 = sub_231367300();
  v6 = *(v185 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v185);
  v9 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RankedCandidateSuggestion();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v184 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
  v172 = *(v180 - 8);
  v13 = *(v172 + 64);
  MEMORY[0x28223BE20](v180);
  v165 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v179 = &v157 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v157 - v18;
  MEMORY[0x28223BE20](v20);
  v186 = &v157 - v21;
  MEMORY[0x28223BE20](v22);
  v188 = &v157 - v23;
  MEMORY[0x28223BE20](v24);
  v187 = &v157 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v157 - v27;
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v167 = &v157 - v31;
  MEMORY[0x28223BE20](v32);
  v174 = &v157 - v33;
  MEMORY[0x28223BE20](v34);
  MEMORY[0x28223BE20](v35);
  v39 = &v157 - v36;
  v173 = a3;
  v40 = a3[1];
  if (v40 < 1)
  {
    v42 = MEMORY[0x277D84F90];
LABEL_118:
    v188 = *v161;
    if (!v188)
    {
      goto LABEL_161;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v175;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_120;
    }

    goto LABEL_155;
  }

  v157 = a4;
  v41 = 0;
  v181 = (v6 + 8);
  v182 = (v6 + 16);
  v42 = MEMORY[0x277D84F90];
  v183 = v19;
  v43 = v186;
  v171 = v28;
  v166 = v37;
  v158 = v38;
  v160 = &v157 - v36;
  while (1)
  {
    v44 = (v41 + 1);
    if (v41 + 1 >= v40)
    {
      v176 = v41 + 1;
      v74 = v41;
    }

    else
    {
      v169 = v40;
      v45 = v39;
      v162 = v41;
      v46 = *v173;
      v47 = *(v172 + 72);
      v48 = v38;
      v49 = *v173 + v47 * v44;
      sub_23123EA8C(v49, v45, &qword_27DD43530, &unk_23136CA70);
      v50 = v162;
      v170 = v47;
      v178 = v46;
      v51 = v46 + v47 * v162;
      v52 = v160;
      sub_23123EA8C(v51, v48, &qword_27DD43530, &unk_23136CA70);
      v53 = v175;
      LODWORD(v168) = sub_23131C778(v52, v48);
      v175 = v53;
      if (v53)
      {
        sub_2311D1F18(v48, &qword_27DD43530, &unk_23136CA70);
        sub_2311D1F18(v52, &qword_27DD43530, &unk_23136CA70);
LABEL_130:

        return;
      }

      v19 = v44;
      v159 = v42;
      v42 = &qword_27DD43530;
      sub_2311D1F18(v48, &qword_27DD43530, &unk_23136CA70);
      sub_2311D1F18(v52, &qword_27DD43530, &unk_23136CA70);
      v54 = v50 + 2;
      v55 = v169;
      v56 = v170;
      v57 = v178 + v170 * v54;
      v43 = v186;
      v58 = v167;
      while (1)
      {
        v59 = v54;
        if ((v19 + 1) >= v55)
        {
          break;
        }

        v178 = v54;
        v176 = v19;
        v60 = v174;
        v42 = &unk_23136CA70;
        sub_23123EA8C(v57, v174, &qword_27DD43530, &unk_23136CA70);
        sub_23123EA8C(v49, v58, &qword_27DD43530, &unk_23136CA70);
        v61 = v166;
        sub_23123EA8C(v60, v166, &qword_27DD43530, &unk_23136CA70);
        v62 = type metadata accessor for SuggestionViewDetails(0);
        if (__swift_getEnumTagSinglePayload(v61, 1, v62) == 1)
        {
          sub_2311D1F18(v61, &qword_27DD43530, &unk_23136CA70);
          v177 = 0;
        }

        else
        {
          v63 = v184;
          sub_231327110(v61 + *(v62 + 20), v184);
          sub_231327168();
          v64 = v185;
          (*v182)(v9, v63, v185);
          sub_231327168();
          v177 = sub_2313672C0();
          v65 = v64;
          v28 = v171;
          (*v181)(v9, v65);
        }

        v58 = v167;
        sub_23123EA8C(v167, v28, &qword_27DD43530, &unk_23136CA70);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v62);
        v67 = v176;
        if (EnumTagSinglePayload == 1)
        {
          sub_2311D1F18(v28, &qword_27DD43530, &unk_23136CA70);
          v68 = 0;
        }

        else
        {
          v69 = &v28[*(v62 + 20)];
          v70 = v184;
          sub_231327110(v69, v184);
          sub_231327168();
          v71 = v185;
          (*v182)(v9, v70, v185);
          sub_231327168();
          v68 = sub_2313672C0();
          v72 = v71;
          v28 = v171;
          (*v181)(v9, v72);
        }

        sub_2311D1F18(v58, &qword_27DD43530, &unk_23136CA70);
        sub_2311D1F18(v174, &qword_27DD43530, &unk_23136CA70);
        v59 = v178;
        v73 = v168 ^ (v177 >= v68);
        v55 = v169;
        v56 = v170;
        v57 += v170;
        v49 += v170;
        v19 = (v67 + 1);
        v54 = v178 + 1;
        v43 = v186;
        if ((v73 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v19 = v55;
LABEL_17:
      v176 = v19;
      if (v168)
      {
        v74 = v162;
        if (v19 < v162)
        {
          goto LABEL_154;
        }

        if (v162 >= v19)
        {
          v42 = v159;
          v19 = v183;
          goto LABEL_38;
        }

        if (v55 >= v59)
        {
          v75 = v59;
        }

        else
        {
          v75 = v55;
        }

        v76 = v56 * (v75 - 1);
        v77 = v56 * v75;
        v78 = v162 * v56;
        v79 = v19;
        do
        {
          if (v74 != --v79)
          {
            v178 = v79;
            v80 = *v173;
            if (!*v173)
            {
              goto LABEL_159;
            }

            sub_23123E9F8(v80 + v78, v165, &qword_27DD43530, &unk_23136CA70);
            v81 = v78 < v76 || v80 + v78 >= v80 + v77;
            if (v81)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v78 != v76)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_23123E9F8(v165, v80 + v76, &qword_27DD43530, &unk_23136CA70);
            v43 = v186;
            v79 = v178;
          }

          ++v74;
          v76 -= v56;
          v77 -= v56;
          v78 += v56;
        }

        while (v74 < v79);
      }

      v42 = v159;
      v19 = v183;
      v74 = v162;
    }

LABEL_38:
    v82 = v173[1];
    if (v176 < v82)
    {
      if (__OFSUB__(v176, v74))
      {
        goto LABEL_151;
      }

      if (v176 - v74 < v157)
      {
        break;
      }
    }

LABEL_63:
    if (v176 < v74)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v145 = *(v42 + 2);
      sub_23126DB78();
      v42 = v146;
    }

    v102 = *(v42 + 2);
    v103 = v102 + 1;
    if (v102 >= *(v42 + 3) >> 1)
    {
      sub_23126DB78();
      v42 = v147;
    }

    *(v42 + 2) = v103;
    v104 = v42 + 32;
    v105 = &v42[16 * v102 + 32];
    v106 = v176;
    *v105 = v74;
    *(v105 + 1) = v106;
    v178 = *v161;
    if (!v178)
    {
      goto LABEL_160;
    }

    if (v102)
    {
      v43 = v186;
      while (1)
      {
        v107 = v103 - 1;
        v108 = &v104[16 * v103 - 16];
        v109 = &v42[16 * v103];
        if (v103 >= 4)
        {
          break;
        }

        if (v103 == 3)
        {
          v110 = *(v42 + 4);
          v111 = *(v42 + 5);
          v120 = __OFSUB__(v111, v110);
          v112 = v111 - v110;
          v113 = v120;
LABEL_84:
          if (v113)
          {
            goto LABEL_137;
          }

          v125 = *v109;
          v124 = *(v109 + 1);
          v126 = __OFSUB__(v124, v125);
          v127 = v124 - v125;
          v128 = v126;
          if (v126)
          {
            goto LABEL_140;
          }

          v129 = *(v108 + 1);
          v130 = v129 - *v108;
          if (__OFSUB__(v129, *v108))
          {
            goto LABEL_143;
          }

          if (__OFADD__(v127, v130))
          {
            goto LABEL_145;
          }

          if (v127 + v130 >= v112)
          {
            if (v112 < v130)
            {
              v107 = v103 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        if (v103 < 2)
        {
          goto LABEL_139;
        }

        v132 = *v109;
        v131 = *(v109 + 1);
        v120 = __OFSUB__(v131, v132);
        v127 = v131 - v132;
        v128 = v120;
LABEL_99:
        if (v128)
        {
          goto LABEL_142;
        }

        v134 = *v108;
        v133 = *(v108 + 1);
        v120 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v120)
        {
          goto LABEL_144;
        }

        if (v135 < v127)
        {
          goto LABEL_115;
        }

LABEL_106:
        if (v107 - 1 >= v103)
        {
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (!*v173)
        {
          goto LABEL_157;
        }

        v139 = &v104[16 * v107 - 16];
        v140 = *v139;
        v141 = &v104[16 * v107];
        v142 = *(v141 + 1);
        v143 = v175;
        sub_2313246CC(*v173 + *(v172 + 72) * *v139, *v173 + *(v172 + 72) * *v141, *v173 + *(v172 + 72) * v142, v178);
        v175 = v143;
        if (v143)
        {
          goto LABEL_130;
        }

        if (v142 < v140)
        {
          goto LABEL_132;
        }

        v19 = v42;
        v42 = *(v42 + 2);
        if (v107 > v42)
        {
          goto LABEL_133;
        }

        *v139 = v140;
        *(v139 + 1) = v142;
        if (v107 >= v42)
        {
          goto LABEL_134;
        }

        v103 = (v42 - 1);
        sub_2311E6448(v141 + 16, &v42[-v107 - 1], &v104[16 * v107]);
        *(v19 + 2) = v42 - 1;
        v144 = v42 > 2;
        v42 = v19;
        v19 = v183;
        v43 = v186;
        if (!v144)
        {
          goto LABEL_115;
        }
      }

      v114 = &v104[16 * v103];
      v115 = *(v114 - 8);
      v116 = *(v114 - 7);
      v120 = __OFSUB__(v116, v115);
      v117 = v116 - v115;
      if (v120)
      {
        goto LABEL_135;
      }

      v119 = *(v114 - 6);
      v118 = *(v114 - 5);
      v120 = __OFSUB__(v118, v119);
      v112 = v118 - v119;
      v113 = v120;
      if (v120)
      {
        goto LABEL_136;
      }

      v121 = *(v109 + 1);
      v122 = v121 - *v109;
      if (__OFSUB__(v121, *v109))
      {
        goto LABEL_138;
      }

      v120 = __OFADD__(v112, v122);
      v123 = v112 + v122;
      if (v120)
      {
        goto LABEL_141;
      }

      if (v123 >= v117)
      {
        v137 = *v108;
        v136 = *(v108 + 1);
        v120 = __OFSUB__(v136, v137);
        v138 = v136 - v137;
        if (v120)
        {
          goto LABEL_149;
        }

        if (v112 < v138)
        {
          v107 = v103 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_84;
    }

    v43 = v186;
LABEL_115:
    v40 = v173[1];
    v41 = v176;
    v28 = v171;
    v38 = v158;
    v39 = v160;
    if (v176 >= v40)
    {
      goto LABEL_118;
    }
  }

  if (__OFADD__(v74, v157))
  {
    goto LABEL_152;
  }

  if (v74 + v157 >= v82)
  {
    v83 = v173[1];
  }

  else
  {
    v83 = v74 + v157;
  }

  if (v83 < v74)
  {
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    v42 = sub_2311E6430(v42);
LABEL_120:
    v149 = v42;
    v151 = *(v42 + 2);
    v42 += 16;
    for (i = v151; i >= 2; *v42 = i)
    {
      if (!*v173)
      {
        goto LABEL_158;
      }

      v152 = &v149[16 * i];
      v153 = *v152;
      v154 = &v42[16 * i];
      v155 = *(v154 + 1);
      sub_2313246CC(*v173 + *(v172 + 72) * *v152, *v173 + *(v172 + 72) * *v154, *v173 + *(v172 + 72) * v155, v188);
      if (v19)
      {
        break;
      }

      if (v155 < v153)
      {
        goto LABEL_146;
      }

      if (i - 2 >= *v42)
      {
        goto LABEL_147;
      }

      *v152 = v153;
      *(v152 + 1) = v155;
      v156 = *v42 - i;
      if (*v42 < i)
      {
        goto LABEL_148;
      }

      i = *v42 - 1;
      sub_2311E6448(v154 + 16, v156, v154);
    }

    goto LABEL_130;
  }

  if (v176 == v83)
  {
    goto LABEL_63;
  }

  v159 = v42;
  v84 = *v173;
  v85 = *(v172 + 72);
  v86 = *v173 + v85 * (v176 - 1);
  v177 = -v85;
  v162 = v74;
  v87 = v74 - v176;
  v178 = v84;
  v163 = v85;
  v88 = v84 + v176 * v85;
  v164 = v83;
LABEL_48:
  v168 = v88;
  v169 = v87;
  v170 = v86;
  while (1)
  {
    v89 = v187;
    sub_23123EA8C(v88, v187, &qword_27DD43530, &unk_23136CA70);
    sub_23123EA8C(v86, v188, &qword_27DD43530, &unk_23136CA70);
    sub_23123EA8C(v89, v43, &qword_27DD43530, &unk_23136CA70);
    v90 = type metadata accessor for SuggestionViewDetails(0);
    if (__swift_getEnumTagSinglePayload(v43, 1, v90) == 1)
    {
      sub_2311D1F18(v43, &qword_27DD43530, &unk_23136CA70);
      v91 = 0;
    }

    else
    {
      v92 = v43 + *(v90 + 20);
      v93 = v184;
      sub_231327110(v92, v184);
      sub_231327168();
      v94 = v185;
      (*v182)(v9, v93, v185);
      sub_231327168();
      v91 = sub_2313672C0();
      v95 = v94;
      v19 = v183;
      (*v181)(v9, v95);
    }

    sub_23123EA8C(v188, v19, &qword_27DD43530, &unk_23136CA70);
    if (__swift_getEnumTagSinglePayload(v19, 1, v90) == 1)
    {
      sub_2311D1F18(v19, &qword_27DD43530, &unk_23136CA70);
      v96 = 0;
    }

    else
    {
      v97 = &v19[*(v90 + 20)];
      v98 = v184;
      sub_231327110(v97, v184);
      sub_231327168();
      v99 = v185;
      (*v182)(v9, v98, v185);
      sub_231327168();
      v96 = sub_2313672C0();
      v100 = v99;
      v19 = v183;
      (*v181)(v9, v100);
    }

    sub_2311D1F18(v188, &qword_27DD43530, &unk_23136CA70);
    sub_2311D1F18(v187, &qword_27DD43530, &unk_23136CA70);
    if (v91 >= v96)
    {
      v43 = v186;
LABEL_61:
      v86 = v170 + v163;
      v87 = v169 - 1;
      v88 = v168 + v163;
      if (++v176 == v164)
      {
        v176 = v164;
        v42 = v159;
        v74 = v162;
        goto LABEL_63;
      }

      goto LABEL_48;
    }

    if (!v178)
    {
      break;
    }

    v101 = v179;
    sub_23123E9F8(v88, v179, &qword_27DD43530, &unk_23136CA70);
    swift_arrayInitWithTakeFrontToBack();
    sub_23123E9F8(v101, v86, &qword_27DD43530, &unk_23136CA70);
    v86 += v177;
    v88 += v177;
    v81 = __CFADD__(v87++, 1);
    v43 = v186;
    if (v81)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
}

void sub_2313246CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v89 = a3;
  v95 = sub_231367300();
  v7 = *(v95 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RankedCandidateSuggestion();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
  v13 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v86 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v85 = &v82 - v16;
  MEMORY[0x28223BE20](v17);
  v96 = &v82 - v18;
  MEMORY[0x28223BE20](v19);
  v87 = &v82 - v20;
  MEMORY[0x28223BE20](v21);
  v88 = &v82 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v82 - v24;
  MEMORY[0x28223BE20](v26);
  v99 = &v82 - v27;
  MEMORY[0x28223BE20](v28);
  v97 = &v82 - v29;
  v31 = *(v30 + 72);
  if (!v31)
  {
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    return;
  }

  v32 = a2 - a1 == 0x8000000000000000 && v31 == -1;
  if (v32)
  {
    goto LABEL_74;
  }

  v33 = v89 - a2;
  if (v89 - a2 == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_75;
  }

  v35 = (a2 - a1) / v31;
  v102 = a1;
  v101 = a4;
  v91 = (v7 + 8);
  v92 = (v7 + 16);
  v36 = v33 / v31;
  if (v35 < v33 / v31)
  {
    sub_23126F95C(a1, (a2 - a1) / v31, a4);
    v87 = a4 + v35 * v31;
    v100 = v87;
    v37 = v31;
    while (1)
    {
      if (a4 >= v87 || a2 >= v89)
      {
        goto LABEL_72;
      }

      v39 = v37;
      v96 = a1;
      v98 = a2;
      v40 = v97;
      sub_23123EA8C(a2, v97, &qword_27DD43530, &unk_23136CA70);
      sub_23123EA8C(a4, v99, &qword_27DD43530, &unk_23136CA70);
      sub_23123EA8C(v40, v25, &qword_27DD43530, &unk_23136CA70);
      v41 = type metadata accessor for SuggestionViewDetails(0);
      v42 = a4;
      if (__swift_getEnumTagSinglePayload(v25, 1, v41) == 1)
      {
        sub_2311D1F18(v25, &qword_27DD43530, &unk_23136CA70);
        v43 = 0;
      }

      else
      {
        v44 = v94;
        sub_231327110(&v25[*(v41 + 20)], v94);
        sub_231327168();
        v45 = v93;
        v46 = v95;
        (*v92)(v93, v44, v95);
        sub_231327168();
        v43 = sub_2313672C0();
        (*v91)(v45, v46);
      }

      v47 = v88;
      sub_23123EA8C(v99, v88, &qword_27DD43530, &unk_23136CA70);
      if (__swift_getEnumTagSinglePayload(v47, 1, v41) == 1)
      {
        sub_2311D1F18(v47, &qword_27DD43530, &unk_23136CA70);
        v48 = 0;
      }

      else
      {
        v49 = v47 + *(v41 + 20);
        v50 = v94;
        sub_231327110(v49, v94);
        sub_231327168();
        v51 = v93;
        v52 = v95;
        (*v92)(v93, v50, v95);
        sub_231327168();
        v48 = sub_2313672C0();
        (*v91)(v51, v52);
      }

      a4 = v42;
      sub_2311D1F18(v99, &qword_27DD43530, &unk_23136CA70);
      sub_2311D1F18(v97, &qword_27DD43530, &unk_23136CA70);
      v53 = v96;
      if (v43 >= v48)
      {
        break;
      }

      a2 = v98 + v39;
      if (v96 < v98 || v96 >= a2)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v96 != v98)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v37 = v39;
LABEL_42:
      a1 = v53 + v37;
      v102 = a1;
    }

    v55 = v96 < a4 || v96 >= a4 + v39;
    a2 = v98;
    if (v55)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v37 = v39;
      if (v96 == a4)
      {
LABEL_41:
        v101 = a4 + v39;
        a4 += v39;
        goto LABEL_42;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v37 = v39;
    goto LABEL_41;
  }

  sub_23126F95C(a2, v33 / v31, a4);
  v88 = a4;
  v56 = a4 + v36 * v31;
  v57 = -v31;
  v58 = v56;
  v59 = v89;
  v99 = -v31;
LABEL_44:
  v98 = a2;
  v60 = a2 + v57;
  v61 = v59;
  v83 = v58;
  v89 = a2 + v57;
  while (1)
  {
    if (v56 <= v88)
    {
      v102 = v98;
      v100 = v58;
      goto LABEL_72;
    }

    if (v98 <= a1)
    {
      break;
    }

    v97 = v61;
    v84 = v58;
    v62 = v56 + v57;
    v63 = v87;
    sub_23123EA8C(v56 + v57, v87, &qword_27DD43530, &unk_23136CA70);
    sub_23123EA8C(v60, v96, &qword_27DD43530, &unk_23136CA70);
    v64 = v63;
    v65 = v85;
    sub_23123EA8C(v64, v85, &qword_27DD43530, &unk_23136CA70);
    v66 = type metadata accessor for SuggestionViewDetails(0);
    if (__swift_getEnumTagSinglePayload(v65, 1, v66) == 1)
    {
      sub_2311D1F18(v65, &qword_27DD43530, &unk_23136CA70);
      v67 = 0;
    }

    else
    {
      v68 = v94;
      sub_231327110(v65 + *(v66 + 20), v94);
      sub_231327168();
      v69 = v93;
      v70 = v95;
      (*v92)(v93, v68, v95);
      sub_231327168();
      v67 = sub_2313672C0();
      (*v91)(v69, v70);
    }

    v71 = v86;
    sub_23123EA8C(v96, v86, &qword_27DD43530, &unk_23136CA70);
    if (__swift_getEnumTagSinglePayload(v71, 1, v66) == 1)
    {
      sub_2311D1F18(v71, &qword_27DD43530, &unk_23136CA70);
      v72 = 0;
    }

    else
    {
      v73 = v71 + *(v66 + 20);
      v74 = v94;
      sub_231327110(v73, v94);
      sub_231327168();
      v75 = v93;
      v76 = v95;
      (*v92)(v93, v74, v95);
      sub_231327168();
      v72 = sub_2313672C0();
      (*v91)(v75, v76);
    }

    v77 = v97;
    v59 = v97 + v99;
    sub_2311D1F18(v96, &qword_27DD43530, &unk_23136CA70);
    sub_2311D1F18(v87, &qword_27DD43530, &unk_23136CA70);
    if (v67 < v72)
    {
      v79 = v77 < v98 || v59 >= v98;
      v80 = v89;
      if (v79)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 = v80;
        v58 = v84;
        v57 = v99;
      }

      else
      {
        v58 = v84;
        a2 = v89;
        v57 = v99;
        if (v77 != v98)
        {
          v81 = v84;
          swift_arrayInitWithTakeBackToFront();
          a2 = v80;
          v58 = v81;
        }
      }

      goto LABEL_44;
    }

    v78 = v77 < v56 || v59 >= v56;
    v60 = v89;
    if (v78)
    {
      swift_arrayInitWithTakeFrontToBack();
      v61 = v59;
      v56 = v62;
      v58 = v62;
      v57 = v99;
    }

    else
    {
      v58 = v62;
      v32 = v56 == v77;
      v61 = v59;
      v56 = v62;
      v57 = v99;
      if (!v32)
      {
        swift_arrayInitWithTakeBackToFront();
        v61 = v59;
        v56 = v62;
        v58 = v62;
      }
    }
  }

  v102 = v98;
  v100 = v83;
LABEL_72:
  sub_23120C5DC(&v102, &v101, &v100);
}

uint64_t sub_2313250CC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_23136A9D0();
  sub_23136A060();
  v8 = sub_23136AA00();
  v9 = ~(-1 << *(v6 + 32));
  v10 = 1;
  while (1)
  {
    v11 = v8 & v9;
    v12 = (v8 & v9) >> 6;
    v13 = 1 << (v8 & v9);
    v14 = v13 & *(v6 + 56 + 8 * v12);
    if (!v14)
    {
      break;
    }

    v15 = (*(v6 + 48) + 16 * v11);
    v16 = *v15 == a1 && v15[1] == a2;
    if (v16 || (sub_23136A900() & 1) != 0)
    {
      v10 = 0;
      break;
    }

    v8 = v11 + 1;
  }

  v17 = *(v6 + 16);
  v18 = v17 + v10;
  if (__OFADD__(v17, v10))
  {
    __break(1u);
    goto LABEL_34;
  }

  v19 = *(v6 + 24);
  v20 = v36;
  if (v19 < v18 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23122F898();
      goto LABEL_20;
    }

    if (v19 < v18)
    {
      sub_231234110();
LABEL_20:
      v21 = *v36;
      v22 = *(*v36 + 40);
      sub_23136A9D0();
      sub_23136A060();
      v23 = sub_23136AA00();
      v24 = ~(-1 << *(v21 + 32));
      while (1)
      {
        v11 = v23 & v24;
        v12 = (v23 & v24) >> 6;
        v13 = 1 << (v23 & v24);
        if ((v13 & *(v21 + 56 + 8 * v12)) == 0)
        {
          break;
        }

        v25 = (*(v21 + 48) + 16 * v11);
        v26 = *v25 == a1 && v25[1] == a2;
        if (v26 || (sub_23136A900() & 1) != 0)
        {
          v20 = v36;
          if (!v14)
          {
            goto LABEL_35;
          }

          goto LABEL_29;
        }

        v23 = v11 + 1;
      }

      v20 = v36;
      if (v14)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

    sub_231233A74();
  }

  if (v14)
  {
LABEL_29:
    v27 = (*(*v20 + 48) + 16 * v11);
    result = *v27;
    v29 = v27[1];
    *v27 = a1;
    v27[1] = a2;
    return result;
  }

LABEL_31:
  v30 = *v20;
  *(*v20 + 8 * v12 + 56) |= v13;
  v31 = (*(v30 + 48) + 16 * v11);
  *v31 = a1;
  v31[1] = a2;
  v32 = *(v30 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    result = 0;
    *(v30 + 16) = v34;
    return result;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_23136A960();
  __break(1u);
  return result;
}

_OWORD *sub_2313252FC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v16 = sub_2313695F0();
  v17 = MEMORY[0x277D55898];
  *&v15 = a1;
  v13 = sub_2313695D0();
  v14 = MEMORY[0x277D55890];
  *&v12 = a2;
  v10 = sub_231369550();
  v11 = MEMORY[0x277D557F0];
  *&v9 = a3;
  swift_defaultActor_initialize();
  a4[10] = 0u;
  a4[11] = 0u;
  a4[8] = 0u;
  a4[9] = 0u;
  a4[7] = 0u;
  sub_2311D38A8(&v15, (a4 + 12));
  sub_2311D38A8(&v12, a4 + 232);
  sub_2311D38A8(&v9, (a4 + 17));
  return a4;
}

uint64_t sub_2313253C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v24 = *a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435B0, &qword_23136CAF0);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v33 = type metadata accessor for StochasticNormalizer();
  v34 = &off_2845F7778;
  *&v32 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v25 = v4;
    v31 = MEMORY[0x277D84F90];
    sub_2311F5DF0(0, v11, 0);
    v12 = 0;
    v13 = v31;
    v14 = a1 + 32;
    while (v12 < *(a1 + 16))
    {
      sub_2311CF388(v14, v28);
      v15 = &v10[*(v27 + 48)];
      v16 = v29;
      v17 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      (v17[2])(v16, v17);
      v18 = v29;
      v3 = v30;
      v19 = __swift_project_boxed_opaque_existential_1(v28, v29);
      v15[3] = v18;
      v15[4] = v3[1];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
      (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v19, v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      v31 = v13;
      v22 = *(v13 + 16);
      v21 = *(v13 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2311F5DF0(v21 > 1, v22 + 1, 1);
        v13 = v31;
      }

      ++v12;
      *(v13 + 16) = v22 + 1;
      sub_23123E9F8(v10, v13 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, &qword_27DD435B0, &qword_23136CAF0);
      v14 += 40;
      if (v11 == v12)
      {

        v4 = v25;
        goto LABEL_9;
      }
    }

    __break(1u);

    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
LABEL_9:
    v4[2] = sub_231312DA0(v13);
    sub_2311D38A8(&v32, (v4 + 3));
    return v4;
  }

  return result;
}

void *sub_2313256A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v40 = a5;
  v42 = a2;
  v12 = sub_2313698C0();
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DefaultEnvironmentSnapshotService();
  v48[3] = v16;
  v48[4] = &off_2845F6D40;
  v48[0] = a3;
  type metadata accessor for SuggestionService();
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v48, v16);
  v19 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v46 = v16;
  v47 = &off_2845F6D40;
  *&v45 = v23;
  sub_2313690F0();

  v41 = v15;
  v24 = sub_2313698A0();
  v25 = sub_23136A390();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = a7;
    v27 = v26;
    v28 = swift_slowAlloc();
    v38 = a6;
    v29 = v28;
    v44 = v28;
    *v27 = 136315138;

    v30 = sub_2311FDB48();
    v37 = v12;
    v32 = v31;

    v33 = sub_2311CFD58(v30, v32, &v44);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_2311CB000, v24, v25, "SuggestionsService initated with pipeline: \n%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v34 = v29;
    a6 = v38;
    MEMORY[0x23192B930](v34, -1, -1);
    v35 = v27;
    a7 = v39;
    MEMORY[0x23192B930](v35, -1, -1);

    (*(v43 + 8))(v41, v37);
  }

  else
  {

    (*(v43 + 8))(v41, v12);
  }

  v17[2] = a1;
  sub_2311D38A8(&v45, (v17 + 3));
  v17[8] = a4;
  v17[14] = v40;
  v17[15] = a6;
  sub_2311D38A8(a7, (v17 + 9));
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  return v17;
}

uint64_t sub_2313259D8(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_231366690();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[3] = &type metadata for SiriSuggestionsRuntimeConfig;
  v20[4] = &protocol witness table for SiriSuggestionsRuntimeConfig;
  v20[0] = swift_allocObject();
  memcpy((v20[0] + 16), a1, 0x1A8uLL);
  v19[3] = type metadata accessor for DynamicDialogService();
  v19[4] = sub_231327268(qword_280F82788, type metadata accessor for DynamicDialogService);
  v19[0] = a2;
  sub_2311CF388(v20, a4 + 16);
  sub_2311CF388(v19, a4 + 56);
  (*(v9 + 16))(v12, a3, v8);
  v13 = type metadata accessor for ExampleUtteranceDecorator(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(a4 + 104) = sub_2312D9CE4(0xD00000000000001CLL, 0x80000002313802B0, 0x676F6C616964, 0xE600000000000000, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  v16 = *(v13 + 48);
  v17 = *(v13 + 52);
  swift_allocObject();
  *(a4 + 96) = sub_2312D9CE4(0xD000000000000022, 0x80000002313802D0, 0xD00000000000001ALL, 0x8000000231380300, a3);
  return a4;
}

uint64_t sub_231325C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7, __int128 *a8, __int128 *a9, __int128 *a10, uint64_t a11, __int128 a12, __int128 *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v36 = a7;
  v37 = a8;
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v16 = a1;
  v30 = a12;
  v17 = *(a15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](a1);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v30 - v23;
  (*(v17 + 32))(&v30 - v23, v22);
  v25 = *(a14 + 48);
  v26 = *(a14 + 52);
  v27 = swift_allocObject();
  (*(v17 + 16))(v20, v24, a15);
  v28 = sub_231325DB0(v16, v31, v32, v33, v34, v35, v36, v37, a9, a10, v20, v30, *(&v30 + 1), a13, v27, a15, a16);
  (*(v17 + 8))(v24, a15);
  return v28;
}

uint64_t sub_231325DB0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7, __int128 *a8, __int128 *a9, __int128 *a10, uint64_t a11, __int128 *a12, __int128 *a13, __int128 *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v24 = (a15 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_selfLogger);
  v24[3] = a16;
  v24[4] = a17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a16 - 8) + 32))(boxed_opaque_existential_1, a11, a16);
  *(a15 + 16) = a1;
  *(a15 + 24) = a2;
  *(a15 + 32) = a3;
  *(a15 + 40) = a4;
  sub_23123E9F8(a5, a15 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_overrideCatTemplateDirectory, &qword_27DD44108, &unk_231373A40);
  sub_2311D38A8(a6, a15 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_pipelineFactory);
  sub_2311D38A8(a7, a15 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_featureEnabledProvider);
  sub_2311D38A8(a8, a15 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_clock);
  sub_2311D38A8(a9, a15 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_dataServiceFactory);
  sub_2311D38A8(a10, a15 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_appUtils);
  sub_2311D38A8(a12, a15 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_suggestionsLoggerFactory);
  sub_2311D38A8(a13, a15 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_featureServiceFactory);
  sub_2311D38A8(a14, a15 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_bookkeepingXPCClient);
  return a15;
}

uint64_t *sub_231325F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v63 = a5;
  v64 = a2;
  v59 = a3;
  v65 = a1;
  v62 = a11;
  v60 = a10;
  v61 = a4;
  v14 = *(a10 - 8);
  v15 = *(v14 + 64);
  v57 = a13;
  v58 = a12;
  MEMORY[0x28223BE20](a1);
  v56 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v17;
  v52 = *(v17 - 8);
  v19 = v52;
  v20 = *(v52 + 64);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v24;
  v54 = *(v24 - 8);
  v26 = v54;
  v27 = *(v54 + 64);
  MEMORY[0x28223BE20](v28);
  v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v31;
  v55 = *(v31 - 8);
  v32 = v55;
  v33 = *(v55 + 64);
  MEMORY[0x28223BE20](v34);
  v36 = &v50 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = swift_allocObject();
  (*(v32 + 16))(v36, v65, a7);
  v37 = *(v26 + 16);
  v38 = v25;
  v37(v30, v64, v25);
  v39 = *(v19 + 16);
  v40 = v23;
  v41 = v59;
  v42 = v18;
  v39(v23, v59, v18);
  v43 = v56;
  v44 = v60;
  v45 = v61;
  (*(v14 + 16))(v56, v61, v60);
  v46 = v36;
  v47 = v51;
  v48 = sub_231326494(v46, v30, v40, v43, v63, v53, v51, v42, v38, v44, v62, *(&v62 + 1), v58, v57);
  (*(v14 + 8))(v45, v44);
  (*(v52 + 8))(v41, v42);
  (*(v54 + 8))(v64, v38);
  (*(v55 + 8))(v65, v47);
  return v48;
}

unint64_t sub_231326300()
{
  result = qword_280F80E50;
  if (!qword_280F80E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F80E50);
  }

  return result;
}

unint64_t sub_231326378()
{
  result = qword_27DD449E0;
  if (!qword_27DD449E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD449E0);
  }

  return result;
}

uint64_t sub_2313263F4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_38_1();
  v2 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_2311D05C8;
  OUTLINED_FUNCTION_61_6();

  return sub_23131BEE4();
}

uint64_t *sub_231326494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a6[5] = a7;
  a6[6] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6 + 2);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  a6[10] = a9;
  a6[11] = a13;
  v21 = __swift_allocate_boxed_opaque_existential_1(a6 + 7);
  (*(*(a9 - 8) + 32))(v21, a2, a9);
  a6[15] = a8;
  a6[16] = a12;
  v22 = __swift_allocate_boxed_opaque_existential_1(a6 + 12);
  (*(*(a8 - 8) + 32))(v22, a3, a8);
  a6[20] = a10;
  a6[21] = a14;
  v23 = __swift_allocate_boxed_opaque_existential_1(a6 + 17);
  (*(*(a10 - 8) + 32))(v23, a4, a10);
  sub_2311D38A8(a5, (a6 + 22));
  return a6;
}

uint64_t type metadata accessor for DefaultSuggestionServiceFactory()
{
  result = qword_280F7E018;
  if (!qword_280F7E018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23132667C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v5 = sub_231367C70();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = sub_2313667A0();
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v11 = sub_231366EA0();
  v3[16] = v11;
  v12 = *(v11 - 8);
  v3[17] = v12;
  v13 = *(v12 + 64) + 15;
  v3[18] = swift_task_alloc();
  v14 = sub_2313671A0();
  v3[5] = v14;
  v3[6] = sub_231327268(&qword_280F7CAF8, MEMORY[0x277D606F8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 2);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, a1, v14);

  return MEMORY[0x2822009F8](sub_231326878, 0, 0);
}

uint64_t sub_231326878()
{
  OUTLINED_FUNCTION_50_9();
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[9];
  v24 = v7[34];
  __swift_project_boxed_opaque_existential_1(v7 + 30, v7[33]);
  (*(v2 + 104))(v1, *MEMORY[0x277D60620], v3);
  v8 = v0[5];
  v9 = v0[6];
  v10 = OUTLINED_FUNCTION_54_0();
  __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_2313677C0();
  v12 = v0[5];
  v13 = v0[6];
  v14 = OUTLINED_FUNCTION_54_0();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  OUTLINED_FUNCTION_71();
  sub_2313677D0();
  v16 = swift_task_alloc();
  v0[19] = v16;
  v16[2] = v7;
  v16[3] = v0 + 2;
  v16[4] = v6;
  v17 = *(MEMORY[0x277D605F8] + 4);
  v18 = swift_task_alloc();
  v0[20] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A58, &qword_2313778A0);
  *v18 = v0;
  v18[1] = sub_231326A14;
  v19 = v0[18];
  v20 = v0[15];
  v21 = v0[12];
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2821C6088]();
}

void sub_231326A14()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_50_9();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_40();
  }

  else
  {
    v12 = v3[18];
    v11 = v3[19];
    v13 = v3[16];
    v14 = v3[17];
    v16 = v3[14];
    v15 = v3[15];
    v18 = v3[12];
    v17 = v3[13];
    v21 = v3 + 10;
    v19 = v3[10];
    v20 = v21[1];

    (*(v20 + 8))(v18, v19);
    v22 = *(v16 + 8);
    v23 = OUTLINED_FUNCTION_54_0();
    v24(v23);
    v25 = *(v14 + 8);
    v26 = OUTLINED_FUNCTION_28();
    v27(v26);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_40();

    MEMORY[0x2822009F8](v28, v29, v30);
  }
}

uint64_t sub_231326B7C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[7];
  OUTLINED_FUNCTION_72_6(v0 + 2);

  v5 = v0[1];

  return v5(v4);
}

void *sub_231326C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v26 = type metadata accessor for DefaultSuggestionServiceFactory();
  v27 = &protocol witness table for DefaultSuggestionServiceFactory;
  v24 = &protocol witness table for DefaultSuggestionServiceFactory;
  *&v25 = a1;
  v23 = v26;
  *&v22 = a2;
  v20 = type metadata accessor for TrialTriggerLoggerProvider();
  v21 = &protocol witness table for TrialTriggerLoggerProvider;
  *&v19 = a3;
  v18[3] = v8;
  v18[4] = &off_2845F70C8;
  v18[0] = a4;
  type metadata accessor for TrialSuggestionsServiceFactory();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v18, v8);
  v11 = *(*(v8 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (v18 - v13);
  (*(v15 + 16))(v18 - v13, v12);
  v16 = *v14;
  v9[20] = v8;
  v9[21] = &off_2845F70C8;
  v9[17] = v16;
  sub_2311D38A8(&v25, (v9 + 2));
  sub_2311D38A8(&v22, (v9 + 7));
  sub_2311D38A8(&v19, (v9 + 12));
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v9;
}

uint64_t sub_231326D9C()
{
  v0 = sub_231366690();
  OUTLINED_FUNCTION_40_0(v0);
  v2 = *(v1 + 80);
  return sub_23131F9A0();
}

void sub_231326ED8()
{
  sub_2312972B0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_15SiriSuggestions23SuggestionServiceErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_231326FF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231327030(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_231327074(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2313270AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestionViewDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231327110(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_64();
  v9(v8);
  return a2;
}

uint64_t sub_231327168()
{
  v1 = OUTLINED_FUNCTION_32_6();
  v3 = v2(v1);
  OUTLINED_FUNCTION_11(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_2313271BC()
{
  OUTLINED_FUNCTION_26();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_231209AAC;

  return sub_2311FDCE0();
}

uint64_t sub_231327268(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2313272B0()
{
  result = qword_280F85460;
  if (!qword_280F85460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85460);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_22(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2[119];
  v4 = v2[118];
  v5 = v2[97];
  return result;
}

void OUTLINED_FUNCTION_44_11()
{
  v3 = v0[1272];
  v4 = v0[1269];
  v5 = v0[1268];
  v6 = v0[1267];
  v1 = v0[1266];
  v7 = v0[1265];
  v2 = v0[1264];
}

void OUTLINED_FUNCTION_47_9(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_53_11()
{
  v4 = v0[1272];
  v5 = v0[1269];
  v6 = v0[1268];
  v7 = v0[1267];
  v2 = v0[1266];
  v8 = v0[1265];
  v9 = v0[1264];
}

void OUTLINED_FUNCTION_58_8()
{
  v1 = v0[1301];
  v2 = v0[1298];
  v7 = v0[1292];
  v3 = v0[1288];
  v4 = v0[1276];
  v5 = v0[1275];
  v6 = v0[1274];
}

uint64_t OUTLINED_FUNCTION_68_6()
{
  v2 = v0[36];
  result = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  v8 = v0[27];
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  return result;
}

uint64_t OUTLINED_FUNCTION_74_6()
{
  v2 = v0[130];
  v3 = v0[118];
  v4 = v0[97];
  v5 = v0[104] + v0[129];

  return sub_2311CF388(v5, (v0 + 37));
}

uint64_t OUTLINED_FUNCTION_79_4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9296));

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9096));
}

uint64_t OUTLINED_FUNCTION_99_1()
{

  return swift_task_alloc();
}

uint64_t *OUTLINED_FUNCTION_106_1@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 56);
  __swift_project_boxed_opaque_existential_1((a1 + 32), v2);
  *(v1 + 744) = v2;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 720));
}

void *OUTLINED_FUNCTION_124_0()
{

  return memcpy((v1 + v0), (v1 + 5952), 0x1A8uLL);
}

void OUTLINED_FUNCTION_125_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_127_0(uint64_t a1)
{
  *(v2 + 1208) = a1;

  return __swift_mutable_project_boxed_opaque_existential_1(v2 + 456, v1);
}

uint64_t OUTLINED_FUNCTION_129_0()
{
}

uint64_t OUTLINED_FUNCTION_130_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_2311CFD58(a1, a2, va);
}

void *OUTLINED_FUNCTION_131_0(void *a1)
{

  return memcpy(a1, (v1 + 440), 0x1A8uLL);
}

BOOL OUTLINED_FUNCTION_132()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_231327744()
{
  v0 = sub_2313698C0();
  __swift_allocate_value_buffer(v0, qword_280F7C928);
  __swift_project_value_buffer(v0, qword_280F7C928);
  sub_2313691B0();
  return sub_2313698B0();
}

uint64_t static Logger.policyCategory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280F7C920 != -1)
  {
    swift_once();
  }

  v2 = sub_2313698C0();
  v3 = __swift_project_value_buffer(v2, qword_280F7C928);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_231327850@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for IntentDetailsDialogCallback;
  result = sub_231327E00();
  *(a1 + 32) = result;
  return result;
}

double OUTLINED_FUNCTION_13_23@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2313278E4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_2313698C0();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436F0, &unk_23136D510) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = type metadata accessor for IntentDetails();
  v2[7] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231327A0C, 0, 0);
}

uint64_t sub_231327A0C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[2];
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_231327BC4(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = v0[5];
    sub_231228E9C(v0[6], &qword_27DD436F0, &unk_23136D510);
    sub_231369130();
    v6 = sub_2313698A0();
    v7 = sub_23136A3B0();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2311CB000, v6, v7, "Unable to find IntentDetails parameter", v12, 2u);
      MEMORY[0x23192B930](v12, -1, -1);
    }

    (*(v10 + 8))(v9, v11);
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    v15 = v0[7];
    v16 = v0[8];
    sub_2312053C8(v0[6], v16);
    v17 = (v16 + *(v15 + 28));
    v13 = *v17;
    v14 = v17[1];
    sub_231369EE0();
    sub_23120542C(v16);
  }

  v18 = v0[8];
  v20 = v0[5];
  v19 = v0[6];

  v21 = v0[1];

  return v21(v13, v14);
}

uint64_t sub_231327BC4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_231367F00();
  sub_231210C60(0x6544746E65746E69, 0xED0000736C696174, v2);

  if (v8[3])
  {
    v3 = type metadata accessor for IntentDetails();
    v4 = swift_dynamicCast() ^ 1;
    v5 = a1;
    v6 = v3;
  }

  else
  {
    sub_231228E9C(v8, &qword_27DD443C0, &unk_23136E000);
    v6 = type metadata accessor for IntentDetails();
    v5 = a1;
    v4 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v5, v4, 1, v6);
}

void sub_231327CA4()
{
  v1 = *(MEMORY[0x277D60AB8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_231327E5C;

  JUMPOUT(0x2319282E0);
}

uint64_t sub_231327D6C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23128E2BC;

  return sub_2313278E4(v4, a2);
}

unint64_t sub_231327E00()
{
  result = qword_27DD44AB0;
  if (!qword_27DD44AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44AB0);
  }

  return result;
}

uint64_t sub_231327E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_2311D44D4;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_231327FD0()
{
  OUTLINED_FUNCTION_8();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v1[15] = v5;
  v1[16] = v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44AB8, &qword_231377AC0) - 8) + 64);
  v1[21] = OUTLINED_FUNCTION_43();
  v8 = sub_231367070();
  v1[22] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[23] = v9;
  v11 = *(v10 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v12 = sub_231366860();
  v1[26] = v12;
  OUTLINED_FUNCTION_0(v12);
  v1[27] = v13;
  v15 = *(v14 + 64);
  v1[28] = OUTLINED_FUNCTION_43();
  v16 = sub_231367D90();
  v1[29] = v16;
  OUTLINED_FUNCTION_0(v16);
  v1[30] = v17;
  v19 = *(v18 + 64);
  v1[31] = OUTLINED_FUNCTION_43();
  v20 = sub_2313684A0();
  v1[32] = v20;
  OUTLINED_FUNCTION_0(v20);
  v1[33] = v21;
  v23 = *(v22 + 64);
  v1[34] = OUTLINED_FUNCTION_43();
  v24 = sub_2313698C0();
  v1[35] = v24;
  OUTLINED_FUNCTION_0(v24);
  v1[36] = v25;
  v27 = *(v26 + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_231328204()
{
  v32 = v0;
  v1 = v0[38];
  sub_2313690F0();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2311CB000, v2, v3, "Taking environment snapshot", v4, 2u);
    OUTLINED_FUNCTION_29();
  }

  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[35];
  v8 = v0[36];

  v9 = *(v8 + 8);
  v9(v5, v7);
  sub_231368770();
  swift_getObjectType();
  v0[39] = sub_231368640();
  swift_unknownObjectRelease();
  sub_2313690F0();
  sub_231369EE0();
  v10 = sub_2313698A0();
  v11 = sub_23136A3A0();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[36];
  v14 = v0[37];
  v15 = v0[35];
  if (v12)
  {
    v30 = v0[37];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315138;
    sub_231367050();
    sub_231329904(&qword_280F7CB18, MEMORY[0x277D607F8]);
    v18 = sub_231369E90();
    v20 = sub_2311CFD58(v18, v19, &v31);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2311CB000, v10, v11, "Using OS installed dates of: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_29();

    v21 = v30;
  }

  else
  {

    v21 = v14;
  }

  v9(v21, v15);
  v22 = v0[20];

  v23 = swift_task_alloc();
  v0[40] = v23;
  *v23 = v0;
  v23[1] = sub_2313284E8;
  v24 = v0[20];
  v25 = OUTLINED_FUNCTION_7_23(0x6F4C656369766544);

  return sub_231328D44(v25, v26, v27, v28);
}

uint64_t sub_2313284E8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *(v1 + 104) = v0;
  *(v1 + 112) = v3;
  v5 = *(v4 + 320);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2313285CC()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 160);

  v2 = swift_task_alloc();
  *(v0 + 328) = v2;
  *v2 = v0;
  v2[1] = sub_231328684;
  v3 = *(v0 + 160);
  v4 = OUTLINED_FUNCTION_7_23(0x63416E6F69746F4DLL);

  return sub_23132901C(v4, v5, v6, v7);
}

uint64_t sub_231328684()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v1[7] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v6 = *(v5 + 328);
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23132876C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 160);

  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  *v2 = v0;
  v2[1] = sub_231328824;
  v3 = *(v0 + 160);
  v4 = OUTLINED_FUNCTION_7_23(0x65746E4972657355);

  return sub_231329594(v4, v5, v6, v7);
}

uint64_t sub_231328824()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v1[10] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v6 = *(v5 + 336);
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23132890C()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[18];
  v7 = v4[5];
  v8 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v7);
  v9 = (*(v8 + 32))(v7, v8);
  v10 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2313673E0();
  v11 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2313673B0();
  v12 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v52 = sub_2313673D0();
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2313673C0();
  sub_2311CF324(v6, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44AC0, &qword_231377AE0);
  v14 = sub_231367090();
  v15 = swift_dynamicCast();
  v16 = v0[25];
  if (v15)
  {
    v18 = v0[23];
    v17 = v0[24];
    v19 = v0[21];
    v20 = v0[22];
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v14);
    sub_231367080();
    (*(*(v14 - 8) + 8))(v19, v14);
    (*(v18 + 32))(v16, v17, v20);
  }

  else
  {
    v21 = v0[22];
    v22 = v0[23];
    v23 = v0[21];
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v14);
    sub_23132989C(v23);
    (*(v22 + 104))(v16, *MEMORY[0x277D60830], v21);
  }

  v38 = v0[12];
  v39 = v0[11];
  v36 = v0[9];
  v37 = v0[8];
  v47 = v0[39];
  v48 = v0[38];
  v49 = v0[37];
  v24 = v0[33];
  v53 = v0[34];
  v40 = v0[32];
  v54 = v0[31];
  v25 = v0[30];
  v26 = v0[27];
  v41 = v0[29];
  v42 = v0[26];
  v45 = v0[25];
  v27 = v0[23];
  v50 = v0[24];
  v43 = v0[28];
  v44 = v0[22];
  v51 = v0[21];
  v46 = v0[19];
  v28 = v0[16];
  v29 = v0[17];
  v30 = v0[14];
  v31 = v0[15];
  v32 = type metadata accessor for Environment();
  v31[3] = v32;
  v31[4] = sub_231329904(qword_280F84DF0, type metadata accessor for Environment);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  *boxed_opaque_existential_1 = v30;
  boxed_opaque_existential_1[1] = v37;
  boxed_opaque_existential_1[2] = v36;
  boxed_opaque_existential_1[3] = v39;
  boxed_opaque_existential_1[4] = v38;
  boxed_opaque_existential_1[5] = v29;
  boxed_opaque_existential_1[6] = v28;
  *(boxed_opaque_existential_1 + 7) = v9;
  (*(v24 + 32))(boxed_opaque_existential_1 + v32[12], v53, v40);
  (*(v25 + 32))(boxed_opaque_existential_1 + v32[10], v54, v41);
  *(boxed_opaque_existential_1 + v32[11]) = v52;
  (*(v26 + 32))(boxed_opaque_existential_1 + v32[13], v43, v42);
  (*(v27 + 32))(boxed_opaque_existential_1 + v32[14], v45, v44);
  *(boxed_opaque_existential_1 + v32[16]) = v47;
  *(boxed_opaque_existential_1 + v32[15]) = v46;
  sub_231369EE0();
  sub_231369EE0();

  v34 = v0[1];

  return v34();
}

uint64_t sub_231328D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a2;
  v4[5] = a4;
  v4[3] = a1;
  v5 = sub_2313698C0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231328E08, 0, 0);
}

uint64_t sub_231328E08()
{
  v34 = v1;
  v2 = v1[5];
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_14_28();
  v7 = v6(v5);
  if (v0)
  {
    v8 = v1[8];
    v9 = v1[4];
    sub_2313690F0();
    sub_231369EE0();
    v10 = v0;
    v11 = sub_2313698A0();
    v12 = sub_23136A3A0();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v1[7];
    v15 = v1[8];
    v16 = v1[5];
    v17 = v1[6];
    if (v13)
    {
      v32 = v1[5];
      OUTLINED_FUNCTION_13_24();
      v33 = OUTLINED_FUNCTION_10_3();
      v20 = OUTLINED_FUNCTION_15_25(4.8151e-34, v33, v18, v19);
      OUTLINED_FUNCTION_7_1(v20);
      v1[2] = v0;
      v21 = v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
      v22 = sub_23136A010();
      v24 = sub_2311CFD58(v22, v23, &v33);

      *(v15 + 14) = v24;
      OUTLINED_FUNCTION_2_4(&dword_2311CB000, v25, v26, "[warning] Unable to get value %s due to %s");
      OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();

      (*(v14 + 8))(v15, v17);
    }

    else
    {

      (*(v14 + 8))(v15, v17);
    }

    v27 = 0;
  }

  else
  {
    v27 = v7;
    v28 = v1[5];
  }

  v29 = v1[8];

  v30 = v1[1];

  return v30(v27);
}

uint64_t sub_23132901C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a2;
  v4[5] = a4;
  v4[3] = a1;
  v5 = sub_2313698C0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2313290E0, 0, 0);
}

uint64_t sub_2313290E0()
{
  v1 = *(v0 + 40);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_231329208;

  return v8(v2, v3);
}

uint64_t sub_231329208(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  *v8 = v7;
  v10 = *(v9 + 72);
  v11 = *v3;
  OUTLINED_FUNCTION_2();
  *v12 = v11;
  v7[10] = v2;

  if (v2)
  {
    v13 = sub_2313293A0;
  }

  else
  {
    v7[11] = a2;
    v7[12] = a1;
    v13 = sub_23132932C;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_23132932C()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[11];
  v2 = v0[5];

  v3 = v0[12];
  v4 = v0[8];

  v5 = v0[1];

  return v5(v3, v1);
}

uint64_t sub_2313293A0()
{
  v29 = v0;
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 32);
  sub_2313690F0();
  sub_231369EE0();
  v6 = v3;
  v7 = sub_2313698A0();
  v8 = sub_23136A3A0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 80);
    v10 = *(v0 + 56);
    v11 = *(v0 + 48);
    v26 = *(v0 + 64);
    v27 = *(v0 + 40);
    OUTLINED_FUNCTION_13_24();
    v28 = OUTLINED_FUNCTION_10_3();
    *v1 = 136315394;
    v12 = sub_2311CFD58(v3, v2, &v28);
    OUTLINED_FUNCTION_7_1(v12);
    *(v0 + 16) = v9;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    v14 = sub_23136A010();
    v16 = sub_2311CFD58(v14, v15, &v28);

    *(v1 + 14) = v16;
    OUTLINED_FUNCTION_2_4(&dword_2311CB000, v17, v18, "[warning] Unable to get value %s due to %s");
    OUTLINED_FUNCTION_12_23();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_24();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v20 = *(v0 + 56);
    v19 = *(v0 + 64);
    v22 = *(v0 + 40);
    v21 = *(v0 + 48);

    (*(v20 + 8))(v19, v21);
  }

  v23 = *(v0 + 64);

  v24 = *(v0 + 8);

  return v24(0, 0);
}

uint64_t sub_231329594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a2;
  v4[5] = a4;
  v4[3] = a1;
  v5 = sub_2313698C0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231329658, 0, 0);
}

uint64_t sub_231329658()
{
  v36 = v1;
  v2 = v1[5];
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v4 = *(v3 + 24);
  v5 = OUTLINED_FUNCTION_14_28();
  v7 = v6(v5);
  if (v0)
  {
    v9 = v1[8];
    v10 = v1[4];
    sub_2313690F0();
    sub_231369EE0();
    v11 = v0;
    v12 = sub_2313698A0();
    v13 = sub_23136A3A0();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v1[7];
    v16 = v1[8];
    v17 = v1[5];
    v18 = v1[6];
    if (v14)
    {
      v34 = v1[5];
      OUTLINED_FUNCTION_13_24();
      v35 = OUTLINED_FUNCTION_10_3();
      v21 = OUTLINED_FUNCTION_15_25(4.8151e-34, v35, v19, v20);
      OUTLINED_FUNCTION_7_1(v21);
      v1[2] = v0;
      v22 = v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
      v23 = sub_23136A010();
      v25 = sub_2311CFD58(v23, v24, &v35);

      *(v16 + 14) = v25;
      OUTLINED_FUNCTION_2_4(&dword_2311CB000, v26, v27, "[warning] Unable to get value %s due to %s");
      OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();

      (*(v15 + 8))(v16, v18);
    }

    else
    {

      (*(v15 + 8))(v16, v18);
    }

    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = v7;
    v29 = v8;
    v30 = v1[5];
  }

  v31 = v1[8];

  v32 = v1[1];

  return v32(v28, v29);
}

uint64_t sub_23132989C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44AB8, &qword_231377AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231329904(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_13_24()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  return swift_slowAlloc();
}

uint64_t sub_231329978()
{
  OUTLINED_FUNCTION_8();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v1[22] = v5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44AC8, &qword_231377B38) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v7 = sub_231367300();
  v1[28] = v7;
  v8 = *(v7 - 8);
  v1[29] = v8;
  v9 = *(v8 + 64) + 15;
  v1[30] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44AD0, &qword_231377B40) - 8) + 64) + 15;
  v1[33] = swift_task_alloc();
  v12 = type metadata accessor for RankedCandidateSuggestion();
  v1[34] = v12;
  v13 = *(v12 - 8);
  v1[35] = v13;
  v14 = *(v13 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231329B64, 0, 0);
}

uint64_t sub_231329B64()
{
  v1 = *(v0 + 208);
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  swift_getObjectType();
  if (sub_231368630())
  {
    if (qword_280F7C920 != -1)
    {
      swift_once();
    }

    v4 = sub_2313698C0();
    __swift_project_value_buffer(v4, qword_280F7C928);
    v5 = sub_2313698A0();
    v6 = sub_23136A390();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2311CB000, v5, v6, "Policy check is disabled through user defaults. Returning all candidates as meeting policies", v7, 2u);
      MEMORY[0x23192B930](v7, -1, -1);
    }

    v8 = *(v0 + 176);

    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v0 + 280);
      v66 = *(v0 + 272);
      v11 = *(v0 + 232);
      v12 = *(v0 + 176);
      v69 = MEMORY[0x277D84F90];
      sub_2311F571C();
      v13 = v69;
      v65 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = v12 + v65;
      v64 = *(v10 + 72);
      v67 = (v11 + 32);
      v63 = (v11 + 16);
      do
      {
        v15 = *(v0 + 288);
        v16 = *(v0 + 296);
        v18 = *(v0 + 256);
        v17 = *(v0 + 264);
        v19 = *(v0 + 224);
        sub_2311E1984(v14, v16);
        sub_2311E1984(v16, v15);
        __swift_storeEnumTagSinglePayload(v17, 1, 1, v19);
        sub_231366E50();
        sub_2311E1928(v16);
        v20 = sub_231366E80();
        __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
        if (__swift_getEnumTagSinglePayload(v17, 1, v19) == 1)
        {
          v21 = *(v0 + 264);
          v22 = *(v0 + 224);
          (*v63)(*(v0 + 240), *(v0 + 288), v22);
          v23 = v66;
          if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
          {
            sub_2311D1F18(*(v0 + 264), &qword_27DD44AD0, &qword_231377B40);
          }
        }

        else
        {
          (*v67)(*(v0 + 240), *(v0 + 264), *(v0 + 224));
          v23 = v66;
        }

        v24 = *(v0 + 256);
        sub_2311CF324(*(v0 + 288) + v23[5], v0 + 136);
        v68 = v13;
        if (__swift_getEnumTagSinglePayload(v24, 1, v20) == 1)
        {
          v25 = *(v0 + 256);
          sub_23120B41C(*(v0 + 288) + v23[6], *(v0 + 248));
          if (__swift_getEnumTagSinglePayload(v25, 1, v20) != 1)
          {
            sub_2311D1F18(*(v0 + 256), &qword_27DD42F20, &qword_23136D410);
          }
        }

        else
        {
          v26 = *(v0 + 248);
          (*(*(v20 - 8) + 32))(v26, *(v0 + 256), v20);
          __swift_storeEnumTagSinglePayload(v26, 0, 1, v20);
        }

        v27 = *(v0 + 304);
        v28 = *(v0 + 288);
        v30 = *(v0 + 240);
        v29 = *(v0 + 248);
        v31 = *(v0 + 224);
        v32 = v23;
        v33 = v23[7];
        v34 = sub_231369050();
        OUTLINED_FUNCTION_11(v34);
        (*(v35 + 16))(v27 + v33, v28 + v33);
        sub_2311E1928(v28);
        (*v67)(v27, v30, v31);
        sub_2311D38A8((v0 + 136), v27 + v32[5]);
        sub_23132AA20(v29, v27 + v32[6]);
        v13 = v68;
        v36 = *(v68 + 16);
        if (v36 >= *(v68 + 24) >> 1)
        {
          sub_2311F571C();
          v13 = v68;
        }

        v37 = *(v0 + 304);
        *(v13 + 16) = v36 + 1;
        sub_2311E18C4(v37, v13 + v65 + v36 * v64);
        v14 += v64;
        --v9;
      }

      while (v9);
    }

    v53 = *(v0 + 296);
    v52 = *(v0 + 304);
    v54 = *(v0 + 288);
    v56 = *(v0 + 256);
    v55 = *(v0 + 264);
    v58 = *(v0 + 240);
    v57 = *(v0 + 248);
    v59 = *(v0 + 216);

    v60 = OUTLINED_FUNCTION_5();

    return v61(v60);
  }

  else
  {
    v39 = *(v0 + 208);
    v38 = *(v0 + 216);
    v41 = *(v0 + 192);
    v40 = *(v0 + 200);
    v42 = *(v0 + 184);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44AD8, &qword_231377B48);
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v43);
    sub_2311CF324(v42, v0 + 16);
    sub_2311CF324(v41, v0 + 56);
    sub_2311CF324(v40, v0 + 96);
    v44 = swift_allocObject();
    *(v0 + 312) = v44;
    *(v44 + 16) = v39;
    sub_2311D38A8((v0 + 16), v44 + 24);
    sub_2311D38A8((v0 + 56), v44 + 64);
    sub_2311D38A8((v0 + 96), v44 + 104);
    v45 = *(MEMORY[0x277D60B28] + 4);

    v46 = swift_task_alloc();
    *(v0 + 320) = v46;
    *v46 = v0;
    v46[1] = sub_23132A1A8;
    v49 = *(v0 + 272);
    v50 = *(v0 + 216);
    v51 = *(v0 + 176);

    return MEMORY[0x2821C6B08](v51, v50, &unk_231377B58, v44, v49, v49, v47, v48);
  }
}

void sub_23132A1A8(uint64_t a1)
{
  OUTLINED_FUNCTION_12();
  v5 = v4;
  v6 = v4[40];
  v7 = *v2;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (v1)
  {
  }

  else
  {
    v9 = v5[39];
    sub_2311D1F18(v5[27], &qword_27DD44AC8, &qword_231377B38);

    v11 = v5[37];
    v10 = v5[38];
    v12 = v5[36];
    v14 = v5[32];
    v13 = v5[33];
    v16 = v5[30];
    v15 = v5[31];
    v17 = v5[27];

    v18 = *(v7 + 8);

    v18(a1);
  }
}

uint64_t sub_23132A358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = type metadata accessor for RankedCandidateSuggestion();
  v5[19] = v6;
  v7 = *(v6 - 8);
  v5[20] = v7;
  v8 = *(v7 + 64) + 15;
  v5[21] = swift_task_alloc();
  v9 = sub_231366E80();
  v5[22] = v9;
  v10 = *(v9 - 8);
  v5[23] = v10;
  v11 = *(v10 + 64) + 15;
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23132A47C, 0, 0);
}

uint64_t sub_23132A47C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0[15] + 16);
  sub_2311CF324(v0[14] + *(v0[19] + 20), (v0 + 9));
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_23132A540;
  v3 = v0[16];
  v4 = v0[17];

  return sub_2311E3364();
}

uint64_t sub_23132A540()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v1 + 200);
  v6 = *v0;
  *(v2 + 208) = v4;

  sub_2311D1F18(v2 + 72, &qword_27DD42F50, &qword_23136D440);

  return MEMORY[0x2822009F8](sub_23132A650, 0, 0);
}

uint64_t sub_23132A650()
{
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v23 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[14];
  type metadata accessor for AggregatorPolicy();
  swift_initStackObject();
  sub_23120C804(v1, sub_23120C6CC, 0, 0x73697461536C6C61, 0xEA00000000007966);
  sub_23120C818(v9, v8, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F08, &unk_23136B800);
  v10 = *(v5 + 72);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23136B670;
  v13 = v12 + v11;
  sub_2311E1984(v9, v4);
  v14 = sub_231367300();
  OUTLINED_FUNCTION_11(v14);
  (*(v15 + 16))(v13, v4);
  sub_2311CF324(v4 + v6[5], v13 + v6[5]);
  v16 = v6[6];
  (*(v3 + 16))(v13 + v16, v2, v23);
  __swift_storeEnumTagSinglePayload(v13 + v16, 0, 1, v23);
  v17 = v6[7];
  v18 = sub_231369050();
  OUTLINED_FUNCTION_11(v18);
  (*(v19 + 16))(v13 + v17, v4 + v17);
  sub_2311E1928(v4);
  (*(v3 + 8))(v2, v23);

  v20 = OUTLINED_FUNCTION_5();

  return v21(v20);
}

uint64_t sub_23132A8B0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231274F34;

  return sub_231329978();
}

uint64_t sub_23132A970(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2312B6ECC;

  return sub_23132A358(a1, v4, v1 + 24, v1 + 64, v1 + 104);
}

uint64_t sub_23132AA20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of GeneratorProvider.generatorsAvailable()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_42(a2);
  v10 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23132AB9C;

  return v10(a1, a2);
}

uint64_t sub_23132AB9C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_5();

  return v6(v5);
}

uint64_t sub_23132AC7C()
{
  OUTLINED_FUNCTION_8();
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44AE8, &qword_231377C90) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23132AD14, 0, 0);
}

uint64_t sub_23132AD14()
{
  v1 = v0[3];
  v2 = *(v0[2] + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44AF0, &qword_231377C98);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  v4 = *(MEMORY[0x277D60B28] + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44AF8, &unk_231377CA8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
  *v5 = v0;
  v5[1] = sub_23132AE34;
  v10 = v0[3];

  return MEMORY[0x2821C6B08](v2, v10, &unk_231377CA0, 0, v6, v7, v8, v9);
}

void sub_23132AE34(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  if (v1)
  {
  }

  else
  {
    sub_23132B7E8(*(v4 + 24));

    v8 = *(v6 + 8);

    v8(a1);
  }
}

uint64_t sub_23132AF94()
{
  v1 = *(v0 + 16);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_1_42(v2);
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_1_2(v6);

  return v8(v7);
}

uint64_t sub_23132B09C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_1();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_5();

  return v6(v5);
}

uint64_t sub_23132B1C0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23132AB9C;

  return sub_23132AC7C();
}

uint64_t sub_23132B290()
{
  v1 = *(v0 + 16);
  if (*(v1 + 16) == 1)
  {
    v2 = *(v1 + 64);
    __swift_project_boxed_opaque_existential_1((v1 + 32), *(v1 + 56));
    OUTLINED_FUNCTION_1_42(v2);
    v12 = v3 + *v3;
    v5 = *(v4 + 4);
    v6 = swift_task_alloc();
    *(v0 + 24) = v6;
    *v6 = v0;
    v7 = OUTLINED_FUNCTION_1_2(v6);

    return v8(v7);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_6_26(v1);

    return v11(v10);
  }
}

uint64_t sub_23132B3DC()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 24);
  v4 = *v0;
  *(*v0 + 32) = v2;

  return MEMORY[0x2822009F8](sub_23132B4D8, 0, 0);
}

uint64_t sub_23132B4D8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 32);

  *(v1 + 16) = 0;
  v3 = OUTLINED_FUNCTION_6_26(*(v0 + 16));

  return v5(v3);
}

unint64_t sub_23132B54C()
{
  sub_23136A650();

  v1 = *(v0 + 24);
  sub_231369EE0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
  v3 = MEMORY[0x23192A860](v1, v2);
  v5 = v4;

  MEMORY[0x23192A730](v3, v5);

  MEMORY[0x23192A730](125, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_23132B640()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23132B850;

  return sub_23132B270();
}

uint64_t sub_23132B6F4(uint64_t a1)
{
  result = sub_23132B7A4(qword_280F811A0, type metadata accessor for CachedGeneratorProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23132B74C(uint64_t a1)
{
  result = sub_23132B7A4(&qword_27DD44AE0, type metadata accessor for UnionGeneratorProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23132B7A4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23132B7E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44AE8, &qword_231377C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NoopDeliveryVehicleProvider.get(for:with:with:withActiveSignal:withSubscribedSignal:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D60B88];
  v3 = sub_231367D80();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_23132B974(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return OUTLINED_FUNCTION_20_23();
  }

  v22 = MEMORY[0x277D84F90];
  v8 = OUTLINED_FUNCTION_10_30();
  sub_2311F5B70(v8, v9, v10);
  v11 = v22;
  for (i = a3 + 32; ; i += 48)
  {
    a1(v21, i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v11;
    v13 = *(v11 + 16);
    if (v13 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_21_22();
      sub_2311F5B70(v17, v18, v19);
      v11 = v22;
    }

    *(v11 + 16) = v13 + 1;
    v14 = (v11 + 48 * v13);
    v15 = v21[0];
    v16 = v21[2];
    v14[3] = v21[1];
    v14[4] = v16;
    v14[2] = v15;
    if (!--v5)
    {
      return OUTLINED_FUNCTION_20_23();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23132BA7C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_231366E80();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v20 = MEMORY[0x277D84F90];
  sub_2311F4DDC(0, v10, 0);
  v11 = v20;
  v12 = a3 + 32;
  v16 = v6 + 32;
  while (1)
  {
    v18(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v20 = v11;
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_2311F4DDC(v13 > 1, v14 + 1, 1);
      v11 = v20;
    }

    *(v11 + 16) = v14 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, v17);
    v12 += 40;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23132BC28(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return OUTLINED_FUNCTION_20_23();
  }

  v22 = MEMORY[0x277D84F90];
  v8 = OUTLINED_FUNCTION_10_30();
  sub_2311F5B90(v8, v9, v10);
  v11 = v22;
  v12 = *(sub_231368090() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v14 = *(v12 + 72);
  while (1)
  {
    a1(&v21, v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v15 = v21;
    v22 = v11;
    v16 = *(v11 + 16);
    if (v16 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_21_22();
      sub_2311F5B90(v17, v18, v19);
      v11 = v22;
    }

    *(v11 + 16) = v16 + 1;
    *(v11 + 8 * v16 + 32) = v15;
    v13 += v14;
    if (!--v5)
    {
      return OUTLINED_FUNCTION_20_23();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23132BD80(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return OUTLINED_FUNCTION_20_23();
  }

  v19 = MEMORY[0x277D84F90];
  v8 = OUTLINED_FUNCTION_10_30();
  sub_2311F5D38(v8, v9, v10);
  v11 = v19;
  for (i = a3 + 32; ; i += 32)
  {
    a1(__src, i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v19 = v11;
    v13 = *(v11 + 16);
    if (v13 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_21_22();
      sub_2311F5D38(v14, v15, v16);
      v11 = v19;
    }

    *(v11 + 16) = v13 + 1;
    memcpy((v11 + 72 * v13 + 32), __src, 0x48uLL);
    if (!--v5)
    {
      return OUTLINED_FUNCTION_20_23();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23132BE88(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v51 = a1;
  v52 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B00, &unk_231377EF0);
  v5 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43248, &qword_23136BCF0);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v43 - v12;
  v14 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v14)
  {
    v47 = v7;
    v58 = v3;
    v59 = MEMORY[0x277D84F90];
    sub_2311F60B8(0, v14, 0);
    v57 = v59;
    v18 = sub_231236CA8(a3);
    v19 = 0;
    v20 = a3 + 64;
    v44 = v16;
    v45 = v14;
    v43 = a3 + 72;
    v46 = a3 + 64;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a3 + 32))
    {
      v21 = v18 >> 6;
      if ((*(v20 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a3 + 36) != v16)
      {
        goto LABEL_25;
      }

      v55 = v16;
      v56 = 1 << v18;
      v53 = v17;
      v54 = v19;
      v22 = *(a3 + 48);
      v23 = sub_231367E10();
      v24 = *(v23 - 8);
      v25 = v13;
      v26 = v49;
      (*(v24 + 16))(v49, v22 + *(v24 + 72) * v18, v23);
      v27 = a3;
      v28 = *(*(a3 + 56) + 8 * v18);
      a3 = v47;
      v29 = v26;
      v13 = v25;
      (*(v24 + 32))(v47, v29, v23);
      *(a3 + *(v50 + 48)) = v28;
      sub_231369EE0();
      v30 = v58;
      v51(a3);
      v58 = v30;
      if (v30)
      {
        goto LABEL_29;
      }

      sub_2311EB450(a3, &qword_27DD44B00, &unk_231377EF0);
      v31 = v57;
      v59 = v57;
      v33 = *(v57 + 16);
      v32 = *(v57 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2311F60B8(v32 > 1, v33 + 1, 1);
        v31 = v59;
      }

      *(v31 + 16) = v33 + 1;
      v34 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v57 = v31;
      sub_23132EC84(v25, v31 + v34 + *(v48 + 72) * v33);
      a3 = v27;
      v35 = 1 << *(v27 + 32);
      if (v18 >= v35)
      {
        goto LABEL_26;
      }

      v20 = v46;
      v36 = *(v46 + 8 * v21);
      if ((v36 & v56) == 0)
      {
        goto LABEL_27;
      }

      if (*(v27 + 36) != v55)
      {
        goto LABEL_28;
      }

      v37 = v36 & (-2 << (v18 & 0x3F));
      if (v37)
      {
        v35 = __clz(__rbit64(v37)) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v38 = v21 << 6;
        v39 = v21 + 1;
        v40 = (v43 + 8 * v21);
        while (v39 < (v35 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            sub_2311F0490(v18, v55, v53 & 1);
            v35 = __clz(__rbit64(v41)) + v38;
            goto LABEL_20;
          }
        }

        sub_2311F0490(v18, v55, v53 & 1);
      }

LABEL_20:
      v17 = 0;
      v19 = v54 + 1;
      v18 = v35;
      v16 = v44;
      if (v54 + 1 == v45)
      {
        return v57;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    sub_2311EB450(a3, &qword_27DD44B00, &unk_231377EF0);

    __break(1u);
  }

  return result;
}

uint64_t sub_23132C300(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v13 = MEMORY[0x277D84F90];
  sub_2311F60D8();
  v6 = v13;
  for (i = a3 + 32; ; i += 40)
  {
    a1(v12, i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v13 = v6;
    v10 = *(v6 + 16);
    if (v10 >= *(v6 + 24) >> 1)
    {
      sub_2311F60D8();
      v6 = v13;
    }

    *(v6 + 16) = v10 + 1;
    memcpy((v6 + 80 * v10 + 32), v12, 0x50uLL);
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23132C418(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return OUTLINED_FUNCTION_20_23();
  }

  v20 = MEMORY[0x277D84F90];
  v8 = OUTLINED_FUNCTION_10_30();
  sub_2311F6124(v8, v9, v10);
  v11 = v20;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v18[0] = *(i - 1);
    v18[1] = v13;
    sub_231369EE0();
    a1(&v19, v18);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v14 = v19;
    v20 = v11;
    v16 = *(v11 + 16);
    v15 = *(v11 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2311F6124(v15 > 1, v16 + 1, 1);
      v11 = v20;
    }

    *(v11 + 16) = v16 + 1;
    *(v11 + v16 + 32) = v14;
    if (!--v5)
    {
      return OUTLINED_FUNCTION_20_23();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23132C538(uint64_t a1)
{
  v2 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = v2;
  sub_231369EE0();
  v3 = sub_23132E738(a1 + 16, a1 + 56, &v6, &v5, a1 + 112);

  return v3;
}

uint64_t sub_23132C598(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44328, &qword_231374950);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_23132E814(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_23132C630(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44328, &qword_231374950);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_23132E9DC(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_23132C6C8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12_24(v0, v1);
  v2 = *(MEMORY[0x277D61330] + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_27(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_38(v4);

  return MEMORY[0x2821C7770](v6);
}

uint64_t sub_23132C758()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[18];
  v5 = v1[17];
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_36_0();
  v8 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23132C888()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  OUTLINED_FUNCTION_1_43();
  OUTLINED_FUNCTION_5_29();
  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_18_22();
  v6();
  OUTLINED_FUNCTION_19_20();
  OUTLINED_FUNCTION_26_19();
  OUTLINED_FUNCTION_8_27();
  if (v7)
  {
    sub_2313692F0();
    v8 = OUTLINED_FUNCTION_16_25();
    v9 = v0[16];
    if (v8)
    {
      v10 = v0[16];
    }
  }

  else
  {
    sub_2311EB450((v0 + 12), &qword_27DD443C0, &unk_23136E000);
  }

  OUTLINED_FUNCTION_14();

  return v11();
}

uint64_t sub_23132C984()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12_24(v0, v1);
  v2 = *(MEMORY[0x277D61330] + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_27(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_38(v4);

  return MEMORY[0x2821C7770](v6);
}

uint64_t sub_23132CA14()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[18];
  v5 = v1[17];
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_36_0();
  v8 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23132CB44()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  OUTLINED_FUNCTION_1_43();
  OUTLINED_FUNCTION_5_29();
  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_18_22();
  v6();
  OUTLINED_FUNCTION_19_20();
  OUTLINED_FUNCTION_26_19();
  OUTLINED_FUNCTION_8_27();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_16_25();
    if (v8)
    {
      v9 = v0[16];
    }

    else
    {
      v9 = 0;
    }

    v10 = v8 ^ 1u;
  }

  else
  {
    sub_2311EB450((v0 + 12), &qword_27DD443C0, &unk_23136E000);
    v9 = 0;
    v10 = 1;
  }

  v11 = v0[1];

  return v11(v9, v10);
}

uint64_t sub_23132CC50()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_22_21(v0, v1, v2);
  v3 = *(MEMORY[0x277D61330] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_27(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_38(v5);

  return MEMORY[0x2821C7770](v7);
}

uint64_t sub_23132CCE0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[18];
  v5 = v1[17];
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_36_0();
  v8 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23132CE10()
{
  OUTLINED_FUNCTION_17_20();
  OUTLINED_FUNCTION_26_0(v0);
  (*(v1 + 16))();
  v2 = sub_2313692F0();
  OUTLINED_FUNCTION_25_18(v2);
  sub_231369450();
  OUTLINED_FUNCTION_11_25(v0);

  return v3();
}

uint64_t sub_23132CEE8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_22_21(v0, v1, v2);
  v3 = *(MEMORY[0x277D61330] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_27(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_38(v5);

  return MEMORY[0x2821C7770](v7);
}

uint64_t sub_23132CF78()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[18];
  v5 = v1[17];
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_36_0();
  v8 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23132D0A8()
{
  OUTLINED_FUNCTION_17_20();
  OUTLINED_FUNCTION_26_0(v0);
  (*(v1 + 16))();
  v2 = sub_2313692F0();
  OUTLINED_FUNCTION_25_18(v2);
  OUTLINED_FUNCTION_15_26();
  sub_231369450();
  OUTLINED_FUNCTION_11_25(v0);

  return v3();
}

uint64_t Context.setConversationalContinuer(value:)()
{
  OUTLINED_FUNCTION_26();
  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  *(v1 + 128) = v3;
  *(v1 + 160) = v4;
  v5 = *(MEMORY[0x277D61330] + 4);
  v6 = swift_task_alloc();
  *(v1 + 152) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_0_38(v6);

  return MEMORY[0x2821C7770](v7);
}

uint64_t sub_23132D214()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1[19];
  v3 = v1[18];
  v4 = v1[17];
  v5 = v1[16];
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_36_0();
  v8 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23132D344()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 160);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  *(v0 + 80) = v5;
  *(v0 + 88) = *(v6 + 8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  OUTLINED_FUNCTION_5_29();
  v8 = *(v7 + 16);
  OUTLINED_FUNCTION_18_22();
  v9();
  *(v0 + 120) = MEMORY[0x277D839B0];
  *(v0 + 96) = v4;
  sub_231369450();
  OUTLINED_FUNCTION_11_25((v0 + 96));

  return v10();
}

uint64_t sub_23132D44C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12_24(v0, v1);
  v2 = *(MEMORY[0x277D61330] + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_27(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_38(v4);

  return MEMORY[0x2821C7770](v6);
}

uint64_t sub_23132D4DC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[18];
  v5 = v1[17];
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_36_0();
  v8 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23132D60C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  OUTLINED_FUNCTION_1_43();
  OUTLINED_FUNCTION_5_29();
  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_18_22();
  v6();
  OUTLINED_FUNCTION_15_26();
  OUTLINED_FUNCTION_19_20();
  OUTLINED_FUNCTION_26_19();
  OUTLINED_FUNCTION_8_27();
  if (v7)
  {
    sub_2313692F0();
    v8 = OUTLINED_FUNCTION_16_25();
    v9 = v0[16];
    if (v8)
    {
      v10 = v0[16];
    }
  }

  else
  {
    sub_2311EB450((v0 + 12), &qword_27DD443C0, &unk_23136E000);
  }

  OUTLINED_FUNCTION_14();

  return v11();
}

uint64_t Context.isConversationalContinuer()()
{
  OUTLINED_FUNCTION_26();
  v1[17] = v2;
  v1[18] = v0;
  v1[16] = v3;
  v4 = *(MEMORY[0x277D61330] + 4);
  v5 = swift_task_alloc();
  v1[19] = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_0_38(v5);

  return MEMORY[0x2821C7770](v6);
}

uint64_t sub_23132D798()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1[19];
  v3 = v1[18];
  v4 = v1[17];
  v5 = v1[16];
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_36_0();
  v8 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23132D8C8()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  OUTLINED_FUNCTION_1_43();
  OUTLINED_FUNCTION_5_29();
  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_18_22();
  v6();
  OUTLINED_FUNCTION_19_20();
  OUTLINED_FUNCTION_26_19();
  OUTLINED_FUNCTION_8_27();
  if (v7)
  {
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 160);
    }
  }

  else
  {
    sub_2311EB450(v0 + 96, &qword_27DD443C0, &unk_23136E000);
  }

  OUTLINED_FUNCTION_14();

  return v9();
}

uint64_t sub_23132D9CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23125D7A0(a1);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return sub_23132C598(v5);
  }

  v6 = v4;
  v14 = MEMORY[0x277D84F90];
  result = sub_2311F57FC(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v5 = v14;
    v9 = *(v2 + 16);
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x23192AD10](v8, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = *(v14 + 16);
      v12 = *(v14 + 24);
      sub_231369EE0();
      if (v11 >= v12 >> 1)
      {
        sub_2311F57FC(v12 > 1, v11 + 1, 1);
      }

      ++v8;
      *(v14 + 16) = v11 + 1;
      v13 = v14 + 16 * v11;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
    }

    while (v6 != v8);
    return sub_23132C598(v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_23132DAE8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43400, &qword_23136C920);

  return sub_231367920();
}

uint64_t sub_23132DBA0(uint64_t a1)
{
  v2 = sub_23125D7A0(a1);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return sub_23132C598(v3);
  }

  v4 = v2;
  v14 = MEMORY[0x277D84F90];
  result = sub_2311F57FC(0, v2 & ~(v2 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v3 = v14;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23192AD10](v6, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = sub_23132DCBC(v7);
      v9 = *(v14 + 16);
      if (v9 >= *(v14 + 24) >> 1)
      {
        OUTLINED_FUNCTION_21_22();
        sub_2311F57FC(v11, v12, v13);
      }

      ++v6;
      *(v14 + 16) = v9 + 1;
      v10 = v14 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v8;
    }

    while (v4 != v6);
    return sub_23132C598(v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_23132DCBC(uint64_t a1)
{
  v3 = sub_231367E10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2313692E0();
  sub_2312110A0(v7, *(v1 + 16));
  if (v14)
  {
    sub_2311D38A8(&v13, v15);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2313707C0;
    *(v8 + 32) = a1;

    v9 = sub_2313685B0();

    v10 = sub_231211108(a1, v9);

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    sub_2311EB450(&v13, &qword_27DD43258, &unk_23136BD00);
    (*(v4 + 8))(v7, v3);
    return MEMORY[0x277D84F90];
  }

  return v11;
}

void sub_23132DEE4()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x277D84F90];
  v35 = *(v1 + 16);
  if (v35)
  {
    v3 = 0;
    v36 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    v34 = *(v0 + 16);
    while (v3 < *(v1 + 16))
    {
      sub_2311CF388(v36 + 40 * v3, v44);
      __swift_project_boxed_opaque_existential_1(v44, v44[3]);
      v5 = sub_2313685B0();
      v6 = *(v5 + 16);
      if (v6)
      {
        v37 = v4;
        sub_2311F57FC(0, v6, 0);
        v7 = v2;
        v10 = sub_231236CA8(v5);
        v11 = 0;
        v12 = v5 + 64;
        v38 = v5 + 72;
        v39 = v6;
        v40 = v5 + 64;
        if ((v10 & 0x8000000000000000) == 0)
        {
          while (v10 < 1 << *(v5 + 32))
          {
            v13 = v10 >> 6;
            if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
            {
              goto LABEL_41;
            }

            if (*(v5 + 36) != v8)
            {
              goto LABEL_42;
            }

            v41 = v9;
            v42 = v11;
            v43 = v8;
            v14 = *(*(v5 + 48) + 8 * v10);
            v15 = *(*(v5 + 56) + 8 * v10);
            v16 = v5;
            v18 = *(v7 + 16);
            v17 = *(v7 + 24);

            sub_231369EE0();
            if (v18 >= v17 >> 1)
            {
              sub_2311F57FC(v17 > 1, v18 + 1, 1);
            }

            *(v7 + 16) = v18 + 1;
            v19 = v7 + 16 * v18;
            *(v19 + 32) = v14;
            *(v19 + 40) = v15;
            v20 = 1 << *(v16 + 32);
            if (v10 >= v20)
            {
              goto LABEL_43;
            }

            v5 = v16;
            v12 = v40;
            v21 = *(v40 + 8 * v13);
            if ((v21 & (1 << v10)) == 0)
            {
              goto LABEL_44;
            }

            if (*(v5 + 36) != v43)
            {
              goto LABEL_45;
            }

            v22 = v21 & (-2 << (v10 & 0x3F));
            if (v22)
            {
              v20 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v23 = v13 << 6;
              v24 = v13 + 1;
              v25 = (v38 + 8 * v13);
              while (v24 < (v20 + 63) >> 6)
              {
                v27 = *v25++;
                v26 = v27;
                v23 += 64;
                ++v24;
                if (v27)
                {
                  sub_2311F0490(v10, v43, v41 & 1);
                  v20 = __clz(__rbit64(v26)) + v23;
                  goto LABEL_21;
                }
              }

              sub_2311F0490(v10, v43, v41 & 1);
            }

LABEL_21:
            v11 = v42 + 1;
            if (v42 + 1 == v39)
            {

              v2 = MEMORY[0x277D84F90];
              v1 = v34;
              v4 = v37;
              goto LABEL_26;
            }

            v9 = 0;
            v8 = *(v5 + 36);
            v10 = v20;
            if (v20 < 0)
            {
              break;
            }
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        break;
      }

      v7 = v2;
LABEL_26:
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      v28 = *(v7 + 16);
      v29 = *(v4 + 16);
      if (__OFADD__(v29, v28))
      {
        goto LABEL_47;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v29 + v28 > *(v4 + 24) >> 1)
      {
        sub_23126DE48();
        v4 = v30;
      }

      if (*(v7 + 16))
      {
        if ((*(v4 + 24) >> 1) - *(v4 + 16) < v28)
        {
          goto LABEL_49;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434D0, &qword_23136CA10);
        swift_arrayInitWithCopy();

        if (v28)
        {
          v31 = *(v4 + 16);
          v32 = __OFADD__(v31, v28);
          v33 = v31 + v28;
          if (v32)
          {
            goto LABEL_50;
          }

          *(v4 + 16) = v33;
        }
      }

      else
      {

        if (v28)
        {
          goto LABEL_48;
        }
      }

      if (++v3 == v35)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_39:
    sub_23132C630(v4);
  }
}

uint64_t sub_23132E308()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 16);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v3 = *(MEMORY[0x277D60D58] + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23132E3B8;

  return MEMORY[0x2821C6C90](v2);
}

uint64_t sub_23132E3B8()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v1 + 24);
  v6 = *v0;
  *(v2 + 32) = v4;

  return MEMORY[0x2822009F8](sub_23132E4B4, 0, 0);
}

uint64_t sub_23132E4B4()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_23132BE88(sub_23132E7F4, v3, v1);

  OUTLINED_FUNCTION_14();

  return v5(v4);
}

uint64_t sub_23132E564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B00, &unk_231377EF0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  sub_23132ECF4(a1, &v16[-v9]);
  v11 = *&v10[*(v7 + 56)];

  v12 = sub_231367E10();
  (*(*(v12 - 8) + 32))(a3, v10, v12);
  v13 = *(a1 + *(v7 + 56));
  v17 = a2;
  v14 = sub_23132C300(sub_23132ED64, v16, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43248, &qword_23136BCF0);
  *(a3 + *(result + 48)) = v14;
  return result;
}

uint64_t sub_23132E6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_2311CF388(a1, a3);
  a3[8] = &type metadata for OwnedSignalSubscriber;
  a3[9] = sub_23132ED84();
  v5 = swift_allocObject();
  a3[5] = v5;
  return sub_2311EB2A0(a2, v5 + 16);
}

uint64_t sub_23132E738(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a3;
  v8 = *a4;
  sub_2311CF388(a1, v14);
  sub_2311CF388(a2, v13);
  v11 = v8;
  v12 = v7;
  sub_2311CF388(a5, v10);
  type metadata accessor for SignalGenerator();
  swift_allocObject();
  sub_231369EE0();
  return sub_2312A6180(v14, v13, &v12, &v11, v10);
}

uint64_t sub_23132E814(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v27 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = *(i - 1);
    v7 = *i;
    v9 = *a3;

    sub_231369EE0();
    v11 = sub_2312161B0(v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_17;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44330, &unk_231372FE0);
        sub_23136A710();
      }
    }

    else
    {
      sub_2312B40EC(v14);
      v16 = *a3;
      v17 = sub_2312161B0(v8);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v11 = v17;
    }

    v19 = *a3;
    if (v15)
    {
      v20 = *(v19[7] + 8 * v11);
      sub_231369EE0();

      v21 = v19[7];
      v22 = *(v21 + 8 * v11);
      *(v21 + 8 * v11) = v20;
    }

    else
    {
      v19[(v11 >> 6) + 8] |= 1 << v11;
      *(v19[6] + 8 * v11) = v8;
      *(v19[7] + 8 * v11) = v7;
      v23 = v19[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v19[2] = v25;
    }

    ++v5;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_2313692F0();
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_23132E9DC(uint64_t a1, char a2, void *a3)
{
  v3 = a3;
  v6 = 0;
  v37 = *(a1 + 16);
  v7 = (a1 + 40);
  while (1)
  {
    if (v37 == v6)
    {
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    v9 = *(v7 - 1);
    v8 = *v7;
    v39 = v7;
    v10 = *v3;

    sub_231369EE0();
    v12 = sub_2312161B0(v9);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_27;
    }

    v16 = v11;
    v38 = v6;
    if (v10[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44330, &unk_231372FE0);
        sub_23136A710();
      }
    }

    else
    {
      sub_2312B40EC(v15);
      v17 = *v3;
      v18 = sub_2312161B0(v9);
      if ((v16 & 1) != (v19 & 1))
      {
        goto LABEL_33;
      }

      v12 = v18;
    }

    v20 = *v3;
    if (v16)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * v12);
      v23 = *(v8 + 16);
      v24 = *(v22 + 16);
      if (__OFADD__(v24, v23))
      {
        goto LABEL_29;
      }

      v25 = *(v21 + 8 * v12);
      sub_231369EE0();
      if (!swift_isUniquelyReferenced_nonNull_native() || (v26 = *(v22 + 24) >> 1, v26 < v24 + v23))
      {
        sub_23126F37C();
        v22 = v27;
        v26 = *(v27 + 24) >> 1;
      }

      v3 = a3;
      if (*(v8 + 16))
      {
        if (v26 - *(v22 + 16) < v23)
        {
          goto LABEL_31;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43400, &qword_23136C920);
        swift_arrayInitWithCopy();

        if (v23)
        {
          v28 = *(v22 + 16);
          v29 = __OFADD__(v28, v23);
          v30 = v28 + v23;
          if (v29)
          {
            goto LABEL_32;
          }

          *(v22 + 16) = v30;
        }
      }

      else
      {

        if (v23)
        {
          goto LABEL_30;
        }
      }

      v33 = v20[7];
      v34 = *(v33 + 8 * v12);
      *(v33 + 8 * v12) = v22;
    }

    else
    {
      v20[(v12 >> 6) + 8] |= 1 << v12;
      *(v20[6] + 8 * v12) = v9;
      *(v20[7] + 8 * v12) = v8;
      v31 = v20[2];
      v29 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v29)
      {
        goto LABEL_28;
      }

      v20[2] = v32;
    }

    v7 = v39 + 2;
    v6 = v38 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_27:
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
  sub_2313692F0();
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_23132EC84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43248, &qword_23136BCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23132ECF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B00, &unk_231377EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23132ED84()
{
  result = qword_280F81C48[0];
  if (!qword_280F81C48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F81C48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_24()
{
  v2 = *(*(v0 + 8) + 8);

  return sub_23136A260();
}

uint64_t *OUTLINED_FUNCTION_17_20()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[10] = v5;
  v0[11] = *(v6 + 8);

  return __swift_allocate_boxed_opaque_existential_1(v0 + 7);
}

uint64_t OUTLINED_FUNCTION_26_19()
{

  return sub_231369430();
}

uint64_t sub_23132EE74()
{
  v1 = *(v0 + 16);
  v2 = sub_23132EED4();
  MEMORY[0x23192A730](v2);

  MEMORY[0x23192A730](125, 0xE100000000000000);
  return 123;
}

unint64_t sub_23132EED4()
{
  sub_23136A650();

  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43298, &qword_231377FE0);
  sub_2311EB3FC();
  v2 = sub_231369E90();
  MEMORY[0x23192A730](v2);

  MEMORY[0x23192A730](125, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t sub_23132EF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x2822009F8](sub_23132EFB8, 0, 0);
}

uint64_t sub_23132EFB8()
{
  v1 = *(*(v0 + 120) + 16);
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_23132F080;
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  return (sub_2311E2838)(v0 + 16, v3, v4);
}

uint64_t sub_23132F080(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v5 = *v1;
  *(v2 + 136) = a1;

  sub_23128DC90(v2 + 16);

  return MEMORY[0x2822009F8](sub_23132F188, 0, 0);
}

uint64_t sub_23132F188()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  sub_231367F70();

  locked = type metadata accessor for LockedSignalExtractor();
  v4 = swift_allocObject();
  sub_2311D38A8((v0 + 56), v4 + 16);
  v2[3] = locked;
  v2[4] = sub_23132F3B4(qword_280F81D98, 255, type metadata accessor for LockedSignalExtractor);
  *v2 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23132F294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_231209C08;

  return sub_23132EF94(a1, a2, a3);
}

uint64_t sub_23132F3B4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_23132F3FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3(a2);
  v10 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23132F508;

  return v10(a1, a2);
}

uint64_t sub_23132F508()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_1();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_14();

  return v6(v0);
}

uint64_t sub_23132F5EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445A8, &qword_231374960);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_23133025C(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_23132F684(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_2311F5E30(0, v1, 0);
    v2 = v15;
    v4 = a1 + 32;
    do
    {
      sub_2311CF324(v4, &v13);
      __swift_project_boxed_opaque_existential_1(&v13, v14);
      v5 = sub_231367F20();
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43438, &unk_231370D40);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_23136B670;
      sub_2311E6A28(&v13, v8 + 32);
      v15 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2311F5E30(v9 > 1, v10 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v10 + 1;
      v11 = (v2 + 24 * v10);
      v11[4] = v5;
      v11[5] = v7;
      v11[6] = v8;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return sub_23132F5EC(v2);
}

uint64_t sub_23132F7D8()
{
  OUTLINED_FUNCTION_8();
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B08, &qword_231378130) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23132F870, 0, 0);
}

uint64_t sub_23132F870()
{
  v1 = v0[3];
  v2 = *(v0[2] + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B10, &qword_231378138);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  v4 = *(MEMORY[0x277D60B28] + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B18, &qword_231378148);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43440, &qword_23136C960);
  *v5 = v0;
  v5[1] = sub_23132F990;
  v10 = v0[3];

  return MEMORY[0x2821C6B08](v2, v10, &unk_231378140, 0, v6, v7, v8, v9);
}

void sub_23132F990(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  if (v1)
  {
  }

  else
  {
    sub_231330518(*(v4 + 24));

    v8 = *(v6 + 8);

    v8(a1);
  }
}

uint64_t sub_23132FAF0()
{
  v1 = *(v0 + 16);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_3(v2);
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_1_2(v6);

  return v8(v7);
}

uint64_t sub_23132FBF8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_1();
  v3 = *(v2 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_14();

  return v6(v0);
}

uint64_t sub_23132FD04()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23132F508;

  return sub_23132F7D8();
}

uint64_t sub_23132FD94()
{
  OUTLINED_FUNCTION_14();
  v3 = v0;
  v1 = sub_231369EE0();

  return v3(v1);
}

uint64_t sub_23132FDF4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231330580;

  return sub_23132FD94();
}

uint64_t sub_23132FEA8()
{
  v1 = *(v0 + 16);
  if (*(v1 + 112) == 1)
  {
    v2 = *(v1 + 160);
    __swift_project_boxed_opaque_existential_1((v1 + 128), *(v1 + 152));
    OUTLINED_FUNCTION_3(v2);
    v11 = v3 + *v3;
    v5 = *(v4 + 4);
    v6 = swift_task_alloc();
    *(v0 + 24) = v6;
    *v6 = v0;
    v7 = OUTLINED_FUNCTION_1_2(v6);

    return v8(v7);
  }

  else
  {
    if (*(v1 + 120))
    {
      sub_231369EE0();
    }

    OUTLINED_FUNCTION_14();

    return v10();
  }
}

uint64_t sub_231330008()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 32) = v5;

  return MEMORY[0x2822009F8](sub_231330114, v2, 0);
}

uint64_t sub_231330114()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  *(v1 + 120) = *(v0 + 32);

  *(v1 + 112) = 0;
  if (*(*(v0 + 16) + 120))
  {
    sub_231369EE0();
  }

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_2313301CC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231330580;

  return sub_23132FE88();
}

uint64_t sub_23133025C(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v36 = *(a1 + 16);
  v6 = (a1 + 48);
  while (1)
  {
    if (v36 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(v6 - 2);
    v8 = *(v6 - 1);
    v38 = v6;
    v9 = *v6;
    v10 = *a3;
    sub_231369EE0();
    sub_231369EE0();
    v12 = sub_231215F6C(v7, v8);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_27;
    }

    v15 = v11;
    if (v10[3] >= v13 + v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44680, &qword_231374DF8);
        sub_23136A710();
      }
    }

    else
    {
      sub_2312B5CA0();
      v16 = *a3;
      v17 = sub_231215F6C(v7, v8);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_33;
      }

      v12 = v17;
    }

    v19 = *a3;
    if (v15)
    {
      v20 = v19[7];
      v21 = *(v20 + 8 * v12);
      v22 = *(v9 + 16);
      v23 = *(v21 + 16);
      if (__OFADD__(v23, v22))
      {
        goto LABEL_29;
      }

      v24 = *(v20 + 8 * v12);
      sub_231369EE0();
      if (!swift_isUniquelyReferenced_nonNull_native() || (v25 = *(v21 + 24) >> 1, v25 < v23 + v22))
      {
        sub_23126E7FC();
        v21 = v26;
        v25 = *(v26 + 24) >> 1;
      }

      if (*(v9 + 16))
      {
        if (v25 - *(v21 + 16) < v22)
        {
          goto LABEL_31;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43440, &qword_23136C960);
        swift_arrayInitWithCopy();

        if (v22)
        {
          v27 = *(v21 + 16);
          v28 = __OFADD__(v27, v22);
          v29 = v27 + v22;
          if (v28)
          {
            goto LABEL_32;
          }

          *(v21 + 16) = v29;
        }
      }

      else
      {

        if (v22)
        {
          goto LABEL_30;
        }
      }

      v33 = v19[7];
      v34 = *(v33 + 8 * v12);
      *(v33 + 8 * v12) = v21;
    }

    else
    {
      v19[(v12 >> 6) + 8] |= 1 << v12;
      v30 = (v19[6] + 16 * v12);
      *v30 = v7;
      v30[1] = v8;
      *(v19[7] + 8 * v12) = v9;
      v31 = v19[2];
      v28 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v28)
      {
        goto LABEL_28;
      }

      v19[2] = v32;
    }

    v6 = v38 + 3;
    ++v5;
    a2 = 1;
  }

  __break(1u);
LABEL_27:
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
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_231330518(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B08, &qword_231378130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2313305A4()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43010, qword_231374B70);
  v2 = swift_allocBox();
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_2313677D0();
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_23133067C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23120B320;

  return sub_231330584(v4, a2);
}

uint64_t RankedCandidateSuggestion.init(rankInfo:result:policyResult:action:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_231367300();
  OUTLINED_FUNCTION_7_0(v10);
  (*(v11 + 32))(a5, a1);
  v12 = type metadata accessor for RankedCandidateSuggestion();
  sub_2311E6A28(a2, a5 + v12[5]);
  sub_23132AA20(a3, a5 + v12[6]);
  v13 = v12[7];
  v14 = sub_231369050();
  OUTLINED_FUNCTION_7_0(v14);
  v16 = *(v15 + 32);

  return v16(a5 + v13, a4);
}

uint64_t type metadata accessor for RankedCandidateSuggestion()
{
  result = qword_280F80090;
  if (!qword_280F80090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RankedCandidateSuggestion.init(rankInfo:result:policyResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_23133085C, 0, 0);
}

uint64_t sub_23133085C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = v18[4];
  v19 = v18[5];
  v21 = v18[2];
  v22 = v18[3];
  v23 = sub_231367300();
  v18[6] = v23;
  OUTLINED_FUNCTION_46_0(v23);
  v18[7] = v24;
  (*(v24 + 16))(v21, v22);
  v25 = type metadata accessor for RankedCandidateSuggestion();
  sub_2311CF324(v20, v21 + v25[5]);
  sub_23120B41C(v19, v21 + v25[6]);
  v26 = v20[3];
  v27 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v26);
  v28 = v25[7];
  v29 = *(MEMORY[0x277D60F68] + 4);
  v35 = swift_task_alloc();
  v18[8] = v35;
  *v35 = v18;
  v35[1] = sub_2313309AC;

  return MEMORY[0x2821C6E60](v21 + v28, v26, v27, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2313309AC()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_231330AA8, 0, 0);
}

uint64_t sub_231330AA8()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[3];
  sub_23120B48C(v0[5]);
  (*(v2 + 8))(v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v5 = v0[1];

  return v5();
}

void sub_231330B60()
{
  sub_231367300();
  if (v0 <= 0x3F)
  {
    sub_231247358();
    if (v1 <= 0x3F)
    {
      sub_231330C14();
      if (v2 <= 0x3F)
      {
        sub_231369050();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_231330C14()
{
  if (!qword_280F7CB38)
  {
    sub_231366E80();
    v0 = sub_23136A4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280F7CB38);
    }
  }
}

uint64_t sub_231330C6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2313698C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(v14, 0xD000000000000014, 0x8000000231381C80, a1, a2);
  if (v14[3])
  {
    sub_231369700();
    if (swift_dynamicCast())
    {
      return v13[1];
    }
  }

  else
  {
    sub_23128F7CC(v14);
  }

  sub_2313690B0();
  v10 = sub_2313698A0();
  v11 = sub_23136A3A0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2311CB000, v10, v11, "No FeatureSetProvider in data provider, returning empty feature set provider", v12, 2u);
    MEMORY[0x23192B930](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  sub_231369700();
  swift_allocObject();
  return sub_2313696F0();
}

uint64_t sub_231330E50@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  a1[3] = sub_231369700();
  *a1 = v3;
}

uint64_t sub_231330E98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FF0, &unk_231370EA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23136B670;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000231381C80;
  v2 = *(v0 + 16);
  *(inited + 72) = sub_231369700();
  *(inited + 48) = v2;

  return sub_231369EC0();
}

uint64_t SiriSuggestionsIntelligence.IntelligenceFeatureSetService.createDataProvider(candidates:generationId:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = *(MEMORY[0x277D60790] + 4);
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_231331040;

  return MEMORY[0x2821C6420](a2, a3, a4);
}

uint64_t sub_231331040(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_231331140, 0, 0);
}

uint64_t sub_231331140()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for MLFeatureDataProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v2[3] = v3;
  v2[4] = &off_2845F6E70;
  *v2 = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_2313311F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_231209C08;

  return SiriSuggestionsIntelligence.IntelligenceFeatureSetService.createDataProvider(candidates:generationId:environment:)(a1, a2, a3, a4);
}

uint64_t sub_2313312B8()
{
  OUTLINED_FUNCTION_8();
  v1[280] = v0;
  v1[279] = v2;
  v1[273] = v3;
  v1[267] = v4;
  v1[261] = v5;
  v6 = sub_231369050();
  v1[281] = v6;
  v7 = *(v6 - 8);
  v1[282] = v7;
  v8 = *(v7 + 64) + 15;
  v1[283] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23133137C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18[261];
  v20 = v19[3];
  v21 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v22 = *(MEMORY[0x277D60F68] + 4);
  v28 = swift_task_alloc();
  v18[284] = v28;
  *v28 = v18;
  v28[1] = sub_231331438;
  v29 = v18[283];

  return MEMORY[0x2821C6E60](v29, v20, v21, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_231331438()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 2272);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23133151C()
{
  v1 = v0[283];
  v2 = v0[280];
  v3 = v0[279];
  v4 = v0[273];
  v5 = v0[267];
  v6 = v0[261];
  v7 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  OUTLINED_FUNCTION_10_31();
  v14 = sub_231368320();
  v15 = v8;
  sub_231369EE0();
  MEMORY[0x23192A730](35, 0xE100000000000000);
  v9 = sub_231369040();
  MEMORY[0x23192A730](v9);

  v0[285] = v14;
  v0[286] = v15;
  v10 = swift_task_alloc();
  v0[287] = v10;
  v10[2] = v2;
  v10[3] = v6;
  v10[4] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44820, &qword_231376298);
  swift_asyncLet_begin();
  v11 = swift_task_alloc();
  v0[288] = v11;
  v11[2] = v2;
  v11[3] = v6;
  v11[4] = v1;
  v11[5] = v5;
  v11[6] = v4;
  v11[7] = v3;
  swift_asyncLet_begin();
  v12 = swift_task_alloc();
  v0[289] = v12;
  v12[2] = v2;
  v12[3] = v6;
  v12[4] = v1;
  v12[5] = v5;
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 2, v0 + 247, sub_231331704, v0 + 242);
}

uint64_t sub_231331704()
{
  OUTLINED_FUNCTION_8();
  *(v1 + 2320) = v0;
  if (v0)
  {
    v2 = sub_231331ACC;
  }

  else
  {
    v3 = *(v1 + 2288);

    v2 = sub_231331780;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_231331780()
{
  OUTLINED_FUNCTION_8();
  if (*(v0 + 1984) == 1)
  {
    v1 = (__swift_project_boxed_opaque_existential_1((*(v0 + 2240) + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_config), *(*(v0 + 2240) + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_config + 24)) + 7);
  }

  else
  {
    v1 = (v0 + 1976);
  }

  v2 = OUTLINED_FUNCTION_3_36(*v1);

  return MEMORY[0x282200928](v2, v3, v4, v5);
}

uint64_t sub_231331838()
{
  v1 = *(v0 + 2336);
  v2 = *(v0 + 2328);
  v3 = *(v0 + 2040);
  v4 = (*(v0 + 2240) + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_config);
  v5 = *(__swift_project_boxed_opaque_existential_1(v4, v4[3]) + 4);
  v6 = log(v2) * v5;
  v7 = *(__swift_project_boxed_opaque_existential_1(v4, v4[3]) + 5);
  v8 = v6 + log(v1) * v7;
  v9 = *(__swift_project_boxed_opaque_existential_1(v4, v4[3]) + 6);
  v10 = log(v3);
  *(v0 + 2344) = exp(v8 + v10 * v9);

  return MEMORY[0x282200920](v0 + 1296, v0 + 2040, sub_23133192C, v0 + 2096);
}

uint64_t sub_231331940()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 2312);

  return MEMORY[0x282200920](v0 + 656, v0 + 1992, sub_2313319A8, v0 + 2144);
}

uint64_t sub_2313319BC()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 2304);

  return MEMORY[0x282200920](v0 + 16, v0 + 1976, sub_231331A24, v0 + 2192);
}

uint64_t sub_231331A38()
{
  v1 = v0[287];
  v2 = v0[283];
  v3 = v0[282];
  v4 = v0[281];

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_56_0();
  v6.n128_u64[0] = v0[293];

  return v5(v6);
}

uint64_t sub_231331ACC()
{
  v24 = v0;
  if (qword_280F7C8A0 != -1)
  {
    swift_once();
  }

  v1 = v0[290];
  v2 = v0[286];
  v3 = sub_2313698C0();
  __swift_project_value_buffer(v3, qword_280F8E510);
  v4 = v1;
  sub_231369EE0();
  v5 = sub_2313698A0();
  v6 = sub_23136A3B0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[290];
  v9 = v0[286];
  if (v7)
  {
    v10 = v0[285];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 138412546;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v15;
    *v12 = v15;
    *(v11 + 12) = 2080;
    v16 = sub_2311CFD58(v10, v9, &v23);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_2311CB000, v5, v6, "Unable to get engagement score: %@ for %s", v11, 0x16u);
    sub_2312777C0(v12, &qword_27DD433B0, &unk_23136EDC0);
    MEMORY[0x23192B930](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x23192B930](v13, -1, -1);
    MEMORY[0x23192B930](v11, -1, -1);
  }

  else
  {
  }

  v17 = __swift_project_boxed_opaque_existential_1((v0[280] + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_config), *(v0[280] + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_config + 24));
  v18 = OUTLINED_FUNCTION_3_36(v17[7]);

  return MEMORY[0x282200928](v18, v19, v20, v21);
}

uint64_t sub_231331D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_231331D2C, 0, 0);
}

uint64_t sub_231331D2C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v0[3] + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_engagementEstimator);
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v5 = OUTLINED_FUNCTION_10_31();
  sub_231330C6C(v5, v6);
  v7 = sub_231369810();
  LOBYTE(v2) = v8;

  v9 = v0[2];
  *v9 = v7;
  *(v9 + 8) = v2 & 1;
  OUTLINED_FUNCTION_56_0();

  return v10();
}

uint64_t sub_231331E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v13 = swift_task_alloc();
  *(v7 + 24) = v13;
  *v13 = v7;
  v13[1] = sub_231331ED4;

  return sub_231331FEC(a3, a4, a5, a6, a7);
}

uint64_t sub_231331ED4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v5 + 32) = v6;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231331FBC()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_56_0();
  return v1();
}

uint64_t sub_231331FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v8 = sub_231367F40();
  v6[15] = v8;
  v9 = *(v8 - 8);
  v6[16] = v9;
  v10 = *(v9 + 64) + 15;
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2313320EC, 0, 0);
}

uint64_t sub_2313320EC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = sub_2312541AC();
  if ((v5 & 1) == 0)
  {
    v10 = v4;
LABEL_11:
    v31 = v0[17];
    v32 = v0[14];

    OUTLINED_FUNCTION_56_0();
    v34.n128_u64[0] = v10;

    return v33(v34);
  }

  v6 = v0[14];
  v7 = v0[8];
  v8 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_2313682B0();
  v9 = sub_2313676B0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
  {
    sub_2312777C0(v0[14], &qword_27DD432D8, &unk_23136BED0);
LABEL_10:
    v10 = 0x3F847AE147AE147BLL;
    goto LABEL_11;
  }

  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[14];
  v14 = v0[15];
  sub_231367680();
  (*(*(v9 - 8) + 8))(v13, v9);
  if ((*(v12 + 88))(v11, v14) != *MEMORY[0x277D60D38])
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    goto LABEL_10;
  }

  v15 = v0[17];
  v16 = v0[13];
  v17 = v0[8];
  (*(v0[16] + 96))(v15, v0[15]);
  v18 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44078, &qword_231370F80) + 48));
  v19 = sub_231369330();
  OUTLINED_FUNCTION_0_2(v19);
  (*(v20 + 8))(v15);
  v21 = (v16 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_normalizer);
  v22 = *(v16 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_normalizer + 24);
  v23 = *(v16 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_normalizer + 32);
  __swift_project_boxed_opaque_existential_1(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434E0, &unk_23136CA20);
  v24 = swift_allocObject();
  v0[18] = v24;
  *(v24 + 16) = xmmword_23136B670;
  sub_2311CF324(v17, v24 + 32);
  *(v24 + 72) = v18;
  v25 = *(v23 + 8);
  v35 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  v0[19] = v27;
  *v27 = v0;
  v27[1] = sub_23133245C;
  v28 = v0[11];
  v29 = v0[12];

  return v35(v24, v28, v29, v22, v23);
}

uint64_t sub_23133245C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 152);
  v3 = *(v1 + 144);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v7 + 160) = v6;

  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231332564()
{
  OUTLINED_FUNCTION_8();
  sub_231217EA0(*(v0 + 160), (v0 + 16));

  if (*(v0 + 40))
  {
    v1 = *(v0 + 56);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    sub_2312777C0(v0 + 16, &qword_27DD43FA0, &qword_231370E30);
    v1 = 0x3F847AE147AE147BLL;
  }

  v2 = *(v0 + 136);
  v3 = *(v0 + 112);

  OUTLINED_FUNCTION_56_0();
  v5.n128_u64[0] = v1;

  return v4(v5);
}

uint64_t sub_23133261C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_231332644, 0, 0);
}

uint64_t sub_231332644()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  *v2 = sub_2313326AC(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  OUTLINED_FUNCTION_56_0();

  return v3();
}

long double sub_2313326AC(void *a1, uint64_t a2, void *a3)
{
  v83 = a1;
  v80 = sub_231369050();
  v79 = *(v80 - 8);
  v7 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_231368260();
  v9 = *(v98 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v98);
  v97 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v96 = &v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v81 = &v75 - v16;
  v82 = sub_231367D80();
  v76 = *(v82 - 8);
  v17 = *(v76 + 64);
  MEMORY[0x28223BE20](v82);
  v75 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_231368090();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v86 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v75 - v24;
  v84 = v3;
  v26 = *(v3 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_clock + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_clock), *(v3 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_clock + 24));
  sub_231368F20();
  v28 = v27;
  v29 = a3[3];
  v30 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v29);
  v77 = a2;
  v31 = sub_231254598(a2, v29, v30);
  v32 = 0;
  v99 = *(v31 + 16);
  v94 = (v20 + 16);
  v93 = *MEMORY[0x277D60E38];
  v91 = (v9 + 8);
  v92 = (v9 + 104);
  v88 = (v20 + 8);
  v95 = v20;
  v85 = (v20 + 32);
  v87 = MEMORY[0x277D84F90];
  v90 = v31;
  while (v99 != v32)
  {
    if (v32 >= *(v31 + 16))
    {
      __break(1u);
LABEL_20:
      swift_once();
      goto LABEL_13;
    }

    v89 = (*(v95 + 80) + 32) & ~*(v95 + 80);
    v33 = *(v95 + 72);
    (*(v95 + 16))(v25, v31 + v89 + v33 * v32, v19);
    v34 = v19;
    v35 = v96;
    sub_231368060();
    v36 = v97;
    v37 = v25;
    v38 = v98;
    (*v92)(v97, v93, v98);
    v39 = sub_231368240();
    v20 = v91;
    v40 = *v91;
    (*v91)(v36, v38);
    v40(v35, v38);
    if (v39)
    {
      v41 = v33;
      v42 = v89;
      v43 = *v85;
      (*v85)(v86, v37, v34);
      v44 = v87;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100 = v44;
      v19 = v34;
      v25 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = *(v44 + 16);
        sub_2311F5BD4();
        v44 = v100;
      }

      v31 = v90;
      v47 = v41;
      v20 = *(v44 + 16);
      if (v20 >= *(v44 + 24) >> 1)
      {
        sub_2311F5BD4();
        v44 = v100;
      }

      ++v32;
      *(v44 + 16) = v20 + 1;
      v87 = v44;
      v43((v44 + v42 + v20 * v47), v86, v19);
    }

    else
    {
      (*v88)(v37, v34);
      ++v32;
      v31 = v90;
      v19 = v34;
      v25 = v37;
    }
  }

  v20 = v84 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_config;
  v48 = __swift_project_boxed_opaque_existential_1((v84 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_config), *(v84 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_config + 24));
  v4 = sub_231332F68(v87, *v48, v28);

  v49 = v83[4];
  __swift_project_boxed_opaque_existential_1(v83, v83[3]);
  v50 = v81;
  sub_2313682C0();
  v51 = v82;
  if (__swift_getEnumTagSinglePayload(v50, 1, v82) != 1)
  {
    v65 = v76;
    v66 = v75;
    v67 = (*(v76 + 32))(v75, v50, v51);
    MEMORY[0x28223BE20](v67);
    *(&v75 - 2) = v66;
    sub_231254C78(sub_231333938, (&v75 - 4), v31);
    v69 = v68;
    v70 = __swift_project_boxed_opaque_existential_1(v20, *(v20 + 24));
    v71 = sub_231332F68(v69, v70[1], v28);

    (*(v65 + 8))(v66, v51);
    goto LABEL_18;
  }

  sub_2312777C0(v50, &qword_27DD42F18, &unk_23136B810);
  if (qword_280F7C8A0 != -1)
  {
    goto LABEL_20;
  }

LABEL_13:
  v52 = sub_2313698C0();
  __swift_project_value_buffer(v52, qword_280F8E510);
  v53 = v79;
  v54 = v78;
  v55 = v80;
  (*(v79 + 16))(v78, v77, v80);
  v56 = sub_2313698A0();
  v57 = sub_23136A3B0();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v100 = v59;
    *v58 = 136315138;
    v60 = sub_231369040();
    v61 = v54;
    v63 = v62;
    (*(v53 + 8))(v61, v55);
    v64 = sub_2311CFD58(v60, v63, &v100);

    *(v58 + 4) = v64;
    _os_log_impl(&dword_2311CB000, v56, v57, "EngagementScorer:: Unable to get deliveryVehicle from candidate: %s. Impression component will be zero", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    MEMORY[0x23192B930](v59, -1, -1);
    MEMORY[0x23192B930](v58, -1, -1);
  }

  else
  {

    (*(v53 + 8))(v54, v55);
  }

  v71 = 0.0;
LABEL_18:
  v72 = v71 * *(__swift_project_boxed_opaque_existential_1(v20, *(v20 + 24)) + 2);
  v73 = __swift_project_boxed_opaque_existential_1(v20, *(v20 + 24));
  return 1.0 / (exp(v72 - v4 * v73[3]) + 1.0);
}

double sub_231332F68(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_231368090();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0.0;
  }

  v12 = a2;
  v15 = *(v7 + 16);
  v14 = v7 + 16;
  v13 = v15;
  v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v17 = *(v14 + 56);
  v18 = 0.693147181 / v12;
  v19 = 0.0;
  do
  {
    v13(v10, v16, v6);
    sub_231368050();
    v21 = (a3 - v20) / 3600.0;
    if (v21 < 0.0)
    {
      v21 = 0.0;
    }

    v22 = exp(v18 * v21);
    (*(v14 - 8))(v10, v6);
    v19 = v19 + 1.0 / v22;
    v16 += v17;
    --v11;
  }

  while (v11);
  return v19;
}

uint64_t sub_2313330FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_231368260();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9;
  sub_231368060();
  v11 = sub_231367D80();
  (*(*(v11 - 8) + 16))(v7, a2, v11);
  (*(v4 + 104))(v7, *MEMORY[0x277D60E30], v3);
  v12 = sub_231368240();
  v13 = *(v4 + 8);
  v13(v7, v3);
  v13(v10, v3);
  return v12 & 1;
}

uint64_t sub_231333288()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_objective;
  v2 = sub_2313694E0();
  OUTLINED_FUNCTION_0_2(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_normalizer));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_clock));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_config));
  v4 = *(v0 + OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_engagementEstimator);

  return v0;
}

uint64_t sub_23133331C()
{
  sub_231333288();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EngagementScorer()
{
  result = qword_280F84060;
  if (!qword_280F84060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2313333C8()
{
  result = sub_2313694E0();
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

uint64_t sub_231333514@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15SiriSuggestions16EngagementScorer_objective;
  v5 = sub_2313694E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_231333590()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231333650;

  return sub_2313312B8();
}

uint64_t sub_231333650()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  OUTLINED_FUNCTION_56_0();
  v8.n128_u64[0] = v2;

  return v7(v8);
}

uint64_t sub_231333738()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_33(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_7_2(v5);

  return sub_231331D08(v7, v8, v9, v3);
}

uint64_t sub_2313337D4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_33(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_7_2(v8);

  return sub_231331E04(v10, v11, v12, v3, v4, v6, v5);
}

uint64_t sub_231333890()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_33(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_7_2(v6);

  return sub_23133261C(v8, v9, v10, v4, v3);
}

uint64_t sub_231333958(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2313698C0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231333A30, v1, 0);
}

uint64_t sub_231333A30()
{
  if (v0[2] == 1)
  {
    v1 = v0[8];
    sub_231369100();
    v2 = sub_2313698A0();
    v3 = sub_23136A3A0();
    if (OUTLINED_FUNCTION_18_0(v3))
    {
      *OUTLINED_FUNCTION_63() = 0;
      OUTLINED_FUNCTION_57(&dword_2311CB000, v4, v5, "LocaleChangeCacheUpdater GMStatusChanged -> Available. Update morphun tokenizer if needed");
      OUTLINED_FUNCTION_29();
    }

    v6 = v0[8];
    v7 = v0[4];
    v8 = v0[5];
    v9 = v0[3];

    v10 = *(v8 + 8);
    v11 = OUTLINED_FUNCTION_28_0();
    v10(v11);
    v12 = v9[28];
    __swift_project_boxed_opaque_existential_1(v9 + 24, v9[27]);
    OUTLINED_FUNCTION_28_0();
    if (sub_2313695B0())
    {
      v13 = v0[7];
      sub_231369100();
      v14 = sub_2313698A0();
      v15 = sub_23136A3A0();
      v16 = OUTLINED_FUNCTION_18_0(v15);
      v17 = v0[7];
      v18 = v0[4];
      v19 = v0[5];
      if (v16)
      {
        *OUTLINED_FUNCTION_63() = 0;
        OUTLINED_FUNCTION_16_17(&dword_2311CB000, v20, v21, "Asset already registered. Not updating morphun tokenizer");
        OUTLINED_FUNCTION_29();
      }

      v22 = OUTLINED_FUNCTION_28_0();
      v10(v22);
    }

    else
    {
      v35 = v0[3];
      v36 = v9[28];
      __swift_project_boxed_opaque_existential_1(v9 + 24, v9[27]);
      v37 = v35[33];
      __swift_project_boxed_opaque_existential_1(v35 + 29, v35[32]);
      sub_231369580();
      sub_2313695A0();
    }
  }

  else
  {
    v23 = v0[6];
    sub_231369100();
    v24 = sub_2313698A0();
    v25 = sub_23136A3A0();
    v26 = OUTLINED_FUNCTION_18_0(v25);
    v28 = v0[5];
    v27 = v0[6];
    v29 = v0[4];
    if (v26)
    {
      *OUTLINED_FUNCTION_63() = 0;
      OUTLINED_FUNCTION_16_17(&dword_2311CB000, v30, v31, "LocaleChangeCacheUpdater OnGMStatusChange. SAE is not enabled -> not relevant to us. Returning.");
      OUTLINED_FUNCTION_29();
    }

    v32 = *(v28 + 8);
    v33 = OUTLINED_FUNCTION_28_0();
    v34(v33);
  }

  v39 = v0[7];
  v38 = v0[8];
  v40 = v0[6];

  v41 = v0[1];

  return v41();
}

uint64_t sub_231333C8C()
{
  v1[2] = v0;
  v2 = sub_2313698C0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231333D4C, v0, 0);
}