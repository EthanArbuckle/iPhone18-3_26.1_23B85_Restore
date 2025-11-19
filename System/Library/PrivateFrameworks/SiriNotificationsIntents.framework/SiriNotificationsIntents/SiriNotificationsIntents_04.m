uint64_t sub_26851BBC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for AnnouncementEventStoreErrors(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x26851BCCCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26851BD08()
{
  result = qword_280283500;
  if (!qword_280283500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283500);
  }

  return result;
}

void OUTLINED_FUNCTION_3_14()
{

  JUMPOUT(0x26D61BDA0);
}

void OUTLINED_FUNCTION_9_13()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D61CB30);
}

void OUTLINED_FUNCTION_11_9()
{

  JUMPOUT(0x26D61CB30);
}

uint64_t OUTLINED_FUNCTION_13_10()
{
  *(v1 - 96) = sub_26851BA54(v0);
  *(v1 - 88) = v2;
}

void OUTLINED_FUNCTION_16_8()
{

  JUMPOUT(0x26D61BDA0);
}

uint64_t OUTLINED_FUNCTION_17_8(float a1)
{
  *v3 = a1;

  return sub_2684EABEC(v2, v1, (v4 - 96));
}

__n128 OUTLINED_FUNCTION_21_4()
{
  result = *(v0 - 128);
  *(v0 - 112) = *(v0 - 144);
  *(v0 - 96) = result;
  v2 = *(v0 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_4()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);

  return sub_268568B10();
}

uint64_t OUTLINED_FUNCTION_24_5(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(v2, a2, 1, v3);
}

id OUTLINED_FUNCTION_25_3(uint64_t a1)
{

  return [v3 (v2 + 2168)];
}

BOOL OUTLINED_FUNCTION_26_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_27_3()
{

  return sub_2685689F0();
}

uint64_t OUTLINED_FUNCTION_28_2()
{
}

void OUTLINED_FUNCTION_30_3()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2048;
  *(v2 + 14) = v0;
}

uint64_t OUTLINED_FUNCTION_36_1()
{

  return swift_slowAlloc();
}

id sub_26851C004(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_268567A90();
  v3 = sub_268567B40();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_268567B20();
  v6 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  v7 = *MEMORY[0x277D48BE8];
  v8 = sub_268568B20();
  sub_26851C138(v8, v9, v6);
  v10 = sub_268567B30();
  if (v10 >> 62)
  {
    sub_26851C19C();
    v11 = sub_268569090();
  }

  else
  {

    sub_2685691D0();
    sub_26851C19C();
    v11 = v10;
  }

  sub_26851C1E0(v11, v6);

  return v6;
}

void sub_26851C138(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268568B10();

  [a3 setDialogPhase_];
}

unint64_t sub_26851C19C()
{
  result = qword_280283508;
  if (!qword_280283508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280283508);
  }

  return result;
}

void sub_26851C1E0(uint64_t a1, void *a2)
{
  sub_26851C19C();
  v3 = sub_268568CD0();

  [a2 setViews_];
}

uint64_t sub_26851C254()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283518, &qword_26856DAD8);
  return sub_268568B70();
}

void *sub_26851C2B8(uint64_t a1, const void *a2)
{
  v5 = sub_2685688F0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v2[2] = 0;
  v2[3] = 0;
  sub_2684D57FC(a2, (v2 + 4));
  sub_2684D57FC(a2 + 40, (v2 + 9));
  type metadata accessor for ReadNotificationsCATs();
  sub_2685688E0();
  sub_2685686F0();
  sub_2684D57FC((v2 + 9), v9);
  sub_2685685F0();
  v7 = sub_2685685D0();
  sub_268516318(v9, v7);

  __swift_destroy_boxed_opaque_existential_0(v9);
  v2[14] = sub_268568710();
  v2[15] = a1;
  memcpy(v2 + 16, a2, 0x80uLL);
  return v2;
}

uint64_t sub_26851C3EC()
{
  OUTLINED_FUNCTION_5();
  v1[24] = v0;
  v2 = sub_2685679B0();
  v1[25] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[26] = v3;
  v5 = *(v4 + 64);
  v1[27] = OUTLINED_FUNCTION_39();
  v6 = sub_268567B60();
  v1[28] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[29] = v7;
  v9 = *(v8 + 64);
  v1[30] = OUTLINED_FUNCTION_39();
  v10 = sub_2685689F0();
  v1[31] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[32] = v11;
  v13 = *(v12 + 64);
  v1[33] = OUTLINED_FUNCTION_50();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0) - 8) + 64);
  v1[36] = OUTLINED_FUNCTION_39();
  v15 = sub_2685680C0();
  v1[37] = v15;
  OUTLINED_FUNCTION_2_4(v15);
  v1[38] = v16;
  v18 = *(v17 + 64);
  v1[39] = OUTLINED_FUNCTION_39();
  v19 = sub_268567CE0();
  v1[40] = v19;
  OUTLINED_FUNCTION_2_4(v19);
  v1[41] = v20;
  v22 = *(v21 + 64);
  v1[42] = OUTLINED_FUNCTION_50();
  v1[43] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_26851C618()
{
  v0[44] = *(v0[24] + 120);
  v1 = sub_2684F4424();
  v0[45] = v1;
  if (v1)
  {
    v2 = sub_2684F4460();
    v0[46] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[47] = v3;
      *v3 = v0;
      v3[1] = sub_26851C864;
      v4 = v0[24];
      OUTLINED_FUNCTION_34();

      return sub_26851D5E4();
    }
  }

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v6 = v0[34];
  v7 = v0[32];
  __swift_project_value_buffer(v0[31], qword_28028B348);
  v8 = OUTLINED_FUNCTION_12_2();
  v9(v8);
  v10 = sub_2685689E0();
  v11 = sub_268568DE0();
  if (os_log_type_enabled(v10, v11))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v12, v13, "RNReadNotificationAction run | no notification to read");
    OUTLINED_FUNCTION_2();
  }

  v14 = v0[34];
  v15 = v0[31];
  v16 = v0[32];

  v17 = *(v16 + 8);
  v18 = OUTLINED_FUNCTION_34();
  v19(v18);
  sub_268507BAC();
  swift_allocError();
  swift_willThrow();
  v21 = v0[42];
  v20 = v0[43];
  OUTLINED_FUNCTION_3_15();

  OUTLINED_FUNCTION_9_1();

  return v22();
}

uint64_t sub_26851C864()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v4 = v3;
  v5 = *(v2 + 376);
  v6 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v7 = v6;
  *(v9 + 384) = v8;
  *(v9 + 392) = v0;

  v10 = *(v2 + 360);

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26851C994()
{
  v1 = *(v0 + 368);
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 304);
  v19 = *(v0 + 312);
  v20 = *(v0 + 384);
  v7 = *(v0 + 288);
  v21 = *(v0 + 296);
  v8 = *(v0 + 192);
  sub_2684DB414();

  v10 = sub_26856427C(v9);
  sub_268567CD0();
  sub_268508520(v10, v2);

  v11 = *(v4 + 8);
  *(v0 + 400) = v11;
  *(v0 + 408) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v3, v5);
  (*(v4 + 16))(v7, v2, v5);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  MEMORY[0x26D61AD60](v20, v7, MEMORY[0x277D84F90], v0 + 56);
  sub_2684D199C(v0 + 56, &qword_280282F30, &qword_26856DAD0);
  sub_2684D199C(v7, &qword_280282C00, &unk_26856A9A0);
  v12 = v8[29];
  v13 = v8[30];
  __swift_project_boxed_opaque_existential_1(v8 + 26, v12);
  v14 = MEMORY[0x277D5C1D8];
  *(v0 + 120) = v21;
  *(v0 + 128) = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
  (*(v6 + 16))(boxed_opaque_existential_0, v19, v21);
  v16 = *(MEMORY[0x277D5BF40] + 4);
  v17 = swift_task_alloc();
  *(v0 + 416) = v17;
  *v17 = v0;
  v17[1] = sub_26851CBB0;

  return MEMORY[0x2821BB5D0](v0 + 96, v12, v13);
}

uint64_t sub_26851CBB0()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v7 = v6;
  *(v2 + 424) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26851CCBC()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[35];
  v2 = v0[32];
  __swift_project_value_buffer(v0[31], qword_28028B348);
  v3 = OUTLINED_FUNCTION_12_2();
  v4(v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DF0();
  if (os_log_type_enabled(v5, v6))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v7, v8, "RNReadNotificationAction run | read notification");
    OUTLINED_FUNCTION_2();
  }

  v9 = v0[44];
  v10 = v0[35];
  v11 = v0[31];
  v12 = v0[32];

  v13 = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_34();
  v15(v14);
  v16 = v0[50];
  v17 = v0[48];
  v18 = v0[46];
  v19 = v0[43];
  v21 = v0[39];
  v20 = v0[40];
  v22 = v0[38];
  v46 = v0[37];
  if (*(v9 + 64) == 1)
  {
    v43 = v0[43];
    v44 = v0[51];
    v24 = v0[29];
    v23 = v0[30];
    v45 = v9;
    v42 = v0[40];
    v26 = v0[27];
    v25 = v0[28];
    v41 = v0[39];
    v27 = v0[26];
    v39 = v0[25];
    sub_268567990();
    v40 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    sub_268567A20();
    (*(v24 + 104))(v23, *MEMORY[0x277D5BC10], v25);
    (*(v27 + 104))(v26, *MEMORY[0x277D5B950], v39);

    sub_2684EBB74(4, 9, v23, v26, 8, 0, 0, 0, v18, 2u);
    sub_2685679A0();

    (*(v22 + 8))(v41, v46);
    v16(v43, v42);
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    *(v45 + 64) = 0;
  }

  else
  {

    (*(v22 + 8))(v21, v46);
    v16(v19, v20);
  }

  v29 = v0[42];
  v28 = v0[43];
  v30 = v0[39];
  v32 = v0[35];
  v31 = v0[36];
  v34 = v0[33];
  v33 = v0[34];
  v35 = v0[30];
  v36 = v0[27];

  OUTLINED_FUNCTION_9_1();

  return v37();
}

uint64_t sub_26851CFD8()
{
  v33 = v0;
  v3 = v0[49];
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v5 = v0[32];
  v4 = v0[33];
  __swift_project_value_buffer(v0[31], qword_28028B348);
  v6 = OUTLINED_FUNCTION_10_1();
  v7(v6);
  v8 = v3;
  v9 = sub_2685689E0();
  v10 = sub_268568DE0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[32];
  v13 = v0[33];
  v14 = v0[31];
  if (v11)
  {
    swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_16_9();
    v32 = v15;
    *v13 = 136315138;
    v0[23] = v3;
    v16 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v17 = sub_268568B70();
    v1 = v18;
    v2 = sub_2684EABEC(v17, v18, &v32);

    *(v13 + 4) = v2;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v19, v20, "RNReadNotificationAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v22 = *(v12 + 8);
    v21 = v12 + 8;
    v22(v31, v14);
  }

  else
  {

    v23 = *(v12 + 8);
    v21 = v12 + 8;
    v23(v13, v14);
  }

  v24 = v0[44];
  if (*(v24 + 64) == 1)
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_18_5();
    (*(v14 + 104))(v9, *MEMORY[0x277D5BC00], v1);
    (*(v21 + 104))(v13, *MEMORY[0x277D5B8D0], v2);
    v0[22] = v3;
    v25 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    sub_268568B70();

    OUTLINED_FUNCTION_2_14();
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    *(v24 + 64) = 0;
  }

  v26 = v0[46];
  swift_willThrow();

  v28 = v0[42];
  v27 = v0[43];
  OUTLINED_FUNCTION_3_15();

  OUTLINED_FUNCTION_9_1();

  return v29();
}

uint64_t sub_26851D2BC()
{
  v40 = v0;
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 344);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  v8 = *(v0 + 296);
  v9 = *(v0 + 304);

  (*(v9 + 8))(v7, v8);
  v4(v5, v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v10 = *(v0 + 424);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v12 = *(v0 + 256);
  v11 = *(v0 + 264);
  __swift_project_value_buffer(*(v0 + 248), qword_28028B348);
  v13 = OUTLINED_FUNCTION_10_1();
  v14(v13);
  v15 = v10;
  v16 = sub_2685689E0();
  v17 = sub_268568DE0();

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 256);
  v20 = *(v0 + 264);
  v21 = *(v0 + 248);
  if (v18)
  {
    swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_16_9();
    v39 = v22;
    *v20 = 136315138;
    *(v0 + 184) = v10;
    v23 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v24 = sub_268568B70();
    v1 = v25;
    v2 = sub_2684EABEC(v24, v25, &v39);

    *(v20 + 4) = v2;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v26, v27, "RNReadNotificationAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v22);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v29 = *(v19 + 8);
    v28 = v19 + 8;
    v29(v38, v21);
  }

  else
  {

    v30 = *(v19 + 8);
    v28 = v19 + 8;
    v30(v20, v21);
  }

  v31 = *(v0 + 352);
  if (*(v31 + 64) == 1)
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_18_5();
    (*(v21 + 104))(v16, *MEMORY[0x277D5BC00], v1);
    (*(v28 + 104))(v20, *MEMORY[0x277D5B8D0], v2);
    *(v0 + 176) = v10;
    v32 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    sub_268568B70();

    OUTLINED_FUNCTION_2_14();
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    *(v31 + 64) = 0;
  }

  v33 = *(v0 + 368);
  swift_willThrow();

  v35 = *(v0 + 336);
  v34 = *(v0 + 344);
  OUTLINED_FUNCTION_3_15();

  OUTLINED_FUNCTION_9_1();

  return v36();
}

uint64_t sub_26851D5E4()
{
  OUTLINED_FUNCTION_5();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  v4 = sub_268567D90();
  v1[24] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[25] = v5;
  v7 = *(v6 + 64);
  v1[26] = OUTLINED_FUNCTION_39();
  v8 = sub_2685689F0();
  v1[27] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[28] = v9;
  v11 = *(v10 + 64);
  v1[29] = OUTLINED_FUNCTION_39();
  v12 = sub_268568810();
  v1[30] = v12;
  OUTLINED_FUNCTION_2_4(v12);
  v1[31] = v13;
  v15 = *(v14 + 64);
  v1[32] = OUTLINED_FUNCTION_50();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v1[35] = v16;
  v17 = *(*(v16 - 8) + 64);
  v1[36] = OUTLINED_FUNCTION_50();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_26851D7C8()
{
  v96 = v0;
  v1 = v0[22];
  if (*(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_title + 8))
  {
    v2 = v0[43];
    v3 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_title);
    sub_268568BB0();
    v4 = 0;
    v1 = v0[22];
  }

  else
  {
    v4 = 1;
  }

  v5 = 1;
  __swift_storeEnumTagSinglePayload(v0[43], v4, 1, v0[30]);
  if (*(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_subtitle + 8))
  {
    v6 = v0[42];
    v7 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_subtitle);
    sub_268568BB0();
    v5 = 0;
  }

  v8 = v0[22];
  v9 = 1;
  __swift_storeEnumTagSinglePayload(v0[42], v5, 1, v0[30]);
  if (*(v8 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_body + 8))
  {
    v10 = v0[41];
    v11 = *(v8 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_body);
    sub_268568BB0();
    v9 = 0;
  }

  v12 = v0[23];
  v13 = v0[21];
  __swift_storeEnumTagSinglePayload(v0[41], v9, 1, v0[30]);
  v14 = *(v12 + 120);
  v0[44] = v14;
  v15 = *(v14 + 32);
  v16 = sub_2684DEAF0(v13);
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    v17 = v0[34];
    v18 = v0[22];
    v20 = v16 > 2 && v15 == v16 - 1;
    v93 = v20;
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    sub_268568BB0();
    if (qword_280282960 == -1)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_0_0();
LABEL_16:
  v23 = v0[42];
  v24 = v0[43];
  v25 = v0[40];
  v86 = v0[41];
  v27 = v0[38];
  v26 = v0[39];
  v94 = v0[34];
  v28 = v0[31];
  v88 = v0[30];
  v91 = v0[33];
  v30 = v0[28];
  v29 = v0[29];
  v31 = v0[27];
  v32 = __swift_project_value_buffer(v31, qword_28028B348);
  (*(v30 + 16))(v29, v32, v31);
  sub_2684D4298(v24, v25);
  sub_2684D4298(v23, v26);
  sub_2684D4298(v86, v27);
  v33 = v91;
  v92 = *(v28 + 16);
  v92(v33, v94, v88);
  v34 = sub_2685689E0();
  v89 = sub_268568DD0();
  v35 = os_log_type_enabled(v34, v89);
  v36 = v0[39];
  v37 = v0[40];
  v38 = v0[38];
  if (v35)
  {
    v39 = v0[37];
    v40 = v0[35];
    v79 = v0[32];
    v83 = v0[31];
    v80 = v0[30];
    v81 = v0[33];
    v84 = v0[28];
    v85 = v0[27];
    v87 = v0[29];
    v41 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *v41 = 136316162;
    sub_2684D4298(v37, v39);
    log = v34;
    v42 = sub_268568B70();
    v44 = v43;
    sub_2684D199C(v37, &qword_280282AF0, &qword_26856A1E0);
    v45 = sub_2684EABEC(v42, v44, &v95);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    sub_2684D4298(v36, v39);
    v46 = sub_268568B70();
    v48 = v47;
    sub_2684D199C(v36, &qword_280282AF0, &qword_26856A1E0);
    v49 = sub_2684EABEC(v46, v48, &v95);

    *(v41 + 14) = v49;
    *(v41 + 22) = 2080;
    sub_2684D4298(v38, v39);
    sub_268568B70();
    sub_2684D199C(v38, &qword_280282AF0, &qword_26856A1E0);
    v50 = OUTLINED_FUNCTION_34();
    v53 = sub_2684EABEC(v50, v51, v52);

    *(v41 + 24) = v53;
    *(v41 + 32) = 2080;
    if (v93)
    {
      v54 = 1702195828;
    }

    else
    {
      v54 = 0x65736C6166;
    }

    if (v93)
    {
      v55 = 0xE400000000000000;
    }

    else
    {
      v55 = 0xE500000000000000;
    }

    v56 = sub_2684EABEC(v54, v55, &v95);

    *(v41 + 34) = v56;
    *(v41 + 42) = 2080;
    v92(v79, v81, v80);
    v57 = sub_268568B70();
    v59 = v58;
    v60 = *(v83 + 8);
    v60(v81, v80);
    v61 = sub_2684EABEC(v57, v59, &v95);

    *(v41 + 44) = v61;
    _os_log_impl(&dword_2684CA000, log, v89, "RNReadNotificationAction makeAddViews | title: %s, subtitle: %s, body: %s, needsConjunction: %s, appId: %s", v41, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v84 + 8))(v87, v85);
    v62 = v92;
  }

  else
  {
    v63 = v0[33];
    v64 = v0[38];
    v66 = v0[30];
    v65 = v0[31];
    v67 = v0[28];
    v90 = v0[29];
    v68 = v0[27];

    v60 = *(v65 + 8);
    v60(v63, v66);
    sub_2684D199C(v64, &qword_280282AF0, &qword_26856A1E0);
    sub_2684D199C(v36, &qword_280282AF0, &qword_26856A1E0);
    sub_2684D199C(v37, &qword_280282AF0, &qword_26856A1E0);
    (*(v67 + 8))(v90, v68);
    v62 = v92;
  }

  v0[45] = v60;
  v69 = v0[36];
  v70 = v0[30];
  v71 = *(v0[23] + 112);
  v62(v69, v0[34], v70);
  __swift_storeEnumTagSinglePayload(v69, 0, 1, v70);
  v72 = swift_task_alloc();
  v0[46] = v72;
  *v72 = v0;
  v72[1] = sub_26851DE14;
  v74 = v0[42];
  v73 = v0[43];
  v75 = v0[41];
  v76 = v0[36];
  v77 = v0[26];

  return sub_26850F3D8();
}

uint64_t sub_26851DE14()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v4 = v3;
  v6 = *(v5 + 368);
  v7 = *(v5 + 288);
  v8 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v9 = v8;
  *(v10 + 376) = v0;

  sub_2684D199C(v7, &qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_26851DF44()
{
  v2 = v0[44];
  v3 = *(v2 + 32);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 32) = v5;
    v6 = sub_2684F4424();
    if (v6)
    {
      v7 = v0[44];
      v8 = sub_2684DEAF0(v6);

      if (*(v7 + 32) < v8)
      {
        v9 = v0[44];
        v10 = v0[23];
        sub_2684CC878(v10 + 128, (v0 + 2));
        type metadata accessor for RNReadNotificationAction();
        v11 = swift_allocObject();

        sub_26851C2B8(v12, v0 + 2);
        v13 = sub_26851E454(&qword_280282F68);
        swift_beginAccess();
        v14 = *(v10 + 16);
        *(v10 + 16) = v11;
        *(v10 + 24) = v13;
        swift_unknownObjectRelease();
      }
    }

    v15 = v0[42];
    v16 = v0[43];
    v17 = v0[41];
    v25 = v0[45];
    v26 = v0[40];
    v27 = v0[39];
    v28 = v0[38];
    v29 = v0[37];
    v30 = v0[36];
    v18 = v0[34];
    v31 = v0[33];
    v19 = v0[31];
    v20 = v0[30];
    v33 = v0[32];
    v34 = v0[29];
    v22 = v0[25];
    v21 = v0[26];
    v23 = v0[24];
    v32 = sub_26851C004(v21, (v0[23] + 72));
    (*(v22 + 8))(v21, v23);
    v25(v18, v20);
    sub_2684D199C(v17, &qword_280282AF0, &qword_26856A1E0);
    sub_2684D199C(v15, &qword_280282AF0, &qword_26856A1E0);
    sub_2684D199C(v16, &qword_280282AF0, &qword_26856A1E0);

    v24 = v0[1];

    v24(v32);
  }
}

uint64_t sub_26851E1B4()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v12 = *(v0 + 296);
  v13 = *(v0 + 288);
  v14 = *(v0 + 264);
  v15 = *(v0 + 256);
  v7 = *(v0 + 232);
  v16 = *(v0 + 208);
  v8 = (*(v0 + 248) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 360))(*(v0 + 272), *(v0 + 240));
  sub_2684D199C(v4, &qword_280282AF0, &qword_26856A1E0);
  sub_2684D199C(v2, &qword_280282AF0, &qword_26856A1E0);
  sub_2684D199C(v1, &qword_280282AF0, &qword_26856A1E0);

  OUTLINED_FUNCTION_9_1();
  v10 = *(v0 + 376);

  return v9();
}

uint64_t sub_26851E33C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684FF230;

  return sub_26851C3EC();
}

uint64_t sub_26851E454(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RNReadNotificationAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReadNotificationActionErrors(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x26851E530);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26851E56C()
{
  result = qword_280283520;
  if (!qword_280283520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283520);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_14()
{

  return sub_2684EBB74(4, 9, v0, v2, 8, v3, v4, 0, v1, 2u);
}

uint64_t OUTLINED_FUNCTION_3_15()
{
  v2 = v0[39];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[30];
  v8 = v0[27];
}

uint64_t OUTLINED_FUNCTION_10_7()
{
  v2 = v0[46];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v8 = v0[25];
  v7 = v0[26];

  return sub_268567990();
}

uint64_t OUTLINED_FUNCTION_16_9()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_5()
{
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return sub_268567A20();
}

uint64_t NotificationsFlowProvider.__allocating_init(aceServiceInvoker:deviceState:outputPublisher:featureFlags:)()
{
  OUTLINED_FUNCTION_48_0();
  v0 = swift_allocObject();
  NotificationsFlowProvider.init(aceServiceInvoker:deviceState:outputPublisher:featureFlags:)();
  return v0;
}

uint64_t NotificationsFlowProvider.init(aceServiceInvoker:deviceState:outputPublisher:featureFlags:)()
{
  OUTLINED_FUNCTION_48_0();
  sub_2684D57FC(v3, v1 + 56);
  sub_2684D8314(v4, v1 + 16);
  sub_2684D8314(v2, v1 + 96);
  *(v1 + 136) = v0;
  sub_2684D8314(v3, v1 + 144);
  return v1;
}

void NotificationsFlowProvider.makeFlowSearchResult(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_41();
  a19 = v21;
  a20 = v22;
  v227 = v20;
  v24 = v23;
  v224 = v25;
  v203 = sub_2685680B0();
  v26 = OUTLINED_FUNCTION_1(v203);
  v202 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25_0();
  v209 = v32;
  OUTLINED_FUNCTION_19_1();
  v215 = sub_268568560();
  v33 = OUTLINED_FUNCTION_1(v215);
  v213 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_27();
  v212 = v37;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_25_0();
  v218 = v39;
  OUTLINED_FUNCTION_19_1();
  v208 = sub_268568070();
  v40 = OUTLINED_FUNCTION_1(v208);
  v207 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_25_0();
  v214 = v46;
  OUTLINED_FUNCTION_19_1();
  v47 = sub_268568080();
  v48 = OUTLINED_FUNCTION_1(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_27();
  v219 = v53;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_19();
  v225 = v55;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_19();
  v217 = v57;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v58);
  v60 = &v198 - v59;
  v61 = sub_2685689F0();
  v62 = OUTLINED_FUNCTION_1(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_19();
  v216 = v69;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v72);
  v74 = &v198 - v73;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_38(v61, qword_28028B348);
  v75 = *(v64 + 16);
  v220 = v76;
  v221 = v75;
  v222 = v64 + 16;
  (v75)(v74);
  v77 = *(v50 + 16);
  v230 = v24;
  v77(v60, v24, v47);
  v223 = v74;
  v78 = sub_2685689E0();
  v79 = sub_268568DD0();
  v80 = os_log_type_enabled(v78, v79);
  v228 = v64;
  v229 = v61;
  v226 = v50;
  if (v80)
  {
    v81 = OUTLINED_FUNCTION_4();
    v198 = OUTLINED_FUNCTION_51();
    v232 = v198;
    *v81 = 136315138;
    v77(v217, v60, v47);
    v82 = sub_268568B70();
    v84 = v83;
    v85 = OUTLINED_FUNCTION_30_4();
    (v77)(v85);
    sub_2684EABEC(v82, v84, &v232);
    OUTLINED_FUNCTION_27_4();

    *(v81 + 4) = v82;
    _os_log_impl(&dword_2684CA000, v78, v79, "NotificationsFlowProvider makeFlowSearchResult | parse: %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v198);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v86 = v223;
    v223 = *(v228 + 8);
    v223(v86, v229);
    v87 = v226;
  }

  else
  {

    v88 = OUTLINED_FUNCTION_30_4();
    (v77)(v88);
    v89 = v223;
    v223 = *(v64 + 8);
    v223(v89, v61);
    v87 = v50;
  }

  v90 = v225;
  v217 = v50;
  (v50)(v225, v230, v47);
  v93 = *(v87 + 88);
  v91 = v87 + 88;
  v92 = v93;
  v94 = v93(v90, v47);
  v95 = *MEMORY[0x277D5C128];
  v96 = *MEMORY[0x277D5C130];
  v97 = *MEMORY[0x277D5C160];
  v98 = v90;
  v225 = v47;
  v99 = v91 - 80;
  (v77)(v98, v47);
  v101 = v94 == v95 || v94 == v96 || v94 == v97;
  v102 = v77;
  if (!v101 || (sub_268520FA8() & 1) == 0)
  {
    v110 = v219;
    v111 = v225;
    v217(v219, v230, v225);
    v112 = v92(v110, v111);
    if (v112 == v95)
    {
      (*(v226 + 96))(v110, v111);
      v113 = v213;
      v114 = *(v213 + 32);
      v115 = v218;
      v116 = OUTLINED_FUNCTION_44_0();
      v117 = v215;
      v118(v116);
      v119 = v216;
      OUTLINED_FUNCTION_20_5();
      v120();
      v121 = v212;
      (*(v113 + 16))(v212, v115, v117);
      v122 = sub_2685689E0();
      v123 = sub_268568DD0();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = OUTLINED_FUNCTION_4();
        v125 = OUTLINED_FUNCTION_51();
        v232 = v125;
        *v124 = 136315138;
        sub_26852111C(&qword_280283530, MEMORY[0x277D5F458]);
        v126 = sub_2685691A0();
        v127 = v121;
        v129 = v128;
        v130 = *(v113 + 8);
        (v130)(v127, v117);
        v131 = sub_2684EABEC(v126, v129, &v232);

        *(v124 + 4) = v131;
        _os_log_impl(&dword_2684CA000, v122, v123, "NotificationsFlowProvider makeFlowSearchResult | nlv3 intent: %s", v124, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v125);
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_12_3();

        OUTLINED_FUNCTION_24_6();
        v132 = v216;
      }

      else
      {

        v130 = *(v113 + 8);
        (v130)(v121, v117);
        OUTLINED_FUNCTION_24_6();
        v132 = v119;
      }

      v223(v132, v99);
      v153 = v218;
      sub_26851F4D4(v218, v154, v155, v156, v157, v158, v159, v160, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209);
    }

    else
    {
      v130 = sub_268569000;
      if (v112 == *MEMORY[0x277D5C150])
      {
        (*(v226 + 96))(v110, v225);
        v133 = v207;
        v134 = *(v207 + 32);
        v135 = OUTLINED_FUNCTION_44_0();
        v117 = v208;
        v136(v135);
        OUTLINED_FUNCTION_47_0(&a18);
        OUTLINED_FUNCTION_20_5();
        v137();
        v138 = *(v133 + 16);
        v139 = OUTLINED_FUNCTION_46_0(&a13);
        v138(v139);
        v140 = sub_2685689E0();
        v141 = sub_268568DD0();
        if (OUTLINED_FUNCTION_13_3(v141))
        {
          v142 = OUTLINED_FUNCTION_4();
          v143 = OUTLINED_FUNCTION_51();
          v232 = v143;
          *v142 = 136315138;
          v144 = OUTLINED_FUNCTION_42_1(&v232);
          v138(v144);
          v145 = sub_268568B70();
          v147 = v146;
          OUTLINED_FUNCTION_6_16();
          sub_268569000();
          v148 = sub_2684EABEC(v145, v147, &v232);

          *(v142 + 4) = v148;
          OUTLINED_FUNCTION_52_0(&dword_2684CA000, v149, v150, "NotificationsFlowProvider makeFlowSearchResult | direct invocation: %s");
          __swift_destroy_boxed_opaque_existential_0(v143);
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_2();

          v151 = v229;
          v152 = v211;
        }

        else
        {

          OUTLINED_FUNCTION_6_16();
          sub_268569000();
          OUTLINED_FUNCTION_24_6();
          v152 = v92;
          v151 = v91 - 80;
        }

        v223(v152, v151);
        v153 = v214;
        sub_268520880();
      }

      else
      {
        if (v112 != v97)
        {
          v181 = OUTLINED_FUNCTION_47_0(&a11);
          v182 = v229;
          v221(v181, v220, v229);
          v183 = sub_2685689E0();
          v184 = sub_268568DD0();
          if (os_log_type_enabled(v183, v184))
          {
            v185 = OUTLINED_FUNCTION_4();
            v186 = OUTLINED_FUNCTION_51();
            *v185 = 136315138;
            v187 = v225;
            v231 = v225;
            v232 = v186;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283528, &qword_26856DBB0);
            v188 = sub_268568B70();
            v190 = sub_2684EABEC(v188, v189, &v232);

            *(v185 + 4) = v190;
            _os_log_impl(&dword_2684CA000, v183, v184, "NotificationsFlowProvider makeFlowSearchResult | unable to make flow with parse: %s, returning no flow", v185, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v186);
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_2();

            OUTLINED_FUNCTION_24_6();
            v223(v204, v182);
          }

          else
          {

            OUTLINED_FUNCTION_24_6();
            v223(v92, v182);
            v187 = v225;
          }

          sub_268567970();
          v102(v219, v187);
          goto LABEL_36;
        }

        (*(v226 + 96))(v110, v225);
        v161 = v202;
        v162 = *(v202 + 32);
        v163 = OUTLINED_FUNCTION_44_0();
        v117 = v203;
        v164(v163);
        OUTLINED_FUNCTION_47_0(&a12);
        OUTLINED_FUNCTION_20_5();
        v165();
        v166 = *(v161 + 16);
        v167 = OUTLINED_FUNCTION_46_0(&v233);
        v166(v167);
        v168 = sub_2685689E0();
        v169 = sub_268568DD0();
        if (OUTLINED_FUNCTION_13_3(v169))
        {
          v170 = OUTLINED_FUNCTION_4();
          v171 = OUTLINED_FUNCTION_51();
          v232 = v171;
          *v170 = 136315138;
          v172 = OUTLINED_FUNCTION_42_1(&v231);
          v166(v172);
          v173 = sub_268568B70();
          v175 = v174;
          OUTLINED_FUNCTION_6_16();
          sub_268569000();
          v176 = sub_2684EABEC(v173, v175, &v232);

          *(v170 + 4) = v176;
          OUTLINED_FUNCTION_52_0(&dword_2684CA000, v177, v178, "NotificationsFlowProvider makeFlowSearchResult | uso parse: %s");
          __swift_destroy_boxed_opaque_existential_0(v171);
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_2();

          v179 = v229;
          v180 = v205;
        }

        else
        {

          OUTLINED_FUNCTION_6_16();
          sub_268569000();
          OUTLINED_FUNCTION_24_6();
          v180 = v92;
          v179 = v91 - 80;
        }

        v223(v180, v179);
        v153 = v209;
        sub_26851FBC8(v209, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209);
      }
    }

    (v130)(v153, v117);
    goto LABEL_36;
  }

  v103 = v210;
  v104 = v229;
  v221(v210, v220, v229);
  v105 = sub_2685689E0();
  v106 = sub_268568DC0();
  if (OUTLINED_FUNCTION_13_3(v106))
  {
    v107 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v107);
    OUTLINED_FUNCTION_9_4(&dword_2684CA000, v108, v109, "NotificationsFlowProvider makeFlowSearchResult | device does not support read notifications");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_24_6();
  v223(v103, v104);
  sub_268520DC4();
LABEL_36:
  OUTLINED_FUNCTION_40();
}

void sub_26851F4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_41();
  a19 = v21;
  a20 = v22;
  v101 = v20;
  v24 = v23;
  v26 = v25;
  v27 = sub_2685689F0();
  v28 = OUTLINED_FUNCTION_1(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v35);
  v37 = v100 - v36;
  v38 = type metadata accessor for NotificationNLv3Intent();
  v39 = OUTLINED_FUNCTION_17_2(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5_5();
  v44 = v43 - v42;
  v45 = sub_268568560();
  OUTLINED_FUNCTION_17_2(v45);
  (*(v46 + 16))(v44, v24);
  if (qword_2802829B0 != -1)
  {
    swift_once();
  }

  sub_26852111C(&qword_280283548, type metadata accessor for NotificationNLv3Intent);
  OUTLINED_FUNCTION_44_0();
  sub_2685683A0();
  v47 = v104[0];
  v48 = v104[1];
  v49 = sub_26852BBB4();
  if (v48)
  {
    sub_2685687A0();
    OUTLINED_FUNCTION_31_5();
    swift_bridgeObjectRetain_n();
    v103 = sub_2684FF6C4(v47, v48);
  }

  else
  {
    v103 = 0;
  }

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_38(v27, qword_28028B348);
  v50 = *(v30 + 16);
  v100[6] = v51;
  v100[8] = v30 + 16;
  v100[7] = v50;
  v50(v37);

  v52 = sub_2685689E0();
  v53 = sub_268568DC0();

  v54 = os_log_type_enabled(v52, v53);
  v102 = v37;
  v100[5] = v47;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v100[1] = v26;
    v56 = v55;
    v57 = OUTLINED_FUNCTION_51();
    v104[0] = v57;
    *v56 = 136315394;
    if (v48)
    {
      v58 = v47;
    }

    else
    {
      v58 = 0;
    }

    v100[0] = v44;
    if (v48)
    {
      v59 = v48;
    }

    else
    {
      v59 = 0xE000000000000000;
    }

    v60 = sub_2684EABEC(v58, v59, v104);
    v44 = v100[0];

    *(v56 + 4) = v60;
    *(v56 + 12) = 1024;
    *(v56 + 14) = v49;
    _os_log_impl(&dword_2684CA000, v52, v53, "NotificationsFlowProvider getFlowSearchResult | returning user request - targetAppId: %s, isReadLatest: %{BOOL}d", v56, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v57);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  else
  {
  }

  v61 = *(v30 + 8);
  v62 = OUTLINED_FUNCTION_41_0();
  v61(v62);
  if ((sub_26852B4B8() & 1) != 0 || sub_26852BC4C())
  {
    if (sub_26852BF90())
    {
      v63 = OUTLINED_FUNCTION_4_17(&a10);
      v64(v63);
      v65 = sub_2685689E0();
      v66 = sub_268568DC0();
      if (OUTLINED_FUNCTION_13_3(v66))
      {
        v67 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_26_0(v67);
        OUTLINED_FUNCTION_9_4(&dword_2684CA000, v68, v69, "NotificationsFlowProvider getFlowSearchResult | read without entity, e.g., 'read it'");
        OUTLINED_FUNCTION_28_3();
        OUTLINED_FUNCTION_2();
      }

      v70 = OUTLINED_FUNCTION_41_0();
      v61(v70);
      OUTLINED_FUNCTION_19_6(&a16);
      type metadata accessor for RNAuthenticationFlow();
      OUTLINED_FUNCTION_7_18();
      OUTLINED_FUNCTION_31_5();

      v71 = OUTLINED_FUNCTION_23_5();
      v77 = 1;
    }

    else
    {
      v78 = OUTLINED_FUNCTION_4_17(&a11);
      v79(v78);
      v80 = sub_2685689E0();
      v81 = sub_268568DC0();
      if (OUTLINED_FUNCTION_13_3(v81))
      {
        v82 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_26_0(v82);
        OUTLINED_FUNCTION_9_4(&dword_2684CA000, v83, v84, "NotificationsFlowProvider getFlowSearchResult | read all notifications");
        OUTLINED_FUNCTION_28_3();
        OUTLINED_FUNCTION_2();
      }

      v85 = OUTLINED_FUNCTION_41_0();
      v61(v85);
      OUTLINED_FUNCTION_19_6(&a16);
      type metadata accessor for RNAuthenticationFlow();
      OUTLINED_FUNCTION_7_18();
      OUTLINED_FUNCTION_31_5();

      v71 = OUTLINED_FUNCTION_23_5();
      v77 = 0;
    }

    v86 = sub_2684EC724(v71, v72, v73, v74, v75, v77, v76);
    OUTLINED_FUNCTION_39_1(v86);
    OUTLINED_FUNCTION_15_7();
    sub_26852111C(v87, v88);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_27_4();

    sub_268567980();
  }

  else if (sub_26852C0E8())
  {
    v89 = OUTLINED_FUNCTION_4_17(&a9);
    v90(v89);
    v91 = sub_2685689E0();
    v92 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_3(v92))
    {
      v93 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v93);
      OUTLINED_FUNCTION_9_4(&dword_2684CA000, v94, v95, "NotificationsFlowProvider getFlowSearchResult | clear notifications");
      OUTLINED_FUNCTION_28_3();
      OUTLINED_FUNCTION_2();
    }

    v96 = OUTLINED_FUNCTION_41_0();
    v61(v96);
    OUTLINED_FUNCTION_19_6(&a16);
    type metadata accessor for UnsupportedFlow();
    swift_allocObject();
    v97 = UnsupportedFlow.init(sharedObjects:intent:)(v104, 0);
    OUTLINED_FUNCTION_39_1(v97);
    OUTLINED_FUNCTION_16_10();
    sub_26852111C(v98, v99);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_27_4();

    sub_268567980();
  }

  else
  {
    sub_268567970();
  }

  sub_268521164(v44, type metadata accessor for NotificationNLv3Intent);
  OUTLINED_FUNCTION_40();
}

void sub_26851FBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_41();
  a19 = v21;
  a20 = v22;
  v146 = v20;
  v24 = v23;
  v147 = v25;
  v153 = sub_2685689F0();
  v26 = OUTLINED_FUNCTION_1(v153);
  v152 = v27;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v32 = &v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_25_0();
  v39 = v38;
  OUTLINED_FUNCTION_19_1();
  v40 = sub_2685680B0();
  v41 = OUTLINED_FUNCTION_1(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_5();
  v48 = v47 - v46;
  v49 = type metadata accessor for NotificationNLv4Intent();
  v50 = v49 - 8;
  v51 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_5_5();
  v54 = v53 - v52;
  v55 = *(v43 + 16);
  v55(v48, v24, v40);
  v56 = OUTLINED_FUNCTION_37_2();
  (v55)(v56);
  v57 = v54;
  sub_268568550();
  v58 = sub_26850CCFC();
  v60 = *(v43 + 8);
  v59 = v43 + 8;
  v60(v48, v40);
  v61 = *(v50 + 28);
  v154 = v57;
  *(v57 + v61) = v58;
  if (v58)
  {
    v59 = 1684104562;
    if (sub_268568540() == 1684104562 && v62 == 0xE400000000000000)
    {

      goto LABEL_19;
    }

    v64 = sub_2685691C0();

    if (v64)
    {
      goto LABEL_19;
    }
  }

  OUTLINED_FUNCTION_35_1();
  if (v156)
  {
    sub_2685684E0();
    if (OUTLINED_FUNCTION_9_14())
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_2684EB7C8(v155, &qword_280282BE0, &unk_26856D8C0);
  }

  OUTLINED_FUNCTION_35_1();
  if (v156)
  {
    sub_2685683D0();
    if (OUTLINED_FUNCTION_9_14())
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_2684EB7C8(v155, &qword_280282BE0, &unk_26856D8C0);
  }

  OUTLINED_FUNCTION_35_1();
  if (v156)
  {
    sub_268568510();
    if (OUTLINED_FUNCTION_9_14())
    {
LABEL_18:

      goto LABEL_19;
    }
  }

  else
  {
    sub_2684EB7C8(v155, &qword_280282BE0, &unk_26856D8C0);
  }

  if (!v58 || (v124 = sub_268568540(), OUTLINED_FUNCTION_34_2(v124, v125), v126 = OUTLINED_FUNCTION_50_0(), , (v126 & 1) == 0))
  {
    if ((sub_26856563C() & 1) == 0)
    {
      OUTLINED_FUNCTION_35_1();
      if (v156)
      {
        sub_2685684D0();
        OUTLINED_FUNCTION_9_14();
        OUTLINED_FUNCTION_49_0();
        if (v127)
        {

          if (qword_280282960 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_38(v59, qword_28028B348);
          v128 = v151;
          (*(v58 + 16))(v151);
          v129 = sub_2685689E0();
          v130 = sub_268568DC0();
          if (OUTLINED_FUNCTION_13_3(v130))
          {
            v131 = OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_26_0(v131);
            OUTLINED_FUNCTION_9_4(&dword_2684CA000, v132, v133, "NotificationsFlowProvider getFlowSearchResult | clear notifications");
            OUTLINED_FUNCTION_12_3();
          }

          (*(v58 + 8))(v128, v59);
          OUTLINED_FUNCTION_19_6(&a10);
          v134 = type metadata accessor for UnsupportedFlow();
          swift_allocObject();
          v135 = UnsupportedFlow.init(sharedObjects:intent:)(v155, 0);
          OUTLINED_FUNCTION_39_1(v135);
          OUTLINED_FUNCTION_16_10();
          sub_26852111C(v136, v137);
          OUTLINED_FUNCTION_26_4();
          OUTLINED_FUNCTION_27_4();

          v155[0] = v134;
          sub_2684D6168();
          sub_2685678E0();
          OUTLINED_FUNCTION_40_1();
          sub_268567980();
          goto LABEL_52;
        }
      }

      else
      {
        sub_2684EB7C8(v155, &qword_280282BE0, &unk_26856D8C0);
        OUTLINED_FUNCTION_49_0();
      }

      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_38(v59, qword_28028B348);
      (*(v58 + 16))(v32);
      v138 = sub_2685689E0();
      v139 = sub_268568DC0();
      if (OUTLINED_FUNCTION_13_3(v139))
      {
        v140 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_26_0(v140);
        OUTLINED_FUNCTION_9_4(&dword_2684CA000, v141, v142, "NotificationsFlowProvider getFlowSearchResult | unable to create flow from parse, returning no flow");
        OUTLINED_FUNCTION_12_3();
      }

      (*(v58 + 8))(v32, v59);
      OUTLINED_FUNCTION_40_1();
      sub_268567970();
      goto LABEL_56;
    }
  }

LABEL_19:
  v65 = sub_268565A50();
  v67 = v66;
  v149 = sub_268565D84();
  if (v58)
  {
    v68 = sub_268568540();
    OUTLINED_FUNCTION_34_2(v68, v69);
    v148 = OUTLINED_FUNCTION_50_0();
  }

  else
  {
    v148 = 0;
  }

  v70 = v153;
  v71 = v152;
  v72 = v39;
  v150 = v65;
  if (v67)
  {
    sub_2685687A0();

    v73 = sub_2684FF6C4(v65, v67);
  }

  else
  {
    v73 = 0;
  }

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_38(v70, qword_28028B348);
  v74 = v71 + 16;
  v75 = *(v71 + 16);
  v151 = v76;
  v75(v39);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v77 = sub_2685689E0();
  v78 = sub_268568DD0();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v145 = v71 + 16;
    v80 = v79;
    v81 = OUTLINED_FUNCTION_51();
    v155[0] = v81;
    *v80 = 136315650;
    v143 = v72;
    v82 = v73;
    if (v67)
    {
      v83 = v150;
    }

    else
    {
      v83 = 7104878;
    }

    v84 = v75;
    if (v67)
    {
      v85 = v67;
    }

    else
    {
      v85 = 0xE300000000000000;
    }

    v86 = sub_2684EABEC(v83, v85, v155);
    v75 = v84;
    v70 = v153;

    *(v80 + 4) = v86;
    *(v80 + 12) = 1024;

    *(v80 + 14) = v149;

    *(v80 + 18) = 1024;
    v73 = v82;

    *(v80 + 20) = v148 & 1;

    _os_log_impl(&dword_2684CA000, v77, v78, "NotificationsFlowProvider getFlowSearchResult UserRequest targetAppId: %s, isReadLatest: %{BOOL}d, isCatchUp: %{BOOL}d", v80, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v81);
    v87 = v152;
    OUTLINED_FUNCTION_2();
    v74 = v145;
    OUTLINED_FUNCTION_2();

    v88 = *(v87 + 8);
    v88(v143, v70);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v88 = *(v71 + 8);
    v88(v72, v70);
  }

  OUTLINED_FUNCTION_35_1();
  if (!v156)
  {
    sub_2684EB7C8(v155, &qword_280282BE0, &unk_26856D8C0);
    goto LABEL_48;
  }

  sub_2685683D0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_48:
    v108 = OUTLINED_FUNCTION_18_6();
    v75(v108);
    v95 = sub_2685689E0();
    v109 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_3(v109))
    {
      v110 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v110);
      OUTLINED_FUNCTION_9_4(&dword_2684CA000, v111, v112, "NotificationsFlowProvider getFlowSearchResult | read all notifications");
      OUTLINED_FUNCTION_12_3();
    }

    v113 = OUTLINED_FUNCTION_37_2();
    (v88)(v113);
    OUTLINED_FUNCTION_19_6(&a10);
    type metadata accessor for RNAuthenticationFlow();
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_54_0();

    v101 = OUTLINED_FUNCTION_22_3();
    v107 = 0;
    goto LABEL_51;
  }

  v153 = v73;

  v89 = v144;
  v145 = v74;
  (v75)(v144, v151, v70);
  v90 = sub_2685689E0();
  v91 = sub_268568DC0();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = OUTLINED_FUNCTION_16_0();
    *v92 = 0;
    _os_log_impl(&dword_2684CA000, v90, v91, "NotificationsFlowProvider getFlowSearchResult | read without entity, e.g., 'read it'", v92, 2u);
    OUTLINED_FUNCTION_2();
  }

  v88(v89, v70);
  if (sub_26856620C())
  {
    if (qword_280282950 != -1)
    {
      swift_once();
    }

    v93 = sub_268568960();

    if (v93)
    {
      v94 = OUTLINED_FUNCTION_18_6();
      v75(v94);
      v95 = sub_2685689E0();
      v96 = sub_268568DC0();
      if (OUTLINED_FUNCTION_13_3(v96))
      {
        v97 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_26_0(v97);
        OUTLINED_FUNCTION_9_4(&dword_2684CA000, v98, v99, "NotificationsFlowProvider getFlowSearchResult | entity has a reference");
        OUTLINED_FUNCTION_12_3();
      }

      v100 = OUTLINED_FUNCTION_37_2();
      (v88)(v100);
      OUTLINED_FUNCTION_19_6(&a10);
      type metadata accessor for RNAuthenticationFlow();
      OUTLINED_FUNCTION_7_18();
      OUTLINED_FUNCTION_32_3();
      OUTLINED_FUNCTION_54_0();
      OUTLINED_FUNCTION_47_0(&a17);

      v101 = OUTLINED_FUNCTION_22_3();
      v107 = 1;
LABEL_51:
      v114 = sub_2684EC724(v101, v102, v103, v104, v105, v107, v106);
      OUTLINED_FUNCTION_39_1(v114);
      OUTLINED_FUNCTION_15_7();
      sub_26852111C(v115, v116);
      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_27_4();

      v155[0] = v95;
      sub_2684D6168();
      sub_2685678E0();
      OUTLINED_FUNCTION_40_1();
      sub_268567980();

LABEL_52:

      goto LABEL_56;
    }
  }

  v117 = OUTLINED_FUNCTION_18_6();
  v75(v117);
  v118 = sub_2685689E0();
  v119 = sub_268568DC0();
  if (OUTLINED_FUNCTION_13_3(v119))
  {
    v120 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v120);
    OUTLINED_FUNCTION_9_4(&dword_2684CA000, v121, v122, "NotificationsFlowProvider getFlowSearchResult | entity does not have a reference, returning no flow");
    OUTLINED_FUNCTION_12_3();
  }

  v123 = OUTLINED_FUNCTION_37_2();
  (v88)(v123);
  OUTLINED_FUNCTION_40_1();
  sub_268567970();

LABEL_56:
  sub_268521164(v154, type metadata accessor for NotificationNLv4Intent);
  OUTLINED_FUNCTION_40();
}

void sub_268520880()
{
  OUTLINED_FUNCTION_41();
  v58 = v0;
  v2 = v1;
  v60 = v3;
  v59 = sub_2685689F0();
  v4 = OUTLINED_FUNCTION_1(v59);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v56 - v12;
  v14 = sub_268568070();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_5();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283540, "Ƨ");
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v56 - v25;
  v27 = type metadata accessor for ANDirectInvocation();
  v28 = OUTLINED_FUNCTION_17_2(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_27();
  v57 = v31;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v32);
  v34 = &v56 - v33;
  (*(v17 + 16))(v22, v2, v14);
  ANDirectInvocation.init(directInvocation:)(v22, v26);
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_2684EB7C8(v26, &qword_280283540, "Ƨ");
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v35 = v59;
    OUTLINED_FUNCTION_38(v59, qword_28028B348);
    (*(v6 + 16))(v11);
    v36 = sub_2685689E0();
    v37 = sub_268568DC0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_16_0();
      *v38 = 0;
      _os_log_impl(&dword_2684CA000, v36, v37, "NotificationsFlowProvider getFlowSearchResult | announceNotificationsDirectInvocation is nil, returning no flow", v38, 2u);
      OUTLINED_FUNCTION_2();
    }

    (*(v6 + 8))(v11, v35);
    sub_268567970();
  }

  else
  {
    sub_26850364C(v26, v34);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v39 = v59;
    OUTLINED_FUNCTION_38(v59, qword_28028B348);
    (*(v6 + 16))(v13);
    v40 = sub_2685689E0();
    v41 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_3(v41))
    {
      v42 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v42);
      OUTLINED_FUNCTION_9_4(&dword_2684CA000, v43, v44, "NotificationsFlowProvider getFlowSearchResult | returning AnnounceNotificationFlow");
      OUTLINED_FUNCTION_12_3();
    }

    (*(v6 + 8))(v13, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_26856B420;
    v46 = v57;
    sub_2685210B8(v34, v57);
    v47 = type metadata accessor for AnnounceNotification();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    *(v45 + 32) = sub_26854188C(v46);
    v50 = *&v34[*(v27 + 44)];
    sub_2685685A0();
    v51 = sub_268568590();
    type metadata accessor for ReadingHistory();
    v52 = swift_allocObject();
    *(v52 + 16) = v51;
    type metadata accessor for ANStateManager();
    swift_allocObject();
    v53 = OUTLINED_FUNCTION_31_5();
    v54 = sub_268503A90(v53, v50, v52);
    sub_2684CC878(v58 + 16, v61);
    type metadata accessor for ANFlow();
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    memcpy((v55 + 24), v61, 0x80uLL);
    v61[0] = v55;
    sub_26852111C(&qword_280282C10, type metadata accessor for ANFlow);

    sub_2685678E0();
    OUTLINED_FUNCTION_27_4();

    sub_268567980();

    sub_268521164(v34, type metadata accessor for ANDirectInvocation);
  }

  OUTLINED_FUNCTION_40();
}

uint64_t sub_268520DC4()
{
  v0 = sub_2685689F0();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_5();
  v8 = v7 - v6;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_38(v0, qword_28028B348);
  (*(v3 + 16))(v8);
  v9 = sub_2685689E0();
  v10 = sub_268568DC0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_16_0();
    *v11 = 0;
    _os_log_impl(&dword_2684CA000, v9, v10, "NotificationsFlowProvider getFlowSearchResultForUnsupportedDevice | returning RNReadNotificationsNotSupportedForDeviceFlow", v11, 2u);
    OUTLINED_FUNCTION_2();
  }

  (*(v3 + 8))(v8, v0);
  type metadata accessor for RNReadNotificationsNotSupportedForDevicePatternFlow();
  swift_allocObject();
  sub_26852111C(&qword_280283538, type metadata accessor for RNReadNotificationsNotSupportedForDevicePatternFlow);
  sub_2685678E0();
  OUTLINED_FUNCTION_31_5();

  sub_268567980();
}

uint64_t sub_268520FA8()
{
  v1 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
  OUTLINED_FUNCTION_29_3();
  if (sub_268567AC0())
  {
    return 1;
  }

  v2 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
  OUTLINED_FUNCTION_29_3();
  if (sub_268567AA0())
  {
    return 1;
  }

  v4 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
  OUTLINED_FUNCTION_29_3();
  return sub_268567AD0() & 1;
}

uint64_t NotificationsFlowProvider.deinit()
{
  sub_2684CC8D4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  return v0;
}

uint64_t NotificationsFlowProvider.__deallocating_deinit()
{
  sub_2684CC8D4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_2685210B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ANDirectInvocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26852111C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268521164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_17@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 304);
  v4 = *(v1 - 288);
  v5 = *(v1 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_18()
{
  *(v0 - 256) = 0u;
  *(v0 - 240) = 0u;
  *(v0 - 224) = 0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9_14()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_18_6()
{
  result = v0;
  v3 = *(v1 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_6@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256) + 16;

  return sub_2684CC878(v3, v1 - 216);
}

void OUTLINED_FUNCTION_20_5()
{
  v1 = *(v0 - 192);
  v2 = *(v0 - 184);
  v3 = *(v0 - 120);
  v4 = *(v0 - 176);
}

uint64_t OUTLINED_FUNCTION_22_3()
{
  result = v0 - 216;
  v2 = *(v0 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_5()
{
  result = v0 - 216;
  v2 = *(v0 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_4()
{

  return sub_2685678E0();
}

unint64_t OUTLINED_FUNCTION_34_2(uint64_t a1, uint64_t a2)
{
  *(v3 - 216) = a1;
  *(v3 - 208) = a2;
  *(v3 - 256) = v2;
  *(v3 - 248) = 0xE900000000000070;

  return sub_2684D166C();
}

uint64_t OUTLINED_FUNCTION_35_1()
{

  return sub_2685683B0();
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return sub_268568F20();
}

void OUTLINED_FUNCTION_52_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_54_0()
{
  v3 = v0 & 0xFFFFFFFE | *(v1 - 300) & 1;
}

uint64_t UnsupportedFlow.__allocating_init(sharedObjects:intent:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  UnsupportedFlow.init(sharedObjects:intent:)(a1, a2 & 1);
  return v4;
}

uint64_t UnsupportedFlow.init(sharedObjects:intent:)(uint64_t a1, char a2)
{
  sub_2684D57FC(a1 + 80, v2 + 16);
  sub_2684D57FC(a1 + 40, v6);
  sub_2684CC8D4(a1);
  sub_2684D8314(v6, v2 + 56);
  *(v2 + 96) = a2 & 1;
  return v2;
}

uint64_t UnsupportedFlow.execute()(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x2822009F8](sub_2685215C8, 0, 0);
}

uint64_t sub_2685215C8()
{
  v1 = v0[12];
  sub_2685685F0();
  sub_2685685E0();
  v0[13] = sub_2685685B0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BE8, &qword_26856A950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26856A540;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 64) = sub_268568610();
  __swift_allocate_boxed_opaque_existential_0((inited + 40));
  sub_268568600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BF0, &qword_26856AD20);
  v3 = sub_268568AD0();
  v0[14] = v3;
  v4 = swift_task_alloc();
  v0[15] = v4;
  v4[2] = 0xD000000000000024;
  v4[3] = 0x8000000268573180;
  v4[4] = v1;
  v5 = *(MEMORY[0x277D61E18] + 4);
  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = sub_268568950();
  v8 = sub_268567C50();
  v9 = sub_268522738(&qword_280282BF8, 255, MEMORY[0x277D55F70]);
  *v6 = v0;
  v6[1] = sub_2685217DC;
  v10 = v0[11];

  return MEMORY[0x2821C8828](v10, v3, &unk_26856DC70, v4, v7, v8, v9);
}

void sub_2685217DC()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = v2[16];
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    v7 = v3[14];
    v8 = v3[15];
    v9 = v3[13];

    v10 = *(v5 + 8);

    v10();
  }
}

uint64_t sub_26852193C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  v5 = *(*(sub_268567B10() - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v6 = sub_268567F20();
  v4[33] = v6;
  v7 = *(v6 - 8);
  v4[34] = v7;
  v8 = *(v7 + 64) + 15;
  v4[35] = swift_task_alloc();
  v9 = sub_2685689F0();
  v4[36] = v9;
  v10 = *(v9 - 8);
  v4[37] = v10;
  v11 = *(v10 + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v12 = sub_2685688F0();
  v4[40] = v12;
  v13 = *(v12 - 8);
  v4[41] = v13;
  v14 = *(v13 + 64) + 15;
  v4[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268521AF0, 0, 0);
}

uint64_t sub_268521AF0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 248);
  sub_2685688D0();
  type metadata accessor for UnsupportedFlow();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  *(v0 + 344) = v4;
  v5 = sub_268568AD0();
  *(v0 + 352) = v5;
  sub_2685686F0();
  sub_2684D57FC(v2 + 56, v0 + 16);
  v6 = sub_2685686B0();
  *(v0 + 360) = v6;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  sub_2685688E0();
  v7 = *(MEMORY[0x277D55CE0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 368) = v8;
  *v8 = v0;
  v8[1] = sub_268521C6C;
  v9 = *(v0 + 336);
  v10 = *(v0 + 232);
  v11 = *(v0 + 240);

  return MEMORY[0x2821B8050](v4, v10, v11, v5, v6, v0 + 56, v9);
}

uint64_t sub_268521C6C()
{
  OUTLINED_FUNCTION_32();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = v2[46];
  v6 = *v1;
  v3[47] = v7;

  v8 = v2[45];
  v9 = v2[44];
  v10 = v2[43];
  v11 = v2[42];
  v12 = v2[41];
  v13 = v2[40];
  if (v0)
  {
  }

  (*(v12 + 8))(v11, v13);
  sub_268522FE0((v3 + 7));
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_268521E68()
{
  v31 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[30];
  __swift_project_value_buffer(v0[36], qword_28028B348);
  v4 = OUTLINED_FUNCTION_9_15();
  v5(v4);

  v6 = sub_2685689E0();
  LOBYTE(v2) = sub_268568DC0();

  v7 = os_log_type_enabled(v6, v2);
  v8 = v0[39];
  v9 = v0[36];
  v10 = v0[37];
  if (v7)
  {
    v12 = v0[29];
    v11 = v0[30];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2684EABEC(v12, v11, &v30);
    OUTLINED_FUNCTION_14_4(&dword_2684CA000, v15, v16, "UnsupportedFlow execute catId: %s | preparing to read");
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  (*(v10 + 8))(v8, v9);
  v17 = v0[47];
  v18 = v0[35];
  v19 = v0[32];
  sub_268567AE0();
  sub_268567ED0();
  v20 = sub_268567D00();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v0[48] = sub_268567CF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
  v23 = swift_allocObject();
  v0[49] = v23;
  *(v23 + 16) = xmmword_26856B420;
  *(v23 + 32) = v17;
  v24 = *(MEMORY[0x277D5BD50] + 4);
  v29 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v25 = v17;
  v26 = swift_task_alloc();
  v0[50] = v26;
  *v26 = v0;
  v26[1] = sub_2685220E8;
  v27 = v0[35];

  return v29(v0 + 12, v23, v27);
}

uint64_t sub_2685220E8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v2 = v1[50];
  v3 = v1[49];
  v4 = v1[48];
  v5 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;

  return MEMORY[0x2822009F8](sub_26852220C, 0, 0);
}

uint64_t sub_26852220C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  v13 = *(v12 + 376);
  v15 = *(v12 + 272);
  v14 = *(v12 + 280);
  v16 = *(v12 + 264);
  v17 = *(v12 + 224);
  sub_2684D57FC(*(v12 + 248) + 16, v12 + 136);
  sub_2684D57FC(v12 + 96, v12 + 176);
  v18 = swift_allocObject();
  sub_2684D8314((v12 + 176), v18 + 16);
  v19 = sub_268567730();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_268567720();
  sub_268522780();
  *(v12 + 216) = v22;
  sub_268567C20();

  __swift_destroy_boxed_opaque_existential_0((v12 + 96));
  (*(v15 + 8))(v14, v16);

  OUTLINED_FUNCTION_13_11();

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_33();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_268522370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v24 = v20[37];
  v23 = v20[38];
  v25 = v20[30];
  __swift_project_value_buffer(v20[36], qword_28028B348);
  v26 = OUTLINED_FUNCTION_9_15();
  v27(v26);

  v28 = sub_2685689E0();
  LOBYTE(v24) = sub_268568DC0();

  v29 = os_log_type_enabled(v28, v24);
  v31 = v20[37];
  v30 = v20[38];
  v32 = v20[36];
  if (v29)
  {
    v34 = v20[29];
    v33 = v20[30];
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    a9 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_2684EABEC(v34, v33, &a9);
    OUTLINED_FUNCTION_14_4(&dword_2684CA000, v37, v38, "UnsupportedFlow execute catId: %s | unable to obtain dialog execution result");
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  (*(v31 + 8))(v30, v32);
  v39 = v20[31];
  v40 = v20[28];
  sub_268523048();
  v41 = swift_allocError();
  *v42 = 0xD000000000000028;
  v42[1] = 0x8000000268573210;
  sub_2685229B4(v41);

  sub_268567C40();
  OUTLINED_FUNCTION_13_11();

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_33();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_26852255C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2684D1F44;

  return sub_26852193C(a1, v4, v5, v6);
}

uint64_t sub_268522610(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_268522630, 0, 0);
}

uint64_t sub_268522630()
{
  OUTLINED_FUNCTION_5();
  sub_2684D57FC(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_9_10();

  return v1();
}

uint64_t UnsupportedFlow.execute(completion:)()
{
  type metadata accessor for UnsupportedFlow();
  sub_268522738(&qword_280283550, v0, type metadata accessor for UnsupportedFlow);
  return sub_268567900();
}

uint64_t sub_268522738(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_268522780()
{
  v1 = sub_2685679B0();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_5();
  v9 = v8 - v7;
  v10 = sub_268567B60();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_5();
  v16 = v15 - v14;
  v18 = (v17 + 104);
  v19 = (v4 + 104);
  if (*(v0 + 96))
  {
    sub_268567990();
    OUTLINED_FUNCTION_5_16();
    (*v18)(v16, *MEMORY[0x277D5BC00], v10);
    (*v19)(v9, *MEMORY[0x277D5B938], v1);
    OUTLINED_FUNCTION_2_15();
    v20 = 1;
    v21 = v16;
    v22 = v9;
    v23 = 1;
  }

  else
  {
    sub_268567990();
    OUTLINED_FUNCTION_5_16();
    (*v18)(v16, *MEMORY[0x277D5BC00], v10);
    (*v19)(v9, *MEMORY[0x277D5B930], v1);
    OUTLINED_FUNCTION_2_15();
    v20 = 0;
    v21 = v16;
    v22 = v9;
    v23 = 8;
  }

  sub_2684EBB74(v20, 9, v21, v22, v23, 0, 0, 0, v25, v26[0]);
  OUTLINED_FUNCTION_10_8();
  sub_2685679A0();

  return __swift_destroy_boxed_opaque_existential_0(v26);
}

uint64_t sub_2685229B4(void *a1)
{
  v3 = sub_2685679B0();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_5();
  v11 = v10 - v9;
  v12 = sub_268567B60();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_5();
  v18 = v17 - v16;
  v20 = (v19 + 104);
  v21 = (v6 + 104);
  if (*(v1 + 96))
  {
    sub_268567990();
    v29 = v31;
    OUTLINED_FUNCTION_5_16();
    (*v20)(v18, *MEMORY[0x277D5BC00], v12);
    (*v21)(v11, *MEMORY[0x277D5B8D0], v3);
    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    sub_268568B70();
    OUTLINED_FUNCTION_2_15();
    v25 = 1;
  }

  else
  {
    sub_268567990();
    v29 = v31;
    OUTLINED_FUNCTION_5_16();
    (*v20)(v18, *MEMORY[0x277D5BC00], v12);
    (*v21)(v11, *MEMORY[0x277D5B8D0], v3);
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    sub_268568B70();
    OUTLINED_FUNCTION_2_15();
    v25 = 0;
  }

  sub_2684EBB74(v25, 9, v18, v11, 8, v23, v24, 0, v28, v29);
  OUTLINED_FUNCTION_10_8();
  sub_2685679A0();

  return __swift_destroy_boxed_opaque_existential_0(v30);
}

uint64_t UnsupportedFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  return v0;
}

uint64_t UnsupportedFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 97, 7);
}

uint64_t sub_268522CD0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2684D1820;

  return UnsupportedFlow.execute()(a1);
}

uint64_t sub_268522D6C()
{
  type metadata accessor for UnsupportedFlow();

  return sub_268567950();
}

uint64_t UnsupportedIntent.hashValue.getter(char a1)
{
  sub_268569260();
  MEMORY[0x26D61C3F0](a1 & 1);
  return sub_268569280();
}

uint64_t sub_268522E40()
{
  v1 = *v0;
  sub_268569260();
  UnsupportedIntent.hash(into:)(v3, v1);
  return sub_268569280();
}

unint64_t sub_268522E88()
{
  result = qword_280283558;
  if (!qword_280283558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283558);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UnsupportedIntent(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268522FA8);
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

uint64_t sub_268522FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB0, &unk_26856B440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268523048()
{
  result = qword_280283560;
  if (!qword_280283560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283560);
  }

  return result;
}

uint64_t sub_26852309C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2685230D4()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2684D1820;

  return sub_268522610(v3, v0 + 16);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_268523178(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2685231B8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_5_16()
{
  __swift_project_boxed_opaque_existential_1((v1 - 120), v0);

  return sub_268567A20();
}

uint64_t OUTLINED_FUNCTION_13_11()
{
  v2 = v0[42];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[35];
  v6 = v0[32];
}

void OUTLINED_FUNCTION_14_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_2685232B4()
{
  v1 = v0;
  v2 = type metadata accessor for EmojiFormatter();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(MEMORY[0x28223BE20](v2 - 8) + 28);
  sub_268567630();
  v7 = sub_268568B10();

  v8 = CEMCreateEmojiLocaleData();

  v9 = v1[1];
  if (v9)
  {
    v44 = *v1;
    v10 = sub_268568B10();
    Length = CFStringGetLength(v10);
    v11 = swift_allocObject();
    v46 = v8;
    v12 = v11;
    *(v11 + 16) = MEMORY[0x277D84F90];
    v42 = v11 + 16;
    v13 = swift_allocObject();
    v43 = v9;
    *(v13 + 16) = 0;
    v14 = v13 + 16;
    sub_268524350(v1, &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v16 = (v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    sub_2685244D8(v5, v19 + v15);
    *(v19 + v16) = v10;
    *(v19 + v17) = v13;
    *(v19 + v18) = v12;
    aBlock[4] = sub_26852453C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26852409C;
    aBlock[3] = &block_descriptor;
    v20 = _Block_copy(aBlock);
    v21 = v10;
    v40 = v13;

    v41 = v12;

    v22 = Length;
    CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
    _Block_release(v20);

    swift_beginAccess();
    if (__OFSUB__(v22, *(v13 + 16)))
    {
      __break(1u);
    }

    else
    {
      v14 = v43;
      v18 = v44;
      v47 = v44;
      v48 = v43;
      if (qword_280282978 == -1)
      {
        goto LABEL_4;
      }
    }

    swift_once();
LABEL_4:
    v23 = sub_268567450();
    __swift_project_value_buffer(v23, qword_28028B3E0);
    sub_2684D166C();
    v47 = sub_268568ED0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282ED0, &qword_26856EB00);
    sub_2684F7A60();
    v24 = sub_268568AF0();
    v26 = v25;

    v47 = v24;
    v48 = v26;
    if (qword_280282980 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v23, qword_28028B3F8);
    sub_268568F00();
    v28 = v27;

    if ((v28 & 1) != 0 && !sub_2684D61BC(v18, v14))
    {
      v32 = OUTLINED_FUNCTION_4_18();
      v30 = OUTLINED_FUNCTION_5_17(v32);

      v31 = v42;
      if (v30)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v29 = OUTLINED_FUNCTION_4_18();
      v30 = OUTLINED_FUNCTION_5_17(v29);

      if (v30)
      {
        CFStringTrimWhitespace(v30);
        v31 = v42;
LABEL_14:
        if (CFStringGetLength(v30))
        {
          v33 = sub_268568B20();
          v35 = v34;
          swift_beginAccess();
          sub_268524144(sub_26854BA6C);
          v36 = *(*v31 + 16);
          sub_2685241D0(v36, sub_26854BA6C);
          v37 = *v31;
          *(v37 + 16) = v36 + 1;
          v38 = v37 + 32 * v36;
          *(v38 + 32) = v33;
          *(v38 + 40) = v35;
          *(v38 + 48) = 0;
          *(v38 + 56) = 0;
          *v31 = v37;
          swift_endAccess();
        }

        swift_beginAccess();
        v39 = *(v41 + 16);

        if (v46)
        {
          swift_unknownObjectRelease();
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v8)
  {
    swift_unknownObjectRelease();
  }
}

void sub_2685237C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = (a1 + 56);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = *(v2 - 3);
    v4 = *(v2 - 2);
    v6 = *(v2 - 1);
    v7 = *v2;
    v8 = *(v3 + 16);
    if (!v8)
    {
      OUTLINED_FUNCTION_1_16();
      sub_2685242AC();
LABEL_25:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_2_16();
        v3 = v30;
      }

      v26 = *(v3 + 16);
      v27 = v26 + 1;
      if (v26 < *(v3 + 24) >> 1)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    if (!*v2 || (v9 = v3 + 32 * v8, (*(v9 + 24) & 1) == 0))
    {
      v28 = *(v2 - 2);

      goto LABEL_25;
    }

    v36 = *(v9 + 8);
    v10 = *(v9 + 16);
    v38 = v10;
    v39 = *v9;
    v11 = v34 + *(type metadata accessor for EmojiFormatter() + 20);
    sub_268567630();

    OUTLINED_FUNCTION_1_16();
    sub_2685242AC();
    sub_2685242AC();
    v12 = sub_268568B10();

    v13 = CEMCreateEmojiLocaleData();

    v37 = v5;
    v14 = sub_268568B10();
    v35 = CEMEmojiTokenCreateWithString();

    v15 = sub_268568B10();
    sub_2685242B4();
    v16 = CEMEmojiTokenCreateWithString();

    v17 = CEMEmojiTokensAreEquivalent();
    if (v13)
    {
      swift_unknownObjectRelease();
    }

    if (v35)
    {
      swift_unknownObjectRelease();
    }

    if (v16)
    {
      swift_unknownObjectRelease();
    }

    v5 = v37;
    OUTLINED_FUNCTION_1_16();
    sub_2685242B4();
    if (!v17)
    {
      goto LABEL_25;
    }

    if (*(v3 + 16))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268524248(v3);
        v3 = v33;
      }

      v18 = *(v3 + 16);
      if (!v18)
      {
        goto LABEL_34;
      }

      v19 = v18 - 1;
      v20 = v3 + 32 * v19;
      v21 = *(v20 + 32);
      v22 = *(v20 + 40);
      v23 = *(v20 + 48);
      v24 = *(v20 + 56);
      *(v3 + 16) = v19;
      sub_2685242B4();
    }

    v25 = __OFADD__(v6, v38);
    v6 += v38;
    if (v25)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_16();
      v3 = v32;
    }

    v26 = *(v3 + 16);
    v27 = v26 + 1;
    if (v26 >= *(v3 + 24) >> 1)
    {
      v7 = 1;
LABEL_30:
      sub_26854BA6C();
      v3 = v31;
      goto LABEL_28;
    }

    v7 = 1;
LABEL_28:
    *(v3 + 16) = v27;
    v29 = v3 + 32 * v26;
    *(v29 + 32) = v5;
    *(v29 + 40) = v4;
    *(v29 + 48) = v6;
    *(v29 + 56) = v7;
    v2 += 32;
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_268523AA8(uint64_t a1)
{
  v38 = MEMORY[0x277D84F90];
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_36:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282ED0, &qword_26856EB00);
    sub_2684F7A60();
    sub_268568AF0();

    return;
  }

  v31 = 0;
  v2 = 0;
  v3 = a1 + 56;
  v34 = *(a1 + 16);
  v30 = a1 + 56;
  while (2)
  {
    v4 = (v3 + 32 * v2);
    while (1)
    {
      if (v2 >= v1)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (__OFADD__(v2, 1))
      {
        goto LABEL_38;
      }

      v35 = v2 + 1;
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      if (v8 != 1)
      {
        break;
      }

      v9 = v33 + *(type metadata accessor for EmojiFormatter() + 20);
      sub_268567630();

      v10 = sub_268568B10();

      v11 = CEMCreateEmojiLocaleData();

      v12 = sub_268568B10();
      v13 = CEMEmojiTokenCreateWithString();

      v14 = CEMEmojiTokenCopyNameWithCount();
      if (v14)
      {
        v15 = v14;
        v32 = sub_268568B20();
        v17 = v16;

        if (!v11)
        {
          goto LABEL_10;
        }

LABEL_9:
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      v32 = 0;
      v17 = 0;
      if (v11)
      {
        goto LABEL_9;
      }

LABEL_10:
      if (v13)
      {
        swift_unknownObjectRelease();
      }

      if (v17)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282CA0, &qword_26856AD60);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_26856A540;
        if (v31)
        {
          OUTLINED_FUNCTION_3_16();
          MEMORY[0x26D61BDA0](v32, v17);

          v21 = v36;
          v17 = v37;
        }

        else
        {
          v21 = v32;
        }

        *(v20 + 32) = v21;
        *(v20 + 40) = v17;
        sub_268509594(v20);
        OUTLINED_FUNCTION_0_18();
        sub_2685242B4();
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_0_18();
      sub_2685242B4();
      v4 += 32;
      ++v2;
      v1 = v34;
      if (v35 == v34)
      {
        goto LABEL_36;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282CA0, &qword_26856AD60);
    v18 = swift_allocObject();
    v19 = v18;
    *(v18 + 16) = xmmword_26856A540;
    if ((v31 & 0x100000000) != 0)
    {
      OUTLINED_FUNCTION_3_16();
      OUTLINED_FUNCTION_0_18();
      sub_2685242AC();
      MEMORY[0x26D61BDA0](v6, v5);
      v19[4] = v36;
      v19[5] = v37;
    }

    else
    {
      *(v18 + 32) = v6;
      *(v18 + 40) = v5;
      OUTLINED_FUNCTION_0_18();
      sub_2685242AC();
    }

    v22 = v19[2];
    v23 = v38;
    v24 = *(v38 + 16);
    if (!__OFADD__(v24, v22))
    {
      if (swift_isUniquelyReferenced_nonNull_native() && (v25 = *(v38 + 24) >> 1, v25 >= v24 + v22))
      {
        if (v22)
        {
          goto LABEL_26;
        }

LABEL_30:
      }

      else
      {
        sub_26854BB3C();
        v23 = v29;
        v25 = *(v29 + 24) >> 1;
        if (!v22)
        {
          goto LABEL_30;
        }

LABEL_26:
        if (v25 - *(v23 + 16) < v22)
        {
          goto LABEL_40;
        }

        swift_arrayInitWithCopy();

        v26 = *(v23 + 16);
        v27 = __OFADD__(v26, v22);
        v28 = v26 + v22;
        if (v27)
        {
          goto LABEL_41;
        }

        *(v23 + 16) = v28;
      }

      OUTLINED_FUNCTION_0_18();
      sub_2685242B4();
      v38 = v23;
LABEL_34:
      v1 = v34;
      v2 = v35;
      if (v35 == v34)
      {
        goto LABEL_36;
      }

      LOBYTE(v31) = v8 ^ 1;
      BYTE4(v31) = v8;
      v3 = v30;
      continue;
    }

    break;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

void sub_268523E68(uint64_t a1, CFIndex a2, CFIndex a3, uint64_t a4, uint64_t a5, const __CFString *a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  v13.location = *(a7 + 16);
  if (__OFSUB__(a2, v13.location))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13.length = a2 - v13.location;
  v14 = CFStringCreateWithSubstring(0, a6, v13);
  MutableCopy = CFStringCreateMutableCopy(0, 0, v14);

  if (MutableCopy)
  {
    CFStringTrimWhitespace(MutableCopy);
    if (CFStringGetLength(MutableCopy))
    {
      v32 = sub_268568B20();
      v17 = v16;
      swift_beginAccess();
      sub_268524144(sub_26854BA6C);
      v18 = a2;
      v19 = a3;
      v20 = *(*(a8 + 16) + 16);
      sub_2685241D0(v20, sub_26854BA6C);
      v21 = *(a8 + 16);
      *(v21 + 16) = v20 + 1;
      v22 = v21 + 32 * v20;
      a3 = v19;
      a2 = v18;
      *(v22 + 32) = v32;
      *(v22 + 40) = v17;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(a8 + 16) = v21;
      swift_endAccess();
    }

    v34.location = a2;
    v34.length = a3;
    v23 = CFStringCreateWithSubstring(0, a6, v34);
    if (v23)
    {
      v24 = v23;
      v33 = a2;
      v25 = a3;
      v26 = sub_268568B20();
      v28 = v27;
      swift_beginAccess();
      sub_268524144(sub_26854BA6C);
      v29 = *(*(a8 + 16) + 16);
      sub_2685241D0(v29, sub_26854BA6C);
      v30 = *(a8 + 16);
      *(v30 + 16) = v29 + 1;
      v31 = v30 + 32 * v29;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      a3 = v25;
      a2 = v33;
      *(v31 + 48) = 1;
      *(v31 + 56) = 1;
      *(a8 + 16) = v30;
      swift_endAccess();
    }

    if (!__OFADD__(a2, a3))
    {
      swift_beginAccess();
      *(a7 + 16) = a2 + a3;
      return;
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_26852409C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v10(a2, a3, a4, a5);
}

uint64_t sub_268524144(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_2685241D0(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_26852421C(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_268568D00();
  }

  return result;
}

uint64_t type metadata accessor for EmojiFormatter()
{
  result = qword_280283568;
  if (!qword_280283568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268524308()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268524350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmojiFormatter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2685243B4()
{
  v1 = (type metadata accessor for EmojiFormatter() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v3;
  v8 = *(v0 + v3 + 8);

  v9 = v1[7];
  v10 = sub_268567690();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);

  v11 = *(v0 + v5);

  v12 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v2 | 7);
}

uint64_t sub_2685244D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmojiFormatter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26852453C(uint64_t a1, CFIndex a2, CFIndex a3, uint64_t a4)
{
  v9 = *(type metadata accessor for EmojiFormatter() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v4 + v11);
  v14 = *(v4 + v12);
  v15 = *(v4 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_268523E68(a1, a2, a3, a4, v4 + v10, v13, v14, v15);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_268524650(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
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

uint64_t sub_268524690(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_268524708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_268567690();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_2685247B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_268567690();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_268524830()
{
  sub_268503918();
  if (v0 <= 0x3F)
  {
    sub_268567690();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void OUTLINED_FUNCTION_2_16()
{
  v2 = *(v0 + 16) + 1;

  sub_26854BA6C();
}

CFStringRef OUTLINED_FUNCTION_4_18()
{
  v4.location = v2;
  v4.length = v0;

  return CFStringCreateWithSubstring(0, v1, v4);
}

CFMutableStringRef OUTLINED_FUNCTION_5_17(CFStringRef theString)
{

  return CFStringCreateMutableCopy(0, 0, theString);
}

uint64_t sub_268524950(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_2685688F0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_5_5();
  sub_2684CC878(a1, v7 + 16);
  *(v7 + 152) = a2;
  *(v7 + 160) = a3;
  *(v7 + 168) = a5;
  *(v7 + 176) = a6;
  *(v7 + 161) = a4;
  type metadata accessor for ReadNotificationsCATs();

  sub_2685688E0();
  sub_2685686F0();
  sub_2685685F0();
  v16 = sub_2685685D0();
  sub_268516318(a1 + 40, v16);

  v17 = sub_268568710();

  sub_2684CC8D4(a1);
  *(v7 + 144) = v17;
  return v7;
}

uint64_t sub_268524A80()
{
  v0 = sub_2685261E4();
  if (v0 == 5)
  {

    return sub_268567B90();
  }

  else if (v0 == 1)
  {

    return sub_268567B70();
  }

  else
  {

    return sub_268567B80();
  }
}

uint64_t sub_268524B0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_7();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_268524B34()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_2685261E4();
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_268524B94()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_2685679B0();
  v1[9] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[10] = v4;
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_39();
  v7 = sub_268567B60();
  v1[12] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_39();
  v11 = *(*(sub_268567B10() - 8) + 64);
  v1[15] = OUTLINED_FUNCTION_39();
  v12 = sub_268567F20();
  v1[16] = v12;
  OUTLINED_FUNCTION_2_4(v12);
  v1[17] = v13;
  v15 = *(v14 + 64);
  v1[18] = OUTLINED_FUNCTION_39();
  v16 = sub_2685689F0();
  v1[19] = v16;
  OUTLINED_FUNCTION_2_4(v16);
  v1[20] = v17;
  v19 = *(v18 + 64);
  v1[21] = OUTLINED_FUNCTION_39();
  v20 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_268524D40()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNPromptForFollowupStrategy: In makePromptForValue", v7, 2u);
    OUTLINED_FUNCTION_2();
  }

  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];
  v11 = v0[8];

  v12 = *(v9 + 8);
  v13 = OUTLINED_FUNCTION_34();
  v14(v13);
  v15 = v0[8];
  if (*(v11 + 160))
  {
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = v15[19];
  }

  v17 = v0[18];
  v18 = v0[14];
  v19 = v0[15];
  v20 = v0[13];
  v21 = v0[10];
  v22 = v0[11];
  v38 = v0[12];
  v39 = v0[9];
  sub_268567AF0();
  *(swift_task_alloc() + 16) = v16;
  sub_268567ED0();

  sub_268567990();
  v23 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_268567A20();
  (*(v20 + 104))(v18, *MEMORY[0x277D5BB40], v38);
  (*(v21 + 104))(v22, *MEMORY[0x277D5B950], v39);
  sub_268526B14();
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_4_13();
  sub_2684EBB74(v24, v25, v26, v27, v28, v29, v30, v31, v36, v37);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v32 = v15[22];
  v40 = (v15[21] + *v15[21]);
  v33 = *(v15[21] + 4);
  v34 = swift_task_alloc();
  v0[22] = v34;
  *v34 = v0;
  v34[1] = sub_268525060;

  return v40();
}

uint64_t sub_268525060()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v5 = *(v4 + 176);
  *v3 = *v1;
  *(v2 + 184) = v6;
  *(v2 + 192) = v0;

  if (v0)
  {
    v7 = sub_26852541C;
  }

  else
  {
    v7 = sub_268525168;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_268525168()
{
  OUTLINED_FUNCTION_5();
  v1 = sub_268567D00();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[25] = sub_268567CF0();
  v4 = *(MEMORY[0x277D5BD48] + 4);
  v10 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_268525238;
  v6 = v0[23];
  v7 = v0[18];
  v8 = v0[7];

  return v10(v8, v6, v7);
}

uint64_t sub_268525238()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *(v4 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v9 + 216) = v0;

  if (v0)
  {
    v10 = sub_2685254BC;
  }

  else
  {
    v10 = sub_268525354;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_268525354()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 112);
  v7 = *(v0 + 88);

  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_34();
  v10(v9);

  OUTLINED_FUNCTION_9_1();

  return v11();
}

uint64_t sub_26852541C()
{
  v1 = *(v0 + 192);
  v2 = OUTLINED_FUNCTION_14_5();
  v3(v2);

  OUTLINED_FUNCTION_9_1();

  return v4();
}

uint64_t sub_2685254BC()
{
  v1 = *(v0 + 216);
  v2 = OUTLINED_FUNCTION_14_5();
  v3(v2);

  OUTLINED_FUNCTION_9_1();

  return v4();
}

uint64_t sub_268525564(uint64_t a1, unint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  sub_268567F10();
  sub_268516DA4(0, 0xE000000000000000, a2, v6);
  v7 = sub_268567CE0();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  return sub_268567EF0();
}

uint64_t sub_268525620()
{
  OUTLINED_FUNCTION_5();
  v1[18] = v2;
  v1[19] = v0;
  v3 = sub_2685689F0();
  v1[20] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[21] = v4;
  v6 = *(v5 + 64);
  v1[22] = OUTLINED_FUNCTION_39();
  v7 = sub_2685679B0();
  v1[23] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[24] = v8;
  v10 = *(v9 + 64);
  v1[25] = OUTLINED_FUNCTION_39();
  v11 = sub_268567B60();
  v1[26] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[27] = v12;
  v14 = *(v13 + 64);
  v1[28] = OUTLINED_FUNCTION_39();
  v15 = sub_268567D90();
  v1[29] = v15;
  OUTLINED_FUNCTION_2_4(v15);
  v1[30] = v16;
  v18 = *(v17 + 64);
  v1[31] = OUTLINED_FUNCTION_39();
  v19 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_2685257A8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0[19] + 144);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_268525840;
  v3 = v0[31];

  return sub_26850D6EC();
}

uint64_t sub_268525840()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 264) = v0;

  if (v0)
  {
    v9 = sub_268525B48;
  }

  else
  {
    v9 = sub_268525940;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_268525E10()
{
  OUTLINED_FUNCTION_5();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_2685679B0();
  v1[10] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[11] = v4;
  v6 = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_39();
  v7 = sub_268567B60();
  v1[13] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[14] = v8;
  v10 = *(v9 + 64);
  v1[15] = OUTLINED_FUNCTION_39();
  v11 = sub_2685689F0();
  v1[16] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[17] = v12;
  v14 = *(v13 + 64);
  v1[18] = OUTLINED_FUNCTION_39();
  v15 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2685261E4()
{
  v0 = sub_2685680B0();
  v135 = OUTLINED_FUNCTION_1(v0);
  v136 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_7_5();
  v129 = (v4 - v5);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v6);
  v131 = &v125 - v7;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v8);
  v134 = &v125 - v9;
  v10 = sub_2685689F0();
  v137 = OUTLINED_FUNCTION_1(v10);
  v138 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_7_5();
  v133 = v14 - v15;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v16);
  v132 = &v125 - v17;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v18);
  v20 = &v125 - v19;
  v130 = type metadata accessor for NotificationNLv3Intent();
  v21 = OUTLINED_FUNCTION_17_2(v130);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_5();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v125 - v28;
  v30 = sub_268568560();
  v31 = OUTLINED_FUNCTION_1(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_5();
  v38 = (v37 - v36);
  v39 = sub_268568080();
  v40 = OUTLINED_FUNCTION_1(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_5_5();
  v47 = v46 - v45;
  sub_268568030();
  v48 = v42[11];
  v49 = OUTLINED_FUNCTION_27_5();
  v51 = v50(v49);
  if (v51 == *MEMORY[0x277D5C128])
  {
    v52 = v42[12];
    v53 = OUTLINED_FUNCTION_27_5();
    v54(v53);
    (*(v33 + 32))(v38, v47, v30);
    v135 = v33;
    v136 = v30;
    (*(v33 + 16))(v29, v38, v30);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v55 = v137;
    v56 = __swift_project_value_buffer(v137, qword_28028B348);
    v57 = v138;
    (*(v138 + 16))(v20, v56, v55);
    sub_2684EB87C(v29, v26);
    v58 = sub_2685689E0();
    v59 = sub_268568DD0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = OUTLINED_FUNCTION_4();
      v134 = v38;
      v61 = v57;
      v62 = v60;
      v63 = OUTLINED_FUNCTION_51();
      v140 = v63;
      *v62 = 136315138;
      sub_2684FB88C();
      v64 = sub_268568310();
      v66 = v65;
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v26, v67);
      v68 = sub_2684EABEC(v64, v66, &v140);

      *(v62 + 4) = v68;
      _os_log_impl(&dword_2684CA000, v58, v59, "RNPromptForFollowupStrategy#parseInput nlv3 parsed intent: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v61 + 8))(v20, v137);
    }

    else
    {

      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v26, v91);
      (*(v57 + 8))(v20, v55);
    }

    if (sub_26852BA90() || (sub_26852B6A4() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v29, v92);
      v93 = OUTLINED_FUNCTION_7_19();
      v94(v93);
      return 0;
    }

    else if (sub_26852BAB4() & 1) != 0 || (sub_26852B998())
    {
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v29, v110);
      v111 = OUTLINED_FUNCTION_7_19();
      v112(v111);
      return 2;
    }

    else if (sub_26852B5A8())
    {
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v29, v115);
      v116 = OUTLINED_FUNCTION_7_19();
      v117(v116);
      return 3;
    }

    else if (sub_26852B7A4())
    {
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v29, v118);
      v119 = OUTLINED_FUNCTION_7_19();
      v120(v119);
      return 4;
    }

    else
    {
      v121 = sub_26852B8AC();
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v29, v122);
      v123 = OUTLINED_FUNCTION_7_19();
      v124(v123);
      if (v121)
      {
        return 1;
      }

      else
      {
        return 5;
      }
    }
  }

  else if (v51 == *MEMORY[0x277D5C160])
  {
    v69 = v42[12];
    v70 = OUTLINED_FUNCTION_27_5();
    v71(v70);
    v73 = v135;
    v72 = v136;
    v74 = v134;
    (*(v136 + 32))(v134, v47, v135);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v75 = v137;
    v76 = __swift_project_value_buffer(v137, qword_28028B348);
    v77 = *(v138 + 16);
    v78 = v132;
    v130 = v76;
    v127 = v77;
    v128 = v138 + 16;
    (v77)(v132);
    v79 = *(v72 + 16);
    v80 = v131;
    v79(v131, v74, v73);
    v81 = sub_2685689E0();
    v126 = sub_268568DD0();
    if (os_log_type_enabled(v81, v126))
    {
      v82 = OUTLINED_FUNCTION_4();
      v125 = OUTLINED_FUNCTION_51();
      v140 = v125;
      *v82 = 136315138;
      v79(v129, v80, v73);
      v83 = sub_268568B70();
      v85 = v84;
      v86 = OUTLINED_FUNCTION_26_5(v136);
      v87(v86);
      v88 = v78;
      v89 = sub_2684EABEC(v83, v85, &v140);

      *(v82 + 4) = v89;
      _os_log_impl(&dword_2684CA000, v81, v126, "RNPromptForFollowupStrategy#parseInput uso parse: %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v125);
      v74 = v134;
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      v90 = *(v138 + 8);
      v90(v88, v75);
    }

    else
    {

      v99 = OUTLINED_FUNCTION_26_5(v72);
      v100(v99);
      v90 = *(v138 + 8);
      v90(v78, v75);
    }

    v95 = sub_268526E64(v74);
    v127(v133, v130, v75);
    v101 = sub_2685689E0();
    v102 = sub_268568DD0();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = OUTLINED_FUNCTION_4();
      v104 = OUTLINED_FUNCTION_51();
      v140 = v104;
      *v103 = 136315138;
      v139 = v95;
      v105 = sub_268568B70();
      v107 = sub_2684EABEC(v105, v106, &v140);

      *(v103 + 4) = v107;
      _os_log_impl(&dword_2684CA000, v101, v102, "RNPromptForFollowupStrategy#parseInput response %s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v104);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      v108 = OUTLINED_FUNCTION_24_7();
      (v90)(v108);
      v109 = v134;
    }

    else
    {

      v113 = OUTLINED_FUNCTION_24_7();
      (v90)(v113);
      v109 = v74;
    }

    (v131)(v109, v135);
  }

  else
  {
    v96 = v42[1];
    v97 = OUTLINED_FUNCTION_27_5();
    v98(v97);
    return 5;
  }

  return v95;
}

void sub_268526B14()
{
  v1 = *(v0 + 152);
  v27 = MEMORY[0x277D84F90];
  v2 = sub_2684DEAF0(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  while (v2 != v3)
  {
    if (v4)
    {
      v5 = MEMORY[0x26D61C170](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
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
LABEL_46:
      __break(1u);
      return;
    }

    sub_2684E1104(v5, &selRef_summary);
    if (v7)
    {

      sub_268569020();
      v8 = *(v27 + 16);
      OUTLINED_FUNCTION_23_6();
      sub_268569050();
      OUTLINED_FUNCTION_23_6();
      sub_268569060();
      sub_268569030();
    }

    else
    {
    }

    ++v3;
  }

  v9 = sub_2684DEAF0(v27);

  if (v9 <= 0)
  {
    v28 = MEMORY[0x277D84F90];
    v10 = sub_2684DEAF0(v1);
    for (i = 0; v10 != i; ++i)
    {
      if (v4)
      {
        v12 = MEMORY[0x26D61C170](i, v1);
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v12 = *(v1 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        goto LABEL_44;
      }

      sub_2684E1104(v12, &selRef_threadSummary);
      if (v14)
      {

        sub_268569020();
        v15 = *(v28 + 16);
        OUTLINED_FUNCTION_23_6();
        sub_268569050();
        OUTLINED_FUNCTION_23_6();
        sub_268569060();
        sub_268569030();
      }

      else
      {
      }
    }

    v16 = sub_2684DEAF0(v28);

    if (v16 <= 0)
    {
      v26 = *(v0 + 161);
    }
  }

  v29 = MEMORY[0x277D84F90];
  v17 = sub_2684DEAF0(v1);
  for (j = 0; v17 != j; ++j)
  {
    if (v4)
    {
      v19 = MEMORY[0x26D61C170](j, v1);
    }

    else
    {
      if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v19 = *(v1 + 8 * j + 32);
    }

    v20 = v19;
    if (__OFADD__(j, 1))
    {
      goto LABEL_42;
    }

    v21 = [v19 isHighlight];
    if (!v21)
    {
      goto LABEL_36;
    }

    v22 = [v20 isHighlight];
    if (!v22)
    {
      goto LABEL_46;
    }

    v23 = v22;
    v24 = [v22 integerValue];

    if (v24 > 0)
    {
      sub_268569020();
      v25 = *(v29 + 16);
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    else
    {
LABEL_36:
    }
  }

  sub_2684DEAF0(v29);
}

uint64_t sub_268526E64(uint64_t a1)
{
  v2 = sub_2685680B0();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_5();
  v10 = v9 - v8;
  v37 = type metadata accessor for NotificationNLv4Intent();
  v11 = OUTLINED_FUNCTION_17_2(v37);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_5();
  v16 = v15 - v14;
  v17 = sub_2685689F0();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_5();
  v25 = v24 - v23;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v26 = __swift_project_value_buffer(v17, qword_28028B348);
  (*(v20 + 16))(v25, v26, v17);
  v27 = sub_2685689E0();
  v28 = sub_268568DC0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2684CA000, v27, v28, "RNPromptForFollowupStrategy: in getPromptResponse", v29, 2u);
    OUTLINED_FUNCTION_2();
  }

  (*(v20 + 8))(v25, v17);
  v30 = *(v5 + 16);
  v30(v10, a1, v2);
  v30(v16, v10, v2);
  sub_268568550();
  v31 = sub_26850CCFC();
  (*(v5 + 8))(v10, v2);
  *(v16 + *(v37 + 20)) = v31;
  sub_2685683B0();
  if (v39)
  {
    sub_268568430();
    if (swift_dynamicCast())
    {

LABEL_10:
      OUTLINED_FUNCTION_2_9();
      return 0;
    }
  }

  else
  {
    sub_2684EB7C8(v38, &qword_280282BE0, &unk_26856D8C0);
  }

  if (sub_268565808())
  {
    goto LABEL_10;
  }

  if (sub_26856596C() & 1) != 0 || (sub_268565954())
  {
    OUTLINED_FUNCTION_2_9();
    return 2;
  }

  if (sub_26856563C())
  {
    goto LABEL_25;
  }

  if (!v31)
  {
    goto LABEL_21;
  }

  if (sub_268568540() == 1684104562 && v33 == 0xE400000000000000)
  {

    goto LABEL_25;
  }

  v35 = sub_2685691C0();

  if (v35)
  {
LABEL_25:
    OUTLINED_FUNCTION_2_9();
    return 3;
  }

LABEL_21:
  v36 = sub_268565820();
  OUTLINED_FUNCTION_2_9();
  if (v36)
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

void *sub_268527234()
{
  sub_2684CC8D4((v0 + 2));
  v1 = v0[18];

  v2 = v0[19];

  v3 = v0[22];

  return v0;
}

uint64_t sub_26852726C()
{
  sub_268527234();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_2685272C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_268527360;

  return sub_268524B0C(a2);
}

uint64_t sub_268527360(char a1)
{
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_9_8();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v10 = v9;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_268527460()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB458;

  return sub_268524B94();
}

uint64_t sub_2685274F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB128;

  return sub_268525620();
}

uint64_t sub_268527590()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB458;

  return sub_268525E10();
}

uint64_t OUTLINED_FUNCTION_14_5()
{
  v1 = v0[21];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[11];
  v6 = *(v0[17] + 8);
  return v0[18];
}

uint64_t OUTLINED_FUNCTION_26_5@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 160) = *(a1 + 8);
  return result;
}

uint64_t sub_2685276DC(void *__src, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 169) = 0;
  memcpy((v5 + 32), __src, 0x80uLL);
  *(v5 + 160) = a2;
  *(v5 + 168) = a3;
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return v5;
}

uint64_t sub_26852773C()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_2685679B0();
  v1[9] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[10] = v4;
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_39();
  v7 = sub_268567B60();
  v1[12] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_39();
  v11 = sub_268567B10();
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  v1[15] = OUTLINED_FUNCTION_39();
  v14 = sub_268567F20();
  v1[16] = v14;
  OUTLINED_FUNCTION_2_4(v14);
  v1[17] = v15;
  v17 = *(v16 + 64);
  v1[18] = OUTLINED_FUNCTION_39();
  v18 = sub_2685689F0();
  v1[19] = v18;
  OUTLINED_FUNCTION_2_4(v18);
  v1[20] = v19;
  v21 = *(v20 + 64);
  v1[21] = OUTLINED_FUNCTION_39();
  v22 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_2685278E4()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = v0[20];
  v1 = v0[21];
  OUTLINED_FUNCTION_38(v0[19], qword_28028B348);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_31_6();
  v5(v4);
  v6 = sub_2685689E0();
  v7 = sub_268568DC0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2684CA000, v6, v7, "RNYesNoPromptStrategy: In makePromptForYesNoResponse", v8, 2u);
    OUTLINED_FUNCTION_2();
  }

  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  v12 = v0[8];

  v13 = *(v10 + 8);
  v14 = OUTLINED_FUNCTION_34();
  v15(v14);
  v16 = *(v12 + 168);
  v17 = v0[8];
  if (v16)
  {
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = v17[20];
  }

  v19 = v0[18];
  v20 = v0[15];
  sub_268567AF0();
  *(swift_task_alloc() + 16) = v18;
  sub_268567ED0();

  v21 = v17[3];
  v25 = (v17[2] + *v17[2]);
  v22 = *(v17[2] + 4);
  v23 = swift_task_alloc();
  v0[22] = v23;
  *v23 = v0;
  v23[1] = sub_268527B24;

  return v25();
}

uint64_t sub_268527B24()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v4 = v3;
  v6 = *(v5 + 176);
  *v4 = *v1;
  *(v3 + 184) = v7;
  *(v3 + 192) = v0;

  if (v0)
  {
    v8 = sub_26852541C;
  }

  else
  {
    v8 = sub_268527C30;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_268527C30()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  sub_268567990();
  v30 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_268567A20();
  v7 = *MEMORY[0x277D5BB20];
  v8 = *(v2 + 104);
  v9 = OUTLINED_FUNCTION_31_6();
  v10(v9);
  (*(v6 + 104))(v4, *MEMORY[0x277D5B950], v5);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_6_17();
  sub_2684EBB74(v11, v12, v13, v14, v15, v16, v17, v18, v28, v29);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v19 = sub_268567D00();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v0[25] = sub_268567CF0();
  v22 = *(MEMORY[0x277D5BD48] + 4);
  v31 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  v23 = swift_task_alloc();
  v0[26] = v23;
  *v23 = v0;
  v23[1] = sub_268527DDC;
  v24 = v0[23];
  v25 = v0[18];
  v26 = v0[7];

  return v31(v26, v24, v25);
}

uint64_t sub_268527DDC()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *(v5 + 200);
  v8 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v9 = v8;
  *(v10 + 216) = v0;

  if (v0)
  {
    v11 = sub_2685254BC;
  }

  else
  {
    v11 = sub_268525354;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_268527F00(uint64_t a1, unint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  sub_268567F10();
  sub_268516DA4(0, 0xE000000000000000, a2, v6);
  v7 = sub_268567CE0();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  return sub_268567EF0();
}

uint64_t sub_268527FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v132 = sub_268568040();
  v3 = OUTLINED_FUNCTION_1(v132);
  v129 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_5();
  v128 = v8 - v7;
  OUTLINED_FUNCTION_19_1();
  v137 = sub_2685680B0();
  v9 = OUTLINED_FUNCTION_1(v137);
  v130 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_5();
  v124 = v13 - v14;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v15);
  v127 = (&v124 - v16);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v17);
  v136 = &v124 - v18;
  OUTLINED_FUNCTION_19_1();
  v140 = sub_2685689F0();
  v19 = OUTLINED_FUNCTION_1(v140);
  v138 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_5();
  v134 = v23 - v24;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v25);
  v133 = &v124 - v26;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v27);
  v135 = &v124 - v28;
  OUTLINED_FUNCTION_19_1();
  v126 = type metadata accessor for NotificationNLv3Intent();
  v29 = OUTLINED_FUNCTION_17_2(v126);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_5();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v124 - v36;
  v38 = sub_268568560();
  v39 = OUTLINED_FUNCTION_1(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5_5();
  v46 = v45 - v44;
  v47 = sub_268568080();
  v48 = OUTLINED_FUNCTION_1(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_7_5();
  MEMORY[0x28223BE20](v53);
  v55 = &v124 - v54;
  v125 = a1;
  sub_268568030();
  v56 = v50[11];
  v57 = OUTLINED_FUNCTION_42_2();
  v59 = v58(v57);
  if (v59 == *MEMORY[0x277D5C128])
  {
    v60 = v50[12];
    v61 = OUTLINED_FUNCTION_42_2();
    v62(v61);
    (*(v41 + 32))(v46, v55, v38);
    v136 = v41;
    v137 = v38;
    v63 = *(v41 + 16);
    v134 = v46;
    v63(v37, v46, v38);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v64 = v140;
    OUTLINED_FUNCTION_38(v140, qword_28028B348);
    v65 = v138;
    v66 = v135;
    (*(v138 + 16))(v135);
    OUTLINED_FUNCTION_12_12();
    sub_26852B1E4(v37, v34, v67);
    v68 = sub_2685689E0();
    v69 = sub_268568DD0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = v65;
      v71 = OUTLINED_FUNCTION_4();
      v72 = OUTLINED_FUNCTION_51();
      v141 = v72;
      *v71 = 136315138;
      OUTLINED_FUNCTION_10_9();
      sub_26852B19C(v73, 255, v74);
      v75 = sub_268568310();
      v77 = v76;
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v34, v78);
      v79 = sub_2684EABEC(v75, v77, &v141);

      *(v71 + 4) = v79;
      _os_log_impl(&dword_2684CA000, v68, v69, "RNYesNoPromptStrategy actionForInput | nlv3 parsed intent: %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v70 + 8))(v66, v140);
    }

    else
    {

      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v34, v100);
      (*(v65 + 8))(v66, v64);
    }

    v101 = sub_26852BA90();
    v103 = v136;
    v102 = v137;
    v104 = v134;
    if (v101 || (sub_26852B6A4() & 1) != 0 || (sub_26852BAB4() & 1) != 0 || (sub_26852B998() & 1) != 0)
    {
      sub_268567B80();
    }

    else if (sub_26852B8AC() & 1) != 0 || (sub_26852B5A8())
    {
      *(v131 + 169) = sub_26852B5A8() & 1;
      sub_268567B70();
    }

    else
    {
      sub_268567B90();
    }

    OUTLINED_FUNCTION_0_5();
    sub_2684EB8E0(v37, v105);
    return (*(v103 + 8))(v104, v102);
  }

  else if (v59 == *MEMORY[0x277D5C160])
  {
    v80 = v50[12];
    v81 = OUTLINED_FUNCTION_42_2();
    v82(v81);
    v83 = v130;
    v84 = v137;
    (*(v130 + 32))(v136, v55, v137);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v85 = v140;
    OUTLINED_FUNCTION_38(v140, qword_28028B348);
    v86 = v138;
    v87 = v133;
    (*(v138 + 16))(v133);
    v88 = *(v83 + 16);
    v89 = v127;
    OUTLINED_FUNCTION_40_2();
    v88();
    v90 = v87;
    v91 = sub_2685689E0();
    sub_268568DD0();
    OUTLINED_FUNCTION_37_3();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = OUTLINED_FUNCTION_4();
      v94 = OUTLINED_FUNCTION_51();
      v141 = v94;
      *v93 = 136315138;
      (v88)(v124, v89, v137);
      v95 = sub_268568B70();
      v97 = v96;
      v98 = OUTLINED_FUNCTION_43_0();
      v89(v98, v137);
      v99 = sub_2684EABEC(v95, v97, &v141);

      *(v93 + 4) = v99;
      _os_log_impl(&dword_2684CA000, v91, v90, "RNYesNoPromptStrategy actionForInput | uso parse: %s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v94);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v86 + 8))(v133, v140);
    }

    else
    {

      v119 = OUTLINED_FUNCTION_43_0();
      v89(v119, v84);
      (*(v86 + 8))(v87, v85);
    }

    sub_26852899C(v136, v139);
    v120 = OUTLINED_FUNCTION_34();
    return (v89)(v120);
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_38(v140, qword_28028B348);
    v107 = v138;
    v108 = v134;
    (*(v138 + 16))(v134);
    v109 = v128;
    v110 = v129;
    v111 = v132;
    (*(v129 + 16))(v128, v125, v132);
    v112 = sub_2685689E0();
    sub_268568DE0();
    OUTLINED_FUNCTION_37_3();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = OUTLINED_FUNCTION_4();
      v137 = OUTLINED_FUNCTION_51();
      v141 = v137;
      *v114 = 136315138;
      LODWORD(v136) = v108;
      sub_268568030();
      v115 = sub_268568B70();
      v117 = v116;
      (*(v110 + 8))(v109, v132);
      v118 = sub_2684EABEC(v115, v117, &v141);

      *(v114 + 4) = v118;
      _os_log_impl(&dword_2684CA000, v112, v136, "Unexpected parse type: %s", v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v137);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();
    }

    else
    {

      (*(v110 + 8))(v109, v111);
    }

    (*(v107 + 8))(v134, v140);
    sub_268567B90();
    v121 = v50[1];
    v122 = OUTLINED_FUNCTION_42_2();
    return v123(v122);
  }
}

uint64_t sub_26852899C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_2685689F0();
  v61 = OUTLINED_FUNCTION_1(v3);
  v62 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_5_5();
  v9 = v8 - v7;
  v10 = sub_2685680B0();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_5();
  v18 = v17 - v16;
  v19 = type metadata accessor for NotificationNLv4Intent();
  v20 = OUTLINED_FUNCTION_17_2(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_5();
  v59 = v23 - v24;
  OUTLINED_FUNCTION_17();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v55 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v55 - v29;
  v31 = *(v13 + 16);
  (v31)(v18, a1, v10);
  OUTLINED_FUNCTION_40_2();
  v31();
  sub_268568550();
  v32 = sub_26850CCFC();
  v33 = *(v13 + 8);
  v34 = OUTLINED_FUNCTION_34();
  v35(v34);
  v60 = v19;
  *&v30[*(v19 + 20)] = v32;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v36 = v61;
  OUTLINED_FUNCTION_38(v61, qword_28028B348);
  v37 = v62;
  (*(v62 + 16))(v9);
  OUTLINED_FUNCTION_11_10();
  sub_26852B1E4(v30, v28, v38);
  v39 = sub_2685689E0();
  v40 = sub_268568DD0();
  v41 = v28;
  if (os_log_type_enabled(v39, v40))
  {
    v42 = OUTLINED_FUNCTION_4();
    v56 = v9;
    v43 = v42;
    v44 = OUTLINED_FUNCTION_51();
    v57 = v32;
    v45 = v44;
    v64[0] = v44;
    *v43 = 136315138;
    OUTLINED_FUNCTION_11_10();
    sub_26852B1E4(v28, v59, v46);
    v47 = sub_268568B70();
    v49 = v48;
    OUTLINED_FUNCTION_2_18();
    sub_2684EB8E0(v41, v50);
    v51 = sub_2684EABEC(v47, v49, v64);

    *(v43 + 4) = v51;
    _os_log_impl(&dword_2684CA000, v39, v40, "RNYesNoPromptStrategy actionFor | nlv4 parsed intent: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v37 + 8))(v56, v36);
  }

  else
  {

    OUTLINED_FUNCTION_2_18();
    sub_2684EB8E0(v28, v52);
    (*(v37 + 8))(v9, v36);
  }

  sub_2685683B0();
  if (v64[3])
  {
    sub_268568430();
    if (swift_dynamicCast())
    {

LABEL_13:
      sub_268567B80();
      goto LABEL_14;
    }
  }

  else
  {
    sub_2684EB7C8(v64, &qword_280282BE0, &unk_26856D8C0);
  }

  if (sub_268565808() & 1) != 0 || (sub_26856596C() & 1) != 0 || (sub_268565954())
  {
    goto LABEL_13;
  }

  if (sub_268565820() & 1) != 0 || (sub_26856563C())
  {
    *(v58 + 169) = sub_26856563C() & 1;
    sub_268567B70();
  }

  else
  {
    sub_268567B90();
  }

LABEL_14:
  OUTLINED_FUNCTION_2_18();
  return sub_2684EB8E0(v30, v53);
}

uint64_t sub_268528DF8()
{
  OUTLINED_FUNCTION_5();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2685680B0();
  v1[5] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_50();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v8 = sub_268568040();
  v1[10] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_50();
  v1[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802830C8, &qword_26856C590);
  OUTLINED_FUNCTION_10(v12);
  v14 = *(v13 + 64);
  v1[14] = OUTLINED_FUNCTION_39();
  v15 = sub_2685689F0();
  v1[15] = v15;
  OUTLINED_FUNCTION_2_4(v15);
  v1[16] = v16;
  v18 = *(v17 + 64);
  v1[17] = OUTLINED_FUNCTION_50();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v19 = type metadata accessor for NotificationNLv3Intent();
  v1[21] = v19;
  OUTLINED_FUNCTION_10(v19);
  v21 = *(v20 + 64);
  v1[22] = OUTLINED_FUNCTION_50();
  v1[23] = swift_task_alloc();
  v22 = sub_268568560();
  v1[24] = v22;
  OUTLINED_FUNCTION_2_4(v22);
  v1[25] = v23;
  v25 = *(v24 + 64);
  v1[26] = OUTLINED_FUNCTION_39();
  v26 = sub_268568080();
  v1[27] = v26;
  OUTLINED_FUNCTION_2_4(v26);
  v1[28] = v27;
  v29 = *(v28 + 64);
  v1[29] = OUTLINED_FUNCTION_50();
  v1[30] = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_268529080()
{
  v194 = v0;
  v2 = v0 + 30;
  v1 = v0[30];
  v3 = v0[28];
  v5 = v0 + 27;
  v4 = v0[27];
  v6 = v0[3];
  sub_268568030();
  v7 = *(v3 + 88);
  v8 = OUTLINED_FUNCTION_34();
  v10 = v9(v8);
  if (v10 == *MEMORY[0x277D5C128])
  {
    v2 = v0 + 26;
    v11 = v0[26];
    v12 = v0[25];
    v5 = v0 + 24;
    v13 = v0[24];
    v14 = v0[23];
    (*(v0[28] + 96))(v0[30], v0[27]);
    v15 = *(v12 + 32);
    OUTLINED_FUNCTION_40_2();
    v16();
    (*(v12 + 16))(v14, v11, v13);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v18 = v0[22];
    v17 = v0[23];
    v19 = v0[20];
    v20 = v0[16];
    OUTLINED_FUNCTION_38(v0[15], qword_28028B348);
    log = v21;
    v178 = *(v20 + 16);
    v178(v19);
    OUTLINED_FUNCTION_12_12();
    sub_26852B1E4(v17, v18, v22);
    v23 = sub_2685689E0();
    v24 = sub_268568DD0();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[22];
    if (v25)
    {
      v27 = v0[21];
      v28 = v0[16];
      v169 = v0[15];
      v173 = v0[20];
      v29 = OUTLINED_FUNCTION_4();
      v30 = OUTLINED_FUNCTION_51();
      v193 = v30;
      *v29 = 136315138;
      OUTLINED_FUNCTION_10_9();
      sub_26852B19C(v31, 255, v32);
      v33 = sub_268568310();
      v35 = v34;
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v26, v36);
      v37 = v33;
      v5 = v0 + 24;
      v38 = sub_2684EABEC(v37, v35, &v193);

      *(v29 + 4) = v38;
      _os_log_impl(&dword_2684CA000, v23, v24, "RNYesNoPromptStrategy parseConfirmationResponse | nlv3 parsed intent: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      v39 = *(v28 + 8);
      v39(v173, v169);
    }

    else
    {
      v35 = v0[20];
      v71 = v0[15];
      v72 = v0[16];

      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v26, v73);
      v39 = *(v72 + 8);
      v74 = OUTLINED_FUNCTION_26_6();
      v39(v74, v75);
    }

    v76 = v0[23];
    if (sub_26852BA90() || (v76 = v0[23], (sub_26852B6A4() & 1) != 0))
    {
      v77 = v0[25];
      OUTLINED_FUNCTION_21_5();
      v78 = MEMORY[0x277D5BED8];
    }

    else
    {
      v76 = v0[23];
      if ((sub_26852BAB4() & 1) == 0)
      {
        v76 = v0[23];
        if ((sub_26852B998() & 1) == 0)
        {
          v76 = v0[23];
          if ((sub_26852B8AC() & 1) == 0)
          {
            v76 = v0[23];
            if ((sub_26852B5A8() & 1) == 0)
            {
              v192 = v5;
              v135 = v0[13];
              v136 = v0[10];
              v137 = v0[11];
              v138 = v0[3];
              (v178)(v0[19], log, v0[15]);
              v139 = *(v137 + 16);
              v140 = OUTLINED_FUNCTION_26_6();
              v141(v140);
              v142 = sub_2685689E0();
              v143 = sub_268568DE0();
              if (os_log_type_enabled(v142, v143))
              {
                v144 = v0[29];
                v145 = v0[27];
                v182 = v0[16];
                logd = v0[15];
                v190 = v0[19];
                v146 = v0[13];
                v147 = v0[11];
                v172 = v0[10];
                v148 = OUTLINED_FUNCTION_4();
                v177 = OUTLINED_FUNCTION_51();
                v193 = v177;
                *v148 = 136315138;
                sub_268568030();
                OUTLINED_FUNCTION_41_1();
                sub_268568B70();
                v149 = OUTLINED_FUNCTION_35_2();
                v150(v149, v172);
                v151 = OUTLINED_FUNCTION_41_1();
                v154 = sub_2684EABEC(v151, v152, v153);

                *(v148 + 4) = v154;
                OUTLINED_FUNCTION_46_1(&dword_2684CA000, v155, v156, "Unable to handle parse: %s");
                v157 = v177;
                __swift_destroy_boxed_opaque_existential_0(v177);
                OUTLINED_FUNCTION_2();
                OUTLINED_FUNCTION_2();

                v158 = logd;
                v159 = v190;
              }

              else
              {
                v157 = v0[19];
                v160 = v0[15];
                v161 = v0[16];
                v162 = v0[13];
                v163 = v0[10];
                v164 = v0[11];

                (*(v164 + 8))(v162, v163);
                v159 = v157;
                v158 = v160;
              }

              v39(v159, v158);
              v165 = v0[25];
              OUTLINED_FUNCTION_21_5();
              v166 = sub_268567E60();
              __swift_storeEnumTagSinglePayload(v142, 1, 1, v166);
              sub_268568020();
              OUTLINED_FUNCTION_0_5();
              sub_2684EB8E0(v157, v167);
              v106 = *(v165 + 8);
              v5 = v192;
              goto LABEL_30;
            }
          }
        }
      }

      v77 = v0[25];
      OUTLINED_FUNCTION_21_5();
      v78 = MEMORY[0x277D5BED0];
    }

    v107 = *v78;
    v108 = sub_268567E60();
    OUTLINED_FUNCTION_17_2(v108);
    (*(v109 + 104))(v35, v107, v108);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v108);
    sub_268568020();
    OUTLINED_FUNCTION_0_5();
    sub_2684EB8E0(v76, v110);
    v111 = v77;
    goto LABEL_29;
  }

  if (v10 != *MEMORY[0x277D5C160])
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v80 = v0[16];
    v79 = v0[17];
    v82 = v0[11];
    v81 = v0[12];
    v83 = v0[10];
    v84 = v0[3];
    OUTLINED_FUNCTION_38(v0[15], qword_28028B348);
    v85 = *(v80 + 16);
    v86 = OUTLINED_FUNCTION_31_6();
    v87(v86);
    (*(v82 + 16))(v81, v84, v83);
    v88 = sub_2685689E0();
    v89 = sub_268568DE0();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = v0[29];
      v91 = v0[27];
      logb = v0[15];
      v188 = v0[17];
      v93 = v0[11];
      v92 = v0[12];
      v175 = v0[10];
      v180 = v0[16];
      v94 = OUTLINED_FUNCTION_4();
      v95 = OUTLINED_FUNCTION_51();
      v193 = v95;
      *v94 = 136315138;
      sub_268568030();
      OUTLINED_FUNCTION_41_1();
      sub_268568B70();
      v96 = OUTLINED_FUNCTION_35_2();
      v97(v96, v175);
      v98 = OUTLINED_FUNCTION_41_1();
      v101 = sub_2684EABEC(v98, v99, v100);
      v5 = v0 + 27;

      *(v94 + 4) = v101;
      OUTLINED_FUNCTION_46_1(&dword_2684CA000, v102, v103, "Unexpected parse type: %s");
      __swift_destroy_boxed_opaque_existential_0(v95);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v180 + 8))(v188, logb);
    }

    else
    {
      v113 = v0[16];
      v112 = v0[17];
      v114 = v0[15];
      v116 = v0[11];
      v115 = v0[12];
      v117 = v0[10];

      (*(v116 + 8))(v115, v117);
      (*(v113 + 8))(v112, v114);
    }

    v118 = v0[28];
    v119 = v0[14];
    v120 = v0[2];
    v121 = sub_268567E60();
    __swift_storeEnumTagSinglePayload(v119, 1, 1, v121);
    sub_268568020();
    v111 = v118;
LABEL_29:
    v106 = *(v111 + 8);
    goto LABEL_30;
  }

  v2 = v0 + 9;
  v40 = v0[9];
  v41 = v0[6];
  v5 = v0 + 5;
  v42 = v0[5];
  (*(v0[28] + 96))(v0[30], v0[27]);
  v43 = *(v41 + 32);
  OUTLINED_FUNCTION_40_2();
  v44();
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v45 = v0[18];
  v46 = v0[16];
  v48 = v0[8];
  v47 = v0[9];
  v49 = v0[5];
  v50 = v0[6];
  OUTLINED_FUNCTION_38(v0[15], qword_28028B348);
  v51 = *(v46 + 16);
  v52 = OUTLINED_FUNCTION_31_6();
  v53(v52);
  v54 = *(v50 + 16);
  v54(v48, v47, v49);
  v55 = sub_2685689E0();
  v179 = sub_268568DD0();
  loga = v55;
  v56 = os_log_type_enabled(v55, v179);
  v57 = v0[18];
  v59 = v0[15];
  v58 = v0[16];
  v60 = v0[8];
  if (v56)
  {
    v174 = v0[18];
    v62 = v0[6];
    v61 = v0[7];
    v63 = v0[5];
    v170 = v0[15];
    v64 = OUTLINED_FUNCTION_4();
    v168 = OUTLINED_FUNCTION_51();
    v193 = v168;
    *v64 = 136315138;
    v54(v61, v60, v63);
    v65 = sub_268568B70();
    v67 = v66;
    v68 = v63;
    v5 = v0 + 5;
    v69 = *(v62 + 8);
    v69(v60, v68);
    v70 = sub_2684EABEC(v65, v67, &v193);

    *(v64 + 4) = v70;
    _os_log_impl(&dword_2684CA000, loga, v179, "RNYesNoPromptStrategy parseConfirmationResponse | uso parse: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v168);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v58 + 8))(v174, v170);
  }

  else
  {
    v105 = v0[5];
    v104 = v0[6];

    v69 = *(v104 + 8);
    v69(v60, v105);
    (*(v58 + 8))(v57, v59);
  }

  sub_268529AE8(v0[9], v0[2]);
  v106 = v69;
LABEL_30:
  v122 = *v2;
  v123 = *v5;
  v125 = v0[29];
  v124 = v0[30];
  v126 = v0[26];
  v128 = v0[22];
  v127 = v0[23];
  v130 = v0[19];
  v129 = v0[20];
  v131 = v0[17];
  v132 = v0[18];
  v171 = v0[14];
  v176 = v0[13];
  v181 = v0[12];
  logc = v0[9];
  v189 = v0[8];
  v191 = v0[7];
  v106(v122, v123);

  OUTLINED_FUNCTION_9_1();

  return v133();
}

uint64_t sub_268529AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802830C8, &qword_26856C590);
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v75 = v74 - v7;
  OUTLINED_FUNCTION_19_1();
  v8 = sub_2685679B0();
  v9 = OUTLINED_FUNCTION_1(v8);
  v74[1] = v10;
  v74[2] = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_5();
  v74[3] = v14 - v13;
  OUTLINED_FUNCTION_19_1();
  v74[0] = sub_268567B60();
  v15 = OUTLINED_FUNCTION_1(v74[0]);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_5();
  v22 = v21 - v20;
  v23 = sub_2685680B0();
  v24 = OUTLINED_FUNCTION_1(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_5();
  v31 = v30 - v29;
  v32 = type metadata accessor for NotificationNLv4Intent();
  v33 = v32 - 8;
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_5();
  v37 = v36 - v35;
  v38 = *(v26 + 16);
  v38(v31, a1, v23);
  v38(v37, v31, v23);
  sub_268568550();
  v39 = sub_26850CCFC();
  (*(v26 + 8))(v31, v23);
  *(v37 + *(v33 + 28)) = v39;
  sub_2685683B0();
  if (v77[3])
  {
    sub_268568430();
    if (swift_dynamicCast())
    {

LABEL_6:
      sub_268567990();
      OUTLINED_FUNCTION_18_7(v77);
      (*(v17 + 104))(v22, *MEMORY[0x277D5BBC8], v74[0]);
      v40 = *MEMORY[0x277D5B950];
      v41 = OUTLINED_FUNCTION_39_2();
      v42(v41);
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_6_17();
      sub_2684EBB74(v43, v44, v45, v46, v47, v48, v49, v50, v72, v73);
      OUTLINED_FUNCTION_33_1();

      __swift_destroy_boxed_opaque_existential_0(v77);
      v51 = MEMORY[0x277D5BED8];
      goto LABEL_12;
    }
  }

  else
  {
    sub_2684EB7C8(v77, &qword_280282BE0, &unk_26856D8C0);
  }

  if (sub_268565808())
  {
    goto LABEL_6;
  }

  if ((sub_26856596C() & 1) == 0 && (sub_268565954() & 1) == 0 && (sub_268565820() & 1) == 0 && (sub_26856563C() & 1) == 0)
  {
    v69 = sub_268567E60();
    v67 = v75;
    v68 = 1;
    goto LABEL_13;
  }

  sub_268567990();
  OUTLINED_FUNCTION_18_7(v77);
  (*(v17 + 104))(v22, *MEMORY[0x277D5BBD0], v74[0]);
  v52 = *MEMORY[0x277D5B950];
  v53 = OUTLINED_FUNCTION_39_2();
  v54(v53);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_6_17();
  sub_2684EBB74(v55, v56, v57, v58, v59, v60, v61, v62, v72, v73);
  OUTLINED_FUNCTION_33_1();

  __swift_destroy_boxed_opaque_existential_0(v77);
  v51 = MEMORY[0x277D5BED0];
LABEL_12:
  v63 = *v51;
  v64 = sub_268567E60();
  OUTLINED_FUNCTION_17_2(v64);
  v66 = v75;
  (*(v65 + 104))(v75, v63, v64);
  v67 = v66;
  v68 = 0;
  v69 = v64;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v67, v68, 1, v69);
  sub_268568020();
  OUTLINED_FUNCTION_2_18();
  return sub_2684EB8E0(v37, v70);
}

uint64_t sub_268529F9C()
{
  OUTLINED_FUNCTION_5();
  v1[34] = v2;
  v1[35] = v0;
  v3 = sub_268567D90();
  v1[36] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[37] = v4;
  v6 = *(v5 + 64);
  v1[38] = OUTLINED_FUNCTION_50();
  v1[39] = swift_task_alloc();
  v7 = sub_2685688F0();
  v1[40] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[41] = v8;
  v10 = *(v9 + 64);
  v1[42] = OUTLINED_FUNCTION_39();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283588, &qword_26856E188);
  v1[43] = v11;
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  v1[44] = OUTLINED_FUNCTION_50();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v14 = sub_2685679B0();
  v1[48] = v14;
  OUTLINED_FUNCTION_2_4(v14);
  v1[49] = v15;
  v17 = *(v16 + 64);
  v1[50] = OUTLINED_FUNCTION_39();
  v18 = sub_268567B60();
  v1[51] = v18;
  OUTLINED_FUNCTION_2_4(v18);
  v1[52] = v19;
  v21 = *(v20 + 64);
  v1[53] = OUTLINED_FUNCTION_39();
  v22 = sub_2685689F0();
  v1[54] = v22;
  OUTLINED_FUNCTION_2_4(v22);
  v1[55] = v23;
  v25 = *(v24 + 64);
  v1[56] = OUTLINED_FUNCTION_50();
  v1[57] = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_26852A1DC()
{
  if (*(*(v0 + 280) + 169) != 1)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v185 = (v0 + 256);
    v65 = *(v0 + 440);
    v64 = *(v0 + 448);
    OUTLINED_FUNCTION_38(*(v0 + 432), qword_28028B348);
    v66 = *(v65 + 16);
    v67 = OUTLINED_FUNCTION_31_6();
    v68(v67);
    v69 = sub_2685689E0();
    sub_268568DC0();
    OUTLINED_FUNCTION_37_3();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_2684CA000, v69, v64, "RNYesNoPromptStrategy makeFlowCancelledResponse | cancellation response executing", v71, 2u);
      OUTLINED_FUNCTION_2();
    }

    v73 = *(v0 + 440);
    v72 = *(v0 + 448);
    v75 = *(v0 + 424);
    v74 = *(v0 + 432);
    v77 = *(v0 + 408);
    v76 = *(v0 + 416);
    v78 = *(v0 + 392);
    v79 = *(v0 + 400);
    v80 = *(v0 + 384);
    v82 = *(v0 + 352);
    v81 = *(v0 + 360);
    OUTLINED_FUNCTION_13_12();
    v83 = *(v73 + 8);
    v84 = OUTLINED_FUNCTION_26_6();
    v85(v84);
    sub_268567990();
    v86 = *(v0 + 40);
    v87 = *(v0 + 48);
    OUTLINED_FUNCTION_18_7((v0 + 16));
    (*(v76 + 104))(v75, *MEMORY[0x277D5BC08], v77);
    (*(v78 + 104))(v79, *MEMORY[0x277D5B950]);
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_6_17();
    sub_2684EBB74(v88, v89, v90, v91, v92, v93, v94, v95, v151, v156);
    OUTLINED_FUNCTION_44_1();

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_2685687C0();
    type metadata accessor for RNYesNoPromptStrategy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v97 = [objc_opt_self() bundleForClass_];
    sub_2685686F0();
    sub_2685685F0();
    v98 = sub_2685685D0();
    v106 = OUTLINED_FUNCTION_32_4(v98, v99, v100, v101, v102, v103, v104, v105, v154, v159, v161, v164, v167, v170, v173, v176, v179, v182);

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_268568AD0();
    sub_2685688E0();
    OUTLINED_FUNCTION_45(v97, 0xD00000000000001CLL, 0x8000000268573350, v107, v108, v0 + 56);

    (*(v172 + 8))(v166, v175);
    sub_2684EB7C8(v0 + 56, &qword_280282DB0, &unk_26856B440);
    sub_26852B12C(v169, v178);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v44 = *(v0 + 352);
    v45 = *(v0 + 360);
    if (EnumCaseMultiPayload != 1)
    {
      v48 = *(v0 + 296);
      v121 = *(v0 + 304);
      v122 = *(v0 + 280);
      v123 = *(v0 + 288);
      v124 = *(v0 + 272);
      v125 = OUTLINED_FUNCTION_36_2();
      v127 = v126(v125);
      OUTLINED_FUNCTION_34_3(v127, v128, v129, v130, v131, v132, v133, v134, v155, v160, v163, v166, v169, v172, v175, v178, v181, v184);
      v135 = sub_2685680C0();
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      *(v0 + 128) = 0;
      v136 = MEMORY[0x277D5C1D8];
      v124[3] = v135;
      v124[4] = v136;
      __swift_allocate_boxed_opaque_existential_0(v124);
      sub_268567BC0();
      v63 = v0 + 96;
      goto LABEL_15;
    }

LABEL_13:
    *v185 = *v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    swift_willThrowTypedImpl();
    sub_2684EB7C8(v45, &qword_280283588, &qword_26856E188);
    v111 = *(v0 + 448);
    v110 = *(v0 + 456);
    v112 = *(v0 + 424);
    v113 = *(v0 + 400);
    v115 = *(v0 + 368);
    v114 = *(v0 + 376);
    v117 = *(v0 + 352);
    v116 = *(v0 + 360);
    v118 = *(v0 + 336);
    v119 = *(v0 + 312);
    v186 = *(v0 + 304);

    OUTLINED_FUNCTION_9_1();
    goto LABEL_16;
  }

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v185 = (v0 + 264);
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);
  OUTLINED_FUNCTION_38(*(v0 + 432), qword_28028B348);
  (*(v2 + 16))(v1);
  v3 = sub_2685689E0();
  sub_268568DC0();
  OUTLINED_FUNCTION_37_3();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2684CA000, v3, v1, "RNYesNoPromptStrategy makeFlowCancelledResponse | unsupported action response executing", v5, 2u);
    OUTLINED_FUNCTION_2();
  }

  v6 = *(v0 + 456);
  v8 = *(v0 + 432);
  v7 = *(v0 + 440);
  v9 = *(v0 + 416);
  v10 = *(v0 + 424);
  v12 = *(v0 + 400);
  v11 = *(v0 + 408);
  v13 = *(v0 + 384);
  v14 = *(v0 + 392);
  v16 = *(v0 + 368);
  v15 = *(v0 + 376);
  OUTLINED_FUNCTION_13_12();
  v17 = *(v7 + 8);
  v18 = OUTLINED_FUNCTION_26_6();
  v19(v18);
  sub_268567990();
  v20 = *(v0 + 160);
  v21 = *(v0 + 168);
  OUTLINED_FUNCTION_18_7((v0 + 136));
  (*(v9 + 104))(v10, *MEMORY[0x277D5BC08], v11);
  (*(v14 + 104))(v12, *MEMORY[0x277D5B930]);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_6_17();
  sub_2684EBB74(v22, v23, v24, v25, v26, v27, v28, v29, v151, v156);
  OUTLINED_FUNCTION_44_1();

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  sub_2685687C0();
  type metadata accessor for RNYesNoPromptStrategy();
  v30 = swift_getObjCClassFromMetadata();
  v31 = [objc_opt_self() bundleForClass_];
  sub_2685686F0();
  sub_2685685F0();
  v32 = sub_2685685D0();
  v40 = OUTLINED_FUNCTION_32_4(v32, v33, v34, v35, v36, v37, v38, v39, v152, v157, v161, v164, v167, v170, v173, v176, v179, v182);

  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_268568AD0();
  sub_2685688E0();
  OUTLINED_FUNCTION_45(v31, 0xD000000000000032, 0x8000000268573370, v41, v42, v0 + 176);

  (*(v171 + 8))(v165, v174);
  sub_2684EB7C8(v0 + 176, &qword_280282DB0, &unk_26856B440);
  sub_26852B12C(v168, v177);
  v43 = swift_getEnumCaseMultiPayload();
  v44 = *(v0 + 368);
  v45 = *(v0 + 376);
  if (v43 == 1)
  {
    goto LABEL_13;
  }

  v46 = *(v0 + 312);
  v47 = *(v0 + 288);
  v48 = *(v0 + 296);
  v50 = *(v0 + 272);
  v49 = *(v0 + 280);
  v51 = OUTLINED_FUNCTION_36_2();
  v53 = v52(v51);
  OUTLINED_FUNCTION_34_3(v53, v54, v55, v56, v57, v58, v59, v60, v153, v158, v162, v165, v168, v171, v174, v177, v180, v183);
  v61 = sub_2685680C0();
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  v62 = MEMORY[0x277D5C1D8];
  v50[3] = v61;
  v50[4] = v62;
  __swift_allocate_boxed_opaque_existential_0(v50);
  sub_268567BC0();
  v63 = v0 + 216;
LABEL_15:
  sub_2684EB7C8(v63, &qword_280282F30, &qword_26856DAD0);
  v137 = *(v48 + 8);
  v138 = OUTLINED_FUNCTION_26_6();
  v139(v138);
  sub_2684EB7C8(v45, &qword_280283588, &qword_26856E188);
  v141 = *(v0 + 448);
  v140 = *(v0 + 456);
  v142 = *(v0 + 424);
  v143 = *(v0 + 400);
  v145 = *(v0 + 368);
  v144 = *(v0 + 376);
  v147 = *(v0 + 352);
  v146 = *(v0 + 360);
  v148 = *(v0 + 336);
  v149 = *(v0 + 312);
  v187 = *(v0 + 304);

  OUTLINED_FUNCTION_9_1();
LABEL_16:

  return v120();
}

uint64_t sub_26852AA44()
{
  v1 = *(v0 + 24);

  sub_2684CC8D4(v0 + 32);
  v2 = *(v0 + 160);

  return v0;
}

uint64_t sub_26852AA74()
{
  sub_26852AA44();

  return MEMORY[0x2821FE8D8](v0, 170, 7);
}

uint64_t sub_26852AAD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684FF230;

  return sub_26852773C();
}

uint64_t sub_26852AB74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26852B24C;

  return sub_268528DF8();
}

uint64_t sub_26852AC1C(uint64_t a1)
{
  v3 = *(MEMORY[0x277D5B388] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = type metadata accessor for RNYesNoPromptStrategy();
  v7 = sub_26852B19C(&qword_280283580, v6, type metadata accessor for RNYesNoPromptStrategy);
  *v4 = v1;
  v4[1] = sub_26852B24C;

  return MEMORY[0x2821B9C20](a1, v5, v7);
}

uint64_t sub_26852AD04(uint64_t a1)
{
  v3 = *(MEMORY[0x277D5B390] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = type metadata accessor for RNYesNoPromptStrategy();
  v7 = sub_26852B19C(&qword_280283580, v6, type metadata accessor for RNYesNoPromptStrategy);
  *v4 = v1;
  v4[1] = sub_26852B24C;

  return MEMORY[0x2821B9C28](a1, v5, v7);
}

uint64_t sub_26852ADEC(uint64_t a1)
{
  v3 = *(MEMORY[0x277D5B398] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = type metadata accessor for RNYesNoPromptStrategy();
  v7 = sub_26852B19C(&qword_280283580, v6, type metadata accessor for RNYesNoPromptStrategy);
  *v4 = v1;
  v4[1] = sub_26852B24C;

  return MEMORY[0x2821B9C30](a1, v5, v7);
}

uint64_t sub_26852AED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B648] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26852B24C;

  return MEMORY[0x2821BA030](a1, a2, a3);
}

uint64_t sub_26852AF88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26852B24C;

  return sub_268529F9C();
}

uint64_t sub_26852B020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B650] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26852B24C;

  return MEMORY[0x2821BA038](a1, a2, a3, a4);
}

uint64_t sub_26852B12C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283588, &qword_26856E188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26852B19C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_26852B1E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_13_12()
{
  v6 = v0[43];
  v3 = v0[42];
  v4 = v0[41];
  v5 = v0[40];
  v7 = v0[35];
}

uint64_t OUTLINED_FUNCTION_18_7(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_268567A20();
}

void OUTLINED_FUNCTION_21_5()
{
  v1 = v0[23];
  v2 = v0[14];
  v3 = v0[2];
}

uint64_t OUTLINED_FUNCTION_32_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return sub_268516318(a18 + 72, a1);
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return sub_2685679A0();
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18 + 104);
  __swift_project_boxed_opaque_existential_1((a18 + 72), *(v18 + 96));

  return sub_268567A90();
}

uint64_t OUTLINED_FUNCTION_39_2()
{
  v1 = *(v0 - 160);
  v2 = *(*(v0 - 168) + 104);
  return *(v0 - 152);
}

uint64_t OUTLINED_FUNCTION_43_0()
{
  result = v0;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return sub_2685679A0();
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return MEMORY[0x2821B7E38](a1, a2, a3, v7, v6, a6, v8);
}

void OUTLINED_FUNCTION_46_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_26852B4B8()
{
  if (qword_280282990 != -1)
  {
    OUTLINED_FUNCTION_1_17();
  }

  type metadata accessor for NotificationNLv3Intent();
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  v0 = 0;
  switch(v2)
  {
    case 1:
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_7_20();
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_8_14();
      goto LABEL_6;
    case 4:
      return v0 & 1;
    default:
LABEL_6:
      OUTLINED_FUNCTION_13_13();
      OUTLINED_FUNCTION_6_18();
LABEL_7:

      v0 = 1;
      return v0 & 1;
  }
}

uint64_t sub_26852B5A8()
{
  if (qword_280282990 != -1)
  {
    OUTLINED_FUNCTION_1_17();
  }

  type metadata accessor for NotificationNLv3Intent();
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  v0 = 1;
  v1 = 0;
  switch(v3)
  {
    case 2:
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_8_14();
      goto LABEL_5;
    case 4:
      return v1 & 1;
    default:
LABEL_5:
      v0 = OUTLINED_FUNCTION_12_13();
LABEL_6:

      v1 = v0;
      return v1 & 1;
  }
}

uint64_t sub_26852B6A4()
{
  if (qword_280282998 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  type metadata accessor for NotificationNLv3Intent();
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  v0 = 0;
  switch(v2)
  {
    case 2:
      OUTLINED_FUNCTION_10_10();
      goto LABEL_5;
    case 3:
      goto LABEL_6;
    case 4:
      return v0 & 1;
    default:
LABEL_5:
      sub_2685691C0();
      OUTLINED_FUNCTION_6_18();
LABEL_6:

      v0 = 1;
      return v0 & 1;
  }
}

uint64_t sub_26852B7A4()
{
  if (qword_280282990 != -1)
  {
    OUTLINED_FUNCTION_1_17();
  }

  type metadata accessor for NotificationNLv3Intent();
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  v0 = 0;
  switch(v2)
  {
    case 2:
      OUTLINED_FUNCTION_7_20();
      goto LABEL_5;
    case 3:
      goto LABEL_6;
    case 4:
      return v0 & 1;
    default:
LABEL_5:
      sub_2685691C0();
      OUTLINED_FUNCTION_6_18();
LABEL_6:

      v0 = 1;
      return v0 & 1;
  }
}

uint64_t sub_26852B8AC()
{
  if (qword_280282998 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  type metadata accessor for NotificationNLv3Intent();
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  v0 = 0;
  switch(v2)
  {
    case 1:
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_10_10();
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_11_11();
LABEL_6:
      OUTLINED_FUNCTION_12_13();
      OUTLINED_FUNCTION_6_18();
      goto LABEL_7;
    case 4:
      return v0 & 1;
    default:
LABEL_7:

      v0 = 1;
      return v0 & 1;
  }
}

uint64_t sub_26852B998()
{
  if (qword_280282998 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  type metadata accessor for NotificationNLv3Intent();
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  v0 = 0;
  switch(v2)
  {
    case 1:
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_10_10();
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_11_11();
      goto LABEL_6;
    case 4:
      return v0 & 1;
    default:
LABEL_6:
      sub_2685691C0();
      OUTLINED_FUNCTION_6_18();
LABEL_7:

      v0 = 1;
      return v0 & 1;
  }
}

uint64_t sub_26852BAB4()
{
  if (qword_280282998 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  type metadata accessor for NotificationNLv3Intent();
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  v0 = 0;
  switch(v2)
  {
    case 2:
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_11_11();
      goto LABEL_5;
    case 4:
      return v0 & 1;
    default:
LABEL_5:
      sub_2685691C0();
      OUTLINED_FUNCTION_6_18();
LABEL_6:

      v0 = 1;
      return v0 & 1;
  }
}

BOOL sub_26852BBD8(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  type metadata accessor for NotificationNLv3Intent();
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  return (v5 & 1) == 0;
}

BOOL sub_26852BC4C()
{
  if (qword_280282988 != -1)
  {
    OUTLINED_FUNCTION_5_18();
  }

  type metadata accessor for NotificationNLv3Intent();
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_9_16();
  switch(v9)
  {
    case 1:
      goto LABEL_5;
    case 2:
    case 3:
      OUTLINED_FUNCTION_3_17();
LABEL_5:
      v0 = sub_2685691C0();

      if ((v0 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 4:
LABEL_6:
      OUTLINED_FUNCTION_9_16();
      switch(v8)
      {
        case 1:
          goto LABEL_12;
        case 2:
        case 3:
          OUTLINED_FUNCTION_3_17();
          goto LABEL_8;
        case 4:
          goto LABEL_9;
        default:
LABEL_8:
          v1 = sub_2685691C0();

          if (v1)
          {
            goto LABEL_13;
          }

LABEL_9:
          OUTLINED_FUNCTION_9_16();
          switch(v7)
          {
            case 2:
              goto LABEL_12;
            case 4:
              break;
            default:
              v2 = sub_2685691C0();

              if (v2)
              {
                goto LABEL_13;
              }

              break;
          }

          OUTLINED_FUNCTION_9_16();
          result = 0;
          switch(v6)
          {
            case 3:
              goto LABEL_12;
            case 4:
              return result;
            default:
              v4 = sub_2685691C0();

              result = 0;
              if (v4)
              {
                goto LABEL_13;
              }

              break;
          }

          break;
      }

      break;
    default:
LABEL_12:

LABEL_13:
      if (qword_280282990 != -1)
      {
        OUTLINED_FUNCTION_1_17();
      }

      sub_2685683A0();
      result = v5 == 4;
      break;
  }

  return result;
}

BOOL sub_26852BF90()
{
  if (qword_280282990 != -1)
  {
    OUTLINED_FUNCTION_1_17();
  }

  type metadata accessor for NotificationNLv3Intent();
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  sub_2685683A0();
  v0 = 0;
  switch(v4)
  {
    case 1:

      goto LABEL_8;
    case 2:
      OUTLINED_FUNCTION_7_20();
      goto LABEL_7;
    case 3:
      OUTLINED_FUNCTION_8_14();
      goto LABEL_7;
    case 4:
      return v0;
    default:
LABEL_7:
      v1 = OUTLINED_FUNCTION_13_13();

      v0 = 0;
      if (v1)
      {
LABEL_8:
        if (qword_280282988 != -1)
        {
          OUTLINED_FUNCTION_5_18();
        }

        sub_2685683A0();
        return v3 == 4;
      }

      return v0;
  }
}

uint64_t sub_26852C0E8()
{
  if (qword_280282990 != -1)
  {
    OUTLINED_FUNCTION_1_17();
  }

  type metadata accessor for NotificationNLv3Intent();
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  v0 = 0;
  switch(v2)
  {
    case 1:
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_7_20();
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_8_14();
LABEL_6:
      OUTLINED_FUNCTION_12_13();
      OUTLINED_FUNCTION_6_18();
      goto LABEL_7;
    case 4:
      return v0 & 1;
    default:
LABEL_7:

      v0 = 1;
      return v0 & 1;
  }
}

uint64_t sub_26852C1E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835E8, &qword_26856E1B8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268568290();
  qword_280283590 = result;
  return result;
}

uint64_t sub_26852C248()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835D0, &qword_26856E1A0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268568290();
  qword_280283598 = result;
  return result;
}

uint64_t sub_26852C2B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835D8, &qword_26856E1A8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268568290();
  qword_2802835A0 = result;
  return result;
}

uint64_t sub_26852C318()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835E0, &qword_26856E1B0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268568290();
  qword_2802835A8 = result;
  return result;
}

uint64_t sub_26852C380()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835F0, &qword_26856E1C0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268568290();
  qword_2802835B0 = result;
  return result;
}

uint64_t sub_26852C3E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835F8, &qword_26856E1C8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268568290();
  qword_2802835B8 = result;
  return result;
}

uint64_t sub_26852C458()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802836E0, &qword_26856E8E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26856A540;
  if (qword_2802829B0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802835B8;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835F8, &qword_26856E1C8);
  *(v0 + 64) = sub_26852DDF0(&qword_280283710, &qword_2802835F8, &qword_26856E1C8);
  *(v0 + 32) = v1;
  v2 = sub_268568250();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  result = sub_268568240();
  qword_2802835C0 = result;
  return result;
}

uint64_t sub_26852C578()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802836E0, &qword_26856E8E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26856E190;
  if (qword_2802829B8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802835C0;
  v2 = sub_268568250();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_280282988;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_280283590;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835E8, &qword_26856E1B8);
  *(v0 + 104) = sub_26852DDF0(&qword_2802836E8, &qword_2802835E8, &qword_26856E1B8);
  *(v0 + 72) = v5;
  v6 = qword_280282990;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_280283598;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835D0, &qword_26856E1A0);
  *(v0 + 144) = sub_26852DDF0(&qword_2802836F0, &qword_2802835D0, &qword_26856E1A0);
  *(v0 + 112) = v7;
  v8 = qword_280282998;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_2802835A0;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835D8, &qword_26856E1A8);
  *(v0 + 184) = sub_26852DDF0(&qword_2802836F8, &qword_2802835D8, &qword_26856E1A8);
  *(v0 + 152) = v9;
  v10 = qword_2802829A0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_2802835A8;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835E0, &qword_26856E1B0);
  *(v0 + 224) = sub_26852DDF0(&qword_280283700, &qword_2802835E0, &qword_26856E1B0);
  *(v0 + 192) = v11;
  v12 = qword_2802829A8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_2802835B0;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835F0, &qword_26856E1C0);
  *(v0 + 264) = sub_26852DDF0(&qword_280283708, &qword_2802835F0, &qword_26856E1C0);
  *(v0 + 232) = v13;
  v14 = sub_268568280();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  result = sub_268568270();
  qword_2802835C8 = result;
  return result;
}

uint64_t sub_26852C940()
{
  if (qword_2802829C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26852C99C()
{
  v0 = sub_2685690D0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26852C9F4(char a1)
{
  result = 0x7472656C61;
  switch(a1)
  {
    case 1:
      result = 0x737472656C61;
      break;
    case 2:
    case 3:
      result = 0x6163696669746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26852CAA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26852C99C();
  *a2 = result;
  return result;
}

uint64_t sub_26852CAD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26852C9F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_26852CB04@<X0>(void *a1@<X8>)
{
  result = sub_26852C9E8();
  *a1 = result;
  return result;
}

uint64_t sub_26852CB6C()
{
  v0 = sub_2685690D0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26852CBC4(char a1)
{
  result = 0x6574656C6564;
  switch(a1)
  {
    case 1:
      result = 1684104562;
      break;
    case 2:
      result = OUTLINED_FUNCTION_7_20();
      break;
    case 3:
      result = OUTLINED_FUNCTION_8_14();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26852CC50()
{
  v0 = sub_2685690D0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26852CCA8(char a1)
{
  result = 0x6C65636E6163;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 1885956979;
      break;
    case 3:
      result = 7562617;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_26852CD1C()
{
  v0 = sub_2685690D0();

  return v0 != 0;
}

BOOL sub_26852CD80()
{
  v0 = sub_2685690D0();

  return v0 != 0;
}

uint64_t sub_26852CE0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26852CB6C();
  *a2 = result;
  return result;
}

uint64_t sub_26852CE3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26852CBC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t type metadata accessor for NotificationNLv3Intent()
{
  result = qword_280283600;
  if (!qword_280283600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_26852CEB4@<X0>(void *a1@<X8>)
{
  result = sub_26852CBB8();
  *a1 = result;
  return result;
}

uint64_t sub_26852CF40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26852CC50();
  *a2 = result;
  return result;
}

uint64_t sub_26852CF70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26852CCA8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_26852CF9C@<X0>(void *a1@<X8>)
{
  result = sub_26852CC9C();
  *a1 = result;
  return result;
}

BOOL sub_26852D010@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26852CD1C();
  *a2 = result;
  return result;
}

uint64_t sub_26852D044@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26852CD70();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_26852D06C@<X0>(void *a1@<X8>)
{
  result = sub_26852CD64();
  *a1 = result;
  return result;
}

BOOL sub_26852D0E0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26852CD80();
  *a2 = result;
  return result;
}

uint64_t sub_26852D114@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26852CDD4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *sub_26852D164(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x26852D200);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_26852D250(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26852D31CLL);
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

uint64_t sub_26852D368(uint64_t a1, uint64_t a2)
{
  v4 = sub_268568560();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_26852D3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_268568560();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_26852D410()
{
  result = sub_268568560();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_26852D47C@<X0>(void *a1@<X8>)
{
  result = sub_26852CDC8();
  *a1 = result;
  return result;
}

uint64_t sub_26852D4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4();
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t sub_26852D574@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268568560();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26852D5F4(uint64_t a1)
{
  v2 = sub_26852DE38(&qword_280282DF8);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_26852D65C(uint64_t a1)
{
  v2 = sub_26852DE38(&qword_280282DF8);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_26852D6B4()
{
  sub_26852DE38(&qword_280282DF8);

  return sub_268568310();
}

unint64_t sub_26852D710()
{
  result = qword_280283610;
  if (!qword_280283610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283610);
  }

  return result;
}

unint64_t sub_26852D7AC()
{
  result = qword_280283628;
  if (!qword_280283628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283628);
  }

  return result;
}

unint64_t sub_26852D804()
{
  result = qword_280283630;
  if (!qword_280283630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283630);
  }

  return result;
}

unint64_t sub_26852D85C()
{
  result = qword_280283638;
  if (!qword_280283638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283638);
  }

  return result;
}

unint64_t sub_26852D8F8()
{
  result = qword_280283650;
  if (!qword_280283650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283650);
  }

  return result;
}

unint64_t sub_26852D950()
{
  result = qword_280283658;
  if (!qword_280283658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283658);
  }

  return result;
}

unint64_t sub_26852D9A8()
{
  result = qword_280283660;
  if (!qword_280283660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283660);
  }

  return result;
}

unint64_t sub_26852DA44()
{
  result = qword_280283678;
  if (!qword_280283678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283678);
  }

  return result;
}

unint64_t sub_26852DA9C()
{
  result = qword_280283680;
  if (!qword_280283680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283680);
  }

  return result;
}

unint64_t sub_26852DAF4()
{
  result = qword_280283688;
  if (!qword_280283688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283688);
  }

  return result;
}

unint64_t sub_26852DB90()
{
  result = qword_2802836A0;
  if (!qword_2802836A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802836A0);
  }

  return result;
}

unint64_t sub_26852DBE8()
{
  result = qword_2802836A8;
  if (!qword_2802836A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802836A8);
  }

  return result;
}

unint64_t sub_26852DC40()
{
  result = qword_2802836B0;
  if (!qword_2802836B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802836B0);
  }

  return result;
}

unint64_t sub_26852DCDC()
{
  result = qword_2802836C8;
  if (!qword_2802836C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802836C8);
  }

  return result;
}

unint64_t sub_26852DD34()
{
  result = qword_2802836D0;
  if (!qword_2802836D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802836D0);
  }

  return result;
}

uint64_t sub_26852DDF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26852DE38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NotificationNLv3Intent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26852DE7C()
{
  result = qword_280283718;
  if (!qword_280283718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283718);
  }

  return result;
}

unint64_t sub_26852DED0()
{
  result = qword_280283720;
  if (!qword_280283720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283720);
  }

  return result;
}

unint64_t sub_26852DF24()
{
  result = qword_280283728;
  if (!qword_280283728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283728);
  }

  return result;
}

unint64_t sub_26852DF78()
{
  result = qword_280283730;
  if (!qword_280283730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283730);
  }

  return result;
}

unint64_t sub_26852DFCC()
{
  result = qword_280283738;
  if (!qword_280283738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283738);
  }

  return result;
}

unint64_t sub_26852E020()
{
  result = qword_280283740;
  if (!qword_280283740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283740);
  }

  return result;
}

unint64_t sub_26852E074()
{
  result = qword_280283748;
  if (!qword_280283748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283748);
  }

  return result;
}

unint64_t sub_26852E0C8()
{
  result = qword_280283750;
  if (!qword_280283750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283750);
  }

  return result;
}

unint64_t sub_26852E11C()
{
  result = qword_280283758;
  if (!qword_280283758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283758);
  }

  return result;
}

unint64_t sub_26852E170()
{
  result = qword_280283760;
  if (!qword_280283760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283760);
  }

  return result;
}

unint64_t sub_26852E1C4()
{
  result = qword_280283768;
  if (!qword_280283768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283768);
  }

  return result;
}

unint64_t sub_26852E218()
{
  result = qword_280283770;
  if (!qword_280283770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283770);
  }

  return result;
}

unint64_t sub_26852E26C()
{
  result = qword_280283778;
  if (!qword_280283778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283778);
  }

  return result;
}

unint64_t sub_26852E2C0()
{
  result = qword_280283780;
  if (!qword_280283780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283780);
  }

  return result;
}

unint64_t sub_26852E314()
{
  result = qword_280283788;
  if (!qword_280283788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283788);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_19(unint64_t *a1)
{

  return sub_26852DE38(a1);
}

uint64_t OUTLINED_FUNCTION_1_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return sub_2685683A0();
}

uint64_t OUTLINED_FUNCTION_5_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return sub_2685683A0();
}

uint64_t OUTLINED_FUNCTION_12_13()
{

  return sub_2685691C0();
}

uint64_t OUTLINED_FUNCTION_13_13()
{

  return sub_2685691C0();
}

uint64_t sub_26852E4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v35 = a6;
  v36 = a7;
  v33 = a4;
  v34 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837D0, &unk_26856EB20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v33 - v14);
  v16 = qword_280282FA8;
  v17 = sub_268567E60();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v8 + v16, a3, v17);
  *v15 = a1;
  sub_2684D57FC(a2 + 80, v40);
  v19 = sub_268567D00();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();

  v22 = sub_268567CF0();
  v38 = v19;
  v39 = MEMORY[0x277D5BD58];
  v37 = v22;
  v23 = sub_268567840();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_268567830();
  v27 = MEMORY[0x277D5B808];
  v15[4] = v23;
  v15[5] = v27;

  v15[1] = v26;
  (*(v18 + 8))(a3, v17);
  sub_2684CC8D4(a2);
  swift_storeEnumTagMultiPayload();
  sub_268532988(v15, v8 + *(*v8 + 120));
  v28 = (v8 + qword_28028B370);
  v29 = v34;
  *v28 = v33;
  v28[1] = v29;
  v30 = (v8 + qword_28028B378);
  v31 = v36;
  *v30 = v35;
  v30[1] = v31;
  return v8;
}

uint64_t sub_26852E700@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v54 - v12;
  v14 = *a1;
  v15 = type metadata accessor for NotificationsApp.Builder(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_268518184();
  v18 = sub_2684DEAF0(v14);
  v58 = v2;
  v55 = v11;
  v56 = a2;
  if (v18)
  {
    v19 = v18;
    v57 = MEMORY[0x277D84F90];
    result = sub_268569040();
    if (v19 < 0)
    {
      __break(1u);
      return result;
    }

    v21 = 0;
    v22 = v14 & 0xC000000000000001;
    do
    {
      if (v22)
      {
        MEMORY[0x26D61C170](v21, v14);
      }

      else
      {
        v23 = *(v14 + 8 * v21 + 32);
      }

      ++v21;
      sub_268555B38();

      sub_268569020();
      v24 = *(v57 + 16);
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    while (v19 != v21);
    v25 = v57;
  }

  else
  {
    v22 = v14 & 0xC000000000000001;
    v25 = MEMORY[0x277D84F90];
  }

  v26 = sub_268518208(v25);

  sub_2684DEAFC(0, v22 == 0, v14);
  if (v22)
  {
    v48 = MEMORY[0x26D61C170](0, v14);
    v50 = *(v48 + 16);
    v49 = *(v48 + 24);

    swift_unknownObjectRelease();
    v51 = MEMORY[0x26D61C170](0, v14);
    v52 = *(v51 + 16);
    v53 = *(v51 + 24);
  }

  else
  {
    v27 = *(v14 + 32);
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);
  }

  sub_2685687F0();
  sub_268568810();
  OUTLINED_FUNCTION_29_4();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  v34 = OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appId;
  OUTLINED_FUNCTION_33_2();
  sub_268532644(v13, v26 + v34);
  swift_endAccess();
  sub_2684D199C(v13, &qword_280282AF0, &qword_26856A1E0);
  if (v22)
  {
    v35 = MEMORY[0x26D61C170](0, v14);
  }

  else
  {
    v35 = *(v14 + 32);
  }

  v37 = v55;
  v36 = v56;
  v38 = *(v35 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type);
  v39 = *(v35 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type + 8);

  sub_268568BB0();

  OUTLINED_FUNCTION_29_4();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v44 = OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appName;
  OUTLINED_FUNCTION_33_2();
  sub_268532644(v37, v26 + v44);
  swift_endAccess();
  sub_2684D199C(v37, &qword_280282AF0, &qword_26856A1E0);
  v45 = type metadata accessor for NotificationsApp(0);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  result = sub_2685182C0(v26);
  *v36 = result;
  return result;
}

uint64_t sub_26852EA90()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  v5 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_5(v5);
  v6 = sub_268567F20();
  v1[4] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[5] = v7;
  v9 = *(v8 + 64);
  v1[6] = OUTLINED_FUNCTION_39();
  v10 = sub_2685689F0();
  v1[7] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[8] = v11;
  v13 = *(v12 + 64);
  v1[9] = OUTLINED_FUNCTION_39();
  v14 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26852EB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_24_8();
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v14 = v12[8];
  v13 = v12[9];
  __swift_project_value_buffer(v12[7], qword_28028B348);
  v15 = OUTLINED_FUNCTION_12_2();
  v16(v15);
  sub_2685689E0();
  v17 = sub_268568DE0();
  if (OUTLINED_FUNCTION_29(v17))
  {
    v18 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v18);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v19, v20, "RNReadNotificationsFromMultipleAppsPatternFlowProvider makeEmptyResultSetFlow | Empty result set flow should never be run");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_14_6();
  v21 = OUTLINED_FUNCTION_20_6();
  v22(v21);
  OUTLINED_FUNCTION_21_6();
  v23 = [objc_allocWithZone(MEMORY[0x277D052D0]) init];
  sub_268567B00();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_12_14();

  v24 = OUTLINED_FUNCTION_19_7();
  v25(v24);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_33();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_26852ECF4()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  v5 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_5(v5);
  v6 = sub_268567F20();
  v1[4] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[5] = v7;
  v9 = *(v8 + 64);
  v1[6] = OUTLINED_FUNCTION_39();
  v10 = sub_2685689F0();
  v1[7] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[8] = v11;
  v13 = *(v12 + 64);
  v1[9] = OUTLINED_FUNCTION_39();
  v14 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26852EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_24_8();
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v14 = v12[8];
  v13 = v12[9];
  __swift_project_value_buffer(v12[7], qword_28028B348);
  v15 = OUTLINED_FUNCTION_12_2();
  v16(v15);
  sub_2685689E0();
  v17 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v17))
  {
    v18 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v18);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v19, v20, "RNReadNotificationsFromMultipleAppsPatternFlowProvider makeSingleItemFlow | Single result set flow should never be run");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_14_6();
  v21 = OUTLINED_FUNCTION_20_6();
  v22(v21);
  OUTLINED_FUNCTION_21_6();
  v23 = [objc_allocWithZone(MEMORY[0x277D052D0]) init];
  sub_268567B00();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_12_14();

  v24 = OUTLINED_FUNCTION_19_7();
  v25(v24);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_33();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_26852EF80()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  v5 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_5(v5);
  v6 = sub_268567F20();
  v1[4] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[5] = v7;
  v9 = *(v8 + 64);
  v1[6] = OUTLINED_FUNCTION_39();
  v10 = sub_2685689F0();
  v1[7] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[8] = v11;
  v13 = *(v12 + 64);
  v1[9] = OUTLINED_FUNCTION_39();
  v14 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26852F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_24_8();
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v14 = v12[8];
  v13 = v12[9];
  __swift_project_value_buffer(v12[7], qword_28028B348);
  v15 = OUTLINED_FUNCTION_12_2();
  v16(v15);
  sub_2685689E0();
  v17 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v17))
  {
    v18 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v18);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v19, v20, "RNReadNotificationsFromMultipleAppsPatternFlowProvider makeAllResultsFlow | All result set flow should never be run");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_14_6();
  v21 = OUTLINED_FUNCTION_20_6();
  v22(v21);
  OUTLINED_FUNCTION_21_6();
  v23 = [objc_allocWithZone(MEMORY[0x277D052D0]) init];
  sub_268567B00();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_12_14();

  v24 = OUTLINED_FUNCTION_19_7();
  v25(v24);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_33();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_26852F1E4()
{
  OUTLINED_FUNCTION_5();
  v1[4] = v2;
  v1[5] = v0;
  OUTLINED_FUNCTION_32_5(v3);
  v4 = sub_2685689F0();
  v1[6] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_39();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837D8, &unk_26856EFD0);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_39();
  v11 = sub_268567A60();
  v1[10] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[11] = v12;
  v14 = *(v13 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_26852F314()
{
  v45 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[4];
  sub_268567A30();
  LOBYTE(v4) = sub_268567A40();
  v5 = *(v3 + 8);
  v5(v1, v2);
  if (v4)
  {
    v0[2] = v0[5];
    v6 = v0[9];
    v7 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837F0, &unk_26856EFE0);
    type metadata accessor for RNReadNotificationsFromMultipleAppsPatternFlowProvider();
    sub_2685329F8(&qword_2802837F8, v8, type metadata accessor for RNReadNotificationsFromMultipleAppsPatternFlowProvider);
    sub_268567810();
    sub_268567EC0();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837E0, &unk_26856EB30);
    v10 = v7;
    v11 = 0;
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v13 = v0[11];
    v12 = v0[12];
    v14 = v0[10];
    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[6];
    v18 = v0[4];
    v19 = __swift_project_value_buffer(v17, qword_28028B348);
    (*(v16 + 16))(v15, v19, v17);
    (*(v13 + 16))(v12, v18, v14);
    v20 = sub_2685689E0();
    v21 = sub_268568DE0();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[12];
    v24 = v0[10];
    v26 = v0[7];
    v25 = v0[8];
    v27 = v0[6];
    if (v22)
    {
      v43 = v0[6];
      v28 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v42;
      *v28 = 136315138;
      sub_2685329F8(&qword_2802837E8, 255, MEMORY[0x277D5B9D0]);
      v40 = v21;
      v29 = sub_2685691A0();
      v41 = v25;
      v31 = v30;
      v5(v23, v24);
      v32 = sub_2684EABEC(v29, v31, &v44);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_2684CA000, v20, v40, "Unsupported promptType '%s'. Will not support windowing.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v26 + 8))(v41, v43);
    }

    else
    {

      v5(v23, v24);
      (*(v26 + 8))(v25, v27);
    }

    v33 = v0[3];
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837E0, &unk_26856EB30);
    v10 = v33;
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
  v35 = v0[12];
  v34 = v0[13];
  v37 = v0[8];
  v36 = v0[9];

  OUTLINED_FUNCTION_9_1();

  return v38();
}

uint64_t sub_26852F6DC()
{
  OUTLINED_FUNCTION_5();
  v1[40] = v2;
  v1[41] = v0;
  v1[39] = v3;
  v4 = sub_268567E60();
  v1[42] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[43] = v5;
  v7 = *(v6 + 64);
  v1[44] = OUTLINED_FUNCTION_39();
  v8 = sub_268567FF0();
  v1[45] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[46] = v9;
  v1[47] = *(v10 + 64);
  v1[48] = OUTLINED_FUNCTION_39();
  v11 = sub_2685689F0();
  v1[49] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[50] = v12;
  v14 = *(v13 + 64);
  v1[51] = OUTLINED_FUNCTION_39();
  v15 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_26852F824()
{
  v87 = v0;
  v1 = v0;
  if (qword_280282960 != -1)
  {
LABEL_64:
    OUTLINED_FUNCTION_0_0();
  }

  v2 = (v1 + 34);
  v4 = v1[50];
  v3 = v1[51];
  v5 = v1[49];
  v6 = v1[40];
  v7 = __swift_project_value_buffer(v5, qword_28028B348);
  (*(v4 + 16))(v3, v7, v5);

  v8 = sub_2685689E0();
  LOBYTE(v4) = sub_268568DC0();

  v9 = os_log_type_enabled(v8, v4);
  v11 = v1[50];
  v10 = v1[51];
  v12 = v1[49];
  if (v9)
  {
    v13 = v1[40];
    v83 = v1[51];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v86 = v15;
    *v14 = 136315138;
    v16 = type metadata accessor for NotificationsApp(0);
    v17 = MEMORY[0x26D61BE70](v13, v16);
    v19 = sub_2684EABEC(v17, v18, &v86);

    *(v14 + 4) = v19;
    OUTLINED_FUNCTION_35_3(&dword_2684CA000, v20, v21, "RNReadNotificationsFromMultipleAppsPatternFlowProvider makeWindowFlow | windowContent: %s");
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v11 + 8))(v83, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v72 = v1;
  v22 = v1[40];
  v23 = sub_2684DEAF0(v22);
  v24 = 0;
  v78 = v22 & 0xFFFFFFFFFFFFFF8;
  v80 = v22 & 0xC000000000000001;
  v25 = MEMORY[0x277D84F90];
  v76 = v22 + 32;
  v73 = v23;
  while (v24 != v23)
  {
    if (v80)
    {
      v26 = MEMORY[0x26D61C170](v24, v72[40]);
    }

    else
    {
      if (v24 >= *(v78 + 16))
      {
        goto LABEL_57;
      }

      v26 = *(v76 + 8 * v24);
    }

    v27 = __OFADD__(v24, 1);
    v28 = v24 + 1;
    if (v27)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v29 = *(v26 + 24);

    v30 = v29 >> 62;
    if (v29 >> 62)
    {
      v1 = sub_2685690A0();
    }

    else
    {
      v1 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v25 >> 62;
    if (v25 >> 62)
    {
      v32 = sub_2685690A0();
    }

    else
    {
      v32 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v1 + v32;
    if (__OFADD__(v32, v1))
    {
      goto LABEL_58;
    }

    v82 = v1;
    v84 = v28;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v31)
      {
LABEL_23:
        sub_2685690A0();
      }

      else
      {
        v34 = v25 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
        v36 = *(v34 + 16);
      }

      OUTLINED_FUNCTION_29_4();
      v25 = sub_268569000();
      v34 = v25 & 0xFFFFFFFFFFFFFF8;
      v35 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_25;
    }

    if (v31)
    {
      goto LABEL_23;
    }

    v34 = v25 & 0xFFFFFFFFFFFFFF8;
    v35 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v35 < v33)
    {
      goto LABEL_22;
    }

LABEL_25:
    v37 = *(v34 + 16);
    v38 = v35 - v37;
    v39 = v34 + 8 * v37;
    if (v30)
    {
      if (!OUTLINED_FUNCTION_34_4())
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_31_5();
      v40 = sub_2685690A0();
      if (v38 < v40)
      {
        goto LABEL_62;
      }

      if (!(v29 >> 62))
      {
        goto LABEL_63;
      }

      v1 = v40;
      v74 = v25;
      v41 = v39 + 32;
      OUTLINED_FUNCTION_2_20();
      sub_26852DDF0(&qword_2802837B0, &qword_280283440, &qword_26856D320);
      for (i = 0; i != v30; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
        v43 = sub_2684DEA8C(v2, i, v29);
        v45 = *v44;

        v43(v2, 0);
        *(v41 + 8 * i) = v45;
      }

      v25 = v74;
      v23 = v73;
LABEL_35:

      v24 = v84;
      if (v1 < v82)
      {
        goto LABEL_59;
      }

      if (v1 > 0)
      {
        v46 = *(v34 + 16);
        v27 = __OFADD__(v46, v1);
        v47 = v1 + v46;
        if (v27)
        {
          goto LABEL_60;
        }

        *(v34 + 16) = v47;
      }
    }

    else
    {
      v1 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v1)
      {
        if (v38 < v1)
        {
          goto LABEL_61;
        }

        type metadata accessor for NotificationsNotification(0);
        swift_arrayInitWithCopy();
        goto LABEL_35;
      }

LABEL_39:

      v24 = v84;
      if (v82 > 0)
      {
        goto LABEL_59;
      }
    }
  }

  v48 = sub_2684DEAF0(v25);
  if (v48)
  {
    v49 = v48;
    v86 = MEMORY[0x277D84F90];
    result = sub_268569040();
    if ((v49 & 0x8000000000000000) == 0)
    {
      sub_2684DB414();
      v51 = 0;
      do
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v52 = MEMORY[0x26D61C170](v51, v25);
        }

        else
        {
          v53 = *(v25 + 8 * v51 + 32);
        }

        ++v51;
        sub_2685646B8(v52);
        sub_268569020();
        v54 = v86[2];
        OUTLINED_FUNCTION_27_6();
        sub_268569050();
        OUTLINED_FUNCTION_27_6();
        sub_268569060();
        sub_268569030();
      }

      while (v49 != v51);

      v55 = v86;
      goto LABEL_53;
    }

    __break(1u);
  }

  else
  {

    v55 = MEMORY[0x277D84F90];
LABEL_53:
    v77 = v55;
    v85 = v72[51];
    v57 = v72[47];
    v56 = v72[48];
    v59 = v72[45];
    v58 = v72[46];
    v60 = v72[43];
    v61 = v72[41];
    v79 = v72[44];
    v81 = v72[42];
    v63 = v72[39];
    v62 = v72[40];
    sub_2684CC878(v61 + 144, (v72 + 2));
    v75 = *(v61 + 312);
    (*(v58 + 16))(v56, v63, v59);
    v64 = (*(v58 + 80) + 24) & ~*(v58 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = v61;
    (*(v58 + 32))(v65 + v64, v56, v59);
    *(v65 + ((v57 + v64 + 7) & 0xFFFFFFFFFFFFFFF8)) = v62;
    type metadata accessor for RNYesNoPromptStrategy();
    swift_allocObject();
    v66 = sub_2685276DC(v72 + 2, v77, v75, &unk_26856EB10, v65);
    sub_2684CC878(v61 + 144, (v72 + 18));
    (*(v60 + 104))(v79, *MEMORY[0x277D5BED8], v81);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837C0, &qword_26856EB18);
    v68 = *(v67 + 48);
    v69 = *(v67 + 52);
    swift_allocObject();
    swift_retain_n();

    v72[38] = sub_26852E4E4(v66, (v72 + 18), v79, sub_268532980, v61, sub_268532A40, v61);
    sub_26852DDF0(&qword_2802837C8, &qword_2802837C0, &qword_26856EB18);
    sub_2685678F0();

    v70 = OUTLINED_FUNCTION_3_18();

    return v71(v70);
  }

  return result;
}

uint64_t sub_26852FFA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26853004C;

  return sub_268530C44();
}

uint64_t sub_26853004C()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_26853013C()
{
  OUTLINED_FUNCTION_5();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_268567B10();
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_39();
  v7 = sub_268567F20();
  v1[11] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_39();
  v11 = sub_2685689F0();
  v1[14] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[15] = v12;
  v14 = *(v13 + 64);
  v1[16] = OUTLINED_FUNCTION_39();
  v15 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_268530250()
{
  v73 = v0;
  if (qword_280282960 != -1)
  {
LABEL_65:
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0;
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = v1[8];
  v6 = __swift_project_value_buffer(v4, qword_28028B348);
  (*(v3 + 16))(v2, v6, v4);

  v7 = sub_2685689E0();
  v8 = sub_268568DC0();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v1[15];
  v10 = v1[16];
  v12 = v1[14];
  if (v9)
  {
    v13 = v1[8];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v72 = v15;
    *v14 = 136315138;
    v16 = type metadata accessor for NotificationsApp(0);
    v17 = MEMORY[0x26D61BE70](v13, v16);
    v19 = sub_2684EABEC(v17, v18, &v72);

    *(v14 + 4) = v19;
    OUTLINED_FUNCTION_35_3(&dword_2684CA000, v20, v21, "RNReadNotificationsFromMultipleAppsPatternFlowProvider makeFinalWindowFlow | windowContent: %s");
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  (*(v11 + 8))(v10, v12);
  v64 = v1;
  if (*(v1[9] + 312))
  {
LABEL_53:
    v57 = MEMORY[0x277D84F90];
LABEL_54:
    v58 = v64[13];
    v59 = v64[10];
    sub_268567AE0();
    *(swift_task_alloc() + 16) = v57;
    sub_268567ED0();

    v60 = swift_task_alloc();
    v64[17] = v60;
    *v60 = v64;
    v60[1] = sub_268530848;
    v61 = v64[8];
    v62 = v64[9];
    v63 = v64[7];

    return sub_268530C44();
  }

  v22 = (v1 + 2);
  v0 = v1[8];
  v23 = sub_2684DEAF0(v0);
  v24 = 0;
  v68 = v0 & 0xFFFFFFFFFFFFFF8;
  v69 = v0 & 0xC000000000000001;
  v25 = MEMORY[0x277D84F90];
  v67 = v0 + 32;
  v65 = v23;
  while (v24 != v23)
  {
    if (v69)
    {
      v0 = MEMORY[0x26D61C170](v24, v64[8]);
    }

    else
    {
      if (v24 >= *(v68 + 16))
      {
        goto LABEL_58;
      }

      v0 = *(v67 + 8 * v24);
    }

    v26 = __OFADD__(v24, 1);
    v27 = v24 + 1;
    if (v26)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v28 = *(v0 + 24);

    v0 = v28 >> 62;
    if (v28 >> 62)
    {
      v29 = sub_2685690A0();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v25 >> 62;
    if (v25 >> 62)
    {
      v31 = sub_2685690A0();
    }

    else
    {
      v31 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v31 + v29;
    if (__OFADD__(v31, v29))
    {
      goto LABEL_59;
    }

    v70 = v29;
    v71 = v27;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v30)
      {
LABEL_23:
        sub_2685690A0();
      }

      else
      {
        v33 = v25 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
        v35 = *(v33 + 16);
      }

      OUTLINED_FUNCTION_29_4();
      v25 = sub_268569000();
      v33 = v25 & 0xFFFFFFFFFFFFFF8;
      v34 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_25;
    }

    if (v30)
    {
      goto LABEL_23;
    }

    v33 = v25 & 0xFFFFFFFFFFFFFF8;
    v34 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v34 < v32)
    {
      goto LABEL_22;
    }

LABEL_25:
    v36 = *(v33 + 16);
    v37 = v34 - v36;
    v38 = v33 + 8 * v36;
    if (v0)
    {
      v40 = OUTLINED_FUNCTION_34_4();
      if (!v40)
      {
        goto LABEL_39;
      }

      v41 = v40;
      v42 = sub_2685690A0();
      if (v37 < v42)
      {
        goto LABEL_63;
      }

      if (v41 < 1)
      {
        goto LABEL_64;
      }

      v39 = v42;
      v66 = v25;
      v43 = v38 + 32;
      OUTLINED_FUNCTION_2_20();
      v0 = sub_26852DDF0(&qword_2802837B0, &qword_280283440, &qword_26856D320);
      for (i = 0; i != v41; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
        v45 = sub_2684DEA8C(v22, i, v28);
        v47 = *v46;

        v45(v22, 0);
        *(v43 + 8 * i) = v47;
      }

      v25 = v66;
      v23 = v65;
LABEL_35:

      v24 = v71;
      if (v39 < v70)
      {
        goto LABEL_60;
      }

      if (v39 > 0)
      {
        v48 = *(v33 + 16);
        v26 = __OFADD__(v48, v39);
        v49 = v48 + v39;
        if (v26)
        {
          goto LABEL_61;
        }

        *(v33 + 16) = v49;
      }
    }

    else
    {
      v0 = v28 & 0xFFFFFFFFFFFFFF8;
      v39 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        if (v37 < v39)
        {
          goto LABEL_62;
        }

        type metadata accessor for NotificationsNotification(0);
        swift_arrayInitWithCopy();
        goto LABEL_35;
      }

LABEL_39:

      v24 = v71;
      if (v70 > 0)
      {
        goto LABEL_60;
      }
    }
  }

  v50 = sub_2684DEAF0(v25);
  if (!v50)
  {

    goto LABEL_53;
  }

  v51 = v50;
  v72 = MEMORY[0x277D84F90];
  result = sub_268569040();
  if ((v51 & 0x8000000000000000) == 0)
  {
    sub_2684DB414();
    v53 = 0;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x26D61C170](v53, v25);
      }

      else
      {
        v55 = *(v25 + 8 * v53 + 32);
      }

      ++v53;
      sub_2685646B8(v54);
      sub_268569020();
      v56 = v72[2];
      OUTLINED_FUNCTION_27_6();
      sub_268569050();
      OUTLINED_FUNCTION_27_6();
      sub_268569060();
      sub_268569030();
    }

    while (v51 != v53);

    v57 = v72;
    goto LABEL_54;
  }

  __break(1u);
  return result;
}

uint64_t sub_268530848(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v5 = v4;
  v6 = *(v4 + 136);
  v7 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v5 + 144) = v1;

  if (v1)
  {
    v9 = sub_268530A58;
  }

  else
  {
    *(v5 + 152) = a1;
    v9 = sub_268530964;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_268530964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_24_8();
  v13 = v12[19];
  v14 = v12[16];
  v16 = v12[12];
  v15 = v12[13];
  v17 = v12[10];
  v18 = v12[11];
  v19 = v12[9];
  v20 = v19[12];
  __swift_project_boxed_opaque_existential_1(v19 + 8, v19[11]);
  v12[6] = sub_268567850();
  sub_268567790();
  sub_2685678E0();

  (*(v16 + 8))(v15, v18);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_33();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}