void OUTLINED_FUNCTION_24()
{

  JUMPOUT(0x23192B930);
}

void OUTLINED_FUNCTION_29()
{

  JUMPOUT(0x23192B930);
}

uint64_t OUTLINED_FUNCTION_4_0()
{
  v2 = v1[125];
  sub_2311D38A8(v0, (v1 + 42));
  v3 = v1[36];
  __swift_project_boxed_opaque_existential_1(v1 + 32, v1[35]);
  v4 = *(v3 + 8);

  return sub_231367AD0();
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_4_1()
{
  v1 = *(v0 - 104);
  v2 = *(v0 - 96);
  __swift_project_boxed_opaque_existential_1((v0 - 128), v1);
  v3 = *(v2 + 56);
  return v1;
}

void OUTLINED_FUNCTION_57(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_5(unint64_t a1@<X8>)
{

  sub_23126DA48(a1 > 1, v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_4_11(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_4_17(uint64_t a1)
{
  *(v1 + 32) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

void OUTLINED_FUNCTION_19_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_4_19()
{
  if (*(*v0 + 24) > v1)
  {
    v2 = *(*v0 + 24);
  }
}

uint64_t OUTLINED_FUNCTION_4_23(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 200);

  return sub_2311CFD58(v5, v2, (v3 - 128));
}

uint64_t OUTLINED_FUNCTION_4_25(uint64_t a1)
{
  *(a1 + 8) = sub_2313073D8;
  v2 = v1[31];
  v3 = v1[32];
  v4 = v1[30];
  return v1[29];
}

uint64_t OUTLINED_FUNCTION_4_27(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2[119];
  v4 = v2[118];
  v5 = v2[97];
  return result;
}

void OUTLINED_FUNCTION_4_29(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_4_30()
{
  v2 = v0[39];
  result = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[34];
  v7 = v0[30];
  v6 = v0[31];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[22];
  v11 = v0[23];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_32()
{

  return sub_23136A820();
}

uint64_t OUTLINED_FUNCTION_4_34()
{
  v3 = *(v0 + 216);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  **(v0 + 104) = v1;
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_60()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29_3()
{
  v2 = *(v1 - 176);
  result = v0;
  *(v1 - 224) = *(*(v1 - 184) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return sub_23136A700();
}

uint64_t OUTLINED_FUNCTION_29_10()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_29_11()
{
  v2 = v0[32];
  result = v0[33];
  v3 = v0[31];
  v4 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[14];
  v12 = v0[15];
  return result;
}

uint64_t OUTLINED_FUNCTION_29_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2 + a2 + *(v4 + 72) * v3;

  return sub_2311E18C4(a1, v6);
}

uint64_t dispatch thunk of SuggestionServiceAPIProvider.getService()()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_35_9();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_3_3();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_33(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_31_12(v6);

  return v9(v8);
}

void OUTLINED_FUNCTION_15()
{

  JUMPOUT(0x23192B930);
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_56_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_67()
{

  return swift_task_alloc();
}

void *OUTLINED_FUNCTION_6_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{

  return sub_2311E940C(v10, v12, v13, v14, v15, v11, a7, a8, a9, a10);
}

void OUTLINED_FUNCTION_6_2()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[6];
  v5 = v0[7];
}

uint64_t OUTLINED_FUNCTION_63()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_7()
{
  *v0 = *(v2 - 88);
  v3 = *(v1 + 32);
  return *(v2 - 136);
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1)
{
  *(v2 + 608) = a1;
  *(v2 + 576) = v3;
  *(v1 + 16) = v4;
  return sub_2311D38A8((v2 + 576), v1 + 40 * v5 + 32);
}

void OUTLINED_FUNCTION_19_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_6_10()
{
  v5 = v1[30];
  v4 = v1[31];
  v7 = v1[28];
  v6 = v1[29];
  v9 = v1[24];
  v8 = v1[25];
  v10 = v1[20];
  v11 = v1[21];
  v12 = v1[18];
  *(v2 - 136) = v1[19];
  *(v2 - 128) = v12;
  v13 = v1[16];
  *(v2 - 120) = v1[17];
  *(v2 - 112) = v13;
  *(v2 - 104) = v1[13];

  sub_23134B104(v0);
}

uint64_t OUTLINED_FUNCTION_6_14()
{
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[36];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];
  v10 = v0[28];
}

uint64_t OUTLINED_FUNCTION_6_15()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 157);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 167);

  return sub_2311D1F18((v0 + 172), v1, v2);
}

void OUTLINED_FUNCTION_6_17()
{

  sub_23126DC90();
}

void *OUTLINED_FUNCTION_6_19()
{
  v1 = *(v0 + 1016);
  v2 = v1[6];
  return __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
}

uint64_t OUTLINED_FUNCTION_6_21()
{
  v4 = v0[27];
  v5 = v0[26];
  v2 = v0[24];
  v6 = v0[21];
  v7 = v0[18];
}

uint64_t OUTLINED_FUNCTION_6_22(uint64_t a1)
{
  *(a1 + 8) = sub_2312FAE08;
  v2 = *(v1 + 56);
  return *(v1 + 24);
}

void OUTLINED_FUNCTION_6_24()
{

  JUMPOUT(0x23192A730);
}

void OUTLINED_FUNCTION_6_25()
{
  v2 = *(v0 + 16) + 1;

  sub_2311F5764();
}

uint64_t OUTLINED_FUNCTION_6_26@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 24);
  v5 = *(v1 + 8);

  return sub_231369EE0();
}

void OUTLINED_FUNCTION_6_28()
{
  v2 = v0[91];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[78];
  v10 = v0[77];
  v11 = v0[74];
  v12 = v0[71];
  v13 = v0[70];
  v14 = v0[69];
  v15 = v0[66];
  v16 = v0[65];
  v17 = v0[62];
  v1 = v0[59];
  v18 = v0[61];
  v19 = v0[60];
}

uint64_t OUTLINED_FUNCTION_6_30()
{
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[9];
}

uint64_t OUTLINED_FUNCTION_6_31()
{

  return sub_23136A890();
}

uint64_t OUTLINED_FUNCTION_6_32()
{
  v2 = *(*(v1 - 104) + 8);
  result = v0;
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_33()
{

  return sub_231369870();
}

uint64_t sub_2311CE6B0()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[6];
  v2 = v1[5];
  v3 = v1[6];
  v4 = *(OUTLINED_FUNCTION_14_27(v1 + 2) + 16);
  OUTLINED_FUNCTION_11_13();
  v14 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_231327308;
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[3];
  v12 = OUTLINED_FUNCTION_38_4(v0[2]);

  return v14(v12);
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1)
{
  *(a1 + 8) = sub_2311E04D8;
  v3 = v2[9];
  v4 = v2[10];
  v5 = v2[8];
  return v1;
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_40_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_10_6()
{

  JUMPOUT(0x23192A730);
}

uint64_t OUTLINED_FUNCTION_10_9()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_13@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_10_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_17(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = *(v4 + 16);
  return v3;
}

BOOL OUTLINED_FUNCTION_18_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_10_18(uint64_t result)
{
  *(result + 16) = 0x4874736567677573;
  *(result + 24) = 0xEB00000000706C65;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_21(uint64_t result)
{
  *(v1 + 240) = result;
  v2 = *(result - 8);
  return result;
}

void OUTLINED_FUNCTION_10_22()
{
  *(v3 + 8 * (v2 >> 6) + 64) |= 1 << v2;
  v4 = (*(v3 + 48) + 16 * v2);
  *v4 = v1;
  v4[1] = v0;
  v5 = *(v3 + 56) + 32 * v2;
}

uint64_t OUTLINED_FUNCTION_10_23()
{
  v1 = v0[173];
  v2 = v0[172];
  v3 = v0[152];
  v4 = v0[150];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return sub_2313682A0();
}

void OUTLINED_FUNCTION_10_25()
{

  JUMPOUT(0x23192B930);
}

uint64_t OUTLINED_FUNCTION_10_26()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_10_32()
{
  v5 = __clz(__rbit64(v2)) | (v1 << 6);
  v6 = (*(v0 + 48) + 16 * v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + 56) + 32 * v5;

  return sub_2311D1D6C(v9, v3 - 120);
}

uint64_t OUTLINED_FUNCTION_10_33()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_10_34()
{
  v3 = v1[28];
  v4 = v1[19];
  v5 = v1[16];
  v6 = v1[17];
  v7 = v1[13];
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

uint64_t sub_2311CEC7C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231209AAC;

  return sub_2311CED18(a1);
}

uint64_t sub_2311CED18(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_8_5(sub_2311CF2B0, v1);
}

uint64_t OUTLINED_FUNCTION_34()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_34_6(uint64_t result)
{
  *(v2 - 88) = result;
  v3 = *(v1 + 16);
  return result;
}

void OUTLINED_FUNCTION_34_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_34_14()
{
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14_2()
{
  v5 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v3 = *(v1 + 104);
  return v2;
}

uint64_t OUTLINED_FUNCTION_14_3()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_14_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t OUTLINED_FUNCTION_14_7(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t a5, uint64_t a6)
{

  return sub_231216CAC(v6, a2, a3, a4, v7, a6);
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return sub_2311F5CF8(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_14_11()
{

  return sub_23136A140();
}

uint64_t OUTLINED_FUNCTION_14_18(uint64_t a1)
{

  return sub_2311D1F18(a1, v1, v2);
}

void OUTLINED_FUNCTION_14_20()
{
  if (*(*v0 + 24) > v1)
  {
    v2 = *(*v0 + 24);
  }
}

uint64_t OUTLINED_FUNCTION_14_23()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_26@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 + a1);
  v8 = *v5;
  v7 = *(v5 + 8);

  return sub_2311CF324(v3 + v1, v2 + v1);
}

double OUTLINED_FUNCTION_14_29(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 40);
  v5 = *(v2 + 24);
  return v3;
}

uint64_t OUTLINED_FUNCTION_14_31()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14_32(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;

  return sub_2311D38A8(a2, v2 + 24);
}

uint64_t sub_2311CF2B0()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  swift_beginAccess();
  sub_2311CF324(v1 + 112, v2);
  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_2311CF324(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2311CF388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_26_0(v3);
  (*v4)(a2);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_2()
{

  return swift_arrayDestroy();
}

void *OUTLINED_FUNCTION_19_4()
{
  v2 = v0[6];
  v3 = v0[5];

  return __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
}

uint64_t OUTLINED_FUNCTION_19_5(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 288);

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
}

BOOL OUTLINED_FUNCTION_19_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_19_9()
{
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[2];
}

void OUTLINED_FUNCTION_19_14()
{

  sub_23120F9F8();
}

void OUTLINED_FUNCTION_19_16()
{
  *(*(v1 + 56) + 8 * v0) = *(v2 - 104);
  ++*(v1 + 16);
  v3 = *(v2 - 136);
}

void OUTLINED_FUNCTION_19_17()
{
  v2 = v0[145];
  v3 = v0[142];
  v4 = v0[141];
  v5 = v0[138];
  v1 = v0[135];
  v6 = v0[134];
}

uint64_t OUTLINED_FUNCTION_19_19()
{
  v2 = v0[27];
  result = v0[28];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[12];
  v11 = v0[13];
  return result;
}

void OUTLINED_FUNCTION_40_3()
{

  JUMPOUT(0x23192B930);
}

uint64_t OUTLINED_FUNCTION_40_5()
{
  v2 = *(v0 + 16);

  return sub_23136A020();
}

uint64_t OUTLINED_FUNCTION_40_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_12()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return sub_2313682A0();
}

void OUTLINED_FUNCTION_40_13()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[10];
}

uint64_t sub_2311CF808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2311D05C8;

  return SuggestionService.logEngagement(for:intent:invocationType:)(a1, a2, a3, a4);
}

uint64_t SuggestionService.logEngagement(for:intent:invocationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_2311CF8E4()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0[6] + 64);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_231319C24;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  OUTLINED_FUNCTION_38_4(v0[2]);

  return sub_2311CF97C();
}

uint64_t sub_2311CF97C()
{
  OUTLINED_FUNCTION_8();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_231368180();
  v1[7] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_43();
  v10 = sub_231369050();
  v1[10] = v10;
  OUTLINED_FUNCTION_0(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_43();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DC0, &unk_231370710);
  v1[13] = v14;
  OUTLINED_FUNCTION_0(v14);
  v1[14] = v15;
  v17 = *(v16 + 64);
  v1[15] = OUTLINED_FUNCTION_43();
  v18 = sub_231367550();
  v1[16] = v18;
  OUTLINED_FUNCTION_0(v18);
  v1[17] = v19;
  v21 = *(v20 + 64);
  v1[18] = OUTLINED_FUNCTION_43();
  v22 = sub_2313698C0();
  v1[19] = v22;
  OUTLINED_FUNCTION_0(v22);
  v1[20] = v23;
  v25 = *(v24 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43768, &qword_23136D5F0) - 8) + 64);
  v1[23] = OUTLINED_FUNCTION_43();
  v27 = sub_2313667A0();
  v1[24] = v27;
  OUTLINED_FUNCTION_0(v27);
  v1[25] = v28;
  v30 = *(v29 + 64);
  v1[26] = OUTLINED_FUNCTION_43();
  v31 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_2311CFBF4()
{
  OUTLINED_FUNCTION_8();
  v1[13] = v2;
  v1[14] = v0;
  v1[15] = *v0;
  v3 = sub_231368180();
  v1[16] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[17] = v4;
  v6 = *(v5 + 64);
  v1[18] = OUTLINED_FUNCTION_43();
  v7 = sub_2313698C0();
  v1[19] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[20] = v8;
  v10 = *(v9 + 64);
  v1[21] = OUTLINED_FUNCTION_43();
  v11 = sub_231367E50();
  v1[22] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[23] = v12;
  v14 = *(v13 + 64);
  v1[24] = OUTLINED_FUNCTION_43();
  v15 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2311CFD58(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_231369EE0();
  v6 = sub_2311D1C6C(v11, 0, 0, 1, a1, a2);
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
    sub_2311D1D6C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t OUTLINED_FUNCTION_31_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));

  return sub_2311D1D6C(v0 + 808, v0 + 840);
}

uint64_t OUTLINED_FUNCTION_31_3@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 256);
  result = *(v2 + 264);
  v5 = *(v2 + 248);
  v6 = *(v4 + 16);
  v7 = v1 + ((*(v2 + 464) + 32) & ~*(v2 + 464)) + *(v4 + 72) * a1;
  return result;
}

void OUTLINED_FUNCTION_31_7()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
}

uint64_t OUTLINED_FUNCTION_31_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31_13()
{

  return sub_23136A860();
}

uint64_t OUTLINED_FUNCTION_31_14(uint64_t a1)
{
  *(v1 + 224) = a1;
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);

  return sub_2313677D0();
}

void OUTLINED_FUNCTION_31_15(uint64_t a1@<X8>)
{
  *(v6 + v1) |= v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v4;
  v7[1] = v5;
  v8 = *(v3 + 56);
}

uint64_t OUTLINED_FUNCTION_31_16(uint64_t a1, uint64_t a2)
{

  return sub_2311E66F0(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_31_20()
{
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[34];
  v5 = v0[27];
}

uint64_t OUTLINED_FUNCTION_31_21()
{

  return sub_231228E9C(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_31_23(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_2311CFD58(0xD00000000000003CLL, a2, va);
}

uint64_t OUTLINED_FUNCTION_8_1()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;

  return sub_2311EB450(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_1_5()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return sub_231368300();
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t a1, uint64_t a2)
{
  v2[55] = a1;
  v2[56] = a2;
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_8_3(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return sub_23136AA20();
}

uint64_t OUTLINED_FUNCTION_8_18(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 72);
  return v2 + 16;
}

uint64_t OUTLINED_FUNCTION_8_20()
{
  *(v0 + 464) = *(v0 + 64);

  return sub_2311CF324(v0 + 24, v0 + 72);
}

void OUTLINED_FUNCTION_8_21(uint64_t a1@<X8>)
{
  *(v1 + 256) = a1;
  *(v1 + 264) = 0;
  v6 = *(v1 + 304);
  v2 = *(v1 + 300);
  v3 = *(v1 + 160);
  v7 = *(v1 + 168);
  v5 = *(v1 + 144);
  v4 = *(v1 + 152);
}

uint64_t OUTLINED_FUNCTION_8_27()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[15];
  return result;
}

uint64_t OUTLINED_FUNCTION_8_29()
{

  return sub_23136A790();
}

uint64_t OUTLINED_FUNCTION_8_32()
{

  return sub_23136A890();
}

uint64_t OUTLINED_FUNCTION_8_33@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = v1 - a1;

  return type metadata accessor for Environment();
}

void OUTLINED_FUNCTION_52_2()
{
  v5 = v0[45];
  v6 = v0[46];
  v3 = v0[43];
  v4 = v0[44];
  v2 = v0[41];
  v1 = v0[42];
}

uint64_t OUTLINED_FUNCTION_52_5()
{

  return sub_231369EE0();
}

uint64_t OUTLINED_FUNCTION_52_6(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_52_8(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = (*(v1 + 48) + 16 * (a1 | (v2 << 6)));
  v5 = *v4;
  v6 = v4[1];
}

uint64_t sub_2311D05C8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_56_0();

  return v5();
}

uint64_t OUTLINED_FUNCTION_11_1()
{
  v2 = *(v0 + 112);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1)
{
  *(v2 + 456) = a1;
  v4 = *(*(v1 + 8) + 8);

  return sub_23136A260();
}

uint64_t OUTLINED_FUNCTION_11_3()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_11_5()
{
  v2 = *(*(v1 - 576) + 8);
  result = v0;
  v4 = *(v1 - 568);
  return result;
}

void OUTLINED_FUNCTION_11_7()
{

  sub_2311F4E34();
}

void OUTLINED_FUNCTION_11_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_11_10()
{

  return sub_23136A700();
}

uint64_t OUTLINED_FUNCTION_11_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_12(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231368300();
}

uint64_t OUTLINED_FUNCTION_11_15()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;
  v4 = *(v2 - 96);

  return sub_231369EE0();
}

uint64_t OUTLINED_FUNCTION_11_16@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_231369160();
}

void OUTLINED_FUNCTION_11_17(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void (*a33)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{

  sub_231294390(a1, a2, a3, a4, a5, a6, a7, a8, a10.n128_i64[0], a10.n128_i64[1], a11.n128_i64[0], a11.n128_i64[1], a12.n128_i64[0], a12.n128_i64[1], a9, v33, v34, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t OUTLINED_FUNCTION_11_18(uint64_t a1)
{
  *(a1 + 8) = sub_2312A6BCC;
  v2 = v1[18];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[13];
  return 0;
}

uint64_t OUTLINED_FUNCTION_11_20(uint64_t result)
{
  *(v1 + 224) = result;
  *(v1 + 232) = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_24()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

void *OUTLINED_FUNCTION_11_25(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
  result = v1 + 1;
  v3 = v1[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_27()
{

  return swift_beginAccess();
}

uint64_t dispatch thunk of SuggestionServiceAPI.logEngagement(for:intent:invocationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 16);
  OUTLINED_FUNCTION_11_13();
  v20 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_30(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_34_0(v17);

  return v20(a1, a2, a3, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_32()
{
  *(v1 + 12) = 2080;
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);

  return sub_2311CFD58(v4, v5, (v2 - 88));
}

void OUTLINED_FUNCTION_43_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_32_2()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 192);
  return result;
}

__n128 *OUTLINED_FUNCTION_38_0(__n128 a1, __n128 a2, uint64_t a3, __n128 *a4)
{
  *a4 = a1;
  a4[1] = a2;
  return a4;
}

uint64_t OUTLINED_FUNCTION_32_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 16);
}

void OUTLINED_FUNCTION_32_11(uint64_t a1@<X8>)
{
  *(v4 + v1) |= v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v5;
  v7[1] = v6;
  v8 = *(v3 + 56);
}

uint64_t OUTLINED_FUNCTION_32_12(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return MEMORY[0x2821C7600](v1);
}

uint64_t OUTLINED_FUNCTION_32_13()
{

  return sub_2313682A0();
}

void OUTLINED_FUNCTION_32_14()
{

  sub_2311F5764();
}

uint64_t OUTLINED_FUNCTION_32_16(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t sub_2311D0D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_231209AAC;

  return sub_2311D0DC8(a1, a2, a3, a4);
}

uint64_t sub_2311D0DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_2311D0DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_29_1();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[23];
  v28 = v24[24];
  v29 = v24[2];
  v30 = v24[3];
  sub_231366760();
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    v31 = v24[21];
    v32 = v24[3];
    sub_2311D1F18(v24[23], &qword_27DD43768, &qword_23136D5F0);
    sub_2313690F0();
    sub_231369EE0();
    v33 = sub_2313698A0();
    v34 = sub_23136A3B0();

    v35 = os_log_type_enabled(v33, v34);
    v37 = v24[20];
    v36 = v24[21];
    v38 = v24[19];
    if (v35)
    {
      v40 = v24[2];
      v39 = v24[3];
      v41 = OUTLINED_FUNCTION_60();
      v42 = OUTLINED_FUNCTION_29_0();
      a13 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_2311CFD58(v40, v39, &a13);
      _os_log_impl(&dword_2311CB000, v33, v34, "Failed to convert requestId: %s to UUID", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*(v37 + 8))(v36, v38);
    OUTLINED_FUNCTION_6_30();

    OUTLINED_FUNCTION_9_30();
    OUTLINED_FUNCTION_8_4();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v52 = v24[22];
    v54 = v24[17];
    v53 = v24[18];
    v55 = v24[16];
    v56 = v24[4];
    (*(v24[25] + 32))(v24[26], v24[23], v24[24]);
    sub_2313690F0();
    (*(v54 + 16))(v53, v56, v55);
    v57 = sub_2313698A0();
    v58 = sub_23136A390();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v24[22];
    v62 = v24[19];
    v61 = v24[20];
    v64 = v24[17];
    v63 = v24[18];
    v65 = v24[16];
    if (v59)
    {
      v78 = v24[19];
      v66 = OUTLINED_FUNCTION_60();
      v76 = v58;
      v67 = OUTLINED_FUNCTION_29_0();
      a13 = v67;
      *v66 = 136315138;
      sub_2311D11B4(&qword_280F7CAC8, MEMORY[0x277D60930]);
      v68 = sub_23136A8B0();
      v77 = v60;
      v70 = v69;
      (*(v64 + 8))(v63, v65);
      v71 = sub_2311CFD58(v68, v70, &a13);

      *(v66 + 4) = v71;
      _os_log_impl(&dword_2311CB000, v57, v76, "[EngagementService] Logging engagement for intent: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v61 + 8))(v77, v78);
    }

    else
    {

      (*(v64 + 8))(v63, v65);
      (*(v61 + 8))(v60, v62);
    }

    v72 = swift_task_alloc();
    v24[27] = v72;
    *v72 = v24;
    v72[1] = sub_23134C338;
    v73 = v24[6];
    v74 = v24[4];
    OUTLINED_FUNCTION_8_4();

    return sub_2311CFBF4();
  }
}

uint64_t sub_2311D11B4(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_42(uint64_t a1@<X8>)
{
  v3 = v1 + 16 * a1;
  v4 = *(v3 + 32);
  *(v2 + 136) = v4;
  v5 = *(v3 + 40);
  *(v2 + 144) = *(v4 + 16);
}

uint64_t OUTLINED_FUNCTION_42_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 1056) = a2;
  v5 = a1 + a2 * v3 + 32;

  return sub_2311CF388(v5, v2 + 496);
}

uint64_t OUTLINED_FUNCTION_42_2()
{

  return sub_231369180();
}

uint64_t OUTLINED_FUNCTION_42_3()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_42_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_2311CFD58(v5, v4, va);
}

void *OUTLINED_FUNCTION_42_6()
{
  *v0 = v1;
  v0[1] = v2;
  result = v0;
  v5 = *(v3 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_42_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_12()
{

  return MEMORY[0x2821C72F0](v2 + 56, v0, v1);
}

id OUTLINED_FUNCTION_42_15(void *a1)
{

  return [a1 (v1 + 1932)];
}

void sub_2311D13B0()
{
  v65 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[13];
  v5 = *(v0[14] + 16);
  sub_231367510();
  (*(v2 + 104))(v1, *MEMORY[0x277D60CA8], v3);
  SuggestionPool.getSuggestions(identifier:)();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  if (v7)
  {
    v63 = MEMORY[0x277D84F90];
    v8 = sub_23125D7A0(v7);
    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {

        v14 = v63;
        goto LABEL_15;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23192AD10](i, v7);
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v10 = *(v7 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_2313676D0();
      v11 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v12 = sub_231368F80();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
      if (v12)
      {
      }

      else
      {
        sub_23136A6A0();
        v13 = *(v63 + 16);
        sub_23136A6D0();
        sub_23136A6E0();
        sub_23136A6B0();
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v14 = 0;
LABEL_15:
  v0[25] = v14;
  v15 = v0[21];
  sub_2313690F0();
  sub_231369EE0();
  v16 = sub_2313698A0();
  v17 = sub_23136A390();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_60();
    v19 = OUTLINED_FUNCTION_29_0();
    v61 = v19;
    *v18 = 136315138;
    v55 = v19;
    buf = v18;
    if (v14)
    {
      v54 = v17;
      v20 = sub_23125D7A0(v14);
      v21 = MEMORY[0x277D84F90];
      if (v20)
      {
        v22 = v20;
        v53 = v16;
        v62 = MEMORY[0x277D84F90];
        sub_231369EE0();
        sub_2311F4E34();
        if (v22 < 0)
        {
LABEL_43:
          __break(1u);
          return;
        }

        v23 = 0;
        v21 = v62;
        v59 = v14 & 0xC000000000000001;
        v60 = v14;
        v57 = v14 & 0xFFFFFFFFFFFFFF8;
        v58 = v22;
        v24 = (v0[17] + 8);
        do
        {
          if (v59)
          {
            MEMORY[0x23192AD10](v23, v60);
          }

          else
          {
            if ((v23 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v23 >= *(v57 + 16))
            {
              goto LABEL_42;
            }

            v25 = *(v60 + 8 * v23 + 32);
          }

          v26 = v0[18];
          v27 = v0[16];
          v63 = 0;
          v64 = 0xE000000000000000;
          sub_2313676D0();
          v28 = v0[6];
          __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
          v29 = *(v28 + 16);
          sub_23136A8D0();
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
          MEMORY[0x23192A730](58, 0xE100000000000000);
          sub_2313676F0();
          v30 = sub_231368130();
          v32 = v31;
          (*v24)(v26, v27);
          MEMORY[0x23192A730](v30, v32);

          v62 = v21;
          v33 = *(v21 + 16);
          if (v33 >= *(v21 + 24) >> 1)
          {
            sub_2311F4E34();
            v21 = v62;
          }

          ++v23;
          *(v21 + 16) = v33 + 1;
          v34 = v21 + 16 * v33;
          *(v34 + 32) = 0;
          *(v34 + 40) = 0xE000000000000000;
        }

        while (v58 != v23);
        v14 = v60;

        v16 = v53;
      }

      v0[12] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
      sub_2311E5648();
      v42 = sub_231369F50();
      v44 = v43;

      v17 = v54;
    }

    else
    {
      v42 = 0;
      v44 = 0xE000000000000000;
    }

    v46 = v0[20];
    v45 = v0[21];
    v47 = v0[19];
    v48 = sub_2311CFD58(v42, v44, &v61);

    *(buf + 4) = v48;
    _os_log_impl(&dword_2311CB000, v16, v17, "[EngagementService] Found suggestions [%s]", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v46 + 8))(v45, v47);
    if (!v14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v36 = v0[20];
    v35 = v0[21];
    v37 = v0[19];

    (*(v36 + 8))(v35, v37);
    if (!v14)
    {
LABEL_36:
      v49 = v0[24];
      v50 = v0[21];
      v51 = v0[18];

      v52 = v0[1];

      v52(0);
      return;
    }
  }

  v38 = v0[15];
  v39 = v0[13];
  v40 = swift_task_alloc();
  v0[26] = v40;
  *(v40 + 16) = v39;
  *(v40 + 24) = v38;
  v41 = swift_task_alloc();
  v0[27] = v41;
  *v41 = v0;
  v41[1] = sub_23134CC3C;

  sub_2312ABEB4();
}

void static EngagementService.getAction(for:using:appId:)()
{
  OUTLINED_FUNCTION_11_0();
  v17[1] = v1;
  v17[2] = v0;
  v3 = v2;
  v4 = sub_231368180();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = v17 - v14;
  sub_2313676F0();
  sub_231368160();
  v16 = *(v7 + 8);
  v16(v15, v4);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_2313676F0();
  sub_23134AD1C(v3);
  sub_231367CB0();

  v16(v12, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  OUTLINED_FUNCTION_9_0();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_62_0()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_62_1()
{

  sub_23126DF64();
}

uint64_t OUTLINED_FUNCTION_62_8()
{
  v5 = v0[145];
  v6 = v0[142];
  v7 = v0[141];
  v8 = v0[138];
  v9 = v0[135];
  v10 = v0[134];
  v11 = v0[133];
  v12 = v0[132];
  v2 = v0[129];
  *(v1 - 136) = v0[131];
  *(v1 - 128) = v2;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
}

unint64_t sub_2311D1C6C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2311F49AC(a5, a6);
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
    result = sub_23136A680();
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

uint64_t sub_2311D1D6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2311D1DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_29_1();
  v17 = v16[15];
  v35 = v16[14];
  v36 = v16[11];
  v19 = v16[7];
  v18 = v16[8];
  v20 = v16[5];
  v34 = v16[6];
  v22 = v16[2];
  v21 = v16[3];
  v23 = sub_231349CB4(v16[17]);

  sub_231367510();
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DC0, &unk_231370710) + 48);
  sub_23134C094(v23);

  sub_231367450();
  static EngagementService.getAction(for:using:appId:)();

  sub_2311D1F18(v20, &qword_27DD43F08, &qword_231370CD0);
  (*(v19 + 8))(v18, v34);
  *(v22 + v24) = v17;

  OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_8_4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, v36, a13, a14, a15, a16);
}

uint64_t sub_2311D1F18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_11(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_9_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_9_2()
{
  result = v0[40];
  v2 = v0[38];
  v3 = *(v0[39] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_6()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_8()
{
  result = v0;
  v3 = *(v1 - 112);
  v4 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_9()
{
  v2 = *(*(v1 - 120) + 48) + v0;
  result = *(v1 - 136);
  v4 = *(v1 - 104);
  return result;
}

void OUTLINED_FUNCTION_9_10()
{

  JUMPOUT(0x23192B930);
}

uint64_t OUTLINED_FUNCTION_9_11@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v10 = *a7;
  v11 = v9 + a1 + *(a8 + 28);
  return v8;
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return sub_23136A140();
}

uint64_t OUTLINED_FUNCTION_9_13()
{
  v2 = *(v0 + 48);
  v4 = *(v1 - 104);
  v3 = *(v1 - 96);
  v5 = *(v3 + 72);
  v6 = *(v3 + 16);
  result = *(v1 - 112);
  v8 = *(v1 - 144);
  return result;
}

unint64_t OUTLINED_FUNCTION_9_14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_231215F6C(a2, a3);
}

void *OUTLINED_FUNCTION_9_20()
{
  v0[14] = v2;
  v3 = v0[13];
  result = __swift_project_boxed_opaque_existential_1(v0 + 9, v0[12]);
  v5 = *(v1 + 28);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_24(uint64_t a1)
{
  *(a1 + 8) = sub_2312D768C;
  v6 = v3[171];
  v7 = v3[170];
  v8 = v3[127];
  v9 = v3[126];
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  return v1;
}

uint64_t OUTLINED_FUNCTION_9_25()
{
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[26];
  v6 = v0[25];
  v7 = v0[22];
  v8 = v0[19];
  v9 = v0[18];
  v10 = v0[17];
  v11 = v0[16];
  v12 = v0[15];
}

uint64_t OUTLINED_FUNCTION_9_28@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 1108);
  v4 = *(v2 + 568);
  v5 = *(v2 + 544);
  v6 = *(v2 + 536);
  v7 = *(v2 + 528);
  v8 = *(v2 + 520);
  v9 = *(v2 + 504);
  v10 = *(v2 + 512);
  v11 = *(v5 + 16);
  v5 += 16;
  v12 = v1 + ((*(v2 + 1104) + 32) & ~*(v2 + 1104)) + *(v5 + 56) * a1;
  *(v2 + 936) = v11;
  *(v2 + 944) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v4;
}

uint64_t OUTLINED_FUNCTION_9_30()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_9_33(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_60_1()
{

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 - 176));
}

uint64_t OUTLINED_FUNCTION_60_2(unint64_t *a1)
{

  return sub_231217784(a1, 255, v1);
}

uint64_t OUTLINED_FUNCTION_60_6()
{

  return sub_23136A890();
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_30_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_30_10()
{
  v2 = *(v1 - 72);
  v3 = *(v2 + 8);
  *(v1 - 312) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v0;
  *(v1 - 304) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_11(uint64_t a1)
{
  v2 = *(a1 + 48);

  return sub_231368270();
}

__n128 OUTLINED_FUNCTION_30_14()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 616));
  v2 = *(v1 - 104);
  result = *(v1 - 120);
  v4 = *(v1 - 88);
  return result;
}

void OUTLINED_FUNCTION_30_15(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, os_log_type_t a20)
{

  _os_log_impl(a1, v21, a20, a4, v20, 0xCu);
}

uint64_t OUTLINED_FUNCTION_37_0()
{
  v2 = *(v0 + 400);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_37_1()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_37_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_37_4()
{
  v3 = *(v0 + 680) + v1;

  return sub_2311CF324(v3, v0 + 496);
}

uint64_t OUTLINED_FUNCTION_37_5()
{
  v5 = *(v3 - 88);

  return sub_231252FE8(v0, v5, v1, v2);
}

void OUTLINED_FUNCTION_37_15()
{
  v3 = v1[146];
  v4 = v1[144];
  v5 = v1[143];
  v6 = v1[138];
  v7 = v1[133];
}

uint64_t OUTLINED_FUNCTION_1_8()
{

  return sub_231369F20();
}

uint64_t OUTLINED_FUNCTION_1_9@<X0>(uint64_t a1@<X8>)
{
  v1[15] = a1;
  v3 = v1[12];
  v4 = v1[10];
  v5 = v1[4] + 16 * a1;
  v1[16] = *(v5 + 32);
  v1[17] = *(v5 + 40);

  return sub_231369EE0();
}

unint64_t OUTLINED_FUNCTION_1_11(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_2311D2DF0(a3);

  return sub_23120DCE8(a2, v5, a3);
}

uint64_t OUTLINED_FUNCTION_1_12(uint64_t a1)
{
  *(a1 + 8) = sub_23121266C;
  v2 = v1[47];
  v3 = v1[22];
  return v1[33];
}

uint64_t OUTLINED_FUNCTION_1_13()
{

  return sub_231224724(v0, type metadata accessor for FeatureRequirementsTransport);
}

uint64_t OUTLINED_FUNCTION_1_15()
{
  v4 = *(v2 + 16);
  v5 = *(*(v3 - 120) + 48) + *(v2 + 72) * v1;
  result = v0;
  v7 = *(v3 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_20()
{

  return swift_once();
}

size_t OUTLINED_FUNCTION_1_21(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void OUTLINED_FUNCTION_1_25()
{

  sub_23126E92C();
}

void OUTLINED_FUNCTION_1_29()
{

  sub_23126DF2C();
}

void *OUTLINED_FUNCTION_1_30(uint64_t a1)
{
  *(a1 + 8) = sub_2312D8084;
  v2 = v1[171];
  v3 = v1[170];
  v4 = v1[129];
  return v1 + 62;
}

uint64_t OUTLINED_FUNCTION_1_31()
{
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
  v4 = *(v3 - 120);

  return sub_231369060();
}

uint64_t OUTLINED_FUNCTION_1_32()
{

  return sub_23136A820();
}

BOOL OUTLINED_FUNCTION_1_35(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_1_36()
{

  return sub_231366E50();
}

uint64_t OUTLINED_FUNCTION_1_37()
{
}

uint64_t OUTLINED_FUNCTION_1_38()
{
  v2 = v0[50];
  result = v0[51];
  v3 = v0[49];
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[43];
  v6 = v0[44];
  v9 = v0[41];
  v8 = v0[42];
  v10 = v0[38];
  v11 = v0[35];
  v12 = v0[32];
  return result;
}

uint64_t *OUTLINED_FUNCTION_1_43()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v0[10] = v1;
  v0[11] = *(v2 + 8);

  return __swift_allocate_boxed_opaque_existential_1(v0 + 7);
}

uint64_t OUTLINED_FUNCTION_1_44()
{
  result = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[99];
  v8 = v0[98];
  v9 = v0[97];
  v10 = v0[96];
  v11 = v0[95];
  v12 = v0[94];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_47()
{
  result = v0[36];
  v2 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[20];
  v11 = v0[21];
  v12 = v0[17];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1)
{
  *(a1 + 8) = sub_2311EBD30;
  v2 = v1[28];
  v4 = v1[24];
  v3 = v1[25];
  return v1[31];
}

void OUTLINED_FUNCTION_2_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1)
{
  *(a1 + 8) = sub_2312007E4;
  v2 = *(v1 + 392);
  return v1 + 336;
}

void OUTLINED_FUNCTION_26_2()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x23192B930);
}

uint64_t OUTLINED_FUNCTION_2_9()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_2_10()
{
  v4 = *(v1 + 16);
  v3 = v1 + 16;
  v5 = *(v3 + 64);
  *(v2 - 96) = v0;
  v6 = *(v3 + 56);
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_14()
{
  v2 = *(v0 + 16) + 1;

  sub_23126E92C();
}

uint64_t OUTLINED_FUNCTION_2_15(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_2_21@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  v3[120].n128_u64[0] = a1;
  v3[118] = a2;
  v3[119] = a3;
  v30 = v3[114].n128_u64[0];
  v31 = v3[114].n128_u64[1];
  v6 = v3[112].n128_u64[0];
  v23 = v3[110].n128_u64[1];
  v24 = v3[111].n128_u64[1];
  v25 = v3[85].n128_u64[1];
  v20 = v3[83].n128_u64[0];
  v21 = v3[83].n128_u64[1];
  v22 = v3[82].n128_u64[1];
  v19 = v3[82].n128_u64[0];
  v17 = v3[111].n128_u64[0];
  v18 = v3[80].n128_u64[0];
  v26 = v3[79].n128_u64[0];
  v27 = v3[78].n128_u64[1];
  v28 = v3[78].n128_u64[0];
  v29 = v3[85].n128_u64[0];
  v7 = v3[69].n128_u64[0];
  v8 = v3[68].n128_u64[1];
  v9 = v3[68].n128_u64[0];
  v10 = v3[66].n128_i64[0];
  v11 = v3[65].n128_u64[1];
  v12 = v3[65].n128_u64[0];
  v13 = v3[64].n128_u64[1];
  v14 = v3[64].n128_u64[0];
  *(v4 - 136) = v3[62].n128_u64[1] + v3[121].n128_i32[2];
  *(v4 - 128) = v13;
  v15 = v3[63].n128_u64[0];

  return sub_2312D92AC(v3[1].n128_u64, v10);
}

uint64_t OUTLINED_FUNCTION_2_22()
{

  return sub_23136A890();
}

uint64_t OUTLINED_FUNCTION_2_25(void *a1)
{
  v1 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_26()
{
  v4 = *(v2 + 56);
  v5 = *(v4 + 8 * v0);
  *(v4 + 8 * v0) = v1;
}

uint64_t OUTLINED_FUNCTION_2_27()
{
  result = v0[1286];
  v2 = v0[1285];
  v3 = v0[1284];
  v4 = v0[1283];
  v5 = v0[1282];
  v6 = v0[1281];
  v7 = v0[1280];
  v8 = v0[1279];
  v9 = v0[1278];
  v10 = v0[1277];
  v11 = v0[1276];
  v12 = v0[1273];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_31()
{
  v2 = *(v0 + 208);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_32()
{
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[31];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[24];
  v11 = v0[20];
  v10 = v0[21];
}

uint64_t OUTLINED_FUNCTION_2_33(uint64_t a1)
{
  *(a1 + 8) = sub_231354600;
  v3 = v1[20];
  v2 = v1[21];
  v4 = v1[17];
  v5 = v1[14];
  return v1[24];
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return swift_once();
}

uint64_t (*OUTLINED_FUNCTION_0_4())()
{
  v1 = *(v0 + 1000);
  sub_2311D38A8((v0 + 576), v0 + 536);
  v2 = *(v0 + 520);
  *(v0 + 1064) = v2;
  *(v0 + 1072) = *(v0 + 528);
  *(v0 + 1080) = __swift_project_boxed_opaque_existential_1((v0 + 496), v2);
  return sub_2311E8514;
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1)
{
  *(a1 + 8) = sub_2311FA81C;
  v2 = v1[14];
  v3 = v1[12];
  return v1[11];
}

uint64_t OUTLINED_FUNCTION_0_10()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_12()
{
  *(v2 - 120) = v0;
  *(v2 - 112) = v0 + 56;
  v3 = ~(-1 << *(v0 + 32));
  *(v2 - 104) = v1 + 16;
  *(v2 - 128) = v1 + 8;
}

uint64_t OUTLINED_FUNCTION_0_13(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

void OUTLINED_FUNCTION_0_23()
{
  v2 = *(v0 - 288);

  JUMPOUT(0x23192B930);
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[23];
  v4 = v2[24];
  return v2[22];
}

void OUTLINED_FUNCTION_0_31()
{

  sub_23126DF2C();
}

void OUTLINED_FUNCTION_0_32()
{
  v1 = v0[164];
  v2 = v0[163];
  v3 = v0[162];
  v4 = v0[159];
  v5 = v0[158];
  v6 = v0[155];
  v7 = v0[152];
  v8 = v0[149];
  v9 = v0[148];
  v10 = v0[147];
  v11 = v0[146];
}

void OUTLINED_FUNCTION_0_36()
{
  v4[(v1 >> 6) + 8] |= 1 << v1;
  v5 = (v4[6] + 16 * v1);
  *v5 = v2;
  v5[1] = v0;
  *(v4[7] + 8 * v1) = v3;
  v6 = v4[2];
}

uint64_t OUTLINED_FUNCTION_0_39(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = v2[33];
  __swift_project_boxed_opaque_existential_1(v2 + 29, v2[32]);

  return sub_231369580();
}

uint64_t sub_2311D38A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_16_0()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);

  return sub_2313676B0();
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_16_5(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_16_6()
{

  return sub_231369F30();
}

uint64_t OUTLINED_FUNCTION_16_12(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_16_14(unint64_t a1@<X8>)
{
  *(v3 - 144) = v2;

  sub_2311F5D78(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_16_16()
{

  return sub_23136AA20();
}

void OUTLINED_FUNCTION_16_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_16_18()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16_19(uint64_t a1)
{
  *(a1 + 8) = sub_2312ABB50;
  result = *(v1 + 48);
  v3 = *(v1 + 24);
  return result;
}

unint64_t OUTLINED_FUNCTION_16_22()
{

  return sub_231215F6C(v1, v0);
}

void OUTLINED_FUNCTION_16_23()
{
  v1 = *(v0 + 1952);
  v2 = *(v0 + 1456);
  v3 = *(v0 + 1448);
  v4 = *(v0 + 1432);
}

uint64_t OUTLINED_FUNCTION_16_24()
{

  return sub_23136A900();
}

uint64_t OUTLINED_FUNCTION_16_25()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_16_27(uint64_t a1)
{
  *(v1 + 24) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_89_0()
{
  *(v5 - 144) = v1;
  *(v5 - 136) = v2;
  *(v5 - 152) = v3;
  v6 = *(v4 + 8);
  return v0;
}

void OUTLINED_FUNCTION_22_2()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[20];
  v3 = v0[21];
}

uint64_t OUTLINED_FUNCTION_22_6()
{
}

void OUTLINED_FUNCTION_22_8()
{
  v4 = *(v0 + 112);
  *(v2 - 80) = v1;

  sub_2311F4E34();
}

void OUTLINED_FUNCTION_22_10()
{
  v2 = *(v0 + 16) + 1;

  sub_2311F5D78(0, v2, 1);
}

void OUTLINED_FUNCTION_22_13()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 176);
}

void *OUTLINED_FUNCTION_22_15()
{

  return memcpy((v0 + 440), (v0 + 16), 0x1A8uLL);
}

uint64_t OUTLINED_FUNCTION_22_21(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = result;
  v4[17] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_22()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_70(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 8 * a1);

  return sub_231369EE0();
}

uint64_t OUTLINED_FUNCTION_70_2()
{
  *(v1 - 112) = v0;

  return sub_2313667B0();
}

void OUTLINED_FUNCTION_70_6()
{
  v1 = v0[164];
  v2 = v0[163];
  v3 = v0[160];
}

uint64_t OUTLINED_FUNCTION_25_3()
{
  v2 = *(v0 + 240);

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_25_4@<X0>(uint64_t a1@<X8>)
{
  *v2 = 0xD00000000000005ELL;
  *(v1 + 8) = (a1 - 32) | 0x8000000000000000;
  return v2;
}

uint64_t OUTLINED_FUNCTION_25_6()
{
  result = *(v0 + 160);
  v2 = *(v0 + 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return sub_23136A900();
}

uint64_t OUTLINED_FUNCTION_25_8@<X0>(uint64_t a1@<X8>)
{
  *v2 = v4;
  v2[1] = v3;
  v2[2] = ~v1;
  v2[3] = a1;
  v2[4] = v6;
  return v5;
}

uint64_t OUTLINED_FUNCTION_25_9(unint64_t *a1)
{

  return sub_23121C788(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_25_13(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_25_14()
{
  result = *(v0 - 136);
  v2 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_15()
{

  return sub_231368290();
}

uint64_t OUTLINED_FUNCTION_25_16@<X0>(uint64_t a1@<X8>)
{
  v3 = v2[25];
  v4 = v2[22];
  v6 = v2[18];
  v5 = v2[19];
  v7 = v2[15];
  v8 = *(a1 + 8);
  return v1;
}

__n128 OUTLINED_FUNCTION_25_17()
{
  v2 = *(v0 + 32);
  *(v1 - 136) = *(v0 + 16);
  *(v1 - 120) = v2;
  result = *(v0 + 48);
  *(v1 - 104) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_18(uint64_t a1)
{
  *(v1 + 120) = a1;
  *(v1 + 96) = v2;
}

uint64_t OUTLINED_FUNCTION_35_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_35_3@<X0>(uint64_t a1@<X8>)
{

  return sub_2311CF324(v1 + 40 * a1 + 72, v2 + 16);
}

uint64_t OUTLINED_FUNCTION_35_4()
{
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[87];
  v4 = *(v0[92] + 32);
  return v0[93];
}

uint64_t OUTLINED_FUNCTION_35_6()
{
  v2 = *(v0 + 616);
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_35_7@<X0>(uint64_t a1@<X8>)
{
  *v2 = v3;
  v2[1] = v5;
  v2[2] = ~v1;
  v2[3] = a1;
  v2[4] = v6;
  return v4;
}

uint64_t OUTLINED_FUNCTION_35_12()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return sub_2313682B0();
}

void *OUTLINED_FUNCTION_35_13()
{
  v1 = *(v0 + 1016);
  sub_2311D38A8((v0 + 816), v0 + 776);
  v2 = *(v0 + 808);
  return __swift_project_boxed_opaque_existential_1((v0 + 776), *(v0 + 800));
}

uint64_t OUTLINED_FUNCTION_35_14()
{
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_49_2()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_49_4(uint64_t a1@<X8>)
{
  v3 = *(v2 - 344);
  *(a1 + 32) = v1;
  *(a1 + 40) = v3;
  v4 = *(v2 - 360);
}

uint64_t OUTLINED_FUNCTION_49_6()
{
  result = v0[59];
  v2 = v0[57];
  v3 = *(v0[58] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_49_7(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_2311CF324(v1 + 56, va);
}

void OUTLINED_FUNCTION_49_8(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = (*(v1 + 48) + 16 * (a1 | (v2 << 6)));
  v5 = *v4;
  v6 = v4[1];
}

uint64_t OUTLINED_FUNCTION_49_9()
{
  *(v1 + 1696) = v0;
  *(v1 + 1688) = v2;
  v3 = *(v1 + 1952);
  v4 = *(v1 + 1336);
  v5 = *(v1 + 1328);
  v6 = *(v1 + 1312);
  v7 = *(v1 + 1288);
  v8 = *(v1 + 1280);
  return *(v1 + 1296);
}

void OUTLINED_FUNCTION_36_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_36_3(uint64_t result)
{
  v3 = result & ~(-1 << *(v2 + 32));
  v4 = (-1 << v3) & ~*(v1 + 8 * (v3 >> 6));
  return result;
}

uint64_t OUTLINED_FUNCTION_36_4()
{
  v2 = *(v0 + 616);
  v4 = *(v2 + 40);
  v3 = *(v2 + 48);

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_36_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t result)
{
  *(result + 16) = v3;
  *(result + 24) = v4;
  *(v1 + 72) = v2;
  return result;
}

__n128 OUTLINED_FUNCTION_36_8(uint64_t a1)
{
  *(v1 + 64) = a1;
  result = *(v1 + 32);
  v3 = vextq_s8(*(v1 + 48), *(v1 + 48), 8uLL);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_12()
{
}

void OUTLINED_FUNCTION_36_13()
{
  *(v1 - 160) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void OUTLINED_FUNCTION_36_14()
{
  v4 = *v3;
  v2[7] = v0;
  v2[8] = v1;
  v2[3] = 0;
  v2[4] = v4;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2311D44D4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

id sub_2311D45B8(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2313698C0();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  sub_231369100();
  v16 = sub_2313698A0();
  v17 = sub_23136A3A0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_60();
    v45 = v13;
    v19 = v2;
    v20 = v4;
    v21 = v18;
    v22 = v8;
    v23 = v5;
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v21 = 136315138;
    *(v21 + 4) = sub_2311CFD58(0xD00000000000002CLL, 0x800000023137D340, &aBlock);
    _os_log_impl(&dword_2311CB000, v16, v17, "[BookkeepingXPCServicesClient] Creating XPC connection to %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v5 = v23;
    OUTLINED_FUNCTION_29();
    v4 = v20;
    v2 = v19;
    v13 = v45;
    OUTLINED_FUNCTION_29();

    v25 = v22;
  }

  else
  {

    v25 = v8;
  }

  v26 = *(v25 + 8);
  v26(v15, v5);
  v27 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  OUTLINED_FUNCTION_54();
  v28 = swift_allocObject();
  *(v28 + 16) = v4;
  v50 = sub_231225584;
  v51 = v28;
  OUTLINED_FUNCTION_16_8();
  v47 = 1107296256;
  v48 = sub_2312234C8;
  v49 = &block_descriptor_118;
  v29 = _Block_copy(&aBlock);

  [a1 setInterruptionHandler_];
  _Block_release(v29);
  [a1 resume];
  sub_231369100();
  v30 = a1;
  v31 = sub_2313698A0();
  v32 = sub_23136A3A0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v45 = v26;
    v34 = v33;
    aBlock = swift_slowAlloc();
    *v34 = 136315394;
    v35 = sub_2311D5648(v30);
    if (!v36)
    {
      v35 = 7104878;
    }

    v44 = v5;
    if (v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0xE300000000000000;
    }

    v38 = sub_2311CFD58(v35, v37, &aBlock);

    *(v34 + 4) = v38;
    *(v34 + 12) = 1024;
    v39 = [v30 processIdentifier];

    *(v34 + 14) = v39;
    _os_log_impl(&dword_2311CB000, v31, v32, "[BookkeepingXPCServicesClient] Successfully Created XPC connection to serviceName: %s, pid: %d", v34, 0x12u);
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_15();

    (v45)(v13, v44);
  }

  else
  {

    v26(v13, v5);
  }

  v50 = sub_23122558C;
  v51 = v2;
  OUTLINED_FUNCTION_16_8();
  v47 = 1107296256;
  v48 = sub_231223940;
  v49 = &block_descriptor_121;
  v40 = _Block_copy(&aBlock);

  v41 = [v30 remoteObjectProxyWithErrorHandler_];
  _Block_release(v40);
  sub_23136A540();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43900, &unk_23136EA70);
  swift_dynamicCast();
  return v30;
}

void OUTLINED_FUNCTION_21_2()
{
  v1 = v0[56];
  v2 = v0[49];
  v4 = v0[47];
  v3 = v0[48];
  v5 = *(v0[50] + 24);
}

uint64_t OUTLINED_FUNCTION_21_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21_8()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21_12()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_21_16()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[13];
  v4 = v0[14];
}

void OUTLINED_FUNCTION_21_17()
{
  v2 = *(v0 + 48);
  *(v1 - 96) = *(*(v1 - 128) + 72);
  v3 = *(v1 - 116);
}

void OUTLINED_FUNCTION_21_20(uint64_t a1@<X8>)
{
  v6 = v2 | (8 * a1);
  *(v5 + 272) = *(v1 + v6);
  *(v5 + 280) = *(*(v3 + 56) + v6);
  v7 = *(v4 + 16);
}

void *OUTLINED_FUNCTION_21_21()
{
  v3 = *(v0 + 32);
  v4 = *(v0 + 24);

  return __swift_project_boxed_opaque_existential_1(v1, v4);
}

uint64_t OUTLINED_FUNCTION_21_23()
{
  result = v0[18];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[66];
  v6 = v0[65];
  v7 = v0[63];
  v8 = v0[64] + 8;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_1()
{
  *(v0 + 408) = 0;
  v2 = *(v0 + 392) + 32;

  return sub_2311CF324(v2, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return sub_231368F90();
}

uint64_t OUTLINED_FUNCTION_15_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_8@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_unknownObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_15_10()
{
  result = *(v0 - 96);
  v2 = *(v0 - 128);
  return result;
}

BOOL OUTLINED_FUNCTION_43_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_14(uint64_t result)
{
  v3 = (v1 - *(v2 - 128)) >> 6;
  v4 = *(v2 - 96);
  *(v2 - 152) = v4 + 32;
  *(v2 - 144) = v4 + 16;
  *(v2 - 136) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_16()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_17()
{
  v2[2] = v4;
  v2[3] = v7;
  v2[4] = v3;
  v2[5] = v1;
  v2[6] = v6;

  return sub_231292278(v2 + 2, v0);
}

uint64_t OUTLINED_FUNCTION_15_22()
{

  return sub_231369200();
}

uint64_t OUTLINED_FUNCTION_15_25(float a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *v5 = a1;

  return sub_2311CFD58(v4, v6, va);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2311D4FE4()
{
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_17_4(v0[5]);
  v0[22] = v1;
  v0[23] = v2;
  if (!v2)
  {
    v10 = v1;
    sub_231223268();
    v11 = OUTLINED_FUNCTION_42_3();
    OUTLINED_FUNCTION_24_5(v11, v12);
    [v10 invalidate];

    v14 = v0[20];
    v13 = v0[21];
    OUTLINED_FUNCTION_43_5();

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_86();

    __asm { BRAA            X1, X16 }
  }

  swift_unknownObjectRetain();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[24] = v3;
  *v3 = v4;
  v3[1] = sub_2312214CC;
  v5 = v0[21];
  v6 = v0[5];
  OUTLINED_FUNCTION_86();

  return sub_2311D512C(v7);
}

uint64_t sub_2311D512C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(*(sub_231369790() - 8) + 64) + 15;
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2311D571C, 0, 0);
}

void OUTLINED_FUNCTION_87_0()
{
  v4 = v1[113];
  v5 = v1[106];
  v6 = v1[94];
  v7 = v1[92];
  *(v2 - 112) = v1[71];
  v8 = v1[68];
  v9 = v1[67];
  v10 = v1[62];
}

unint64_t sub_2311D5204()
{
  result = qword_280F85A40;
  if (!qword_280F85A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85A40);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_20_8()
{
  v2 = *(v0 + 32);

  return sub_231369100();
}

void OUTLINED_FUNCTION_20_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_20_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_20_12()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_13(uint64_t a1)
{
  *(a1 + 8) = sub_23126A884;
  v3 = *(v2 + 336);
  v4 = *(v2 + 344);
  return v1;
}

uint64_t OUTLINED_FUNCTION_20_16()
{
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];

  return sub_231366740();
}

void OUTLINED_FUNCTION_20_17()
{
  v2 = v0[10];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
}

uint64_t OUTLINED_FUNCTION_20_18(uint64_t result)
{
  *(result + 8) = sub_2312AADB0;
  v2 = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_21()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return sub_231368300();
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return sub_23136A900();
}

uint64_t OUTLINED_FUNCTION_45_2(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_45_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_45_4@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_45_5()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

void OUTLINED_FUNCTION_45_7()
{

  JUMPOUT(0x23192A730);
}

uint64_t OUTLINED_FUNCTION_45_10()
{

  return sub_231311704(v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_45_11(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t sub_2311D5648(void *a1)
{
  v1 = [a1 serviceName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231369FD0();

  return v3;
}

uint64_t sub_2311D56B0()
{
  sub_231225540();
  v0 = sub_2312232BC();
  sub_2311D45B8(v0);

  return OUTLINED_FUNCTION_64();
}

uint64_t sub_2311D571C()
{
  OUTLINED_FUNCTION_8();
  *(v0 + 160) = *(*(v0 + 144) + 96);
  sub_231367CA0();
  sub_2311D57D8(&qword_280F7CA68, MEMORY[0x277D60B10]);
  v2 = sub_23136A260();

  return MEMORY[0x2822009F8](sub_2311D5820, v2, v1);
}

uint64_t sub_2311D57D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2311D5820()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 160);
  *(v0 + 168) = sub_231367C80();
  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2311D5880()
{
  OUTLINED_FUNCTION_70_1();
  v1 = v0[21];
  v2 = *(v1 + 16);
  if (v2)
  {
    v28 = MEMORY[0x277D84F90];
    v3 = OUTLINED_FUNCTION_38_5();
    sub_2311F59B0(v3, v4, v5);
    v6 = v28;
    v7 = v1 + 32;
    do
    {
      sub_2311CF388(v7, (v0 + 7));
      v8 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      sub_231367AD0();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
      v10 = *(v28 + 16);
      v9 = *(v28 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2311F59B0(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[5];
      __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v11);
      v12 = *(v11 - 8);
      v13 = *(v12 + 64);
      OUTLINED_FUNCTION_43();
      (*(v12 + 16))();
      sub_23125D3D4();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

      v7 += 40;
      --v2;
    }

    while (v2);
    v14 = v0[21];
  }

  else
  {
    v15 = v0[21];

    v6 = MEMORY[0x277D84F90];
  }

  v0[22] = v6;
  v16 = v0[18];
  v17 = v16[10];
  v18 = v16[11];
  __swift_project_boxed_opaque_existential_1(v16 + 7, v17);
  v19 = *(v18 + 8);
  OUTLINED_FUNCTION_3_3();
  v27 = (v20 + *v20);
  v22 = *(v21 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[23] = v23;
  *v23 = v24;
  v23[1] = sub_2312201C4;
  v25 = v0[19];

  return v27(v25, v17, v18);
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return sub_231368D50();
}

void OUTLINED_FUNCTION_41_1(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_41_2()
{

  return sub_231369190();
}

uint64_t OUTLINED_FUNCTION_41_3()
{
  v2 = v0[56];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[51];
  v7 = v0[47];
  v6 = v0[48];
  v8 = v0[46];
  v10 = v0[42];
  v9 = v0[43];
  v11 = v0[39];
  v13 = v0[36];
}

uint64_t OUTLINED_FUNCTION_41_4()
{
  v2 = **(v0 - 144);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_41_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_2311CFD58(v4, v5, va);
}

uint64_t OUTLINED_FUNCTION_41_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_9@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 192);
  v2 = *(a1 + 200);

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_41_16(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_2311CFD58(0xD000000000000051, a2, a3);
}

void OUTLINED_FUNCTION_41_17(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = (*(v1 + 48) + 16 * (a1 | (v2 << 6)));
  v6 = *v4;
  v5 = v4[1];
}

void SiriSuggestionsRuntimeConfig.init(from:)()
{
  OUTLINED_FUNCTION_78_2();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44238, &unk_231371890);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = v2[4];
  v112 = v2;
  OUTLINED_FUNCTION_56(v2, v2[3]);
  sub_2312866E8();
  sub_23136AA20();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    LOBYTE(v66) = 0;
    sub_23136A7F0();
    v13 = v12;
    OUTLINED_FUNCTION_3_20(1);
    sub_23136A7F0();
    v15 = v14;
    OUTLINED_FUNCTION_3_20(2);
    sub_23136A7F0();
    v17 = v16;
    OUTLINED_FUNCTION_3_20(3);
    v18 = sub_23136A7E0();
    OUTLINED_FUNCTION_3_20(4);
    v62 = sub_23136A7E0();
    OUTLINED_FUNCTION_3_20(5);
    v61 = sub_23136A7D0();
    v64 = v19;
    OUTLINED_FUNCTION_3_20(6);
    v60 = sub_23136A7E0();
    OUTLINED_FUNCTION_3_20(7);
    sub_23136A7F0();
    v21 = v20;
    LOBYTE(v65[0]) = 8;
    sub_2312869B8();
    OUTLINED_FUNCTION_79_2();
    v22 = v18;
    v55 = v4;
    v56 = v66;
    v57 = v67;
    v23 = v68;
    v63 = v69;
    v24 = v70;
    v105[79] = 9;
    sub_231286A0C();
    v58 = v10;
    v59 = v5;
    OUTLINED_FUNCTION_79_2();
    memcpy(v108, v106, sizeof(v108));
    v104 = 10;
    sub_231286A60();
    sub_23136A820();
    memcpy(v107, v105, sizeof(v107));
    LOBYTE(v65[0]) = 11;
    sub_231286AB4();
    OUTLINED_FUNCTION_17_9();
    v25 = v67;
    v26 = v68;
    v53 = v69;
    v54 = v66;
    v27 = v70;
    LOBYTE(v65[0]) = 12;
    sub_231286B08();
    OUTLINED_FUNCTION_17_9();
    v51 = v67;
    v52 = v66;
    v48 = v69;
    v49 = v70;
    v50 = v68;
    LOBYTE(v66) = 13;
    v47 = sub_23136A7E0();
    LOBYTE(v65[0]) = 14;
    sub_2311D5204();
    OUTLINED_FUNCTION_17_9();
    v28 = v67;
    v29 = v68;
    v45 = v66;
    v46 = v69;
    LOBYTE(v65[0]) = 15;
    sub_2311D7720();
    OUTLINED_FUNCTION_17_9();
    v43 = v67;
    v44 = v66;
    v30 = v68;
    v102 = 16;
    sub_231286B5C();
    sub_23136A820();
    v31 = v22 & 1;
    v40 = v62 & 1;
    v41 = v31;
    v60 &= 1u;
    v32 = v60;
    v62 = v47 & 1;
    v33 = OUTLINED_FUNCTION_56_6();
    v34(v33);
    v35 = v103;
    v59 = v103;
    v65[0] = v13;
    v65[1] = v15;
    v65[2] = v17;
    LOBYTE(v65[3]) = v31;
    LOBYTE(v31) = v40;
    BYTE1(v65[3]) = v40;
    v65[4] = v61;
    v65[5] = v64;
    LOBYTE(v65[6]) = v32;
    v42 = v21;
    v65[7] = v21;
    v65[8] = v56;
    v65[9] = v57;
    v65[10] = v23;
    v65[11] = v63;
    v65[12] = v24;
    memcpy(&v65[13], v108, 0x60uLL);
    memcpy(&v65[25], v107, 0x48uLL);
    v65[34] = v54;
    v65[35] = v25;
    v65[36] = v26;
    v65[37] = v53;
    v65[38] = v27;
    v65[39] = v52;
    v65[40] = v51;
    v65[41] = v50;
    v36 = v48;
    v65[42] = v48;
    v65[43] = v49;
    LOBYTE(v65[44]) = v62;
    OUTLINED_FUNCTION_72_4((&v65[44] + 1));
    HIDWORD(v65[44]) = v37;
    v38 = v45;
    v65[45] = v45;
    v65[46] = v28;
    v65[47] = v29;
    v65[48] = v46;
    v65[49] = v44;
    v65[50] = v43;
    v65[51] = v30;
    v65[52] = v35;
    memcpy(v55, v65, 0x1A8uLL);
    sub_231286BB0(v65, &v66);
    __swift_destroy_boxed_opaque_existential_1Tm(v112);
    v66 = v13;
    v67 = v15;
    v68 = v17;
    LOBYTE(v69) = v41;
    BYTE1(v69) = v31;
    *(&v69 + 2) = v110;
    HIWORD(v69) = v111;
    v70 = v61;
    v71 = v64;
    v72 = v60;
    *v73 = *v109;
    *&v73[3] = *&v109[3];
    v74 = v42;
    v75 = v56;
    v76 = v57;
    v77 = v23;
    v78 = v63;
    v79 = v24;
    memcpy(v80, v108, sizeof(v80));
    memcpy(v81, v107, sizeof(v81));
    v82 = v54;
    v83 = v25;
    v84 = v26;
    v85 = v53;
    v86 = v27;
    v87 = v52;
    v88 = v51;
    v89 = v50;
    v90 = v36;
    v91 = v49;
    v92 = v62;
    OUTLINED_FUNCTION_72_4(v93);
    *&v93[3] = v39;
    v94 = v38;
    v95 = v28;
    v96 = v29;
    v97 = v46;
    v98 = v44;
    v99 = v43;
    v100 = v30;
    v101 = v59;
    sub_2311F07B0(&v66);
  }

  OUTLINED_FUNCTION_77_1();
}

uint64_t OUTLINED_FUNCTION_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_2311CF324(a17 + 40 * v18, v17 + 136);
}

void OUTLINED_FUNCTION_66_5()
{
  v1 = v0[170];
  v2 = v0[164];
  v3 = v0[160];
}

uint64_t OUTLINED_FUNCTION_82()
{
  v2 = (*(v0 + 24) >> 1) - *(v0 + 16);

  return type metadata accessor for RankedCandidateSuggestion();
}

uint64_t OUTLINED_FUNCTION_82_0()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_2313682C0();
}

uint64_t OUTLINED_FUNCTION_82_1()
{

  return sub_2313667B0();
}

uint64_t OUTLINED_FUNCTION_57_1@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

unint64_t sub_2311D65FC(char a1)
{
  result = 0x7265766C6F736572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 15:
      v3 = 13;
      goto LABEL_16;
    case 3:
    case 5:
    case 12:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6E6F6349776F6873;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      v3 = 5;
LABEL_16:
      result = v3 | 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x706C654869726973;
      break;
    case 11:
      result = 0x746E694869726973;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0x67696C6C65746E69;
      break;
    case 16:
      result = 0x65476C616E676973;
      break;
    default:
      return result;
  }

  return result;
}

BOOL OUTLINED_FUNCTION_64_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_64_2()
{
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[94];
  v5 = v0[89];

  return sub_231367430();
}

void OUTLINED_FUNCTION_83(char a1)
{
  if (v2 <= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  sub_23126DA48(a1, v5, 1, v1);
}

uint64_t OUTLINED_FUNCTION_83_0()
{

  return sub_23136A9D0();
}

uint64_t OUTLINED_FUNCTION_83_1()
{

  return sub_2313667B0();
}

_BYTE *storeEnumTagSinglePayload for SiriSuggestionsRuntimeConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
        JUMPOUT(0x2311D69F4);
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriSuggestionsRuntimeConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void SiriSuggestionsRuntimeConfig.IntelligenceConfig.init(from:)()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_22_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD441E0, &qword_231371870);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_23();
  sub_2311D6BD8();
  OUTLINED_FUNCTION_8_14();
  if (!v0)
  {
    sub_2311D6C2C();
    sub_23136A820();
    v6 = OUTLINED_FUNCTION_4_14();
    v7(v6);
    *v1 = v8;
    *(v1 + 16) = v9;
    *(v1 + 24) = v10;
  }

  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_22_0();
}

unint64_t sub_2311D6BD8()
{
  result = qword_280F85A58;
  if (!qword_280F85A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85A58);
  }

  return result;
}

unint64_t sub_2311D6C2C()
{
  result = qword_280F85A28;
  if (!qword_280F85A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85A28);
  }

  return result;
}

_BYTE *sub_2311D6CAC(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2311D6D48);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2311D6D70(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_66_0(a1);
}

void SiriSuggestionsRuntimeConfig.FeatureExtractionConfig.init(from:)()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_34_9();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD441F0, &qword_231371880);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_23();
  sub_2311D70E4();
  OUTLINED_FUNCTION_16_16();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  else
  {
    OUTLINED_FUNCTION_76_3();
    OUTLINED_FUNCTION_5_14();
    v7 = sub_23136A800();
    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_5_14();
    v8 = sub_23136A7D0();
    v10 = v9;
    v14 = v8;
    OUTLINED_FUNCTION_27_10();
    OUTLINED_FUNCTION_5_14();
    v11 = sub_23136A800();
    v12 = OUTLINED_FUNCTION_4_14();
    v13(v12);
    *v2 = v7;
    v2[1] = v14;
    v2[2] = v10;
    v2[3] = v11;
    sub_231369EE0();
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t OUTLINED_FUNCTION_27_3(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_2311CFD58(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_27_4()
{

  return sub_23136A900();
}

uint64_t OUTLINED_FUNCTION_27_5()
{
  result = v0;
  *(v2 - 112) = *(v1 + 8);
  return result;
}

void OUTLINED_FUNCTION_27_7()
{
  v1 = v0[81];
  v2 = v0[79];
  v3 = v0[78];
}

uint64_t OUTLINED_FUNCTION_27_9(uint64_t result)
{
  v1[12] = v2;
  v1[13] = v3;
  v1[9] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_27_11()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 284);
  v4 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
}

uint64_t OUTLINED_FUNCTION_27_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  *v17 = a17;

  return sub_231369970();
}

uint64_t OUTLINED_FUNCTION_27_15()
{
  result = v0[71];
  v2 = v0[68];
  v3 = v0[67];
  return result;
}

uint64_t OUTLINED_FUNCTION_27_16(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_2311CFD58(v3, v2, va);
}

unint64_t sub_2311D70E4()
{
  result = qword_280F85A38;
  if (!qword_280F85A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85A38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_0()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return v0;
}

uint64_t OUTLINED_FUNCTION_12_7()
{
  *(v1 - 96) = v0;

  return sub_231369F30();
}

uint64_t OUTLINED_FUNCTION_12_8()
{
  v1 = *(v0 + 104);
  sub_2311D38A8((v0 + 64), v0 + 112);
  *(v0 + 152) = v1;

  return sub_23123B09C(v0 + 112, v0 + 160);
}

uint64_t OUTLINED_FUNCTION_12_11()
{

  return sub_231368500();
}

uint64_t OUTLINED_FUNCTION_12_13()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 2080;
  return v2;
}

uint64_t OUTLINED_FUNCTION_12_15(uint64_t a1)
{
  *(a1 + 8) = sub_2312A7F48;
  v3 = v2[58];
  v4 = v2[37];
  v5 = v2[38];
  v6 = v2[36];
  v7 = v2[32];
  v8 = v2[33];
  return v1;
}

uint64_t OUTLINED_FUNCTION_12_16()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_12_23()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_12_24(uint64_t result, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_26()
{
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[12];
}

uint64_t sub_2311D7420(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0x6567617355707061;
  }

  return 0xD00000000000001FLL;
}

_BYTE *sub_2311D749C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_65_4(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_63_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2311D7558);
      case 4:
        result = OUTLINED_FUNCTION_64_5(result, v6);
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
          result = OUTLINED_FUNCTION_51_6(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_1()
{
  v3 = v0[60];
  v4 = v0[50];
  *(v1 - 88) = v0[59];
}

uint64_t OUTLINED_FUNCTION_33_3()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_33_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33_11()
{

  return sub_231369F30();
}

uint64_t OUTLINED_FUNCTION_33_14()
{

  return sub_23136A900();
}

uint64_t OUTLINED_FUNCTION_33_15()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33_17()
{
  v3 = (*(v0 + 56) + 32 * v1);

  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t sub_2311D7720()
{
  result = qword_280F7CE70;
  if (!qword_280F7CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CE70);
  }

  return result;
}

void AssistantInitiatedSuggestionPolicyConfig.init(from:)()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_22_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44278, &qword_2313718D0);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_23();
  sub_2311D7920();
  OUTLINED_FUNCTION_8_14();
  if (!v0)
  {
    OUTLINED_FUNCTION_76_3();
    OUTLINED_FUNCTION_11_14();
    v6 = sub_23136A800();
    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_11_14();
    v7 = sub_23136A800();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44268, &qword_2313718C8);
    OUTLINED_FUNCTION_36_9();
    sub_2311D79D4(&unk_280F84090);
    sub_23136A820();
    v8 = OUTLINED_FUNCTION_4_14();
    v9(v8);
    *v1 = v6;
    v1[1] = v7;
    v1[2] = v10;
  }

  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_22_0();
}

unint64_t sub_2311D7920()
{
  result = qword_280F7CE90;
  if (!qword_280F7CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CE90);
  }

  return result;
}

unint64_t sub_2311D797C(char a1)
{
  result = 0xD000000000000014;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000016;
    }

    else
    {
      return 0xD00000000000002ELL;
    }
  }

  return result;
}

unint64_t sub_2311D79D4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_75_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44268, &qword_2313718C8);
    OUTLINED_FUNCTION_34_1();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_48_2(void *a1, int a2, os_log_type_t a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_t log)
{

  _os_log_impl(a1, log, a3, a4, v13, 0x16u);
}

BOOL OUTLINED_FUNCTION_48_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_48_10()
{

  return sub_23136A900();
}

uint64_t OUTLINED_FUNCTION_72_0()
{

  return sub_2313691A0();
}

void OUTLINED_FUNCTION_72_1()
{
  *(v4 + 16) = v0;
  v5 = v4 + 16 * v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_72_2()
{

  return sub_231369470();
}

uint64_t OUTLINED_FUNCTION_46_2@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_2311D7BF4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_53_7(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_53_7((*a1 | (v4 << 8)) - 3);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_53_7((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_53_7((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_53_7(v8);
}

void ConstCodableDict.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (**a6)(void, void, uint64_t)@<X5>, unint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v86 = a7;
  v88 = a6;
  v91 = a4;
  v92 = a3;
  v96 = a8;
  v13 = sub_23136A4D0();
  OUTLINED_FUNCTION_40_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_24(v17, v80[0]);
  v90 = sub_23136A4D0();
  OUTLINED_FUNCTION_21();
  v84 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v21);
  v98 = v80 - v22;
  OUTLINED_FUNCTION_21();
  v83 = v23;
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v26);
  v89 = v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v97 = v80 - v29;
  v93 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_21();
  v95 = v31;
  v33 = *(v32 + 64);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = v80 - v38;
  v40 = sub_23136A4D0();
  OUTLINED_FUNCTION_40_0(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v43);
  v45 = v80 - v44;
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v47 = v94;
  sub_23136AA10();
  if (v47)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v81 = a1;
    v87 = v45;
    v94 = v39;
    v85 = v37;
    __swift_project_boxed_opaque_existential_1(v101, v101[3]);
    sub_231369EF0();
    v99 = v86;
    v100 = v88;
    swift_getWitnessTable();
    sub_23136A910();
    v48 = AssociatedTypeWitness;
    v80[1] = 0;
    v49 = v103;
    v50 = a2;
    swift_getTupleTypeMetadata2();
    sub_23136A220();
    v103 = sub_231369EC0();
    v80[6] = v49;
    v80[5] = a10;
    v51 = sub_231369EE0();
    if ((v51 & 0xC000000000000001) != 0)
    {
      v52 = sub_23136A730();
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = v52 | 0x8000000000000000;
    }

    else
    {
      v57 = -1 << *(v51 + 32);
      v53 = v51 + 64;
      v58 = *(v51 + 64);
      OUTLINED_FUNCTION_3_32();
      v55 = v59 & v60;
    }

    v61 = v96;
    v62 = v94;
    v63 = v87;
    v94 = 0;
    v80[0] = v54;
    v64 = (v54 + 64) >> 6;
    v65 = v95;
    v66 = (v95 + 16);
    v82 = v95 + 32;
    v80[4] = v83 + 32;
    v80[3] = v83 + 16;
    v80[2] = v83 + 8;
    v83 = v95 + 8;
    v84 += 8;
    v86 = v56;
    v88 = (v95 + 16);
    if ((v56 & 0x8000000000000000) != 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v67 = v94;
      if (!v55)
      {
        break;
      }

      v68 = v94;
LABEL_14:
      v69 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      (*(v65 + 16))(v63, *(v56 + 48) + *(v65 + 72) * (v69 | (v68 << 6)), v48);
      while (1)
      {
        __swift_storeEnumTagSinglePayload(v63, 0, 1, v48);
        OUTLINED_FUNCTION_8_6(&v105);
        v70(v62, v63, v48);
        (*v66)(v85, v62, v48);
        sub_23136A150();
        v71 = v98;
        if (__swift_getEnumTagSinglePayload(v98, 1, v50) == 1)
        {
          OUTLINED_FUNCTION_8_6(&v106);
          v72(v62, v48);
          OUTLINED_FUNCTION_8_6(&v107);
          v74 = v71;
          v75 = v90;
        }

        else
        {
          OUTLINED_FUNCTION_8_6(&v104);
          v76(v97, v71, v50);
          OUTLINED_FUNCTION_8_6(&v103);
          v77(v89, v97, v50);
          sub_231369F00();
          sub_231369EF0();
          sub_231369F10();
          OUTLINED_FUNCTION_8_6(&v102);
          v78(v97, v50);
          OUTLINED_FUNCTION_8_6(&v106);
          v74 = v62;
          v75 = v48;
        }

        v73(v74, v75);
        v65 = v95;
        v61 = v96;
        v56 = v86;
        v63 = v87;
        v66 = v88;
        if ((v86 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (!sub_23136A740())
        {
          v61 = v96;
          goto LABEL_22;
        }

        sub_23136A8E0();
        swift_unknownObjectRelease();
        v66 = v88;
      }
    }

    while (1)
    {
      v68 = (v67 + 1);
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v68 >= v64)
      {
LABEL_22:

        __swift_storeEnumTagSinglePayload(v63, 1, 1, v48);
        sub_2311D3BBC();
        v79 = v103;
        __swift_destroy_boxed_opaque_existential_1Tm(v101);
        *v61 = v79;
        __swift_destroy_boxed_opaque_existential_1Tm(v81);
        return;
      }

      v55 = *(v53 + 8 * v68);
      ++v67;
      if (v55)
      {
        v94 = v68;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_39_2()
{
}

uint64_t OUTLINED_FUNCTION_39_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_6()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_39_9()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 8);

  return sub_231367AD0();
}

uint64_t OUTLINED_FUNCTION_39_13()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1202);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1217);

  return __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1177);
}

uint64_t OUTLINED_FUNCTION_3_4()
{
  v2 = v0[40];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[31];
  v8 = v0[28];
  v10 = v0[24];
  v9 = v0[25];
}

uint64_t OUTLINED_FUNCTION_3_5()
{
  v1 = **(v0 - 296);
  result = *(v0 - 176);
  v3 = *(v0 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_9()
{
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[103];
  v5 = v0[102];
  v6 = v0[100];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[93];
  v10 = v0[90];
}

void *OUTLINED_FUNCTION_3_11(uint64_t a1)
{
  *(a1 + 8) = sub_231236F4C;
  v2 = v1[14];
  v4 = v1[11];
  v3 = v1[12];
  v5 = v1[10];
  return v1 + 2;
}

void *OUTLINED_FUNCTION_3_12(float a1)
{
  *v2 = a1;
  v3 = *(v1 + 480);
  result = __swift_project_boxed_opaque_existential_1((v1 + 456), v3);
  v5 = *(v3 - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_15(uint64_t a1)
{
  *(a1 + 8) = sub_231244BC0;
  v2 = *(v1 + 80);
  return *(v1 + 240);
}

uint64_t OUTLINED_FUNCTION_3_24()
{
  *(v2 + ((v0 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v0;
  v4 = *(v3 - 88);
  return *(v1 + 48) + *(v3 - 96) * v0;
}

uint64_t OUTLINED_FUNCTION_3_26()
{
  v1 = **(v0 - 144);
  result = *(v0 - 136);
  v3 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_27@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 168) = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_29()
{

  return MEMORY[0x2821FC0F0](10, 0xE100000000000000, v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_3_30()
{
  v2 = v0[46];
  result = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[39];
  v8 = v0[35];
  v9 = v0[36];
  v10 = v0[31];
  v11 = v0[32];
  v12 = v0[30];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_31()
{
  v2 = v0[47];
  result = v0[48];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];
  v7 = v0[38];
  v6 = v0[39];
  v9 = v0[36];
  v8 = v0[37];
  v10 = v0[35];
  v11 = v0[31];
  v12 = v0[32];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_33(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_2311CFD58(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_3_34(uint64_t a1)
{
  *(a1 + 8) = sub_231305B68;
  v2 = *(v1 + 608);
  v3 = *(v1 + 592);
  return v1 + 464;
}

uint64_t OUTLINED_FUNCTION_3_39(uint64_t a1)
{
  *(v1 + 288) = *(a1 + 152);
  v3 = *(a1 + 160);

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_3_41(uint64_t a1)
{
  *(a1 + 8) = sub_2313563AC;
  result = v1[24];
  v3 = v1[11];
  v4 = v1[12];
  return result;
}

void OUTLINED_FUNCTION_3_43()
{
  v2 = *(v0 + 16) + 1;

  sub_23126DF2C();
}

uint64_t OUTLINED_FUNCTION_3_44()
{

  return swift_once();
}

uint64_t sub_2311D8B24()
{
  v1 = type metadata accessor for RankedCandidateSuggestion();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = sub_231367300();
  OUTLINED_FUNCTION_11(v8);
  (*(v9 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + v1[5]));
  v10 = v1[6];
  v11 = sub_231366E80();
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v10, 1, v11))
  {
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = v1[7];
  v15 = sub_231369050();
  OUTLINED_FUNCTION_11(v15);
  (*(v16 + 8))(v7 + v14);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v12));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v13));

  return MEMORY[0x2821FE8E8](v0, v13 + 40, v2 | 7);
}

uint64_t sub_2311D8CD8()
{
  v1 = v0[2];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2311D8D2C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2311D8D5C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2311D8D9C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2311D8E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231369DD0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_231369D00();
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2311D8F1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_231369DD0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_231369D00();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2311D8FE4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2311D90BC()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2311D9198()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_2311D924C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2311CF324(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2311D92A8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2311D9304()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2311D9364()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_36_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2311D9398()
{
  v1 = sub_231367D80();
  OUTLINED_FUNCTION_0_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for FeatureRequirementsTransport();
  OUTLINED_FUNCTION_46_1(v8);
  v10 = *(v9 + 80);
  v11 = (v5 + v7 + v10) & ~v10;
  v30 = *(v12 + 64);
  v33 = sub_2313667A0();
  OUTLINED_FUNCTION_0_0(v33);
  v14 = v13;
  v15 = *(v13 + 80);
  v32 = *(v16 + 64);
  v17 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v31 = v11;
  v18 = v0 + v11;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v11));
  v19 = (v0 + v11 + *(v8 + 20));
  v20 = *v19;

  v21 = *(sub_231369790() + 20);
  v22 = sub_231366750();
  if (!__swift_getEnumTagSinglePayload(&v19[v21], 1, v22))
  {
    OUTLINED_FUNCTION_26_0(v22);
    (*(v23 + 8))(&v19[v21], v22);
  }

  v24 = v4 | v10 | v15;
  v25 = (v30 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + v15 + 8) & ~v15;
  v27 = *(v18 + *(v8 + 24));

  v28 = *(v0 + v25);
  swift_unknownObjectRelease();
  (*(v14 + 8))(v0 + v26, v33);

  return MEMORY[0x2821FE8E8](v0, v26 + v32, v24 | 7);
}

uint64_t sub_2311D95D8()
{
  v35 = sub_231369050();
  OUTLINED_FUNCTION_0_0(v35);
  v2 = v1;
  v40 = *(v1 + 80);
  v3 = (v40 + 16) & ~v40;
  v5 = *(v4 + 64);
  v34 = sub_231367C70();
  OUTLINED_FUNCTION_0_0(v34);
  v7 = v6;
  v39 = *(v6 + 80);
  v8 = (v3 + v5 + v39) & ~v39;
  v10 = *(v9 + 64);
  v11 = type metadata accessor for FeatureRequirementsTransport();
  OUTLINED_FUNCTION_46_1(v11);
  v13 = *(v12 + 80);
  v14 = (v8 + v10 + v13) & ~v13;
  v36 = *(v15 + 64);
  v38 = sub_2313667A0();
  OUTLINED_FUNCTION_0_0(v38);
  v17 = v16;
  v18 = *(v16 + 80);
  v37 = *(v19 + 64);
  (*(v2 + 8))(v0 + v3, v35);
  v20 = v0 + v8;
  v21 = v14;
  v22 = v11;
  (*(v7 + 8))(v20, v34);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v21));
  v23 = (v0 + v21 + *(v11 + 20));
  v24 = *v23;

  v25 = *(sub_231369790() + 20);
  v26 = sub_231366750();
  if (!__swift_getEnumTagSinglePayload(&v23[v25], 1, v26))
  {
    OUTLINED_FUNCTION_26_0(v26);
    (*(v27 + 8))(&v23[v25], v26);
  }

  v28 = v40 | v39 | v13 | v18;
  v29 = (v36 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + v18 + 8) & ~v18;
  v31 = *(v0 + v21 + *(v22 + 24));

  v32 = *(v0 + v29);
  swift_unknownObjectRelease();
  (*(v17 + 8))(v0 + v30, v38);

  return MEMORY[0x2821FE8E8](v0, v30 + v37, v28 | 7);
}

uint64_t sub_2311D9890()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2311D98C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231369790();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2311D994C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_231369790();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2311D9A4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2311D9AD0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2311D9B08()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2311D9BF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2312372C4();
  *a2 = result;
  return result;
}

uint64_t sub_2311D9C28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2312373C0();
  *a2 = result;
  return result;
}

uint64_t sub_2311D9C58()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2311D9C98()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2311D9CD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231369050();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2311D9D60(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_231369050();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2311D9E40()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  sub_231369EE0();
  return OUTLINED_FUNCTION_64();
}

uint64_t sub_2311D9E70()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 *sub_2311D9EB8(uint64_t a1, __n128 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  a2[2].n128_u64[0] = *(a1 + 32);
  return OUTLINED_FUNCTION_38_0(v2, v3, a1, a2);
}

uint64_t sub_2311DA9DC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_36_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2311DAA10()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

char *sub_2311DAA5C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_21(a3, result);
  }

  return result;
}

char *sub_2311DAA84(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_21(a3, result);
  }

  return result;
}

char *sub_2311DAAAC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_21(a3, result);
  }

  return result;
}

uint64_t sub_2311DAAD4()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2311DAB24()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2311DAB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50);
    v9 = OUTLINED_FUNCTION_46_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(a3 + 28);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
      v12 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_2311DAC3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50);
    v9 = OUTLINED_FUNCTION_46_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 28);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
      v12 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2311DAD18()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2311DAD98()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  v2 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2311DADE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2311DAE24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44120, &qword_231371778);
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2311DAEEC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2311DAFF4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return OUTLINED_FUNCTION_53_7(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2311DB010(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_2311DB0D4()
{
  v1 = v0[7];

  v2 = v0[13];

  v3 = v0[24];

  v4 = v0[26];

  v5 = v0[31];

  v6 = v0[33];

  v7 = v0[49];

  v8 = v0[53];

  return MEMORY[0x2821FE8E8](v0, 440, 7);
}

uint64_t sub_2311DB144()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  v2 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2311DB18C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2311DB1C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2311DB200()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2311DB248()
{
  v1 = sub_231366690();
  OUTLINED_FUNCTION_11(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2311DB2C8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2311DB32C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2311DB36C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_36_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2311DB3A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_36_2();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2311DB3E4()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_2311DB42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2313687E0();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_46_2(*(a1 + *(a3 + 20) + 24));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_2311DB4D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_24_0();
  result = sub_2313687E0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2311DB578(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_46_2(*a1);
  }

  v7 = sub_231367E50();
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_2311DB5F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_231367E50();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2311DB678()
{
  v1 = sub_2313667A0();
  OUTLINED_FUNCTION_0_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v7));

  return MEMORY[0x2821FE8E8](v0, v7 + 40, v4 | 7);
}

uint64_t sub_2311DB744()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2311DB794()
{
  v1 = v0[7];

  v2 = v0[13];

  v3 = v0[24];

  v4 = v0[26];

  v5 = v0[31];

  v6 = v0[33];

  v7 = v0[49];

  v8 = v0[53];

  OUTLINED_FUNCTION_18_18();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

uint64_t sub_2311DB800()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2311DB838()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_24_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2311DB890@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2313669B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2311DB920(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_109_0();
  v7 = type metadata accessor for ViewDetails(v6);
  v8 = OUTLINED_FUNCTION_46_0(v7);
  if (*(v9 + 84) == v3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    v12 = type metadata accessor for RankedCandidateSuggestion();
    v13 = OUTLINED_FUNCTION_46_0(v12);
    if (*(v14 + 84) == v3)
    {
      v10 = v13;
      v15 = a3[5];
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        return OUTLINED_FUNCTION_46_2(*(v4 + a3[6] + 24));
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44710, &qword_231375250);
      v15 = a3[9];
    }

    v11 = v4 + v15;
  }

  return __swift_getEnumTagSinglePayload(v11, v3, v10);
}

uint64_t sub_2311DBA28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_109_0();
  v9 = type metadata accessor for ViewDetails(v8);
  OUTLINED_FUNCTION_46_0(v9);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_90_0();
  }

  else
  {
    v13 = type metadata accessor for RankedCandidateSuggestion();
    result = OUTLINED_FUNCTION_46_0(v13);
    if (*(v15 + 84) == a3)
    {
      v12 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v5 + a4[6] + 24) = (v4 - 1);
        return result;
      }

      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44710, &qword_231375250);
      v16 = a4[9];
    }

    v11 = v5 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v12);
}

uint64_t sub_2311DBB34(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_46_2(*(a1 + 8));
  }

  v7 = sub_231369090();
  v8 = OUTLINED_FUNCTION_46_0(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[7];
  }

  else
  {
    v12 = sub_231367D80();
    v13 = OUTLINED_FUNCTION_46_0(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[9];
    }

    else
    {
      v15 = sub_231367300();
      v16 = OUTLINED_FUNCTION_46_0(v15);
      if (*(v17 + 84) == a2)
      {
        v10 = v16;
        v11 = a3[10];
      }

      else
      {
        v10 = sub_231369050();
        v11 = a3[11];
      }
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

uint64_t sub_2311DBC70(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_231369090();
    v9 = OUTLINED_FUNCTION_46_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[7];
    }

    else
    {
      v13 = sub_231367D80();
      v14 = OUTLINED_FUNCTION_46_0(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[9];
      }

      else
      {
        v16 = sub_231367300();
        v17 = OUTLINED_FUNCTION_46_0(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[10];
        }

        else
        {
          v11 = sub_231369050();
          v12 = a4[11];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2311DBDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231366690();
  v7 = OUTLINED_FUNCTION_46_0(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_46_2(*(a1 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t sub_2311DBE54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_109_0();
  v8 = sub_231366690();
  result = OUTLINED_FUNCTION_46_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_90_0();

    return __swift_storeEnumTagSinglePayload(v11, v4, v4, v12);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = (v4 - 1);
  }

  return result;
}

uint64_t sub_2311DBF40(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_231367550();
  v7 = OUTLINED_FUNCTION_46_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_231367490();
  v12 = OUTLINED_FUNCTION_46_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_7:
    v10 = a1 + v14;
    goto LABEL_8;
  }

  v15 = sub_231369050();
  v16 = OUTLINED_FUNCTION_46_0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[6];
    goto LABEL_7;
  }

  v19 = *(a1 + a3[7] + 8);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_2311DC070(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_231367550();
  v9 = OUTLINED_FUNCTION_46_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_231367490();
    v14 = OUTLINED_FUNCTION_46_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_231369050();
      result = OUTLINED_FUNCTION_46_0(v17);
      if (*(v19 + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return result;
      }

      v11 = result;
      v16 = a4[6];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2311DC224()
{
  v1 = sub_231367EA0();
  OUTLINED_FUNCTION_11(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2311DC2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231367E10();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2311DC350(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231367E10();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2311DC7F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2311DC828()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  sub_231369EE0();
  return v1;
}

uint64_t sub_2311DC85C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2311DC934()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2311DCA7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2311DCADC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2311DCB94()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_2311DCBEC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v4 = v0[12];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 23);

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_2311DCC5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2311DCC94()
{
  v1 = v0[2];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  v3 = v0[10];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 21);

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_2311DCD28()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[8];

  v4 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2311DCD78()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2311DCDAC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2311DCDE4()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[11];

  v4 = v0[12];

  OUTLINED_FUNCTION_15_24();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2311DCE9C()
{
  OUTLINED_FUNCTION_72_6((v0 + 16));
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2311DCECC()
{
  v1 = sub_231366690();
  OUTLINED_FUNCTION_11(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2311DCF4C()
{
  v1 = v0[7];

  v2 = v0[13];

  v3 = v0[24];

  v4 = v0[26];

  v5 = v0[31];

  v6 = v0[33];

  v7 = v0[49];

  v8 = v0[53];

  OUTLINED_FUNCTION_18_18();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

uint64_t sub_2311DCFB8()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 104);

  OUTLINED_FUNCTION_55_10();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2311DD028()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2311DD078()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2311DD0B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_231367300();
  v7 = OUTLINED_FUNCTION_46_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
    v14 = OUTLINED_FUNCTION_46_0(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[6];
    }

    else
    {
      v9 = sub_231369050();
      v16 = a3[7];
    }

    v10 = a1 + v16;
    goto LABEL_11;
  }

  v11 = *(a1 + a3[5] + 24);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_2311DD1D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_231367300();
  result = OUTLINED_FUNCTION_46_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
    v14 = OUTLINED_FUNCTION_46_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v11 = sub_231369050();
      v16 = a4[7];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2311DD37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231369990();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2311DD428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231369990();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2311DD528()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2311DD618()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2311DD650()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2311DD7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231367650();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_231366860();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2311DD83C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_231367650();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_231366860();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2311DD930(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231367D90();
    v9 = OUTLINED_FUNCTION_46_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[10];
    }

    else
    {
      v13 = sub_2313684A0();
      v14 = OUTLINED_FUNCTION_46_0(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[12];
      }

      else
      {
        v16 = sub_231366860();
        v17 = OUTLINED_FUNCTION_46_0(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[13];
        }

        else
        {
          v11 = sub_231367070();
          v12 = a3[14];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_2311DDA78(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = sub_231367D90();
    v9 = OUTLINED_FUNCTION_46_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[10];
    }

    else
    {
      v13 = sub_2313684A0();
      v14 = OUTLINED_FUNCTION_46_0(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[12];
      }

      else
      {
        v16 = sub_231366860();
        v17 = OUTLINED_FUNCTION_46_0(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[13];
        }

        else
        {
          v11 = sub_231367070();
          v12 = a4[14];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2311DDBBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;
  sub_231369EE0();
  sub_231369EE0();
  return OUTLINED_FUNCTION_44_0();
}

uint64_t sub_2311DDC04()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2311DDC3C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2311DDC84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

char *sub_2311DDD00(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_21(a3, result);
  }

  return result;
}

uint64_t sub_2311DDDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3(a6);
  v15 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_30(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_25_0(v10);

  return v13(v12);
}

uint64_t sub_2311DDECC()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  OUTLINED_FUNCTION_14();

  return v7(v2);
}

uint64_t sub_2311DDFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3(a6);
  v15 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_30(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_25_0(v10);

  return v13(v12);
}

uint64_t sub_2311DE0CC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v26 = sub_231367C70();
  v24 = *(v26 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v23 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313682C0();
  v16 = sub_231367D80();
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) != 1)
  {
    return (*(*(v16 - 8) + 32))(a4, v14, v16);
  }

  v18 = v4[10];
  v17 = v4[11];
  v19 = __swift_project_boxed_opaque_existential_1(v4 + 7, v18);
  v23[0] = a4;
  v23[1] = v19;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313682A0();
  sub_2313676D0();

  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2313677D0();
  (*(v17 + 8))(v27, v25, v10, 0, 0, v18, v17);
  (*(v24 + 8))(v10, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  result = __swift_getEnumTagSinglePayload(v14, 1, v16);
  if (result != 1)
  {
    return sub_2311D1F18(v14, &qword_27DD42F18, &unk_23136B810);
  }

  return result;
}

uint64_t sub_2311DE35C(uint64_t a1)
{
  v2 = sub_231366E80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  sub_2311E66F0(a1, &v38 - v17, &qword_27DD42F20, &qword_23136D410);
  if (__swift_getEnumTagSinglePayload(v18, 1, v2) == 1)
  {
    sub_2311D1F18(v18, &qword_27DD42F20, &qword_23136D410);
    v19 = MEMORY[0x277D84F90];
LABEL_14:
    sub_2311E66F0(a1, v16, &qword_27DD42F20, &qword_23136D410);
    if (__swift_getEnumTagSinglePayload(v16, 1, v2) == 1)
    {
      sub_2311D1F18(v16, &qword_27DD42F20, &qword_23136D410);
      v31 = 0;
    }

    else
    {
      v32 = sub_231366E60();
      (*(v3 + 8))(v16, v2);
      v31 = v32 ^ 1;
    }

    if (*(v19 + 16) == 1)
    {
      sub_231217CBC(v19, v13);

      if (__swift_getEnumTagSinglePayload(v13, 1, v2) == 1)
      {
        sub_2311D1F18(v13, &qword_27DD42F20, &qword_23136D410);
      }

      else
      {
        v33 = sub_231366E70();
        v35 = v34;
        (*(v3 + 8))(v13, v2);
        if (v33 == 0xD000000000000013 && 0x800000023137BE90 == v35)
        {

          return v31 & 1;
        }

        v37 = sub_23136A900();

        if (v37)
        {
          return v31 & 1;
        }
      }
    }

    else
    {
    }

    v31 = 0;
    return v31 & 1;
  }

  v41 = v16;
  v42 = a1;
  v43 = v13;
  v20 = sub_231366E30();
  v47 = *(v3 + 8);
  result = v47(v18, v2);
  v22 = 0;
  v23 = *(v20 + 16);
  v48 = v3 + 16;
  v44 = (v3 + 32);
  v45 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v23 == v22)
    {

      a1 = v42;
      v13 = v43;
      v16 = v41;
      v19 = v45;
      goto LABEL_14;
    }

    if (v22 >= *(v20 + 16))
    {
      break;
    }

    v24 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v25 = *(v3 + 72);
    (*(v3 + 16))(v8, v20 + v24 + v25 * v22, v2);
    if (sub_231366E60())
    {
      result = v47(v8, v2);
      ++v22;
    }

    else
    {
      v40 = *v44;
      v40(v46, v8, v2);
      v26 = v45;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F4DDC(0, *(v26 + 16) + 1, 1);
        v26 = v49;
      }

      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v45 = v29 + 1;
        v39 = v29;
        sub_2311F4DDC(v28 > 1, v29 + 1, 1);
        v30 = v45;
        v29 = v39;
        v26 = v49;
      }

      ++v22;
      *(v26 + 16) = v30;
      v45 = v26;
      result = (v40)(v26 + v24 + v29 * v25, v46, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2311DE838()
{
  OUTLINED_FUNCTION_8();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  OUTLINED_FUNCTION_40_0(v5);
  v7 = *(v6 + 64);
  v1[26] = OUTLINED_FUNCTION_43();
  v8 = sub_2313698C0();
  v1[27] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[28] = v9;
  v11 = *(v10 + 64);
  v1[29] = OUTLINED_FUNCTION_43();
  v12 = sub_231369050();
  v1[30] = v12;
  OUTLINED_FUNCTION_0(v12);
  v1[31] = v13;
  v15 = *(v14 + 64);
  v1[32] = OUTLINED_FUNCTION_67();
  v1[33] = swift_task_alloc();
  v16 = sub_231368D00();
  v1[34] = v16;
  OUTLINED_FUNCTION_0(v16);
  v1[35] = v17;
  v19 = *(v18 + 64);
  v1[36] = OUTLINED_FUNCTION_67();
  v1[37] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42ED0, &unk_23136B7C0);
  OUTLINED_FUNCTION_40_0(v20);
  v22 = *(v21 + 64);
  v1[38] = OUTLINED_FUNCTION_43();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42ED8, &qword_23136EBD0);
  OUTLINED_FUNCTION_40_0(v23);
  v25 = *(v24 + 64);
  v1[39] = OUTLINED_FUNCTION_43();
  v26 = sub_231368600();
  v1[40] = v26;
  OUTLINED_FUNCTION_0(v26);
  v1[41] = v27;
  v29 = *(v28 + 64);
  v1[42] = OUTLINED_FUNCTION_43();
  v30 = type metadata accessor for RankedCandidateSuggestion();
  v1[43] = v30;
  OUTLINED_FUNCTION_0(v30);
  v1[44] = v31;
  v1[45] = *(v32 + 64);
  v1[46] = OUTLINED_FUNCTION_67();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42EE0, &qword_23136B7D0);
  OUTLINED_FUNCTION_40_0(v33);
  v35 = *(v34 + 64);
  v1[49] = OUTLINED_FUNCTION_67();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v36 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v36, v37, v38);
}

uint64_t sub_2311DEB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_79();
  v19 = *(v18 + 400);
  v20 = *(v18 + 408);
  v21 = *(v18 + 344);
  v22 = *(v18 + 200);
  v23 = *(v18 + 176);
  v24 = swift_task_alloc();
  v25 = *(v18 + 184);
  *(v24 + 16) = v22;
  *(v24 + 24) = v25;
  sub_2311DF790(sub_2311E18A0, v23, v20);

  sub_2311E66F0(v20, v19, &qword_27DD42EE0, &qword_23136B7D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v21);
  v27 = *(v18 + 400);
  if (EnumTagSinglePayload == 1)
  {
    v28 = *(v18 + 176);
    sub_2311D1F18(v27, &qword_27DD42EE0, &qword_23136B7D0);
LABEL_9:
    sub_231369EE0();
    v43 = *(v18 + 176);
    goto LABEL_10;
  }

  v29 = *(v18 + 192);
  sub_2311E18C4(v27, *(v18 + 384));
  sub_2311CF324(v29, v18 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42EF0, &unk_2313762A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42EF8, &unk_23136B7F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v18 + 128) = 0;
    *(v18 + 96) = 0u;
    *(v18 + 112) = 0u;
    v38 = &unk_27DD42F00;
    v39 = &unk_2313762B0;
    v40 = v18 + 96;
    goto LABEL_7;
  }

  v30 = *(v18 + 384);
  v31 = *(v18 + 344);
  v32 = *(v18 + 304);
  v33 = *(v18 + 128);
  __swift_project_boxed_opaque_existential_1((v18 + 96), *(v18 + 120));
  v34 = (v30 + *(v31 + 20));
  v35 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_231368320();
  sub_231368E80();

  v36 = sub_2313689A0();
  if (__swift_getEnumTagSinglePayload(v32, 1, v36) == 1)
  {
    v37 = *(v18 + 304);
    __swift_destroy_boxed_opaque_existential_1Tm((v18 + 96));
    v38 = &unk_27DD42ED0;
    v39 = &unk_23136B7C0;
    v40 = v37;
LABEL_7:
    sub_2311D1F18(v40, v38, v39);
    __swift_storeEnumTagSinglePayload(*(v18 + 312), 1, 1, *(v18 + 320));
LABEL_8:
    v41 = *(v18 + 312);
    v42 = *(v18 + 176);
    sub_2311E1928(*(v18 + 384));
    sub_2311D1F18(v41, &qword_27DD42ED8, &qword_23136EBD0);
    goto LABEL_9;
  }

  v74 = *(v18 + 312);
  v73 = *(v18 + 320);
  v75 = *(v18 + 304);
  sub_231368990();
  (*(*(v36 - 8) + 8))(v75, v36);
  __swift_destroy_boxed_opaque_existential_1Tm((v18 + 96));
  if (__swift_getEnumTagSinglePayload(v74, 1, v73) == 1)
  {
    goto LABEL_8;
  }

  v77 = *(v18 + 288);
  v76 = *(v18 + 296);
  v78 = *(v18 + 272);
  v79 = *(v18 + 280);
  (*(*(v18 + 328) + 32))(*(v18 + 336), *(v18 + 312), *(v18 + 320));
  sub_2313685F0();
  (*(v79 + 104))(v77, *MEMORY[0x277D61170], v78);
  v80 = OUTLINED_FUNCTION_28_0();
  v82 = sub_231312154(v80, v81);
  v83 = *(v79 + 8);
  v83(v77, v78);
  v83(v76, v78);
  if (v82 & 1) != 0 && (v84 = *(v18 + 200), (sub_2311DE35C(*(v18 + 384) + *(*(v18 + 344) + 24))))
  {
    v85 = *(v18 + 384);
    v86 = *(v18 + 352);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F08, &unk_23136B800);
    v87 = *(v86 + 72);
    v88 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_23136B670;
    sub_2311E1984(v85, v43 + v88);
  }

  else
  {
    v43 = *(v18 + 176);
    sub_231369EE0();
  }

  v89 = *(v18 + 384);
  (*(*(v18 + 328) + 8))(*(v18 + 336), *(v18 + 320));
  sub_2311E1928(v89);
LABEL_10:
  *(v18 + 416) = v43;
  v44 = *(v18 + 392);
  v45 = *(v18 + 344);
  sub_2311E66F0(*(v18 + 408), v44, &qword_27DD42EE0, &qword_23136B7D0);
  if (__swift_getEnumTagSinglePayload(v44, 1, v45) == 1)
  {
    v46 = *(v18 + 392);
    sub_2311D1F18(*(v18 + 408), &qword_27DD42EE0, &qword_23136B7D0);
    sub_2311D1F18(v46, &qword_27DD42EE0, &qword_23136B7D0);
LABEL_17:
    OUTLINED_FUNCTION_18_3();

    OUTLINED_FUNCTION_14();
    v64 = *(v18 + 416);
    OUTLINED_FUNCTION_31();

    return v67(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v47 = *(v18 + 376);
  v48 = *(v18 + 344);
  v49 = *(v18 + 200);
  sub_2311E18C4(*(v18 + 392), v47);
  if ((sub_2311DE35C(v47 + *(v48 + 24)) & 1) == 0)
  {
    v63 = *(v18 + 376);
    sub_2311D1F18(*(v18 + 408), &qword_27DD42EE0, &qword_23136B7D0);
    sub_2311E1928(v63);
    goto LABEL_17;
  }

  v50 = (*(v18 + 376) + *(*(v18 + 344) + 20));
  v51 = v50[4];
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  v52 = *(MEMORY[0x277D60F68] + 4);
  v53 = swift_task_alloc();
  *(v18 + 424) = v53;
  *v53 = v18;
  v53[1] = sub_2311DF108;
  v54 = *(v18 + 264);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2821C6E60](v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2311DF108()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 424);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2311DF1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t, uint64_t), uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_79();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = *(v26 + 256);
  v30 = *(v26 + 264);
  v31 = *(v26 + 240);
  v32 = *(v26 + 248);
  v33 = *(v26 + 232);
  sub_2313690F0();
  (*(v32 + 16))(v29, v30, v31);
  v34 = sub_2313698A0();
  v35 = sub_23136A3A0();
  v36 = os_log_type_enabled(v34, v35);
  v38 = *(v26 + 248);
  v37 = *(v26 + 256);
  v39 = *(v26 + 232);
  v40 = *(v26 + 240);
  v42 = *(v26 + 216);
  v41 = *(v26 + 224);
  if (v36)
  {
    v78 = *(v26 + 216);
    v43 = swift_slowAlloc();
    LODWORD(a10) = v35;
    v44 = swift_slowAlloc();
    a15 = v44;
    *v43 = 136315138;
    sub_2311E6908(&qword_27DD42EE8, MEMORY[0x277D61268]);
    v45 = sub_23136A8B0();
    v76 = v39;
    v47 = v46;
    v48 = OUTLINED_FUNCTION_39_0();
    v49(v48);
    v50 = sub_2311CFD58(v45, v47, &a15);

    *(v43 + 4) = v50;
    _os_log_impl(&dword_2311CB000, v34, a10, "Shadowing logShadowSelected with topCandidate %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_15();

    (*(v41 + 8))(v76, v78);
  }

  else
  {

    v51 = OUTLINED_FUNCTION_39_0();
    v52(v51);
    (*(v41 + 8))(v39, v42);
  }

  v54 = *(v26 + 368);
  v53 = *(v26 + 376);
  v55 = *(v26 + 352);
  v56 = *(v26 + 360);
  v57 = *(v26 + 264);
  v77 = *(v26 + 240);
  v79 = *(v26 + 408);
  v59 = *(v26 + 200);
  v58 = *(v26 + 208);
  v61 = *(v26 + 184);
  v60 = *(v26 + 192);
  v62 = sub_23136A2C0();
  __swift_storeEnumTagSinglePayload(v58, 1, 1, v62);
  sub_2311E1984(v53, v54);
  sub_2311CF324(v61, v26 + 16);
  sub_2311CF324(v60, v26 + 56);
  v63 = (*(v55 + 80) + 40) & ~*(v55 + 80);
  v64 = (v56 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v65[2] = 0;
  v65[3] = 0;
  v65[4] = v59;
  sub_2311E18C4(v54, v65 + v63);
  sub_2311D38A8((v26 + 16), v65 + v64);
  sub_2311D38A8((v26 + 56), v65 + ((v64 + 47) & 0xFFFFFFFFFFFFFFF8));

  sub_231271090(0, 0, v58, &unk_23136B7E0, v65);

  a14(v57, v77);
  sub_2311D1F18(v79, &qword_27DD42EE0, &qword_23136B7D0);
  sub_2311E1928(v53);
  OUTLINED_FUNCTION_18_3();

  OUTLINED_FUNCTION_14();
  v66 = *(v26 + 416);
  OUTLINED_FUNCTION_31();

  return v69(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, v77, v79, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2311DF574(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v23 = a2;
  v5 = sub_231367D80();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for RankedCandidateSuggestion();
  v15 = *(v14 + 24);
  sub_2311E66F0(a1 + v15, v13, &qword_27DD42F20, &qword_23136D410);
  v16 = sub_231366E80();
  if (__swift_getEnumTagSinglePayload(v13, 1, v16) == 1)
  {
    sub_2311D1F18(v13, &qword_27DD42F20, &qword_23136D410);
  }

  else
  {
    v17 = sub_231366E60();
    (*(*(v16 - 8) + 8))(v13, v16);
    if ((v17 & 1) == 0 && (sub_2311DE35C(a1 + v15) & 1) == 0)
    {
      v18 = 0;
      return v18 & 1;
    }
  }

  sub_2311DE0CC((a1 + *(v14 + 20)), v21, v22, v9);
  v18 = sub_231367D30();
  (*(v6 + 8))(v9, v5);
  return v18 & 1;
}

uint64_t sub_2311DF790@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a3;
  v6 = type metadata accessor for RankedCandidateSuggestion();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = *(a2 + 16);
  while (1)
  {
    if (v12 == v11)
    {
      v14 = 1;
      v15 = v18;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v6);
    }

    sub_2311E1984(a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v10);
    v13 = a1(v10);
    if (v3)
    {
      return sub_2311E1928(v10);
    }

    if (v13)
    {
      break;
    }

    sub_2311E1928(v10);
    ++v11;
  }

  v15 = v18;
  sub_2311E18C4(v10, v18);
  v14 = 0;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v6);
}

uint64_t sub_2311DF8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_2313698C0();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = sub_2313667A0();
  v7[9] = v11;
  v12 = *(v11 - 8);
  v7[10] = v12;
  v13 = *(v12 + 64) + 15;
  v7[11] = swift_task_alloc();
  v14 = sub_231367D80();
  v7[12] = v14;
  v15 = *(v14 - 8);
  v7[13] = v15;
  v16 = *(v15 + 64) + 15;
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2311DFA74, 0, 0);
}

uint64_t sub_2311DFA74()
{
  v1 = v0[14];
  v2 = v0[11];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(type metadata accessor for RankedCandidateSuggestion() + 20);
  sub_2311DE0CC((v6 + v7), v4, v3, v1);
  v8 = v5[5];
  v9 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F10, &unk_23136C970);
  v10 = swift_allocObject();
  v0[15] = v10;
  *(v10 + 16) = xmmword_23136B670;
  sub_2311CF324(v6 + v7, v10 + 32);
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2313677C0();
  v12 = *(MEMORY[0x277D60608] + 4);
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_2311DFBE4;
  v14 = v0[14];
  v15 = v0[11];

  return MEMORY[0x2821C60E8](v10, v14, v15, v8, v9);
}

uint64_t sub_2311DFBE4()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v3 = v2;
  v5 = v4[16];
  v6 = v4[15];
  v7 = v4[11];
  v8 = v4[10];
  v9 = v4[9];
  v10 = *v1;
  OUTLINED_FUNCTION_2();
  *v11 = v10;
  *(v12 + 136) = v0;

  (*(v8 + 8))(v7, v9);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2311DFD54()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[11];
  v2 = v0[8];
  (*(v0[13] + 8))(v0[14], v0[12]);

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_2311DFDE4()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_16();
  v1 = v0[8];
  (*(v0[13] + 8))(v0[14], v0[12]);
  sub_2313690F0();
  v2 = sub_2313698A0();
  v3 = sub_23136A3B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[17];
  v6 = v0[7];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2311CB000, v2, v3, "Error logging through SiriRemembersLogger for shadow", v7, 2u);
    OUTLINED_FUNCTION_29();
  }

  v8 = v0[14];
  v9 = v0[11];
  (*(v6 + 8))(v0[8], v0[6]);

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_86();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_2311DFF10()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_2311DFF74()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311E6A24;

  return sub_2311DE838();
}

uint64_t sub_2311E0024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311E0054()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[11];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  OUTLINED_FUNCTION_3(v3);
  v13 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_2311E0178;
  v8 = v0[9];
  v9 = v0[10];
  v11 = v0[7];
  v10 = v0[8];

  return v13(v11, v10, v8, v9, v2, v3);
}

uint64_t sub_2311E0178()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_2311E0260()
{
  OUTLINED_FUNCTION_60_0();
  v3 = *(v2[13] + 16);
  v2[14] = v3;
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      OUTLINED_FUNCTION_77(v4);
      if (v7)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_42(v6);
      if (v8)
      {
        break;
      }

      sub_231369EE0();
      v1 = *(v0 + 16);
      v9 = *(v5 + 16);
      v10 = v9 + v1;
      if (__OFADD__(v9, v1))
      {
        goto LABEL_25;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = v2[16];
      if (!isUniquelyReferenced_nonNull_native || v10 > *(v5 + 24) >> 1)
      {
        OUTLINED_FUNCTION_83(isUniquelyReferenced_nonNull_native);
        v5 = v12;
      }

      if (*(v0 + 16))
      {
        v13 = *(OUTLINED_FUNCTION_82() - 8);
        if (v10 < v1)
        {
          goto LABEL_27;
        }

        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();

        if (v1)
        {
          v16 = *(v5 + 16);
          v17 = __OFADD__(v16, v1);
          v18 = v16 + v1;
          if (v17)
          {
            goto LABEL_28;
          }

          *(v5 + 16) = v18;
        }
      }

      else
      {

        if (v1)
        {
          goto LABEL_26;
        }
      }

      v4 = v2[15] + 1;
      if (v4 == v2[14])
      {
        v19 = v2[13];

        goto LABEL_18;
      }
    }

    v2[19] = v0;
    v2[20] = 0;
    sub_231369EE0();
    sub_231369EE0();
    sub_2311CF324(v1 + 32, (v2 + 2));
    v22 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    OUTLINED_FUNCTION_3(v22);
    v29 = v23 + *v23;
    v25 = *(v24 + 4);
    v26 = swift_task_alloc();
    v2[21] = v26;
    *v26 = v2;
    v27 = OUTLINED_FUNCTION_10_0(v26);

    v28(v27);
  }

  else
  {

LABEL_18:
    v20 = OUTLINED_FUNCTION_6();

    v21(v20);
  }
}

uint64_t sub_2311E04D8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *(v4 + 152);
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v2 + 176) = v9;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_2311E05E0()
{
  OUTLINED_FUNCTION_60_0();
  v1 = v0[20] + 1;
  if (v1 == v0[18])
  {
    v2 = v0[17];

    v3 = v0[22];
    v4 = v0[16];
    while (1)
    {
      v5 = *(v3 + 16);
      v6 = *(v4 + 16);
      v7 = v6 + v5;
      if (__OFADD__(v6, v5))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = v0[16];
      if (!isUniquelyReferenced_nonNull_native || v7 > *(v4 + 24) >> 1)
      {
        OUTLINED_FUNCTION_83(isUniquelyReferenced_nonNull_native);
        v4 = v9;
      }

      if (*(v3 + 16))
      {
        v10 = *(OUTLINED_FUNCTION_82() - 8);
        if (v7 < v5)
        {
          goto LABEL_28;
        }

        v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
        v12 = *(v10 + 72);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v13 = *(v4 + 16);
          v14 = __OFADD__(v13, v5);
          v15 = v13 + v5;
          if (v14)
          {
            goto LABEL_29;
          }

          *(v4 + 16) = v15;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_26;
        }
      }

      v16 = v0[15] + 1;
      if (v16 == v0[14])
      {
        break;
      }

      OUTLINED_FUNCTION_77(v16);
      if (v18)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_42(v17);
      if (v19)
      {
        sub_231369EE0();
        sub_231369EE0();
        v1 = 0;
        goto LABEL_22;
      }

      sub_231369EE0();
    }

    v20 = v0[13];

    v21 = OUTLINED_FUNCTION_6();

    v22(v21);
  }

  else
  {
    v3 = v0[22];
    v5 = v0[17];
LABEL_22:
    v0[19] = v3;
    v0[20] = v1;
    sub_2311CF324(v5 + 40 * v1 + 32, (v0 + 2));
    v23 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_3(v23);
    v30 = v24 + *v24;
    v26 = *(v25 + 4);
    v27 = swift_task_alloc();
    v0[21] = v27;
    *v27 = v0;
    v28 = OUTLINED_FUNCTION_10_0();

    v29(v28);
  }
}

uint64_t sub_2311E086C()
{
  OUTLINED_FUNCTION_60_0();
  v3 = v2;
  v1[110] = v0;
  v1[109] = v4;
  v1[108] = v5;
  memcpy(v1 + 55, v6, 0x48uLL);
  memcpy(v1 + 2, v3, 0x138uLL);
  v7 = v3[39];
  v8 = v3[40];
  v1[111] = v7;
  v1[112] = v8;
  v9 = v3[41];
  v1[113] = v9;
  v10 = v3[42];
  v1[114] = v10;
  v11 = v3[43];
  v1[115] = v11;
  memcpy(v1 + 46, v3 + 44, 0x48uLL);
  v1[41] = v7;
  v1[42] = v8;
  v1[43] = v9;
  v1[44] = v10;
  v1[45] = v11;
  v12 = swift_task_alloc();
  v1[116] = v12;
  *v12 = v1;
  v12[1] = sub_2311E0998;

  return sub_2312A165C();
}

uint64_t sub_2311E0998()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 928);
  *v2 = *v0;
  *(v1 + 936) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311E0A80()
{
  v30 = v0;
  v1 = *(v0 + 936);
  v28 = *(v0 + 920);
  v2 = *(v0 + 912);
  v3 = *(v0 + 904);
  v4 = *(v0 + 896);
  v5 = *(v0 + 888);
  v6 = *(v0 + 872);
  v7 = sub_231368770();
  v9 = v8;
  v10 = type metadata accessor for PolicySelector();
  v11 = swift_allocObject();
  *(v0 + 944) = v11;
  v11[2] = v1;
  v11[3] = v7;
  v11[4] = v9;
  *(v0 + 608) = v10;
  *(v0 + 616) = &off_2845F6D58;
  *(v0 + 584) = v11;
  sub_2311CF324(v6, v0 + 664);

  sub_2313690A0();
  v12 = sub_231366DE0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_231366DD0();
  *(v0 + 728) = v12;
  *(v0 + 736) = MEMORY[0x277D604F0];
  *(v0 + 704) = v15;
  v16 = type metadata accessor for HintsExpSuggestionSelector();
  v17 = swift_allocObject();
  sub_2311D38A8((v0 + 704), v17 + 16);
  sub_2311D38A8((v0 + 664), v17 + 56);
  *(v0 + 648) = v16;
  *(v0 + 656) = &off_2845F2C38;
  *(v0 + 624) = v17;
  v18 = type metadata accessor for SiriHelpSuggestionSelector();
  memcpy(__dst, (v0 + 440), sizeof(__dst));
  sub_2311E6694(v0 + 440, v0 + 512);
  v19 = sub_231308C64(__dst);
  *(v0 + 768) = v18;
  *(v0 + 776) = &off_2845F6948;
  *(v0 + 744) = v19;
  v20 = type metadata accessor for AssistantSuggestionsTieringSelector();
  v21 = swift_allocObject();
  v21[2] = v5;
  v21[3] = v4;
  v21[4] = v3;
  v21[5] = v2;
  v21[6] = v28;
  *(v0 + 808) = v20;
  *(v0 + 816) = &off_2845F35E0;
  *(v0 + 784) = v21;
  v22 = type metadata accessor for EducationalSelector();
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  *(v0 + 848) = v22;
  *(v0 + 856) = &off_2845F5850;
  *(v0 + 824) = v23;
  v24 = swift_task_alloc();
  *(v0 + 952) = v24;
  *v24 = v0;
  v24[1] = sub_2311E0D30;
  v25 = *(v0 + 880);
  v26 = *(v0 + 864);

  return sub_2311E0E8C();
}

uint64_t sub_2311E0D30()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 952);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 103);
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 98);
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 93);
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 78);
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 73);
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2311E0E34()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 944);

  OUTLINED_FUNCTION_56_0();

  return v2();
}

uint64_t sub_2311E0E8C()
{
  OUTLINED_FUNCTION_8();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[7] = v7;
  v8 = sub_231367D80();
  v1[14] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[15] = v9;
  v11 = *(v10 + 64);
  v1[16] = OUTLINED_FUNCTION_43();
  v12 = sub_231367C70();
  v1[17] = v12;
  OUTLINED_FUNCTION_0(v12);
  v1[18] = v13;
  v15 = *(v14 + 64);
  v1[19] = OUTLINED_FUNCTION_43();
  v16 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2311E0F88()
{
  OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42FF8, &qword_23136B8D0);
  swift_allocObject();
  v1 = sub_2311E97B4();
  *(v0 + 160) = v1;

  return MEMORY[0x2822009F8](sub_2311E1010, v1, 0);
}

uint64_t sub_2311E1010()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 160);
  v2 = sub_2311E3E90(sub_2311E15A0, 0);
  *(v0 + 168) = v2;

  return MEMORY[0x2822009F8](sub_2311E109C, v2, 0);
}

uint64_t sub_2311E109C()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[21];
  v2 = v0[9];
  sub_2311E410C(v0[8], 0xE000000000000000);
  sub_2311E410C(v2, 0xE000000000000000);
  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2311E110C()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[21];
  (*(v0[18] + 104))(v0[19], *MEMORY[0x277D60AE0], v0[17]);
  v2 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2311E1188()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[17];
  v0[22] = sub_2311E4054(v0[19], v0[10]);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_28_0();
  v6(v5);
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2311E121C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 176);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  *(v0 + 240) = *MEMORY[0x277D60B78];
  v5 = *(v3 + 104);
  *(v0 + 184) = v5;
  *(v0 + 192) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v2);
  v6 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311E12A8()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[22];
  v2 = v0[15];
  v3 = v0[14];
  v0[25] = sub_2311E3F9C(v0[16], v0[11]);

  v0[26] = *(v2 + 8);
  v0[27] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4 = OUTLINED_FUNCTION_28_0();
  v5(v4);
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311E1348()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  (*(v0 + 184))(*(v0 + 128), *(v0 + 240), *(v0 + 112));
  v3 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2311E13B4()
{
  OUTLINED_FUNCTION_16();
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[14];
  v5 = sub_2311E3F9C(v0[16], v0[12]);
  v0[28] = v5;

  v6 = OUTLINED_FUNCTION_28_0();
  v2(v6);

  return MEMORY[0x2822009F8](sub_2311E1454, v5, 0);
}

uint64_t sub_2311E1454()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 224);
  *(v0 + 232) = sub_2311E9A84();
  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2311E14B4()
{
  OUTLINED_FUNCTION_60_0();
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 56);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43000, &qword_23136B8D8);
  *(v0 + 48) = &off_2845F2C18;
  *(v0 + 16) = v2;
  v7 = swift_allocObject();
  sub_2311D38A8((v0 + 16), v7 + 16);
  v6[3] = v5;
  v6[4] = &off_2845F2C28;

  *v6 = v7;

  OUTLINED_FUNCTION_56_0();

  return v8();
}

uint64_t sub_2311E15B8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2311E1614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2311DDECC;

  return sub_2311E0024(a1, a2, a3, a4);
}

uint64_t sub_2311E16D4()
{
  OUTLINED_FUNCTION_16();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_30(v6);
  *v7 = v8;
  v7[1] = sub_2311E6A24;

  return (sub_2311E45E8)(v5, v3, v1, sub_23120F9BC, 0);
}

uint64_t sub_2311E17A8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311E6A24;

  return sub_2311E16D4();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2311E18C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedCandidateSuggestion();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2311E1928(uint64_t a1)
{
  v2 = type metadata accessor for RankedCandidateSuggestion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2311E1984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedCandidateSuggestion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2311E19E8()
{
  OUTLINED_FUNCTION_60_0();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for RankedCandidateSuggestion();
  OUTLINED_FUNCTION_0(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v0[2];
  v11 = v0[3];
  v12 = v0[4];
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_2311D05C8;

  return sub_2311DF8F8(v4, v10, v11, v12, v0 + v7, v0 + v9, v0 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_2311E1B18(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F40, &qword_23136B860);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2311E53F4(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_2311E1BB0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E658C(v4);
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_2311E5828(v8, a2);
  *a1 = v4;
}

uint64_t sub_2311E1C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[49] = a3;
  v4[50] = v3;
  v4[47] = a1;
  v4[48] = a2;
  v5 = sub_2313698C0();
  v4[51] = v5;
  v6 = *(v5 - 8);
  v4[52] = v6;
  v7 = *(v6 + 64) + 15;
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F78, &qword_23136B898) - 8) + 64) + 15;
  v4[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2311E1D60, 0, 0);
}

uint64_t sub_2311E1D60()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_21_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F80, &qword_23136B8A0);
  OUTLINED_FUNCTION_35_1(v2);
  v3 = OUTLINED_FUNCTION_74_0();
  sub_2311E66F0(v3, v4, v5, v6);
  OUTLINED_FUNCTION_71_0();
  sub_2311CF324(v0, v1 + 96);
  OUTLINED_FUNCTION_73();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_5_0(v7);
  v8 = *(MEMORY[0x277D60B28] + 4);
  v9 = swift_task_alloc();
  *(v1 + 464) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F88, &unk_23136B8B0);
  OUTLINED_FUNCTION_47_0();
  *v9 = v10;
  v9[1] = sub_2311E1E7C;
  v11 = *(v1 + 448);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821C6B08](v12, v13, v14, v15, v16, v17, v18, v19);
}

void sub_2311E1E7C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 464);
  *v4 = *v1;
  v3[59] = v7;
  v3[60] = v0;

  if (v0)
  {
  }

  else
  {
    v8 = v3[57];
    sub_2311D1F18(v3[56], &qword_27DD42F78, &qword_23136B898);

    OUTLINED_FUNCTION_13();

    MEMORY[0x2822009F8](v9, v10, v11);
  }
}

void sub_2311E1FC0()
{
  v103 = v2;
  OUTLINED_FUNCTION_33_1();
  sub_231369EE0();
  sub_2311E1BB0(v102, v0);
  if (v1)
  {

    return;
  }

  OUTLINED_FUNCTION_65_0();
  v3 = v102[0];
  sub_2313690F0();

  v4 = sub_2313698A0();
  sub_23136A3A0();

  v5 = OUTLINED_FUNCTION_64_0();
  v6 = *(v2 + 440);
  v8 = *(v2 + 408);
  v7 = *(v2 + 416);
  v92 = v3;
  if (v5)
  {
    v9 = OUTLINED_FUNCTION_37_0();
    v10 = OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_41(v10);
    *v9 = 136315394;
    v11 = MEMORY[0x23192A860](v3, &type metadata for ProviderKey);
    v13 = sub_2311CFD58(v11, v12, v102);

    *(v9 + 4) = v13;
    *(v9 + 14) = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_9_1(&dword_2311CB000, v14, v15, "Determined ordered provider keys as: %s for %s");
    OUTLINED_FUNCTION_19_2();
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_15();
  }

  v89 = *(v7 + 8);
  v89(v6, v8);
  v16 = *(v2 + 400);
  v94 = v16[8];
  if (!v94)
  {
    v38 = 0;
    v39 = v92;
    v40 = *(v92 + 16);
    v21 = MEMORY[0x277D84F90];
    while (v40 != v38)
    {
      if (v38 >= *(v39 + 16))
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (*(v16[2] + 16))
      {
        v41 = *(v39 + 8 * v38 + 32);

        v42 = sub_2312160A8();
        v43 = MEMORY[0x277D84F90];
        if (v44)
        {
          OUTLINED_FUNCTION_70(v42);
        }
      }

      else
      {
        v43 = MEMORY[0x277D84F90];
      }

      v45 = *(v43 + 16);
      v46 = *(v21 + 16);
      if (__OFADD__(v46, v45))
      {
        goto LABEL_64;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v46 + v45 > *(v21 + 24) >> 1)
      {
        sub_23126DC44();
        v21 = v47;
      }

      if (*(v43 + 16))
      {
        v48 = *(v21 + 16);
        v49 = *(v21 + 24);
        OUTLINED_FUNCTION_51_0();
        if (v50 != v51)
        {
          goto LABEL_67;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F60, &qword_23136BD60);
        OUTLINED_FUNCTION_34();

        if (v45)
        {
          v52 = *(v21 + 16);
          v51 = __OFADD__(v52, v45);
          v53 = v52 + v45;
          if (v51)
          {
            goto LABEL_68;
          }

          *(v21 + 16) = v53;
        }
      }

      else
      {

        if (v45)
        {
          goto LABEL_65;
        }
      }

      ++v38;
      v39 = v92;
    }

    v54 = *(v2 + 424);
    v55 = *(v2 + 400);

    sub_2313690F0();

    sub_231369EE0();
    v56 = sub_2313698A0();
    sub_23136A3A0();

    v57 = OUTLINED_FUNCTION_64_0();
    v58 = *(v2 + 416);
    v59 = *(v2 + 424);
    v60 = *(v2 + 408);
    if (v57)
    {
      v100 = *(v2 + 424);
      v61 = *(v2 + 400);
      v98 = *(v2 + 408);
      v62 = OUTLINED_FUNCTION_45();
      v63 = OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_41(v63);
      *v62 = 136315394;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F60, &qword_23136BD60);
      MEMORY[0x23192A860](v21, v64);
      OUTLINED_FUNCTION_68_0();
      OUTLINED_FUNCTION_63_0();

      OUTLINED_FUNCTION_49();
      *(v62 + 14) = sub_2311CFD58(*(v61 + 32), *(v61 + 40), v102);
      OUTLINED_FUNCTION_9_1(&dword_2311CB000, v65, v66, "Not dedupping keys to: %s for %s");
      OUTLINED_FUNCTION_19_2();
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_15();

      v68 = v98;
      v67 = v100;
    }

    else
    {

      v67 = v59;
      v68 = v60;
    }

    goto LABEL_59;
  }

  v17 = v16[9];
  v101 = MEMORY[0x277D84FA0];
  v18 = v92;
  v91 = *(v92 + 16);
  if (!v91)
  {

    v21 = MEMORY[0x277D84F90];
LABEL_55:
    v69 = *(v2 + 432);
    v70 = *(v2 + 400);

    sub_2313690F0();

    sub_231369EE0();
    v71 = sub_2313698A0();
    v72 = sub_23136A3A0();

    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v2 + 432);
    v75 = *(v2 + 408);
    v76 = *(v2 + 416);
    if (v73)
    {
      v97 = *(v2 + 432);
      v77 = OUTLINED_FUNCTION_37_0();
      v102[0] = OUTLINED_FUNCTION_44();
      *v77 = 136315394;
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F60, &qword_23136BD60);
      MEMORY[0x23192A860](v21, v78);

      v79 = OUTLINED_FUNCTION_57_2();
      sub_2311CFD58(v79, v80, v81);

      OUTLINED_FUNCTION_48();
      *(v77 + 14) = sub_2311CFD58(*(v74 + 32), *(v74 + 40), v102);
      OUTLINED_FUNCTION_36_1(&dword_2311CB000, v82, v83, "dedupping keys to: %s for %s");
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
      sub_2311D8D2C(v94);

      v67 = v97;
      v68 = v75;
    }

    else
    {
      sub_2311D8D2C(v94);

      v67 = OUTLINED_FUNCTION_28_0();
    }

LABEL_59:
    v89(v67, v68);
    v85 = *(v2 + 440);
    v84 = *(v2 + 448);
    v87 = *(v2 + 424);
    v86 = *(v2 + 432);

    OUTLINED_FUNCTION_14();

    v88(v21);
    return;
  }

  v19 = v16[2];

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v90 = v19;
  while (v20 < *(v18 + 16))
  {
    v93 = v20;
    v22 = *(v92 + 32 + 8 * v20);
    v23 = *(v19 + 16);

    if (v23 && (v24 = sub_2312160A8(), (v25 & 1) != 0))
    {
      v26 = *(*(v19 + 56) + 8 * v24);
      sub_231369EE0();
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
    }

    v27 = v93;
    v99 = *(v26 + 16);
    if (v99)
    {
      v28 = 0;
      v95 = v26 + 32;
      v96 = v26;
      while (v28 < *(v26 + 16))
      {
        sub_2311CF324(v95 + 40 * v28, v2 + 136);
        v94(v2 + 136);
        if (*(v101 + 16))
        {
          v29 = *(v101 + 40);
          v30 = sub_23136A5D0();
          v31 = ~(-1 << *(v101 + 32));
          while (1)
          {
            v32 = v30 & v31;
            if (((*(v101 + 56 + (((v30 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v30 & v31)) & 1) == 0)
            {
              break;
            }

            sub_2311E5778(*(v101 + 48) + 40 * v32, v2 + 216);
            v33 = MEMORY[0x23192AC90](v2 + 216, v2 + 176);
            sub_2311E57D4(v2 + 216);
            v30 = v32 + 1;
            if (v33)
            {
              sub_2311E57D4(v2 + 176);
              __swift_destroy_boxed_opaque_existential_1Tm((v2 + 136));
              v26 = v96;
              goto LABEL_28;
            }
          }
        }

        sub_2311E5778(v2 + 176, v2 + 296);
        sub_23122E0DC(v2 + 256, v2 + 296);
        sub_2311E57D4(v2 + 256);
        sub_2311CF324(v2 + 136, v2 + 336);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = *(v21 + 16);
          OUTLINED_FUNCTION_23();
          sub_23126DC44();
          v21 = v36;
        }

        v34 = *(v21 + 16);
        if (v34 >= *(v21 + 24) >> 1)
        {
          sub_23126DC44();
          v21 = v37;
        }

        v26 = v96;
        sub_2311E57D4(v2 + 176);
        __swift_destroy_boxed_opaque_existential_1Tm((v2 + 136));
        *(v21 + 16) = v34 + 1;
        sub_2311D38A8((v2 + 336), v21 + 40 * v34 + 32);
LABEL_28:
        if (++v28 == v99)
        {

          v18 = v92;
          v27 = v93;
          v19 = v90;
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_63;
    }

LABEL_31:
    v20 = v27 + 1;

    if (v20 == v91)
    {

      goto LABEL_55;
    }
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

uint64_t sub_2311E2838()
{
  OUTLINED_FUNCTION_8();
  v1[49] = v2;
  v1[50] = v0;
  v1[47] = v3;
  v1[48] = v4;
  v5 = sub_2313698C0();
  v1[51] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[52] = v6;
  v8 = *(v7 + 64);
  v1[53] = OUTLINED_FUNCTION_67();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F78, &qword_23136B898);
  OUTLINED_FUNCTION_40_0(v9);
  v11 = *(v10 + 64);
  v1[56] = OUTLINED_FUNCTION_43();
  v12 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2311E2924()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_21_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F80, &qword_23136B8A0);
  OUTLINED_FUNCTION_35_1(v2);
  v3 = OUTLINED_FUNCTION_74_0();
  sub_2311E66F0(v3, v4, v5, v6);
  OUTLINED_FUNCTION_71_0();
  sub_2311CF324(v0, v1 + 96);
  OUTLINED_FUNCTION_73();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_5_0(v7);
  v8 = *(MEMORY[0x277D60B28] + 4);
  v9 = swift_task_alloc();
  *(v1 + 464) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F88, &unk_23136B8B0);
  OUTLINED_FUNCTION_47_0();
  *v9 = v10;
  v9[1] = sub_2311E2A40;
  v11 = *(v1 + 448);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821C6B08](v12, v13, v14, v15, v16, v17, v18, v19);
}

void sub_2311E2A40()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 464);
  *v4 = *v1;
  v3[59] = v7;
  v3[60] = v0;

  if (v0)
  {
  }

  else
  {
    v8 = v3[57];
    sub_2311D1F18(v3[56], &qword_27DD42F78, &qword_23136B898);

    OUTLINED_FUNCTION_13();

    MEMORY[0x2822009F8](v9, v10, v11);
  }
}

void sub_2311E2B84()
{
  v126 = v2;
  OUTLINED_FUNCTION_33_1();
  sub_231369EE0();
  sub_2311E1BB0(v125, v0);
  if (v1)
  {

    OUTLINED_FUNCTION_52_0();
  }

  else
  {
    OUTLINED_FUNCTION_65_0();
    v4 = v125[0];
    sub_2313690F0();

    v5 = sub_2313698A0();
    sub_23136A3A0();
    OUTLINED_FUNCTION_84();

    v6 = OUTLINED_FUNCTION_64_0();
    v7 = v2[55];
    v9 = v2[51];
    v8 = v2[52];
    if (v6)
    {
      v121 = v2[55];
      OUTLINED_FUNCTION_37_0();
      v10 = OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_41(v10);
      *v9 = 136315394;
      v11 = v4;
      v12 = MEMORY[0x23192A860](v4, &type metadata for ProviderKey);
      v14 = sub_2311CFD58(v12, v13, v125);

      *(v9 + 4) = v14;
      *(v9 + 14) = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_9_1(&dword_2311CB000, v15, v16, "Determined ordered provider keys as: %s for %s");
      OUTLINED_FUNCTION_19_2();
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_15();

      v17 = *(v8 + 8);
      v19 = v120;
      v18 = v121;
    }

    else
    {
      v11 = v4;

      v17 = *(v8 + 8);
      v18 = v7;
      v19 = v9;
    }

    v115 = v17;
    v17(v18, v19);
    v20 = v2[50];
    v119 = v20[8];
    if (v119)
    {
      v124 = MEMORY[0x277D84FA0];
      v21 = *(v11 + 16);
      v116 = v20[9];
      if (!v21)
      {

        v25 = MEMORY[0x277D84F90];
        goto LABEL_60;
      }

      v22 = v20[2];
      v23 = v11 + 32;

      v24 = 0;
      v114 = v21 - 1;
      v25 = MEMORY[0x277D84F90];
      while (v24 < *(v11 + 16))
      {
        v26 = *(v23 + 8 * v24);
        v27 = *(v22 + 16);

        if (v27 && (v28 = sub_2312160A8(), (v29 & 1) != 0))
        {
          v30 = *(*(v22 + 56) + 8 * v28);
          sub_231369EE0();
        }

        else
        {
          v30 = MEMORY[0x277D84F90];
        }

        if (*(v30 + 16))
        {
          OUTLINED_FUNCTION_27_0();
          do
          {
            if (v23 >= *(v30 + 16))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_66(v31, v32, v33, v34, v35, v36, v37, v38, v109, v110, v111, v112, v113, v114, v115, v116, v117);
            v39 = OUTLINED_FUNCTION_76();
            v40(v39);
            if (*(v124 + 16))
            {
              v41 = *(v124 + 40);
              sub_23136A5D0();
              OUTLINED_FUNCTION_55_0();
              while (1)
              {
                OUTLINED_FUNCTION_54_1(v42);
                if ((v43 & 1) == 0)
                {
                  break;
                }

                OUTLINED_FUNCTION_80_0();
                v44 = MEMORY[0x23192AC90](v2 + 27, v2 + 22);
                sub_2311E57D4((v2 + 27));
                v42 = v11 + 1;
                if (v44)
                {
                  sub_2311E57D4((v2 + 22));
                  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 17);
                  goto LABEL_31;
                }
              }
            }

            sub_2311E5778((v2 + 22), (v2 + 37));
            sub_23122E0DC((v2 + 32), (v2 + 37));
            sub_2311E57D4((v2 + 32));
            sub_2311CF324((v2 + 17), (v2 + 42));
            v45 = v121;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v56 = *(v121 + 16);
              OUTLINED_FUNCTION_23();
              sub_23126DE08();
              v45 = v57;
            }

            v46 = *(v45 + 24);
            if (*(v45 + 16) >= v46 >> 1)
            {
              OUTLINED_FUNCTION_59(v46);
              sub_23126DE08();
              v121 = v58;
            }

            else
            {
              v121 = v45;
            }

            sub_2311E57D4((v2 + 22));
            __swift_destroy_boxed_opaque_existential_1Tm(v2 + 17);
            v11 = v2[45];
            v30 = v2[46];
            __swift_mutable_project_boxed_opaque_existential_1((v2 + 42), v11);
            OUTLINED_FUNCTION_58();
            v48 = *(v47 + 64);
            OUTLINED_FUNCTION_43();
            OUTLINED_FUNCTION_75();
            v49();
            v50 = OUTLINED_FUNCTION_53_1();
            sub_23120FF64(v50, v51, v52, v53, v54);
            __swift_destroy_boxed_opaque_existential_1Tm(v2 + 42);

LABEL_31:
            OUTLINED_FUNCTION_72();
          }

          while (!v55);
          OUTLINED_FUNCTION_85();

          v11 = v113;
          v55 = v114 == v24;
          v22 = v111;
          v21 = v112;
          v24 = v109;
          v23 = v110;
          if (v55)
          {
LABEL_37:

LABEL_60:
            v86 = v2[53];
            v87 = v2[50];

            sub_2313690F0();

            sub_231369EE0();
            v88 = sub_2313698A0();
            v89 = sub_23136A3A0();

            v90 = os_log_type_enabled(v88, v89);
            v92 = v2[52];
            v91 = v2[53];
            v93 = v2[51];
            if (v90)
            {
              v123 = v2[51];
              v94 = v25;
              v95 = v2[50];
              v96 = OUTLINED_FUNCTION_45();
              v125[0] = OUTLINED_FUNCTION_44();
              *v96 = 136315394;
              v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43028, &qword_23136B920);
              MEMORY[0x23192A860](v94, v97);
              OUTLINED_FUNCTION_69();
              v98 = OUTLINED_FUNCTION_57_2();
              sub_2311CFD58(v98, v99, v100);

              OUTLINED_FUNCTION_48();
              *(v96 + 14) = sub_2311CFD58(*(v95 + 32), *(v95 + 40), v125);
              OUTLINED_FUNCTION_36_1(&dword_2311CB000, v101, v102, "dedupping keys to: %s for %s");
              OUTLINED_FUNCTION_62();
              OUTLINED_FUNCTION_29();
              OUTLINED_FUNCTION_29();
              sub_2311D8D2C(v119);

              v85 = v123;
              v84 = v118;
            }

            else
            {
              sub_2311D8D2C(v119);

              v84 = v91;
              v85 = v93;
            }

LABEL_64:
            v115(v84, v85);
            v104 = v2[55];
            v103 = v2[56];
            v106 = v2[53];
            v105 = v2[54];

            OUTLINED_FUNCTION_6();
            OUTLINED_FUNCTION_52_0();

            __asm { BRAA            X2, X16 }
          }
        }

        else
        {
          ++v24;
          OUTLINED_FUNCTION_85();

          if (v21 == v24)
          {
            goto LABEL_37;
          }
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
    }

    else
    {
      v59 = 0;
      v60 = *(v11 + 16);
      v61 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v60 == v59)
        {
          OUTLINED_FUNCTION_81();
          sub_2313690F0();

          sub_231369EE0();
          v75 = sub_2313698A0();
          sub_23136A3A0();
          OUTLINED_FUNCTION_84();
          v76 = OUTLINED_FUNCTION_64_0();
          v78 = v2[51];
          v77 = v2[52];
          if (v76)
          {
            v122 = v2[54];
            v79 = v2[50];
            OUTLINED_FUNCTION_45();
            v80 = OUTLINED_FUNCTION_17_1();
            OUTLINED_FUNCTION_41(v80);
            *v78 = 136315394;
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43028, &qword_23136B920);
            MEMORY[0x23192A860](v20, v81);
            OUTLINED_FUNCTION_68_0();
            OUTLINED_FUNCTION_63_0();

            OUTLINED_FUNCTION_49();
            *(v78 + 14) = sub_2311CFD58(*(v79 + 32), *(v79 + 40), v125);
            OUTLINED_FUNCTION_9_1(&dword_2311CB000, v82, v83, "Not dedupping keys to: %s for %s");
            OUTLINED_FUNCTION_19_2();
            OUTLINED_FUNCTION_24();
            OUTLINED_FUNCTION_15();

            v85 = v120;
            v84 = v122;
          }

          else
          {

            v84 = OUTLINED_FUNCTION_57_2();
          }

          goto LABEL_64;
        }

        if (v59 >= *(v11 + 16))
        {
          break;
        }

        if (*(v20[2] + 16))
        {
          v62 = *(v11 + 8 * v59 + 32);

          v63 = sub_2312160A8();
          v64 = MEMORY[0x277D84F90];
          if (v65)
          {
            OUTLINED_FUNCTION_70(v63);
          }
        }

        else
        {
          v64 = MEMORY[0x277D84F90];
        }

        v66 = *(v64 + 16);
        v67 = *(v61 + 16);
        if (__OFADD__(v67, v66))
        {
          goto LABEL_70;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v67 + v66 > *(v61 + 24) >> 1)
        {
          OUTLINED_FUNCTION_78();
          sub_23126DE08();
          v61 = v68;
        }

        if (*(v64 + 16))
        {
          v69 = *(v61 + 16);
          v70 = *(v61 + 24);
          OUTLINED_FUNCTION_51_0();
          if (v71 != v72)
          {
            goto LABEL_72;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43028, &qword_23136B920);
          OUTLINED_FUNCTION_34();

          if (v66)
          {
            v73 = *(v61 + 16);
            v72 = __OFADD__(v73, v66);
            v74 = v73 + v66;
            if (v72)
            {
              goto LABEL_73;
            }

            *(v61 + 16) = v74;
          }
        }

        else
        {

          if (v66)
          {
            goto LABEL_71;
          }
        }

        ++v59;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }
}