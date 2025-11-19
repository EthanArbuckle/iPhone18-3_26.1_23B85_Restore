uint64_t sub_269741A54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269741AF0;

  return sub_2697411AC(a1, a2);
}

uint64_t sub_269741AF0(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_269741BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AddToWatchListFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_269741C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5BF48] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2696DC678;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_269741D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for AddToWatchListFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2696DC678;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_269741DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for AddToWatchListFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2696DC678;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_269741E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for AddToWatchListFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2696DC678;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_269741F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for AddToWatchListFlowStrategy();
  *v13 = v6;
  v13[1] = sub_2696C995C;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_269742040(uint64_t a1, void *a2)
{
  v3 = sub_269740DD8(a1, a2, &qword_280322488, &qword_28033D6E8, type metadata accessor for AddToWatchListIntent);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_2697420D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for AddToWatchListFlowStrategy();
  *v13 = v6;
  v13[1] = sub_2696DC678;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_269742214(uint64_t a1)
{
  result = sub_26974228C(&qword_280323F58);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26974228C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AddToWatchListFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_24@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 24) = 3;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_4_19()
{
  v1 = v0[21];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[4];
}

id sub_269742324()
{
  if (qword_280322480 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D6E0;
  qword_28033D6F0 = qword_28033D6E0;

  return v1;
}

uint64_t sub_269742388()
{
  OUTLINED_FUNCTION_2_7();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640) - 8) + 64);
  v1[15] = OUTLINED_FUNCTION_4_7();
  v5 = sub_2698532A4();
  v1[16] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[17] = v6;
  v8 = *(v7 + 64);
  v1[18] = OUTLINED_FUNCTION_4_7();
  v9 = sub_2698548D4();
  v1[19] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[20] = v10;
  v12 = *(v11 + 64);
  v1[21] = OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2697424B0()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v0[20];
  v1 = v0[21];
  __swift_project_value_buffer(v0[19], qword_28033D910);
  v3 = OUTLINED_FUNCTION_2_8();
  v4(v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    OUTLINED_FUNCTION_15_13(&dword_269684000, v8, v9, "AddToWatchListHandleIntentFlowStrategy.makeIntentHandledResponse() called");
    MEMORY[0x26D647170](v7, -1, -1);
  }

  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[19];
  v13 = v0[13];
  v14 = v0[14];

  (*(v11 + 8))(v10, v12);
  sub_269743A7C(v14 + 104, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F78, qword_26985E1C0);
  v15 = sub_269853504();
  v16 = [v15 content];

  if (v16)
  {
    sub_26978701C(v16);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v0[22] = v18;
  v19 = swift_task_alloc();
  v0[23] = v19;
  *v19 = v0;
  v19[1] = sub_269742684;
  v20 = v0[18];
  OUTLINED_FUNCTION_12_17();

  return sub_2696C598C();
}

uint64_t sub_269742684()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  v4 = *(v2 + 184);
  v5 = *(v2 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v3 + 192) = v0;

  sub_269724D50(v3 + 16);

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2697427B0()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v15 = *(v0 + 128);
  v16 = *(v0 + 168);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  sub_269852CA4();
  sub_269841714();
  v7 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  sub_269852E44();
  v8 = sub_269853234();
  v11 = OUTLINED_FUNCTION_9_15(v3, v9, v10, v8);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v12 = MEMORY[0x277D5C1D8];
  v5[3] = v11;
  v5[4] = v12;
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_2698530B4();

  sub_269698048(v0 + 56, &qword_280323028, qword_26985AD20);
  sub_269698048(v3, &qword_280323010, &unk_26985B640);
  (*(v2 + 8))(v1, v15);

  OUTLINED_FUNCTION_7_7();

  return v13();
}

uint64_t sub_26974296C()
{
  OUTLINED_FUNCTION_2_7();
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[15];

  OUTLINED_FUNCTION_7_7();
  v5 = v0[24];

  return v4();
}

uint64_t sub_2697429E0()
{
  OUTLINED_FUNCTION_2_7();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640) - 8) + 64);
  v1[23] = OUTLINED_FUNCTION_4_7();
  v5 = sub_2698532A4();
  v1[24] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[25] = v6;
  v8 = *(v7 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v9 = sub_2698548D4();
  v1[28] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[29] = v10;
  v12 = *(v11 + 64);
  v1[30] = OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_269742B1C()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v0[29];
  v1 = v0[30];
  __swift_project_value_buffer(v0[28], qword_28033D910);
  v3 = OUTLINED_FUNCTION_2_8();
  v4(v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    OUTLINED_FUNCTION_15_13(&dword_269684000, v8, v9, "AddToWatchListHandleIntentFlowStrategy.makeFailureHandlingIntentResponse() called");
    MEMORY[0x26D647170](v7, -1, -1);
  }

  v11 = v0[29];
  v10 = v0[30];
  v12 = v0[28];
  v13 = v0[21];
  v14 = v0[22];

  (*(v11 + 8))(v10, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F78, qword_26985E1C0);
  v15 = sub_2698534E4();
  v16 = OBJC_IVAR___AddToWatchListIntentResponse_code;
  swift_beginAccess();
  v17 = *&v15[v16];

  if (v17 == 100)
  {
    v18 = *__swift_project_boxed_opaque_existential_1((v14 + 104), *(v0[22] + 128));
    v19 = swift_task_alloc();
    v0[31] = v19;
    *v19 = v0;
    v19[1] = sub_269742DF0;
    v20 = v0[27];

    return sub_269788BF4(v20, 0xD00000000000001FLL, 0x800000026987E2D0);
  }

  else
  {
    v22 = v0[21];
    sub_269743A7C(v14 + 104, (v0 + 2));
    v23 = sub_269853504();
    v24 = [v23 content];

    if (v24)
    {
      sub_26978701C(v24);
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v0[33] = v26;
    v27 = swift_task_alloc();
    v0[34] = v27;
    *v27 = v0;
    v27[1] = sub_2697430D8;
    v28 = v0[26];
    OUTLINED_FUNCTION_12_17();

    return sub_2696C5ECC();
  }
}

uint64_t sub_269742DF0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = *(v2 + 248);
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_269742EF0()
{
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v17 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  OUTLINED_FUNCTION_8_22();
  sub_269841714();
  OUTLINED_FUNCTION_7_24();
  v6 = sub_269853234();
  v9 = OUTLINED_FUNCTION_9_15(v5, v7, v8, v6);
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v1[3] = v9;
  v1[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_4_20();

  sub_269698048(v0 + 96, &qword_280323028, qword_26985AD20);
  sub_269698048(v5, &qword_280323010, &unk_26985B640);
  (*(v3 + 8))(v2, v17);
  v11 = *(v0 + 240);
  v12 = *(v0 + 208);
  v13 = *(v0 + 216);
  v14 = *(v0 + 184);

  OUTLINED_FUNCTION_7_7();

  return v15();
}

uint64_t sub_269743054()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[32];
  v2 = v0[30];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[23];

  OUTLINED_FUNCTION_7_7();

  return v6();
}

uint64_t sub_2697430D8()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  v4 = *(v2 + 272);
  v5 = *(v2 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v3 + 280) = v0;

  sub_269724D50(v3 + 16);

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_269743204()
{
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v17 = *(v0 + 192);
  v5 = *(v0 + 176);
  OUTLINED_FUNCTION_8_22();
  sub_269841714();
  OUTLINED_FUNCTION_7_24();
  v6 = sub_269853234();
  v9 = OUTLINED_FUNCTION_9_15(v4, v7, v8, v6);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v1[3] = v9;
  v1[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_4_20();

  sub_269698048(v0 + 56, &qword_280323028, qword_26985AD20);
  sub_269698048(v4, &qword_280323010, &unk_26985B640);
  (*(v3 + 8))(v2, v17);
  v11 = *(v0 + 240);
  v12 = *(v0 + 208);
  v13 = *(v0 + 216);
  v14 = *(v0 + 184);

  OUTLINED_FUNCTION_7_7();

  return v15();
}

uint64_t sub_269743368()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[35];
  v2 = v0[30];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[23];

  OUTLINED_FUNCTION_7_7();

  return v6();
}

uint64_t sub_2697433EC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_269743AD8(v0 + 56);
  sub_269724D50(v0 + 104);
  return v0;
}

uint64_t sub_26974341C()
{
  sub_2697433EC();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_269743474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AddToWatchListHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_269743538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AddToWatchListHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_2697435FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AddToWatchListHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t sub_2697436C0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DAF80;

  return sub_269742388();
}

uint64_t sub_26974376C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AddToWatchListHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_269743830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AddToWatchListHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_2697438F4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_2697429E0();
}

uint64_t sub_2697439A0(uint64_t a1, void *a2)
{
  v3 = sub_269740D30(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

unint64_t sub_2697439FC(uint64_t a1)
{
  result = sub_269743A24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_269743A24()
{
  result = qword_280323F70;
  if (!qword_280323F70)
  {
    type metadata accessor for AddToWatchListHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323F70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_20()
{

  return sub_2698530B4();
}

uint64_t OUTLINED_FUNCTION_7_24()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return sub_269852E44();
}

uint64_t OUTLINED_FUNCTION_8_22()
{
  v2 = *(v1 + 160);
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return sub_269852CA4();
}

uint64_t OUTLINED_FUNCTION_9_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);

  return sub_2698538F4();
}

void OUTLINED_FUNCTION_15_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

id sub_269743C44()
{
  v13[3] = &type metadata for UTSProvider;
  v13[4] = &off_287A43FA8;
  v0 = swift_allocObject();
  v13[0] = v0;
  v11 = &type metadata for CoreAnalyticsService;
  v12 = &xmmword_287A41610;
  v0[5] = &type metadata for UTSNetworkProvider;
  v0[6] = &off_287A43DC0;
  v1 = swift_allocObject();
  v0[2] = v1;
  sub_2697D24B0(&v10, (v1 + 16));
  v0[10] = &type metadata for CoreAnalyticsService;
  v0[11] = &xmmword_287A41610;
  v11 = &type metadata for UTSProvider;
  v12 = &off_287A43FA8;
  v2 = swift_allocObject();
  v9 = &xmmword_287A41610;
  *&v10 = v2;
  v8 = &type metadata for CoreAnalyticsService;
  v2[5] = &type metadata for UTSNetworkProvider;
  v2[6] = &off_287A43DC0;
  v3 = swift_allocObject();
  v2[2] = v3;
  sub_2697D24B0(&v7, (v3 + 16));
  v2[10] = &type metadata for CoreAnalyticsService;
  v2[11] = &xmmword_287A41610;
  sub_2696B2824(v13, &v7);
  sub_269746E7C(&v10, v6);
  v4 = sub_269746ED8(&v7, v6);
  sub_269747248(&v10);
  sub_2696B28D4(v13);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_269743DD4()
{
  OUTLINED_FUNCTION_2_7();
  v1[9] = v2;
  v1[10] = v0;
  v3 = sub_269854824();
  v1[11] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[12] = v4;
  v6 = *(v5 + 64);
  v1[13] = OUTLINED_FUNCTION_37_0();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v7 = sub_269851D34();
  v1[17] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[18] = v8;
  v10 = *(v9 + 64) + 15;
  v1[19] = swift_task_alloc();
  v11 = sub_2698548D4();
  v1[20] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[21] = v12;
  v14 = *(v13 + 64);
  v1[22] = OUTLINED_FUNCTION_37_0();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_269743F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v15 = *(v14 + 216);
  v16 = *(v14 + 160);
  v17 = *(v14 + 168);
  v18 = __swift_project_value_buffer(v16, qword_28033D928);
  *(v14 + 224) = v18;
  v19 = *(v17 + 16);
  *(v14 + 232) = v19;
  *(v14 + 240) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v15, v18, v16);
  v20 = sub_2698548B4();
  v21 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v21))
  {
    v22 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24(v22);
    OUTLINED_FUNCTION_11_19();
    OUTLINED_FUNCTION_29(v23, v24, v25, v26);
    OUTLINED_FUNCTION_12_1();
  }

  v27 = *(v14 + 216);
  v28 = *(v14 + 160);
  v29 = *(v14 + 168);

  v30 = *(v29 + 8);
  *(v14 + 248) = v30;
  v30(v27, v28);
  *(v14 + 40) = &type metadata for SiriVideoFeatureKeys;
  *(v14 + 48) = sub_2696A2978();
  *(v14 + 16) = 2;
  v31 = sub_269853B34();
  __swift_destroy_boxed_opaque_existential_0((v14 + 16));
  if ((v31 & 1) == 0)
  {
    v19(*(v14 + 208), v18, *(v14 + 160));
    v46 = sub_2698548B4();
    v47 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v47))
    {
      v48 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v48);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v49, v50, "watchlist support flag is not enabled");
      OUTLINED_FUNCTION_18_7();
    }

    v51 = *(v14 + 208);
    v52 = *(v14 + 160);
    v53 = *(v14 + 168);

    v54 = OUTLINED_FUNCTION_22_3();
    (v30)(v54);
    type metadata accessor for AddToWatchListContentResolutionResult();
    v135 = static AddToWatchListContentResolutionResult.unsupported(forReason:)(6);
    goto LABEL_13;
  }

  v32 = *(v14 + 152);
  v33 = *(v14 + 72);
  sub_269851D24();
  v34 = [v33 content];
  if (v34)
  {
    v35 = v34;
    sub_26977E470(v34);
    if (v36)
    {
      v38 = *(v14 + 144);
      v37 = *(v14 + 152);
      v39 = *(v14 + 136);
      v40 = *(v14 + 80);

      __swift_project_boxed_opaque_existential_1((v40 + OBJC_IVAR____TtC16SiriVideoIntents27AddToWatchListIntentHandler_analyticsService), *(v40 + OBJC_IVAR____TtC16SiriVideoIntents27AddToWatchListIntentHandler_analyticsService + 24));
      sub_2696C9DAC();
      sub_2697B2964();
      type metadata accessor for AddToWatchListContentResolutionResult();
      v41 = OUTLINED_FUNCTION_11_16();
      v42 = static ContentResolutionResult.success(with:)(v41);
LABEL_9:
      v135 = v42;

      v43 = *(v38 + 8);
      v44 = OUTLINED_FUNCTION_34_0();
      v45(v44);
LABEL_13:
      OUTLINED_FUNCTION_1_20();
      v133 = v55;

      OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_116();

      return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, v133, v135, a12, a13, a14);
    }
  }

  v65 = [*(v14 + 72) contentSearch];
  *(v14 + 256) = v65;
  if (!v65)
  {
    v19(*(v14 + 176), v18, *(v14 + 160));
    v87 = sub_2698548B4();
    v88 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v88))
    {
      v89 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v89);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v90, v91, "Missing required search from intent, returning failure");
      OUTLINED_FUNCTION_18_7();
    }

    v93 = *(v14 + 168);
    v92 = *(v14 + 176);
    v95 = *(v14 + 152);
    v94 = *(v14 + 160);
    v96 = *(v14 + 136);
    v97 = *(v14 + 144);

    v98 = OUTLINED_FUNCTION_22_3();
    (v30)(v98);
    type metadata accessor for AddToWatchListContentResolutionResult();
    v135 = static AddToWatchListContentResolutionResult.unsupported(forReason:)(3);
    (*(v97 + 8))(v95, v96);
    goto LABEL_13;
  }

  v35 = v65;
  *(v14 + 264) = sub_26977E470(v65);
  *(v14 + 272) = v66;
  if (v66)
  {
    if (qword_280322710 != -1)
    {
      OUTLINED_FUNCTION_2_18();
    }

    v67 = *(v14 + 128);
    v68 = sub_269854854();
    __swift_project_value_buffer(v68, qword_28033D958);
    sub_269854814();
    v69 = sub_269854844();
    v70 = sub_269854FF4();
    if (sub_269855074())
    {
      v71 = *(v14 + 128);
      v72 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_40_1(v72);
      v73 = sub_269854804();
      _os_signpost_emit_with_name_impl(&dword_269684000, v69, v70, v73, "addToWatchListSingleItemResolve", "", v30, 2u);
      OUTLINED_FUNCTION_16_9();
    }

    v74 = *(v14 + 120);
    v75 = *(v14 + 128);
    v76 = *(v14 + 88);
    v77 = *(v14 + 96);
    v78 = *(v14 + 80);

    v79 = *(v77 + 16);
    v80 = OUTLINED_FUNCTION_36_4();
    v81(v80);
    v82 = sub_269854894();
    v83 = *(v82 + 48);
    v84 = *(v82 + 52);
    swift_allocObject();
    *(v14 + 280) = OUTLINED_FUNCTION_24_9();
    (*(v77 + 8))(v75, v76);
    __swift_project_boxed_opaque_existential_1((v78 + OBJC_IVAR____TtC16SiriVideoIntents27AddToWatchListIntentHandler_contentResolver), *(v78 + OBJC_IVAR____TtC16SiriVideoIntents27AddToWatchListIntentHandler_contentResolver + 24));
    v85 = swift_task_alloc();
    *(v14 + 288) = v85;
    *v85 = v14;
    v85[1] = sub_269744748;
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_116();

    return sub_2697BC73C();
  }

  else
  {
    if (sub_269746410(v35))
    {
      v38 = *(v14 + 144);
      v99 = *(v14 + 152);
      v100 = *(v14 + 136);
      type metadata accessor for AddToWatchListContentResolutionResult();
      v42 = static AddToWatchListContentResolutionResult.unsupported(forReason:)(5);
      goto LABEL_9;
    }

    if (qword_280322710 != -1)
    {
      OUTLINED_FUNCTION_2_18();
    }

    v101 = *(v14 + 112);
    v102 = sub_269854854();
    __swift_project_value_buffer(v102, qword_28033D958);
    sub_269854814();
    v103 = sub_269854844();
    v104 = sub_269854FF4();
    if (sub_269855074())
    {
      v105 = *(v14 + 112);
      v106 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_40_1(v106);
      v107 = sub_269854804();
      _os_signpost_emit_with_name_impl(&dword_269684000, v103, v104, v107, "addToWatchListDisambiguateResolve", "", v30, 2u);
      OUTLINED_FUNCTION_16_9();
    }

    v109 = *(v14 + 112);
    v108 = *(v14 + 120);
    v111 = *(v14 + 96);
    v110 = *(v14 + 104);
    v112 = *(v14 + 88);

    v113 = *(v111 + 16);
    v114 = OUTLINED_FUNCTION_36_4();
    v136 = v115;
    v115(v114);
    v116 = sub_269854894();
    v117 = *(v116 + 48);
    v118 = *(v116 + 52);
    swift_allocObject();
    *(v14 + 320) = OUTLINED_FUNCTION_24_9();
    v134 = *(v111 + 8);
    v134(v109, v112);
    sub_269854814();
    v119 = sub_269854844();
    v120 = sub_269854FF4();
    if (sub_269855074())
    {
      v121 = *(v14 + 104);
      v122 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_40_1(v122);
      v123 = sub_269854804();
      _os_signpost_emit_with_name_impl(&dword_269684000, v119, v120, v123, "addToWatchListDisambiguateResolve", "", v110, 2u);
      OUTLINED_FUNCTION_16_9();
    }

    v124 = *(v14 + 120);
    v125 = *(v14 + 104);
    v127 = *(v14 + 80);
    v126 = *(v14 + 88);

    v128 = OUTLINED_FUNCTION_36_4();
    v136(v128);
    v129 = *(v116 + 48);
    v130 = *(v116 + 52);
    swift_allocObject();
    *(v14 + 328) = OUTLINED_FUNCTION_24_9();
    v134(v125, v126);
    __swift_project_boxed_opaque_existential_1((v127 + OBJC_IVAR____TtC16SiriVideoIntents27AddToWatchListIntentHandler_contentResolver), *(v127 + OBJC_IVAR____TtC16SiriVideoIntents27AddToWatchListIntentHandler_contentResolver + 24));
    v131 = swift_task_alloc();
    *(v14 + 336) = v131;
    *v131 = v14;
    v131[1] = sub_269744C80;
    OUTLINED_FUNCTION_116();

    return sub_2697BB34C();
  }
}

uint64_t sub_269744748()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_14_6();
  v7 = v6;
  OUTLINED_FUNCTION_6_13();
  *v8 = v7;
  v10 = *(v9 + 288);
  v11 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v12 = v11;
  v7[37] = v0;

  if (v0)
  {
    v13 = sub_2697449B0;
  }

  else
  {
    v14 = v7[34];

    v7[38] = v3;
    v7[39] = v5;
    v13 = sub_269744870;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_269744870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v15 = v14[38];
  v16 = v14[39];
  v17 = v14[35];
  v18 = v14[32];
  v20 = v14[18];
  v19 = v14[19];
  v21 = v14[17];
  __swift_project_boxed_opaque_existential_1((v14[10] + OBJC_IVAR____TtC16SiriVideoIntents27AddToWatchListIntentHandler_analyticsService), *(v14[10] + OBJC_IVAR____TtC16SiriVideoIntents27AddToWatchListIntentHandler_analyticsService + 24));
  sub_2697B2964();
  type metadata accessor for AddToWatchListContentResolutionResult();
  v22 = v16;
  v37 = static ContentResolutionResult.success(with:)(v22);

  sub_2697453F8(v17, "addToWatchListSingleItemResolve");

  v23 = *(v20 + 8);
  v24 = OUTLINED_FUNCTION_34_0();
  v25(v24);
  OUTLINED_FUNCTION_1_20();
  v36 = v26;

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_116();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, a12, a13, a14);
}

uint64_t sub_2697449B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  v25 = v22[37];
  v26 = v22[34];
  v28 = v22[29];
  v27 = v22[30];
  v29 = v22[28];
  v30 = v22[25];
  v31 = v22[20];
  sub_2697453F8(v22[35], "addToWatchListSingleItemResolve");

  v28(v30, v29, v31);

  v32 = v25;
  v33 = sub_2698548B4();
  v34 = sub_269854F24();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = v22[37];
    v37 = v22[33];
    v36 = v22[34];
    v71 = v22[25];
    v73 = v22[31];
    v39 = v22[20];
    v38 = v22[21];
    v40 = swift_slowAlloc();
    a11 = swift_slowAlloc();
    *v40 = 136315394;
    v41 = sub_26974F520(v37, v36, &a11);

    *(v40 + 4) = v41;
    *(v40 + 12) = 2080;
    v22[8] = v35;
    v42 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v43 = sub_269854AE4();
    v45 = sub_26974F520(v43, v44, &a11);

    *(v40 + 14) = v45;
    _os_log_impl(&dword_269684000, v33, v34, "Got unexpected failure on UMC ID lookup for %s: %s", v40, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_31_6();

    v73(v71, v39);
  }

  else
  {
    v46 = v22[34];
    v47 = v22[31];
    v48 = v22[25];
    v49 = v22[20];
    v50 = v22[21];

    v51 = OUTLINED_FUNCTION_34_0();
    v47(v51);
  }

  v52 = v22[37];
  v53 = v22[32];
  v55 = v22[18];
  v54 = v22[19];
  v56 = v22[17];
  type metadata accessor for AddToWatchListContentResolutionResult();
  v57 = OUTLINED_FUNCTION_38_5();
  v74 = static AddToWatchListContentResolutionResult.unsupported(forReason:)(v57);

  v58 = *(v55 + 8);
  v59 = OUTLINED_FUNCTION_34_0();
  v60(v59);
  OUTLINED_FUNCTION_1_20();
  v72 = v61;

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_116();

  return v64(v62, v63, v64, v65, v66, v67, v68, v69, v72, v74, a11, a12, a13, a14);
}

uint64_t sub_269744C80()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 336);
  *v3 = *v1;
  v2[43] = v6;
  v2[44] = v7;
  v2[45] = v0;

  if (v0)
  {
    v8 = sub_269744F34;
  }

  else
  {
    v8 = sub_269744D8C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_269744D8C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 344);
  v2 = *(v0 + 240);
  (*(v0 + 232))(*(v0 + 192), *(v0 + 224), *(v0 + 160));

  v3 = sub_2698548B4();
  v4 = sub_269854F14();
  v5 = OUTLINED_FUNCTION_19_5(v4);
  v6 = *(v0 + 344);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = sub_26975004C(v6);

    OUTLINED_FUNCTION_11_19();
    _os_log_impl(v8, v9, v10, v11, v7, 0xCu);
    OUTLINED_FUNCTION_12_1();
  }

  else
  {
    v12 = *(v0 + 344);
  }

  v13 = *(v0 + 344);
  v14 = *(v0 + 352);
  v15 = *(v0 + 256);
  v16 = *(v0 + 80);
  v17 = *(v0 + 168) + 8;
  (*(v0 + 248))(*(v0 + 192), *(v0 + 160));
  __swift_project_boxed_opaque_existential_1((v16 + OBJC_IVAR____TtC16SiriVideoIntents27AddToWatchListIntentHandler_analyticsService), *(v16 + OBJC_IVAR____TtC16SiriVideoIntents27AddToWatchListIntentHandler_analyticsService + 24));
  sub_26975004C(v13);
  sub_2697B27C0();
  *(v0 + 368) = [v15 itemLimit];
  v18 = swift_task_alloc();
  *(v0 + 376) = v18;
  *v18 = v0;
  v18[1] = sub_2697451CC;
  v19 = *(v0 + 344);

  return sub_2697466A0();
}

uint64_t sub_269744F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  v25 = v22[45];
  v27 = v22[29];
  v26 = v22[30];
  v28 = v22[28];
  v29 = v22[23];
  v30 = v22[20];
  sub_2697453F8(v22[41], "addToWatchListDisambiguateResolve");

  v27(v29, v28, v30);
  v31 = v25;
  v32 = sub_2698548B4();
  v33 = sub_269854F14();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = v22[45];
    v68 = v22[31];
    v35 = v22[23];
    v36 = v22[20];
    v37 = v22[21];
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    a11 = v39;
    *v38 = 136315138;
    v22[7] = v34;
    v40 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v41 = sub_269854AE4();
    v43 = sub_26974F520(v41, v42, &a11);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_269684000, v32, v33, "content resolver error: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_31_6();

    v44 = OUTLINED_FUNCTION_22_3();
    v68(v44);
  }

  else
  {
    v45 = v22[31];
    v46 = v22[23];
    v47 = v22[20];
    v48 = v22[21];

    v49 = OUTLINED_FUNCTION_22_3();
    v45(v49);
  }

  v50 = v22[45];
  v51 = v22[40];
  v52 = v22[32];
  v54 = v22[18];
  v53 = v22[19];
  v55 = v22[17];
  type metadata accessor for AddToWatchListContentResolutionResult();
  v56 = OUTLINED_FUNCTION_38_5();
  v69 = static AddToWatchListContentResolutionResult.unsupported(forReason:)(v56);

  sub_2697453F8(v51, "addToWatchListDisambiguateResolve");

  (*(v54 + 8))(v53, v55);
  OUTLINED_FUNCTION_1_20();
  v67 = v57;

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_116();

  return v60(v58, v59, v60, v61, v62, v63, v64, v65, v67, v69, a11, a12, a13, a14);
}

uint64_t sub_2697451CC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v4 = v3[47];
  v5 = v3[46];
  v6 = v3[43];
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v10 + 384) = v9;

  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2697452E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v15 = v14[40];
  v16 = v14[41];
  v17 = v14[32];
  v19 = v14[18];
  v18 = v14[19];
  v20 = v14[17];
  v21 = OUTLINED_FUNCTION_36_4();
  sub_2697453F8(v21, v22);

  sub_2697453F8(v15, "addToWatchListDisambiguateResolve");

  v23 = *(v19 + 8);
  v24 = OUTLINED_FUNCTION_34_0();
  v25(v24);
  v26 = v14[48];
  OUTLINED_FUNCTION_1_20();
  v38 = v27;
  v39 = v28;

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_116();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, a12, a13, a14);
}

uint64_t sub_2697453F8(uint64_t a1, const char *a2)
{
  v26 = a2;
  v2 = sub_269854864();
  v3 = OUTLINED_FUNCTION_8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269854824();
  v11 = OUTLINED_FUNCTION_8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322710 != -1)
  {
    OUTLINED_FUNCTION_2_18();
  }

  v18 = sub_269854854();
  __swift_project_value_buffer(v18, qword_28033D958);
  v19 = sub_269854844();
  sub_269854874();
  v20 = sub_269854FE4();
  if (sub_269855074())
  {

    sub_2698548A4();

    if ((*(v5 + 88))(v9, v2) == *MEMORY[0x277D85B00])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v9, v2);
      v21 = "";
    }

    v22 = OUTLINED_FUNCTION_16_2();
    *v22 = 0;
    v23 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v19, v20, v23, v26, v21, v22, 2u);
    OUTLINED_FUNCTION_31_6();
  }

  return (*(v13 + 8))(v17, v10);
}

uint64_t sub_26974566C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_269745730;

  return sub_269743DD4();
}

uint64_t sub_269745730()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v1;
  OUTLINED_FUNCTION_14_6();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v9 = v8;

  (v5)[2](v5, v2);
  _Block_release(v5);

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_269745884()
{
  OUTLINED_FUNCTION_2_7();
  v0[2] = v1;
  v2 = sub_2698548D4();
  v0[3] = v2;
  OUTLINED_FUNCTION_5_12(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_37_0();
  v0[6] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_269745934()
{
  v2 = [*(v0 + 16) content];
  if (v2)
  {

    if (qword_2803226E8 != -1)
    {
      v3 = OUTLINED_FUNCTION_0_30();
    }

    v5 = (v0 + 48);
    v4 = *(v0 + 48);
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    OUTLINED_FUNCTION_29_2(v3, qword_28033D928);
    v9 = *(v7 + 16);
    v8 = v7 + 16;
    v10 = OUTLINED_FUNCTION_12_11();
    v11(v10);
    v12 = sub_2698548B4();
    v13 = sub_269854F04();
    if (OUTLINED_FUNCTION_39_1(v13))
    {
      v14 = "Confirm step: success";
LABEL_10:
      v22 = *v5;
      v23 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_40_1(v23);
      _os_log_impl(&dword_269684000, v12, v8, v14, v1, 2u);
      OUTLINED_FUNCTION_16_9();
      goto LABEL_13;
    }

    v22 = *v5;
  }

  else
  {
    if (qword_2803226E8 != -1)
    {
      v2 = OUTLINED_FUNCTION_0_30();
    }

    v5 = (v0 + 40);
    v15 = *(v0 + 40);
    v16 = *(v0 + 24);
    v17 = *(v0 + 32);
    OUTLINED_FUNCTION_29_2(v2, qword_28033D928);
    v18 = *(v17 + 16);
    v8 = v17 + 16;
    v19 = OUTLINED_FUNCTION_12_11();
    v20(v19);
    v12 = sub_2698548B4();
    v21 = sub_269854F04();
    if (OUTLINED_FUNCTION_39_1(v21))
    {
      v14 = "Confirm step: no content";
      goto LABEL_10;
    }

    v22 = *v5;
  }

LABEL_13:
  v25 = *(v0 + 40);
  v24 = *(v0 + 48);
  v26 = *(v0 + 24);
  v27 = *(v0 + 32);

  (*(v27 + 8))(v22, v26);
  v28 = objc_allocWithZone(type metadata accessor for AddToWatchListIntentResponse());
  v29 = OUTLINED_FUNCTION_11_16();
  AddToWatchListIntentResponse.init(code:userActivity:)(v29, 0);

  v30 = OUTLINED_FUNCTION_8_23();

  return v31(v30);
}

uint64_t sub_269745B54(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26974729C;

  return sub_269745884();
}

uint64_t sub_269745C14()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2698548D4();
  v1[5] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_37_0();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_269745CD0()
{
  OUTLINED_FUNCTION_34();
  if (qword_2803226E8 != -1)
  {
    v1 = OUTLINED_FUNCTION_0_30();
  }

  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[6];
  v0[10] = OUTLINED_FUNCTION_29_2(v1, qword_28033D928);
  v0[11] = *(v4 + 16);
  v0[12] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5 = OUTLINED_FUNCTION_12_11();
  v6(v5);
  v7 = sub_2698548B4();
  v8 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v8))
  {
    v9 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v9);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v10, v11, "Handle step");
    OUTLINED_FUNCTION_18_7();
  }

  v12 = v0[9];
  v13 = v0[5];
  v14 = v0[6];
  v15 = v0[3];

  v0[13] = *(v14 + 8);
  v16 = OUTLINED_FUNCTION_22_3();
  v17(v16);
  v18 = [v15 content];
  if (v18 && (sub_26978571C(v18), (v0[14] = v19) != 0))
  {
    __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SiriVideoIntents27AddToWatchListIntentHandler_watchListService), *(v0[4] + OBJC_IVAR____TtC16SiriVideoIntents27AddToWatchListIntentHandler_watchListService + 24));
    v20 = swift_task_alloc();
    v0[15] = v20;
    *v20 = v0;
    v20[1] = sub_269745EE0;
    v21 = OUTLINED_FUNCTION_7_16();

    return sub_2697B9684(v21, v22);
  }

  else
  {
    v24 = objc_allocWithZone(type metadata accessor for AddToWatchListIntentResponse());
    AddToWatchListIntentResponse.init(code:userActivity:)(5, 0);
    v26 = v0[8];
    v25 = v0[9];
    v27 = v0[7];

    v28 = OUTLINED_FUNCTION_8_23();

    return v29(v28);
  }
}

uint64_t sub_269745EE0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v9 + 128) = v0;

  if (v0)
  {
    v10 = sub_269746104;
  }

  else
  {
    v10 = sub_269745FFC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_269745FFC()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 96);
  (*(v0 + 88))(*(v0 + 64), *(v0 + 80), *(v0 + 40));
  v2 = sub_2698548B4();
  v3 = sub_269854F44();
  if (OUTLINED_FUNCTION_19_5(v3))
  {
    v4 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v4);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v5, v6, "Successfully added item to watchlist");
    OUTLINED_FUNCTION_18_7();
  }

  v7 = *(v0 + 104);
  v8 = *(v0 + 64);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);

  v11 = OUTLINED_FUNCTION_22_3();
  v7(v11);
  v12 = objc_allocWithZone(type metadata accessor for AddToWatchListIntentResponse());
  v13 = OUTLINED_FUNCTION_38_5();
  AddToWatchListIntentResponse.init(code:userActivity:)(v13, 0);
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  v16 = *(v0 + 56);

  v17 = OUTLINED_FUNCTION_8_23();

  return v18(v17);
}

uint64_t sub_269746104()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 128);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if (!swift_dynamicCast() || *(v0 + 136))
  {

    objc_allocWithZone(type metadata accessor for AddToWatchListIntentResponse());
    AddToWatchListIntentResponse.init(code:userActivity:)(5, 0);
    v19 = OUTLINED_FUNCTION_11_16();
  }

  else
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 80);
    v6 = *(v0 + 56);
    v7 = *(v0 + 40);

    v4(v6, v5, v7);
    v8 = sub_2698548B4();
    v9 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v9))
    {
      v10 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v10);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v11, v12, "User was not consented to the TV app");
      OUTLINED_FUNCTION_18_7();
    }

    v13 = *(v0 + 104);
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = *(v0 + 40);

    v17 = OUTLINED_FUNCTION_22_3();
    v13(v17);
    v18 = objc_allocWithZone(type metadata accessor for AddToWatchListIntentResponse());
    AddToWatchListIntentResponse.init(code:userActivity:)(100, 0);
    v19 = *(v0 + 16);
  }

  v21 = *(v0 + 64);
  v20 = *(v0 + 72);
  v22 = *(v0 + 56);

  v23 = OUTLINED_FUNCTION_8_23();

  return v24(v23);
}

uint64_t sub_2697462C8(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_26978E9A8(a6, v10);
}

uint64_t sub_26974634C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26974729C;

  return sub_269745C14();
}

uint64_t sub_269746410(void *a1)
{
  v2 = sub_2698548D4();
  v3 = OUTLINED_FUNCTION_8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = [a1 type];
  if (v11 == 3 || (v11 = [a1 type], v11 == 2))
  {
    if (qword_2803226E8 != -1)
    {
      v11 = OUTLINED_FUNCTION_0_30();
    }

    OUTLINED_FUNCTION_29_2(v11, qword_28033D928);
    (*(v5 + 16))(v10);
    v12 = sub_2698548B4();
    v13 = sub_269854F14();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_16;
    }

    v14 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24(v14);
    OUTLINED_FUNCTION_29(&dword_269684000, v12, v13, "Search included an unsupported content type for WatchList");
LABEL_15:
    OUTLINED_FUNCTION_12_1();
LABEL_16:

    v23 = *(v5 + 8);
    v24 = OUTLINED_FUNCTION_7_16();
    v25(v24);
    return 1;
  }

  sub_2696CD57C(a1, &selRef_episodeNumber);
  if (v15 || (sub_2696CD57C(a1, &selRef_seasonNumber), v16))
  {

LABEL_11:
    if (qword_2803226E8 != -1)
    {
      result = OUTLINED_FUNCTION_0_30();
    }

    OUTLINED_FUNCTION_29_2(result, qword_28033D928);
    v18 = *(v5 + 16);
    v19 = OUTLINED_FUNCTION_12_11();
    v20(v19);
    v12 = sub_2698548B4();
    v21 = sub_269854F14();
    if (!os_log_type_enabled(v12, v21))
    {
      goto LABEL_16;
    }

    v22 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24(v22);
    OUTLINED_FUNCTION_29(&dword_269684000, v12, v21, "Search included a parameter for season or epsidoe number");
    goto LABEL_15;
  }

  result = [a1 seasonReference];
  if (result)
  {
    goto LABEL_11;
  }

  result = [a1 episodeReference];
  if (result)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_2697466A0()
{
  OUTLINED_FUNCTION_2_7();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2698548D4();
  v0[4] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_37_0();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_269746774()
{
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[5];
  __swift_project_value_buffer(v2, qword_28033D928);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_7_16();
  v4(v5);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (OUTLINED_FUNCTION_39_1(v7))
  {
    v8 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24(v8);
    OUTLINED_FUNCTION_29(&dword_269684000, v6, v2, "AddToWatchListIntentHandler::handleSuggestedContent Found suggested content in the intent, attempting to use it");
    OUTLINED_FUNCTION_12_1();
  }

  v9 = v0[10];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v14 = OUTLINED_FUNCTION_34_0();
  v13(v14);
  v15 = sub_26975004C(v12);
  if (v15 != 1)
  {
    v33 = v0[4];
    if (v15 >= 2)
    {
      v46 = v0[8];
      v47 = v0[2];
      v48 = OUTLINED_FUNCTION_7_16();
      v4(v48);

      v49 = sub_2698548B4();
      v50 = sub_269854F14();
      v51 = OUTLINED_FUNCTION_19_5(v50);
      v52 = v0[2];
      if (v51)
      {
        v53 = swift_slowAlloc();
        *v53 = 134217984;
        *(v53 + 4) = sub_26975004C(v52);

        OUTLINED_FUNCTION_11_19();
        _os_log_impl(v54, v55, v56, v57, v53, 0xCu);
        OUTLINED_FUNCTION_12_1();
      }

      else
      {
        v70 = v0[2];
      }

      v71 = v0[2];
      v72 = v0[3];
      v73 = v0[5] + 8;
      (v13)(v0[8], v0[4]);
      type metadata accessor for AddToWatchListContentResolutionResult();
      v74 = OUTLINED_FUNCTION_7_16();
      v76 = sub_2696D18D0(v74, v75);
      static ContentResolutionResult.disambiguation(with:)(v76);
      OUTLINED_FUNCTION_11_16();

      goto LABEL_24;
    }

    v34 = v0[7];
    v35 = OUTLINED_FUNCTION_7_16();
    v4(v35);
    v36 = sub_2698548B4();
    v37 = sub_269854F44();
    if (OUTLINED_FUNCTION_19_5(v37))
    {
      v38 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v38);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v39, v40, "Got no results for request");
      OUTLINED_FUNCTION_18_7();
    }

    v41 = v0[7];
    v42 = v0[4];
    v43 = v0[5];

    v44 = OUTLINED_FUNCTION_22_3();
    v13(v44);
    type metadata accessor for AddToWatchListContentResolutionResult();
    v45 = 1;
    goto LABEL_21;
  }

  if (!sub_26975004C(v0[2]))
  {
    v58 = v0[6];
    v59 = v0[4];
    v60 = OUTLINED_FUNCTION_7_16();
    v4(v60);
    v61 = sub_2698548B4();
    v62 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_5(v62))
    {
      v63 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v63);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v64, v65, "Content item didn't include UMC ID");
      OUTLINED_FUNCTION_18_7();
    }

    v67 = v0[5];
    v66 = v0[6];
    v68 = v0[4];

    v69 = OUTLINED_FUNCTION_22_3();
    v13(v69);
    type metadata accessor for AddToWatchListContentResolutionResult();
    v45 = OUTLINED_FUNCTION_38_5();
LABEL_21:
    static AddToWatchListContentResolutionResult.unsupported(forReason:)(v45);
    goto LABEL_24;
  }

  v16 = v0[2] & 0xC000000000000001;
  sub_269750050(0);
  v17 = v0[2];
  if (v16)
  {
    v18 = MEMORY[0x26D646120](0, v17);
  }

  else
  {
    v18 = *(v17 + 32);
  }

  v19 = v18;
  v20 = v0[9];
  v21 = v0[4];
  v22 = OUTLINED_FUNCTION_7_16();
  v4(v22);
  v23 = sub_2698548B4();
  v24 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v24))
  {
    v25 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24(v25);
    OUTLINED_FUNCTION_11_19();
    OUTLINED_FUNCTION_29(v26, v27, v28, v29);
    OUTLINED_FUNCTION_12_1();
  }

  v30 = v0[9];
  v31 = v0[4];
  v32 = v0[5];

  (v13)(v30, v31);
  type metadata accessor for AddToWatchListContentResolutionResult();
  static ContentResolutionResult.success(with:)(v19);

LABEL_24:
  v78 = v0[9];
  v77 = v0[10];
  v80 = v0[7];
  v79 = v0[8];
  v81 = v0[6];

  v82 = OUTLINED_FUNCTION_8_23();

  return v83(v82);
}

id sub_269746B9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddToWatchListIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269746C6C()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_3_25(v5);

  return v7(v6);
}

uint64_t sub_269746D04()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_3_25(v5);

  return v7(v6);
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_269746DE4()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_3_25(v5);

  return v7(v6);
}

id sub_269746ED8(uint64_t a1, uint64_t a2)
{
  v35[3] = &type metadata for ContentResolver;
  v35[4] = &off_287A42478;
  v4 = swift_allocObject();
  v35[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  v34[3] = &type metadata for WatchListServiceImpl;
  v34[4] = &off_287A42000;
  v6 = swift_allocObject();
  v34[0] = v6;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  v33[3] = &type metadata for CoreAnalyticsService;
  v33[4] = &xmmword_287A41610;
  v32[3] = &type metadata for FeatureFlagServiceImpl;
  v32[4] = &off_287A41BD8;
  v8 = type metadata accessor for AddToWatchListIntentHandler();
  v9 = objc_allocWithZone(v8);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v35, &type metadata for ContentResolver);
  v11 = *(off_287A42458 + 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v34, &type metadata for WatchListServiceImpl);
  v16 = *(off_287A41F50 + 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  __swift_mutable_project_boxed_opaque_existential_1(v33, &type metadata for CoreAnalyticsService);
  __swift_mutable_project_boxed_opaque_existential_1(v32, &type metadata for FeatureFlagServiceImpl);
  v31[3] = &type metadata for ContentResolver;
  v31[4] = &off_287A42478;
  v20 = swift_allocObject();
  v31[0] = v20;
  v21 = *(v13 + 1);
  *(v20 + 16) = *v13;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v13 + 4);
  v30[3] = &type metadata for WatchListServiceImpl;
  v30[4] = &off_287A42000;
  v22 = swift_allocObject();
  v30[0] = v22;
  v23 = *(v18 + 1);
  *(v22 + 16) = *v18;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(v18 + 4);
  v29[3] = &type metadata for CoreAnalyticsService;
  v29[4] = &xmmword_287A41610;
  v28[3] = &type metadata for FeatureFlagServiceImpl;
  v28[4] = &off_287A41BD8;
  sub_2696A73F8(v31, v9 + OBJC_IVAR____TtC16SiriVideoIntents27AddToWatchListIntentHandler_contentResolver);
  sub_2696A73F8(v30, v9 + OBJC_IVAR____TtC16SiriVideoIntents27AddToWatchListIntentHandler_watchListService);
  sub_2696A73F8(v29, v9 + OBJC_IVAR____TtC16SiriVideoIntents27AddToWatchListIntentHandler_analyticsService);
  sub_2696A73F8(v28, v9 + OBJC_IVAR____TtC16SiriVideoIntents27AddToWatchListIntentHandler_featureFlagService);
  v27.receiver = v9;
  v27.super_class = v8;
  v24 = objc_msgSendSuper2(&v27, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0(v34);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return v24;
}

uint64_t OUTLINED_FUNCTION_0_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_20()
{
  v2 = v0[26];
  result = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[19];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[13];
  v11 = v0[14];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_25(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_24_9()
{

  return sub_269854884();
}

void OUTLINED_FUNCTION_31_6()
{

  JUMPOUT(0x26D647170);
}

void *sub_2697473A4()
{
  sub_2698538C4();
  v0 = type metadata accessor for BaseDialogProvider();
  v10[3] = v0;
  v10[4] = &off_287A3DBA0;
  v10[0] = swift_allocObject();
  type metadata accessor for AddToWatchListUnsupportedValueStrategy();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v10, v0);
  v3 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v1[10] = v0;
  v1[11] = &off_287A3DBA0;
  v1[7] = v7;
  sub_2696A73F8(v11, (v1 + 2));
  type metadata accessor for LocUtil();
  v8 = swift_allocObject();
  sub_26968E5D4(v11, v8 + 16);
  v1[12] = v8;
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v1;
}

uint64_t sub_2697474F4()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2698532A4();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v7 = sub_2698548D4();
  v1[11] = v7;
  v8 = *(v7 - 8);
  v1[12] = v8;
  v9 = *(v8 + 64) + 15;
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_269747630()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = __swift_project_value_buffer(v3, qword_28033D910);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "AddToWatchListUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  v11 = v0[3];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323FA0, &qword_26985E348);
  v12 = sub_2698536B4();
  v13 = [v12 content];

  if (v13)
  {
    sub_26978701C(v13);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v0[14] = v15;
  v16 = v0[3];
  v17 = sub_2698536C4();
  v18 = [v17 unsupportedReason];

  v19 = AddToWatchListContentUnsupportedReason.init(rawValue:)(v18);
  if (v20)
  {
    goto LABEL_9;
  }

  switch(v19)
  {
    case 6:
      v45 = v0[4];

      v46 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v45[5]);
      sub_269852CF4();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[19] = v47;
      *v47 = v48;
      v47[1] = sub_269747E10;
      v49 = v0[8];
      OUTLINED_FUNCTION_8_24();

      return sub_2696C6B0C(v50, v51);
    case 5:
      v32 = v0[4];

      v33 = *__swift_project_boxed_opaque_existential_1((v32 + 56), *(v32 + 80));
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[17] = v34;
      *v34 = v35;
      v34[1] = sub_269747BEC;
      v36 = v0[9];
      OUTLINED_FUNCTION_8_24();

      return v40(v37, v38, v39, v40, v41, v42, v43, v44);
    case 1:
      v27 = v0[4];
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[15] = v28;
      *v28 = v29;
      v28[1] = sub_269747A2C;
      v30 = v0[10];
      OUTLINED_FUNCTION_10_15();
      OUTLINED_FUNCTION_8_24();

      return sub_2696C640C();
    default:
LABEL_9:
      v21 = v0[4];
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[21] = v22;
      *v22 = v23;
      v22[1] = sub_269747FB4;
      v24 = v0[7];
      OUTLINED_FUNCTION_10_15();
      OUTLINED_FUNCTION_8_24();

      return sub_2696C5ECC();
  }
}

uint64_t sub_269747A2C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v9 + 128) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_269747B44()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  v1 = v0[10];
  OUTLINED_FUNCTION_13_14();
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  OUTLINED_FUNCTION_7_25();
  v5(v3);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_24();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_269747BEC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269747CE8()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  v1 = v0[9];
  OUTLINED_FUNCTION_13_14();
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  OUTLINED_FUNCTION_7_25();
  v5(v3);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_24();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_269747D90()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_6_23();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_24();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_269747E10()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269747F0C()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  v2 = v0[8];
  OUTLINED_FUNCTION_13_14();
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  OUTLINED_FUNCTION_7_25();
  v6(v1);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_24();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_269747FB4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *(v4 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v9 + 176) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2697480CC()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  v1 = v0[7];
  OUTLINED_FUNCTION_13_14();
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_24();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_26974817C()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_6_23();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_24();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2697481FC()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 160);
  OUTLINED_FUNCTION_6_23();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_24();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26974827C()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_6_23();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_24();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2697482FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  OUTLINED_FUNCTION_6_7();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_269748328()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323FA0, &qword_26985E348);
  v2 = sub_2698536B4();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26974839C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  sub_2696A73F8((v1 + 2), v15);
  sub_2696A73F8(v15, v16);
  type metadata accessor for LocUtil();
  v8 = swift_allocObject();
  sub_26968E5D4(v15, v8 + 16);
  v18 = v8;
  sub_269841714();
  sub_269743AD8(v16);
  v9 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_269852CA4();
  v10 = sub_269853234();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
  v11 = sub_2698538F4();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v12 = MEMORY[0x277D5C1D8];
  a1[3] = v11;
  a1[4] = v12;
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_2698530B4();

  sub_269698048(v16, &qword_280323028, qword_26985AD20);
  return sub_269698048(v7, &qword_280323010, &unk_26985B640);
}

uint64_t sub_269748564()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_269724D50(v0 + 56);
  v1 = *(v0 + 96);

  return v0;
}

uint64_t sub_269748594()
{
  sub_269748564();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_2697485EC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_2697474F4();
}

uint64_t sub_269748698(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26974872C;

  return sub_2697482FC(a1);
}

uint64_t sub_26974872C()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_26974881C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AddToWatchListUnsupportedValueStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9E00](a1, a2, v10, a4);
}

uint64_t OUTLINED_FUNCTION_6_23()
{
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
}

void OUTLINED_FUNCTION_7_25()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = *(v0[6] + 8);
}

uint64_t OUTLINED_FUNCTION_13_14()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  return sub_26974839C(v3);
}

uint64_t sub_269748960()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323FA8, &qword_26985E418);
  v1[10] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[11] = v5;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v8 = sub_2698548D4();
  v1[14] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[15] = v9;
  v11 = *(v10 + 64) + 15;
  v1[16] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v13 = sub_2698532A4();
  v1[18] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v1[19] = v14;
  v16 = *(v15 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v17 = sub_269853404();
  v1[29] = v17;
  OUTLINED_FUNCTION_5_12(v17);
  v1[30] = v18;
  v20 = *(v19 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_269748BD8()
{
  v143 = v0;
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[10];
  v5 = v0[8];
  sub_2698536D4();
  v6 = sub_2698533F4();
  v8 = v7;
  v9 = *(v3 + 8);
  v9(v1, v2);
  if (v6 == 0x657449616964656DLL && v8 == 0xEA0000000000736DLL)
  {
  }

  else
  {
    v11 = sub_269855584();

    if ((v11 & 1) == 0)
    {
      v141 = v9;
      if (qword_2803226E0 != -1)
      {
        swift_once();
      }

      v13 = v0[15];
      v12 = v0[16];
      v15 = v0[13];
      v14 = v0[14];
      v17 = v0[11];
      v16 = v0[12];
      v18 = v0[10];
      v19 = v0[8];
      v20 = __swift_project_value_buffer(v14, qword_28033D910);
      (*(v13 + 16))(v12, v20, v14);
      v21 = *(v17 + 16);
      v21(v15, v19, v18);
      v21(v16, v19, v18);
      v22 = sub_2698548B4();
      v23 = sub_269854F24();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = v0[31];
        v135 = v0[15];
        v25 = v0[13];
        v137 = v0[14];
        v139 = v0[16];
        v26 = v0[11];
        v128 = v0[29];
        v129 = v0[12];
        v27 = v0[10];
        v28 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v142 = v133;
        *v28 = 136315394;
        v131 = v23;
        sub_2698536D4();
        v29 = sub_2698533F4();
        v31 = v30;
        v141(v24, v128);
        v32 = *(v26 + 8);
        v32(v25, v27);
        v33 = sub_26974F520(v29, v31, &v142);

        *(v28 + 4) = v33;
        *(v28 + 12) = 2048;
        v34 = sub_2698536C4();
        v35 = [v34 unsupportedReason];

        v32(v129, v27);
        *(v28 + 14) = v35;
        _os_log_impl(&dword_269684000, v22, v131, "unexpected makeUnsupportedValueOutput called with parameterName=%s, unsupportedReason=%ld", v28, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v133);
        MEMORY[0x26D647170](v133, -1, -1);
        MEMORY[0x26D647170](v28, -1, -1);

        (*(v135 + 8))(v139, v137);
      }

      else
      {
        v47 = v0[15];
        v48 = v0[16];
        v50 = v0[13];
        v49 = v0[14];
        v51 = v0[10];
        v52 = *(v0[11] + 8);
        v52(v0[12], v51);

        v52(v50, v51);
        (*(v47 + 8))(v48, v49);
      }

      sub_2696BAE9C();
      swift_allocError();
      *(v53 + 8) = 0;
      *(v53 + 16) = 0;
      *v53 = 10;
      *(v53 + 24) = 3;
      swift_willThrow();
      v55 = v0[32];
      v54 = v0[33];
      v56 = v0[31];
      v58 = v0[27];
      v57 = v0[28];
      v60 = v0[25];
      v59 = v0[26];
      v62 = v0[23];
      v61 = v0[24];
      v63 = v0[22];
      v130 = v0[21];
      v132 = v0[20];
      v134 = v0[17];
      v136 = v0[16];
      v138 = v0[13];
      v140 = v0[12];

      v64 = v0[1];
      OUTLINED_FUNCTION_69();

      __asm { BRAA            X1, X16 }
    }
  }

  v36 = v0[10];
  v37 = v0[8];
  v38 = sub_2698536C4();
  v39 = [v38 unsupportedReason];

  switch(v39)
  {
    case 1uLL:
      v0[40] = OUTLINED_FUNCTION_31_7();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[41] = v40;
      *v40 = v41;
      v40[1] = sub_269749AE4;
      v42 = v0[25];
      OUTLINED_FUNCTION_9_16();
      OUTLINED_FUNCTION_69();

      result = sub_2696BC78C(v43, v44);
      break;
    case 2uLL:
      v0[49] = OUTLINED_FUNCTION_31_7();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[50] = v100;
      *v100 = v101;
      v100[1] = sub_26974A2D4;
      v102 = v0[22];
      OUTLINED_FUNCTION_9_16();
      OUTLINED_FUNCTION_69();

      result = sub_2696BCBD0(v103, v104);
      break;
    case 3uLL:
      v73 = v0[10];
      v74 = v0[8];
      v75 = sub_2698536B4();
      v76 = sub_26974B544(v75);
      if (v76)
      {
        v77 = v76;
        if (sub_26975004C(v76))
        {
          sub_269750050(0);
          if ((v77 & 0xC000000000000001) != 0)
          {
            v78 = MEMORY[0x26D646120](0, v77);
          }

          else
          {
            v78 = *(v77 + 32);
          }

          v79 = v78;

          [v79 type];
        }

        else
        {
        }
      }

      v119 = v0[9];
      v118 = v0[10];
      v120 = v0[8];
      v0[52] = sub_2698536A4();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[53] = v121;
      *v121 = v122;
      v121[1] = sub_26974A564;
      v123 = v0[21];
      OUTLINED_FUNCTION_69();

      result = sub_2696BCCE4(v124, v125, v126);
      break;
    case 4uLL:
      v0[46] = OUTLINED_FUNCTION_31_7();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[47] = v80;
      *v80 = v81;
      v80[1] = sub_26974A03C;
      v82 = v0[23];
      OUTLINED_FUNCTION_9_16();
      OUTLINED_FUNCTION_69();

      result = sub_2696BCABC(v83, v84);
      break;
    case 5uLL:
      v0[43] = OUTLINED_FUNCTION_31_7();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[44] = v67;
      *v67 = v68;
      v67[1] = sub_269749D98;
      v69 = v0[24];
      OUTLINED_FUNCTION_9_16();
      OUTLINED_FUNCTION_69();

      result = sub_2696BC9A8(v70, v71);
      break;
    case 6uLL:
      v0[37] = OUTLINED_FUNCTION_31_7();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[38] = v106;
      *v106 = v107;
      v106[1] = sub_269749824;
      v108 = v0[26];
      OUTLINED_FUNCTION_9_16();
      OUTLINED_FUNCTION_69();

      result = sub_2696BC678(v109, v110);
      break;
    case 7uLL:
      v0[34] = OUTLINED_FUNCTION_31_7();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[35] = v112;
      *v112 = v113;
      v112[1] = sub_269749568;
      v114 = v0[27];
      OUTLINED_FUNCTION_9_16();
      OUTLINED_FUNCTION_69();

      result = sub_2696BC564(v115, v116);
      break;
    default:
      v86 = v0[32];
      v87 = v0[29];
      v89 = v0[9];
      v88 = v0[10];
      v90 = v0[8];
      v0[55] = sub_2698536A4();
      sub_2698536D4();
      sub_2698533F4();
      v0[56] = v91;
      v9(v86, v87);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[57] = v92;
      *v92 = v93;
      v92[1] = sub_26974A818;
      v94 = v0[20];
      OUTLINED_FUNCTION_69();

      result = sub_2696BC148(v95, v96, v97, v98);
      break;
  }

  return result;
}

uint64_t sub_269749568()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v3 + 288) = v0;

  if (!v0)
  {
    v9 = *(v3 + 272);
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_269749668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_27_8();
  v29 = v28[28];
  v53 = v28[27];
  v54 = v30;
  v55 = v28[26];
  v56 = v28[25];
  v57 = v28[24];
  v58 = v28[23];
  v59 = v28[22];
  v31 = v28[19];
  v60 = v28[21];
  v61 = v28[20];
  v33 = v28[17];
  v32 = v28[18];
  OUTLINED_FUNCTION_2_19();
  v34 = v28[9];
  v35 = v28[7];
  v36 = OUTLINED_FUNCTION_26_9();
  v37(v36);
  v38 = v34[10];
  v39 = v34[11];
  OUTLINED_FUNCTION_18_12(v34 + 7);
  sub_269852CA4();
  v40 = OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_3_26(v40);
  v41.n128_f64[0] = OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_36_5(v41);
  v42 = MEMORY[0x277D5C1D8];
  v35[3] = v43;
  v35[4] = v42;
  __swift_allocate_boxed_opaque_existential_1(v35);
  OUTLINED_FUNCTION_1_21();
  sub_269698048(v38, &qword_280323028, qword_26985AD20);
  sub_269698048(v33, &qword_280323010, &unk_26985B640);
  (*(v31 + 8))(v29, v32);

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_11_14();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, v38, 0, a11, v53, a13, a14, v54, v55, v56, v57, v58, v59, v60, v61, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_269749824()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 304);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v3 + 312) = v0;

  if (!v0)
  {
    v9 = *(v3 + 296);
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_269749924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_27_8();
  v29 = v28[28];
  v52 = v28[26];
  v53 = v30;
  v54 = v28[27];
  v55 = v28[25];
  v56 = v28[24];
  v57 = v28[23];
  v58 = v28[22];
  v59 = v28[21];
  v60 = v28[20];
  v32 = v28[18];
  v31 = v28[19];
  v33 = v28[17];
  v61 = v28[16];
  v62 = v28[13];
  v63 = v28[12];
  v34 = v28[9];
  v35 = v28[7];
  v36 = OUTLINED_FUNCTION_26_9();
  v37(v36);
  v38 = v34[10];
  v39 = v34[11];
  OUTLINED_FUNCTION_18_12(v34 + 7);
  sub_269852CA4();
  v40 = OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_3_26(v40);
  v41.n128_f64[0] = OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_36_5(v41);
  OUTLINED_FUNCTION_32_4(v42, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_1_21();
  sub_269698048(v38, &qword_280323028, qword_26985AD20);
  sub_269698048(v33, &qword_280323010, &unk_26985B640);
  (*(v31 + 8))(v29, v32);

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_11_14();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, v38, 0, a11, v52, a13, a14, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, a26, a27, a28);
}

uint64_t sub_269749AE4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v3 + 336) = v0;

  if (!v0)
  {
    v9 = *(v3 + 320);
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_269749BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_27_8();
  v29 = v28[28];
  v53 = v30;
  v54 = v28[27];
  v52 = v28[25];
  v55 = v28[26];
  v56 = v28[24];
  v57 = v28[23];
  v58 = v28[22];
  v31 = v28[19];
  v59 = v28[21];
  v60 = v28[20];
  v33 = v28[17];
  v32 = v28[18];
  OUTLINED_FUNCTION_2_19();
  v34 = v28[9];
  v35 = v28[7];
  v36 = OUTLINED_FUNCTION_26_9();
  v37(v36);
  v38 = v34[10];
  v39 = v34[11];
  OUTLINED_FUNCTION_18_12(v34 + 7);
  sub_269852CA4();
  v40 = OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_3_26(v40);
  v41.n128_f64[0] = OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_36_5(v41);
  OUTLINED_FUNCTION_32_4(v42, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_1_21();
  sub_269698048(v38, &qword_280323028, qword_26985AD20);
  sub_269698048(v33, &qword_280323010, &unk_26985B640);
  (*(v31 + 8))(v29, v32);

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_11_14();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, v38, 0, a11, v52, a13, a14, v53, v54, v55, v56, v57, v58, v59, v60, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_269749D98()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v3 + 360) = v0;

  if (!v0)
  {
    v9 = *(v3 + 344);
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_269749E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_11_21();
  v29 = v28[28];
  v54 = v30;
  v55 = v28[27];
  v56 = v28[26];
  v57 = v28[25];
  v53 = v28[24];
  v58 = v28[23];
  v59 = v28[22];
  v31 = v28[19];
  v60 = v28[21];
  v61 = v28[20];
  v33 = v28[17];
  v32 = v28[18];
  OUTLINED_FUNCTION_2_19();
  v34 = v28[9];
  v35 = OUTLINED_FUNCTION_10_16();
  v36(v35);
  v37 = v34[10];
  v38 = v34[11];
  OUTLINED_FUNCTION_18_12(v34 + 7);
  sub_269852CA4();
  v39 = OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_3_26(v39);
  v40.n128_f64[0] = OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_36_5(v40);
  OUTLINED_FUNCTION_32_4(v41, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_1_21();
  sub_269698048(v37, &qword_280323028, qword_26985AD20);
  sub_269698048(v33, &qword_280323010, &unk_26985B640);
  v42 = OUTLINED_FUNCTION_28_7();
  v43(v42);

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_11_14();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, v37, 0, a11, a12, a13, v53, v54, v55, v56, v57, v58, v59, v60, v61, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_26974A03C()
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

  if (!v0)
  {
    v9 = *(v3 + 368);
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26974A13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_11_21();
  OUTLINED_FUNCTION_34_4();
  v52 = v29;
  v53 = v28[23];
  v54 = v28[24];
  v55 = v28[22];
  v30 = v28[19];
  v56 = v28[21];
  v57 = v28[20];
  v32 = v28[17];
  v31 = v28[18];
  OUTLINED_FUNCTION_2_19();
  v33 = v28[9];
  v34 = OUTLINED_FUNCTION_10_16();
  v35(v34);
  v37 = v33[10];
  v36 = v33[11];
  OUTLINED_FUNCTION_18_12(v33 + 7);
  sub_269852CA4();
  v38 = OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_3_26(v38);
  v39.n128_f64[0] = OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_33_4(v39);
  OUTLINED_FUNCTION_32_4(v40, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_1_21();
  sub_269698048(v36, &qword_280323028, qword_26985AD20);
  sub_269698048(v32, &qword_280323010, &unk_26985B640);
  v41 = OUTLINED_FUNCTION_28_7();
  v42(v41);

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_11_14();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, v36, 0, a11, a12, a13, v52, v53, a16, a17, a18, v54, v55, v56, v57, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_26974A2D4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 400);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v3 + 408) = v0;

  if (!v0)
  {
    v9 = *(v3 + 392);
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26974A3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_11_21();
  OUTLINED_FUNCTION_34_4();
  v54 = v28[24];
  v55 = v28[23];
  v52 = v29;
  v53 = v28[22];
  v30 = v28[19];
  v56 = v28[21];
  v57 = v28[20];
  v32 = v28[17];
  v31 = v28[18];
  OUTLINED_FUNCTION_2_19();
  v33 = v28[9];
  v34 = OUTLINED_FUNCTION_10_16();
  v35(v34);
  v37 = v33[10];
  v36 = v33[11];
  OUTLINED_FUNCTION_25_5(v33 + 7);
  v38 = OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_3_26(v38);
  v39.n128_f64[0] = OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_33_4(v39);
  OUTLINED_FUNCTION_32_4(v40, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_1_21();
  sub_269698048(v36, &qword_280323028, qword_26985AD20);
  sub_269698048(v32, &qword_280323010, &unk_26985B640);
  v41 = OUTLINED_FUNCTION_28_7();
  v42(v41);

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_11_14();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, v36, 0, a11, a12, a13, v52, v53, a16, a17, a18, v54, v55, v56, v57, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_26974A564()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v3 + 432) = v0;

  if (!v0)
  {
    v9 = *(v3 + 416);
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26974A664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_11_21();
  v29 = v28[28];
  v52 = v30;
  v53 = v28[27];
  v56 = v28[25];
  v57 = v28[24];
  v58 = v28[23];
  v54 = v28[26];
  v55 = v28[21];
  v31 = v28[19];
  v59 = v28[22];
  v60 = v28[20];
  v33 = v28[17];
  v32 = v28[18];
  OUTLINED_FUNCTION_2_19();
  v34 = v28[9];
  v35 = v28[7];
  v36 = OUTLINED_FUNCTION_35_5();
  v37(v36);
  v39 = v34[10];
  v38 = v34[11];
  OUTLINED_FUNCTION_25_5(v34 + 7);
  v40 = OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_3_26(v40);
  v41.n128_f64[0] = OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_33_4(v41);
  OUTLINED_FUNCTION_32_4(v42, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_30_7();
  sub_2698530B4();
  sub_269698048(v38, &qword_280323028, qword_26985AD20);
  sub_269698048(v33, &qword_280323010, &unk_26985B640);
  (*(v31 + 8))(v29, v32);

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_11_14();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, v38, 0, a11, a12, a13, v52, v53, v54, v55, v56, v57, v58, v59, v60, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_26974A818()
{
  v2 = *v1;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v5 = v2[57];
  *v4 = *v1;
  *(v3 + 464) = v0;

  v6 = v2[56];
  v7 = v2[55];
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26974A970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_11_21();
  v29 = v28[28];
  v53 = v30;
  v54 = v28[27];
  v55 = v28[26];
  v56 = v28[25];
  v58 = v28[24];
  v59 = v28[23];
  v60 = v28[22];
  v61 = v28[21];
  v31 = v28[19];
  v57 = v28[20];
  v33 = v28[17];
  v32 = v28[18];
  OUTLINED_FUNCTION_2_19();
  v34 = v28[9];
  v35 = v28[7];
  v36 = OUTLINED_FUNCTION_35_5();
  v37(v36);
  v39 = v34[10];
  v38 = v34[11];
  OUTLINED_FUNCTION_25_5(v34 + 7);
  v40 = OUTLINED_FUNCTION_29_7();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v40);
  sub_2698538F4();
  v41.n128_f64[0] = OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_33_4(v41);
  v42 = MEMORY[0x277D5C1D8];
  v35[3] = v43;
  v35[4] = v42;
  __swift_allocate_boxed_opaque_existential_1(v35);
  OUTLINED_FUNCTION_30_7();
  sub_2698530B4();
  sub_269698048(v38, &qword_280323028, qword_26985AD20);
  sub_269698048(v33, &qword_280323010, &unk_26985B640);
  (*(v31 + 8))(v29, v32);

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_11_14();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, v38, 0, a11, a12, a13, v53, v54, v55, v56, v57, v58, v59, v60, v61, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_26974AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_14();
  OUTLINED_FUNCTION_21_11();
  v19 = *(v18 + 272);

  v20 = *(v18 + 288);
  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_112();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_26974AC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_14();
  OUTLINED_FUNCTION_21_11();
  v19 = *(v18 + 296);

  v20 = *(v18 + 312);
  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_112();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_26974AD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_14();
  OUTLINED_FUNCTION_21_11();
  v19 = *(v18 + 320);

  v20 = *(v18 + 336);
  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_112();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_26974ADE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_14();
  OUTLINED_FUNCTION_21_11();
  v19 = *(v18 + 344);

  v20 = *(v18 + 360);
  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_112();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_26974AEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_14();
  OUTLINED_FUNCTION_21_11();
  v19 = *(v18 + 368);

  v20 = *(v18 + 384);
  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_112();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_26974AFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_14();
  OUTLINED_FUNCTION_21_11();
  v19 = *(v18 + 392);

  v20 = *(v18 + 408);
  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_112();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_26974B084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_14();
  OUTLINED_FUNCTION_21_11();
  v19 = *(v18 + 416);

  v20 = *(v18 + 432);
  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_112();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_26974B164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_14();
  OUTLINED_FUNCTION_21_11();
  v19 = *(v18 + 464);
  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_112();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_26974B23C(uint64_t a1)
{
  *(v1 + 16) = a1;
  OUTLINED_FUNCTION_6_7();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26974B268()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323FA8, &qword_26985E418);
  v2 = sub_2698536B4();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26974B2DC()
{
  sub_26974B5AC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_26974B340()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269708804;

  return sub_269748960();
}

uint64_t sub_26974B3EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26974872C;

  return sub_26974B23C(a1);
}

uint64_t sub_26974B480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for INPlayMediaUnsupportedValueStrategy();
  *v9 = v4;
  v9[1] = sub_269723AE4;

  return MEMORY[0x2821B9E00](a1, a2, v10, a4);
}

uint64_t sub_26974B544(void *a1)
{
  v2 = [a1 mediaItems];

  if (!v2)
  {
    return 0;
  }

  sub_2696E55AC();
  v3 = sub_269854CB4();

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_31()
{
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  v13 = v0[21];
  v14 = v0[20];
  v15 = v0[17];
  v16 = v0[16];
  v17 = v0[13];
  v18 = v0[12];
}

uint64_t OUTLINED_FUNCTION_1_21()
{

  return sub_2698530B4();
}

void OUTLINED_FUNCTION_2_19()
{
  v2 = v0[12];
  v3 = v0[13];
  *(v1 - 96) = v0[16];
  *(v1 - 88) = v3;
  *(v1 - 80) = v2;
}

uint64_t OUTLINED_FUNCTION_3_26(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_2698538F4();
}

double OUTLINED_FUNCTION_6_24()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_26()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_16()
{
  v3 = *(v1 + 56);
  v4 = *(v0 + 32);
  return v2;
}

void OUTLINED_FUNCTION_11_21()
{
  v2 = v0[33];
  v3 = v0[32];
  v1 = v0[31];
}

uint64_t OUTLINED_FUNCTION_25_5(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_269852CA4();
}

void OUTLINED_FUNCTION_27_8()
{
  v2 = v0[33];
  v3 = v0[32];
  v1 = v0[31];
}

uint64_t OUTLINED_FUNCTION_29_7()
{

  return sub_269853234();
}

uint64_t OUTLINED_FUNCTION_31_7()
{
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  return sub_2698536A4();
}

uint64_t *OUTLINED_FUNCTION_32_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1(v2);
}

void OUTLINED_FUNCTION_34_4()
{
  v1 = v0[27];
  v2 = v0[26];
  v3 = v0[25];
}

uint64_t sub_26974B874(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  type metadata accessor for ThirdPartyAppDisambiguationStrategy();
  v12 = sub_269709D34();
  sub_269852C84();
  if (qword_280322680 != -1)
  {
    swift_once();
  }

  v5 = qword_28033D8B0;
  if (qword_2803226B0 != -1)
  {
    swift_once();
  }

  v6 = qword_28033D8E0;
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  v7 = sub_2697B9550();
  v15 = &type metadata for LSApplicationRecordProvider;
  v16 = &xmmword_287A41430;
  v18 = &type metadata for AppIntentsMetadataProvider;
  v19 = &off_287A413C0;
  v17 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v8 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = swift_allocObject();
  *(v9 + 96) = type metadata accessor for RoutingAppPredictor();
  *(v9 + 104) = &off_287A445F8;
  *(v9 + 72) = v5;
  *(v9 + 136) = type metadata accessor for SiriSignalsRecorder();
  *(v9 + 144) = &off_287A44CA0;
  *(v9 + 112) = v6;
  *(v9 + 192) = &type metadata for ThirdPartyIntentSupportProvider;
  *(v9 + 200) = &off_287A47040;
  v10 = swift_allocObject();
  *(v9 + 168) = v10;
  sub_2696B6ED8(v14, v10 + 16);
  *(v9 + 232) = &type metadata for RunningBoardForegroundAppProvider;
  *(v9 + 240) = &off_287A41CC0;
  *(v9 + 272) = &type metadata for CoreAnalyticsService;
  *(v9 + 280) = &xmmword_287A41610;
  *(v9 + 312) = &type metadata for LSApplicationRecordProvider;
  *(v9 + 320) = &xmmword_287A41430;
  *(v9 + 352) = &type metadata for AppIntentsMetadataProvider;
  *(v9 + 360) = &off_287A413C0;
  *(v9 + 328) = v8;
  *(v9 + 392) = &type metadata for FeatureFlagServiceImpl;
  *(v9 + 400) = &off_287A41BD8;
  *(v9 + 408) = 0;
  *(v9 + 416) = 0;
  *(v9 + 424) = 0;
  *(v9 + 16) = a1;
  *(v9 + 24) = v12;
  sub_2696AE06C(&v20, v9 + 32);
  *(v9 + 152) = v7;
  *(v9 + 160) = &off_287A41E38;

  sub_2696B6F40(v14);
  return v9;
}

uint64_t sub_26974BAE4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_26974B874(a3, &qword_280323FB0, &qword_26985E420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323FB0, &qword_26985E420);
  sub_26974BC18();
  sub_269693204(&qword_280323FC0, &qword_280323FB0, &qword_26985E420);
  sub_269852A24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323FC8, &qword_26985E428);
  sub_269693204(&qword_280323FD0, &qword_280323FC8, &qword_26985E428);
  v3 = sub_269852B44();

  return v3;
}

unint64_t sub_26974BC18()
{
  result = qword_280323FB8;
  if (!qword_280323FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280323FB8);
  }

  return result;
}

uint64_t sub_26974BC5C()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323FE0, &unk_26985E510);
  v1[10] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[11] = v5;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v8 = sub_2698548D4();
  v1[14] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[15] = v9;
  v11 = *(v10 + 64) + 15;
  v1[16] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v13 = sub_2698532A4();
  v1[18] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v1[19] = v14;
  v16 = *(v15 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v17 = sub_269853404();
  v1[29] = v17;
  OUTLINED_FUNCTION_5_12(v17);
  v1[30] = v18;
  v20 = *(v19 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_26974BED4()
{
  v143 = v0;
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[10];
  v5 = v0[8];
  sub_2698536D4();
  v6 = sub_2698533F4();
  v8 = v7;
  v9 = *(v3 + 8);
  v9(v1, v2);
  if (v6 == 0x657449616964656DLL && v8 == 0xEA0000000000736DLL)
  {
  }

  else
  {
    v11 = sub_269855584();

    if ((v11 & 1) == 0)
    {
      v141 = v9;
      if (qword_2803226E0 != -1)
      {
        swift_once();
      }

      v13 = v0[15];
      v12 = v0[16];
      v15 = v0[13];
      v14 = v0[14];
      v17 = v0[11];
      v16 = v0[12];
      v18 = v0[10];
      v19 = v0[8];
      v20 = __swift_project_value_buffer(v14, qword_28033D910);
      (*(v13 + 16))(v12, v20, v14);
      v21 = *(v17 + 16);
      v21(v15, v19, v18);
      v21(v16, v19, v18);
      v22 = sub_2698548B4();
      v23 = sub_269854F24();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = v0[31];
        v135 = v0[15];
        v25 = v0[13];
        v137 = v0[14];
        v139 = v0[16];
        v26 = v0[11];
        v128 = v0[29];
        v129 = v0[12];
        v27 = v0[10];
        v28 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v142 = v133;
        *v28 = 136315394;
        v131 = v23;
        sub_2698536D4();
        v29 = sub_2698533F4();
        v31 = v30;
        v141(v24, v128);
        v32 = *(v26 + 8);
        v32(v25, v27);
        v33 = sub_26974F520(v29, v31, &v142);

        *(v28 + 4) = v33;
        *(v28 + 12) = 2048;
        v34 = sub_2698536C4();
        v35 = [v34 unsupportedReason];

        v32(v129, v27);
        *(v28 + 14) = v35;
        _os_log_impl(&dword_269684000, v22, v131, "unexpected makeUnsupportedValueOutput called with parameterName=%s, unsupportedReason=%ld", v28, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v133);
        MEMORY[0x26D647170](v133, -1, -1);
        MEMORY[0x26D647170](v28, -1, -1);

        (*(v135 + 8))(v139, v137);
      }

      else
      {
        v47 = v0[15];
        v48 = v0[16];
        v50 = v0[13];
        v49 = v0[14];
        v51 = v0[10];
        v52 = *(v0[11] + 8);
        v52(v0[12], v51);

        v52(v50, v51);
        (*(v47 + 8))(v48, v49);
      }

      sub_2696BAE9C();
      swift_allocError();
      *(v53 + 8) = 0;
      *(v53 + 16) = 0;
      *v53 = 10;
      *(v53 + 24) = 3;
      swift_willThrow();
      v55 = v0[32];
      v54 = v0[33];
      v56 = v0[31];
      v58 = v0[27];
      v57 = v0[28];
      v60 = v0[25];
      v59 = v0[26];
      v62 = v0[23];
      v61 = v0[24];
      v63 = v0[22];
      v130 = v0[21];
      v132 = v0[20];
      v134 = v0[17];
      v136 = v0[16];
      v138 = v0[13];
      v140 = v0[12];

      v64 = v0[1];
      OUTLINED_FUNCTION_69();

      __asm { BRAA            X1, X16 }
    }
  }

  v36 = v0[10];
  v37 = v0[8];
  v38 = sub_2698536C4();
  v39 = [v38 unsupportedReason];

  switch(v39)
  {
    case 1uLL:
      v0[40] = OUTLINED_FUNCTION_31_7();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[41] = v40;
      *v40 = v41;
      v40[1] = sub_269749AE4;
      v42 = v0[25];
      OUTLINED_FUNCTION_9_16();
      OUTLINED_FUNCTION_69();

      result = sub_2696BC78C(v43, v44);
      break;
    case 2uLL:
      v0[49] = OUTLINED_FUNCTION_31_7();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[50] = v100;
      *v100 = v101;
      v100[1] = sub_26974A2D4;
      v102 = v0[22];
      OUTLINED_FUNCTION_9_16();
      OUTLINED_FUNCTION_69();

      result = sub_2696BCBD0(v103, v104);
      break;
    case 3uLL:
      v73 = v0[10];
      v74 = v0[8];
      v75 = sub_2698536B4();
      v76 = sub_26974B544(v75);
      if (v76)
      {
        v77 = v76;
        if (sub_26975004C(v76))
        {
          sub_269750050(0);
          if ((v77 & 0xC000000000000001) != 0)
          {
            v78 = MEMORY[0x26D646120](0, v77);
          }

          else
          {
            v78 = *(v77 + 32);
          }

          v79 = v78;

          [v79 type];
        }

        else
        {
        }
      }

      v119 = v0[9];
      v118 = v0[10];
      v120 = v0[8];
      v0[52] = sub_2698536A4();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[53] = v121;
      *v121 = v122;
      v121[1] = sub_26974A564;
      v123 = v0[21];
      OUTLINED_FUNCTION_69();

      result = sub_2696BCCE4(v124, v125, v126);
      break;
    case 4uLL:
      v0[46] = OUTLINED_FUNCTION_31_7();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[47] = v80;
      *v80 = v81;
      v80[1] = sub_26974A03C;
      v82 = v0[23];
      OUTLINED_FUNCTION_9_16();
      OUTLINED_FUNCTION_69();

      result = sub_2696BCABC(v83, v84);
      break;
    case 5uLL:
      v0[43] = OUTLINED_FUNCTION_31_7();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[44] = v67;
      *v67 = v68;
      v67[1] = sub_269749D98;
      v69 = v0[24];
      OUTLINED_FUNCTION_9_16();
      OUTLINED_FUNCTION_69();

      result = sub_2696BC9A8(v70, v71);
      break;
    case 6uLL:
      v0[37] = OUTLINED_FUNCTION_31_7();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[38] = v106;
      *v106 = v107;
      v106[1] = sub_269749824;
      v108 = v0[26];
      OUTLINED_FUNCTION_9_16();
      OUTLINED_FUNCTION_69();

      result = sub_2696BC678(v109, v110);
      break;
    case 7uLL:
      v0[34] = OUTLINED_FUNCTION_31_7();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[35] = v112;
      *v112 = v113;
      v112[1] = sub_269749568;
      v114 = v0[27];
      OUTLINED_FUNCTION_9_16();
      OUTLINED_FUNCTION_69();

      result = sub_2696BC564(v115, v116);
      break;
    default:
      v86 = v0[32];
      v87 = v0[29];
      v89 = v0[9];
      v88 = v0[10];
      v90 = v0[8];
      v0[55] = sub_2698536A4();
      sub_2698536D4();
      sub_2698533F4();
      v0[56] = v91;
      v9(v86, v87);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[57] = v92;
      *v92 = v93;
      v92[1] = sub_26974A818;
      v94 = v0[20];
      OUTLINED_FUNCTION_69();

      result = sub_2696BC148(v95, v96, v97, v98);
      break;
  }

  return result;
}

uint64_t sub_26974C864(uint64_t a1)
{
  *(v1 + 16) = a1;
  OUTLINED_FUNCTION_6_7();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26974C890()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323FE0, &unk_26985E510);
  v2 = sub_2698536B4();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26974C928()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269708804;

  return sub_26974BC5C();
}

uint64_t sub_26974C9D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26974872C;

  return sub_26974C864(a1);
}

uint64_t sub_26974CA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for INSearchForMediaUnsupportedValueStrategy();
  *v9 = v4;
  v9[1] = sub_269723AE4;

  return MEMORY[0x2821B9E00](a1, a2, v10, a4);
}

uint64_t sub_26974CB2C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_26974B860(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323FD8, &unk_26985E430);
  sub_26974BC18();
  sub_269693204(&qword_280323FE8, &qword_280323FD8, &unk_26985E430);
  sub_269852A24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323FC8, &qword_26985E428);
  sub_269693204(&qword_280323FD0, &qword_280323FC8, &qword_26985E428);
  v3 = sub_269852B44();

  return v3;
}

uint64_t sub_26974CC58(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_269855324();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_26974CC7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_269814FB4(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v11;
    do
    {
      v9 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC0, &qword_269858BE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC8, &qword_269858BE8);
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_269814FB4(v6 > 1, v7 + 1, 1);
        v5 = v10;
      }

      *(v11 + 16) = v7 + 1;
      *(v11 + 16 * v7 + 32) = v5;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26974CDB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v21 = MEMORY[0x277D84F90];
    sub_269815070(0, v1, 0);
    v4 = a1 + 32;
    v2 = v21;
    do
    {
      sub_2696A73F8(v4, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324008, &unk_26985E580);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324010, &qword_2698679E0);
      swift_dynamicCast();
      v21 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_269815070((v5 > 1), v6 + 1, 1);
      }

      v7 = v19;
      v8 = v20;
      __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      OUTLINED_FUNCTION_3_20();
      v10 = *(v9 + 64);
      MEMORY[0x28223BE20](v11);
      OUTLINED_FUNCTION_3_1();
      v14 = v13 - v12;
      (*(v15 + 16))(v13 - v12);
      sub_26980B1E4(v6, v14, &v21, v7, v8);
      __swift_destroy_boxed_opaque_existential_0(v18);
      v2 = v21;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_26974CF78(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_269855324();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2698152B4(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v9;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D646120](v3, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v3 + 32);
        }

        type metadata accessor for LiveService();
        swift_dynamicCast();
        v9 = v4;
        v7 = *(v4 + 16);
        v6 = *(v4 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2698152B4(v6 > 1, v7 + 1, 1);
          v4 = v9;
        }

        ++v3;
        *(v4 + 16) = v7 + 1;
        sub_269694FFC(&v8, (v4 + 32 * v7 + 32));
      }

      while (v2 != v3);
    }
  }
}

uint64_t sub_26974D0C0(uint64_t a1)
{
  v2 = type metadata accessor for StaticSignal();
  OUTLINED_FUNCTION_3_20();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v22 = MEMORY[0x277D84F90];
    sub_269815070(0, v11, 0);
    v12 = v22;
    v13 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_26974FF30(v13, v10);
      v22 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_269815070((v15 > 1), v16 + 1, 1);
        v12 = v22;
      }

      v20 = v2;
      v21 = sub_26974FF94();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      sub_26974FF30(v10, boxed_opaque_existential_1);
      *(v12 + 16) = v16 + 1;
      sub_26968E5D4(&v19, v12 + 40 * v16 + 32);
      sub_26974FFEC(v10);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

id PlayLiveServiceIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

ValueMetadata *PlayLiveServiceIntentHandler.init()()
{
  v11 = &type metadata for CoreAnalyticsService;
  v12 = &xmmword_287A41610;
  v13[3] = &type metadata for UTSNetworkProvider;
  v13[4] = &off_287A43DC0;
  v13[0] = swift_allocObject();
  sub_2697D24B0(&v10, (v13[0] + 16));
  v13[8] = &type metadata for CoreAnalyticsService;
  v13[9] = &xmmword_287A41610;
  v11 = &type metadata for UTSProvider;
  v12 = &off_287A43FA8;
  *&v10 = swift_allocObject();
  sub_269728D78(v13, v10 + 16);
  type metadata accessor for LiveServiceResolver();
  v0 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v10, &type metadata for UTSProvider);
  OUTLINED_FUNCTION_3_20();
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = (v5 - v4);
  (*(v7 + 16))(v5 - v4);
  v0[5] = &type metadata for UTSProvider;
  v0[6] = &off_287A43FA8;
  v8 = swift_allocObject();
  v0[2] = v8;
  memcpy((v8 + 16), v6, 0x50uLL);
  __swift_destroy_boxed_opaque_existential_0(&v10);
  sub_269728DD4(v13);
  sub_26974FBEC(v0);
  OUTLINED_FUNCTION_11_22();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return &type metadata for UTSProvider;
}

uint64_t PlayLiveServiceIntentHandler.resolveLiveService(for:)()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2698548D4();
  v1[5] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[6] = v4;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26974D520()
{
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = __swift_project_value_buffer(v2, qword_28033D928);
  *(v0 + 80) = v4;
  v5 = *(v3 + 16);
  *(v0 + 88) = v5;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v7))
  {
    v8 = OUTLINED_FUNCTION_16_2();
    *v8 = 0;
    _os_log_impl(&dword_269684000, v6, v7, "Resolve Step for PlayLiveServiceIntent", v8, 2u);
    OUTLINED_FUNCTION_10();
  }

  v9 = *(v0 + 72);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v0 + 24);

  v13 = *(v11 + 8);
  *(v0 + 104) = v13;
  v13(v9, v10);
  v14 = [v12 isRemoteExecution];
  *(v0 + 112) = sub_269694CBC();
  v15 = sub_269855034();
  v16 = v15;
  if (v14)
  {
    v17 = sub_269855064();

    if (v17)
    {
      v18 = *(v0 + 24);
      __swift_project_boxed_opaque_existential_1((*(v0 + 32) + OBJC_IVAR____TtC16SiriVideoIntents28PlayLiveServiceIntentHandler_tvProfileSelector), *(*(v0 + 32) + OBJC_IVAR____TtC16SiriVideoIntents28PlayLiveServiceIntentHandler_tvProfileSelector + 24));
      sub_26974FAB0(v18, &selRef_crossDeviceRequestInitiator);
      sub_2697B8974();
    }
  }

  else
  {
  }

  v19 = [*(v0 + 24) liveService];
  if (v19)
  {
  }

  else
  {
    sub_26974FAB0(*(v0 + 24), &selRef_serviceNameSearch);
    if (!v20)
    {
LABEL_22:
      type metadata accessor for PlayLiveServiceLiveServiceResolutionResult();
      static PlayLiveServiceLiveServiceResolutionResult.unsupported(forReason:)(2);
      goto LABEL_23;
    }
  }

  v21 = [*(v0 + 24) liveService];
  if (v21)
  {
    v22 = v21;
    type metadata accessor for PlayLiveServiceLiveServiceResolutionResult();
    static LiveServiceResolutionResult.success(with:)(v22);

LABEL_23:
    v39 = *(v0 + 64);
    v38 = *(v0 + 72);
    v40 = *(v0 + 56);

    v41 = OUTLINED_FUNCTION_8_23();

    return v42(v41);
  }

  v23 = sub_26974FAB0(*(v0 + 24), &selRef_serviceNameSearch);
  *(v0 + 120) = v24;
  if (!v24)
  {
    v5(*(v0 + 56), v4, *(v0 + 40));
    v30 = sub_2698548B4();
    v31 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_4(v31))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_31_0(&dword_269684000, v32, v33, "Intent is missing the required live service name. Returning failure.");
      OUTLINED_FUNCTION_10();
    }

    v35 = *(v0 + 48);
    v34 = *(v0 + 56);
    v36 = *(v0 + 40);

    v37 = OUTLINED_FUNCTION_22_3();
    (v13)(v37);
    goto LABEL_22;
  }

  v25 = v23;
  v26 = v24;
  v27 = *__swift_project_boxed_opaque_existential_1((*(v0 + 32) + OBJC_IVAR____TtC16SiriVideoIntents28PlayLiveServiceIntentHandler_liveServiceResolver), *(*(v0 + 32) + OBJC_IVAR____TtC16SiriVideoIntents28PlayLiveServiceIntentHandler_liveServiceResolver + 24));
  v28 = swift_task_alloc();
  *(v0 + 128) = v28;
  *v28 = v0;
  v28[1] = sub_26974D8F4;

  return sub_2697BEFBC(v25, v26);
}

uint64_t sub_26974D8F4(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 128);
  v7 = *(*v3 + 120);
  v8 = *v3;
  OUTLINED_FUNCTION_1_6();
  *v9 = v8;
  v5[17] = v10;
  v5[18] = v2;

  if (v2)
  {
    v11 = sub_26974DC4C;
  }

  else
  {
    v5[19] = a2;
    v11 = sub_26974DA3C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_26974DA3C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + OBJC_IVAR____TtC16SiriVideoIntents28PlayLiveServiceIntentHandler_analyticsService), *(*(v0 + 32) + OBJC_IVAR____TtC16SiriVideoIntents28PlayLiveServiceIntentHandler_analyticsService + 24));
  sub_26974CC58(v2);
  sub_2697B3FA0();
  v5 = [v4 isRemoteExecution];
  v6 = sub_269855034();
  v7 = v6;
  if (v5)
  {
    v8 = *(v0 + 112);
    v9 = sub_269855064();

    v10 = *(v0 + 136);
    if (v9)
    {
      v11 = sub_26974FA50(*(v0 + 24));
      if (v11)
      {
        v7 = v11;
      }

      else
      {
        v7 = MEMORY[0x277D84F90];
      }

      v12 = OUTLINED_FUNCTION_50_0();
      v14 = sub_26974E8C8(v12, v13);

      v10 = v14;
    }
  }

  else
  {

    v10 = *(v0 + 136);
  }

  sub_26974CC58(v15);
  OUTLINED_FUNCTION_11_22();

  if (v7 == 1)
  {
    result = sub_26974CC58(v10);
    if (result)
    {
      if ((v10 & 0xC000000000000001) == 0)
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v17 = *(v10 + 32);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    MEMORY[0x26D646120](0, v10);
LABEL_15:
    OUTLINED_FUNCTION_11_22();

    type metadata accessor for PlayLiveServiceLiveServiceResolutionResult();
    static LiveServiceResolutionResult.success(with:)(1);

    goto LABEL_17;
  }

  if (v7)
  {
    type metadata accessor for PlayLiveServiceLiveServiceResolutionResult();
    v18 = OUTLINED_FUNCTION_11_22();
    sub_26974CF78(v18);

    sub_26974DE5C();
  }

  else
  {

    type metadata accessor for PlayLiveServiceLiveServiceResolutionResult();
    static PlayLiveServiceLiveServiceResolutionResult.unsupported(forReason:)(1);
  }

LABEL_17:
  v20 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 56);

  v22 = OUTLINED_FUNCTION_8_23();

  return v23(v22);
}

uint64_t sub_26974DC4C()
{
  v31 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  (*(v0 + 88))(*(v0 + 64), *(v0 + 80), *(v0 + 40));
  v3 = v1;
  v4 = sub_2698548B4();
  v5 = sub_269854F24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v29 = *(v0 + 104);
    v7 = *(v0 + 64);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    *(v0 + 16) = v6;
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v13 = sub_269854AE4();
    v15 = sub_26974F520(v13, v14, &v30);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_269684000, v4, v5, "Recieved error from UTS while searching for a live service. Error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v16 = OUTLINED_FUNCTION_22_3();
    v29(v16);
  }

  else
  {
    v17 = *(v0 + 104);
    v18 = *(v0 + 64);
    v19 = *(v0 + 40);
    v20 = *(v0 + 48);

    v21 = OUTLINED_FUNCTION_22_3();
    v17(v21);
  }

  v22 = *(v0 + 144);
  type metadata accessor for PlayLiveServiceLiveServiceResolutionResult();
  static PlayLiveServiceLiveServiceResolutionResult.unsupported(forReason:)(3);

  v24 = *(v0 + 64);
  v23 = *(v0 + 72);
  v25 = *(v0 + 56);

  v26 = OUTLINED_FUNCTION_8_23();

  return v27(v26);
}

id sub_26974DE5C()
{
  v0 = sub_269854CA4();

  v1 = [swift_getObjCClassFromMetadata() resolutionResultDisambiguationWithItemsToDisambiguate_];

  return v1;
}

uint64_t sub_26974DEEC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26974DFB0;

  return PlayLiveServiceIntentHandler.resolveLiveService(for:)();
}

uint64_t sub_26974DFB0()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  v9 = v4[2];
  v10 = OUTLINED_FUNCTION_50_0();
  v11(v10);
  _Block_release(v4);

  v12 = *(v7 + 8);

  return v12();
}

uint64_t PlayLiveServiceIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_2_7();
  v1 = sub_2698548D4();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_12(v1);
  v0[3] = v2;
  v4 = *(v3 + 64) + 15;
  v0[4] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26974E1AC()
{
  OUTLINED_FUNCTION_8_5();
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = __swift_project_value_buffer(v3, qword_28033D928);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v6))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_31_0(&dword_269684000, v7, v8, "Confirm step: success");
    OUTLINED_FUNCTION_10();
  }

  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];

  v12 = *(v10 + 8);
  v13 = OUTLINED_FUNCTION_22_3();
  v14(v13);
  v15 = objc_allocWithZone(type metadata accessor for PlayLiveServiceIntentResponse());
  PlayLiveServiceIntentResponse.init(code:userActivity:)(1, 0);

  v16 = OUTLINED_FUNCTION_8_23();

  return v17(v16);
}

uint64_t sub_26974E300(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_269750048;

  return PlayLiveServiceIntentHandler.confirm(intent:)();
}

uint64_t PlayLiveServiceIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_2_7();
  v0[2] = v1;
  v2 = sub_2698548D4();
  v0[3] = v2;
  OUTLINED_FUNCTION_5_12(v2);
  v0[4] = v3;
  v5 = *(v4 + 64) + 15;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26974E470()
{
  v1 = [*(v0 + 16) liveService];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 isInstalled];
  if (!v3)
  {

LABEL_7:
    v10 = objc_allocWithZone(type metadata accessor for PlayLiveServiceIntentResponse());
    v7 = PlayLiveServiceIntentResponse.init(code:userActivity:)(5, 0);
    goto LABEL_22;
  }

  v4 = v3;
  v5 = [v3 BOOLValue];

  v6 = objc_allocWithZone(type metadata accessor for PlayLiveServiceIntentResponse());
  v7 = PlayLiveServiceIntentResponse.init(code:userActivity:)(4, 0);
  if (v5)
  {
    sub_26974FAB0(v2, &selRef_playPunchoutUrl);
    if (v8)
    {
      v9 = sub_269854A64();
    }

    else
    {
      v9 = 0;
    }

    [v7 setPunchoutUrl_];

    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30();
    }

    v13 = *(v0 + 48);
    v14 = *(v0 + 32);
    __swift_project_value_buffer(*(v0 + 24), qword_28033D928);
    v15 = OUTLINED_FUNCTION_17_10();
    v16(v15);
    v17 = sub_2698548B4();
    v18 = sub_269854F14();
    v19 = OUTLINED_FUNCTION_19_4(v18);
    v20 = *(v0 + 48);
    v21 = *(v0 + 24);
    v22 = *(v0 + 32);
    if (!v19)
    {
      goto LABEL_21;
    }

    v23 = OUTLINED_FUNCTION_16_2();
    *v23 = 0;
    v24 = "Using the live stream punchout Url for this request";
  }

  else
  {
    sub_26974FAB0(v2, &selRef_appStoreUrl);
    if (v11)
    {
      v12 = sub_269854A64();
    }

    else
    {
      v12 = 0;
    }

    [v7 setPunchoutUrl_];

    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30();
    }

    v26 = *(v0 + 32);
    v25 = *(v0 + 40);
    __swift_project_value_buffer(*(v0 + 24), qword_28033D928);
    v27 = OUTLINED_FUNCTION_17_10();
    v28(v27);
    v17 = sub_2698548B4();
    v18 = sub_269854F14();
    v29 = OUTLINED_FUNCTION_19_4(v18);
    v22 = *(v0 + 32);
    v20 = *(v0 + 40);
    v21 = *(v0 + 24);
    if (!v29)
    {
      goto LABEL_21;
    }

    v23 = OUTLINED_FUNCTION_16_2();
    *v23 = 0;
    v24 = "Using the App Store punchout Url for this request";
  }

  _os_log_impl(&dword_269684000, v17, v18, v24, v23, 2u);
  OUTLINED_FUNCTION_10();
LABEL_21:

  (*(v22 + 8))(v20, v21);
LABEL_22:
  v31 = *(v0 + 40);
  v30 = *(v0 + 48);

  v32 = *(v0 + 8);

  return v32(v7);
}

uint64_t sub_26974E788(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = OUTLINED_FUNCTION_50_0();

  return sub_26978E9A8(v10, v11);
}

uint64_t sub_26974E808(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_269750048;

  return PlayLiveServiceIntentHandler.handle(intent:)();
}

uint64_t sub_26974E8C8(unint64_t a1, unint64_t a2)
{
  v4 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v9);
  v94 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  isUniquelyReferenced_nonNull_native = &v92 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v92 - v15;
  if (qword_2803226E8 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v17 = __swift_project_value_buffer(v4, qword_28033D928);
    v18 = v6[2];
    v100 = v17;
    v101 = v6 + 2;
    v99 = v18;
    (v18)(v16);

    v19 = sub_2698548B4();
    v20 = sub_269854F14();

    v21 = os_log_type_enabled(v19, v20);
    v103 = a1;
    v97 = isUniquelyReferenced_nonNull_native;
    v106 = a2;
    if (v21)
    {
      isUniquelyReferenced_nonNull_native = swift_slowAlloc();
      v107[0] = swift_slowAlloc();
      *isUniquelyReferenced_nonNull_native = 136315394;
      sub_2697F0598();
      v24 = sub_26974F520(v22, v23, v107);

      *(isUniquelyReferenced_nonNull_native + 4) = v24;
      *(isUniquelyReferenced_nonNull_native + 6) = 2080;
      sub_2697F0598();
      a1 = v25;
      v27 = sub_26974F520(v26, v25, v107);

      *(isUniquelyReferenced_nonNull_native + 14) = v27;
      _os_log_impl(&dword_269684000, v19, v20, "Merging services. Local: %s, remote: %s", isUniquelyReferenced_nonNull_native, 0x16u);
      swift_arrayDestroy();
      a2 = v106;
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    v98 = v6[1];
    v98(v16, v4);
    type metadata accessor for LiveService();
    v28 = MEMORY[0x277D84F90];
    v29 = sub_269854A04();
    v30 = sub_26974CC58(a2);
    v102 = v4;
    v95 = v28;
    v96 = v6;
    if (!v30)
    {
      break;
    }

    v31 = v30;
    v105 = sub_269694CBC();
    if (v31 < 1)
    {
      __break(1u);
      goto LABEL_74;
    }

    v32 = 0;
    v104 = (a2 & 0xC000000000000001);
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v104)
      {
        v33 = MEMORY[0x26D646120](v32, a2);
      }

      else
      {
        v33 = *(a2 + 8 * v32 + 32);
      }

      v34 = v33;
      v35 = sub_269855034();
      [v34 setIsRemoteResult_];

      v36 = sub_26974F2F0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_14_11();
        v6 = v46;
      }

      a1 = v6[2];
      if (a1 >= v6[3] >> 1)
      {
        OUTLINED_FUNCTION_13_15();
        v6 = v47;
      }

      v6[2] = a1 + 1;
      v6[a1 + 4] = v36;
      v4 = sub_26974F2F0();
      a2 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107[0] = v29;
      v16 = v29;
      v37 = sub_26973ED38(v4);
      if (__OFADD__(v29[2], (v38 & 1) == 0))
      {
        break;
      }

      v39 = v37;
      a1 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324018, &unk_26985E5C0);
      v16 = v107;
      if (sub_2698552E4())
      {
        v16 = v107[0];
        v40 = sub_26973ED38(v4);
        if ((a1 & 1) != (v41 & 1))
        {
          goto LABEL_75;
        }

        v39 = v40;
      }

      v29 = v107[0];
      if (a1)
      {
        v42 = *(v107[0] + 56);
        v16 = *(v42 + 8 * v39);
        *(v42 + 8 * v39) = a2;

        a2 = v16;
      }

      else
      {
        *(v107[0] + 8 * (v39 >> 6) + 64) |= 1 << v39;
        *(v29[6] + 8 * v39) = v4;
        *(v29[7] + 8 * v39) = a2;
        v43 = v29[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_71;
        }

        v29[2] = v45;
      }

      ++v32;

      a2 = v106;
      if (v31 == v32)
      {
        goto LABEL_25;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    OUTLINED_FUNCTION_0_30();
  }

  v6 = v28;
LABEL_25:
  v48 = v103;
  v49 = sub_26974CC58(v103);
  if (v49)
  {
    a1 = v49;
    if (v49 >= 1)
    {
      v51 = 0;
      v4 = v48 & 0xC000000000000001;
      v105 = (v96 + 1);
      *&v50 = 136315138;
      v92 = v50;
      v106 = v49;
      while (1)
      {
        if (v4)
        {
          v52 = MEMORY[0x26D646120](v51, v48);
        }

        else
        {
          v52 = *(v48 + 8 * v51 + 32);
        }

        isUniquelyReferenced_nonNull_native = v52;
        v53 = sub_26974F2F0();
        if (v29[2] && (v54 = sub_26973ED38(v53), (v55 & 1) != 0))
        {
          v56 = v4;
          v57 = *(v29[7] + 8 * v54);
          a2 = [v57 isInstalled];
          v16 = sub_269694CBC();
          v58 = sub_269855034();
          v59 = v58;
          if (a2)
          {
            v60 = sub_269855064();

            if (v60)
            {
              goto LABEL_48;
            }
          }

          else
          {
          }

          a2 = [isUniquelyReferenced_nonNull_native isInstalled];
          v62 = sub_269855034();
          v63 = v62;
          if (!a2)
          {

LABEL_48:
            v48 = v103;
            v4 = v56;
LABEL_50:
            a1 = v106;
            goto LABEL_51;
          }

          v16 = sub_269855064();

          v4 = v56;
          if ((v16 & 1) == 0)
          {

            v48 = v103;
            goto LABEL_50;
          }

          v64 = v97;
          v99(v97, v100, v102);
          v65 = v57;
          v66 = sub_2698548B4();
          v67 = sub_269854F14();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v108 = v104;
            *v68 = v92;
            v107[0] = sub_26973F87C(v65);
            v107[1] = v69;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
            v70 = sub_269854AE4();
            v93 = v65;
            v72 = sub_26974F520(v70, v71, &v108);

            *(v68 + 4) = v72;
            v4 = v56;
            v73 = v67;
            a2 = v93;
            _os_log_impl(&dword_269684000, v66, v73, "Overriding remote service %s with local one", v68, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v104);
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_10();

            v98(v97, v102);
            v48 = v103;
            a1 = v106;
          }

          else
          {

            v98(v64, v102);
            v48 = v103;
            a1 = v106;
            a2 = v65;
          }

          v16 = isUniquelyReferenced_nonNull_native;
          sub_26974F2F0();
          isUniquelyReferenced_nonNull_native = isUniquelyReferenced_nonNull_native;
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_12_18();
        }

        else
        {
          v61 = sub_26974F2F0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14_11();
            v6 = v74;
          }

          a2 = v6[2];
          if (a2 >= v6[3] >> 1)
          {
            OUTLINED_FUNCTION_13_15();
            v6 = v75;
          }

          v6[2] = a2 + 1;
          v6[a2 + 4] = v61;
          v16 = isUniquelyReferenced_nonNull_native;
          sub_26974F2F0();
          isUniquelyReferenced_nonNull_native = isUniquelyReferenced_nonNull_native;
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_12_18();
        }

        v29 = v107[0];
LABEL_51:
        if (a1 == ++v51)
        {
          goto LABEL_55;
        }
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    result = sub_2698555F4();
    __break(1u);
  }

  else
  {
LABEL_55:
    v76 = 0;
    v107[0] = MEMORY[0x277D84F90];
    v77 = v6[2];
    while (v77 != v76)
    {
      if (v76 >= v77)
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      isUniquelyReferenced_nonNull_native = (v76 + 1);
      if (__OFADD__(v76, 1))
      {
        goto LABEL_69;
      }

      if (v29[2] && (v16 = v29, v78 = sub_26973ED38(v6[v76 + 4]), (v79 & 1) != 0))
      {
        v80 = *(v29[7] + 8 * v78);
        v16 = v107;
        MEMORY[0x26D645B90]();
        a1 = *((v107[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a1 >= *((v107[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269854CD4();
        }

        sub_269854CF4();
        v95 = v107[0];
        ++v76;
      }

      else
      {
        ++v76;
      }
    }

    v81 = v94;
    v82 = v102;
    v99(v94, v100, v102);
    v83 = v95;

    v84 = sub_2698548B4();
    v85 = sub_269854F14();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v107[0] = v87;
      *v86 = 136315138;
      sub_2697F0598();
      v90 = sub_26974F520(v88, v89, v107);

      *(v86 + 4) = v90;
      _os_log_impl(&dword_269684000, v84, v85, "Merged services: %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    v98(v81, v82);

    return v83;
  }

  return result;
}

uint64_t sub_26974F2F0()
{
  sub_2698556D4();
  sub_26973F87C(v0);
  if (v1)
  {
    sub_269855694();
    sub_269854B34();
  }

  else
  {
    sub_269855694();
  }

  sub_2697C02F4(v0);
  if (v2)
  {
    sub_269855694();
    sub_269854B34();
  }

  else
  {
    sub_269855694();
  }

  return sub_2698556B4();
}

id PlayLiveServiceIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayLiveServiceIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26974F444(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_26974F4B8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_26974F4C8(uint64_t ***a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  sub_26974F520(v6, v7, a3);
  OUTLINED_FUNCTION_11_22();

  v9 = *a1;
  *v9 = a3;
  *a1 = v9 + 1;
  return result;
}

uint64_t sub_26974F520(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26974F5E4(v11, 0, 0, 1, a1, a2);
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
    sub_2696B6F94(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26974F5E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26974F6E4(a5, a6);
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
    result = sub_269855264();
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

uint64_t sub_26974F6E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_26974F730(a1, a2);
  sub_26974F848(&unk_287A38EF8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26974F730(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_269854B74())
  {
    result = sub_2697EC884(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2698551F4();
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
          result = sub_269855264();
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

uint64_t sub_26974F848(uint64_t result)
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

    result = sub_26974F92C(result, v8, 1, v3);
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

char *sub_26974F92C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324020, &unk_26985E5D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_26974FA20(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_26974FA50(void *a1)
{
  v1 = [a1 localServiceResults];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for LiveService();
  v3 = sub_269854CB4();

  return v3;
}

uint64_t sub_26974FAB0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_269854A94();
  }

  return OUTLINED_FUNCTION_50_0();
}

id sub_26974FB0C(uint64_t a1, void *a2)
{
  v9[3] = type metadata accessor for LiveServiceResolver();
  v9[4] = &off_287A42540;
  v9[0] = a1;
  v8[3] = &type metadata for CoreAnalyticsService;
  v8[4] = &xmmword_287A41610;
  v7[3] = &type metadata for TvProfileSelector;
  v7[4] = &off_287A41E28;
  sub_2696A73F8(v9, a2 + OBJC_IVAR____TtC16SiriVideoIntents28PlayLiveServiceIntentHandler_liveServiceResolver);
  sub_2696A73F8(v8, a2 + OBJC_IVAR____TtC16SiriVideoIntents28PlayLiveServiceIntentHandler_analyticsService);
  sub_2696A73F8(v7, a2 + OBJC_IVAR____TtC16SiriVideoIntents28PlayLiveServiceIntentHandler_tvProfileSelector);
  v6.receiver = a2;
  v6.super_class = type metadata accessor for PlayLiveServiceIntentHandler();
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v4;
}

id sub_26974FBEC(uint64_t a1)
{
  v2 = type metadata accessor for LiveServiceResolver();
  v18[3] = v2;
  v18[4] = &off_287A42540;
  v18[0] = a1;
  v16 = &type metadata for CoreAnalyticsService;
  v17 = &xmmword_287A41610;
  v13 = &type metadata for TvProfileSelector;
  v14 = &off_287A41E28;
  v3 = objc_allocWithZone(type metadata accessor for PlayLiveServiceIntentHandler());
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v2);
  v5 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  v9 = sub_26974FB0C(*v7, v3);
  __swift_destroy_boxed_opaque_existential_0(v12);
  __swift_destroy_boxed_opaque_existential_0(v15);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return v9;
}

uint64_t sub_26974FD68()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_3_25(v5);

  return v7(v6);
}

uint64_t sub_26974FE00()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_3_25(v5);

  return v7(v6);
}

uint64_t sub_26974FE98()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_3_25(v5);

  return v7(v6);
}

uint64_t sub_26974FF30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26974FF94()
{
  result = qword_280324028;
  if (!qword_280324028)
  {
    type metadata accessor for StaticSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324028);
  }

  return result;
}

uint64_t sub_26974FFEC(uint64_t a1)
{
  v2 = type metadata accessor for StaticSignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_12_18()
{
  *(v1 - 112) = v0;

  sub_269840844();
}

void OUTLINED_FUNCTION_13_15()
{

  sub_26977CC9C();
}

void OUTLINED_FUNCTION_14_11()
{
  v2 = *(v0 + 16) + 1;

  sub_26977CC9C();
}

id sub_2697500E0()
{
  result = [objc_allocWithZone(type metadata accessor for PlayLiveServiceIntentHandler()) init];
  qword_28033D6F8 = result;
  return result;
}

uint64_t sub_269750114(uint64_t a1)
{
  v129 = sub_269851F04();
  v2 = OUTLINED_FUNCTION_8(v129);
  v127 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15_7();
  v114 = v6;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F40, &unk_26985DE30);
  v7 = OUTLINED_FUNCTION_4_3(v123);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v128 = &v112 - v10;
  OUTLINED_FUNCTION_2_13();
  v11 = sub_2698523C4();
  v12 = OUTLINED_FUNCTION_8(v11);
  v119 = v13;
  v120 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_7();
  v118 = v16;
  OUTLINED_FUNCTION_2_13();
  v17 = sub_269852474();
  v18 = OUTLINED_FUNCTION_8(v17);
  v116 = v19;
  v117 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_7();
  v115 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F48, qword_26985DE40);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  OUTLINED_FUNCTION_12();
  v126 = v25 - v26;
  v28 = MEMORY[0x28223BE20](v27);
  v124 = &v112 - v29;
  MEMORY[0x28223BE20](v28);
  v125 = &v112 - v30;
  OUTLINED_FUNCTION_2_13();
  v31 = sub_2698548D4();
  v32 = OUTLINED_FUNCTION_8(v31);
  v130 = v33;
  v131 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_12();
  v121 = v36 - v37;
  MEMORY[0x28223BE20](v38);
  v113 = &v112 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E8, &qword_26985BAE8);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = &v112 - v42;
  v44 = type metadata accessor for MediaNLIntent();
  v45 = OUTLINED_FUNCTION_4_3(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_15_7();
  v122 = v48;
  OUTLINED_FUNCTION_2_13();
  v49 = sub_2698538B4();
  v50 = OUTLINED_FUNCTION_8(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_12();
  v57 = v55 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = (&v112 - v59);
  v61 = v52[2];
  v61(&v112 - v59, a1, v49);
  v62 = v52[11];
  v63 = OUTLINED_FUNCTION_8_3();
  v65 = v64(v63);
  if (v65 == *MEMORY[0x277D5C128])
  {
    v61(v57, a1, v49);
    sub_2697A6954(v57, v43);
    if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
    {
      sub_26969B0C0(v43, &qword_2803239E8, &qword_26985BAE8);
      if (qword_280322700 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v66 = v131;
      v67 = __swift_project_value_buffer(v131, qword_281571B38);
      v68 = v130;
      v69 = v121;
      (*(v130 + 16))(v121, v67, v66);
      v70 = sub_2698548B4();
      v71 = sub_269854F04();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_269684000, v70, v71, "Unable to create MediaNLIntent from parse, ignoring input", v72, 2u);
        MEMORY[0x26D647170](v72, -1, -1);
      }

      (*(v68 + 8))(v69, v66);
      goto LABEL_24;
    }

    v87 = v43;
    v88 = v122;
    sub_269750B68(v87, v122);
    if (qword_280322560 != -1)
    {
      swift_once();
    }

    sub_269750BCC(qword_280323548, type metadata accessor for MediaNLIntent);
    sub_269853D54();
    if (v132 != 5)
    {
      v90 = sub_2697A8C0C(v132) == 2036427888 && v89 == 0xE400000000000000;
      if (v90)
      {
      }

      else
      {
        v91 = sub_269855584();

        if ((v91 & 1) == 0)
        {
          if (qword_280322700 != -1)
          {
            OUTLINED_FUNCTION_0_4();
          }

          v92 = v131;
          v93 = __swift_project_value_buffer(v131, qword_281571B38);
          v94 = v130;
          v95 = v113;
          (*(v130 + 16))(v113, v93, v92);
          v96 = sub_2698548B4();
          v97 = sub_269854F04();
          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            *v98 = 0;
            _os_log_impl(&dword_269684000, v96, v97, "Incorrect verb in intent for flow, ignoring input", v98, 2u);
            MEMORY[0x26D647170](v98, -1, -1);
          }

          (*(v94 + 8))(v95, v92);
          sub_2696CC460(v88);
          goto LABEL_24;
        }
      }
    }

    sub_2696CC460(v88);
    v106 = v52[1];
    v107 = OUTLINED_FUNCTION_8_3();
    v108(v107);
LABEL_38:
    v102 = 1;
    return v102 & 1;
  }

  if (v65 == *MEMORY[0x277D5C148])
  {
    v73 = v52[12];
    v74 = OUTLINED_FUNCTION_8_3();
    v75(v74);
    v76 = *v60;
    sub_2696D6C54();
    if (v77)
    {
      v78 = v77;
      v79 = v115;
      sub_269854544();

      v80 = v118;
      sub_269852424();
      (*(v116 + 8))(v79, v117);
      v81 = v125;
      sub_2698523A4();
      (*(v119 + 8))(v80, v120);
      v82 = 0;
      v84 = v128;
      v83 = v129;
      v86 = v126;
      v85 = v127;
    }

    else
    {
      v82 = 1;
      v84 = v128;
      v83 = v129;
      v86 = v126;
      v85 = v127;
      v81 = v125;
    }

    v103 = v124;
    __swift_storeEnumTagSinglePayload(v81, v82, 1, v83);
    (*(v85 + 104))(v103, *MEMORY[0x277D391D8], v83);
    __swift_storeEnumTagSinglePayload(v103, 0, 1, v83);
    v104 = *(v123 + 48);
    sub_269740BE4(v81, v84);
    sub_269740BE4(v103, v84 + v104);
    OUTLINED_FUNCTION_8_21(v84);
    if (v90)
    {

      OUTLINED_FUNCTION_7_27(v103);
      OUTLINED_FUNCTION_7_27(v81);
      OUTLINED_FUNCTION_8_21(v84 + v104);
      if (v90)
      {
        sub_26969B0C0(v84, &qword_280323F48, qword_26985DE40);
        goto LABEL_38;
      }
    }

    else
    {
      sub_269740BE4(v84, v86);
      OUTLINED_FUNCTION_8_21(v84 + v104);
      if (!v105)
      {
        v110 = v114;
        (*(v85 + 32))(v114, v84 + v104, v83);
        sub_269750BCC(&qword_280323F50, MEMORY[0x277D39210]);
        v102 = sub_269854A54();

        v111 = *(v85 + 8);
        v111(v110, v83);
        sub_26969B0C0(v103, &qword_280323F48, qword_26985DE40);
        sub_26969B0C0(v81, &qword_280323F48, qword_26985DE40);
        v111(v86, v83);
        sub_26969B0C0(v84, &qword_280323F48, qword_26985DE40);
        return v102 & 1;
      }

      OUTLINED_FUNCTION_7_27(v103);
      OUTLINED_FUNCTION_7_27(v81);
      (*(v85 + 8))(v86, v83);
    }

    sub_26969B0C0(v84, &qword_280323F40, &unk_26985DE30);
    goto LABEL_25;
  }

LABEL_24:
  v99 = v52[1];
  v100 = OUTLINED_FUNCTION_8_3();
  v101(v100);
LABEL_25:
  v102 = 0;
  return v102 & 1;
}

uint64_t sub_269750B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaNLIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269750BCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_27(uint64_t a1)
{

  return sub_26969B0C0(a1, v1, v2);
}

uint64_t sub_269750C44(void (*a1)(void))
{
  v3 = [v1 disambiguationItems];
  v4 = sub_269854CB4();

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v7 = *(v4 + 16);
LABEL_2:
  v8 = v4 + 32 + 32 * v5;
  while (1)
  {
    if (v7 == v5)
    {

      return v6;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    sub_2696B6F94(v8, v12);
    v9 = sub_269750DA4(v12, a1);
    ++v5;
    v8 += 32;
    v10 = __swift_destroy_boxed_opaque_existential_0(v12);
    if (v9)
    {
      MEMORY[0x26D645B90](v10);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269854CD4();
      }

      sub_269854CF4();
      v6 = v13;
      goto LABEL_2;
    }
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_0(v12);

  __break(1u);
  return result;
}

id sub_269750DA4(uint64_t a1, void (*a2)(void))
{
  v4 = sub_2698548D4();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  sub_2696B6F94(a1, v30);
  a2(0);
  if (!OUTLINED_FUNCTION_51_3())
  {
    sub_2696B6F94(a1, v30);
    sub_2697558A4();
    if (OUTLINED_FUNCTION_51_3())
    {
      v17 = v29;
      v18 = INTypedObjectWithCustomObject();
      if (v18)
      {
        v16 = v18;

        return v16;
      }

      if (qword_280322700 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v23 = __swift_project_value_buffer(v4, qword_281571B38);
      (*(v7 + 16))(v12, v23, v4);
      v24 = sub_2698548B4();
      v25 = sub_269854F24();
      if (os_log_type_enabled(v24, v25))
      {
        OUTLINED_FUNCTION_9_17();
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_269684000, v24, v25, "Could not convert disambiguation item to INObject", v26, 2u);
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
      }

      else
      {
      }

      (*(v7 + 8))(v12, v4);
    }

    else
    {
      if (qword_280322700 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v19 = __swift_project_value_buffer(v4, qword_281571B38);
      (*(v7 + 16))(v15, v19, v4);
      v20 = sub_2698548B4();
      v21 = sub_269854F24();
      if (os_log_type_enabled(v20, v21))
      {
        OUTLINED_FUNCTION_9_17();
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_269684000, v20, v21, "Unexpected disambiguation item type", v22, 2u);
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
      }

      (*(v7 + 8))(v15, v4);
    }

    return 0;
  }

  return v29;
}

void *sub_269751094(uint64_t a1)
{
  sub_2698538C4();
  type metadata accessor for BaseDialogProvider();
  v2 = swift_allocObject();
  v3 = sub_269853264();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v6 = sub_269853254();
  v7 = sub_26975598C(&v9, v2, a1, v6);

  return v7;
}

uint64_t sub_26975112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v262[2] = a2;
  v263 = a1;
  v250 = sub_269853854();
  v2 = OUTLINED_FUNCTION_8(v250);
  v249 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15_7();
  v259 = v6;
  v256 = sub_2698538A4();
  v7 = OUTLINED_FUNCTION_8(v256);
  v258 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_7();
  v257 = v11;
  v239 = sub_2698523C4();
  v12 = OUTLINED_FUNCTION_8(v239);
  v238 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v16);
  v237 = v234 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v19 = OUTLINED_FUNCTION_8_9(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_1(v234 - v22);
  v245 = sub_269851EF4();
  v23 = OUTLINED_FUNCTION_8(v245);
  v244 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v27);
  v251 = sub_269852474();
  v28 = OUTLINED_FUNCTION_8(v251);
  v241 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_15_1(v234 - v34);
  v252 = sub_269853874();
  v35 = OUTLINED_FUNCTION_8(v252);
  v248 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15_7();
  v255 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E8, &qword_26985BAE8);
  v41 = OUTLINED_FUNCTION_8_9(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_15_1(v234 - v44);
  v254 = type metadata accessor for MediaNLIntent();
  v45 = OUTLINED_FUNCTION_4_3(v254);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v48);
  v49 = sub_2698538B4();
  v50 = OUTLINED_FUNCTION_8(v49);
  v264 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_12();
  v56 = v54 - v55;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  v60 = MEMORY[0x28223BE20](v59);
  v62 = v234 - v61;
  MEMORY[0x28223BE20](v60);
  v266 = v234 - v63;
  v64 = sub_2698548D4();
  v65 = OUTLINED_FUNCTION_8(v64);
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  v76 = MEMORY[0x28223BE20](v75);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v78);
  v80 = v234 - v79;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v81 = __swift_project_value_buffer(v64, qword_28033D910);
  v82 = *(v67 + 16);
  v260 = v81;
  v261 = v82;
  v83 = v64;
  (v82)(v80);
  v84 = sub_2698548B4();
  v85 = sub_269854F14();
  v86 = os_log_type_enabled(v84, v85);
  v265 = v49;
  if (v86)
  {
    OUTLINED_FUNCTION_9_17();
    v87 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_2(v87);
    _os_log_impl(&dword_269684000, v84, v85, "DisambigateLiveServicesStrategy.actionForInput() called", v49, 2u);
    v49 = v265;
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v262[0] = *(v67 + 8);
  v262[1] = v67 + 8;
  (v262[0])(v80, v83);
  v88 = v266;
  v89 = v263;
  sub_269853844();
  v90 = v264;
  v91 = (v264[11])(v88, v49);
  if (v91 == *MEMORY[0x277D5C128])
  {
    sub_269853844();
    v92 = sub_269750114(v62);
    v93 = v90[1];
    v93(v62, v49);
    if ((v92 & 1) == 0)
    {
      v108 = OUTLINED_FUNCTION_17_11();
      v109(v108);
      v97 = sub_2698548B4();
      v110 = sub_269854F14();
      if (OUTLINED_FUNCTION_17_2(v110))
      {
        OUTLINED_FUNCTION_9_17();
        v111 = swift_slowAlloc();
        OUTLINED_FUNCTION_30_2(v111);
        v102 = "Ignoring action due to shouldHandle returning false";
        goto LABEL_19;
      }

LABEL_20:

      OUTLINED_FUNCTION_26_10();
      v112();
      sub_269853014();
LABEL_21:
      v113 = OUTLINED_FUNCTION_45_2();
      return (v93)(v113);
    }

    sub_269853844();
    v94 = v253;
    sub_2697A6954(v62, v253);
    if (__swift_getEnumTagSinglePayload(v94, 1, v254) == 1)
    {
      sub_26969B0C0(v94, &qword_2803239E8, &qword_26985BAE8);
      v95 = OUTLINED_FUNCTION_17_11();
      v96(v95);
      v97 = sub_2698548B4();
      v98 = sub_269854F14();
      if (OUTLINED_FUNCTION_17_2(v98))
      {
        OUTLINED_FUNCTION_9_17();
        v99 = swift_slowAlloc();
        OUTLINED_FUNCTION_30_2(v99);
        v102 = "Ignoring action due to missing canonicalId in NL intent";
LABEL_19:
        OUTLINED_FUNCTION_20_7(&dword_269684000, v100, v101, v102);
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    v140 = v247;
    sub_269750B68(v94, v247);
    if (qword_280322580 != -1)
    {
      OUTLINED_FUNCTION_7_17();
    }

    OUTLINED_FUNCTION_5_23();
    sub_269755944(v141, 255, v142);
    OUTLINED_FUNCTION_50_0();
    sub_269853D54();
    if (!v270)
    {
      v261(v242, v260, v83);
      v201 = sub_2698548B4();
      v202 = sub_269854F14();
      if (OUTLINED_FUNCTION_17_2(v202))
      {
        OUTLINED_FUNCTION_9_17();
        v203 = swift_slowAlloc();
        OUTLINED_FUNCTION_30_2(v203);
        OUTLINED_FUNCTION_20_7(&dword_269684000, v204, v205, "Ignoring action due to missing canonicalId in NL intent");
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
      }

      OUTLINED_FUNCTION_26_10();
      v206();
      sub_269853014();
      OUTLINED_FUNCTION_3_19();
      sub_2696FD654(v140, v207);
      goto LABEL_21;
    }

    v267[4] = v269;
    v268 = v270;
    OUTLINED_FUNCTION_20_5();
    v267[2] = v143;
    v267[3] = v144;
    v267[0] = 0;
    v267[1] = 0xE000000000000000;
    sub_269693054();
    OUTLINED_FUNCTION_23_4();

    OUTLINED_FUNCTION_3_19();
    sub_2696FD654(v140, v145);
    goto LABEL_49;
  }

  if (v91 != *MEMORY[0x277D5C150])
  {
    v106 = v259;
    if (v91 == *MEMORY[0x277D5C140])
    {
      v115 = v90[2];
      v116 = OUTLINED_FUNCTION_44_3();
      v117(v116);
      v118 = v90[12];
      v119 = OUTLINED_FUNCTION_22_3();
      v120(v119);
      v121 = *(v248 + 32);
      v122 = OUTLINED_FUNCTION_7_16();
      v123 = v252;
      v124(v122);
      v125 = v243;
      sub_269853864();
      v126 = v246;
      sub_2696D3C74();
      OUTLINED_FUNCTION_3_15(&v268);
      v127(v125, v245);
      v128 = v251;
      if (__swift_getEnumTagSinglePayload(v126, 1, v251) == 1)
      {
        sub_26969B0C0(v126, &qword_280323360, &unk_26985AB80);
        v129 = OUTLINED_FUNCTION_17_11();
        v130(v129);
        v131 = sub_2698548B4();
        v132 = sub_269854F14();
        if (OUTLINED_FUNCTION_17_2(v132))
        {
          OUTLINED_FUNCTION_9_17();
          v133 = swift_slowAlloc();
          OUTLINED_FUNCTION_30_2(v133);
          OUTLINED_FUNCTION_20_7(&dword_269684000, v134, v135, "Ignoring action due to missing videoClientComponent");
          OUTLINED_FUNCTION_8_25();
          MEMORY[0x26D647170]();
        }

        OUTLINED_FUNCTION_26_10();
        v136();
        sub_269853014();
        v137 = OUTLINED_FUNCTION_35_6();
        v139 = v123;
LABEL_62:
        v138(v137, v139);
        v222 = v90[1];
        v223 = OUTLINED_FUNCTION_45_2();
        return v225(v223, v224);
      }

      v263 = v83;
      v186 = v241;
      v187 = v240;
      (*(v241 + 32))(v240, v126, v128);
      v188 = v237;
      sub_269852424();
      v189 = sub_2698520D4();
      v191 = v190;
      OUTLINED_FUNCTION_3_15(&v264);
      v192(v188, v239);

      v193 = HIBYTE(v191) & 0xF;
      if ((v191 & 0x2000000000000000) == 0)
      {
        v193 = v189 & 0xFFFFFFFFFFFFLL;
      }

      if (!v193)
      {
        v215 = v235;
        v216 = v263;
        v261(v235, v260, v263);
        v217 = sub_2698548B4();
        v218 = sub_269854F14();
        if (OUTLINED_FUNCTION_17_2(v218))
        {
          OUTLINED_FUNCTION_9_17();
          v219 = swift_slowAlloc();
          OUTLINED_FUNCTION_30_2(v219);
          OUTLINED_FUNCTION_20_7(&dword_269684000, v220, v221, "Ignoring action due to empty selectedItemIdentifier");
          OUTLINED_FUNCTION_8_25();
          MEMORY[0x26D647170]();
        }

        (v262[0])(v215, v216);
        sub_269853014();
        (*(v186 + 8))(v240, v128);
        v137 = OUTLINED_FUNCTION_35_6();
        v139 = v252;
        goto LABEL_62;
      }

      (*(v186 + 8))(v187, v128);
      v194 = OUTLINED_FUNCTION_35_6();
      v195(v194, v252);
      v93 = v90[1];
LABEL_49:
      v196 = OUTLINED_FUNCTION_45_2();
      (v93)(v196);
      return sub_269853004();
    }

    if (v91 != *MEMORY[0x277D5C148])
    {
      goto LABEL_43;
    }

    v154 = v90[2];
    v155 = OUTLINED_FUNCTION_44_3();
    v156(v155);
    v157 = v90[12];
    v158 = OUTLINED_FUNCTION_22_3();
    v159(v158);
    v160 = *(v67 + 8);
    sub_269853844();
    v161 = sub_269750114(v62);
    v93 = v90[1];
    v93(v62, v49);
    if ((v161 & 1) != 0 && (sub_2696D6C54(), v162))
    {
      v163 = v162;
      v264 = v160;
      sub_269854544();

      v164 = v241;
      v165 = *(v241 + 32);
      v166 = v236;
      v167 = OUTLINED_FUNCTION_22_3();
      v168 = v251;
      v169(v167);
      v170 = v234[3];
      sub_269852424();
      v171 = sub_2698520D4();
      v173 = v172;
      OUTLINED_FUNCTION_3_15(&v264);
      v174(v170, v239);

      v175 = HIBYTE(v173) & 0xF;
      if ((v173 & 0x2000000000000000) == 0)
      {
        v175 = v171 & 0xFFFFFFFFFFFFLL;
      }

      if (v175)
      {
        (*(v164 + 8))(v166, v168);

        goto LABEL_49;
      }

      v226 = OUTLINED_FUNCTION_20_11(&v257);
      v227(v226);
      v228 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_28_8();
      if (os_log_type_enabled(v228, v229))
      {
        OUTLINED_FUNCTION_9_17();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_26_8(&dword_269684000, v230, v231, "Ignoring action due to empty selectedItemIdentifier");
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
      }

      OUTLINED_FUNCTION_26_10();
      v232();
      sub_269853014();

      OUTLINED_FUNCTION_3_15(v267);
      v233(v236, v251);
    }

    else
    {
      v208 = OUTLINED_FUNCTION_20_11(v262);
      v209(v208);
      v210 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_28_8();
      if (os_log_type_enabled(v210, v211))
      {
        OUTLINED_FUNCTION_9_17();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_26_8(&dword_269684000, v212, v213, "Ignoring action due to shouldHandle returning false");
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
      }

      OUTLINED_FUNCTION_26_10();
      v214();
      sub_269853014();
    }

    v113 = v266;
    return (v93)(v113);
  }

  (v90[2])(v56, v266, v49);
  (v90[12])(v56, v49);
  v103 = v256;
  (*(v258 + 32))(v257, v56, v256);
  v105 = sub_269853884() == 0xD00000000000002CLL && 0x800000026987A070 == v104;
  v106 = v259;
  if (v105)
  {
  }

  else
  {
    v107 = sub_269855584();

    if ((v107 & 1) == 0)
    {
      (*(v258 + 8))(v257, v103);
      v89 = v263;
LABEL_43:
      v176 = OUTLINED_FUNCTION_17_11();
      v177(v176);
      v178 = v249;
      v179 = v250;
      (*(v249 + 16))(v106, v89, v250);
      v180 = sub_2698548B4();
      v181 = sub_269854F14();
      if (os_log_type_enabled(v180, v181))
      {
        v182 = OUTLINED_FUNCTION_27_2();
        v183 = swift_slowAlloc();
        v269 = v183;
        *v182 = 136315138;
        sub_269853844();
        v184 = v264;
        (v264[1])(v62, v265);
        (*(v178 + 8))(v106, v179);
        *(v182 + 4) = sub_26974F520(0x6573726150, 0xE500000000000000, &v269);
        _os_log_impl(&dword_269684000, v180, v181, "Ignoring action due to unsupported parse type: %s", v182, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v183);
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();

        OUTLINED_FUNCTION_26_10();
        v185();
      }

      else
      {

        (*(v178 + 8))(v106, v179);
        OUTLINED_FUNCTION_26_10();
        v197();
        v184 = v264;
      }

      sub_269853014();
      v198 = v184[1];
      v199 = OUTLINED_FUNCTION_45_2();
      return v200(v199);
    }
  }

  v146 = OUTLINED_FUNCTION_20_11(&v271);
  v147(v146);
  v148 = sub_2698548B4();
  v149 = sub_269854F14();
  if (OUTLINED_FUNCTION_17_2(v149))
  {
    OUTLINED_FUNCTION_9_17();
    v150 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_2(v150);
    OUTLINED_FUNCTION_20_7(&dword_269684000, v151, v152, "PlayLiveServiceDisambiguationStrategy.actionForInput() handling direct invocation from com.apple.siri.video.DisambiguationSelection");
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  OUTLINED_FUNCTION_26_10();
  v153();
  sub_269853004();
  (*(v258 + 8))(v257, v103);
  return (v90[1])(v266, v265);
}

uint64_t sub_2697524A8()
{
  OUTLINED_FUNCTION_2_7();
  v0[2] = v1;
  v2 = sub_2698548D4();
  v0[3] = v2;
  OUTLINED_FUNCTION_5_12(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26975254C()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = __swift_project_value_buffer(v3, qword_28033D910);
  v6 = *(v2 + 16);
  v5 = (v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_2698548B4();
  v8 = sub_269854F14();
  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_9_17();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_2(v9);
    _os_log_impl(&dword_269684000, v7, v8, "DisambigateLiveServicesStrategy.makeDisambiguationItemContainer() called", v5, 2u);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[2];
  v13 = v0[3];

  v14 = *(v11 + 8);
  v15 = OUTLINED_FUNCTION_22_3();
  v16(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324050, &qword_26985E7A0);
  sub_2698536C4();
  OUTLINED_FUNCTION_15_14();

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324040, qword_26985E6B8);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_2698537E4();

  v21 = v0[1];

  return v21(v20);
}

uint64_t sub_2697526EC()
{
  OUTLINED_FUNCTION_2_7();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324060, &qword_26985E7A8);
  v1[22] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[23] = v7;
  v9 = *(v8 + 64);
  v1[24] = OUTLINED_FUNCTION_4_7();
  v10 = sub_2698538A4();
  v1[25] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[26] = v11;
  v13 = *(v12 + 64);
  v1[27] = OUTLINED_FUNCTION_4_7();
  v14 = sub_2698523C4();
  v1[28] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v1[29] = v15;
  v17 = *(v16 + 64);
  v1[30] = OUTLINED_FUNCTION_4_7();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v18);
  v20 = *(v19 + 64);
  v1[31] = OUTLINED_FUNCTION_4_7();
  v21 = sub_269851EF4();
  v1[32] = v21;
  OUTLINED_FUNCTION_5_12(v21);
  v1[33] = v22;
  v24 = *(v23 + 64);
  v1[34] = OUTLINED_FUNCTION_4_7();
  v25 = sub_269852474();
  v1[35] = v25;
  OUTLINED_FUNCTION_5_12(v25);
  v1[36] = v26;
  v28 = *(v27 + 64);
  v1[37] = OUTLINED_FUNCTION_37_0();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v29 = sub_269853874();
  v1[43] = v29;
  OUTLINED_FUNCTION_5_12(v29);
  v1[44] = v30;
  v32 = *(v31 + 64);
  v1[45] = OUTLINED_FUNCTION_4_7();
  v33 = type metadata accessor for MediaNLIntent();
  v1[46] = v33;
  OUTLINED_FUNCTION_8_9(v33);
  v35 = *(v34 + 64);
  v1[47] = OUTLINED_FUNCTION_37_0();
  v1[48] = swift_task_alloc();
  v36 = sub_269853F44();
  v1[49] = v36;
  OUTLINED_FUNCTION_5_12(v36);
  v1[50] = v37;
  v39 = *(v38 + 64);
  v1[51] = OUTLINED_FUNCTION_4_7();
  v40 = sub_2698538B4();
  v1[52] = v40;
  OUTLINED_FUNCTION_5_12(v40);
  v1[53] = v41;
  v43 = *(v42 + 64);
  v1[54] = OUTLINED_FUNCTION_37_0();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v44 = sub_2698548D4();
  v1[59] = v44;
  OUTLINED_FUNCTION_5_12(v44);
  v1[60] = v45;
  v47 = *(v46 + 64);
  v1[61] = OUTLINED_FUNCTION_37_0();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v48 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v48, v49, v50);
}

uint64_t sub_269752B20()
{
  v404 = v0;
  if (qword_2803226E0 != -1)
  {
LABEL_84:
    OUTLINED_FUNCTION_0_10();
  }

  v1 = *(v0 + 544);
  v2 = *(v0 + 480);
  v384 = __swift_project_value_buffer(*(v0 + 472), qword_28033D910);
  v387 = *(v2 + 16);
  v387(v1);
  v3 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_28_8();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9_17();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_53_0(&dword_269684000, v5, v6, "DisambigateLiveServicesStrategy.parseDisambiguationResult() called");
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170](v7, v8, v9, v10);
  }

  v11 = *(v0 + 544);
  v13 = *(v0 + 472);
  v12 = *(v0 + 480);
  v14 = *(v0 + 464);
  v15 = *(v0 + 416);
  v16 = *(v0 + 424);
  v17 = *(v0 + 144);

  v18 = *(v12 + 8);
  v18(v11, v13);
  sub_269853844();
  v19 = (*(v16 + 88))(v14, v15);
  if (v19 == *MEMORY[0x277D5C128])
  {
    v381 = v18;
    v20 = *(v0 + 536);
    v397 = *(v0 + 472);
    v21 = *(v0 + 456);
    v22 = *(v0 + 424);
    v23 = *(v0 + 400);
    v24 = *(v0 + 408);
    v26 = *(v0 + 384);
    v25 = *(v0 + 392);
    v27 = *(v0 + 376);
    (*(v22 + 16))(v21, *(v0 + 464), *(v0 + 416));
    v28 = *(v22 + 96);
    v29 = OUTLINED_FUNCTION_44_0();
    v30(v29);
    (*(v23 + 32))(v24, v21, v25);
    (*(v23 + 16))(v26, v24, v25);
    (v387)(v20, v384, v397);
    sub_2697558E8(v26, v27, type metadata accessor for MediaNLIntent);
    v31 = sub_2698548B4();
    v32 = sub_269854F14();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 536);
    v36 = *(v0 + 472);
    v35 = *(v0 + 480);
    v37 = *(v0 + 376);
    if (v33)
    {
      v38 = *(v0 + 368);
      OUTLINED_FUNCTION_27_2();
      v39 = OUTLINED_FUNCTION_40_2();
      v403[0] = v39;
      *v25 = 136315138;
      OUTLINED_FUNCTION_5_23();
      sub_269755944(v40, 255, v41);
      v42 = sub_269855544();
      v398 = v34;
      v44 = v43;
      OUTLINED_FUNCTION_3_19();
      sub_2696FD654(v37, v45);
      v46 = sub_26974F520(v42, v44, v403);

      *(v25 + 4) = v46;
      _os_log_impl(&dword_269684000, v31, v32, "Parsing from NLv3 intent: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170](v47, v48, v49, v50);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170](v51, v52, v53, v54);

      v55 = v398;
    }

    else
    {

      OUTLINED_FUNCTION_3_19();
      sub_2696FD654(v37, v72);
      v55 = v34;
    }

    v381(v55, v36);
    if (qword_280322580 != -1)
    {
      OUTLINED_FUNCTION_7_17();
    }

    v73 = *(v0 + 384);
    v74 = *(v0 + 368);
    OUTLINED_FUNCTION_5_23();
    sub_269755944(v75, 255, v76);
    sub_269853D54();
    v67 = *(v0 + 72);
    if (v67)
    {
      v78 = *(v0 + 400);
      v77 = *(v0 + 408);
      v79 = *(v0 + 384);
      v80 = *(v0 + 392);
      *(v0 + 80) = *(v0 + 64);
      *(v0 + 88) = v67;
      OUTLINED_FUNCTION_20_5();
      *(v0 + 96) = v81;
      *(v0 + 104) = v82;
      *(v0 + 112) = 0;
      *(v0 + 120) = 0xE000000000000000;
      sub_269693054();
      v83 = OUTLINED_FUNCTION_23_4();
      v85 = v84;

      OUTLINED_FUNCTION_3_19();
      sub_2696FD654(v79, v86);
      (*(v78 + 8))(v77, v80);
      goto LABEL_19;
    }

    v125 = *(v0 + 464);
    v126 = *(v0 + 416);
    v127 = *(v0 + 424);
    v129 = *(v0 + 400);
    v128 = *(v0 + 408);
    v131 = *(v0 + 384);
    v130 = *(v0 + 392);
    sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_5_14(v132, 11);
    OUTLINED_FUNCTION_43_1(v133);
    OUTLINED_FUNCTION_3_19();
    sub_2696FD654(v131, v134);
    v135 = *(v129 + 8);
    v136 = OUTLINED_FUNCTION_44_0();
    v137(v136);
    v138 = *(v127 + 8);
    v139 = OUTLINED_FUNCTION_7_16();
    goto LABEL_59;
  }

  if (v19 == *MEMORY[0x277D5C150])
  {
    v56 = *(v0 + 464);
    v58 = *(v0 + 424);
    v57 = *(v0 + 432);
    v59 = *(v0 + 416);
    v60 = *(v0 + 208);
    v11 = *(v0 + 216);
    v61 = *(v0 + 200);
    v62 = OUTLINED_FUNCTION_18_6(v58);
    v63(v62);
    v64 = *(v58 + 96);
    v65 = OUTLINED_FUNCTION_7_16();
    v66(v65);
    v68 = *(v60 + 32);
    v67 = v60 + 32;
    v68(v11, v57, v61);
    if (sub_269853884() == 0xD00000000000002CLL && 0x800000026987A070 == v69)
    {
    }

    else
    {
      v71 = sub_269855584();

      if ((v71 & 1) == 0)
      {
        (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
LABEL_56:
        v226 = *(v0 + 504);
        v227 = OUTLINED_FUNCTION_25_6();
        v228(v227);
        v229 = sub_2698548B4();
        v230 = sub_269854F14();
        if (os_log_type_enabled(v229, v230))
        {
          OUTLINED_FUNCTION_9_17();
          v231 = swift_slowAlloc();
          OUTLINED_FUNCTION_30_2(v231);
          _os_log_impl(&dword_269684000, v229, v230, "PlayLiveServiceDisambiguationStrategy.parseDisambiguationResult() received an unexpected parse", v11, 2u);
          OUTLINED_FUNCTION_8_25();
          MEMORY[0x26D647170](v232, v233, v234, v235);
        }

        v236 = *(v0 + 504);
        v237 = *(v0 + 472);
        v238 = *(v0 + 480);
        v239 = *(v0 + 464);
        v240 = *(v0 + 416);
        v241 = *(v0 + 424);

        v242 = OUTLINED_FUNCTION_22_3();
        (v18)(v242);
        sub_2696BAE9C();
        OUTLINED_FUNCTION_30_1();
        OUTLINED_FUNCTION_5_14(v243, 13);
        OUTLINED_FUNCTION_43_1(v244);
        v245 = *(v241 + 8);
        v139 = OUTLINED_FUNCTION_44_0();
LABEL_59:
        v140(v139);
        goto LABEL_69;
      }
    }

    v163 = *(v0 + 512);
    v164 = OUTLINED_FUNCTION_25_6();
    v165(v164);
    v166 = sub_2698548B4();
    sub_269854F14();
    OUTLINED_FUNCTION_28_8();
    if (os_log_type_enabled(v166, v167))
    {
      OUTLINED_FUNCTION_9_17();
      v168 = swift_slowAlloc();
      *v168 = 0;
      _os_log_impl(&dword_269684000, v166, v11, "PlayLiveServiceDisambiguationStrategy.parseDisambiguationResult() taking liveServiceId from com.apple.siri.video.PlayLiveServiceDisambiguationStrategy", v168, 2u);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170](v169, v170, v171, v172);
    }

    v173 = *(v0 + 512);
    v174 = *(v0 + 472);
    v175 = *(v0 + 480);
    v176 = *(v0 + 216);

    v177 = OUTLINED_FUNCTION_22_3();
    (v18)(v177);
    v178 = sub_269853894();
    v179 = *(v0 + 208);
    v180 = *(v0 + 216);
    v181 = *(v0 + 200);
    if (v178)
    {
      sub_26981CFD4(0x696669746E656469, 0xEA00000000007265, v178);

      (*(v179 + 8))(v180, v181);
      if (*(v0 + 40))
      {
        if (swift_dynamicCast())
        {
          v381 = v18;
          v83 = *(v0 + 48);
          v85 = *(v0 + 56);
          goto LABEL_19;
        }

LABEL_67:
        (*(*(v0 + 424) + 8))(*(v0 + 464), *(v0 + 416));
        sub_2696BAE9C();
        OUTLINED_FUNCTION_30_1();
        OUTLINED_FUNCTION_5_14(v265, 11);
LABEL_68:
        OUTLINED_FUNCTION_43_1(v161);
        goto LABEL_69;
      }
    }

    else
    {
      (*(v179 + 8))(*(v0 + 216), *(v0 + 200));
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    sub_26969B0C0(v0 + 16, &qword_280322F88, qword_26985AB90);
    goto LABEL_67;
  }

  if (v19 == *MEMORY[0x277D5C140])
  {
    v381 = v18;
    v97 = *(v0 + 464);
    v98 = *(v0 + 448);
    v99 = *(v0 + 424);
    v101 = *(v0 + 352);
    v100 = *(v0 + 360);
    v102 = *(v0 + 344);
    v103 = *(v0 + 272);
    v104 = *(v0 + 264);
    v392 = *(v0 + 256);
    v400 = *(v0 + 280);
    v105 = *(v0 + 248);
    v106 = OUTLINED_FUNCTION_18_6(v99);
    v107(v106);
    v108 = *(v99 + 96);
    v109 = OUTLINED_FUNCTION_7_16();
    v110(v109);
    (*(v101 + 32))(v100, v98, v102);
    sub_269853864();
    sub_2696D3C74();
    (*(v104 + 8))(v103, v392);
    if (__swift_getEnumTagSinglePayload(v105, 1, v400) == 1)
    {
      v111 = *(v0 + 464);
      v112 = *(v0 + 416);
      v113 = *(v0 + 424);
      v115 = *(v0 + 352);
      v114 = *(v0 + 360);
      v116 = *(v0 + 344);
      sub_26969B0C0(*(v0 + 248), &qword_280323360, &unk_26985AB80);
      sub_2696BAE9C();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_5_14(v117, 11);
      OUTLINED_FUNCTION_43_1(v118);
      v119 = *(v115 + 8);
      v120 = OUTLINED_FUNCTION_44_0();
      v121(v120);
      v122 = *(v113 + 8);
      v123 = OUTLINED_FUNCTION_7_16();
      v124(v123);
LABEL_69:
      v266 = *(v0 + 544);
      v267 = *(v0 + 536);
      v268 = *(v0 + 528);
      v269 = *(v0 + 520);
      v271 = *(v0 + 504);
      v270 = *(v0 + 512);
      v273 = *(v0 + 488);
      v272 = *(v0 + 496);
      v274 = *(v0 + 456);
      v275 = *(v0 + 464);
      v348 = *(v0 + 448);
      v350 = *(v0 + 440);
      v352 = *(v0 + 432);
      v354 = *(v0 + 408);
      v356 = *(v0 + 384);
      v358 = *(v0 + 376);
      v360 = *(v0 + 360);
      v362 = *(v0 + 336);
      v364 = *(v0 + 328);
      v367 = *(v0 + 320);
      v371 = *(v0 + 312);
      v375 = *(v0 + 304);
      v377 = *(v0 + 296);
      v382 = *(v0 + 272);
      v385 = *(v0 + 248);
      v388 = *(v0 + 240);
      v390 = *(v0 + 216);
      v395 = *(v0 + 192);

      OUTLINED_FUNCTION_7_7();
      goto LABEL_70;
    }

    v278 = *(v0 + 528);
    v279 = *(v0 + 472);
    v281 = *(v0 + 328);
    v280 = *(v0 + 336);
    v282 = *(v0 + 280);
    v283 = *(v0 + 288);
    (*(v283 + 32))(v280, *(v0 + 248), v282);
    (v387)(v278, v384, v279);
    v284 = *(v283 + 16);
    v284(v281, v280, v282);
    v285 = sub_2698548B4();
    v286 = sub_269854F14();
    v287 = os_log_type_enabled(v285, v286);
    v288 = *(v0 + 528);
    v289 = *(v0 + 472);
    v290 = *(v0 + 480);
    v291 = *(v0 + 328);
    if (v287)
    {
      v292 = *(v0 + 320);
      v378 = *(v0 + 528);
      v294 = *(v0 + 280);
      v293 = *(v0 + 288);
      v372 = *(v0 + 472);
      v295 = OUTLINED_FUNCTION_27_2();
      v368 = swift_slowAlloc();
      v403[0] = v368;
      *v295 = 136315138;
      v284(v292, v291, v294);
      sub_269854AE4();
      v402 = *(v293 + 8);
      v402(v291, v294);
      v296 = OUTLINED_FUNCTION_50_0();
      v299 = sub_26974F520(v296, v297, v298);

      *(v295 + 4) = v299;
      _os_log_impl(&dword_269684000, v285, v286, "Parsing from pegasus result: %s", v295, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v368);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170](v300, v301, v302, v303);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170](v304, v305, v306, v307);

      v308 = v372;
      v309 = v378;
    }

    else
    {
      v318 = *(v0 + 280);
      v317 = *(v0 + 288);

      v402 = *(v317 + 8);
      v402(v291, v318);
      v309 = v288;
      v308 = v289;
    }

    v381(v309, v308);
    v319 = *(v0 + 352);
    v380 = *(v0 + 360);
    v321 = *(v0 + 336);
    v320 = *(v0 + 344);
    v67 = *(v0 + 280);
    v322 = *(v0 + 232);
    v323 = *(v0 + 240);
    v324 = *(v0 + 224);
    sub_269852424();
    v83 = sub_2698520D4();
    v85 = v325;
    (*(v322 + 8))(v323, v324);
    v402(v321, v67);
    (*(v319 + 8))(v380, v320);
  }

  else
  {
    if (v19 != *MEMORY[0x277D5C148])
    {
      goto LABEL_56;
    }

    v182 = *(v0 + 464);
    v183 = *(v0 + 440);
    v184 = *(v0 + 424);
    v185 = OUTLINED_FUNCTION_18_6(v184);
    v186(v185);
    v187 = *(v184 + 96);
    v188 = OUTLINED_FUNCTION_7_16();
    v189(v188);
    v190 = *v183;
    sub_2696D6C54();
    if (!v191)
    {
      v326 = *(v0 + 464);
      v327 = *(v0 + 416);
      v328 = *(v0 + 424);
      sub_2696BAE9C();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_5_14(v329, 11);
      OUTLINED_FUNCTION_43_1(v330);

      (*(v328 + 8))(v326, v327);
      goto LABEL_69;
    }

    v192 = v191;
    v193 = *(v0 + 520);
    v194 = *(v0 + 472);
    v196 = *(v0 + 304);
    v195 = *(v0 + 312);
    v197 = *(v0 + 288);
    v393 = *(v0 + 296);
    v401 = v190;
    v198 = *(v0 + 280);
    sub_269854544();

    v199 = *(v197 + 32);
    v200 = OUTLINED_FUNCTION_44_0();
    v201(v200);
    (v387)(v193, v384, v194);
    v202 = *(v197 + 16);
    v202(v393, v195, v198);
    v203 = sub_2698548B4();
    v204 = sub_269854F14();
    v205 = os_log_type_enabled(v203, v204);
    v206 = *(v0 + 520);
    v207 = *(v0 + 472);
    v394 = *(v0 + 480);
    v381 = v18;
    if (v205)
    {
      v208 = *(v0 + 320);
      v210 = *(v0 + 288);
      v209 = *(v0 + 296);
      v370 = v204;
      v211 = *(v0 + 280);
      OUTLINED_FUNCTION_27_2();
      v374 = v207;
      v366 = OUTLINED_FUNCTION_40_2();
      v403[0] = v366;
      *v206 = 136315138;
      v212 = v209;
      v202(v208, v209, v211);
      OUTLINED_FUNCTION_50_0();
      sub_269854AE4();
      v213 = *(v210 + 8);
      v213(v212, v211);
      v214 = OUTLINED_FUNCTION_22_3();
      v217 = sub_26974F520(v214, v215, v216);

      *(v206 + 4) = v217;
      _os_log_impl(&dword_269684000, v203, v370, "Parsing from pommes result: %s", v206, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v366);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170](v218, v219, v220, v221);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170](v222, v223, v224, v225);

      v381(v206, v374);
    }

    else
    {
      v332 = *(v0 + 288);
      v331 = *(v0 + 296);
      v333 = *(v0 + 280);

      v213 = *(v332 + 8);
      v334 = OUTLINED_FUNCTION_7_16();
      (v213)(v334);
      v18(v206, v207);
    }

    v335 = *(v0 + 312);
    v336 = *(v0 + 280);
    v337 = *(v0 + 232);
    v67 = *(v0 + 240);
    v338 = *(v0 + 224);
    sub_269852424();
    v83 = sub_2698520D4();
    v85 = v339;

    (*(v337 + 8))(v67, v338);
    v340 = OUTLINED_FUNCTION_22_3();
    (v213)(v340);
  }

LABEL_19:
  (*(*(v0 + 424) + 8))(*(v0 + 464), *(v0 + 416));
  v87 = HIBYTE(v85) & 0xF;
  v399 = v85;
  if ((v85 & 0x2000000000000000) == 0)
  {
    v87 = v83 & 0xFFFFFFFFFFFFLL;
  }

  if (!v87)
  {
LABEL_41:
    v141 = *(v0 + 488);
    v142 = OUTLINED_FUNCTION_25_6();
    v143(v142);

    v144 = sub_2698548B4();
    v145 = sub_269854F24();

    v146 = os_log_type_enabled(v144, v145);
    v148 = *(v0 + 480);
    v147 = *(v0 + 488);
    v149 = *(v0 + 472);
    if (v146)
    {
      OUTLINED_FUNCTION_27_2();
      v150 = OUTLINED_FUNCTION_40_2();
      v403[0] = v150;
      *v67 = 136315138;
      v151 = sub_26974F520(v83, v399, v403);

      *(v67 + 4) = v151;
      _os_log_impl(&dword_269684000, v144, v145, "No live service matched the selected identifier: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v150);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170](v152, v153, v154, v155);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170](v156, v157, v158, v159);
    }

    else
    {
    }

    v160 = OUTLINED_FUNCTION_22_3();
    (v381)(v160);
    sub_2696BAE9C();
    v161 = OUTLINED_FUNCTION_30_1();
    *(v162 + 8) = 0;
    *(v162 + 16) = 0;
    *v162 = 3;
    *(v162 + 24) = 3;
    goto LABEL_68;
  }

  v88 = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324048, &qword_26985E798);
  v89 = sub_269853544();
  v67 = sub_26975004C(v89);
  for (i = 0; ; ++i)
  {
    if (v67 == i)
    {

      goto LABEL_41;
    }

    if ((v89 & 0xC000000000000001) != 0)
    {
      v91 = MEMORY[0x26D646120](i, v89);
    }

    else
    {
      if (i >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }

      v91 = *(v89 + 8 * i + 32);
    }

    v92 = v91;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v93 = sub_26973F87C(v91);
    if (!v94)
    {
      goto LABEL_34;
    }

    if (v93 == v83 && v94 == v399)
    {
      break;
    }

    v96 = sub_269855584();

    if (v96)
    {
      goto LABEL_61;
    }

LABEL_34:
  }

LABEL_61:

  v246 = *(v0 + 496);
  v247 = *(v0 + 472);
  v248 = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324050, &qword_26985E7A0);
  v249 = sub_2698536B4();
  [v249 setLiveService_];

  (v387)(v246, v384, v247);
  v250 = sub_2698548B4();
  v251 = sub_269854F14();
  if (os_log_type_enabled(v250, v251))
  {
    OUTLINED_FUNCTION_9_17();
    v252 = swift_slowAlloc();
    *v252 = 0;
    _os_log_impl(&dword_269684000, v250, v251, "Populating the intent with the selected live service", v252, 2u);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170](v253, v254, v255, v256);
  }

  v257 = *(v0 + 496);
  v258 = *(v0 + 472);
  v259 = *(v0 + 480);
  v260 = *(v0 + 160);
  v261 = *(v0 + 168);

  v381(v257, v258);
  __swift_project_boxed_opaque_existential_1((v261 + 16), *(v261 + 40));
  *(v0 + 128) = type metadata accessor for PlayLiveServiceIntent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324068, &unk_26985E7B0);
  sub_269854AE4();
  sub_2697B22A4();

  v262 = sub_2698536B4();
  v263 = [v262 liveService];

  v264 = 0;
  if (v263)
  {
    v264 = type metadata accessor for LiveService();
  }

  else
  {
    v403[1] = 0;
    v403[2] = 0;
  }

  v310 = *(v0 + 544);
  v311 = *(v0 + 536);
  v341 = *(v0 + 528);
  v342 = *(v0 + 520);
  v343 = *(v0 + 512);
  v344 = *(v0 + 504);
  v345 = *(v0 + 496);
  v346 = *(v0 + 488);
  v347 = *(v0 + 464);
  v349 = *(v0 + 456);
  v351 = *(v0 + 448);
  v353 = *(v0 + 440);
  v355 = *(v0 + 432);
  v357 = *(v0 + 408);
  v359 = *(v0 + 384);
  v361 = *(v0 + 376);
  v363 = *(v0 + 360);
  v365 = *(v0 + 336);
  v369 = *(v0 + 328);
  v373 = *(v0 + 320);
  v376 = *(v0 + 312);
  v379 = *(v0 + 304);
  v383 = *(v0 + 296);
  v386 = *(v0 + 272);
  v389 = *(v0 + 248);
  v391 = *(v0 + 240);
  v396 = *(v0 + 216);
  v313 = *(v0 + 184);
  v312 = *(v0 + 192);
  v403[0] = v263;
  v314 = *(v0 + 176);
  v403[3] = v264;
  v315 = *(v0 + 160);
  v316 = *(v0 + 136);
  sub_2698536B4();
  sub_269853334();
  sub_269853424();

  (*(v313 + 8))(v312, v314);

  OUTLINED_FUNCTION_7_7();
LABEL_70:

  return v276();
}

uint64_t sub_26975408C()
{
  OUTLINED_FUNCTION_2_7();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v5 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v5);
  v7 = *(v6 + 64);
  v1[13] = OUTLINED_FUNCTION_4_7();
  v8 = sub_269853634();
  v1[14] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[15] = v9;
  v11 = *(v10 + 64);
  v1[16] = OUTLINED_FUNCTION_4_7();
  v12 = type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  OUTLINED_FUNCTION_8_9(v12);
  v14 = *(v13 + 64);
  v1[17] = OUTLINED_FUNCTION_4_7();
  v15 = sub_269853234();
  v1[18] = v15;
  OUTLINED_FUNCTION_5_12(v15);
  v1[19] = v16;
  v18 = *(v17 + 64);
  v1[20] = OUTLINED_FUNCTION_4_7();
  v19 = sub_2698548D4();
  v1[21] = v19;
  OUTLINED_FUNCTION_5_12(v19);
  v1[22] = v20;
  v22 = *(v21 + 64);
  v1[23] = OUTLINED_FUNCTION_37_0();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_269754224()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = v0[25];
  v2 = v0[22];
  __swift_project_value_buffer(v0[21], qword_28033D910);
  (*(v2 + 16))(v1);
  v3 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_28_8();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9_17();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_53_0(&dword_269684000, v5, v6, "DisambigateLiveServicesStrategy.makePromptForDisambiguation() called");
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v7 = v0[25];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  v11 = v0[10];
  v12 = v0[11];

  v68 = *(v8 + 8);
  v68(v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324048, &qword_26985E798);
  sub_269853534();
  sub_269836BCC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324050, &qword_26985E7A0);
  sub_2698536C4();
  v13 = OUTLINED_FUNCTION_15_14();
  v0[26] = v13;

  v14 = sub_26975004C(v13);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v16 = v14;
    v69 = MEMORY[0x277D84F90];
    result = sub_269815304(0, v14 & ~(v14 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      return result;
    }

    v18 = 0;
    v15 = v69;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x26D646120](v18, v13);
      }

      else
      {
        v19 = *(v13 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = [v20 name];
      if (v21)
      {
        v22 = v21;
        v23 = sub_269854A94();
        v25 = v24;
      }

      else
      {

        v23 = 0;
        v25 = 0;
      }

      v27 = *(v69 + 16);
      v26 = *(v69 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_269815304(v26 > 1, v27 + 1, 1);
      }

      ++v18;
      *(v69 + 16) = v27 + 1;
      v28 = v69 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
    }

    while (v16 != v18);
  }

  v29 = v0;
  v30 = v0[12];
  sub_2697F238C(v15);
  v32 = *(v31 + 16);

  v33 = *(v30 + 184);
  if (v32 == 1)
  {
    sub_269830114();
    if (!v35)
    {
      v37 = v29 + 24;
      v36 = v29[24];
      v38 = v29[21];

      v39 = OUTLINED_FUNCTION_49_4();
      v40(v39);
      v41 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_28_8();
      if (os_log_type_enabled(v41, v42))
      {
        OUTLINED_FUNCTION_9_17();
        v43 = swift_slowAlloc();
        *v43 = 0;
LABEL_27:
        _os_log_impl(&dword_269684000, v41, v13, v44, v43, 2u);
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  else
  {
    sub_269830114();
    if (!v35)
    {
      v37 = v29 + 23;
      v47 = v29[23];
      v48 = v29[21];

      v49 = OUTLINED_FUNCTION_49_4();
      v50(v49);
      v41 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_28_8();
      if (os_log_type_enabled(v41, v51))
      {
        OUTLINED_FUNCTION_9_17();
        v43 = swift_slowAlloc();
        *v43 = 0;
        goto LABEL_27;
      }

LABEL_28:
      v52 = *v37;
      v53 = v29[21];
      v54 = v29[22];

      v55 = OUTLINED_FUNCTION_22_3();
      (v68)(v55);
      sub_2696BAE9C();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_5_14(v56, 7);
      swift_willThrow();
      v58 = v29[24];
      v57 = v29[25];
      v59 = v29[23];
      v60 = v29[19];
      v61 = v29[20];
      v64 = v29 + 17;
      v63 = v29[17];
      v62 = v64[1];
      v65 = OUTLINED_FUNCTION_48_3(v60);
      v66(v65);

      OUTLINED_FUNCTION_7_7();

      return v67();
    }
  }

  v29[27] = v35;
  v29[7] = v34;
  v29[8] = v35;
  v45 = *__swift_project_boxed_opaque_existential_1((v29[12] + 96), *(v29[12] + 120));
  v46 = swift_task_alloc();
  v29[28] = v46;
  *v46 = v29;
  v46[1] = sub_26975478C;

  return sub_26977F2C4(0xD000000000000017, 0x800000026987D590);
}

uint64_t sub_26975478C(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v8 = *(v7 + 224);
  v9 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;
  v5[29] = v1;

  if (v1)
  {
    v11 = v5[26];
    v12 = v5[27];

    v13 = sub_269754CE8;
  }

  else
  {
    v14 = v5[7];
    v5[30] = a1;
    v5[31] = v14;
    v13 = sub_2697548B4;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_2697548B4()
{
  v1 = v0[30];
  v2 = v0[20];
  v3 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  sub_26973ED78(v0[26], v0[31], v0[27], v3);

  sub_269852E84();
  *(swift_task_alloc() + 16) = v2;
  sub_2698535C4();

  v6 = v5[21];
  v7 = v5[22];
  __swift_project_boxed_opaque_existential_1(v5 + 18, v6);
  v0[5] = type metadata accessor for VideoDataModels(0);
  v0[6] = sub_269755944(&qword_280323A28, 255, type metadata accessor for VideoDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2697558E8(v3, boxed_opaque_existential_1, type metadata accessor for VideoDataModels.DisambiguateItemsModel);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v9 = swift_allocObject();
  v0[32] = v9;
  *(v9 + 16) = xmmword_2698590C0;
  *(v9 + 32) = v1;
  v10 = *(MEMORY[0x277D5BE38] + 4);
  v11 = v1;
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = sub_269754ACC;
  v13 = v0[16];
  v14 = v0[9];

  return MEMORY[0x2821BB468](v14, v0 + 2, v9, v13, v6, v7);
}

uint64_t sub_269754ACC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269754BCC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = *(v0 + 112);
  v15 = *(v0 + 184);
  v16 = *(v0 + 104);

  (*(v7 + 8))(v8, v9);
  sub_2696FD654(v6, type metadata accessor for VideoDataModels.DisambiguateItemsModel);
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_44_0();
  v12(v11);

  OUTLINED_FUNCTION_7_7();

  return v13();
}

uint64_t sub_269754CE8()
{
  v1 = v0[29];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = OUTLINED_FUNCTION_48_3(v0[19]);
  v9(v8);

  OUTLINED_FUNCTION_7_7();

  return v10();
}

uint64_t sub_269754DB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_269852F34();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  sub_2698535F4();
  sub_269853624();
  v12 = sub_269853234();
  (*(*(v12 - 8) + 16))(v11, a2, v12);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_269853604();
  sub_2698535E4();
  (*(v4 + 104))(v7, *MEMORY[0x277D5BC50], v3);
  return sub_2698535D4();
}

uint64_t sub_269754F68()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_2696D1E70(v0 + 96);

  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  v1 = *(v0 + 184);

  return v0;
}

uint64_t sub_269754FB0()
{
  sub_269754F68();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

void sub_269755008()
{
  type metadata accessor for PlayLiveServiceDisambiguationStrategy();

  JUMPOUT(0x26D643790);
}

uint64_t sub_269755074(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2696F2974;

  return sub_2697524A8();
}

uint64_t sub_26975510C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DAF80;

  return sub_2697526EC();
}

uint64_t sub_2697551D0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_26975408C();
}

uint64_t sub_269755284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B588] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for PlayLiveServiceDisambiguationStrategy();
  *v11 = v5;
  v11[1] = sub_2696DAF80;

  return MEMORY[0x2821B9F38](a1, a2, a3, v12, a5);
}

uint64_t sub_269755350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B598] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for PlayLiveServiceDisambiguationStrategy();
  *v11 = v5;
  v11[1] = sub_2696DAF80;

  return MEMORY[0x2821B9F48](a1, a2, a3, v12, a5);
}

uint64_t sub_26975541C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B590] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PlayLiveServiceDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9F40](a1, a2, v10, a4);
}

uint64_t sub_2697554E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B5A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PlayLiveServiceDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9F58](a1, a2, v10, a4);
}

uint64_t sub_2697555A4()
{
  type metadata accessor for PlayLiveServiceDisambiguationStrategy();

  return sub_2698528E4();
}

uint64_t sub_2697555F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5C0B0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for PlayLiveServiceDisambiguationStrategy();
  *v13 = v6;
  v13[1] = sub_2696DAF80;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2697556CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for PlayLiveServiceDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_2696DAF80;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

unint64_t sub_2697557FC()
{
  result = qword_280324038;
  if (!qword_280324038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280324040, qword_26985E6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324038);
  }

  return result;
}

uint64_t sub_269755860(void (*a1)(void))
{
  a1();

  return sub_269855724();
}

unint64_t sub_2697558A4()
{
  result = qword_280324058;
  if (!qword_280324058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280324058);
  }

  return result;
}

uint64_t sub_2697558E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_50_0();
  v8(v7);
  return a2;
}

uint64_t sub_269755944(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_26975598C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = &type metadata for CoreAnalyticsService;
  v23[4] = &xmmword_287A41610;
  v8 = type metadata accessor for BaseDialogProvider();
  v22[3] = v8;
  v22[4] = &off_287A3DBA0;
  v22[0] = a2;
  v20 = sub_269853264();
  v21 = MEMORY[0x277D5BD58];
  *&v19 = a4;
  type metadata accessor for PlayLiveServiceDisambiguationStrategy();
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v23, &type metadata for CoreAnalyticsService);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v22, v8);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v9[5] = &type metadata for CoreAnalyticsService;
  v9[6] = &xmmword_287A41610;
  v9[15] = v8;
  v9[16] = &off_287A3DBA0;
  v9[12] = v15;
  sub_2696A73F8(a1, (v9 + 7));
  v9[17] = a3;
  sub_26968E5D4(&v19, (v9 + 18));
  type metadata accessor for LocUtil();
  v16 = swift_allocObject();
  sub_26968E5D4(a1, v16 + 16);
  v9[23] = v16;
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return v9;
}

uint64_t OUTLINED_FUNCTION_15_14()
{

  return sub_269750C44(type metadata accessor for LiveService);
}

uint64_t OUTLINED_FUNCTION_17_11()
{
  result = v0;
  v3 = *(v1 - 224);
  v4 = *(v1 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_11@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 224);
  v4 = *(v1 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_6()
{
  v3 = *(v1 + 472);
  result = v0;
  v5 = *(v2 - 160);
  v6 = *(v2 - 152);
  v7 = *(v2 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1)
{
  *(v1 - 128) = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_44_3()
{
  result = *(v0 - 256);
  v3 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_48_3@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 128);
  v4 = *(v1 + 104);
  v5 = *(a1 + 8);
  return v2;
}

uint64_t OUTLINED_FUNCTION_51_3()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_53_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_269755CB0(uint64_t a1, void *a2)
{
  v36 = a2;
  v3 = sub_269852BE4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = *(v2 + 176);
  if (!v16)
  {
    goto LABEL_4;
  }

  v17 = v16;
  if (sub_269792920())
  {

LABEL_4:
    if (qword_2803226E0 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v8, qword_28033D910);
    (*(v9 + 16))(v13, v18, v8);
    v19 = sub_2698548B4();
    v20 = sub_269854F14();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_269684000, v19, v20, "makeIntentExecutionBehavior: no eligible remote execution device found. Continue on local device.", v21, 2u);
      MEMORY[0x26D647170](v21, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    sub_269852C54();
    v22 = qword_2803224A0;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = qword_28033D700;
    type metadata accessor for PlayLiveServiceIntent();
    v24 = v23;
    v25 = v36;
    sub_269852BD4();
    v26 = sub_269852C44();
    (*(v4 + 8))(v7, v3);
    return v26;
  }

  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v8, qword_28033D910);
  (*(v9 + 16))(v15, v27, v8);
  v28 = v17;
  v29 = sub_2698548B4();
  v30 = sub_269854F14();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v16;
    v33 = v28;
    _os_log_impl(&dword_269684000, v29, v30, "makeIntentExecutionBehavior: handle on targetDevice: %@", v31, 0xCu);
    sub_2696CB05C(v32, &qword_280324D50, &qword_26985D530);
    MEMORY[0x26D647170](v32, -1, -1);
    MEMORY[0x26D647170](v31, -1, -1);
  }

  (*(v9 + 8))(v15, v8);
  sub_269852C54();
  v26 = sub_269852C34();

  return v26;
}

uint64_t sub_269756118(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_26_11(a1, a2);
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = OUTLINED_FUNCTION_5_24();
  v11 = OUTLINED_FUNCTION_8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_12();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v44 - v18;
  v20 = *(v2 + 424);
  if (!v20)
  {
    goto LABEL_4;
  }

  v21 = v20;
  v22 = sub_269792920();
  if (v22)
  {

LABEL_4:
    if (qword_2803226E0 != -1)
    {
      v17 = OUTLINED_FUNCTION_0_10();
    }

    OUTLINED_FUNCTION_7_28(v17, qword_28033D910);
    v23(v3);
    v24 = sub_2698548B4();
    v25 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v25))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_34_5(&dword_269684000, v26, v27, "makeIntentExecutionBehavior: no eligible remote execution device found. Continue on local device.");
      OUTLINED_FUNCTION_10();
    }

    (*(v13 + 8))(v3, v10);
    sub_269852C54();
    v28 = qword_2803224A8;

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = qword_28033D708;
    v30 = type metadata accessor for PlayLiveServiceIntent();
    v31 = v29;
    v32 = v44[1];
    OUTLINED_FUNCTION_17_12();
    sub_269852BD4();
    sub_269852C44();
    v33 = OUTLINED_FUNCTION_30_8();
    v34(v33);
    return v30;
  }

  if (qword_2803226E0 != -1)
  {
    v22 = OUTLINED_FUNCTION_0_10();
  }

  OUTLINED_FUNCTION_7_28(v22, qword_28033D910);
  v35(v19);
  v36 = v21;
  v37 = sub_2698548B4();
  v38 = sub_269854F14();

  if (os_log_type_enabled(v37, v38))
  {
    swift_slowAlloc();
    v39 = OUTLINED_FUNCTION_25_7();
    *v7 = 138412290;
    *(v7 + 4) = v36;
    *v39 = v20;
    v40 = v36;
    OUTLINED_FUNCTION_13_16(&dword_269684000, v41, v42, "makeIntentExecutionBehavior: handle on targetDevice: %@");
    sub_2696CB05C(v39, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_31_6();
    OUTLINED_FUNCTION_12_1();
  }

  (*(v13 + 8))(v19, v10);
  sub_269852C54();
  v30 = sub_269852C34();

  return v30;
}

uint64_t sub_2697564F0(uint64_t a1, uint64_t a2, uint64_t *a3, void **a4, void (*a5)(void), uint64_t a6)
{
  v45[1] = a6;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v8 = OUTLINED_FUNCTION_26_11(a1, a2);
  v9 = OUTLINED_FUNCTION_8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = OUTLINED_FUNCTION_5_24();
  v15 = OUTLINED_FUNCTION_8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v45 - v23;
  v25 = *(v6 + 16);
  if (!v25)
  {
    goto LABEL_4;
  }

  v26 = v25;
  if (sub_269792920())
  {

LABEL_4:
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v27 = __swift_project_value_buffer(v14, qword_28033D910);
    (*(v17 + 16))(v22, v27, v14);
    v28 = sub_2698548B4();
    v29 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v29))
    {
      v30 = OUTLINED_FUNCTION_16_2();
      *v30 = 0;
      _os_log_impl(&dword_269684000, v28, v29, "makeIntentExecutionBehavior: no eligible remote execution device found. Continue on local device.", v30, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v17 + 8))(v22, v14);
    sub_269852C54();
    v31 = *v46;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = *v47;
    v48(0);
    v33 = v32;
    v34 = v49;
    OUTLINED_FUNCTION_17_12();
    sub_269852BD4();
    v35 = sub_269852C44();
    (*(v11 + 8))(v7, v8);
    return v35;
  }

  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v36 = __swift_project_value_buffer(v14, qword_28033D910);
  (*(v17 + 16))(v24, v36, v14);
  v37 = v26;
  v38 = sub_2698548B4();
  v39 = sub_269854F14();

  if (os_log_type_enabled(v38, v39))
  {
    swift_slowAlloc();
    v40 = OUTLINED_FUNCTION_25_7();
    *v22 = 138412290;
    *(v22 + 4) = v37;
    *v40 = v25;
    v41 = v37;
    OUTLINED_FUNCTION_13_16(&dword_269684000, v42, v43, "makeIntentExecutionBehavior: handle on targetDevice: %@");
    sub_2696CB05C(v40, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_31_6();
    OUTLINED_FUNCTION_12_1();
  }

  (*(v17 + 8))(v24, v14);
  sub_269852C54();
  v35 = sub_269852C34();

  return v35;
}

uint64_t sub_2697568DC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_26_11(a1, a2);
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = OUTLINED_FUNCTION_5_24();
  v11 = OUTLINED_FUNCTION_8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_12();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v44 - v18;
  v20 = *(v2 + 184);
  if (!v20)
  {
    goto LABEL_4;
  }

  v21 = v20;
  v22 = sub_269792920();
  if (v22)
  {

LABEL_4:
    if (qword_2803226E0 != -1)
    {
      v17 = OUTLINED_FUNCTION_0_10();
    }

    OUTLINED_FUNCTION_7_28(v17, qword_28033D910);
    v23(v3);
    v24 = sub_2698548B4();
    v25 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v25))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_34_5(&dword_269684000, v26, v27, "makeIntentExecutionBehavior: no eligible remote execution device found. Continue on local device.");
      OUTLINED_FUNCTION_10();
    }

    (*(v13 + 8))(v3, v10);
    sub_269852C54();
    v28 = qword_2803224F0;

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = qword_28033D750;
    v30 = type metadata accessor for WatchSportsEventIntent();
    v31 = v29;
    v32 = v44[1];
    OUTLINED_FUNCTION_17_12();
    sub_269852BD4();
    sub_269852C44();
    v33 = OUTLINED_FUNCTION_30_8();
    v34(v33);
    return v30;
  }

  if (qword_2803226E0 != -1)
  {
    v22 = OUTLINED_FUNCTION_0_10();
  }

  OUTLINED_FUNCTION_7_28(v22, qword_28033D910);
  v35(v19);
  v36 = v21;
  v37 = sub_2698548B4();
  v38 = sub_269854F14();

  if (os_log_type_enabled(v37, v38))
  {
    swift_slowAlloc();
    v39 = OUTLINED_FUNCTION_25_7();
    *v7 = 138412290;
    *(v7 + 4) = v36;
    *v39 = v20;
    v40 = v36;
    OUTLINED_FUNCTION_13_16(&dword_269684000, v41, v42, "makeIntentExecutionBehavior: handle on targetDevice: %@");
    sub_2696CB05C(v39, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_31_6();
    OUTLINED_FUNCTION_12_1();
  }

  (*(v13 + 8))(v19, v10);
  sub_269852C54();
  v30 = sub_269852C34();

  return v30;
}

id sub_269756C44()
{
  if (qword_280322498 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D6F8;
  qword_28033D700 = qword_28033D6F8;

  return v1;
}

uint64_t sub_269756CA8()
{
  v0 = sub_2698548D4();
  v1 = OUTLINED_FUNCTION_8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v8 = __swift_project_value_buffer(v0, qword_28033D910);
  (*(v3 + 16))(v7, v8, v0);
  v9 = sub_2698548B4();
  v10 = sub_269854F14();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_16_2();
    *v11 = 0;
    _os_log_impl(&dword_269684000, v9, v10, "PlayLiveServiceRCHFlowStrategy#actionForInput called", v11, 2u);
    OUTLINED_FUNCTION_31_6();
  }

  (*(v3 + 8))(v7, v0);
  return sub_269853004();
}

uint64_t sub_269756E18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_269852324();
  v3[5] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v3[6] = v5;
  v7 = *(v6 + 64);
  v3[7] = OUTLINED_FUNCTION_37_0();
  v3[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233C8, &unk_26985E990);
  OUTLINED_FUNCTION_8_9(v8);
  v10 = *(v9 + 64);
  v3[9] = OUTLINED_FUNCTION_37_0();
  v3[10] = swift_task_alloc();
  v11 = sub_269852084();
  v3[11] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v3[12] = v12;
  v14 = *(v13 + 64);
  v3[13] = OUTLINED_FUNCTION_37_0();
  v3[14] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803234A8, &unk_26985A8E8);
  OUTLINED_FUNCTION_8_9(v15);
  v17 = *(v16 + 64);
  v3[15] = OUTLINED_FUNCTION_37_0();
  v3[16] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324088, &unk_26985E9A0);
  OUTLINED_FUNCTION_8_9(v18);
  v20 = *(v19 + 64);
  v3[17] = OUTLINED_FUNCTION_37_0();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v21 = sub_269851EF4();
  v3[21] = v21;
  OUTLINED_FUNCTION_5_12(v21);
  v3[22] = v22;
  v24 = *(v23 + 64);
  v3[23] = OUTLINED_FUNCTION_4_7();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v25);
  v27 = *(v26 + 64);
  v3[24] = OUTLINED_FUNCTION_37_0();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v28 = sub_269853874();
  v3[28] = v28;
  OUTLINED_FUNCTION_5_12(v28);
  v3[29] = v29;
  v31 = *(v30 + 64);
  v3[30] = OUTLINED_FUNCTION_4_7();
  v32 = type metadata accessor for MediaNLIntent();
  OUTLINED_FUNCTION_8_9(v32);
  v34 = *(v33 + 64);
  v3[31] = OUTLINED_FUNCTION_4_7();
  v35 = sub_269853F44();
  v3[32] = v35;
  OUTLINED_FUNCTION_5_12(v35);
  v3[33] = v36;
  v38 = *(v37 + 64);
  v3[34] = OUTLINED_FUNCTION_4_7();
  v39 = sub_2698538B4();
  v3[35] = v39;
  OUTLINED_FUNCTION_5_12(v39);
  v3[36] = v40;
  v42 = *(v41 + 64);
  v3[37] = OUTLINED_FUNCTION_4_7();
  v43 = sub_2698548D4();
  v3[38] = v43;
  OUTLINED_FUNCTION_5_12(v43);
  v3[39] = v44;
  v46 = *(v45 + 64);
  v3[40] = OUTLINED_FUNCTION_37_0();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269757218, 0, 0);
}

uint64_t sub_269757218()
{
  if (qword_2803226E0 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v1 = v0[45];
    v2 = v0[39];
    v3 = __swift_project_value_buffer(v0[38], qword_28033D910);
    v0[46] = v3;
    v4 = *(v2 + 16);
    v0[47] = v4;
    v0[48] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v244 = v3;
    v247 = v4;
    (v4)(v1);
    v5 = sub_2698548B4();
    v6 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v6))
    {
      v7 = OUTLINED_FUNCTION_16_2();
      *v7 = 0;
      _os_log_impl(&dword_269684000, v5, v6, "PlayLiveService.FlowStrategy.makeIntentFromParse() called", v7, 2u);
      OUTLINED_FUNCTION_12_1();
    }

    v8 = v0[45];
    v10 = v0[38];
    v9 = v0[39];
    v11 = v0[3];

    v12 = *(v9 + 8);
    v0[49] = v12;
    v12(v8, v10);
    v13 = v0[3];
    if (v11)
    {
      v14 = v0[3];
    }

    else
    {
      v14 = [objc_allocWithZone(type metadata accessor for PlayLiveServiceIntent()) init];
    }

    v0[50] = v14;
    v15 = v0[4];
    v16 = v13;
    sub_2696D3780();
    v17 = *(v15 + 176);
    v0[51] = v17;
    if (v17)
    {
      v18 = v0[4];
      sub_269694CBC();
      v19 = v17;
      v20 = sub_269855034();
      [v14 setIsRemoteExecution_];

      __swift_project_boxed_opaque_existential_1((v18 + 136), *(v18 + 160));
      sub_2697AD1E8();
      if (v21)
      {
        v22 = sub_269854A64();
      }

      else
      {
        v22 = 0;
      }

      v23 = v0[4];
      [v14 setCrossDeviceRequestInitiator_];

      sub_269795600(v19);
    }

    v24 = v0[36];
    (*(v24 + 16))(v0[37], v0[2], v0[35]);
    v25 = *(v24 + 88);
    v26 = OUTLINED_FUNCTION_22_10();
    v28 = v27(v26);
    if (v28 == *MEMORY[0x277D5C128])
    {
      v29 = v0[37];
      v30 = v0[34];
      v32 = v0[32];
      v31 = v0[33];
      v33 = v0[31];
      (*(v0[36] + 96))(v29, v0[35]);
      (*(v31 + 32))(v30, v29, v32);
      (*(v31 + 16))(v33, v30, v32);
      sub_2697A22BC();
      sub_2696CC460(v33);
      (*(v31 + 8))(v30, v32);
      goto LABEL_14;
    }

    if (v28 != *MEMORY[0x277D5C140])
    {
      break;
    }

    v228 = v17;
    v235 = v14;
    v231 = v12;
    v49 = v0[37];
    v50 = v0[29];
    v51 = v0[30];
    v53 = v0[27];
    v52 = v0[28];
    v54 = v0[26];
    v55 = v0[22];
    v56 = v0[23];
    v57 = v0[21];
    (*(v0[36] + 96))(v49, v0[35]);
    (*(v50 + 32))(v51, v49, v52);
    sub_269853864();
    sub_2696D3C74();
    (*(v55 + 8))(v56, v57);
    sub_269759358(v53, v54, &qword_280323360, &unk_26985AB80);
    v58 = sub_269852474();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v58);
    v60 = v0[26];
    if (EnumTagSinglePayload == 1)
    {
      sub_2696CB05C(v0[26], &qword_280323360, &unk_26985AB80);
      v12 = v231;
      goto LABEL_60;
    }

    v81 = sub_269852464();
    OUTLINED_FUNCTION_3_14(v58);
    (*(v82 + 8))(v60, v58);
    v83 = *(v81 + 16);
    if (!v83)
    {
LABEL_42:

LABEL_57:
      v115 = v0[16];
      v116 = v0[11];
      v117 = OUTLINED_FUNCTION_32_5();
      __swift_storeEnumTagSinglePayload(v117, v118, v119, v116);
      v12 = v231;
      if (__swift_getEnumTagSinglePayload(v115, 1, v116) == 1)
      {
        sub_2696CB05C(v0[16], &qword_2803234A8, &unk_26985A8E8);
      }

      else
      {
        v120 = v0[20];
        v121 = v0[16];
        v123 = v0[11];
        v122 = v0[12];
        sub_269852014();
        v124 = *(v122 + 8);
        v125 = OUTLINED_FUNCTION_22_10();
        v126(v125);
      }

LABEL_60:
      v128 = v0[19];
      v127 = v0[20];
      v129 = v0[5];
      v130 = OUTLINED_FUNCTION_32_5();
      __swift_storeEnumTagSinglePayload(v130, v131, v132, v129);
      v133 = OUTLINED_FUNCTION_22_10();
      sub_269759358(v133, v134, v135, v136);
      if (__swift_getEnumTagSinglePayload(v128, 1, v129) != 1)
      {
        v167 = v0[29];
        v243 = v0[30];
        v169 = v0[27];
        v168 = v0[28];
        v170 = v0[20];
        v171 = v0[8];
        v173 = v0[5];
        v172 = v0[6];
        (*(v172 + 32))(v171, v0[19], v173);
        v174 = sub_269851F24();
        v14 = v235;
        sub_2697593BC(v174, v175, v235);
        (*(v172 + 8))(v171, v173);
        sub_2696CB05C(v170, &qword_280324088, &unk_26985E9A0);
        sub_2696CB05C(v169, &qword_280323360, &unk_26985AB80);
        (*(v167 + 8))(v243, v168);
        v17 = v228;
        goto LABEL_14;
      }

      v137 = v0[44];
      v138 = v0[38];
      sub_2696CB05C(v0[19], &qword_280324088, &unk_26985E9A0);
      v247(v137, v244, v138);
      v139 = sub_2698548B4();
      sub_269854F24();
      OUTLINED_FUNCTION_21_12();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = OUTLINED_FUNCTION_16_2();
        *v141 = 0;
        _os_log_impl(&dword_269684000, v139, v137, "Unable to get LiveServiceResult from VideoClientComponent", v141, 2u);
        OUTLINED_FUNCTION_12_1();
      }

      v142 = v0[44];
      v143 = v0[38];
      v144 = v0[39];
      v70 = v0[29];
      v145 = v0[30];
      v147 = v0[27];
      v146 = v0[28];
      v148 = v0[20];

      v231(v142, v143);
      sub_2696BAE9C();
      v149 = swift_allocError();
      OUTLINED_FUNCTION_6_25(v149, v150, 11);

      sub_2696CB05C(v148, &qword_280324088, &unk_26985E9A0);
      sub_2696CB05C(v147, &qword_280323360, &unk_26985AB80);
LABEL_64:
      v151 = *(v70 + 8);
      v152 = OUTLINED_FUNCTION_22_10();
      v153(v152);
      goto LABEL_65;
    }

    v84 = 0;
    v85 = v0[12];
    v86 = v81 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v240 = *MEMORY[0x277D39390];
    while (v84 < *(v81 + 16))
    {
      v87 = v0[10];
      (*(v85 + 16))(v0[14], v86 + *(v85 + 72) * v84, v0[11]);
      sub_269852064();
      v88 = sub_269852024();
      if (__swift_getEnumTagSinglePayload(v87, 1, v88) == 1)
      {
        sub_2696CB05C(v0[10], &qword_2803233C8, &unk_26985E990);
      }

      else
      {
        OUTLINED_FUNCTION_31_8();
        v90 = v89;
        if ((*(v91 + 88))() == v240)
        {
          v110 = v0[16];
          v111 = v0[14];
          v112 = v0[11];
          v113 = v0[12];
          v114 = v0[10];

          (*(v90 + 8))(v114, v88);
          (*(v113 + 32))(v110, v111, v112);
          goto LABEL_57;
        }

        (*(v90 + 8))(v0[10], v88);
      }

      ++v84;
      (*(v85 + 8))(v0[14], v0[11]);
      if (v83 == v84)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_80:
    OUTLINED_FUNCTION_0_10();
  }

  v70 = v0[36];
  v71 = v0[37];
  v72 = v0[35];
  if (v28 != *MEMORY[0x277D5C148])
  {
    sub_2696BAE9C();
    v92 = swift_allocError();
    OUTLINED_FUNCTION_6_25(v92, v93, 13);

    goto LABEL_64;
  }

  v73 = *(v70 + 96);
  v74 = OUTLINED_FUNCTION_22_10();
  v75(v74);
  v76 = *v71;
  sub_2696D6C54();
  v237 = v14;
  if (v77)
  {
    v78 = v77;
    v79 = v0[25];
    sub_269854544();

    v80 = 0;
  }

  else
  {
    v80 = 1;
  }

  v95 = v0[24];
  v94 = v0[25];
  v96 = sub_269852474();
  __swift_storeEnumTagSinglePayload(v94, v80, 1, v96);
  sub_269759358(v94, v95, &qword_280323360, &unk_26985AB80);
  v97 = __swift_getEnumTagSinglePayload(v95, 1, v96);
  v98 = v0[24];
  if (v97 == 1)
  {
    sub_2696CB05C(v0[24], &qword_280323360, &unk_26985AB80);
    goto LABEL_74;
  }

  v226 = v76;
  v229 = v17;
  v233 = v12;
  v99 = sub_269852464();
  OUTLINED_FUNCTION_3_14(v96);
  result = (*(v100 + 8))(v98, v96);
  v101 = *(v99 + 16);
  if (!v101)
  {
LABEL_55:

    goto LABEL_70;
  }

  v102 = 0;
  v103 = v0[12];
  v104 = v99 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
  v241 = *MEMORY[0x277D39390];
  while (1)
  {
    if (v102 >= *(v99 + 16))
    {
      __break(1u);
      return result;
    }

    v105 = v0[9];
    (*(v103 + 16))(v0[13], v104 + *(v103 + 72) * v102, v0[11]);
    sub_269852064();
    v106 = sub_269852024();
    if (__swift_getEnumTagSinglePayload(v105, 1, v106) != 1)
    {
      break;
    }

    sub_2696CB05C(v0[9], &qword_2803233C8, &unk_26985E990);
LABEL_54:
    ++v102;
    result = (*(v103 + 8))(v0[13], v0[11]);
    if (v101 == v102)
    {
      goto LABEL_55;
    }
  }

  OUTLINED_FUNCTION_31_8();
  v108 = v107;
  if ((*(v109 + 88))() != v241)
  {
    (*(v108 + 8))(v0[9], v106);
    goto LABEL_54;
  }

  v176 = v0[15];
  v177 = v0[12];
  v178 = v0[13];
  v179 = v0[11];
  v180 = v0[9];

  (*(v108 + 8))(v180, v106);
  (*(v177 + 32))(v176, v178, v179);
LABEL_70:
  v181 = v0[15];
  v182 = v0[11];
  v183 = OUTLINED_FUNCTION_32_5();
  __swift_storeEnumTagSinglePayload(v183, v184, v185, v182);
  v12 = v233;
  if (__swift_getEnumTagSinglePayload(v181, 1, v182) == 1)
  {
    sub_2696CB05C(v0[15], &qword_2803234A8, &unk_26985A8E8);
  }

  else
  {
    v186 = v0[18];
    v187 = v0[15];
    v189 = v0[11];
    v188 = v0[12];
    sub_269852014();
    (*(v188 + 8))(v187, v189);
  }

  v76 = v226;
  v17 = v229;
LABEL_74:
  v191 = v0[17];
  v190 = v0[18];
  v192 = v0[5];
  v193 = OUTLINED_FUNCTION_32_5();
  __swift_storeEnumTagSinglePayload(v193, v194, v195, v192);
  sub_269759358(v190, v191, &qword_280324088, &unk_26985E9A0);
  if (__swift_getEnumTagSinglePayload(v191, 1, v192) == 1)
  {
    v196 = v0[43];
    v197 = v0[38];
    sub_2696CB05C(v0[17], &qword_280324088, &unk_26985E9A0);
    v247(v196, v244, v197);
    v198 = sub_2698548B4();
    sub_269854F24();
    OUTLINED_FUNCTION_21_12();
    if (os_log_type_enabled(v198, v199))
    {
      v200 = OUTLINED_FUNCTION_16_2();
      *v200 = 0;
      _os_log_impl(&dword_269684000, v198, v196, "Unable to get LiveServiceResult from VideoClientComponent", v200, 2u);
      OUTLINED_FUNCTION_31_6();
    }

    v201 = v0[43];
    v203 = v0[38];
    v202 = v0[39];
    v204 = v0[25];
    v205 = v0[18];

    v12(v201, v203);
    sub_2696BAE9C();
    v206 = swift_allocError();
    OUTLINED_FUNCTION_6_25(v206, v207, 11);

    sub_2696CB05C(v205, &qword_280324088, &unk_26985E9A0);
    sub_2696CB05C(v204, &qword_280323360, &unk_26985AB80);
LABEL_65:
    v155 = v0[44];
    v154 = v0[45];
    v156 = v0[42];
    v157 = v0[43];
    v159 = v0[40];
    v158 = v0[41];
    v160 = v0[37];
    v161 = v0[34];
    v163 = v0[30];
    v162 = v0[31];
    v216 = v0[27];
    v217 = v0[26];
    v218 = v0[25];
    v219 = v0[24];
    v220 = v0[23];
    v221 = v0[20];
    v222 = v0[19];
    v223 = v0[18];
    v224 = v0[17];
    v225 = v0[16];
    v227 = v0[15];
    v230 = v0[14];
    v234 = v0[13];
    v238 = v0[10];
    v242 = v0[9];
    v246 = v0[8];
    v249 = v0[7];

    v164 = v0[1];
    OUTLINED_FUNCTION_33_5();

    __asm { BRAA            X1, X16 }
  }

  v208 = v0[25];
  v209 = v0[18];
  v210 = v0[6];
  v211 = v0[7];
  v212 = v0[5];
  (*(v210 + 32))(v211, v0[17], v212);
  v213 = sub_269851F24();
  sub_2697593BC(v213, v214, v237);

  v215 = v212;
  v14 = v237;
  (*(v210 + 8))(v211, v215);
  sub_2696CB05C(v209, &qword_280324088, &unk_26985E9A0);
  sub_2696CB05C(v208, &qword_280323360, &unk_26985AB80);
LABEL_14:
  if (!v17)
  {
LABEL_26:
    v61 = OUTLINED_FUNCTION_4_21();
    v62(v61);
    v63 = sub_2698548B4();
    sub_269854F14();
    OUTLINED_FUNCTION_21_12();
    if (os_log_type_enabled(v63, v64))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_12_19(&dword_269684000, v65, v66, "Finished creating intent from parse");
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_1_22();
    v232 = v0[14];
    v236 = v0[13];
    v239 = v0[10];
    v245 = v0[9];
    v248 = v0[8];
    v250 = v0[7];

    v67 = OUTLINED_FUNCTION_18_13();
    (v17)(v67);

    OUTLINED_FUNCTION_9_18();
    OUTLINED_FUNCTION_33_5();

    __asm { BRAA            X2, X16 }
  }

  v34 = v17;
  if ((sub_269792920() & 1) != 0 || (sub_26974FA44(v14), (v0[52] = v35) == 0))
  {

    goto LABEL_26;
  }

  v247(v0[42], v244, v0[38]);
  v36 = sub_2698548B4();
  v37 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v37))
  {
    v38 = OUTLINED_FUNCTION_16_2();
    *v38 = 0;
    _os_log_impl(&dword_269684000, v36, v37, "Fetching local live service results", v38, 2u);
    OUTLINED_FUNCTION_31_6();
  }

  v39 = v0[42];
  v40 = v0[38];
  v41 = v0[39];
  v42 = v0[4];

  v12(v39, v40);
  v43 = *__swift_project_boxed_opaque_existential_1((v42 + 96), *(v42 + 120));
  v44 = swift_task_alloc();
  v0[53] = v44;
  *v44 = v0;
  v44[1] = sub_269758420;
  OUTLINED_FUNCTION_33_5();

  return sub_2697BEFBC(v45, v46);
}