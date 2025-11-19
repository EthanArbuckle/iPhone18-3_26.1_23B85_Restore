uint64_t sub_269758420(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 424);
  v6 = *(*v2 + 416);
  v7 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v4 + 432) = v1;

  if (v1)
  {
    v9 = sub_269758724;
  }

  else
  {
    *(v4 + 440) = a1;
    v9 = sub_269758564;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_269758564()
{
  v2 = *(v1 + 408);
  sub_269759420(*(v1 + 440), *(v1 + 400));

  v3 = OUTLINED_FUNCTION_4_21();
  v4(v3);
  v5 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_21_12();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_12_19(&dword_269684000, v7, v8, "Finished creating intent from parse");
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_19_9();
  v9 = OUTLINED_FUNCTION_18_13();
  v0(v9);

  v10 = OUTLINED_FUNCTION_9_18();

  return v11(v10);
}

uint64_t sub_269758724()
{
  v1 = *(v0 + 384);
  (*(v0 + 376))(*(v0 + 328), *(v0 + 368), *(v0 + 304));
  v2 = sub_2698548B4();
  v3 = sub_269854F24();
  v4 = OUTLINED_FUNCTION_19_4(v3);
  v5 = *(v0 + 432);
  v6 = *(v0 + 408);
  v7 = *(v0 + 392);
  v8 = *(v0 + 328);
  v9 = *(v0 + 304);
  v10 = *(v0 + 312);
  if (v4)
  {
    v11 = OUTLINED_FUNCTION_16_2();
    *v11 = 0;
    _os_log_impl(&dword_269684000, v2, v3, "Error fetching local live service result, proceeding without them", v11, 2u);
    OUTLINED_FUNCTION_10();
  }

  v7(v8, v9);
  v12 = OUTLINED_FUNCTION_4_21();
  v13(v12);
  v14 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_21_12();
  if (os_log_type_enabled(v14, v15))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_12_19(&dword_269684000, v16, v17, "Finished creating intent from parse");
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_19_9();
  v18 = OUTLINED_FUNCTION_18_13();
  v9(v18);

  v19 = OUTLINED_FUNCTION_9_18();

  return v20(v19);
}

uint64_t sub_269758978()
{
  sub_269759494(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  return v0;
}

uint64_t sub_2697589B0()
{
  sub_269758978();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_269758A20(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_269758AC8;

  return sub_269756E18(a1, a2);
}

uint64_t sub_269758AC8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_269758BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PlayLiveServiceFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_269758C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5BF48] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2697594E8;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_269758CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for PlayLiveServiceFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2697594E8;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_269758D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for PlayLiveServiceFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2697594E8;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_269758E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for PlayLiveServiceFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2697594E8;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_269758F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for PlayLiveServiceFlowStrategy();
  *v13 = v6;
  v13[1] = sub_269759010;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_269759010()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_2697590FC(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = sub_269755CB0(a1, a2);
  v6 = *(v3 + 8);

  return v6(v5);
}

uint64_t sub_26975915C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for PlayLiveServiceFlowStrategy();
  *v13 = v6;
  v13[1] = sub_2697594E8;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2697592A0(uint64_t a1)
{
  result = sub_269759318(&qword_280324070);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269759318(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlayLiveServiceFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269759358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3_14(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

void sub_2697593BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setServiceNameSearch_];
}

void sub_269759420(uint64_t a1, void *a2)
{
  type metadata accessor for LiveService();
  v3 = sub_269854CA4();

  [a2 setLocalServiceResults_];
}

void OUTLINED_FUNCTION_1_22()
{
  v1 = v0[49];
  v3 = v0[44];
  v2 = v0[45];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[40];
  v7 = v0[38];
  v8 = v0[39];
  v9 = v0[41];
  v10 = v0[37];
  v11 = v0[34];
  v12 = v0[31];
  v13 = v0[30];
  v14 = v0[27];
  v15 = v0[26];
  v16 = v0[25];
  v17 = v0[24];
  v18 = v0[23];
  v19 = v0[20];
  v20 = v0[19];
  v21 = v0[18];
  v22 = v0[17];
  v23 = v0[16];
  v24 = v0[15];
}

uint64_t OUTLINED_FUNCTION_4_21()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v4 = v0[38];
  return v0[40];
}

uint64_t OUTLINED_FUNCTION_5_24()
{

  return sub_2698548D4();
}

uint64_t OUTLINED_FUNCTION_6_25@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a3;
  *(a2 + 24) = 3;
  *(v3 - 96) = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_7_28(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(v2, a2);
  v5 = *(v3 + 16);
  return result;
}

void OUTLINED_FUNCTION_12_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

void OUTLINED_FUNCTION_13_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_19_9()
{
  v4 = v0[13];
  *(v2 - 120) = v0[14];
  *(v2 - 112) = v4;
  v5 = v0[9];
  *(v2 - 104) = v0[10];
  *(v2 - 96) = v5;
  v6 = v0[7];
  *(v2 - 88) = v0[8];
  *(v2 - 80) = v6;
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_11(uint64_t a1, uint64_t a2)
{
  *(v2 - 88) = a2;

  return sub_269852BE4();
}

void OUTLINED_FUNCTION_34_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id sub_269759764()
{
  if (qword_280322498 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D6F8;
  qword_28033D708 = qword_28033D6F8;

  return v1;
}

void *sub_2697597C8(uint64_t a1)
{
  v38 = a1;
  sub_269852C84();
  sub_2698538C4();
  v1 = type metadata accessor for BaseDialogProvider();
  v2 = swift_allocObject();
  sub_2698546A4();
  v3 = sub_269854694();
  v4 = type metadata accessor for MoveToGroupDevicesProvider();
  v5 = swift_allocObject();
  sub_269854474();
  v6 = sub_269853264();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_269853254();
  v57[3] = v1;
  v57[4] = &off_287A3DBA0;
  v57[0] = v2;
  v55 = sub_269854674();
  v56 = MEMORY[0x277D61F08];
  *&v54 = v3;
  v52 = &type metadata for CoreAnalyticsService;
  v53 = &xmmword_287A41610;
  v49 = v4;
  v50 = &off_287A40140;
  v48[0] = v5;
  v46 = v6;
  v47 = MEMORY[0x277D5BD58];
  *&v45 = v9;
  v43 = &type metadata for EncryptionProvider;
  v44 = &protocol witness table for EncryptionProvider;
  type metadata accessor for PlayLiveServiceHandleIntentStrategy();
  v10 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v57, v1);
  OUTLINED_FUNCTION_3_20();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = *(v12 + 16);
  v37(&v36 - v16);
  __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
  OUTLINED_FUNCTION_3_20();
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = (&v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *(&v36 - v16);
  v24 = *v21;
  v41[3] = v1;
  v41[4] = &off_287A3DBA0;
  v41[0] = v23;
  v10[31] = &type metadata for CoreAnalyticsService;
  v10[32] = &xmmword_287A41610;
  v10[36] = v4;
  v10[37] = &off_287A40140;
  v10[33] = v24;
  sub_2696A73F8(v60, (v10 + 2));
  sub_2696A73F8(v59, (v10 + 7));
  sub_2696A73F8(v41, (v10 + 12));
  sub_2696A73F8(v41, v40);
  __swift_mutable_project_boxed_opaque_existential_1(v40, v40[3]);
  OUTLINED_FUNCTION_3_20();
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v29 = (&v36 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = *v29;
  v39[3] = v1;
  v39[4] = &off_287A3DBA0;
  v39[0] = v31;
  type metadata accessor for VideoLiveTuneInDialogProvider();
  v32 = swift_allocObject();
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v39, v1);
  MEMORY[0x28223BE20](v33);
  v37(&v36 - v16);
  v34 = *(&v36 - v16);
  v32[5] = v1;
  v32[6] = &off_287A3DBA0;
  v32[2] = v34;
  __swift_destroy_boxed_opaque_existential_0(v39);
  __swift_destroy_boxed_opaque_existential_0(v59);
  __swift_destroy_boxed_opaque_existential_0(v41);
  __swift_destroy_boxed_opaque_existential_0(v40);
  v10[17] = v32;
  v10[53] = v38;
  sub_26968E5D4(v60, (v10 + 18));
  sub_26968E5D4(&v54, (v10 + 23));
  sub_26968E5D4(&v58, (v10 + 38));
  sub_26968E5D4(&v45, (v10 + 43));
  sub_26968E5D4(&v42, (v10 + 48));
  __swift_destroy_boxed_opaque_existential_0(v48);
  __swift_destroy_boxed_opaque_existential_0(v51);
  __swift_destroy_boxed_opaque_existential_0(v57);
  return v10;
}

uint64_t sub_269759C4C()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  OUTLINED_FUNCTION_8_9(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_4_7();
  v7 = sub_269851C74();
  v1[6] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_4_7();
  v11 = sub_2698548D4();
  v1[9] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[10] = v12;
  v14 = *(v13 + 64);
  v1[11] = OUTLINED_FUNCTION_4_7();
  v15 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_269759D6C()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v0[10];
  v1 = v0[11];
  __swift_project_value_buffer(v0[9], qword_28033D910);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_12_11();
  v5(v4);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_269684000, v6, v7, "PlayLiveServiceHandleIntentFlowStrategy.makeIntentHandledResponse() called", v8, 2u);
    OUTLINED_FUNCTION_10();
  }

  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  v12 = v0[3];

  v13 = *(v10 + 8);
  v14 = OUTLINED_FUNCTION_22_3();
  v15(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240A0, &unk_26985EB80);
  v16 = sub_2698534E4();
  sub_2696D1E04(v16, &selRef_punchoutUrl);
  if (!v17)
  {
    goto LABEL_15;
  }

  v19 = v0[5];
  v18 = v0[6];
  sub_269851C64();

  if (__swift_getEnumTagSinglePayload(v19, 1, v18) == 1)
  {
    sub_269698048(v0[5], &qword_280323030, &qword_26985BAE0);
LABEL_15:
    sub_2696BAE9C();
    v30 = swift_allocError();
    *v31 = 0xD000000000000017;
    v31[1] = 0x800000026987E890;
    OUTLINED_FUNCTION_31_9(v30, v31);
    OUTLINED_FUNCTION_30_9();

    OUTLINED_FUNCTION_7_7();

    return v32();
  }

  v20 = v0[3];
  (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
  v21 = sub_269853504();
  v22 = [v21 liveService];

  if (!v22 || (v23 = [v22 isInstalled], v22, !v23))
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
    goto LABEL_15;
  }

  v24 = v0[4];
  [v23 BOOLValue];

  v25 = *(v24 + 424);
  v0[12] = v25;
  if (v25)
  {
    v26 = v25;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[13] = v27;
    *v27 = v28;
    OUTLINED_FUNCTION_21_13(v27);

    return sub_26975AA64();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[15] = v33;
    *v33 = v34;
    v35 = OUTLINED_FUNCTION_21_13(v33);

    return sub_26975A51C(v35, v36, v37, v38);
  }
}

uint64_t sub_26975A0FC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26975A1F8()
{
  OUTLINED_FUNCTION_8_5();

  v1 = OUTLINED_FUNCTION_25_8();
  v2(v1);

  OUTLINED_FUNCTION_4_17();

  return v3();
}

uint64_t sub_26975A280()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26975A37C()
{
  OUTLINED_FUNCTION_8_5();
  v0 = OUTLINED_FUNCTION_25_8();
  v1(v0);

  OUTLINED_FUNCTION_4_17();

  return v2();
}

uint64_t sub_26975A3FC()
{
  OUTLINED_FUNCTION_8_5();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 112);
  OUTLINED_FUNCTION_30_9();

  OUTLINED_FUNCTION_7_7();

  return v5();
}

uint64_t sub_26975A494()
{
  OUTLINED_FUNCTION_8_5();
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[16];
  OUTLINED_FUNCTION_30_9();

  OUTLINED_FUNCTION_7_7();

  return v2();
}

uint64_t sub_26975A51C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 168) = a3;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  v6 = OUTLINED_FUNCTION_3_16();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26975A54C()
{
  v1 = *(v0 + 120);
  if (*(v0 + 168) == 1)
  {
    v2 = *(v0 + 112);
    sub_26969329C(0, &qword_280323038, 0x277D479F0);
    v3 = sub_2696CD66C(1);
    v4 = sub_269851C24();
    [v3 setPunchOutUri_];

    v5 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v6 = v3;
    sub_269853474();
    if (v7)
    {
      v8 = sub_269854A64();
    }

    else
    {
      v8 = 0;
    }

    v15 = *(v0 + 96);
    [v6 setRefId_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v16 = OUTLINED_FUNCTION_35_0();
    *(v16 + 16) = xmmword_2698590C0;
    *(v16 + 32) = v6;
    v17 = sub_2698538F4();
    OUTLINED_FUNCTION_43_2(v17, MEMORY[0x277D5C1D8]);
    sub_2698538E4();

    OUTLINED_FUNCTION_4_17();

    return v18();
  }

  else
  {
    v9 = *(v0 + 104);
    sub_2696A73F8((v1 + 7), v0 + 16);
    sub_2696A73F8((v1 + 12), v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240A0, &unk_26985EB80);
    v10 = sub_269853504();
    v11 = [v10 liveService];

    if (v11)
    {
      v12 = sub_2696D1E04(v11, &selRef_appName);
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    *(v0 + 128) = v14;
    v20 = *(v0 + 104);
    v21 = sub_269853504();
    v22 = [v21 liveService];

    if (v22)
    {
      v23 = sub_2696D1E04(v22, &selRef_name);
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    *(v0 + 136) = v25;
    v26 = *(v0 + 104);
    v27 = sub_269853504();
    v28 = [v27 liveService];

    if (v28)
    {
      sub_2696D1E04(v28, &selRef_appStoreUrl);
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    *(v0 + 144) = v30;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    *(v0 + 152) = v31;
    *v31 = v32;
    v31[1] = sub_26975A89C;
    v33 = *(v0 + 96);

    return sub_2696B9F80(v33, v0 + 16, v0 + 56, 0, v12, v14, v23, v25);
  }
}

uint64_t sub_26975A89C()
{
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  v6 = v5[19];
  v7 = v5[18];
  v8 = v5[17];
  v9 = v5[16];
  v10 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v11 = v10;
  v3[20] = v0;

  __swift_destroy_boxed_opaque_existential_0(v3 + 7);
  __swift_destroy_boxed_opaque_existential_0(v3 + 2);
  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    v15 = *(v10 + 8);

    return v15();
  }
}

uint64_t sub_26975AA40()
{
  OUTLINED_FUNCTION_7_7();
  v1 = *(v0 + 160);
  return v2();
}

uint64_t sub_26975AA64()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 472) = v2;
  *(v1 + 480) = v0;
  *(v1 + 456) = v3;
  *(v1 + 464) = v4;
  *(v1 + 386) = v5;
  *(v1 + 448) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v7);
  v9 = *(v8 + 64);
  *(v1 + 488) = OUTLINED_FUNCTION_4_7();
  v10 = sub_2698532A4();
  *(v1 + 496) = v10;
  OUTLINED_FUNCTION_5_12(v10);
  *(v1 + 504) = v11;
  v13 = *(v12 + 64);
  *(v1 + 512) = OUTLINED_FUNCTION_4_7();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324098, &qword_26985EB78);
  OUTLINED_FUNCTION_8_9(v14);
  v16 = *(v15 + 64);
  *(v1 + 520) = OUTLINED_FUNCTION_4_7();
  v17 = type metadata accessor for VideoDataModels.ButtonModel(0);
  *(v1 + 528) = v17;
  OUTLINED_FUNCTION_8_9(v17);
  v19 = *(v18 + 64);
  *(v1 + 536) = OUTLINED_FUNCTION_4_7();
  v20 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v20);
  v22 = *(v21 + 64);
  *(v1 + 544) = OUTLINED_FUNCTION_4_7();
  v23 = sub_269853634();
  *(v1 + 552) = v23;
  OUTLINED_FUNCTION_5_12(v23);
  *(v1 + 560) = v24;
  v26 = *(v25 + 64);
  *(v1 + 568) = OUTLINED_FUNCTION_4_7();
  v27 = sub_2698548D4();
  *(v1 + 576) = v27;
  OUTLINED_FUNCTION_5_12(v27);
  *(v1 + 584) = v28;
  v30 = *(v29 + 64) + 15;
  *(v1 + 592) = swift_task_alloc();
  *(v1 + 600) = swift_task_alloc();
  *(v1 + 608) = swift_task_alloc();
  *(v1 + 616) = swift_task_alloc();
  *(v1 + 624) = swift_task_alloc();
  *(v1 + 632) = swift_task_alloc();
  *(v1 + 640) = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_26975AC98()
{
  v147 = v0;
  v1 = *(v0 + 456);
  if (*(v0 + 386) == 1)
  {
    v2 = *(v0 + 464);
    sub_26969329C(0, &qword_280323038, 0x277D479F0);
    v3 = sub_2696CD66C(1);
    *(v0 + 648) = v3;
    v4 = sub_269851C24();
    [v3 setPunchOutUri_];

    *(v0 + 656) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240A0, &unk_26985EB80);
    v5 = sub_269853504();
    v6 = [v5 liveService];

    v7 = [v6 isRemoteResult];
    sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
    v8 = sub_269855034();
    v9 = v8;
    if (v7)
    {
      OUTLINED_FUNCTION_34_0();
      v10 = sub_269855064();

      if (v10)
      {
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10();
        }

        v11 = *(v0 + 640);
        OUTLINED_FUNCTION_19_10();
        v12 = __swift_project_value_buffer(v7, qword_28033D910);
        *(v0 + 664) = v12;
        v13 = v9[2];
        *(v0 + 672) = v13;
        *(v0 + 680) = (v9 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v13(v11, v12, v7);
        v14 = sub_2698548B4();
        v15 = sub_269854F14();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_269684000, v14, v15, "PlayLiveServiceHandleIntentStrategy.makeIntentHandledResponse() submitting appPunchout command to remote...", v16, 2u);
          OUTLINED_FUNCTION_10();
        }

        v17 = *(v0 + 640);
        v18 = *(v0 + 584);
        v19 = *(v0 + 576);
        v20 = *(v0 + 472);
        v21 = *(v0 + 480);

        *(v0 + 688) = *(v18 + 8);
        v22 = OUTLINED_FUNCTION_34_0();
        v23(v22);
        v24 = v21[6];
        __swift_project_boxed_opaque_existential_1(v21 + 2, v21[5]);
        sub_269854604();
        *(v0 + 696) = v25;
        v26 = *(MEMORY[0x277D5BFA8] + 4);
        v27 = swift_task_alloc();
        *(v0 + 704) = v27;
        sub_26969329C(0, &qword_2803239C0, 0x277D471B0);
        *v27 = v0;
        v27[1] = sub_26975B8AC;
        OUTLINED_FUNCTION_69();

        return MEMORY[0x2821BB680](v28, v29, v30, v31, v32, v33);
      }
    }

    else
    {
    }

    v41 = *(v0 + 472);
    *(v0 + 840) = sub_269854614();
    *(v0 + 848) = v42;
    if (v42)
    {
      v43 = *__swift_project_boxed_opaque_existential_1((*(v0 + 480) + 264), *(*(v0 + 480) + 288));
      v44 = swift_task_alloc();
      *(v0 + 856) = v44;
      *v44 = v0;
      v44[1] = sub_26975C760;
      OUTLINED_FUNCTION_69();

      return sub_269760410(v45, v46);
    }

    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v95 = *(v0 + 616);
    v96 = *(v0 + 584);
    v97 = *(v0 + 472);
    __swift_project_value_buffer(*(v0 + 576), qword_28033D910);
    v98 = *(v96 + 16);
    v99 = OUTLINED_FUNCTION_12_11();
    v100(v99);
    v101 = v97;
    v102 = sub_2698548B4();
    v103 = sub_269854F24();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = *(v0 + 472);
      v101 = OUTLINED_FUNCTION_27_2();
      v97 = swift_slowAlloc();
      *v101 = 138412290;
      *(v101 + 1) = v104;
      *v97 = v104;
      v105 = v104;
      OUTLINED_FUNCTION_40_3(&dword_269684000, v106, v107, "mediaRouteIdentifier for DeviceUnit was nil %@");
      sub_269698048(v97, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    v108 = *(v0 + 616);
    OUTLINED_FUNCTION_19_10();

    v109 = v97[1];
    v110 = OUTLINED_FUNCTION_22_3();
    v111(v110);
    sub_2696BAE9C();
    v112 = swift_allocError();
    *v113 = 0xD000000000000014;
    v113[1] = 0x800000026987E870;
    OUTLINED_FUNCTION_31_9(v112, v113);
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v114 = *(v0 + 592);
    OUTLINED_FUNCTION_19_10();
    __swift_project_value_buffer(v101, qword_28033D910);
    v115 = OUTLINED_FUNCTION_11_4();
    v116(v115);
    v117 = v112;
    v118 = sub_2698548B4();
    v119 = sub_269854F04();

    v120 = os_log_type_enabled(v118, v119);
    v121 = *(v0 + 592);
    v122 = *(v0 + 584);
    v123 = *(v0 + 576);
    if (v120)
    {
      OUTLINED_FUNCTION_27_2();
      v124 = OUTLINED_FUNCTION_42_2();
      v146 = v124;
      *v121 = 136315138;
      *(v0 + 432) = v112;
      v125 = v112;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
      v126 = sub_269854AE4();
      v128 = sub_26974F520(v126, v127, &v146);

      *(v121 + 4) = v128;
      OUTLINED_FUNCTION_14_2(&dword_269684000, v129, v130, "Error while setting airplay destination: %s");
      __swift_destroy_boxed_opaque_existential_0(v124);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v122 + 8))(v143, v123);
    }

    else
    {

      (*(v122 + 8))(v121, v123);
    }

    OUTLINED_FUNCTION_15_15();
    OUTLINED_FUNCTION_22_3();
    sub_269853474();
    if (v131)
    {
      v132 = sub_269854A64();
    }

    else
    {
      v132 = 0;
    }

    v133 = *(v0 + 648);
    v134 = *(v0 + 448);
    v135 = OUTLINED_FUNCTION_12_11();
    [v135 v136];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v137 = OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_33_6(v137, xmmword_2698590C0);
    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_43_2(v138, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_29_8();

    OUTLINED_FUNCTION_0_32();
    OUTLINED_FUNCTION_20_12();

    OUTLINED_FUNCTION_4_17();
LABEL_46:
    OUTLINED_FUNCTION_69();

    __asm { BRAA            X1, X16 }
  }

  v35 = *(v0 + 480);
  sub_2696A73F8(v35 + 56, v0 + 72);
  sub_2696A73F8(v35 + 96, v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240A0, &unk_26985EB80);
  v36 = sub_269853504();
  v37 = [v36 liveService];

  if (v37)
  {
    v38 = sub_2696D1E04(v37, &selRef_appName);
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  *(v0 + 872) = v40;
  v48 = *(v0 + 456);
  v49 = sub_269853504();
  v50 = [v49 liveService];

  if (v50)
  {
    v51 = sub_2696D1E04(v50, &selRef_name);
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  *(v0 + 880) = v53;
  v54 = *(v0 + 456);
  v55 = sub_269853504();
  v56 = [v55 liveService];

  if (v56)
  {
    sub_2696D1E04(v56, &selRef_appStoreUrl);
  }

  if (!v40)
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v79 = *(v0 + 608);
    v80 = *(v0 + 584);
    v81 = *(v0 + 576);
    v82 = __swift_project_value_buffer(v81, qword_28033D910);
    (*(v80 + 16))(v79, v82, v81);
    v83 = sub_2698548B4();
    v84 = sub_269854F24();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_269684000, v83, v84, "createInstallAppViews missing appName", v85, 2u);
      OUTLINED_FUNCTION_10();
    }

    v86 = *(v0 + 608);
    v87 = *(v0 + 584);
    v88 = *(v0 + 576);

    v89 = *(v87 + 8);
    v90 = OUTLINED_FUNCTION_34_0();
    v91(v90);
    sub_2696BAE9C();
    v145 = swift_allocError();
    *v92 = xmmword_2698590B0;
    OUTLINED_FUNCTION_31_9(v145, v92);

    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    __swift_destroy_boxed_opaque_existential_0((v0 + 72));
    OUTLINED_FUNCTION_2_20();
    v93 = *(v0 + 520);
    v94 = *(v0 + 512);
    OUTLINED_FUNCTION_35_7();

    OUTLINED_FUNCTION_7_7();
    goto LABEL_46;
  }

  sub_2696A73F8(v0 + 112, v0 + 152);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 152, *(v0 + 176));
  OUTLINED_FUNCTION_3_20();
  v58 = v57;
  v60 = *(v59 + 64);
  v144 = v38;
  v61 = OUTLINED_FUNCTION_4_7();
  *(v0 + 888) = v61;
  (*(v58 + 16))();
  v62 = *v61;
  v63 = type metadata accessor for BaseDialogProvider();
  v142 = v53;
  *(v0 + 216) = v63;
  *(v0 + 224) = &off_287A3DBA0;
  *(v0 + 192) = v62;
  type metadata accessor for VideoLiveTuneInDialogProvider();
  inited = swift_initStackObject();
  *(v0 + 896) = inited;
  v65 = *(v0 + 216);
  v66 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 192, v65);
  OUTLINED_FUNCTION_3_20();
  v68 = v67;
  v70 = *(v69 + 64);
  v71 = OUTLINED_FUNCTION_4_7();
  (*(v68 + 16))(v71, v66, v65);
  v72 = *v71;
  inited[5] = v63;
  inited[6] = &off_287A3DBA0;
  inited[2] = v72;
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));

  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  *(v0 + 392) = v144;
  *(v0 + 400) = v40;
  *(v0 + 408) = v51;
  *(v0 + 416) = v142;
  *(v0 + 424) = 1;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 904) = v73;
  *v73 = v74;
  v73[1] = sub_26975CDD8;
  v75 = *(v0 + 512);
  OUTLINED_FUNCTION_69();

  return sub_2696C3DCC(v76, v77);
}

uint64_t sub_26975B8AC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  v6 = *(v5 + 704);
  *v4 = *v1;
  v3[89] = v7;
  v3[90] = v0;

  if (!v0)
  {
    v8 = v3[87];
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26975B9BC()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 680);
  (*(v0 + 672))(*(v0 + 632), *(v0 + 664), *(v0 + 576));
  v3 = v1;
  v4 = sub_2698548B4();
  v5 = sub_269854F14();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 712);
    v7 = OUTLINED_FUNCTION_27_2();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    OUTLINED_FUNCTION_40_3(&dword_269684000, v9, v10, "PlayLiveServiceHandleIntentStrategy.makeIntentHandledResponse() submitToRemote completed with response: %@");
    sub_269698048(v8, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    v4 = *(v0 + 712);
  }

  v11 = *(v0 + 688);
  v12 = *(v0 + 656);
  v13 = *(v0 + 632);
  v14 = *(v0 + 584);
  v15 = *(v0 + 576);
  v16 = *(v0 + 480);
  v17 = *(v0 + 456);

  v18 = OUTLINED_FUNCTION_34_0();
  v11(v18);
  sub_269795A18(1);
  v19 = sub_269853504();
  v20 = [v19 liveService];

  if (!v20 || (v21 = sub_2696D1E04(v20, &selRef_name), !v22))
  {

    v21 = 0;
    v22 = 0xE000000000000000;
  }

  *(v0 + 736) = v22;
  *(v0 + 728) = v21;
  v23 = *(v0 + 480);
  v24 = swift_task_alloc();
  *(v0 + 744) = v24;
  *v24 = v0;
  v24[1] = sub_26975BBCC;
  v25 = *(v0 + 472);

  return sub_2697962EC();
}

uint64_t sub_26975BBCC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  *(v1 + 344) = v3;
  *(v1 + 328) = v4;
  *(v1 + 336) = v5;
  *(v1 + 312) = v0;
  *(v1 + 320) = v6;
  v8 = *(v7 + 744);
  v9 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;
  *(v12 + 752) = v11;

  v13 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26975BCBC()
{
  v2 = *(v0 + 752);
  if (v2 != 1)
  {
    v3 = *(v0 + 320);
    v4 = *(v0 + 328);
    v5 = *(v0 + 344);
    if (v2)
    {
      v6 = *(v0 + 752);
    }
  }

  OUTLINED_FUNCTION_2_7();
  *(v0 + 760) = v7;
  v8 = *(v0 + 736);
  v9 = *(*(v0 + 480) + 136);
  *(v0 + 352) = *(v0 + 728);
  *(v0 + 360) = v8;
  *(v0 + 368) = v10;
  *(v0 + 376) = v7;
  *(v0 + 384) = v11 & 1;
  *(v0 + 385) = v12 & 1;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 768) = v13;
  *v13 = v14;
  v13[1] = sub_26975BDAC;

  return sub_2696C48C0(v0 + 352);
}

uint64_t sub_26975BDAC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 768);
  *v3 = *v1;
  *(v2 + 776) = v6;
  *(v2 + 784) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26975BEB4()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[71];
  v2 = v0[68];
  v3 = v0[59];
  v4 = v0[60];
  sub_269852E64();
  sub_2698535C4();
  sub_269854614();
  v0[99] = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[100] = v6;
  *v6 = v7;
  v6[1] = sub_26975BFA0;
  v8 = v0[65];

  return sub_269796CBC();
}

uint64_t sub_26975BFA0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 800);
  v3 = *(v1 + 792);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26975C0A0()
{
  v1 = v0[65];
  v2 = v0[60];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[66]) == 1)
  {
    v3 = v0[97];
    sub_269698048(v1, &qword_280324098, &qword_26985EB78);
    v4 = v2[46];
    v5 = v2[47];
    __swift_project_boxed_opaque_existential_1(v2 + 43, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v6 = OUTLINED_FUNCTION_35_0();
    v0[103] = v6;
    *(v6 + 16) = xmmword_2698590C0;
    *(v6 + 32) = v3;
    v7 = *(MEMORY[0x277D5BE58] + 4);
    v8 = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[104] = v9;
    *v9 = v10;
    v9[1] = sub_26975C558;
    v11 = v0[71];
    v12 = v0[56];

    return MEMORY[0x2821BB488](v12, v6, v11, v4, v5);
  }

  else
  {
    v13 = v0[97];
    v14 = v0[67];
    sub_26975DCA4(v1, v14);
    v15 = v2[46];
    v16 = v2[47];
    __swift_project_boxed_opaque_existential_1(v2 + 43, v15);
    v0[37] = type metadata accessor for VideoDataModels(0);
    v0[38] = sub_26975DD08(&qword_280323A28, 255, type metadata accessor for VideoDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 34);
    sub_269720A64(v14, boxed_opaque_existential_1);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v18 = OUTLINED_FUNCTION_35_0();
    v0[101] = v18;
    *(v18 + 16) = xmmword_2698590C0;
    *(v18 + 32) = v13;
    v19 = *(MEMORY[0x277D5BE48] + 4);
    v20 = v13;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[102] = v21;
    *v21 = v22;
    v21[1] = sub_26975C344;
    v23 = v0[71];
    v24 = v0[56];

    return MEMORY[0x2821BB478](v24, v0 + 34, v18, v23, v15, v16);
  }
}

uint64_t sub_26975C344()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 816);
  v6 = *(v4 + 808);
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 272));
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26975C448()
{
  sub_269720AC8(*(v1 + 536));
  v4 = OUTLINED_FUNCTION_12_20();
  v5(v4);

  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_35_7();

  OUTLINED_FUNCTION_4_17();

  return v6();
}

uint64_t sub_26975C558()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 832);
  v3 = *(v1 + 824);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26975C658()
{
  v3 = OUTLINED_FUNCTION_12_20();
  v4(v3);

  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_35_7();

  OUTLINED_FUNCTION_4_17();

  return v5();
}

uint64_t sub_26975C760()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  v6 = *(v5 + 856);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v3 + 864) = v0;

  if (v0)
  {
    v9 = *(v3 + 848);
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26975C864()
{
  v35 = v1;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v1[106];
  v3 = v1[78];
  OUTLINED_FUNCTION_19_10();
  __swift_project_value_buffer(v0, qword_28033D910);
  v4 = OUTLINED_FUNCTION_11_4();
  v5(v4);

  v6 = sub_2698548B4();
  v7 = sub_269854F04();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[106];
  if (v8)
  {
    v10 = v1[105];
    v11 = v1[78];
    v12 = v1[73];
    v13 = v1[72];
    v14 = OUTLINED_FUNCTION_27_2();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136315138;
    v16 = sub_26974F520(v10, v9, &v34);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_269684000, v6, v7, "AirPlaying from source device instead of playing from remote device: %s.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v17 = *(v12 + 8);
    v18 = OUTLINED_FUNCTION_22_3();
    v19(v18);
  }

  else
  {
    v20 = v1[78];
    OUTLINED_FUNCTION_19_10();

    v21 = *(v7 + 8);
    v22 = OUTLINED_FUNCTION_22_3();
    v23(v22);
  }

  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_22_3();
  sub_269853474();
  if (v24)
  {
    v25 = sub_269854A64();
  }

  else
  {
    v25 = 0;
  }

  v26 = v1[81];
  v27 = v1[56];
  v28 = OUTLINED_FUNCTION_12_11();
  [v28 v29];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v30 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_33_6(v30, xmmword_2698590C0);
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_43_2(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_29_8();

  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_20_12();

  OUTLINED_FUNCTION_4_17();

  return v32();
}

uint64_t sub_26975CB20()
{
  v32 = v1;
  v2 = v1[108];
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v3 = v1[74];
  OUTLINED_FUNCTION_19_10();
  __swift_project_value_buffer(v0, qword_28033D910);
  v4 = OUTLINED_FUNCTION_11_4();
  v5(v4);
  v6 = v2;
  v7 = sub_2698548B4();
  v8 = sub_269854F04();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[74];
  v11 = v1[73];
  v12 = v1[72];
  if (v9)
  {
    OUTLINED_FUNCTION_27_2();
    v13 = OUTLINED_FUNCTION_42_2();
    v31 = v13;
    *v10 = 136315138;
    v1[54] = v2;
    v14 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v15 = sub_269854AE4();
    v17 = sub_26974F520(v15, v16, &v31);

    *(v10 + 4) = v17;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v18, v19, "Error while setting airplay destination: %s");
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v11 + 8))(v30, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_22_3();
  sub_269853474();
  if (v20)
  {
    v21 = sub_269854A64();
  }

  else
  {
    v21 = 0;
  }

  v22 = v1[81];
  v23 = v1[56];
  v24 = OUTLINED_FUNCTION_12_11();
  [v24 v25];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v26 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_33_6(v26, xmmword_2698590C0);
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_43_2(v27, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_29_8();

  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_20_12();

  OUTLINED_FUNCTION_4_17();

  return v28();
}

uint64_t sub_26975CDD8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 904);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v8 + 912) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26975CED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_6();
  v17 = v16[112];
  v18 = v16[111];
  v19 = v16[110];
  v20 = v16[109];
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v17 + 16));

  __swift_destroy_boxed_opaque_existential_0(v16 + 14);

  v32 = v16[114];
  __swift_destroy_boxed_opaque_existential_0(v16 + 9);
  OUTLINED_FUNCTION_2_20();
  v21 = v16[65];
  v22 = v16[64];
  OUTLINED_FUNCTION_20_12();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_7_8();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, v32, a14, a15, a16);
}

uint64_t sub_26975CFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_6();
  v17 = *(v16 + 896);
  v38 = *(v16 + 880);
  v18 = *(v16 + 872);
  v20 = *(v16 + 504);
  v19 = *(v16 + 512);
  v21 = *(v16 + 488);
  v40 = *(v16 + 496);
  v42 = *(v16 + 888);
  v22 = *(v16 + 448);
  v23 = *(v16 + 104);
  __swift_project_boxed_opaque_existential_1((v16 + 72), *(v16 + 96));
  sub_269852CA4();
  v24 = sub_269853234();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v24);
  v25 = sub_2698538F4();
  *(v16 + 248) = 0u;
  *(v16 + 264) = 0;
  *(v16 + 232) = 0u;
  v26 = MEMORY[0x277D5C1D8];
  v22[3] = v25;
  v22[4] = v26;
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_2698530B4();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v17 + 16));

  sub_269698048(v16 + 232, &qword_280323028, qword_26985AD20);
  sub_269698048(v21, &qword_280323010, &unk_26985B640);
  (*(v20 + 8))(v19, v40);
  __swift_destroy_boxed_opaque_existential_0((v16 + 112));

  __swift_destroy_boxed_opaque_existential_0((v16 + 72));
  OUTLINED_FUNCTION_0_32();
  v39 = v28;
  v41 = v27;
  v43 = *(v16 + 488);

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_7_8();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v16 + 232, 0, v39, v41, v43, a14, a15, a16);
}

uint64_t sub_26975D208()
{
  v35 = v0;
  v1 = v0[90];
  v2 = v0[87];
  v3 = v0[85];
  v4 = v0[84];
  v5 = v0[83];
  v6 = v0[75];
  v7 = v0[72];

  v4(v6, v5, v7);
  v8 = v1;
  v9 = sub_2698548B4();
  v10 = sub_269854F24();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[90];
    v33 = v0[86];
    v12 = v0[75];
    v13 = v0[73];
    v14 = v0[72];
    v15 = OUTLINED_FUNCTION_27_2();
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136315138;
    v0[55] = v11;
    v17 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v18 = sub_269854AE4();
    v20 = sub_26974F520(v18, v19, &v34);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_269684000, v9, v10, "PlayLiveServiceHandleIntentStrategy.makeIntentHandledResponse() submitToRemote() failed with error: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v21 = OUTLINED_FUNCTION_22_3();
    v33(v21);
  }

  else
  {
    v22 = v0[86];
    v23 = v0[75];
    v24 = v0[73];
    v25 = v0[72];

    v26 = OUTLINED_FUNCTION_22_3();
    v22(v26);
  }

  v27 = v0[90];
  v28 = v0[81];
  __swift_project_boxed_opaque_existential_1((v0[60] + 224), *(v0[60] + 248));
  sub_2697B426C();
  v29 = v27;
  sub_269795A18(0);

  swift_willThrow();
  v30 = v0[90];
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_36_6();

  OUTLINED_FUNCTION_7_7();

  return v31();
}

uint64_t sub_26975D4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_6();
  v17 = *(v16 + 760);
  v18 = *(v16 + 736);
  v19 = *(v16 + 648);

  v20 = *(v16 + 784);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_36_6();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_7_8();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_26975D598()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v1 = *(v0 + 136);

  sub_269759494(v0 + 144);
  __swift_destroy_boxed_opaque_existential_0((v0 + 224));
  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  __swift_destroy_boxed_opaque_existential_0((v0 + 344));
  __swift_destroy_boxed_opaque_existential_0((v0 + 384));

  return v0;
}

uint64_t sub_26975D608()
{
  sub_26975D598();

  return MEMORY[0x2821FE8D8](v0, 432, 7);
}

uint64_t sub_26975D660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PlayLiveServiceHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_26975D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PlayLiveServiceHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_26975D7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PlayLiveServiceHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t sub_26975D8AC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DAF80;

  return sub_269759C4C();
}

uint64_t sub_26975D958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PlayLiveServiceHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_26975DA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PlayLiveServiceHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_26975DAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PlayLiveServiceHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DA938;

  return MEMORY[0x2821B9C38](a1, a2, v10, a4);
}

uint64_t sub_26975DBA4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_269756118(a1, a2);
  v6 = *(v3 + 8);

  return v6(v5);
}

uint64_t sub_26975DC04(uint64_t a1, uint64_t a2)
{
  result = sub_26975DD08(&qword_280324090, a2, type metadata accessor for PlayLiveServiceHandleIntentStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26975DCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoDataModels.ButtonModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26975DD08(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_32()
{
  result = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[71];
  v9 = v0[68];
  v10 = v0[67];
  v11 = v0[65];
  v12 = v0[64];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_20()
{
  result = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[71];
  v9 = v0[68];
  v10 = v0[67];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_20()
{
  v1 = v0[97];
  v2 = v0[95];
  v3 = v0[92];
  v4 = v0[89];
  v5 = v0[81];
  result = v0[71];
  v7 = v0[69];
  v8 = *(v0[70] + 8);
  return result;
}

id OUTLINED_FUNCTION_15_15()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 480);
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);

  return v1;
}

uint64_t OUTLINED_FUNCTION_20_12()
{
  v3 = *(v0 + 488);
}

uint64_t OUTLINED_FUNCTION_21_13(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[8];
  v4 = v2[3];
  v5 = v2[4];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_25_8()
{
  v1 = v0[11];
  v3 = v0[5];
  v2 = v0[6];
  v4 = *(v0[7] + 8);
  return v0[8];
}

uint64_t OUTLINED_FUNCTION_29_8()
{

  return sub_2698538E4();
}

uint64_t OUTLINED_FUNCTION_30_9()
{
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_31_9(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_33_6(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return sub_2698538F4();
}

uint64_t OUTLINED_FUNCTION_35_7()
{
  v3 = *(v0 + 488);
}

uint64_t OUTLINED_FUNCTION_36_6()
{
  v2 = v0[65];
  v4 = v0[64];
  v5 = v0[61];
}

void OUTLINED_FUNCTION_40_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_42_2()
{

  return swift_slowAlloc();
}

uint64_t *OUTLINED_FUNCTION_43_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1(v2);
}

void *sub_26975DFA4()
{
  v0 = type metadata accessor for BaseDialogProvider();
  v1 = swift_allocObject();
  v2 = sub_269853264();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  v5 = sub_269853254();
  v17[3] = v0;
  v17[4] = &off_287A3DBA0;
  v17[0] = v1;
  v15 = v2;
  v16 = MEMORY[0x277D5BD58];
  *&v14 = v5;
  type metadata accessor for PlayLiveServiceUnsupportedValueStrategy();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v17, v0);
  v8 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v6[5] = v0;
  v6[6] = &off_287A3DBA0;
  v6[2] = v12;
  sub_2696AE06C(&v14, (v6 + 7));
  __swift_destroy_boxed_opaque_existential_0(v17);

  return v6;
}

uint64_t sub_26975E110()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(sub_269852EB4() - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_269853634();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_2698548D4();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26975E250()
{
  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v3, qword_28033D910);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "PlayLiveService.UnsupportedValueStrategy.makeUnsupportedOutput() was called", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v11 = v0[3];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324050, &qword_26985E7A0);
  v12 = sub_2698536C4();
  v13 = [v12 unsupportedReason];

  v14 = PlayLiveServiceLiveServiceUnsupportedReason.init(rawValue:)(v13);
  v15 = v14;
  v17 = v16;
  if ((v16 & 1) != 0 || v14 != 1)
  {
    type metadata accessor for PlayLiveServiceIntent();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = sub_2696BBEF8(ObjCClassFromMetadata);
    if (v22)
    {
      v23 = result;
      v24 = v22;
      if (v17)
      {
        v25 = -1;
      }

      else
      {
        v25 = v15;
      }

      sub_2696BAE9C();
      swift_allocError();
      *v26 = v23;
      *(v26 + 8) = v24;
      *(v26 + 16) = v25;
      *(v26 + 24) = 2;
      swift_willThrow();
      v27 = v0[11];
      v28 = v0[8];
      v29 = v0[5];

      OUTLINED_FUNCTION_7_7();

      return v30();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v18 = *__swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_26975E520;

    return sub_26977F2C4(0xD000000000000015, 0x800000026987DB70);
  }

  return result;
}

uint64_t sub_26975E520(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  v6 = v4[12];
  v7 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  if (v1)
  {
    v9 = v5[11];
    v10 = v5[8];
    v11 = v5[5];

    OUTLINED_FUNCTION_7_7();

    return v12();
  }

  else
  {
    v5[13] = a1;
    v14 = OUTLINED_FUNCTION_3_16();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_26975E66C()
{
  v1 = v0[13];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  sub_269852E64();
  sub_2698535C4();
  v5 = v4[10];
  v6 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v7 = swift_allocObject();
  v0[14] = v7;
  *(v7 + 16) = xmmword_2698590C0;
  *(v7 + 32) = v1;
  v8 = *(MEMORY[0x277D5BE58] + 4);
  v9 = v1;
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_26975E7B0;
  v11 = v0[8];
  v12 = v0[2];

  return MEMORY[0x2821BB488](v12, v7, v11, v5, v6);
}

uint64_t sub_26975E7B0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26975E8B0()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_7_7();

  return v6();
}

uint64_t sub_26975E95C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_3_16();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26975E984()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324050, &qword_26985E7A0);
  v2 = sub_2698536B4();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26975E9F8()
{
  sub_2696D1E70(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_26975EA5C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_26975E110();
}

uint64_t sub_26975EB08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26974872C;

  return sub_26975E95C(a1);
}

uint64_t sub_26975EB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PlayLiveServiceUnsupportedValueStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9E00](a1, a2, v10, a4);
}

uint64_t sub_26975EC60()
{
  v0 = sub_269851BE4();
  v8 = *(v0 - 8);
  v1 = *(v8 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  sub_269854EB4();
  sub_2696B6FF4();
  while (1)
  {
    sub_2698550E4();
    if (!v13)
    {
      break;
    }

    sub_269694FFC(&v12, v11);
    sub_2696B6F94(v11, v9);
    sub_26969329C(0, &qword_2815718D0, 0x277CC1E70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v10 = 0;
    }

    v5 = __swift_destroy_boxed_opaque_existential_0(v11);
    if (v10)
    {
      MEMORY[0x26D645B90](v5);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269854CD4();
      }

      sub_269854CF4();
      v4 = v14;
    }
  }

  (*(v8 + 8))(v3, v0);
  return v4;
}

uint64_t sub_26975EE38(void *a1, uint64_t a2)
{
  v3 = v2;
  v151 = sub_2698548D4();
  v6 = *(v151 - 8);
  v7 = *(v6 + 8);
  v8 = MEMORY[0x28223BE20](v151);
  v10 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v142 = &v140 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v141 = &v140 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v140 - v15;
  v17 = type metadata accessor for SignalRecordingContext();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v149 = (&v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = [a1 isRemoteExecution];
  v21 = sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  v22 = sub_269855034();
  v23 = v22;
  if (v20)
  {
    v24 = sub_269855064();

    if (v24)
    {
LABEL_26:
      if (qword_2803226E8 != -1)
      {
LABEL_96:
        OUTLINED_FUNCTION_0_30();
      }

      v51 = v151;
      __swift_project_value_buffer(v151, qword_28033D928);
      OUTLINED_FUNCTION_6_11();
      v52(v10);
      v53 = sub_2698548B4();
      v54 = sub_269854F14();
      if (os_log_type_enabled(v53, v54))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_20_7(&dword_269684000, v55, v56, "Not disambiguating with 3p apps due to preconditions");
        OUTLINED_FUNCTION_18_7();
      }

      (*(v6 + 1))(v10, v51);
      return 0;
    }
  }

  else
  {
  }

  v145 = v17;
  v147 = v10;
  v140 = v16;
  v150 = v21;
  v148 = v6;
  v146 = v3;
  sub_2696A73F8(v3 + 16, v157);
  v144 = __swift_project_boxed_opaque_existential_1(v157, v157[3]);
  v25 = sub_26975004C(a2);
  v26 = 0;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8);
  v27 = MEMORY[0x277D84F90];
  v6 = &off_279C6F000;
  while (v25 != v26)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x26D646120](v26, a2);
    }

    else
    {
      if (v26 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_92;
      }

      v28 = *(a2 + 8 * v26 + 32);
    }

    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v30 = v28;
    v31 = [v30 umcId];
    if (v31)
    {
      v32 = v31;
      v33 = sub_269854A94();
      v143 = v34;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = *(v27 + 16);
        sub_26977BCE4();
        v27 = v40;
      }

      v36 = *(v27 + 16);
      v35 = *(v27 + 24);
      if (v36 >= v35 >> 1)
      {
        OUTLINED_FUNCTION_9(v35);
        sub_26977BCE4();
        v27 = v41;
      }

      *(v27 + 16) = v36 + 1;
      v37 = v27 + 16 * v36;
      v38 = v143;
      *(v37 + 32) = v33;
      *(v37 + 40) = v38;
      v26 = v29;
    }

    else
    {

      ++v26;
    }
  }

  v42 = v149;
  *v149 = v27;
  swift_storeEnumTagMultiPayload();
  v43 = *v144;
  sub_2697F9524();
  v45 = v44;
  sub_2697602B0(v42);
  __swift_destroy_boxed_opaque_existential_0(v157);
  v6 = v148;
  v10 = v147;
  v46 = v146;
  if ((v45 & 1) == 0)
  {
    goto LABEL_26;
  }

  v47 = *__swift_project_boxed_opaque_existential_1((v146 + 56), *(v146 + 80));
  sub_2697EAC90(v155);
  sub_26976030C(v155);
  v48 = v156;
  if (v156 < 1)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v49 = sub_26975004C(a2);
  if (v49 < 1 || v48 < v49)
  {
    goto LABEL_26;
  }

  sub_26975FBAC();
  v60 = v59;
  v47 = *__swift_project_boxed_opaque_existential_1((v46 + 56), *(v46 + 80));
  sub_2697EAC90(v157);
  sub_26976030C(v157);
  v61 = v158;
  if (v158 < 1)
  {
    goto LABEL_99;
  }

  v62 = sub_26975004C(v60);
  v63 = v62 < 1 || v61 < v62;
  v47 = v60;
  if (v63)
  {
    if (qword_2803226E8 == -1)
    {
LABEL_39:
      v64 = v151;
      __swift_project_value_buffer(v151, qword_28033D928);
      OUTLINED_FUNCTION_6_11();
      v65 = v142;
      v66(v142);

      v67 = v47;
      v68 = sub_2698548B4();
      v69 = sub_269854F14();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v152 = v71;
        *v70 = 134218242;
        v72 = sub_26975004C(v67);

        *(v70 + 4) = v72;

        *(v70 + 12) = 2080;
        v73 = sub_269760360();
        v75 = sub_26974F520(v73, v74, &v152);

        *(v70 + 14) = v75;
        _os_log_impl(&dword_269684000, v68, v69, "Number of third party play handling video apps %ld is not within %s", v70, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v71);
        MEMORY[0x26D647170](v71, -1, -1);
        OUTLINED_FUNCTION_18_7();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      (*(v6 + 1))(v65, v64);
      return 0;
    }

LABEL_100:
    OUTLINED_FUNCTION_0_30();
    goto LABEL_39;
  }

  v76 = MEMORY[0x277D84F90];
  v152 = MEMORY[0x277D84F90];
  v77 = sub_26975004C(v60);
  v78 = 0;
  v79 = v47 & 0xC000000000000001;
  v6 = (v47 & 0xFFFFFFFFFFFFFF8);
  v149 = v76;
  v147 = v47;
  while (v77 != v78)
  {
    if (v79)
    {
      v80 = MEMORY[0x26D646120](v78, v47);
    }

    else
    {
      if (v78 >= *(v6 + 2))
      {
        goto LABEL_94;
      }

      v80 = *(v47 + 8 * v78 + 32);
    }

    v81 = v80;
    v10 = (v78 + 1);
    if (__OFADD__(v78, 1))
    {
      goto LABEL_93;
    }

    v82 = sub_2697AE148(v80);
    if (v83)
    {
      v84 = v82;
      v85 = v83;
      v149 = type metadata accessor for Content();

      v86 = [v81 localizedName];
      v146 = sub_269854A94();

      v87 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v88 = sub_2697C01B0(v84, v85);
      sub_26976024C(v84, v85, v88);
      v89 = [v81 localizedName];
      v90 = sub_269854A94();
      v92 = v91;

      sub_2696D1DEC(v90, v92, v88);
      MEMORY[0x26D645B90]();
      v93 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v93 >> 1)
      {
        OUTLINED_FUNCTION_9(v93);
        sub_269854CD4();
      }

      OUTLINED_FUNCTION_5_25();
      sub_269854CF4();
      v149 = v152;
      v78 = v10;
      v47 = v147;
    }

    else
    {

      ++v78;
    }
  }

  v94 = v149;
  if (!sub_26975004C(v149))
  {

    v97 = v148;
    if (qword_2803226E8 == -1)
    {
LABEL_74:
      v114 = v151;
      v115 = __swift_project_value_buffer(v151, qword_28033D928);
      v116 = v141;
      (*(v97 + 16))(v141, v115, v114);
      v117 = sub_2698548B4();
      v118 = sub_269854F14();
      if (os_log_type_enabled(v117, v118))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_20_7(&dword_269684000, v119, v120, "thirdPartyAppContents is empty");
        OUTLINED_FUNCTION_18_7();
      }

      (*(v97 + 8))(v116, v114);
      return 0;
    }

LABEL_103:
    OUTLINED_FUNCTION_0_30();
    goto LABEL_74;
  }

  v95 = sub_26975004C(v94);
  v96 = v148;
  if (v95)
  {
    v97 = v95;
    v154 = MEMORY[0x277D84F90];
    v47 = &v154;
    sub_269814F0C(0, v95 & ~(v95 >> 63), 0);
    if ((v97 & 0x8000000000000000) == 0)
    {
      v98 = 0;
      v99 = v154;
      v146 = v94 & 0xC000000000000001;
      v145 = v94 & 0xFFFFFFFFFFFFFF8;
      v6 = v97;
      while (1)
      {
        v10 = (v98 + 1);
        if (__OFADD__(v98, 1))
        {
          goto LABEL_95;
        }

        if (v146)
        {
          v100 = MEMORY[0x26D646120](v98, v94);
        }

        else
        {
          if (v98 >= *(v145 + 16))
          {
            __break(1u);
            goto LABEL_98;
          }

          v100 = *(v94 + 8 * v98 + 32);
        }

        v101 = v100;
        v152 = 40;
        v153 = 0xE100000000000000;
        v102 = sub_26977DBD8(v100);
        if (v103)
        {
          v104 = v103;
        }

        else
        {
          v102 = 7104878;
          v104 = 0xE300000000000000;
        }

        v47 = &v152;
        MEMORY[0x26D645A60](v102, v104);

        MEMORY[0x26D645A60](8236, 0xE200000000000000);
        v105 = sub_26977E46C(v101);
        if (v106)
        {
          v107 = v106;
        }

        else
        {
          v105 = 7104878;
          v107 = 0xE300000000000000;
        }

        MEMORY[0x26D645A60](v105, v107);

        MEMORY[0x26D645A60](41, 0xE100000000000000);

        v108 = v152;
        v109 = v153;
        v154 = v99;
        v111 = *(v99 + 16);
        v110 = *(v99 + 24);
        if (v111 >= v110 >> 1)
        {
          v113 = OUTLINED_FUNCTION_9(v110);
          v47 = &v154;
          sub_269814F0C(v113, v111 + 1, 1);
          v99 = v154;
        }

        *(v99 + 16) = v111 + 1;
        v112 = v99 + 16 * v111;
        *(v112 + 32) = v108;
        *(v112 + 40) = v109;
        ++v98;
        v94 = v149;
        if (v10 == v6)
        {

          v96 = v148;
          goto LABEL_78;
        }
      }
    }

    __break(1u);
    goto LABEL_102;
  }

LABEL_78:
  sub_2697F00A8();
  v122 = v121;
  v97 = v123;

  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v124 = v151;
  __swift_project_value_buffer(v151, qword_28033D928);
  OUTLINED_FUNCTION_6_11();
  v125 = v140;
  v126(v140);

  v127 = sub_2698548B4();
  v128 = sub_269854F14();

  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v152 = v130;
    *v129 = 136315138;
    v131 = sub_26974F520(v122, v97, &v152);

    *(v129 + 4) = v131;
    _os_log_impl(&dword_269684000, v127, v128, "thirdPartyAppContents: %s", v129, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v130);
    MEMORY[0x26D647170](v130, -1, -1);
    MEMORY[0x26D647170](v129, -1, -1);

    (*(v96 + 1))(v125, v151);
  }

  else
  {

    (*(v96 + 1))(v125, v124);
  }

  v152 = v149;

  sub_26980BB94(v132);
  v57 = v152;
  v133 = sub_26975004C(v152);
  if (v133)
  {
    v134 = v133;
    if (v133 < 1)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v135 = 0;
    do
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v136 = OUTLINED_FUNCTION_5_25();
        v137 = MEMORY[0x26D646120](v136);
      }

      else
      {
        v137 = *(v57 + 8 * v135 + 32);
      }

      v138 = v137;
      ++v135;
      v139 = sub_269855034();
      [v138 setAppDisambiguation_];
    }

    while (v134 != v135);
  }

  return v57;
}

void sub_26975FBAC()
{
  v0 = [objc_opt_self() enumeratorWithOptions_];
  v1 = sub_26975EC60();

  v2 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  v3 = sub_26975004C(v1);
  for (i = 0; v3 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v8 = OUTLINED_FUNCTION_5_25();
      v5 = MEMORY[0x26D646120](v8);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v5 = *(v1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
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
      return;
    }

    if ([v5 developerType] == 1)
    {
    }

    else
    {
      sub_269855284();
      v7 = *(v54 + 16);
      OUTLINED_FUNCTION_3_27();
      sub_2698552B4();
      OUTLINED_FUNCTION_3_27();
      sub_2698552C4();
      sub_269855294();
    }
  }

  v9 = sub_26975004C(v54);
  for (j = 0; v9 != j; ++j)
  {
    if ((v54 & 0xC000000000000001) != 0)
    {
      v14 = OUTLINED_FUNCTION_5_25();
      v11 = MEMORY[0x26D646120](v14);
    }

    else
    {
      if (j >= *(v54 + 16))
      {
        goto LABEL_65;
      }

      v11 = *(v54 + 8 * j + 32);
    }

    v12 = v11;
    if (__OFADD__(j, 1))
    {
      goto LABEL_64;
    }

    if ([v11 appProtectionHidden])
    {
    }

    else
    {
      sub_269855284();
      v13 = *(v2 + 16);
      OUTLINED_FUNCTION_3_27();
      sub_2698552B4();
      OUTLINED_FUNCTION_3_27();
      sub_2698552C4();
      sub_269855294();
    }
  }

  v15 = sub_26975004C(v2);
  v16 = 0;
  v52 = MEMORY[0x277D84F90];
  while (v15 != v16)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x26D646120](v16, v2);
    }

    else
    {
      if (v16 >= *(v2 + 16))
      {
        goto LABEL_67;
      }

      v17 = *(v2 + 8 * v16 + 32);
    }

    v18 = v17;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_66;
    }

    v19 = [objc_opt_self() appInfoWithApplicationRecord_];
    if (v19)
    {
      v20 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = *(v52 + 16);
        sub_26977CD70();
        v52 = v25;
      }

      v22 = *(v52 + 16);
      v21 = *(v52 + 24);
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_9(v21);
        sub_26977CD70();
        v52 = v26;
      }

      *(v52 + 16) = v22 + 1;
      v23 = v52 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      ++v16;
    }

    else
    {

      ++v16;
    }
  }

  v27 = 0;
  v51 = *(v52 + 16);
  v28 = MEMORY[0x277D837D0];
  v50 = MEMORY[0x277D84F90];
LABEL_38:
  while (v27 != v51)
  {
    if (v27 >= *(v52 + 16))
    {
      goto LABEL_68;
    }

    v53 = *(v52 + 32 + 16 * v27++);
    v29 = v53;
    v30 = *(&v53 + 1);
    v31 = [v30 supportedIntents];
    v32 = sub_269854E44();

    if (*(v32 + 16))
    {
      v33 = v28;
      v34 = *(v32 + 40);
      sub_269855674();
      sub_269854B34();
      v35 = sub_2698556C4();
      v36 = ~(-1 << *(v32 + 32));
      do
      {
        v37 = v35 & v36;
        if (((*(v32 + 56 + (((v35 & v36) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v35 & v36)) & 1) == 0)
        {

          v28 = v33;
          goto LABEL_38;
        }

        v38 = (*(v32 + 48) + 16 * v37);
        if (*v38 == 0xD000000000000011 && 0x800000026987B840 == v38[1])
        {
          break;
        }

        v40 = sub_269855584();
        v35 = v37 + 1;
      }

      while ((v40 & 1) == 0);

      v41 = [v30 supportedMediaCategories];
      v28 = v33;
      v42 = sub_269854E44();

      LOBYTE(v41) = sub_269807CB4(0xD000000000000014, 0x800000026987B820, v42);

      if (v41)
      {
        v43 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_269815324(0, *(v50 + 16) + 1, 1);
          v43 = v50;
        }

        v45 = *(v43 + 16);
        v44 = *(v43 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_269815324(v44 > 1, v45 + 1, 1);
          v43 = v50;
        }

        *(v43 + 16) = v45 + 1;
        v50 = v43;
        *(v43 + 16 * v45 + 32) = v53;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v46 = *(v50 + 16);
  if (v46)
  {
    v55 = MEMORY[0x277D84F90];
    sub_2698552A4();
    v47 = 32;
    do
    {
      v48 = *(v50 + v47);
      sub_269855284();
      v49 = *(v55 + 16);
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      v47 += 16;
      --v46;
    }

    while (v46);
  }
}

uint64_t sub_2697601E8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

void sub_26976024C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setAppBundleIdentifier_];
}

uint64_t sub_2697602B0(uint64_t a1)
{
  v2 = type metadata accessor for SignalRecordingContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269760360()
{
  sub_2698552D4();
  MEMORY[0x26D645A60](3026478, 0xE300000000000000);
  sub_2698552D4();
  return 0;
}

uint64_t sub_269760410(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2698548D4();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697604D0, 0, 0);
}

uint64_t sub_2697604D0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240A8, &qword_26985ED58);
  *v5 = v0;
  v5[1] = sub_2697605D8;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000010, 0x800000026987E970, sub_269760D0C, v3, v6);
}

uint64_t sub_2697605D8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2697606F0, 0, 0);
}

uint64_t sub_2697606F0()
{
  v30 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = qword_2803226E0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];
    v7 = __swift_project_value_buffer(v6, qword_28033D910);
    (*(v5 + 16))(v4, v7, v6);
    v8 = v3;

    v9 = sub_2698548B4();
    v10 = sub_269854F24();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[7];
    v13 = v0[8];
    v14 = v0[6];
    if (v11)
    {
      v16 = v0[4];
      v15 = v0[5];
      v28 = v0[8];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_26974F520(v16, v15, v29);
      *(v17 + 12) = 2080;
      v0[3] = v8;
      type metadata accessor for CFError(0);
      v19 = v8;
      v20 = sub_269854AE4();
      v22 = sub_26974F520(v20, v21, v29);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_269684000, v9, v10, "Error adding output device %s to group: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D647170](v18, -1, -1);
      MEMORY[0x26D647170](v17, -1, -1);

      (*(v12 + 8))(v28, v14);
    }

    else
    {

      (*(v12 + 8))(v13, v14);
    }

    v25 = v0[8];
    type metadata accessor for CFError(0);
    sub_269760D14();
    swift_allocError();
    *v26 = v8;
    swift_willThrow();

    v24 = v0[1];
  }

  else
  {
    v23 = v0[8];

    v24 = v0[1];
  }

  return v24();
}

void sub_26976099C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240B8, qword_26985ED60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_269857710;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;

  v12 = sub_269854CA4();

  v13 = sub_269854A64();
  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_269760D6C;
  *(v16 + 24) = v15;
  aBlock[4] = sub_269760DE8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269760C7C;
  aBlock[3] = &block_descriptor_12;
  v17 = _Block_copy(aBlock);

  MRAVEndpointMoveOutputGroupToDevicesFromSource();
  _Block_release(v17);
}

void sub_269760C7C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

unint64_t sub_269760D14()
{
  result = qword_2803240B0;
  if (!qword_2803240B0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803240B0);
  }

  return result;
}

uint64_t sub_269760D6C()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240B8, qword_26985ED60) - 8) + 80);

  return sub_269760BF0();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_269760E08()
{
  result = [objc_allocWithZone(type metadata accessor for PlayVideoIntentHandler()) init];
  qword_28033D710 = result;
  return result;
}

uint64_t sub_269760E3C(uint64_t a1)
{
  v177 = a1;
  v171 = sub_269852474();
  v1 = OUTLINED_FUNCTION_8(v171);
  v159 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v6 - v5);
  v7 = sub_269851F04();
  v8 = OUTLINED_FUNCTION_8(v7);
  v174 = v9;
  v175 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v153 = v13 - v12;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F40, &unk_26985DE30);
  v14 = OUTLINED_FUNCTION_4_3(v173);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v17);
  v167 = &v150 - v18;
  v158 = sub_2698523C4();
  v19 = OUTLINED_FUNCTION_8(v158);
  v157 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v24 - v23);
  v25 = sub_269851EF4();
  v26 = OUTLINED_FUNCTION_8(v25);
  v162 = v27;
  v163 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v161 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v150 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F48, qword_26985DE40);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_23_3();
  v166 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_23_3();
  v172 = v43;
  MEMORY[0x28223BE20](v44);
  v164 = &v150 - v45;
  v176 = sub_269853874();
  v46 = OUTLINED_FUNCTION_8(v176);
  v165 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3_1();
  v170 = v51 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323700, qword_26985B120);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v55 = &v150 - v54;
  v56 = sub_2698548D4();
  v57 = OUTLINED_FUNCTION_8(v56);
  v168 = v58;
  v169 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_24_3();
  v160 = v61;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_15_1(&v150 - v63);
  v64 = type metadata accessor for MediaNLIntent();
  v65 = OUTLINED_FUNCTION_4_3(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_3_1();
  v70 = v69 - v68;
  v71 = sub_269853F44();
  v72 = OUTLINED_FUNCTION_8(v71);
  v74 = v73;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_3_1();
  v79 = v78 - v77;
  v80 = sub_2698538B4();
  v81 = OUTLINED_FUNCTION_8(v80);
  v83 = v82;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_3_1();
  v88 = (v87 - v86);
  (*(v83 + 16))(v87 - v86, v177, v80);
  v89 = (*(v83 + 88))(v88, v80);
  if (v89 != *MEMORY[0x277D5C128])
  {
    if (v89 == *MEMORY[0x277D5C140])
    {
      v103 = OUTLINED_FUNCTION_6_26();
      v104(v103);
      v105 = v165;
      v106 = v170;
      (*(v165 + 32))(v170, v88, v176);
      v107 = v161;
      sub_269853864();
      sub_2696D3C74();
      (*(v162 + 8))(v107, v163);
      v108 = v171;
      if (__swift_getEnumTagSinglePayload(v35, 1, v171) == 1)
      {
        sub_26969B0C0(v35, &qword_280323360, &unk_26985AB80);
        v109 = 1;
        v110 = v174;
        v111 = v175;
        v112 = v166;
        v113 = v167;
        v114 = v164;
      }

      else
      {
        v129 = v156;
        sub_269852424();
        (*(v159 + 8))(v35, v108);
        v114 = v164;
        sub_2698523A4();
        (*(v157 + 8))(v129, v158);
        v109 = 0;
        v110 = v174;
        v111 = v175;
        v112 = v166;
        v113 = v167;
      }

      v130 = v172;
      __swift_storeEnumTagSinglePayload(v114, v109, 1, v111);
      (*(v110 + 104))(v130, *MEMORY[0x277D39200], v111);
      __swift_storeEnumTagSinglePayload(v130, 0, 1, v111);
      v131 = *(v173 + 48);
      sub_269740BE4(v114, v113);
      sub_269740BE4(v130, v113 + v131);
      if (__swift_getEnumTagSinglePayload(v113, 1, v111) == 1)
      {
        OUTLINED_FUNCTION_7_27(v130);
        OUTLINED_FUNCTION_7_27(v114);
        (*(v105 + 8))(v106, v176);
        if (__swift_getEnumTagSinglePayload(v113 + v131, 1, v111) == 1)
        {
          v125 = &qword_280323F48;
          v126 = qword_26985DE40;
          v127 = v113;
          goto LABEL_46;
        }

        goto LABEL_38;
      }

      sub_269740BE4(v113, v112);
      if (__swift_getEnumTagSinglePayload(v113 + v131, 1, v111) == 1)
      {
        OUTLINED_FUNCTION_7_27(v172);
        OUTLINED_FUNCTION_7_27(v114);
        (*(v105 + 8))(v106, v176);
        (*(v110 + 8))(v112, v111);
LABEL_38:
        v132 = v113;
LABEL_51:
        sub_26969B0C0(v132, &qword_280323F40, &unk_26985DE30);
        goto LABEL_52;
      }

      v133 = v113 + v131;
      v134 = v153;
      (*(v110 + 32))(v153, v133, v111);
      OUTLINED_FUNCTION_2_21();
      sub_269761E88(v135, v136);
      v137 = sub_269854A54();
      v138 = v114;
      v139 = *(v110 + 8);
      v139(v134, v111);
      OUTLINED_FUNCTION_26_1(v172);
      OUTLINED_FUNCTION_26_1(v138);
      (*(v105 + 8))(v170, v176);
      v139(v112, v111);
      v140 = v113;
LABEL_54:
      OUTLINED_FUNCTION_26_1(v140);
      return v137 & 1;
    }

    if (v89 != *MEMORY[0x277D5C148])
    {
      (*(v83 + 8))(v88, v80);
      goto LABEL_52;
    }

    v115 = OUTLINED_FUNCTION_6_26();
    v116(v115);
    v117 = *v88;
    sub_2696D6C54();
    if (v118)
    {
      v119 = v118;
      v120 = v152;
      sub_269854544();

      v121 = v156;
      sub_269852424();
      (*(v159 + 8))(v120, v171);
      v122 = v155;
      sub_2698523A4();
      (*(v157 + 8))(v121, v158);
      OUTLINED_FUNCTION_10_17();
    }

    else
    {
      OUTLINED_FUNCTION_10_17();
      v122 = v155;
    }

    v141 = v154;
    __swift_storeEnumTagSinglePayload(v122, v123, 1, v55);
    (*(v71 + 104))(v141, *MEMORY[0x277D39200], v55);
    __swift_storeEnumTagSinglePayload(v141, 0, 1, v55);
    v142 = *(v173 + 48);
    sub_269740BE4(v122, v88);
    sub_269740BE4(v141, v88 + v142);
    OUTLINED_FUNCTION_8_21(v88);
    if (v94)
    {

      OUTLINED_FUNCTION_7_27(v141);
      OUTLINED_FUNCTION_7_27(v122);
      OUTLINED_FUNCTION_8_21(v88 + v142);
      if (v94)
      {
        v125 = &qword_280323F48;
        v126 = qword_26985DE40;
        v127 = v88;
        goto LABEL_46;
      }
    }

    else
    {
      sub_269740BE4(v88, v64);
      OUTLINED_FUNCTION_8_21(v88 + v142);
      if (!v143)
      {
        v145 = v88 + v142;
        v146 = v153;
        (*(v71 + 32))(v153, v145, v55);
        OUTLINED_FUNCTION_2_21();
        sub_269761E88(v147, v148);
        v137 = sub_269854A54();

        v149 = *(v71 + 8);
        v149(v146, v55);
        OUTLINED_FUNCTION_26_1(v141);
        OUTLINED_FUNCTION_26_1(v122);
        v149(v64, v55);
        v140 = v88;
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_7_27(v141);
      OUTLINED_FUNCTION_7_27(v122);
      (*(v71 + 8))(v64, v55);
    }

    v132 = v88;
    goto LABEL_51;
  }

  v90 = OUTLINED_FUNCTION_6_26();
  v91(v90);
  (*(v74 + 32))(v79, v88, v71);
  (*(v74 + 16))(v70, v79, v71);
  v92 = v74;
  if (qword_280322560 != -1)
  {
    swift_once();
  }

  sub_269761E88(qword_280323548, type metadata accessor for MediaNLIntent);
  sub_269853D54();
  if (v178 != 5)
  {
    v94 = sub_2697A8C0C(v178) == 2036427888 && v93 == 0xE400000000000000;
    if (v94)
    {
    }

    else
    {
      v95 = sub_269855584();

      if ((v95 & 1) == 0)
      {
        if (qword_280322700 != -1)
        {
          OUTLINED_FUNCTION_0_4();
        }

        v96 = v169;
        __swift_project_value_buffer(v169, qword_281571B38);
        OUTLINED_FUNCTION_12_21();
        v97 = v151;
        v98(v151);
        v99 = sub_2698548B4();
        v100 = sub_269854F04();
        if (!os_log_type_enabled(v99, v100))
        {
          goto LABEL_30;
        }

        v101 = swift_slowAlloc();
        *v101 = 0;
        v102 = "Incorrect verb in intent for flow, ignoring input";
LABEL_29:
        _os_log_impl(&dword_269684000, v99, v100, v102, v101, 2u);
        MEMORY[0x26D647170](v101, -1, -1);
LABEL_30:

        (*(v64 + 8))(v97, v96);
        sub_2696CC460(v70);
        (*(v92 + 8))(v79, v71);
LABEL_52:
        v137 = 0;
        return v137 & 1;
      }
    }
  }

  if (qword_2803225D0 != -1)
  {
    swift_once();
  }

  v124 = _s10MediaNLAppVMa(0);
  sub_269761E88(qword_280323708, _s10MediaNLAppVMa);
  sub_269853D44();
  if (__swift_getEnumTagSinglePayload(v55, 1, v124) != 1)
  {
    sub_26969B0C0(v55, &qword_280323700, qword_26985B120);
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v96 = v169;
    __swift_project_value_buffer(v169, qword_281571B38);
    OUTLINED_FUNCTION_12_21();
    v97 = v160;
    v128(v160);
    v99 = sub_2698548B4();
    v100 = sub_269854F04();
    if (!os_log_type_enabled(v99, v100))
    {
      goto LABEL_30;
    }

    v101 = swift_slowAlloc();
    *v101 = 0;
    v102 = "Play on app, ignoring input";
    goto LABEL_29;
  }

  sub_2696CC460(v70);
  (*(v92 + 8))(v79, v71);
  v125 = &qword_280323700;
  v126 = qword_26985B120;
  v127 = v55;
LABEL_46:
  sub_26969B0C0(v127, v125, v126);
  v137 = 1;
  return v137 & 1;
}

uint64_t sub_269761E88(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_10_17()
{
  v2 = *(v0 - 128);
  v1 = *(v0 - 120);
  v3 = *(v0 - 280);
  v4 = *(v0 - 288);
}

id sub_269761F34()
{
  if (qword_2803224B0 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D710;
  qword_28033D718 = qword_28033D710;

  return v1;
}

uint64_t sub_269761F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v41 = a2;
  v40 = sub_2698538B4();
  v2 = OUTLINED_FUNCTION_8(v40);
  v38 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2698548D4();
  v9 = OUTLINED_FUNCTION_8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v37 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v36 = &v36 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v20 = __swift_project_value_buffer(v8, qword_28033D910);
  v21 = *(v11 + 16);
  v21(v19, v20, v8);
  v22 = sub_2698548B4();
  v23 = sub_269854F14();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_16_2();
    *v24 = 0;
    _os_log_impl(&dword_269684000, v22, v23, "PlayVideoFlowStrategy.actionForInput() called", v24, 2u);
    OUTLINED_FUNCTION_10();
  }

  v25 = *(v11 + 8);
  v25(v19, v8);
  sub_269853844();
  v26 = sub_269760E3C(v7);
  (*(v38 + 8))(v7, v40);
  if (v26)
  {
    v27 = v36;
    v21(v36, v20, v8);
    v28 = sub_2698548B4();
    v29 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_5(v29))
    {
      v30 = OUTLINED_FUNCTION_16_2();
      *v30 = 0;
      _os_log_impl(&dword_269684000, v28, v26, "PlayVideoFlowStrategy.actionForInput() handling", v30, 2u);
      OUTLINED_FUNCTION_10();
    }

    v25(v27, v8);
    return sub_269853004();
  }

  else
  {
    v32 = v37;
    v21(v37, v20, v8);
    v33 = sub_2698548B4();
    v34 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_5(v34))
    {
      v35 = OUTLINED_FUNCTION_16_2();
      *v35 = 0;
      _os_log_impl(&dword_269684000, v33, v26, "PlayVideoFlowStrategy.actionForInput() ignoring", v35, 2u);
      OUTLINED_FUNCTION_10();
    }

    v25(v32, v8);
    return sub_269853014();
  }
}

uint64_t sub_269762324(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80) - 8) + 64);
  v3[11] = OUTLINED_FUNCTION_4_7();
  v5 = sub_269852474();
  v3[12] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v3[13] = v6;
  v8 = *(v7 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v9 = sub_269851ED4();
  v3[16] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v3[17] = v10;
  v12 = *(v11 + 64);
  v3[18] = OUTLINED_FUNCTION_4_7();
  v13 = sub_269851EF4();
  v3[19] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v3[20] = v14;
  v16 = *(v15 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v17 = sub_269853874();
  v3[23] = v17;
  OUTLINED_FUNCTION_5_12(v17);
  v3[24] = v18;
  v20 = *(v19 + 64);
  v3[25] = OUTLINED_FUNCTION_4_7();
  v21 = *(*(type metadata accessor for MediaNLIntent() - 8) + 64);
  v3[26] = OUTLINED_FUNCTION_4_7();
  v22 = sub_269853F44();
  v3[27] = v22;
  OUTLINED_FUNCTION_5_12(v22);
  v3[28] = v23;
  v25 = *(v24 + 64);
  v3[29] = OUTLINED_FUNCTION_4_7();
  v26 = sub_2698538B4();
  v3[30] = v26;
  OUTLINED_FUNCTION_5_12(v26);
  v3[31] = v27;
  v29 = *(v28 + 64);
  v3[32] = OUTLINED_FUNCTION_4_7();
  v30 = sub_2698548D4();
  v3[33] = v30;
  OUTLINED_FUNCTION_5_12(v30);
  v3[34] = v31;
  v33 = *(v32 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26976263C, 0, 0);
}

id sub_26976263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v21 = *(v20 + 296);
  v22 = *(v20 + 264);
  v23 = *(v20 + 272);
  v24 = __swift_project_value_buffer(v22, qword_28033D910);
  *(v20 + 304) = v24;
  v25 = *(v23 + 16);
  *(v20 + 312) = v25;
  *(v20 + 320) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v21, v24, v22);
  v26 = sub_2698548B4();
  v27 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v27))
  {
    v28 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v28);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v29, v30, "PlayVideoFlowStrategy.makeIntentFromParse() called");
    OUTLINED_FUNCTION_18_7();
  }

  v31 = *(v20 + 296);
  v32 = *(v20 + 264);
  v33 = *(v20 + 272);
  v34 = *(v20 + 72);

  v35 = *(v33 + 8);
  *(v20 + 328) = v35;
  v35(v31, v32);
  v36 = *(v20 + 72);
  if (v34)
  {
    v37 = *(v20 + 72);
  }

  else
  {
    v37 = [objc_allocWithZone(type metadata accessor for PlayVideoIntent()) init];
  }

  *(v20 + 336) = v37;
  v38 = *(v20 + 80);
  v39 = v36;
  sub_2696D3780();
  v40 = *(v38 + 16);
  *(v20 + 344) = v40;
  if (v40)
  {
    v41 = *(v20 + 80);
    sub_269694CBC();
    v42 = v40;
    v43 = sub_269855034();
    OUTLINED_FUNCTION_0_16(v43, sel_setIsRemoteExecution_);

    __swift_project_boxed_opaque_existential_1((v41 + 224), *(v41 + 248));
    v44 = sub_2697AD1E8();
    if (v45)
    {
      v46 = sub_269854A64();
    }

    else
    {
      v46 = 0;
    }

    v47 = *(v20 + 80);
    OUTLINED_FUNCTION_0_16(v44, sel_setCrossDeviceRequestInitiator_);

    sub_269795600(v42);
  }

  v49 = *(v20 + 248);
  v48 = *(v20 + 256);
  v50 = *(v20 + 240);
  (*(v49 + 16))(v48, *(v20 + 64), v50);
  v51 = (*(v49 + 88))(v48, v50);
  if (v51 == *MEMORY[0x277D5C128])
  {
    v52 = *(v20 + 256);
    v53 = *(v20 + 232);
    v54 = *(v20 + 216);
    v55 = *(v20 + 224);
    v56 = *(v20 + 208);
    v57 = *(v20 + 80);
    (*(*(v20 + 248) + 96))(v52, *(v20 + 240));
    (*(v55 + 32))(v53, v52, v54);
    (*(v55 + 16))(v56, v53, v54);
    sub_2697A2360(v56);
    sub_2696CC460(v56);
    v58 = v57[6];
    v59 = v57[7];
    __swift_project_boxed_opaque_existential_1(v57 + 3, v58);
    if (sub_2696CB5D4(v58, v59))
    {
      sub_2696A73F8(*(v20 + 80) + 184, v20 + 16);
      __swift_project_boxed_opaque_existential_1((v20 + 16), *(v20 + 40));
      result = [v37 contentSearch];
      *(v20 + 352) = result;
      if (result)
      {
        v61 = swift_task_alloc();
        *(v20 + 360) = v61;
        *v61 = v20;
        v61[1] = sub_269762EC4;
        OUTLINED_FUNCTION_84();

        return sub_2697BB34C();
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    (*(*(v20 + 224) + 8))(*(v20 + 232), *(v20 + 216));
    goto LABEL_27;
  }

  if (v51 != *MEMORY[0x277D5C140])
  {
    v78 = *(v20 + 248);
    v79 = *(v20 + 256);
    v80 = *(v20 + 240);
    if (v51 != *MEMORY[0x277D5C148])
    {
      sub_2696BAE9C();
      swift_allocError();
      OUTLINED_FUNCTION_4_22(v108, 13);

      (*(v78 + 8))(v79, v80);
      goto LABEL_38;
    }

    (*(v78 + 96))(*(v20 + 256), *(v20 + 240));
    v81 = *v79;
    sub_2696D6C54();
    if (!v82)
    {
      sub_2696BAE9C();
      swift_allocError();
      OUTLINED_FUNCTION_4_22(v109, 11);

      goto LABEL_38;
    }

    v83 = v82;
    v84 = *(v20 + 104);
    v59 = *(v20 + 112);
    v85 = *(v20 + 96);
    sub_269854544();
    v86 = v83;
    v87 = sub_2698544E4();

    sub_2697A2434(v59, v87);

    (*(v84 + 8))(v59, v85);
LABEL_27:
    v90 = OUTLINED_FUNCTION_2_22();
    if (!v59 && (v90 & 1) != 0)
    {
      v91 = [*(v20 + 336) contentSearch];
      if (v91)
      {
        v37 = v91;
        sub_269694CBC();
        v92 = sub_269855044();
        OUTLINED_FUNCTION_0_16(v92, sel_setItemLimit_);
      }
    }

    v93 = OUTLINED_FUNCTION_3_28();
    v94(v93);
    sub_2698548B4();
    v95 = sub_269854F44();
    if (OUTLINED_FUNCTION_19_5(v95))
    {
      v96 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v96);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v97, v98, "Finished creating intent from parse");
      OUTLINED_FUNCTION_18_7();
    }

    OUTLINED_FUNCTION_1_23();
    OUTLINED_FUNCTION_9_19();
    v99 = OUTLINED_FUNCTION_12_22();
    (v37)(v99);

    OUTLINED_FUNCTION_6_27();
    OUTLINED_FUNCTION_84();

    return v102(v100, v101, v102, v103, v104, v105, v106, v107, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  v63 = *(v20 + 256);
  v64 = *(v20 + 192);
  v65 = *(v20 + 200);
  v66 = *(v20 + 176);
  v68 = *(v20 + 160);
  v67 = *(v20 + 168);
  v69 = *(v20 + 144);
  v70 = *(v20 + 136);
  a12 = *(v20 + 152);
  a13 = *(v20 + 128);
  v131 = *(v20 + 184);
  a16 = *(v20 + 96);
  a14 = *(v20 + 88);
  (*(*(v20 + 248) + 96))(v63, *(v20 + 240));
  (*(v64 + 32))(v65, v63, v131);
  sub_269853864();
  sub_269851EE4();
  v71 = *(v68 + 8);
  v71(v66, a12);
  a15 = sub_269851EB4();
  (*(v70 + 8))(v69, a13);
  sub_269853864();
  sub_2696D3C74();
  v71(v67, a12);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a14, 1, a16);
  v74 = *(v20 + 192);
  v73 = *(v20 + 200);
  v75 = *(v20 + 184);
  if (EnumTagSinglePayload != 1)
  {
    v59 = *(v20 + 120);
    v89 = *(v20 + 96);
    v88 = *(v20 + 104);
    (*(v88 + 32))(v59, *(v20 + 88), v89);
    sub_2697A2434(v59, a15);

    (*(v88 + 8))(v59, v89);
    (*(v74 + 8))(v73, v75);
    goto LABEL_27;
  }

  v76 = *(v20 + 88);

  sub_2696CC3F8(v76);
  sub_2696BAE9C();
  swift_allocError();
  OUTLINED_FUNCTION_4_22(v77, 11);

  (*(v74 + 8))(v73, v75);
LABEL_38:
  v111 = *(v20 + 288);
  v110 = *(v20 + 296);
  v112 = *(v20 + 280);
  v113 = *(v20 + 256);
  v114 = *(v20 + 232);
  v116 = *(v20 + 200);
  v115 = *(v20 + 208);
  v118 = *(v20 + 168);
  v117 = *(v20 + 176);
  v119 = *(v20 + 144);
  v129 = *(v20 + 120);
  v130 = *(v20 + 112);
  v132 = *(v20 + 88);

  v120 = *(v20 + 8);
  OUTLINED_FUNCTION_84();

  return v122(v121, v122, v123, v124, v125, v126, v127, v128, a9, a10, a11, a12, v129, v130, v132, a16, a17, a18, a19, a20);
}

uint64_t sub_269762EC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  v7 = *(v4 + 360);
  *v6 = *v2;
  *(v5 + 368) = v1;

  if (v1)
  {
    v8 = sub_2697631CC;
  }

  else
  {
    *(v5 + 376) = a1;
    v8 = sub_269763000;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_269763000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  v21 = *(v20 + 376);
  v22 = *(v20 + 336);
  v24 = *(v20 + 224);
  v23 = *(v20 + 232);
  v25 = *(v20 + 216);
  __swift_destroy_boxed_opaque_existential_0((v20 + 16));
  sub_269763C54(v21, v22);
  (*(v24 + 8))(v23, v25);
  v26 = OUTLINED_FUNCTION_2_22();
  if (!v23 && (v26 & 1) != 0)
  {
    v27 = [*(v20 + 336) contentSearch];
    if (v27)
    {
      v22 = v27;
      sub_269694CBC();
      v28 = sub_269855044();
      OUTLINED_FUNCTION_0_16(v28, sel_setItemLimit_);
    }
  }

  v29 = OUTLINED_FUNCTION_3_28();
  v30(v29);
  v31 = sub_2698548B4();
  v32 = sub_269854F44();
  if (OUTLINED_FUNCTION_19_5(v32))
  {
    v33 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v33);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v34, v35, "Finished creating intent from parse");
    OUTLINED_FUNCTION_18_7();
  }

  OUTLINED_FUNCTION_1_23();
  v48 = v37;
  v49 = v36;
  v50 = *(v20 + 176);
  v51 = *(v20 + 168);
  v52 = *(v20 + 144);
  v53 = *(v20 + 120);
  v54 = *(v20 + 112);
  v55 = *(v20 + 88);

  v38 = OUTLINED_FUNCTION_12_22();
  (v22)(v38);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_84();

  return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, v48, v49, v50, v51, v52, v53, v54, v55, a18, a19, a20);
}

uint64_t sub_2697631CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(uint64_t, uint64_t), uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = *(v28 + 368);
  v33 = *(v28 + 312);
  v32 = *(v28 + 320);
  v34 = *(v28 + 304);
  v35 = *(v28 + 288);
  v36 = *(v28 + 264);
  __swift_destroy_boxed_opaque_existential_0((v28 + 16));
  v33(v35, v34, v36);
  v37 = v31;
  v38 = sub_2698548B4();
  v39 = sub_269854F24();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = *(v28 + 368);
    v41 = *(v28 + 272);
    a12 = *(v28 + 264);
    a13 = *(v28 + 288);
    v42 = *(v28 + 224);
    a15 = *(v28 + 328);
    a16 = *(v28 + 232);
    a14 = *(v28 + 216);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    a17 = v44;
    *v43 = 136315138;
    *(v28 + 56) = v40;
    v45 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v46 = sub_269854AE4();
    v48 = v47;
    v49 = sub_26974F520(v46, v47, &a17);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_269684000, v38, v39, "Populating NLv3 suggested content failed: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    a15(a13, a12);
    (*(v42 + 8))(a16, a14);
  }

  else
  {
    v48 = *(v28 + 368);
    v50 = *(v28 + 328);
    v49 = *(v28 + 288);
    v51 = *(v28 + 264);
    v52 = *(v28 + 272);
    v54 = *(v28 + 224);
    v53 = *(v28 + 232);
    v55 = *(v28 + 216);

    v50(v49, v51);
    (*(v54 + 8))(v53, v55);
  }

  v56 = OUTLINED_FUNCTION_2_22();
  if (!v49 && (v56 & 1) != 0)
  {
    v57 = [*(v28 + 336) contentSearch];
    if (v57)
    {
      v48 = v57;
      sub_269694CBC();
      v58 = sub_269855044();
      OUTLINED_FUNCTION_0_16(v58, sel_setItemLimit_);
    }
  }

  v59 = OUTLINED_FUNCTION_3_28();
  v60(v59);
  sub_2698548B4();
  v61 = sub_269854F44();
  if (OUTLINED_FUNCTION_19_5(v61))
  {
    v62 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v62);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v63, v64, "Finished creating intent from parse");
    OUTLINED_FUNCTION_18_7();
  }

  OUTLINED_FUNCTION_1_23();
  OUTLINED_FUNCTION_9_19();
  v65 = OUTLINED_FUNCTION_12_22();
  (v48)(v65);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_84();

  return v68(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26976350C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  sub_269759494(v0 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  __swift_destroy_boxed_opaque_existential_0((v0 + 224));
  return v0;
}

uint64_t sub_269763554()
{
  sub_26976350C();

  return MEMORY[0x2821FE8D8](v0, 264, 7);
}

uint64_t sub_2697635C4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_269758AC8;

  return sub_269762324(a1, a2);
}

uint64_t sub_26976366C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PlayVideoFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_2697636B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for PlayVideoFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2697594E8;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_269763784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for PlayVideoFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2697594E8;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_269763850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for PlayVideoFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2697594E8;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_26976391C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for PlayVideoFlowStrategy();
  *v13 = v6;
  v13[1] = sub_269759010;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2697639F8()
{
  v2 = *v0;
  v3 = sub_269756480();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_269763A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for PlayVideoFlowStrategy();
  *v13 = v6;
  v13[1] = sub_2697594E8;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_269763B9C(uint64_t a1)
{
  result = sub_269763C14(&qword_2803240C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269763C14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlayVideoFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269763C54(uint64_t a1, void *a2)
{
  type metadata accessor for Content();
  v3 = sub_269854CA4();

  [a2 setSuggestedContent_];
}

void OUTLINED_FUNCTION_1_23()
{
  v1 = v0[41];
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[29];
  v9 = v0[25];
  v10 = v0[26];
}

uint64_t OUTLINED_FUNCTION_2_22()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 80);
  v3 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);

  return sub_269852E44();
}

uint64_t OUTLINED_FUNCTION_3_28()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[33];
  return v0[35];
}

uint64_t OUTLINED_FUNCTION_4_22@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 24) = 3;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_9_19()
{
  v4 = v1[22];
  v5 = v1[21];
  v3 = v1[18];
  v6 = v1[15];
  v7 = v1[14];
  v8 = v1[11];
}

id sub_269763DC0()
{
  if (qword_2803224B0 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D710;
  qword_28033D720 = qword_28033D710;

  return v1;
}

uint64_t sub_269763E24(uint64_t a1)
{
  v119 = 0;
  memset(v118, 0, sizeof(v118));
  sub_2698538C4();
  sub_269852C84();
  v86 = type metadata accessor for BaseDialogProvider();
  v87 = OUTLINED_FUNCTION_99_0();
  sub_269854474();
  sub_2698546A4();
  v85 = sub_269854694();
  v91 = type metadata accessor for MoveToGroupDevicesProvider();
  v84 = OUTLINED_FUNCTION_99_0();
  v1 = sub_269853264();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v82 = sub_269853254();
  v90 = type metadata accessor for FrontBoardOpenApplicationService();
  v80 = OUTLINED_FUNCTION_99_0();
  sub_2696F3F6C(v118, v113, &qword_280324188, &qword_26985F1D8);
  if (qword_2803226D0 != -1)
  {
    swift_once();
  }

  v89 = qword_28033D908;
  if (qword_280322650 != -1)
  {
    swift_once();
  }

  v4 = qword_28033D888;
  locked = type metadata accessor for DeviceLockedProvider();
  v76 = OUTLINED_FUNCTION_99_0();
  v78 = type metadata accessor for AVAllowBackgroundPlayback();
  v5 = OUTLINED_FUNCTION_99_0();
  v111 = &type metadata for LSApplicationRecordProvider;
  v112 = &xmmword_287A41430;
  v77 = type metadata accessor for CarPlaySupportProvider();
  OUTLINED_FUNCTION_25_3();
  v6 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v110, &type metadata for LSApplicationRecordProvider);
  *(v6 + 40) = &type metadata for LSApplicationRecordProvider;
  *(v6 + 48) = &xmmword_287A41430;
  __swift_destroy_boxed_opaque_existential_0(v110);
  v112 = &off_287A3DBA0;
  v111 = v86;
  v110[0] = v87;
  v7 = sub_269854674();
  v109 = MEMORY[0x277D61F08];
  v108 = v7;
  *&v107 = v85;
  v106[3] = &type metadata for CoreAnalyticsService;
  v106[4] = &xmmword_287A41610;
  v105[4] = &off_287A40140;
  v105[3] = v91;
  v105[0] = v84;
  v104 = MEMORY[0x277D5BD58];
  v103 = v1;
  *&v102 = v82;
  v100 = &type metadata for EncryptionProvider;
  v101 = &protocol witness table for EncryptionProvider;
  v98[3] = v90;
  v98[4] = &off_287A41CE0;
  v98[0] = v80;
  v83 = type metadata accessor for VideoPlaybackMonitor();
  v97[3] = v83;
  v97[4] = &off_287A47088;
  v97[0] = v89;
  v81 = type metadata accessor for CarSessionProvider();
  v96[3] = v81;
  v96[4] = &off_287A41458;
  v96[0] = v4;
  v95[3] = locked;
  v95[4] = &off_287A41B20;
  v95[0] = v76;
  v94[3] = v78;
  v94[0] = v5;
  v94[4] = &off_287A41358;
  v93[3] = v77;
  v93[4] = &off_287A41448;
  v93[0] = v6;
  v92[3] = &type metadata for LSApplicationRecordProvider;
  v92[4] = &xmmword_287A41430;
  type metadata accessor for PlayVideoHandleIntentStrategy();
  v8 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v110, v86);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v75 = (v13 - v12);
  (*(v14 + 16))();
  __swift_mutable_project_boxed_opaque_existential_1(v106, &type metadata for CoreAnalyticsService);
  __swift_mutable_project_boxed_opaque_existential_1(v105, v91);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v74 = (v19 - v18);
  (*(v20 + 16))();
  __swift_mutable_project_boxed_opaque_existential_1(v98, v90);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  v26 = (v25 - v24);
  (*(v27 + 16))(v25 - v24);
  __swift_mutable_project_boxed_opaque_existential_1(v97, v83);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_1();
  v33 = (v32 - v31);
  (*(v34 + 16))(v32 - v31);
  __swift_mutable_project_boxed_opaque_existential_1(v96, v81);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_1();
  v40 = (v39 - v38);
  (*(v41 + 16))(v39 - v38);
  __swift_mutable_project_boxed_opaque_existential_1(v95, locked);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_1();
  v47 = (v46 - v45);
  (*(v48 + 16))(v46 - v45);
  __swift_mutable_project_boxed_opaque_existential_1(v94, v78);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_3_1();
  v54 = (v53 - v52);
  (*(v55 + 16))(v53 - v52);
  __swift_mutable_project_boxed_opaque_existential_1(v93, v77);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_3_1();
  v61 = (v60 - v59);
  (*(v62 + 16))(v60 - v59);
  __swift_mutable_project_boxed_opaque_existential_1(v92, &type metadata for LSApplicationRecordProvider);
  v63 = *v75;
  v64 = *v74;
  v65 = *v26;
  v66 = *v33;
  v67 = *v40;
  v68 = *v47;
  v69 = *v54;
  v70 = *v61;
  *(v8 + 136) = v86;
  *(v8 + 144) = &off_287A3DBA0;
  *(v8 + 112) = v63;
  *(v8 + 176) = &type metadata for CoreAnalyticsService;
  *(v8 + 184) = &xmmword_287A41610;
  *(v8 + 456) = v91;
  *(v8 + 464) = &off_287A40140;
  *(v8 + 432) = v64;
  *(v8 + 496) = v90;
  *(v8 + 504) = &off_287A41CE0;
  *(v8 + 472) = v65;
  *(v8 + 576) = v83;
  *(v8 + 584) = &off_287A47088;
  *(v8 + 552) = v66;
  *(v8 + 616) = v81;
  *(v8 + 624) = &off_287A41458;
  *(v8 + 592) = v67;
  *(v8 + 656) = locked;
  *(v8 + 664) = &off_287A41B20;
  *(v8 + 632) = v68;
  *(v8 + 696) = v78;
  *(v8 + 704) = &off_287A41358;
  *(v8 + 672) = v69;
  *(v8 + 736) = v77;
  *(v8 + 744) = &off_287A41448;
  *(v8 + 712) = v70;
  *(v8 + 776) = &type metadata for LSApplicationRecordProvider;
  *(v8 + 784) = &xmmword_287A41430;

  sub_26969B0C0(v118, &qword_280324188, &qword_26985F1D8);
  *(v8 + 792) = 0;
  sub_2696A73F8(v117, v8 + 24);
  sub_2696A73F8(v117, v8 + 64);
  type metadata accessor for LocUtil();
  OUTLINED_FUNCTION_25_3();
  v71 = swift_allocObject();
  sub_26968E5D4(v117, v71 + 16);
  *(v8 + 104) = v71;
  *(v8 + 16) = a1;
  sub_2696A73F8(v116, v8 + 272);
  sub_26968E5D4(&v115, v8 + 312);
  sub_26968E5D4(v116, v8 + 352);
  sub_26968E5D4(&v107, v8 + 392);
  sub_26968E5D4(&v102, v8 + 192);
  sub_26968E5D4(&v99, v8 + 232);
  v72 = v113[1];
  *(v8 + 512) = v113[0];
  *(v8 + 528) = v72;
  *(v8 + 544) = v114;
  __swift_destroy_boxed_opaque_existential_0(v92);
  __swift_destroy_boxed_opaque_existential_0(v93);
  __swift_destroy_boxed_opaque_existential_0(v94);
  __swift_destroy_boxed_opaque_existential_0(v95);
  __swift_destroy_boxed_opaque_existential_0(v96);
  __swift_destroy_boxed_opaque_existential_0(v97);
  __swift_destroy_boxed_opaque_existential_0(v98);
  __swift_destroy_boxed_opaque_existential_0(v105);
  __swift_destroy_boxed_opaque_existential_0(v106);
  __swift_destroy_boxed_opaque_existential_0(v110);
  return v8;
}

uint64_t sub_269764850@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  v4 = OUTLINED_FUNCTION_8_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  v9 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  v18 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  if (sub_269852D04())
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_22();
      swift_once();
    }

    v19 = __swift_project_value_buffer(v9, qword_28033D910);
    (*(v11 + 16))(v17, v19, v9);
    v20 = sub_2698548B4();
    v21 = sub_269854F14();
    v22 = OUTLINED_FUNCTION_62_1();
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_9_17();
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_269684000, v20, v21, "PlayVideoIntentHandleStrategy.makePreHandleIntentOutput() clearing any existing views for CarPlay", v24, 2u);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    (*(v11 + 8))(v17, v9);
    v25 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    OUTLINED_FUNCTION_51_4();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_2698590C0;
    *(v26 + 32) = [objc_allocWithZone(MEMORY[0x277D47A00]) init];
    sub_26976FAD4(v26, v25);
    v27 = *MEMORY[0x277D48BE8];
    v28 = sub_269854A94();
    sub_26976FB54(v28, v29, v25);
    [v25 setTemporary_];
    sub_269853234();
    v30 = OUTLINED_FUNCTION_50_3();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    v34 = sub_2698538F4();
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
    v35 = MEMORY[0x277D5C1D8];
    a1[3] = v34;
    a1[4] = v35;
    __swift_allocate_boxed_opaque_existential_1(a1);
    v36 = OUTLINED_FUNCTION_22_10();
    MEMORY[0x26D644000](v36);

    sub_26969B0C0(&v40, &qword_280323028, qword_26985AD20);
    return sub_26969B0C0(v8, &qword_280323010, &unk_26985B640);
  }

  else
  {
    v38 = sub_2698538F4();
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
    v39 = MEMORY[0x277D5C1D8];
    a1[3] = v38;
    a1[4] = v39;
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_2698538E4();
  }
}

uint64_t sub_269764BA4()
{
  OUTLINED_FUNCTION_2_7();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v4);
  v6 = *(v5 + 64);
  v1[20] = OUTLINED_FUNCTION_4_7();
  v7 = sub_269853634();
  v1[21] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[22] = v8;
  v10 = *(v9 + 64);
  v1[23] = OUTLINED_FUNCTION_4_7();
  v11 = sub_269851C74();
  v1[24] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[25] = v12;
  v14 = *(v13 + 64);
  v1[26] = OUTLINED_FUNCTION_37_0();
  v1[27] = swift_task_alloc();
  v15 = sub_2698548D4();
  v1[28] = v15;
  OUTLINED_FUNCTION_5_12(v15);
  v1[29] = v16;
  v18 = *(v17 + 64);
  v1[30] = OUTLINED_FUNCTION_37_0();
  v1[31] = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_269764D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v15 = *(v14 + 248);
  v16 = *(v14 + 224);
  v17 = *(v14 + 232);
  v18 = __swift_project_value_buffer(v16, qword_28033D910);
  v19 = *(v17 + 16);
  v19(v15, v18, v16);
  v20 = sub_2698548B4();
  v21 = sub_269854F14();
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_9_17();
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_269684000, v20, v21, "PlayVideoHandleIntentFlowStrategy.makeIntentHandledResponse() called", v22, 2u);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v23 = *(v14 + 248);
  v24 = *(v14 + 224);
  v25 = *(v14 + 232);
  v26 = *(v14 + 144);

  v27 = *(v25 + 8);
  v28 = OUTLINED_FUNCTION_34_0();
  v27(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240E0, &unk_26985F1A0);
  v29 = sub_2698534E4();
  v30 = [v29 urlToLaunch];

  if (!v30)
  {
    sub_2696BAE9C();
    OUTLINED_FUNCTION_20_4();
    v49 = swift_allocError();
    *v50 = 0xD00000000000001ALL;
    v50[1] = 0x800000026987EC30;
    OUTLINED_FUNCTION_81_0(v49, v50);
    swift_willThrow();
LABEL_11:
    OUTLINED_FUNCTION_45_3();

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_116();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
  }

  a9 = v27;
  a10 = v18;
  v31 = v19;
  v33 = *(v14 + 208);
  v32 = *(v14 + 216);
  v34 = *(v14 + 192);
  v35 = *(v14 + 200);
  v36 = *(v14 + 152);
  sub_269851C44();

  v37 = *(v35 + 32);
  v38 = OUTLINED_FUNCTION_44_0();
  v39(v38);
  v40 = *(v36 + 16);
  *(v14 + 256) = v40;
  if (v40)
  {
    v40;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    *(v14 + 264) = v41;
    *v41 = v42;
    v41[1] = sub_269765330;
    v43 = *(v14 + 216);
    v44 = *(v14 + 144);
    v45 = *(v14 + 152);
    v46 = *(v14 + 136);
    OUTLINED_FUNCTION_106_0();
    OUTLINED_FUNCTION_116();

    return sub_269765DCC();
  }

  v59 = *(v14 + 152);
  v60 = v59[7];
  __swift_project_boxed_opaque_existential_1(v59 + 3, v59[6]);
  OUTLINED_FUNCTION_44_0();
  if ((sub_269852D04() & 1) == 0)
  {
    goto LABEL_18;
  }

  v61 = *(v14 + 144);
  v62 = sub_2698534E4();
  v63 = sub_26976FBB8(v62);
  *(v14 + 280) = v64;
  if (!v64)
  {
    v31(*(v14 + 240), a10, *(v14 + 224));
    v81 = sub_2698548B4();
    sub_269854F24();
    v82 = OUTLINED_FUNCTION_62_1();
    if (os_log_type_enabled(v82, v83))
    {
      OUTLINED_FUNCTION_9_17();
      v84 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_2(v84);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v85, v86, v87, v88, v89, 2u);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    v91 = *(v14 + 232);
    v90 = *(v14 + 240);
    v93 = *(v14 + 216);
    v92 = *(v14 + 224);
    v94 = *(v14 + 192);
    v95 = *(v14 + 200);

    v96 = OUTLINED_FUNCTION_22_3();
    a9(v96);
    sub_2696BAE9C();
    OUTLINED_FUNCTION_20_4();
    v97 = swift_allocError();
    *v98 = 0xD000000000000022;
    v98[1] = 0x800000026987EC50;
    OUTLINED_FUNCTION_81_0(v97, v98);
    swift_willThrow();
    v99 = *(v95 + 8);
    v100 = OUTLINED_FUNCTION_44_0();
    v101(v100);
    goto LABEL_11;
  }

  v65 = v63;
  v66 = v64;
  OUTLINED_FUNCTION_95_1((*(v14 + 152) + 712), *(*(v14 + 152) + 736));
  if (sub_2697AE1AC(v65, v66))
  {

LABEL_18:
    v67 = *(v14 + 216);
    v68 = *(v14 + 152);
    sub_26969329C(0, &qword_280323038, 0x277D479F0);
    v69 = sub_2696CD66C(1);
    *(v14 + 304) = v69;
    v70 = sub_269851C24();
    [v69 setPunchOutUri_];

    sub_2696A73F8(v68 + 272, v14 + 16);
    v71 = *(v14 + 48);
    __swift_project_boxed_opaque_existential_1((v14 + 16), *(v14 + 40));
    v72 = v69;
    OUTLINED_FUNCTION_44_0();
    sub_269853474();
    if (v73)
    {
      v74 = sub_269854A64();
    }

    else
    {
      v74 = 0;
    }

    v75 = *(v14 + 152);
    __swift_destroy_boxed_opaque_existential_0((v14 + 16));
    [v72 setRefId_];

    sub_2696A73F8(v75 + 192, v14 + 56);
    v76 = *(v14 + 80);
    *(v14 + 312) = v76;
    *(v14 + 328) = __swift_project_boxed_opaque_existential_1((v14 + 56), v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F8, &unk_26985F1C0);
    inited = swift_initStackObject();
    *(v14 + 336) = inited;
    *(inited + 16) = xmmword_269857710;
    v78 = swift_task_alloc();
    *(v14 + 344) = v78;
    *v78 = v14;
    v78[1] = sub_2697656A0;
    v79 = *(v14 + 152);
    OUTLINED_FUNCTION_44_4(*(v14 + 144));
    OUTLINED_FUNCTION_116();

    return sub_26976C448();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v14 + 288) = v102;
  *v102 = v103;
  v102[1] = sub_2697654D8;
  v104 = *(v14 + 216);
  v105 = *(v14 + 144);
  v106 = *(v14 + 152);
  v107 = *(v14 + 136);
  OUTLINED_FUNCTION_116();

  return sub_269769010();
}

uint64_t sub_269765330()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26976542C()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);

  v4 = OUTLINED_FUNCTION_5_21();
  v5(v4);
  OUTLINED_FUNCTION_68_2();

  OUTLINED_FUNCTION_4_17();

  return v6();
}

uint64_t sub_2697654D8()
{
  OUTLINED_FUNCTION_8_5();
  v2 = *v1;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v5 = *(v2 + 288);
  *v4 = *v1;
  *(v3 + 296) = v0;

  v6 = *(v2 + 280);

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2697655FC()
{
  OUTLINED_FUNCTION_34();
  (*(v0[25] + 8))(v0[27], v0[24]);
  OUTLINED_FUNCTION_68_2();

  OUTLINED_FUNCTION_4_17();

  return v1();
}

uint64_t sub_2697656A0()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v8 = *(v7 + 344);
  v9 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;
  *(v5 + 352) = v0;

  if (!v0)
  {
    *(v5 + 360) = v3;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2697657AC()
{
  OUTLINED_FUNCTION_34();
  v1 = 0;
  *(v0[42] + 32) = v0[45];
  v2 = MEMORY[0x277D84F90];
  for (i = MEMORY[0x277D84F90]; ; v2 = i)
  {
    v0[46] = v2;
    if (v1)
    {
      break;
    }

    v3 = *(v0[42] + 32);
    if (!v3)
    {
      break;
    }

    v4 = v3;
    v5 = MEMORY[0x26D645B90]();
    OUTLINED_FUNCTION_104(v5, v6, v7, v8, v9, v10, v11, v12, i);
    if (v13)
    {
      sub_269854CD4();
    }

    sub_269854CF4();
    v1 = 1;
  }

  v14 = v0[38];
  v15 = v0[23];
  v16 = v0[20];
  v17 = v0[42];
  swift_setDeallocating();
  sub_269819DC0();
  sub_269852E64();
  *(swift_task_alloc() + 16) = v14;
  sub_2698535C4();

  v18 = *(MEMORY[0x277D5BE58] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[47] = v19;
  *v19 = v20;
  v19[1] = sub_269765934;
  v21 = v0[40];
  v22 = v0[41];
  v23 = v0[39];
  v24 = v0[23];
  v25 = v0[17];
  OUTLINED_FUNCTION_106_0();

  return MEMORY[0x2821BB488](v26, v27, v28, v29, v30);
}

uint64_t sub_269765934()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v2 = v1[47];
  v3 = v1[46];
  v4 = v1[23];
  v5 = v1[22];
  v6 = v1[21];
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_12_23();
  v10(v9);
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_269765A88()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);

  v4 = OUTLINED_FUNCTION_5_21();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  OUTLINED_FUNCTION_68_2();

  OUTLINED_FUNCTION_4_17();

  return v6();
}

uint64_t sub_269765B3C()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);

  v4 = OUTLINED_FUNCTION_5_21();
  v5(v4);
  v6 = *(v0 + 272);
  OUTLINED_FUNCTION_45_3();

  OUTLINED_FUNCTION_7_7();

  return v7();
}

uint64_t sub_269765BEC()
{
  OUTLINED_FUNCTION_34();
  (*(v0[25] + 8))(v0[27], v0[24]);
  v1 = v0[37];
  OUTLINED_FUNCTION_45_3();

  OUTLINED_FUNCTION_7_7();

  return v2();
}

uint64_t sub_269765C94()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 336);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);

  v5 = OUTLINED_FUNCTION_12_23();
  v6(v5);
  *(v1 + 16) = 0;
  swift_setDeallocating();
  sub_269819DC0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v7 = *(v0 + 352);
  OUTLINED_FUNCTION_45_3();

  OUTLINED_FUNCTION_7_7();

  return v8();
}

uint64_t sub_269765D60(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2698590C0;
  *(v3 + 32) = a2;
  v4 = a2;
  return sub_269853614();
}

uint64_t sub_269765DCC()
{
  OUTLINED_FUNCTION_2_7();
  v1[107] = v0;
  v1[106] = v2;
  v1[105] = v3;
  v1[104] = v4;
  v1[103] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324098, &qword_26985EB78);
  OUTLINED_FUNCTION_8_9(v6);
  v8 = *(v7 + 64);
  v1[108] = OUTLINED_FUNCTION_4_7();
  v9 = type metadata accessor for VideoDataModels.ButtonModel(0);
  v1[109] = v9;
  OUTLINED_FUNCTION_8_9(v9);
  v11 = *(v10 + 64);
  v1[110] = OUTLINED_FUNCTION_4_7();
  v12 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v12);
  v14 = *(v13 + 64);
  v1[111] = OUTLINED_FUNCTION_4_7();
  v15 = sub_269853634();
  v1[112] = v15;
  OUTLINED_FUNCTION_5_12(v15);
  v1[113] = v16;
  v18 = *(v17 + 64);
  v1[114] = OUTLINED_FUNCTION_4_7();
  v19 = sub_2698548D4();
  v1[115] = v19;
  OUTLINED_FUNCTION_5_12(v19);
  v1[116] = v20;
  v22 = *(v21 + 64);
  v1[117] = OUTLINED_FUNCTION_37_0();
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();
  v1[120] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  OUTLINED_FUNCTION_8_9(v23);
  v25 = *(v24 + 64);
  v1[121] = OUTLINED_FUNCTION_4_7();
  v26 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_269765F8C()
{
  OUTLINED_FUNCTION_28_6();
  v45 = v0;
  v3 = v0[107];
  v4 = v0[105];
  v5 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v0[122] = v5;
  v6 = sub_269851C24();
  [v5 setPunchOutUri_];

  v8 = v3[6];
  v7 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v8);
  if (sub_2696CB5D4(v8, v7) & 1) != 0 || (v9 = v0[104], v10 = sub_269792920(), (v10))
  {
    v11 = v0[106];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240E0, &unk_26985F1A0);
    v0[123] = sub_269853504();
    v0[124] = sub_2698534E4();
    v0[92] = &type metadata for ContentResolver;
    v0[93] = &off_287A42478;
    OUTLINED_FUNCTION_25_3();
    v12 = swift_allocObject();
    v0[89] = v12;
    v12[5] = &type metadata for UTSProvider;
    v12[6] = &off_287A43FA8;
    v13 = swift_allocObject();
    v12[2] = v13;
    v43 = &type metadata for CoreAnalyticsService;
    v44 = &xmmword_287A41610;
    v13[5] = &type metadata for UTSNetworkProvider;
    v13[6] = &off_287A43DC0;
    v14 = swift_allocObject();
    v13[2] = v14;
    sub_2697D24B0(&v42, (v14 + 16));
    v13[10] = &type metadata for CoreAnalyticsService;
    v13[11] = &xmmword_287A41610;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[125] = v15;
    *v15 = v16;
    v15[1] = sub_269766304;
    v17 = v0[121];
    v18 = v0[107];
    v19 = v0[104];
    OUTLINED_FUNCTION_106_0();

    return sub_269767C58();
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_22();
      v10 = swift_once();
    }

    v21 = v0[120];
    v22 = v0[116];
    v23 = v0[115];
    v0[126] = OUTLINED_FUNCTION_29_2(v10, qword_28033D910);
    v0[127] = *(v22 + 16);
    v0[128] = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v24 = OUTLINED_FUNCTION_12_11();
    v25(v24);
    v26 = sub_2698548B4();
    v27 = sub_269854F14();
    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_9_17();
      v28 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_2(v28);
      OUTLINED_FUNCTION_15_13(&dword_269684000, v29, v30, "PlayVideoHandleIntentFlowStrategy.makeIntentHandledResponse submitting appPunchout command to remote...");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    OUTLINED_FUNCTION_96_1();
    v0[129] = *(v1 + 8);
    v31 = OUTLINED_FUNCTION_22_3();
    v32(v31);
    sub_2696A73F8(v2 + 272, (v0 + 74));
    OUTLINED_FUNCTION_116_0();
    v0[130] = v33;
    v34 = *(MEMORY[0x277D5BFA8] + 4);
    v35 = swift_task_alloc();
    v0[131] = v35;
    sub_26969329C(0, &qword_2803239C0, 0x277D471B0);
    *v35 = v0;
    v36 = OUTLINED_FUNCTION_26_12();

    return MEMORY[0x2821BB680](v36, v37, v38, v39, v40, v41);
  }
}

uint64_t sub_269766304()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v5 = v4[125];
  v6 = v4[124];
  v7 = v4[123];
  v8 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0((v2 + 712));
  v10 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_269766420()
{
  OUTLINED_FUNCTION_92_0();
  v3 = v0[121];
  v4 = sub_269851C74();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    v5 = sub_26969B0C0(v3, &qword_280323030, &qword_26985BAE0);
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_22();
      v5 = swift_once();
    }

    v6 = v0[120];
    v7 = v0[116];
    v8 = v0[115];
    v0[126] = OUTLINED_FUNCTION_29_2(v5, qword_28033D910);
    v0[127] = *(v7 + 16);
    v0[128] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9 = OUTLINED_FUNCTION_12_11();
    v10(v9);
    v11 = sub_2698548B4();
    v12 = sub_269854F14();
    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_9_17();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_2(v13);
      OUTLINED_FUNCTION_15_13(&dword_269684000, v14, v15, "PlayVideoHandleIntentFlowStrategy.makeIntentHandledResponse submitting appPunchout command to remote...");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    OUTLINED_FUNCTION_96_1();
    v0[129] = *(v1 + 8);
    v16 = OUTLINED_FUNCTION_22_3();
    v17(v16);
    sub_2696A73F8(v2 + 272, (v0 + 74));
    OUTLINED_FUNCTION_116_0();
    v0[130] = v18;
    v19 = *(MEMORY[0x277D5BFA8] + 4);
    v20 = swift_task_alloc();
    v0[131] = v20;
    sub_26969329C(0, &qword_2803239C0, 0x277D471B0);
    *v20 = v0;
    v21 = OUTLINED_FUNCTION_26_12();

    return MEMORY[0x2821BB680](v21, v22, v23, v24, v25, v26);
  }

  else
  {
    v27 = v0[122];
    v28 = v0[103];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    OUTLINED_FUNCTION_51_4();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2698590C0;
    *(v29 + 32) = v27;
    v30 = sub_2698538F4();
    v31 = MEMORY[0x277D5C1D8];
    v28[3] = v30;
    v28[4] = v31;
    __swift_allocate_boxed_opaque_existential_1(v28);
    sub_2698538E4();
    sub_26969B0C0(v3, &qword_280323030, &qword_26985BAE0);
    OUTLINED_FUNCTION_16_15();

    OUTLINED_FUNCTION_4_17();

    return v32();
  }
}

uint64_t sub_2697666FC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 1048);
  *v4 = *v1;
  v3[132] = v7;
  v3[133] = v0;

  if (!v0)
  {
    v8 = v3[130];
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269766808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_6();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_92_0();
  a22 = v24;
  v92 = (v24 + 328);
  v27 = *(v24 + 1056);
  v28 = *(v24 + 1024);
  v29 = *(v24 + 1016);
  v30 = *(v24 + 1008);
  v31 = *(v24 + 952);
  v32 = *(v24 + 920);
  __swift_destroy_boxed_opaque_existential_0((v24 + 592));
  v33 = OUTLINED_FUNCTION_50_0();
  v29(v33);
  v34 = v27;
  v35 = sub_2698548B4();
  LOBYTE(v31) = sub_269854F14();

  if (os_log_type_enabled(v35, v31))
  {
    v36 = *(v24 + 1056);
    OUTLINED_FUNCTION_40_4();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v36;
    *v38 = v36;
    v39 = v36;
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
    sub_26969B0C0(v38, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v45 = *(v24 + 1064);
  v46 = *(v24 + 1056);
  v47 = *(v24 + 1032);
  v48 = *(v24 + 952);
  v49 = *(v24 + 928);
  v50 = *(v24 + 920);
  v51 = *(v24 + 856);
  v52 = *(v24 + 848);

  *(v24 + 1072) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v48, v50);
  sub_26976FC28(v51 + 352, v24 + 96);
  sub_269795A18(1);

  sub_269759494(v24 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240E0, &unk_26985F1A0);
  v53 = sub_269853504();
  sub_26976CEF0(v53, v92);
  *(v24 + 1080) = v45;
  if (v45)
  {
    v54 = v45;

    v55 = OUTLINED_FUNCTION_71_2();
    v56(v55);
    v57 = v45;
    v58 = sub_2698548B4();
    v59 = sub_269854F24();

    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v24 + 1072);
    v62 = *(v24 + 1032);
    v63 = *(v24 + 936);
    v64 = *(v24 + 920);
    if (v60)
    {
      OUTLINED_FUNCTION_40_4();
      v92 = v61;
      v65 = swift_slowAlloc();
      OUTLINED_FUNCTION_59_1();
      a10 = v62;
      v66 = swift_slowAlloc();
      a12 = v66;
      *v65 = 136315138;
      *(v24 + 816) = v54;
      v67 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
      v68 = sub_269854AE4();
      v70 = sub_26974F520(v68, v69, &a12);

      *(v65 + 4) = v70;
      OUTLINED_FUNCTION_14_2(&dword_269684000, v71, v72, "PlayVideoHandleIntentFlowStrategy.makeIntentHandledResponse makeDialogForPlayVideoHandled() failed with error: %s");
      __swift_destroy_boxed_opaque_existential_0(v66);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();

      v73 = OUTLINED_FUNCTION_34_0();
      a10(v73);
    }

    else
    {

      v80 = OUTLINED_FUNCTION_34_0();
      v62(v80);
    }

    OUTLINED_FUNCTION_94_1();
    v81 = v54;
    sub_269795A18(0);

    sub_269759494(v24 + 176);
    swift_willThrow();

    if (!v64)
    {
      OUTLINED_FUNCTION_100_0();
      sub_2696C285C(v24 + 400);
    }

    v82 = *(v24 + 968);
    v83 = *(v24 + 960);
    OUTLINED_FUNCTION_27_9();

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_7_8();

    return v85(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, v92, a12, a13, a14, a15, a16);
  }

  else
  {
    v74 = *(v24 + 856);

    v75 = *(v24 + 344);
    *(v24 + 544) = *v92;
    *(v24 + 560) = v75;
    *(v24 + 576) = *(v24 + 360);
    v76 = *(v24 + 384);
    *(v24 + 1088) = *(v24 + 376);
    *(v24 + 1096) = v76;
    *(v24 + 322) = *(v24 + 392);
    sub_2696A73F8(v74 + 312, v24 + 632);
    v77 = swift_task_alloc();
    *(v24 + 1104) = v77;
    *v77 = v24;
    v77[1] = sub_269766C4C;
    OUTLINED_FUNCTION_44_4(*(v24 + 832));
    OUTLINED_FUNCTION_7_8();

    return sub_2697962EC();
  }
}

uint64_t sub_269766C4C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  *(v2 + 784) = v4;
  *(v2 + 776) = v5;
  *(v2 + 768) = v6;
  *(v2 + 760) = v7;
  *(v2 + 752) = v0;
  v9 = *(v8 + 1104);
  v10 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v11 = v10;
  *(v2 + 1112) = v12;

  __swift_destroy_boxed_opaque_existential_0((v2 + 632));
  v13 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_269766D48()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 1112);
  if (v1 == 1)
  {
    v2 = *(v0 + 323);
    v3 = *(v0 + 322);
    v4 = *(v0 + 1096);
    v5 = *(v0 + 1088);
  }

  else
  {
    v6 = *(v0 + 784);
    v7 = *(v0 + 768);
    v8 = *(v0 + 760);
    *(v0 + 792) = *(v0 + 376);
    v2 = v8 & 1;
    sub_2696A8078(v0 + 792);
    if (v1)
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }

    if (v1)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0xE000000000000000;
    }

    v3 = v6 & 1;
  }

  *(v0 + 325) = v2;
  *(v0 + 324) = v3;
  *(v0 + 1128) = v5;
  *(v0 + 1120) = v4;
  v9 = *(v0 + 856);
  v10 = *(v0 + 344);
  *(v0 + 256) = *(v0 + 328);
  *(v0 + 272) = v10;
  *(v0 + 288) = *(v0 + 360);
  *(v0 + 304) = v5;
  *(v0 + 312) = v4;
  *(v0 + 320) = v3;
  *(v0 + 321) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 1136) = v11;
  *v11 = v12;
  v11[1] = sub_269766E6C;

  return sub_2696BE900();
}

uint64_t sub_269766E6C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 1136);
  *v3 = *v1;
  *(v2 + 1144) = v6;
  *(v2 + 1152) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_269766F74()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[114];
  v2 = v0[111];
  v3 = v0[107];
  v4 = v0[104];
  sub_269852E64();
  sub_2698535C4();
  sub_269854614();
  v0[145] = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[146] = v6;
  *v6 = v7;
  v6[1] = sub_269767064;
  v8 = v0[108];

  return sub_269796CBC();
}

uint64_t sub_269767064()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 1168);
  v3 = *(v1 + 1160);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_269767164()
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_49();
  v1 = v0[108];
  v2 = v0[107];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[109]) == 1)
  {
    v3 = v0[143];
    sub_26969B0C0(v1, &qword_280324098, &qword_26985EB78);
    v4 = v2[28];
    __swift_project_boxed_opaque_existential_1(v2 + 24, v2[27]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    OUTLINED_FUNCTION_51_4();
    v5 = swift_allocObject();
    v0[149] = v5;
    *(v5 + 16) = xmmword_2698590C0;
    *(v5 + 32) = v3;
    v6 = *(MEMORY[0x277D5BE58] + 4);
    v7 = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[150] = v8;
    *v8 = v9;
    v8[1] = sub_2697675C8;
    v10 = v0[114];
    v11 = v0[103];
    OUTLINED_FUNCTION_76_2();

    return MEMORY[0x2821BB488](v12, v13, v14, v15, v16);
  }

  else
  {
    v18 = v0[143];
    v19 = v0[110];
    v20 = OUTLINED_FUNCTION_22_10();
    sub_26975DCA4(v20, v21);
    v22 = v2[28];
    __swift_project_boxed_opaque_existential_1(v2 + 24, v2[27]);
    v0[87] = type metadata accessor for VideoDataModels(0);
    v0[88] = sub_26976FC84(&qword_280323A28, 255, type metadata accessor for VideoDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 84);
    sub_269720A64(v19, boxed_opaque_existential_1);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    OUTLINED_FUNCTION_51_4();
    v24 = swift_allocObject();
    v0[147] = v24;
    *(v24 + 16) = xmmword_2698590C0;
    *(v24 + 32) = v18;
    v25 = *(MEMORY[0x277D5BE48] + 4);
    v26 = v18;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[148] = v27;
    *v27 = v28;
    v27[1] = sub_2697673F0;
    v29 = v0[114];
    v30 = v0[103];
    OUTLINED_FUNCTION_76_2();

    return MEMORY[0x2821BB478](v31, v32, v33, v34, v35, v36);
  }
}

uint64_t sub_2697673F0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v5 = *(v4 + 1184);
  v6 = *(v4 + 1176);
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 672));
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2697674F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_49();
  sub_26976FCC8(*(v11 + 880), type metadata accessor for VideoDataModels.ButtonModel);
  v13 = OUTLINED_FUNCTION_52_1();
  v14(v13);

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_16_15();

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_75_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_2697675C8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 1200);
  v3 = *(v1 + 1192);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2697676C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_49();
  v12 = OUTLINED_FUNCTION_52_1();
  v13(v12);

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_16_15();

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_75_1();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_269767784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  v25 = v22[133];
  v26 = v22[130];
  v27 = v22[128];
  v28 = v22[127];
  v29 = v22[126];
  v30 = v22[118];
  v31 = v22[115];

  __swift_destroy_boxed_opaque_existential_0(v22 + 74);
  v28(v30, v29, v31);
  v32 = v25;
  v33 = sub_2698548B4();
  LOBYTE(v31) = sub_269854F24();

  if (os_log_type_enabled(v33, v31))
  {
    v34 = v22[133];
    a9 = v22[129];
    v35 = v22[118];
    v36 = v22[116];
    v37 = v22[115];
    OUTLINED_FUNCTION_40_4();
    v38 = swift_slowAlloc();
    OUTLINED_FUNCTION_59_1();
    v39 = swift_slowAlloc();
    a10 = v39;
    *v38 = 136315138;
    v22[101] = v34;
    v40 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v41 = sub_269854AE4();
    v43 = sub_26974F520(v41, v42, &a10);

    *(v38 + 4) = v43;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    v49 = OUTLINED_FUNCTION_22_3();
    a9(v49);
  }

  else
  {
    v50 = v22[129];
    v51 = v22[118];
    v52 = v22[116];
    v53 = v22[115];

    v54 = OUTLINED_FUNCTION_22_3();
    v50(v54);
  }

  v55 = v22[133];
  v56 = v22[122];
  v57 = v22[107];
  __swift_project_boxed_opaque_existential_1((v57 + 152), *(v57 + 176));
  sub_2697B426C();
  sub_26976FC28(v57 + 352, (v22 + 2));
  v58 = v55;
  sub_269795A18(0);

  sub_269759494((v22 + 2));
  swift_willThrow();

  v59 = v22[133];
  v60 = v22[121];
  v61 = v22[120];
  OUTLINED_FUNCTION_27_9();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_269767A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = *(v28 + 1152);
  LODWORD(v32) = *(v28 + 325);
  v33 = *(v28 + 324);
  v34 = *(v28 + 1128);
  v64 = *(v28 + 1120);
  v35 = OUTLINED_FUNCTION_71_2();
  v36(v35);
  v37 = v31;
  v38 = sub_2698548B4();
  v39 = sub_269854F24();

  if (os_log_type_enabled(v38, v39))
  {
    a12 = *(v28 + 1032);
    a13 = *(v28 + 1072);
    a10 = *(v28 + 920);
    a11 = *(v28 + 936);
    OUTLINED_FUNCTION_40_4();
    v40 = swift_slowAlloc();
    OUTLINED_FUNCTION_59_1();
    HIDWORD(a14) = v32;
    v32 = swift_slowAlloc();
    a16 = v32;
    *v40 = 136315138;
    *(v28 + 816) = v31;
    v41 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v42 = sub_269854AE4();
    v43 = v33;
    v45 = v34;
    v46 = sub_26974F520(v42, v44, &a16);

    *(v40 + 4) = v46;
    v34 = v45;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v47, v48, "PlayVideoHandleIntentFlowStrategy.makeIntentHandledResponse makeDialogForPlayVideoHandled() failed with error: %s");
    __swift_destroy_boxed_opaque_existential_0(v32);
    LOBYTE(v32) = BYTE4(a14);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    a12(a11, a10);
  }

  else
  {
    v39 = *(v28 + 1072);
    v49 = *(v28 + 1032);
    v50 = *(v28 + 936);
    v43 = *(v28 + 920);

    v51 = OUTLINED_FUNCTION_34_0();
    v49(v51);
  }

  OUTLINED_FUNCTION_94_1();
  v52 = v31;
  sub_269795A18(0);

  sub_269759494(v28 + 176);
  swift_willThrow();

  if (!v43)
  {
    OUTLINED_FUNCTION_100_0();
    *(v28 + 448) = v34;
    *(v28 + 456) = v64;
    *(v28 + 464) = v33;
    *(v28 + 465) = v32;
    sub_2696C285C(v28 + 400);
  }

  v53 = *(v28 + 968);
  v54 = *(v28 + 960);
  OUTLINED_FUNCTION_27_9();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_84();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, v64, a16, a17, a18, a19, a20);
}

uint64_t sub_269767C58()
{
  OUTLINED_FUNCTION_2_7();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v1[19] = v5;
  v1[20] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324210, &qword_26985F1D0);
  OUTLINED_FUNCTION_8_9(v7);
  v9 = *(v8 + 64);
  v1[25] = OUTLINED_FUNCTION_4_7();
  v10 = sub_2698548D4();
  v1[26] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[27] = v11;
  v13 = *(v12 + 64);
  v1[28] = OUTLINED_FUNCTION_37_0();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_269767D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, uint64_t, uint64_t), void (*a12)(uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_92_0();
  v17 = [*(v16 + 168) isEntitled];
  sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  v18 = sub_269855044();
  v19 = v18;
  if (v17)
  {
    OUTLINED_FUNCTION_22_3();
    v20 = sub_269855064();

    if (v20)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v22 = *(v16 + 184);
  v21 = sub_269792920();
  if ((v21 & 1) == 0)
  {
    v65 = *(v16 + 152);
    goto LABEL_26;
  }

LABEL_6:
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    v21 = swift_once();
  }

  v23 = *(v16 + 272);
  v24 = *(v16 + 208);
  v25 = *(v16 + 216);
  *(v16 + 280) = OUTLINED_FUNCTION_29_2(v21, qword_28033D910);
  v26 = *(v25 + 16);
  *(v16 + 288) = v26;
  *(v16 + 296) = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  a10 = v27;
  a11 = v26;
  (v26)(v23);
  v28 = sub_2698548B4();
  v29 = sub_269854F04();
  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_9_17();
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_269684000, v28, v29, "User not entitled on remote device or Matchpoint destination, checking entitlement on source device.", v30, 2u);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v31 = *(v16 + 272);
  v33 = *(v16 + 208);
  v32 = *(v16 + 216);
  v34 = *(v16 + 176);
  a13 = *(v16 + 184);

  *(v16 + 304) = *(v32 + 8);
  v35 = OUTLINED_FUNCTION_44_0();
  a12 = v36;
  v36(v35);
  sub_2696A73F8(v34, v16 + 16);
  v37 = *(v16 + 40);
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v16 + 16, v37);
  OUTLINED_FUNCTION_3_20();
  v40 = v39;
  v42 = *(v41 + 64);
  v43 = OUTLINED_FUNCTION_4_7();
  (*(v40 + 16))(v43, v38, v37);
  *(v16 + 80) = &type metadata for ContentResolver;
  *(v16 + 88) = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v44 = swift_allocObject();
  *(v16 + 56) = v44;
  v45 = *(v43 + 32);
  v46 = *(v43 + 16);
  *(v44 + 16) = *v43;
  *(v44 + 32) = v46;
  *(v44 + 48) = v45;
  type metadata accessor for BackgroundPlayableFetch();
  v47 = swift_allocObject();
  *(v16 + 312) = v47;
  v48 = __swift_mutable_project_boxed_opaque_existential_1(v16 + 56, &type metadata for ContentResolver);
  OUTLINED_FUNCTION_3_20();
  v50 = v49;
  v52 = *(v51 + 64);
  v53 = OUTLINED_FUNCTION_4_7();
  (*(v50 + 16))(v53, v48, &type metadata for ContentResolver);
  *(v16 + 120) = &type metadata for ContentResolver;
  *(v16 + 128) = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v54 = swift_allocObject();
  *(v16 + 96) = v54;
  v55 = *(v53 + 32);
  v56 = *(v53 + 16);
  *(v54 + 16) = *v53;
  *(v54 + 32) = v56;
  *(v54 + 48) = v55;
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803241A0, &qword_26985F1E0);
  sub_2696B2880();
  v57 = MEMORY[0x277D84F90];
  *(v47 + 152) = sub_269854A04();
  sub_26968E5D4((v16 + 96), v47 + 112);
  __swift_destroy_boxed_opaque_existential_0((v16 + 56));

  __swift_destroy_boxed_opaque_existential_0((v16 + 16));

  *(v16 + 320) = sub_269854614();
  *(v16 + 328) = v58;
  if (v58)
  {
    v59 = [*(v16 + 160) content];
    if (v59)
    {
      *(v16 + 336) = sub_26978571C(v59);
      *(v16 + 344) = v60;
      if (v60)
      {
        v61 = sub_26977DBE4(*(v16 + 160));
        if (v61)
        {
          v62 = v61;
        }

        else
        {
          v62 = v57;
        }

        if (v62[2])
        {
          v63 = v62[4];
          v64 = v62[5];
        }

        else
        {
          v64 = 0;
        }

        *(v16 + 352) = v64;

        swift_task_alloc();
        OUTLINED_FUNCTION_23_2();
        *(v16 + 360) = v107;
        *v107 = v108;
        v107[1] = sub_2697683F0;
        v109 = *(v16 + 200);
        OUTLINED_FUNCTION_7_8();

        return sub_2697C0978();
      }
    }

    v66 = *(v16 + 248);
    v67 = *(v16 + 208);

    a11(v66, a10, v67);
    v68 = sub_2698548B4();
    sub_269854F24();
    v69 = OUTLINED_FUNCTION_62_1();
    if (os_log_type_enabled(v69, v70))
    {
      OUTLINED_FUNCTION_9_17();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v71, v72, v73, v74, v75, 2u);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    v76 = *(v16 + 248);
  }

  else
  {
    v77 = *(v16 + 184);
    a11(*(v16 + 240), a10, *(v16 + 208));
    v78 = v77;
    v68 = sub_2698548B4();
    v79 = sub_269854F24();

    if (os_log_type_enabled(v68, v79))
    {
      v80 = *(v16 + 184);
      OUTLINED_FUNCTION_40_4();
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      *(v81 + 4) = v80;
      *v82 = v80;
      v83 = v80;
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v84, v85, v86, v87, v88, 0xCu);
      sub_26969B0C0(v82, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    v89 = *(v16 + 240);
  }

  v91 = *(v16 + 208);
  v90 = *(v16 + 216);
  v92 = *(v16 + 152);

  v93 = OUTLINED_FUNCTION_44_0();
  a12(v93);
LABEL_26:
  sub_269851C74();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  OUTLINED_FUNCTION_15_16();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_7_8();

  return v99(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2697683F0()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 360);
  v7 = *(v5 + 352);
  v8 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v9 = v8;
  v3[46] = v0;

  if (v0)
  {
    v10 = v3[41];
  }

  else
  {
    v11 = v3[43];
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26976852C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_49();
  v11 = v10[41];
  if (*(v10[25] + 16) == 1)
  {
    OUTLINED_FUNCTION_95_1((v10[24] + 432), *(v10[24] + 456));
    v12 = swift_task_alloc();
    v10[47] = v12;
    *v12 = v10;
    v12[1] = sub_26976870C;
    OUTLINED_FUNCTION_44_4(v10[40]);
    OUTLINED_FUNCTION_76_2();

    return sub_269760410(v13, v14);
  }

  else
  {
    v17 = v10[39];
    v18 = v10[23];
    v19 = v10[41];

    v20 = sub_269792920();

    v21 = v10[25];
    v22 = v10[19];
    if (v20)
    {
      v23 = *(_s8PlayableVMa() + 24);
      v24 = sub_269851C74();
      OUTLINED_FUNCTION_4_3(v24);
      (*(v25 + 16))(v22, v21 + v23, v24);
      OUTLINED_FUNCTION_9_20();
      sub_26976FCC8(v21, v26);
      OUTLINED_FUNCTION_55_1();
    }

    else
    {
      sub_26969B0C0(v10[25], &unk_280324210, &qword_26985F1D0);
      sub_269851C74();
      OUTLINED_FUNCTION_57();
    }

    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    OUTLINED_FUNCTION_15_16();

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_76_2();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
  }
}

uint64_t sub_26976870C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 376);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v3 + 384) = v0;

  if (v0)
  {
    v9 = *(v3 + 328);
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26976880C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  v25 = *(v22 + 328);
  v26 = *(v22 + 296);
  (*(v22 + 288))(*(v22 + 264), *(v22 + 280), *(v22 + 208));

  v27 = sub_2698548B4();
  v28 = sub_269854F04();

  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v22 + 328);
  if (v29)
  {
    v31 = *(v22 + 312);
    v32 = *(v22 + 320);
    a9 = *(v22 + 264);
    a10 = *(v22 + 304);
    v34 = *(v22 + 208);
    v33 = *(v22 + 216);
    OUTLINED_FUNCTION_40_4();
    v35 = swift_slowAlloc();
    OUTLINED_FUNCTION_59_1();
    v36 = swift_slowAlloc();
    a11 = v36;
    *v35 = 136315138;
    v37 = sub_26974F520(v32, v30, &a11);

    *(v35 + 4) = v37;
    _os_log_impl(&dword_269684000, v27, v28, "AirPlaying from source device instead of playing from remote device: %s.", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    a10(a9, v34);
  }

  else
  {
    v39 = *(v22 + 304);
    v38 = *(v22 + 312);
    v40 = *(v22 + 264);
    v41 = *(v22 + 208);
    v42 = *(v22 + 216);

    v43 = OUTLINED_FUNCTION_22_3();
    v39(v43);
  }

  v44 = *(v22 + 200);
  v45 = *(v22 + 152);
  v46 = *(_s8PlayableVMa() + 24);
  v47 = sub_269851C74();
  OUTLINED_FUNCTION_4_3(v47);
  (*(v48 + 16))(v45, v44 + v46, v47);
  OUTLINED_FUNCTION_9_20();
  sub_26976FCC8(v44, v49);
  OUTLINED_FUNCTION_55_1();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  OUTLINED_FUNCTION_15_16();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_269768A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_6();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_92_0();
  a22 = v24;
  v27 = *(v24 + 384);
  v28 = *(v24 + 296);
  (*(v24 + 288))(*(v24 + 256), *(v24 + 280), *(v24 + 208));
  v29 = v27;
  v30 = sub_2698548B4();
  v31 = sub_269854F04();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v24 + 384);
    v33 = *(v24 + 312);
    a11 = *(v24 + 256);
    a12 = *(v24 + 304);
    v34 = *(v24 + 216);
    a10 = *(v24 + 208);
    OUTLINED_FUNCTION_40_4();
    v35 = swift_slowAlloc();
    OUTLINED_FUNCTION_59_1();
    v36 = swift_slowAlloc();
    a13 = v36;
    *v35 = 136315138;
    *(v24 + 144) = v32;
    v37 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v38 = sub_269854AE4();
    v40 = sub_26974F520(v38, v39, &a13);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_269684000, v30, v31, "Error while setting airplay destination: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    a12(a11, a10);
  }

  else
  {
    v42 = *(v24 + 304);
    v41 = *(v24 + 312);
    v43 = *(v24 + 256);
    v44 = *(v24 + 208);
    v45 = *(v24 + 216);

    v46 = OUTLINED_FUNCTION_34_0();
    v42(v46);
  }

  v47 = *(v24 + 200);
  v48 = *(v24 + 152);
  v49 = *(_s8PlayableVMa() + 24);
  v50 = sub_269851C74();
  OUTLINED_FUNCTION_4_3(v50);
  (*(v51 + 16))(v48, v47 + v49, v50);
  OUTLINED_FUNCTION_9_20();
  sub_26976FCC8(v47, v52);
  OUTLINED_FUNCTION_55_1();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  OUTLINED_FUNCTION_15_16();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_7_8();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_269768CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v25 = v22[46];
  v26 = v22[43];
  v28 = v22[36];
  v27 = v22[37];
  v29 = v22[29];
  __swift_project_value_buffer(v22[26], qword_28033D928);
  v30 = OUTLINED_FUNCTION_86();
  v28(v30);

  v31 = v25;
  v32 = sub_2698548B4();
  v33 = sub_269854F24();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = v22[46];
    v36 = v22[42];
    v35 = v22[43];
    a9 = v22[29];
    a10 = v22[38];
    v38 = v22[26];
    v37 = v22[27];
    v39 = swift_slowAlloc();
    OUTLINED_FUNCTION_90_1();
    a11 = swift_slowAlloc();
    *v39 = 136315394;
    v40 = sub_26974F520(v36, v35, &a11);

    *(v39 + 4) = v40;
    *(v39 + 12) = 2080;
    v22[17] = v34;
    v41 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v42 = sub_269854AE4();
    v44 = sub_26974F520(v42, v43, &a11);

    *(v39 + 14) = v44;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v45, v46, v47, v48, v49, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    a10(a9, v38);
  }

  else
  {
    v50 = v22[43];
    v51 = v22[38];
    v52 = v22[29];
    v53 = v22[26];
    v54 = v22[27];

    v55 = OUTLINED_FUNCTION_34_0();
    v51(v55);
  }

  v56 = v22[37];
  (v22[36])(v22[28], v22[35], v22[26]);
  v57 = sub_2698548B4();
  sub_269854F04();
  v58 = OUTLINED_FUNCTION_62_1();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v22[46];
  v62 = v22[39];
  if (v60)
  {
    OUTLINED_FUNCTION_9_17();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v63, v64, v65, v66, v67, 2u);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  else
  {
    v68 = v22[39];
  }

  v69 = v22[19];
  v70 = v22[27] + 8;
  (v22[38])(v22[28], v22[26]);
  sub_269851C74();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  OUTLINED_FUNCTION_15_16();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_269769010()
{
  OUTLINED_FUNCTION_2_7();
  v34 = *MEMORY[0x277D85DE8];
  v1[113] = v0;
  v1[112] = v2;
  v1[111] = v3;
  v1[110] = v4;
  v1[109] = v5;
  v1[108] = v6;
  v7 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v7);
  v9 = *(v8 + 64);
  v1[114] = OUTLINED_FUNCTION_4_7();
  v10 = sub_269853634();
  v1[115] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[116] = v11;
  v13 = *(v12 + 64);
  v1[117] = OUTLINED_FUNCTION_4_7();
  v14 = sub_269851DA4();
  v1[118] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v1[119] = v15;
  v17 = *(v16 + 64);
  v1[120] = OUTLINED_FUNCTION_4_7();
  v18 = sub_269851C74();
  v1[121] = v18;
  OUTLINED_FUNCTION_5_12(v18);
  v1[122] = v19;
  v21 = *(v20 + 64);
  v1[123] = OUTLINED_FUNCTION_4_7();
  v22 = sub_2698548D4();
  v1[124] = v22;
  OUTLINED_FUNCTION_5_12(v22);
  v1[125] = v23;
  v25 = *(v24 + 64);
  v1[126] = OUTLINED_FUNCTION_37_0();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F0, &qword_2698603D0);
  OUTLINED_FUNCTION_8_9(v26);
  v28 = *(v27 + 64);
  v1[130] = OUTLINED_FUNCTION_37_0();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v29 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_269769264()
{
  OUTLINED_FUNCTION_12_7();
  v24 = *MEMORY[0x277D85DE8];
  v1 = v0[113];
  v2 = v0[111];
  v3 = v0[110];
  sub_2696A73F8(v1 + 472, (v0 + 70));
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 70, v0[73]);
  v0[133] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F8, &unk_26985BB00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698580D0;
  v0[134] = *MEMORY[0x277D0ABF0];
  v0[95] = sub_269854A94();
  v0[96] = v6;
  sub_2698551B4();
  v7 = MEMORY[0x277D839B0];
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  v8 = *MEMORY[0x277D67110];
  v0[97] = sub_269854A94();
  v0[98] = v9;
  sub_2698551B4();
  __swift_project_boxed_opaque_existential_1((v1 + 752), *(v1 + 776));
  sub_2697ADE90(v3, v2, (v0 + 75));
  if (v0[78])
  {
    v10 = v0[79];
    __swift_project_boxed_opaque_existential_1(v0 + 75, v0[78]);
    v11 = *(v10 + 56);
    v12 = OUTLINED_FUNCTION_44_0();
    v14 = v13(v12) & 1;
    __swift_destroy_boxed_opaque_existential_0(v0 + 75);
  }

  else
  {
    sub_26969B0C0((v0 + 75), &unk_2803263B0, &unk_26985D0B0);
    v14 = 0;
  }

  *(inited + 168) = v7;
  *(inited + 144) = v14;
  v0[135] = sub_269854A04();
  v15 = *v4;
  v16 = swift_task_alloc();
  v0[136] = v16;
  *v16 = v0;
  v16[1] = sub_2697694C4;
  v17 = v0[111];
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_44_4(v0[110]);
  OUTLINED_FUNCTION_28_1();

  return sub_2697B6CE4(v19, v20, v21);
}

uint64_t sub_2697694C4()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v14 = *MEMORY[0x277D85DE8];
  v4 = *v1;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v7 = *(v4 + 1088);
  *v6 = *v1;
  *(v5 + 1096) = v0;

  v8 = *(v4 + 1080);
  if (!v0)
  {
  }

  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_269769A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v29 = *MEMORY[0x277D85DE8];
  __swift_destroy_boxed_opaque_existential_0(v14 + 70);
  v15 = v14[137];
  v16 = v14[132];
  v17 = v14[131];
  v18 = v14[130];
  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_70_1();

  OUTLINED_FUNCTION_7_7();
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_116();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v29, a12, a13, a14);
}

uint64_t sub_269769B84()
{
  OUTLINED_FUNCTION_2_7();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1048);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = **(v0 + 1104);
  sub_26983B96C();
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_269769FA4()
{
  OUTLINED_FUNCTION_8_5();
  v16 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v5 = *(v2 + 1144);
  v6 = *v1;
  OUTLINED_FUNCTION_6_13();
  *v7 = v6;
  *(v9 + 1152) = v8;
  *(v9 + 1160) = v0;

  v10 = *(v2 + 1136);

  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26976A0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_92_0();
  v101 = *MEMORY[0x277D85DE8];
  if (*(v16 + 1376) != 1)
  {
LABEL_4:
    sub_2696A73F8(*(v16 + 904) + 192, v16 + 640);
    OUTLINED_FUNCTION_114_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F8, &unk_26985F1C0);
    inited = swift_initStackObject();
    *(v16 + 1328) = inited;
    *(inited + 16) = xmmword_269857710;
    v20 = swift_task_alloc();
    *(v16 + 1336) = v20;
    *v20 = v16;
    OUTLINED_FUNCTION_32_6(v20);
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_44_4(v22);
    OUTLINED_FUNCTION_7_8();

    return sub_26976C448();
  }

  v17 = *(v16 + 1040);
  v18 = *(v16 + 944);
  sub_2696F3F6C(*(v16 + 1056), v17, &qword_2803240F0, &qword_2698603D0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_26969B0C0(*(v16 + 1040), &qword_2803240F0, &qword_2698603D0);
    goto LABEL_4;
  }

  v25 = *(v16 + 1160);
  v26 = *(v16 + 1152);
  (*(*(v16 + 952) + 32))(*(v16 + 960), *(v16 + 1040), *(v16 + 944));
  sub_26969329C(0, &qword_280324100, 0x277D46F48);
  v27 = sub_26976BB44(v26);
  *(v16 + 1168) = v27;
  v28 = *(v16 + 1152);
  if (v25)
  {
    v29 = *(v16 + 1056);
    v30 = *(v16 + 960);
    v31 = *(v16 + 952);
    v32 = *(v16 + 944);

    v33 = *(v31 + 8);
    v34 = OUTLINED_FUNCTION_44_0();
    v35(v34);
    sub_26969B0C0(v29, &qword_2803240F0, &qword_2698603D0);
    v36 = *(v16 + 1056);
    v37 = *(v16 + 1048);
    v38 = *(v16 + 1040);
    OUTLINED_FUNCTION_3_29();
    v99 = *(v16 + 936);
    v100 = *(v16 + 912);

    OUTLINED_FUNCTION_7_7();
    v39 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_7_8();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v99, v100, a12, v101, a14, a15, a16);
  }

  else
  {
    v48 = *(v16 + 904);
    v49 = [objc_opt_self() predicateMatchingHandle_];
    *(v16 + 1176) = v49;
    sub_26969329C(0, &qword_280324108, 0x277D46F80);
    v50 = swift_task_alloc();
    *(v50 + 16) = v49;
    v51 = sub_26976C06C(sub_26976FA1C, v50);

    v52 = *(v48 + 792);
    *(v48 + 792) = v51;

    v53 = [objc_opt_self() targetWithPid_];
    *(v16 + 1184) = v53;
    sub_26969329C(0, &qword_280324110, 0x277D46E38);
    v54 = sub_26976C1F0();
    *(v16 + 1192) = v54;
    *(v16 + 1200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    OUTLINED_FUNCTION_51_4();
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_2698590C0;
    *(v55 + 32) = v54;
    objc_allocWithZone(MEMORY[0x277D46DB8]);
    v56 = v53;
    v57 = v54;
    v58 = sub_26976F8B4(0xD000000000000023, 0x800000026987EB80, v56);
    *(v16 + 1208) = v58;
    *(v16 + 856) = 0;
    v59 = [v58 acquireWithError_];
    v60 = *(v16 + 856);
    if (v59)
    {
      v61 = v60;
    }

    else
    {
      v62 = v60;
      v63 = sub_269851BD4();

      swift_willThrow();
      if (qword_280322700 != -1)
      {
        swift_once();
      }

      v64 = *(v16 + 1128);
      v65 = *(v16 + 1120);
      v66 = *(v16 + 1008);
      __swift_project_value_buffer(*(v16 + 992), qword_281571B38);
      v67 = OUTLINED_FUNCTION_86();
      v65(v67);
      v68 = v63;
      v69 = sub_2698548B4();
      v70 = sub_269854F24();

      if (os_log_type_enabled(v69, v70))
      {
        OUTLINED_FUNCTION_40_4();
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v71 = 138412290;
        v73 = v63;
        v74 = _swift_stdlib_bridgeErrorToNSError();
        *(v71 + 4) = v74;
        *v72 = v74;
        OUTLINED_FUNCTION_77_1();
        _os_log_impl(v75, v76, v77, v78, v79, 0xCu);
        sub_26969B0C0(v72, &qword_280324D50, &qword_26985D530);
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
      }

      else
      {
      }

      (*(*(v16 + 1000) + 8))(*(v16 + 1008), *(v16 + 992));
    }

    v80 = *(v16 + 1128);
    (*(v16 + 1120))(*(v16 + 1024), *(v16 + 1112), *(v16 + 992));
    v81 = sub_2698548B4();
    sub_269854F14();
    v82 = OUTLINED_FUNCTION_62_1();
    if (os_log_type_enabled(v82, v83))
    {
      OUTLINED_FUNCTION_9_17();
      v84 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_2(v84);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v85, v86, v87, v88, v89, 2u);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    v90 = *(v16 + 1024);
    v91 = *(v16 + 1000);
    v92 = *(v16 + 992);
    v93 = *(v16 + 904);

    *(v16 + 1216) = *(v91 + 8);
    v94 = OUTLINED_FUNCTION_22_3();
    v95(v94);
    OUTLINED_FUNCTION_95_1((v93 + 552), *(v93 + 576));
    v96 = swift_task_alloc();
    *(v16 + 1224) = v96;
    *v96 = v16;
    v96[1] = sub_26976A914;
    v97 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_44_4(*(v16 + 960));
    OUTLINED_FUNCTION_7_8();

    return sub_26983BD74();
  }
}

uint64_t sub_26976A80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v29 = *MEMORY[0x277D85DE8];
  sub_26969B0C0(v14[132], &qword_2803240F0, &qword_2698603D0);
  v15 = v14[145];
  v16 = v14[132];
  v17 = v14[131];
  v18 = v14[130];
  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_70_1();

  OUTLINED_FUNCTION_7_7();
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_116();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v29, a12, a13, a14);
}

uint64_t sub_26976A914()
{
  OUTLINED_FUNCTION_2_7();
  v12 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 1224);
  *v3 = *v0;
  *(v2 + 1377) = v6;

  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26976AA34()
{
  OUTLINED_FUNCTION_12_7();
  v41 = *MEMORY[0x277D85DE8];
  if (*(v0 + 1377))
  {
    v1 = *(v0 + 1208);
    v2 = *(v0 + 1192);
    v3 = *(v0 + 1184);
    v4 = *(v0 + 1176);
    v5 = *(v0 + 1168);
    v6 = *(v0 + 960);
    v7 = *(v0 + 952);
    v8 = *(v0 + 944);
    sub_26976C284(v1, *(v0 + 904));

    v9 = *(v7 + 8);
    v10 = OUTLINED_FUNCTION_22_3();
    v11(v10);
    sub_2696A73F8(*(v0 + 904) + 192, v0 + 640);
    OUTLINED_FUNCTION_114_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F8, &unk_26985F1C0);
    inited = swift_initStackObject();
    *(v0 + 1328) = inited;
    *(inited + 16) = xmmword_269857710;
    v13 = swift_task_alloc();
    *(v0 + 1336) = v13;
    *v13 = v0;
    OUTLINED_FUNCTION_32_6(v13);
    v14 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_44_4(v15);
    OUTLINED_FUNCTION_28_1();

    return sub_26976C448();
  }

  else
  {
    v18 = (v0 + 744);
    v19 = *(v0 + 1128);
    (*(v0 + 1120))(*(v0 + 1016), *(v0 + 1112), *(v0 + 992));
    v20 = sub_2698548B4();
    sub_269854F24();
    v21 = OUTLINED_FUNCTION_62_1();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_9_17();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_2(v23);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    v29 = *(v0 + 1216);
    v30 = *(v0 + 1200);
    v31 = *(v0 + 1016);
    v32 = *(v0 + 1000);
    v33 = *(v0 + 992);
    v34 = *(v0 + 904);

    v35 = OUTLINED_FUNCTION_34_0();
    v29(v35);
    sub_2696A73F8(v34 + 192, v0 + 720);
    v36 = *v18;
    *(v0 + 1232) = *v18;
    *(v0 + 1248) = __swift_project_boxed_opaque_existential_1((v0 + 720), v36);
    OUTLINED_FUNCTION_51_4();
    v37 = swift_allocObject();
    *(v0 + 1256) = v37;
    *(v37 + 16) = xmmword_2698590C0;
    OUTLINED_FUNCTION_95_1((v34 + 592), *(v34 + 616));
    v38 = swift_task_alloc();
    *(v0 + 1264) = v38;
    *v38 = v0;
    v38[1] = sub_26976ACEC;
    v39 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_28_1();

    return sub_2697AF000();
  }
}

uint64_t sub_26976ACEC()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v1;
  v13 = *MEMORY[0x277D85DE8];
  v3 = *v0;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 1264);
  v7 = *(v5 + 904);
  v8 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v9 = v8;

  v10 = swift_task_alloc();
  *(v3 + 1272) = v10;
  *v10 = v8;
  v10[1] = sub_26976AE54;
  v11 = *MEMORY[0x277D85DE8];

  return sub_2696C1CD0(v2);
}

uint64_t sub_26976AE54()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  v15 = *MEMORY[0x277D85DE8];
  v4 = *v1;
  OUTLINED_FUNCTION_3_6();
  *v5 = v4;
  v7 = *(v6 + 1272);
  v8 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v9 = v8;
  *(v4 + 1280) = v0;

  if (!v0)
  {
    *(v4 + 1288) = v3;
  }

  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26976AF8C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0;
  v16 = *MEMORY[0x277D85DE8];
  v2 = v0[161];
  v3 = v0[157];
  v4 = v0[117];
  v5 = v0[114];
  *(v3 + 32) = v2;
  sub_269852E94();
  OUTLINED_FUNCTION_1_24();
  sub_2698535C4();
  v6 = *(MEMORY[0x277D5BE58] + 4);
  v7 = swift_task_alloc();
  v1[162] = v7;
  *v7 = v1;
  v7[1] = sub_26976B098;
  v8 = v1[157];
  v9 = v1[156];
  v10 = v1[155];
  v11 = v1[154];
  v12 = v1[117];
  v13 = v1[108];
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2821BB488](v13, v8, v12, v11, v10);
}

uint64_t sub_26976B098()
{
  OUTLINED_FUNCTION_34();
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 1296);
  v2 = *(*v0 + 1256);
  v3 = *(*v0 + 936);
  v4 = *(*v0 + 928);
  v5 = *(*v0 + 920);
  v6 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;

  v8 = OUTLINED_FUNCTION_12_23();
  v9(v8);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26976B228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v35 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_33_7();
  v24 = OUTLINED_FUNCTION_115_0((v17 + 720));
  sub_26976C284(v24, v19);

  (*(v16 + 8))(a9, v18);
  sub_26969B0C0(a10, &qword_2803240F0, &qword_2698603D0);
  OUTLINED_FUNCTION_46_1();

  OUTLINED_FUNCTION_7_7();
  v25 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_116();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v35, a12, a13, a14);
}

uint64_t sub_26976B360()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  v15 = *MEMORY[0x277D85DE8];
  v4 = *v1;
  OUTLINED_FUNCTION_3_6();
  *v5 = v4;
  v7 = *(v6 + 1336);
  v8 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v9 = v8;
  *(v4 + 1344) = v0;

  if (!v0)
  {
    *(v4 + 1352) = v3;
  }

  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26976B498()
{
  OUTLINED_FUNCTION_34();
  v1 = 0;
  v33 = *MEMORY[0x277D85DE8];
  *(v0[166] + 32) = v0[169];
  v2 = MEMORY[0x277D84F90];
  for (i = MEMORY[0x277D84F90]; ; v2 = i)
  {
    v0[170] = v2;
    if (v1)
    {
      break;
    }

    v3 = *(v0[166] + 32);
    if (!v3)
    {
      break;
    }

    v4 = v3;
    v5 = MEMORY[0x26D645B90]();
    OUTLINED_FUNCTION_104(v5, v6, v7, v8, v9, v10, v11, v12, i);
    if (v13)
    {
      sub_269854CD4();
    }

    sub_269854CF4();
    v1 = 1;
  }

  v14 = v0[117];
  v15 = v0[114];
  v16 = v0[166];
  swift_setDeallocating();
  sub_269819DC0();
  sub_269852E64();
  OUTLINED_FUNCTION_1_24();
  sub_2698535C4();
  v17 = *(MEMORY[0x277D5BE58] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[171] = v18;
  *v18 = v19;
  v18[1] = sub_26976B624;
  v20 = v0[165];
  v21 = v0[164];
  v22 = v0[163];
  v23 = v0[117];
  v24 = v0[108];
  v25 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_106_0();

  return MEMORY[0x2821BB488](v26, v27, v28, v29, v30);
}

uint64_t sub_26976B624()
{
  OUTLINED_FUNCTION_34();
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 1368);
  v2 = *(*v0 + 1360);
  v3 = *(*v0 + 936);
  v4 = *(*v0 + 928);
  v5 = *(*v0 + 920);
  v6 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;

  v8 = OUTLINED_FUNCTION_12_23();
  v9(v8);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26976B7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v26 = *MEMORY[0x277D85DE8];
  v15 = *(v14 + 1056);

  sub_26969B0C0(v15, &qword_2803240F0, &qword_2698603D0);
  __swift_destroy_boxed_opaque_existential_0((v14 + 640));
  OUTLINED_FUNCTION_46_1();

  OUTLINED_FUNCTION_7_7();
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_116();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, v26, a12, a13, a14);
}

uint64_t sub_26976B8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v41 = *MEMORY[0x277D85DE8];
  v24 = v17[157];
  OUTLINED_FUNCTION_33_7();
  *(v25 + 16) = 0;

  v26 = OUTLINED_FUNCTION_115_0(v17 + 90);
  sub_26976C284(v26, v19);

  (*(v16 + 8))(a9, v18);
  sub_26969B0C0(a10, &qword_2803240F0, &qword_2698603D0);
  v27 = v17[160];
  v28 = v17[132];
  v29 = v17[131];
  v30 = v17[130];
  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_70_1();

  OUTLINED_FUNCTION_7_7();
  v31 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_116();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, v41, a12, a13, a14);
}

uint64_t sub_26976BA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v31 = *MEMORY[0x277D85DE8];
  v15 = *(v14 + 1328);
  v16 = *(v14 + 1056);

  sub_26969B0C0(v16, &qword_2803240F0, &qword_2698603D0);
  *(v15 + 16) = 0;
  swift_setDeallocating();
  sub_269819DC0();
  __swift_destroy_boxed_opaque_existential_0((v14 + 640));
  v17 = *(v14 + 1344);
  v18 = *(v14 + 1056);
  v19 = *(v14 + 1048);
  v20 = *(v14 + 1040);
  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_70_1();

  OUTLINED_FUNCTION_7_7();
  v21 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_116();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

id sub_26976BB44(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() handleForLegacyHandle:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_269851BD4();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_26976BC18(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  [v4 setValues_];
  [a1 setStateDescriptor_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2698590C0;
  *(v5 + 32) = a2;
  sub_26969329C(0, &qword_280324180, 0x277D46FA0);
  v6 = a2;
  v7 = sub_269854CA4();

  [a1 setPredicates_];

  v9[4] = sub_26976BD9C;
  v9[5] = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26976BFCC;
  v9[3] = &block_descriptor_56;
  v8 = _Block_copy(v9);
  [a1 setUpdateHandler_];
  _Block_release(v8);
}

uint64_t sub_26976BD9C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_2698548D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_281571B38);
  (*(v6 + 16))(v9, v10, v5);
  v11 = a2;
  v12 = a3;
  v13 = sub_2698548B4();
  v14 = sub_269854F14();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 67109378;
    *(v15 + 4) = [v11 pid];

    *(v15 + 8) = 2112;
    *(v15 + 10) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_269684000, v13, v14, "PlayVideoHandleIntentStrategy.handleCarPlayContinuityExecution received process state update for process: %d: stateUpdate: %@", v15, 0x12u);
    sub_26969B0C0(v16, &qword_280324D50, &qword_26985D530);
    MEMORY[0x26D647170](v16, -1, -1);
    MEMORY[0x26D647170](v15, -1, -1);
  }

  else
  {

    v13 = v11;
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_26976BFCC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, v9, v10);
}

uint64_t sub_26976C06C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v9[4] = sub_26976FA94;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26976C19C;
  v9[3] = &block_descriptor_13;
  v5 = _Block_copy(v9);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v7 = [ObjCClassFromMetadata monitorWithConfiguration_];
  _Block_release(v5);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_26976C19C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id sub_26976C1F0()
{
  v0 = sub_269854A64();

  v1 = sub_269854A64();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

void sub_26976C284(void *a1, uint64_t a2)
{
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2698548B4();
  v11 = sub_269854F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_269684000, v10, v11, "PlayVideoIntentHandleStrategy.handleCarPlayContinuityExecution manually invalidating the assertion since playback has started or timed out", v12, 2u);
    MEMORY[0x26D647170](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  [a1 invalidate];
  [*(a2 + 792) invalidate];
  v13 = *(a2 + 792);
  *(a2 + 792) = 0;
}

uint64_t sub_26976C448()
{
  OUTLINED_FUNCTION_2_7();
  v1[19] = v2;
  v1[20] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240E0, &unk_26985F1A0);
  v1[21] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[22] = v4;
  v6 = *(v5 + 64);
  v1[23] = OUTLINED_FUNCTION_4_7();
  v7 = sub_2698548D4();
  v1[24] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[25] = v8;
  v10 = *(v9 + 64);
  v1[26] = OUTLINED_FUNCTION_37_0();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26976C55C()
{
  v105 = v0;
  v1 = *(v0 + 160);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  OUTLINED_FUNCTION_22_3();
  v4 = sub_269852CF4();
  if ((v4 & 1) != 0 || *(*(v0 + 160) + 16))
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_22();
      v4 = swift_once();
    }

    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = *(v0 + 192);
    OUTLINED_FUNCTION_29_2(v4, qword_28033D910);
    v8 = *(v6 + 16);
    v9 = OUTLINED_FUNCTION_12_11();
    v10(v9);
    v11 = sub_2698548B4();
    sub_269854F14();
    v12 = OUTLINED_FUNCTION_62_1();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v17 = *(v0 + 192);
    if (v14)
    {
      OUTLINED_FUNCTION_9_17();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_49_5();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    v23 = *(v16 + 8);
    v24 = OUTLINED_FUNCTION_22_3();
    v25(v24);
LABEL_8:
    v27 = *(v0 + 216);
    v26 = *(v0 + 224);
    v28 = *(v0 + 208);
    v29 = *(v0 + 184);

    v30 = *(v0 + 8);

    return v30(0);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 152);
  v34 = sub_269853504();
  v35 = [v34 content];

  if (v35)
  {
    if ([v35 type] == 3)
    {
      v36 = [v35 show];
      if (v36)
      {
        sub_26978701C(v36);
        if (v37)
        {
          OUTLINED_FUNCTION_101_0();
          v38 = sub_269831F5C(v35);
          if (v39)
          {
            v40 = v38;
          }

          else
          {
            v40 = 0;
          }

          v102 = v40;
          if (v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = 0xE000000000000000;
          }

          v42 = sub_26976F9BC(v35);
          if (v43)
          {
            v44 = v42;
          }

          else
          {
            v44 = 0;
          }

          if (v43)
          {
            v45 = v43;
          }

          else
          {
            v45 = 0xE000000000000000;
          }

          if (qword_2803226E0 != -1)
          {
            OUTLINED_FUNCTION_0_22();
            swift_once();
          }

          v46 = *(v0 + 224);
          v48 = *(v0 + 192);
          v47 = *(v0 + 200);
          v49 = __swift_project_value_buffer(v48, qword_28033D910);
          (*(v47 + 16))(v46, v49, v48);

          v50 = sub_2698548B4();
          LOBYTE(v47) = sub_269854F14();

          v97 = v47;
          v51 = os_log_type_enabled(v50, v47);
          v52 = *(v0 + 224);
          v53 = *(v0 + 200);
          v100 = *(v0 + 192);
          if (v51)
          {
            log = v50;
            v54 = swift_slowAlloc();
            OUTLINED_FUNCTION_90_1();
            v104 = swift_slowAlloc();
            *v54 = 136315394;
            v96 = v52;
            v55 = v102;
            v56 = OUTLINED_FUNCTION_44_0();
            *(v54 + 4) = sub_26974F520(v56, v57, v58);
            *(v54 + 12) = 2080;
            *(v54 + 14) = sub_26974F520(v44, v45, &v104);
            _os_log_impl(&dword_269684000, log, v97, "Using show name in dialog if content type is TV episode - season:%s, episode:%s.", v54, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_8_25();
            MEMORY[0x26D647170]();
            OUTLINED_FUNCTION_8_25();
            MEMORY[0x26D647170]();

            (*(v53 + 8))(v96, v100);
          }

          else
          {

            (*(v53 + 8))(v52, v100);
            v55 = v102;
          }

          goto LABEL_34;
        }
      }
    }
  }

  v59 = *(v0 + 152);
  v60 = sub_26976CDE8();
  if (!v61)
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_22();
      v60 = swift_once();
    }

    v67 = *(v0 + 216);
    v68 = *(v0 + 192);
    v69 = *(v0 + 200);
    v71 = *(v0 + 176);
    v70 = *(v0 + 184);
    v72 = *(v0 + 168);
    v73 = *(v0 + 152);
    OUTLINED_FUNCTION_29_2(v60, qword_28033D910);
    v74 = *(v69 + 16);
    v75 = OUTLINED_FUNCTION_12_11();
    v76(v75);
    v77 = *(v71 + 16);
    v78 = OUTLINED_FUNCTION_47_2();
    v79(v78);
    v80 = sub_2698548B4();
    v81 = sub_269854F24();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 216);
    v85 = *(v0 + 192);
    v84 = *(v0 + 200);
    v87 = *(v0 + 176);
    v86 = *(v0 + 184);
    v88 = *(v0 + 168);
    if (v82)
    {
      OUTLINED_FUNCTION_40_4();
      v103 = v85;
      v89 = swift_slowAlloc();
      OUTLINED_FUNCTION_59_1();
      v101 = swift_slowAlloc();
      v104 = v101;
      *v89 = 136315138;
      v90 = sub_269853504();
      loga = v83;
      v91 = [v90 &off_279C6F378];

      *(v0 + 144) = v91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240E8, &unk_26985F1B0);
      v92 = sub_269854AE4();
      v94 = v93;
      (*(v87 + 8))(v86, v88);
      v95 = sub_26974F520(v92, v94, &v104);

      *(v89 + 4) = v95;
      _os_log_impl(&dword_269684000, v80, v81, "Unable to get title for content, skipping dialog. Intent content: %s", v89, 0xCu);
      OUTLINED_FUNCTION_115_0(v101);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();

      (*(v84 + 8))(loga, v103);
    }

    else
    {

      (*(v87 + 8))(v86, v88);
      (*(v84 + 8))(v83, v85);
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_101_0();
  v55 = 0;
  v44 = 0;
  v41 = 0xE000000000000000;
  v45 = 0xE000000000000000;
LABEL_34:
  v62 = *(v0 + 160);
  *(v0 + 80) = v2;
  *(v0 + 88) = v3;
  *(v0 + 96) = v55;
  *(v0 + 104) = v41;
  *(v0 + 112) = v44;
  *(v0 + 120) = v45;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  v63 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v63;
  v64 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v64;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 232) = v65;
  *v65 = v66;
  v65[1] = sub_26976CBF8;

  return sub_2696BF438();
}

uint64_t sub_26976CBF8()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v8 = *(v7 + 232);
  v9 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;
  v5[30] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    sub_2696C28C4((v5 + 10));
    v15 = v5[27];
    v14 = v5[28];
    v16 = v5[26];
    v17 = v5[23];

    v18 = *(v9 + 8);

    return v18(v3);
  }
}

uint64_t sub_26976CD58()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  sub_2696C28C4((v0 + 10));

  OUTLINED_FUNCTION_7_7();
  v6 = v0[30];

  return v5();
}

uint64_t sub_26976CDE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240E0, &unk_26985F1A0);
  v0 = sub_269853504();
  v1 = [v0 content];

  if (v1)
  {
    v2 = [v1 show];

    if (v2)
    {
      v3 = sub_26978701C(v2);
      if (v4)
      {
        return v3;
      }
    }
  }

  v6 = sub_269853504();
  v7 = [v6 content];

  if (v7)
  {
    v5 = sub_26978701C(v7);
  }

  else
  {

    return 0;
  }

  return v5;
}

void sub_26976CEF0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v60 = v4;
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v54[-v11];
  v13 = [a1 content];
  if (v13 && (v14 = v13, v15 = [v13 show], v14, v15) && (v16 = sub_26978701C(v15), v17))
  {
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v20 = [a1 content];
    if (v20)
    {
      v18 = sub_26978701C(v20);
      v19 = v21;
    }

    else
    {

      v18 = 0;
      v19 = 0;
    }
  }

  v22 = [a1 content];
  if (v22)
  {
    v23 = v22;
    if ([v22 type] == 3)
    {
      v24 = [v23 show];
      if (v24)
      {
        v25 = sub_26978701C(v24);
        if (v26)
        {
          v56 = v26;
          v57 = v25;

          v27 = sub_269831F5C(v23);
          if (v28)
          {
            v29 = v27;
          }

          else
          {
            v29 = 0;
          }

          if (v28)
          {
            v30 = v28;
          }

          else
          {
            v30 = 0xE000000000000000;
          }

          v31 = sub_26976F9BC(v23);
          if (v32)
          {
            v33 = v31;
          }

          else
          {
            v33 = 0;
          }

          if (v32)
          {
            v34 = v32;
          }

          else
          {
            v34 = 0xE000000000000000;
          }

          if (qword_2803226E0 != -1)
          {
            OUTLINED_FUNCTION_0_22();
            swift_once();
          }

          __swift_project_value_buffer(v59, qword_28033D910);
          v35 = *(v60 + 16);
          v36 = OUTLINED_FUNCTION_12_11();
          v37(v36);

          v38 = sub_2698548B4();
          v39 = sub_269854F14();

          v55 = v39;
          v58 = v38;
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            OUTLINED_FUNCTION_90_1();
            v62 = swift_slowAlloc();
            *v40 = 136315394;
            *(v40 + 4) = sub_26974F520(v29, v30, &v62);
            *(v40 + 12) = 2080;
            *(v40 + 14) = sub_26974F520(v33, v34, &v62);
            _os_log_impl(&dword_269684000, v58, v55, "Using show name in dialog if content type is TV episode - season:%s, episode:%s.", v40, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_8_25();
            MEMORY[0x26D647170]();
            OUTLINED_FUNCTION_8_25();
            MEMORY[0x26D647170]();
          }

          (*(v60 + 8))(v12, v59);
          v19 = v56;
          v18 = v57;
          goto LABEL_32;
        }
      }
    }
  }

  if (v19)
  {
    v29 = 0;
    v33 = 0;
    v30 = 0xE000000000000000;
    v34 = 0xE000000000000000;
LABEL_32:
    *a2 = v18;
    *(a2 + 8) = v19;
    *(a2 + 16) = v29;
    *(a2 + 24) = v30;
    *(a2 + 32) = v33;
    *(a2 + 40) = v34;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0xE000000000000000;
    *(a2 + 64) = 0;
    return;
  }

  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v41 = v59;
  v42 = __swift_project_value_buffer(v59, qword_28033D910);
  v43 = v60;
  (*(v60 + 16))(v10, v42, v41);
  v44 = a1;
  v45 = sub_2698548B4();
  v46 = sub_269854F24();

  if (os_log_type_enabled(v45, v46))
  {
    OUTLINED_FUNCTION_40_4();
    v47 = swift_slowAlloc();
    OUTLINED_FUNCTION_59_1();
    v48 = swift_slowAlloc();
    v62 = v48;
    *v47 = 136315138;
    v61 = [v44 content];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240E8, &unk_26985F1B0);
    v49 = sub_269854AE4();
    v51 = sub_26974F520(v49, v50, &v62);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_269684000, v45, v46, "Unable to get title for content, skipping dialog. Intent content: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    (*(v60 + 8))(v10, v41);
  }

  else
  {

    (*(v43 + 8))(v10, v41);
  }

  sub_2696BAE9C();
  OUTLINED_FUNCTION_20_4();
  v52 = swift_allocError();
  *v53 = xmmword_26985EF70;
  OUTLINED_FUNCTION_81_0(v52, v53);
  swift_willThrow();
}

uint64_t sub_26976D464()
{
  OUTLINED_FUNCTION_2_7();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240E0, &unk_26985F1A0);
  v1[39] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[40] = v5;
  v7 = *(v6 + 64);
  v1[41] = OUTLINED_FUNCTION_4_7();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v8);
  v10 = *(v9 + 64);
  v1[42] = OUTLINED_FUNCTION_4_7();
  v11 = sub_2698532A4();
  v1[43] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[44] = v12;
  v14 = *(v13 + 64);
  v1[45] = OUTLINED_FUNCTION_37_0();
  v1[46] = swift_task_alloc();
  v15 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v15);
  v17 = *(v16 + 64);
  v1[47] = OUTLINED_FUNCTION_4_7();
  v18 = sub_269853634();
  v1[48] = v18;
  OUTLINED_FUNCTION_5_12(v18);
  v1[49] = v19;
  v21 = *(v20 + 64);
  v1[50] = OUTLINED_FUNCTION_4_7();
  v22 = sub_2698548D4();
  v1[51] = v22;
  OUTLINED_FUNCTION_5_12(v22);
  v1[52] = v23;
  v25 = *(v24 + 64);
  v1[53] = OUTLINED_FUNCTION_37_0();
  v1[54] = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_26976D660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    v16 = swift_once();
  }

  v17 = *(v15 + 432);
  v18 = *(v15 + 408);
  v19 = *(v15 + 416);
  OUTLINED_FUNCTION_29_2(v16, qword_28033D910);
  v20 = *(v19 + 16);
  v21 = OUTLINED_FUNCTION_12_11();
  v20(v21);
  v22 = sub_2698548B4();
  v23 = sub_269854F14();
  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_9_17();
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_2(v24);
    _os_log_impl(&dword_269684000, v22, v23, "PlayVideoHandleIntentStrategy.makeFailureHandlingIntentResponse() called", v14, 2u);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v25 = *(v15 + 432);
  v26 = *(v15 + 408);
  v27 = *(v15 + 416);
  v28 = *(v15 + 312);
  v29 = *(v15 + 296);

  v30 = *(v27 + 8);
  v31 = OUTLINED_FUNCTION_22_3();
  v30(v31);
  v32 = sub_2698534E4();
  v33 = OBJC_IVAR___PlayVideoIntentResponse_code;
  swift_beginAccess();
  v34 = *&v32[v33];

  switch(v34)
  {
    case 'd':
      v36 = *(v15 + 304);
      sub_2696A73F8(v36 + 192, v15 + 176);
      v37 = *(v15 + 200);
      *(v15 + 440) = v37;
      *(v15 + 456) = __swift_project_boxed_opaque_existential_1((v15 + 176), v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      OUTLINED_FUNCTION_51_4();
      v38 = swift_allocObject();
      *(v15 + 464) = v38;
      *(v38 + 16) = xmmword_2698590C0;
      OUTLINED_FUNCTION_95_1((v36 + 112), *(v36 + 136));
      v39 = swift_task_alloc();
      *(v15 + 472) = v39;
      *v39 = v15;
      v39[1] = sub_26976DDA4;
      OUTLINED_FUNCTION_44_4(0x654E236F65646956);
      OUTLINED_FUNCTION_116();

      result = v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, sub_26977F2C4, a11, a12, a13, a14);
      break;
    case 'e':
      OUTLINED_FUNCTION_95_1((*(v15 + 304) + 112), *(*(v15 + 304) + 136));
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      *(v15 + 504) = v66;
      *v66 = v67;
      v66[1] = sub_26976E1F4;
      v68 = *(v15 + 368);
      OUTLINED_FUNCTION_116();

      result = sub_2696B98F4(v69, v70);
      break;
    case 'f':
      v54 = *(v15 + 296);
      sub_2696A73F8(*(v15 + 304) + 192, v15 + 96);
      v55 = *(v15 + 120);
      *(v15 + 520) = v55;
      *(v15 + 536) = __swift_project_boxed_opaque_existential_1((v15 + 96), v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      OUTLINED_FUNCTION_51_4();
      v56 = swift_allocObject();
      *(v15 + 544) = v56;
      *(v56 + 16) = xmmword_2698590C0;
      sub_26976CDE8();
      OUTLINED_FUNCTION_101_0();
      *(v15 + 552) = v57;
      v58 = swift_task_alloc();
      *(v15 + 560) = v58;
      *v58 = v15;
      v58[1] = sub_26976E4DC;
      OUTLINED_FUNCTION_22_3();
      OUTLINED_FUNCTION_116();

      result = sub_2696C1440();
      break;
    case 'g':
      OUTLINED_FUNCTION_95_1((*(v15 + 304) + 112), *(*(v15 + 304) + 136));
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      *(v15 + 592) = v60;
      *v60 = v61;
      v60[1] = sub_26976E890;
      v62 = *(v15 + 360);
      OUTLINED_FUNCTION_116();

      result = sub_2696B9AD0(v63, v64);
      break;
    case 'h':
      v49 = *(v15 + 304);
      sub_2696A73F8(v49 + 192, v15 + 16);
      v50 = *(v15 + 40);
      *(v15 + 608) = v50;
      *(v15 + 624) = __swift_project_boxed_opaque_existential_1((v15 + 16), v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      OUTLINED_FUNCTION_51_4();
      v51 = swift_allocObject();
      *(v15 + 632) = v51;
      *(v51 + 16) = xmmword_2698590C0;
      OUTLINED_FUNCTION_95_1((v49 + 592), *(v49 + 616));
      v52 = swift_task_alloc();
      *(v15 + 640) = v52;
      *v52 = v15;
      v52[1] = sub_26976EB74;
      OUTLINED_FUNCTION_116();

      result = sub_2697AF000();
      break;
    default:
      if (qword_2803226E8 != -1)
      {
        v35 = OUTLINED_FUNCTION_0_30();
      }

      v72 = *(v15 + 424);
      v73 = *(v15 + 408);
      v75 = *(v15 + 320);
      v74 = *(v15 + 328);
      v76 = *(v15 + 312);
      v77 = *(v15 + 296);
      OUTLINED_FUNCTION_29_2(v35, qword_28033D928);
      v78 = OUTLINED_FUNCTION_12_11();
      v20(v78);
      v79 = *(v75 + 16);
      v80 = OUTLINED_FUNCTION_47_2();
      v81(v80);
      v82 = sub_2698548B4();
      v83 = sub_269854F24();
      v84 = os_log_type_enabled(v82, v83);
      v86 = *(v15 + 320);
      v85 = *(v15 + 328);
      v87 = *(v15 + 312);
      if (v84)
      {
        OUTLINED_FUNCTION_40_4();
        v88 = swift_slowAlloc();
        *v88 = 134217984;
        v89 = sub_2698534E4();
        v90 = OBJC_IVAR___PlayVideoIntentResponse_code;
        swift_beginAccess();
        v91 = *&v89[v90];

        v92 = *(v86 + 8);
        v93 = OUTLINED_FUNCTION_22_10();
        v94(v93);
        *(v88 + 4) = v91;
        _os_log_impl(&dword_269684000, v82, v83, "Received unexpected intent code %ld for PlayVideoIntent.", v88, 0xCu);
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
      }

      else
      {
        v95 = *(v86 + 8);
        v96 = OUTLINED_FUNCTION_22_10();
        v97(v96);
      }

      v99 = *(v15 + 416);
      v98 = *(v15 + 424);
      v100 = *(v15 + 408);

      (v30)(v98, v100);
      type metadata accessor for PlayVideoIntent();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      result = sub_2696BBEF8(ObjCClassFromMetadata);
      if (v102)
      {
        OUTLINED_FUNCTION_101_0();
        v103 = *(v15 + 312);
        v104 = *(v15 + 296);
        v105 = sub_2698534E4();
        v106 = OBJC_IVAR___PlayVideoIntentResponse_code;
        swift_beginAccess();
        v107 = *&v105[v106];

        sub_2696BAE9C();
        OUTLINED_FUNCTION_20_4();
        swift_allocError();
        *v108 = v82;
        *(v108 + 8) = v100;
        *(v108 + 16) = v107;
        *(v108 + 24) = 2;
        swift_willThrow();
        OUTLINED_FUNCTION_11_23();

        OUTLINED_FUNCTION_7_7();
        OUTLINED_FUNCTION_116();

        result = v110(v109, v110, v111, v112, v113, v114, v115, v116, a9, a10, a11, a12, a13, a14);
      }

      else
      {
        __break(1u);
      }

      break;
  }

  return result;
}

uint64_t sub_26976DDA4()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v8 = *(v7 + 472);
  v9 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;
  *(v5 + 480) = v0;

  if (!v0)
  {
    *(v5 + 488) = v3;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26976DEB0()
{
  OUTLINED_FUNCTION_2_7();
  v1 = v0[58];
  OUTLINED_FUNCTION_67_0(v0[61]);
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_97_0();
  v2 = *(MEMORY[0x277D5BE58] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[62] = v3;
  *v3 = v4;
  v3[1] = sub_26976DF58;
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[55];
  v8 = v0[56];
  v9 = OUTLINED_FUNCTION_79_0();

  return MEMORY[0x2821BB488](v9, v10, v11, v12, v13);
}

uint64_t sub_26976DF58()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v2 = v1[62];
  v3 = v1[58];
  v4 = v1[50];
  v5 = v1[49];
  v6 = v1[48];
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_12_23();
  v10(v9);
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26976E0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_49();
  __swift_destroy_boxed_opaque_existential_0((v10 + 176));
  OUTLINED_FUNCTION_14_13();

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_76_2();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_26976E148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_49();
  *(v10[58] + 16) = 0;

  __swift_destroy_boxed_opaque_existential_0(v10 + 22);
  v11 = v10[60];
  OUTLINED_FUNCTION_11_23();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_75_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_26976E1F4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 504);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v8 + 512) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26976E2F0()
{
  OUTLINED_FUNCTION_12_7();
  v2 = *(v0 + 368);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  v5 = *(v0 + 336);
  OUTLINED_FUNCTION_88_0();
  sub_269853234();
  v6 = OUTLINED_FUNCTION_50_3();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = sub_2698538F4();
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v11 = MEMORY[0x277D5C1D8];
  v1[3] = v10;
  v1[4] = v11;
  __swift_allocate_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_65_1();
  sub_26969B0C0(v0 + 136, &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v5, &qword_280323010, &unk_26985B640);
  v12 = *(v4 + 8);
  v13 = OUTLINED_FUNCTION_22_3();
  v14(v13);
  OUTLINED_FUNCTION_14_13();

  OUTLINED_FUNCTION_4_17();

  return v15();
}

uint64_t sub_26976E444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_49();
  v11 = *(v10 + 512);
  OUTLINED_FUNCTION_11_23();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_75_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_26976E4DC()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v8 = *(v7 + 560);
  v9 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;
  v5[71] = v0;

  if (!v0)
  {
    v11 = v5[69];
    v5[72] = v3;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26976E5F0()
{
  OUTLINED_FUNCTION_2_7();
  v1 = v0[68];
  OUTLINED_FUNCTION_67_0(v0[72]);
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_97_0();
  v2 = *(MEMORY[0x277D5BE58] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[73] = v3;
  *v3 = v4;
  v3[1] = sub_26976E6A0;
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v9 = OUTLINED_FUNCTION_79_0();

  return MEMORY[0x2821BB488](v9, v10, v11, v12, v13);
}

uint64_t sub_26976E6A0()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v2 = v1[73];
  v3 = v1[68];
  v4 = v1[50];
  v5 = v1[49];
  v6 = v1[48];
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_12_23();
  v10(v9);
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26976E7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_49();
  __swift_destroy_boxed_opaque_existential_0((v10 + 96));
  OUTLINED_FUNCTION_14_13();

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_76_2();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_26976E890()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 592);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v8 + 600) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26976E98C()
{
  OUTLINED_FUNCTION_12_7();
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  OUTLINED_FUNCTION_88_0();
  sub_269853234();
  v6 = OUTLINED_FUNCTION_50_3();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = sub_2698538F4();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v11 = MEMORY[0x277D5C1D8];
  v1[3] = v10;
  v1[4] = v11;
  __swift_allocate_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_65_1();
  sub_26969B0C0(v0 + 56, &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v5, &qword_280323010, &unk_26985B640);
  v12 = *(v3 + 8);
  v13 = OUTLINED_FUNCTION_22_3();
  v14(v13);
  OUTLINED_FUNCTION_14_13();

  OUTLINED_FUNCTION_4_17();

  return v15();
}

uint64_t sub_26976EADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_49();
  v11 = *(v10 + 600);
  OUTLINED_FUNCTION_11_23();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_75_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_26976EB74()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v5 = *(v4 + 640);
  v6 = *(v4 + 304);
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  v9 = swift_task_alloc();
  *(v2 + 648) = v9;
  *v9 = v7;
  v9[1] = sub_26976ECAC;

  return sub_2696C1938();
}

uint64_t sub_26976ECAC()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v8 = *(v7 + 648);
  v9 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;
  *(v5 + 656) = v0;

  if (!v0)
  {
    *(v5 + 664) = v3;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26976EDB8()
{
  OUTLINED_FUNCTION_2_7();
  v1 = v0[79];
  OUTLINED_FUNCTION_67_0(v0[83]);
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_97_0();
  v2 = *(MEMORY[0x277D5BE58] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[84] = v3;
  *v3 = v4;
  v3[1] = sub_26976EE68;
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[76];
  v9 = OUTLINED_FUNCTION_79_0();

  return MEMORY[0x2821BB488](v9, v10, v11, v12, v13);
}

uint64_t sub_26976EE68()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v2 = v1[84];
  v3 = v1[79];
  v4 = v1[50];
  v5 = v1[49];
  v6 = v1[48];
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_12_23();
  v10(v9);
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26976EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_49();
  __swift_destroy_boxed_opaque_existential_0((v10 + 16));
  OUTLINED_FUNCTION_14_13();

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_76_2();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_26976F058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_49();
  v11 = v10[69];
  v12 = v10[68];

  *(v12 + 16) = 0;

  __swift_destroy_boxed_opaque_existential_0(v10 + 12);
  v13 = v10[71];
  OUTLINED_FUNCTION_11_23();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_75_1();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_26976F110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_49();
  *(v10[79] + 16) = 0;

  __swift_destroy_boxed_opaque_existential_0(v10 + 2);
  v11 = v10[82];
  OUTLINED_FUNCTION_11_23();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_75_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_26976F1BC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  sub_269743AD8(v0 + 64);
  sub_2696D1E70(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));
  __swift_destroy_boxed_opaque_existential_0((v0 + 232));
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  __swift_destroy_boxed_opaque_existential_0((v0 + 312));
  sub_269759494(v0 + 352);
  __swift_destroy_boxed_opaque_existential_0((v0 + 432));
  __swift_destroy_boxed_opaque_existential_0((v0 + 472));
  sub_26969B0C0(v0 + 512, &qword_280324188, &qword_26985F1D8);
  __swift_destroy_boxed_opaque_existential_0((v0 + 552));
  __swift_destroy_boxed_opaque_existential_0((v0 + 592));
  __swift_destroy_boxed_opaque_existential_0((v0 + 632));
  __swift_destroy_boxed_opaque_existential_0((v0 + 672));
  __swift_destroy_boxed_opaque_existential_0((v0 + 712));
  __swift_destroy_boxed_opaque_existential_0((v0 + 752));

  return v0;
}

uint64_t sub_26976F284()
{
  sub_26976F1BC();

  return MEMORY[0x2821FE8D8](v0, 800, 7);
}

uint64_t sub_26976F2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PlayVideoHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_26976F3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PlayVideoHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_26976F464(uint64_t *a1)
{
  v3 = *v1;
  sub_269764850(a1);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_26976F4D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DAF80;

  return sub_269764BA4();
}

uint64_t sub_26976F580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PlayVideoHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_26976F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PlayVideoHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_26976F708()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_26976D464();
}

uint64_t sub_26976F7B4()
{
  v2 = *v0;
  v3 = sub_2697564B8();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_26976F814(uint64_t a1, uint64_t a2)
{
  result = sub_26976FC84(&qword_2803240D8, a2, type metadata accessor for PlayVideoHandleIntentStrategy);
  *(a1 + 8) = result;
  return result;
}

id sub_26976F8B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_269854A64();

  sub_26969329C(0, &qword_280324118, 0x277D46DD8);
  v6 = sub_269854CA4();

  v7 = [v3 initWithExplanation:v5 target:a3 attributes:v6];

  return v7;
}

uint64_t sub_26976F95C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_26976F9BC(void *a1)
{
  v1 = [a1 episodeNumber];
  if (v1)
  {
    v2 = v1;
    sub_269854A94();
  }

  return OUTLINED_FUNCTION_50_0();
}

uint64_t sub_26976FA24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F0, &qword_2698603D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26976FA94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_26976FAD4(uint64_t a1, void *a2)
{
  sub_26969329C(0, &qword_2803239B0, 0x277D47140);
  OUTLINED_FUNCTION_86();
  v3 = sub_269854CA4();

  [a2 setViews_];
}

void sub_26976FB54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setDialogPhase_];
}

uint64_t sub_26976FBB8(void *a1)
{
  v2 = [a1 appBundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_269854A94();

  return v3;
}

uint64_t sub_26976FC84(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_86();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26976FCC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_3_29()
{
  v1 = v0[129];
  v2 = v0[128];
  v3 = v0[127];
  v4 = v0[126];
  v5 = v0[123];
  v6 = v0[120];
}

uint64_t OUTLINED_FUNCTION_11_23()
{
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[50];
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[45];
  v9 = v0[41];
  v8 = v0[42];
}

uint64_t OUTLINED_FUNCTION_14_13()
{
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[50];
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[45];
  v9 = v0[41];
  v8 = v0[42];
}

uint64_t OUTLINED_FUNCTION_15_16()
{
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  v9 = v0[25];
}

uint64_t OUTLINED_FUNCTION_16_15()
{
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[118];
  v6 = v0[117];
  v7 = v0[114];
  v8 = v0[111];
  v9 = v0[110];
  v10 = v0[108];
}

uint64_t OUTLINED_FUNCTION_27_9()
{
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[117];
  v5 = v0[114];
  v6 = v0[111];
  v7 = v0[110];
  v8 = v0[108];
}

uint64_t OUTLINED_FUNCTION_30_10(uint64_t result)
{
  *(result + 8) = sub_269769FA4;
  v2 = *(v1 + 888);
  v3 = *(v1 + 880);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_6(uint64_t result)
{
  *(result + 8) = sub_26976B360;
  v2 = *(v1 + 904);
  v3 = *(v1 + 896);
  return result;
}

void OUTLINED_FUNCTION_33_7()
{
  v1 = v0[151];
  v2 = v0[149];
  v3 = v0[148];
  v4 = v0[147];
  v5 = v0[146];
  v6 = v0[144];
  v7 = v0[120];
  v11 = v0[132];
  v8 = v0[119];
  v9 = v0[118];
  v10 = v0[113];
}

uint64_t OUTLINED_FUNCTION_37_4()
{
  v9 = *(v0 + 1376);
  v10 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v11 = *(v0 + 1032);
  v3 = *(v0 + 984);
  v4 = *(v0 + 976);
  v5 = *(v0 + 968);
  v6 = *(v0 + 888);
  v7 = *(v0 + 880);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_3()
{
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[23];
  v7 = v0[20];
}

uint64_t OUTLINED_FUNCTION_46_1()
{
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[130];
  v5 = v0[129];
  v6 = v0[128];
  v7 = v0[127];
  v8 = v0[126];
  v9 = v0[123];
  v10 = v0[120];
  v11 = v0[117];
  v13 = v0[114];
}

uint64_t OUTLINED_FUNCTION_52_1()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 324);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1120);
  v5 = *(v0 + 976);
  result = *(v0 + 912);
  v7 = *(v0 + 896);
  v8 = *(*(v0 + 904) + 8);
  return result;
}

void OUTLINED_FUNCTION_57_2()
{
  v1 = v0[129];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[123];
  v5 = v0[122];
  v6 = v0[121];
  v7 = v0[111];
  v8 = v0[109];
}

uint64_t OUTLINED_FUNCTION_58_0()
{
  v0[21] = v1;
  v0[18] = 0x6564695669726953;
  v0[19] = 0xE90000000000006FLL;

  return sub_269854A94();
}

uint64_t OUTLINED_FUNCTION_64_0()
{
  v6 = *(v2 + 560);
  *v0 = *(v2 + 544);
  v0[1] = v6;
  v0[2] = *(v2 + 576);
  *(v2 + 520) = v3;
  *(v2 + 528) = v4;
  *(v2 + 536) = v1;

  return sub_2696C285C(v0);
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return sub_269853114();
}

uint64_t OUTLINED_FUNCTION_66_1()
{
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1064);
  v4 = *(v0 + 968);
  v5 = *(v0 + 872);
  __swift_project_boxed_opaque_existential_1((*(v0 + 904) + 472), *(*(v0 + 904) + 496));

  return swift_initStackObject();
}

uint64_t OUTLINED_FUNCTION_67_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 400);
  v5 = *(v2 + 376);
  *(v1 + 32) = a1;

  return sub_269852E64();
}

uint64_t OUTLINED_FUNCTION_68_2()
{
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[23];
  v7 = v0[20];
}

uint64_t OUTLINED_FUNCTION_69_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_26974F520(v7, v8, va);
}

uint64_t OUTLINED_FUNCTION_70_1()
{
  v2 = *(v0 + 936);
  v4 = *(v0 + 912);
}

uint64_t OUTLINED_FUNCTION_71_2()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[115];
  return v0[117];
}

uint64_t OUTLINED_FUNCTION_82_1(uint64_t a1, uint64_t a2)
{
  *(v2 + 824) = a1;
  *(v2 + 832) = a2;

  return sub_2698551B4();
}

uint64_t OUTLINED_FUNCTION_83_1(uint64_t a1, uint64_t a2)
{
  *(v2 + 840) = a1;
  *(v2 + 848) = a2;

  return sub_2698551B4();
}

uint64_t OUTLINED_FUNCTION_84_1(uint64_t a1, uint64_t a2)
{
  *(v2 + 808) = a1;
  *(v2 + 816) = a2;

  return sub_2698551B4();
}

void OUTLINED_FUNCTION_85_1()
{
  v3 = v1[129];
  v4 = v1[125];
  v5 = v1[124];
  v6 = v1[123];
  v7 = v1[122];
  v8 = v1[121];
}