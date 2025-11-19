unint64_t sub_1DCD00EF4()
{
  sub_1DD0DEC1C();

  v1 = *(v0 + 32);
  swift_getErrorValue();
  v2 = sub_1DD0DF18C();
  MEMORY[0x1E12A6780](v2);

  return 0xD000000000000012;
}

uint64_t sub_1DCD00F88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = swift_unknownObjectRetain();
  return sub_1DCD01008(v5, v3);
}

uint64_t sub_1DCD00FC4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_1DCD01008(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

void *ErrorAction.error.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *ErrorAction.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  return result;
}

void *ErrorAction.init(_:)(uint64_t a1)
{
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = a1;
  return v1;
}

uint64_t sub_1DCD010F0()
{
  v1 = *(*(v0 + 16) + 32);
  swift_willThrow();
  v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t ErrorAction.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ErrorAction.__deallocating_deinit()
{
  ErrorAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD011C8(uint64_t a1)
{
  result = sub_1DCD01304(&qword_1ECCA4848);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCD01234()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB193FC;

  return sub_1DCD010D0();
}

uint64_t sub_1DCD012C0(uint64_t a1)
{
  result = sub_1DCD01304(&qword_1ECCA4850);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCD01304(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ErrorAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of ErrorAction.run()()
{
  v2 = *(*v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DCB193FC;

  return v6();
}

void sub_1DCD01548()
{
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  v3 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD01650()
{
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *v2;
  OUTLINED_FUNCTION_13_0();
  *v9 = v8;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCD01760()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_1DCD017C4()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[8];

  return v1();
}

void sub_1DCD0183C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[25];
  v2 = sub_1DD0DDE9C();
  sub_1DCD01E78(v1, (v0 + 7));
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCD01EE8((v0 + 7));
  v0[26] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v3 = qword_1EDE57D40;
  v4 = type metadata accessor for CATTemplateExecutor();
  v0[15] = v4;
  v0[16] = &off_1F58563F0;
  v0[12] = v3;
  v5 = *__swift_project_boxed_opaque_existential_1(v0 + 12, v4);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD019BC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v7 = *(v6 + 216);
  v8 = *(v6 + 208);
  v9 = *v2;
  OUTLINED_FUNCTION_13_0();
  *v10 = v9;
  *(v4 + 224) = v0;

  if (!v0)
  {
    *(v4 + 232) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCD01AEC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[1];
  v2 = v0[29];

  return v1(v2);
}

uint64_t sub_1DCD01B50()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[1];
  v2 = v0[28];

  return v1();
}

void sub_1DCD01BC8()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[25];
  v2 = sub_1DD0DDE9C();
  sub_1DCD01E78(v1, (v0 + 7));
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCD01EE8((v0 + 7));
  v0[26] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v3 = qword_1EDE57D40;
  v4 = type metadata accessor for CATTemplateExecutor();
  v0[15] = v4;
  v0[16] = &off_1F58563F0;
  v0[12] = v3;
  v5 = *__swift_project_boxed_opaque_existential_1(v0 + 12, v4);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD01D48()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v7 = *(v6 + 216);
  v8 = *(v6 + 208);
  v9 = *v2;
  OUTLINED_FUNCTION_13_0();
  *v10 = v9;
  *(v4 + 224) = v0;

  if (!v0)
  {
    *(v4 + 232) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCD01E78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8AB0, &qword_1DD0E23E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCD01EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8AB0, &qword_1DD0E23E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ErrorResponses.init()(uint64_t *a1@<X8>)
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE57D40;
  a1[3] = type metadata accessor for CATTemplateExecutor();
  a1[4] = &off_1F58563F0;
  *a1 = v2;

  sub_1DD0DCF8C();
}

uint64_t ErrorResponses.errorInApp(deviceState:catOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD01FF4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 160);
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_4_47();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_31(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_5_41(v5);
  OUTLINED_FUNCTION_8_3();

  return sub_1DCC6FD30(v7, v8, v9, v10);
}

uint64_t sub_1DCD02118()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t ErrorResponses.appLaunchFailed(deviceState:catOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD02248()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 160);
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_4_47();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_31(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_5_41(v5);
  OUTLINED_FUNCTION_8_3();

  return sub_1DCC6FD30(v7, v8, v9, v10);
}

uint64_t ErrorResponses.noAppsFound(deviceState:shouldSuggestStoreSearch:catOverrides:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 232) = a3;
  *(v4 + 240) = v3;
  *(v4 + 280) = a2;
  *(v4 + 224) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD02388()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 224);
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v4 = *(v0 + 240);
  v5 = *(v0 + 280);
  *(v0 + 120) = MEMORY[0x1E69E6370];
  *(v0 + 96) = v5;
  sub_1DCB20B30((v0 + 96), (v0 + 128));
  swift_isUniquelyReferenced_nonNull_native();
  sub_1DCC60044();
  *(v0 + 248) = v2;
  v6 = *__swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v7 = swift_task_alloc();
  *(v0 + 256) = v7;
  *v7 = v0;
  v7[1] = sub_1DCD02540;
  v8 = *(v0 + 232);
  OUTLINED_FUNCTION_8_3();

  return sub_1DCC6FD30(v9, v10, v11, v12);
}

uint64_t sub_1DCD02540(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *(*v2 + 248);
  v7 = *v2;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v4 + 264) = v1;

  if (v1)
  {
    v9 = sub_1DCD026A0;
  }

  else
  {
    *(v4 + 272) = a1;
    v9 = sub_1DCD02684;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t ErrorResponses.appDoesNotSupportIntent(appDisplayInfo:catOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v5 = sub_1DD0DD23C();
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCD027B4, 0, 0);
}

uint64_t sub_1DCD027B4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  sub_1DCB28B08(*(v0 + 80), v1, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1DCB16D50(*(v0 + 104), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
    v3 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 112);
    (*(v5 + 32))(v4, *(v0 + 104), v6);
    *(v0 + 16) = sub_1DD0DD21C();
    *(v0 + 40) = MEMORY[0x1E69E6158];
    *(v0 + 24) = v7;
    sub_1DCB20B30((v0 + 16), (v0 + 48));
    v3 = MEMORY[0x1E69E7CC8];
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC60044();
    (*(v5 + 8))(v4, v6);
  }

  *(v0 + 136) = v3;
  v8 = *__swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_1DCD02974;
  v10 = *(v0 + 88);

  return sub_1DCC6FD30(16, v3, 0, v10);
}

uint64_t sub_1DCD02974(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *(*v2 + 136);
  v7 = *v2;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v4 + 152) = v1;

  if (v1)
  {
    v9 = sub_1DCD02B2C;
  }

  else
  {
    *(v4 + 160) = a1;
    v9 = sub_1DCD02AB8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCD02AB8()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];
  v4 = v0[20];

  return v3(v4);
}

uint64_t sub_1DCD02B2C()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

uint64_t ErrorResponses.appNotFoundOnDevice(deviceState:catOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD02BB4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 160);
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_4_47();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_31(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_5_41(v5);
  OUTLINED_FUNCTION_8_3();

  return sub_1DCC6FD30(v7, v8, v9, v10);
}

uint64_t ErrorResponses.targetDeviceIncompatible(deviceState:catOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD02CF0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 160);
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_4_47();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_31(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_5_41(v5);
  OUTLINED_FUNCTION_8_3();

  return sub_1DCC6FD30(v7, v8, v9, v10);
}

uint64_t sub_1DCD02E28(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD02E40()
{
  OUTLINED_FUNCTION_39();
  v1 = sub_1DD0DDE9C();
  *(v0 + 32) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v2;
  *v2 = v3;
  v2[1] = sub_1DCD02F20;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 48);

  return sub_1DCF66E08(v4, v6, v1, 0);
}

uint64_t sub_1DCD02F20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_29();

  return v6();
}

void static ErrorTemplates.appDoesNotSupportIntent(appDisplayInfo:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v7 = OUTLINED_FUNCTION_99(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v28 - v20;
  v22 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v21, v23, v24, v22);
  sub_1DCB28B08(a1, v14, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v25 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  sub_1DCD0506C(v14, v26 + v25);
  v27 = (v26 + ((v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = a2;
  v27[1] = a3;
  sub_1DD0DCF8C();
}

void static ErrorTemplates.noAppsFound(deviceState:shouldSuggestStoreSearch:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v22[-v13 - 8];
  v15 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v14, v16, v17, v15);
  sub_1DCB28B08(a1, v22, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_24_19(v18);
  *(v19 + 64) = v20;
  *(v19 + 72) = a2;
  *(v19 + 80) = a3;
  *(v19 + 88) = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD03318()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  strcpy((inited + 32), "responseMode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  result = sub_1DD0DDE9C();
  qword_1ECCA4858 = result;
  return result;
}

uint64_t sub_1DCD033B0()
{
  OUTLINED_FUNCTION_42();
  v0[22] = v1;
  v0[23] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[24] = v3;
  *v3 = v4;
  v3[1] = sub_1DCD03440;

  return static ErrorTemplates.genericError()((v0 + 12));
}

uint64_t sub_1DCD03440()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCD03538()
{
  v6 = v0;
  OUTLINED_FUNCTION_34_4();
  v1 = v0[22];
  v2 = v0[23];
  memcpy(v5, v0 + 2, 0x49uLL);
  v1(v5);
  sub_1DCB16D50((v0 + 2), &unk_1ECCA3260, &unk_1DD0E5AD0);
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCD035D0()
{
  v7 = v0;
  v1 = *(v0 + 200);
  *(v0 + 208) = 1;
  *(v0 + 16) = v1;
  *(v0 + 88) = 1;
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  memcpy(__dst, (v0 + 16), 0x49uLL);
  v3(__dst);
  sub_1DCB16D50(v0 + 16, &unk_1ECCA3260, &unk_1DD0E5AD0);
  OUTLINED_FUNCTION_29();

  return v4();
}

void sub_1DCD03690()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  v3 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  OUTLINED_FUNCTION_27_0(&dword_1DD0ED130);
}

uint64_t sub_1DCD0377C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCD03874()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD038D0()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 72);

  return v1();
}

void sub_1DCD0394C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v15 - v9;
  v11 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v10, v12, v13, v11);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD03A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 216) = a4;
  *(v5 + 224) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DCD03A40, 0, 0);
}

void sub_1DCD03A40()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[25] = v2;
  v0[26] = &off_1F58563F0;
  v0[22] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 22, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD03BA0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = v2[31];
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  v3[32] = v0;

  v8 = v3[29];
  v7 = v3[30];

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCD03CC0()
{
  v6 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  OUTLINED_FUNCTION_34_4();
  v1 = v0[27];
  v2 = v0[28];
  memcpy(v5, v0 + 2, 0x49uLL);
  v1(v5);
  sub_1DCB16D50((v0 + 2), &unk_1ECCA3260, &unk_1DD0E5AD0);
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCD03D60()
{
  v7 = v0;
  v1 = *(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  *(v0 + 264) = 1;
  *(v0 + 16) = v1;
  *(v0 + 88) = 1;
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  memcpy(__dst, (v0 + 16), 0x49uLL);
  v3(__dst);
  sub_1DCB16D50(v0 + 16, &unk_1ECCA3260, &unk_1DD0E5AD0);
  OUTLINED_FUNCTION_29();

  return v4();
}

void sub_1DCD03E28()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD03F80()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCD040B8()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 88);

  return v1();
}

void sub_1DCD04134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v20[-v11 - 8];
  v13 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v12, v14, v15, v13);
  sub_1DCB28B08(a1, v20, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_24_19(v16);
  v17[8] = v18;
  v17[9] = a2;
  v17[10] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD04230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCD042D0;

  return static ErrorTemplates.errorInApp(deviceState:)((v6 + 12), a4);
}

uint64_t sub_1DCD042D0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t static ErrorTemplates.errorInApp(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCD043DC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[26];
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[27] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v4 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_18_22(v4, v4, &off_1F58563F0);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD0458C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[29];
  v6 = v4[28];
  v7 = v4[27];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 240) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCD046C4()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD04720()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 240);

  return v1();
}

uint64_t sub_1DCD0479C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCD042D0;

  return static ErrorTemplates.appLaunchFailed(deviceState:)((v6 + 12), a4);
}

uint64_t static ErrorTemplates.appLaunchFailed(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCD04850()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[26];
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[27] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v4 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_18_22(v4, v4, &off_1F58563F0);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD04A00()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[29];
  v6 = v4[28];
  v7 = v4[27];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 240) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCD04B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v10 = swift_task_alloc();
  v7[24] = v10;
  *v10 = v7;
  v10[1] = sub_1DCD042D0;

  return static ErrorTemplates.noAppsFound(deviceState:shouldSuggestStoreSearch:)((v7 + 12), a4, a5);
}

uint64_t static ErrorTemplates.noAppsFound(deviceState:shouldSuggestStoreSearch:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 312) = a3;
  *(v3 + 264) = a1;
  *(v3 + 272) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCD04BF8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 272);
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v4 = *(v0 + 312);
  *(v0 + 160) = MEMORY[0x1E69E6370];
  *(v0 + 136) = v4;
  sub_1DCB20B30((v0 + 136), (v0 + 168));
  swift_isUniquelyReferenced_nonNull_native();
  sub_1DCC60044();
  *(v0 + 280) = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v5 = qword_1EDE57D40;
  v6 = type metadata accessor for CATTemplateExecutor();
  *(v0 + 120) = v6;
  *(v0 + 128) = &off_1F58563F0;
  *(v0 + 96) = v5;
  __swift_project_boxed_opaque_existential_1((v0 + 96), v6);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD04E38()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[37];
  v6 = v4[36];
  v7 = v4[35];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 304) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCD04F70()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 304);

  return v1();
}

uint64_t sub_1DCD04FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v7 = swift_task_alloc();
  v6[24] = v7;
  *v7 = v6;
  v7[1] = sub_1DCD042D0;

  return static ErrorTemplates.appDoesNotSupportIntent(appDisplayInfo:)();
}

uint64_t sub_1DCD0506C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCD050DC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v2);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = (v0 + ((*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_26_14();

  return sub_1DCD04FCC(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1DCD05210()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_3_50(v7);

  return sub_1DCD04B38(v9, v10, v11, v12, v3, v4, v5);
}

uint64_t static ErrorTemplates.appDoesNotSupportIntent(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_42();
  v0[15] = v1;
  v0[16] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64) + 15;
  v0[17] = swift_task_alloc();
  v6 = sub_1DD0DD23C();
  v0[18] = v6;
  OUTLINED_FUNCTION_99(v6);
  v0[19] = v7;
  v9 = *(v8 + 64) + 15;
  v0[20] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCD053AC()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_1DD0DDE9C();
  sub_1DCB28B08(v3, v2, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1DCB16D50(*(v0 + 136), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  }

  else
  {
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 144);
    (*(v7 + 32))(v6, *(v0 + 136), v8);
    *(v0 + 56) = sub_1DD0DD21C();
    *(v0 + 80) = v4;
    *(v0 + 64) = v9;
    sub_1DCB20B30((v0 + 56), (v0 + 88));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC60044();
    (*(v7 + 8))(v6, v8);
  }

  *(v0 + 168) = v5;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v10 = qword_1EDE57D40;
  v11 = type metadata accessor for CATTemplateExecutor();
  *(v0 + 40) = v11;
  *(v0 + 48) = &off_1F58563F0;
  *(v0 + 16) = v10;
  __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD05610()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[23];
  v6 = v4[22];
  v7 = v4[21];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 192) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCD05748()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[20];
  v2 = v0[17];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCD057BC()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[20];
  v2 = v0[17];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_29();
  v4 = v0[24];

  return v3();
}

uint64_t sub_1DCD05830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCD042D0;

  return static ErrorTemplates.appNotFoundOnDevice(deviceState:)((v6 + 12), a4);
}

uint64_t sub_1DCD058D0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);
  OUTLINED_FUNCTION_26_14();

  return sub_1DCD05830(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCD05968()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;
  v8 = OUTLINED_FUNCTION_8_1();

  return sub_1DCD03A20(v8, v9, v10, v4, v3);
}

uint64_t sub_1DCD05A10()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);
  OUTLINED_FUNCTION_26_14();

  return sub_1DCD04230(v3, v4, v5, v6, v7, v8);
}

uint64_t static ErrorTemplates.appNotFoundOnDevice(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCD05ABC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[26];
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[27] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v4 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_18_22(v4, v4, &off_1F58563F0);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD05C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCD042D0;

  return static ErrorTemplates.targetDeviceIncompatible(deviceState:)((v6 + 12), a4);
}

uint64_t static ErrorTemplates.targetDeviceIncompatible(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCD05D40()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[26];
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[27] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v4 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_18_22(v4, v4, &off_1F58563F0);
  sub_1DD0DCF8C();
}

void sub_1DCD05F04()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  v3 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  OUTLINED_FUNCTION_27_0(&dword_1DD0ED130);
}

uint64_t sub_1DCD05FF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCD060E8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);
  OUTLINED_FUNCTION_26_14();

  return sub_1DCD0479C(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_11Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  }

  v2 = v0[10];

  return swift_deallocObject();
}

uint64_t sub_1DCD061D0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);
  OUTLINED_FUNCTION_26_14();

  return sub_1DCD05C8C(v3, v4, v5, v6, v7, v8);
}

_BYTE *storeEnumTagSinglePayload for ErrorTemplates(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCD0632C()
{
  swift_getErrorValue();
  DynamicType = swift_getDynamicType();
  swift_getErrorValue();
  if (DynamicType != swift_getDynamicType())
  {
    goto LABEL_19;
  }

  swift_getErrorValue();
  v1 = sub_1DD0DF18C();
  v3 = v2;
  swift_getErrorValue();
  if (v1 == sub_1DD0DF18C() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_1DD0DF0AC();

    if ((v6 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v7 = sub_1DD0DADFC();
  v8 = sub_1DD0DADFC();
  v9 = [v7 domain];
  v10 = sub_1DD0DDFBC();
  v12 = v11;

  v13 = [v8 domain];
  v14 = sub_1DD0DDFBC();
  v16 = v15;

  if (v10 == v14 && v12 == v16)
  {
  }

  else
  {
    v18 = sub_1DD0DF0AC();

    if ((v18 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v19 = [v7 code];
  if (v19 != [v8 code])
  {
LABEL_18:

LABEL_19:
    v21 = 0;
    return v21 & 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_0_44();
  OUTLINED_FUNCTION_0_44();
  v21 = 1;

  return v21 & 1;
}

uint64_t ErrorWithCodeConcept.conceptType.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

void *ErrorWithCodeConcept.__allocating_init(app:errorCode:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[7] = 0xD000000000000013;
  result[8] = 0x80000001DD119C30;
  result[6] = a5;
  return result;
}

void *ErrorWithCodeConcept.init(app:errorCode:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[7] = 0xD000000000000013;
  v5[8] = 0x80000001DD119C30;
  v5[6] = a5;
  return v5;
}

uint64_t ErrorWithCodeConcept.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  return v0;
}

uint64_t ErrorWithCodeConcept.__deallocating_deinit()
{
  ErrorWithCodeConcept.deinit();

  return swift_deallocClassInstance();
}

uint64_t InterruptionPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

uint64_t ExecutionContext.init(outputPublisher:aceServiceInvoker:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DCAFF9E8(a1, a3);

  return sub_1DCAFF9E8(a2, a3 + 40);
}

unint64_t sub_1DCD06894()
{
  result = qword_1ECCA4860;
  if (!qword_1ECCA4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4860);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InterruptionPolicy(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of Executable.execute(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DCB193FC;

  return v11(a1, a2, a3);
}

void SiriEnvironment.aceServiceContext.getter()
{
  type metadata accessor for AceServiceContextProvider();
  OUTLINED_FUNCTION_8_37();
  sub_1DCD0ED60(v0, v1, v2);
  OUTLINED_FUNCTION_45_9();

  sub_1DD0DCA7C();
}

uint64_t sub_1DCD06BB8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t AceServiceContextProvider.init(storage:)()
{

  *(v0 + 16) = 1;
  return v0;
}

uint64_t sub_1DCD06C68@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AceServiceContextProvider();
  result = sub_1DD0DDAFC();
  *a1 = result;
  return result;
}

void sub_1DCD06CEC(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DD0DCF8C();
}

void sub_1DCD06D8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4890, &qword_1DD0ED3E8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DD0DCF8C();
}

void sub_1DCD06E30(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1DCD070D4(v3, v4);
  sub_1DCD06E94(v3, v4, a1);

  sub_1DCD070F8(v3, v4);
}

void sub_1DCD06E94(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  switch(a2)
  {
    case 1:
      *a3 = a1;
      v4 = 2;
      goto LABEL_13;
    case 2:
      *a3 = a1;
      *(a3 + 8) = 0;

      goto LABEL_5;
    case 3:
      switch(a1)
      {
        case 1uLL:
          v14 = 1;
          goto LABEL_18;
        case 2uLL:
          *a3 = 3;
          *(a3 + 8) = 3;
          return;
        case 4uLL:
          v14 = 4;
LABEL_18:
          *a3 = v14;
          goto LABEL_19;
        default:
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v6 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v6, qword_1EDE57E00);
          sub_1DCD070D4(a1, 3u);
          v7 = sub_1DD0DD8EC();
          v8 = sub_1DD0DE6EC();
          sub_1DCD070F8(a1, 3u);
          if (os_log_type_enabled(v7, v8))
          {
            v9 = OUTLINED_FUNCTION_151();
            v10 = OUTLINED_FUNCTION_83();
            v16 = v10;
            *v9 = 136315138;
            sub_1DCD070D4(a1, 3u);
            v11 = sub_1DD0DE02C();
            v13 = sub_1DCB10E9C(v11, v12, &v16);

            *(v9 + 4) = v13;
            _os_log_impl(&dword_1DCAFC000, v7, v8, "ExecuteRemoteFlow exit value being read, but we're still in-progress in state=%s", v9, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v10);
            OUTLINED_FUNCTION_92_0();
            OUTLINED_FUNCTION_80();
          }

          *a3 = 0;
LABEL_19:
          *(a3 + 8) = 3;
          break;
      }

      return;
    default:
      *a3 = a1;
      v4 = 1;
LABEL_13:
      *(a3 + 8) = v4;

LABEL_5:
      v5 = a1;
      return;
  }
}

id sub_1DCD070D4(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

void sub_1DCD070F8(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

void ExecuteOnRemoteFlow.init(device:outputPublisher:executeOnRemoteFlowStrategy:)()
{
  OUTLINED_FUNCTION_15_29();
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4878, &qword_1DD0ED358);
  OUTLINED_FUNCTION_73_1(v4);
  OUTLINED_FUNCTION_19_23();
}

void ExecuteOnRemoteFlow.__allocating_init(device:outputPublisher:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  ExecuteOnRemoteFlow.init(device:outputPublisher:)();
}

void ExecuteOnRemoteFlow.init(device:outputPublisher:)()
{
  OUTLINED_FUNCTION_15_29();
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4878, &qword_1DD0ED358);
  OUTLINED_FUNCTION_73_1(v4);
  OUTLINED_FUNCTION_19_23();
}

_BYTE *ExecuteOnRemoteFlowStrategy.__allocating_init(shouldFallbackOnAWDL:shouldSendSpeechPackage:shouldOutputErrorDialog:)(char a1, char a2, char a3)
{
  result = OUTLINED_FUNCTION_98_4();
  result[16] = a1;
  result[17] = a2;
  result[18] = a3;
  return result;
}

void ExecuteOnRemoteFlow.__allocating_init(inputToExecute:device:outputPublisher:executeOnRemoteFlowStrategy:)()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_52_1();
  ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:executeOnRemoteFlowStrategy:)();
}

void ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:executeOnRemoteFlowStrategy:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_79_4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_15_29();
  v5 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4878, &qword_1DD0ED358);
  OUTLINED_FUNCTION_73_1(v9);
  OUTLINED_FUNCTION_19_23();
}

void ExecuteOnRemoteFlow.__allocating_init(inputToExecute:device:outputPublisher:)()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_48_1();
  ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:)();
}

void ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_15_29();
  v5 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4878, &qword_1DD0ED358);
  OUTLINED_FUNCTION_73_1(v9);
  OUTLINED_FUNCTION_19_23();
}

void ExecuteOnRemoteFlow.__allocating_init(inputToExecute:device:outputPublisher:shouldSendSpeechPackage:)()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_52_1();
  ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:shouldSendSpeechPackage:)();
}

void ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:shouldSendSpeechPackage:)()
{
  OUTLINED_FUNCTION_50();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_15_29();
  v5 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4878, &qword_1DD0ED358);
  OUTLINED_FUNCTION_73_1(v9);
  OUTLINED_FUNCTION_19_23();
}

void ExecuteOnRemoteFlow.__allocating_init(inputToExecute:device:shouldFallbackOnAWDL:outputPublisher:)()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_52_1();
  ExecuteOnRemoteFlow.init(inputToExecute:device:shouldFallbackOnAWDL:outputPublisher:)();
}

void ExecuteOnRemoteFlow.init(inputToExecute:device:shouldFallbackOnAWDL:outputPublisher:)()
{
  OUTLINED_FUNCTION_50();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_15_29();
  v5 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4878, &qword_1DD0ED358);
  OUTLINED_FUNCTION_73_1(v9);
  OUTLINED_FUNCTION_19_23();
}

void ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:aceService:deviceState:executeOnRemoteFlowStrategy:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_79_4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_15_29();
  v5 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4878, &qword_1DD0ED358);
  OUTLINED_FUNCTION_73_1(v9);
  OUTLINED_FUNCTION_19_23();
}

void ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:aceService:deviceState:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_79_4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_15_29();
  v5 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4878, &qword_1DD0ED358);
  OUTLINED_FUNCTION_73_1(v9);
  OUTLINED_FUNCTION_19_23();
}

uint64_t sub_1DCD08B14(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  if (*(v1 + 24) != 3)
  {
    return 0;
  }

  v10 = *(v1 + 16);
  if (v10 != 3 && v10 != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_49();
  sub_1DCD0ECAC(a1, v9, v12);
  type metadata accessor for Input(0);
  v13 = 1;
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_inputToExecute;
  OUTLINED_FUNCTION_5_35();
  sub_1DCD0E344(v9, v1 + v18);
  swift_endAccess();
  return v13;
}

void sub_1DCD08C04()
{
  OUTLINED_FUNCTION_42();
  v1[52] = v2;
  v1[53] = v0;
  v3 = type metadata accessor for ExecuteOnRemotePayload();
  v1[54] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  v1[55] = OUTLINED_FUNCTION_38();
  v6 = type metadata accessor for IdentifiedUser();
  v1[56] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  v1[57] = OUTLINED_FUNCTION_38();
  sub_1DD0DD53C();
}

uint64_t sub_1DCD098D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 536);
  v3 = *(v1 + 528);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCD099D8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 512);
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);

  OUTLINED_FUNCTION_0_45();
  sub_1DCD0ED08(v1, v4);
  OUTLINED_FUNCTION_108_2(*(v3 + 16), 4);
  OUTLINED_FUNCTION_17_18();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCD09A8C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 560);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 568) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCD0A0D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 592);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 600) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCD0A1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_230();
  a19 = v23;
  a20 = v24;
  a18 = v20;
  v25 = v20[73];
  v26 = v20[44];
  v27 = v26;
  v28 = sub_1DD0DD8EC();
  v29 = sub_1DD0DE6DC();
  sub_1DCB51C9C(v26);
  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_151();
    v22 = OUTLINED_FUNCTION_109();
    a9 = v22;
    *v21 = 136315138;
    v30 = [v27 description];
    v31 = sub_1DD0DDFBC();
    v33 = v32;

    sub_1DCB51C9C(v26);
    v34 = sub_1DCB10E9C(v31, v33, &a9);

    *(v21 + 4) = v34;
    _os_log_impl(&dword_1DCAFC000, v28, v29, "ExecuteOnRemoteFlow: Got response from SAExecuteOnRemoteRequest: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_80();
  }

  if ([v27 topicSwitchDetected])
  {
    v35 = v20[73];
    v36 = sub_1DD0DD8EC();
    v37 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_5(v37))
    {
      v38 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v38);
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v39, v40, v41, v42, v43, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_9_32();
    v44 = v20[52];
    v45 = v20[53];

    OUTLINED_FUNCTION_4_48();
    sub_1DCD0ED08(v22, v47);
    v48 = OUTLINED_FUNCTION_20_15();
    v49(v48);
    OUTLINED_FUNCTION_0_45();
    sub_1DCD0ED08(v27, v50);
    OUTLINED_FUNCTION_46_11();
    v51 = type metadata accessor for ExecuteResponse(0);
    v52 = *(v51 + 36);
    type metadata accessor for PluginAction();
    OUTLINED_FUNCTION_31();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
    *v44 = 3;
    *(v44 + 8) = 0;
    *(v44 + 24) = 0;
    *(v44 + 16) = 0;
    *(v44 + 32) = xmmword_1DD0ED300;
LABEL_7:
    *(v44 + 48) = 0x80;
    v57 = (v44 + *(v51 + 40));
    *v57 = 0u;
    v57[1] = 0u;
    goto LABEL_19;
  }

  v58 = [v27 needsUserInput];
  v59 = v20[73];
  if (v58)
  {
    v60 = sub_1DD0DD8EC();
    v61 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_5(v61))
    {
      v62 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v62);
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v63, v64, v65, v66, v67, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_9_32();
    v68 = v20[52];
    v69 = v20[53];

    sub_1DCB51C9C(v26);
    OUTLINED_FUNCTION_4_48();
    sub_1DCD0ED08(v22, v71);
    v72 = OUTLINED_FUNCTION_20_15();
    v73(v72);
    OUTLINED_FUNCTION_0_45();
    sub_1DCD0ED08(v27, v74);
    OUTLINED_FUNCTION_99_2();
  }

  else
  {
    v75 = [v27 needsServerExecution];
    v76 = sub_1DD0DD8EC();
    v77 = sub_1DD0DE6DC();
    v78 = OUTLINED_FUNCTION_5(v77);
    if (v75)
    {
      if (v78)
      {
        v79 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v79);
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v80, v81, v82, v83, v84, 2u);
        OUTLINED_FUNCTION_92_0();
      }

      OUTLINED_FUNCTION_9_32();
      v44 = v20[52];
      v85 = v20[53];

      OUTLINED_FUNCTION_4_48();
      sub_1DCD0ED08(v22, v87);
      v88 = OUTLINED_FUNCTION_20_15();
      v89(v88);
      OUTLINED_FUNCTION_0_45();
      sub_1DCD0ED08(v27, v90);
      OUTLINED_FUNCTION_46_11();
      v51 = type metadata accessor for ExecuteResponse(0);
      v91 = *(v51 + 36);
      type metadata accessor for PluginAction();
      OUTLINED_FUNCTION_31();
      __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
      *v44 = 3;
      *(v44 + 8) = 0;
      *(v44 + 16) = 0;
      *(v44 + 32) = 0;
      *(v44 + 40) = 0;
      *(v44 + 24) = 0;
      goto LABEL_7;
    }

    if (v78)
    {
      v96 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v96);
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v97, v98, v99, v100, v101, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_9_32();
    v102 = v20[52];
    v103 = v20[53];

    OUTLINED_FUNCTION_4_48();
    sub_1DCD0ED08(v22, v105);
    v106 = OUTLINED_FUNCTION_20_15();
    v107(v106);
    OUTLINED_FUNCTION_0_45();
    sub_1DCD0ED08(v27, v108);
    OUTLINED_FUNCTION_46_11();
    static ExecuteResponse.complete()();
  }

LABEL_19:
  OUTLINED_FUNCTION_17_18();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_117();

  return v110(v109, v110, v111, v112, v113, v114, v115, v116, a9, a10, a11, a12);
}

uint64_t sub_1DCD0A620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_230();
  a19 = v24;
  a20 = v25;
  a18 = v21;
  v26 = *(v21 + 600);
  *(v21 + 384) = v26;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v20 = *(v21 + 368);
  *(v21 + 608) = v20;
  v28 = *(v21 + 376);
  if (v28 != 1)
  {
    sub_1DCB6DE90(v20, v28);
LABEL_12:
    v45 = *(v21 + 600);
    *(v21 + 392) = v45;
    v46 = v45;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    v47 = *(v21 + 584);

    v48 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    OUTLINED_FUNCTION_8_5();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v50);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v51, v52, "ExecuteOnRemoteFlow: Received BargeInError during EOR flow, silencing it");
      OUTLINED_FUNCTION_62();
    }

    v53 = *(v21 + 600);
    OUTLINED_FUNCTION_9_32();
    v54 = *(v21 + 416);
    v55 = *(v21 + 424);

    OUTLINED_FUNCTION_4_48();
    sub_1DCD0ED08(v23, v57);
    v58 = OUTLINED_FUNCTION_20_15();
    v59(v58);
    OUTLINED_FUNCTION_0_45();
    sub_1DCD0ED08(v20, v60);
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_17_18();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_117();

    return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12);
  }

  v29 = *(v21 + 584);
  v30 = v20;
  v31 = sub_1DD0DD8EC();
  v32 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_75(v32))
  {
    OUTLINED_FUNCTION_151();
    v33 = OUTLINED_FUNCTION_109();
    a9 = v33;
    *v22 = 136315138;
    v34 = sub_1DCB28184(v30, &selRef_reason);
    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v34 = 0x3E6C696E3CLL;
      v36 = 0xE500000000000000;
    }

    v37 = sub_1DCB10E9C(v34, v36, &a9);

    *(v22 + 4) = v37;
    _os_log_impl(&dword_1DCAFC000, v31, v32, "ExecuteOnRemoteFlow: Error submitting SAExecuteOnRemoteRequest: Received SACommandFailed: reason='%s'", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v38 = sub_1DCB28184(v30, &selRef_reason);
  if (!v39 || (v40 = sub_1DCBBFDB4(v38, v39), , v40 == 6))
  {
    v41 = OUTLINED_FUNCTION_86_1();
    sub_1DCB6DE90(v41, v42);
    v43 = OUTLINED_FUNCTION_86_1();
    sub_1DCB6DE90(v43, v44);
LABEL_18:
    v70 = *(v21 + 600);
    v71 = *(v21 + 584);
    v72 = v70;
    v73 = sub_1DD0DD8EC();
    v74 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = *(v21 + 600);
      v76 = OUTLINED_FUNCTION_151();
      v77 = OUTLINED_FUNCTION_83();
      a9 = v77;
      *v76 = 136315138;
      *(v21 + 408) = v75;
      v78 = v75;
      v79 = sub_1DD0DE02C();
      v81 = sub_1DCB10E9C(v79, v80, &a9);

      *(v76 + 4) = v81;
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v82, v83, v84, v85, v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    v87 = *(v21 + 600);
    v88 = *(v21 + 424);
    v89 = *(v88 + 16);
    *(v88 + 16) = v87;
    v90 = *(v88 + 24);
    *(v88 + 24) = 1;
    v91 = v87;
    sub_1DCD070F8(v89, v90);
    v92 = swift_task_alloc();
    *(v21 + 624) = v92;
    *v92 = v21;
    OUTLINED_FUNCTION_30_17(v92);
    OUTLINED_FUNCTION_117();

    return sub_1DCD0B9DC();
  }

  v94 = *(v21 + 600);
  v95 = *(v21 + 424);
  v96 = *(v95 + 16);
  *(v95 + 16) = v94;
  v97 = *(v95 + 24);
  *(v95 + 24) = 1;
  v98 = v94;
  sub_1DCD070F8(v96, v97);
  v99 = swift_task_alloc();
  *(v21 + 616) = v99;
  *v99 = v21;
  OUTLINED_FUNCTION_30_17(v99);
  OUTLINED_FUNCTION_117();

  return sub_1DCD0BC84(v100);
}

uint64_t sub_1DCD0AAB8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 616);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCD0AB9C()
{
  v3 = v1[76];
  v4 = v1[75];
  OUTLINED_FUNCTION_9_32();
  v5 = v1[52];

  sub_1DCB6DE90(v3, 1u);
  sub_1DCB6DE90(v3, 1u);

  OUTLINED_FUNCTION_4_48();
  sub_1DCD0ED08(v2, v7);
  v8 = OUTLINED_FUNCTION_20_15();
  v9(v8);
  OUTLINED_FUNCTION_0_45();
  sub_1DCD0ED08(v0, v10);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_17_18();

  OUTLINED_FUNCTION_29();

  return v11();
}

uint64_t sub_1DCD0AC98()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 624);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCD0AD7C()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 512);
  v4 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 472);
  v6 = *(v0 + 440);
  v7 = *(v0 + 416);

  OUTLINED_FUNCTION_4_48();
  sub_1DCD0ED08(v6, v8);
  (*(v4 + 8))(v3, v5);
  OUTLINED_FUNCTION_0_45();
  sub_1DCD0ED08(v2, v9);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_17_18();

  OUTLINED_FUNCTION_29();

  return v10();
}

uint64_t sub_1DCD0AE74()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 640);
  v3 = *(v1 + 632);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCD0AF74()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[64];
  v2 = v0[52];
  v3 = v0[53];
  (*(v0[60] + 8))(v0[61], v0[59]);
  OUTLINED_FUNCTION_0_45();
  sub_1DCD0ED08(v1, v4);
  OUTLINED_FUNCTION_108_2(*(v3 + 16), 2);
  OUTLINED_FUNCTION_17_18();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCD0B038()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 648);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCD0B11C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[64];
  v2 = v0[52];
  v3 = v0[53];
  sub_1DCD0E418();
  v4 = swift_allocError();
  OUTLINED_FUNCTION_0_45();
  sub_1DCD0ED08(v1, v5);
  v6 = *(v3 + 16);
  *(v3 + 16) = v4;
  v7 = *(v3 + 24);
  *(v3 + 24) = 0;
  sub_1DCD070F8(v6, v7);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_17_18();

  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1DCD0B1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCD0B21C, 0, 0);
}

uint64_t sub_1DCD0B21C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[2];
  v2 = objc_allocWithZone(MEMORY[0x1E69C7898]);
  v0[5] = sub_1DCD0E3B4(0xD00000000000001BLL, 0x80000001DD119EE0);
  v3 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  v4 = swift_task_alloc();
  v0[6] = v4;
  sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
  *v4 = v0;
  v4[1] = sub_1DCD0B338;
  v5 = v0[3];
  v6 = v0[4];

  return AceServiceInvokerAsync.submitToRemote<A>(_:_:)();
}

uint64_t sub_1DCD0B338()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCD0B43C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD0B498()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 56);

  return v1();
}

void sub_1DCD0B4F4(void **a1)
{
  v1 = *a1;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  oslog = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v8 = sub_1DD0DE02C();
    v10 = sub_1DCB10E9C(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, oslog, v4, "ExecuteOnRemoteFlow: Could not retrieve reference resolution entities: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A8390](v6, -1, -1);
    MEMORY[0x1E12A8390](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DCD0B698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCD0B6BC, 0, 0);
}

id sub_1DCD0B6BC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[9];
  sub_1DCB17CA0(v0[8] + 72, (v0 + 2));
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  result = [v1 remoteExecution];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1DCB643F4(result, &selRef_executionDeviceAssistantId);
  v0[10] = v4;
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = swift_task_alloc();
  v0[11] = v5;
  sub_1DCB10E5C(0, &qword_1ECCA48C8, 0x1E69C7888);
  *v5 = v0;
  v5[1] = sub_1DCD0B7F4;
  v6 = v0[9];

  return AceServiceInvokerAsync.submitToRemote<A>(_:_:)();
}

uint64_t sub_1DCD0B7F4()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  v5[12] = v0;

  if (!v0)
  {
    v11 = v5[10];

    v5[13] = v3;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCD0B90C()
{
  OUTLINED_FUNCTION_42();
  **(v0 + 56) = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD0B974()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[10];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_29();
  v3 = v0[12];

  return v2();
}

uint64_t sub_1DCD0B9DC()
{
  *(v1 + 96) = v0;
  v2 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_1DCD0BA04()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 96);
  v2 = *(v1 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_definedErrorDialogsFeatureToggle + 24);
  v3 = *(v1 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_definedErrorDialogsFeatureToggle + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_definedErrorDialogsFeatureToggle), v2);
  (*(v3 + 8))(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_13_29(inited, xmmword_1DD0E07C0);
  v5 = v1[7];
  v6 = v1[8];
  OUTLINED_FUNCTION_74_5(v1 + 4);
  sub_1DCCDE224();
}

uint64_t sub_1DCD0BB88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCD0BC84(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 185) = a1;
  v3 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCD0BCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_230();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  v23 = *(v20 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_13_29(inited, xmmword_1DD0E07C0);
  v25 = v23[7];
  v26 = v23[8];
  OUTLINED_FUNCTION_74_5(v23 + 4);
  sub_1DCCDE224();
}

uint64_t sub_1DCD0C154()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 176);
  v3 = *(v1 + 168);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCD0C254()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 240) = v2;
  *(v1 + 248) = v0;
  *(v1 + 312) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64) + 15;
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  *(v1 + 272) = OUTLINED_FUNCTION_38();
  v10 = type metadata accessor for AceOutput();
  *(v1 + 280) = v10;
  OUTLINED_FUNCTION_20_0(v10);
  v12 = *(v11 + 64);
  *(v1 + 288) = OUTLINED_FUNCTION_38();
  v13 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DCD0C340()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 248);
  if (*(*(v1 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_executeOnRemoteFlowStrategy) + 18))
  {
    v2 = *__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_catExecutor), *(v1 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_catExecutor + 24));
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 296) = v3;
    *v3 = v4;
    v3[1] = sub_1DCD0C4E4;
    v5 = *(v0 + 240);
    v6 = *(v0 + 312);

    return sub_1DCF66E08(v0 + 16, v6, v5, 0);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v8 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v8, qword_1EDE57E00);
    v9 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    OUTLINED_FUNCTION_8_5();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v11);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v12, v13, "ExecuteOnRemoteFlowStrategy disables error dialog output");
      OUTLINED_FUNCTION_62();
    }

    OUTLINED_FUNCTION_97_3();

    OUTLINED_FUNCTION_29();

    return v14();
  }
}

uint64_t sub_1DCD0C4E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 296);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCD0C5E8()
{
  v14 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 248);
  memcpy((v0 + 88), (v0 + 16), 0x48uLL);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v5 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
  v6 = *(v5 + 96);
  v7 = OUTLINED_FUNCTION_124();
  v8(v7);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *(v0 + 192) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 160) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DCD0C84C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 304);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 200));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCD0C960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v26 = *(v22 + 256);
  v25 = *(v22 + 264);
  v27 = sub_1DD0DD8FC();
  v28 = __swift_project_value_buffer(v27, qword_1EDE57E00);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v25, v28, v27);
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v27);
  sub_1DCB099BC(v25, v26, &unk_1ECCA7470, &qword_1DD0E16E0);
  v33 = OUTLINED_FUNCTION_86_1();
  if (__swift_getEnumTagSinglePayload(v33, v34, v27) == 1)
  {
    sub_1DCB0E9D8(*(v22 + 256), &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v35 = *(v22 + 256);
    v36 = sub_1DD0DD8EC();
    v37 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v37))
    {
      v38 = OUTLINED_FUNCTION_83();
      a11 = swift_slowAlloc();
      *v38 = 136315650;
      v39 = sub_1DD0DEC3C();
      v41 = sub_1DCB10E9C(v39, v40, &a11);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2048;
      *(v38 + 14) = 478;
      *(v38 + 22) = 2080;
      *(v38 + 24) = sub_1DCB10E9C(0xD000000000000034, 0x80000001DD1164B0, &a11);
      _os_log_impl(&dword_1DCAFC000, v36, v37, "FatalError at %s:%lu - %s", v38, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_62();
    }

    (*(v29 + 8))(*(v22 + 256), v27);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000034, 0x80000001DD1164B0);
}

uint64_t sub_1DCD0CBE0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_42_13();
  OUTLINED_FUNCTION_97_3();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCD0CC58()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_42_13();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));
  OUTLINED_FUNCTION_97_3();

  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCD0CCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v20;
  a20 = v21;
  v100 = sub_1DD0DB09C();
  v22 = OUTLINED_FUNCTION_9(v100);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA48D0, &qword_1DD0ED790);
  OUTLINED_FUNCTION_2(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v29, v30);
  v106 = v99 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA48D8, &qword_1DD0ED798);
  v33 = OUTLINED_FUNCTION_20_0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  OUTLINED_FUNCTION_10_2();
  v99[13] = v37 - v38;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_33_2();
  v99[17] = v41;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v42, v43);
  v99[16] = v99 - v44;
  v45 = sub_1DD0DB07C();
  v46 = OUTLINED_FUNCTION_9(v45);
  v99[15] = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46, v50);
  v99[10] = v99 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA48E0, &qword_1DD0ED7A0);
  OUTLINED_FUNCTION_2(v102);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v54, v55);
  v105 = v99 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA48E8, &qword_1DD0ED7A8);
  v58 = OUTLINED_FUNCTION_20_0(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58, v61);
  OUTLINED_FUNCTION_10_2();
  v99[14] = v62 - v63;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v64, v65);
  OUTLINED_FUNCTION_33_2();
  v103 = v66;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v67, v68);
  v104 = v99 - v69;
  v70 = sub_1DD0DB0DC();
  v107 = OUTLINED_FUNCTION_9(v70);
  v108 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v107, v74);
  OUTLINED_FUNCTION_10_2();
  v99[12] = v75 - v76;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v77, v78);
  OUTLINED_FUNCTION_33_2();
  v99[11] = v79;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v80, v81);
  OUTLINED_FUNCTION_33_2();
  v101 = v82;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v83, v84);
  v85 = sub_1DD0DB0FC();
  v86 = OUTLINED_FUNCTION_9(v85);
  v109 = v87;
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v86, v90);
  OUTLINED_FUNCTION_10_2();
  v93 = MEMORY[0x1EEE9AC00](v91, v92);
  MEMORY[0x1EEE9AC00](v93, v94);
  OUTLINED_FUNCTION_33_2();
  v111 = v95;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v96, v97);
  v110 = v99 - v98;
  sub_1DCD0DBCC();
}

uint64_t sub_1DCD0DA80()
{
  v2 = v0;
  v3 = [*(v0 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_prefs) languageCode];
  if (v3)
  {
    v4 = v3;
    sub_1DD0DDFBC();

    return sub_1DD0DB05C();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v6 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v6, qword_1EDE57E00);
    v7 = sub_1DD0DD8EC();
    v8 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v8))
    {
      v9 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v9);
      _os_log_impl(&dword_1DCAFC000, v7, v8, "Did not find Siri input language, defaulting to deviceState locale which can use fallback language/output language instead.", v1, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    v10 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
    v11 = *(v10 + 152);
    v12 = OUTLINED_FUNCTION_52_1();
    return v13(v12, v10);
  }
}

void sub_1DCD0DBCC()
{
  v0 = type metadata accessor for IdentifiedUser();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  OUTLINED_FUNCTION_10_2();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1DCD06CC8();
}

uint64_t ExecuteOnRemoteFlow.deinit()
{
  sub_1DCD070F8(*(v0 + 16), *(v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  sub_1DCB0E9D8(v0 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_inputToExecute, &qword_1ECCA1DA0, &qword_1DD0ED3F0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_outputPublisher));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_referenceResolutionClient));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_catExecutor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_definedErrorDialogsFeatureToggle));
  v1 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_executeOnRemoteFlowStrategy);

  v2 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow__multiUserState);

  v3 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow__identifiedUser);

  v4 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow__remoteRequestWasMadeInSession);

  return v0;
}

uint64_t ExecuteOnRemoteFlow.__deallocating_deinit()
{
  ExecuteOnRemoteFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DCD0E014(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

void sub_1DCD0E0D8()
{
  OUTLINED_FUNCTION_42();
  v2 = *v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1DCB4AD3C;

  sub_1DCD08C04();
}

uint64_t ExecuteOnRemoteDeviceSpecification.hashValue.getter()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

uint64_t ExecuteOnRemoteFlowStrategy.init(shouldFallbackOnAWDL:shouldSendSpeechPackage:shouldOutputErrorDialog:)(char a1, char a2, char a3)
{
  v3[16] = a1;
  v3[17] = a2;
  v3[18] = a3;
  return OUTLINED_FUNCTION_96_2();
}

void sub_1DCD0E27C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD0DCF8C();
}

void sub_1DCD0E2F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD0E344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1DCD0E3B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DD0DDF8C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithReason_];

  return v4;
}

unint64_t sub_1DCD0E418()
{
  result = qword_1ECCA4898;
  if (!qword_1ECCA4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4898);
  }

  return result;
}

uint64_t type metadata accessor for ExecuteOnRemoteFlow()
{
  result = qword_1ECCA48B0;
  if (!qword_1ECCA48B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DCD0E4D0(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1DCB2C520(a1, a2);
  }
}

uint64_t sub_1DCD0E530(uint64_t a1)
{
  result = sub_1DCD0ED60(&qword_1ECCA48A0, 255, type metadata accessor for ExecuteOnRemoteFlow);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCD0E590()
{
  result = qword_1ECCA48A8;
  if (!qword_1ECCA48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA48A8);
  }

  return result;
}

void sub_1DCD0E684()
{
  sub_1DCD0E9BC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ExecuteOnRemoteFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *(*v0 + 360);
  v9 = (v4 + *v4);
  v5 = v4[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1DCB4AD3C;

  return v9(v3);
}

void sub_1DCD0E9BC()
{
  if (!qword_1ECCA48C0)
  {
    type metadata accessor for Input(255);
    v0 = sub_1DD0DE97C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECCA48C0);
    }
  }
}

id sub_1DCD0EA14(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

void sub_1DCD0EA48(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

uint64_t assignWithTake for ExecuteOnRemoteFlowResult(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_1DCD0EA48(v4, v5);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ExecuteOnRemoteDeviceSpecification(_BYTE *result, int a2, int a3)
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

uint64_t *sub_1DCD0EBFC(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, void), void (*a5)(uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = *(a2 + 8);
  a4(*a2, v8);
  v9 = *a1;
  *a1 = v7;
  v10 = *(a1 + 8);
  *(a1 + 8) = v8;
  a5(v9, v10);
  return a1;
}

uint64_t assignWithTake for ExecuteOnRemoteFlow.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_1DCD070F8(v4, v5);
  return a1;
}

uint64_t sub_1DCD0ECAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_33_1();
  v8(v7);
  return a2;
}

uint64_t sub_1DCD0ED08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCD0ED60(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_68_7()
{
  v5 = (v1 + *(v3 + 20));
  *v5 = v0;
  v5[1] = v2;

  return type metadata accessor for ExecuteOnRemoteFlow();
}

uint64_t OUTLINED_FUNCTION_105_5()
{

  return sub_1DCB099BC(v3, v4 + v2, v0, v1);
}

void OUTLINED_FUNCTION_107_3()
{
  v2 = *(v0 - 264);
}

uint64_t ExecuteOnRemotePayload.init(input:rrData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DCC333DC(a1, a4);
  result = type metadata accessor for ExecuteOnRemotePayload();
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t type metadata accessor for ExecuteOnRemotePayload()
{
  result = qword_1EDE48270;
  if (!qword_1EDE48270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ExecuteOnRemotePayload.makeExecuteOnRemoteRequest(targetDeviceId:currentRequest:device:shouldSendSpeechPackage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v21 = a5;
  v23 = a2;
  v22 = a1;
  v24 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4908, &qword_1DD0ED838);
  v10 = OUTLINED_FUNCTION_2(v20);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  OUTLINED_FUNCTION_10_2();
  v19 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_6_36(&v19 - v18);
  sub_1DD0DD58C();
}

uint64_t ExecuteOnRemotePayload.rrData.getter()
{
  v1 = (v0 + *(type metadata accessor for ExecuteOnRemotePayload() + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_33_1();
  sub_1DCC91E6C(v4, v5);
  return OUTLINED_FUNCTION_33_1();
}

id sub_1DCD10120()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1DD0DDF8C();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t ExecuteOnRemotePayload.ExecuteOnRemotePayloadError.hashValue.getter()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD10338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461447272 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

uint64_t sub_1DCD103F8(char a1)
{
  if (a1)
  {
    return 0x617461447272;
  }

  else
  {
    return 0x7475706E69;
  }
}

uint64_t sub_1DCD10480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD10338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCD104A8(uint64_t a1)
{
  v2 = sub_1DCD11648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD104E4(uint64_t a1)
{
  v2 = sub_1DCD11648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExecuteOnRemotePayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4928, &qword_1DD0ED850);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6, v11);
  v13 = &v19[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD11648();
  sub_1DD0DF24C();
  LOBYTE(v20) = 0;
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_3_52();
  sub_1DCD1169C(v15);
  sub_1DD0DEFFC();
  if (!v2)
  {
    v16 = (v3 + *(type metadata accessor for ExecuteOnRemotePayload() + 20));
    v17 = v16[1];
    v20 = *v16;
    v21 = v17;
    v19[15] = 1;
    sub_1DCC91E6C(v20, v17);
    sub_1DCB51540();
    sub_1DD0DEFAC();
    sub_1DCB2C520(v20, v21);
  }

  return (*(v8 + 8))(v13, v5);
}

uint64_t ExecuteOnRemotePayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = type metadata accessor for Input(0);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  OUTLINED_FUNCTION_16();
  v35 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4938, &qword_1DD0ED858);
  v12 = OUTLINED_FUNCTION_9(v11);
  v33 = v13;
  v34 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12, v16);
  v18 = &v32 - v17;
  v19 = type metadata accessor for ExecuteOnRemotePayload();
  v20 = OUTLINED_FUNCTION_2(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  OUTLINED_FUNCTION_16();
  v26 = v25 - v24;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD11648();
  sub_1DD0DF23C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v28 = v33;
  v29 = v26;
  LOBYTE(v36) = 0;
  sub_1DCD1169C(&qword_1ECCA4940);
  v30 = v34;
  sub_1DD0DEF4C();
  sub_1DCC333DC(v35, v29);
  v37 = 1;
  sub_1DCB5414C();
  sub_1DD0DEEFC();
  (*(v28 + 8))(v18, v30);
  *(v29 + *(v19 + 20)) = v36;
  sub_1DCD116E0(v29, v32, type metadata accessor for ExecuteOnRemotePayload);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1DCD136A8(v29, type metadata accessor for ExecuteOnRemotePayload);
}

void SAIntentGroupRunSiriKitExecutor.executeOnRemotePayload()(uint64_t a1@<X8>)
{
  v3 = [v1 parse];
  if (v3 && (v4 = v3, v18 = [v3 directInvocation], v4, v18))
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_5(v7))
    {
      v8 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_14_1(v8);
      OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v9, v10, "Extracting ExecuteOnRemotePayload from RSKE command");
      OUTLINED_FUNCTION_52();
    }

    sub_1DCD10B88(a1);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v11 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v11, qword_1EDE57E00);
    v12 = sub_1DD0DD8EC();
    v13 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_5(v13))
    {
      v14 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_14_1(v14);
      OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v15, v16, "Could not extract ExecuteOnRemotePayload: Parse has no directInvocation");
      OUTLINED_FUNCTION_52();
    }

    v17 = type metadata accessor for ExecuteOnRemotePayload();

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v17);
  }
}

uint64_t sub_1DCD10B88@<X0>(uint64_t a1@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for Input(0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v55 - v10;
  v12 = sub_1DCB3B800(v1);
  if (v13 >> 60 != 15)
  {
    v21 = v12;
    v22 = v13;
    v23 = objc_opt_self();
    v24 = sub_1DD0DAEFC();
    v61[0] = 0;
    v25 = [v23 propertyListWithData:v24 options:0 format:0 error:v61];

    if (!v25)
    {
      v28 = v61[0];
      v29 = sub_1DD0DAE0C();

      swift_willThrow();
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v30 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v30, qword_1EDE57E00);
      v31 = sub_1DD0DD8EC();
      v32 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1DCAFC000, v31, v32, "SAExecuteOnRemoteRequest Direct Invocation data is not a valid serialized property list", v33, 2u);
        MEMORY[0x1E12A8390](v33, -1, -1);
      }

      sub_1DCB2C520(v21, v22);

      goto LABEL_33;
    }

    v26 = v61[0];
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
    if (swift_dynamicCast())
    {
      v27 = v59;
      sub_1DCB90D40(0x7461447475706E69, 0xE900000000000061, v59);
      if (v62)
      {
        if (swift_dynamicCast())
        {
          v57 = v59;
          v58 = v60;
          sub_1DCB90D40(0x617461447272, 0xE600000000000000, v27);

          if (v62)
          {
            if (swift_dynamicCast())
            {
              v55 = v60;
              v56 = v59;
LABEL_41:
              v49 = sub_1DD0DAC9C();
              v50 = *(v49 + 48);
              v51 = *(v49 + 52);
              swift_allocObject();
              sub_1DD0DAC8C();
              sub_1DCD1169C(&qword_1ECCA4940);
              v52 = v57;
              sub_1DD0DAC7C();
              sub_1DCB2C520(v21, v22);
              sub_1DCB21A14(v52, v58);

              sub_1DCC333DC(v8, v11);
              sub_1DCC333DC(v11, a1);
              v40 = type metadata accessor for ExecuteOnRemotePayload();
              v53 = (a1 + *(v40 + 20));
              v54 = v55;
              *v53 = v56;
              v53[1] = v54;
              v41 = a1;
              v42 = 0;
              goto LABEL_34;
            }
          }

          else
          {
            sub_1DCB0E9D8(v61, &dword_1ECCA3CE0, &unk_1DD0E4F80);
          }

          if (qword_1EDE4F900 != -1)
          {
            swift_once();
          }

          v44 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v44, qword_1EDE57E00);
          v45 = sub_1DD0DD8EC();
          v46 = sub_1DD0DE6EC();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v61[0] = v48;
            *v47 = 136315138;
            *(v47 + 4) = sub_1DCB10E9C(0x617461447272, 0xE600000000000000, v61);
            _os_log_impl(&dword_1DCAFC000, v45, v46, "SAExecuteOnRemoteRequest Direct Invocation userData has nil value for %s: Understanding device out of date? No reference resolution entities will be scoped for this turn.", v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v48);
            MEMORY[0x1E12A8390](v48, -1, -1);
            MEMORY[0x1E12A8390](v47, -1, -1);
          }

          v55 = 0xF000000000000000;
          v56 = 0;
          goto LABEL_41;
        }
      }

      else
      {

        sub_1DCB0E9D8(v61, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      }

      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v37 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v37, qword_1EDE57E00);
      v31 = sub_1DD0DD8EC();
      v38 = sub_1DD0DE6EC();
      if (!os_log_type_enabled(v31, v38))
      {
        goto LABEL_32;
      }

      v36 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v61[0] = v39;
      *v36 = 136315138;
      *(v36 + 4) = sub_1DCB10E9C(0x7461447475706E69, 0xE900000000000061, v61);
      _os_log_impl(&dword_1DCAFC000, v31, v38, "SAExecuteOnRemoteRequest Direct Invocation userData has no value for %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1E12A8390](v39, -1, -1);
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v34 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v34, qword_1EDE57E00);
      v31 = sub_1DD0DD8EC();
      v35 = sub_1DD0DE6EC();
      if (!os_log_type_enabled(v31, v35))
      {
        goto LABEL_32;
      }

      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1DCAFC000, v31, v35, "SAExecuteOnRemoteRequest Direct Invocation has invalid data", v36, 2u);
    }

    MEMORY[0x1E12A8390](v36, -1, -1);
LABEL_32:
    sub_1DCB2C520(v21, v22);
LABEL_33:

    v40 = type metadata accessor for ExecuteOnRemotePayload();
    v41 = a1;
    v42 = 1;
LABEL_34:
    result = __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
    v43 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v14 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v14, qword_1EDE57E00);
  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DCAFC000, v15, v16, "SAExecuteOnRemoteRequest Direct Invocation has no data", v17, 2u);
    MEMORY[0x1E12A8390](v17, -1, -1);
  }

  v18 = type metadata accessor for ExecuteOnRemotePayload();
  v19 = *MEMORY[0x1E69E9840];

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v18);
}

void sub_1DCD11598(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setExecutionDeviceAssistantId_];
}

void sub_1DCD115F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DAEFC();
  [a3 setSpeechPackageData_];
}

unint64_t sub_1DCD11648()
{
  result = qword_1ECCA4930;
  if (!qword_1ECCA4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4930);
  }

  return result;
}

uint64_t sub_1DCD1169C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Input(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCD116E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_33_1();
  v8(v7);
  return a2;
}

unint64_t sub_1DCD11740()
{
  result = qword_1ECCA4948;
  if (!qword_1ECCA4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4948);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ExecuteOnRemotePayload(void *a1, void *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = type metadata accessor for Input(0);
  v8 = v7[5];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v12 = sub_1DD0DC76C();
      (*(*(v12 - 8) + 16))(v9, v10, v12);
      goto LABEL_27;
    case 1u:
      v21 = sub_1DD0DC76C();
      (*(*(v21 - 8) + 16))(v9, v10, v21);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v9[*(v22 + 48)] = *&v10[*(v22 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v15 = *(v10 + 1);
      *v9 = *v10;
      *(v9 + 1) = v15;
      *(v9 + 2) = *(v10 + 2);

      goto LABEL_27;
    case 3u:
      *v9 = *v10;
      swift_unknownObjectRetain();
      goto LABEL_27;
    case 4u:
      v13 = sub_1DD0DB1EC();
      (*(*(v13 - 8) + 16))(v9, v10, v13);
      goto LABEL_27;
    case 5u:
      v23 = *v10;
      *v9 = *v10;
      v24 = v23;
      goto LABEL_27;
    case 6u:
      v25 = sub_1DD0DB4BC();
      (*(*(v25 - 8) + 16))(v9, v10, v25);
      v26 = type metadata accessor for USOParse();
      v27 = v26[5];
      v28 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v10[v27], 1, v28))
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v9[v27], &v10[v27], *(*(v29 - 8) + 64));
      }

      else
      {
        (*(*(v28 - 8) + 16))(&v9[v27], &v10[v27], v28);
        __swift_storeEnumTagSinglePayload(&v9[v27], 0, 1, v28);
      }

      v60 = v26[6];
      v61 = &v9[v60];
      v62 = &v10[v60];
      v63 = *(v62 + 1);
      *v61 = *v62;
      *(v61 + 1) = v63;
      v64 = v26[7];
      v65 = &v9[v64];
      v66 = &v10[v64];
      v65[4] = v66[4];
      *v65 = *v66;

      goto LABEL_27;
    case 7u:
      v16 = sub_1DD0DB4BC();
      (*(*(v16 - 8) + 16))(v9, v10, v16);
      v17 = type metadata accessor for USOParse();
      v18 = v17[5];
      v19 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v10[v18], 1, v19))
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v9[v18], &v10[v18], *(*(v20 - 8) + 64));
      }

      else
      {
        (*(*(v19 - 8) + 16))(&v9[v18], &v10[v18], v19);
        __swift_storeEnumTagSinglePayload(&v9[v18], 0, 1, v19);
      }

      v40 = v17[6];
      v41 = &v9[v40];
      v42 = &v10[v40];
      v43 = *(v42 + 1);
      *v41 = *v42;
      *(v41 + 1) = v43;
      v44 = v17[7];
      v45 = &v9[v44];
      v46 = &v10[v44];
      v45[4] = v46[4];
      *v45 = *v46;
      v47 = type metadata accessor for LinkParse();
      v48 = v47[5];
      v49 = &v9[v48];
      v50 = &v10[v48];
      v51 = *(v50 + 1);
      *v49 = *v50;
      *(v49 + 1) = v51;
      v52 = v47[6];
      v53 = &v9[v52];
      v54 = &v10[v52];
      v55 = *(v54 + 1);
      *v53 = *v54;
      *(v53 + 1) = v55;
      v56 = v47[7];
      v57 = &v9[v56];
      v58 = &v10[v56];
      v59 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v59;

      goto LABEL_27;
    case 8u:
      v30 = sub_1DD0DD12C();
      (*(*(v30 - 8) + 16))(v9, v10, v30);
      v31 = type metadata accessor for NLRouterParse();
      v32 = *(v31 + 20);
      v33 = &v9[v32];
      v34 = &v10[v32];
      v35 = *(v34 + 1);
      *v33 = *v34;
      *(v33 + 1) = v35;
      v36 = *(v31 + 24);
      v93 = v31;
      __dst = &v9[v36];
      v37 = &v10[v36];
      v38 = type metadata accessor for USOParse();

      if (__swift_getEnumTagSinglePayload(v37, 1, v38))
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(__dst, v37, *(*(v39 - 8) + 64));
      }

      else
      {
        v67 = sub_1DD0DB4BC();
        (*(*(v67 - 8) + 16))(__dst, v37, v67);
        v68 = v38[5];
        v92 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v37[v68], 1, v92))
        {
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&__dst[v68], &v37[v68], *(*(v69 - 8) + 64));
        }

        else
        {
          (*(*(v92 - 8) + 16))(&__dst[v68], &v37[v68]);
          __swift_storeEnumTagSinglePayload(&__dst[v68], 0, 1, v92);
        }

        v70 = v38[6];
        v71 = &__dst[v70];
        v72 = &v37[v70];
        v73 = *(v72 + 1);
        *v71 = *v72;
        *(v71 + 1) = v73;
        v74 = v38[7];
        v75 = &__dst[v74];
        v76 = &v37[v74];
        v75[4] = v76[4];
        *v75 = *v76;

        __swift_storeEnumTagSinglePayload(__dst, 0, 1, v38);
      }

      v77 = *(v93 + 28);
      v78 = *&v10[v77];
      *&v9[v77] = v78;
      v79 = v78;
      goto LABEL_27;
    case 9u:
      v14 = sub_1DD0DD08C();
      (*(*(v14 - 8) + 16))(v9, v10, v14);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v9, v10, *(*(v11 - 8) + 64));
      break;
  }

  *(a1 + v7[6]) = *(a2 + v7[6]);
  v80 = v7[7];
  v81 = a1 + v80;
  v82 = a2 + v80;
  v83 = *(a2 + v80 + 24);

  if (v83)
  {
    v84 = *(v82 + 4);
    *(v81 + 3) = v83;
    *(v81 + 4) = v84;
    (**(v83 - 8))(v81, v82, v83);
  }

  else
  {
    v85 = *(v82 + 1);
    *v81 = *v82;
    *(v81 + 1) = v85;
    *(v81 + 4) = *(v82 + 4);
  }

  *(a1 + v7[8]) = *(a2 + v7[8]);
  v86 = *(a3 + 20);
  v87 = a1 + v86;
  v88 = a2 + v86;
  v89 = *(v88 + 1);
  if (v89 >> 60 == 15)
  {
    *v87 = *v88;
  }

  else
  {
    v90 = *v88;
    sub_1DCC91E80(*v88, *(v88 + 1));
    *v87 = v90;
    *(v87 + 1) = v89;
  }

  return a1;
}

uint64_t *destroy for ExecuteOnRemotePayload(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = type metadata accessor for Input(0);
  v6 = (a1 + v5[5]);
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v20 = sub_1DD0DC76C();
      (*(*(v20 - 8) + 8))(v6, v20);
      v21 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

      break;
    case 2u:
      v8 = *(v6 + 1);

      v9 = *(v6 + 2);
      goto LABEL_17;
    case 3u:
      v10 = *v6;
      swift_unknownObjectRelease();
      break;
    case 4u:
      v7 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v22 = *v6;
      goto LABEL_23;
    case 6u:
      v23 = sub_1DD0DB4BC();
      (*(*(v23 - 8) + 8))(v6, v23);
      v24 = type metadata accessor for USOParse();
      v25 = *(v24 + 20);
      v26 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(&v6[v25], 1, v26))
      {
        (*(*(v26 - 8) + 8))(&v6[v25], v26);
      }

      v19 = *(v24 + 24);
      goto LABEL_16;
    case 7u:
      v11 = sub_1DD0DB4BC();
      (*(*(v11 - 8) + 8))(v6, v11);
      v12 = type metadata accessor for USOParse();
      v13 = *(v12 + 20);
      v14 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(&v6[v13], 1, v14))
      {
        (*(*(v14 - 8) + 8))(&v6[v13], v14);
      }

      v15 = *&v6[*(v12 + 24) + 8];

      v16 = type metadata accessor for LinkParse();
      v17 = *&v6[v16[5] + 8];

      v18 = *&v6[v16[6] + 8];

      v19 = v16[7];
LABEL_16:
      v27 = *&v6[v19 + 8];
LABEL_17:

      break;
    case 8u:
      v28 = sub_1DD0DD12C();
      (*(*(v28 - 8) + 8))(v6, v28);
      v29 = type metadata accessor for NLRouterParse();
      v30 = *&v6[v29[5] + 8];

      v31 = &v6[v29[6]];
      v32 = type metadata accessor for USOParse();
      if (!__swift_getEnumTagSinglePayload(v31, 1, v32))
      {
        v33 = sub_1DD0DB4BC();
        (*(*(v33 - 8) + 8))(v31, v33);
        v34 = *(v32 + 20);
        v35 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v31 + v34, 1, v35))
        {
          (*(*(v35 - 8) + 8))(v31 + v34, v35);
        }

        v36 = *(v31 + *(v32 + 24) + 8);
      }

      v22 = *&v6[v29[7]];
LABEL_23:

      break;
    case 9u:
      v7 = sub_1DD0DD08C();
LABEL_5:
      (*(*(v7 - 8) + 8))(v6, v7);
      break;
    default:
      break;
  }

  v37 = *(a1 + v5[6]);

  result = (a1 + v5[7]);
  if (result[3])
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(result);
  }

  v39 = (a1 + *(a2 + 20));
  v40 = v39[1];
  if (v40 >> 60 != 15)
  {
    v41 = *v39;

    return sub_1DCB21A14(v41, v40);
  }

  return result;
}

uint64_t initializeWithCopy for ExecuteOnRemotePayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = type metadata accessor for Input(0);
  v8 = v7[5];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v12 = sub_1DD0DC76C();
      (*(*(v12 - 8) + 16))(v9, v10, v12);
      goto LABEL_25;
    case 1u:
      v21 = sub_1DD0DC76C();
      (*(*(v21 - 8) + 16))(v9, v10, v21);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v9[*(v22 + 48)] = *&v10[*(v22 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v15 = *(v10 + 1);
      *v9 = *v10;
      *(v9 + 1) = v15;
      *(v9 + 2) = *(v10 + 2);

      goto LABEL_25;
    case 3u:
      *v9 = *v10;
      swift_unknownObjectRetain();
      goto LABEL_25;
    case 4u:
      v13 = sub_1DD0DB1EC();
      (*(*(v13 - 8) + 16))(v9, v10, v13);
      goto LABEL_25;
    case 5u:
      v23 = *v10;
      *v9 = *v10;
      v24 = v23;
      goto LABEL_25;
    case 6u:
      v25 = sub_1DD0DB4BC();
      (*(*(v25 - 8) + 16))(v9, v10, v25);
      v26 = type metadata accessor for USOParse();
      v27 = v26[5];
      v28 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v10[v27], 1, v28))
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v9[v27], &v10[v27], *(*(v29 - 8) + 64));
      }

      else
      {
        (*(*(v28 - 8) + 16))(&v9[v27], &v10[v27], v28);
        __swift_storeEnumTagSinglePayload(&v9[v27], 0, 1, v28);
      }

      v60 = v26[6];
      v61 = &v9[v60];
      v62 = &v10[v60];
      v63 = *(v62 + 1);
      *v61 = *v62;
      *(v61 + 1) = v63;
      v64 = v26[7];
      v65 = &v9[v64];
      v66 = &v10[v64];
      v65[4] = v66[4];
      *v65 = *v66;

      goto LABEL_25;
    case 7u:
      v16 = sub_1DD0DB4BC();
      (*(*(v16 - 8) + 16))(v9, v10, v16);
      v17 = type metadata accessor for USOParse();
      v18 = v17[5];
      v19 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v10[v18], 1, v19))
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v9[v18], &v10[v18], *(*(v20 - 8) + 64));
      }

      else
      {
        (*(*(v19 - 8) + 16))(&v9[v18], &v10[v18], v19);
        __swift_storeEnumTagSinglePayload(&v9[v18], 0, 1, v19);
      }

      v40 = v17[6];
      v41 = &v9[v40];
      v42 = &v10[v40];
      v43 = *(v42 + 1);
      *v41 = *v42;
      *(v41 + 1) = v43;
      v44 = v17[7];
      v45 = &v9[v44];
      v46 = &v10[v44];
      v45[4] = v46[4];
      *v45 = *v46;
      v47 = type metadata accessor for LinkParse();
      v48 = v47[5];
      v49 = &v9[v48];
      v50 = &v10[v48];
      v51 = *(v50 + 1);
      *v49 = *v50;
      *(v49 + 1) = v51;
      v52 = v47[6];
      v53 = &v9[v52];
      v54 = &v10[v52];
      v55 = *(v54 + 1);
      *v53 = *v54;
      *(v53 + 1) = v55;
      v56 = v47[7];
      v57 = &v9[v56];
      v58 = &v10[v56];
      v59 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v59;

      goto LABEL_25;
    case 8u:
      v30 = sub_1DD0DD12C();
      (*(*(v30 - 8) + 16))(v9, v10, v30);
      v31 = type metadata accessor for NLRouterParse();
      v32 = *(v31 + 20);
      v33 = &v9[v32];
      v34 = &v10[v32];
      v35 = *(v34 + 1);
      *v33 = *v34;
      *(v33 + 1) = v35;
      v36 = *(v31 + 24);
      v93 = v31;
      __dst = &v9[v36];
      v37 = &v10[v36];
      v38 = type metadata accessor for USOParse();

      if (__swift_getEnumTagSinglePayload(v37, 1, v38))
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(__dst, v37, *(*(v39 - 8) + 64));
      }

      else
      {
        v67 = sub_1DD0DB4BC();
        (*(*(v67 - 8) + 16))(__dst, v37, v67);
        v68 = v38[5];
        v92 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v37[v68], 1, v92))
        {
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&__dst[v68], &v37[v68], *(*(v69 - 8) + 64));
        }

        else
        {
          (*(*(v92 - 8) + 16))(&__dst[v68], &v37[v68]);
          __swift_storeEnumTagSinglePayload(&__dst[v68], 0, 1, v92);
        }

        v70 = v38[6];
        v71 = &__dst[v70];
        v72 = &v37[v70];
        v73 = *(v72 + 1);
        *v71 = *v72;
        *(v71 + 1) = v73;
        v74 = v38[7];
        v75 = &__dst[v74];
        v76 = &v37[v74];
        v75[4] = v76[4];
        *v75 = *v76;

        __swift_storeEnumTagSinglePayload(__dst, 0, 1, v38);
      }

      v77 = *(v93 + 28);
      v78 = *&v10[v77];
      *&v9[v77] = v78;
      v79 = v78;
      goto LABEL_25;
    case 9u:
      v14 = sub_1DD0DD08C();
      (*(*(v14 - 8) + 16))(v9, v10, v14);
LABEL_25:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v9, v10, *(*(v11 - 8) + 64));
      break;
  }

  *(a1 + v7[6]) = *(a2 + v7[6]);
  v80 = v7[7];
  v81 = a1 + v80;
  v82 = a2 + v80;
  v83 = *(a2 + v80 + 24);

  if (v83)
  {
    v84 = *(v82 + 32);
    *(v81 + 24) = v83;
    *(v81 + 32) = v84;
    (**(v83 - 8))(v81, v82, v83);
  }

  else
  {
    v85 = *(v82 + 16);
    *v81 = *v82;
    *(v81 + 16) = v85;
    *(v81 + 32) = *(v82 + 32);
  }

  *(a1 + v7[8]) = *(a2 + v7[8]);
  v86 = *(a3 + 20);
  v87 = a1 + v86;
  v88 = (a2 + v86);
  v89 = v88[1];
  if (v89 >> 60 == 15)
  {
    *v87 = *v88;
  }

  else
  {
    v90 = *v88;
    sub_1DCC91E80(*v88, v88[1]);
    *v87 = v90;
    *(v87 + 8) = v89;
  }

  return a1;
}

uint64_t assignWithCopy for ExecuteOnRemotePayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = type metadata accessor for Input(0);
  v8 = v7;
  if (a1 != a2)
  {
    v9 = *(v7 + 20);
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    sub_1DCD136A8(a1 + v9, type metadata accessor for Parse);
    v12 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v13 = sub_1DD0DC76C();
        (*(*(v13 - 8) + 16))(v10, v11, v13);
        goto LABEL_26;
      case 1u:
        v21 = sub_1DD0DC76C();
        (*(*(v21 - 8) + 16))(v10, v11, v21);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v10[*(v22 + 48)] = *&v11[*(v22 + 48)];
        sub_1DD0DCF8C();
      case 2u:
        *v10 = *v11;
        *(v10 + 1) = *(v11 + 1);
        *(v10 + 2) = *(v11 + 2);

        goto LABEL_26;
      case 3u:
        *v10 = *v11;
        swift_unknownObjectRetain();
        goto LABEL_26;
      case 4u:
        v14 = sub_1DD0DB1EC();
        (*(*(v14 - 8) + 16))(v10, v11, v14);
        goto LABEL_26;
      case 5u:
        v23 = *v11;
        *v10 = *v11;
        v24 = v23;
        goto LABEL_26;
      case 6u:
        v25 = sub_1DD0DB4BC();
        (*(*(v25 - 8) + 16))(v10, v11, v25);
        v26 = type metadata accessor for USOParse();
        v27 = v26[5];
        v28 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v27], 1, v28))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v27], &v11[v27], *(*(v29 - 8) + 64));
        }

        else
        {
          (*(*(v28 - 8) + 16))(&v10[v27], &v11[v27], v28);
          __swift_storeEnumTagSinglePayload(&v10[v27], 0, 1, v28);
        }

        v56 = v26[6];
        v57 = &v10[v56];
        v58 = &v11[v56];
        *v57 = *v58;
        *(v57 + 1) = *(v58 + 1);
        v59 = v26[7];
        v60 = &v10[v59];
        v61 = &v11[v59];
        v62 = *v61;
        v60[4] = v61[4];
        *v60 = v62;

        goto LABEL_26;
      case 7u:
        v16 = sub_1DD0DB4BC();
        (*(*(v16 - 8) + 16))(v10, v11, v16);
        v17 = type metadata accessor for USOParse();
        v18 = v17[5];
        v19 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v18], 1, v19))
        {
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v18], &v11[v18], *(*(v20 - 8) + 64));
        }

        else
        {
          (*(*(v19 - 8) + 16))(&v10[v18], &v11[v18], v19);
          __swift_storeEnumTagSinglePayload(&v10[v18], 0, 1, v19);
        }

        v39 = v17[6];
        v40 = &v10[v39];
        v41 = &v11[v39];
        *v40 = *v41;
        *(v40 + 1) = *(v41 + 1);
        v42 = v17[7];
        v43 = &v10[v42];
        v44 = &v11[v42];
        v45 = *v44;
        v43[4] = v44[4];
        *v43 = v45;
        v46 = type metadata accessor for LinkParse();
        v47 = v46[5];
        v48 = &v10[v47];
        v49 = &v11[v47];
        *v48 = *v49;
        *(v48 + 1) = *(v49 + 1);
        v50 = v46[6];
        v51 = &v10[v50];
        v52 = &v11[v50];
        *v51 = *v52;
        *(v51 + 1) = *(v52 + 1);
        v53 = v46[7];
        v54 = &v10[v53];
        v55 = &v11[v53];
        *v54 = *v55;
        *(v54 + 1) = *(v55 + 1);

        goto LABEL_26;
      case 8u:
        v30 = sub_1DD0DD12C();
        (*(*(v30 - 8) + 16))(v10, v11, v30);
        v31 = type metadata accessor for NLRouterParse();
        v32 = *(v31 + 20);
        v33 = &v10[v32];
        v34 = &v11[v32];
        *v33 = *v34;
        *(v33 + 1) = *(v34 + 1);
        v35 = *(v31 + 24);
        v94 = v31;
        __dst = &v10[v35];
        v36 = &v11[v35];
        v37 = type metadata accessor for USOParse();

        if (__swift_getEnumTagSinglePayload(v36, 1, v37))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(__dst, v36, *(*(v38 - 8) + 64));
        }

        else
        {
          v63 = sub_1DD0DB4BC();
          (*(*(v63 - 8) + 16))(__dst, v36, v63);
          v64 = v37[5];
          v93 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v36[v64], 1, v93))
          {
            v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&__dst[v64], &v36[v64], *(*(v65 - 8) + 64));
          }

          else
          {
            (*(*(v93 - 8) + 16))(&__dst[v64], &v36[v64]);
            __swift_storeEnumTagSinglePayload(&__dst[v64], 0, 1, v93);
          }

          v66 = v37[6];
          v67 = &__dst[v66];
          v68 = &v36[v66];
          *v67 = *v68;
          *(v67 + 1) = *(v68 + 1);
          v69 = v37[7];
          v70 = &__dst[v69];
          v71 = &v36[v69];
          v72 = *v71;
          v70[4] = v71[4];
          *v70 = v72;

          __swift_storeEnumTagSinglePayload(__dst, 0, 1, v37);
        }

        v73 = *(v94 + 28);
        v74 = *&v11[v73];
        *&v10[v73] = v74;
        v75 = v74;
        goto LABEL_26;
      case 9u:
        v15 = sub_1DD0DD08C();
        (*(*(v15 - 8) + 16))(v10, v11, v15);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v10, v11, *(*(v12 - 8) + 64));
        break;
    }
  }

  v76 = v8[6];
  v77 = *(a1 + v76);
  *(a1 + v76) = *(a2 + v76);

  v78 = v8[7];
  v79 = a1 + v78;
  v80 = (a2 + v78);
  v81 = *(a2 + v78 + 24);
  if (*(a1 + v78 + 24))
  {
    if (v81)
    {
      __swift_assign_boxed_opaque_existential_1(v79, v80);
      goto LABEL_34;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v79);
  }

  else if (v81)
  {
    *(v79 + 24) = v81;
    *(v79 + 32) = v80[4];
    (**(v81 - 8))(v79, v80);
    goto LABEL_34;
  }

  v82 = *v80;
  v83 = *(v80 + 1);
  *(v79 + 32) = v80[4];
  *v79 = v82;
  *(v79 + 16) = v83;
LABEL_34:
  *(a1 + v8[8]) = *(a2 + v8[8]);
  v84 = *(a3 + 20);
  v85 = (a1 + v84);
  v86 = (a2 + v84);
  v87 = *(a2 + v84 + 8);
  if (*(a1 + v84 + 8) >> 60 != 15)
  {
    if (v87 >> 60 != 15)
    {
      v89 = *v86;
      sub_1DCC91E80(v89, v87);
      v90 = *v85;
      v91 = v85[1];
      *v85 = v89;
      v85[1] = v87;
      sub_1DCB21A14(v90, v91);
      return a1;
    }

    sub_1DCCFBA6C(v85);
    goto LABEL_39;
  }

  if (v87 >> 60 == 15)
  {
LABEL_39:
    *v85 = *v86;
    return a1;
  }

  v88 = *v86;
  sub_1DCC91E80(v88, v87);
  *v85 = v88;
  v85[1] = v87;
  return a1;
}

uint64_t sub_1DCD136A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t initializeWithTake for ExecuteOnRemotePayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = type metadata accessor for Input(0);
  v8 = v7[5];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v12 = sub_1DD0DC76C();
      (*(*(v12 - 8) + 32))(v9, v10, v12);
      goto LABEL_22;
    case 1u:
      v20 = sub_1DD0DC76C();
      (*(*(v20 - 8) + 32))(v9, v10, v20);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v9[*(v21 + 48)] = *&v10[*(v21 + 48)];
      goto LABEL_22;
    case 4u:
      v23 = sub_1DD0DB1EC();
      (*(*(v23 - 8) + 32))(v9, v10, v23);
      goto LABEL_22;
    case 6u:
      v24 = sub_1DD0DB4BC();
      (*(*(v24 - 8) + 32))(v9, v10, v24);
      v25 = type metadata accessor for USOParse();
      v26 = v25[5];
      v27 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v10[v26], 1, v27))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v9[v26], &v10[v26], *(*(v28 - 8) + 64));
      }

      else
      {
        (*(*(v27 - 8) + 32))(&v9[v26], &v10[v26], v27);
        __swift_storeEnumTagSinglePayload(&v9[v26], 0, 1, v27);
      }

      *&v9[v25[6]] = *&v10[v25[6]];
      v41 = v25[7];
      v42 = &v9[v41];
      v43 = &v10[v41];
      v42[4] = v43[4];
      *v42 = *v43;
      goto LABEL_22;
    case 7u:
      v29 = sub_1DD0DB4BC();
      (*(*(v29 - 8) + 32))(v9, v10, v29);
      v30 = type metadata accessor for USOParse();
      v31 = v30[5];
      v32 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v10[v31], 1, v32))
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v9[v31], &v10[v31], *(*(v33 - 8) + 64));
      }

      else
      {
        (*(*(v32 - 8) + 32))(&v9[v31], &v10[v31], v32);
        __swift_storeEnumTagSinglePayload(&v9[v31], 0, 1, v32);
      }

      *&v9[v30[6]] = *&v10[v30[6]];
      v44 = v30[7];
      v45 = &v9[v44];
      v46 = &v10[v44];
      v45[4] = v46[4];
      *v45 = *v46;
      v47 = type metadata accessor for LinkParse();
      *&v9[v47[5]] = *&v10[v47[5]];
      *&v9[v47[6]] = *&v10[v47[6]];
      *&v9[v47[7]] = *&v10[v47[7]];
      goto LABEL_22;
    case 8u:
      v13 = sub_1DD0DD12C();
      (*(*(v13 - 8) + 32))(v9, v10, v13);
      v14 = type metadata accessor for NLRouterParse();
      *&v9[*(v14 + 20)] = *&v10[*(v14 + 20)];
      v59 = v14;
      v15 = *(v14 + 24);
      v16 = &v9[v15];
      v17 = &v10[v15];
      v18 = type metadata accessor for USOParse();
      if (__swift_getEnumTagSinglePayload(v17, 1, v18))
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v16, v17, *(*(v19 - 8) + 64));
      }

      else
      {
        v34 = sub_1DD0DB4BC();
        v58 = v16;
        (*(*(v34 - 8) + 32))(v16, v17, v34);
        v35 = v18[5];
        v36 = sub_1DD0DB3EC();
        v57 = v35;
        v37 = &v17[v35];
        v38 = v36;
        if (__swift_getEnumTagSinglePayload(v37, 1, v36))
        {
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          v40 = v58;
          memcpy(&v58[v57], &v17[v57], *(*(v39 - 8) + 64));
        }

        else
        {
          v56 = v38;
          (*(*(v38 - 8) + 32))(&v58[v57], &v17[v57], v38);
          v40 = v58;
          __swift_storeEnumTagSinglePayload(&v58[v57], 0, 1, v56);
        }

        *(v40 + v18[6]) = *&v17[v18[6]];
        v48 = v18[7];
        v49 = v40 + v48;
        v50 = &v17[v48];
        *(v49 + 4) = v50[4];
        *v49 = *v50;
        __swift_storeEnumTagSinglePayload(v40, 0, 1, v18);
      }

      *&v9[*(v59 + 28)] = *&v10[*(v59 + 28)];
      goto LABEL_22;
    case 9u:
      v22 = sub_1DD0DD08C();
      (*(*(v22 - 8) + 32))(v9, v10, v22);
LABEL_22:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v9, v10, *(*(v11 - 8) + 64));
      break;
  }

  *(a1 + v7[6]) = *(a2 + v7[6]);
  v51 = v7[7];
  v52 = a1 + v51;
  v53 = a2 + v51;
  v54 = *(v53 + 16);
  *v52 = *v53;
  *(v52 + 16) = v54;
  *(v52 + 32) = *(v53 + 32);
  *(a1 + v7[8]) = *(a2 + v7[8]);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for ExecuteOnRemotePayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = type metadata accessor for Input(0);
  v8 = v7;
  if (a1 != a2)
  {
    v9 = *(v7 + 20);
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    sub_1DCD136A8(a1 + v9, type metadata accessor for Parse);
    v12 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v13 = sub_1DD0DC76C();
        (*(*(v13 - 8) + 32))(v10, v11, v13);
        goto LABEL_23;
      case 1u:
        v21 = sub_1DD0DC76C();
        (*(*(v21 - 8) + 32))(v10, v11, v21);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v10[*(v22 + 48)] = *&v11[*(v22 + 48)];
        goto LABEL_23;
      case 4u:
        v24 = sub_1DD0DB1EC();
        (*(*(v24 - 8) + 32))(v10, v11, v24);
        goto LABEL_23;
      case 6u:
        v25 = sub_1DD0DB4BC();
        (*(*(v25 - 8) + 32))(v10, v11, v25);
        v26 = type metadata accessor for USOParse();
        v27 = v26[5];
        v28 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v27], 1, v28))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v27], &v11[v27], *(*(v29 - 8) + 64));
        }

        else
        {
          (*(*(v28 - 8) + 32))(&v10[v27], &v11[v27], v28);
          __swift_storeEnumTagSinglePayload(&v10[v27], 0, 1, v28);
        }

        *&v10[v26[6]] = *&v11[v26[6]];
        v42 = v26[7];
        v43 = &v10[v42];
        v44 = &v11[v42];
        v43[4] = v44[4];
        *v43 = *v44;
        goto LABEL_23;
      case 7u:
        v30 = sub_1DD0DB4BC();
        (*(*(v30 - 8) + 32))(v10, v11, v30);
        v31 = type metadata accessor for USOParse();
        v32 = v31[5];
        v33 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v32], 1, v33))
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v32], &v11[v32], *(*(v34 - 8) + 64));
        }

        else
        {
          (*(*(v33 - 8) + 32))(&v10[v32], &v11[v32], v33);
          __swift_storeEnumTagSinglePayload(&v10[v32], 0, 1, v33);
        }

        *&v10[v31[6]] = *&v11[v31[6]];
        v45 = v31[7];
        v46 = &v10[v45];
        v47 = &v11[v45];
        v46[4] = v47[4];
        *v46 = *v47;
        v48 = type metadata accessor for LinkParse();
        *&v10[v48[5]] = *&v11[v48[5]];
        *&v10[v48[6]] = *&v11[v48[6]];
        *&v10[v48[7]] = *&v11[v48[7]];
        goto LABEL_23;
      case 8u:
        v14 = sub_1DD0DD12C();
        (*(*(v14 - 8) + 32))(v10, v11, v14);
        v15 = type metadata accessor for NLRouterParse();
        *&v10[*(v15 + 20)] = *&v11[*(v15 + 20)];
        v68 = v15;
        v16 = *(v15 + 24);
        v17 = &v10[v16];
        v18 = &v11[v16];
        v19 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v18, 1, v19))
        {
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v17, v18, *(*(v20 - 8) + 64));
        }

        else
        {
          v35 = sub_1DD0DB4BC();
          v67 = v17;
          (*(*(v35 - 8) + 32))(v17, v18, v35);
          v36 = v19[5];
          v37 = sub_1DD0DB3EC();
          v66 = v36;
          v38 = &v18[v36];
          v39 = v37;
          if (__swift_getEnumTagSinglePayload(v38, 1, v37))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v41 = v67;
            memcpy(&v67[v66], &v18[v66], *(*(v40 - 8) + 64));
          }

          else
          {
            v65 = v39;
            (*(*(v39 - 8) + 32))(&v67[v66], &v18[v66], v39);
            v41 = v67;
            __swift_storeEnumTagSinglePayload(&v67[v66], 0, 1, v65);
          }

          *(v41 + v19[6]) = *&v18[v19[6]];
          v49 = v19[7];
          v50 = v41 + v49;
          v51 = &v18[v49];
          *(v50 + 4) = v51[4];
          *v50 = *v51;
          __swift_storeEnumTagSinglePayload(v41, 0, 1, v19);
        }

        *&v10[*(v68 + 28)] = *&v11[*(v68 + 28)];
        goto LABEL_23;
      case 9u:
        v23 = sub_1DD0DD08C();
        (*(*(v23 - 8) + 32))(v10, v11, v23);
LABEL_23:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v10, v11, *(*(v12 - 8) + 64));
        break;
    }
  }

  v52 = v8[6];
  v53 = *(a1 + v52);
  *(a1 + v52) = *(a2 + v52);

  v54 = v8[7];
  v55 = a1 + v54;
  v56 = a2 + v54;
  if (*(a1 + v54 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
  }

  v57 = *(v56 + 16);
  *v55 = *v56;
  *(v55 + 16) = v57;
  *(v55 + 32) = *(v56 + 32);
  *(a1 + v8[8]) = *(a2 + v8[8]);
  v58 = *(a3 + 20);
  v59 = (a1 + v58);
  v60 = (a2 + v58);
  v61 = *(a1 + v58 + 8);
  if (v61 >> 60 != 15)
  {
    v62 = v60[1];
    if (v62 >> 60 != 15)
    {
      v63 = *v59;
      *v59 = *v60;
      v59[1] = v62;
      sub_1DCB21A14(v63, v61);
      return a1;
    }

    sub_1DCCFBA6C(v59);
  }

  *v59 = *v60;
  return a1;
}

uint64_t sub_1DCD145F0()
{
  result = type metadata accessor for Input(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExecuteOnRemotePayload.ExecuteOnRemotePayloadError(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ExecuteOnRemotePayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCD14810()
{
  result = qword_1ECCA4950;
  if (!qword_1ECCA4950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4950);
  }

  return result;
}

unint64_t sub_1DCD14868()
{
  result = qword_1ECCA4958;
  if (!qword_1ECCA4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4958);
  }

  return result;
}

unint64_t sub_1DCD148C0()
{
  result = qword_1ECCA4960;
  if (!qword_1ECCA4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4960);
  }

  return result;
}

uint64_t sub_1DCD14914()
{
  sub_1DD0B3E1C();
  OUTLINED_FUNCTION_1_50();
  return OUTLINED_FUNCTION_3_53();
}

uint64_t sub_1DCD149A8()
{
  sub_1DD0B3E1C();
  OUTLINED_FUNCTION_1_50();
  return OUTLINED_FUNCTION_3_53();
}

uint64_t sub_1DCD14A38()
{
  v0 = sub_1DD0B3E1C();

  return v0;
}

uint64_t sub_1DCD14AE4()
{
  sub_1DD0B3E1C();
  OUTLINED_FUNCTION_1_50();
  return OUTLINED_FUNCTION_3_53();
}

id sub_1DCD14BB4(void *a1)
{
  v3 = sub_1DCC69D70();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    sub_1DCD15A7C();
    OUTLINED_FUNCTION_33_4();

    OUTLINED_FUNCTION_17_1();
    if (!sub_1DCD15968())
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v7 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v7, qword_1EDE57E00);
      OUTLINED_FUNCTION_33_4();

      v8 = sub_1DD0DD8EC();
      v9 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v35 = v11;
        *v10 = 136315138;
        v12 = OUTLINED_FUNCTION_17_1();
        *(v10 + 4) = sub_1DCB10E9C(v12, v13, v14);
        OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v15, v16, "Could not load bundle by identifier: '%s'");
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      v1 = 2;
LABEL_21:
      sub_1DCD15AC0();
      swift_allocError();
      *v34 = v5;
      *(v34 + 8) = v6;
      *(v34 + 16) = v1;
      swift_willThrow();
      return v1;
    }

    goto LABEL_10;
  }

  v17 = sub_1DCC69D70();
  if (v18)
  {
    v5 = v17;
    v6 = v18;
    sub_1DCD15A7C();
    OUTLINED_FUNCTION_33_4();

    OUTLINED_FUNCTION_17_1();
    if (!sub_1DCD158F4())
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v24 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v24, qword_1EDE57E00);
      OUTLINED_FUNCTION_33_4();

      v25 = sub_1DD0DD8EC();
      v26 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v35 = v28;
        *v27 = 136315138;
        v29 = OUTLINED_FUNCTION_17_1();
        *(v27 + 4) = sub_1DCB10E9C(v29, v30, v31);
        OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v32, v33, "Could not load bundle by libraryPath: '%s'");
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      v1 = 1;
      goto LABEL_21;
    }

LABEL_10:
    OUTLINED_FUNCTION_33_4();

    return v1;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v19, qword_1EDE57E00);
  v20 = sub_1DD0DD8EC();
  v21 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_1DCB10E9C(0xD000000000000010, 0x80000001DD1142D0, &v35);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_1DCB10E9C(0x507972617262696CLL, 0xEB00000000687461, &v35);
    _os_log_impl(&dword_1DCAFC000, v20, v21, "Neither %s nor %s are specified. Using default Bundle.", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  return a1;
}

uint64_t sub_1DCD14F98(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCD14FBC, 0, 0);
}

uint64_t sub_1DCD14FBC()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  type metadata accessor for ParameterWrapper();
  inited = swift_initStackObject();
  *(inited + 16) = v2;

  sub_1DCD1510C();
  v4 = *(v0 + 120);
  swift_setDeallocating();
  v5 = *(inited + 16);

  v11 = *(v0 + 40);
  v6 = *(v0 + 40);
  v7 = __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  *(v0 + 80) = v11;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 56));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v7, v6);
  sub_1DCB17CA0(v0 + 56, v4);
  *(v4 + 40) = 1;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v9 = *(v0 + 8);

  return v9();
}

void sub_1DCD1510C()
{
  v2 = sub_1DCD14A38();
  if (!v1)
  {
    v4 = v2;
    v5 = v3;
    sub_1DCD14A38();
    v6 = sub_1DCD14BB4(*(v0 + 32));
    if (![v6 load])
    {

      sub_1DD0DEC1C();

      *&v37 = 0xD000000000000014;
      *(&v37 + 1) = 0x80000001DD11A070;
      v13 = [v6 description];
LABEL_22:
      v25 = v13;
      v26 = v6;
LABEL_23:
      v27 = v25;
      v28 = sub_1DD0DDFBC();
      v30 = v29;

      MEMORY[0x1E12A6780](v28, v30);

      v31 = v37;
      sub_1DCD158A0();
      swift_allocError();
      *v32 = v31;
      swift_willThrow();

      return;
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v8 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v8, qword_1EDE57E00);

    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6DC();

    v41 = v6;
    if (os_log_type_enabled(v9, v10))
    {
      v36 = v9;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v37 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1DCB10E9C(v4, v5, &v37);
      _os_log_impl(&dword_1DCAFC000, v36, v10, "Attempting to load %s using Bundle", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      v6 = v41;
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    else
    {
    }

    v14 = sub_1DCD159CC(v6);
    if (v14)
    {
      sub_1DCB90D40(0xD000000000000012, 0x80000001DD11A0C0, v14);

      if (*(&v38 + 1))
      {
        if (swift_dynamicCast())
        {
          v35 = v40;
          v37 = v40;

          MEMORY[0x1E12A6780](46, 0xE100000000000000);
          MEMORY[0x1E12A6780](v4, v5);
          sub_1DD0DDF8C();
          OUTLINED_FUNCTION_33_4();

          v15 = NSClassFromString(&v37);

          if (v15)
          {
            ObjCClassMetadata = swift_getObjCClassMetadata();
            v17 = dynamic_cast_existential_1_conditional(ObjCClassMetadata);
            if (v17)
            {
              v19 = v17;
              v20 = v18;

              v21 = *(v20 + 8);
              *(&v38 + 1) = v19;
              v39 = v20;
              __swift_allocate_boxed_opaque_existential_1Tm(&v37);
              v21(v19, v20);
              v22 = sub_1DCC6A48C(0xD000000000000011, 0x80000001DD11A100, MEMORY[0x1E69E7CC8]);
              sub_1DCDAC354(v22);
            }
          }

          *&v37 = 0;
          *(&v37 + 1) = 0xE000000000000000;
          sub_1DD0DEC1C();

          OUTLINED_FUNCTION_1_0();
          *&v37 = v34;
          *(&v37 + 1) = v33;
          MEMORY[0x1E12A6780](v35, *(&v35 + 1));

          MEMORY[0x1E12A6780](46, 0xE100000000000000);
          MEMORY[0x1E12A6780](v4, v5);

          MEMORY[0x1E12A6780](0x7562206D6F726620, 0xED000020656C646ELL);
          v26 = v41;
          v25 = [v41 description];
          goto LABEL_23;
        }

        v6 = v41;
        goto LABEL_21;
      }
    }

    else
    {

      v37 = 0u;
      v38 = 0u;
    }

    v6 = v41;
    sub_1DCC8BC14(&v37);
LABEL_21:
    *&v37 = 0;
    *(&v37 + 1) = 0xE000000000000000;
    sub_1DD0DEC1C();

    OUTLINED_FUNCTION_1_0();
    *&v37 = v24 + 25;
    *(&v37 + 1) = v23;
    v13 = [v6 description];
    goto LABEL_22;
  }
}

unint64_t sub_1DCD156DC(uint64_t a1, uint64_t a2)
{
  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](a1, a2);
  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t sub_1DCD15774()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1DCD1579C()
{
  sub_1DCD15774();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD157F4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB193FC;

  return sub_1DCD14F98(a1, a2);
}

unint64_t sub_1DCD158A0()
{
  result = qword_1ECCA4968;
  if (!qword_1ECCA4968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4968);
  }

  return result;
}

id sub_1DCD158F4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1DD0DDF8C();

  v2 = [v0 initWithPath_];

  return v2;
}

id sub_1DCD15968()
{
  v0 = sub_1DD0DDF8C();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

uint64_t sub_1DCD159CC(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDE6C();

  return v3;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DCD15A7C()
{
  result = qword_1EDE460A8;
  if (!qword_1EDE460A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE460A8);
  }

  return result;
}

unint64_t sub_1DCD15AC0()
{
  result = qword_1ECCA4970;
  if (!qword_1ECCA4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4970);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeatureFlagDefinitions.PersonalDomains(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for FeatureFlagDefinitions.Core(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCD15E3C()
{
  result = qword_1ECCA4978;
  if (!qword_1ECCA4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4978);
  }

  return result;
}

unint64_t sub_1DCD15E94()
{
  result = qword_1ECCA4980;
  if (!qword_1ECCA4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4980);
  }

  return result;
}

uint64_t sub_1DCD15EF0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1DD0DB0FC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  if (AFIsInternalInstall())
  {
    v34[3] = &type metadata for FeatureFlagDefinitions.PersonalDomains;
    v34[4] = sub_1DCBF3A2C();
    LOBYTE(v34[0]) = 1;
    v12 = sub_1DD0DB2AC();
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    if (v12)
    {
      v13 = [objc_opt_self() mainBundle];
      v14 = sub_1DCD1674C(v13);
      if (!v15)
      {
        goto LABEL_5;
      }

      v34[0] = v14;
      v34[1] = v15;
      sub_1DCB1C4D8();
      v16 = sub_1DD0DEA0C();

      a4 = sub_1DCB1D5C0(v16);
      v18 = v17;

      if (!v18)
      {
LABEL_5:

        a4 = 0;
        v18 = 0xE000000000000000;
      }

      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = a4 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        sub_1DD0DCA6C();
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v30 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v30, qword_1EDE57E00);
      v26 = sub_1DD0DD8EC();
      v31 = sub_1DD0DE6DC();
      if (!OUTLINED_FUNCTION_5(v31))
      {
        goto LABEL_24;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "no domain name found. Skipping AutoBugCapture";
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v25 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v25, qword_1EDE57E00);
      v26 = sub_1DD0DD8EC();
      v27 = sub_1DD0DE6DC();
      if (!OUTLINED_FUNCTION_5(v27))
      {
        goto LABEL_24;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "AutoBugCapture is disabled";
    }

    _os_log_impl(&dword_1DCAFC000, v26, a4, v29, v28, 2u);
    OUTLINED_FUNCTION_80();
LABEL_24:

    return 0;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v20 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v20, qword_1EDE57E00);

  v21 = sub_1DD0DD8EC();
  v22 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = a1;
    v24 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = sub_1DCB10E9C(v23, a2, v34);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_1DCB10E9C(a3, a4, v34);
    _os_log_impl(&dword_1DCAFC000, v21, v22, "not an internal build. Skipping AutoBugCapture for %s/%s", v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v32 = *(v11 + 16);

  return v32;
}

uint64_t sub_1DCD16708(char a1, uint64_t a2)
{
  result = swift_beginAccess();
  *(a2 + 16) = a1;
  return result;
}

uint64_t sub_1DCD1674C(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD0DDFBC();

  return v3;
}

void Flow.deferToExecuteAsync(_:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v42 = v2;
  v43 = v3;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0) - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v39 - v17;
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v19 = sub_1DD0DE02C();
  v21 = v20;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v22 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v22, qword_1EDE57E00);

  v23 = sub_1DD0DD8EC();
  v24 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v39 = v1;
    v26 = v25;
    v27 = swift_slowAlloc();
    v40 = v7;
    v28 = v27;
    DynamicType = v27;
    *v26 = 136315138;
    v29 = sub_1DCB10E9C(v19, v21, &DynamicType);

    *(v26 + 4) = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v7 = v40;
    OUTLINED_FUNCTION_80();
    v1 = v39;
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  v30 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v18, v31, v32, v30);
  (*(v9 + 16))(v41, v1, v5);
  v33 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v35 = v42;
  v36 = v43;
  v34[4] = v5;
  v34[5] = v36;
  v34[6] = v35;
  v34[7] = v7;
  v37 = *(v9 + 32);
  OUTLINED_FUNCTION_152_0();
  v38();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD16AB8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_49();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_47(v1);

  return Flow.onAsync(input:)(v3, v4, v5);
}

void Flow.flexibleExecutionSupport.getter(uint64_t a1@<X8>)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "Default implemenation returning nil for flexibleExecutionSupport", v5, 2u);
    OUTLINED_FUNCTION_80();
  }

  *a1 = 0;
  *(a1 + 8) = 1;
}

uint64_t sub_1DCD16C18()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_12();
  OUTLINED_FUNCTION_32_2(dword_1DD0E2510);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_34(v1);

  return v4(v3);
}

uint64_t sub_1DCD16CAC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_12();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E21F8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_34(v1);

  return v4(v3);
}

uint64_t sub_1DCD16D3C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_12();
  OUTLINED_FUNCTION_32_2(dword_1DD0E1F50);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_34(v1);

  return v4(v3);
}

uint64_t static ExecuteResponse.unhandled(reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for ExecuteResponse(0);
  v7 = *(v6 + 36);
  v8 = type metadata accessor for PluginAction();
  OUTLINED_FUNCTION_7_5(a2 + v7, v9, v10, v8);
  *a2 = 3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  OUTLINED_FUNCTION_26_15((a2 + *(v6 + 40)));

  return sub_1DCD1B9B8(v3, v4, v5);
}

uint64_t sub_1DCD16E6C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_49();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;
  OUTLINED_FUNCTION_116();

  return Flow.execute()(v3, v4, v5);
}

uint64_t sub_1DCD16F18()
{
  OUTLINED_FUNCTION_42();
  v0[3] = swift_task_alloc();
  v1 = *(MEMORY[0x1E69E88D0] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  type metadata accessor for ExecuteResponse(0);
  *v2 = v0;
  v2[1] = sub_1DCBD4958;
  v3 = v0[2];
  OUTLINED_FUNCTION_30_18();

  return MEMORY[0x1EEE6DDE0](v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t Flow.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD16FF0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  type metadata accessor for ExecuteResponse(0);
  *v4 = v0;
  v4[1] = sub_1DCB410E0;
  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_30_18();

  return MEMORY[0x1EEE6DDE0](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCD170C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB47430;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_1DCD1716C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return Flow.execute()(a1, a2, a3);
}

void sub_1DCD1721C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v27 - v7;
  v28 = &type metadata for SentinalFlow;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1F78, &qword_1DD0E2C08);
  v9 = sub_1DD0DE02C();
  v11 = v10;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v12 = sub_1DD0DD8FC();
  v13 = __swift_project_value_buffer(v12, qword_1EDE57E00);

  v14 = sub_1DD0DD8EC();
  v15 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315138;
    v18 = sub_1DCB10E9C(v9, v11, &v28);

    *(v16 + 4) = v18;
    __swift_destroy_boxed_opaque_existential_1Tm(&v17->Kind);
    MEMORY[0x1E12A8390](v17, -1, -1);
    MEMORY[0x1E12A8390](v16, -1, -1);
  }

  else
  {
  }

  v19 = *(v12 - 8);
  (*(v19 + 16))(v8, v13, v12);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v12);
  sub_1DCB099BC(v8, v5, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v12) == 1)
  {
    sub_1DCB0E9D8(v5, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315650;
      v24 = sub_1DD0DEC3C();
      v26 = sub_1DCB10E9C(v24, v25, &v28);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2048;
      *(v22 + 14) = 191;
      *(v22 + 22) = 2080;
      *(v22 + 24) = sub_1DCB10E9C(0xD000000000000022, 0x80000001DD11A420, &v28);
      _os_log_impl(&dword_1DCAFC000, v20, v21, "FatalError at %s:%lu - %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v23, -1, -1);
      MEMORY[0x1E12A8390](v22, -1, -1);
    }

    (*(v19 + 8))(v5, v12);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000022, 0x80000001DD11A420);
}

SiriKitFlow::FlexibleExecutionSupportOptions sub_1DCD1768C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = FlexibleExecutionSupportOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DCD176CC@<X0>(uint64_t *a1@<X8>)
{
  result = FlexibleExecutionSupportOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Input.init(parse:alternatives:continuationState:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61_9();
  v7 = *v6;
  v8 = v3 + *(OUTLINED_FUNCTION_92_4() + 28);
  *(v8 + 32) = 0;
  OUTLINED_FUNCTION_26_15(v8);
  v10 = *(v9 + 20);
  OUTLINED_FUNCTION_1_51();
  sub_1DCB246E8(v2, v3 + v11);
  *(v3 + *(v4 + 24)) = a2;
  sub_1DD0DB03C();
  OUTLINED_FUNCTION_5_42();
  result = sub_1DCB28538();
  *(v3 + *(v4 + 32)) = v7;
  return result;
}

uint64_t Input.alternatives.getter()
{
  v1 = *(v0 + *(type metadata accessor for Input(0) + 24));
}

uint64_t Input.appResolutionState.getter()
{
  v0 = OUTLINED_FUNCTION_4();
  v1 = type metadata accessor for Input(v0);
  v2 = OUTLINED_FUNCTION_59_2(*(v1 + 28));
  return sub_1DCB099BC(v2, v3, v4, v5);
}

uint64_t Input.appResolutionState.setter()
{
  v2 = OUTLINED_FUNCTION_70();
  v3 = v1 + *(type metadata accessor for Input(v2) + 28);

  return sub_1DCD1B9F4(v0, v3);
}

uint64_t (*Input.appResolutionState.modify())(void)
{
  v0 = OUTLINED_FUNCTION_70();
  v1 = *(type metadata accessor for Input(v0) + 28);
  return nullsub_1;
}

uint64_t Input.withReformedParse(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(OUTLINED_FUNCTION_92_4() + 20);
  OUTLINED_FUNCTION_1_51();
  sub_1DCB246E8(a1, a2 + v7);
  v8 = *(v2 + v3[6]);
  v9 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_2(v9);
  (*(v10 + 16))(a2, v2);
  v11 = a2 + v3[7];
  *(v11 + 32) = 0;
  OUTLINED_FUNCTION_26_15(v11);
  *(a2 + v3[6]) = v8;
  *(a2 + v3[8]) = 0;
}

uint64_t Input.continuationState.getter()
{
  v2 = OUTLINED_FUNCTION_4();
  result = type metadata accessor for Input(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t Input.continuationState.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Input(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t (*Input.continuationState.modify())(void)
{
  v0 = OUTLINED_FUNCTION_70();
  v1 = *(type metadata accessor for Input(v0) + 32);
  return nullsub_1;
}

uint64_t sub_1DCD179C8()
{
  v0 = sub_1DD0DEE9C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DCD17A38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCD179C8();
  *a2 = result;
  return result;
}

unint64_t sub_1DCD17A68@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DCB2BD38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DCD17A94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCD179C8();
  *a1 = result;
  return result;
}

uint64_t sub_1DCD17AC8(uint64_t a1)
{
  v2 = sub_1DCB34278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD17B04(uint64_t a1)
{
  v2 = sub_1DCB34278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LoadedFlowInfo.parse.getter()
{
  v0 = OUTLINED_FUNCTION_4();
  v1 = *(type metadata accessor for LoadedFlowInfo(v0) + 24);
  OUTLINED_FUNCTION_1_51();
  v3 = OUTLINED_FUNCTION_59_2(v2);
  return sub_1DCB246E8(v3, v4);
}

uint64_t LoadedFlowInfo.activeTasks.getter()
{
  v1 = *(v0 + *(type metadata accessor for LoadedFlowInfo(0) + 28));
}

uint64_t LoadedFlowInfo.fromBundle.getter()
{
  v0 = OUTLINED_FUNCTION_4();
  v1 = type metadata accessor for LoadedFlowInfo(v0);
  v2 = OUTLINED_FUNCTION_59_2(*(v1 + 32));
  return sub_1DCB17D04(v2, v3);
}

void LoadedFlowInfo.init(flow:parse:activeTasks:fromBundle:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for FlowToActingFlowAdapter(0);
  a2[4] = v3;
  a2[5] = &off_1EECFDA20;
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t LoadedFlowInfo.init<A>(actingFlow:parse:activeTasks:fromBundle:)()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for AnyFlow();
  swift_allocObject();
  *v9 = sub_1DCBD23E0();
  v9[4] = v3;
  v9[5] = v1;
  __swift_allocate_boxed_opaque_existential_1Tm_0(v9 + 1);
  OUTLINED_FUNCTION_112(v3);
  (*(v10 + 32))();
  v11 = type metadata accessor for LoadedFlowInfo(0);
  sub_1DCB541FC(v7, v9 + v11[6]);
  *(v9 + v11[7]) = v5;
  v12 = v11[8];
  OUTLINED_FUNCTION_15_5();

  return sub_1DCAFF9E8(v13, v14);
}

uint64_t sub_1DCD17D98(uint64_t a1)
{
  v2 = sub_1DCB347BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD17DD4(uint64_t a1)
{
  v2 = sub_1DCB347BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD17E10(uint64_t a1)
{
  v2 = sub_1DCD1BA84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD17E4C(uint64_t a1)
{
  v2 = sub_1DCD1BA84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD17E88(uint64_t a1)
{
  v2 = sub_1DCB34810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD17EC4(uint64_t a1)
{
  v2 = sub_1DCB34810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InputContinuationState.hashValue.getter()
{
  OUTLINED_FUNCTION_85_4();
  sub_1DD0DF1DC();
  OUTLINED_FUNCTION_91_2();
  return sub_1DD0DF20C();
}

uint64_t ExecuteResponseType.hashValue.getter()
{
  OUTLINED_FUNCTION_85_4();
  sub_1DD0DF1DC();
  OUTLINED_FUNCTION_91_2();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD1800C()
{
  OUTLINED_FUNCTION_85_4();
  sub_1DD0DF1DC();
  OUTLINED_FUNCTION_91_2();
  return sub_1DD0DF20C();
}

uint64_t SiriXRedirectContext.reason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1DCD1B9D0(v2, v3, v4);
}

void SiriXRedirectContext.init(_:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_61_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v0 - 8, v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  swift_getKeyPath();
  sub_1DD0DCFEC();
}

BOOL static SiriXRedirectContext.RedirectReason.NoMatchingTool.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t sub_1DCD1845C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7553686372616573 && a2 == 0xEF64656465656363)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCD18504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD1845C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCD18530(uint64_t a1)
{
  v2 = sub_1DCD1BAD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD1856C(uint64_t a1)
{
  v2 = sub_1DCD1BAD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriXRedirectContext.RedirectReason.NoMatchingTool.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49E0, &qword_1DD0EDE98);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_40_3();
  v8 = v2[4];
  v9 = *v0;
  OUTLINED_FUNCTION_57_1(v2, v2[3]);
  sub_1DCD1BAD8();
  OUTLINED_FUNCTION_79_5();
  sub_1DD0DF24C();
  sub_1DD0DEF9C();
  v10 = OUTLINED_FUNCTION_55_0();
  v11(v10);
  OUTLINED_FUNCTION_19_19();
}

void SiriXRedirectContext.RedirectReason.NoMatchingTool.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49F0, &qword_1DD0EDEA0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_15_3();
  v10 = v2[3];
  v11 = v2[4];
  v12 = OUTLINED_FUNCTION_81_3();
  OUTLINED_FUNCTION_57_1(v12, v13);
  sub_1DCD1BAD8();
  OUTLINED_FUNCTION_65_4();
  if (!v0)
  {
    v14 = sub_1DD0DEEEC();
    v15 = OUTLINED_FUNCTION_84_5();
    v16(v15);
    *v4 = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_19_19();
}

uint64_t SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t static SiriXRedirectContext.RedirectReason.UnableToHandleRequest.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1DD0DF0AC() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DCD188D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001DD11A3E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCD18970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD188D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCD1899C(uint64_t a1)
{
  v2 = sub_1DCD1BB2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD189D8(uint64_t a1)
{
  v2 = sub_1DCD1BB2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriXRedirectContext.RedirectReason.UnableToHandleRequest.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49F8, &qword_1DD0EDEC8);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_40_3();
  v11 = *v0;
  v12 = v0[1];
  v13 = v3[4];
  OUTLINED_FUNCTION_57_1(v3, v3[3]);
  sub_1DCD1BB2C();
  OUTLINED_FUNCTION_79_5();
  sub_1DD0DF24C();
  OUTLINED_FUNCTION_81_3();
  sub_1DD0DEF8C();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_19_19();
}

void SiriXRedirectContext.RedirectReason.UnableToHandleRequest.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A08, &qword_1DD0EDED0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_40_3();
  v10 = v2[3];
  v11 = v2[4];
  v12 = OUTLINED_FUNCTION_81_3();
  OUTLINED_FUNCTION_57_1(v12, v13);
  sub_1DCD1BB2C();
  OUTLINED_FUNCTION_79_5();
  sub_1DD0DF23C();
  if (!v0)
  {
    v14 = sub_1DD0DEEDC();
    v16 = v15;
    v17 = OUTLINED_FUNCTION_55_0();
    v18(v17);
    *v4 = v14;
    v4[1] = v16;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_19_19();
}

uint64_t static SiriXRedirectContext.RedirectReason.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        if (v3)
        {
          if (v6)
          {
            if (v2 != v5 || v3 != v6)
            {
              OUTLINED_FUNCTION_20();
              v9 = sub_1DD0DF0AC();
              v10 = 1;
              v11 = OUTLINED_FUNCTION_39_14();
              sub_1DCD1B9D0(v11, v12, v13);
              v14 = OUTLINED_FUNCTION_20_16();
              sub_1DCD1B9D0(v14, v15, v16);
              v17 = OUTLINED_FUNCTION_20_16();
              sub_1DCD1BB80(v17, v18, v19);
              v20 = OUTLINED_FUNCTION_39_14();
              sub_1DCD1BB80(v20, v21, v22);
              if (v9)
              {
                return v10;
              }

              return 0;
            }

            v10 = 1;
            v54 = OUTLINED_FUNCTION_20_16();
            sub_1DCD1B9D0(v54, v55, v56);
            v57 = OUTLINED_FUNCTION_20_16();
            sub_1DCD1B9D0(v57, v58, v59);
            v60 = OUTLINED_FUNCTION_20_16();
            sub_1DCD1BB80(v60, v61, v62);
            v29 = OUTLINED_FUNCTION_20();
            goto LABEL_44;
          }
        }

        else if (!v6)
        {
          v10 = 1;
          sub_1DCD1B9D0(*a2, 0, 1);
          sub_1DCD1B9D0(v2, 0, 1);
          sub_1DCD1BB80(v2, 0, 1);
          v29 = v5;
          v30 = 0;
LABEL_44:
          v31 = 1;
          goto LABEL_45;
        }

        v43 = OUTLINED_FUNCTION_39_14();
        sub_1DCD1B9D0(v43, v44, v45);
        v46 = OUTLINED_FUNCTION_20_16();
        sub_1DCD1B9D0(v46, v47, v48);
        v49 = OUTLINED_FUNCTION_20_16();
        sub_1DCD1BB80(v49, v50, v51);
        v39 = OUTLINED_FUNCTION_39_14();
        goto LABEL_32;
      }

      v32 = *(a1 + 8);

      goto LABEL_31;
    }

    if (v2 | v3)
    {
      if (v7 == 2 && v5 == 1 && v6 == 0)
      {
        v27 = OUTLINED_FUNCTION_20();
        sub_1DCD1BB80(v27, v28, 2);
        v10 = 1;
        v29 = 1;
        v30 = 0;
        v31 = 2;
LABEL_45:
        sub_1DCD1BB80(v29, v30, v31);
        return v10;
      }

      goto LABEL_31;
    }

    if (v7 != 2 || (v6 | v5) != 0)
    {
LABEL_31:
      OUTLINED_FUNCTION_46_2();
      sub_1DCD1B9D0(v34, v35, v36);
      v37 = OUTLINED_FUNCTION_20();
      sub_1DCD1BB80(v37, v38, v4);
      OUTLINED_FUNCTION_46_2();
LABEL_32:
      sub_1DCD1BB80(v39, v40, v41);
      return 0;
    }

    v52 = OUTLINED_FUNCTION_20();
    sub_1DCD1BB80(v52, v53, 2);
    sub_1DCD1BB80(0, 0, 2);
    return 1;
  }

  if (*(a2 + 16))
  {
    goto LABEL_31;
  }

  v23 = OUTLINED_FUNCTION_20();
  sub_1DCD1BB80(v23, v24, 0);
  sub_1DCD1BB80(v5, v6, 0);
  if (v2 != 2)
  {
    return v5 != 2 && ((v5 ^ v2) & 1) == 0;
  }

  return v5 == 2;
}

uint64_t sub_1DCD18EB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69686374614D6F6ELL && a2 == 0xEE006C6F6F54676ELL;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F54656C62616E75 && a2 == 0xEE00656C646E6148;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7245776F6C466669 && a2 == 0xEB00000000726F72;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000016 && 0x80000001DD11A400 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD0DF0AC();

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

unint64_t sub_1DCD19028(char a1)
{
  result = 0x69686374614D6F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6F54656C62616E75;
      break;
    case 2:
      result = 0x7245776F6C466669;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCD190DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCD19154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD18EB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCD1917C(uint64_t a1)
{
  v2 = sub_1DCD1BB98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD191B8(uint64_t a1)
{
  v2 = sub_1DCD1BB98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD191F4(uint64_t a1)
{
  v2 = sub_1DCD1BC40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD19230(uint64_t a1)
{
  v2 = sub_1DCD1BC40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD19270(uint64_t a1)
{
  v2 = sub_1DCD1BD3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD192AC(uint64_t a1)
{
  v2 = sub_1DCD1BD3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD192E8(uint64_t a1)
{
  v2 = sub_1DCD1BC94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD19324(uint64_t a1)
{
  v2 = sub_1DCD1BC94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD19360(uint64_t a1)
{
  v2 = sub_1DCD1BBEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD1939C(uint64_t a1)
{
  v2 = sub_1DCD1BBEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriXRedirectContext.RedirectReason.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A10, &qword_1DD0EDED8);
  v5 = OUTLINED_FUNCTION_9(v4);
  v58 = v6;
  v59 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_34_0();
  v57 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A18, &qword_1DD0EDEE0);
  v13 = OUTLINED_FUNCTION_9(v12);
  v55 = v14;
  v56 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_34_0();
  v54 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A20, &qword_1DD0EDEE8);
  v21 = OUTLINED_FUNCTION_9(v20);
  v61 = v22;
  v62 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v53 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A28, &qword_1DD0EDEF0);
  OUTLINED_FUNCTION_9(v29);
  v60 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_15_3();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A30, &qword_1DD0EDEF8);
  v36 = OUTLINED_FUNCTION_9(v35);
  v64 = v37;
  v65 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v53 - v42;
  v44 = *v0;
  *&v63 = v0[1];
  *(&v63 + 1) = v44;
  v45 = *(v0 + 16);
  v46 = v3[4];
  OUTLINED_FUNCTION_57_1(v3, v3[3]);
  sub_1DCD1BB98();
  sub_1DD0DF24C();
  if (v45)
  {
    if (v45 == 1)
    {
      LOBYTE(v66) = 1;
      sub_1DCD1BC94();
      OUTLINED_FUNCTION_49_8();
      v66 = *(&v63 + 1);
      v67 = v63;
      sub_1DCD1BCE8();
      v47 = v62;
      sub_1DD0DEFFC();
      (*(v61 + 8))(v28, v47);
      (*(v64 + 8))(v43, v45);
    }

    else
    {
      v49 = (v64 + 8);
      if (v63 == 0)
      {
        LOBYTE(v66) = 2;
        sub_1DCD1BC40();
        v50 = v54;
        OUTLINED_FUNCTION_49_8();
        v52 = v55;
        v51 = v56;
      }

      else
      {
        LOBYTE(v66) = 3;
        sub_1DCD1BBEC();
        v50 = v57;
        OUTLINED_FUNCTION_49_8();
        v52 = v58;
        v51 = v59;
      }

      (*(v52 + 8))(v50, v51);
      (*v49)(v43, v45);
    }
  }

  else
  {
    LOBYTE(v66) = 0;
    sub_1DCD1BD3C();
    v48 = v65;
    sub_1DD0DEF7C();
    LOBYTE(v66) = BYTE8(v63);
    sub_1DCD1BD90();
    sub_1DD0DEFFC();
    (*(v60 + 8))(v1, v29);
    (*(v64 + 8))(v43, v48);
  }

  OUTLINED_FUNCTION_19_19();
}

void SiriXRedirectContext.RedirectReason.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v4 = v3;
  v92 = v5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A70, &qword_1DD0EDF00);
  OUTLINED_FUNCTION_9(v85);
  v89 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_34_0();
  v91 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A78, &qword_1DD0EDF08);
  v13 = OUTLINED_FUNCTION_9(v12);
  v86 = v14;
  v87 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_34_0();
  v90 = v19;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A80, &qword_1DD0EDF10);
  OUTLINED_FUNCTION_9(v88);
  v93 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_15_3();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A88, &qword_1DD0EDF18);
  OUTLINED_FUNCTION_9(v25);
  v84 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_72();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A90, &qword_1DD0EDF20);
  OUTLINED_FUNCTION_9(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = v80 - v38;
  v40 = v4[3];
  v41 = v4[4];
  v94 = v4;
  OUTLINED_FUNCTION_57_1(v4, v40);
  sub_1DCD1BB98();
  sub_1DD0DF23C();
  if (v0)
  {
    goto LABEL_9;
  }

  v82 = v1;
  v83 = v2;
  v80[1] = v25;
  v42 = v39;
  v43 = sub_1DD0DEF5C();
  sub_1DCB547F8(v43, 0);
  if (v45 == v46 >> 1)
  {
LABEL_8:
    v54 = sub_1DD0DECAC();
    swift_allocError();
    v56 = v55;
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640) + 48);
    *v56 = &type metadata for SiriXRedirectContext.RedirectReason;
    sub_1DD0DEECC();
    OUTLINED_FUNCTION_89_0();
    v58 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_112(v54);
    (*(v59 + 104))(v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v33 + 8))(v42, v31);
LABEL_9:
    v60 = v94;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    OUTLINED_FUNCTION_19_19();
    return;
  }

  v81 = v31;
  v80[0] = 0;
  if (v45 < (v46 >> 1))
  {
    v47 = *(v44 + v45);
    sub_1DCB54800(v45 + 1);
    v49 = v48;
    v51 = v50;
    swift_unknownObjectRelease();
    v52 = v93;
    if (v49 == v51 >> 1)
    {
      v53 = v92;
      switch(v47)
      {
        case 1:
          LOBYTE(v95) = 1;
          sub_1DCD1BC94();
          v69 = v83;
          OUTLINED_FUNCTION_34_18();
          sub_1DCD1BDE4();
          v70 = v88;
          sub_1DD0DEF4C();
          swift_unknownObjectRelease();
          (*(v52 + 8))(v69, v70);
          v78 = OUTLINED_FUNCTION_21_16();
          v79(v78, v81);
          v77 = v95;
          v75 = v96;
          v76 = 1;
          v60 = v94;
          v53 = v92;
          goto LABEL_15;
        case 2:
          LOBYTE(v95) = 2;
          sub_1DCD1BC40();
          v61 = v90;
          v62 = v81;
          OUTLINED_FUNCTION_34_18();
          swift_unknownObjectRelease();
          (*(v86 + 8))(v61, v87);
          v63 = OUTLINED_FUNCTION_21_16();
          v64(v63, v62);
          v77 = 0;
          v75 = 0;
          v76 = 2;
          goto LABEL_14;
        case 3:
          LOBYTE(v95) = 3;
          sub_1DCD1BBEC();
          v65 = v91;
          v66 = v81;
          OUTLINED_FUNCTION_34_18();
          swift_unknownObjectRelease();
          (*(v89 + 8))(v65, v85);
          v67 = OUTLINED_FUNCTION_21_16();
          v68(v67, v66);
          v75 = 0;
          v76 = 2;
          v77 = 1;
          goto LABEL_14;
        default:
          LOBYTE(v95) = 0;
          sub_1DCD1BD3C();
          OUTLINED_FUNCTION_34_18();
          sub_1DCD1BE38();
          sub_1DD0DEF4C();
          swift_unknownObjectRelease();
          v71 = OUTLINED_FUNCTION_80_1();
          v72(v71);
          v73 = OUTLINED_FUNCTION_21_16();
          v74(v73, v81);
          v75 = 0;
          v76 = 0;
          v77 = v95;
LABEL_14:
          v60 = v94;
LABEL_15:
          *v53 = v77;
          *(v53 + 8) = v75;
          *(v53 + 16) = v76;
          break;
      }

      goto LABEL_10;
    }

    v31 = v81;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t static SiriXRedirectContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v15[0] = *a1;
  v15[1] = v2;
  v16 = v5;
  v13[0] = v3;
  v13[1] = v4;
  v14 = v6;
  v7 = OUTLINED_FUNCTION_33_1();
  sub_1DCD1B9D0(v7, v8, v5);
  sub_1DCD1B9D0(v3, v4, v6);
  v9 = static SiriXRedirectContext.RedirectReason.== infix(_:_:)(v15, v13);
  sub_1DCD1BB80(v3, v4, v6);
  v10 = OUTLINED_FUNCTION_33_1();
  sub_1DCD1BB80(v10, v11, v5);
  return v9 & 1;
}

uint64_t sub_1DCD1A018(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCD1A0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD1A018(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCD1A0D0(uint64_t a1)
{
  v2 = sub_1DCD1BE8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD1A10C(uint64_t a1)
{
  v2 = sub_1DCD1BE8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriXRedirectContext.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AA8, &qword_1DD0EDF28);
  OUTLINED_FUNCTION_9(v16);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v16 - v9;
  v11 = *v0;
  v12 = *(v0 + 8);
  v13 = v2[4];
  v14 = *(v0 + 16);
  OUTLINED_FUNCTION_57_1(v2, v2[3]);
  sub_1DCD1B9D0(v11, v12, v14);
  sub_1DCD1BE8C();
  sub_1DD0DF24C();
  v17 = v11;
  v18 = v12;
  v19 = v14;
  sub_1DCD1BEE0();
  v15 = v16;
  sub_1DD0DEFFC();
  sub_1DCD1BB80(v17, v18, v19);
  (*(v4 + 8))(v10, v15);
  OUTLINED_FUNCTION_19_19();
}

void SiriXRedirectContext.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AC0, &qword_1DD0EDF30);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_15_3();
  v10 = v2[3];
  v11 = v2[4];
  v12 = OUTLINED_FUNCTION_81_3();
  OUTLINED_FUNCTION_57_1(v12, v13);
  sub_1DCD1BE8C();
  OUTLINED_FUNCTION_65_4();
  if (!v0)
  {
    sub_1DCD1BF34();
    sub_1DD0DEF4C();
    v14 = OUTLINED_FUNCTION_84_5();
    v15(v14);
    *v4 = v16;
    *(v4 + 16) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_19_19();
}

uint64_t AnyChildCompletion.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_88_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_88_0();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v0;
  *(v2 + 16) = sub_1DCD1BF88;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t AnyChildCompletion.init(_:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_88_0();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  *(v1 + 16) = sub_1DCD2736C;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t AnyChildCompletion.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t static ExecuteResponse.ongoing(retrigger:as:)()
{
  OUTLINED_FUNCTION_20_10();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_46_8();
  v7 = v6;
  v8 = type metadata accessor for ExecuteResponse(0);
  v9 = *(v8 + 36);
  v10 = type metadata accessor for PluginAction();
  OUTLINED_FUNCTION_7_5(v7 + v9, v11, v12, v10);
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = 0;
  *(v7 + 48) = -4;
  v13 = (v7 + *(v8 + 40));
  *v13 = v1;
  v13[1] = v0;
  v13[2] = v5;
  v13[3] = v3;

  OUTLINED_FUNCTION_15_5();
}

void static ExecuteResponse.complete<A>(next:childCompletion:)()
{
  sub_1DCB3DF34();
}

{
  sub_1DCB817D8();
}

void sub_1DCD1A5F0(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 32);
  v8 = OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_7_5(a3 + v4, v9, v10, v8);
  *a3 = a2;
  *(a3 + 8) = v7;
  OUTLINED_FUNCTION_63_6();
  OUTLINED_FUNCTION_26_15((a3 + *(v3 + 40)));

  sub_1DD0DCF8C();
}

void sub_1DCD1A690()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  type metadata accessor for AnyChildCompletion();
  OUTLINED_FUNCTION_88_0();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_88_0();
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v7;
  *(v14 + 16) = v3;
  *(v14 + 24) = v15;
  v16 = OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_7_5(v13 + v5, v17, v18, v16);
  *v13 = v1;
  *(v13 + 8) = v11;
  *(v13 + 16) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 24) = v14;
  *(v13 + 48) = -4;
  OUTLINED_FUNCTION_26_15((v13 + *(v3 + 40)));
  sub_1DD0DCF8C();
}

void static ExecuteResponse.replan<A>(next:childCompletion:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 32);
  type metadata accessor for AnyChildCompletion();
  OUTLINED_FUNCTION_88_0();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_88_0();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v8 + 16) = sub_1DCD2736C;
  *(v8 + 24) = v9;
  v10 = *(type metadata accessor for ExecuteResponse(0) + 36);
  v11 = type metadata accessor for PluginAction();
  OUTLINED_FUNCTION_7_5(a4 + v10, v12, v13, v11);
  *a4 = 2;
  OUTLINED_FUNCTION_53_7();
  *(a4 + 24) = v8;
  OUTLINED_FUNCTION_10_32();
  sub_1DD0DCF8C();
}

uint64_t static ExecuteResponse.unhandled(reason:isComplete:)()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = type metadata accessor for ExecuteResponse(0);
  v9 = *(v8 + 36);
  v10 = type metadata accessor for PluginAction();
  OUTLINED_FUNCTION_7_5(v3 + v9, v11, v12, v10);
  if (v1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  *v3 = v13;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  *(v3 + 48) = v7;
  OUTLINED_FUNCTION_26_15((v3 + *(v8 + 40)));
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_15_5();

  return sub_1DCD1B9B8(v14, v15, v16);
}

double static ExecuteResponse.redirect(nextPluginAction:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExecuteResponse(0);
  v5 = *(v4 + 36);
  sub_1DCB246E8(a1, a2 + v5);
  v6 = type metadata accessor for PluginAction();
  __swift_storeEnumTagSinglePayload(a2 + v5, 0, 1, v6);
  *a2 = 1;
  *(a2 + 8) = 0;
  OUTLINED_FUNCTION_63_6();
  return OUTLINED_FUNCTION_26_15((a2 + *(v4 + 40)));
}

uint64_t sub_1DCD1A9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v11 = *(*(type metadata accessor for ExecuteResponse(0) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v8[4] = v12;
  v13 = *(a8 + 40);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v8[5] = v15;
  *v15 = v8;
  v15[1] = sub_1DCD1AB00;

  return v17(v12, a7, a8);
}

uint64_t sub_1DCD1AB00()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DCD1ABEC, 0, 0);
}

uint64_t sub_1DCD1ABEC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 32));
  sub_1DCB28538();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCD1ACB4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return v1() & 1;
}

uint64_t sub_1DCD1ACE4()
{
  sub_1DCB0DF6C(v0 + 32, &v3);
  v1 = OUTLINED_FUNCTION_66_3();
  return OUTLINED_FUNCTION_87_4(v1);
}

void sub_1DCD1AD7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD1AE08()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  return v1();
}

uint64_t sub_1DCD1AEA0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;
    sub_1DD0DCF8C();
  }

  return sub_1DCB4D4A0(*a1);
}

uint64_t sub_1DCD1AF20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_38_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_6(v1);

  return sub_1DCB71FBC(v3);
}

uint64_t sub_1DCD1AFC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_38_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_17(v1);

  return sub_1DCB4DF50(v3);
}

uint64_t sub_1DCD1B094()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 88);
  return (*(v1 + 80))() & 1;
}

uint64_t sub_1DCD1B0C4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD1B0D8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*(v0 + 24) + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_76_6(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_75_4(v3);

  return sub_1DCB71FBC(v5);
}

void sub_1DCD1B160()
{
  OUTLINED_FUNCTION_60();
  v1 = *(*v0 + 80);
  type metadata accessor for AnyValueFlow();
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCD1B1E8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

void sub_1DCD1B258(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD1B2E4(void *a1, char a2, uint64_t (*a3)(void))
{
  v4 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v5 = *a1;
    sub_1DD0DCF8C();
  }

  return a3(*a1);
}

void sub_1DCD1B354(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  sub_1DCD1B284(v3);
}

uint64_t sub_1DCD1B3DC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB47430;

  return sub_1DCD1B0C4(a1);
}

uint64_t sub_1DCD1B4BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2508);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_1(v1);
  *v2 = v3;
  v2[1] = sub_1DCB47430;
  v4 = OUTLINED_FUNCTION_57_2();

  return v6(v4);
}

uint64_t sub_1DCD1B550()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  OUTLINED_FUNCTION_32_2(dword_1DD0EF910);
  v7 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;

  return v7(v1);
}

uint64_t sub_1DCD1B5E8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_49();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_47(v1);

  return Flow.onAsync(input:)(v3, v4, v5);
}

uint64_t sub_1DCD1B674()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_12();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2500);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_34(v1);

  return v4(v3);
}

uint64_t sub_1DCD1B704()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_12();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E24F8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_34(v1);

  return v4(v3);
}

uint64_t sub_1DCD1B794()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_12();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E24F0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_34(v1);

  return v4(v3);
}

uint64_t sub_1DCD1B824(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  OUTLINED_FUNCTION_77_3();
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_11_0(v11);
  *v12 = v13;
  v12[1] = sub_1DCB4AE1C;

  return sub_1DCD1A9A0(a1, v7, v8, v9, v10, v1 + v6, v3, v4);
}

uint64_t sub_1DCD1B928()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_12();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E1F08);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_34(v1);

  return v4(v3);
}

uint64_t sub_1DCD1B9B8(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
    return sub_1DCD1B9D0(result, a2, a3 & 0x3F);
  }

  return result;
}

uint64_t sub_1DCD1B9D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1DCD1B9F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4988, &qword_1DD100F00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCD1BA84()
{
  result = qword_1ECCA49C0;
  if (!qword_1ECCA49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA49C0);
  }

  return result;
}

unint64_t sub_1DCD1BAD8()
{
  result = qword_1ECCA49E8;
  if (!qword_1ECCA49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA49E8);
  }

  return result;
}

unint64_t sub_1DCD1BB2C()
{
  result = qword_1ECCA4A00;
  if (!qword_1ECCA4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A00);
  }

  return result;
}

uint64_t sub_1DCD1BB80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_1DCD1BB98()
{
  result = qword_1ECCA4A38;
  if (!qword_1ECCA4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A38);
  }

  return result;
}

unint64_t sub_1DCD1BBEC()
{
  result = qword_1ECCA4A40;
  if (!qword_1ECCA4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A40);
  }

  return result;
}

unint64_t sub_1DCD1BC40()
{
  result = qword_1ECCA4A48;
  if (!qword_1ECCA4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A48);
  }

  return result;
}

unint64_t sub_1DCD1BC94()
{
  result = qword_1ECCA4A50;
  if (!qword_1ECCA4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A50);
  }

  return result;
}

unint64_t sub_1DCD1BCE8()
{
  result = qword_1ECCA4A58;
  if (!qword_1ECCA4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A58);
  }

  return result;
}

unint64_t sub_1DCD1BD3C()
{
  result = qword_1ECCA4A60;
  if (!qword_1ECCA4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A60);
  }

  return result;
}

unint64_t sub_1DCD1BD90()
{
  result = qword_1ECCA4A68;
  if (!qword_1ECCA4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A68);
  }

  return result;
}

unint64_t sub_1DCD1BDE4()
{
  result = qword_1ECCA4A98;
  if (!qword_1ECCA4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A98);
  }

  return result;
}

unint64_t sub_1DCD1BE38()
{
  result = qword_1ECCA4AA0;
  if (!qword_1ECCA4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4AA0);
  }

  return result;
}

unint64_t sub_1DCD1BE8C()
{
  result = qword_1ECCA4AB0;
  if (!qword_1ECCA4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4AB0);
  }

  return result;
}

unint64_t sub_1DCD1BEE0()
{
  result = qword_1ECCA4AB8;
  if (!qword_1ECCA4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4AB8);
  }

  return result;
}

unint64_t sub_1DCD1BF34()
{
  result = qword_1ECCA4AC8;
  if (!qword_1ECCA4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4AC8);
  }

  return result;
}

uint64_t sub_1DCD1BF88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DCD1BFB0()
{
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_11_1(*(v0 + 24));
  v5 = v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80));
  return (*(v4 + 48))(v2);
}

unint64_t sub_1DCD1C018()
{
  result = qword_1ECCA4AE8;
  if (!qword_1ECCA4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4AE8);
  }

  return result;
}

unint64_t sub_1DCD1C070()
{
  result = qword_1ECCA4AF0;
  if (!qword_1ECCA4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4AF0);
  }

  return result;
}

unint64_t sub_1DCD1C0C8()
{
  result = qword_1EDE4D9A8;
  if (!qword_1EDE4D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D9A8);
  }

  return result;
}

unint64_t sub_1DCD1C120()
{
  result = qword_1EDE4D9A0;
  if (!qword_1EDE4D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D9A0);
  }

  return result;
}

unint64_t sub_1DCD1C178()
{
  result = qword_1ECCA4AF8;
  if (!qword_1ECCA4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4AF8);
  }

  return result;
}

unint64_t sub_1DCD1C1D0()
{
  result = qword_1ECCA4B00;
  if (!qword_1ECCA4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B00);
  }

  return result;
}

uint64_t sub_1DCD1C224(uint64_t a1, uint64_t a2)
{
  result = sub_1DCB2C054(&qword_1ECCA4B08, a2, type metadata accessor for AnyFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCD1C27C(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of Flow.onAsync(input:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_4_49();
  v1 = *(v0 + 24);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_47(v4);

  return v8(v6);
}

uint64_t dispatch thunk of Flow.execute()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_4_49();
  v1 = *(v0 + 40);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_116();

  return v7();
}

void *initializeBufferWithCopyOfBuffer for Input(void *a1, void *a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v11 = sub_1DD0DC76C();
      (*(*(v11 - 8) + 16))(v8, v9, v11);
      goto LABEL_27;
    case 1u:
      v20 = sub_1DD0DC76C();
      (*(*(v20 - 8) + 16))(v8, v9, v20);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v8[*(v21 + 48)] = *&v9[*(v21 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v14 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v14;
      *(v8 + 2) = *(v9 + 2);

      goto LABEL_27;
    case 3u:
      *v8 = *v9;
      swift_unknownObjectRetain();
      goto LABEL_27;
    case 4u:
      v12 = sub_1DD0DB1EC();
      (*(*(v12 - 8) + 16))(v8, v9, v12);
      goto LABEL_27;
    case 5u:
      v22 = *v9;
      *v8 = *v9;
      v23 = v22;
      goto LABEL_27;
    case 6u:
      v24 = sub_1DD0DB4BC();
      (*(*(v24 - 8) + 16))(v8, v9, v24);
      v25 = type metadata accessor for USOParse();
      v26 = v25[5];
      v27 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v9[v26], 1, v27))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v8[v26], &v9[v26], *(*(v28 - 8) + 64));
      }

      else
      {
        (*(*(v27 - 8) + 16))(&v8[v26], &v9[v26], v27);
        __swift_storeEnumTagSinglePayload(&v8[v26], 0, 1, v27);
      }

      v60 = v25[6];
      v61 = &v8[v60];
      v62 = &v9[v60];
      v63 = *(v62 + 1);
      *v61 = *v62;
      *(v61 + 1) = v63;
      v64 = v25[7];
      v65 = &v8[v64];
      v66 = &v9[v64];
      v65[4] = v66[4];
      *v65 = *v66;

      goto LABEL_27;
    case 7u:
      v15 = sub_1DD0DB4BC();
      (*(*(v15 - 8) + 16))(v8, v9, v15);
      v16 = type metadata accessor for USOParse();
      v17 = v16[5];
      v18 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v9[v17], 1, v18))
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v8[v17], &v9[v17], *(*(v19 - 8) + 64));
      }

      else
      {
        (*(*(v18 - 8) + 16))(&v8[v17], &v9[v17], v18);
        __swift_storeEnumTagSinglePayload(&v8[v17], 0, 1, v18);
      }

      v40 = v16[6];
      v41 = &v8[v40];
      v42 = &v9[v40];
      v43 = *(v42 + 1);
      *v41 = *v42;
      *(v41 + 1) = v43;
      v44 = v16[7];
      v45 = &v8[v44];
      v46 = &v9[v44];
      v45[4] = v46[4];
      *v45 = *v46;
      v47 = type metadata accessor for LinkParse();
      v48 = v47[5];
      v49 = &v8[v48];
      v50 = &v9[v48];
      v51 = *(v50 + 1);
      *v49 = *v50;
      *(v49 + 1) = v51;
      v52 = v47[6];
      v53 = &v8[v52];
      v54 = &v9[v52];
      v55 = *(v54 + 1);
      *v53 = *v54;
      *(v53 + 1) = v55;
      v56 = v47[7];
      v57 = &v8[v56];
      v58 = &v9[v56];
      v59 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v59;

      goto LABEL_27;
    case 8u:
      v29 = sub_1DD0DD12C();
      (*(*(v29 - 8) + 16))(v8, v9, v29);
      v30 = type metadata accessor for NLRouterParse();
      v31 = *(v30 + 20);
      v32 = &v8[v31];
      v33 = &v9[v31];
      v34 = *(v33 + 1);
      *v32 = *v33;
      *(v32 + 1) = v34;
      v88 = v30;
      v35 = *(v30 + 24);
      v36 = &v8[v35];
      v37 = &v9[v35];
      v38 = type metadata accessor for USOParse();

      if (__swift_getEnumTagSinglePayload(v37, 1, v38))
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v36, v37, *(*(v39 - 8) + 64));
      }

      else
      {
        v67 = sub_1DD0DB4BC();
        (*(*(v67 - 8) + 16))(v36, v37, v67);
        v68 = v38[5];
        v87 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v37[v68], 1, v87))
        {
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v36[v68], &v37[v68], *(*(v69 - 8) + 64));
        }

        else
        {
          (*(*(v87 - 8) + 16))(&v36[v68], &v37[v68]);
          __swift_storeEnumTagSinglePayload(&v36[v68], 0, 1, v87);
        }

        v70 = v38[6];
        v71 = &v36[v70];
        v72 = &v37[v70];
        v73 = *(v72 + 1);
        *v71 = *v72;
        *(v71 + 1) = v73;
        v74 = v38[7];
        v75 = &v36[v74];
        v76 = &v37[v74];
        v75[4] = v76[4];
        *v75 = *v76;

        __swift_storeEnumTagSinglePayload(v36, 0, 1, v38);
      }

      v77 = *(v88 + 28);
      v78 = *&v9[v77];
      *&v8[v77] = v78;
      v79 = v78;
      goto LABEL_27;
    case 9u:
      v13 = sub_1DD0DD08C();
      (*(*(v13 - 8) + 16))(v8, v9, v13);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v8, v9, *(*(v10 - 8) + 64));
      break;
  }

  v80 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v81 = a1 + v80;
  v82 = a2 + v80;
  v83 = *(a2 + v80 + 24);

  if (v83)
  {
    v84 = *(v82 + 4);
    *(v81 + 3) = v83;
    *(v81 + 4) = v84;
    (**(v83 - 8))(v81, v82, v83);
  }

  else
  {
    v85 = *(v82 + 1);
    *v81 = *v82;
    *(v81 + 1) = v85;
    *(v81 + 4) = *(v82 + 4);
  }

  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t assignWithCopy for Input(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  if (a1 != a2)
  {
    v7 = a3[5];
    v8 = (a1 + v7);
    v9 = (a2 + v7);
    sub_1DCB28538();
    v10 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v11 = sub_1DD0DC76C();
        (*(*(v11 - 8) + 16))(v8, v9, v11);
        goto LABEL_26;
      case 1u:
        v19 = sub_1DD0DC76C();
        (*(*(v19 - 8) + 16))(v8, v9, v19);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v8[*(v20 + 48)] = *&v9[*(v20 + 48)];
        sub_1DD0DCF8C();
      case 2u:
        *v8 = *v9;
        *(v8 + 1) = *(v9 + 1);
        *(v8 + 2) = *(v9 + 2);

        goto LABEL_26;
      case 3u:
        *v8 = *v9;
        swift_unknownObjectRetain();
        goto LABEL_26;
      case 4u:
        v12 = sub_1DD0DB1EC();
        (*(*(v12 - 8) + 16))(v8, v9, v12);
        goto LABEL_26;
      case 5u:
        v21 = *v9;
        *v8 = *v9;
        v22 = v21;
        goto LABEL_26;
      case 6u:
        v23 = sub_1DD0DB4BC();
        (*(*(v23 - 8) + 16))(v8, v9, v23);
        v24 = type metadata accessor for USOParse();
        v25 = v24[5];
        v26 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v9[v25], 1, v26))
        {
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v8[v25], &v9[v25], *(*(v27 - 8) + 64));
        }

        else
        {
          (*(*(v26 - 8) + 16))(&v8[v25], &v9[v25], v26);
          __swift_storeEnumTagSinglePayload(&v8[v25], 0, 1, v26);
        }

        v55 = v24[6];
        v56 = &v8[v55];
        v57 = &v9[v55];
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = v24[7];
        v59 = &v8[v58];
        v60 = &v9[v58];
        v61 = *v60;
        v59[4] = v60[4];
        *v59 = v61;

        goto LABEL_26;
      case 7u:
        v14 = sub_1DD0DB4BC();
        (*(*(v14 - 8) + 16))(v8, v9, v14);
        v15 = type metadata accessor for USOParse();
        v16 = v15[5];
        v17 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v9[v16], 1, v17))
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v8[v16], &v9[v16], *(*(v18 - 8) + 64));
        }

        else
        {
          (*(*(v17 - 8) + 16))(&v8[v16], &v9[v16], v17);
          __swift_storeEnumTagSinglePayload(&v8[v16], 0, 1, v17);
        }

        v38 = v15[6];
        v39 = &v8[v38];
        v40 = &v9[v38];
        *v39 = *v40;
        *(v39 + 1) = *(v40 + 1);
        v41 = v15[7];
        v42 = &v8[v41];
        v43 = &v9[v41];
        v44 = *v43;
        v42[4] = v43[4];
        *v42 = v44;
        v45 = type metadata accessor for LinkParse();
        v46 = v45[5];
        v47 = &v8[v46];
        v48 = &v9[v46];
        *v47 = *v48;
        *(v47 + 1) = *(v48 + 1);
        v49 = v45[6];
        v50 = &v8[v49];
        v51 = &v9[v49];
        *v50 = *v51;
        *(v50 + 1) = *(v51 + 1);
        v52 = v45[7];
        v53 = &v8[v52];
        v54 = &v9[v52];
        *v53 = *v54;
        *(v53 + 1) = *(v54 + 1);

        goto LABEL_26;
      case 8u:
        v28 = sub_1DD0DD12C();
        (*(*(v28 - 8) + 16))(v8, v9, v28);
        v29 = type metadata accessor for NLRouterParse();
        v30 = *(v29 + 20);
        v31 = &v8[v30];
        v32 = &v9[v30];
        *v31 = *v32;
        *(v31 + 1) = *(v32 + 1);
        v85 = v29;
        v33 = *(v29 + 24);
        v34 = &v8[v33];
        v35 = &v9[v33];
        v36 = type metadata accessor for USOParse();

        if (__swift_getEnumTagSinglePayload(v35, 1, v36))
        {
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v34, v35, *(*(v37 - 8) + 64));
        }

        else
        {
          v62 = sub_1DD0DB4BC();
          (*(*(v62 - 8) + 16))(v34, v35, v62);
          v63 = v36[5];
          v84 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v35[v63], 1, v84))
          {
            v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v34[v63], &v35[v63], *(*(v64 - 8) + 64));
          }

          else
          {
            (*(*(v84 - 8) + 16))(&v34[v63], &v35[v63]);
            __swift_storeEnumTagSinglePayload(&v34[v63], 0, 1, v84);
          }

          v65 = v36[6];
          v66 = &v34[v65];
          v67 = &v35[v65];
          *v66 = *v67;
          *(v66 + 1) = *(v67 + 1);
          v68 = v36[7];
          v69 = &v34[v68];
          v70 = &v35[v68];
          v71 = *v70;
          v69[4] = v70[4];
          *v69 = v71;

          __swift_storeEnumTagSinglePayload(v34, 0, 1, v36);
        }

        v72 = *(v85 + 28);
        v73 = *&v9[v72];
        *&v8[v72] = v73;
        v74 = v73;
        goto LABEL_26;
      case 9u:
        v13 = sub_1DD0DD08C();
        (*(*(v13 - 8) + 16))(v8, v9, v13);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v8, v9, *(*(v10 - 8) + 64));
        break;
    }
  }

  v75 = a3[6];
  v76 = *(a1 + v75);
  *(a1 + v75) = *(a2 + v75);

  v77 = a3[7];
  v78 = a1 + v77;
  v79 = (a2 + v77);
  v80 = *(a2 + v77 + 24);
  if (!*(a1 + v77 + 24))
  {
    if (v80)
    {
      *(v78 + 24) = v80;
      *(v78 + 32) = *(v79 + 4);
      (**(v80 - 8))(v78, v79);
      goto LABEL_34;
    }

LABEL_33:
    v81 = *v79;
    v82 = v79[1];
    *(v78 + 32) = *(v79 + 4);
    *v78 = v81;
    *(v78 + 16) = v82;
    goto LABEL_34;
  }

  if (!v80)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    goto LABEL_33;
  }

  __swift_assign_boxed_opaque_existential_1(v78, v79);
LABEL_34:
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t initializeWithTake for Input(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v11 = sub_1DD0DC76C();
      (*(*(v11 - 8) + 32))(v8, v9, v11);
      goto LABEL_22;
    case 1u:
      v19 = sub_1DD0DC76C();
      (*(*(v19 - 8) + 32))(v8, v9, v19);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v8[*(v20 + 48)] = *&v9[*(v20 + 48)];
      goto LABEL_22;
    case 4u:
      v22 = sub_1DD0DB1EC();
      (*(*(v22 - 8) + 32))(v8, v9, v22);
      goto LABEL_22;
    case 6u:
      v23 = sub_1DD0DB4BC();
      (*(*(v23 - 8) + 32))(v8, v9, v23);
      v24 = type metadata accessor for USOParse();
      v25 = v24[5];
      v26 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v9[v25], 1, v26))
      {
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v8[v25], &v9[v25], *(*(v27 - 8) + 64));
      }

      else
      {
        (*(*(v26 - 8) + 32))(&v8[v25], &v9[v25], v26);
        __swift_storeEnumTagSinglePayload(&v8[v25], 0, 1, v26);
      }

      *&v8[v24[6]] = *&v9[v24[6]];
      v39 = v24[7];
      v40 = &v8[v39];
      v41 = &v9[v39];
      v40[4] = v41[4];
      *v40 = *v41;
      goto LABEL_22;
    case 7u:
      v28 = sub_1DD0DB4BC();
      (*(*(v28 - 8) + 32))(v8, v9, v28);
      v29 = type metadata accessor for USOParse();
      v30 = v29[5];
      v31 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v9[v30], 1, v31))
      {
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v8[v30], &v9[v30], *(*(v32 - 8) + 64));
      }

      else
      {
        (*(*(v31 - 8) + 32))(&v8[v30], &v9[v30], v31);
        __swift_storeEnumTagSinglePayload(&v8[v30], 0, 1, v31);
      }

      *&v8[v29[6]] = *&v9[v29[6]];
      v42 = v29[7];
      v43 = &v8[v42];
      v44 = &v9[v42];
      v43[4] = v44[4];
      *v43 = *v44;
      v45 = type metadata accessor for LinkParse();
      *&v8[v45[5]] = *&v9[v45[5]];
      *&v8[v45[6]] = *&v9[v45[6]];
      *&v8[v45[7]] = *&v9[v45[7]];
      goto LABEL_22;
    case 8u:
      v12 = sub_1DD0DD12C();
      (*(*(v12 - 8) + 32))(v8, v9, v12);
      v13 = type metadata accessor for NLRouterParse();
      *&v8[v13[5]] = *&v9[v13[5]];
      v14 = v13[6];
      v15 = &v8[v14];
      v16 = &v9[v14];
      v17 = type metadata accessor for USOParse();
      if (__swift_getEnumTagSinglePayload(v16, 1, v17))
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v15, v16, *(*(v18 - 8) + 64));
      }

      else
      {
        v54 = v13;
        v33 = sub_1DD0DB4BC();
        (*(*(v33 - 8) + 32))(v15, v16, v33);
        v34 = v17[5];
        v35 = sub_1DD0DB3EC();
        v55 = v34;
        v36 = &v16[v34];
        v37 = v35;
        if (__swift_getEnumTagSinglePayload(v36, 1, v35))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v15[v55], &v16[v55], *(*(v38 - 8) + 64));
        }

        else
        {
          (*(*(v37 - 8) + 32))(&v15[v55], &v16[v55], v37);
          __swift_storeEnumTagSinglePayload(&v15[v55], 0, 1, v37);
        }

        *&v15[v17[6]] = *&v16[v17[6]];
        v46 = v17[7];
        v47 = &v15[v46];
        v48 = &v16[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
        v13 = v54;
      }

      *&v8[v13[7]] = *&v9[v13[7]];
      goto LABEL_22;
    case 9u:
      v21 = sub_1DD0DD08C();
      (*(*(v21 - 8) + 32))(v8, v9, v21);
LABEL_22:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v8, v9, *(*(v10 - 8) + 64));
      break;
  }

  v49 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v50 = a1 + v49;
  v51 = a2 + v49;
  v52 = *(v51 + 16);
  *v50 = *v51;
  *(v50 + 16) = v52;
  *(v50 + 32) = *(v51 + 32);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t assignWithTake for Input(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  if (a1 != a2)
  {
    v7 = a3[5];
    v8 = (a1 + v7);
    v9 = (a2 + v7);
    sub_1DCB28538();
    v10 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v11 = sub_1DD0DC76C();
        (*(*(v11 - 8) + 32))(v8, v9, v11);
        goto LABEL_23;
      case 1u:
        v19 = sub_1DD0DC76C();
        (*(*(v19 - 8) + 32))(v8, v9, v19);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v8[*(v20 + 48)] = *&v9[*(v20 + 48)];
        goto LABEL_23;
      case 4u:
        v22 = sub_1DD0DB1EC();
        (*(*(v22 - 8) + 32))(v8, v9, v22);
        goto LABEL_23;
      case 6u:
        v23 = sub_1DD0DB4BC();
        (*(*(v23 - 8) + 32))(v8, v9, v23);
        v24 = type metadata accessor for USOParse();
        v25 = v24[5];
        v26 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v9[v25], 1, v26))
        {
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v8[v25], &v9[v25], *(*(v27 - 8) + 64));
        }

        else
        {
          (*(*(v26 - 8) + 32))(&v8[v25], &v9[v25], v26);
          __swift_storeEnumTagSinglePayload(&v8[v25], 0, 1, v26);
        }

        *&v8[v24[6]] = *&v9[v24[6]];
        v39 = v24[7];
        v40 = &v8[v39];
        v41 = &v9[v39];
        v40[4] = v41[4];
        *v40 = *v41;
        goto LABEL_23;
      case 7u:
        v28 = sub_1DD0DB4BC();
        (*(*(v28 - 8) + 32))(v8, v9, v28);
        v29 = type metadata accessor for USOParse();
        v30 = v29[5];
        v31 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v9[v30], 1, v31))
        {
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v8[v30], &v9[v30], *(*(v32 - 8) + 64));
        }

        else
        {
          (*(*(v31 - 8) + 32))(&v8[v30], &v9[v30], v31);
          __swift_storeEnumTagSinglePayload(&v8[v30], 0, 1, v31);
        }

        *&v8[v29[6]] = *&v9[v29[6]];
        v42 = v29[7];
        v43 = &v8[v42];
        v44 = &v9[v42];
        v43[4] = v44[4];
        *v43 = *v44;
        v45 = type metadata accessor for LinkParse();
        *&v8[v45[5]] = *&v9[v45[5]];
        *&v8[v45[6]] = *&v9[v45[6]];
        *&v8[v45[7]] = *&v9[v45[7]];
        goto LABEL_23;
      case 8u:
        v12 = sub_1DD0DD12C();
        (*(*(v12 - 8) + 32))(v8, v9, v12);
        v13 = type metadata accessor for NLRouterParse();
        *&v8[v13[5]] = *&v9[v13[5]];
        v14 = v13[6];
        v15 = &v8[v14];
        v16 = &v9[v14];
        v17 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v16, 1, v17))
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v15, v16, *(*(v18 - 8) + 64));
        }

        else
        {
          v55 = v13;
          v33 = sub_1DD0DB4BC();
          (*(*(v33 - 8) + 32))(v15, v16, v33);
          v34 = v17[5];
          v35 = sub_1DD0DB3EC();
          v56 = v34;
          v36 = &v16[v34];
          v37 = v35;
          if (__swift_getEnumTagSinglePayload(v36, 1, v35))
          {
            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v15[v56], &v16[v56], *(*(v38 - 8) + 64));
          }

          else
          {
            (*(*(v37 - 8) + 32))(&v15[v56], &v16[v56], v37);
            __swift_storeEnumTagSinglePayload(&v15[v56], 0, 1, v37);
          }

          *&v15[v17[6]] = *&v16[v17[6]];
          v46 = v17[7];
          v47 = &v15[v46];
          v48 = &v16[v46];
          v47[4] = v48[4];
          *v47 = *v48;
          __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
          v13 = v55;
        }

        *&v8[v13[7]] = *&v9[v13[7]];
        goto LABEL_23;
      case 9u:
        v21 = sub_1DD0DD08C();
        (*(*(v21 - 8) + 32))(v8, v9, v21);
LABEL_23:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v8, v9, *(*(v10 - 8) + 64));
        break;
    }
  }

  v49 = a3[6];
  v50 = *(a1 + v49);
  *(a1 + v49) = *(a2 + v49);

  v51 = a3[7];
  v52 = a1 + v51;
  if (*(a1 + v51 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v51));
  }

  v53 = *(a2 + v51 + 16);
  *v52 = *(a2 + v51);
  *(v52 + 16) = v53;
  *(v52 + 32) = *(a2 + v51 + 32);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t sub_1DCD1E494()
{
  result = sub_1DD0DB04C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Parse(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void initializeBufferWithCopyOfBuffer for LoadedFlowInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  *a1 = *a2;
  if ((v3 & 0x20000) == 0)
  {
    v4 = *(a2 + 32);
    *(a1 + 32) = v4;
    v5 = **(v4 - 8);
    sub_1DD0DCF8C();
  }

  sub_1DD0DCF8C();
}

uint64_t destroy for LoadedFlowInfo(uint64_t *a1, int *a2)
{
  v5 = a1 + 1;
  v4 = *a1;

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  v6 = a1 + a2[6];
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v20 = sub_1DD0DC76C();
      (*(*(v20 - 8) + 8))(v6, v20);
      v21 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

      break;
    case 2u:
      v8 = *(v6 + 1);

      v9 = *(v6 + 2);
      goto LABEL_17;
    case 3u:
      v10 = *v6;
      swift_unknownObjectRelease();
      break;
    case 4u:
      v7 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v22 = *v6;
      goto LABEL_23;
    case 6u:
      v23 = sub_1DD0DB4BC();
      (*(*(v23 - 8) + 8))(v6, v23);
      v24 = type metadata accessor for USOParse();
      v25 = *(v24 + 20);
      v26 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(&v6[v25], 1, v26))
      {
        (*(*(v26 - 8) + 8))(&v6[v25], v26);
      }

      v19 = *(v24 + 24);
      goto LABEL_16;
    case 7u:
      v11 = sub_1DD0DB4BC();
      (*(*(v11 - 8) + 8))(v6, v11);
      v12 = type metadata accessor for USOParse();
      v13 = *(v12 + 20);
      v14 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(&v6[v13], 1, v14))
      {
        (*(*(v14 - 8) + 8))(&v6[v13], v14);
      }

      v15 = *&v6[*(v12 + 24) + 8];

      v16 = type metadata accessor for LinkParse();
      v17 = *&v6[v16[5] + 8];

      v18 = *&v6[v16[6] + 8];

      v19 = v16[7];
LABEL_16:
      v27 = *&v6[v19 + 8];
LABEL_17:

      break;
    case 8u:
      v28 = sub_1DD0DD12C();
      (*(*(v28 - 8) + 8))(v6, v28);
      v29 = type metadata accessor for NLRouterParse();
      v30 = *&v6[v29[5] + 8];

      v31 = &v6[v29[6]];
      v32 = type metadata accessor for USOParse();
      if (!__swift_getEnumTagSinglePayload(v31, 1, v32))
      {
        v33 = sub_1DD0DB4BC();
        (*(*(v33 - 8) + 8))(v31, v33);
        v34 = *(v32 + 20);
        v35 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v31 + v34, 1, v35))
        {
          (*(*(v35 - 8) + 8))(v31 + v34, v35);
        }

        v36 = *(v31 + *(v32 + 24) + 8);
      }

      v22 = *&v6[v29[7]];
LABEL_23:

      break;
    case 9u:
      v7 = sub_1DD0DD08C();
LABEL_5:
      (*(*(v7 - 8) + 8))(v6, v7);
      break;
    default:
      break;
  }

  v37 = *(a1 + a2[7]);

  return __swift_destroy_boxed_opaque_existential_1Tm((a1 + a2[8]));
}