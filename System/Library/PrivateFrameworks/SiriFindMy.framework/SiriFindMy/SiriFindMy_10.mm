uint64_t sub_266CF11C0()
{
  v1 = v0;
  v2 = sub_266DA9FAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_266DA9FDC();
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v11 = sub_266DA94AC();
  __swift_project_value_buffer(v11, qword_2800CA9F8);

  v12 = sub_266DA948C();
  v13 = sub_266DAAB0C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    v16 = *(v1 + 40);
    v17 = *(v1 + 48);
    v18 = *(v1 + 56);
    v19 = sub_266DAAE0C();
    v31 = v6;
    v20 = v2;
    v21 = v3;
    v22 = v19;
    v24 = v23;

    v25 = sub_266C22A3C(v22, v24, aBlock);

    *(v14 + 4) = v25;
    v3 = v21;
    v2 = v20;
    v6 = v31;
    _os_log_impl(&dword_266C08000, v12, v13, "SessionLifetimeManager<%s>: Session invalidate requested", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x26D5F2480](v15, -1, -1);
    MEMORY[0x26D5F2480](v14, -1, -1);
  }

  else
  {
  }

  v26 = *(v1 + 32);
  aBlock[4] = sub_266CF5378;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_266C73FC4;
  aBlock[3] = &block_descriptor_53;
  v27 = _Block_copy(aBlock);

  v28 = v32;
  sub_266DA9FBC();
  v35 = MEMORY[0x277D84F90];
  sub_266CEDDE0(&qword_28156F010, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAA90, &qword_266DB2250);
  sub_266C230E8(&qword_28156EFF0, &qword_2800CAA90, &qword_266DB2250);
  sub_266DAAD0C();
  MEMORY[0x26D5F1510](0, v28, v6, v27);
  _Block_release(v27);
  (*(v3 + 8))(v6, v2);
  (*(v34 + 8))(v28, v33);
}

void sub_266CF15C8()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = sub_266DA9FAC();
  v7 = OUTLINED_FUNCTION_0_2(v6);
  v47 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  v13 = v12 - v11;
  v14 = sub_266DA9FDC();
  v15 = OUTLINED_FUNCTION_0_2(v14);
  v45 = v16;
  v46 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_6();
  v21 = v20 - v19;
  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v22 = sub_266DA94AC();
  __swift_project_value_buffer(v22, qword_2800CA9F8);

  v23 = sub_266DA948C();
  v24 = sub_266DAAB0C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v43 = v4;
    v26 = swift_slowAlloc();
    v48[0] = v26;
    *v25 = 136315138;
    v27 = *(v5 + 40);
    v28 = *(v5 + 48);
    v29 = *(v5 + 56);
    v30 = sub_266DAAE0C();
    v44 = v21;
    v31 = v13;
    v32 = v6;
    v33 = v2;
    v35 = v34;

    v36 = sub_266C22A3C(v30, v35, v48);
    v2 = v33;
    v6 = v32;
    v13 = v31;
    v21 = v44;

    *(v25 + 4) = v36;
    _os_log_impl(&dword_266C08000, v23, v24, "SessionLifetimeManager<%s>: Session invalidate requested", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v37 = v26;
    v4 = v43;
    MEMORY[0x26D5F2480](v37, -1, -1);
    MEMORY[0x26D5F2480](v25, -1, -1);
  }

  else
  {
  }

  v38 = *(v5 + 32);
  v48[4] = v4;
  v48[5] = v5;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 1107296256;
  v48[2] = sub_266C73FC4;
  v48[3] = v2;
  v39 = _Block_copy(v48);

  sub_266DA9FBC();
  OUTLINED_FUNCTION_19_13();
  sub_266CEDDE0(v40, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAA90, &qword_266DB2250);
  OUTLINED_FUNCTION_6_8();
  sub_266C230E8(v42, &qword_2800CAA90, &qword_266DB2250);
  sub_266DAAD0C();
  MEMORY[0x26D5F1510](0, v21, v13, v39);
  _Block_release(v39);
  (*(v47 + 8))(v13, v6);
  (*(v45 + 8))(v21, v46);

  OUTLINED_FUNCTION_5();
}

void sub_266CF1974(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(a1 + 72);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 72) = 0;

  swift_beginAccess();
  if (*(a1 + 64))
  {
    v4 = *(a1 + 64);

    sub_266D401B0();

    v5 = *(a1 + 64);
  }

  *(a1 + 64) = 0;

  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v6 = sub_266DA94AC();
  __swift_project_value_buffer(v6, qword_2800CA9F8);

  v7 = sub_266DA948C();
  v8 = sub_266DAAB0C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = sub_266DAAE0C();
    v16 = v15;

    v17 = sub_266C22A3C(v14, v16, &v18);

    *(v9 + 4) = v17;
    _os_log_impl(&dword_266C08000, v7, v8, "SessionLifetimeManager<%s>: Session invalidated", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D5F2480](v10, -1, -1);
    MEMORY[0x26D5F2480](v9, -1, -1);
  }

  else
  {
  }
}

void sub_266CF1B58(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(a1 + 184);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 184) = 0;

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  swift_beginAccess();
  sub_266CF5150(v16, a1 + 64);
  swift_endAccess();
  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_2800CA9F8);

  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v16[0] = v8;
    *v7 = 136315138;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = sub_266DAAE0C();
    v14 = v13;

    v15 = sub_266C22A3C(v12, v14, v16);

    *(v7 + 4) = v15;
    _os_log_impl(&dword_266C08000, v5, v6, "SessionLifetimeManager<%s>: Session invalidated", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D5F2480](v8, -1, -1);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  else
  {
  }
}

void sub_266CF1D38(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(a1 + 72);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 72) = 0;

  swift_beginAccess();
  if (*(a1 + 64))
  {
    v4 = *(a1 + 64);

    sub_266D00FE4();

    v5 = *(a1 + 64);
  }

  *(a1 + 64) = 0;

  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v6 = sub_266DA94AC();
  __swift_project_value_buffer(v6, qword_2800CA9F8);

  v7 = sub_266DA948C();
  v8 = sub_266DAAB0C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = sub_266DAAE0C();
    v16 = v15;

    v17 = sub_266C22A3C(v14, v16, &v18);

    *(v9 + 4) = v17;
    _os_log_impl(&dword_266C08000, v7, v8, "SessionLifetimeManager<%s>: Session invalidated", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D5F2480](v10, -1, -1);
    MEMORY[0x26D5F2480](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_266CF1F1C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_266DA9FAC();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v32 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_6();
  v15 = v14 - v13;
  v31 = sub_266DA9FDC();
  v16 = OUTLINED_FUNCTION_0_2(v31);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_6();
  v23 = v22 - v21;
  sub_266C73E6C();
  v24 = sub_266DAAB8C();
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  *(v25 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_266C73FC4;
  aBlock[3] = a4;
  v26 = _Block_copy(aBlock);

  sub_266DA9FBC();
  aBlock[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_19_13();
  sub_266CEDDE0(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAA90, &qword_266DB2250);
  OUTLINED_FUNCTION_6_8();
  sub_266C230E8(v29, &qword_2800CAA90, &qword_266DB2250);
  sub_266DAAD0C();
  MEMORY[0x26D5F1510](0, v23, v15, v26);
  _Block_release(v26);

  (*(v32 + 8))(v15, v8);
  return (*(v18 + 8))(v23, v31);
}

void sub_266CF21BC(uint64_t a1, double a2)
{
  v4 = objc_opt_self();
  v9[4] = sub_266CF51F0;
  v9[5] = a1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_266C5D6BC;
  v9[3] = &block_descriptor_20;
  v5 = _Block_copy(v9);

  v6 = [v4 scheduledTimerWithTimeInterval:0 repeats:v5 block:a2];
  _Block_release(v5);
  v7 = *(a1 + 184);
  if (v7)
  {
    [v7 invalidate];
    v8 = *(a1 + 184);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 184) = v6;
}

void sub_266CF22D8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_opt_self();
  v13[4] = a2;
  v13[5] = a1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_266C5D6BC;
  v13[3] = a3;
  v9 = _Block_copy(v13);

  v10 = [v8 scheduledTimerWithTimeInterval:0 repeats:v9 block:a4];
  _Block_release(v9);
  v11 = *(a1 + 72);
  if (v11)
  {
    [v11 invalidate];
    v12 = *(a1 + 72);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 72) = v10;
}

uint64_t sub_266CF23E4()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC520, &unk_266DB6318);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC630, &qword_266DB6438);
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CF2518, 0, 0);
}

uint64_t sub_266CF2518()
{
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_13_15();
  v2(v1);
  v3 = OUTLINED_FUNCTION_22_10(&qword_2800CC638, &qword_2800CC520, &unk_266DB6318);
  OUTLINED_FUNCTION_15_18(v3);
  OUTLINED_FUNCTION_21_13(&qword_2800CC640, &qword_2800CC630, &qword_266DB6438);
  v4 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 80) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_31_5(v5);

  return MEMORY[0x282200308](v7);
}

uint64_t sub_266CF25F8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    (*(v3[8] + 8))(v3[9], v3[7]);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266CF2708()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_35_5();
  v2 = OUTLINED_FUNCTION_39_4(v1);
  v3(v2);

  OUTLINED_FUNCTION_43_4();

  return v4(v0);
}

uint64_t sub_266CF278C()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[9];
  v2 = v0[6];

  OUTLINED_FUNCTION_28();
  v4 = v0[11];

  return v3();
}

uint64_t sub_266CF27F4()
{
  OUTLINED_FUNCTION_22_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for Location();
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64);
  v1[5] = OUTLINED_FUNCTION_62();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0) - 8) + 64);
  v1[6] = OUTLINED_FUNCTION_62();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC6C8, &unk_266DBE1C0);
  v1[7] = v6;
  OUTLINED_FUNCTION_11_3(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_62();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC6D0, &qword_266DB64A0);
  v1[10] = v10;
  OUTLINED_FUNCTION_11_3(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_62();
  v14 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266CF2954()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[12];
  (*(v0[8] + 16))(v0[9], v0[3], v0[7]);
  v2 = OUTLINED_FUNCTION_22_10(&qword_2800CC6D8, &qword_2800CC6C8, &unk_266DBE1C0);
  OUTLINED_FUNCTION_15_18(v2);
  OUTLINED_FUNCTION_21_13(&qword_2800CC6E0, &qword_2800CC6D0, &qword_266DB64A0);
  v3 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[13] = v4;
  *v4 = v5;
  v4[1] = sub_266CF2A60;
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[6];

  return MEMORY[0x282200308](v8);
}

uint64_t sub_266CF2A60()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    (*(v3[11] + 8))(v3[12], v3[10]);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266CF2B70()
{
  v1 = v0[6];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v0[4]);
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  if (EnumTagSinglePayload == 1)
  {
    (*(v4 + 8))(v0[12], v0[10]);
    v6 = 1;
  }

  else
  {
    v7 = v0[2];
    sub_266C234EC(v1, v0[5]);
    (*(v4 + 8))(v3, v5);
    v8 = OUTLINED_FUNCTION_40_3();
    sub_266C234EC(v8, v9);
    v6 = 0;
  }

  v10 = v0[12];
  v11 = v0[9];
  v13 = v0[5];
  v12 = v0[6];
  __swift_storeEnumTagSinglePayload(v0[2], v6, 1, v0[4]);

  OUTLINED_FUNCTION_28();

  return v14();
}

uint64_t sub_266CF2C90()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[12];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  OUTLINED_FUNCTION_28();
  v6 = v0[14];

  return v5();
}

uint64_t sub_266CF2D14()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC540, &qword_266DB63A8);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC558, &qword_266DB63C0);
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CF2E48, 0, 0);
}

uint64_t sub_266CF2E48()
{
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_13_15();
  v2(v1);
  v3 = OUTLINED_FUNCTION_7_24(&qword_2800CC560, &qword_2800CC540, &qword_266DB63A8);
  OUTLINED_FUNCTION_15_18(v3);
  OUTLINED_FUNCTION_6_25(&qword_2800CC568, &qword_2800CC558, &qword_266DB63C0);
  v4 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 80) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_31_5(v5);

  return MEMORY[0x282200308](v7);
}

uint64_t sub_266CF2F28()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  if (v0)
  {
    v10 = v3[8];
    v9 = v3[9];
    v11 = v3[7];

    v12 = OUTLINED_FUNCTION_32_6();
    v13(v12);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266CF3044()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_35_5();
  v2 = OUTLINED_FUNCTION_39_4(v1);
  v3(v2);

  OUTLINED_FUNCTION_43_4();

  return v4(v0);
}

uint64_t sub_266CF30C4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC538, &qword_266DB6340);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5D0, &qword_266DB6408);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CF31F8, 0, 0);
}

uint64_t sub_266CF31F8()
{
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_13_15();
  v2(v1);
  v3 = OUTLINED_FUNCTION_7_24(&qword_2800CC5D8, &qword_2800CC538, &qword_266DB6340);
  OUTLINED_FUNCTION_15_18(v3);
  OUTLINED_FUNCTION_6_25(&qword_2800CC5E0, &qword_2800CC5D0, &qword_266DB6408);
  v4 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[10] = v5;
  *v5 = v6;
  v5[1] = sub_266CF32EC;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x282200308](v0 + 11);
}

uint64_t sub_266CF32EC()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  if (v0)
  {
    v10 = v3[8];
    v9 = v3[9];
    v11 = v3[7];

    v12 = OUTLINED_FUNCTION_32_6();
    v13(v12);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266CF3408()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_35_5();
  v2 = *(v1 + 88);
  v4 = OUTLINED_FUNCTION_39_4(v3);
  v5(v4);
  *v0 = v2;

  OUTLINED_FUNCTION_28();

  return v6();
}

uint64_t sub_266CF348C()
{
  OUTLINED_FUNCTION_22_0();
  v1[6] = v2;
  v1[7] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC6E8, &qword_266DB64B0);
  v1[8] = v3;
  OUTLINED_FUNCTION_11_3(v3);
  v1[9] = v4;
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_62();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC6F0, &qword_266DB64B8);
  v1[11] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_62();
  v11 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266CF3594()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[13];
  (*(v0[9] + 16))(v0[10], v0[7], v0[8]);
  v2 = OUTLINED_FUNCTION_7_24(&qword_2800CC6F8, &qword_2800CC6E8, &qword_266DB64B0);
  OUTLINED_FUNCTION_15_18(v2);
  OUTLINED_FUNCTION_6_25(&qword_2800CC700, &qword_2800CC6F0, &qword_266DB64B8);
  v3 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[14] = v4;
  *v4 = v5;
  v4[1] = sub_266CF369C;
  v6 = v0[13];
  v7 = v0[11];

  return MEMORY[0x282200308](v0 + 2);
}

uint64_t sub_266CF369C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  if (v0)
  {
    v10 = v3[12];
    v9 = v3[13];
    v11 = v3[11];

    v12 = OUTLINED_FUNCTION_32_6();
    v13(v12);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266CF37B8()
{
  OUTLINED_FUNCTION_84();
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 48);
  v11 = *(v0 + 16);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = OUTLINED_FUNCTION_39_4(*(v0 + 96));
  v8(v7);
  *v4 = v11;
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;

  OUTLINED_FUNCTION_28();

  return v9();
}

uint64_t sub_266CF3864()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CC4F0);
  v1 = __swift_project_value_buffer(v0, qword_2800CC4F0);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t FindDeviceSessionManager.canPingItems.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v2(v7, v1);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  LOBYTE(v4) = (*(v5 + 40))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v4 & 1;
}

uint64_t sub_266CF3A5C@<X0>(uint64_t (*a1)(double)@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  a2[3] = &type metadata for AceFindDeviceSession;
  a2[4] = &off_287864768;
  *a2 = swift_allocObject();
  return a1(a3);
}

uint64_t sub_266CF3AD4@<X0>(uint64_t (*a1)(double)@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 24) = type metadata accessor for FMIPCoreFindDeviceSession();
  *(a2 + 32) = &off_287863D88;
  return a1(a3);
}

uint64_t sub_266CF3B34@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5C8, &qword_266DB6400);
  swift_allocObject();
  sub_266CF03CC();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = sub_266CF522C;
  *(result + 24) = v5;
  *a1 = a2;
  *(a1 + 8) = sub_266CF5258;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_266CF3BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5B8, &qword_266DB63F0);
  swift_allocObject();
  v8 = sub_266CF012C(a1, a2, "FindDeviceSession", 17, 2);
  result = swift_allocObject();
  *(result + 16) = sub_266CF4FF0;
  *(result + 24) = v8;
  *a3 = a4;
  *(a3 + 8) = sub_266CF4FF8;
  *(a3 + 16) = result;
  return result;
}

uint64_t FindDeviceSessionManager.search(query:)()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 104) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC520, &unk_266DB6318);
  *(v1 + 112) = v3;
  OUTLINED_FUNCTION_11_3(v3);
  *(v1 + 120) = v4;
  v6 = *(v5 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_62();
  *(v1 + 136) = *v0;
  *(v1 + 144) = *(v0 + 8);
  v7 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266CF3D7C()
{
  OUTLINED_FUNCTION_84();
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  (*(v0 + 144))(*(v0 + 136));
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_40_3();
  v7(v6);
  v8 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v9 = *(v8 + 8);
  OUTLINED_FUNCTION_47_4();
  *(v0 + 96) = v10();
  v11 = OUTLINED_FUNCTION_40_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_47_4();
  sub_266C230E8(v13, v14, v15);
  v16 = OUTLINED_FUNCTION_37_5();
  MEMORY[0x26D5F0220](v16);

  v17 = OUTLINED_FUNCTION_1_37(&unk_266DB6328);
  *(v0 + 160) = v17;
  *v17 = v0;
  v17[1] = sub_266CF3EE8;
  v18 = *(v0 + 128);

  return v20();
}

uint64_t sub_266CF3EE8()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 160);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[21] = v0;

  if (v0)
  {
    (*(v5[15] + 8))(v5[16], v5[14]);
    v11 = OUTLINED_FUNCTION_14_3();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = v5[16];
    v15 = v5[14];
    v16 = OUTLINED_FUNCTION_39_4(v5[15]);
    v17(v16);
    __swift_destroy_boxed_opaque_existential_0(v5 + 7);
    __swift_destroy_boxed_opaque_existential_0(v5 + 2);
    if (v3)
    {
      v18 = v3;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_43_4();

    return v19(v18);
  }
}

uint64_t sub_266CF4068()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_28();
  v3 = v0[21];

  return v2();
}

uint64_t sub_266CF40D8()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC540, &qword_266DB63A8);
  *(v1 + 120) = v4;
  OUTLINED_FUNCTION_11_3(v4);
  *(v1 + 128) = v5;
  v7 = *(v6 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_62();
  *(v1 + 144) = *v0;
  *(v1 + 152) = *(v0 + 8);
  v8 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266CF4198()
{
  OUTLINED_FUNCTION_84();
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  (*(v0 + 152))(*(v0 + 144));
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_36_8();
  v8(v7);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  OUTLINED_FUNCTION_49_5((v0 + 56));
  v12 = *(v11 + 16);
  v13 = OUTLINED_FUNCTION_45_3();
  *(v0 + 96) = v14(v13);
  v15 = OUTLINED_FUNCTION_40_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_47_4();
  sub_266C230E8(v17, v18, v19);
  v20 = OUTLINED_FUNCTION_37_5();
  MEMORY[0x26D5F02C0](v20);

  v21 = OUTLINED_FUNCTION_1_37(&unk_266DB63B8);
  *(v0 + 168) = v21;
  *v21 = v0;
  v21[1] = sub_266CF42F0;
  v22 = *(v0 + 136);

  return v24();
}

uint64_t sub_266CF42F0(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v4 = v3;
  OUTLINED_FUNCTION_10_3();
  *v5 = v4;
  v7 = v6[21];
  v8 = v6[17];
  v9 = v6[16];
  v10 = v6[15];
  v11 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v12 = v11;

  (*(v9 + 8))(v8, v10);
  __swift_destroy_boxed_opaque_existential_0((v4 + 56));
  __swift_destroy_boxed_opaque_existential_0((v4 + 16));
  if (a1 == 1)
  {
    a1 = 0;
  }

  OUTLINED_FUNCTION_43_4();

  return v13(a1);
}

uint64_t FindDeviceSessionManager.playSound(deviceId:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(v4 + 1);
  v11 = *(v4 + 2);
  v10(v28, v9);
  v12 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v13 = *(v12 + 24);
  v14 = OUTLINED_FUNCTION_36_8();
  v15(v14);
  v16 = v27[3];
  v17 = v27[4];
  OUTLINED_FUNCTION_49_5(v27);
  v19 = (*(v18 + 8))(a1, a2, v16, v17);
  v20 = sub_266CEFE20(v19);

  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v28);
  v27[0] = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a3;
  v22[4] = a4;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC528, &qword_266DB6330);
  OUTLINED_FUNCTION_2_34();
  sub_266C230E8(v23, &qword_2800CC528, &qword_266DB6330);
  v24 = sub_266DA986C();

  swift_beginAccess();
  v25 = *(v21 + 16);
  *(v21 + 16) = v24;
}

uint64_t FindDeviceSessionManager.aceProxiedPlaySound(deviceId:)()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  *(v1 + 104) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC538, &qword_266DB6340);
  *(v1 + 128) = v5;
  OUTLINED_FUNCTION_11_3(v5);
  *(v1 + 136) = v6;
  v8 = *(v7 + 64);
  *(v1 + 144) = OUTLINED_FUNCTION_62();
  *(v1 + 152) = *v0;
  *(v1 + 160) = *(v0 + 8);
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266CF4710()
{
  OUTLINED_FUNCTION_84();
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  (*(v0 + 160))(*(v0 + 152));
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_36_8();
  v8(v7);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  OUTLINED_FUNCTION_49_5((v0 + 56));
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_45_3();
  v15 = v14(v13);
  v16 = sub_266CEFE20(v15);

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 96) = v16;
  v17 = OUTLINED_FUNCTION_40_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_47_4();
  sub_266C230E8(v19, v20, v21);
  v22 = OUTLINED_FUNCTION_37_5();
  MEMORY[0x26D5F02C0](v22);

  OUTLINED_FUNCTION_1_37(&unk_266DB6348);
  OUTLINED_FUNCTION_24_1();
  *(v0 + 176) = v23;
  *v23 = v24;
  v23[1] = sub_266CF488C;
  v25 = *(v0 + 144);

  return v27(v0 + 184);
}

uint64_t sub_266CF488C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v2 = v1[22];
  v3 = v1[18];
  v4 = v1[17];
  v5 = v1[16];
  v6 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);
  v8 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266CF49CC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 184);
  v4 = (v3 >> 8) & 1;
  if (v3 >> 8 > 0xFE)
  {
    LOBYTE(v3) = 4;
    LOBYTE(v4) = 1;
  }

  *v2 = v3;
  v2[1] = v4;

  OUTLINED_FUNCTION_28();

  return v5();
}

uint64_t sub_266CF4A58@<X0>(uint64_t a1@<X8>)
{
  if (qword_28156F8C8 != -1)
  {
    swift_once();
  }

  v2 = qword_28156FCC0;
  v3 = sub_266DAA6FC();
  LOBYTE(v2) = [v2 BOOLForKey_];

  if (v2)
  {
    if (qword_2800C9328 != -1)
    {
      swift_once();
    }

    v4 = sub_266DA94AC();
    __swift_project_value_buffer(v4, qword_2800CC4F0);
    v5 = sub_266DA948C();
    v6 = sub_266DAAB0C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_266C08000, v5, v6, "ForceFindDeviceOnAce is enabled, creating Ace-based session manager.", v7, 2u);
      MEMORY[0x26D5F2480](v7, -1, -1);
    }

    return sub_266CF3BF8(sub_266CF4C50, 0, a1, 15.0);
  }

  else
  {

    return sub_266CF3B34(a1, 15.0);
  }
}

uint64_t sub_266CF4C1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FMIPCoreFindDeviceSession();
  result = sub_266D00468();
  *a1 = result;
  return result;
}

uint64_t static FindDeviceSessionManager.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_2800C9330 != -1)
  {
    swift_once();
  }

  v3 = qword_2800CC510;
  v2 = unk_2800CC518;
  *a1 = qword_2800CC508;
  a1[1] = v3;
  a1[2] = v2;
}

uint64_t sub_266CF4D3C(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D68, &qword_266DAF2F0);
  return sub_266DA977C();
}

uint64_t sub_266CF4DB0(char a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8) + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  *(&v8 - v6) = a1;
  swift_storeEnumTagMultiPayload();
  return sub_266DA977C();
}

uint64_t sub_266CF4EF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  result = sub_266CF06AC(a1, a3);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_266CF4F20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C23634();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_266CF4F90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  result = sub_266CF0DF8(a1, a3);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_266CF4FD4(unsigned __int8 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_266CF4FBC(a1);
}

uint64_t sub_266CF501C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5C0, &qword_266DB63F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CF508C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5C0, &qword_266DB63F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266CF5150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5C0, &qword_266DB63F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_266CF522C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266CF3A0C();
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_30(unint64_t *a1)
{

  return sub_266C230E8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_6_25(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_266C230E8(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_7_24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_266C230E8(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_13_15()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v0[5] + 16);
  return v0[6];
}

uint64_t OUTLINED_FUNCTION_14_21()
{

  return sub_266DA987C();
}

uint64_t OUTLINED_FUNCTION_15_18(uint64_t a1)
{

  return MEMORY[0x282200510](v1, a1);
}

uint64_t OUTLINED_FUNCTION_17_18()
{

  return sub_266DA984C();
}

uint64_t OUTLINED_FUNCTION_21_13(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_266C230E8(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_22_10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_266C230E8(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_28_5()
{
  v2 = *(v0 - 96);

  return sub_266DA97EC();
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 72);
  v4 = *(v2 + 56);
  return v2 + 16;
}

void OUTLINED_FUNCTION_35_5()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[2];
}

uint64_t sub_266CF5674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B5E8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_266CF5964;

  return MEMORY[0x2821B9FC0](a1, a2, a3);
}

uint64_t sub_266CF5728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B5D8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_266CF5964;

  return MEMORY[0x2821B9FB0](a1, a2, a3);
}

uint64_t sub_266CF57DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B5D0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266C29DCC;

  return MEMORY[0x2821B9FA8](a1, a2, a3, a4);
}

uint64_t sub_266CF58A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B5E0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266CF5964;

  return MEMORY[0x2821B9FB8](a1, a2, a3, a4);
}

uint64_t sub_266CF5968()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CC708);
  v1 = __swift_project_value_buffer(v0, qword_2800CC708);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CF5A44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79636167656CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x76697463616F7270 && a2 == 0xE900000000000065;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702259052 && a2 == 0xE400000000000000;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656977657473 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_266DAB17C();

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

uint64_t sub_266CF5BA4(char a1)
{
  result = 0x79636167656CLL;
  switch(a1)
  {
    case 1:
      result = 0x76697463616F7270;
      break;
    case 2:
      result = 1702259052;
      break;
    case 3:
      result = 0x656977657473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266CF5C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266CF5A44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CF5C48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266CF5B9C();
  *a1 = result;
  return result;
}

uint64_t sub_266CF5C70(uint64_t a1)
{
  v2 = sub_266CF6284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CF5CAC(uint64_t a1)
{
  v2 = sub_266CF6284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266CF5CE8(uint64_t a1)
{
  v2 = sub_266CF63D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CF5D24(uint64_t a1)
{
  v2 = sub_266CF63D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266CF5D60(uint64_t a1)
{
  v2 = sub_266CF632C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CF5D9C(uint64_t a1)
{
  v2 = sub_266CF632C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266CF5DD8(uint64_t a1)
{
  v2 = sub_266CF6380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CF5E14(uint64_t a1)
{
  v2 = sub_266CF6380();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266CF5E50(uint64_t a1)
{
  v2 = sub_266CF62D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CF5E8C(uint64_t a1)
{
  v2 = sub_266CF62D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC720, &qword_266DB6550);
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v55 = v5;
  v56 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10();
  v54 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC728, &qword_266DB6558);
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v52 = v12;
  v53 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10();
  v51 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC730, &qword_266DB6560);
  v18 = OUTLINED_FUNCTION_0_2(v17);
  v49 = v19;
  v50 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10();
  v48 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC738, &qword_266DB6568);
  v25 = OUTLINED_FUNCTION_0_2(v24);
  v46 = v26;
  v47 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v46 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC740, &qword_266DB6570);
  OUTLINED_FUNCTION_0_2(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v37);
  v39 = &v46 - v38;
  v40 = *v1;
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266CF6284();
  sub_266DAB36C();
  switch(v40)
  {
    case 1:
      v58 = 1;
      sub_266CF6380();
      v42 = v48;
      OUTLINED_FUNCTION_4_32();
      v44 = v49;
      v43 = v50;
      goto LABEL_6;
    case 2:
      v59 = 2;
      sub_266CF632C();
      v42 = v51;
      OUTLINED_FUNCTION_4_32();
      v44 = v52;
      v43 = v53;
      goto LABEL_6;
    case 3:
      v60 = 3;
      sub_266CF62D8();
      v42 = v54;
      OUTLINED_FUNCTION_4_32();
      v44 = v55;
      v43 = v56;
LABEL_6:
      (*(v44 + 8))(v42, v43);
      break;
    default:
      v57 = 0;
      sub_266CF63D4();
      sub_266DAB08C();
      (*(v46 + 8))(v31, v47);
      break;
  }

  return (*(v34 + 8))(v39, v32);
}

unint64_t sub_266CF6284()
{
  result = qword_2800CC748;
  if (!qword_2800CC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC748);
  }

  return result;
}

unint64_t sub_266CF62D8()
{
  result = qword_2800CC750;
  if (!qword_2800CC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC750);
  }

  return result;
}

unint64_t sub_266CF632C()
{
  result = qword_2800CC758;
  if (!qword_2800CC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC758);
  }

  return result;
}

unint64_t sub_266CF6380()
{
  result = qword_2800CC760;
  if (!qword_2800CC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC760);
  }

  return result;
}

unint64_t sub_266CF63D4()
{
  result = qword_2800CC768;
  if (!qword_2800CC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC768);
  }

  return result;
}

uint64_t LocationSource.hashValue.getter()
{
  v1 = *v0;
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](v1);
  return sub_266DAB2DC();
}

uint64_t LocationSource.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v79 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC770, &qword_266DB6578);
  OUTLINED_FUNCTION_0_2(v82);
  v78 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10();
  v81 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC778, &qword_266DB6580);
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v75 = v10;
  v76 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10();
  v77 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC780, &qword_266DB6588);
  v16 = OUTLINED_FUNCTION_0_2(v15);
  v73 = v17;
  v74 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC788, &qword_266DB6590);
  OUTLINED_FUNCTION_0_2(v23);
  v72 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v66 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC790, &unk_266DB6598);
  OUTLINED_FUNCTION_0_2(v30);
  v80 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v66 - v35;
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266CF6284();
  v38 = v83;
  sub_266DAB34C();
  if (v38)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v69 = v23;
  v70 = v29;
  v71 = v22;
  v39 = v81;
  v40 = v82;
  v83 = a1;
  v41 = v36;
  v42 = sub_266DAB06C();
  result = sub_266C1E2FC(v42, 0);
  if (v45 == v46 >> 1)
  {
    goto LABEL_8;
  }

  v68 = 0;
  if (v45 >= (v46 >> 1))
  {
    __break(1u);
    return result;
  }

  v47 = *(v44 + v45);
  sub_266C1E2EC(v45 + 1);
  v49 = v48;
  v51 = v50;
  swift_unknownObjectRelease();
  if (v49 != v51 >> 1)
  {
LABEL_8:
    v57 = v80;
    v58 = sub_266DAAE4C();
    swift_allocError();
    v60 = v59;
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9908, &qword_266DAD8C0) + 48);
    *v60 = &type metadata for LocationSource;
    sub_266DAAFBC();
    sub_266DAAE3C();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D84160], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v57 + 8))(v41, v30);
    a1 = v83;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v52 = v79;
  v53 = v80;
  v67 = v47;
  v54 = v47;
  v55 = v78;
  switch(v54)
  {
    case 1:
      v85 = 1;
      sub_266CF6380();
      v62 = v71;
      OUTLINED_FUNCTION_3_32();
      swift_unknownObjectRelease();
      v64 = v73;
      v63 = v74;
      goto LABEL_18;
    case 2:
      v86 = 2;
      sub_266CF632C();
      v62 = v77;
      OUTLINED_FUNCTION_3_32();
      swift_unknownObjectRelease();
      v64 = v75;
      v63 = v76;
LABEL_18:
      (*(v64 + 8))(v62, v63);
      goto LABEL_19;
    case 3:
      v87 = 3;
      sub_266CF62D8();
      v65 = v68;
      sub_266DAAFAC();
      if (v65)
      {
        (*(v53 + 8))(v41, v30);
        swift_unknownObjectRelease();
        a1 = v83;
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }

      swift_unknownObjectRelease();
      (*(v55 + 8))(v39, v40);
LABEL_19:
      (*(v53 + 8))(v41, v30);
      *v52 = v67;
      result = __swift_destroy_boxed_opaque_existential_0(v83);
      break;
    default:
      v84 = 0;
      sub_266CF63D4();
      v56 = v70;
      OUTLINED_FUNCTION_3_32();
      swift_unknownObjectRelease();
      (*(v72 + 8))(v56, v69);
      goto LABEL_19;
  }

  return result;
}

uint64_t sub_266CF6AD8@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_266DA9C4C();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = *(v7 + 16);
  v18(&v43 - v16, a1, v4);
  v19 = (*(v7 + 88))(v17, v4);
  if (v19 == *MEMORY[0x277D07BF8])
  {
    v20 = OUTLINED_FUNCTION_2_38();
    result = v21(v20);
    v23 = 0;
  }

  else if (v19 == *MEMORY[0x277D07BF0])
  {
    v24 = OUTLINED_FUNCTION_2_38();
    result = v25(v24);
    v23 = 1;
  }

  else if (v19 == *MEMORY[0x277D07BE8])
  {
    v26 = OUTLINED_FUNCTION_2_38();
    result = v27(v26);
    v23 = 2;
  }

  else if (v19 == *MEMORY[0x277D07C00])
  {
    v28 = OUTLINED_FUNCTION_2_38();
    result = v29(v28);
    v23 = 3;
  }

  else
  {
    if (qword_2800C9338 != -1)
    {
      swift_once();
    }

    v30 = sub_266DA94AC();
    __swift_project_value_buffer(v30, qword_2800CC708);
    v18(v15, a1, v4);
    v31 = sub_266DA948C();
    v47 = sub_266DAAAEC();
    if (os_log_type_enabled(v31, v47))
    {
      v32 = swift_slowAlloc();
      v45 = v31;
      v33 = v32;
      v46 = swift_slowAlloc();
      v48 = v46;
      *v33 = 136315138;
      v18(v12, v15, v4);
      v44 = sub_266DAA72C();
      v35 = v34;
      v36 = *(v7 + 8);
      v36(v15, v4);
      v37 = sub_266C22A3C(v44, v35, &v48);

      v38 = v33;
      *(v33 + 4) = v37;
      v39 = v45;
      v40 = v38;
      _os_log_impl(&dword_266C08000, v45, v47, "Got unknown FMFLocationSource of %s", v38, 0xCu);
      v41 = v46;
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x26D5F2480](v41, -1, -1);
      MEMORY[0x26D5F2480](v40, -1, -1);

      v42 = a1;
    }

    else
    {

      v36 = *(v7 + 8);
      v36(a1, v4);
      v42 = v15;
    }

    v36(v42, v4);
    result = (v36)(v17, v4);
    v23 = 4;
  }

  *a2 = v23;
  return result;
}

unint64_t sub_266CF6E94()
{
  result = qword_2800CC798;
  if (!qword_2800CC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC798);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MinimumOSVersions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_266CF6F80(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266CF70A0()
{
  result = qword_2800CC7A0;
  if (!qword_2800CC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7A0);
  }

  return result;
}

unint64_t sub_266CF70F8()
{
  result = qword_2800CC7A8;
  if (!qword_2800CC7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7A8);
  }

  return result;
}

unint64_t sub_266CF7150()
{
  result = qword_2800CC7B0;
  if (!qword_2800CC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7B0);
  }

  return result;
}

unint64_t sub_266CF71A8()
{
  result = qword_2800CC7B8;
  if (!qword_2800CC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7B8);
  }

  return result;
}

unint64_t sub_266CF7200()
{
  result = qword_2800CC7C0;
  if (!qword_2800CC7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7C0);
  }

  return result;
}

unint64_t sub_266CF7258()
{
  result = qword_2800CC7C8;
  if (!qword_2800CC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7C8);
  }

  return result;
}

unint64_t sub_266CF72B0()
{
  result = qword_2800CC7D0;
  if (!qword_2800CC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7D0);
  }

  return result;
}

unint64_t sub_266CF7308()
{
  result = qword_2800CC7D8;
  if (!qword_2800CC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7D8);
  }

  return result;
}

unint64_t sub_266CF7360()
{
  result = qword_2800CC7E0;
  if (!qword_2800CC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7E0);
  }

  return result;
}

unint64_t sub_266CF73B8()
{
  result = qword_2800CC7E8;
  if (!qword_2800CC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7E8);
  }

  return result;
}

unint64_t sub_266CF7410()
{
  result = qword_2800CC7F0;
  if (!qword_2800CC7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC7F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_32()
{
  v2 = *(v0 - 208);

  return sub_266DAAFAC();
}

uint64_t OUTLINED_FUNCTION_4_32()
{

  return sub_266DAB08C();
}

uint64_t sub_266CF74BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if (*(a2 + 24))
    {
      return v2;
    }

    v3 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
    if (!v3 || *(a1 + 16) != *(a2 + 16))
    {
      return v2;
    }
  }

  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if (*(a2 + 56))
    {
      return v2;
    }

    v5 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
    if (!v5 || *(a1 + 48) != *(a2 + 48))
    {
      return v2;
    }
  }

  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if (*(a2 + 88))
    {
      return v2;
    }

    v7 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
    if (!v7 || *(a1 + 80) != *(a2 + 80))
    {
      return v2;
    }
  }

  if (*(a1 + 120))
  {
    if ((*(a2 + 120) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 120))
    {
      return 0;
    }

    v9 = *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104);
    if (!v9 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_266CF75BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 5459817 && a2 == 0xE300000000000000;
  if (v3 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x534F63616DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1397716596 && a2 == 0xE400000000000000;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x534F6863746177 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_266DAB17C();

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

uint64_t sub_266CF7710(char a1)
{
  result = 5459817;
  switch(a1)
  {
    case 1:
      result = 0x534F63616DLL;
      break;
    case 2:
      result = 1397716596;
      break;
    case 3:
      result = 0x534F6863746177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266CF7780(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC8C0, &unk_266DB6EE0);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  OUTLINED_FUNCTION_42_2();
  sub_266CFC258();
  OUTLINED_FUNCTION_25_10();
  sub_266DAB36C();
  v18[0] = *v3;
  *(v18 + 9) = *(v3 + 9);
  v17 = 0;
  type metadata accessor for OperatingSystemVersion(0);
  sub_266CFC2AC(&qword_2800CC8C8);
  OUTLINED_FUNCTION_11_18();
  if (!v2)
  {
    v18[0] = v3[2];
    *(v18 + 9) = *(v3 + 41);
    v17 = 1;
    OUTLINED_FUNCTION_11_18();
    v18[0] = v3[4];
    *(v18 + 9) = *(v3 + 73);
    v17 = 2;
    OUTLINED_FUNCTION_11_18();
    v18[0] = v3[6];
    *(v18 + 9) = *(v3 + 105);
    v17 = 3;
    OUTLINED_FUNCTION_11_18();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_266CF7934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC8A8, &qword_266DB6ED8);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266CFC258();
  sub_266DAB34C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  type metadata accessor for OperatingSystemVersion(0);
  v42 = 0;
  sub_266CFC2AC(&qword_2800CC8B8);
  OUTLINED_FUNCTION_9_16();
  v33 = *(&v35 + 1);
  v34 = v35;
  v32 = v36;
  v41 = v37;
  v42 = 1;
  OUTLINED_FUNCTION_9_16();
  v30 = *(&v35 + 1);
  v31 = v35;
  v29 = v36;
  v40 = v37;
  v42 = 2;
  OUTLINED_FUNCTION_9_16();
  v27 = *(&v35 + 1);
  v28 = v35;
  v26 = v36;
  v39 = v37;
  v42 = 3;
  OUTLINED_FUNCTION_9_16();
  (*(v7 + 8))(v12, v5);
  v25 = v35;
  v14 = v36;
  v15 = v37;
  v38 = v37;
  v16 = v41;
  v17 = v40;
  v18 = v39;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v20 = v33;
  *a2 = v34;
  *(a2 + 8) = v20;
  v21 = v31;
  *(a2 + 16) = v32;
  *(a2 + 24) = v16;
  v22 = v29;
  v23 = v30;
  *(a2 + 32) = v21;
  *(a2 + 40) = v23;
  *(a2 + 48) = v22;
  *(a2 + 56) = v17;
  v24 = v27;
  *(a2 + 64) = v28;
  *(a2 + 72) = v24;
  *(a2 + 80) = v26;
  *(a2 + 88) = v18;
  *(a2 + 96) = v25;
  *(a2 + 112) = v14;
  *(a2 + 120) = v15;
  return result;
}

uint64_t sub_266CF7BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266CF75BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CF7BDC(uint64_t a1)
{
  v2 = sub_266CFC258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CF7C18(uint64_t a1)
{
  v2 = sub_266CFC258();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_266CF7C54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_266CF7934(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x79uLL);
  }

  return result;
}

uint64_t sub_266CF7CBC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!(a1 >> 62))
  {
    if (a3 >> 62)
    {
      v5 = 0;
LABEL_13:
      v4 = v5 < a3 >> 62;
      return v4 & 1;
    }

LABEL_10:
    v4 = a1 & ~a3;
    return v4 & 1;
  }

  if (a1 >> 62 != 1)
  {
    if (a3 >> 62 != 2)
    {
      v5 = 2;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (a3 >> 62 != 1)
  {
    v5 = 1;
    goto LABEL_13;
  }

  if ((a3 ^ a1))
  {
    v4 = a1;
  }

  else
  {
    v4 = a2 < a4;
  }

  return v4 & 1;
}

uint64_t sub_266CF7D30(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a1 >> 62;
  v5 = a3 >> 62;
  v6 = a3 ^ a1 ^ 1;
  if (a3 >> 62)
  {
    v6 = 0;
  }

  v7 = (v5 == 1) & ~(a3 ^ a1);
  if (a2 != a4)
  {
    v7 = 0;
  }

  v8 = v5 == 2;
  v9 = a3 ^ a1 ^ 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v4 == 1)
  {
    v9 = v7;
  }

  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  return v10 & 1;
}

BOOL sub_266CF7DD0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!(a3 >> 62))
  {
    if (a1 >> 62)
    {
      v5 = 0;
LABEL_13:
      v4 = v5 < a1 >> 62;
      return (v4 & 1) == 0;
    }

LABEL_10:
    v4 = a3 & ~a1;
    return (v4 & 1) == 0;
  }

  if (a3 >> 62 != 1)
  {
    if (a1 >> 62 != 2)
    {
      v5 = 2;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (a1 >> 62 != 1)
  {
    v5 = 1;
    goto LABEL_13;
  }

  if ((a3 ^ a1))
  {
    v4 = a3;
  }

  else
  {
    v4 = a4 < a2;
  }

  return (v4 & 1) == 0;
}

BOOL sub_266CF7E5C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!(a1 >> 62))
  {
    if (a3 >> 62)
    {
      v5 = 0;
LABEL_13:
      v4 = v5 < a3 >> 62;
      return (v4 & 1) == 0;
    }

LABEL_10:
    v4 = a1 & ~a3;
    return (v4 & 1) == 0;
  }

  if (a1 >> 62 != 1)
  {
    if (a3 >> 62 != 2)
    {
      v5 = 2;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (a3 >> 62 != 1)
  {
    v5 = 1;
    goto LABEL_13;
  }

  if ((a3 ^ a1))
  {
    v4 = a1;
  }

  else
  {
    v4 = a2 < a4;
  }

  return (v4 & 1) == 0;
}

uint64_t sub_266CF7EF4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!(a3 >> 62))
  {
    if (a1 >> 62)
    {
      v5 = 0;
LABEL_13:
      v4 = v5 < a1 >> 62;
      return v4 & 1;
    }

LABEL_10:
    v4 = a3 & ~a1;
    return v4 & 1;
  }

  if (a3 >> 62 != 1)
  {
    if (a1 >> 62 != 2)
    {
      v5 = 2;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (a1 >> 62 != 1)
  {
    v5 = 1;
    goto LABEL_13;
  }

  if ((a3 ^ a1))
  {
    v4 = a3;
  }

  else
  {
    v4 = a4 < a2;
  }

  return v4 & 1;
}

uint64_t sub_266CF7FA8(uint64_t a1, uint64_t a2)
{
  if (*a1 == 2)
  {
    if (*a2 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_38_7();
    if (v11 || ((v5 ^ v6) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 1) == 2)
  {
    if (*(a2 + 1) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_38_7();
    if (v11 || ((v7 ^ v8) & 1) != 0)
    {
      return result;
    }
  }

  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *(a1 + 8) == *(a2 + 8) && v9 == v10;
    if (!v11 && (sub_266DAB17C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = *(a1 + 32);
  v13 = *(a2 + 32);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = *(a1 + 24) == *(a2 + 24) && v12 == v13;
    if (!v14 && (sub_266DAB17C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v15 = *(a1 + 48);
  v16 = *(a2 + 48);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *(a1 + 40) == *(a2 + 40) && v15 == v16;
    if (!v17 && (sub_266DAB17C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = *(a1 + 56);
  v19 = *(a2 + 56);
  if (v18)
  {
    if (!v19 || (sub_266D71FE0(v18, v19) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (*(a1 + 73) == 2)
  {
    if (*(a2 + 73) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_38_7();
    if (v11 || ((v21 ^ v22) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 74) == 2)
  {
    if (*(a2 + 74) != 2)
    {
      return 0;
    }

    goto LABEL_59;
  }

  result = OUTLINED_FUNCTION_38_7();
  if (!v11 && ((v23 ^ v24) & 1) == 0)
  {
LABEL_59:
    v25 = *(a1 + 88);
    v26 = *(a2 + 88);
    if (v25)
    {
      if (!v26)
      {
        return 0;
      }

      v27 = *(a1 + 80) == *(a2 + 80) && v25 == v26;
      if (!v27 && (sub_266DAB17C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v26)
    {
      return 0;
    }

    v28 = *(a1 + 96);
    v29 = *(a2 + 96);
    if (v28)
    {
      if (!v29 || (sub_266D71FE0(v28, v29) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v29)
    {
      return 0;
    }

    v30 = *(a1 + 112);
    v31 = *(a2 + 112);
    if (v30)
    {
      if (!v31)
      {
        return 0;
      }

      v32 = *(a1 + 104) == *(a2 + 104) && v30 == v31;
      if (!v32 && (sub_266DAB17C() & 1) == 0)
      {
        return 0;
      }

LABEL_82:
      memcpy(__dst, (a1 + 120), 0x7AuLL);
      if (sub_266CFBE34(__dst) == 1)
      {
        memcpy(v33, (a2 + 120), 0x7AuLL);
        if (sub_266CFBE34(v33) != 1)
        {
          return 0;
        }
      }

      else
      {
        memcpy(v33, (a2 + 120), 0x7AuLL);
        if (sub_266CFBE34(v33) == 1 || (sub_266CF74BC(a1 + 120, a2 + 120) & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    if (!v31)
    {
      goto LABEL_82;
    }

    return 0;
  }

  return result;
}

uint64_t sub_266CF828C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000266DC2FC0 == a2;
  if (v3 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6946746F4E7369 && a2 == 0xED0000656C626164;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43656369766564 && a2 == 0xEB00000000737361;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000266DC2FE0 == a2;
        if (v8 || (sub_266DAB17C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C6169636966666FLL && a2 == 0xEC000000656D614ELL;
          if (v9 || (sub_266DAB17C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x54746375646F7270 && a2 == 0xEC00000073657079;
            if (v10 || (sub_266DAB17C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x79726F6765746163 && a2 == 0xEA00000000006449;
              if (v11 || (sub_266DAB17C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6475627261457369 && a2 == 0xE900000000000073;
                if (v12 || (sub_266DAB17C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6870646165487369 && a2 == 0xEC00000073656E6FLL;
                  if (v13 || (sub_266DAB17C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x8000000266DC3000 == a2;
                    if (v14 || (sub_266DAB17C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6369746E616D6573 && a2 == 0xEF73657361696C41;
                      if (v15 || (sub_266DAB17C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000013 && 0x8000000266DC1020 == a2;
                        if (v16 || (sub_266DAB17C() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000011 && 0x8000000266DC3020 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_266DAB17C();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_266CF86A8(char a1)
{
  result = 0x6E6946746F4E7369;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43656369766564;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6C6169636966666FLL;
      break;
    case 5:
      result = 0x54746375646F7270;
      break;
    case 6:
      result = 0x79726F6765746163;
      break;
    case 7:
      result = 0x6475627261457369;
      break;
    case 8:
      result = 0x6870646165487369;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x6369746E616D6573;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_266CF8854(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC820, &qword_266DB6C00);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = __dst - v11;
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  OUTLINED_FUNCTION_42_2();
  sub_266CFBC94();
  OUTLINED_FUNCTION_25_10();
  sub_266DAB36C();
  v15 = *v3;
  LOBYTE(__dst[0]) = 0;
  OUTLINED_FUNCTION_20_12();
  sub_266DAB0AC();
  if (!v2)
  {
    v16 = v3[1];
    LOBYTE(__dst[0]) = 1;
    OUTLINED_FUNCTION_20_12();
    sub_266DAB0AC();
    v17 = *(v3 + 1);
    v18 = *(v3 + 2);
    OUTLINED_FUNCTION_1_38(2);
    sub_266DAB09C();
    v19 = *(v3 + 3);
    v20 = *(v3 + 4);
    OUTLINED_FUNCTION_1_38(3);
    sub_266DAB09C();
    v21 = *(v3 + 5);
    v22 = *(v3 + 6);
    OUTLINED_FUNCTION_1_38(4);
    sub_266DAB09C();
    __dst[0] = *(v3 + 7);
    v33 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC808, &qword_266DB6BF8);
    sub_266CFBD74(&qword_2800CC828);
    OUTLINED_FUNCTION_25_10();
    sub_266DAB0DC();
    v23 = *(v3 + 8);
    v24 = v3[72];
    OUTLINED_FUNCTION_1_38(6);
    sub_266DAB0CC();
    v25 = v3[73];
    LOBYTE(__dst[0]) = 7;
    OUTLINED_FUNCTION_20_12();
    sub_266DAB0AC();
    v26 = v3[74];
    LOBYTE(__dst[0]) = 8;
    OUTLINED_FUNCTION_20_12();
    sub_266DAB0AC();
    v27 = *(v3 + 10);
    v28 = *(v3 + 11);
    OUTLINED_FUNCTION_1_38(9);
    sub_266DAB09C();
    __dst[0] = *(v3 + 12);
    v33 = 10;
    OUTLINED_FUNCTION_25_10();
    sub_266DAB0DC();
    v29 = *(v3 + 13);
    v30 = *(v3 + 14);
    OUTLINED_FUNCTION_1_38(11);
    sub_266DAB09C();
    memcpy(__dst, v3 + 120, 0x7AuLL);
    v33 = 12;
    sub_266CFBDE0();
    OUTLINED_FUNCTION_20_12();
    sub_266DAB0DC();
  }

  return (*(v7 + 8))(v12, v5);
}

void *sub_266CF8B48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC7F8, &qword_266DB6BF0);
  OUTLINED_FUNCTION_0_2(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v92 = 1;
  sub_266CFBC70(__src);
  memcpy(v89, __src, sizeof(v89));
  v14 = a1[3];
  v15 = a1[4];
  v61 = a1;
  OUTLINED_FUNCTION_42_2();
  sub_266CFBC94();
  OUTLINED_FUNCTION_25_10();
  sub_266DAB34C();
  if (v2)
  {
    v96 = v2;
    OUTLINED_FUNCTION_3_33();
    v13 = 0;
    v6 = 0;
    OUTLINED_FUNCTION_18_14();
    v16 = 2;
    v17 = 2;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v61);
    LOBYTE(v73) = v17;
    BYTE1(v73) = v16;
    *(&v73 + 2) = v93;
    HIWORD(v73) = v94;
    v74 = v6;
    v75 = v13;
    v76 = v15;
    v77 = v8;
    v78 = a2;
    v79 = v64;
    v80 = v63;
    v81 = v62;
    v82 = v92;
    v83 = v3;
    v84 = v60;
    v86 = v91;
    v85 = v90;
    OUTLINED_FUNCTION_33_7();
    v87 = v67;
    memcpy(v88, v89, sizeof(v88));
    return sub_266C9D124(&v73);
  }

  LOBYTE(v73) = 0;
  v59 = sub_266DAAFDC();
  OUTLINED_FUNCTION_0_56(1);
  v58 = sub_266DAAFDC();
  OUTLINED_FUNCTION_0_56(2);
  v56 = sub_266DAAFCC();
  v57 = v19;
  OUTLINED_FUNCTION_0_56(3);
  v54 = sub_266DAAFCC();
  v55 = v20;
  OUTLINED_FUNCTION_0_56(4);
  v53 = sub_266DAAFCC();
  v64 = v21;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC808, &qword_266DB6BF8);
  v70[0] = 5;
  v15 = sub_266CFBD74(&qword_2800CC810);
  OUTLINED_FUNCTION_25_10();
  v17 = v13;
  sub_266DAB00C();
  v22 = a2;
  v23 = v73;
  OUTLINED_FUNCTION_0_56(6);
  v24 = sub_266DAAFFC();
  v63 = v23;
  v62 = v24;
  v92 = v25 & 1;
  OUTLINED_FUNCTION_0_56(7);
  v52 = sub_266DAAFDC();
  OUTLINED_FUNCTION_0_56(8);
  v26 = sub_266DAAFDC();
  v96 = 0;
  v60 = v26;
  OUTLINED_FUNCTION_0_56(9);
  v27 = v96;
  v68 = sub_266DAAFCC();
  v69 = v28;
  v96 = v27;
  if (v27)
  {
    v29 = OUTLINED_FUNCTION_2_39();
    v30(v29);
    OUTLINED_FUNCTION_23_13();
LABEL_13:
    OUTLINED_FUNCTION_34_4();
    a2 = v53;
    v3 = v52;
    goto LABEL_4;
  }

  v70[0] = 10;
  OUTLINED_FUNCTION_25_10();
  v17 = v13;
  v31 = v96;
  sub_266DAB00C();
  v96 = v31;
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_2_39();
    v33(v32);
    v66 = 0;
    v67 = 0;
    v65 = 0;
    goto LABEL_13;
  }

  v65 = v73;
  OUTLINED_FUNCTION_0_56(11);
  v34 = v96;
  v66 = sub_266DAAFCC();
  v67 = v35;
  v96 = v34;
  if (v34)
  {
    v36 = OUTLINED_FUNCTION_2_39();
    v37(v36);
    v66 = 0;
    v67 = 0;
    goto LABEL_13;
  }

  v71 = 12;
  sub_266CFBCE8();
  v17 = v13;
  v38 = v96;
  sub_266DAB00C();
  v96 = v38;
  if (v38)
  {
    v39 = OUTLINED_FUNCTION_2_39();
    v40(v39);
    goto LABEL_13;
  }

  v41 = OUTLINED_FUNCTION_2_39();
  v42(v41);
  memcpy(v89, v72, sizeof(v89));
  v43 = v58;
  v44 = v59;
  v70[0] = v59;
  v70[1] = v58;
  v45 = v56;
  v46 = v57;
  *&v70[8] = v56;
  *&v70[16] = v57;
  v47 = v54;
  *&v70[24] = v54;
  *&v70[32] = v55;
  *&v70[40] = v53;
  *&v70[48] = v64;
  *&v70[56] = v63;
  *&v70[64] = v62;
  v51 = v92;
  v70[72] = v92;
  v48 = v52;
  v70[73] = v52;
  v49 = v60;
  v70[74] = v60;
  *&v70[80] = v68;
  *&v70[88] = v69;
  *&v70[96] = v65;
  *&v70[104] = v66;
  *&v70[112] = v67;
  memcpy(&v70[120], v72, 0x7AuLL);
  sub_266CFBD3C(v70, &v73);
  __swift_destroy_boxed_opaque_existential_0(v61);
  LOBYTE(v73) = v44;
  BYTE1(v73) = v43;
  v74 = v45;
  v75 = v46;
  v76 = v47;
  v77 = v55;
  v78 = v53;
  v79 = v64;
  v80 = v63;
  v81 = v62;
  v82 = v51;
  v83 = v48;
  v84 = v49;
  v85 = v90;
  v86 = v91;
  OUTLINED_FUNCTION_33_7();
  v87 = v67;
  memcpy(v88, v89, sizeof(v88));
  sub_266C9D124(&v73);
  return memcpy(v22, v70, 0xF2uLL);
}

uint64_t sub_266CF920C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_266DAB17C() & 1) == 0)
  {
    goto LABEL_25;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_25;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_266DAB17C() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v6)
  {
    goto LABEL_25;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    v10 = *(a1 + 32) == *(a2 + 32) && v8 == v9;
    if (!v10 && (sub_266DAB17C() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v9)
  {
    goto LABEL_25;
  }

  if (((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0)
  {
    v11 = *(a1 + 49) ^ *(a2 + 49) ^ 1;
    return v11 & 1;
  }

LABEL_25:
  v11 = 0;
  return v11 & 1;
}

uint64_t sub_266CF92F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266CF828C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CF9320@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266CF86A0();
  *a1 = result;
  return result;
}

uint64_t sub_266CF9348(uint64_t a1)
{
  v2 = sub_266CFBC94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CF9384(uint64_t a1)
{
  v2 = sub_266CFBC94();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_266CF93C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_266CF8B48(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0xF2uLL);
  }

  return result;
}

void NSOperatingSystemVersion.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_40_3();
  sub_266DAB33C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    OUTLINED_FUNCTION_40_3();
    v4 = sub_266DAB18C();
    v6 = v4;
    v7 = v5;
    v38 = v4;
    v39 = v5;
    v8 = sub_266C680F8();
    if (sub_266DAAC9C())
    {
      v38 = v6;
      v39 = v7;
      v9 = MEMORY[0x26D5F1630](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v8);

      v10 = 0;
      v41 = *(v9 + 16);
      v11 = v9 + 56;
      v36 = MEMORY[0x277D84F90];
LABEL_7:
      v12 = (v11 + 32 * v10);
      while (v41 != v10)
      {
        if (v10 >= *(v9 + 16))
        {
          __break(1u);
          swift_bridgeObjectRetain_n();

          __break(1u);
          return;
        }

        v14 = *(v12 - 3);
        v13 = *(v12 - 2);
        if ((v13 ^ v14) >> 14)
        {
          v16 = *(v12 - 1);
          v15 = *v12;
          if ((*v12 & 0x1000000000000000) != 0)
          {
            v22 = *v12;

            v19 = sub_266CFAD18(v14, v13, v16, v15, 10);
            v21 = v23;
          }

          else
          {
            if ((v15 & 0x2000000000000000) != 0)
            {
              v18 = HIBYTE(v15) & 0xF;
              v38 = *(v12 - 1);
              v39 = v15 & 0xFFFFFFFFFFFFFFLL;
              v17 = &v38;
            }

            else if ((v16 & 0x1000000000000000) != 0)
            {
              v17 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v18 = v16 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = *(v12 - 1);
              v25 = *v12;
              v17 = sub_266DAAE5C();
            }

            v19 = sub_266CFB738(v17, v18, v14, v13, v16, v15, 10);
            v37 = v20 & 1;

            v21 = v37;
          }

          if ((v21 & 1) == 0)
          {
            v26 = v36;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = v36[2];
              sub_266CFA204();
              v26 = v30;
            }

            v27 = v26;
            v28 = v26[2];
            v36 = v27;
            if (v28 >= v27[3] >> 1)
            {
              sub_266CFA204();
              v36 = v31;
            }

            ++v10;
            v11 = v9 + 56;
            v36[2] = v28 + 1;
            v36[v28 + 4] = v19;
            goto LABEL_7;
          }
        }

        v12 += 4;
        ++v10;
      }

      v32 = v36[2];
      if (!v32 || (v33 = v36[4], v32 == 1) || (v34 = v36[5], v32 < 3))
      {
      }

      else
      {
        v35 = v36[6];
      }
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v40);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_40_3();
}

uint64_t NSOperatingSystemVersion.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266DAB35C();
  if (a2 == -1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    sub_266DAB19C();
  }

  else
  {
    OUTLINED_FUNCTION_36_9();
    MEMORY[0x26D5F1170](46, 0xE100000000000000);
    v7 = OUTLINED_FUNCTION_36_9();
    MEMORY[0x26D5F1170](v7);

    MEMORY[0x26D5F1170](46, 0xE100000000000000);
    v12 = a4;
    v8 = OUTLINED_FUNCTION_36_9();
    MEMORY[0x26D5F1170](v8);

    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    sub_266DAB19C();
  }

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

void sub_266CF9904(uint64_t *a1@<X0>, void *a2@<X8>)
{
  NSOperatingSystemVersion.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v6;
  }
}

void sub_266CF99B4()
{
  OUTLINED_FUNCTION_26_9();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_14(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B10, &unk_266DB6F00);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_17_19(v8);
      OUTLINED_FUNCTION_22_11(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_25();
        sub_266D47124(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
    OUTLINED_FUNCTION_16_15();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v6)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_266CF9ADC()
{
  OUTLINED_FUNCTION_39_5();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 48);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_16_2();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v8)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_266CF9BBC()
{
  OUTLINED_FUNCTION_14_22();
  if (v4)
  {
    OUTLINED_FUNCTION_13_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_30_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_17();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_37_6(v2, v5, &qword_2800C9FA8, &qword_266DAF990);
  OUTLINED_FUNCTION_32_7();
  v9 = sub_266DA7C9C();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_8_9();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_16(v12);
    sub_266D47194(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_19();
  }
}

void sub_266CF9C84()
{
  OUTLINED_FUNCTION_14_22();
  if (v4)
  {
    OUTLINED_FUNCTION_13_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_30_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_17();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_37_6(v2, v5, &qword_2800C9FB0, &unk_266DB6C80);
  OUTLINED_FUNCTION_32_7();
  v9 = sub_266DA7C2C();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_8_9();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_16(v12);
    sub_266D471AC(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_19();
  }
}

void sub_266CF9D4C()
{
  OUTLINED_FUNCTION_14_22();
  if (v4)
  {
    OUTLINED_FUNCTION_13_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_30_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_17();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_37_6(v2, v5, &qword_2800CC870, &qword_266DB6C50);
  OUTLINED_FUNCTION_32_7();
  v9 = sub_266DA957C();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_8_9();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_16(v12);
    sub_266D471DC(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_19();
  }
}

void sub_266CF9E14()
{
  OUTLINED_FUNCTION_26_9();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_14(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC868, &unk_266DB6C40);
      v8 = OUTLINED_FUNCTION_27_9();
      OUTLINED_FUNCTION_6_26(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_25();
        sub_266D47940(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA860, &qword_266DB1EA8);
    OUTLINED_FUNCTION_16_15();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v6)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_266CF9ED4()
{
  OUTLINED_FUNCTION_26_9();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_14(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC858, &qword_266DB6C30);
      v8 = OUTLINED_FUNCTION_27_9();
      OUTLINED_FUNCTION_6_26(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_25();
        sub_266D47208(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC860, &qword_266DB6C38);
    OUTLINED_FUNCTION_16_15();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v6)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_266CF9F94()
{
  OUTLINED_FUNCTION_14_22();
  if (v3)
  {
    OUTLINED_FUNCTION_13_16();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_8();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_17();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_266CFAAAC(*(v0 + 16), v4, &qword_2800CC8D8, &qword_266DB6F38, &qword_2800CC8D0, &qword_266DB6F30);
  v7 = OUTLINED_FUNCTION_40_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_8_9();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_16(v12);
    sub_266D47254(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_19();
  }
}

void sub_266CFA074()
{
  OUTLINED_FUNCTION_14_22();
  if (v4)
  {
    OUTLINED_FUNCTION_13_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_30_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_17();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_37_6(v2, v5, &qword_2800CC8E0, &qword_266DB6F40);
  OUTLINED_FUNCTION_32_7();
  v9 = type metadata accessor for Address();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_8_9();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_16(v12);
    sub_266D47268(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_19();
  }
}

void sub_266CFA13C()
{
  OUTLINED_FUNCTION_14_22();
  if (v4)
  {
    OUTLINED_FUNCTION_13_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_30_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_17();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_37_6(v2, v5, &qword_2800CC8E8, &qword_266DB6F48);
  OUTLINED_FUNCTION_32_7();
  v9 = type metadata accessor for Location();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_8_9();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_16(v12);
    sub_266D47280(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_19();
  }
}

void sub_266CFA204()
{
  OUTLINED_FUNCTION_26_9();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_14(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC880, &unk_266DB6C60);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_17_19(v9);
      OUTLINED_FUNCTION_22_11(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_7_25();
        sub_266D472E0(v11, v12, v13);
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

    memcpy((v3 + 32), (v0 + 32), 8 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v7)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_266CFA2C4()
{
  OUTLINED_FUNCTION_26_9();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_14(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FD8, &unk_266DB24B0);
      v8 = OUTLINED_FUNCTION_27_9();
      OUTLINED_FUNCTION_6_26(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_25();
        sub_266D472BC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_21_14();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v6)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_266CFA378()
{
  OUTLINED_FUNCTION_26_9();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_14(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC878, &qword_266DB6C58);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_17_19(v8);
      OUTLINED_FUNCTION_22_11(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_25();
        sub_266D470E4(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB758, &qword_266DB4750);
    OUTLINED_FUNCTION_16_15();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v6)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_266CFA440()
{
  OUTLINED_FUNCTION_14_22();
  if (v3)
  {
    OUTLINED_FUNCTION_13_16();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_8();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_17();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_266CFAAAC(*(v0 + 16), v4, &qword_2800CB7F0, &unk_266DB6F20, &qword_2800CA8B8, &qword_266DB30F0);
  v7 = OUTLINED_FUNCTION_40_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_8_9();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_16(v12);
    sub_266D47318(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_19();
  }
}

void sub_266CFA520()
{
  OUTLINED_FUNCTION_26_9();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_14(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F10, &unk_266DB6C70);
      v8 = OUTLINED_FUNCTION_27_9();
      OUTLINED_FUNCTION_6_26(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_25();
        sub_266D473FC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F18, &qword_266DB24C0);
    OUTLINED_FUNCTION_16_15();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v6)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_266CFA5E0()
{
  OUTLINED_FUNCTION_26_9();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_14(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_17_19(v8);
      OUTLINED_FUNCTION_22_11(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_25();
        sub_266D47104(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_21_14();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v6)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_266CFA69C()
{
  OUTLINED_FUNCTION_26_9();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_14(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC848, &qword_266DB6C18);
      v8 = OUTLINED_FUNCTION_27_9();
      OUTLINED_FUNCTION_6_26(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_25();
        sub_266D47424(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC850, &unk_266DB6C20);
    OUTLINED_FUNCTION_16_15();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v6)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_266CFA78C()
{
  OUTLINED_FUNCTION_39_5();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 64);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_16_2();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v8)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_266CFA864()
{
  OUTLINED_FUNCTION_14_22();
  if (v4)
  {
    OUTLINED_FUNCTION_13_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_30_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_17();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_37_6(v2, v5, &qword_2800C9F60, &qword_266DAF960);
  OUTLINED_FUNCTION_32_7();
  v9 = sub_266DA82EC();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_8_9();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_16(v12);
    sub_266D471C4(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_19();
  }
}

void sub_266CFA92C()
{
  OUTLINED_FUNCTION_26_9();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_14(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC838, &qword_266DB6C08);
      v8 = OUTLINED_FUNCTION_27_9();
      OUTLINED_FUNCTION_6_26(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_25();
        sub_266C143B0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC840, &qword_266DB6C10);
    OUTLINED_FUNCTION_16_15();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v6)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_266CFA9EC()
{
  OUTLINED_FUNCTION_26_9();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_14(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_17_19(v8);
      OUTLINED_FUNCTION_22_11(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_25();
        sub_266D47298(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_21_14();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_24_9();
  if (!v6)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_266CFAAAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if (result - v12 != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_266CFABAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_266CFACA8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B08, &unk_266DAE470);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_266CFAD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_266CE00BC();

  result = sub_266DAA89C();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_266CFB2AC();
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_266DAAE5C();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_266CFB2AC()
{
  v0 = sub_266CFB318();
  v4 = sub_266CFB34C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_266CFB34C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_266DAA79C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_266DAAC2C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_266CFACA8(v9, 0);
  v12 = sub_266CFB4AC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_266DAA79C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_266DAAE5C();
LABEL_4:

  return sub_266DAA79C();
}

unint64_t sub_266CFB4AC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_266CFB6BC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_266DAA85C();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_266DAAE5C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_266CFB6BC(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_266DAA82C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_266CFB6BC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_266DAA86C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D5F11A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_266CFB738(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_266CFB6BC(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_266DAA84C();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_266CFB6BC(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_266CFB6BC(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_266DAA84C();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_266CFBB7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 242))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_266CFBBD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 242) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 242) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

double sub_266CFBC70(uint64_t a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 121) = 1;
  return result;
}

unint64_t sub_266CFBC94()
{
  result = qword_2800CC800;
  if (!qword_2800CC800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC800);
  }

  return result;
}

unint64_t sub_266CFBCE8()
{
  result = qword_2800CC818;
  if (!qword_2800CC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC818);
  }

  return result;
}

uint64_t sub_266CFBD74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CC808, &qword_266DB6BF8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266CFBDE0()
{
  result = qword_2800CC830;
  if (!qword_2800CC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC830);
  }

  return result;
}

uint64_t sub_266CFBE34(uint64_t a1)
{
  if (*(a1 + 121))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266CFBE50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1 >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_266CFBE98(uint64_t result, int a2, int a3)
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
      *result = 2 * -a2;
      *(result + 8) = 0;
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

uint64_t getEnumTagSinglePayload for DeviceMappingInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeviceMappingInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_266CFC080(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 121))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266CFC0A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 121) = v3;
  return result;
}

unint64_t sub_266CFC0FC()
{
  result = qword_2800CC888;
  if (!qword_2800CC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC888);
  }

  return result;
}

unint64_t sub_266CFC154()
{
  result = qword_2800CC890;
  if (!qword_2800CC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC890);
  }

  return result;
}

unint64_t sub_266CFC1AC()
{
  result = qword_2800CC898;
  if (!qword_2800CC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC898);
  }

  return result;
}

unint64_t sub_266CFC204()
{
  result = qword_2800CC8A0;
  if (!qword_2800CC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC8A0);
  }

  return result;
}

unint64_t sub_266CFC258()
{
  result = qword_2800CC8B0;
  if (!qword_2800CC8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC8B0);
  }

  return result;
}

uint64_t sub_266CFC2AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OperatingSystemVersion(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_266CFC30C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_266CFC34C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MinimumOSVersions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_266CFC484(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266CFC560()
{
  result = qword_2800CC8F0;
  if (!qword_2800CC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC8F0);
  }

  return result;
}

unint64_t sub_266CFC5B8()
{
  result = qword_2800CC8F8;
  if (!qword_2800CC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC8F8);
  }

  return result;
}

unint64_t sub_266CFC610()
{
  result = qword_2800CC900;
  if (!qword_2800CC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC900);
  }

  return result;
}

unint64_t sub_266CFC668()
{
  result = qword_2800CC908;
  if (!qword_2800CC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC908);
  }

  return result;
}

void OUTLINED_FUNCTION_3_33()
{
  v0[14] = 0;
  v0[15] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[10] = 0;
  v0[11] = 0;
}

size_t OUTLINED_FUNCTION_6_26(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void OUTLINED_FUNCTION_8_14(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return sub_266DAB00C();
}

uint64_t OUTLINED_FUNCTION_11_18()
{

  return sub_266DAB0DC();
}

uint64_t OUTLINED_FUNCTION_15_19()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_16_15()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_21_14()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_23_13()
{
  v0[14] = 0;
  v0[15] = 0;
  v0[13] = 0;
  v0[16] = 0;
  v0[17] = 0;
}

uint64_t OUTLINED_FUNCTION_27_9()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_33_7()
{
  v1 = v0[17];
  v0[75] = v0[16];
  v0[76] = v1;
  v2 = v0[14];
  v0[77] = v0[13];
  v0[78] = v2;
}

void OUTLINED_FUNCTION_34_4()
{
  v2 = *(v0 + 60);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
}

uint64_t OUTLINED_FUNCTION_36_9()
{

  return sub_266DAB13C();
}

size_t OUTLINED_FUNCTION_37_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_266CFABAC(v5, a2, a3, a4, v4);
}

uint64_t sub_266CFC9B8()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_28156F218);
  v1 = __swift_project_value_buffer(v0, qword_28156F218);
  if (qword_2800C9100 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FC68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t DevicesLoadError.hashValue.getter()
{
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](0);
  return sub_266DAB2DC();
}

unint64_t sub_266CFCB28()
{
  result = qword_2800CC910;
  if (!qword_2800CC910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC910);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DevicesLoadError(_BYTE *result, int a2, int a3)
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

double sub_266CFCC28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = (*(a4 + 32))(a3, a4);
  v9 = *(v8 + 16);
  v10 = 32;
  if (v9)
  {
    while (1)
    {
      v11 = *(v8 + v10);
      v12 = *(v8 + v10 + 16);
      v13 = *(v8 + v10 + 48);
      v21 = *(v8 + v10 + 32);
      v22 = v13;
      v19 = v11;
      v20 = v12;
      v14 = v13 == a1 && *(&v13 + 1) == a2;
      if (v14 || (sub_266DAB17C() & 1) != 0)
      {
        break;
      }

      v10 += 64;
      if (!--v9)
      {
        goto LABEL_8;
      }
    }

    sub_266C24964(&v19, &v18);

    v16 = v20;
    *a5 = v19;
    a5[1] = v16;
    result = *&v21;
    v17 = v22;
    a5[2] = v21;
    a5[3] = v17;
  }

  else
  {
LABEL_8:

    result = 0.0;
    a5[2] = 0u;
    a5[3] = 0u;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

void sub_266CFCD14()
{
  OUTLINED_FUNCTION_6();
  v70 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC938, &qword_266DB7430);
  v68 = OUTLINED_FUNCTION_0_2(v1);
  v69 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10();
  v67 = v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC940, &qword_266DB7438);
  OUTLINED_FUNCTION_0_2(v61);
  v63 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10();
  v58 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC948, &qword_266DB7440);
  v65 = OUTLINED_FUNCTION_0_2(v12);
  v66 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10();
  v59 = v17;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB1B8, &qword_266DB3480);
  OUTLINED_FUNCTION_0_2(v64);
  v62 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10();
  v60 = v22;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB228, &qword_266DB34C0);
  OUTLINED_FUNCTION_0_2(v57);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v55 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC950, &qword_266DB7448);
  OUTLINED_FUNCTION_7_7(v30);
  v31 = sub_266DA96FC();
  *&v74 = v31;
  v32 = *(v30 + 48);
  v33 = *(v30 + 52);
  swift_allocObject();

  v34 = sub_266DA96FC();
  *(&v74 + 1) = v34;
  LOBYTE(v72) = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC958, &unk_266DB7450);
  OUTLINED_FUNCTION_7_7(v35);

  v36 = sub_266DA973C();
  *&v75 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB180, &qword_266DB3450);
  OUTLINED_FUNCTION_7_7(v37);

  *(&v75 + 1) = sub_266DA96FC();
  v76 = MEMORY[0x277D84FA0];
  v72 = v31;
  sub_266C230E8(&qword_28156F088, &qword_2800CC950, &qword_266DB7448);

  sub_266DA98AC();

  sub_266C9E2B8();
  v56 = v38;
  (*(v24 + 8))(v29, v57);
  v71 = v34;
  v72 = v36;
  sub_266C230E8(&qword_2800CC960, &qword_2800CC958, &unk_266DB7450);
  v39 = v58;
  sub_266DA981C();

  sub_266C230E8(&qword_2800CC968, &qword_2800CC940, &qword_266DB7438);
  v40 = v59;
  v41 = v61;
  sub_266DA98AC();
  (*(v63 + 8))(v39, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB200, &qword_266DB53D0);
  sub_266C230E8(&qword_2800CC970, &qword_2800CC948, &qword_266DB7440);
  v42 = v60;
  v43 = v65;
  sub_266DA984C();
  (*(v66 + 8))(v40, v43);
  sub_266C9E568();
  v45 = v44;
  (*(v62 + 8))(v42, v64);
  v71 = v56;
  v72 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC30, &unk_266DB7460);
  sub_266C230E8(&unk_28156F0A8, &qword_2800CBC30, &unk_266DB7460);
  v46 = v67;
  sub_266DA982C();
  sub_266C230E8(&qword_2800CC978, &qword_2800CC938, &qword_266DB7430);
  v47 = v68;
  v48 = sub_266DA97EC();
  (*(v69 + 8))(v46, v47);
  *&v73 = v48;

  sub_266C9E854();
  v50 = v49;

  *(&v73 + 1) = v50;
  v72 = v50;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBE40, &qword_266DB5458);
  sub_266C230E8(&unk_28156F090, &qword_2800CBE40, &qword_266DB5458);
  OUTLINED_FUNCTION_8_15();
  sub_266DA986C();

  sub_266DA968C();

  v72 = v48;
  OUTLINED_FUNCTION_8_15();
  sub_266DA986C();

  sub_266DA968C();

  v72 = v45;
  OUTLINED_FUNCTION_8_15();
  sub_266DA986C();
  sub_266DA968C();

  v51 = v76;
  v52 = v74;
  v53 = v75;
  v54 = v70;
  *v70 = v73;
  v54[1] = v52;
  v54[2] = v53;
  *(v54 + 6) = v51;
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CFD540@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  result = sub_266CFD538();
  *a2 = result;
  return result;
}

void sub_266CFD574(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v6 = *a1;

  sub_266C3843C(v5);
  *a3 = v6;
}

uint64_t sub_266CFD5CC()
{
  v1 = v0;
  v2 = v0[2];
  OUTLINED_FUNCTION_14_23();
  sub_266DA96CC();
  v3 = v1[3];
  OUTLINED_FUNCTION_14_23();
  sub_266DA96CC();
  v4 = v1[4];
  OUTLINED_FUNCTION_14_23();
  sub_266DA970C();
  v5 = v1[5];
  OUTLINED_FUNCTION_14_23();
  sub_266DA96CC();
  v6 = v1[6];
  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_266DAAD4C();
    sub_266DA96AC();
    sub_266CFED0C(&qword_2800CC130, 255, MEMORY[0x277CBCDA8]);
    result = sub_266DAAA4C();
    v6 = v21;
    v8 = v22;
    v9 = v23;
    v10 = v24;
    v11 = v25;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v8 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);

    v10 = 0;
  }

  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v10;
    v16 = v11;
    v17 = v10;
    if (!v11)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
      return sub_266C33DE8();
    }

    while (1)
    {
      sub_266DA969C();

      v10 = v17;
      v11 = v18;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_266DAAD6C())
      {
        sub_266DA96AC();
        swift_dynamicCast();
        v17 = v10;
        v18 = v11;
        if (v20)
        {
          continue;
        }
      }

      return sub_266C33DE8();
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= ((v9 + 64) >> 6))
    {
      return sub_266C33DE8();
    }

    v16 = *(v8 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_266CFD7F8()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_266DAA0EC();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v38 - v10;
  v12 = *(v0 + 80);
  v13 = sub_266DAA12C();
  v14 = *(v13 + 16);
  if (v14)
  {
    v48 = MEMORY[0x277D84F90];
    sub_266C3881C();
    v15 = v48;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v18 = *(v16 + 64);
    v38[1] = v13;
    v19 = v13 + ((v18 + 32) & ~v18);
    v40 = *(v16 + 56);
    v41 = v17;
    v39 = (v16 - 8);
    v42 = v16;
    do
    {
      v20 = v41;
      v41(v11, v19, v1);
      v20(v9, v11, v1);
      sub_266DAA0DC();

      OUTLINED_FUNCTION_15_20();
      if (v21)
      {
        v22 = sub_266DAA0DC();
        v46 = v23;
        v47 = v22;
      }

      else
      {
        v46 = 0;
        v47 = 0;
      }

      sub_266DAA0CC();

      OUTLINED_FUNCTION_15_20();
      if (v24)
      {
        v25 = sub_266DAA0CC();
        v44 = v26;
        v45 = v25;
      }

      else
      {
        v44 = 0;
        v45 = 0;
      }

      v27 = sub_266DAA0BC();
      v43 = v28;
      v29 = *v39;
      (*v39)(v9, v1);
      v30 = v11;
      v31 = v11;
      v32 = v1;
      v29(v31, v1);
      v48 = v15;
      v33 = *(v15 + 16);
      if (v33 >= *(v15 + 24) >> 1)
      {
        sub_266C3881C();
        v15 = v48;
      }

      *(v15 + 16) = v33 + 1;
      v34 = (v15 + (v33 << 6));
      v35 = v46;
      v34[4] = v47;
      v34[5] = v35;
      v34[6] = 0;
      v34[7] = 0;
      v36 = v44;
      v34[8] = v45;
      v34[9] = v36;
      v19 += v40;
      v37 = v43;
      v34[10] = v27;
      v34[11] = v37;
      --v14;
      v1 = v32;
      v11 = v30;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CFDA98()
{
  v1 = v0;
  sub_266CFCD14();
  *(v0 + 16) = v22;
  *(v0 + 32) = v23;
  *(v0 + 48) = v24;
  *(v0 + 64) = v25;
  *(v0 + 72) = 0;
  sub_266DAA55C();
  sub_266DAA54C();
  [objc_allocWithZone(MEMORY[0x277D49698]) init];
  v2 = sub_266DAA1AC();
  OUTLINED_FUNCTION_7_7(v2);
  *(v0 + 80) = sub_266DAA11C();
  sub_266CFED0C(&qword_2800CC928, v3, type metadata accessor for FMIPManagerWrapperImpl);

  sub_266DAA10C();

  v4 = *(v0 + 80);
  sub_266CFED0C(&qword_2800CC930, v5, type metadata accessor for FMIPManagerWrapperImpl);

  sub_266DAA19C();

  v6 = *(v1 + 80);

  sub_266DAA0FC();

  if (qword_2800C9340 != -1)
  {
    OUTLINED_FUNCTION_0_57();
  }

  v7 = sub_266DA94AC();
  __swift_project_value_buffer(v7, qword_28156F218);
  OUTLINED_FUNCTION_17_1();
  swift_retain_n();
  v8 = sub_266DA948C();
  v9 = sub_266DAAB0C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134218752;
    v11 = *(v1 + 80);
    v12 = *(sub_266DAA16C() + 16);

    *(v10 + 4) = v12;

    *(v10 + 12) = 2048;
    v13 = *(v1 + 80);
    sub_266DAA16C();
    OUTLINED_FUNCTION_3_34();
    sub_266CFDDAC();
    v15 = v14;

    *(v10 + 14) = v15;

    *(v10 + 22) = 2048;
    v16 = *(v1 + 80);
    v17 = *(sub_266DAA15C() + 16);

    *(v10 + 24) = v17;

    *(v10 + 32) = 2048;
    v18 = *(v1 + 80);
    sub_266DAA15C();
    OUTLINED_FUNCTION_2_40();
    sub_266CFDDAC();
    v20 = v19;

    *(v10 + 34) = v20;

    _os_log_impl(&dword_266C08000, v8, v9, "FMIPManagerWrapper init: devices: %ld (%ld), items: %ld (%ld)", v10, 0x2Au);
    OUTLINED_FUNCTION_33_6();
  }

  else
  {
  }

  return v1;
}

void sub_266CFDDAC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBF20, &qword_266DB5750);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = *(v5 + 16);
  v30 = v5;

  for (i = 0; ; ++i)
  {
    if (v13 == i)
    {
LABEL_15:

      OUTLINED_FUNCTION_5();
      return;
    }

    v15 = *(v3(0) - 8);
    v16 = v30 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);
    v1();
    v18 = sub_266DAA23C();
    if (__swift_getEnumTagSinglePayload(v12, 1, v18) != 1)
    {
      break;
    }

    sub_266C3A088(v12, &qword_2800CBF20, &qword_266DB5750);
  }

  v29 = v1;
  v19 = 0;
  v20 = &qword_2800CBF20;
LABEL_7:
  v21 = sub_266C3A088(v12, v20, &qword_266DB5750);
  v22 = __OFADD__(v19, 1);
  v23 = v19 + 1;
  if (!v22)
  {
    v24 = v20;
    v28 = v23;
    while (1)
    {
      v25 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v25 == v13)
      {
        goto LABEL_15;
      }

      if (v25 >= v13)
      {
        goto LABEL_17;
      }

      (v29)(v21);
      if (__swift_getEnumTagSinglePayload(v10, 1, v18) != 1)
      {
        v26 = v24;
        v12 = v10;
        ++i;
        v20 = v26;
        v19 = v28;
        goto LABEL_7;
      }

      v21 = sub_266C3A088(v10, v24, &qword_266DB5750);
      ++i;
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
}

void sub_266CFDFF8()
{
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v8 = *(v0 + 48);
  v9 = *(v0 + 64);
  sub_266CFD5CC();
  v1 = *(v0 + 80);
  sub_266DAA13C();
  if (qword_2800C9340 != -1)
  {
    OUTLINED_FUNCTION_0_57();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_28156F218);
  oslog = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = OUTLINED_FUNCTION_11();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, oslog, v3, "FMIPManagerWrapper deactivate: stopping refreshing.", v4, 2u);
    OUTLINED_FUNCTION_6_1();
  }
}

void sub_266CFE0EC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_266DAA48C();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266C233D0(v7, &v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F18, &qword_266DB24C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC918, &qword_266DB7420);
  if (swift_dynamicCast())
  {
    sub_266C0B0D8(v33, v36);
    v16 = v7[3];
    v17 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v16);
    if ((*(v17 + 128))(v16, v17))
    {
      if (qword_2800C9340 != -1)
      {
        OUTLINED_FUNCTION_0_57();
      }

      v18 = sub_266DA94AC();
      __swift_project_value_buffer(v18, qword_28156F218);
      v19 = sub_266DA948C();
      v20 = sub_266DAAB0C();
      if (OUTLINED_FUNCTION_16_0(v20))
      {
        v21 = OUTLINED_FUNCTION_11();
        *v21 = 0;
        _os_log_impl(&dword_266C08000, v19, v20, "About to play sound on an item; forcing a refresh of items to get locations in case play sound fails.", v21, 2u);
        OUTLINED_FUNCTION_6_1();
      }

      v22 = *(v1 + 80);
      sub_266DAA47C();
      sub_266DAA14C();
      (*(v11 + 8))(v15, v8);
    }

    v23 = v37;
    v24 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    (*(v24 + 8))(*(v1 + 80), v5, v3, v23, v24);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_266C3A088(v33, &qword_2800CC920, &qword_266DB7428);
    if (qword_2800C9340 != -1)
    {
      OUTLINED_FUNCTION_0_57();
    }

    v25 = sub_266DA94AC();
    __swift_project_value_buffer(v25, qword_28156F218);
    v26 = sub_266DA948C();
    v27 = sub_266DAAAEC();
    if (OUTLINED_FUNCTION_16_0(v27))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_13_14();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_33_6();
    }

    LOWORD(v36[0]) = 256;
    v5(v36);
  }

  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CFE3EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_2800C9340 != -1)
  {
    OUTLINED_FUNCTION_0_57();
  }

  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_28156F218);
  OUTLINED_FUNCTION_17_1();

  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v7))
  {
    v8 = OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_4_33(v8, 3.8521e-34);
    OUTLINED_FUNCTION_2_40();
    sub_266CFDDAC();
    *(v8 + 14) = v9;

    OUTLINED_FUNCTION_13_14();
    _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
    OUTLINED_FUNCTION_33_6();
  }

  else
  {
  }

  v15 = *(v3 + 40);
  sub_266C6A6CC(a2);
  OUTLINED_FUNCTION_11_19();
}

uint64_t sub_266CFE508(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_2800C9340 != -1)
  {
    OUTLINED_FUNCTION_0_57();
  }

  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_28156F218);
  OUTLINED_FUNCTION_17_1();

  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v7))
  {
    v8 = OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_4_33(v8, 3.8521e-34);
    OUTLINED_FUNCTION_2_40();
    sub_266CFDDAC();
    *(v8 + 14) = v9;

    OUTLINED_FUNCTION_13_14();
    _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
    OUTLINED_FUNCTION_33_6();
  }

  else
  {
  }

  v15 = *(v3 + 40);
  v16 = *(v3 + 48);
  sub_266C6A6CC(a2);
  OUTLINED_FUNCTION_11_19();

  return sub_266DA971C();
}

uint64_t sub_266CFE638(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_2800C9340 != -1)
  {
    OUTLINED_FUNCTION_0_57();
  }

  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_28156F218);
  v6 = a2;
  v7 = sub_266DA948C();
  v8 = sub_266DAAAEC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    v11 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFC0, &qword_266DB5C90);
    v12 = sub_266DAA72C();
    v14 = sub_266C22A3C(v12, v13, &v22);

    *(v9 + 4) = v14;
    OUTLINED_FUNCTION_13_14();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_33_6();
  }

  *(v3 + 72) = 1;
  v20 = *(v3 + 32);
  LOBYTE(v22) = 0;
  return sub_266DA96CC();
}

uint64_t sub_266CFE7A4()
{
  v1 = v0;
  if (qword_2800C9340 != -1)
  {
    OUTLINED_FUNCTION_0_57();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_28156F218);
  OUTLINED_FUNCTION_17_1();
  swift_retain_n();
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_19_14();
    *v5 = 134218240;
    v6 = *(sub_266DAA16C() + 16);

    *(v5 + 4) = v6;

    *(v5 + 12) = 2048;
    sub_266DAA16C();
    OUTLINED_FUNCTION_3_34();
    sub_266CFDDAC();
    v8 = v7;

    *(v5 + 14) = v8;

    _os_log_impl(&dword_266C08000, v3, v4, "Refreshed devices (count: %ld with location: %ld)", v5, 0x16u);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
  }

  v9 = *(v1 + 32);
  v10 = sub_266DAA16C();
  sub_266C6A6EC(v10);

  sub_266DA96DC();
}

uint64_t sub_266CFE954(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = v3;
  if (qword_2800C9340 != -1)
  {
    OUTLINED_FUNCTION_0_57();
  }

  v7 = sub_266DA94AC();
  __swift_project_value_buffer(v7, qword_28156F218);
  OUTLINED_FUNCTION_17_1();

  v8 = sub_266DA948C();
  v9 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v9))
  {
    v10 = OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_4_33(v10, 3.8521e-34);
    OUTLINED_FUNCTION_3_34();
    sub_266CFDDAC();
    *(v10 + 14) = v11;

    _os_log_impl(&dword_266C08000, v8, v9, a3, v10, 0x16u);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
  }

  v12 = *(v5 + 32);
  sub_266C6A6EC(a2);
  OUTLINED_FUNCTION_11_19();
}

uint64_t sub_266CFEA7C()
{
  v1 = v0;
  if (qword_2800C9340 != -1)
  {
    OUTLINED_FUNCTION_0_57();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_28156F218);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v4))
  {
    v5 = OUTLINED_FUNCTION_11();
    *v5 = 0;
    _os_log_impl(&dword_266C08000, v3, v4, "Updated User Info", v5, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v6 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB180, &qword_266DB3450);
  sub_266C230E8(&unk_28156F070, &qword_2800CB180, &qword_266DB3450);
  return sub_266DA97BC();
}

void *sub_266CFEB88()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];

  v8 = v0[10];

  return v0;
}

uint64_t sub_266CFEC0C()
{
  sub_266CFEB88();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_266CFED0C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_57()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_33(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = *(v2 + 16);
  *(result + 12) = 2048;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_19()
{

  return sub_266DA96DC();
}

uint64_t OUTLINED_FUNCTION_19_14()
{

  return swift_slowAlloc();
}

uint64_t sub_266CFEE30()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CC980);
  v1 = __swift_project_value_buffer(v0, qword_2800CC980);
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E61A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CFEEF8()
{
  sub_266CE82F8();

  return sub_266DA79AC();
}

uint64_t sub_266CFEF4C()
{
  OUTLINED_FUNCTION_22_0();
  v1[20] = v2;
  v1[21] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB478, &qword_266DB7540) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v4 = sub_266DA7C5C();
  v1[23] = v4;
  OUTLINED_FUNCTION_11_3(v4);
  v1[24] = v5;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266CFF03C()
{
  if (qword_2800C9348 != -1)
  {
    swift_once();
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800CC980);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "Executing FindDeviceGenericErrorFlow flow", v4, 2u);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }

  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  v21 = *(v0 + 160);

  (*(v7 + 104))(v6, *MEMORY[0x277D5BC00], v8);
  sub_266DA7ADC();
  (*(v7 + 16))(v5, v6, v8);
  v11 = sub_266DA7A5C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 3;
  *(v12 + 24) = xmmword_266DB7470;
  sub_266DA7ACC();
  sub_266DA7A1C();
  v13 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((v0 + 72), *(v0 + 96));
  sub_266DA7A2C();

  (*(v7 + 8))(v6, v8);
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  sub_266C233D0(v9 + 16, v0 + 112);
  sub_266D00360(v9, v0 + 16);
  v14 = swift_allocObject();
  v15 = *(v0 + 32);
  *(v14 + 16) = *(v0 + 16);
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v0 + 48);
  *(v14 + 64) = *(v0 + 64);
  v16 = sub_266DA75FC();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 152) = sub_266DA75EC();
  sub_266DA7D5C();

  OUTLINED_FUNCTION_28();

  return v19();
}

uint64_t sub_266CFF370(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = type metadata accessor for Snippets();
  v2[24] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v2[29] = v5;
  v6 = *(v5 - 8);
  v2[30] = v6;
  v7 = *(v6 + 64) + 15;
  v2[31] = swift_task_alloc();
  v8 = sub_266DA7C0C();
  v2[32] = v8;
  v9 = *(v8 - 8);
  v2[33] = v9;
  v10 = *(v9 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080) - 8);
  v2[38] = v13;
  v2[39] = *(v13 + 64);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CFF61C, 0, 0);
}

uint64_t sub_266CFF61C()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  *(v0 + 384) = v4[1];
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  *v2 = 4;
  *(v2 + 8) = xmmword_266DB2290;
  *(v2 + 24) = 0;
  OUTLINED_FUNCTION_32();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  *(v0 + 472) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v0 + 392) = sub_266DA93CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v8 = swift_allocObject();
  *(v0 + 400) = v8;
  *(v8 + 16) = xmmword_266DAE3B0;
  v9 = *v4;
  *(v0 + 473) = 3;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 408) = v10;
  *v10 = v11;
  v10[1] = sub_266CFF784;

  return sub_266D945C8((v0 + 473), 0);
}

uint64_t sub_266CFF784(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_21_1();
  *v6 = v5;
  v8 = *(v7 + 408);
  v9 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[52] = v1;

  if (v1)
  {
    v11 = v5[47];
    sub_266C47654(v5[46], &qword_2800CA050, &qword_266DB0080);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
    v14 = sub_266D00184;
  }

  else
  {
    v5[53] = a1;
    v14 = sub_266CFF8C4;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

void sub_266CFF8C4()
{
  v1 = v0[50];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  *(v1 + 32) = v0[53];
  sub_266DA7E5C();
  v5 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
  sub_266DA7C7C();
  v8 = OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
  sub_266DA7BCC();
  if (sub_266C3A14C(v1, v11, v12))
  {
    v13 = v0[50];
    v14 = v13 & 0xC000000000000001;
    sub_266CB9F54(0, (v13 & 0xC000000000000001) == 0, v13);
    v15 = v0[50];
    if (v14)
    {
      v16 = MEMORY[0x26D5F1780](0, v15);
    }

    else
    {
      v16 = *(v15 + 32);
    }

    v17 = v16;
    v18 = [v16 catId];

    v94 = sub_266DAA70C();
    v97 = v19;
  }

  else
  {
    v94 = 0;
    v97 = 0;
  }

  v21 = v0[47];
  v20 = v0[48];
  v22 = v0[45];
  v23 = v0[44];
  v24 = v0[38];
  v25 = v0[39];
  v91 = v0[37];
  v92 = v0[36];
  v26 = v0[34];
  v90 = v0[35];
  v28 = v0[32];
  v27 = v0[33];
  v93 = v21;
  v95 = v0[24];
  v96 = v0[43];
  sub_266C4756C(v0[46], v22);
  sub_266C4756C(v21, v23);
  v29 = *(v24 + 80);
  v30 = (v29 + 24) & ~v29;
  v31 = (v25 + v29 + v30) & ~v29;
  v32 = swift_allocObject();
  v0[54] = v32;
  *(v32 + 16) = v20;
  sub_266C475DC(v22, v32 + v30);
  sub_266C475DC(v23, v32 + v31);
  (*(v27 + 16))(v26, v90, v28);
  v33 = swift_task_alloc();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = 0;
  *(v33 + 40) = v94;
  *(v33 + 48) = v97;
  *(v33 + 56) = v91;
  *(v33 + 64) = 514;
  *(v33 + 72) = sub_266C4876C;
  *(v33 + 80) = v32;
  *(v33 + 88) = v92;

  sub_266DA800C();

  sub_266C4756C(v93, v96);
  if (__swift_getEnumTagSinglePayload(v96, 1, v95) == 1)
  {
    v34 = v0 + 43;
  }

  else
  {
    v35 = v0[46];
    v36 = v0[42];
    v37 = v0[24];
    sub_266C476A8(v0[43], v0[28]);
    v38 = OUTLINED_FUNCTION_32();
    sub_266C4756C(v38, v39);
    v40 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v40, v41, v37) != 1)
    {
      v69 = v0[27];
      v70 = v0[28];
      v71 = v0[24];
      sub_266C476A8(v0[42], v69);
      v0[15] = v71;
      v72 = sub_266C4DB4C();
      v0[16] = v72;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
      sub_266C47750(v70, boxed_opaque_existential_1);
      v0[20] = v71;
      v0[21] = v72;
      v74 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
      sub_266C47750(v69, v74);
      OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_24_1();
      v0[55] = v75;
      *v75 = v76;
      v75[1] = sub_266CFFE70;
      v77 = v0[50];
      v78 = v0[48];
      v79 = v0[31];
      v80 = v0[22];
      OUTLINED_FUNCTION_39();

      __asm { BR              X5 }
    }

    v34 = v0 + 42;
    sub_266C477B4(v0[28]);
  }

  v42 = *v34;
  v43 = v0[47];
  v44 = v0[41];
  v45 = v0[24];
  sub_266C47654(v42, &qword_2800CA050, &qword_266DB0080);
  v46 = OUTLINED_FUNCTION_32();
  sub_266C4756C(v46, v47);
  v48 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, v49, v45);
  v51 = v0[41];
  v52 = v0[24];
  if (EnumTagSinglePayload == 1)
  {
    v53 = v0[46];
    v54 = v0[40];
    sub_266C47654(v51, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v53, v54);
    v55 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v55, v56, v52) == 1)
    {
      sub_266C47654(v0[40], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_24_1();
      v0[58] = v57;
      *v57 = v58;
      v57[1] = sub_266C8D684;
      v59 = v0[50];
      v60 = v0[48];
      v61 = v0[31];
      v62 = v0[22];
      OUTLINED_FUNCTION_39();

      __asm { BR              X3 }
    }

    v83 = v0[24];
    v84 = v0[25];
    sub_266C476A8(v0[40], v84);
    v0[5] = v83;
    v0[6] = sub_266C4DB4C();
    v85 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    sub_266C47750(v84, v85);
    OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_24_1();
    v0[57] = v86;
    *v86 = v87;
    OUTLINED_FUNCTION_90_0(v86);
  }

  else
  {
    v65 = v0[26];
    sub_266C476A8(v51, v65);
    v0[10] = v52;
    v0[11] = sub_266C4DB4C();
    v66 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    sub_266C47750(v65, v66);
    OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_24_1();
    v0[56] = v67;
    *v67 = v68;
    OUTLINED_FUNCTION_90_0(v67);
  }

  OUTLINED_FUNCTION_39();

  __asm { BR              X4 }
}

uint64_t sub_266CFFE70()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266CFFF7C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D00080()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D00184()
{
  v1 = v0[49];
  v2 = v0[50];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[44];
  v6 = v0[45];
  v8 = v0[42];
  v7 = v0[43];
  v10 = v0[40];
  v9 = v0[41];
  v14 = v0[37];
  v15 = v0[36];
  v16 = v0[35];
  v17 = v0[34];
  v18 = v0[31];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[25];

  *(v2 + 16) = 0;

  OUTLINED_FUNCTION_28();
  v11 = v0[52];
  OUTLINED_FUNCTION_39();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D002C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4716C;

  return sub_266CFEF4C();
}

uint64_t sub_266D00398()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_266C4716C;

  return sub_266CFF370(v3, v0 + 16);
}

id sub_266D0042C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aa_fmipAccount];
  *a2 = result;
  return result;
}

uint64_t sub_266D00468()
{
  v98 = type metadata accessor for FMIPCoreDevicePinger();
  v0 = OUTLINED_FUNCTION_0(v98);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_6();
  v104 = v4 - v3;
  OUTLINED_FUNCTION_3_4();
  v103 = sub_266DAAB7C();
  OUTLINED_FUNCTION_1_5();
  v97 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_6();
  v96 = v10 - v9;
  OUTLINED_FUNCTION_3_4();
  v101 = sub_266DAAB6C();
  v11 = OUTLINED_FUNCTION_0(v101);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_4();
  v14 = sub_266DA9FDC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_4();
  v102 = type metadata accessor for FMIPCoreDeviceSearcher();
  v16 = OUTLINED_FUNCTION_0(v102);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_6();
  v21 = (v20 - v19);
  v22 = sub_266DA947C();
  OUTLINED_FUNCTION_1_5();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_6();
  v30 = v29 - v28;
  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
    swift_once();
  }

  sub_266DA946C();
  sub_266DA945C();
  v99 = *(v24 + 8);
  v99(v30, v22);
  v31 = type metadata accessor for FMIPManagerWrapperImpl();
  swift_allocObject();
  v32 = sub_266CFDA98();
  v120 = v31;
  v121 = &off_287863C10;
  v119[0] = v32;
  v33 = type metadata accessor for SFMContactStoreDefaultService();
  swift_allocObject();
  v123 = v33;
  v124 = &off_28785FC28;
  v122 = sub_266C69368();
  v34 = type metadata accessor for SFMCachingContactDataProvider();
  v35 = swift_allocObject();
  sub_266D01174(v119, v118);

  v36 = sub_266D011D0(v118, v35);
  v118[3] = v34;
  v118[4] = &protocol witness table for SFMCachingContactDataProvider;
  v118[0] = v36;
  sub_266D01330(v119);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC998, qword_266DB7618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DB05D0;
  v38 = sub_266D4E790(0);
  v95 = v22;
  *(inited + 56) = &type metadata for DeviceDiscovery;
  *(inited + 64) = &off_2878664D0;
  *(inited + 32) = v38;
  *(inited + 40) = v39;
  *(inited + 48) = v40 & 1;
  v41 = sub_266D4E790(1);
  *(inited + 96) = &type metadata for DeviceDiscovery;
  *(inited + 104) = &off_2878664D0;
  *(inited + 72) = v41;
  *(inited + 80) = v42;
  *(inited + 88) = v43 & 1;
  v44 = sub_266C5CB0C();
  *(inited + 136) = &type metadata for RapportDiscovery;
  *(inited + 144) = &off_28785F6C8;
  *(inited + 112) = v44;
  *(inited + 120) = v45;
  type metadata accessor for NearbyScanSession();
  swift_allocObject();
  v46 = sub_266C4F250(inited);
  v47 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v21[3] = v31;
  v21[4] = &off_287863C20;
  v100 = v32;
  *v21 = v32;
  sub_266C233D0(v118, (v21 + 5));
  v48 = type metadata accessor for BluetoothStateProvider();
  v94 = v30;
  v49 = objc_allocWithZone(v48);

  v50 = [v49 init];
  v21[13] = v48;
  v21[14] = &off_287860BF0;
  v21[10] = v50;
  v21[18] = &type metadata for AccountStateProvider;
  v21[19] = &off_28785FB48;
  v21[15] = v47;
  v21[16] = 0xD000000000000015;
  v21[17] = 0x8000000266DC2130;
  v21[23] = &type metadata for SFMUserDefaultsSettingProvider;
  v21[24] = &protocol witness table for SFMUserDefaultsSettingProvider;
  v120 = &type metadata for PListMappingLoader;
  v121 = &off_287867AD8;
  v51 = type metadata accessor for DeviceMappingProvider();
  v52 = swift_allocObject();
  v52[7] = &type metadata for AddHardCodedMappingsLoader;
  v52[8] = &off_287867AC8;
  v53 = swift_allocObject();
  v52[4] = v53;
  sub_266D01384(v119, v53 + 16);
  v52[2] = 0;
  v52[3] = 0;
  v93 = v47;

  sub_266D013E0(v119);
  v21[30] = v51;
  v21[31] = &off_287864E70;
  v21[27] = v52;
  sub_266DA81BC();
  __swift_project_boxed_opaque_existential_1(v119, v120);
  v21[35] = type metadata accessor for GEOServicesReverseGeocoder();
  v21[36] = &off_287868A70;
  __swift_allocate_boxed_opaque_existential_1(v21 + 32);
  sub_266DA7AFC();
  __swift_destroy_boxed_opaque_existential_0(v119);
  v54 = v21 + *(v102 + 52);
  sub_266DAAB2C();
  v21[25] = 0x4004000000000000;
  v21[26] = v46;
  v55 = *(v102 + 56);
  sub_266C22FD4();
  sub_266DA9FBC();
  v119[0] = MEMORY[0x277D84F90];
  sub_266C3601C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  sub_266C5D904();
  sub_266DAAD0C();
  v92 = *MEMORY[0x277D85260];
  v91 = *(v97 + 104);
  v91(v96);
  OUTLINED_FUNCTION_3_35();
  *(v21 + v55) = sub_266D689A4(v56, v57, v58, v59, v60, v61);
  sub_266D01434(v21, v104, type metadata accessor for FMIPCoreDeviceSearcher);
  sub_266C233D0(v118, v104 + v98[5]);
  v62 = (v104 + v98[6]);
  v62[3] = v31;
  v62[4] = &off_287863C20;
  *v62 = v100;
  v90 = v98[7];

  sub_266DA9FBC();
  v119[0] = MEMORY[0x277D84F90];
  sub_266DAAD0C();
  (v91)(v96, v92, v103);
  OUTLINED_FUNCTION_3_35();
  *(v104 + v90) = sub_266D689A4(v63, v64, v65, v66, v67, v68);
  sub_266DA7AEC();
  LOBYTE(v122) = 1;
  v117[3] = v31;
  v117[4] = &off_287863C20;
  v117[0] = v100;
  v116 = &off_28785FB48;
  v114[0] = v93;
  v114[1] = 0xD000000000000015;
  v114[2] = 0x8000000266DC2130;
  v115 = &type metadata for AccountStateProvider;
  v112 = v102;
  v113 = &off_287862060;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v111);
  sub_266D01434(v21, boxed_opaque_existential_1, type metadata accessor for FMIPCoreDeviceSearcher);
  v109 = v98;
  v110 = &off_287860338;
  v70 = __swift_allocate_boxed_opaque_existential_1(&v108);
  sub_266D01434(v104, v70, type metadata accessor for FMIPCoreDevicePinger);
  v106 = &type metadata for AceDevicePinger;
  v107 = &protocol witness table for AceDevicePinger;
  *&v105 = swift_allocObject();
  sub_266CC7678(v119, v105 + 16);
  type metadata accessor for FMIPCoreFindDeviceSession();
  v71 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v117, v31);
  OUTLINED_FUNCTION_1_5();
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_0_6();
  v77 = (v76 - v75);
  (*(v78 + 16))(v76 - v75);
  __swift_mutable_project_boxed_opaque_existential_1(v114, v115);
  OUTLINED_FUNCTION_1_5();
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_0_6();
  v84 = (v83 - v82);
  (*(v85 + 16))(v83 - v82);
  v86 = *v77;
  v87 = *v84;
  v88 = *(v84 + 2);
  *(v71 + 40) = v31;
  *(v71 + 48) = &off_287863C20;
  *(v71 + 16) = v86;
  *(v71 + 88) = &off_28785FB48;
  *(v71 + 56) = v87;
  *(v71 + 72) = v88;
  *(v71 + 80) = &type metadata for AccountStateProvider;
  sub_266CC76B0(v119);
  *(v71 + 224) = 0;
  *(v71 + 96) = v46;
  sub_266C0B0D8(&v111, v71 + 104);
  sub_266C0B0D8(&v108, v71 + 144);
  sub_266C0B0D8(&v105, v71 + 184);
  __swift_destroy_boxed_opaque_existential_0(v114);
  __swift_destroy_boxed_opaque_existential_0(v117);
  sub_266D01494(v104, type metadata accessor for FMIPCoreDevicePinger);
  sub_266D01494(v21, type metadata accessor for FMIPCoreDeviceSearcher);
  __swift_destroy_boxed_opaque_existential_0(v118);
  sub_266DAABCC();
  sub_266DA946C();
  sub_266DA945C();
  v99(v94, v95);
  return v71;
}

uint64_t sub_266D00F38()
{
  if (*(v0 + 224))
  {
    return 0;
  }

  v1 = v0;
  if (*(*__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)) + 72))
  {
    return 0;
  }

  v2 = *(v0 + 96);
  if (sub_266C4F20C())
  {
    return 0;
  }

  v4 = __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  KeyPath = swift_getKeyPath();
  LOBYTE(v5) = sub_266C68428(KeyPath, 1346981190, 0xE400000000000000, v5);

  return v5 & 1;
}

void sub_266D00FE4()
{
  *(v0 + 224) = 1;
  v1 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_266CFDFF8();
}

uint64_t *sub_266D0101C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  return v0;
}

uint64_t sub_266D01064()
{
  sub_266D0101C();

  return MEMORY[0x2821FE8D8](v0, 225, 7);
}

uint64_t sub_266D011D0(const void *a1, uint64_t a2)
{
  v8[3] = &type metadata for SFMContactDataProviderImpl;
  v8[4] = &off_28785FCC0;
  v8[0] = swift_allocObject();
  memcpy((v8[0] + 16), a1, 0x50uLL);
  sub_266C233D0(v8, a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
  *(a2 + 56) = sub_266DAA6CC();
  sub_266C233D0(v8, v7);
  v4 = swift_allocObject();
  sub_266C0B0D8(v7, v4 + 16);
  *(a2 + 64) = sub_266D014EC;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  v5 = [objc_opt_self() defaultCenter];
  [v5 addObserver:a2 selector:sel_contactStoreChangedWithNotification_ name:*MEMORY[0x277CBD140] object:0];

  __swift_destroy_boxed_opaque_existential_0(v8);
  return a2;
}

uint64_t sub_266D01434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266D01494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_266D01598()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CC9A0);
  v1 = __swift_project_value_buffer(v0, qword_2800CC9A0);
  if (qword_2800C9108 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E6190);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static NLv3ToSiriKitIntentConverter.getSiriKitIntent(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  DeviceNLIntent = type metadata accessor for FindDeviceNLIntent(0);
  v4 = *(*(DeviceNLIntent - 8) + 64);
  MEMORY[0x28223BE20](DeviceNLIntent - 8);
  v41 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_266DA8BDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800C9350 != -1)
  {
    swift_once();
  }

  v11 = sub_266DA94AC();
  v12 = __swift_project_value_buffer(v11, qword_2800CC9A0);
  v13 = *(v7 + 16);
  v13(v10, a1, v6);
  v14 = sub_266DA948C();
  v15 = sub_266DAAB0C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v39[1] = v12;
    v17 = v16;
    v18 = swift_slowAlloc();
    v40 = a1;
    v19 = v18;
    v43 = v18;
    *v17 = 136315138;
    sub_266D01AB0();
    v20 = sub_266DAB13C();
    v39[0] = v13;
    v22 = v21;
    (*(v7 + 8))(v10, v6);
    v23 = sub_266C22A3C(v20, v22, &v43);
    v13 = v39[0];

    *(v17 + 4) = v23;
    _os_log_impl(&dword_266C08000, v14, v15, "Forming FindDeviceNLIntent wrapper from NLv3 intent: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    a1 = v40;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v24 = v41;
  v13(v41, a1, v6);
  v25 = [objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntent()) init];
  v26 = sub_266CDE900();
  [v25 setDeviceQuery_];

  v27 = v25;
  v28 = sub_266DA948C();
  v29 = sub_266DAAB0C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v43 = v31;
    *v30 = 136315138;
    v32 = v27;
    v33 = [v32 description];
    v34 = sub_266DAA70C();
    v36 = v35;

    v37 = sub_266C22A3C(v34, v36, &v43);

    *(v30 + 4) = v37;
    _os_log_impl(&dword_266C08000, v28, v29, "FindDevice SiriKit intent is: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  result = sub_266D01A54(v24);
  *v42 = v27;
  return result;
}

uint64_t sub_266D01A54(uint64_t a1)
{
  DeviceNLIntent = type metadata accessor for FindDeviceNLIntent(0);
  (*(*(DeviceNLIntent - 8) + 8))(a1, DeviceNLIntent);
  return a1;
}

unint64_t sub_266D01AB0()
{
  result = qword_2800CA5A0;
  if (!qword_2800CA5A0)
  {
    sub_266DA8BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA5A0);
  }

  return result;
}

uint64_t sub_266D01B08(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_266D01B48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266D01B94()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CC9B8);
  v1 = __swift_project_value_buffer(v0, qword_2800CC9B8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SFMDeviceLockState.hashValue.getter()
{
  v1 = *v0;
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](v1);
  return sub_266DAB2DC();
}

void SFMDeviceLockStateProvider.lockState.getter(_BYTE *a1@<X8>)
{
  v2 = MKBGetDeviceLockState();
  if (v2 >= 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x3010102u >> (8 * v2);
  }

  if (qword_2800C9358 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_2800CC9B8);
  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = sub_266DAA72C();
    v11 = sub_266C22A3C(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_266C08000, v5, v6, "Device lock state computed as: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D5F2480](v8, -1, -1);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  *a1 = v3;
}

unint64_t sub_266D01F10()
{
  result = qword_2800CC9D0;
  if (!qword_2800CC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC9D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SFMDeviceLockState(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SFMDeviceLockStateProvider(_BYTE *result, int a2, int a3)
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

uint64_t sub_266D02108(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_266D02148(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266D021C0()
{
  v1 = sub_266DA81AC();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_6();
  v9 = (v8 - v7);
  if (qword_2800C9430 != -1)
  {
    OUTLINED_FUNCTION_3_36();
  }

  v10 = sub_266DA94AC();
  __swift_project_value_buffer(v10, qword_2800E64F0);
  v11 = sub_266DA948C();
  v12 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v12))
  {
    v0 = swift_slowAlloc();
    *v0 = 0;
    _os_log_impl(&dword_266C08000, v11, v12, "FindFriend.FlowStrategy.actionForInput() called", v0, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  sub_266DA816C();
  sub_266CD6764(v9, v31);
  (*(v4 + 8))(v9, v1);
  sub_266C744CC(v31, v29, &qword_2800CA870, &qword_266DB1F08);
  if (v30)
  {
    if (v30 == 255)
    {
      sub_266C3A088(v29, &qword_2800CA870, &qword_266DB1F08);
    }

    else
    {
      sub_266C6F308(v29);
    }

    sub_266C744CC(v31, v29, &qword_2800CA870, &qword_266DB1F08);
    v20 = sub_266DA948C();
    v21 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v21))
    {
      v22 = OUTLINED_FUNCTION_14_0();
      v23 = OUTLINED_FUNCTION_13_0();
      v28 = v23;
      *v22 = 136315138;
      OUTLINED_FUNCTION_13_17();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA870, &qword_266DB1F08);
      sub_266DAA72C();
      OUTLINED_FUNCTION_8_16();
      v24 = sub_266C22A3C(v12, v0, &v28);

      *(v22 + 4) = v24;
      OUTLINED_FUNCTION_12_18(&dword_266C08000, v25, v26, "FindFriend.FlowStrategy.actionForInput() ignoring unsupported task: %s");
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      sub_266C3A088(v29, &qword_2800CA870, &qword_266DB1F08);
    }

    sub_266DA7CCC();
  }

  else
  {
    sub_266C6F308(v29);
    sub_266C744CC(v31, v29, &qword_2800CA870, &qword_266DB1F08);
    v13 = sub_266DA948C();
    v14 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v14))
    {
      v15 = OUTLINED_FUNCTION_14_0();
      v16 = OUTLINED_FUNCTION_13_0();
      v28 = v16;
      *v15 = 136315138;
      OUTLINED_FUNCTION_13_17();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA870, &qword_266DB1F08);
      sub_266DAA72C();
      OUTLINED_FUNCTION_8_16();
      v17 = sub_266C22A3C(v12, v0, &v28);

      *(v15 + 4) = v17;
      OUTLINED_FUNCTION_12_18(&dword_266C08000, v18, v19, "FindFriend.FlowStrategy.actionForInput() handling task: %s");
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      sub_266C3A088(v29, &qword_2800CA870, &qword_266DB1F08);
    }

    sub_266DA7CBC();
  }

  return sub_266C3A088(v31, &qword_2800CA870, &qword_266DB1F08);
}