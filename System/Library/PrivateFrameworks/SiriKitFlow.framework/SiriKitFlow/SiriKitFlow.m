uint64_t AnyFlow.__deallocating_deinit()
{
  AnyFlow.deinit();

  return swift_deallocClassInstance();
}

void *AnyFlow.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[13];

  v5 = v0[15];

  v6 = v0[17];

  v7 = v0[18];

  return v0;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_82_0(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *sub_1DCAFF068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return &unk_1DD0EF968;
}

BOOL OUTLINED_FUNCTION_23(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_29()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_38()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_37()
{

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_53_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_151()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_53_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

void OUTLINED_FUNCTION_53_2()
{

  sub_1DCE18E10();
}

void OUTLINED_FUNCTION_53_5()
{
  v3 = v1[59];
  v9 = v1[58];
  v4 = v1[56];
  v5 = v1[57];
  v7 = v1[54];
  v6 = v1[55];
  v8 = v1[52];
  v10 = v1[51];
}

void OUTLINED_FUNCTION_53_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_53_7()
{
  *(v1 + 8) = v0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_53_8(uint64_t a1)
{
  v2 = *(a1 + 20);

  return sub_1DD0DB3EC();
}

void OUTLINED_FUNCTION_53_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15[4] = a14;
  v15[5] = a15;
  v17 = v15[6];

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_53_13()
{

  return swift_arrayDestroy();
}

void *OUTLINED_FUNCTION_53_14(void *result)
{
  *(v3 + 96) = result;
  result[2] = v2;
  result[3] = v1;
  result[4] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_58()
{
  v2 = *(v0 + 120);

  return sub_1DD0DD10C();
}

uint64_t OUTLINED_FUNCTION_53_18()
{

  return type metadata accessor for PromptResult();
}

uint64_t OUTLINED_FUNCTION_53_19()
{

  return sub_1DD0DEC1C();
}

void OUTLINED_FUNCTION_53_20()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[28];
}

void sub_1DCAFF5AC()
{
  OUTLINED_FUNCTION_50();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  v41 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[18] = 0;
  v2[7] = v12;
  __swift_allocate_boxed_opaque_existential_1Tm_0(v2 + 4);
  v13 = *(v6 + 16);
  OUTLINED_FUNCTION_152_0();
  v13();
  v39 = v6 + 16;
  v40 = v13;
  v14 = OUTLINED_FUNCTION_19();
  v2[8] = sub_1DCAFF068(v14, v15, v4);
  v2[9] = v16;
  v17 = OUTLINED_FUNCTION_19();
  v2[10] = sub_1DCAFFA00(v17, v18, v4);
  v2[11] = v19;
  v20 = OUTLINED_FUNCTION_19();
  v21 = v4;
  v38 = v4;
  v2[12] = sub_1DCAFFB24(v20, v22, v4);
  v2[13] = v23;
  v37 = v11;
  OUTLINED_FUNCTION_152_0();
  v13();
  v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v1;
  *(v25 + 24) = v21;
  v26 = *(v6 + 32);
  v26(v25 + v24, v11, v1);
  v27 = v26;
  v2[14] = sub_1DCB6137C;
  v2[15] = v25;
  v43 = 0x3C776F6C46796E41;
  v44 = 0xE800000000000000;
  OUTLINED_FUNCTION_19();
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v28 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v28);

  MEMORY[0x1E12A6780](62, 0xE100000000000000);
  v29 = v44;
  v2[2] = v43;
  v2[3] = v29;
  v30 = v2[18];
  v2[18] = 0;

  v31 = v37;
  OUTLINED_FUNCTION_152_0();
  v40();
  v32 = swift_allocObject();
  v33 = v38;
  *(v32 + 16) = v1;
  *(v32 + 24) = v33;
  v27(v32 + v24, v31, v1);
  v2[16] = sub_1DCD271DC;
  v2[17] = v32;
  v34 = *(v6 + 8);
  v35 = OUTLINED_FUNCTION_19();
  v36(v35);
  OUTLINED_FUNCTION_49();
}

id OUTLINED_FUNCTION_108_0()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void OUTLINED_FUNCTION_89(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_108_1()
{
  v1 = *(v0 + 360);
  *(v0 + 424) = *(v0 + 152);
  sub_1DCAFF9E8((v0 + 112), v0 + 248);

  return sub_1DD0DD8EC();
}

void OUTLINED_FUNCTION_16_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

double OUTLINED_FUNCTION_108_2@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 16) = a2;
  v3 = *(v2 + 24);
  *(v2 + 24) = 3;
  sub_1DCD070F8(a1, v3);

  return static ExecuteResponse.complete()();
}

void OUTLINED_FUNCTION_108_3()
{
  v2 = v0[63];
  v3 = v0[64];
  v4 = v0[61];
  v5 = v0[62];
  v6 = v0[59];
  v7 = v0[60];
  v8 = v0[58];

  sub_1DCDEC7BC(v8, v6, v7, v4, v5, v2, v3);
}

uint64_t OUTLINED_FUNCTION_108_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{

  return sub_1DCCC72DC(v16, &a16, &a9);
}

void OUTLINED_FUNCTION_108_5()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
}

uint64_t OUTLINED_FUNCTION_108_7()
{
  v1 = *(v0[8] + 8);
  result = v0[12];
  v3 = v0[10];
  return result;
}

uint64_t OUTLINED_FUNCTION_108_8()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[15];
  v5 = v0[13];
}

uint64_t sub_1DCAFF9E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t (*sub_1DCAFFA00(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_1DCD27240;
}

void *sub_1DCAFFB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return &unk_1DD0EF958;
}

uint64_t sub_1DCAFFC48(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_34()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_62()
{

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_32_2@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_43()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_4()
{
}

uint64_t OUTLINED_FUNCTION_32_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_32_9()
{
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[8];
}

BOOL OUTLINED_FUNCTION_22(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_25(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return __swift_getEnumTagSinglePayload(a1, 1, a2);
}

uint64_t OUTLINED_FUNCTION_32_15()
{
  v2 = *(v0 - 344);
}

void OUTLINED_FUNCTION_35()
{

  JUMPOUT(0x1E12A6780);
}

__n128 OUTLINED_FUNCTION_107(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  result = *(a2 + 32);
  *(v2 + 48) = result;
  *(v2 + 64) = *(a2 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_11()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_32_24(void *result)
{
  *(v3 + 480) = result;
  result[2] = v2;
  result[3] = v1;
  result[4] = v5;
  result[5] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_27()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_32_29(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_32_31(__int128 *a1)
{
  sub_1DCAFF9E8(a1, v1 + 16);
  __swift_project_boxed_opaque_existential_1((v2 - 72), *(v2 - 48));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_80()
{

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_58_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_92_0()
{

  JUMPOUT(0x1E12A8390);
}

void OUTLINED_FUNCTION_35_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 1112) = a2;
  *(v2 + 1080) = result;
  v4 = *(v3 + 3304);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  return sub_1DCB17C3C(&a36, &a27, a3, a4);
}

BOOL OUTLINED_FUNCTION_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 120) = 0;
  *(v9 + 104) = 0u;
  *(v9 + 88) = 0u;

  return sub_1DCB6C5E8(&a9, v9 + 88);
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[9];
  v4 = v2[7];
  return v2[2];
}

void OUTLINED_FUNCTION_21_10()
{
}

void OUTLINED_FUNCTION_10_1()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_21_11(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_12()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);
  v4 = *(v0 - 104);
  v5 = *(v0 - 96);

  return sub_1DCCEA1B0(v2, v3);
}

void OUTLINED_FUNCTION_21_14()
{

  sub_1DCBC61E8();
}

void OUTLINED_FUNCTION_21_15()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
  v4 = v0[10];
}

uint64_t OUTLINED_FUNCTION_21_18()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_19(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_21_24(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 48);
  return v2;
}

uint64_t OUTLINED_FUNCTION_21_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 0, 1, a4);

  return type metadata accessor for NLContextUpdate();
}

uint64_t OUTLINED_FUNCTION_21_29()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v4 = *(v0[35] + 8);
  return v0[36];
}

uint64_t OUTLINED_FUNCTION_21_30()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_21_31()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[5];
}

__n128 OUTLINED_FUNCTION_21_34(__n128 *a1)
{
  v3[3].n128_u64[1] = a1;
  result = v3[2];
  a1[1] = result;
  a1[2].n128_u64[0] = v1;
  a1[2].n128_u64[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_35()
{
  v0 = type metadata accessor for ProtectedAppCheck.State(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

uint64_t OUTLINED_FUNCTION_54_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[5] = result;
  v3[6] = a2;
  v3[2] = v2;
  return result;
}

void *OUTLINED_FUNCTION_21_36()
{
  v2 = (*(v0 + 448) + 192);

  return memcpy((v0 + 192), v2, 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_21_40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[99] = v2;
  v3[98] = a2;
  v3[95] = a1;

  return type metadata accessor for LegacySiriKitOutputPublisher();
}

void OUTLINED_FUNCTION_21_42(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 8);
  type metadata accessor for ResolvableStorage();

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_21_46(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 40);
  v4 = *(v2 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_48()
{
  *(v0 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_21_49()
{

  return type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
}

uint64_t OUTLINED_FUNCTION_21_50()
{

  return sub_1DD0DEEBC();
}

__n128 OUTLINED_FUNCTION_21_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __n128 a12, __int128 a13, uint64_t a14)
{
  result = a12;
  *(v14 + 16) = a12;
  *(v14 + 32) = a13;
  *(v14 + 48) = a14;
  return result;
}

__n128 OUTLINED_FUNCTION_21_53(uint64_t a1, uint64_t a2)
{
  *(v6 + 16) = v2;
  result = *(a2 + 8);
  *(v6 + 24) = result;
  *(v6 + 40) = v3;
  *(v6 + 48) = v4;
  *(v6 + 56) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_54@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3[6] = result;
  v3[7] = a2;
  v3[9] = a3;
  v3[10] = 0x6E6F73726570;
  v3[15] = v4;
  v3[11] = 0xE600000000000000;
  v3[12] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_55()
{
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 24) + 80);

  return type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter();
}

uint64_t OUTLINED_FUNCTION_21_57()
{
}

uint64_t OUTLINED_FUNCTION_21_58()
{

  return type metadata accessor for IdentifiedUser();
}

uint64_t OUTLINED_FUNCTION_6_2()
{
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[5];

  return sub_1DCBB5D20();
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_3()
{
  v1 = v0[79];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = *(v0[73] + 32);
  return v0[74];
}

BOOL OUTLINED_FUNCTION_75(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return swift_once();
}

void OUTLINED_FUNCTION_52()
{

  JUMPOUT(0x1E12A8390);
}

void *OUTLINED_FUNCTION_6_5()
{
  v2 = v0[6];
  v3 = v0[5];

  return __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void OUTLINED_FUNCTION_57()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E12A8390);
}

void OUTLINED_FUNCTION_60_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_156()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_8()
{
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_10()
{

  return AnyAppResolutionFlow.__allocating_init<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_6_11(uint64_t a1)
{
  v3 = (*(v1 + 56) + 16 * a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_6_12(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void OUTLINED_FUNCTION_20_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_6_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_15(uint64_t a1)
{
  *(a1 + 8) = sub_1DCC57B74;
  v2 = *(v1 + 344);
  return v1 + 64;
}

unint64_t OUTLINED_FUNCTION_6_16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_1DCB21038(a2, a3);
}

void OUTLINED_FUNCTION_6_18(void *a1)
{

  sub_1DCC65C38(v1, v2, a1);
}

__n128 OUTLINED_FUNCTION_6_20(uint64_t a1)
{
  *(v2 - 120) = a1;
  result = *(v2 - 368);
  *v1 = result.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_6_22()
{

  return sub_1DD0DDF8C();
}

void OUTLINED_FUNCTION_6_25()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_8_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_6_28()
{

  return swift_getAssociatedTypeWitness();
}

BOOL OUTLINED_FUNCTION_6_29(os_log_type_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t oslog)
{

  return os_log_type_enabled(oslog, a1);
}

uint64_t OUTLINED_FUNCTION_6_30()
{
  v2 = *(v1 - 120);
  v3 = *(*(v1 - 128) + 88);
  return v0;
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __swift_storeEnumTagSinglePayload(v13 + v11, 1, 1, a1);
  *(v13 + *(v14 + 124)) = 2;
  *v13 = a11;
  v13[1] = v12;
  v15 = *(v14 + 20);
}

uint64_t OUTLINED_FUNCTION_6_33()
{

  return sub_1DD0DDF7C();
}

__n128 *OUTLINED_FUNCTION_6_34(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656C61636F6CLL;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_35()
{

  return sub_1DD0DEFAC();
}

void OUTLINED_FUNCTION_27_0(int *a1@<X8>)
{
  v2 = a1[1];
  v3 = a1 + *a1;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_39@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 200);
  v5 = *(v2 + 176);
  v6 = v1 + ((*(v2 + 304) + 32) & ~*(v2 + 304)) + *(*(v2 + 184) + 72) * a1;
  v7 = *(v2 + 208);

  return sub_1DCCCF36C(v6, v7);
}

id OUTLINED_FUNCTION_6_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{

  return sub_1DCF75218(&a10, v10 & 1, v11 & 1, 0);
}

uint64_t OUTLINED_FUNCTION_6_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_42()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_2_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_6_47()
{

  sub_1DCDAC09C(v0);
}

uint64_t OUTLINED_FUNCTION_6_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17)
{
  *(v17 + 24) = a1;
  a17 = 0;
  a15 = 0u;
  a16 = 0u;

  return sub_1DCDD4314(&a15, &a10);
}

uint64_t OUTLINED_FUNCTION_6_51(uint64_t a1, ...)
{
  va_start(va, a1);

  return __swift_destroy_boxed_opaque_existential_1Tm(va);
}

uint64_t OUTLINED_FUNCTION_6_53()
{

  return _s11SiriKitFlow5StateOMa_0();
}

uint64_t OUTLINED_FUNCTION_6_58()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_65()
{

  return sub_1DD0DD7EC();
}

__n128 OUTLINED_FUNCTION_4_3(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = *(v2 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_55()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_6_68()
{
  v2 = *(v1 - 344);
  v3 = v2[3];
  v4 = v2[4];
  *(v1 - 312) = v3;
  *(v1 - 400) = v4;
  result = __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v1 - 344) = result;
  v6 = *(v0 + 40);
  *(v1 - 360) = *(v0 + 32);
  *(v1 - 392) = v6;
  return result;
}

void OUTLINED_FUNCTION_6_72(uint64_t a1@<X8>)
{
  v2 = (a1 + v1);
  v3 = v2[1];
  v4 = *v2 + **v2;
}

void OUTLINED_FUNCTION_6_78()
{
  v1 = *(v0 - 280);
  v2 = *(v0 - 272);
  v3 = *(v0 - 264);
  v4 = *(v0 - 256);
}

uint64_t OUTLINED_FUNCTION_6_82()
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_85()
{
  *v0 = 32;
  *(v0 + 8) = 0x54746E6572727543;
  *(v0 + 16) = 0xEB000000006B7361;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
}

uint64_t OUTLINED_FUNCTION_6_89()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_93()
{

  return sub_1DD0DB5BC();
}

uint64_t AnyChildCompletion.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_88_0();

  return swift_deallocClassInstance();
}

uint64_t AnyChildCompletion.init<A>(_:)()
{
  OUTLINED_FUNCTION_18_24();
  v4 = v3;
  v5 = swift_allocObject();
  v5[2] = v0;
  v5[3] = v4;
  v5[4] = v2;
  *(v1 + 16) = sub_1DCB5EA34;
  *(v1 + 24) = v5;
  return v1;
}

uint64_t sub_1DCB019B8()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

void OUTLINED_FUNCTION_88(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_62_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_111_5()
{
  v3 = *(v1 - 192);
  *v3 = *(v1 - 184);
  v3[1] = v0;

  return sub_1DCB17D04(v1 - 120, (v3 + 2));
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1)
{
  *(a1 + 8) = sub_1DCBB2794;
  v2 = *(v1 + 184);
  v3 = *(v1 + 192);
  return v1 + 96;
}

void OUTLINED_FUNCTION_12_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_4_6(uint64_t a1)
{
  *(a1 + 8) = sub_1DCB3FBB8;
  v2 = *(v1 + 632);
  return *(v1 + 680);
}

uint64_t OUTLINED_FUNCTION_4_9()
{
  result = v0;
  v3 = *(v1 - 96);
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_4_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t OUTLINED_FUNCTION_4_20@<X0>(int a1@<W8>)
{
  if (a1 == 1)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t OUTLINED_FUNCTION_4_21()
{

  return sub_1DD0DE2EC();
}

void OUTLINED_FUNCTION_4_22()
{
  v1 = 1 << *(v0 + 32);
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  else
  {
    v2 = -1;
  }

  v3 = v2 & *(v0 + 64);
}

void OUTLINED_FUNCTION_4_24()
{

  sub_1DD0DCBAC();
}

uint64_t OUTLINED_FUNCTION_4_25()
{
  v2 = *(v0 + 288);

  return sub_1DCB42D6C(v2, type metadata accessor for AceOutput);
}

void OUTLINED_FUNCTION_14_3()
{

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_4_27()
{

  return sub_1DD0DEDFC();
}

uint64_t OUTLINED_FUNCTION_10_5()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_4_29()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_4_31(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void OUTLINED_FUNCTION_4_33(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

void OUTLINED_FUNCTION_4_34(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5)
{

  _os_signpost_emit_with_name_impl(a1, v5, v6, a4, a5, v7, v8, 2u);
}

void *OUTLINED_FUNCTION_4_35()
{
  v2 = 8 * v0[2] - 8;

  return memmove(v0 + 4, v0 + 5, v2);
}

uint64_t OUTLINED_FUNCTION_4_36()
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v0);
}

void *OUTLINED_FUNCTION_4_37()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 96);

  return __swift_project_boxed_opaque_existential_1((v0 - 120), v3);
}

uint64_t OUTLINED_FUNCTION_4_40()
{

  return swift_once();
}

id OUTLINED_FUNCTION_4_43()
{
  *(v2 + 4) = v4;
  *(v2 + 12) = 2112;
  *(v2 + 14) = v1;
  *v3 = v1;
  *(v2 + 22) = 2080;
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);

  return v1;
}

void OUTLINED_FUNCTION_4_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x34u);
}

void OUTLINED_FUNCTION_4_45()
{

  sub_1DCBC61E8();
}

void OUTLINED_FUNCTION_4_46()
{
  sub_1DCB18FF0((v0 + 56), v0 + 16);
  v1 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));

  sub_1DCCDE224();
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1)
{
  *(v2 + 136) = v1;
  *(v2 + 160) = a1;
  sub_1DCB20B30((v2 + 136), (v2 + 168));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t *OUTLINED_FUNCTION_4_47()
{
  *(v1 + 184) = v0;
  result = __swift_project_boxed_opaque_existential_1(*(v1 + 176), *(*(v1 + 176) + 24));
  v3 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_53()
{
  v2 = *(v0 - 184);

  return sub_1DD0DD80C();
}

void OUTLINED_FUNCTION_4_57(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4_61()
{
  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[47];
  v6 = v0[43];
  v5 = v0[44];
  v7 = v0[42];
}

void OUTLINED_FUNCTION_4_63()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
}

uint64_t OUTLINED_FUNCTION_4_66()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_4_68()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_4_74@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 192) = a1;
  v4 = (v3 + a1);
  result = *v4;
  v6 = v4[1];
  *(v2 + 200) = v6;
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = *(v4 + 40);
  v11 = v4[6];
  *(v2 + 16) = result;
  *(v2 + 208) = v11;
  *(v2 + 24) = v6;
  *(v2 + 32) = v7;
  *(v2 + 40) = v8;
  *(v2 + 48) = v9;
  *(v2 + 56) = v10;
  *(v2 + 64) = v11;
  v13 = *(v1 + 80);
  v12 = *(v1 + 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_77@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return sub_1DCB2502C(a1, a2);
}

uint64_t OUTLINED_FUNCTION_4_79()
{
  *(v0 + 16) = 0;

  return MEMORY[0x1EEE3A6C8](0);
}

uint64_t OUTLINED_FUNCTION_9_1@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_4_85()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_88()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = type metadata accessor for OptionalFlowMappingPlan();
  v6 = *(v4 - 8);
  return v4 - 8;
}

uint64_t OUTLINED_FUNCTION_4_89()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_92()
{

  return sub_1DCB17CA0(v0, v1 - 128);
}

uint64_t OUTLINED_FUNCTION_4_95()
{
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[79];
  v9 = v0[76];
  v10 = v0[74];
}

void OUTLINED_FUNCTION_4_99(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, uint64_t a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, v8, a6, v9, 2u);
}

uint64_t OUTLINED_FUNCTION_4_103(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[73];
  v4 = v2[72];
  v5 = v2[71];
  v6 = v2[70];
  return v2[68];
}

uint64_t OUTLINED_FUNCTION_4_106()
{
  *(v0 + 16) = 0;

  return MEMORY[0x1EEE3B2C8](0);
}

id OUTLINED_FUNCTION_4_109(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)(v5, 1, 0, 0, a5);
}

void OUTLINED_FUNCTION_4_110()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_4_111()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 128);

  sub_1DCB4A6EC(v6, v7, v8, v9);
}

uint64_t OUTLINED_FUNCTION_4_113()
{
  v2 = *(v0 - 160);

  return sub_1DCFE37AC(v2, type metadata accessor for USOParse);
}

void *OUTLINED_FUNCTION_4_116()
{
  v2 = *(v0 - 128);
  *(v0 - 256) = v2;

  return __swift_project_boxed_opaque_existential_1((v0 - 152), v2);
}

uint64_t OUTLINED_FUNCTION_4_120(uint64_t result, uint64_t a2)
{
  v2[6] = result;
  v2[7] = a2;
  v2[9] = v3;
  v2[10] = 0x6E6F73726570;
  v2[11] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_121@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  result = a1[1];
  v4 = a1[2];
  *v1 = v3;
  v1[1] = result;
  v1[2] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_123()
{
  v5 = *(v2 + 48);
  v6 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v4;
  v7 = *(v3 + 16);
  return v1;
}

double OUTLINED_FUNCTION_4_124()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 8) = 0u;
  *(v0 + 80) = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_126()
{
  v1 = *(*(v0 - 256) + 8);
  result = *(v0 - 264);
  v3 = *(v0 - 216);
  return result;
}

uint64_t sub_1DCB02C48(uint64_t result)
{
  if (result)
  {
    sub_1DD0DCF8C();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return sub_1DD0DF1DC();
}

uint64_t OUTLINED_FUNCTION_92_1()
{
}

uint64_t OUTLINED_FUNCTION_49_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 104);
  return *(v2 + 88);
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_8()
{
  v2 = *(v0 - 104);

  return sub_1DD0DEF7C();
}

id OUTLINED_FUNCTION_49_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a11 + 28);
  v15 = *(v12 + v14);
  *(v11 + v14) = v15;

  return v15;
}

uint64_t OUTLINED_FUNCTION_49_12(__int128 *a1)
{
  result = sub_1DCAFF9E8(a1, v2 + 24);
  *(v2 + 64) = v1;
  return result;
}

void OUTLINED_FUNCTION_49_13()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_49_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_49_21()
{

  return sub_1DD0DB31C();
}

uint64_t OUTLINED_FUNCTION_49_24()
{

  return sub_1DCFE37AC(v0, type metadata accessor for Input);
}

uint64_t OUTLINED_FUNCTION_49_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v12 + *(v13 + 124)) = 2;
  *v12 = a11;
  v12[1] = v11;
  v15 = *(v13 + 20);
}

uint64_t OUTLINED_FUNCTION_49_29()
{
  v2 = *(v0 - 176);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_49_30()
{
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[21];
}

uint64_t OUTLINED_FUNCTION_13_3()
{

  return sub_1DCBB5CC8(v0, type metadata accessor for NLContextUpdate);
}

uint64_t OUTLINED_FUNCTION_13_4()
{

  return type metadata accessor for AceOutput();
}

void OUTLINED_FUNCTION_13_9()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_15_4@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_13_10()
{

  return sub_1DCB0E9D8(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_73_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_54_2@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_59_0(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_1DD0DD8EC();
}

id OUTLINED_FUNCTION_13_13()
{

  return sub_1DCC648A4(v6, v5, v4, v3, v2, v0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_13_15()
{
  v2 = *(v0 - 216);

  return swift_setDeallocating();
}

id OUTLINED_FUNCTION_13_19()
{

  return sub_1DCC9DA1C(0, 0, 0);
}

__n128 OUTLINED_FUNCTION_13_20()
{
  v1 = v0[1].n128_u64[0];
  v2 = v0[1].n128_u64[1];
  v3 = v0[2].n128_u64[0];
  v4 = v0[2].n128_u64[1];
  v5 = v0[3].n128_u64[0];
  v6 = v0[3].n128_u64[1];
  v7 = v0[4].n128_u64[0];
  return v0[9];
}

uint64_t OUTLINED_FUNCTION_13_21()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_13_23()
{

  return sub_1DCB10E9C(v0, v1, (v2 - 96));
}

void OUTLINED_FUNCTION_13_27(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

void *OUTLINED_FUNCTION_13_28(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v2;
  result[5] = v1;
  return result;
}

__n128 *OUTLINED_FUNCTION_13_29(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656369766564;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_35()
{
  *(v4 - 128) = v1;
  *(v4 - 120) = v2;
  *(v4 - 112) = v3;
  *(v4 - 104) = v0;
  return 255;
}

uint64_t *OUTLINED_FUNCTION_13_37@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1Tm(v2);
}

void OUTLINED_FUNCTION_13_38()
{
  v3 = *(v1 + 160);
}

uint64_t OUTLINED_FUNCTION_13_39()
{

  return swift_bridgeObjectRetain_n();
}

void *OUTLINED_FUNCTION_13_40()
{
  v2 = v0[4];
  v3 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v3);
}

void OUTLINED_FUNCTION_13_41()
{

  sub_1DCE06C88();
}

uint64_t OUTLINED_FUNCTION_13_42(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_1DD0DE06C();
}

uint64_t OUTLINED_FUNCTION_13_43()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_13_47()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_13_50()
{
  result = type metadata accessor for ActionParaphrase(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_52()
{
}

void OUTLINED_FUNCTION_13_54()
{
  *(v0 + v1[7]) = 0;
  v2 = (v0 + v1[8]);
  *v2 = 0;
  v2[1] = 0;
  v3 = v1[11];
}

uint64_t OUTLINED_FUNCTION_13_59(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_13_60()
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_13_61()
{

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_13_64()
{

  return sub_1DD0DD8BC();
}

uint64_t OUTLINED_FUNCTION_13_65@<X0>(uint64_t a1@<X8>)
{
  result = __swift_destroy_boxed_opaque_existential_1Tm((v1 + a1));
  v3 = *v1;
  return result;
}

void OUTLINED_FUNCTION_13_67(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, unint64_t a12, void *a13)
{

  sub_1DCF3A6B8(a9, a10, a11, a12, a13);
}

void OUTLINED_FUNCTION_13_68(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = 1;
  v7 = *(v3 + 32);
  *(v3 + 32) = 0x80;

  sub_1DCB3C730(v6, v5, v7);
}

uint64_t OUTLINED_FUNCTION_13_69()
{

  return sub_1DD0DE02C();
}

uint64_t OUTLINED_FUNCTION_13_70()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_73()
{
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[22];
}

uint64_t OUTLINED_FUNCTION_13_74(uint64_t result)
{
  *(result + 8) = v1;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v2;
  v6[6] = v5;
  return result;
}

__n128 OUTLINED_FUNCTION_13_79(unint64_t a1)
{
  v1[18].n128_u64[1] = a1;
  result = v1[2];
  *v2 = result.n128_u32[0];
  return result;
}

uint64_t AnyFlow.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCB039A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD190DC(a1, a2);
  *a3 = result & 1;
  return result;
}

void destroy for FlowTraceEvent(uint64_t *a1)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v2 = *a1;
      goto LABEL_11;
    case 2u:
      v14 = *a1;

      v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5040, &qword_1DD0F0CF8) + 48);
      v16 = sub_1DD0DB04C();
      (*(*(v16 - 8) + 8))(v15, v16);
      v17 = type metadata accessor for Input(0);
      v18 = &v15[v17[5]];
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v19 = sub_1DD0DC76C();
          goto LABEL_30;
        case 1u:
          v63 = sub_1DD0DC76C();
          (*(*(v63 - 8) + 8))(v18, v63);
          v64 = *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

          break;
        case 2u:
          v50 = *(v18 + 1);

          v51 = *(v18 + 2);
          goto LABEL_63;
        case 3u:
          v52 = *v18;
          swift_unknownObjectRelease();
          break;
        case 4u:
          v19 = sub_1DD0DB1EC();
          goto LABEL_30;
        case 5u:
          v81 = *v18;
          goto LABEL_69;
        case 6u:
          v82 = sub_1DD0DB4BC();
          (*(*(v82 - 8) + 8))(v18, v82);
          v83 = type metadata accessor for USOParse();
          v84 = *(v83 + 20);
          v85 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v18[v84], 1, v85))
          {
            (*(*(v85 - 8) + 8))(&v18[v84], v85);
          }

          v62 = *(v83 + 24);
          goto LABEL_62;
        case 7u:
          v54 = sub_1DD0DB4BC();
          (*(*(v54 - 8) + 8))(v18, v54);
          v55 = type metadata accessor for USOParse();
          v56 = *(v55 + 20);
          v57 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v18[v56], 1, v57))
          {
            (*(*(v57 - 8) + 8))(&v18[v56], v57);
          }

          v58 = *&v18[*(v55 + 24) + 8];

          v59 = type metadata accessor for LinkParse();
          v60 = *&v18[v59[5] + 8];

          v61 = *&v18[v59[6] + 8];

          v62 = v59[7];
LABEL_62:
          v86 = *&v18[v62 + 8];
LABEL_63:

          break;
        case 8u:
          v87 = sub_1DD0DD12C();
          (*(*(v87 - 8) + 8))(v18, v87);
          v88 = type metadata accessor for NLRouterParse();
          v89 = *&v18[v88[5] + 8];

          v90 = &v18[v88[6]];
          v91 = type metadata accessor for USOParse();
          if (!__swift_getEnumTagSinglePayload(v90, 1, v91))
          {
            v92 = sub_1DD0DB4BC();
            (*(*(v92 - 8) + 8))(v90, v92);
            v93 = *(v91 + 20);
            v94 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v90 + v93, 1, v94))
            {
              (*(*(v94 - 8) + 8))(v90 + v93, v94);
            }

            v95 = *(v90 + *(v91 + 24) + 8);
          }

          v81 = *&v18[v88[7]];
LABEL_69:

          break;
        case 9u:
          v19 = sub_1DD0DD08C();
LABEL_30:
          (*(*(v19 - 8) + 8))(v18, v19);
          break;
        default:
          break;
      }

      v96 = *&v15[v17[6]];

      v3 = &v15[v17[7]];
      if (!v3[3])
      {
        return;
      }

      goto LABEL_6;
    case 3u:
      v20 = *a1;

      v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5030, &qword_1DD0F0CE0) + 48);
      v22 = *(v21 + 1);

      v23 = *(v21 + 3);

      v24 = v21[48];
      if (v24 <= 0xFB)
      {
        sub_1DCD21390(*(v21 + 4), *(v21 + 5), v24);
      }

      v25 = type metadata accessor for ExecuteResponse(0);
      v26 = &v21[*(v25 + 36)];
      v27 = type metadata accessor for PluginAction();
      if (!__swift_getEnumTagSinglePayload(v26, 1, v27))
      {
        v28 = *(v26 + 8);

        v29 = v26 + v27[5];
        v30 = sub_1DD0DB04C();
        v31 = *(*(v30 - 8) + 8);
        v31(v29, v30);
        v32 = type metadata accessor for Input(0);
        v33 = v29 + v32[5];
        type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v34 = sub_1DD0DC76C();
            goto LABEL_74;
          case 1u:
            v108 = sub_1DD0DC76C();
            (*(*(v108 - 8) + 8))(v33, v108);
            v109 = *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48));

            break;
          case 2u:
            v97 = *(v33 + 8);

            v98 = *(v33 + 16);

            break;
          case 3u:
            v99 = *v33;
            swift_unknownObjectRelease();
            break;
          case 4u:
            v34 = sub_1DD0DB1EC();
            goto LABEL_74;
          case 5u:

            break;
          case 6u:
            v141 = v31;
            v110 = sub_1DD0DB4BC();
            (*(*(v110 - 8) + 8))(v33, v110);
            v139 = type metadata accessor for USOParse();
            v111 = *(v139 + 20);
            v112 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v33 + v111, 1, v112))
            {
              (*(*(v112 - 8) + 8))(v33 + v111, v112);
            }

            v107 = *(v139 + 24);
            goto LABEL_85;
          case 7u:
            v141 = v31;
            v100 = sub_1DD0DB4BC();
            (*(*(v100 - 8) + 8))(v33, v100);
            v138 = type metadata accessor for USOParse();
            v101 = *(v138 + 20);
            v102 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v33 + v101, 1, v102))
            {
              (*(*(v102 - 8) + 8))(v33 + v101, v102);
            }

            v103 = *(v33 + *(v138 + 24) + 8);

            v104 = type metadata accessor for LinkParse();
            v105 = *(v33 + v104[5] + 8);

            v106 = *(v33 + v104[6] + 8);

            v107 = v104[7];
LABEL_85:
            v113 = *(v33 + v107 + 8);

            goto LABEL_91;
          case 8u:
            v141 = v31;
            v114 = sub_1DD0DD12C();
            (*(*(v114 - 8) + 8))(v33, v114);
            v115 = type metadata accessor for NLRouterParse();
            v116 = *(v33 + v115[5] + 8);

            v117 = v33 + v115[6];
            v140 = type metadata accessor for USOParse();
            if (!__swift_getEnumTagSinglePayload(v117, 1, v140))
            {
              v118 = sub_1DD0DB4BC();
              (*(*(v118 - 8) + 8))(v117, v118);
              v137 = *(v140 + 20);
              v136 = sub_1DD0DB3EC();
              if (!__swift_getEnumTagSinglePayload(v117 + v137, 1, v136))
              {
                (*(*(v136 - 8) + 8))(v117 + v137);
              }

              v119 = *(v117 + *(v140 + 24) + 8);
            }

LABEL_91:
            v31 = v141;
            break;
          case 9u:
            v34 = sub_1DD0DD08C();
LABEL_74:
            (*(*(v34 - 8) + 8))(v33, v34);
            break;
          default:
            break;
        }

        v120 = *(v29 + v32[6]);

        v121 = (v29 + v32[7]);
        if (v121[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v121);
        }

        v122 = *(v26 + v27[6]);

        v123 = *(v26 + v27[8] + 8);

        v124 = v26 + v27[9];
        v125 = type metadata accessor for ActionParaphrase(0);
        if (!__swift_getEnumTagSinglePayload(v124, 1, v125))
        {
          v126 = *(v124 + 8);

          v127 = v124 + *(v125 + 20);
          v128 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
          if (!__swift_getEnumTagSinglePayload(v127, 1, v128))
          {
            v129 = *(v127 + 8);

            v130 = *(v127 + 24);

            v131 = *(v128 + 24);
            v132 = sub_1DD0DB66C();
            (*(*(v132 - 8) + 8))(v127 + v131, v132);
          }
        }

        v133 = v27[10];
        if (!__swift_getEnumTagSinglePayload(v26 + v133, 1, v30))
        {
          v31(v26 + v133, v30);
        }
      }

      v134 = &v21[*(v25 + 40)];
      if (*(v134 + 1))
      {

        v135 = *(v134 + 3);
      }

      return;
    case 4u:
      v11 = *a1;

      v12 = a1[2];

      v13 = a1[4];
LABEL_11:

      return;
    case 5u:
      v4 = *a1++;

      goto LABEL_5;
    case 6u:
    case 7u:
    case 0xBu:
    case 0xCu:
LABEL_5:
      v3 = a1;
      goto LABEL_6;
    case 8u:
    case 0xAu:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v3 = a1 + 5;
      goto LABEL_6;
    case 9u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5160, &qword_1DD0F0EE8);
      v6 = a1 + *(v5 + 48);
      v7 = sub_1DD0DB04C();
      (*(*(v7 - 8) + 8))(v6, v7);
      v8 = type metadata accessor for Input(0);
      v9 = &v6[v8[5]];
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v10 = sub_1DD0DC76C();
          goto LABEL_26;
        case 1u:
          v48 = sub_1DD0DC76C();
          (*(*(v48 - 8) + 8))(v9, v48);
          v49 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

          break;
        case 2u:
          v36 = *(v9 + 1);

          v37 = *(v9 + 2);
          goto LABEL_47;
        case 3u:
          v38 = *v9;
          swift_unknownObjectRelease();
          break;
        case 4u:
          v10 = sub_1DD0DB1EC();
          goto LABEL_26;
        case 5u:
          v53 = *v9;
          goto LABEL_53;
        case 6u:
          v65 = sub_1DD0DB4BC();
          (*(*(v65 - 8) + 8))(v9, v65);
          v66 = type metadata accessor for USOParse();
          v67 = *(v66 + 20);
          v68 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v9[v67], 1, v68))
          {
            (*(*(v68 - 8) + 8))(&v9[v67], v68);
          }

          v47 = *(v66 + 24);
          goto LABEL_46;
        case 7u:
          v39 = sub_1DD0DB4BC();
          (*(*(v39 - 8) + 8))(v9, v39);
          v40 = type metadata accessor for USOParse();
          v41 = *(v40 + 20);
          v42 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v9[v41], 1, v42))
          {
            (*(*(v42 - 8) + 8))(&v9[v41], v42);
          }

          v43 = *&v9[*(v40 + 24) + 8];

          v44 = type metadata accessor for LinkParse();
          v45 = *&v9[v44[5] + 8];

          v46 = *&v9[v44[6] + 8];

          v47 = v44[7];
LABEL_46:
          v69 = *&v9[v47 + 8];
LABEL_47:

          break;
        case 8u:
          v70 = sub_1DD0DD12C();
          (*(*(v70 - 8) + 8))(v9, v70);
          v71 = type metadata accessor for NLRouterParse();
          v72 = *&v9[v71[5] + 8];

          v73 = &v9[v71[6]];
          v74 = type metadata accessor for USOParse();
          if (!__swift_getEnumTagSinglePayload(v73, 1, v74))
          {
            v75 = sub_1DD0DB4BC();
            (*(*(v75 - 8) + 8))(v73, v75);
            v76 = *(v74 + 20);
            v77 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v73 + v76, 1, v77))
            {
              (*(*(v77 - 8) + 8))(v73 + v76, v77);
            }

            v78 = *(v73 + *(v74 + 24) + 8);
          }

          v53 = *&v9[v71[7]];
LABEL_53:

          break;
        case 9u:
          v10 = sub_1DD0DD08C();
LABEL_26:
          (*(*(v10 - 8) + 8))(v9, v10);
          break;
        default:
          break;
      }

      v79 = *&v6[v8[6]];

      v80 = &v6[v8[7]];
      if (v80[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
      }

      v3 = (a1 + *(v5 + 64));
      if (*(v3 + 40) >= 2u)
      {
        return;
      }

LABEL_6:
      __swift_destroy_boxed_opaque_existential_1Tm(v3);
      break;
    case 0xDu:
      v35 = *a1;

      break;
    default:
      return;
  }
}

uint64_t initializeWithCopy for Input(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v11 = sub_1DD0DC76C();
      (*(*(v11 - 8) + 16))(v8, v9, v11);
      goto LABEL_25;
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

      goto LABEL_25;
    case 3u:
      *v8 = *v9;
      swift_unknownObjectRetain();
      goto LABEL_25;
    case 4u:
      v12 = sub_1DD0DB1EC();
      (*(*(v12 - 8) + 16))(v8, v9, v12);
      goto LABEL_25;
    case 5u:
      v22 = *v9;
      *v8 = *v9;
      v23 = v22;
      goto LABEL_25;
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

      goto LABEL_25;
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

      goto LABEL_25;
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
      goto LABEL_25;
    case 9u:
      v13 = sub_1DD0DD08C();
      (*(*(v13 - 8) + 16))(v8, v9, v13);
LABEL_25:
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

  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t sub_1DCB052DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5FE8, &unk_1DD0F4BB0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_1DD0DD17C();
    v8 = a3[14];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[7] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t *destroy for Input(uint64_t a1, int *a2)
{
  v4 = sub_1DD0DB04C();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = (a1 + a2[5]);
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v19 = sub_1DD0DC76C();
      (*(*(v19 - 8) + 8))(v5, v19);
      v20 = *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

      break;
    case 2u:
      v7 = *(v5 + 1);

      v8 = *(v5 + 2);
      goto LABEL_17;
    case 3u:
      v9 = *v5;
      swift_unknownObjectRelease();
      break;
    case 4u:
      v6 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v21 = *v5;
      goto LABEL_23;
    case 6u:
      v22 = sub_1DD0DB4BC();
      (*(*(v22 - 8) + 8))(v5, v22);
      v23 = type metadata accessor for USOParse();
      v24 = *(v23 + 20);
      v25 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(&v5[v24], 1, v25))
      {
        (*(*(v25 - 8) + 8))(&v5[v24], v25);
      }

      v18 = *(v23 + 24);
      goto LABEL_16;
    case 7u:
      v10 = sub_1DD0DB4BC();
      (*(*(v10 - 8) + 8))(v5, v10);
      v11 = type metadata accessor for USOParse();
      v12 = *(v11 + 20);
      v13 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(&v5[v12], 1, v13))
      {
        (*(*(v13 - 8) + 8))(&v5[v12], v13);
      }

      v14 = *&v5[*(v11 + 24) + 8];

      v15 = type metadata accessor for LinkParse();
      v16 = *&v5[v15[5] + 8];

      v17 = *&v5[v15[6] + 8];

      v18 = v15[7];
LABEL_16:
      v26 = *&v5[v18 + 8];
LABEL_17:

      break;
    case 8u:
      v27 = sub_1DD0DD12C();
      (*(*(v27 - 8) + 8))(v5, v27);
      v28 = type metadata accessor for NLRouterParse();
      v29 = *&v5[v28[5] + 8];

      v30 = &v5[v28[6]];
      v31 = type metadata accessor for USOParse();
      if (!__swift_getEnumTagSinglePayload(v30, 1, v31))
      {
        v32 = sub_1DD0DB4BC();
        (*(*(v32 - 8) + 8))(v30, v32);
        v33 = *(v31 + 20);
        v34 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v30 + v33, 1, v34))
        {
          (*(*(v34 - 8) + 8))(v30 + v33, v34);
        }

        v35 = *(v30 + *(v31 + 24) + 8);
      }

      v21 = *&v5[v28[7]];
LABEL_23:

      break;
    case 9u:
      v6 = sub_1DD0DD08C();
LABEL_5:
      (*(*(v6 - 8) + 8))(v5, v6);
      break;
    default:
      break;
  }

  v36 = *(a1 + a2[6]);

  result = (a1 + a2[7]);
  if (result[3])
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(result);
  }

  return result;
}

uint64_t sub_1DCB05840(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  OUTLINED_FUNCTION_41_4();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  if (v0[6])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  }

  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  }

  OUTLINED_FUNCTION_5_13();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t objectdestroy_110Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5(void (*a1)(void), void (*a2)(void))
{
  v5 = *(v2 + 40);

  a1(*(v2 + 48));
  a2(*(v2 + 56));

  v6 = *(v2 + 72);

  OUTLINED_FUNCTION_7_3();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_92_2();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v6 = sub_1DD0DC8CC();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v6))
  {
    OUTLINED_FUNCTION_112(v6);
    (*(v7 + 8))(v0 + v3, v6);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_92_2();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 40);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10(void (*a1)(void), void (*a2)(void))
{
  v5 = *(v2 + 40);

  a1(*(v2 + 48));
  a2(*(v2 + 56));

  v6 = *(v2 + 80);

  OUTLINED_FUNCTION_126();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 56);

  OUTLINED_FUNCTION_0_3();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), v3);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{
  OUTLINED_FUNCTION_112(*(v0 + 16));
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v5 = *(v0 + v3);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  OUTLINED_FUNCTION_126();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = (type metadata accessor for OptionalFlowMappingPlan() - 8);
  v5 = (*(*v4 + 80) + 40) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  (*(*(v2 - 8) + 8))(&v0[v5], v2);
  v7 = *&v0[v5 + 8 + v4[13]];

  return swift_deallocObject();
}

uint64_t objectdestroyTm_19()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1DD0DD23C();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_20()
{
  OUTLINED_FUNCTION_112(*(v0 + 24));
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_21()
{
  OUTLINED_FUNCTION_18_43();
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_22()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  OUTLINED_FUNCTION_7_3();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_23()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_24()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_25()
{
  v1 = *(type metadata accessor for RelationshipLabel() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 24);

  OUTLINED_FUNCTION_20();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(v0 + v2 + 8);

  if (EnumCaseMultiPayload != 1)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v8 = sub_1DD0DB0FC();
    OUTLINED_FUNCTION_13_1(v8);
    (*(v9 + 8))(v0 + v2 + v7);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for RelationshipLabel();
  OUTLINED_FUNCTION_49_28(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + v3 + 8);

  if (EnumCaseMultiPayload != 1)
  {
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v10 = sub_1DD0DB0FC();
    OUTLINED_FUNCTION_2(v10);
    (*(v11 + 8))(v0 + v3 + v9);
  }

  OUTLINED_FUNCTION_51_33();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_27()
{
  v2 = type metadata accessor for RelationshipLabel();
  OUTLINED_FUNCTION_49_28(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v1 + 16);
  swift_unknownObjectRelease();
  v8 = OUTLINED_FUNCTION_34_42();
  v9 = *(v0 + 8);

  if (v8 != 1)
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v11 = sub_1DD0DB0FC();
    OUTLINED_FUNCTION_13_1(v11);
    (*(v12 + 8))(v0 + v10);
  }

  OUTLINED_FUNCTION_51_33();
  OUTLINED_FUNCTION_30_45();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_28()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t FlowRedirectContextProvider.__deallocating_deinit()
{
  FlowRedirectContextProvider.deinit();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

uint64_t FlowRedirectContextProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t SiriCorrectionsClientProvider.__deallocating_deinit()
{
  SiriCorrectionsClientProvider.deinit();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

uint64_t NLRoutingDecisionProvider.__deallocating_deinit()
{
  NLRoutingDecisionProvider.deinit();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

uint64_t NLRoutingDecisionProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t SiriCorrectionsClientProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t FlowTaskProvider.__deallocating_deinit()
{
  FlowTaskProvider.deinit();
  OUTLINED_FUNCTION_18_3();

  return swift_deallocClassInstance();
}

void *OUTLINED_FUNCTION_58_2(void *a1)
{

  return memcpy(a1, (v1 - 160), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 40);
  v4 = *(v2 + 48);
  return result;
}

void OUTLINED_FUNCTION_58_4(uint64_t a1@<X8>)
{
  *(v3 + 992) = a1;
  *(v3 + 960) = v2;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_58_5(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return sub_1DD0DE4BC();
}

uint64_t OUTLINED_FUNCTION_58_7()
{
  v2 = *(v0 - 288);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_58_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_58_10()
{

  return sub_1DD0DF24C();
}

uint64_t OUTLINED_FUNCTION_58_11()
{
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[31];
}

__n128 OUTLINED_FUNCTION_58_12(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 80) = *a2;
  result = *(a2 + 8);
  *(v3 + 88) = result;
  *(v3 + 57) = *(a2 + 24);
  *(v3 + 104) = *(a2 + 32);
  *(v3 + 58) = *(a2 + 40);
  return result;
}

void *OUTLINED_FUNCTION_58_13(void *result)
{
  result[2] = v4;
  result[3] = v3;
  result[4] = v2;
  result[5] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_16(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *(v5 - 232) = a5;
  *(v5 - 228) = a4;
  *(v5 - 240) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_17()
{
}

id OUTLINED_FUNCTION_58_19()
{

  return sub_1DCB3DEC0(v0, v1);
}

uint64_t OUTLINED_FUNCTION_58_20(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  *a1 = a2;
  *(a1 + 4) = *(v15 + 64);
  *(a1 + 8) = 1024;
  v16 = a15[6];
  v17 = a15[7];
  __swift_project_boxed_opaque_existential_1(a15 + 3, v16);
  v18 = *(v17 + 256);
  return v16;
}

void OUTLINED_FUNCTION_58_22()
{

  Resolvable.resolvedValuePublisher.getter((v0 - 232));
}

void *FlowTaskProvider.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t SessionConfigurationProvider.__deallocating_deinit()
{
  SessionConfigurationProvider.deinit();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

uint64_t SessionConfigurationProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t UserIdentityProvider.__deallocating_deinit()
{
  UserIdentityProvider.deinit();

  return swift_deallocClassInstance();
}

void *UserIdentityProvider.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  sub_1DCB06F30((v0 + 10));
  return v0;
}

uint64_t destroy for UserIdentityCheckFlowStrategy(void *a1)
{
  v2 = a1[1];

  result = a1[2];
  if (result)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(a1 + 3);
  }

  return result;
}

uint64_t sub_1DCB06FC0(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
    case 2uLL:

      break;
    case 3uLL:
      return result;
    default:
      result = swift_unknownObjectRelease();
      break;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionGroupTransition(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 16))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t ReadingFlow.__deallocating_deinit()
{
  ReadingFlow.deinit();
  OUTLINED_FUNCTION_18_3();

  return swift_deallocClassInstance();
}

void *ReadingFlow.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_1DCB070D4(v0[4], v0[5]);
  return v0;
}

void sub_1DCB070D4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_1DCB06FC0(a1, a2);
  }
}

void sub_1DCB070E0(unint64_t a1, void *a2, void *a3)
{
  if (a1 >> 62 == 1)
  {
    v5 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  }

  else
  {
    if (a1 >> 62)
    {
      return;
    }

    v5 = a3;
  }
}

uint64_t sub_1DCB07150()
{
  sub_1DCB07180(*(v0 + 16), *(v0 + 24));
  sub_1DCB0720C(v0 + 32);

  return v0;
}

uint64_t sub_1DCB07180(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1DCB06FC0(a1, a2);
  }

  return a1;
}

uint64_t sub_1DCB07194()
{
  sub_1DCB07150();

  return swift_deallocClassInstance();
}

void *sub_1DCB071CC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  return v0;
}

uint64_t AnyFlowAndActionGroupReturning.__deallocating_deinit()
{
  AnyFlowAndActionGroupReturning.deinit();
  OUTLINED_FUNCTION_5_11();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB07294()
{
  v2 = *v0;
  *(*v0 + 232) = *(*v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1DCB07398, 0, 0);
}

void sub_1DCB07398()
{
  v1 = *(v0 + 232);
  if (!v1)
  {
    *(v0 + 136) = 0u;
    *(v0 + 120) = 0u;
LABEL_22:
    sub_1DCB192E4(v0 + 120, v0 + 192);
    v18 = *(v0 + 224);
    if (*(v0 + 216))
    {
      sub_1DCB20B30((v0 + 192), (v0 + 160));
      sub_1DCB0DF6C(v0 + 160, v0 + 192);
      v19 = objc_allocWithZone(MEMORY[0x1E698D0F0]);
      [sub_1DCB1C2BC((v0 + 192)) callState];
      sub_1DCB19354();
    }

    sub_1DCB185D0(v0 + 192, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    sub_1DCB19354();
  }

  v2 = 0;
  v20 = sub_1DCB08B14(*(v0 + 232));
  v3 = *MEMORY[0x1E698D060];
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v20 == v2)
    {

      sub_1DCB078E8(v4, (v0 + 120));

      goto LABEL_22;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E12A72C0](v2, v1);
    }

    else
    {
      if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v5 = *(v1 + 8 * v2 + 32);
    }

    v6 = v5;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v7 = sub_1DCB1C328(v5);
    if (!v7)
    {
      goto LABEL_27;
    }

    v8 = v7;
    v9 = sub_1DD0DDFBC();
    if (!*(v8 + 16))
    {

LABEL_17:

      goto LABEL_18;
    }

    v11 = sub_1DCB21038(v9, v10);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      goto LABEL_17;
    }

    sub_1DCB0DF6C(*(v8 + 56) + 32 * v11, v0 + 192);

    sub_1DCB20B30((v0 + 192), (v0 + 160));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = *(v4 + 16);
      sub_1DCB1C394();
      v4 = v16;
    }

    v14 = *(v4 + 16);
    if (v14 >= *(v4 + 24) >> 1)
    {
      sub_1DCB1C394();
      v4 = v17;
    }

    *(v4 + 16) = v14 + 1;
    sub_1DCB20B30((v0 + 160), (v4 + 32 * v14 + 32));
LABEL_18:
    ++v2;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1DCB076C0(uint64_t a1, void *a2)
{
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  v5 = *MEMORY[0x1E698D060];
  *(inited + 32) = sub_1DD0DDFBC();
  *(inited + 40) = v6;
  sub_1DCB18D80(inited);
  *(swift_allocObject() + 16) = a1;
  sub_1DD0DD5EC();
}

uint64_t sub_1DCB077C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DCB0780C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CallStateEnvironmentProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCB0784C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DCB07894(uint64_t a1, uint64_t a2)
{
  **(*(a2 + 64) + 40) = a1;

  return swift_continuation_throwingResume();
}

double sub_1DCB078E8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1DCB0DF6C(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void SiriEnvironment.callState.getter()
{
  type metadata accessor for CallStateEnvironmentProvider();
  OUTLINED_FUNCTION_0_19(&qword_1EDE4DB38);

  sub_1DD0DCA7C();
}

double OUTLINED_FUNCTION_0_6()
{
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 80) = 3;
  return result;
}

unint64_t OUTLINED_FUNCTION_0_9()
{

  return sub_1DCBCFB38();
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_19(unint64_t *a1)
{

  return sub_1DCB0780C(a1);
}

uint64_t OUTLINED_FUNCTION_0_23()
{

  return sub_1DCC6DF90(v2, v3, v0, v1);
}

uint64_t OUTLINED_FUNCTION_0_24()
{
  v3 = *(v0 + v1 - 8);
  v4 = *(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_26()
{
  sub_1DCC91E6C(v3, v1);
  sub_1DCC91E6C(v2, v0);
  return v3;
}

double OUTLINED_FUNCTION_0_27()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = nullsub_1;
  *(v0 + 88) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_28()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_31()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_33()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_34()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_36()
{
  v7 = v1[13];
  v2 = (v0 + v1[14]);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + v1[15]);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + v1[16]) = 0;
  *(v0 + v1[18]) = 0;
  v4 = v0 + v1[19];
  *v4 = 0;
  *(v4 + 8) = 512;
  *(v0 + v1[20]) = 0;
  *(v0 + v1[21]) = 0;
  *(v0 + v1[22]) = 0;
  *(v0 + v1[23]) = 0;
  *(v0 + v1[24]) = 0;
  *(v0 + v1[25]) = 0;
  v5 = (v0 + v1[26]);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + v1[27]) = 0;
  v6 = v1[28];
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return sub_1DD0DDF7C();
}

uint64_t OUTLINED_FUNCTION_2_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return sub_1DCB40A04(a1, a2);
}

uint64_t OUTLINED_FUNCTION_0_40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_42()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_43(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *v9 = a1;

  return sub_1DCB10E9C(0x65725F7261646172, 0xEF202D2074726F70, va);
}

uint64_t OUTLINED_FUNCTION_0_44()
{

  return sub_1DD0DEDBC();
}

uint64_t OUTLINED_FUNCTION_0_53(unint64_t *a1)
{

  return sub_1DCB70ABC(a1);
}

uint64_t OUTLINED_FUNCTION_0_55()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_56()
{
  v2 = *(v0 + 56);
  *(v0 + 56) = 1;
  v3 = *(v0 + 64);
  *(v0 + 64) = 0;

  return sub_1DCD90050(v2, v3);
}

uint64_t OUTLINED_FUNCTION_0_59()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_61(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v3 = a1;

  return sub_1DCB10E9C(v4, v2, va);
}

double OUTLINED_FUNCTION_0_62(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_63@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = 0xD000000000000011;
  *(result + 24) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_67(unint64_t *a1)
{

  return sub_1DCDD4D04(a1);
}

void OUTLINED_FUNCTION_1_9(int *a1@<X8>)
{
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *(v8 + 25) = v5;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  *(v8 + 41) = v2;
  *(v8 + 42) = v1;
  v9 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_0_70(unint64_t *a1)
{

  return sub_1DCB708D0(a1);
}

uint64_t OUTLINED_FUNCTION_0_71()
{

  return sub_1DCB22A50(0, 1);
}

uint64_t OUTLINED_FUNCTION_0_74()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_77(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  return 0;
}

uint64_t OUTLINED_FUNCTION_0_79()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_1DD06E2FC(va);
}

uint64_t OUTLINED_FUNCTION_0_82()
{

  return Flow.eraseToAnyFlow()();
}

uint64_t OUTLINED_FUNCTION_0_85(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);

  return sub_1DD0C552C(a4);
}

uint64_t OUTLINED_FUNCTION_0_87()
{

  return type metadata accessor for Input(0);
}

uint64_t OUTLINED_FUNCTION_0_88()
{
  v1 = *(*(v0 - 224) + 8);
  result = *(v0 - 240);
  v3 = *(v0 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23)
{

  return sub_1DCB84380(v23, (v24 - 128), &a23, &a19);
}

uint64_t OUTLINED_FUNCTION_0_104()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_105(uint64_t result)
{
  *(v2 + 104) = result;
  v3 = v1 + *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_107()
{
  v3 = *(v0 + 48);
  v4 = *(v2 + 80);
  return v1;
}

void OUTLINED_FUNCTION_0_109(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{

  sub_1DCB2C534(v5, v6, v4, a4);
}

uint64_t OUTLINED_FUNCTION_0_110()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_111()
{
}

uint64_t OUTLINED_FUNCTION_0_113(unint64_t *a1)
{

  return sub_1DCB70528(a1);
}

uint64_t OUTLINED_FUNCTION_0_115(unint64_t *a1)
{

  return sub_1DCB672F4(a1);
}

uint64_t OUTLINED_FUNCTION_0_116(unint64_t *a1)
{

  return sub_1DCB719B4(a1);
}

uint64_t OUTLINED_FUNCTION_0_117()
{

  return sub_1DD0DE33C();
}

void OUTLINED_FUNCTION_0_120()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_0_121()
{

  JUMPOUT(0x1E12A6780);
}

__n128 OUTLINED_FUNCTION_0_130@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1760);
  *a1 = *(v1 + 1744);
  *(a1 + 16) = v3;
  result = *(v1 + 1776);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v2 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_131()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_136()
{

  return sub_1DD0DEFFC();
}

uint64_t OUTLINED_FUNCTION_0_137()
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_0_139(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, __src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_5_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

BOOL OUTLINED_FUNCTION_61_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return swift_once();
}

int8x16_t OUTLINED_FUNCTION_10_7(int8x16_t *a1)
{
  *(v1 + 40) = a1;
  result = vextq_s8(*(v1 + 24), *(v1 + 24), 8uLL);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_18(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_52_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_5_22()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_24()
{
}

uint64_t OUTLINED_FUNCTION_5_25(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_26()
{
  result = v0;
  v3 = *(v1 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_28()
{
  v3 = v0 + v1;
  v4 = *(v2 - 144);
  *v3 = *(v2 - 160);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(v2 - 128);
  return 0;
}

uint64_t OUTLINED_FUNCTION_5_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 16) = a10;
  *(v11 + 24) = a11;
  return v11;
}

uint64_t OUTLINED_FUNCTION_5_32()
{

  return sub_1DCC9FB18(v0, type metadata accessor for Input);
}

void OUTLINED_FUNCTION_5_34()
{

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_5_35()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_37()
{

  return sub_1DCB10E9C(v0, v1, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_5_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_41(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 168);
  return result;
}

void OUTLINED_FUNCTION_5_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int *a18)
{
  *(v19 + *(v21 + 32)) = *(v20 + *(v21 + 32));
  *(v22 + a18[6]) = *(v18 + a18[6]);
  *(v22 + a18[7]) = *(v18 + a18[7]);
  v23 = a18[8];
}

uint64_t OUTLINED_FUNCTION_5_52()
{
  v3 = *(v0 + 56);
  *(v0 + 56) = v1;
  v4 = *(v0 + 64);
  *(v0 + 64) = 1;

  return sub_1DCD90050(v3, v4);
}

uint64_t OUTLINED_FUNCTION_5_54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1DCB17D04(a1, a2);
}

uint64_t OUTLINED_FUNCTION_5_57()
{

  return sub_1DD0DEE6C();
}

void OUTLINED_FUNCTION_5_58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_5_60@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return sub_1DCB17CA0(a1 + 40 * v15 + 32, va);
}

void OUTLINED_FUNCTION_5_64()
{
  v2 = *(v0 - 112);
  *(v0 - 120) = *(v0 - 120);
  *(v0 - 112) = v2;

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_5_69()
{
  v1 = v0[7];
  v2 = v0[4];
  return v0[3];
}

uint64_t OUTLINED_FUNCTION_5_70(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, a1);

  return sub_1DCB706C8(v2, v1);
}

uint64_t OUTLINED_FUNCTION_5_73()
{

  return type metadata accessor for OutputGenerationManifest();
}

uint64_t OUTLINED_FUNCTION_5_77()
{
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[38];
}

uint64_t OUTLINED_FUNCTION_5_79()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_81()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

uint64_t OUTLINED_FUNCTION_5_82(uint64_t a1)
{
  *(a1 + 8) = sub_1DCB8CA94;
  result = *(v1 + 144);
  v3 = *(v1 + 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_83()
{

  return swift_getWitnessTable();
}

double OUTLINED_FUNCTION_5_85(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, a1);
  *(v1 + 192) = 0;
  result = 0.0;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  return result;
}

void OUTLINED_FUNCTION_5_86()
{

  sub_1DCEDB240(v1, v0);
}

uint64_t OUTLINED_FUNCTION_5_89()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 128) = a4;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;

  return sub_1DD0DD85C();
}

id OUTLINED_FUNCTION_5_93@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 304) = a1;
  v6 = *(v4 - 368);
  v7 = *(v4 - 336);

  return sub_1DCF3A878(v3, v6, v1, v2, v7);
}

void OUTLINED_FUNCTION_5_97()
{
  sub_1DCAFF9E8((v0 + 56), v0 + 16);
  v1 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));

  sub_1DCCDE224();
}

__n128 OUTLINED_FUNCTION_5_99()
{
  result = *(v0 - 128);
  *(v0 - 112) = *(v0 - 144);
  *(v0 - 96) = result;
  v2 = *(v0 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_101()
{
  result = v0 + 152;
  v2 = *(v0 + 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_102(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, a1);

  return sub_1DCB70320(v2, v1);
}

uint64_t OUTLINED_FUNCTION_5_103()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_104()
{
  v3 = v1[12];
  v4 = v1[10];
  v6 = v1[5];
  v5 = v1[6];
  *v3 = v0;
  *(v3 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_5_105(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17)
{
  *(v17 + 16) = 0;
  a17 = 0;
  a15 = 0u;
  a16 = 0u;

  return sub_1DCB514AC(&a15, &a10);
}

uint64_t OUTLINED_FUNCTION_5_107()
{

  return sub_1DD0DEB3C();
}

void OUTLINED_FUNCTION_5_108()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_5_112()
{
  v1 = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[34];
}

uint64_t OUTLINED_FUNCTION_5_114()
{
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
}

uint64_t OUTLINED_FUNCTION_5_116()
{

  return sub_1DD0DDB6C();
}

uint64_t *OUTLINED_FUNCTION_5_118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 - 240);
  v4[3] = a1;
  v4[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1Tm(v4);
}

void OUTLINED_FUNCTION_5_120()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v0[3] - 8);
}

void OUTLINED_FUNCTION_5_122(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);

  sub_1DCDAC354(a1);
}

uint64_t OUTLINED_FUNCTION_5_124()
{

  return sub_1DCB28794(v0, type metadata accessor for Input);
}

id OUTLINED_FUNCTION_5_125(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a2;
  v6 = *(a2 + 8);

  return sub_1DD082870(v5, v6, v3, v4);
}

uint64_t OUTLINED_FUNCTION_5_127()
{

  return sub_1DD0DB46C();
}

uint64_t sub_1DCB09910(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCB09970(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_33_1();
  v9(v8);
  return v4;
}

uint64_t sub_1DCB099BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_33_1();
  v9(v8);
  return a2;
}

unint64_t *sub_1DCB09A18(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  sub_1DCB72E48(*a2);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  sub_1DCB070E0(v6, v7, v8);
  return a1;
}

uint64_t sub_1DCB09A70(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1DD0DEB3C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t OUTLINED_FUNCTION_15_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1)
{
  *(a1 + 8) = sub_1DCB413DC;
  v2 = *(v1 + 632);
  return v1 + 176;
}

double OUTLINED_FUNCTION_1_11()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 8) = 0u;
  *(v0 + 80) = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_1_12(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return StaticActionGroup.init(actions:transition:debugDescription:)(a1, &a9, 0xD000000000000011, v9 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_12_4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

double OUTLINED_FUNCTION_1_15(uint64_t a1)
{
  *(a1 + 16) = v1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_20()
{

  return __swift_storeEnumTagSinglePayload(v2 + v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_14_5()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_1_23(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_24(unint64_t *a1)
{

  return sub_1DCB0780C(a1);
}

void OUTLINED_FUNCTION_1_25(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{

  sub_1DCB2C534(0x7079546567616D49, 0xEC0000004C525565, v4, a4);
}

uint64_t OUTLINED_FUNCTION_1_26(uint64_t a1)
{
  *(v3 - 120) = a1;
  *v1 = *(v3 - 304);
  v5 = *(v3 - 240);

  return sub_1DCB10E9C(v5, v2, (v3 - 120));
}

uint64_t OUTLINED_FUNCTION_1_27()
{

  return sub_1DD0DEF8C();
}

void OUTLINED_FUNCTION_1_33()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
  *(v0 + 14) = 446;
  *(v0 + 22) = 2080;
}

uint64_t OUTLINED_FUNCTION_1_37()
{
  result = v0;
  v3 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_39(uint64_t result)
{
  *(v2 + 32) = result;
  v3 = v1 + *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_10@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  v9 = v2[8];
  *(v1 + v2[9]) = 256;
  v8 = v2[10];
  *(v1 + v2[11]) = 0;
  v6 = v2[12];

  return type metadata accessor for NLContextUpdate();
}

void OUTLINED_FUNCTION_19_1()
{
}

uint64_t OUTLINED_FUNCTION_1_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v9 + 14) = a1;
  *(v9 + 22) = 2080;

  return sub_1DCB10E9C(a5, v10, va);
}

_OWORD *OUTLINED_FUNCTION_2_11()
{

  return sub_1DCC60044();
}

uint64_t OUTLINED_FUNCTION_1_50()
{
}

void *OUTLINED_FUNCTION_1_55(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, v10, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_1_60()
{
  result = *(v0 - 152);
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);
  v4 = *(v0 - 128);
  v5 = *(v0 - 120);
  v6 = *(v0 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_66()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1DCB17CA0(v5, va);
}

void OUTLINED_FUNCTION_1_69()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
}

void OUTLINED_FUNCTION_1_75(uint64_t a1@<X8>)
{
  *(v2 + 24) = a1;
  v3 = *(v2 + 32);
  *(v2 + 32) = 2 * v1;
}

uint64_t OUTLINED_FUNCTION_1_78(unint64_t *a1)
{

  return sub_1DCDD4D04(a1);
}

uint64_t OUTLINED_FUNCTION_1_79@<X0>(uint64_t a1@<X8>)
{
  v4 = (v3 + a1);
  result = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = *(v4 + 40);
  v11 = v4[6];
  *(v2 + 16) = *v4;
  *(v2 + 24) = v6;
  *(v2 + 32) = v7;
  *(v2 + 40) = v8;
  *(v2 + 48) = v9;
  *(v2 + 56) = v10;
  *(v2 + 64) = v11;
  v13 = *(v1 + 80);
  v12 = *(v1 + 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_81()
{
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v0);

  return sub_1DCBCF6C8(v2, v1);
}

uint64_t OUTLINED_FUNCTION_1_82()
{
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[38];
  v5 = v0[39];
  v6 = v0[37];
  v8 = v0[33];
  v7 = v0[34];
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[28];
  v13 = v0[27];
  v14 = v0[24];
  v15 = v0[23];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[15];
  v20 = v0[14];
  v21 = v0[11];
  v22 = v0[10];
}

uint64_t OUTLINED_FUNCTION_1_83(unint64_t *a1)
{

  return sub_1DCB708D0(a1);
}

__n128 *OUTLINED_FUNCTION_1_86(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = *(v2 - 296);
  result[2].n128_u64[0] = *(v2 - 304);
  result[2].n128_u64[1] = v3;
  return result;
}

id OUTLINED_FUNCTION_1_88()
{
  v3 = *(v0 + 664);

  return [v1 v3];
}

uint64_t OUTLINED_FUNCTION_1_89()
{
  v1 = v0[52];
  v2 = v0[48];
  return v0[50];
}

uint64_t OUTLINED_FUNCTION_1_96()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_1_100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1DCB17CA0(v5, va);
}

void OUTLINED_FUNCTION_1_101(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
  v9 = v4[2];

  sub_1DCED8D50(a3, a4);
}

void *OUTLINED_FUNCTION_1_103()
{
  v1 = *v0;
  v2 = v0[7];
  result = __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v4 = v0[2];
  return result;
}

void OUTLINED_FUNCTION_1_106()
{
  v3 = *v1;
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v5 = v1[2];

  sub_1DCEE0F08(v2, v0);
}

uint64_t OUTLINED_FUNCTION_1_109()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = *(v0[11] + 16);
  return v0[12];
}

uint64_t OUTLINED_FUNCTION_1_110@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1DCC08BCC(v2, &a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0));
}

uint64_t OUTLINED_FUNCTION_1_112()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_1_113()
{
  result = *(v0 - 360);
  v2 = *(v0 - 392);
  v3 = *(v0 - 408);
  v4 = *(v0 - 344);
  v5 = *(v0 - 312);
  v6 = *(v0 - 304);
  return result;
}

void OUTLINED_FUNCTION_1_115()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
}

uint64_t OUTLINED_FUNCTION_1_118()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_120()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 696));
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_121(unint64_t *a1)
{

  return sub_1DCB70528(a1);
}

uint64_t OUTLINED_FUNCTION_1_122@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v4 = (&a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_1_124(unint64_t *a1)
{

  return sub_1DCB672F4(a1);
}

uint64_t OUTLINED_FUNCTION_1_125(unint64_t *a1)
{

  return sub_1DCB719B4(a1);
}

uint64_t OUTLINED_FUNCTION_1_126()
{

  return sub_1DCF9D5C4(v0, type metadata accessor for Input);
}

double OUTLINED_FUNCTION_1_128(uint64_t a1)
{
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

_OWORD *OUTLINED_FUNCTION_1_129()
{
  v2 = v0[1];
  v1[4] = *v0;
  v1[5] = v2;
  v1[6] = v0[2];
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_139()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_140(uint64_t a1)
{
  *(v1 - 128) = a1;

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_12(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  strcpy(&a1[2], "relationship");
  a1[2].n128_u8[13] = 0;
  a1[2].n128_u16[7] = -5120;

  return RelationshipLabel.asUnboundedSemanticValue.getter();
}

uint64_t OUTLINED_FUNCTION_1_142()
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_1_145()
{

  return sub_1DD0817E0(v0, type metadata accessor for NLContextUpdate);
}

__n128 OUTLINED_FUNCTION_1_147(unint64_t a1)
{
  v1[18].n128_u64[1] = a1;
  result = v1[2];
  *v2 = result.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_148(uint64_t a1)
{
  v5 = (v2 + *(a1 + 28));
  v6 = *v5;
  v7 = *(v5 + 4);
  *(v3 - 68) = v7;

  return Siri_Nlu_External_UserDialogAct.extractAppShortcutInvocation(groupIndex:)(v6 | (v7 << 32), v1);
}

void OUTLINED_FUNCTION_1_150()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_1_151()
{
  v2 = v0[36];
  result = v0[37];
  v3 = v0[33];
  v5 = v0[29];
  v4 = v0[30];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[21];
  v12 = v0[22];
  return result;
}

uint64_t getEnumTagSinglePayload for AppResolutionFlowError(uint64_t a1, unsigned int a2)
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

uint64_t OUTLINED_FUNCTION_51_0()
{

  return sub_1DCBB492C();
}

BOOL OUTLINED_FUNCTION_51_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_51_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1, __n128 a2)
{
  *(a1 + 16) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = v4;
  *(a1 + 48) = v3;
  *(a1 + 56) = v2;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = v3;
  *(a1 + 128) = v2;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_8_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_51_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[12];
  v4 = v2[8];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_51_10()
{
  v2 = *(v0 + 36);

  return type metadata accessor for ActionParaphrase(0);
}

uint64_t OUTLINED_FUNCTION_51_12(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_79_0()
{

  return swift_allocError();
}

BOOL OUTLINED_FUNCTION_51_14(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_51_15()
{
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[34];
  v4 = v0[35];
}

void OUTLINED_FUNCTION_51_16()
{

  type metadata accessor for AFLocationServiceError(0);
}

void OUTLINED_FUNCTION_51_19()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

uint64_t OUTLINED_FUNCTION_51_22()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_51_24()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_56_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_51_26()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  return v1;
}

uint64_t OUTLINED_FUNCTION_51_27()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_51_28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_33()
{
  v4 = *(v0 + ((v2 + v1 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void OUTLINED_FUNCTION_120(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_3_4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_41_5@<X0>(void *a1@<X8>)
{
  v1 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  return v1;
}

void OUTLINED_FUNCTION_41_6(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  *(v9 + 24) = v10;
  *(v9 + 32) = a1;
}

uint64_t OUTLINED_FUNCTION_41_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  *v9 = a9;

  return swift_getObjectType();
}

id OUTLINED_FUNCTION_41_8(void *a1)
{

  return [a1 v1];
}

uint64_t OUTLINED_FUNCTION_41_10(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 128));
}

void OUTLINED_FUNCTION_41_11()
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *v0;
}

uint64_t OUTLINED_FUNCTION_41_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;

  return sub_1DD0DD85C();
}

uint64_t OUTLINED_FUNCTION_41_13()
{

  return sub_1DCB35460(0, (v0 & 0xC000000000000001) == 0, v0);
}

void OUTLINED_FUNCTION_41_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_41_16()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_41_17(unint64_t a1)
{

  return sub_1DCB79C80(a1, 17, 2);
}

void OUTLINED_FUNCTION_41_21()
{
  v1 = v0[37];
  v2 = v0[35];
  v3 = v0[32];
}

uint64_t OUTLINED_FUNCTION_41_23()
{

  return sub_1DCEED454();
}

void OUTLINED_FUNCTION_41_26()
{

  JUMPOUT(0x1E12A8390);
}

void OUTLINED_FUNCTION_41_28(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = (v1 + (a1 & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
}

uint64_t OUTLINED_FUNCTION_41_29()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_41_30()
{
  __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v3);
  *v2 = v0;
}

void OUTLINED_FUNCTION_41_32(uint64_t a1@<X8>)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = v1;
  *(a1 + 8) = 0;
}

void OUTLINED_FUNCTION_41_36()
{
  v2 = (v1 + v0);
  v3 = *v2;
  v4 = v2[1];
}

uint64_t OUTLINED_FUNCTION_41_37()
{

  return sub_1DD0DE4BC();
}

void OUTLINED_FUNCTION_27_2()
{
  v1 = v0[84];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
}

uint64_t OUTLINED_FUNCTION_118()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_27_5@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + a1);
  v4 = *(v1 + 80);
  return *(v1 + 88);
}

uint64_t OUTLINED_FUNCTION_31_3()
{

  return sub_1DCC11158(v0, type metadata accessor for Input);
}

void OUTLINED_FUNCTION_30_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_27_8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_27_13()
{
  v1 = v0[3];
  v2 = v0[2];
  return v0[4];
}

uint64_t OUTLINED_FUNCTION_27_15()
{

  return sub_1DD0DE33C();
}

uint64_t OUTLINED_FUNCTION_27_16()
{

  return type metadata accessor for DisambiguationPrompt.State();
}

void OUTLINED_FUNCTION_3_5()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t OUTLINED_FUNCTION_27_17()
{
  v3 = *(v2 + 24);
  result = *(v1 + v3);
  *(v0 + v3) = result;
  v5 = v0 + *(v2 + 28);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_27_20(__int128 *a1)
{
  result = sub_1DCAFF9E8(a1, v3 + 32);
  *(v3 + 72) = v2;
  *(v3 + 80) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_21()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_27_22(uint64_t result)
{
  *(result + 48) = v7;
  *(result + 56) = v6;
  *(result + 64) = v4;
  *(result + 65) = v3;
  *(result + 72) = v5;
  *(result + 80) = v2;
  *(result + 81) = v1;
  return result;
}

void OUTLINED_FUNCTION_27_25(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_27_29()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
}

uint64_t OUTLINED_FUNCTION_27_30(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

id OUTLINED_FUNCTION_27_36()
{
  *(v0 - 128) = *(v0 - 392) & 1;

  return sub_1DCF78960((v0 - 128));
}

__n128 OUTLINED_FUNCTION_27_41()
{
  v1 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 88) = v1;
  result = *(v0 + 48);
  *(v0 + 104) = result;
  *(v0 + 120) = *(v0 + 64);
  return result;
}

void OUTLINED_FUNCTION_27_42(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void *OUTLINED_FUNCTION_27_43(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char __src)
{

  return memcpy(v13, &__src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return sub_1DD0DF1DC();
}

void *OUTLINED_FUNCTION_26_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 560);
  v4 = *(a1 + *(v1 + 40));
  v5 = v3[8];
  return __swift_project_boxed_opaque_existential_1(v3 + 4, v3[7]);
}

uint64_t OUTLINED_FUNCTION_85()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_26_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_26_9(uint64_t a1@<X8>)
{
  v3 = (a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v3);
  v6 = *(v1 + v4);
  v7 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t OUTLINED_FUNCTION_26_10()
{

  return sub_1DD0DDF8C();
}

uint64_t OUTLINED_FUNCTION_26_11()
{
}

uint64_t OUTLINED_FUNCTION_26_12()
{
  v3 = *(v2 - 176);
  *(v2 - 120) = v0;
  *(v2 - 112) = v3;
  *(v2 - 104) = *(v2 - 264);
  *(v2 - 96) = v1;
  return type metadata accessor for DisambiguationPrompt.Response();
}

double OUTLINED_FUNCTION_26_15@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_17()
{
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[21];
}

uint64_t OUTLINED_FUNCTION_26_19(__int128 *a1)
{
  result = sub_1DCAFF9E8(a1, v2 + 32);
  *(v2 + 72) = v1;
  return result;
}

void OUTLINED_FUNCTION_26_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

__n128 OUTLINED_FUNCTION_12_6(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10)
{
  *(a1 + 16) = v12;
  *(a1 + 24) = a2;
  result = a10;
  *(a1 + 40) = a10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v10;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_22()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);
  v4 = *(v0 - 112);
  v5 = *(v0 - 104);
  v6 = *(v0 - 96);
  v7 = *(v0 - 88);

  return sub_1DCB22A50(v2, v3);
}

void OUTLINED_FUNCTION_26_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = a4 + 96 * v27;
  *(v29 + 32) = a27;
  *(v29 + 40) = v28;
}

void *OUTLINED_FUNCTION_26_27(void *result)
{
  result[2] = v4;
  result[3] = v5;
  result[4] = v3;
  result[5] = v2;
  result[6] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_31()
{

  return sub_1DD0DE92C();
}

uint64_t OUTLINED_FUNCTION_26_33(unint64_t *a1)
{

  return sub_1DCBF7DC0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_26_34()
{

  return sub_1DD0DF0AC();
}

void OUTLINED_FUNCTION_26_35()
{
  v1 = *(v0 - 120);
  *(v0 - 128) = *(v0 - 128);
  *(v0 - 120) = v1;
}

void OUTLINED_FUNCTION_26_37()
{
  v1 = v0[30];
  v2 = v0[31];
  v8 = v0[41];
  v9 = v0[42];
  v10 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[34];
}

uint64_t OUTLINED_FUNCTION_26_38()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = *(v0[18] + 32);
  return v0[19];
}

uint64_t OUTLINED_FUNCTION_26_39(uint64_t a1)
{
  *(v1 + 48) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_26_41()
{
  v3 = v0[51];
  v2 = v0[52];
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[43];
  v6 = v0[44];
}

uint64_t OUTLINED_FUNCTION_9_5(uint64_t a1)
{
  v6 = v2 + *(a1 + 28);

  return sub_1DCB4F190(v6, v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_9_6()
{
  v2 = v0[84];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[76];
  v8 = v0[74];
  v9 = v0[71];
}

uint64_t OUTLINED_FUNCTION_10_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t result)
{
  *(v3 + 48) = result;
  *(result + 16) = v4;
  *(result + 24) = v2;
  *(result + 32) = v1;
  *(result + 40) = v5;
  return result;
}

void OUTLINED_FUNCTION_9_12()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_9_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_3_6(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_9_15(uint64_t a1)
{
  *(a1 + 16) = *(v2 - 224);
  *(v2 - 104) = v1;

  return sub_1DD0DD1FC();
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_9_18(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_21()
{
  *(v1 - 152) = v0;
  *(v1 - 144) = 0;
  result = 0;
  *(v1 - 136) = -256;
  return result;
}

void OUTLINED_FUNCTION_9_22(uint64_t a1@<X8>)
{
  v2 = (v1 + ((a1 + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
}

double OUTLINED_FUNCTION_9_24@<D0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 8) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_26@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1DCB10E9C(0xD00000000000001CLL, (a1 - 32) | 0x8000000000000000, &a2);
}

uint64_t OUTLINED_FUNCTION_9_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_29()
{

  return sub_1DD0DEEBC();
}

void *OUTLINED_FUNCTION_9_30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char __dst)
{

  return memcpy(&__dst, &__src, 0x49uLL);
}

_OWORD *OUTLINED_FUNCTION_2_13()
{

  return sub_1DCC60044();
}

uint64_t OUTLINED_FUNCTION_9_31()
{

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
}

void OUTLINED_FUNCTION_9_32()
{
  v1 = v0[72];
  v2 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[59];
  v6 = v0[55];
}

uint64_t OUTLINED_FUNCTION_89_0()
{

  return sub_1DD0DEC8C();
}

uint64_t OUTLINED_FUNCTION_9_34()
{
}

__n128 *OUTLINED_FUNCTION_9_37(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v3 - 96) = 0;
  *(v3 - 88) = 0xE000000000000000;
  *(v3 - 104) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_40(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1DCB17CA0(v1, va);
}

uint64_t OUTLINED_FUNCTION_9_41()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = *(v2 + 24);
  return v1;
}

uint64_t OUTLINED_FUNCTION_9_42(uint64_t a1)
{
  v3[4] = a1;
  *v3 = v2;
  v5 = *(v4 + 8);
  return v1;
}

void OUTLINED_FUNCTION_9_43(uint64_t a1@<X8>)
{
  v2 = **(a1 - 256);
  v3 = *(v1 - 192);
  v4 = *(v1 - 104);
}

uint64_t OUTLINED_FUNCTION_9_44()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_45(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1DCB10E9C(a1, a2, va);
}

void OUTLINED_FUNCTION_9_47()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_9_53(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v4 + 152);
  v9 = *(v4 + 152);

  _os_log_impl(a1, v5, v9, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_9_54()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_9_57()
{

  return sub_1DD0DEF4C();
}

uint64_t OUTLINED_FUNCTION_9_59(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 48);
  v4 = *(v2 + 24);
  return *(v2 + 16);
}

uint64_t *OUTLINED_FUNCTION_9_64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1Tm(v2);
}

uint64_t OUTLINED_FUNCTION_9_65()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);

  return sub_1DCB74408(v3, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_9_71()
{

  return sub_1DCF653F8(v0, type metadata accessor for OutputGenerationManifest);
}

uint64_t OUTLINED_FUNCTION_9_72(uint64_t a1)
{

  return sub_1DCB10E9C(a1, v1, (v2 - 144));
}

__n128 OUTLINED_FUNCTION_9_79()
{
  v3 = (v2 + ((v0 + v1 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v3;
  v6 = v3[1];
  result = v3[2];
  v7 = *(v3 + 6);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_80()
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_9_82()
{
  v0 = type metadata accessor for USOKeyPath();
  v2 = *(v0 - 8);
  return v0 - 8;
}

uint64_t OUTLINED_FUNCTION_9_83()
{
  v2 = *(v0 + 56);

  return swift_setDeallocating();
}

uint64_t *OUTLINED_FUNCTION_9_84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 - 320);
  v4[3] = a1;
  v4[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1Tm(v4);
}

void OUTLINED_FUNCTION_24_3(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void *OUTLINED_FUNCTION_24_5()
{
  v1 = *(v0 + 64);
  v2 = v1[7];
  return __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
}

uint64_t OUTLINED_FUNCTION_46_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_7(uint64_t result)
{
  *(result + 8) = sub_1DCC197B0;
  v2 = *(v1 + 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_8()
{
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[4];

  return sub_1DCC3DF28();
}

uint64_t OUTLINED_FUNCTION_24_9()
{
  v4 = *(v0 + 3392);
  v5 = *(v1 + 1240);

  return type metadata accessor for CATTemplateExecutor();
}

uint64_t OUTLINED_FUNCTION_60_1()
{

  return swift_arrayDestroy();
}

id OUTLINED_FUNCTION_24_11(void *a1)
{

  return [a1 _imageSize];
}

uint64_t OUTLINED_FUNCTION_24_12()
{

  return sub_1DD0DE2EC();
}

uint64_t OUTLINED_FUNCTION_24_14()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_24_19(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = *(v1 - 88);
  v3 = *(v1 - 72);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  v4 = *(v1 - 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

double OUTLINED_FUNCTION_24_22@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(a1 + 16) = a3;
  *(a1 + 32) = 261;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0xD00000000000001ELL;
  *(a1 + 80) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_25()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_24_29(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_24_31()
{

  return sub_1DD0DF07C();
}

unint64_t OUTLINED_FUNCTION_24_32(uint64_t a1, uint64_t a2)
{
  v4 = *v2;

  return sub_1DCB21038(a1, a2);
}

uint64_t OUTLINED_FUNCTION_24_33()
{

  return sub_1DD0DE33C();
}

uint64_t OUTLINED_FUNCTION_24_34()
{
  v2 = *(v0 + 56);

  return sub_1DCDC578C(v2, type metadata accessor for Input);
}

uint64_t OUTLINED_FUNCTION_24_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = *(v16 - 96);
  v19 = *(v16 - 88);

  return sub_1DCF94300(a1, v11, v15, v14, v13, v12, v18, v19, a9, a10, a11);
}

void OUTLINED_FUNCTION_24_36()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_24_37@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

void OUTLINED_FUNCTION_24_40(uint64_t a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = *a2;
  v5 = *(a2 + 24);
  v6 = a2[4];
  v7 = *(a2 + 40);
}

void OUTLINED_FUNCTION_24_41(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = v2[1];
  v4 = *v2;
}

uint64_t OUTLINED_FUNCTION_24_42(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

unint64_t OUTLINED_FUNCTION_24_43@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 4);
  *(v2 - 4) = v3;
  return v4 | (v3 << 32);
}

void OUTLINED_FUNCTION_24_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void destroy for Parse(char *a1)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v2 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v16 = sub_1DD0DC76C();
      (*(*(v16 - 8) + 8))(a1, v16);
      v17 = *&a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

      return;
    case 2u:
      v4 = *(a1 + 1);

      v5 = *(a1 + 2);
      goto LABEL_23;
    case 3u:
      v6 = *a1;

      swift_unknownObjectRelease();
      return;
    case 4u:
      v2 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v18 = *a1;
      goto LABEL_31;
    case 6u:
      v19 = sub_1DD0DB4BC();
      (*(*(v19 - 8) + 8))(a1, v19);
      v20 = type metadata accessor for USOParse();
      v21 = *(v20 + 20);
      v22 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(&a1[v21], 1, v22))
      {
        (*(*(v22 - 8) + 8))(&a1[v21], v22);
      }

      v15 = *(v20 + 24);
      goto LABEL_22;
    case 7u:
      v7 = sub_1DD0DB4BC();
      (*(*(v7 - 8) + 8))(a1, v7);
      v8 = type metadata accessor for USOParse();
      v9 = *(v8 + 20);
      v10 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(&a1[v9], 1, v10))
      {
        (*(*(v10 - 8) + 8))(&a1[v9], v10);
      }

      v11 = *&a1[*(v8 + 24) + 8];

      v12 = type metadata accessor for LinkParse();
      v13 = *&a1[v12[5] + 8];

      v14 = *&a1[v12[6] + 8];

      v15 = v12[7];
LABEL_22:
      v23 = *&a1[v15 + 8];
LABEL_23:

      break;
    case 8u:
      v24 = sub_1DD0DD12C();
      (*(*(v24 - 8) + 8))(a1, v24);
      v25 = type metadata accessor for NLRouterParse();
      v26 = *&a1[v25[5] + 8];

      v27 = &a1[v25[6]];
      v28 = type metadata accessor for USOParse();
      if (!__swift_getEnumTagSinglePayload(v27, 1, v28))
      {
        v29 = sub_1DD0DB4BC();
        (*(*(v29 - 8) + 8))(v27, v29);
        v30 = *(v28 + 20);
        v31 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v27 + v30, 1, v31))
        {
          (*(*(v31 - 8) + 8))(v27 + v30, v31);
        }

        v32 = *(v27 + *(v28 + 24) + 8);
      }

      v18 = *&a1[v25[7]];
LABEL_31:

      break;
    case 9u:
      v2 = sub_1DD0DD08C();
LABEL_5:
      v3 = *(*(v2 - 8) + 8);

      v3(a1, v2);
      break;
    default:
      return;
  }
}

void sub_1DCB0D344()
{
  OUTLINED_FUNCTION_50();
  v80 = v2;
  v81 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_10_2();
  v79 = v8 - v9;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = v75 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v75 - v16;
  v18 = sub_1DD0DB04C();
  v19 = OUTLINED_FUNCTION_9(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19, v24);
  OUTLINED_FUNCTION_10_2();
  v78 = v25 - v26;
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = v75 - v30;
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v83 = v75 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = v75 - v36;
  v38 = OBJC_IVAR____TtC11SiriKitFlow22ConversationSELFHelper_conversationId;
  swift_beginAccess();
  sub_1DCB099BC(v0 + v38, v17, &qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_38_2(v17);
  if (v39)
  {
    sub_1DCB0E9D8(v17, &qword_1ECCA2618, &unk_1DD0E5C50);
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v40 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v40, qword_1EDE57DA0);
    v41 = sub_1DD0DD8EC();
    v42 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_22(v42))
    {
      v43 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v43);
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v44, v45, "[ConversationSELFHelper] No conversationId has been set");
      OUTLINED_FUNCTION_62();
    }
  }

  else
  {
    v82 = v21;
    v46 = *(v21 + 32);
    v46(v37, v17, v18);
    v47 = [objc_allocWithZone(MEMORY[0x1E69CE970]) init];
    if (v47)
    {
      v48 = v47;
      v76 = v46;
      v49 = [objc_allocWithZone(MEMORY[0x1E69CE978]) init];
      if (v49)
      {
        v50 = v49;
        sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
        v51 = v83;
        v75[0] = *(v82 + 16);
        v75[1] = v82 + 16;
        (v75[0])(v83, v37, v18);
        v52 = sub_1DCB0DEDC(v51);
        v77 = v50;
        [v50 setCnvId_];

        v53 = v80;
        if (v80)
        {
          sub_1DD0DAFEC();
          OUTLINED_FUNCTION_38_2(v14);
          if (v39)
          {
            sub_1DCB0E9D8(v14, &qword_1ECCA2618, &unk_1DD0E5C50);
          }

          else
          {
            v76(v31, v14, v18);
            v60 = v83;
            (v75[0])(v83, v31, v18);
            v61 = sub_1DCB0DEDC(v60);
            [v77 setTrpId_];

            (*(v82 + 8))(v31, v18);
          }
        }

        v62 = OBJC_IVAR____TtC11SiriKitFlow22ConversationSELFHelper_executionRequestId;
        swift_beginAccess();
        v63 = v0 + v62;
        v64 = v79;
        sub_1DCB099BC(v63, v79, &qword_1ECCA2618, &unk_1DD0E5C50);
        OUTLINED_FUNCTION_38_2(v64);
        if (v39)
        {
          sub_1DCB0E9D8(v64, &qword_1ECCA2618, &unk_1DD0E5C50);
          v65 = v82;
          if (!v53)
          {
LABEL_28:
            v66 = 0;
            goto LABEL_29;
          }
        }

        else
        {
          v67 = v78;
          v68 = OUTLINED_FUNCTION_19();
          (v76)(v68);
          v69 = AFDeviceSupportsSAE();
          v70 = v83;
          (v75[0])(v83, v67, v18);
          v71 = sub_1DCB0DEDC(v70);
          v72 = v71;
          v73 = &selRef_setSubRequestId_;
          if (!v69)
          {
            v73 = &selRef_setRequestId_;
          }

          [v77 *v73];

          v65 = v82;
          (*(v82 + 8))(v67, v18);
          if (!v53)
          {
            goto LABEL_28;
          }
        }

        v66 = sub_1DD0DDF8C();
LABEL_29:
        v74 = v77;
        [v77 setResultCandidateId_];

        [v48 setEventMetadata_];
        (*(v65 + 8))(v37, v18);
        goto LABEL_20;
      }
    }

    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v54 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v54, qword_1EDE57DA0);
    v55 = sub_1DD0DD8EC();
    v56 = sub_1DD0DE6EC();
    v57 = OUTLINED_FUNCTION_75(v56);
    v58 = v82;
    if (v57)
    {
      v59 = OUTLINED_FUNCTION_50_0();
      *v59 = 0;
      _os_log_impl(&dword_1DCAFC000, v55, v56, "[ConversationSELFHelper] Failed to create base SELF objects", v59, 2u);
      OUTLINED_FUNCTION_80();
    }

    (*(v58 + 8))(v37, v18);
  }

LABEL_20:
  OUTLINED_FUNCTION_49();
}

uint64_t OUTLINED_FUNCTION_18_5()
{
  v1 = v0[84];
  result = v0[79];
  v3 = v0[77];
  v4 = *(v0[78] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_18_7()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_18_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3[8];
  v5 = v3[4];
  v6 = v3[2];
  return v2;
}

uint64_t OUTLINED_FUNCTION_18_12()
{

  return sub_1DD0DEE5C();
}

void OUTLINED_FUNCTION_18_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_18_17(uint64_t a1, ...)
{
  va_start(va, a1);

  sub_1DCB4E718(va);
}

__n128 OUTLINED_FUNCTION_18_20@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X3>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[3] = *a3;
  return result;
}

void OUTLINED_FUNCTION_18_21()
{
  *(v4 - 200) = v1;
  *(v4 - 192) = v2;
  *(v4 - 184) = v3;
  *(v4 - 176) = v0;
}

void *OUTLINED_FUNCTION_18_22@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[15] = a1;
  v4[16] = a3;
  v4[12] = v3;
  return __swift_project_boxed_opaque_existential_1(v4 + 12, a2);
}

uint64_t OUTLINED_FUNCTION_18_23@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = v1;
  *(a1 + 32) = v2;
  *a1 = 2;

  return sub_1DD0DD7BC();
}

uint64_t OUTLINED_FUNCTION_18_25(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_18_27()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_18_28()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *(a1 + 16) = *(v20 + 80);
  *(a1 + 32) = v22;
  *(a1 + 40) = v23;
  *(a1 + 48) = v21;
  *(a1 + 56) = v19;
  v25 = a17;
  *(a1 + 64) = a16;
  *(a1 + 80) = v25;
  *(a1 + 96) = a18;
  *(a1 + 112) = a19;

  return sub_1DCB18FF0(&a10, a1 + 120);
}

uint64_t OUTLINED_FUNCTION_18_33()
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_18_34@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v3 = *(v2 - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_36@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_18_38()
{

  return sub_1DD0DBB6C();
}

uint64_t OUTLINED_FUNCTION_18_39()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_18_40(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 3, a1);
}

uint64_t OUTLINED_FUNCTION_18_42(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[19];
  v4 = v2[17];
  return v2[12];
}

uint64_t OUTLINED_FUNCTION_18_46()
{
  v2 = v0[27];
  v1 = v0[28];
  result = v0[26];
  v4 = v0[24];
  return result;
}

uint64_t OUTLINED_FUNCTION_18_48@<X0>(uint64_t a1@<X8>)
{

  return sub_1DCB22FCC(v2, v1 - a1);
}

uint64_t OUTLINED_FUNCTION_18_49()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_2_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_55()
{
  v2 = v0[86];
  v3 = v0[85];
  v4 = v0[84];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[79];
  v10 = v0[78];
}

id sub_1DCB0DEDC(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DD0DB00C();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_13_1(v5);
  (*(v6 + 8))(a1);
  return v4;
}

uint64_t sub_1DCB0DF6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_91()
{

  return sub_1DD0DE33C();
}

void OUTLINED_FUNCTION_91_1(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 1;
}

void OUTLINED_FUNCTION_91_2()
{

  JUMPOUT(0x1E12A7840);
}

uint64_t OUTLINED_FUNCTION_91_3(__int128 *a1)
{
  result = sub_1DCAFF9E8(a1, v2 + 32);
  *(v2 + 72) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_2()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_91_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  v5 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v5;
  result = *(a3 + 32);
  *(v4 + 48) = result;
  *(v4 + 64) = *(a3 + 48);
  *(v4 + 72) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_91_5()
{
  v1 = *(v0 + 416);
  v3 = *(v1 + 72);
  return v1 + 72;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void OUTLINED_FUNCTION_16_2(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void OUTLINED_FUNCTION_16_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

void OUTLINED_FUNCTION_16_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_16_8()
{
  v2 = *(v0 + 16) + 1;

  sub_1DCE18E10();
}

uint64_t OUTLINED_FUNCTION_16_9()
{
  v2 = *(v0 + 40);

  return sub_1DD0DF1DC();
}

uint64_t OUTLINED_FUNCTION_16_11(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{

  return sub_1DCAFF9E8(&a9, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_16_13()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_16_16()
{
  v4 = (v2 + *(v3 + 68));
  *v4 = v0;
  v4[1] = v1;
}

uint64_t OUTLINED_FUNCTION_16_20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 48) = *a5;
  *(a7 + 64) = a6;
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return sub_1DD0DE4BC();
}

uint64_t OUTLINED_FUNCTION_16_21()
{

  return MEMORY[0x1EEE69D10](v1, 1, v2, v1, v2, v3, v0);
}

uint64_t OUTLINED_FUNCTION_16_23()
{
  v2 = *(v0 + 208);

  return sub_1DD0DE3AC();
}

void *OUTLINED_FUNCTION_16_30()
{
  v2 = v0[4];
  v3 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v3);
}

__n128 OUTLINED_FUNCTION_16_33(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  result = a2[2];
  v5 = *(a2 + 6);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_34@<X0>(uint64_t a1@<X8>)
{
  v4 = (v3 + a1);
  v5 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  result = v4[3];
  v9 = v4[4];
  LOBYTE(v4) = *(v4 + 40);
  *(v2 + 16) = v8;
  *(v2 + 24) = result;
  *(v2 + 32) = v9;
  *(v2 + 40) = v4;
  v10 = *(v1 + 80);
  v11 = *(*(v1 + 88) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_38()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_16_39(uint64_t a1)
{

  return sub_1DCB0E9D8(a1, v1, v2);
}

void OUTLINED_FUNCTION_16_41()
{
  v2 = v0[60];
  v3 = v0[57];
  v5 = v0[54];
  v4 = v0[55];
  v6 = v0[53];
}

uint64_t OUTLINED_FUNCTION_16_48()
{

  return type metadata accessor for LegacySiriKitOutputPublisher();
}

uint64_t OUTLINED_FUNCTION_16_49()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_16_50()
{

  return ActingFlow.conclude(with:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_16_51()
{
  v4 = (*(v0 + 56) + 40 * v1);

  return sub_1DCAFF9E8(v4, v2);
}

double OUTLINED_FUNCTION_16_54()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_55()
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_16_57()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_58()
{
  v2 = *(v0 - 208);

  return sub_1DD0DEF7C();
}

double OUTLINED_FUNCTION_16_59()
{
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = -4;
  v2 = (v0 + *(v1 + 40));
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_60()
{
  v1 = *(v0 + 424);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = *(v3 + 32);
  return v2;
}

uint64_t OUTLINED_FUNCTION_16_62()
{
  result = *(v0 - 168);
  v2 = *(v0 - 384);
  return result;
}

void OUTLINED_FUNCTION_16_63()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  sub_1DCCDE224();
}

uint64_t OUTLINED_FUNCTION_16_64()
{
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1((v0 + 168), v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_16_65()
{
  v2 = v0[50];
  result = v0[51];
  v4 = v0[45];
  v3 = v0[46];
  v6 = v0[43];
  v5 = v0[44];
  v8 = v0[41];
  v7 = v0[42];
  v10 = v0[38];
  v9 = v0[39];
  v11 = v0[36];
  v12 = v0[37];
  return result;
}

void OUTLINED_FUNCTION_16_67(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = v2[1];
  v4 = *v2;
}

id OUTLINED_FUNCTION_16_68(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_16_70()
{
  result = *v1;
  *v0 = *v1;
  *(v0 + 8) = v1[1];
  *(v0 + 16) = v1[2];
  *(v0 + 24) = v1[3];
  v3 = v1[4];
  *(v0 + 40) = *(v1 + 40);
  *(v0 + 32) = v3;
  *(v0 + 48) = v1[6];
  return result;
}

uint64_t sub_1DCB0E9D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

double OUTLINED_FUNCTION_2_16()
{
  *(v0 + 120) = 0;
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_2_18(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1DCB0F8B0(a3);

  return sub_1DCB354C8(a2, v5, a3);
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_21()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_2_23(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[3];
  v4 = v2[4];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_2_25()
{
  if (v0 < 0)
  {
    return v0;
  }

  else
  {
    return v0 & 0xFFFFFFFFFFFFFF8;
  }
}

unint64_t OUTLINED_FUNCTION_2_30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_1DCB21038(a2, a3);
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_2_33()
{
  v2 = *(v0 - 184);

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_2_34()
{
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return sub_1DCB35460(v1, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_2_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{

  return sub_1DCAFF9E8(&a10, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_2_41(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_2_46()
{
  v2 = *v1;
  v3 = *(v1 + 9);
  v4 = *(v1 + 8);
  result = sub_1DCBF9BE8(v2, v4, v3);
  *v0 = v2;
  *(v0 + 8) = v4;
  *(v0 + 9) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *(v8 + 12) = 2082;

  return sub_1DCB10E9C(v10, v9, va);
}

uint64_t OUTLINED_FUNCTION_2_53(unint64_t *a1)
{

  return sub_1DCB70ABC(a1);
}

uint64_t OUTLINED_FUNCTION_2_55()
{

  return sub_1DD0DEA0C();
}

uint64_t OUTLINED_FUNCTION_2_56()
{

  return sub_1DD0DEEBC();
}

uint64_t OUTLINED_FUNCTION_2_57(__int128 *a1)
{
  result = sub_1DCAFF9E8(a1, v3 + 16);
  *(v3 + 56) = v2;
  *(v3 + 64) = v1;
  return result;
}

void OUTLINED_FUNCTION_2_58()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
}

void OUTLINED_FUNCTION_2_62()
{

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_2_64()
{
  result = *(v0 + 24);
  v2 = *(*(v0 + 16) + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_65()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 96);
  return result;
}

void OUTLINED_FUNCTION_7_4()
{
  v1 = *(v0 + 47);
  v2 = *(v0 + 46);
  v3 = *(v0 + 45);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 44);
  v7 = *(v0 + 43);
  v8 = *(v0 + 56);
}

uint64_t OUTLINED_FUNCTION_2_69@<X0>(uint64_t a1@<X8>)
{
  *(v4 + 14) = a1;
  *(v4 + 22) = 2080;

  return sub_1DCB10E9C(v2, v3, (v1 + 272));
}

uint64_t OUTLINED_FUNCTION_2_70()
{
  v3 = v0[42];
  v2 = v0[43];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];
  v8 = v0[33];
  v7 = v0[34];
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[28];
  v13 = v0[27];
  v14 = v0[24];
  v15 = v0[23];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[15];
  v20 = v0[14];
  v21 = v0[11];
  v22 = v0[10];
}

uint64_t OUTLINED_FUNCTION_2_73@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + a1))
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t OUTLINED_FUNCTION_2_74@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_76()
{

  return sub_1DCB6B83C(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_2_78()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return result;
}

void OUTLINED_FUNCTION_2_79()
{
  v1 = v0[55];
  v3 = v0[52];
  v2 = v0[53];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[45];
}

uint64_t OUTLINED_FUNCTION_87()
{

  return sub_1DD0DDE9C();
}

uint64_t OUTLINED_FUNCTION_2_85()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_2_86()
{
  result = v0 + 240;
  v2 = *(v0 + 76) & 1;
  v3 = *(v0 + 80);
  return result;
}

void *OUTLINED_FUNCTION_2_89(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  result[2] = v20;
  result[3] = a16;
  result[4] = a17;
  result[5] = a19;
  result[6] = a20;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_90(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void OUTLINED_FUNCTION_2_91()
{
  v3 = *v1;
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v5 = v1[2];

  sub_1DCEDFC80(v2, v0);
}

void OUTLINED_FUNCTION_2_92(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
  v9 = v4[2];

  sub_1DCEE0944(a3, a4);
}

uint64_t OUTLINED_FUNCTION_2_95(uint64_t a1)
{
  v3 = *(v2 + v1);
  *(v2 + v1) = a1;
}

uint64_t OUTLINED_FUNCTION_2_96()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_98(uint64_t a1)
{
  *(v1 + 56) = a1;

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_100()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_103()
{

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t OUTLINED_FUNCTION_2_106()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_112()
{
  v2 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v2;
}

void OUTLINED_FUNCTION_2_114()
{

  SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
}

uint64_t OUTLINED_FUNCTION_2_115()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_2_118()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_2_119@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1760);
  *a1 = *(v1 + 1744);
  *(a1 + 16) = v3;
  result = *(v1 + 1776);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v2 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_121()
{
  v2 = *(v0 + 80);

  return sub_1DCB28794(v2, type metadata accessor for USOParse);
}

uint64_t OUTLINED_FUNCTION_2_127(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a3 + 16;
  v4 = *(a3 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_50_4()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_50_6()
{
  *(v2 + 8) = v0;
  result = *(v1 + 16);
  v4 = *(v1 + 24);
  return result;
}

void OUTLINED_FUNCTION_50_11()
{
  *(v0 + 4) = v3;
  *(v0 + 12) = 2080;
  *(v1 + 128) = v2;

  type metadata accessor for CLAccuracyAuthorization(0);
}

uint64_t OUTLINED_FUNCTION_50_13@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + a1), *(v1 + a1 + 24));

  return type metadata accessor for SiriKitEvent(0);
}

void OUTLINED_FUNCTION_50_15()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
}

void OUTLINED_FUNCTION_50_17(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[49] = a1;
  v2[50] = a2;
  v2[46] = v3;
  v5 = v2[98];

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_50_18()
{
  *v0 = v1;
  *(v0 + 8) = v2 & 1;
  *(v0 + 9) = 1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_50_20()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_10_11()
{
  v2 = *(v0 + 672);
  v3 = *(v0 + 560);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);

  return swift_getObjectType();
}

double OUTLINED_FUNCTION_3_11()
{
  *(v0 + 120) = 0;
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_12()
{

  return sub_1DD0DBCEC();
}

uint64_t OUTLINED_FUNCTION_10_13@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v5 - 160) = a1;
  *(v5 - 152) = a2;
  *(v5 - 184) = v4;

  return sub_1DCC174D4(v3, v2);
}

id OUTLINED_FUNCTION_10_14(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1DCC1EF18(va, v1);
}

uint64_t OUTLINED_FUNCTION_10_19(uint64_t result)
{
  v3 = result & ~(-1 << *(v1 + 32));
  v4 = (-1 << v3) & ~*(v2 + 8 * (v3 >> 6));
  return result;
}

uint64_t OUTLINED_FUNCTION_10_26()
{

  return sub_1DD0DDF7C();
}

uint64_t OUTLINED_FUNCTION_10_27()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_10_28@<Q0>(uint64_t a1@<X2>, __int128 *a2@<X3>, _OWORD *a3@<X5>, uint64_t a4@<X6>, _OWORD *a5@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  a5[2] = *(a1 + 16);
  a5[3] = v5;
  a5[4] = v6;
  v7 = a3[1];
  *(a5 + 88) = *a3;
  *(a5 + 104) = v7;
  result = *a4;
  v9 = *(a4 + 16);
  *(a5 + 120) = *a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB28B08(v4, v5 + 56, a3, a4);
}

uint64_t OUTLINED_FUNCTION_10_31(uint64_t a1)
{
  *(a1 + 8) = sub_1DCD0A0D8;
  v2 = *(v1 + 424);
  return v1 + 352;
}

double OUTLINED_FUNCTION_10_32()
{
  *(v0 + 48) = -4;
  v2 = (v0 + *(v1 + 40));
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_35()
{
  v3 = *(v1 - 208);

  return sub_1DCB21A14(v3, v0);
}

void *OUTLINED_FUNCTION_10_38(void *result)
{
  result[2] = v2;
  result[3] = v3;
  result[4] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_39()
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_10_40@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v4 = (v3 + a2);
  result[2] = *v4;
  result[3] = *(v4[1] + 16);
  result[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_43()
{

  return sub_1DD0DD8EC();
}

unint64_t OUTLINED_FUNCTION_10_45()
{

  return sub_1DCB1C4D8();
}

uint64_t OUTLINED_FUNCTION_10_46(uint64_t a1)
{
  *(v1 + 8) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_10_47(uint64_t a1)
{
  *(v1 - 88) = a1;

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_10_48(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_10_49(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 15);
  return *(v2 + 7);
}

uint64_t OUTLINED_FUNCTION_10_52()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_10_53()
{

  sub_1DCB82888();
}

uint64_t OUTLINED_FUNCTION_10_55()
{
  v2 = *(v1 - 216);
  v3 = *(*(v1 - 224) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_10_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __swift_storeEnumTagSinglePayload(v10 + v11, 1, 1, v9);
  *(v10 + a9) = 0;

  return sub_1DD0DB03C();
}

uint64_t OUTLINED_FUNCTION_10_64()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_10_68()
{
  result = v0;
  v3 = *(v1 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_70()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_10_71()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_10_72()
{
  v2 = *(v0 + 248);

  return sub_1DCF653F8(v2, type metadata accessor for ResponseComponents);
}

uint64_t OUTLINED_FUNCTION_10_73(uint64_t a1)
{
  *(v2 + 176) = v1;
  *(v2 + 200) = a1;
  sub_1DCB20B30((v2 + 176), (v2 + 208));

  return swift_isUniquelyReferenced_nonNull_native();
}

id OUTLINED_FUNCTION_10_74()
{
  v4 = *(v1 + 976);

  return [v2 v4];
}

void OUTLINED_FUNCTION_10_77(void *a1, uint64_t a2, os_signpost_type_t a3, os_signpost_id_t a4, uint64_t a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v8, a3, a4, v6, a6, v7, 2u);
}

void OUTLINED_FUNCTION_10_79()
{
  v7 = v1[13];
  v2 = (v0 + v1[14]);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + v1[15]);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + v1[16]) = 0;
  *(v0 + v1[18]) = 0;
  v4 = v0 + v1[19];
  *v4 = 0;
  *(v4 + 8) = 512;
  *(v0 + v1[20]) = 0;
  *(v0 + v1[21]) = 0;
  *(v0 + v1[22]) = 0;
  *(v0 + v1[23]) = 0;
  *(v0 + v1[24]) = 0;
  *(v0 + v1[25]) = 0;
  v5 = (v0 + v1[26]);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + v1[27]) = 0;
  v6 = v1[28];
}

id OUTLINED_FUNCTION_10_80()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  *(v0 + 40) = *(v0 + 96);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 16) = v3;
  v4 = *(v2 + 16);

  return v3;
}

int8x16_t OUTLINED_FUNCTION_10_81(uint64_t a1)
{
  *(v2 + 64) = a1;
  v3 = *(v2 + 24);
  *(a1 + 16) = *(v2 + 40);
  *(a1 + 32) = v1;
  result = vextq_s8(v3, v3, 8uLL);
  *(a1 + 40) = result;
  return result;
}

void OUTLINED_FUNCTION_37_3(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (v1 + ((a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
}

void OUTLINED_FUNCTION_10_82(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[13] = a1;
  v4[14] = a3;
  v4[10] = v3;
  __swift_project_boxed_opaque_existential_1(v4 + 10, a2);

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_10_86()
{
  v1 = *(*(v0 - 280) + 8);
  result = *(v0 - 320);
  v3 = *(v0 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_87()
{

  return sub_1DD0DF0AC();
}

void OUTLINED_FUNCTION_10_88(uint64_t *a1@<X8>)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
}

void OUTLINED_FUNCTION_20_6(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

__n128 OUTLINED_FUNCTION_20_8(uint64_t a1)
{
  *(v2 + 104) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  result = *(v1 + 25);
  *(v2 + 41) = result;
  return result;
}

id OUTLINED_FUNCTION_20_11()
{

  return [v0 (v1 + 1272)];
}

void *OUTLINED_FUNCTION_20_12(void *result)
{
  result[10] = v2;
  result[11] = v1;
  v4 = *(v3 - 336);
  result[12] = *(v3 - 344);
  result[13] = v4;
  v5 = *(v3 - 328);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_14()
{

  return sub_1DCB16D50(v2, v0, v1);
}

double OUTLINED_FUNCTION_20_17@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_18()
{
  *(v4 - 120) = v2;
  *(v4 - 112) = v3;
  *(v4 - 104) = v0;
  *(v4 - 96) = v1;
  return 255;
}

uint64_t OUTLINED_FUNCTION_3_12@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_20_21()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_20_22()
{

  return sub_1DD0DEEFC();
}

uint64_t OUTLINED_FUNCTION_61_2()
{

  return sub_1DD0DF23C();
}

uint64_t OUTLINED_FUNCTION_20_25()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_20_28@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[126] = a2;
  v2[125] = result;
  v2[122] = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_20_30()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  result = *(v0 + 64);
  v4 = *(v0 + 80);
  return result;
}

double OUTLINED_FUNCTION_20_33()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_20_39(uint64_t a1)
{
  *(v3 + 72) = a1;
  result = *(v3 + 48);
  v5 = *(v3 + 24);
  *(a1 + 16) = result;
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 48) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_41()
{
  result = *v1;
  v3 = v1[1];
  *v0 = *v1;
  *(v0 + 8) = v3;
  v4 = v1[3];
  *(v0 + 16) = v1[2];
  *(v0 + 24) = v4;
  *(v0 + 32) = v1[4];
  *(v0 + 40) = *(v1 + 40);
  *(v0 + 48) = v1[6];
  return result;
}

uint64_t OUTLINED_FUNCTION_19_7()
{
  *(v0 + 168) = v1;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_19_8(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_19_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1DCC51F14(va, v11 + 115, v10, v12, v11 + 54, v11 + 67, v9, v8);
}

uint64_t OUTLINED_FUNCTION_19_11()
{

  return sub_1DD0DEDCC();
}

uint64_t OUTLINED_FUNCTION_19_14@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W8>)
{
  *(v3 - 96) = a1;
  *(v3 - 88) = a2;
  *(v3 - 87) = a3;
  return v3 - 96;
}

uint64_t OUTLINED_FUNCTION_11_9(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_19_16(uint64_t result)
{
  *(v2 + 32) = result;
  *(result + 16) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + a9) = 0;

  return sub_1DD0DB03C();
}

uint64_t OUTLINED_FUNCTION_19_18()
{

  return sub_1DCB6B83C(v0, v1, v2, v3);
}

void OUTLINED_FUNCTION_19_23()
{

  sub_1DD0DCACC();
}

void *OUTLINED_FUNCTION_19_24()
{
  *(v1 + 280) = v0;
  v2 = *(v1 + 160);
  v3 = v2[8];
  return __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
}

void OUTLINED_FUNCTION_19_28()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v5 + v0[24];
  v7 = *v5;
}

uint64_t OUTLINED_FUNCTION_19_29()
{

  return sub_1DD0DEEDC();
}

uint64_t OUTLINED_FUNCTION_19_30()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_19_37()
{
  v3 = v1[36];
  v4 = v1[34];
  v6 = v1[29];
  v5 = v1[30];
  *v3 = v0;
  *(v3 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_19_38()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_19_40()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_19_44()
{

  sub_1DCF3A6B8(v0, v1, v3, v4, v2);
}

id OUTLINED_FUNCTION_19_45(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_19_46()
{
  __swift_project_boxed_opaque_existential_1((v1 - 128), v0);

  return sub_1DD0DB28C();
}

uint64_t OUTLINED_FUNCTION_19_48(uint64_t a1)
{
  v4 = *(v2 + 8);
  *(v3 - 88) = a1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_19_49()
{
  v1 = v0[51];
  v2 = v0[49];
  v3 = v0[47];
  v4 = v0[44];
  v5 = *(v0[50] + 16);
  return v0[48];
}

uint64_t OUTLINED_FUNCTION_19_55()
{

  return type metadata accessor for IdentifiedUser();
}

uint64_t OUTLINED_FUNCTION_19_56()
{
  v2 = *(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_1DCB10E5C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1DCB10E9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DCB11BBC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1DCB0DF6C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

void sub_1DCB10F60(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_48_0();
  v13 = AFDeviceSupportsSAE();
  sub_1DCB11070(a1, 0xEu, v13, a2);
  v14 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_2(v14);
  (*(v15 + 16))(v3, a2, v14);
  v16 = OUTLINED_FUNCTION_32_11();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v14);
  sub_1DCB130C4();
}

uint64_t sub_1DCB11070@<X0>(NSObject *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v115) = a3;
  v120 = a2;
  v123 = a4;
  v5 = sub_1DD0DB04C();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v112 - v14;
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v124 = &v112 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v119 = &v112 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v118 = &v112 - v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v112 - v26;
  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v28 = sub_1DD0DD8FC();
  v29 = __swift_project_value_buffer(v28, qword_1EDE57DA0);
  v30 = v6[2];
  v122 = a1;
  v125 = v30;
  v30(v27, a1, v5);
  v121 = v29;
  v31 = sub_1DD0DD8EC();
  v32 = sub_1DD0DE6DC();
  v33 = os_log_type_enabled(v31, v32);
  v126 = v6;
  v117 = v15;
  if (v33)
  {
    v114 = v5;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v127 = v35;
    *v34 = 136315394;
    if (v120 > 0x42)
    {
      v36 = @"COMPONENTNAME_UNKNOWN";
      v37 = @"COMPONENTNAME_UNKNOWN";
    }

    else
    {
      v36 = off_1E8649FE0[v120];
      v37 = off_1E864A1F8[v120];
    }

    v39 = v36;
    v40 = v37;
    v41 = sub_1DD0DDFBC();
    v43 = v42;

    v44 = sub_1DCB10E9C(v41, v43, &v127);

    *(v34 + 4) = v44;
    *(v34 + 12) = 2080;
    v45 = sub_1DD0DAFFC();
    v47 = v46;
    v38 = v126[1];
    v48 = v27;
    v49 = v114;
    v38(v48, v114);
    v50 = sub_1DCB10E9C(v45, v47, &v127);

    *(v34 + 14) = v50;
    _os_log_impl(&dword_1DCAFC000, v31, v32, "[ConversationSELFHelper] Deriving identifier for: %s and execution ID: %s", v34, 0x16u);
    swift_arrayDestroy();
    v51 = v35;
    v5 = v49;
    MEMORY[0x1E12A8390](v51, -1, -1);
    MEMORY[0x1E12A8390](v34, -1, -1);
  }

  else
  {

    v38 = v6[1];
    v38(v27, v5);
  }

  v52 = [objc_allocWithZone(MEMORY[0x1E69CF5E0]) init];
  v53 = v124;
  if (v52)
  {
    v54 = v52;
    v55 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
    if (v55)
    {
      v56 = v55;
      v57 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
      if (v57)
      {
        v58 = v57;
        v114 = v38;
        v59 = sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
        v60 = v118;
        v61 = v122;
        v62 = v125;
        v125(v118, v122, v5);
        v112 = v59;
        v63 = sub_1DCB0DEDC(v60);
        [v58 setUuid_];

        if (v115)
        {
          v64 = 43;
        }

        else
        {
          v64 = 1;
        }

        [v58 setComponent_];
        v65 = v58;
        v66 = v120;
        [v56 setComponent_];
        v115 = v56;
        [v54 setSource_];
        v113 = v65;
        [v54 setTarget_];
        v67 = v119;
        sub_1DCB12BC0(v61, v66);
        v62(v53, v67, v5);
        v68 = v117;
        v62(v117, v61, v5);
        v69 = sub_1DD0DD8EC();
        v70 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v69, v70))
        {
          LODWORD(v121) = v70;
          v122 = v69;
          v71 = v5;
          v72 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v127 = v116;
          *v72 = 136315650;
          v73 = v114;
          if (v66 > 0x42)
          {
            v74 = @"COMPONENTNAME_UNKNOWN";
            v75 = @"COMPONENTNAME_UNKNOWN";
          }

          else
          {
            v74 = off_1E864A410[v66];
            v75 = off_1E864A628[v66];
          }

          v88 = v74;
          v89 = v75;
          v90 = sub_1DD0DDFBC();
          v92 = v91;

          v93 = sub_1DCB10E9C(v90, v92, &v127);

          *(v72 + 4) = v93;
          *(v72 + 12) = 2080;
          v94 = v124;
          v95 = sub_1DD0DAFFC();
          v97 = v96;
          v86 = v126;
          v73(v94, v71);
          v98 = sub_1DCB10E9C(v95, v97, &v127);

          *(v72 + 14) = v98;
          *(v72 + 22) = 2080;
          v99 = v117;
          v100 = sub_1DD0DAFFC();
          v102 = v101;
          v73(v99, v71);
          v103 = sub_1DCB10E9C(v100, v102, &v127);

          *(v72 + 24) = v103;
          v104 = v122;
          _os_log_impl(&dword_1DCAFC000, v122, v121, "[ConversationSELFHelper] Emitting request link: %s/%s to ORCH:%s", v72, 0x20u);
          v105 = v116;
          swift_arrayDestroy();
          MEMORY[0x1E12A8390](v105, -1, -1);
          v106 = v72;
          v5 = v71;
          MEMORY[0x1E12A8390](v106, -1, -1);
        }

        else
        {

          v86 = v126;
          v87 = v114;
          v114(v68, v5);
          v87(v53, v5);
        }

        v107 = v113;
        v108 = v118;
        v109 = v119;
        v125(v118, v119, v5);
        v110 = sub_1DCB0DEDC(v108);
        v111 = v115;
        [v115 setUuid_];

        [objc_msgSend(objc_opt_self() sharedStream)];
        swift_unknownObjectRelease();

        return (v86[4])(v123, v109, v5);
      }
    }

    else
    {
      v56 = v54;
    }
  }

  v125(v11, v122, v5);
  v76 = sub_1DD0DD8EC();
  v77 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v127 = v79;
    *v78 = 136315138;
    v80 = sub_1DD0DAFFC();
    v81 = v5;
    v83 = v82;
    v38(v11, v81);
    v84 = sub_1DCB10E9C(v80, v83, &v127);

    *(v78 + 4) = v84;
    _os_log_impl(&dword_1DCAFC000, v76, v77, "[ConversationSELFHelper] Unable to create RequestLink schemas for SELF for execution ID: %s. Will create an unlinked UUID.", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    MEMORY[0x1E12A8390](v79, -1, -1);
    MEMORY[0x1E12A8390](v78, -1, -1);
  }

  else
  {

    v38(v11, v5);
  }

  return sub_1DD0DB03C();
}

uint64_t static ConversationSELFHelper.makeUUID(fromExecutionRequestId:)()
{
  OUTLINED_FUNCTION_46_8();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v22 - v5;
  OUTLINED_FUNCTION_19();
  sub_1DD0DAFEC();
  v7 = sub_1DD0DB04C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1DCB0E9D8(v6, &qword_1ECCA2618, &unk_1DD0E5C50);
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v8 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v8, qword_1EDE57DA0);

    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_151();
      v12 = OUTLINED_FUNCTION_83();
      v22[1] = v12;
      *v11 = 136315138;
      v13 = OUTLINED_FUNCTION_19();
      *(v11 + 4) = sub_1DCB10E9C(v13, v14, v15);
      OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v16, v17, "[ConversationSELFHelper] Unable to create UUID from executionRequestId: %s.");
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    return sub_1DD0DB03C();
  }

  else
  {
    v19 = *(*(v7 - 8) + 32);
    v20 = OUTLINED_FUNCTION_33_1();
    return v21(v20);
  }
}

void OUTLINED_FUNCTION_159()
{

  JUMPOUT(0x1E12A6780);
}

unint64_t sub_1DCB11BBC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DCB1A830(a5, a6);
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
    result = sub_1DD0DECBC();
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

uint64_t OUTLINED_FUNCTION_80_0(float a1)
{
  *v1 = a1;

  return sub_1DD0DF2AC();
}

uint64_t OUTLINED_FUNCTION_80_2()
{
  v4 = v1[1];
  *v0 = *v1;
  v0[1] = v4;
  v5 = *(v2 + 24);

  return sub_1DD0DB66C();
}

void OUTLINED_FUNCTION_80_5(uint64_t a1)
{
  *(v1 + 152) = a1;

  sub_1DD0DD50C();
}

uint64_t OUTLINED_FUNCTION_80_6@<X0>(uint64_t a1@<X8>, __n128 a2@<Q1>, __int128 a3)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  return v3;
}

unint64_t OUTLINED_FUNCTION_80_7()
{

  return sub_1DCE0E1C0();
}

uint64_t OUTLINED_FUNCTION_80_9()
{
  result = type metadata accessor for PromptForValueFlowAsync.State();
  *(v0 + 72) = result;
  return result;
}

id OUTLINED_FUNCTION_80_13()
{
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);

  return sub_1DCFEB414(v2, v3, v4);
}

__n128 OUTLINED_FUNCTION_80_16(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17)
{
  result = a17;
  *a1 = a17.n128_u32[0];
  return result;
}

void *OUTLINED_FUNCTION_79_2()
{

  return memcpy((v1 - 160), v0, 0x48uLL);
}

void OUTLINED_FUNCTION_79_3()
{
  *(v0 + 400) = sub_1DCCCB3DC();

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_79_6(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

void *OUTLINED_FUNCTION_79_7(void *result)
{
  result[2] = v3;
  result[3] = v4;
  result[4] = v2;
  result[5] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_79_10()
{
  v2 = *(v0 - 280);

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_79_13(uint64_t a1)
{
  *(v1 + 16) = a1;

  return sub_1DD0DB04C();
}

uint64_t OUTLINED_FUNCTION_79_14()
{

  return type metadata accessor for NLContextUpdate();
}

uint64_t OUTLINED_FUNCTION_79_16@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);

  return type metadata accessor for ResolveConfirmFlow.ResolveConfirmFlowError();
}

uint64_t OUTLINED_FUNCTION_79_17()
{
  v2 = *(v0 + 96);

  return swift_getErrorValue();
}

void *OUTLINED_FUNCTION_79_20(void *result)
{
  v3 = *(*(v2 - 200) + v1);
  *(v2 - 200) = v3;
  result[2] = v3;
  v4 = *(*(v2 - 208) + v1);
  *(v2 - 208) = v4;
  result[3] = v4;
  v5 = *(*(v2 - 216) + v1);
  *(v2 - 216) = v5;
  result[4] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_79_21()
{

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_23_1(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_44_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 14) = a1;
  *(v1 + 22) = 2080;

  return sub_1DCB10E9C(0xD000000000000048, v2 | 0x8000000000000000, (v3 - 88));
}

uint64_t OUTLINED_FUNCTION_115(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_4()
{
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[11];
}

uint64_t OUTLINED_FUNCTION_44_5()
{
  v3 = *(v1 + 56);
  v4 = *(v2 + 16);
  return v0;
}

uint64_t OUTLINED_FUNCTION_44_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB09910(v5, v4, a3, a4);
}

void OUTLINED_FUNCTION_44_8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v11, v10, v12, 2u);
}

uint64_t OUTLINED_FUNCTION_44_9(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 96));
}

id OUTLINED_FUNCTION_44_10()
{

  return [v0 (v1 + 1104)];
}

void *OUTLINED_FUNCTION_34_4()
{
  v0[168] = 0;

  return memcpy(v0 + 16, v0 + 96, 0x49uLL);
}

uint64_t *OUTLINED_FUNCTION_44_12@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1Tm(v2);
}

uint64_t OUTLINED_FUNCTION_44_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = v11;
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  return a11;
}

void *OUTLINED_FUNCTION_44_17(void *result)
{
  *(v3 + 136) = result;
  result[2] = v4;
  result[3] = v1;
  result[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_19(uint64_t result)
{
  *(v2 + 56) = result;
  *(v2 + 64) = v1;
  v3 = *v1;
  return result;
}

BOOL OUTLINED_FUNCTION_44_22(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_44_25()
{
  result = *(v0 - 384);
  v2 = *(v0 - 368);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_26()
{

  return sub_1DD0DEDEC();
}

uint64_t OUTLINED_FUNCTION_44_28(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2[16];
  v3 = v2[17];
  v5 = v2[15];
  return v2[12];
}

void OUTLINED_FUNCTION_44_30()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_44_31()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 171);

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_44_32()
{

  return sub_1DCB4F1DC(v2 + 16, v2 + 136, v1, v0);
}

BOOL OUTLINED_FUNCTION_44_35(os_log_type_t a1)
{
  sub_1DD02C1D8(v1, *(v3 - 208), 1u);

  return os_log_type_enabled(v2, a1);
}

uint64_t OUTLINED_FUNCTION_46_3()
{
  *(v0 + 8) = sub_1DCBC263C;
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 24);
  v6 = *(v2 + 88);
  return v1;
}

uint64_t OUTLINED_FUNCTION_46_5()
{
  v2 = *(v0 + 72);

  return sub_1DD0DD8FC();
}

uint64_t OUTLINED_FUNCTION_46_7@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v2 + 64);
  v6 = *(v1 + 56) + 48 * (__clz(__rbit64(v3)) | (a1 << 6));

  return sub_1DCC17FA8(v6, v2 + 16);
}

uint64_t OUTLINED_FUNCTION_46_9()
{
}

id OUTLINED_FUNCTION_46_10(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_46_11()
{
  v3 = *(v1 + 16);
  *(v1 + 16) = v0;
  v4 = *(v1 + 24);
  *(v1 + 24) = 2;

  sub_1DCD070F8(v3, v4);
}

uint64_t OUTLINED_FUNCTION_46_12()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_46_13()
{
  v11 = *(v0 + 107);
  v12 = *(v0 + 108);
  v2 = *(v0 + 106);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 105);
  v6 = *(v0 + 104);
  v7 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_46_14()
{
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[25];
}

uint64_t OUTLINED_FUNCTION_46_19(uint64_t a1)
{
  *(v1 + 424) = a1;

  return type metadata accessor for PromptResult();
}

uint64_t OUTLINED_FUNCTION_46_21(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1DCB651D0(v1);
}

void OUTLINED_FUNCTION_46_23(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
}

__n128 OUTLINED_FUNCTION_46_24()
{
  v1 = *(v0 - 144);
  result = *(v0 - 176);
  v3 = *(v0 - 160);
  *(v0 - 224) = result;
  *(v0 - 208) = v3;
  *(v0 - 192) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_46_27()
{

  return sub_1DD0DE02C();
}

BOOL OUTLINED_FUNCTION_245()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t result)
{
  *(v1 + 112) = result;
  v3 = *v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_6()
{

  return swift_getErrorValue();
}

double OUTLINED_FUNCTION_31_7()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0;
  return result;
}

void OUTLINED_FUNCTION_36_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_31_12()
{
}

uint64_t OUTLINED_FUNCTION_31_16()
{
  v2 = v0[52];
  v3 = v0[49];
  v4 = v0[47];
}

uint64_t OUTLINED_FUNCTION_31_17()
{

  return sub_1DCB285E0(v0, type metadata accessor for NLRouterParse);
}

__n128 OUTLINED_FUNCTION_31_19(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(v9 + 144) = a1;
  result = a9;
  a1[1] = a9;
  a1[2].n128_u64[0] = v10;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_20()
{

  return sub_1DCB10E9C(v1, v0, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_31_26()
{

  return type metadata accessor for SiriKitFlowFrameInput();
}

void OUTLINED_FUNCTION_31_28(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_31_29(char a1@<W8>)
{
  *(v4 - 96) = v1;
  *v2 = a1;
  *(v2 + 8) = v3;

  sub_1DD0DCF8C();
}

void OUTLINED_FUNCTION_31_33()
{

  sub_1DD0DCEEC();
}

uint64_t OUTLINED_FUNCTION_31_34()
{
  result = *(v0 - 232);
  v2 = *(v0 - 272);
  v3 = *(v0 - 176);
  return result;
}

__n128 *OUTLINED_FUNCTION_83_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

void OUTLINED_FUNCTION_83_2()
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 144);
  v4 = *(v1 + 128);
  **(v1 + 160) = v0;
}

uint64_t OUTLINED_FUNCTION_83_3(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1DCB10E9C(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_83_4(uint64_t a1)
{

  return sub_1DCB0E9D8(a1, v1, v2);
}

void OUTLINED_FUNCTION_83_5(uint64_t a1@<X8>)
{
  *(a1 + 72) = v2;
  *(a1 + 80) = v1;
  *(a1 + 88) = 0;
}

uint64_t OUTLINED_FUNCTION_83_6()
{

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_83_8(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1DCB10E9C(v3, v4, va);
}

void OUTLINED_FUNCTION_83_9()
{
  v2 = *(v1 + 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_83_10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 + 144) + 120;

  return sub_1DCB099BC(v6, v4 + 760, a3, a4);
}

uint64_t OUTLINED_FUNCTION_83_12(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_83_14()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v0[3] - 8);
}

void sub_1DCB12BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = sub_1DD0DB00C();
  v22 = [v10 derivedIdentifierForComponentName:a2 fromSourceIdentifier:v11];

  if (v22)
  {
    sub_1DD0DB02C();
    v12 = v22;
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      swift_once();
    }

    v13 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v13, qword_1EDE57DA0);
    (*(v5 + 16))(v9, a1, v4);
    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      v18 = sub_1DD0DAFFC();
      v20 = v19;
      (*(v5 + 8))(v9, v4);
      v21 = sub_1DCB10E9C(v18, v20, &v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1DCAFC000, v14, v15, "[ConversationSELFHelper] Failed to create a derived identifier for SELF for execution ID: %s. Will create a random UUID.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E12A8390](v17, -1, -1);
      MEMORY[0x1E12A8390](v16, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    sub_1DD0DB03C();
  }
}

void sub_1DCB12E8C()
{
  OUTLINED_FUNCTION_50();
  v0 = sub_1DD0DB04C();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48_0();
  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v5 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v5, qword_1EDE57DA0);
  sub_1DD0DCF8C();
}

void sub_1DCB130D8()
{
  OUTLINED_FUNCTION_46_8();
  v3 = *v2;
  swift_beginAccess();
  sub_1DCB13160(v1, v0 + v3);
  swift_endAccess();
  OUTLINED_FUNCTION_86();
  sub_1DCB12E8C();
}

uint64_t sub_1DCB13160(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCB131E0()
{
  sub_1DCB132FC();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB13214()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB1324C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t _s11SiriKitFlow27OutputPublisherAsyncAdapterCfD_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB132BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t *sub_1DCB132FC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[12];

  return v0;
}

uint64_t ContactsManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t ContactsManagerAsync.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB133A4()
{
  sub_1DCB133FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_1DCB133FC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_59();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 96)], *(v1 + 80));
  OUTLINED_FUNCTION_66();
  v4 = *&v0[*(v3 + 104)];

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v5 + 112)]);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v6 + 120)]);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v7 + 128)]);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v8 + 136)]);
  OUTLINED_FUNCTION_66();
  v10 = *&v0[*(v9 + 144)];

  OUTLINED_FUNCTION_66();
  v12 = *(v11 + 152);
  v13 = *(v1 + 88);
  OUTLINED_FUNCTION_4_11();
  v14 = type metadata accessor for RCHFlowAsync.State();
  OUTLINED_FUNCTION_13_1(v14);
  (*(v15 + 8))(&v0[v12]);
  return v0;
}