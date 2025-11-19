uint64_t sub_2697814D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80) - 8) + 64);
  v2[4] = OUTLINED_FUNCTION_4_7();
  v4 = sub_269852474();
  v2[5] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v2[6] = v5;
  v7 = *(v6 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v8 = sub_269851ED4();
  v2[9] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v2[10] = v9;
  v11 = *(v10 + 64);
  v2[11] = OUTLINED_FUNCTION_4_7();
  v12 = sub_269851EF4();
  v2[12] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v2[13] = v13;
  v15 = *(v14 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v16 = sub_269853874();
  v2[16] = v16;
  OUTLINED_FUNCTION_5_12(v16);
  v2[17] = v17;
  v19 = *(v18 + 64);
  v2[18] = OUTLINED_FUNCTION_4_7();
  v20 = sub_2698538B4();
  v2[19] = v20;
  OUTLINED_FUNCTION_5_12(v20);
  v2[20] = v21;
  v23 = *(v22 + 64);
  v2[21] = OUTLINED_FUNCTION_4_7();
  v24 = sub_2698548D4();
  v2[22] = v24;
  OUTLINED_FUNCTION_5_12(v24);
  v2[23] = v25;
  v27 = *(v26 + 64);
  v2[24] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_26978175C, 0, 0);
}

uint64_t sub_26978175C()
{
  v1 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v3 = v0[23];
  v2 = v1[24];
  v4 = v1[22];
  v5 = __swift_project_value_buffer(v4, qword_28033D910);
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_269684000, v6, v7, "RemoveFromWatchListFlowStrategy.makeIntentFromParse() called", v8, 2u);
    MEMORY[0x26D647170](v8, -1, -1);
  }

  v10 = v1[23];
  v9 = v1[24];
  v11 = v1[22];
  v12 = v1[3];

  (*(v10 + 8))(v9, v11);
  if (v12)
  {
    v13 = v1[3];
  }

  else
  {
    v13 = [objc_allocWithZone(type metadata accessor for RemoveFromWatchListIntent()) init];
  }

  v15 = v1[20];
  v14 = v1[21];
  v16 = v1[19];
  (*(v15 + 16))(v14, v1[2], v16);
  v17 = (*(v15 + 88))(v14, v16);
  if (v17 == *MEMORY[0x277D5C140])
  {
    v67 = v13;
    v18 = v1 + 18;
    v19 = v1[18];
    v20 = v1[21];
    v21 = v1[17];
    v22 = v1[15];
    v23 = v1[13];
    v61 = v1[16];
    v62 = v1[12];
    v25 = v1[10];
    v24 = v1[11];
    v65 = v1[14];
    v66 = v1[5];
    v26 = v1[3];
    v63 = v1[9];
    v64 = v1[4];
    (*(v1[20] + 96))(v20, v1[19]);
    (*(v21 + 32))(v19, v20, v61);
    v27 = v26;
    sub_269853864();
    sub_269851EE4();
    v28 = *(v23 + 8);
    v28(v22, v62);
    sub_269851EB4();
    (*(v25 + 8))(v24, v63);
    sub_269853864();
    sub_2696D3C74();
    v28(v65, v62);
    if (__swift_getEnumTagSinglePayload(v64, 1, v66) == 1)
    {
      v30 = v1[17];
      v29 = v1[18];
      v31 = v1[16];
      v32 = v1[4];

      sub_2696CC3F8(v32);
      sub_2696BAE9C();
      swift_allocError();
      OUTLINED_FUNCTION_3_24(v33, 11);

      (*(v30 + 8))(v29, v31);
LABEL_19:
      v58 = v1[24];
      OUTLINED_FUNCTION_4_19();

      v59 = v1[1];

      return v59();
    }

    v46 = v1[8];
    v47 = v1[5];
    v48 = v1[6];
    (*(v48 + 32))(v46, v1[4], v47);
    sub_2697A27C0();

    (*(v48 + 8))(v46, v47);
    v45 = v1 + 16;
    v44 = v1 + 17;
  }

  else
  {
    v34 = v1[20];
    v35 = v1[21];
    v36 = v1[19];
    v37 = v1[3];
    if (v17 != *MEMORY[0x277D5C148])
    {
      sub_2696BAE9C();
      swift_allocError();
      OUTLINED_FUNCTION_3_24(v56, 13);
      v57 = v37;

      (*(v34 + 8))(v35, v36);
      goto LABEL_19;
    }

    (*(v34 + 96))(v1[21], v1[19]);
    v38 = *v35;
    v39 = v37;
    sub_2696D6C54();
    if (!v40)
    {
      sub_2696BAE9C();
      swift_allocError();
      OUTLINED_FUNCTION_3_24(v60, 11);

      goto LABEL_19;
    }

    v41 = v40;
    v18 = v1 + 7;
    v42 = v1[7];
    sub_269854544();
    v43 = v41;
    sub_2698544E4();

    sub_2697A27C0();

    v44 = v1 + 6;
    v45 = v1 + 5;
    v67 = v13;
  }

  v49 = *v18;
  v50 = *v45;
  v51 = *v44;
  v52 = v1[24];
  OUTLINED_FUNCTION_4_19();
  (*(v53 + 8))();

  v54 = v1[1];

  return v54(v67);
}

uint64_t sub_269781D80(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269741AF0;

  return sub_2697814D8(a1, a2);
}

uint64_t sub_269781E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RemoveFromWatchListFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_269781E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for RemoveFromWatchListFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2696DC678;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_269781F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for RemoveFromWatchListFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2696DC678;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_269782000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for RemoveFromWatchListFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2696DC678;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_2697820CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for RemoveFromWatchListFlowStrategy();
  *v13 = v6;
  v13[1] = sub_2696C995C;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2697821A8()
{
  v1 = sub_269740D68();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_269782204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for RemoveFromWatchListFlowStrategy();
  *v13 = v6;
  v13[1] = sub_2696DC678;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_269782348(uint64_t a1)
{
  result = sub_2697823C0(&qword_2803243D8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2697823C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoveFromWatchListFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_269782400()
{
  if (qword_2803224C8 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D728;
  qword_28033D738 = qword_28033D728;

  return v1;
}

uint64_t sub_269782464()
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

uint64_t sub_26978258C()
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
    OUTLINED_FUNCTION_15_13(&dword_269684000, v8, v9, "RemoveFromWatchListHandleIntentFlowStrategy.makeIntentHandledResponse() called");
    MEMORY[0x26D647170](v7, -1, -1);
  }

  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[19];
  v13 = v0[13];
  v14 = v0[14];

  (*(v11 + 8))(v10, v12);
  sub_269743A7C(v14 + 104, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803243F8, qword_26985FA30);
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

  return sub_2696C5C2C();
}

uint64_t sub_269782760()
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

uint64_t sub_26978289C()
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
    OUTLINED_FUNCTION_15_13(&dword_269684000, v8, v9, "RemoveFromWatchListHandleIntentFlowStrategy.makeFailureHandlingIntentResponse() called");
    MEMORY[0x26D647170](v7, -1, -1);
  }

  v11 = v0[29];
  v10 = v0[30];
  v12 = v0[28];
  v13 = v0[21];
  v14 = v0[22];

  (*(v11 + 8))(v10, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803243F8, qword_26985FA30);
  v15 = sub_2698534E4();
  v16 = OBJC_IVAR___RemoveFromWatchListIntentResponse_code;
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

    return sub_2696C616C();
  }
}

uint64_t sub_269782B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for RemoveFromWatchListHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_269782C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for RemoveFromWatchListHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_269782D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for RemoveFromWatchListHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t sub_269782DE0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DAF80;

  return sub_269782464();
}

uint64_t sub_269782E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for RemoveFromWatchListHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_269782F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for RemoveFromWatchListHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_269783014()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_269782760();
}

uint64_t sub_2697830C0()
{
  v1 = sub_269740DA0();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_26978311C(uint64_t a1)
{
  result = sub_269783144();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_269783144()
{
  result = qword_2803243F0;
  if (!qword_2803243F0)
  {
    type metadata accessor for RemoveFromWatchListHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803243F0);
  }

  return result;
}

id sub_26978319C()
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
  v4 = sub_2697858F0(&v7, v6);
  sub_269747248(&v10);
  sub_2696B28D4(v13);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_26978332C()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_269854824();
  v1[10] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[11] = v4;
  v6 = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_37_0();
  v1[13] = swift_task_alloc();
  v7 = sub_269851D34();
  v1[14] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[15] = v8;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();
  v11 = sub_2698548D4();
  v1[17] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[18] = v12;
  v14 = *(v13 + 64);
  v1[19] = OUTLINED_FUNCTION_37_0();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2697834AC()
{
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v3 = __swift_project_value_buffer(*(v0 + 136), qword_28033D928);
  v4 = v3;
  *(v0 + 192) = v3;
  v5 = *(v2 + 16);
  *(v0 + 200) = v5;
  *(v0 + 208) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6 = OUTLINED_FUNCTION_7_16();
  v5(v6);
  v7 = sub_2698548B4();
  v8 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v8))
  {
    v9 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24(v9);
    OUTLINED_FUNCTION_97_1(&dword_269684000, v10, v8, "Resolve step");
    OUTLINED_FUNCTION_12_1();
  }

  v11 = *(v0 + 184);
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);

  v14 = *(v13 + 8);
  *(v0 + 216) = v14;
  v14(v11, v12);
  *(v0 + 40) = &type metadata for SiriVideoFeatureKeys;
  *(v0 + 48) = sub_2696A2978();
  *(v0 + 16) = 2;
  v15 = sub_269853B34();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if ((v15 & 1) == 0)
  {
    v25 = *(v0 + 176);
    v26 = *(v0 + 136);
    v27 = OUTLINED_FUNCTION_7_16();
    v5(v27);
    v28 = sub_2698548B4();
    v29 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v29))
    {
      v30 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v30);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v31, v32, "watchlist support flag is not enabled");
      OUTLINED_FUNCTION_18_7();
    }

    v33 = *(v0 + 176);
    v34 = *(v0 + 136);
    v35 = *(v0 + 144);

    v36 = OUTLINED_FUNCTION_22_3();
    (v14)(v36);
    type metadata accessor for RemoveFromWatchListContentResolutionResult();
    static RemoveFromWatchListContentResolutionResult.unsupported(forReason:)(6);
LABEL_40:
    OUTLINED_FUNCTION_11_25();

    OUTLINED_FUNCTION_8_23();
    OUTLINED_FUNCTION_116();

    __asm { BRAA            X2, X16 }
  }

  v16 = *(v0 + 128);
  v17 = *(v0 + 64);
  sub_269851D24();
  v18 = [v17 content];
  if (v18)
  {
    v19 = v18;
    sub_26977E470(v18);
    if (v20)
    {
      v22 = *(v0 + 120);
      v21 = *(v0 + 128);
      v23 = *(v0 + 112);
      v24 = *(v0 + 72);

      __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_analyticsService), *(v24 + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_analyticsService + 24));
      sub_2696C9DAC();
      sub_2697B2EA8();
      type metadata accessor for RemoveFromWatchListContentResolutionResult();
      static ContentResolutionResult.success(with:)(v19);

      (*(v22 + 8))(v21, v23);
      goto LABEL_40;
    }
  }

  v37 = [*(v0 + 64) contentSearch];
  *(v0 + 224) = v37;
  if (!v37)
  {
    v59 = *(v0 + 152);
    v60 = *(v0 + 136);
    v61 = OUTLINED_FUNCTION_7_16();
    v5(v61);
    v62 = sub_2698548B4();
    v63 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v63))
    {
      v64 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v64);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v65, v66, "Missing required search from intent, returning failure");
      OUTLINED_FUNCTION_18_7();
    }

    v68 = *(v0 + 144);
    v67 = *(v0 + 152);
    v70 = *(v0 + 128);
    v69 = *(v0 + 136);
    v71 = *(v0 + 112);
    v72 = *(v0 + 120);

    v73 = OUTLINED_FUNCTION_22_3();
    (v14)(v73);
    type metadata accessor for RemoveFromWatchListContentResolutionResult();
    static RemoveFromWatchListContentResolutionResult.unsupported(forReason:)(5);
    (*(v72 + 8))(v70, v71);
    goto LABEL_40;
  }

  v38 = v37;
  sub_26977E46C(v37);
  if (v39)
  {
    v40 = v39;
    goto LABEL_16;
  }

  v96 = v38;
  v74 = sub_2697856BC(v38);
  if (!v74)
  {
    goto LABEL_37;
  }

  v75 = v74;
  v76 = sub_26975004C(v74);
  for (i = 0; ; ++i)
  {
    if (v76 == i)
    {

LABEL_37:
      v81 = *(v0 + 160);
      v82 = *(v0 + 136);
      v83 = OUTLINED_FUNCTION_7_16();
      v5(v83);
      v84 = sub_2698548B4();
      v85 = sub_269854F44();
      if (OUTLINED_FUNCTION_19_5(v85))
      {
        v86 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_24(v86);
        OUTLINED_FUNCTION_97_1(&dword_269684000, v87, v4, "Unable to infer title from search parameters");
        OUTLINED_FUNCTION_12_1();
      }

      v88 = *(v0 + 160);
      v90 = *(v0 + 136);
      v89 = *(v0 + 144);
      v92 = *(v0 + 120);
      v91 = *(v0 + 128);
      v93 = *(v0 + 112);

      v14(v88, v90);
      type metadata accessor for RemoveFromWatchListContentResolutionResult();
      static RemoveFromWatchListContentResolutionResult.unsupported(forReason:)(3);

      (*(v92 + 8))(v91, v93);
      goto LABEL_40;
    }

    if ((v75 & 0xC000000000000001) != 0)
    {
      v78 = MEMORY[0x26D646120](i, v75);
    }

    else
    {
      if (i >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v78 = *(v75 + 8 * i + 32);
    }

    v79 = v78;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v78 role] == 8)
    {

      sub_2696D1E04(v79, &selRef_name);
      v40 = v80;

      if (v40)
      {
LABEL_16:
        *(v0 + 232) = v40;
        if (qword_280322710 != -1)
        {
          goto LABEL_45;
        }

        goto LABEL_17;
      }

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  swift_once();
LABEL_17:
  v41 = *(v0 + 104);
  v42 = sub_269854854();
  __swift_project_value_buffer(v42, qword_28033D958);
  sub_269854814();
  v43 = sub_269854844();
  v44 = sub_269854FF4();
  if (sub_269855074())
  {
    v45 = *(v0 + 104);
    v46 = OUTLINED_FUNCTION_16_2();
    *v46 = 0;
    v47 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v43, v44, v47, "removeFromWatchListDisambiguateResolve", "", v46, 2u);
    OUTLINED_FUNCTION_10();
  }

  v48 = *(v0 + 96);
  v49 = *(v0 + 104);
  v50 = *(v0 + 80);
  v51 = *(v0 + 88);
  v52 = *(v0 + 72);

  (*(v51 + 16))(v48, v49, v50);
  v53 = sub_269854894();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  *(v0 + 240) = sub_269854884();
  (*(v51 + 8))(v49, v50);
  __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_contentResolver), *(v52 + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_contentResolver + 24));
  v56 = swift_task_alloc();
  *(v0 + 248) = v56;
  *v56 = v0;
  v56[1] = sub_269783B94;
  OUTLINED_FUNCTION_116();

  return sub_2697BD868();
}

uint64_t sub_269783B94()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  v6 = *(v4 + 248);
  v7 = *(v4 + 232);
  v8 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v9 = v8;
  *(v5 + 256) = v0;

  if (v0)
  {
    v10 = sub_269783FD0;
  }

  else
  {
    *(v5 + 264) = v3;
    v10 = sub_269783CD0;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_269783CD0()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1((v0[9] + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_analyticsService), *(v0[9] + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_analyticsService + 24));
  sub_26975004C(v1);
  sub_2696C9DAC();
  sub_2697B2BF8();
  v0[34] = [v2 itemLimit];
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_269783DCC;
  v5 = v0[33];

  return sub_2697850FC();
}

uint64_t sub_269783DCC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1[35];
  v3 = v1[34];
  v4 = v1[33];
  v5 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v8 + 288) = v7;

  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269783EEC()
{
  v1 = v0[30];
  v2 = v0[28];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  sub_26978422C();

  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_22_3();
  v8(v7);
  v9 = v0[36];
  OUTLINED_FUNCTION_11_25();

  v10 = OUTLINED_FUNCTION_8_23();

  return v11(v10);
}

void sub_269783FD0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 208);
  (*(v0 + 200))(*(v0 + 168), *(v0 + 192), *(v0 + 136));
  v3 = v1;
  v4 = sub_2698548B4();
  v5 = sub_269854F24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 256);
    v30 = *(v0 + 216);
    v7 = *(v0 + 168);
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136315138;
    *(v0 + 56) = v6;
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v13 = sub_269854AE4();
    v15 = sub_26974F520(v13, v14, &v31);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_269684000, v4, v5, "Error while resolving WatchList content: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v16 = OUTLINED_FUNCTION_22_3();
    v30(v16);
  }

  else
  {
    v17 = *(v0 + 216);
    v18 = *(v0 + 168);
    v19 = *(v0 + 136);
    v20 = *(v0 + 144);

    v21 = OUTLINED_FUNCTION_22_3();
    v17(v21);
  }

  v22 = *(v0 + 256);
  v23 = *(v0 + 240);
  v24 = *(v0 + 224);
  v26 = *(v0 + 120);
  v25 = *(v0 + 128);
  v27 = *(v0 + 112);
  type metadata accessor for RemoveFromWatchListContentResolutionResult();
  static RemoveFromWatchListContentResolutionResult.unsupported(forReason:)(1);

  sub_26978422C();

  (*(v26 + 8))(v25, v27);
  OUTLINED_FUNCTION_11_25();

  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_116();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_26978422C()
{
  v0 = sub_269854864();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269854824();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322710 != -1)
  {
    swift_once();
  }

  v10 = sub_269854854();
  __swift_project_value_buffer(v10, qword_28033D958);
  v11 = sub_269854844();
  sub_269854874();
  v12 = sub_269854FE4();
  if (sub_269855074())
  {

    sub_2698548A4();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v11, v12, v15, "removeFromWatchListDisambiguateResolve", v13, v14, 2u);
    MEMORY[0x26D647170](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2697844D8(void *a1, void *aBlock, void *a3)
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

  return sub_26978332C();
}

uint64_t sub_26978459C()
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

uint64_t sub_26978464C()
{
  v1 = [*(v0 + 16) content];
  if (v1 && (v2 = *(v0 + 16), v1, (v3 = [v2 content]) != 0) && (sub_26978701C(v3), v4))
  {

    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30();
    }

    v6 = (v0 + 48);
    v5 = *(v0 + 48);
    v7 = *(v0 + 32);
    __swift_project_value_buffer(*(v0 + 24), qword_28033D928);
    v8 = OUTLINED_FUNCTION_2_8();
    v9(v8);
    v10 = sub_2698548B4();
    v11 = sub_269854F04();
    if (OUTLINED_FUNCTION_19_4(v11))
    {
      v12 = "Confirm step: success";
LABEL_12:
      v17 = *v6;
      v18 = OUTLINED_FUNCTION_16_2();
      *v18 = 0;
      _os_log_impl(&dword_269684000, v10, v11, v12, v18, 2u);
      OUTLINED_FUNCTION_10();
      goto LABEL_15;
    }

    v17 = *v6;
  }

  else
  {
    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30();
    }

    v6 = (v0 + 40);
    v13 = *(v0 + 40);
    v14 = *(v0 + 32);
    __swift_project_value_buffer(*(v0 + 24), qword_28033D928);
    v15 = OUTLINED_FUNCTION_2_8();
    v16(v15);
    v10 = sub_2698548B4();
    v11 = sub_269854F04();
    if (OUTLINED_FUNCTION_19_4(v11))
    {
      v12 = "Confirm step: no content";
      goto LABEL_12;
    }

    v17 = *v6;
  }

LABEL_15:
  v20 = *(v0 + 40);
  v19 = *(v0 + 48);
  v21 = *(v0 + 24);
  v22 = *(v0 + 32);

  (*(v22 + 8))(v17, v21);
  v23 = objc_allocWithZone(type metadata accessor for RemoveFromWatchListIntentResponse());
  v24 = OUTLINED_FUNCTION_11_16();
  RemoveFromWatchListIntentResponse.init(code:userActivity:)(v24, 0);

  v25 = OUTLINED_FUNCTION_8_23();

  return v26(v25);
}

uint64_t sub_2697848A8(void *a1, void *aBlock, void *a3)
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

  return sub_26978459C();
}

uint64_t sub_269784968()
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

uint64_t sub_269784A24()
{
  OUTLINED_FUNCTION_34();
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v2, qword_28033D928);
  v0[10] = v4;
  v5 = *(v3 + 16);
  v0[11] = v5;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v7))
  {
    v8 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v8);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v9, v10, "Handle step");
    OUTLINED_FUNCTION_18_7();
  }

  v11 = v0[9];
  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[3];

  v0[13] = *(v13 + 8);
  v15 = OUTLINED_FUNCTION_22_3();
  v16(v15);
  v17 = [v14 content];
  if (v17 && (sub_2696D1E04(v17, &selRef_umcId), (v0[14] = v18) != 0))
  {
    __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_watchListService), *(v0[4] + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_watchListService + 24));
    v19 = swift_task_alloc();
    v0[15] = v19;
    *v19 = v0;
    v19[1] = sub_269784C48;
    v20 = OUTLINED_FUNCTION_7_16();

    return sub_2697B97D8(v20, v21);
  }

  else
  {
    v23 = objc_allocWithZone(type metadata accessor for RemoveFromWatchListIntentResponse());
    RemoveFromWatchListIntentResponse.init(code:userActivity:)(5, 0);
    v25 = v0[8];
    v24 = v0[9];
    v26 = v0[7];

    v27 = OUTLINED_FUNCTION_8_23();

    return v28(v27);
  }
}

uint64_t sub_269784C48()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v7 + 128) = v0;

  if (v0)
  {
    v8 = sub_269784E74;
  }

  else
  {
    v8 = sub_269784D68;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_269784D68()
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
    OUTLINED_FUNCTION_31_0(&dword_269684000, v5, v6, "Successfully removed item from watchlist");
    OUTLINED_FUNCTION_18_7();
  }

  v7 = *(v0 + 104);
  v8 = *(v0 + 64);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);

  v11 = OUTLINED_FUNCTION_22_3();
  v7(v11);
  v12 = objc_allocWithZone(type metadata accessor for RemoveFromWatchListIntentResponse());
  RemoveFromWatchListIntentResponse.init(code:userActivity:)(4, 0);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  v15 = *(v0 + 56);

  v16 = OUTLINED_FUNCTION_8_23();

  return v17(v16);
}

uint64_t sub_269784E74()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 128);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if (!swift_dynamicCast() || *(v0 + 136))
  {

    objc_allocWithZone(type metadata accessor for RemoveFromWatchListIntentResponse());
    RemoveFromWatchListIntentResponse.init(code:userActivity:)(5, 0);
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
    v18 = objc_allocWithZone(type metadata accessor for RemoveFromWatchListIntentResponse());
    RemoveFromWatchListIntentResponse.init(code:userActivity:)(100, 0);
    v19 = *(v0 + 16);
  }

  v21 = *(v0 + 64);
  v20 = *(v0 + 72);
  v22 = *(v0 + 56);

  v23 = OUTLINED_FUNCTION_8_23();

  return v24(v23);
}

uint64_t sub_269785038(void *a1, void *aBlock, void *a3)
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

  return sub_269784968();
}

uint64_t sub_2697850FC()
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

uint64_t sub_2697851D0()
{
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v1 = v0[10];
  v2 = v0[5];
  v3 = __swift_project_value_buffer(v0[4], qword_28033D928);
  v4 = *(v2 + 16);
  v5 = OUTLINED_FUNCTION_7_16();
  v4(v5);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v7))
  {
    v8 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24(v8);
    OUTLINED_FUNCTION_97_1(&dword_269684000, v9, v7, "RemoveFromWatchListIntentHandler::handleSuggestedContent Found suggested content in the intent, attempting to use it");
    OUTLINED_FUNCTION_12_1();
  }

  v10 = v0[10];
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[2];

  v14 = *(v12 + 8);
  v14(v10, v11);
  v15 = sub_26975004C(v13);
  if (v15 != 1)
  {
    v30 = v0[4];
    if (v15 >= 2)
    {
      v43 = v0[8];
      v44 = v0[2];
      v45 = OUTLINED_FUNCTION_7_16();
      v4(v45);

      v46 = sub_2698548B4();
      v47 = sub_269854F14();
      v48 = OUTLINED_FUNCTION_19_5(v47);
      v49 = v0[2];
      if (v48)
      {
        v50 = swift_slowAlloc();
        *v50 = 134217984;
        *(v50 + 4) = sub_26975004C(v49);

        _os_log_impl(&dword_269684000, v46, v3, "Disambiguating %ld content options from WatchList", v50, 0xCu);
        OUTLINED_FUNCTION_12_1();
      }

      else
      {
        v63 = v0[2];
      }

      v64 = v0[2];
      v65 = v0[3];
      v66 = v0[5] + 8;
      v14(v0[8], v0[4]);
      type metadata accessor for RemoveFromWatchListContentResolutionResult();
      v67 = OUTLINED_FUNCTION_7_16();
      v69 = sub_2696D18D0(v67, v68);
      static ContentResolutionResult.disambiguation(with:)(v69);
      OUTLINED_FUNCTION_11_16();

      goto LABEL_24;
    }

    v31 = v0[7];
    v32 = OUTLINED_FUNCTION_7_16();
    v4(v32);
    v33 = sub_2698548B4();
    v34 = sub_269854F44();
    if (OUTLINED_FUNCTION_19_5(v34))
    {
      v35 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v35);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v36, v37, "Got no results for request");
      OUTLINED_FUNCTION_18_7();
    }

    v38 = v0[7];
    v39 = v0[4];
    v40 = v0[5];

    v41 = OUTLINED_FUNCTION_22_3();
    (v14)(v41);
    type metadata accessor for RemoveFromWatchListContentResolutionResult();
    v42 = 2;
    goto LABEL_21;
  }

  if (!sub_26975004C(v0[2]))
  {
    v51 = v0[6];
    v52 = v0[4];
    v53 = OUTLINED_FUNCTION_7_16();
    v4(v53);
    v54 = sub_2698548B4();
    v55 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_5(v55))
    {
      v56 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v56);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v57, v58, "Content item didn't include UMC ID");
      OUTLINED_FUNCTION_18_7();
    }

    v60 = v0[5];
    v59 = v0[6];
    v61 = v0[4];

    v62 = OUTLINED_FUNCTION_22_3();
    (v14)(v62);
    type metadata accessor for RemoveFromWatchListContentResolutionResult();
    v42 = 1;
LABEL_21:
    static RemoveFromWatchListContentResolutionResult.unsupported(forReason:)(v42);
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
    OUTLINED_FUNCTION_97_1(&dword_269684000, v26, v3, "Returning success with only result");
    OUTLINED_FUNCTION_12_1();
  }

  v27 = v0[9];
  v28 = v0[4];
  v29 = v0[5];

  v14(v27, v28);
  type metadata accessor for RemoveFromWatchListContentResolutionResult();
  static ContentResolutionResult.success(with:)(v19);

LABEL_24:
  v71 = v0[9];
  v70 = v0[10];
  v73 = v0[7];
  v72 = v0[8];
  v74 = v0[6];

  v75 = OUTLINED_FUNCTION_8_23();

  return v76(v75);
}

id sub_269785604()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoveFromWatchListIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2697856BC(void *a1)
{
  v1 = [a1 roles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for Person();
  v3 = sub_269854CB4();

  return v3;
}

uint64_t sub_269785728()
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

uint64_t sub_2697857C0()
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

uint64_t sub_269785858()
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

id sub_2697858F0(uint64_t a1, uint64_t a2)
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
  v8 = type metadata accessor for RemoveFromWatchListIntentHandler();
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
  sub_2696A73F8(v31, v9 + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_contentResolver);
  sub_2696A73F8(v30, v9 + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_watchListService);
  sub_2696A73F8(v29, v9 + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_analyticsService);
  sub_2696A73F8(v28, v9 + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_featureFlagService);
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

uint64_t OUTLINED_FUNCTION_11_25()
{
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v7 = v0[16];
  v9 = v0[12];
  v8 = v0[13];
}

void *sub_269785C84()
{
  sub_2698538C4();
  v0 = type metadata accessor for BaseDialogProvider();
  v10[3] = v0;
  v10[4] = &off_287A3DBA0;
  v10[0] = swift_allocObject();
  type metadata accessor for RemoveFromWatchListUnsupportedValueStrategy();
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

uint64_t sub_269785DD4()
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

uint64_t sub_269785F10()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
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
    _os_log_impl(&dword_269684000, v5, v6, "RemoveFromWatchListUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  v11 = v0[3];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324420, &unk_26985FBC0);
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

  v19 = RemoveFromWatchListContentUnsupportedReason.init(rawValue:)(v18);
  if (v20)
  {
    goto LABEL_9;
  }

  if ((v19 - 3) < 2)
  {
    v32 = v0[4];

    v33 = *__swift_project_boxed_opaque_existential_1((v32 + 56), *(v32 + 80));
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[17] = v34;
    *v34 = v35;
    v34[1] = sub_2697864C0;
    v36 = v0[9];
    OUTLINED_FUNCTION_8_24();

    return v40(v37, v38, v39, v40, v41, v42, v43, v44);
  }

  else if (v19 == 6)
  {
    v45 = v0[4];

    v46 = v45[6];
    __swift_project_boxed_opaque_existential_1(v45 + 2, v45[5]);
    sub_269852CF4();
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[19] = v47;
    *v47 = v48;
    v47[1] = sub_269786664;
    v49 = v0[8];
    OUTLINED_FUNCTION_8_24();

    return sub_2696C6B0C(v50, v51);
  }

  else
  {
    if (v19 != 2)
    {
LABEL_9:
      v21 = v0[4];
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[21] = v22;
      *v22 = v23;
      v22[1] = sub_269786808;
      v24 = v0[7];
      OUTLINED_FUNCTION_10_15();
      OUTLINED_FUNCTION_8_24();

      return sub_2696C616C();
    }

    v27 = v0[4];
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[15] = v28;
    *v28 = v29;
    v28[1] = sub_269786300;
    v30 = v0[10];
    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_8_24();

    return sub_2696C6818();
  }
}

uint64_t sub_269786300()
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

uint64_t sub_269786418()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  v1 = v0[10];
  OUTLINED_FUNCTION_14_15();
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  OUTLINED_FUNCTION_7_25();
  v5(v3);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_24();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_2697864C0()
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

uint64_t sub_2697865BC()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  v1 = v0[9];
  OUTLINED_FUNCTION_14_15();
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  OUTLINED_FUNCTION_7_25();
  v5(v3);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_24();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_269786664()
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

uint64_t sub_269786760()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  v2 = v0[8];
  OUTLINED_FUNCTION_14_15();
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  OUTLINED_FUNCTION_7_25();
  v6(v1);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_24();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_269786808()
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

uint64_t sub_269786920()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  v1 = v0[7];
  OUTLINED_FUNCTION_14_15();
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_24();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_2697869D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  OUTLINED_FUNCTION_6_7();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2697869FC()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324420, &unk_26985FBC0);
  v2 = sub_2698536B4();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_269786A70@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[12];
  sub_269830114();
  if (v14)
  {
    sub_269852C24();
    sub_269852BF4();
    sub_26982F6E0();
    sub_269852C14();

    swift_unknownObjectRelease();

    sub_269852C04();
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v15 = __swift_project_value_buffer(v8, qword_28033D910);
    (*(v9 + 16))(v12, v15, v8);
    v16 = sub_2698548B4();
    v17 = sub_269854F34();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_269684000, v16, v17, "Unable to get localized string for OPEN_TV label", v18, 2u);
      MEMORY[0x26D647170](v18, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
  }

  v19 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_269852CA4();
  v20 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_269852E44();
  v21 = sub_269853234();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v21);
  v22 = sub_2698538F4();
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v23 = MEMORY[0x277D5C1D8];
  a1[3] = v22;
  a1[4] = v23;
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_2698530B4();

  sub_269698048(v25, &qword_280323028, qword_26985AD20);
  return sub_269698048(v7, &qword_280323010, &unk_26985B640);
}

uint64_t sub_269786E18()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_269785DD4();
}

uint64_t sub_269786EC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26974872C;

  return sub_2697869D0(a1);
}

uint64_t sub_269786F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for RemoveFromWatchListUnsupportedValueStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9E00](a1, a2, v10, a4);
}

uint64_t sub_26978701C(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_269854A94();

  return v3;
}

uint64_t OUTLINED_FUNCTION_14_15()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  return sub_269786A70(v3);
}

id sub_2697870A4()
{
  result = [objc_allocWithZone(type metadata accessor for WatchSportsEventIntentHandler()) init];
  qword_28033D740 = result;
  return result;
}

id sub_2697870D8()
{
  if (qword_2803224E0 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D740;
  qword_28033D748 = qword_28033D740;

  return v1;
}

uint64_t sub_26978713C()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v5 = __swift_project_value_buffer(v0, qword_28033D910);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_16_2();
    *v8 = 0;
    _os_log_impl(&dword_269684000, v6, v7, "WatchSportsEventFlowStrategy.actionForInput() called", v8, 2u);
    MEMORY[0x26D647170](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return sub_269853004();
}

uint64_t sub_2697872C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803234A8, &unk_26985A8E8);
  OUTLINED_FUNCTION_8_9(v4);
  v6 = *(v5 + 64);
  v3[5] = OUTLINED_FUNCTION_4_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233C8, &unk_26985E990);
  OUTLINED_FUNCTION_8_9(v7);
  v9 = *(v8 + 64);
  v3[6] = OUTLINED_FUNCTION_4_7();
  v10 = sub_269852344();
  v3[7] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v3[8] = v11;
  v13 = *(v12 + 64);
  v3[9] = OUTLINED_FUNCTION_4_7();
  v14 = sub_269851ED4();
  v3[10] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v3[11] = v15;
  v17 = *(v16 + 64);
  v3[12] = OUTLINED_FUNCTION_4_7();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324440, &qword_26985FD98);
  OUTLINED_FUNCTION_8_9(v18);
  v20 = *(v19 + 64);
  v3[13] = OUTLINED_FUNCTION_37_0();
  v3[14] = swift_task_alloc();
  v21 = sub_269851EF4();
  v3[15] = v21;
  OUTLINED_FUNCTION_5_12(v21);
  v3[16] = v22;
  v24 = *(v23 + 64);
  v3[17] = OUTLINED_FUNCTION_37_0();
  v3[18] = swift_task_alloc();
  v25 = sub_269853874();
  v3[19] = v25;
  OUTLINED_FUNCTION_5_12(v25);
  v3[20] = v26;
  v28 = *(v27 + 64);
  v3[21] = OUTLINED_FUNCTION_4_7();
  v29 = sub_2698538B4();
  v3[22] = v29;
  OUTLINED_FUNCTION_5_12(v29);
  v3[23] = v30;
  v32 = *(v31 + 64);
  v3[24] = OUTLINED_FUNCTION_4_7();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v33);
  v35 = *(v34 + 64);
  v3[25] = OUTLINED_FUNCTION_37_0();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v36 = sub_2698548D4();
  v3[28] = v36;
  OUTLINED_FUNCTION_5_12(v36);
  v3[29] = v37;
  v39 = *(v38 + 64);
  v3[30] = OUTLINED_FUNCTION_37_0();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269787604, 0, 0);
}

uint64_t sub_269787604()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = v0[34];
  v2 = v0[29];
  v3 = __swift_project_value_buffer(v0[28], qword_28033D910);
  v4 = *(v2 + 16);
  v199 = v3;
  v4(v1);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_16_2();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "WatchSportsEventFlowStrategy.makeIntentFromParse() called", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  v8 = v0[34];
  v10 = v0[28];
  v9 = v0[29];
  v11 = v0[3];

  v12 = *(v9 + 8);
  v12(v8, v10);
  v13 = v0[3];
  if (v11)
  {
    v14 = v0[3];
  }

  else
  {
    v14 = [objc_allocWithZone(type metadata accessor for WatchSportsEventIntent()) init];
  }

  v15 = v0[4];
  v16 = v13;
  sub_2696D3780();
  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = v0[4];
    sub_269694CBC();
    v19 = v17;
    v20 = sub_269855034();
    [v14 setIsRemoteExecution_];

    __swift_project_boxed_opaque_existential_1((v18 + 104), *(v18 + 128));
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

  v24 = v0[23];
  v25 = v0[24];
  v26 = v0[22];
  (*(v24 + 16))(v25, v0[2], v26);
  v27 = (*(v24 + 88))(v25, v26);
  if (v27 == *MEMORY[0x277D5C140])
  {
    v196 = v4;
    v188 = v12;
    v191 = v14;
    v28 = v0[24];
    v29 = v0[21];
    v31 = v0[19];
    v30 = v0[20];
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    v176 = v0[15];
    v179 = v0[27];
    v36 = v0[11];
    v35 = v0[12];
    v182 = v0[10];
    v185 = v0[14];
    (*(v0[23] + 96))(v28, v0[22]);
    (*(v30 + 32))(v29, v28, v31);
    sub_269853864();
    sub_2696D3C74();
    v37 = *(v34 + 8);
    v37(v32, v176);
    sub_269853864();
    sub_269851EE4();
    v37(v33, v176);
    v38 = sub_269851EB4();
    (*(v36 + 8))(v35, v182);
    sub_269771E34(v38);

    v39 = sub_2698520B4();
    v40 = OUTLINED_FUNCTION_94();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, v41, v39);
    v43 = v0[20];
    v44 = v0[21];
    v45 = v0[19];
    v46 = v0[14];
    if (EnumTagSinglePayload == 1)
    {
      (*(v43 + 8))(v0[21], v0[19]);
      sub_269698048(v46, &qword_280324440, &qword_26985FD98);
      v47 = 0;
      v48 = 0xF000000000000000;
    }

    else
    {
      v47 = sub_269852094();
      v48 = v55;
      (*(v43 + 8))(v44, v45);
      OUTLINED_FUNCTION_5_27();
      (*(v56 + 8))(v46, v39);
    }

    v12 = v188;
    v14 = v191;
  }

  else
  {
    if (v27 != *MEMORY[0x277D5C148])
    {
      (v4)(v0[33], v199, v0[28]);
      v85 = sub_2698548B4();
      v86 = sub_269854F24();
      if (OUTLINED_FUNCTION_39_1(v86))
      {
        v87 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_6(v87);
        OUTLINED_FUNCTION_10_9(&dword_269684000, v88, v89, "WatchSportsEventFlowStrategy.makeIntentFromParse parse type is unsupported");
        OUTLINED_FUNCTION_4_16();
      }

      v90 = v0[33];
      v91 = v0[28];
      v92 = v0[29];
      v94 = v0[23];
      v93 = v0[24];
      v95 = v0[22];

      v12(v90, v91);
      sub_2696BAE9C();
      v96 = swift_allocError();
      OUTLINED_FUNCTION_1_26(v96, v97, 13);

      (*(v94 + 8))(v93, v95);
      goto LABEL_34;
    }

    v196 = v4;
    v49 = v0[24];
    (*(v0[23] + 96))(v49, v0[22]);
    v50 = *v49;
    sub_2696D6C54();
    if (v51)
    {
      v52 = v51;
      v53 = v0[26];
      sub_269854544();

      v54 = 0;
    }

    else
    {
      v54 = 1;
    }

    v141 = v0[26];
    v140 = v0[27];
    v142 = sub_269852474();
    __swift_storeEnumTagSinglePayload(v141, v54, 1, v142);
    sub_269788A7C(v141, v140);
    sub_2696D6C54();
    if (v143)
    {
      v144 = v143;
      v145 = v0[13];
      v146 = sub_2698544E4();

      sub_269771E34(v146);

      v147 = sub_2698520B4();
      v148 = OUTLINED_FUNCTION_94();
      v150 = __swift_getEnumTagSinglePayload(v148, v149, v147);
      v151 = v0[13];
      if (v150 == 1)
      {

        sub_269698048(v151, &qword_280324440, &qword_26985FD98);
        v48 = 0xF000000000000000;
        v47 = 0;
      }

      else
      {
        v152 = sub_269852094();
        v48 = v153;

        (*(*(v147 - 8) + 8))(v151, v147);
        v47 = v152;
      }
    }

    else
    {

      v47 = 0;
      v48 = 0xF000000000000000;
    }
  }

  v57 = v0[25];
  sub_2696DAE88(v0[27], v57);
  v58 = sub_269852474();
  v59 = __swift_getEnumTagSinglePayload(v57, 1, v58);
  v60 = v0[25];
  if (v59 == 1)
  {
    v61 = &qword_280323360;
    v62 = &unk_26985AB80;
    v63 = v0[25];
LABEL_25:
    sub_269698048(v63, v61, v62);
    v70 = v0[6];
    v71 = sub_269852024();
    __swift_storeEnumTagSinglePayload(v70, 1, 1, v71);
    v72 = v196;
LABEL_26:
    sub_269698048(v0[6], &qword_2803233C8, &unk_26985E990);
LABEL_27:
    (v72)(v0[30], v199, v0[28]);
    v73 = sub_2698548B4();
    v74 = sub_269854F24();
    if (OUTLINED_FUNCTION_39_1(v74))
    {
      v75 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_6(v75);
      OUTLINED_FUNCTION_10_9(&dword_269684000, v76, v77, "WatchSportsEventFlowStrategy.makeIntentFromParse failed to access videoClientComponent.results");
      OUTLINED_FUNCTION_4_16();
    }

    v79 = v0[29];
    v78 = v0[30];
    v81 = v0[27];
    v80 = v0[28];

    v12(v78, v80);
    sub_2696BAE9C();
    v82 = swift_allocError();
    OUTLINED_FUNCTION_1_26(v82, v83, 11);

    sub_2696CE4BC(v47, v48);
    v84 = v81;
LABEL_30:
    sub_269698048(v84, &qword_280323360, &unk_26985AB80);
LABEL_34:
    v99 = v0[33];
    v98 = v0[34];
    v101 = v0[31];
    v100 = v0[32];
    v102 = v0[30];
    v103 = v0[26];
    v104 = v0[27];
    v106 = v0[24];
    v105 = v0[25];
    v107 = v0[21];
    v177 = v0[18];
    v180 = v0[17];
    v183 = v0[14];
    v186 = v0[13];
    v189 = v0[12];
    v192 = v0[9];
    v194 = v0[6];
    v197 = v0[5];

    v108 = v0[1];

    return v108();
  }

  v64 = v0[5];
  v65 = sub_269852464();
  OUTLINED_FUNCTION_5_27();
  (*(v66 + 8))(v60, v58);
  sub_269771D90(v65);

  v67 = sub_269852084();
  v68 = OUTLINED_FUNCTION_94();
  if (__swift_getEnumTagSinglePayload(v68, v69, v67) == 1)
  {
    v63 = v0[5];
    v61 = &qword_2803234A8;
    v62 = &unk_26985A8E8;
    goto LABEL_25;
  }

  v111 = v0[5];
  v110 = v0[6];
  sub_269852064();
  OUTLINED_FUNCTION_5_27();
  (*(v112 + 8))(v111, v67);
  v113 = sub_269852024();
  v114 = OUTLINED_FUNCTION_94();
  v72 = v196;
  if (__swift_getEnumTagSinglePayload(v114, v115, v113) == 1)
  {
    goto LABEL_26;
  }

  v116 = *(v113 - 8);
  if ((*(v116 + 88))(v0[6], v113) != *MEMORY[0x277D39398])
  {
    (*(v116 + 8))(v0[6], v113);
    goto LABEL_27;
  }

  v187 = v47;
  v190 = v12;
  v118 = v0[8];
  v117 = v0[9];
  v120 = v0[6];
  v119 = v0[7];
  (*(v116 + 96))(v120, v113);
  (*(v118 + 32))(v117, v120, v119);
  v121 = sub_269851F24();
  sub_269788AEC(v121, v122, v14);
  v123 = v0[28];
  v193 = v14;
  if (v48 >> 60 == 15)
  {
    v124 = v0[31];
    v125 = OUTLINED_FUNCTION_11_26();
    v196(v125);
    v126 = sub_2698548B4();
    v127 = sub_269854F24();
    if (OUTLINED_FUNCTION_39_1(v127))
    {
      v128 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_6(v128);
      OUTLINED_FUNCTION_10_9(&dword_269684000, v129, v130, "WatchSportsEventFlowStrategy.makeIntentFromParse failed to access usoEntity");
      OUTLINED_FUNCTION_4_16();
    }

    v131 = v0[31];
    v132 = v0[28];
    v133 = v0[29];
    v134 = v0[27];
    v136 = v0[8];
    v135 = v0[9];
    v137 = v0[7];

    v190(v131, v132);
    sub_2696BAE9C();
    v138 = swift_allocError();
    OUTLINED_FUNCTION_1_26(v138, v139, 11);

    sub_2696CE4BC(v187, v48);
    (*(v136 + 8))(v135, v137);
    v84 = v134;
    goto LABEL_30;
  }

  v154 = v0[32];
  sub_269788B50(v47, v48, v14);
  v155 = OUTLINED_FUNCTION_11_26();
  v196(v155);
  v156 = sub_2698548B4();
  v157 = sub_269854F14();
  if (os_log_type_enabled(v156, v157))
  {
    v158 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_6(v158);
    _os_log_impl(&dword_269684000, v156, v157, "Finished creating WatchSportsEventIntent from parse", v154, 2u);
    OUTLINED_FUNCTION_4_16();
  }

  v167 = v0[34];
  v168 = v0[33];
  v159 = v0[32];
  v160 = v0[29];
  v169 = v0[31];
  v170 = v0[30];
  v162 = v0[27];
  v161 = v0[28];
  v171 = v0[26];
  v172 = v0[25];
  v173 = v0[24];
  v174 = v0[21];
  v175 = v0[18];
  v178 = v0[17];
  v181 = v0[14];
  v184 = v0[13];
  v163 = v0[8];
  v164 = v0[9];
  v165 = v0[7];
  v200 = v0[6];
  v195 = v0[12];
  v198 = v0[5];
  sub_2696CE4BC(v187, v48);

  v190(v159, v161);
  (*(v163 + 8))(v164, v165);
  sub_269698048(v162, &qword_280323360, &unk_26985AB80);

  v166 = v0[1];

  return v166(v193);
}

uint64_t sub_26978834C()
{
  sub_269759494(v0 + 24);
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  return v0;
}

uint64_t sub_26978837C()
{
  sub_26978834C();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_2697883EC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_269741AF0;

  return sub_2697872C4(a1, a2);
}

uint64_t sub_269788494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for WatchSportsEventFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_2697884E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for WatchSportsEventFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2696DC678;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_2697885AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for WatchSportsEventFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2696DC678;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_269788678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for WatchSportsEventFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2696DC678;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_269788744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for WatchSportsEventFlowStrategy();
  *v13 = v6;
  v13[1] = sub_2696C995C;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_269788820(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_2697568A4(a1, a2);
  v6 = *(v3 + 8);

  return v6(v5);
}

uint64_t sub_269788880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for WatchSportsEventFlowStrategy();
  *v13 = v6;
  v13[1] = sub_2696DC678;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2697889C4(uint64_t a1)
{
  result = sub_269788A3C(&qword_280324428);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269788A3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WatchSportsEventFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269788A7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_269788AEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setMatchupId_];
}

void sub_269788B50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269851C84();
  [a3 setUsoEntityData_];
}

uint64_t OUTLINED_FUNCTION_1_26@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a3;
  *(a2 + 24) = 3;
  *(v3 - 88) = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_11_26()
{
  result = v0;
  v3 = *(v1 - 88);
  v4 = *(v1 - 104);
  return result;
}

uint64_t sub_269788BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = OUTLINED_FUNCTION_3_16();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_269788C20()
{
  OUTLINED_FUNCTION_2_7();
  v0[6] = sub_269854A04();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[7] = v1;
  *v1 = v2;
  v1[1] = sub_269788CE4;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return sub_2696B8F78();
}

uint64_t sub_269788CE4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  OUTLINED_FUNCTION_7_7();

  return v6();
}

void *sub_269788DE0(uint64_t a1)
{
  sub_269852C84();
  sub_2698538C4();
  v1 = type metadata accessor for BaseDialogProvider();
  v2 = swift_allocObject();
  sub_2698538C4();
  type metadata accessor for LocUtil();
  v36 = swift_allocObject();
  sub_26968E5D4(&v53, v36 + 16);
  sub_2698546A4();
  v3 = sub_269854694();
  v51 = &type metadata for CoreAnalyticsService;
  v52 = &xmmword_287A41610;
  v54 = &type metadata for UTSNetworkProvider;
  v55 = &off_287A43DC0;
  *&v53 = swift_allocObject();
  sub_2697D24B0(&v50, (v53 + 16));
  v56 = &type metadata for CoreAnalyticsService;
  v57 = &xmmword_287A41610;
  v4 = type metadata accessor for MoveToGroupDevicesProvider();
  v5 = swift_allocObject();
  v6 = sub_269853264();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_269853254();
  v51 = v1;
  v52 = &off_287A3DBA0;
  *&v50 = v2;
  v48 = sub_269854674();
  v49 = MEMORY[0x277D61F08];
  v46[4] = &xmmword_287A41610;
  *&v47 = v3;
  v46[3] = &type metadata for CoreAnalyticsService;
  v45[3] = &type metadata for UTSProvider;
  v45[4] = &off_287A43FA8;
  v45[0] = swift_allocObject();
  sub_269728D78(&v53, v45[0] + 16);
  v44[3] = v4;
  v44[4] = &off_287A40140;
  v44[0] = v5;
  v42 = v6;
  v43 = MEMORY[0x277D5BD58];
  *&v41 = v9;
  v39 = &type metadata for EncryptionProvider;
  v40 = &protocol witness table for EncryptionProvider;
  type metadata accessor for WatchSportsEventHandleIntentStrategy();
  v10 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v50, v1);
  OUTLINED_FUNCTION_3_20();
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  __swift_mutable_project_boxed_opaque_existential_1(v46, &type metadata for CoreAnalyticsService);
  __swift_mutable_project_boxed_opaque_existential_1(v45, &type metadata for UTSProvider);
  OUTLINED_FUNCTION_3_20();
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v23 = (v22 - v21);
  (*(v24 + 16))(v22 - v21);
  __swift_mutable_project_boxed_opaque_existential_1(v44, v4);
  OUTLINED_FUNCTION_3_20();
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v30 = (v29 - v28);
  (*(v31 + 16))(v29 - v28);
  v32 = *v16;
  v33 = *v30;
  v10[20] = v1;
  v10[21] = &off_287A3DBA0;
  v10[17] = v32;
  v10[37] = &type metadata for CoreAnalyticsService;
  v10[38] = &xmmword_287A41610;
  v10[42] = &type metadata for UTSProvider;
  v10[43] = &off_287A43FA8;
  v34 = swift_allocObject();
  v10[39] = v34;
  memcpy((v34 + 16), v23, 0x50uLL);
  v10[47] = v4;
  v10[48] = &off_287A40140;
  v10[44] = v33;
  sub_2696A73F8(v59, (v10 + 2));
  sub_26968E5D4(&v58, (v10 + 7));
  sub_2696A73F8((v10 + 17), (v10 + 12));
  v10[22] = v36;
  v10[23] = a1;
  sub_26968E5D4(v59, (v10 + 24));
  sub_26968E5D4(&v47, (v10 + 29));
  sub_26968E5D4(&v41, (v10 + 49));
  sub_26968E5D4(&v38, (v10 + 54));
  __swift_destroy_boxed_opaque_existential_0(v44);
  __swift_destroy_boxed_opaque_existential_0(v45);
  __swift_destroy_boxed_opaque_existential_0(v46);
  __swift_destroy_boxed_opaque_existential_0(&v50);
  sub_269728DD4(&v53);
  return v10;
}

id sub_269789288()
{
  if (qword_2803224E0 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D740;
  qword_28033D750 = qword_28033D740;

  return v1;
}

uint64_t sub_2697892EC()
{
  OUTLINED_FUNCTION_2_7();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[9] = OUTLINED_FUNCTION_4_7();
  v6 = sub_2698532A4();
  v1[10] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[11] = v7;
  v9 = *(v8 + 64);
  v1[12] = OUTLINED_FUNCTION_4_7();
  v10 = sub_2698548D4();
  v1[13] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[14] = v11;
  v13 = *(v12 + 64);
  v1[15] = OUTLINED_FUNCTION_4_7();
  v14 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_269789408()
{
  OUTLINED_FUNCTION_34();
  if (qword_2803226E0 != -1)
  {
    v1 = OUTLINED_FUNCTION_0_10();
  }

  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = OUTLINED_FUNCTION_3_31(v1, qword_28033D910);
  v6(v5);
  v7 = sub_2698548B4();
  v8 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v8))
  {
    v9 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v9);
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
    OUTLINED_FUNCTION_18_7();
  }

  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[13];
  v18 = v0[8];

  v19 = OUTLINED_FUNCTION_12_23();
  v20(v19);
  v21 = *__swift_project_boxed_opaque_existential_1((v18 + 136), *(v18 + 160));
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[16] = v22;
  *v22 = v23;
  v22[1] = sub_26978957C;
  v24 = v0[12];

  return sub_269788BF4(v24, 0xD000000000000021, 0x800000026987F2A0);
}

uint64_t sub_26978957C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269789678()
{
  v13 = *(v0 + 120);
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = v5[11];
  __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  sub_269852CA4();
  v8 = sub_269853234();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  v9 = sub_2698538F4();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v6[3] = v9;
  v6[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_49_6();
  sub_2698530B4();
  sub_269698048(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_269698048(v3, &qword_280323010, &unk_26985B640);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_4_17();

  return v11();
}

uint64_t sub_2697897F0()
{
  OUTLINED_FUNCTION_2_7();
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];

  OUTLINED_FUNCTION_7_7();
  v5 = v0[17];

  return v4();
}

uint64_t sub_269789864()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2698548D4();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_4_7();
  v8 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26978990C()
{
  OUTLINED_FUNCTION_34();
  if (qword_2803226E0 != -1)
  {
    v1 = OUTLINED_FUNCTION_0_10();
  }

  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = OUTLINED_FUNCTION_3_31(v1, qword_28033D910);
  v6(v5);
  v7 = sub_2698548B4();
  v8 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v8))
  {
    v9 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v9);
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
    OUTLINED_FUNCTION_18_7();
  }

  v16 = v0[6];
  v15 = v0[7];
  v18 = v0[4];
  v17 = v0[5];

  v19 = OUTLINED_FUNCTION_12_23();
  v20(v19);
  v21 = *(v18 + 184);
  v0[8] = v21;
  if (v21)
  {
    v22 = v21;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[9] = v23;
    *v23 = v24;
    OUTLINED_FUNCTION_65_2(v23);

    return sub_26978A85C();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[11] = v26;
    *v26 = v27;
    OUTLINED_FUNCTION_65_2(v26);

    return sub_269789D8C();
  }
}

uint64_t sub_269789ABC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269789BB8()
{
  OUTLINED_FUNCTION_2_7();

  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_4_17();

  return v2();
}

uint64_t sub_269789C18()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = *(v1 + 56);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_269789D28()
{
  OUTLINED_FUNCTION_2_7();

  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_7_7();

  return v3();
}

uint64_t sub_269789D8C()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324450, &qword_26985FF78);
  v1[5] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_4_7();
  v8 = sub_2698548D4();
  v1[8] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_37_0();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_269789EBC()
{
  OUTLINED_FUNCTION_21_11();
  v1 = OUTLINED_FUNCTION_74_1();
  v2 = [v1 isAppInstalled];

  if (v2)
  {
    v3 = [v2 BOOLValue];

    if (v3)
    {
      v4 = OUTLINED_FUNCTION_74_1();
      v5 = sub_2696D1E04(v4, &selRef_playablePunchoutUrl);
      if (v6)
      {
        OUTLINED_FUNCTION_37_6();
        sub_26978D094();
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10();
        }

        v7 = v0[11];
        v8 = v0[9];
        v10 = v0[6];
        v9 = v0[7];
        v11 = v0[5];
        v12 = v0[3];
        OUTLINED_FUNCTION_33_0(v0[8], qword_28033D910);
        (*(v8 + 16))(v7);
        (*(v10 + 16))(v9, v12, v11);
        v13 = sub_2698548B4();
        v14 = sub_269854F14();
        v15 = os_log_type_enabled(v13, v14);
        v16 = v0[7];
        if (v15)
        {
          v17 = v0[5];
          v18 = OUTLINED_FUNCTION_27_2();
          v19 = swift_slowAlloc();
          *v18 = 138412290;
          v20 = sub_2698534E4();
          v21 = [v20 isEntitledToPlayOnDevice];

          if (!v21)
          {
            sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
            v21 = sub_269855034();
          }

          (*(v0[6] + 8))(v0[7], v0[5]);
          *(v18 + 4) = v21;
          *v19 = v21;
          _os_log_impl(&dword_269684000, v13, v14, "WatchSportsEventHandleIntentFlowStrategy.makeIntentHandledResponse() punching out to playablePunchoutUrl isEntitled: %@", v18, 0xCu);
          sub_269698048(v19, &qword_280324D50, &qword_26985D530);
          OUTLINED_FUNCTION_68_3();
          OUTLINED_FUNCTION_10();
        }

        else
        {
          v109 = v0[5];
          v110 = v0[6];

          (*(v110 + 8))(v16, v109);
        }

        v111 = v0[4];
        v112 = v0[2];
        (*(v0[9] + 8))(v0[11], v0[8]);
        sub_26978DC30();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
        v113 = OUTLINED_FUNCTION_35_0();
        v114 = OUTLINED_FUNCTION_33_6(v113, xmmword_2698590C0);
        v115 = MEMORY[0x277D5C1D8];
        v112[3] = v114;
        v112[4] = v115;
        __swift_allocate_boxed_opaque_existential_1(v112);
        sub_2698538E4();
        v117 = v0[13];
        v116 = v0[14];
        v119 = v0[11];
        v118 = v0[12];
        v120 = v0[10];
        v121 = v0[7];

        OUTLINED_FUNCTION_4_17();
        goto LABEL_38;
      }

      if (qword_2803226E0 != -1)
      {
        v5 = OUTLINED_FUNCTION_0_10();
      }

      v91 = v0[9];
      v90 = v0[10];
      v92 = v0[8];
      v93 = OUTLINED_FUNCTION_3_31(v5, qword_28033D910);
      v94(v93);
      v95 = sub_2698548B4();
      v96 = sub_269854F24();
      if (OUTLINED_FUNCTION_19_5(v96))
      {
        v97 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v97);
        OUTLINED_FUNCTION_18_8();
        _os_log_impl(v98, v99, v100, v101, v102, 2u);
        OUTLINED_FUNCTION_18_7();
      }

      v104 = v0[9];
      v103 = v0[10];
      v105 = v0[8];

      v106 = OUTLINED_FUNCTION_12_23();
      v107(v106);
      sub_26978D094();
      v89 = "intentResponse.playablePunchoutUrl";
      goto LABEL_34;
    }
  }

  v22 = OUTLINED_FUNCTION_74_1();
  v23 = sub_2696D1E04(v22, &selRef_appName);
  v0[15] = v24;
  if (!v24)
  {
    if (qword_2803226E0 != -1)
    {
      v23 = OUTLINED_FUNCTION_0_10();
    }

    v49 = v0[12];
    v50 = v0[8];
    v51 = v0[9];
    v52 = OUTLINED_FUNCTION_3_31(v23, qword_28033D910);
    v53(v52);
    v54 = sub_2698548B4();
    v55 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v55))
    {
      v56 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v56);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v57, v58, v59, v60, v61, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v62 = v0[12];
    v63 = v0[8];
    v64 = v0[9];

    v65 = OUTLINED_FUNCTION_12_23();
    v66(v65);
    sub_26978D094();
    v67 = 0x800000026987F220;
    sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1();
    v69 = 0xD000000000000016;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_37_6();
  v25 = OUTLINED_FUNCTION_74_1();
  sub_2696D1E04(v25, &selRef_appStorePunchoutUrl);
  v0[16] = v26;
  if (!v26)
  {

    if (qword_2803226E0 != -1)
    {
      v70 = OUTLINED_FUNCTION_0_10();
    }

    v71 = v0[13];
    v72 = v0[8];
    v73 = v0[9];
    v74 = OUTLINED_FUNCTION_3_31(v70, qword_28033D910);
    v75(v74);
    v76 = sub_2698548B4();
    v77 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v77))
    {
      v78 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v78);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v79, v80, v81, v82, v83, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v84 = v0[13];
    v85 = v0[8];
    v86 = v0[9];

    v87 = OUTLINED_FUNCTION_12_23();
    v88(v87);
    sub_26978D094();
    v89 = "intentResponse.appStorePunchoutUrl";
LABEL_34:
    v67 = (v89 - 32) | 0x8000000000000000;
    sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1();
    v69 = 0xD000000000000022;
LABEL_35:
    *v68 = v69;
    *(v68 + 8) = v67;
    *(v68 + 16) = 0;
    *(v68 + 24) = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_73_1();

    OUTLINED_FUNCTION_7_7();
LABEL_38:

    return v108();
  }

  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v27 = v0[14];
  v28 = v0[9];
  OUTLINED_FUNCTION_33_0(v0[8], qword_28033D910);
  (*(v28 + 16))(v27);
  v29 = sub_2698548B4();
  v30 = sub_269854F24();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_16_2();
    *v31 = 0;
    _os_log_impl(&dword_269684000, v29, v30, "WatchSportsEventHandleIntentFlowStrategy.makeIntentHandledResponse() punching out to app store", v31, 2u);
    OUTLINED_FUNCTION_68_3();
  }

  v32 = v0[14];
  v33 = v0[8];
  v34 = v0[9];
  v35 = v0[4];

  (*(v34 + 8))(v32, v33);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[17] = v36;
  *v36 = v37;
  v36[1] = sub_26978A640;
  v38 = v0[2];
  OUTLINED_FUNCTION_112();

  return sub_2696B9F80(v39, v40, v41, v42, v43, v44, v45, v46);
}

uint64_t sub_26978A640()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  v3[18] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[15];
    v12 = v3[16];

    v15 = v3[13];
    v14 = v3[14];
    v17 = v3[11];
    v16 = v3[12];
    v18 = v3[10];
    v19 = v3[7];

    OUTLINED_FUNCTION_4_17();

    return v20();
  }
}

uint64_t sub_26978A7BC()
{
  OUTLINED_FUNCTION_34();
  v2 = v0[15];
  v1 = v0[16];

  v3 = v0[18];
  OUTLINED_FUNCTION_73_1();

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_26978A85C()
{
  OUTLINED_FUNCTION_2_7();
  v1[57] = v2;
  v1[58] = v0;
  v1[55] = v3;
  v1[56] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324450, &qword_26985FF78);
  v1[59] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[60] = v6;
  v8 = *(v7 + 64);
  v1[61] = OUTLINED_FUNCTION_37_0();
  v1[62] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v9);
  v11 = *(v10 + 64);
  v1[63] = OUTLINED_FUNCTION_4_7();
  v12 = sub_2698532A4();
  v1[64] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v1[65] = v13;
  v15 = *(v14 + 64);
  v1[66] = OUTLINED_FUNCTION_4_7();
  v16 = sub_2698548D4();
  v1[67] = v16;
  OUTLINED_FUNCTION_5_12(v16);
  v1[68] = v17;
  v19 = *(v18 + 64);
  v1[69] = OUTLINED_FUNCTION_37_0();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v20 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v20);
  v22 = *(v21 + 64);
  v1[76] = OUTLINED_FUNCTION_4_7();
  v23 = sub_269853634();
  v1[77] = v23;
  OUTLINED_FUNCTION_5_12(v23);
  v1[78] = v24;
  v26 = *(v25 + 64);
  v1[79] = OUTLINED_FUNCTION_4_7();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324098, &qword_26985EB78);
  OUTLINED_FUNCTION_8_9(v27);
  v29 = *(v28 + 64);
  v1[80] = OUTLINED_FUNCTION_4_7();
  v30 = type metadata accessor for VideoDataModels.ButtonModel(0);
  v1[81] = v30;
  OUTLINED_FUNCTION_8_9(v30);
  v32 = *(v31 + 64);
  v1[82] = OUTLINED_FUNCTION_4_7();
  v33 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_26978AAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_14();
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_28_10();
  v19 = sub_2698534E4();
  v20 = [v19 isAppInstalled];

  if (!v20)
  {
    goto LABEL_9;
  }

  v21 = [v20 BOOLValue];

  if (!v21)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_28_10();
  v22 = sub_2698534E4();
  v23 = [v22 isEntitledToPlayOnDevice];

  if (!v23)
  {
    goto LABEL_9;
  }

  v24 = [v23 BOOLValue];

  if (v24 && (OUTLINED_FUNCTION_28_10(), v25 = sub_2698534E4(), sub_2696D1E04(v25, &selRef_playablePunchoutUrl), (v18[83] = v26) != 0))
  {
    OUTLINED_FUNCTION_37_6();
    v27 = swift_task_alloc();
    v18[84] = v27;
    *v27 = v18;
    v27[1] = sub_26978AEA4;
    v28 = v18[57];
    v29 = v18[58];
    OUTLINED_FUNCTION_112();

    return sub_26978D4AC();
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_28_10();
    v32 = sub_269853504();
    v33 = sub_2696D1E04(v32, &selRef_matchupId);
    v18[88] = v33;
    v18[89] = v34;
    if (v34)
    {
      v35 = v33;
      v36 = v34;
      __swift_project_boxed_opaque_existential_1((v18[58] + 312), *(v18[58] + 336));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
      v37 = swift_allocObject();
      v18[90] = v37;
      *(v37 + 16) = xmmword_269857710;
      *(v37 + 32) = v35;
      *(v37 + 40) = v36;

      v38 = swift_task_alloc();
      v18[91] = v38;
      *v38 = v18;
      v38[1] = sub_26978B7C8;
      OUTLINED_FUNCTION_112();

      return sub_2697D780C();
    }

    else
    {
      if (qword_2803226E0 != -1)
      {
        v33 = OUTLINED_FUNCTION_0_10();
      }

      v40 = v18[69];
      v41 = v18[68];
      v42 = v18[67];
      v43 = OUTLINED_FUNCTION_3_31(v33, qword_28033D910);
      v44(v43);
      v45 = sub_2698548B4();
      v46 = sub_269854F04();
      if (OUTLINED_FUNCTION_19_5(v46))
      {
        v47 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v47);
        OUTLINED_FUNCTION_18_8();
        _os_log_impl(v48, v49, v50, v51, v52, 2u);
        OUTLINED_FUNCTION_18_7();
      }

      v53 = v18[69];
      OUTLINED_FUNCTION_47_4();

      v54 = OUTLINED_FUNCTION_12_23();
      v55(v54);
      sub_26978D094();
      sub_2696BAE9C();
      v67 = OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_25_10(v56, 16);
      OUTLINED_FUNCTION_2_24();
      v57 = v18[69];
      v58 = v18[66];
      OUTLINED_FUNCTION_58_1();

      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_112();

      return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, v67, a15, a16, a17, a18);
    }
  }
}

uint64_t sub_26978AEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_14();
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_14_6();
  v21 = v20;
  OUTLINED_FUNCTION_6_13();
  *v22 = v21;
  v24 = *(v23 + 672);
  v25 = *v19;
  OUTLINED_FUNCTION_1_6();
  *v26 = v25;

  if (v18)
  {
    v27 = v21[83];

    v28 = v21[82];
    v29 = v21[80];
    v30 = v21[79];
    v31 = v21[76];
    v32 = v21[75];
    v33 = v21[74];
    v34 = v21[73];
    v35 = v21[72];
    v57 = v18;
    v36 = v21[71];
    v52 = v21[70];
    v53 = v21[69];
    v54 = v21[66];
    v55 = v21[63];
    v56 = v21[62];
    v37 = v21[61];

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_112();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, v52, v53, v54, v55, v56, v57, a16, a17, a18);
  }

  else
  {
    v47 = v21[83];

    OUTLINED_FUNCTION_3_16();
    OUTLINED_FUNCTION_112();

    return MEMORY[0x2822009F8](v48, v49, v50);
  }
}

uint64_t sub_26978B090()
{
  v1 = v0[57];
  v2 = v0[58];
  sub_269854614();
  v0[85] = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[86] = v4;
  *v4 = v5;
  v4[1] = sub_26978B14C;
  v6 = v0[80];

  return sub_269796CBC();
}

uint64_t sub_26978B14C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 688);
  v3 = *(v1 + 680);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26978B24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_115();
  v23 = v22[80];
  if (__swift_getEnumTagSinglePayload(v23, 1, v22[81]) == 1)
  {
    v24 = sub_269698048(v23, &qword_280324098, &qword_26985EB78);
    if (qword_2803226E0 != -1)
    {
      v24 = OUTLINED_FUNCTION_0_10();
    }

    v25 = v22[75];
    v26 = v22[68];
    v27 = v22[67];
    v28 = OUTLINED_FUNCTION_3_31(v24, qword_28033D910);
    v29(v28);
    v30 = sub_2698548B4();
    v31 = sub_269854F14();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v32);
      _os_log_impl(&dword_269684000, v30, v31, "Unable to generate snippet model for remote button. Manually closing Siri.", v26, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v33 = v22[75];
    v34 = v22[68];
    v35 = v22[67];
    v36 = v22[55];

    (*(v34 + 8))(v33, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v37 = OUTLINED_FUNCTION_35_0();
    *(v37 + 16) = xmmword_2698590C0;
    *(v37 + 32) = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
    sub_2698538F4();
    OUTLINED_FUNCTION_41_3();
    v38 = MEMORY[0x277D5C1D8];
    v36[3] = v39;
    v36[4] = v38;
    __swift_allocate_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_1_27();
    OUTLINED_FUNCTION_11_27();

    OUTLINED_FUNCTION_4_17();
    OUTLINED_FUNCTION_69();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  else
  {
    v49 = v22[82];
    v50 = v22[79];
    v51 = v22[76];
    v52 = v22[58];
    sub_26975DCA4(v23, v49);
    sub_269852E64();
    sub_2698535C4();
    v53 = v52[53];
    __swift_project_boxed_opaque_existential_1(v52 + 49, v52[52]);
    v22[32] = type metadata accessor for VideoDataModels(0);
    v22[33] = sub_26978E4BC(&qword_280323A28, 255, type metadata accessor for VideoDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22 + 29);
    sub_269720A64(v49, boxed_opaque_existential_1);
    swift_storeEnumTagMultiPayload();
    v55 = *(MEMORY[0x277D5BE40] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v22[87] = v56;
    *v56 = v57;
    v56[1] = sub_26978B5CC;
    v58 = v22[79];
    v59 = v22[55];
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2821BB470](v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_26978B5CC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 696);
  v6 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0((v2 + 232));
  v8 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26978B6B4()
{
  v1 = v0[82];
  (*(v0[78] + 8))(v0[79], v0[77]);
  sub_269720AC8(v1);
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_58_1();

  OUTLINED_FUNCTION_4_17();

  return v2();
}

uint64_t sub_26978B7C8()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  v9 = v6[91];
  *v8 = *v1;
  v7[92] = v0;

  v10 = v6[90];
  if (v0)
  {
    v11 = v7[89];
  }

  else
  {

    v7[93] = v3;
    v7[94] = v5;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26978B914()
{
  v89 = v0;
  v3 = *(v0 + 752);
  v4 = *(v0 + 712);
  sub_26981D604(*(v0 + 704), v4, *(v0 + 744));

  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  *(v0 + 760) = v5;
  *(v0 + 768) = v6;
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  *(v0 + 776) = v7;
  *(v0 + 784) = v8;
  if (v6)
  {
    if (*(v0 + 88))
    {
      v9 = *(v0 + 456);
      *(v0 + 792) = sub_269854614();
      *(v0 + 800) = v10;
      if (v10)
      {
        OUTLINED_FUNCTION_37_6();
        v11 = *__swift_project_boxed_opaque_existential_1((*(v0 + 464) + 352), *(*(v0 + 464) + 376));
        v12 = swift_task_alloc();
        *(v0 + 808) = v12;
        *v12 = v0;
        v12[1] = sub_26978C668;
        OUTLINED_FUNCTION_84();

        return sub_269760410(v13, v14);
      }

      v3 = (v0 + 360);
      v17 = (v0 + 376);
      v18 = 368;
      v19 = 384;
    }

    else
    {
      v3 = (v0 + 312);
      v17 = (v0 + 328);
      v18 = 320;
      v19 = 336;
    }

    *v17 = v5;
    *(v0 + v19) = v6;
    sub_2696A8078(v17);
    *v3 = v7;
    *(v0 + v18) = v8;
    sub_2696A8078(v3);
  }

  OUTLINED_FUNCTION_28_10();
  v20 = sub_2698534E4();
  sub_2696D1E04(v20, &selRef_appName);
  *(v0 + 824) = v21;
  if (!v21)
  {
LABEL_20:
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    OUTLINED_FUNCTION_38_7();
    OUTLINED_FUNCTION_29_2(v57, qword_28033D910);
    (*(v6 + 16))(v3);
    v59 = *(v1 + 16);
    v58 = v1 + 16;
    OUTLINED_FUNCTION_61_1();
    v59();
    OUTLINED_FUNCTION_61_1();
    v59();
    v60 = sub_2698548B4();
    v61 = sub_269854F24();
    os_log_type_enabled(v60, v61);
    OUTLINED_FUNCTION_51_6();
    if (v62)
    {
      swift_slowAlloc();
      v88[0] = OUTLINED_FUNCTION_71_4();
      *v8 = 136315394;
      v63 = sub_2698534E4();
      *(v0 + 392) = sub_2696D1E04(v63, &selRef_appName);
      *(v0 + 400) = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
      OUTLINED_FUNCTION_70_3();
      v65 = OUTLINED_FUNCTION_32_8();
      (v5)(v65);
      v66 = sub_26974F520(v4, v61, v88);

      v67 = OUTLINED_FUNCTION_56_3();
      *(v0 + 408) = sub_2696D1E04(v67, &selRef_appStorePunchoutUrl);
      *(v0 + 416) = v68;
      sub_269854AE4();
      v69 = OUTLINED_FUNCTION_64_2();
      (v5)(v69);
      v70 = sub_26974F520(v66, v60, v88);

      *(v8 + 14) = v70;
      OUTLINED_FUNCTION_43_3(&dword_269684000, v71, v72, "WatchSportsEventHandleIntentFlowStrategy.makeIntentHandledResponseRemote() did not receive appName '%s' or appStorePunchoutUrl '%s'", v73, v74, v75, v76, v81, v82, v83);
      OUTLINED_FUNCTION_72_1();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v84 + 8))();
    }

    else
    {

      v77 = *(v7 + 8);
      v77(v2, v58);
      v77(v3, v58);
      (*(v5 + 8))(v4, v8);
    }

    sub_26978D094();
    sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_25_10(v78, 57);
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_5_28();

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_84();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_28_10();
  v22 = sub_2698534E4();
  sub_2696D1E04(v22, &selRef_appStorePunchoutUrl);
  if (!v23)
  {

    goto LABEL_20;
  }

  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_33_0(v7, qword_28033D910);
  v25 = *(v5 + 16);
  v24 = (v5 + 16);
  v25(v3);
  v26 = sub_2698548B4();
  v27 = sub_269854F24();
  if (os_log_type_enabled(v26, v27))
  {
    v24 = OUTLINED_FUNCTION_16_2();
    *v24 = 0;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v28, v29, v30, v31, v32, 2u);
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_68_4();
  (*(v8 + 8))(v27, v24);
  sub_2696A73F8(v6 + 96, v0 + 112);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 112, *(v0 + 136));
  OUTLINED_FUNCTION_3_20();
  v34 = *(v33 + 64);
  v35 = OUTLINED_FUNCTION_4_7();
  v36 = OUTLINED_FUNCTION_48_5(v35);
  v37(v36);
  v38 = *v24;
  v39 = type metadata accessor for BaseDialogProvider();
  OUTLINED_FUNCTION_67_2(v39);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_54_1(inited);
  OUTLINED_FUNCTION_3_20();
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_62_2();
  v43();
  OUTLINED_FUNCTION_77_2();
  v44 = __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  OUTLINED_FUNCTION_52_2(v44, v45, v46, v47, v48, v49, v50, v51, v81, v82, v83, v84, v85, v86, v87);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 848) = v52;
  *v52 = v53;
  OUTLINED_FUNCTION_17_13(v52);
  OUTLINED_FUNCTION_84();

  return sub_2696C3DCC(v54, v55);
}

uint64_t sub_26978BFB0()
{
  v93 = v1;
  v4 = 0x280322000uLL;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v5 = v1[92];
  v6 = v1[74];
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_33_0(v0, qword_28033D910);
  v7 = OUTLINED_FUNCTION_42_5();
  v8(v7);
  v9 = v5;
  v10 = sub_2698548B4();
  v11 = sub_269854F24();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v1[92];
  v14 = v1[74];
  v15 = v1[68];
  v16 = v1[67];
  if (v12)
  {
    v17 = OUTLINED_FUNCTION_27_2();
    v91 = v14;
    v92[0] = OUTLINED_FUNCTION_9_3();
    v14 = v92[0];
    *v17 = 136315138;
    v1[53] = v13;
    v18 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v19 = sub_269854AE4();
    v2 = v20;
    v3 = sub_26974F520(v19, v20, v92);

    *(v17 + 4) = v3;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v21, v22, "WatchSportsEventHandleIntentFlowStrategy.makeIntentHandledResponseRemote() error while getting local playables for game: %s");
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_68_3();
    v4 = 0x280322000;
    OUTLINED_FUNCTION_10();

    (*(v15 + 8))(v91, v16);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  OUTLINED_FUNCTION_28_10();
  v23 = sub_2698534E4();
  sub_2696D1E04(v23, &selRef_appName);
  v1[103] = v24;
  if (!v24)
  {
LABEL_16:
    if (*(v4 + 1760) != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    OUTLINED_FUNCTION_38_7();
    OUTLINED_FUNCTION_29_2(v61, qword_28033D910);
    (*(v14 + 16))(v10);
    v63 = *(v2 + 16);
    v62 = v2 + 16;
    OUTLINED_FUNCTION_61_1();
    v63();
    OUTLINED_FUNCTION_61_1();
    v63();
    v64 = sub_2698548B4();
    v65 = sub_269854F24();
    os_log_type_enabled(v64, v65);
    OUTLINED_FUNCTION_51_6();
    if (v66)
    {
      swift_slowAlloc();
      v92[0] = OUTLINED_FUNCTION_71_4();
      *v4 = 136315394;
      v67 = sub_2698534E4();
      v1[49] = sub_2696D1E04(v67, &selRef_appName);
      v1[50] = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
      OUTLINED_FUNCTION_70_3();
      v69 = OUTLINED_FUNCTION_32_8();
      (v11)(v69);
      v70 = sub_26974F520(v16, v65, v92);

      v71 = OUTLINED_FUNCTION_56_3();
      v1[51] = sub_2696D1E04(v71, &selRef_appStorePunchoutUrl);
      v1[52] = v72;
      sub_269854AE4();
      v73 = OUTLINED_FUNCTION_64_2();
      (v11)(v73);
      v74 = sub_26974F520(v70, v64, v92);

      *(v4 + 14) = v74;
      OUTLINED_FUNCTION_43_3(&dword_269684000, v75, v76, "WatchSportsEventHandleIntentFlowStrategy.makeIntentHandledResponseRemote() did not receive appName '%s' or appStorePunchoutUrl '%s'", v77, v78, v79, v80, v85, v86, v87);
      OUTLINED_FUNCTION_72_1();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v88 + 8))(v89, v91);
    }

    else
    {

      v81 = v13[1];
      v81(v3, v62);
      v81(v10, v62);
      (*(v11 + 8))(v16, v4);
    }

    sub_26978D094();
    sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_25_10(v82, 57);
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_5_28();

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_84();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_28_10();
  v25 = sub_2698534E4();
  sub_2696D1E04(v25, &selRef_appStorePunchoutUrl);
  if (!v26)
  {

    goto LABEL_16;
  }

  if (*(v4 + 1760) != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_33_0(v13, qword_28033D910);
  v28 = *(v11 + 16);
  v27 = (v11 + 16);
  v28(v10);
  v29 = sub_2698548B4();
  v30 = sub_269854F24();
  if (os_log_type_enabled(v29, v30))
  {
    v27 = OUTLINED_FUNCTION_16_2();
    *v27 = 0;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v31, v32, v33, v34, v35, 2u);
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_68_4();
  (*(v4 + 8))(v30, v27);
  sub_2696A73F8(v14 + 96, (v1 + 14));
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 14), v1[17]);
  OUTLINED_FUNCTION_3_20();
  v37 = *(v36 + 64);
  v38 = OUTLINED_FUNCTION_4_7();
  v39 = OUTLINED_FUNCTION_48_5(v38);
  v40(v39);
  v41 = *v27;
  v42 = type metadata accessor for BaseDialogProvider();
  OUTLINED_FUNCTION_67_2(v42);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_54_1(inited);
  OUTLINED_FUNCTION_3_20();
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_62_2();
  v46();
  OUTLINED_FUNCTION_77_2();
  v47 = __swift_destroy_boxed_opaque_existential_0(v1 + 14);
  OUTLINED_FUNCTION_52_2(v47, v48, v49, v50, v51, v52, v53, v54, v85, v86, v87, v88, v89, v90, v91);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v1[106] = v55;
  *v55 = v56;
  OUTLINED_FUNCTION_17_13(v55);
  OUTLINED_FUNCTION_84();

  return sub_2696C3DCC(v57, v58);
}

uint64_t sub_26978C668()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  v6 = *(v5 + 808);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v3 + 816) = v0;

  if (v0)
  {
    v9 = *(v3 + 800);
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26978C76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_115();
  a29 = v32;
  a30 = v33;
  a28 = v31;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v34 = v31[100];
  v35 = v31[73];
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_33_0(v30, qword_28033D910);
  v36 = OUTLINED_FUNCTION_42_5();
  v37(v36);

  v38 = sub_2698548B4();
  v39 = sub_269854F04();

  v40 = os_log_type_enabled(v38, v39);
  v41 = v31[100];
  if (v40)
  {
    v42 = v31[99];
    v43 = v31[73];
    v44 = v31[68];
    v30 = v31[67];
    v45 = OUTLINED_FUNCTION_27_2();
    v46 = OUTLINED_FUNCTION_9_3();
    a15 = v46;
    *v45 = 136315138;
    v47 = sub_26974F520(v42, v41, &a15);

    *(v45 + 4) = v47;
    _os_log_impl(&dword_269684000, v38, v39, "AirPlaying from source device instead of playing from remote device: %s.", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_68_3();

    v48 = *(v44 + 8);
    v49 = OUTLINED_FUNCTION_22_3();
  }

  else
  {
    v51 = v31[73];
    OUTLINED_FUNCTION_47_4();

    v49 = OUTLINED_FUNCTION_12_23();
  }

  v50(v49);
  OUTLINED_FUNCTION_35_9();
  v31[43] = v41;
  v31[44] = v39;
  sub_2696A8078((v31 + 43));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v52 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_33_6(v52, xmmword_2698590C0);
  OUTLINED_FUNCTION_41_3();
  v53 = MEMORY[0x277D5C1D8];
  v30[3] = v54;
  v30[4] = v53;
  __swift_allocate_boxed_opaque_existential_1(v30);
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_11_27();

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_69();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26978C9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_115();
  a29 = v32;
  a30 = v33;
  a28 = v31;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v34 = v31[102];
  v35 = v31[72];
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_33_0(v30, qword_28033D910);
  v36 = OUTLINED_FUNCTION_42_5();
  v37(v36);
  v38 = v34;
  v39 = sub_2698548B4();
  v40 = sub_269854F04();

  v41 = os_log_type_enabled(v39, v40);
  v42 = v31[102];
  v43 = v31[72];
  v44 = v31[68];
  v45 = v31[67];
  if (v41)
  {
    a14 = v31[72];
    v46 = OUTLINED_FUNCTION_27_2();
    v47 = OUTLINED_FUNCTION_9_3();
    a15 = v47;
    *v46 = 136315138;
    v31[54] = v42;
    v48 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v49 = sub_269854AE4();
    v51 = sub_26974F520(v49, v50, &a15);

    *(v46 + 4) = v51;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v52, v53, "Error while setting airplay destination: %s");
    __swift_destroy_boxed_opaque_existential_0(v47);
    OUTLINED_FUNCTION_68_3();
    OUTLINED_FUNCTION_10();

    (*(v44 + 8))(a14, v45);
  }

  else
  {

    (*(v44 + 8))(v43, v45);
  }

  OUTLINED_FUNCTION_35_9();
  v31[43] = v40;
  v31[44] = v42;
  sub_2696A8078((v31 + 43));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v54 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_33_6(v54, xmmword_2698590C0);
  OUTLINED_FUNCTION_41_3();
  v55 = MEMORY[0x277D5C1D8];
  v45[3] = v56;
  v45[4] = v55;
  __swift_allocate_boxed_opaque_existential_1(v45);
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_11_27();

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_69();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26978CC78()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 848);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v8 + 856) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26978CD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_14();
  OUTLINED_FUNCTION_21_11();
  v19 = v18[105];
  v20 = v18[104];
  v21 = v18[103];

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v19 + 16));

  v22 = v18[107];
  OUTLINED_FUNCTION_2_24();
  v33 = v18[69];
  v34 = v18[66];
  v35 = v18[63];
  v36 = v18[62];
  v37 = v18[61];
  v38 = v23;

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_112();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, v35, v36, v37, v38, a16, a17, a18);
}

uint64_t sub_26978CE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_14();
  OUTLINED_FUNCTION_21_11();
  v19 = *(v18 + 840);
  v42 = *(v18 + 824);
  v20 = *(v18 + 528);
  v21 = *(v18 + 520);
  v22 = *(v18 + 504);
  v44 = *(v18 + 512);
  v46 = *(v18 + 832);
  v23 = *(v18 + 464);
  v24 = *(v18 + 440);
  v25 = v23[11];
  __swift_project_boxed_opaque_existential_1(v23 + 7, v23[10]);
  sub_269852CA4();
  v26 = sub_269853234();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v26);
  v27 = sub_2698538F4();
  *(v18 + 208) = 0u;
  *(v18 + 224) = 0;
  *(v18 + 192) = 0u;
  v28 = MEMORY[0x277D5C1D8];
  v24[3] = v27;
  v24[4] = v28;
  __swift_allocate_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_49_6();
  sub_2698530B4();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v19 + 16));

  sub_269698048(v18 + 192, &qword_280323028, qword_26985AD20);
  sub_269698048(v22, &qword_280323010, &unk_26985B640);
  (*(v21 + 8))(v20, v44);

  OUTLINED_FUNCTION_1_27();
  v40 = v30;
  v41 = v29;
  v43 = *(v18 + 504);
  v45 = *(v18 + 496);
  v47 = *(v18 + 488);

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_112();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v18 + 192, 0, v40, v41, v43, v45, v47, a16, a17, a18);
}

uint64_t sub_26978D094()
{
  sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v24 = sub_2698540F4();
  OUTLINED_FUNCTION_3_20();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = sub_2698540C4();
  OUTLINED_FUNCTION_3_20();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v23 - v20;
  sub_2698540B4();
  (*(v13 + 16))(v19, v21, v11);
  sub_2698540E4();
  sub_2698540D4();
  (*(v4 + 8))(v10, v24);
  return (*(v13 + 8))(v21, v11);
}

uint64_t sub_26978D4AC()
{
  OUTLINED_FUNCTION_2_7();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_2698548D4();
  v1[7] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[8] = v6;
  v8 = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_37_0();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26978D56C(uint64_t a1)
{
  if (qword_2803226E0 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_10();
  }

  v2 = v1[11];
  v3 = v1[7];
  v4 = v1[8];
  v1[12] = OUTLINED_FUNCTION_29_2(a1, qword_28033D910);
  v6 = *(v4 + 16);
  v5 = (v4 + 16);
  v1[13] = v6;
  v1[14] = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2);
  v7 = sub_2698548B4();
  v8 = sub_269854F14();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v9);
    _os_log_impl(&dword_269684000, v7, v8, "WatchSportsEventHandleIntentFlowStrategy.makeIntentHandledResponse submitting appPunchout command to remote...", v5, 2u);
    OUTLINED_FUNCTION_18_7();
  }

  v10 = v1[11];
  v11 = v1[7];
  v12 = v1[8];
  v14 = v1[5];
  v13 = v1[6];
  v16 = v1[3];
  v15 = v1[4];

  v1[15] = *(v12 + 8);
  v17 = OUTLINED_FUNCTION_22_3();
  v18(v17);
  v20 = v13[5];
  v19 = v13[6];
  __swift_project_boxed_opaque_existential_1(v13 + 2, v20);
  v21 = sub_26978DC30();
  v1[16] = v21;
  v22 = sub_269854604();
  v24 = v23;
  v1[17] = v23;
  v25 = *(MEMORY[0x277D5BFA8] + 4);
  v26 = swift_task_alloc();
  v1[18] = v26;
  v27 = sub_26969329C(0, &qword_2803239C0, 0x277D471B0);
  *v26 = v1;
  v26[1] = sub_26978D760;

  return MEMORY[0x2821BB680](v21, v22, v24, v20, v27, v19);
}

uint64_t sub_26978D760()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  v6 = *(v5 + 144);
  *v4 = *v1;
  v3[19] = v7;
  v3[20] = v0;

  if (!v0)
  {
    v9 = v3[16];
    v8 = v3[17];
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26978D870()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  (*(v0 + 104))(*(v0 + 80), *(v0 + 96), *(v0 + 56));
  v3 = v1;
  v4 = sub_2698548B4();
  LOBYTE(v1) = sub_269854F14();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = *(v0 + 152);
    v6 = OUTLINED_FUNCTION_27_2();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_269698048(v7, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_18_7();
  }

  v14 = *(v0 + 152);
  v15 = *(v0 + 120);
  v17 = *(v0 + 80);
  v16 = *(v0 + 88);
  v19 = *(v0 + 64);
  v18 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);

  v15(v17, v20);
  sub_269795A18(1);

  OUTLINED_FUNCTION_4_17();

  return v22();
}

uint64_t sub_26978D9FC()
{
  v42 = v0;
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[7];

  v5(v7, v6, v8);
  v9 = v1;
  v10 = sub_2698548B4();
  LOBYTE(v8) = sub_269854F24();

  if (os_log_type_enabled(v10, v8))
  {
    v11 = v0[20];
    v40 = v0[15];
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];
    v15 = OUTLINED_FUNCTION_27_2();
    v16 = OUTLINED_FUNCTION_9_3();
    v41 = v16;
    *v15 = 136315138;
    v0[2] = v11;
    v17 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v18 = sub_269854AE4();
    v20 = sub_26974F520(v18, v19, &v41);

    *(v15 + 4) = v20;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v26 = OUTLINED_FUNCTION_22_3();
    v40(v26);
  }

  else
  {
    v27 = v0[15];
    v29 = v0[8];
    v28 = v0[9];
    v30 = v0[7];

    v31 = OUTLINED_FUNCTION_22_3();
    v27(v31);
  }

  v32 = v0[20];
  v34 = v0[10];
  v33 = v0[11];
  v35 = v0[9];
  __swift_project_boxed_opaque_existential_1((v0[6] + 272), *(v0[6] + 296));
  sub_2697B426C();
  v36 = v32;
  sub_269795A18(0);

  swift_willThrow();

  OUTLINED_FUNCTION_7_7();
  v38 = v0[20];

  return v37();
}

id sub_26978DC30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v3 = OUTLINED_FUNCTION_8_9(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  sub_26969329C(0, &qword_280323038, 0x277D479F0);
  v8 = sub_2696CD66C(1);
  sub_269851C64();
  v9 = sub_269851C74();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_269851C24();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setPunchOutUri_];

  v11 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v12 = v8;
  sub_269853474();
  if (v13)
  {
    v14 = sub_269854A64();
  }

  else
  {
    v14 = 0;
  }

  [v12 setRefId_];

  return v12;
}

uint64_t sub_26978DDD0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  sub_26978E504(v0 + 136);
  v1 = *(v0 + 176);

  sub_269759494(v0 + 192);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  __swift_destroy_boxed_opaque_existential_0((v0 + 312));
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  __swift_destroy_boxed_opaque_existential_0((v0 + 392));
  __swift_destroy_boxed_opaque_existential_0((v0 + 432));
  return v0;
}

uint64_t sub_26978DE48()
{
  sub_26978DDD0();

  return MEMORY[0x2821FE8D8](v0, 472, 7);
}

uint64_t sub_26978DEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for WatchSportsEventHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_26978DF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for WatchSportsEventHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_26978E028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for WatchSportsEventHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t sub_26978E0EC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DAF80;

  return sub_269789864();
}

uint64_t sub_26978E198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for WatchSportsEventHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_26978E25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for WatchSportsEventHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_26978E320()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_2697892EC();
}

uint64_t sub_26978E3BC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_2697568DC(a1, a2);
  v6 = *(v3 + 8);

  return v6(v5);
}

uint64_t sub_26978E41C(uint64_t a1, uint64_t a2)
{
  result = sub_26978E4BC(&qword_280324448, a2, type metadata accessor for WatchSportsEventHandleIntentStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26978E4BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_27()
{
  result = v0[82];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  v8 = v0[72];
  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[69];
  v12 = v0[66];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_24()
{
  result = v0[82];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  v8 = v0[72];
  v9 = v0[71];
  v10 = v0[70];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_31(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v2, a2);
  v5 = *(v4 + 16);
  return v3;
}

uint64_t OUTLINED_FUNCTION_5_28()
{
  v3 = v0[69];
  v4 = v0[66];
  v5 = v0[63];
  v6 = v0[62];
  v7 = v0[61];
}

uint64_t OUTLINED_FUNCTION_11_27()
{
  v3 = v0[63];
  v4 = v0[62];
  v5 = v0[61];
}

uint64_t OUTLINED_FUNCTION_25_10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_28_10()
{
  result = *(v0 + 472);
  v2 = *(v0 + 448);
  return result;
}

id OUTLINED_FUNCTION_35_9()
{
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[58];
  v7 = v0[55];

  return sub_26978DC30();
}

void OUTLINED_FUNCTION_38_7()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = v0[67];
  v5 = v0[61];
  v4 = v0[62];
  v6 = v0[59];
  v7 = v0[60];
  v8 = v0[56];
}

void OUTLINED_FUNCTION_43_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_type_t a10, os_log_t log)
{

  _os_log_impl(a1, log, a10, a4, v11, 0x16u);
}

uint64_t OUTLINED_FUNCTION_48_5(uint64_t result)
{
  *(v1 + 832) = result;
  v3 = *(v2 + 16);
  return result;
}

void OUTLINED_FUNCTION_51_6()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = v0[67];
  v5 = v0[61];
  v4 = v0[62];
  v7 = v0[59];
  v6 = v0[60];
}

void OUTLINED_FUNCTION_52_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v16 + 272) = a15;
  *(v16 + 280) = v15;
  *(v16 + 288) = 0;
  *(v16 + 296) = 0;
  *(v16 + 304) = 1;
}

uint64_t OUTLINED_FUNCTION_54_1(uint64_t a1)
{
  *(v1 + 840) = a1;
  v4 = *(v1 + 176);

  return __swift_mutable_project_boxed_opaque_existential_1(v2, v4);
}

uint64_t OUTLINED_FUNCTION_55_3()
{

  return sub_2698538E4();
}

uint64_t OUTLINED_FUNCTION_56_3()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return sub_2698534E4();
}

uint64_t OUTLINED_FUNCTION_58_1()
{
  v3 = v0[63];
  v4 = v0[62];
  v5 = v0[61];
}

void OUTLINED_FUNCTION_63_1()
{
  v1 = v0[71];
  v2 = v0[68];
  v3 = v0[67];
}

uint64_t OUTLINED_FUNCTION_65_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[3];
  v4 = v2[4];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_67_2(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v3;
  v2[19] = v1;

  return type metadata accessor for VideoLiveTuneInDialogProvider();
}

void OUTLINED_FUNCTION_68_4()
{
  v3 = v1[71];
  v4 = v1[68];
  v5 = v1[67];
  v6 = v1[58];
}

uint64_t OUTLINED_FUNCTION_70_3()
{

  return sub_269854AE4();
}

uint64_t OUTLINED_FUNCTION_71_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_72_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_73_1()
{
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[7];
}

uint64_t OUTLINED_FUNCTION_74_1()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);

  return sub_2698534E4();
}

uint64_t OUTLINED_FUNCTION_77_2()
{
  v5 = *v3;
  v0[5] = v1;
  v0[6] = v4;
  v0[2] = v5;
  __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_26978E9A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_269854DB4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  OUTLINED_FUNCTION_33_9();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  OUTLINED_FUNCTION_33_9();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_269860010;
  v10[5] = v9;
  sub_269791A64(0, 0, v7, &unk_269860020, v10);
}

id WatchSportsEventIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WatchSportsEventIntentHandler.init()()
{
  v4 = &type metadata for CoreAnalyticsService;
  v5 = &xmmword_287A41610;
  v6[3] = &type metadata for UTSNetworkProvider;
  v6[4] = &off_287A43DC0;
  v6[0] = swift_allocObject();
  sub_2697D24B0(&v3, (v6[0] + 16));
  v6[8] = &type metadata for CoreAnalyticsService;
  v6[9] = &xmmword_287A41610;
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  v0 = sub_2697B9550();
  sub_269728D78(v6, &v3);
  v1 = sub_269791FE4(&v3, v0);
  sub_269728DD4(v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t WatchSportsEventIntentHandler.confirm(intent:)()
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

uint64_t sub_26978EC94()
{
  OUTLINED_FUNCTION_8_5();
  if (qword_2803226E8 != -1)
  {
    v1 = OUTLINED_FUNCTION_0_30();
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = OUTLINED_FUNCTION_3_31(v1, qword_28033D928);
  v6(v5);
  v7 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_45_0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v9);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v10, v11, "Confirm step: success");
    OUTLINED_FUNCTION_18_7();
  }

  v13 = v0[3];
  v12 = v0[4];
  v14 = v0[2];

  v15 = *(v13 + 8);
  v16 = OUTLINED_FUNCTION_22_3();
  v17(v16);
  objc_allocWithZone(type metadata accessor for WatchSportsEventIntentResponse());
  WatchSportsEventIntentResponse.init(code:userActivity:)(1, 0);
  OUTLINED_FUNCTION_11_16();

  v18 = OUTLINED_FUNCTION_8_23();

  return v19(v18);
}

uint64_t sub_26978EDCC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2697927A8;

  return WatchSportsEventIntentHandler.confirm(intent:)();
}

uint64_t WatchSportsEventIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_269854824();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_37_0();
  v1[7] = swift_task_alloc();
  v7 = sub_2698548D4();
  v1[8] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_37_0();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26978EFB0()
{
  v108 = v0;
  v1 = [*(v0 + 16) isRemoteExecution];
  sub_269694CBC();
  v2 = sub_269855034();
  v3 = v2;
  if (v1)
  {
    OUTLINED_FUNCTION_22_3();
    v4 = sub_269855064();

    if (v4)
    {
      v5 = *(v0 + 16);
      __swift_project_boxed_opaque_existential_1((*(v0 + 24) + OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_tvProfileSelector), *(*(v0 + 24) + OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_tvProfileSelector + 24));
      sub_26974FAB0(v5, &selRef_crossDeviceRequestInitiator);
      sub_2697B8974();
    }
  }

  else
  {
  }

  *(v0 + 120) = *(*(v0 + 24) + OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_userDefaultsProvider);
  sub_2697B92B0();
  v6 = 0x280322000uLL;
  if (v7)
  {

    v8 = sub_2697B92B0();
    v10 = v9;
    v11 = qword_2803226E8;

    if (v11 != -1)
    {
      OUTLINED_FUNCTION_0_30();
    }

    v12 = *(v0 + 112);
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = __swift_project_value_buffer(v14, qword_28033D928);
    (*(v13 + 16))(v12, v15, v14);
    v16 = sub_2698548B4();
    v17 = sub_269854F24();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 112);
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    if (v18)
    {
      v22 = OUTLINED_FUNCTION_27_2();
      v23 = OUTLINED_FUNCTION_9_3();
      *v22 = 136315138;
      v106 = v21;
      v107 = v23;
      v24 = v8;
      if (!v10)
      {
        v8 = 7104878;
      }

      v105 = v19;
      if (v10)
      {
        v25 = v10;
      }

      else
      {
        v25 = 0xE300000000000000;
      }

      v26 = sub_26974F520(v8, v25, &v107);

      *(v22 + 4) = v26;
      v8 = v24;
      _os_log_impl(&dword_269684000, v16, v17, "WatchSportsEventIntentHandler manually setting matchupId: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_10();
      v6 = 0x280322000;
      OUTLINED_FUNCTION_10();

      v27 = (*(v20 + 8))(v105, v106);
    }

    else
    {

      v27 = (*(v20 + 8))(v19, v21);
    }
  }

  else
  {
    v28 = sub_26974FAB0(*(v0 + 16), &selRef_matchupId);
    if (!v29)
    {
      if (qword_2803226E8 != -1)
      {
        v28 = OUTLINED_FUNCTION_0_30();
      }

      v85 = *(v0 + 104);
      v86 = *(v0 + 64);
      v87 = *(v0 + 72);
      v88 = OUTLINED_FUNCTION_3_31(v28, qword_28033D928);
      v89(v88);
      v75 = sub_2698548B4();
      sub_269854F24();
      OUTLINED_FUNCTION_45_0();
      if (os_log_type_enabled(v75, v90))
      {
        v91 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v91);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v92, v93, "WatchSportsEventIntentHandler failed to access matchupId off WatchSportsEventIntent");
        OUTLINED_FUNCTION_18_7();
      }

      v94 = *(v0 + 104);
      goto LABEL_43;
    }

    v30 = *(v0 + 16);

    v27 = sub_26974FAB0(v30, &selRef_matchupId);
    v8 = v27;
    v10 = v31;
  }

  *(v0 + 128) = v8;
  *(v0 + 136) = v10;
  if (!v10)
  {
    if (*(v6 + 1768) != -1)
    {
      v27 = OUTLINED_FUNCTION_0_30();
    }

    v70 = *(v0 + 88);
    v71 = *(v0 + 64);
    v72 = *(v0 + 72);
    v73 = OUTLINED_FUNCTION_3_31(v27, qword_28033D928);
    v74(v73);
    v75 = sub_2698548B4();
    sub_269854F24();
    OUTLINED_FUNCTION_45_0();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v77);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v78, v79, "WatchSportsEventIntentHandler failed because matchupId is nil");
      OUTLINED_FUNCTION_18_7();
    }

    v80 = *(v0 + 88);
LABEL_43:
    v95 = *(v0 + 64);
    v96 = *(v0 + 72);

    v97 = *(v96 + 8);
    v98 = OUTLINED_FUNCTION_22_3();
    v99(v98);
    v100 = objc_allocWithZone(type metadata accessor for WatchSportsEventIntentResponse());
    OUTLINED_FUNCTION_25_11();
    goto LABEL_44;
  }

  if (qword_280322710 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 56);
  v33 = sub_269854854();
  __swift_project_value_buffer(v33, qword_28033D958);
  sub_269854814();
  v34 = sub_269854844();
  v35 = sub_269854FF4();
  if (sub_269855074())
  {
    v36 = *(v0 + 56);
    v37 = OUTLINED_FUNCTION_16_2();
    *v37 = 0;
    v38 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v34, v35, v38, "watchSportsEventResolve", "enableTelemetry=YES", v37, 2u);
    OUTLINED_FUNCTION_10();
  }

  v39 = *(v0 + 48);
  v40 = *(v0 + 56);
  v41 = *(v0 + 32);
  v42 = *(v0 + 40);
  v43 = *(v0 + 16);

  v44 = *(v42 + 16);
  v45 = OUTLINED_FUNCTION_25_2();
  v46(v45);
  v47 = sub_269854894();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  *(v0 + 144) = sub_269854884();
  v50 = OUTLINED_FUNCTION_26_14();
  v51(v50);
  v52 = sub_269791F80(v43);
  *(v0 + 152) = v53;
  if (v53 >> 60 == 15)
  {
    v54 = *(v0 + 120);
    sub_2697B9214();
    if (v55)
    {
      v56 = *(v0 + 136);

      if (*(v6 + 1768) != -1)
      {
        v57 = OUTLINED_FUNCTION_0_30();
      }

      v58 = *(v0 + 96);
      v59 = *(v0 + 64);
      v60 = *(v0 + 72);
      v61 = OUTLINED_FUNCTION_3_31(v57, qword_28033D928);
      v62(v61);
      v63 = sub_2698548B4();
      sub_269854F24();
      OUTLINED_FUNCTION_45_0();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v65);
        OUTLINED_FUNCTION_38_8(&dword_269684000, v66, v67, "WatchSportsEventIntentHandler forceMockBestPlayableResponse");
        OUTLINED_FUNCTION_18_7();
      }

      OUTLINED_FUNCTION_37_7();
      v68 = OUTLINED_FUNCTION_26_14();
      v69(v68);
      sub_2697909C0();
      OUTLINED_FUNCTION_11_16();
      sub_26978FCA4();

LABEL_44:
      OUTLINED_FUNCTION_12_25();

      OUTLINED_FUNCTION_8_23();
      OUTLINED_FUNCTION_116();

      __asm { BRAA            X2, X16 }
    }

    v103 = swift_task_alloc();
    *(v0 + 176) = v103;
    *v103 = v0;
    OUTLINED_FUNCTION_4_23(v103);
    OUTLINED_FUNCTION_116();

    return sub_269790C50();
  }

  else
  {
    *(v0 + 160) = v52;
    v81 = swift_task_alloc();
    *(v0 + 168) = v81;
    *v81 = v0;
    v81[1] = sub_26978F6B4;
    v82 = *(v0 + 24);
    OUTLINED_FUNCTION_116();

    return sub_269790160();
  }
}

uint64_t sub_26978F6B4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26978F798()
{
  sub_2696CE4BC(v0[20], v0[19]);
  v1 = v0[15];
  sub_2697B9214();
  if (v2)
  {
    v3 = v0[17];

    if (qword_2803226E8 != -1)
    {
      v4 = OUTLINED_FUNCTION_0_30();
    }

    v5 = v0[12];
    v6 = v0[8];
    v7 = v0[9];
    v8 = OUTLINED_FUNCTION_3_31(v4, qword_28033D928);
    v9(v8);
    v10 = sub_2698548B4();
    sub_269854F24();
    OUTLINED_FUNCTION_45_0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v12);
      OUTLINED_FUNCTION_38_8(&dword_269684000, v13, v14, "WatchSportsEventIntentHandler forceMockBestPlayableResponse");
      OUTLINED_FUNCTION_18_7();
    }

    OUTLINED_FUNCTION_37_7();
    v15 = OUTLINED_FUNCTION_26_14();
    v16(v15);
    sub_2697909C0();
    OUTLINED_FUNCTION_11_16();
    sub_26978FCA4();

    OUTLINED_FUNCTION_12_25();

    OUTLINED_FUNCTION_8_23();
    OUTLINED_FUNCTION_76_2();

    __asm { BRAA            X2, X16 }
  }

  v19 = swift_task_alloc();
  v0[22] = v19;
  *v19 = v0;
  OUTLINED_FUNCTION_4_23(v19);
  OUTLINED_FUNCTION_76_2();

  return sub_269790C50();
}

uint64_t sub_26978F94C(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  v6 = *(v4 + 176);
  v7 = *(v4 + 136);
  v8 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v9 = v8;
  *(v5 + 184) = v1;

  if (v1)
  {
    v10 = sub_26978FB3C;
  }

  else
  {
    *(v5 + 192) = a1;
    v10 = sub_26978FA8C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

void sub_26978FA8C()
{
  v1 = *(v0 + 144);
  sub_26978FCA4();

  v2 = *(v0 + 192);
  OUTLINED_FUNCTION_12_25();

  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_76_2();

  __asm { BRAA            X2, X16 }
}

void sub_26978FB3C()
{
  v1 = v0[18];
  sub_26978FCA4();

  if (qword_2803226E8 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_30();
  }

  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = OUTLINED_FUNCTION_3_31(v2, qword_28033D928);
  v7(v6);
  v8 = sub_2698548B4();
  sub_269854F24();
  OUTLINED_FUNCTION_45_0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v10);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v11, v12, "WatchSportsEventIntentHandler error occurred requesting UTS sportsTuneIn");
    OUTLINED_FUNCTION_18_7();
  }

  v13 = v0[23];
  v15 = v0[9];
  v14 = v0[10];
  v16 = v0[8];

  (*(v15 + 8))(v14, v16);
  v17 = objc_allocWithZone(type metadata accessor for WatchSportsEventIntentResponse());
  OUTLINED_FUNCTION_25_11();

  OUTLINED_FUNCTION_12_25();

  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_76_2();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_26978FCA4()
{
  v0 = sub_269854864();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269854824();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322710 != -1)
  {
    swift_once();
  }

  v10 = sub_269854854();
  __swift_project_value_buffer(v10, qword_28033D958);
  v11 = sub_269854844();
  sub_269854874();
  v12 = sub_269854FE4();
  if (sub_269855074())
  {

    sub_2698548A4();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v11, v12, v15, "watchSportsEventResolve", v13, v14, 2u);
    MEMORY[0x26D647170](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26978FF50(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_269790014;

  return WatchSportsEventIntentHandler.handle(intent:)();
}

uint64_t sub_269790014()
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

  v10 = v5[2];
  v11 = OUTLINED_FUNCTION_50_0();
  v12(v11);
  _Block_release(v5);

  OUTLINED_FUNCTION_7_7();

  return v13();
}

uint64_t sub_269790160()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324478, qword_269860050) - 8) + 64);
  v1[5] = OUTLINED_FUNCTION_37_0();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_2698548D4();
  v1[14] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[15] = v6;
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2697902A0(uint64_t a1)
{
  if (qword_2803226E0 != -1)
  {
    a1 = swift_once();
  }

  v3 = v1[15];
  v2 = v1[16];
  v4 = v1[14];
  v5 = OUTLINED_FUNCTION_3_31(a1, qword_28033D910);
  v6(v5);
  v7 = sub_2698548B4();
  v8 = sub_269854F14();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v9);
    _os_log_impl(&dword_269684000, v7, v8, "WatchSportsEventIntentHandler.donateIntent donating intent.", v3, 2u);
    OUTLINED_FUNCTION_18_7();
  }

  v11 = v1[15];
  v10 = v1[16];
  v13 = v1[13];
  v12 = v1[14];
  v14 = v1[12];
  v16 = v1[2];
  v15 = v1[3];

  (*(v11 + 8))(v10, v12);
  sub_2698346F4(v16, v15, v13);
  v17 = [objc_allocWithZone(sub_269854494()) init];
  sub_269791F1C(0xD000000000000014, 0x800000026987F1A0, v17);
  sub_269792698(v13, v14, &qword_280324478, qword_269860050);
  v18 = sub_269854074();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v18);
  v20 = v1[12];
  if (EnumTagSinglePayload == 1)
  {
    v21 = sub_2696CB05C(v1[12], &qword_280324478, qword_269860050);
  }

  else
  {
    sub_269853FF4();
    OUTLINED_FUNCTION_1_28();
    v23 = *(v22 + 8);
    v24 = OUTLINED_FUNCTION_25_2();
    v21 = v25(v24);
    if (v12)
    {
      OUTLINED_FUNCTION_30_11();
      v21 = OUTLINED_FUNCTION_27_11();
      goto LABEL_10;
    }
  }

  v20 = 0;
LABEL_10:
  v26 = v1[13];
  v27 = v1[11];
  OUTLINED_FUNCTION_0_16(v21, sel_setAthleteName_);

  OUTLINED_FUNCTION_29_10(v28, v29, &qword_280324478, qword_269860050);
  v30 = OUTLINED_FUNCTION_9_23();
  v31 = v1[11];
  if (v30 == 1)
  {
    v32 = sub_2696CB05C(v1[11], &qword_280324478, qword_269860050);
  }

  else
  {
    sub_269853F64();
    OUTLINED_FUNCTION_1_28();
    v34 = *(v33 + 8);
    v35 = OUTLINED_FUNCTION_25_2();
    v32 = v36(v35);
    if (v26)
    {
      OUTLINED_FUNCTION_30_11();
      v32 = OUTLINED_FUNCTION_27_11();
      goto LABEL_15;
    }
  }

  v31 = 0;
LABEL_15:
  v37 = v1[13];
  v38 = v1[10];
  OUTLINED_FUNCTION_0_16(v32, sel_setAthleteQId_);

  OUTLINED_FUNCTION_29_10(v39, v40, &qword_280324478, qword_269860050);
  v41 = OUTLINED_FUNCTION_9_23();
  v42 = v1[10];
  if (v41 == 1)
  {
    v43 = sub_2696CB05C(v1[10], &qword_280324478, qword_269860050);
  }

  else
  {
    sub_269853FD4();
    OUTLINED_FUNCTION_1_28();
    v45 = *(v44 + 8);
    v46 = OUTLINED_FUNCTION_25_2();
    v43 = v47(v46);
    if (v37)
    {
      OUTLINED_FUNCTION_30_11();
      v43 = OUTLINED_FUNCTION_27_11();
      goto LABEL_20;
    }
  }

  v42 = 0;
LABEL_20:
  v48 = v1[13];
  v49 = v1[9];
  OUTLINED_FUNCTION_0_16(v43, sel_setLeagueName_);

  OUTLINED_FUNCTION_29_10(v50, v51, &qword_280324478, qword_269860050);
  v52 = OUTLINED_FUNCTION_9_23();
  v53 = v1[9];
  if (v52 == 1)
  {
    v54 = sub_2696CB05C(v1[9], &qword_280324478, qword_269860050);
  }

  else
  {
    sub_269854054();
    OUTLINED_FUNCTION_1_28();
    v56 = *(v55 + 8);
    v57 = OUTLINED_FUNCTION_25_2();
    v54 = v58(v57);
    if (v48)
    {
      OUTLINED_FUNCTION_30_11();
      v54 = OUTLINED_FUNCTION_27_11();
      goto LABEL_25;
    }
  }

  v53 = 0;
LABEL_25:
  v59 = v1[13];
  v60 = v1[8];
  OUTLINED_FUNCTION_0_16(v54, sel_setLeagueQId_);

  OUTLINED_FUNCTION_29_10(v61, v62, &qword_280324478, qword_269860050);
  v63 = OUTLINED_FUNCTION_9_23();
  v64 = v1[8];
  if (v63 == 1)
  {
    v65 = sub_2696CB05C(v1[8], &qword_280324478, qword_269860050);
  }

  else
  {
    sub_269853FB4();
    OUTLINED_FUNCTION_1_28();
    v67 = *(v66 + 8);
    v68 = OUTLINED_FUNCTION_25_2();
    v65 = v69(v68);
    if (v59)
    {
      OUTLINED_FUNCTION_30_11();
      v65 = OUTLINED_FUNCTION_27_11();
      goto LABEL_30;
    }
  }

  v64 = 0;
LABEL_30:
  v70 = v1[13];
  v71 = v1[7];
  OUTLINED_FUNCTION_0_16(v65, sel_setSportName_);

  OUTLINED_FUNCTION_29_10(v72, v73, &qword_280324478, qword_269860050);
  v74 = OUTLINED_FUNCTION_9_23();
  v75 = v1[7];
  if (v74 == 1)
  {
    v76 = sub_2696CB05C(v1[7], &qword_280324478, qword_269860050);
  }

  else
  {
    sub_269854034();
    OUTLINED_FUNCTION_1_28();
    v78 = *(v77 + 8);
    v79 = OUTLINED_FUNCTION_25_2();
    v76 = v80(v79);
    if (v70)
    {
      OUTLINED_FUNCTION_30_11();
      v76 = OUTLINED_FUNCTION_27_11();
      goto LABEL_35;
    }
  }

  v75 = 0;
LABEL_35:
  v81 = v1[13];
  v82 = v1[6];
  OUTLINED_FUNCTION_0_16(v76, sel_setSportQId_);

  OUTLINED_FUNCTION_29_10(v83, v84, &qword_280324478, qword_269860050);
  v85 = OUTLINED_FUNCTION_9_23();
  v86 = v1[6];
  if (v85 == 1)
  {
    v87 = sub_2696CB05C(v1[6], &qword_280324478, qword_269860050);
  }

  else
  {
    sub_269853F84();
    OUTLINED_FUNCTION_1_28();
    v89 = *(v88 + 8);
    v90 = OUTLINED_FUNCTION_25_2();
    v87 = v91(v90);
    if (v81)
    {
      OUTLINED_FUNCTION_30_11();
      v87 = OUTLINED_FUNCTION_27_11();
      goto LABEL_40;
    }
  }

  v86 = 0;
LABEL_40:
  v92 = v1[13];
  v93 = v1[5];
  OUTLINED_FUNCTION_0_16(v87, sel_setTeamName_);

  OUTLINED_FUNCTION_29_10(v94, v95, &qword_280324478, qword_269860050);
  v96 = OUTLINED_FUNCTION_9_23();
  v97 = v1[5];
  if (v96 == 1)
  {
    sub_2696CB05C(v1[5], &qword_280324478, qword_269860050);
  }

  else
  {
    v98 = v1[5];
    sub_269854014();
    v100 = v99;
    OUTLINED_FUNCTION_3_14(v18);
    (*(v101 + 8))(v97, v18);
    if (v100)
    {
      v102 = sub_269854A64();

      goto LABEL_45;
    }
  }

  v102 = 0;
LABEL_45:
  v103 = v1[16];
  v105 = v1[12];
  v104 = v1[13];
  v106 = v1[10];
  v107 = v1[11];
  v111 = v1[8];
  v112 = v1[7];
  v113 = v1[6];
  v108 = v1[4];
  v114 = v1[5];
  [v17 setTeamQId_];

  __swift_project_boxed_opaque_existential_1((v108 + OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_siriRemembersProvider), *(v108 + OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_siriRemembersProvider + 24));
  sub_2697B752C(v17, 1);

  sub_2696CB05C(v104, &qword_280324478, qword_269860050);

  OUTLINED_FUNCTION_7_7();

  return v109();
}

char *sub_2697909C0()
{
  v1 = v0;
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(type metadata accessor for WatchSportsEventIntentResponse());
  v8 = WatchSportsEventIntentResponse.init(code:userActivity:)(4, 0);
  sub_269694CBC();
  v9 = sub_269855034();
  [v8 setIsEntitledToPlayOnDevice_];

  v10 = *(v1 + OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_userDefaultsProvider);
  sub_2697B9214();
  if (v11)
  {
    sub_269854A64();
    OUTLINED_FUNCTION_27_11();
  }

  else
  {
    v10 = 0;
  }

  [v8 setPlayablePunchoutUrl_];

  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v12 = __swift_project_value_buffer(v2, qword_28033D928);
  (*(v3 + 16))(v6, v12, v2);
  v13 = v8;
  v14 = sub_2698548B4();
  v15 = sub_269854F14();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_27_2();
    v17 = OUTLINED_FUNCTION_9_3();
    v24 = v17;
    *v16 = 136315138;
    v18 = sub_26974FAB0(v13, &selRef_playablePunchoutUrl);
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v18 = 7104878;
      v20 = 0xE300000000000000;
    }

    v21 = sub_26974F520(v18, v20, &v24);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_269684000, v14, v15, "WatchSportsEventIntentHandler returning mock successful UTS bestPlayable response %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  (*(v3 + 8))(v6, v2);
  return v13;
}

uint64_t sub_269790C50()
{
  OUTLINED_FUNCTION_2_7();
  v1[56] = v2;
  v1[57] = v0;
  v1[55] = v3;
  v4 = sub_2698548D4();
  v1[58] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[59] = v5;
  v7 = *(v6 + 64);
  v1[60] = OUTLINED_FUNCTION_37_0();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_269790D1C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[56];
  v2 = v0[55];
  __swift_project_boxed_opaque_existential_1((v0[57] + OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_utsProvider), *(v0[57] + OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_utsProvider + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  OUTLINED_FUNCTION_33_9();
  v3 = swift_allocObject();
  v0[64] = v3;
  *(v3 + 16) = xmmword_269857710;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[65] = v4;
  *v4 = v0;
  v4[1] = sub_269790E14;

  return sub_2697D780C();
}

uint64_t sub_269790E14()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  v4 = v2[65];
  v10 = *v1;
  v3[66] = v5;
  v3[67] = v6;
  v3[68] = v0;

  if (v0)
  {
    v7 = sub_269791774;
  }

  else
  {
    v8 = v3[64];

    v7 = sub_269790F30;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_269790F30()
{
  v107 = v0;
  sub_26981D604(*(v0 + 440), *(v0 + 448), *(v0 + 536));
  v1 = *(v0 + 408);
  if (v1)
  {
    v95 = *(v0 + 400);
    v2 = *(v0 + 416);
    v3 = *(v0 + 424);
    v4 = *(v0 + 432);
    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30();
    }

    v99 = v2;
    v5 = *(v0 + 504);
    v6 = *(v0 + 472);
    v7 = *(v0 + 448);
    v101 = __swift_project_value_buffer(*(v0 + 464), qword_28033D928);
    v102 = *(v6 + 16);
    v102(v5);

    v8 = sub_2698548B4();
    v9 = sub_269854F14();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 504);
    v12 = *(v0 + 472);
    v96 = *(v0 + 464);
    v104 = v3;
    if (v10)
    {
      v94 = *(v0 + 504);
      v13 = v4;
      v15 = *(v0 + 440);
      v14 = *(v0 + 448);
      v16 = swift_slowAlloc();
      v17 = OUTLINED_FUNCTION_9_3();
      v106 = v17;
      *v16 = 136315394;
      v18 = v15;
      v4 = v13;
      *(v16 + 4) = sub_26974F520(v18, v14, &v106);
      *(v16 + 12) = 1024;
      v19 = v99;
      *(v16 + 14) = v99 & 1;

      _os_log_impl(&dword_269684000, v8, v9, "WatchSportsEventIntentHandler successfully retrieved playable for matchupId: %s isEntitledToPlayOnDevice: %{BOOL}d", v16, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v17);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v20 = *(v12 + 8);
      v20(v94, v96);
    }

    else
    {

      v20 = *(v12 + 8);
      v20(v11, v96);
      v19 = v99;
    }

    v43 = *(v0 + 528);
    v100 = type metadata accessor for WatchSportsEventIntentResponse();
    v44 = objc_allocWithZone(v100);
    v42 = WatchSportsEventIntentResponse.init(code:userActivity:)(4, 0);
    v45 = 0x277CCA000uLL;
    v46 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    OUTLINED_FUNCTION_0_16(v46, sel_setIsEntitledToPlayOnDevice_);

    v47 = sub_269854A64();
    OUTLINED_FUNCTION_0_16(v47, sel_setPlayablePunchoutUrl_);

    if (*(v43 + 16) && (v48 = *(v0 + 528), v49 = sub_26973CEF8(v95, v1), (v50 & 1) != 0))
    {
      v97 = v20;
      v51 = *(v0 + 536);
      v52 = *(v0 + 496);
      v53 = *(v0 + 464);
      memcpy((v0 + 16), (*(*(v0 + 528) + 56) + (v49 << 7)), 0x80uLL);
      sub_2697926F8(v0 + 16, v0 + 144);

      (v102)(v52, v101, v53);

      sub_2697926F8(v0 + 16, v0 + 272);
      v54 = sub_2698548B4();
      v55 = sub_269854F14();

      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 496);
      v59 = *(v0 + 464);
      v58 = *(v0 + 472);
      if (v56)
      {
        v60 = swift_slowAlloc();
        v103 = v57;
        v61 = OUTLINED_FUNCTION_9_3();
        v106 = v61;
        *v60 = 67109378;
        *(v60 + 4) = *(v0 + 74);
        sub_269792754(v0 + 16);
        *(v60 + 8) = 2080;

        v62 = sub_26974F520(v104, v4, &v106);

        *(v60 + 10) = v62;
        _os_log_impl(&dword_269684000, v54, v55, "WatchSportsEventIntentHandler isAppInstalled: %{BOOL}d playableUrl: %s", v60, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v61);
        OUTLINED_FUNCTION_10();
        v45 = 0x277CCA000;
        OUTLINED_FUNCTION_10();

        v63 = v103;
      }

      else
      {

        sub_269792754(v0 + 16);

        v63 = v57;
      }

      v79 = v97(v63, v59);
      if (*(v0 + 64))
      {
        v80 = *(v0 + 56);
        v81 = *(v0 + 64);

        OUTLINED_FUNCTION_25_2();
        v82 = sub_269854A64();
      }

      else
      {
        v82 = 0;
      }

      OUTLINED_FUNCTION_0_16(v79, sel_setAppName_);

      v83 = [objc_allocWithZone(*(v45 + 2992)) initWithInteger_];
      OUTLINED_FUNCTION_0_16(v83, sel_setIsAppInstalled_);

      if (*(v0 + 88))
      {
        v84 = *(v0 + 80);
        v85 = *(v0 + 88);

        OUTLINED_FUNCTION_25_2();
        v86 = sub_269854A64();
        sub_269792754(v0 + 16);
      }

      else
      {
        v87 = sub_269792754(v0 + 16);
        v86 = 0;
      }

      OUTLINED_FUNCTION_0_16(v87, sel_setAppStorePunchoutUrl_);
    }

    else
    {
      v64 = *(v0 + 536);
      v65 = *(v0 + 528);
      v66 = *(v0 + 488);
      v67 = *(v0 + 464);

      (v102)(v66, v101, v67);

      v68 = sub_2698548B4();
      v69 = sub_269854F24();

      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 488);
      v73 = *(v0 + 464);
      v72 = *(v0 + 472);
      if (v70)
      {
        v105 = *(v0 + 488);
        v74 = OUTLINED_FUNCTION_27_2();
        v98 = v20;
        v75 = OUTLINED_FUNCTION_9_3();
        v106 = v75;
        *v74 = 136315138;

        v76 = sub_26974F520(v95, v1, &v106);

        *(v74 + 4) = v76;
        _os_log_impl(&dword_269684000, v68, v69, "WatchSportsEventIntentHandler failed to retrieve channel for channelId: %s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v75);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();

        v98(v105, v73);
      }

      else
      {

        v20(v71, v73);
      }

      v77 = objc_allocWithZone(v100);
      v78 = OUTLINED_FUNCTION_25_11();

      v42 = v78;
    }
  }

  else
  {
    v21 = *(v0 + 536);
    v22 = *(v0 + 528);

    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30();
    }

    v24 = *(v0 + 472);
    v23 = *(v0 + 480);
    v25 = *(v0 + 464);
    v26 = *(v0 + 448);
    v27 = __swift_project_value_buffer(v25, qword_28033D928);
    (*(v24 + 16))(v23, v27, v25);

    v28 = sub_2698548B4();
    v29 = sub_269854F24();

    v30 = os_log_type_enabled(v28, v29);
    v32 = *(v0 + 472);
    v31 = *(v0 + 480);
    v33 = *(v0 + 464);
    if (v30)
    {
      v35 = *(v0 + 440);
      v34 = *(v0 + 448);
      v36 = OUTLINED_FUNCTION_27_2();
      v37 = OUTLINED_FUNCTION_9_3();
      v106 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_26974F520(v35, v34, &v106);
      _os_log_impl(&dword_269684000, v28, v29, "WatchSportsEventIntentHandler failed to retrieve playable for matchupId: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    v38 = *(v32 + 8);
    v39 = OUTLINED_FUNCTION_22_3();
    v40(v39);
    v41 = objc_allocWithZone(type metadata accessor for WatchSportsEventIntentResponse());
    v42 = OUTLINED_FUNCTION_25_11();
  }

  v89 = *(v0 + 496);
  v88 = *(v0 + 504);
  v91 = *(v0 + 480);
  v90 = *(v0 + 488);

  v92 = *(v0 + 8);

  return v92(v42);
}

uint64_t sub_269791774()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v0[63];
  v1 = v0[64];
  v4 = v0[61];
  v3 = v0[62];
  v5 = v0[60];

  OUTLINED_FUNCTION_7_7();
  v7 = v0[68];

  return v6();
}

id WatchSportsEventIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchSportsEventIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269791894(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2696DAF80;

  return v7();
}

uint64_t sub_26979197C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2696DA938;

  return v8();
}

uint64_t sub_269791A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_269792698(a3, v25 - v11, &qword_280324D20, &qword_269860000);
  v13 = sub_269854DB4();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2696CB05C(v12, &qword_280324D20, &qword_269860000);
  }

  else
  {
    sub_269854DA4();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_269854D34();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_269854B04() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2696CB05C(a3, &qword_280324D20, &qword_269860000);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2696CB05C(a3, &qword_280324D20, &qword_269860000);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_269791D40(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269791E38;

  return v7(a1);
}

uint64_t sub_269791E38()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_7_7();

  return v5();
}

void sub_269791F1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 _setLaunchId_];
}

uint64_t sub_269791F80(void *a1)
{
  v1 = [a1 usoEntityData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269851C94();

  return v3;
}

id sub_269791FE4(const void *a1, uint64_t a2)
{
  v13 = a2;
  v20[3] = &type metadata for UTSProvider;
  v20[4] = &off_287A43FA8;
  v20[0] = swift_allocObject();
  memcpy((v20[0] + 16), a1, 0x50uLL);
  v19[3] = &type metadata for SiriRemembersProvider;
  v19[4] = &off_287A41D70;
  v18[3] = &type metadata for TvProfileSelector;
  v18[4] = &off_287A41E28;
  v3 = type metadata accessor for WatchSportsEventIntentHandler();
  v4 = objc_allocWithZone(v3);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v20, &type metadata for UTSProvider);
  v6 = *(off_287A43F88 + 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  __swift_mutable_project_boxed_opaque_existential_1(v19, &type metadata for SiriRemembersProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v18, &type metadata for TvProfileSelector);
  v17[3] = &type metadata for UTSProvider;
  v17[4] = &off_287A43FA8;
  v17[0] = swift_allocObject();
  memcpy((v17[0] + 16), v8, 0x50uLL);
  v16[3] = &type metadata for SiriRemembersProvider;
  v16[4] = &off_287A41D70;
  v15[3] = &type metadata for TvProfileSelector;
  v15[4] = &off_287A41E28;
  sub_26970EF58(v17, &v4[OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_utsProvider]);
  v10 = &v4[OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_userDefaultsProvider];
  *v10 = v13;
  *(v10 + 1) = &off_287A41E38;
  sub_26970EF58(v16, &v4[OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_siriRemembersProvider]);
  sub_26970EF58(v15, &v4[OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_tvProfileSelector]);
  v14.receiver = v4;
  v14.super_class = v3;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v15);
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_destroy_boxed_opaque_existential_0(v17);
  __swift_destroy_boxed_opaque_existential_0(v18);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return v11;
}

uint64_t sub_26979225C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_24_11(v4);
  *v5 = v6;
  v5[1] = sub_2696DA938;
  v7 = OUTLINED_FUNCTION_22_3();

  return v8(v7);
}

uint64_t sub_269792304()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_24_11(v5);
  *v6 = v7;
  v6[1] = sub_2696DAF80;
  v8 = OUTLINED_FUNCTION_22_3();

  return v9(v8);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_33_9();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2697923F8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_24_11(v7);
  *v8 = v9;
  v8[1] = sub_2696DAF80;

  return sub_26979197C(a1, v3, v4, v6);
}

uint64_t sub_2697924C0()
{
  OUTLINED_FUNCTION_8_5();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_24_11(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_18_14(v4);

  return v7(v6);
}

uint64_t sub_269792558()
{
  OUTLINED_FUNCTION_8_5();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_24_11(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_18_14(v4);

  return v7(v6);
}

uint64_t sub_2697925F0()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_24_11(v4);
  *v5 = v6;
  v5[1] = sub_2696DAF80;
  v7 = OUTLINED_FUNCTION_22_3();

  return v8(v7);
}

uint64_t sub_269792698(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3_14(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_50_0();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_23(uint64_t a1)
{
  *(a1 + 8) = sub_26978F94C;
  v2 = *(v1 + 24);
  return *(v1 + 128);
}

uint64_t OUTLINED_FUNCTION_9_23()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_12_25()
{
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v8 = v0[6];
  v7 = v0[7];
}

uint64_t OUTLINED_FUNCTION_18_14(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

char *OUTLINED_FUNCTION_25_11()
{

  return WatchSportsEventIntentResponse.init(code:userActivity:)(5, 0);
}

uint64_t OUTLINED_FUNCTION_27_11()
{
}

uint64_t OUTLINED_FUNCTION_29_10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_269792698(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_30_11()
{

  return sub_269854A64();
}

void OUTLINED_FUNCTION_37_7()
{
  v3 = v0[18];
  v4 = v0[12];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[3];
}

void OUTLINED_FUNCTION_38_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_269792920()
{
  v0 = sub_269854624();
  v2 = v1;
  v3 = *MEMORY[0x277CCE920];
  v4 = sub_269854A94();
  if (v2)
  {
    if (v0 == v4 && v2 == v5)
    {
      goto LABEL_23;
    }

    v7 = OUTLINED_FUNCTION_1_29();

    if (v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v8 = sub_269854624();
  v10 = v9;
  v11 = *MEMORY[0x277CCE930];
  v12 = sub_269854A94();
  if (!v10)
  {

    goto LABEL_17;
  }

  if (v8 == v12 && v10 == v13)
  {
    goto LABEL_23;
  }

  v15 = OUTLINED_FUNCTION_1_29();

  if ((v15 & 1) == 0)
  {
LABEL_17:
    v17 = sub_269854624();
    v19 = v18;
    v20 = *MEMORY[0x277CCE938];
    v21 = sub_269854A94();
    if (!v19)
    {
      v16 = 0;
      goto LABEL_25;
    }

    if (v17 != v21 || v19 != v22)
    {
      v16 = OUTLINED_FUNCTION_1_29();
LABEL_24:

LABEL_25:

      return v16 & 1;
    }

LABEL_23:
    v16 = 1;
    goto LABEL_24;
  }

LABEL_15:
  v16 = 1;
  return v16 & 1;
}

uint64_t sub_269792A6C()
{
  sub_2698556D4();
  sub_269854604();
  sub_269854B34();

  sub_2698556B4();
  return sub_269855544();
}

uint64_t sub_269792AE0()
{
  v0 = sub_269854624();
  v2 = v1;
  v3 = *MEMORY[0x277CCE920];
  v4 = sub_269854A94();
  if (v2)
  {
    if (v4 == v0 && v2 == v5)
    {
      goto LABEL_16;
    }

    v7 = OUTLINED_FUNCTION_0_35();

    if (v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v8 = *MEMORY[0x277CCE930];
  v9 = sub_269854A94();
  if (!v2)
  {

    goto LABEL_19;
  }

  if (v9 == v0 && v2 == v10)
  {
LABEL_16:

LABEL_17:

    goto LABEL_29;
  }

  v12 = OUTLINED_FUNCTION_0_35();

  if (v12)
  {
    goto LABEL_17;
  }

LABEL_19:
  v13 = *MEMORY[0x277CCE938];
  v14 = sub_269854A94();
  if (!v2)
  {
    goto LABEL_17;
  }

  if (v14 != v0 || v2 != v15)
  {
    OUTLINED_FUNCTION_0_35();
  }

LABEL_29:
  type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);

  return swift_storeEnumTagMultiPayload();
}

id sub_269792CA0(void *a1)
{
  v1 = a1;
  DeviceUnit.description.getter();

  v2 = sub_269854A64();

  return v2;
}

uint64_t DeviceUnit.description.getter()
{
  sub_269855204();
  MEMORY[0x26D645A60](0xD000000000000013, 0x800000026987F3A0);
  v0 = sub_269854634();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v0 = 0x3E6C696E3CLL;
    v2 = 0xE500000000000000;
  }

  MEMORY[0x26D645A60](v0, v2);

  MEMORY[0x26D645A60](0x614E6D6F6F72202CLL, 0xEC000000203A656DLL);
  v3 = sub_269854644();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0x3E6C696E3CLL;
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26D645A60](v3, v5);

  MEMORY[0x26D645A60](0x747369737361202CLL, 0xEF203A6449746E61);
  v6 = sub_269854604();
  MEMORY[0x26D645A60](v6);

  MEMORY[0x26D645A60](0x6D69786F7270202CLL, 0xED0000203A797469);
  sub_269854654();
  v7 = sub_2698547A4();
  MEMORY[0x26D645A60](v7);

  MEMORY[0x26D645A60](0xD000000000000010, 0x800000026987F3C0);
  v8 = sub_269854614();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0x3E6C696E3CLL;
    v10 = 0xE500000000000000;
  }

  MEMORY[0x26D645A60](v8, v10);

  MEMORY[0x26D645A60](0xD00000000000001ELL, 0x800000026987F3E0);
  v11 = sub_269854624();
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v11 = 0x3E6C696E3CLL;
    v13 = 0xE500000000000000;
  }

  MEMORY[0x26D645A60](v11, v13);

  MEMORY[0x26D645A60](32032, 0xE200000000000000);
  return 0;
}

unint64_t sub_269792F34()
{
  result = qword_280324480;
  if (!qword_280324480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324480);
  }

  return result;
}

BOOL sub_269792F88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static Proximity.< infix(_:_:)();
}

BOOL sub_269792F94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2697E0230();
}

BOOL sub_269792FA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2697E0274();
}

BOOL sub_269792FAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2697E02A8();
}

uint64_t OUTLINED_FUNCTION_0_35()
{

  return sub_269855584();
}

uint64_t OUTLINED_FUNCTION_1_29()
{

  return sub_269855584();
}

uint64_t sub_269792FF4(uint64_t a1)
{
  v2 = sub_2698548D4();
  v3 = OUTLINED_FUNCTION_8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_28033D910);
  v43 = *(v5 + 16);
  v44 = v13;
  v43(v12);
  sub_269706F14(a1, v47);
  v14 = sub_2698548B4();
  v15 = sub_269854F14();
  sub_269706F70(a1);
  v16 = os_log_type_enabled(v14, v15);
  v45 = v5;
  v46 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v42 = v10;
    v18 = v17;
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    v20 = sub_2697937D8();
    v22 = sub_26974F520(v20, v21, v47);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_269684000, v14, v15, "#hal Invoking device resolution service with filter: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v5 = v45;
    OUTLINED_FUNCTION_10();
    v10 = v42;
    OUTLINED_FUNCTION_10();
  }

  v23 = *(v5 + 8);
  v23(v12, v2);

  sub_2697E2660(v24);

  v47[0] = sub_2697E26D0(v25);
  sub_26979468C(v47);

  v26 = v47[0];
  (v43)(v10, v44, v2);

  v27 = sub_2698548B4();
  v28 = sub_269854F14();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v47[0] = v30;
    *v29 = 134218242;
    *(v29 + 4) = sub_26975004C(v26);
    *(v29 + 12) = 2080;
    sub_2697F056C();
    v33 = sub_26974F520(v31, v32, v47);

    *(v29 + 14) = v33;
    _os_log_impl(&dword_269684000, v27, v28, "#hal %ld device(s): %s", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v23(v10, v2);
  v34 = v46;
  v35 = sub_26975004C(v26);

  if (v35)
  {
    if (v34[4] || v34[6] || v34[8])
    {
      KeyPath = swift_getKeyPath();
      v37 = sub_269793A74(KeyPath, v34, v26);
      v39 = ~v38;

      if (v39)
      {

        return v37;
      }
    }
  }

  else
  {

    return 1;
  }

  return v26;
}

uint64_t sub_269793450(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v42 - v6;
  v7 = type metadata accessor for MediaNLIntent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = sub_269853F44();
  v13 = OUTLINED_FUNCTION_8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  v21 = sub_2698538B4();
  v22 = OUTLINED_FUNCTION_8(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v29 = v28 - v27;
  (*(v24 + 16))(v28 - v27, a1, v21);
  v30 = (*(v24 + 88))(v29, v21);
  if (v30 == *MEMORY[0x277D5C128])
  {
    (*(v24 + 96))(v29, v21);
    (*(v15 + 32))(v20, v29, v12);
    (*(v15 + 16))(v11, v20, v12);
    v31 = sub_2697A6E84();
    sub_2696CC460(v11);
    (*(v15 + 8))(v20, v12);
  }

  else
  {
    v32 = v30;
    v33 = *MEMORY[0x277D5C140];
    v34 = *MEMORY[0x277D5C148];
    (*(v24 + 8))(v29, v21);
    if (v32 == v33 || v32 == v34)
    {
      v36 = v43;
      sub_2696CB644(v43);
      v37 = sub_269852474();
      if (__swift_getEnumTagSinglePayload(v36, 1, v37) != 1)
      {
        v31 = sub_269852434();
        (*(*(v37 - 8) + 8))(v36, v37);
        goto LABEL_12;
      }

      sub_2696CC3F8(v36);
    }

    v31 = 0;
  }

LABEL_12:
  OUTLINED_FUNCTION_3_32();
  if (sub_269852D14() & 1) != 0 || (OUTLINED_FUNCTION_3_32(), (sub_269852CE4()))
  {
    v38 = 1;
  }

  else
  {
    v39 = a2[3];
    v40 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v39);
    v38 = sub_2696CB5D4(v39, v40) & v31;
  }

  return v38 & 1;
}

uint64_t sub_2697937D8()
{
  v1 = 7104878;
  sub_269855204();

  strcpy(v8, "deviceName: ");
  HIWORD(v8[1]) = -4864;
  if (v0[4])
  {
    v2 = v0[3];
    v3 = v0[4];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x26D645A60](v2, v3);

  MEMORY[0x26D645A60](0x3A6D6F6F72202C22, 0xEA00000000002220);
  if (v0[6])
  {
    v4 = v0[5];
    v5 = v0[6];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x26D645A60](v4, v5);

  MEMORY[0x26D645A60](0x7469746E65202C22, 0xEC00000022203A79);
  if (v0[8])
  {
    v1 = v0[7];
    v6 = v0[8];
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x26D645A60](v1, v6);

  MEMORY[0x26D645A60](34, 0xE100000000000000);
  return v8[0];
}

uint64_t sub_26979395C()
{
  v0 = sub_2698553E4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2697939A8(char a1)
{
  if (!a1)
  {
    return 0x656369766544;
  }

  if (a1 == 1)
  {
    return 1836019538;
  }

  return 0x797469746E45;
}

uint64_t sub_269793A18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26979395C();
  *a2 = result;
  return result;
}

uint64_t sub_269793A48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2697939A8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_269793A74(uint64_t a1, const void *a2, unint64_t a3)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_269706F14(a2, v22);
  swift_getAtKeyPath();
  memcpy(v22, __dst, sizeof(v22));
  sub_269706F70(v22);
  if (!__src[1])
  {
    return 0;
  }

  if (qword_2803224F8 != -1)
  {
    swift_once();
  }

  v6 = qword_280324488;
  v7 = sub_26981D250(a1, qword_280324488);
  if (!v7)
  {

    return 0;
  }

  v8 = sub_269793CA8(__src[0], __src[1], a3, v7);

  if (sub_26975004C(v8))
  {
    return v8;
  }

  if (!sub_26981D250(a1, v6))
  {
    return 0;
  }

  v11 = v10;

  memcpy(__src, a2, sizeof(__src));
  sub_269706F14(a2, v17);
  swift_getAtKeyPath();
  memcpy(__dst, __src, sizeof(__dst));
  sub_269706F70(__dst);
  v12 = v19;
  if (!v19)
  {
    return 0;
  }

  v13 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  if (v11)
  {
    if (v11 == 1)
    {
      v15 = 0xE400000000000000;
      v16 = 1836019538;
    }

    else
    {
      v15 = 0xE600000000000000;
      v16 = 0x797469746E45;
    }
  }

  else
  {
    v15 = 0xE600000000000000;
    v16 = 0x656369766544;
  }

  *(inited + 32) = v16;
  *(inited + 40) = v15;
  *(inited + 48) = v13;
  *(inited + 56) = v12;
  return sub_269854A04();
}

uint64_t sub_269793CA8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = a3;
  v64 = a1;
  v65 = a2;
  v53 = sub_269851B04();
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324490, &qword_269860150);
  v8 = *(v59 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v59);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v61 = &v46 - v13;
  if (a4 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_269855324())
  {
    v15 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v15;
    }

    v47 = i;
    v54 = v12;
    v12 = v58;
    v16 = sub_26975004C(v58);
    v17 = 0;
    v49 = a4 & 0xC000000000000001;
    v46 = a4 + 32;
    v66 = v12 & 0xFFFFFFFFFFFFFF8;
    v67 = v12 & 0xC000000000000001;
    v51 = (v5 + 8);
    v5 = v12;
    v60 = v16;
    v48 = a4;
    v57 = (v8 + 8);
LABEL_5:
    v8 = v49;
    sub_269750050(v17);
    if (v8)
    {
      v18 = MEMORY[0x26D646120](v17, a4);
    }

    else
    {
      v18 = *(v46 + 8 * v17);
    }

    v19 = __OFADD__(v17, 1);
    v20 = v17 + 1;
    if (!v19)
    {
      break;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

  v50 = v20;
  v21 = 0;
  v73 = v15;
  a4 = MEMORY[0x277D837D0];
  v62 = v18;
  while (v16 != v21)
  {
    if (v67)
    {
      v22 = MEMORY[0x26D646120](v21, v5);
    }

    else
    {
      if (v21 >= *(v66 + 16))
      {
        goto LABEL_50;
      }

      v22 = *(v5 + 8 * v21 + 32);
    }

    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    KeyPath = v22;
    v8 = v22;
    swift_getAtKeyPath();

    v23 = v72;
    if (!v72)
    {

      goto LABEL_27;
    }

    v63 = v8;
    v24 = v71;
    KeyPath = v64;
    v70 = v65;
    v25 = sub_269693054();
    if (!sub_269855114())
    {

LABEL_23:
      v8 = &v73;
      sub_269855284();
      v12 = *(v73 + 16);
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      goto LABEL_27;
    }

    sub_269854464();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324498, &unk_269860158);
    v71 = v18;
    KeyPath = swift_getKeyPath();
    v8 = sub_269854A54();

    v26 = v57;
    if (v8)
    {
      v56 = v25;
      v71 = v24;
      v72 = v23;

      v27 = v54;
      sub_269854464();
      sub_2697951CC();
      v28 = sub_269795220();
      v29 = v59;
      v55 = v28;
      v8 = sub_269854A34();
      v30 = v27;
      v31 = v27;
      v12 = *v26;
      (*v26)(v31, v29);

      if (v8)
      {
        KeyPath = v24;
        v70 = v23;

        sub_269854464();
        v68[0] = 0;
        v68[1] = 0xE000000000000000;
        sub_269795284();
        sub_2697952D8();
        v32 = v59;
        sub_269854EA4();
        (v12)(v30, v32);

        KeyPath = v71;
        v70 = v72;
        v33 = v52;
        sub_269851AE4();
        v34 = sub_2698550F4();
        v36 = v35;
        (*v51)(v33, v53);

        v71 = v34;
        v72 = v36;
        KeyPath = v64;
        v70 = v65;
        v37 = MEMORY[0x277D837D0];
        v8 = sub_269855114();

        (v12)(v61, v32);

        v5 = v58;
        v16 = v60;
        a4 = v37;
        v18 = v62;
        if (v8)
        {

          goto LABEL_27;
        }

        goto LABEL_23;
      }

      v16 = v60;
      (v12)(v61, v59);
    }

    else
    {

      v12 = *v26;
      (*v26)(v61, v59);
    }

    v5 = v58;
    a4 = MEMORY[0x277D837D0];
    v18 = v62;
LABEL_27:
    ++v21;
  }

  v8 = v73;
  if (sub_26975004C(v73))
  {

    return v8;
  }

  v12 = 0;
  v15 = MEMORY[0x277D84F90];
  v68[0] = MEMORY[0x277D84F90];
  a4 = v48;
  v17 = v50;
  while (v16 != v12)
  {
    if (v67)
    {
      v38 = MEMORY[0x26D646120](v12, v5);
    }

    else
    {
      if (v12 >= *(v66 + 16))
      {
        goto LABEL_52;
      }

      v38 = *(v5 + 8 * v12 + 32);
    }

    if (__OFADD__(v12, 1))
    {
      goto LABEL_51;
    }

    KeyPath = v38;
    v39 = v38;
    swift_getAtKeyPath();

    v8 = v72;
    if (v72)
    {
      v40 = sub_269854AF4();
      v42 = v41;

      v71 = v40;
      v72 = v42;
      KeyPath = sub_269854AF4();
      v70 = v43;
      sub_269693054();
      v8 = sub_269855144();

      if (v8)
      {
        v8 = v68;
        sub_269855284();
        v44 = *(v68[0] + 16);
        sub_2698552B4();
        sub_2698552C4();
        sub_269855294();
      }

      else
      {
      }

      v16 = v60;
    }

    else
    {
    }

    ++v12;
  }

  v8 = v68[0];
  v12 = sub_26975004C(v68[0]);

  if (!v12)
  {

    if (v17 != v47)
    {
      goto LABEL_5;
    }

    return v15;
  }

  return v8;
}

uint64_t sub_2697944DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803244C0, qword_269860198);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26985C7B0;
  *(inited + 32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2698590C0;
  *(v1 + 32) = swift_getKeyPath();
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  *(inited + 56) = swift_getKeyPath();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2698590C0;
  *(v2 + 32) = swift_getKeyPath();
  *(inited + 64) = v2;
  *(inited + 72) = 0;
  *(inited + 80) = swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26985A540;
  *(v3 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(inited + 88) = v3;
  *(inited + 96) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F28, &unk_26985DDF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803244C8, qword_2698601F0);
  result = sub_269854A04();
  qword_280324488 = result;
  return result;
}

uint64_t sub_26979468C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2697E23EC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_269794708(v6);
  return sub_269855294();
}

void sub_269794708(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_269855534();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_269706FC4(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_2697948E4(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_2697947E8(0, v3, 1, a1);
  }
}

void sub_2697947E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v18 = v6;
      do
      {
        v10 = *v6;
        v11 = v8;
        v12 = v10;
        sub_269854654();
        sub_269854654();
        v13 = sub_2698547B4();
        v14 = sub_2698547B4();

        if (v14 >= v13)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v15 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v15;
        v6 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v18 + 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_2697948E4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_95:
    v114 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v96 = (v8 + 16);
      v97 = *(v8 + 16);
      while (v97 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_133;
        }

        v98 = v8;
        v99 = (v8 + 16 * v97);
        v100 = *v99;
        v101 = &v96[2 * v97];
        v8 = *(v101 + 1);
        sub_269794F7C((*a3 + 8 * *v99), (*a3 + 8 * *v101), (*a3 + 8 * v8), v114);
        if (v5)
        {
          break;
        }

        if (v8 < v100)
        {
          goto LABEL_121;
        }

        if (v97 - 2 >= *v96)
        {
          goto LABEL_122;
        }

        *v99 = v100;
        v99[1] = v8;
        v102 = *v96 - v97;
        if (*v96 < v97)
        {
          goto LABEL_123;
        }

        v97 = *v96 - 1;
        sub_2697E18B8(v101 + 16, v102, v101);
        *v96 = v97;
        v8 = v98;
      }

LABEL_105:

      return;
    }

LABEL_130:
    v8 = sub_2697E18A4(v8);
    goto LABEL_97;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if ((v7 + 1) < v6)
    {
      v104 = v5;
      v106 = v8;
      v11 = (*a3 + 8 * v7);
      v12 = v7;
      v13 = 8 * v7;
      v15 = *v11;
      v14 = v11 + 2;
      v114 = v6;
      v5 = *(*a3 + 8 * v10);
      v16 = v15;
      sub_269854654();
      sub_269854654();
      v111 = sub_2698547B4();
      v110 = sub_2698547B4();

      v17 = v114;
      v18 = v12 + 2;
      while (1)
      {
        v19 = v18;
        v20 = v10 + 1;
        if (v20 >= v17)
        {
          break;
        }

        v21 = *(v14 - 1);
        v22 = *v14;
        v5 = v21;
        sub_269854654();
        v23 = v20;
        sub_269854654();
        v24 = sub_2698547B4();
        v25 = sub_2698547B4();

        v17 = v114;
        v26 = v25 < v24;
        v10 = v23;
        v27 = !v26;
        v28 = (v110 < v111) ^ v27;
        ++v14;
        v18 = (v19 + 1);
        if ((v28 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v10 = v17;
LABEL_12:
      if (v110 >= v111)
      {
        v5 = v104;
        v8 = v106;
      }

      else
      {
        v8 = v106;
        v29 = v12;
        if (v10 < v12)
        {
          goto LABEL_127;
        }

        if (v12 >= v10)
        {
          v5 = v104;
          v9 = v12;
          goto LABEL_27;
        }

        if (v17 >= v19)
        {
          v30 = v19;
        }

        else
        {
          v30 = v17;
        }

        v31 = 8 * v30 - 8;
        v32 = v10;
        v5 = v104;
        do
        {
          if (v29 != --v32)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_134;
            }

            v34 = *(v33 + v13);
            *(v33 + v13) = *(v33 + v31);
            *(v33 + v31) = v34;
          }

          ++v29;
          v31 -= 8;
          v13 += 8;
        }

        while (v29 < v32);
      }

      v9 = v12;
    }

LABEL_27:
    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_126;
      }

      if (&v10[-v9] < a4)
      {
        break;
      }
    }

LABEL_43:
    if (v10 < v9)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v93 = *(v8 + 16);
      sub_26977BE84();
      v8 = v94;
    }

    v50 = *(v8 + 16);
    v51 = v50 + 1;
    if (v50 >= *(v8 + 24) >> 1)
    {
      sub_26977BE84();
      v8 = v95;
    }

    *(v8 + 16) = v51;
    v52 = v8 + 32;
    v53 = (v8 + 32 + 16 * v50);
    *v53 = v9;
    v53[1] = v10;
    v113 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    v114 = v10;
    if (v50)
    {
      while (1)
      {
        v54 = v51 - 1;
        v55 = (v52 + 16 * (v51 - 1));
        v56 = (v8 + 16 * v51);
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v57 = *(v8 + 32);
          v58 = *(v8 + 40);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_63:
          if (v60)
          {
            goto LABEL_112;
          }

          v72 = *v56;
          v71 = v56[1];
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_115;
          }

          v76 = v55[1];
          v77 = v76 - *v55;
          if (__OFSUB__(v76, *v55))
          {
            goto LABEL_118;
          }

          if (__OFADD__(v74, v77))
          {
            goto LABEL_120;
          }

          if (v74 + v77 >= v59)
          {
            if (v59 < v77)
            {
              v54 = v51 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        if (v51 < 2)
        {
          goto LABEL_114;
        }

        v79 = *v56;
        v78 = v56[1];
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_78:
        if (v75)
        {
          goto LABEL_117;
        }

        v81 = *v55;
        v80 = v55[1];
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v82 < v74)
        {
          goto LABEL_92;
        }

LABEL_85:
        if (v54 - 1 >= v51)
        {
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v86 = v8;
        v87 = (v52 + 16 * (v54 - 1));
        v88 = *v87;
        v89 = v52;
        v90 = v54;
        v8 = v52 + 16 * v54;
        v91 = *(v8 + 8);
        sub_269794F7C((*a3 + 8 * *v87), (*a3 + 8 * *v8), (*a3 + 8 * v91), v113);
        if (v5)
        {
          goto LABEL_105;
        }

        if (v91 < v88)
        {
          goto LABEL_107;
        }

        v5 = *(v86 + 16);
        if (v90 > v5)
        {
          goto LABEL_108;
        }

        *v87 = v88;
        v87[1] = v91;
        if (v90 >= v5)
        {
          goto LABEL_109;
        }

        v92 = v90;
        v51 = (v5 - 1);
        sub_2697E18B8((v8 + 16), &v5[-v92 - 1], v8);
        v8 = v86;
        *(v86 + 16) = v5 - 1;
        v26 = v5 > 2;
        v5 = 0;
        v52 = v89;
        if (!v26)
        {
          goto LABEL_92;
        }
      }

      v61 = v52 + 16 * v51;
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_110;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_111;
      }

      v68 = v56[1];
      v69 = v68 - *v56;
      if (__OFSUB__(v68, *v56))
      {
        goto LABEL_113;
      }

      v67 = __OFADD__(v59, v69);
      v70 = v59 + v69;
      if (v67)
      {
        goto LABEL_116;
      }

      if (v70 >= v64)
      {
        v84 = *v55;
        v83 = v55[1];
        v67 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v67)
        {
          goto LABEL_124;
        }

        if (v59 < v85)
        {
          v54 = v51 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_63;
    }

LABEL_92:
    v6 = a3[1];
    v7 = v114;
    if (v114 >= v6)
    {
      goto LABEL_95;
    }
  }

  v36 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_128;
  }

  if (v36 >= v35)
  {
    v36 = a3[1];
  }

  if (v36 < v9)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v10 == v36)
  {
    goto LABEL_43;
  }

  v105 = v5;
  v107 = v8;
  v37 = *a3;
  v38 = *a3 + 8 * v10 - 8;
  v108 = v9;
  v39 = v9 - v10;
  v112 = v36;
LABEL_36:
  v114 = v10;
  v40 = *(v37 + 8 * v10);
  v41 = v39;
  v42 = v38;
  while (1)
  {
    v43 = *v42;
    v44 = v40;
    v45 = v43;
    sub_269854654();
    sub_269854654();
    v46 = sub_2698547B4();
    v47 = sub_2698547B4();

    if (v47 >= v46)
    {
LABEL_41:
      v10 = v114 + 1;
      v38 += 8;
      --v39;
      if (v114 + 1 == v112)
      {
        v10 = v112;
        v5 = v105;
        v8 = v107;
        v9 = v108;
        goto LABEL_43;
      }

      goto LABEL_36;
    }

    if (!v37)
    {
      break;
    }

    v48 = *v42;
    v40 = *(v42 + 8);
    *v42 = v40;
    *(v42 + 8) = v48;
    v42 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_41;
    }
  }

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
}

uint64_t sub_269794F7C(char *a1, char *a2, id *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_26977D884(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    for (i = v5; ; v5 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v7;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      sub_269854654();
      sub_269854654();
      v16 = sub_2698547B4();
      v17 = sub_2698547B4();

      if (v17 >= v16)
      {
        break;
      }

      v18 = v6;
      v19 = v12;
      v20 = v12 == v6++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 = (v19 + 1);
    }

    v18 = v4;
    v19 = v12;
    v20 = v12 == v4++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v19 = *v18;
    goto LABEL_13;
  }

  sub_26977D884(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
  v35 = v7;
  v36 = v4;
LABEL_15:
  v21 = v6 - 1;
  v22 = v5 - 1;
  while (v10 > v4 && v6 > v7)
  {
    v24 = v22;
    v25 = v21;
    v26 = *v21;
    v27 = *(v10 - 1);
    v28 = v26;
    sub_269854654();
    sub_269854654();
    v29 = sub_2698547B4();
    v30 = sub_2698547B4();

    v5 = v24;
    v31 = v24 + 1;
    if (v30 < v29)
    {
      v20 = v31 == v6;
      v6 = v25;
      v7 = v35;
      v4 = v36;
      if (!v20)
      {
        *v5 = *v25;
        v6 = v25;
      }

      goto LABEL_15;
    }

    if (v10 != v31)
    {
      *v24 = *(v10 - 1);
    }

    v22 = v24 - 1;
    --v10;
    v7 = v35;
    v4 = v36;
    v21 = v25;
  }

LABEL_28:
  v32 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v32])
  {
    memmove(v6, v4, 8 * v32);
  }

  return 1;
}

unint64_t sub_2697951CC()
{
  result = qword_2803244A0;
  if (!qword_2803244A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803244A0);
  }

  return result;
}

unint64_t sub_269795220()
{
  result = qword_2803244A8;
  if (!qword_2803244A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280324490, &qword_269860150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803244A8);
  }

  return result;
}

unint64_t sub_269795284()
{
  result = qword_2803244B0;
  if (!qword_2803244B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803244B0);
  }

  return result;
}

unint64_t sub_2697952D8()
{
  result = qword_2803244B8;
  if (!qword_2803244B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803244B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceCapabilitiesNoneMatchedReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_269795408(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_26979545C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_2697954D4()
{
  result = qword_2803244D0;
  if (!qword_2803244D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803244D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_32()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t sub_26979555C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26979559C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_269795600(void *a1)
{
  v55 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803244D8, &qword_2698603C8);
  OUTLINED_FUNCTION_8_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  v54 = v48 - v6;
  OUTLINED_FUNCTION_2_13();
  v7 = sub_269854734();
  v8 = OUTLINED_FUNCTION_8(v7);
  v49 = v9;
  v50 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_7();
  v51 = v12;
  OUTLINED_FUNCTION_2_13();
  v13 = sub_269854584();
  v14 = OUTLINED_FUNCTION_8(v13);
  v52 = v15;
  v53 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = (v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F0, &qword_2698603D0);
  OUTLINED_FUNCTION_8_9(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v23);
  v25 = v48 - v24;
  v26 = sub_269851DA4();
  v27 = OUTLINED_FUNCTION_8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v27);
  v34 = v48 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = v48 - v35;
  sub_269851D94();
  v37 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_269853474();
  if (v38)
  {
    sub_269851D44();

    if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
    {
      sub_269796034(v25);
    }

    else
    {
      (*(v29 + 8))(v36, v26);
      (*(v29 + 32))(v36, v25, v26);
    }
  }

  v39 = v1[8];
  v48[2] = v1[9];
  v48[1] = __swift_project_boxed_opaque_existential_1(v1 + 5, v39);
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803244F0, &qword_2698603E8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2698590C0;
  v42 = v55;
  *(v41 + 32) = v55;
  *v19 = v41;
  v19[1] = 0;
  (*(v29 + 16))(v34, v36, v26);
  (*(v49 + 104))(v51, *MEMORY[0x277D61F80], v50);
  v43 = sub_269854724();
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v43);
  v44 = v42;
  sub_269854714();
  v46 = v52;
  v45 = v53;
  (*(v52 + 104))(v19, *MEMORY[0x277D61ED0], v53);
  sub_2698546B4();
  (*(v46 + 8))(v19, v45);
  return (*(v29 + 8))(v36, v26);
}

uint64_t sub_269795A18(int a1)
{
  v2 = v1;
  LODWORD(v83) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803244D8, &qword_2698603C8);
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  v84 = &v70 - v7;
  OUTLINED_FUNCTION_2_13();
  v8 = sub_269854734();
  v9 = OUTLINED_FUNCTION_8(v8);
  v87 = v10;
  v88 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_7();
  v81 = v13;
  OUTLINED_FUNCTION_2_13();
  v89 = sub_269854584();
  v14 = OUTLINED_FUNCTION_8(v89);
  v85 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_7();
  v82 = v18;
  OUTLINED_FUNCTION_2_13();
  v19 = sub_269854574();
  v20 = OUTLINED_FUNCTION_8(v19);
  v91 = v21;
  v92 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15_7();
  v90 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F0, &qword_2698603D0);
  OUTLINED_FUNCTION_8_9(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v70 - v29;
  v31 = sub_269851DA4();
  v32 = OUTLINED_FUNCTION_8(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v32);
  v39 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v70 - v40;
  sub_269851D94();
  v42 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v43 = v41;
  sub_269853474();
  if (v44)
  {
    sub_269851D44();

    if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
    {
      sub_269796034(v30);
    }

    else
    {
      (*(v34 + 8))(v41, v31);
      (*(v34 + 32))(v41, v30, v31);
    }
  }

  v86 = v31;
  v45 = v90;
  v46 = v91;
  v47 = *(v91 + 104);
  v48 = MEMORY[0x277D61EC0];
  LODWORD(v80) = v83 & 1;
  if ((v83 & 1) == 0)
  {
    v48 = MEMORY[0x277D61EB8];
  }

  v49 = v92;
  v47(v90, *v48, v92);
  v50 = v2[9];
  v78 = v2[8];
  v79 = v50;
  v77 = __swift_project_boxed_opaque_existential_1(v2 + 5, v78);
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803244E0, &qword_2698603D8) + 48);
  v83 = v34;
  v75 = *(v34 + 16);
  v75(v39, v43, v31);
  v52 = *MEMORY[0x277D61F80];
  v71 = v2;
  v53 = *(v87 + 13);
  v87 = v43;
  v54 = v81;
  v74 = v52;
  v73 = v53;
  v53(v81);
  v55 = sub_269854724();
  v56 = v84;
  v72 = v55;
  __swift_storeEnumTagSinglePayload(v84, 1, 1, v55);
  v57 = v82;
  v76 = v39;
  sub_269854714();
  (*(v46 + 16))(v57 + v51, v45, v49);
  v58 = v85;
  v59 = *(v85 + 104);
  v60 = v89;
  v59(v57, *MEMORY[0x277D61EB0], v89);
  sub_2698546B4();
  v61 = v60;
  v62 = *(v58 + 8);
  v62(v57, v61);
  if (!v80)
  {
    v63 = v71[9];
    v80 = v71[8];
    v85 = v63;
    v79 = __swift_project_boxed_opaque_existential_1(v71 + 5, v80);
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803244E8, &qword_2698603E0) + 48);
    v78 = v59;
    v75(v76, v87, v86);
    v73(v54, v74, v88);
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v72);
    sub_269854714();
    v65 = v57;
    v66 = *MEMORY[0x277D61EA8];
    v67 = sub_269854564();
    (*(*(v67 - 8) + 104))(v65 + v64, v66, v67);
    v68 = v89;
    v78(v65, *MEMORY[0x277D61EC8], v89);
    sub_2698546B4();
    v62(v65, v68);
  }

  (*(v91 + 8))(v90, v92);
  return (*(v83 + 8))(v87, v86);
}

uint64_t sub_269796034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F0, &qword_2698603D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26979609C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2698548D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v11 = __swift_project_value_buffer(v6, qword_28033D910);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_2698548B4();
  v13 = sub_269854F14();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_16_2();
    *v14 = 0;
    _os_log_impl(&dword_269684000, v12, v13, "Unknown failure occured, sending genericError dialog.", v14, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v7 + 8))(v10, v6);
  sub_2696A73F8(a1, v25);
  sub_2696F3E90(a2, v23);
  sub_2696A73F8(a3, v22);
  v15 = swift_allocObject();
  v16 = v23[1];
  *(v15 + 16) = v23[0];
  *(v15 + 32) = v16;
  *(v15 + 48) = v24;
  sub_26968E5D4(v22, v15 + 56);
  v17 = sub_269852774();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v25[0] = sub_269852764();
  sub_269853144();
}

uint64_t sub_2697962EC()
{
  OUTLINED_FUNCTION_2_7();
  v0[15] = v1;
  v0[16] = v2;
  v3 = sub_2698548D4();
  v0[17] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v0[18] = v4;
  v6 = *(v5 + 64) + 15;
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2697963B0()
{
  v1 = v0[16];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[23] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803244F8, &qword_269860400);
  *v4 = v0;
  v4[1] = sub_2697964B8;

  return MEMORY[0x2822007B8](v0 + 14, 0, 0, 0xD000000000000020, 0x800000026987F440, sub_26979866C, v2, v5);
}

uint64_t sub_2697964B8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 184);
  v3 = *(v1 + 176);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2697965B8()
{
  v98 = v0;
  v3 = *(v0 + 112);
  v4 = 0x280322000uLL;
  if (!v3)
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v45 = *(v0 + 144);
    v44 = *(v0 + 152);
    __swift_project_value_buffer(*(v0 + 136), qword_28033D910);
    v46 = OUTLINED_FUNCTION_2_8();
    v47(v46);
    v48 = sub_2698548B4();
    v49 = sub_269854F24();
    v50 = os_log_type_enabled(v48, v49);
    v52 = *(v0 + 144);
    v51 = *(v0 + 152);
    v53 = *(v0 + 136);
    if (v50)
    {
      v54 = OUTLINED_FUNCTION_16_2();
      *v54 = 0;
      _os_log_impl(&dword_269684000, v48, v49, "Unable to get state of devices from context", v54, 2u);
      OUTLINED_FUNCTION_10();
    }

    v55 = *(v52 + 8);
    v56 = OUTLINED_FUNCTION_22_3();
    v57(v56);
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v6 = 1;
    goto LABEL_53;
  }

  v95 = sub_26975004C(*(v0 + 112));
  if (!v95)
  {

    LOBYTE(v2) = 0;
    v42 = 0;
    v6 = 0;
    LOBYTE(v1) = 0;
    goto LABEL_48;
  }

  v5 = 0;
  v88 = 0;
  v89 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *(v0 + 144);
  v93 = v3 & 0xC000000000000001;
  v83 = 0;
  v84 = v3 & 0xFFFFFFFFFFFFFF8;
  v86 = (v8 + 8);
  v87 = (v8 + 16);
  v85 = *MEMORY[0x277CEEFF0];
  v91 = v3;
  do
  {
    if (v93)
    {
      v9 = MEMORY[0x26D646120](v5, v3);
    }

    else
    {
      if (v5 >= *(v84 + 16))
      {
        goto LABEL_57;
      }

      v9 = *(v3 + 8 * v5 + 32);
    }

    v1 = v9;
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if ([v9 proximity] == 4000)
    {

      v88 = sub_2696CD57C(v1, &selRef_roomName);
      v7 = v11;
    }

    v12 = *(v0 + 120);
    v13 = sub_2696CD57C(v1, &selRef_assistantIdentifier);
    v2 = v14;
    v15 = sub_269854604();
    if (!v2)
    {

      goto LABEL_31;
    }

    if (v13 == v15 && v2 == v16)
    {
    }

    else
    {
      v18 = sub_269855584();

      if ((v18 & 1) == 0)
      {

        goto LABEL_31;
      }
    }

    v90 = v7;

    if (*(v4 + 1760) != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 168);
    v20 = *(v0 + 136);
    v21 = __swift_project_value_buffer(v20, qword_28033D910);
    (*v87)(v19, v21, v20);
    v22 = sub_2698548B4();
    v23 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_5(v23))
    {
      v24 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v24);
      _os_log_impl(&dword_269684000, v22, v20, "RemoteExecutionResponseUtil.getState() Found context for target device - matched assistantIdentifier", v7, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v25 = *(v0 + 168);
    v26 = *(v0 + 136);

    v27 = *v86;
    v28 = OUTLINED_FUNCTION_22_3();
    v29(v28);
    v89 = sub_2696CD57C(v1, &selRef_roomName);
    v6 = v30;
    result = sub_26979859C(v1);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v32 = result;
    v33 = v4;
    v34 = sub_269854A94();
    if (!*(v32 + 16))
    {

LABEL_29:

      goto LABEL_30;
    }

    v2 = sub_26973CEF8(v34, v35);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      goto LABEL_29;
    }

    sub_2696B6F94(*(v32 + 56) + 32 * v2, v0 + 16);

    sub_2696B6F94(v0 + 16, v0 + 48);
    v38 = objc_allocWithZone(MEMORY[0x277CEF4D8]);
    v39 = sub_269798530((v0 + 48));
    v40 = [v39 sleepState];

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v83 = v40 == 2;
LABEL_30:
    v4 = v33;
    v7 = v90;
LABEL_31:
    v3 = v91;
    ++v5;
  }

  while (v10 != v95);

  if (v6)
  {
    LOBYTE(v1) = v83;
    if (v7)
    {
      v41 = v7;
      v42 = v89;
      if (v88 == v89 && v41 == v6)
      {

        LOBYTE(v2) = 1;
        v42 = v88;
        v6 = v41;
      }

      else
      {
        LOBYTE(v2) = sub_269855584();
      }
    }

    else
    {
      LOBYTE(v2) = 0;
      v42 = v89;
    }
  }

  else
  {

    LOBYTE(v2) = 0;
    v42 = 0;
    LOBYTE(v1) = v83;
  }

LABEL_48:
  v89 = v42;
  if (*(v4 + 1760) != -1)
  {
LABEL_58:
    OUTLINED_FUNCTION_0_10();
  }

  v61 = *(v0 + 160);
  v62 = *(v0 + 136);
  v63 = *(v0 + 144);
  v64 = __swift_project_value_buffer(v62, qword_28033D910);
  (*(v63 + 16))(v61, v64, v62);

  v65 = sub_2698548B4();
  v66 = sub_269854F14();

  v67 = os_log_type_enabled(v65, v66);
  v68 = *(v0 + 160);
  v69 = *(v0 + 136);
  v70 = *(v0 + 144);
  if (v67)
  {
    v71 = v2;
    v72 = swift_slowAlloc();
    v96 = v69;
    v73 = swift_slowAlloc();
    v97 = v73;
    *v72 = 136315138;
    v94 = v68;
    v74 = v1;
    *(v0 + 80) = v1 & 1;
    *(v0 + 88) = v89;
    *(v0 + 96) = v6;
    v92 = v66;
    v75 = v71 & 1;
    *(v0 + 104) = v71 & 1;

    v76 = sub_269854AE4();
    v78 = sub_26974F520(v76, v77, &v97);

    *(v72 + 4) = v78;
    v60 = v75;
    _os_log_impl(&dword_269684000, v65, v92, "RemoteExecutionResponseUtil.getState() returning RemoteDeviceState: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    OUTLINED_FUNCTION_18_7();
    OUTLINED_FUNCTION_10();

    (*(v70 + 8))(v94, v96);
  }

  else
  {

    (*(v70 + 8))(v68, v69);
    v60 = v2 & 1;
    v74 = v1;
  }

  v58 = v74 & 1;
  v59 = v89;
LABEL_53:
  v80 = *(v0 + 160);
  v79 = *(v0 + 168);
  v81 = *(v0 + 152);

  v82 = *(v0 + 8);

  return v82(v58, v59, v6, v60);
}