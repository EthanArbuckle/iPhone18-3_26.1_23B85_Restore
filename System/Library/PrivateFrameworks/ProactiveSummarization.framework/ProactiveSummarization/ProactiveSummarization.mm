uint64_t sub_231CB0F50()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = v2[14];
  v5 = v2[13];
  v6 = v2[12];
  v7 = v2[11];
  v8 = v2[8];
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  v3[15] = v0;

  v6(v7, v8);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_231CC518C, 0, 0);
  }

  else
  {
    v12 = v3[10];
    v11 = v3[11];

    OUTLINED_FUNCTION_19();

    return v13();
  }
}

uint64_t sub_231CB10FC()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = v2[14];
  v5 = v2[13];
  v6 = v2[12];
  v7 = v2[11];
  v8 = v2[8];
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  v3[15] = v0;

  v6(v7, v8);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_231CC518C, 0, 0);
  }

  else
  {
    v12 = v3[10];
    v11 = v3[11];

    OUTLINED_FUNCTION_19();

    return v13();
  }
}

uint64_t sub_231CB12A4()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  OUTLINED_FUNCTION_4();
  *v12 = v11;
  v3[15] = v0;

  v13 = OUTLINED_FUNCTION_33();
  v8(v13);
  if (v0)
  {
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_106();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  else
  {
    v19 = v3[10];
    v18 = v3[11];

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_106();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t OUTLINED_FUNCTION_19()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_30()
{

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_231CB5000(v7, v6, va);
}

uint64_t OUTLINED_FUNCTION_4_2@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return sub_231E11F30();
}

void OUTLINED_FUNCTION_4_7()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v5 = v0[61];
  v4 = v0[62];
  v6 = v0[59];
  v7 = v0[60];
  v8 = v0[58];
}

uint64_t OUTLINED_FUNCTION_4_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return __swift_destroy_boxed_opaque_existential_0(va);
}

uint64_t OUTLINED_FUNCTION_4_10()
{
  result = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[3];
  v5 = *(v0[11] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_16()
{

  return sub_231E10E30();
}

void OUTLINED_FUNCTION_4_17()
{
  v2 = v0[41];
  v3 = v0[40];
  v4 = v0[37];
  v5 = v0[35];
  v6 = v0[34];
  v7 = v0[31];
  v8 = v0[28];
  v9 = v0[27];
  v10 = v0[24];
  v11 = v0[21];
  v1 = v0[18];
}

void OUTLINED_FUNCTION_4_20()
{
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v8 = v0[23];
  v7 = v0[24];
}

uint64_t OUTLINED_FUNCTION_4_22()
{
  v1 = *(*(v0 - 104) + 32);
  result = *(v0 - 112);
  v3 = *(v0 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 248) = a6;
  *(v7 + 256) = v6;
  *(v7 + 368) = a5;
  *(v7 + 232) = a3;
  *(v7 + 240) = a4;
  *(v7 + 216) = result;
  *(v7 + 224) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_25()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_4_26()
{
  result = *(v0 - 112);
  *(v0 - 160) = *(v0 - 128);
  *(v0 - 144) = result;
  v2 = *(v0 - 136);
  v3 = *(v0 - 336);
  v4 = *(v0 - 192);
  return result;
}

void OUTLINED_FUNCTION_4_29()
{
  v1 = *(v0 - 288);
  v2 = *(v0 - 296);
  v3 = *(v0 - 304);
}

uint64_t OUTLINED_FUNCTION_4_30()
{
  v4 = *(v2 - 184);

  return sub_231DF37E8(v1, v0);
}

double OUTLINED_FUNCTION_4_31()
{
  result = 0.0;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_33(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_4_34()
{
  *(v3 - 88) = v1;
  *(v3 - 112) = v0;
  *(v3 - 104) = v2;
}

void OUTLINED_FUNCTION_4_35(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_20_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_20_3()
{
  v2 = v0[24];
  v1 = v0[25];
  result = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[19];
  v10 = v0[18];
  v8 = v0[16];
  v9 = v0[17];
  return result;
}

void OUTLINED_FUNCTION_20_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  *(v11 + 4) = v12;
  *(v11 + 12) = 1024;
  *(v11 + 14) = a11;
  *(v11 + 18) = 2048;
}

uint64_t OUTLINED_FUNCTION_20_6()
{
  v1 = *(v0 - 216);
  v2 = *(*(v0 - 208) + 8);
  return *(v0 - 72);
}

uint64_t OUTLINED_FUNCTION_20_7()
{
  v1 = *(v0 - 168);
  v2 = *(v0 - 176) + 8;
  result = *(v0 - 160);
  v4 = *(v0 - 144);
  return result;
}

BOOL OUTLINED_FUNCTION_20_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_20_12()
{
  v8 = v0[302];
  v9 = v0[301];
  v10 = v0[300];
  v11 = v0[299];
  v12 = v0[298];
  v13 = v0[297];
  v14 = v0[296];
  v15 = v0[293];
  v16 = v0[292];
  v17 = v0[289];
  v18 = v0[288];
  v19 = v0[287];
  v20 = v0[286];
  v21 = v0[285];
  v22 = v0[284];
  v23 = v0[281];
  v24 = v0[278];
  v3 = v0[272];
  *(v1 - 152) = v0[275];
  *(v1 - 144) = v3;
  v4 = v0[268];
  *(v1 - 136) = v0[271];
  *(v1 - 128) = v4;
  v5 = v0[265];
  *(v1 - 120) = v0[266];
  *(v1 - 112) = v5;
  v6 = v0[262];
  *(v1 - 104) = v0[264];
  *(v1 - 96) = v6;
  *(v1 - 88) = v0[261];
}

void OUTLINED_FUNCTION_20_13()
{
  v2 = v0[31];
  v1 = v0[32];
  v6 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
}

uint64_t OUTLINED_FUNCTION_20_14()
{
  v2 = v0[25];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[7];
}

uint64_t OUTLINED_FUNCTION_20_16()
{
  v3 = v0[48];
  v4 = v0[45];
  v5 = v0[42];
  v6 = v0[39];
  v7 = v0[36];
  v8 = v0[35];
}

uint64_t OUTLINED_FUNCTION_20_17@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 120);
  v5 = *(v1 - 112);

  return sub_231E12000();
}

uint64_t OUTLINED_FUNCTION_20_18(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3[6];
  v5 = v3[7];
  v6 = v3[4];
  v7 = v3[5];
  return v2;
}

uint64_t sub_231CB1B84()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = v2[13];
  v6 = v2[12];
  v7 = v2[11];
  v8 = (v6 + 8);
  if (v0)
  {

    v9 = *v8;
    v10 = OUTLINED_FUNCTION_25();
    v11(v10);
    v12 = sub_231CC398C;
  }

  else
  {
    v13 = *v8;
    v14 = OUTLINED_FUNCTION_25();
    v15(v14);
    v12 = sub_231CB22D8;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_18_3(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = *(v3 + 16);
  v2[38] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_18_4(uint64_t a1, uint64_t a2, __n128 a3)
{
  *v3 = a3;
  v5 = v3[1].n128_u8[0];
  v3[1].n128_u8[0] = 13;

  return sub_231CBA16C(a1, a2, v5);
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_5@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_231E11F30();
}

uint64_t OUTLINED_FUNCTION_18_7()
{
  v1 = v0[28];
  __swift_project_boxed_opaque_existential_0(v0 + 24, v0[27]);
  return v1;
}

BOOL OUTLINED_FUNCTION_18_8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_18_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_28_4()
{
  *(v3 - 128) = v0;
  *(v3 - 136) = *(v2 + 1920);
  v4 = *(v2 + 1528);
  *(v3 - 152) = *(v2 + 1520);
  *(v3 - 144) = v4;
  v5 = *(v2 + 1280);
  v6 = *(v2 + 1248);
  *(v3 - 168) = v1;
  *(v3 - 160) = v6;
  result = *(v2 + 1104);
  v8 = *(v2 + 1072);
  v9 = *(v2 + 1064);
  v10 = *(v2 + 1048);
  v11 = *(v2 + 1016);
  v12 = *(v2 + 1008);
  v13 = *(v2 + 976);
  v14 = *(v2 + 968);
  v15 = *(v2 + 960);
  v16 = *(v2 + 456);
  return result;
}

void OUTLINED_FUNCTION_28_8(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *v16 = a1;
  *(v16 + 4) = a16;
  *(v16 + 8) = 2048;
}

uint64_t OUTLINED_FUNCTION_28_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29_1()
{
  v2 = v0[61];
  v1 = v0[62];
  v4 = v0[57];
  v3 = v0[58];
  v6 = v0[55];
  v5 = v0[56];
  v7 = *(v0[63] + 8);
  return v0[64];
}

uint64_t OUTLINED_FUNCTION_67()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_29_2()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[33];
  v8 = v0[32];
  v4 = v0[31];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
}

uint64_t OUTLINED_FUNCTION_29_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_29_4(void *a1)
{

  return sub_231D5EF7C(v1, v2, v1, v2, a1, 0);
}

uint64_t OUTLINED_FUNCTION_29_5()
{
  v2 = v0[219];
  v3 = v0[217];
  v4 = v0[215];
  v5 = v0[211];
  v6 = v0[189];
  *(v1 - 120) = v0[187];
  v7 = v0[186];
  *(v1 - 144) = v5;
  *(v1 - 136) = v7;
  v8 = v0[185];
  result = v0[180];
  v10 = v0[175];
  v11 = v0[165];
  v12 = v0[162];
  v13 = v0[158];
  v14 = v0[157];
  v15 = v0[176] + 8;
  v16 = v0[156];
  return result;
}

uint64_t OUTLINED_FUNCTION_29_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 472);
  v5 = *(v3 + 256);
  return v2;
}

uint64_t OUTLINED_FUNCTION_29_11(void *a1)
{
  v2 = *(v1 + 24);
  v3 = a1[1];
  return *a1;
}

void sub_231CB22D8()
{
  v1 = *(v0 + 15);
  v2 = *(v0 + 6);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v7 = *(v0 + 9);
    v6 = *(v0 + 10);
    v8 = *(v0 + 8);
    sub_231CB4EEC();
    v9 = OUTLINED_FUNCTION_23_0();
    v10(v9);
    v11 = sub_231E10E10();
    v12 = sub_231E11AF0();
    if (os_log_type_enabled(v11, v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25_0(&dword_231CAE000, v13, v14, "InMemoryMailResultCache: Cache gone, stopping pruning task");
      OUTLINED_FUNCTION_30();
    }

    v15 = *(v0 + 13);
    v17 = *(v0 + 9);
    v16 = *(v0 + 10);
    v18 = *(v0 + 8);

    (*(v17 + 8))(v16, v18);

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_17_2();

    __asm { BRAA            X1, X16 }
  }

  v4 = Strong;
  v5 = v0[7];
  os_unfair_lock_lock(Strong + 10);
  sub_231CB24A0((v4 + 48), v4, v5);
  os_unfair_lock_unlock((v4 + 40));
  if (!v1)
  {

    v21 = *(v0 + 13);
    v22 = *(v0 + 5);
    sub_231E12280();
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_10_3(&dword_231E1D770);
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_20_0(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_17_2();

    __asm { BR              X5 }
  }

  OUTLINED_FUNCTION_17_2();
}

unint64_t sub_231CB24A0(void *a1, uint64_t a2, double a3)
{
  v96 = a2;
  v5 = sub_231E10E30();
  v6 = OUTLINED_FUNCTION_24(v5);
  v97 = v7;
  v98 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_1();
  v99 = v11 - v10;
  v12 = sub_231E0F950();
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v95 - v22;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741B0, &qword_231E138C0);
  v24 = OUTLINED_FUNCTION_12(v105);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v103 = (v27 - v28);
  MEMORY[0x28223BE20](v29);
  v31 = (&v95 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741B8, &qword_231E138C8);
  v33 = OUTLINED_FUNCTION_47(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v95 - v40;
  v42 = *a1;
  v43 = a1[1];
  v95 = a1;
  v44 = a1[2];
  v45 = *(v44 + 16);
  v104 = v43 + 32;
  v111 = (v15 + 16);
  v112 = v45;
  v110 = (v15 + 8);
  v100 = v42;

  v107 = v43;

  v106 = v44;
  v46 = v41;

  v48 = 0;
  v49 = 0;
  v109 = v31;
  v101 = v23;
  v102 = v46;
  do
  {
    if (v49 >= v112)
    {
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741C0, &unk_231E138D0);
      __swift_storeEnumTagSinglePayload(v38, 1, 1, v68);
    }

    else
    {
      if ((v49 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      if (v49 >= *(v107 + 16))
      {
        goto LABEL_20;
      }

      v108 = v48;
      v50 = v38;
      v51 = v20;
      v52 = v12;
      v53 = v105;
      v54 = *(v105 + 48);
      v55 = (v104 + 16 * v49);
      v56 = v55[1];
      *v31 = *v55;
      v31[1] = v56;
      v57 = v106;
      if (v49 >= *(v106 + 16))
      {
        goto LABEL_21;
      }

      v58 = v53;
      v59 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa();
      OUTLINED_FUNCTION_6(v59);
      sub_231CB4858(v57 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v61 + 72) * v49++, v31 + v54);
      v62 = v31;
      v63 = v103;
      sub_231CB37DC(v62, v103, &qword_27DD741B0, &qword_231E138C0);
      v64 = *(v58 + 48);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741C0, &unk_231E138D0);
      v66 = *(v65 + 48);
      v67 = v63[1];
      v38 = v50;
      *v50 = *v63;
      v50[1] = v67;
      sub_231CB4E2C(v63 + v64, v50 + v66);
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v65);

      v12 = v52;
      v20 = v51;
      v23 = v101;
      v46 = v102;
      v48 = v108;
    }

    sub_231CB37DC(v38, v46, &qword_27DD741B8, &qword_231E138C8);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741C0, &unk_231E138D0);
    if (__swift_getEnumTagSinglePayload(v46, 1, v69) == 1)
    {
      goto LABEL_13;
    }

    v70 = *(v46 + 8);

    v71 = v46 + *(v69 + 48);
    v72 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa();
    (*v111)(v23, v71 + *(v72 + 20), v12);
    sub_231CB4E90(v71);
    sub_231E0F870();
    v74 = v73;
    v75 = *v110;
    (*v110)(v23, v12);
    sub_231E0F920();
    sub_231E0F870();
    v77 = v76;
    result = (v75)(v20, v12);
    if (v77 - a3 < v74)
    {
      goto LABEL_13;
    }

    v78 = __OFADD__(v48++, 1);
    v31 = v109;
  }

  while (!v78);
  __break(1u);
LABEL_13:

  v79 = v106;

  if (v48 >= 1)
  {
    v80 = *(v79 + 16);
    v81 = sub_231CB4EEC();
    v82 = v97;
    v83 = v98;
    v84 = v99;
    (*(v97 + 16))(v99, v81, v98);
    v85 = v96;

    v86 = sub_231E10E10();
    v87 = sub_231E11AF0();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = v82;
      v89 = swift_slowAlloc();
      v90 = v85;
      v91 = swift_slowAlloc();
      v113 = v91;
      *v89 = 136446722;
      v92 = (*(*v90 + 120))();
      v94 = sub_231CB5000(v92, v93, &v113);

      *(v89 + 4) = v94;
      *(v89 + 12) = 2048;
      *(v89 + 14) = v48;
      *(v89 + 22) = 2048;
      *(v89 + 24) = v80;
      _os_log_impl(&dword_231CAE000, v86, v87, "InMemoryMailResultCache %{public}s: Removing %ld/%ld items", v89, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v91);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v88 + 8))(v99, v83);
    }

    else
    {

      (*(v82 + 8))(v84, v83);
    }

    return sub_231CB543C(v48);
  }

  return result;
}

void OUTLINED_FUNCTION_14()
{

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_23_3()
{
  v2 = v0[56];
  result = v0[57];
  v3 = v0[55];
  v5 = v0[51];
  v4 = v0[52];
  v7 = v0[47];
  v6 = v0[48];
  return result;
}

uint64_t OUTLINED_FUNCTION_23_4()
{

  return sub_231E12100();
}

id OUTLINED_FUNCTION_23_5(void *a1)
{

  return [a1 (v1 + 1144)];
}

uint64_t OUTLINED_FUNCTION_23_6()
{
  v13 = v0[104];
  v14 = v0[103];
  v15 = v0[100];
  v16 = v0[99];
  v3 = v0[95];
  *(v1 - 256) = v0[98];
  *(v1 - 248) = v3;
  v4 = v0[93];
  *(v1 - 240) = v0[94];
  *(v1 - 232) = v4;
  v5 = v0[91];
  *(v1 - 224) = v0[92];
  *(v1 - 216) = v5;
  v6 = v0[87];
  *(v1 - 208) = v0[88];
  *(v1 - 200) = v6;
  v7 = v0[81];
  *(v1 - 192) = v0[84];
  *(v1 - 184) = v7;
  v8 = v0[75];
  *(v1 - 176) = v0[78];
  *(v1 - 168) = v8;
  v9 = v0[71];
  *(v1 - 160) = v0[72];
  *(v1 - 152) = v9;
  v10 = v0[65];
  *(v1 - 144) = v0[68];
  *(v1 - 136) = v10;
  v11 = v0[59];
  *(v1 - 128) = v0[62];
  *(v1 - 120) = v11;
}

char *OUTLINED_FUNCTION_23_7()
{
  v2 = *(v0 + 16) + 1;

  return sub_231D47344(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_23_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_231D75E60(a1, v3);
}

uint64_t OUTLINED_FUNCTION_23_11()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 520);
}

uint64_t OUTLINED_FUNCTION_23_13()
{

  return sub_231E12100();
}

uint64_t OUTLINED_FUNCTION_2(uint64_t result)
{
  *(result + 8) = sub_231CBD7A8;
  v2 = *(v1 + 464);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_2_5()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[31];
}

void OUTLINED_FUNCTION_2_6()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_2_7@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v4 = v1[71];
  v5 = v1[70];
  v6 = v1[69];
  v7 = v1[68];
  v8 = v1[65];
  v10 = v1[63];
  v9 = v1[64];
  v12 = v1[61];
  v11 = v1[62];
  v13 = v1[60];
  v16 = v1[59];
  v17 = v1[58];
  v18 = v1[55];
  v19 = v1[54];
  v20 = v1[51];
  v21 = v1[50];
  v22 = v1[49];
  v23 = v1[48];
  v14 = v1[47];
  v24 = v1[44];
  v25 = v1[43];
}

uint64_t OUTLINED_FUNCTION_2_10()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[9];
  v6 = *(v0[17] + 8);
  return v0[18];
}

void OUTLINED_FUNCTION_2_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_2_13()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_14(uint64_t a1)
{
  *(a1 + 8) = sub_231D23448;
  v3 = *(v1 + 48);
  return v2;
}

uint64_t OUTLINED_FUNCTION_2_16()
{
  v15 = v0[166];
  v16 = v0[165];
  v17 = v0[164];
  v18 = v0[161];
  v19 = v0[160];
  v20 = v0[159];
  v21 = v0[158];
  v22 = v0[155];
  v23 = v0[154];
  v24 = v0[153];
  v25 = v0[150];
  v26 = v0[147];
  v27 = v0[146];
  v28 = v0[143];
  v29 = v0[142];
  v30 = v0[139];
  v31 = v0[138];
  v32 = v0[137];
  v33 = v0[136];
  v34 = v0[135];
  v35 = v0[132];
  v36 = v0[131];
  v37 = v0[130];
  v38 = v0[129];
  v39 = v0[128];
  v40 = v0[125];
  v41 = v0[124];
  v42 = v0[123];
  v43 = v0[122];
  v44 = v0[121];
  v45 = v0[120];
  v46 = v0[119];
  v47 = v0[116];
  v48 = v0[115];
  v49 = v0[112];
  v50 = v0[111];
  v51 = v0[108];
  v52 = v0[105];
  v3 = v0[103];
  *(v1 - 256) = v0[104];
  *(v1 - 248) = v3;
  v4 = v0[99];
  *(v1 - 240) = v0[100];
  *(v1 - 232) = v4;
  v5 = v0[95];
  *(v1 - 224) = v0[98];
  *(v1 - 216) = v5;
  v6 = v0[93];
  *(v1 - 208) = v0[94];
  *(v1 - 200) = v6;
  v7 = v0[91];
  *(v1 - 192) = v0[92];
  *(v1 - 184) = v7;
  v8 = v0[87];
  *(v1 - 176) = v0[88];
  *(v1 - 168) = v8;
  v9 = v0[81];
  *(v1 - 160) = v0[84];
  *(v1 - 152) = v9;
  v10 = v0[75];
  *(v1 - 144) = v0[78];
  *(v1 - 136) = v10;
  v11 = v0[71];
  *(v1 - 128) = v0[72];
  *(v1 - 120) = v11;
  v12 = v0[65];
  *(v1 - 112) = v0[68];
  *(v1 - 104) = v12;
  v13 = v0[59];
  *(v1 - 96) = v0[62];
  *(v1 - 88) = v13;
}

uint64_t OUTLINED_FUNCTION_2_22()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_23(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_2_29()
{
  v2 = v0[23];
  result = v0[24];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[11];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_30(uint64_t result)
{
  *(v2 + 120) = result;
  v3 = *v1;
  return result;
}

char *OUTLINED_FUNCTION_2_31@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;

  return sub_231DCA584(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_2_34()
{
  v2 = *(*(v1 - 176) + 8);
  result = v0;
  v4 = *(v1 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return sub_231DF3B84(v0, (v1 - 160));
}

BOOL OUTLINED_FUNCTION_2_36(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_11()
{

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_55()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_11_0()
{
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  return sub_231DC4AB8();
}

void *OUTLINED_FUNCTION_11_1()
{

  return sub_231CD2C70((v0 + 56), (v0 + 176), 0, 0, v0 + 304, 0.0);
}

uint64_t OUTLINED_FUNCTION_11_6()
{
  v4 = v0[55];
  v5 = v0[54];
  v6 = v0[51];
  v7 = v0[50];
  v8 = v0[49];
  v9 = v0[48];
  v2 = v0[47];
  v10 = v0[44];
  v11 = v0[43];
}

uint64_t OUTLINED_FUNCTION_11_8()
{
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];

  return sub_231DC4AB8();
}

id OUTLINED_FUNCTION_11_9(void *a1)
{

  return [a1 (v1 + 1144)];
}

uint64_t OUTLINED_FUNCTION_11_10(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_11_12()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_11_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_11_15()
{
  result = v0[316];
  v2 = v0[315];
  v3 = v0[314];
  v4 = v0[313];
  v5 = v0[312];
  v6 = v0[311];
  v7 = v0[310];
  v8 = v0[309];
  v9 = v0[308];
  v10 = v0[305];
  v11 = v0[304];
  v12 = v0[303];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_16(uint64_t result)
{
  *(v2 + 4) = result;
  *v1 = result;
  *(v2 + 12) = 2082;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_17()
{
  v1 = v0[46];
  v2 = v0[36];
  v3 = v0[34];
  v4 = *(v0[37] + 32);
  return v0[38];
}

uint64_t OUTLINED_FUNCTION_11_20@<X0>(char a1@<W8>)
{
  *(v2 - 160) = a1;
  result = v2 - 160;
  v4 = *(v1 + 240);
  v5 = *(v1 + 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_21()
{

  return sub_231E11D70();
}

uint64_t OUTLINED_FUNCTION_11_23@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
}

uint64_t OUTLINED_FUNCTION_46_1()
{
  v2 = *(v0 + 2240);
  v3 = *(v0 + 2136);

  return sub_231CF1DD0(v0 + 1096);
}

unint64_t OUTLINED_FUNCTION_46_4()
{
  v5 = *(v1 + 624);
  v6 = *(v1 + 608);
  *(v0 + 16) = v2;
  result = v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3;
  v8 = *(v4 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_46_8()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_46_9(uint64_t a1, unint64_t a2)
{

  return sub_231CB5000(a1, a2, (v2 - 88));
}

uint64_t sub_231CB37DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_26_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_14_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_1()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_3()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_231E12000();
}

uint64_t OUTLINED_FUNCTION_14_4()
{

  return sub_231E11C80();
}

uint64_t OUTLINED_FUNCTION_68()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14_7()
{
  v2 = *(v0 + 1760);
  *(v1 - 128) = *(v0 + 1768);
  *(v1 - 120) = v2;
  v3 = *(v0 + 1752);
  *(v1 - 224) = *(v0 + 1744);
  *(v1 - 216) = v3;
  v4 = *(v0 + 1736);
  *(v1 - 256) = *(v0 + 1728);
  *(v1 - 248) = v4;
  v5 = *(v0 + 1712);
  v29 = *(v0 + 1924);
  v6 = *(v0 + 1696);
  *(v1 - 192) = *(v0 + 1704);
  *(v1 - 184) = v6;
  v19 = *(v0 + 1448);
  v20 = *(v0 + 1456);
  v17 = *(v0 + 1424);
  v18 = *(v0 + 1400);
  *(v1 - 136) = *(v0 + 1104);
  v28 = *(v0 + 1080);
  v7 = *(v0 + 1064);
  *(v1 - 152) = *(v0 + 1072);
  *(v1 - 144) = v7;
  *(v1 - 160) = *(v0 + 1048);
  v26 = *(v0 + 1024);
  v8 = *(v0 + 1008);
  *(v1 - 176) = *(v0 + 1016);
  *(v1 - 168) = v8;
  v21 = *(v0 + 1000);
  v9 = *(v0 + 992);
  v10 = *(v0 + 984);
  result = *(v0 + 976);
  *(v1 - 208) = *(v0 + 968);
  *(v1 - 200) = result;
  v12 = *(v0 + 960);
  v27 = *(v0 + 952);
  v24 = *(v0 + 944);
  v13 = *(v0 + 864);
  *(v1 - 240) = *(v0 + 936);
  *(v1 - 232) = v13;
  v14 = *(v0 + 664);
  v25 = *(v0 + 656);
  v22 = *(v0 + 648);
  v23 = *(v0 + 672);
  v16 = *(v0 + 584);
  v15 = *(v0 + 456);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_13()
{
  v2 = *(v0 - 280);

  return sub_231E11F30();
}

uint64_t OUTLINED_FUNCTION_14_14()
{

  return sub_231E115F0();
}

void OUTLINED_FUNCTION_14_15()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v4 = v0[49];
  v5 = v0[46];
}

uint64_t OUTLINED_FUNCTION_14_16()
{
}

__n128 OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24, __int128 a25, __n128 a26, __int128 a27)
{
  *v27 = a24;
  v27[1] = a25;
  result = a26;
  v27[2] = a26;
  v27[3] = a27;
  return result;
}

uint64_t OUTLINED_FUNCTION_69()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_10_1()
{
}

uint64_t OUTLINED_FUNCTION_9_2()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_231E12000();
}

void OUTLINED_FUNCTION_17_0()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_9_6@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 120);
  v4 = *(v1 - 112);

  return sub_231E12000();
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t result)
{
  *(result + 8) = v1;
  *(v3 + 16) = v2;
  return result;
}

void OUTLINED_FUNCTION_9_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_12()
{
  v2 = v0[35];
  result = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[21];
  v11 = v0[17];
  v12 = v0[18];
  return result;
}

uint64_t OUTLINED_FUNCTION_9_18()
{
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 24);
  v5 = *(v0 + 88);

  return sub_231DC5348(v4, v5);
}

uint64_t OUTLINED_FUNCTION_9_21()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_0_2()
{
  result = v0[91];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[88];
  v5 = v0[87];
  v6 = v0[86];
  v7 = v0[85];
  v8 = v0[84];
  v9 = v0[83];
  v10 = v0[82];
  v11 = v0[81];
  v12 = v0[80];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{
  *(a1 + 8) = sub_231CB1B84;
  v3 = *(v2 + 104);
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_8()
{
  v2 = v0[34];
  result = v0[35];
  v3 = v0[33];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v7 = v0[25];
  v8 = v0[22];
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[14];
  v12 = v0[15];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_10()
{
  result = v0[295];
  v2 = v0[292];
  v3 = v0[291];
  v4 = v0[290];
  v5 = v0[289];
  v6 = v0[288];
  v7 = v0[287];
  v8 = v0[286];
  v9 = v0[285];
  v10 = v0[284];
  v11 = v0[283];
  v12 = v0[282];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_12()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_0_15()
{
  result = *(v0 - 144);
  *(v0 - 128) = *(v0 - 160);
  *(v0 - 112) = result;
  v2 = *(v0 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_16()
{
  result = v0[82];
  v2 = v0[81];
  v3 = v0[78];
  v4 = v0[75];
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[67];
  v9 = v0[66];
  v10 = v0[63];
  v11 = v0[60];
  v12 = v0[61];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_21(uint64_t a1)
{
  *(a1 + 8) = sub_231D2DD94;
  result = v1[10];
  v3 = v1[11];
  v4 = v1[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_22()
{
  result = v0[180];
  v2 = v0[179];
  v3 = v0[178];
  v4 = v0[177];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[171];
  v9 = v0[170];
  v10 = v0[169];
  v11 = v0[168];
  v12 = v0[167];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_27()
{

  return sub_231E11C40();
}

uint64_t OUTLINED_FUNCTION_0_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_34()
{

  return sub_231E11C60();
}

uint64_t OUTLINED_FUNCTION_0_39()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_40(uint64_t result)
{
  *(result + 8) = sub_231E0BF58;
  v2 = *(v1 + 312);
  v3 = *(v1 + 296);
  return result;
}

void OUTLINED_FUNCTION_8_0()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return sub_231E12100();
}

void OUTLINED_FUNCTION_15_3()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_15_4()
{
  v2 = *(v1 + 208);
  v3 = *(v1 + 88);
  return v0;
}

uint64_t OUTLINED_FUNCTION_15_5()
{

  return sub_231E11F30();
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_15_8(double a1)
{

  return sub_231CD2C70((v1 + 416), (v1 + 288), 0, 0, v1 + 16, a1);
}

uint64_t OUTLINED_FUNCTION_15_11()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_15_12(void *result)
{
  result[2] = v1;
  result[3] = v2;
  result[4] = 0;
  result[5] = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_17()
{
  v2 = v0[61];
  result = v0[62];
  v4 = v0[58];
  v3 = v0[59];
  v6 = v0[56];
  v5 = v0[57];
  v7 = v0[53];
  v8 = v0[54];
  v10 = v0[48];
  v9 = v0[49];
  v11 = v0[45];
  v13 = v0[41];
  v12 = v0[42];
  return result;
}

uint64_t OUTLINED_FUNCTION_15_18()
{

  return sub_231E11F30();
}

uint64_t OUTLINED_FUNCTION_15_19()
{
}

void OUTLINED_FUNCTION_15_20()
{
  v1[12] = sub_231DEAA60;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_15_21()
{
  v2 = v0[55];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[40];
  v6 = v0[37];
  v7 = v0[38];
}

uint64_t sub_231CB4540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_231E11E60();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_231CB4640, 0, 0);
}

uint64_t sub_231CB4640()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_231E11E70();
  v7 = sub_231CB47C8(&qword_2814CBD50, MEMORY[0x277D85928]);
  OUTLINED_FUNCTION_25();
  sub_231E12170();
  sub_231CB47C8(&qword_2814CBD58, MEMORY[0x277D858F8]);
  sub_231E11E80();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  v11[1] = sub_231CB0F50;
  v13 = v0[11];
  v14 = v0[7];

  return MEMORY[0x2822008C8](v13, v0 + 2, v6, v7);
}

uint64_t sub_231CB47C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_231CB4810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_231CB4858(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa()
{
  result = qword_2814CD6D0;
  if (!qword_2814CD6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231CB4908()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74190, &qword_231E136E8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t OUTLINED_FUNCTION_5()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[77];
  v5 = v0[57];
  return v0[85];
}

BOOL OUTLINED_FUNCTION_5_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_25_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return sub_231E11C80();
}

uint64_t OUTLINED_FUNCTION_5_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 120);
  v4 = *(v1 - 112);

  return sub_231E12000();
}

void OUTLINED_FUNCTION_5_4()
{
  v2 = v0[43];
  v15 = v0[34];
  v16 = v0[41];
  v11 = v0[42];
  v12 = v0[32];
  v14 = v0[31];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[25];
  *(v1 - 88) = v0[23];
  v8 = v0[14];
  v13 = v0[15];
  v9 = v0[12];
  v10 = v0[13];
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return sub_231E12100();
}

uint64_t OUTLINED_FUNCTION_5_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

BOOL OUTLINED_FUNCTION_5_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_13()
{
  result = *(v0 - 256);
  v3 = *(v1 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_14()
{
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  v5 = *(v1 + 72);
  **(v1 + 16) = v0;
}

void OUTLINED_FUNCTION_5_15()
{
  v2 = v0[166];
  v3 = v0[165];
  v4 = v0[164];
  v5 = v0[161];
  v6 = v0[160];
  v7 = v0[159];
  v8 = v0[158];
  v9 = v0[155];
  v10 = v0[154];
  v11 = v0[153];
  v12 = v0[150];
  v13 = v0[147];
  v14 = v0[146];
  v15 = v0[143];
  v16 = v0[142];
  v17 = v0[139];
  v18 = v0[138];
  v19 = v0[137];
  v20 = v0[136];
  v21 = v0[135];
  v22 = v0[132];
  v23 = v0[131];
  v24 = v0[130];
  v25 = v0[129];
  v26 = v0[128];
  v27 = v0[125];
  v28 = v0[124];
  v29 = v0[123];
  v30 = v0[122];
  v31 = v0[121];
  v32 = v0[120];
  v33 = v0[119];
  v34 = v0[116];
  v35 = v0[115];
  v36 = v0[112];
  v37 = v0[111];
  v1 = v0[108];
  v38 = v0[105];
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_5_21()
{
}

uint64_t OUTLINED_FUNCTION_5_22(uint64_t result)
{
  *(v1 + 136) = result;
  v3 = *(v2 - 96);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_25(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821AB4B8](a1, a2, 0, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_5_28()
{
  v2 = v0[59];
  result = v0[60];
  v4 = v0[57];
  v3 = v0[58];
  v6 = v0[55];
  v5 = v0[56];
  v7 = v0[53];
  v8 = v0[54];
  v10 = v0[51];
  v9 = v0[52];
  v11 = v0[49];
  v12 = v0[50];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_30()
{

  return swift_getErrorValue();
}

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization15SpotlightWriterC23InMemoryMailResultCacheC0H0V4KindO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization12FilterResultO6ReasonO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 0xC)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 13);
  }
}

uint64_t sub_231CB4E2C(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231CB4E90(uint64_t a1)
{
  v2 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231CB4F24(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = a2(0);

  return __swift_project_value_buffer(v5, a3);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_231CB5000(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_231CB50C4(v11, 0, 0, 1, a1, a2);
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
    sub_231CB51C4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_231CB50C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_231CC0558(a5, a6);
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
    result = sub_231E11DF0();
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

uint64_t sub_231CB51C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void OUTLINED_FUNCTION_30_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, os_log_type_t a16)
{

  _os_log_impl(a1, log, a16, a4, v16, 0x16u);
}

uint64_t OUTLINED_FUNCTION_109()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_30_4()
{

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_30_5()
{
  v2 = *(v0 - 320);
}

uint64_t OUTLINED_FUNCTION_30_6(uint64_t a1)
{
  *(a1 + 8) = sub_231D38328;
  v2 = v1[184];
  v3 = v1[58];
  return v1[57];
}

double OUTLINED_FUNCTION_30_9()
{
  *(v0 + 792) = 0;
  *(v0 + 800) = 1;
  return 0.0;
}

uint64_t OUTLINED_FUNCTION_30_10()
{
  v1 = v0[62];
  result = v0[59];
  v3 = v0[56];
  return result;
}

uint64_t OUTLINED_FUNCTION_30_13@<X0>(char a1@<W8>)
{
  *(v2 - 160) = a1;
  result = v2 - 160;
  v4 = *(v1 + 240);
  return result;
}

unint64_t sub_231CB543C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  if (*(*(v1 + 16) + 16) < result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*(*(v1 + 8) + 16) >= result)
  {
    sub_231CB54B0(0, result);
    return sub_231CB572C(v2);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_231CB54B0(uint64_t result, int64_t a2)
{
  v4 = result;
  v6 = v2 + 1;
  v5 = *v2;
  if (!*v2)
  {
    return sub_231CB560C(v4, a2);
  }

  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v7 <= 0)
  {
    return result;
  }

  v8 = v2;
  v9 = *(*v6 + 16);
  v10 = v9 - v7;
  if ((v9 - v7) > (v9 >> 1))
  {
    swift_beginAccess();
    if ((*(v5 + 16) & 0x3FLL) == (*(v5 + 24) & 0x3FLL) || v10 >= MEMORY[0x23837B140]())
    {
      result = sub_231CC52F4();
      v15 = *v8;
      if (*v8)
      {
        v16 = *v8;

        sub_231CC534C(v15 + 16, v15 + 32, v8, v4, a2);

        return sub_231CB560C(v4, a2);
      }

LABEL_18:
      __break(1u);
      return result;
    }
  }

  sub_231CB560C(v4, a2);
  swift_beginAccess();
  v11 = *(v5 + 24) & 0x3FLL;
  v12 = *v6;
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = *(*v6 + 16) >= 0x10uLL;
  }

  if (v13)
  {
    v14 = MEMORY[0x23837B160]();
    return sub_231CC5BA0(v14, v11);
  }

  else
  {

    *v8 = 0;
  }

  return result;
}

uint64_t sub_231CB560C(uint64_t result, int64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v8 = result - a2;
  if (__OFSUB__(0, v7))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = v5 - v7;
  if (__OFADD__(v5, v8))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v9 <= *(v4 + 24) >> 1)
    {
      goto LABEL_15;
    }

    if (v5 <= v9)
    {
      v12 = v5 + v8;
    }

    else
    {
      v12 = v5;
    }
  }

  else if (v5 <= v9)
  {
    v12 = v5 + v8;
  }

  else
  {
    v12 = v5;
  }

  sub_231CC686C(isUniquelyReferenced_nonNull_native, v12, 1);
  v4 = *v2;
LABEL_15:
  result = swift_arrayDestroy();
  if (!v7)
  {
LABEL_24:
    *v2 = v4;
    return result;
  }

  v13 = *(v4 + 16);
  v14 = v13 - a2;
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_30;
  }

  v15 = (v4 + 32 + 16 * a2);
  if (v6 != a2 || v15 + 16 * v14 <= v4 + 32 + 16 * v6)
  {
    result = memmove((v4 + 32 + 16 * v6), v15, 16 * v14);
    v13 = *(v4 + 16);
  }

  v17 = __OFADD__(v13, v8);
  v18 = v13 - v7;
  if (!v17)
  {
    *(v4 + 16) = v18;
    goto LABEL_24;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_231CB572C(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_231CB5794(0, result, *(*v1 + 16));
  if (v2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_231CB57E0(0, result);
}

uint64_t sub_231CB5794(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_231CB57E0(uint64_t result, int64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = result - a2;
  if (__OFSUB__(0, v7))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v5 - v7;
  if (__OFADD__(v5, v8))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v9 <= *(v4 + 24) >> 1)
    {
      goto LABEL_15;
    }

    if (v5 <= v9)
    {
      v12 = v5 + v8;
    }

    else
    {
      v12 = v5;
    }
  }

  else if (v5 <= v9)
  {
    v12 = v5 + v8;
  }

  else
  {
    v12 = v5;
  }

  sub_231CC684C(isUniquelyReferenced_nonNull_native, v12, 1);
  v4 = *v2;
LABEL_15:
  v13 = *(_s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa() - 8);
  v14 = v4 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v15 = *(v13 + 72);
  v16 = v14 + v15 * v6;
  result = swift_arrayDestroy();
  if (!v7)
  {
LABEL_19:
    *v2 = v4;
    return result;
  }

  v17 = *(v4 + 16);
  if (__OFSUB__(v17, a2))
  {
    goto LABEL_25;
  }

  result = sub_231CB5940(v14 + v15 * a2, v17 - a2, v16);
  v18 = *(v4 + 16);
  v19 = __OFADD__(v18, v8);
  v20 = v18 - v7;
  if (!v19)
  {
    *(v4 + 16) = v20;
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_231CB5940(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_231CB5A28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74038, qword_231E13528);
  OUTLINED_FUNCTION_24(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_231CB5B24()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231CB5B5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_231CB5B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 13)
  {
    v4 = (*(a1 + 16) >> 2) & 0xC | (*(a1 + 16) >> 6);
    v5 = v4 ^ 0xF;
    v6 = 16 - v4;
    if (v5 >= 0xD)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_231E0F950();
    v11 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_231CB5C30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 13)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 16 * (((-a2 >> 2) & 3) - 4 * a2);
  }

  else
  {
    v7 = sub_231E0F950();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_231CB5CBC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231CB6050()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744A0, &qword_231E16B50);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_231CB6080(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_231E0F950();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_231CB6114(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_231E0F950();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_231CB6224()
{
  v1 = sub_231E10A30();
  OUTLINED_FUNCTION_24(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_231CB6300()
{
  v1 = sub_231E106A0();
  OUTLINED_FUNCTION_24(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74518, &qword_231E16F78);
  OUTLINED_FUNCTION_24(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v15, v16 | 7);
}

uint64_t sub_231CB6BBC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231CB6C1C()
{
  OUTLINED_FUNCTION_118();
  v1 = sub_231E10EC0();
  OUTLINED_FUNCTION_24(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_231E0FE00();
  OUTLINED_FUNCTION_24(v7);
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_113();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

uint64_t sub_231CB6D4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231CB6D84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_231CB6DA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231CB6DD8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231CB6E5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_231CB6F00()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_231CB6F48(void *a1, uint64_t a2, __int16 a3)
{
  if (HIBYTE(a3) != 255)
  {
    sub_231D42D00(a1, a2, a3, SHIBYTE(a3));
  }
}

uint64_t sub_231CB6F70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BC8, &qword_231E1C5D0);
  OUTLINED_FUNCTION_24(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_231CB7058()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231CB70B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_231CB717C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_231CB727C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_231CB72B4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_231CB72EC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_108_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231CB7348()
{
  v2 = sub_231E0F950();
  OUTLINED_FUNCTION_24(v2);
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_116_4();
  v7 = v0[5];

  sub_231CF4354(v0[6], v0[7]);
  sub_231CF4354(v0[8], v0[9]);
  v8 = OUTLINED_FUNCTION_59_6();
  v9(v8);
  v10 = *(v0 + v1 + 8);

  v11 = OUTLINED_FUNCTION_110_3();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_231CB7414()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_19_8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231CB7448(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_231CB7458()
{
  v1 = sub_231E0F950();
  OUTLINED_FUNCTION_24(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);

  v6 = *(v0 + 32);

  v7 = *(v0 + 48);

  v8 = OUTLINED_FUNCTION_59_6();
  v9(v8);
  v10 = OUTLINED_FUNCTION_110_3();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_231CB7514()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_108_3();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_231CB7558()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_231CB7598()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_231CB75E8()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_231CB7640()
{
  v0 = sub_231E0F950();
  OUTLINED_FUNCTION_24(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_116_4();
  v5 = OUTLINED_FUNCTION_59_6();
  v6(v5);
  v7 = OUTLINED_FUNCTION_110_3();

  return MEMORY[0x2821FE8E8](v7, v8, v9);
}

uint64_t sub_231CB76F8()
{
  OUTLINED_FUNCTION_118();
  v1 = sub_231E0F950();
  OUTLINED_FUNCTION_24(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(type metadata accessor for EntityKind() - 8);
  v8 = (v4 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  (*(v3 + 8))(v0 + v4, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v10 = sub_231E10340();
      goto LABEL_7;
    case 1u:
      v10 = sub_231E106A0();
      goto LABEL_7;
    case 2u:
      v10 = sub_231E10A30();
      goto LABEL_7;
    case 3u:
      v10 = sub_231E10BE0();
      goto LABEL_7;
    case 4u:
      v10 = sub_231E10AE0();
LABEL_7:
      OUTLINED_FUNCTION_12(v10);
      (*(v11 + 8))(v0 + v8);
      break;
    default:
      break;
  }

  sub_231CF4354(*(v0 + ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));
  OUTLINED_FUNCTION_113();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_231CB7BD4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E98, &qword_231E1CBE0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_231CB7CB8()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74F38, &qword_231E1D178);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_231CB7CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231E0F950();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_231CB7DA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231E0F950();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_231CB7E4C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_231E0F950();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_231CB7ED4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231E0F950();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_231CB7F84()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_231CB7FD4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231CB8018()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_27();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231CB804C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75028, &unk_231E1D738);
  OUTLINED_FUNCTION_24(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 5);

  v10 = *(v0 + 6);

  v11 = *(v0 + 7);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_231CB8128()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75028, &unk_231E1D738);
  OUTLINED_FUNCTION_24(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 5);

  if (*(v0 + 6))
  {
    v9 = *(v0 + 7);
  }

  v10 = (v4 + 72) & ~v4;
  v11 = *(v0 + 8);

  (*(v3 + 8))(&v0[v10], v1);

  return MEMORY[0x2821FE8E8](v0, v10 + v6, v4 | 7);
}

uint64_t sub_231CB8238()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231CB8270()
{
  v1 = *(v0 + 4);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 8);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_231CB8394()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_299_0();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_231CB83F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_477();
  v6 = sub_231E0FF70();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0x16)
    {
      return v8 - 21;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_231CB849C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_95_5();
  result = sub_231E0FF70();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = a2 + 21;
  }

  return result;
}

uint64_t sub_231CB8568()
{
  v1 = sub_231E10340();
  OUTLINED_FUNCTION_24(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  v10 = *(v0 + v7);

  v11 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

uint64_t sub_231CB8650()
{
  v1 = type metadata accessor for EntityKind();
  OUTLINED_FUNCTION_7_4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v9 = sub_231E10340();
      goto LABEL_7;
    case 1u:
      v9 = sub_231E106A0();
      goto LABEL_7;
    case 2u:
      v9 = sub_231E10A30();
      goto LABEL_7;
    case 3u:
      v9 = sub_231E10BE0();
      goto LABEL_7;
    case 4u:
      v9 = sub_231E10AE0();
LABEL_7:
      OUTLINED_FUNCTION_12(v9);
      (*(v10 + 8))(v0 + v4);
      break;
    default:
      break;
  }

  v11 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v3 | 7);
}

uint64_t sub_231CB87E8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_231CB8964()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_299_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231CB89A0()
{
  OUTLINED_FUNCTION_27();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_231CB89D4()
{
  v1 = sub_231E0F950();
  OUTLINED_FUNCTION_24(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64) + v5;
  OUTLINED_FUNCTION_158_2();
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v4 | 7);
}

uint64_t sub_231CB8B60()
{
  v1 = sub_231E10340();
  OUTLINED_FUNCTION_24(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);
  v10 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_231CB8C34()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_231CB8C78()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_27();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231CB8CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231E0F950();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = type metadata accessor for EntityKind();
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_231CB8D88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231E0F950();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = type metadata accessor for EntityKind();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_231CB8EA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_231CB8EE8()
{
  OUTLINED_FUNCTION_118();
  v1 = type metadata accessor for EntityKind();
  OUTLINED_FUNCTION_7_4(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SummarizationPipeline.Request();
  OUTLINED_FUNCTION_7_4(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v11 = sub_231E10340();
      goto LABEL_7;
    case 1u:
      v11 = sub_231E106A0();
      goto LABEL_7;
    case 2u:
      v11 = sub_231E10A30();
      goto LABEL_7;
    case 3u:
      v11 = sub_231E10BE0();
      goto LABEL_7;
    case 4u:
      v11 = sub_231E10AE0();
LABEL_7:
      OUTLINED_FUNCTION_22_9(v11);
      (*(v12 + 8))(v0 + v3);
      break;
    default:
      break;
  }

  v13 = sub_231E0F950();
  OUTLINED_FUNCTION_22_9(v13);
  (*(v14 + 8))(v0 + v8);
  v15 = (v0 + v8 + *(v6 + 20));
  if (*v15)
  {

    v16 = v15[1];
  }

  v17 = *(v6 + 24);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v18 = sub_231E10340();
      goto LABEL_16;
    case 1u:
      v18 = sub_231E106A0();
      goto LABEL_16;
    case 2u:
      v18 = sub_231E10A30();
      goto LABEL_16;
    case 3u:
      v18 = sub_231E10BE0();
      goto LABEL_16;
    case 4u:
      v18 = sub_231E10AE0();
LABEL_16:
      OUTLINED_FUNCTION_22_9(v18);
      (*(v19 + 8))(v0 + v8 + v17);
      break;
    default:
      break;
  }

  v20 = *(v0 + ((v10 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  OUTLINED_FUNCTION_113();

  return MEMORY[0x2821FE8E8](v21, v22, v23);
}

uint64_t sub_231CB918C()
{
  OUTLINED_FUNCTION_118();
  v1 = type metadata accessor for SummarizationPipeline.Request();
  OUTLINED_FUNCTION_7_4(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for EntityKind();
  OUTLINED_FUNCTION_7_4(v6);
  v8 = *(v7 + 80);
  v9 = v3 + v5 + v8;
  v11 = *(v10 + 64);
  v12 = v0 + v3;
  v13 = sub_231E0F950();
  OUTLINED_FUNCTION_22_9(v13);
  (*(v14 + 8))(v12);
  v15 = (v12 + *(v1 + 20));
  if (*v15)
  {

    v16 = v15[1];
  }

  v17 = v9 & ~v8;
  v18 = *(v1 + 24);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v19 = sub_231E10340();
      goto LABEL_9;
    case 1u:
      v19 = sub_231E106A0();
      goto LABEL_9;
    case 2u:
      v19 = sub_231E10A30();
      goto LABEL_9;
    case 3u:
      v19 = sub_231E10BE0();
      goto LABEL_9;
    case 4u:
      v19 = sub_231E10AE0();
LABEL_9:
      OUTLINED_FUNCTION_22_9(v19);
      (*(v20 + 8))(v12 + v18);
      break;
    default:
      break;
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v21 = sub_231E10340();
      goto LABEL_16;
    case 1u:
      v21 = sub_231E106A0();
      goto LABEL_16;
    case 2u:
      v21 = sub_231E10A30();
      goto LABEL_16;
    case 3u:
      v21 = sub_231E10BE0();
      goto LABEL_16;
    case 4u:
      v21 = sub_231E10AE0();
LABEL_16:
      OUTLINED_FUNCTION_22_9(v21);
      (*(v22 + 8))(v0 + v17);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_113();

  return MEMORY[0x2821FE8E8](v23, v24, v25);
}

uint64_t sub_231CB941C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_299_0();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_231CB9458()
{
  v1 = (type metadata accessor for ConversationDeletionInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = *(v0 + v3 + 8);

  v8 = v1[7];
  v9 = sub_231E0F950();
  OUTLINED_FUNCTION_22_9(v9);
  (*(v10 + 8))(v0 + v3 + v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_231CB96AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_231CB9BE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_231CB9C9C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_95_5();
  v4 = sub_231E0F950();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_231CB9CE0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_95_5();
  v4 = sub_231E0F950();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_231CB9ED0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231CB9F40()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_27();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231CB9FCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75998, &unk_231E234B8);
  OUTLINED_FUNCTION_12(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_231CBA06C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_231CBA0AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231CBA138(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_231E11ED0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_231CBA16C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_231CC2B98(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_231CBA180()
{
  v0 = sub_231E10A70();
  v2 = v1;
  v3 = sub_231CC7D1C();
  if (v2)
  {
    if (v0 == *v3 && v2 == v3[1])
    {

      v6 = 0;
    }

    else
    {
      v5 = sub_231E12100();

      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

unint64_t sub_231CBA1FC(char a1)
{
  result = 0x20676E697373694DLL;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_231CBA2B8(unsigned __int8 a1)
{
  sub_231E12220();
  MEMORY[0x23837D730](a1);
  return sub_231E12250();
}

uint64_t sub_231CBA31C()
{
  v1 = *v0;
  sub_231E12220();
  MEMORY[0x23837D730](v1);
  return sub_231E12250();
}

uint64_t sub_231CBA378(void *a1)
{
  v2 = swift_allocObject();
  sub_231CBA3B8(a1);
  return v2;
}

uint64_t sub_231CBA3B8(void *a1)
{
  *(v1 + 24) = 0;
  v3 = [objc_allocWithZone(MEMORY[0x277D06D50]) initWithStore:a1 options:1];

  *(v1 + 16) = v3;
  return v1;
}

id sub_231CBA414()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D06D78]) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_231CBA480(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  OUTLINED_FUNCTION_31();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231CBA4AC()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = objc_allocWithZone(MEMORY[0x277D06D60]);
  v5 = sub_231CC0040(sub_231CC15C8, v3);
  v0[5] = v5;

  v6 = swift_task_alloc();
  v0[6] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[7] = v8;
  sub_231CC1784(0, &qword_2814CAEF0, 0x277D06D58);
  *v8 = v0;
  v8[1] = sub_231CBA5FC;
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_231CBA5FC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (!v0)
  {
    v9 = *(v3 + 48);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CBA700()
{
  OUTLINED_FUNCTION_18();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_231CBA764()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_19();
  v3 = *(v0 + 64);

  return v2();
}

void sub_231CBA7C8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74038, qword_231E13528);
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = aBlock - v12;
  (*(v9 + 16))(aBlock - v12, a1, v6);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v9 + 32))(v15 + v14, v13, v6);
  aBlock[4] = sub_231CC1620;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231CBAC90;
  aBlock[3] = &block_descriptor_14;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  v18 = [v17 requestRepresentationWithOptions:a3 completionHandler:v16];
  _Block_release(v16);
}

uint64_t sub_231CBA994(uint64_t *a1, void *a2, void *a3)
{
  v6 = sub_231E10E30();
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = a2;
    v15 = sub_231CB4EEC();
    (*(v9 + 16))(v13, v15, v6);
    v16 = a2;
    v17 = a3;
    v18 = sub_231E10E10();
    v19 = sub_231E11AD0();

    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_16_0();
      v20 = swift_slowAlloc();
      v35 = OUTLINED_FUNCTION_53();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v20 = 136315394;
      v21 = [v17 searchableMessageID];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 stringValue];
        HIDWORD(v34) = v19;
        v24 = v23;

        v22 = sub_231E11620();
        v26 = v25;

        LOBYTE(v19) = BYTE4(v34);
      }

      else
      {
        v26 = 0xE000000000000000;
      }

      sub_231CB5000(v22, v26, &v37);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_41();
      v31 = a2;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v32;
      v33 = v35;
      *v35 = v32;
      _os_log_impl(&dword_231CAE000, v18, v19, "Unable to request representation for message: %s with error %@", v20, 0x16u);
      sub_231CC154C(v33, &qword_27DD74D30, &unk_231E13480);
      OUTLINED_FUNCTION_30();
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    (*(v9 + 8))(v13, v6);
    v37 = a2;
  }

  else
  {
    if (a1)
    {
      v37 = a1;
      v27 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74038, qword_231E13528);
      return sub_231E11940();
    }

    sub_231CC16C0();
    v29 = swift_allocError();
    *v30 = 0;
    v37 = v29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74038, qword_231E13528);
  return sub_231E11930();
}

void sub_231CBAC90(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_231CBAD1C()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_231E11670();
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_55();
  v6 = sub_231E0F780();
  v1[5] = v6;
  OUTLINED_FUNCTION_6(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_69();
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CBADF0()
{
  OUTLINED_FUNCTION_18();
  v1 = *MEMORY[0x277D06BA0];
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_231CBAE90;
  v3 = *(v0 + 16);

  return sub_231CBA480(v3, v1);
}

uint64_t sub_231CBAE90()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  v6 = *(v5 + 72);
  *v4 = *v1;
  v3[10] = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[7];
    v8 = v3[8];
    v10 = v3[4];

    OUTLINED_FUNCTION_19();

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_31();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_231CBAFD8()
{
  v1 = [*(v0 + 80) contentURL];
  if (!v1)
  {
    sub_231CC16C0();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = v1;
  v3 = *(v0 + 88);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  sub_231E0F730();

  (*(v7 + 32))(v4, v5, v6);
  sub_231E11660();
  v9 = sub_231E115E0();
  if (v3)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 40));
LABEL_5:

    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    v14 = *(v0 + 32);

    OUTLINED_FUNCTION_19();

    return v15();
  }

  v17 = v9;
  v18 = v10;
  v19 = *(v0 + 80);
  v20 = *(v0 + 56);
  v21 = *(v0 + 32);
  (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 40));

  OUTLINED_FUNCTION_34();

  return v22(v17, v18);
}

uint64_t sub_231CBB1B4()
{
  OUTLINED_FUNCTION_18();
  v12 = *MEMORY[0x277D85DE8];
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_231E10E30();
  v1[6] = v3;
  OUTLINED_FUNCTION_6(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v1[8] = OUTLINED_FUNCTION_55();
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231CBB288()
{
  v52 = v0;
  v51[1] = *MEMORY[0x277D85DE8];
  v2 = v0[4];
  v1 = v0[5];
  v0[9] = sub_231E10000();
  v0[10] = v3;
  v4 = sub_231CBA414();
  v5 = [v4 messageRepository];
  v0[11] = v5;

  sub_231E10000();
  v6 = sub_231E115F0();

  v7 = [v5 messageForSearchableItemIdentifier_];
  v0[12] = v7;

  v0[2] = 0;
  v8 = [v7 resultWithTimeout:v0 + 2 error:3.0];
  v0[13] = v8;
  v9 = v0[2];
  if (v8)
  {
    v10 = v9;
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_231CBB678;
    v12 = v0[5];
    v13 = *MEMORY[0x277D85DE8];

    return sub_231CBAD1C();
  }

  else
  {
    v15 = v9;
    v16 = sub_231E0F6F0();

    swift_willThrow();
    v17 = v0[10];
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];
    v21 = sub_231CB4EEC();
    (*(v19 + 16))(v18, v21, v20);

    v22 = v16;
    v23 = sub_231E10E10();
    v24 = sub_231E11AD0();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[11];
    v27 = v0[12];
    v28 = v0[10];
    if (v25)
    {
      v29 = v0[9];
      v30 = v0[7];
      v49 = v0[6];
      v50 = v0[8];
      OUTLINED_FUNCTION_16_0();
      v48 = v26;
      v31 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      *v31 = 136315394;
      v32 = sub_231CB5000(v29, v28, v51);

      *(v31 + 4) = v32;
      *(v31 + 12) = 2080;
      v0[3] = v16;
      v33 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
      v34 = sub_231E11680();
      v36 = sub_231CB5000(v34, v35, v51);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_231CAE000, v23, v24, "Failed to fetch Mail HTML representation for uniqueId: %s, error: %s", v31, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_14();

      (*(v30 + 8))(v50, v49);
    }

    else
    {
      v38 = v0[7];
      v37 = v0[8];
      v39 = v0[6];
      v40 = v0[10];

      v41 = *(v38 + 8);
      v42 = OUTLINED_FUNCTION_33();
      v44(v42, v43);
    }

    v45 = v0[8];

    OUTLINED_FUNCTION_34();
    v47 = *MEMORY[0x277D85DE8];

    return v46(0, 0);
  }
}

uint64_t sub_231CBB678()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v2;
  v5 = v4;
  v18 = *MEMORY[0x277D85DE8];
  v6 = *v1;
  OUTLINED_FUNCTION_15();
  *v7 = v6;
  v9 = *(v8 + 112);
  v10 = *v1;
  OUTLINED_FUNCTION_4();
  *v11 = v10;
  v6[15] = v0;

  if (!v0)
  {
    v12 = v6[10];

    v6[16] = v3;
    v6[17] = v5;
  }

  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231CBB7C8()
{
  OUTLINED_FUNCTION_29();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 88);

  v4 = *(v0 + 136);
  v5 = *(v0 + 64);

  OUTLINED_FUNCTION_34();
  v6 = *MEMORY[0x277D85DE8];
  v7 = OUTLINED_FUNCTION_59_0();

  return v8(v7);
}

uint64_t sub_231CBB874()
{
  v41 = v0;
  v40[1] = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = sub_231CB4EEC();
  (*(v4 + 16))(v3, v6, v5);

  v7 = v1;
  v8 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_49();

  if (OUTLINED_FUNCTION_39_0())
  {
    v9 = *(v0 + 96);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v0 + 56);
    v39 = *(v0 + 64);
    v37 = *(v0 + 88);
    v38 = *(v0 + 48);
    OUTLINED_FUNCTION_16_0();
    v13 = swift_slowAlloc();
    v40[0] = swift_slowAlloc();
    *v13 = 136315394;
    v14 = sub_231CB5000(v11, v10, v40);

    *(v13 + 4) = v14;
    *(v13 + 12) = 2080;
    *(v0 + 24) = v1;
    v15 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
    v16 = sub_231E11680();
    v18 = sub_231CB5000(v16, v17, v40);

    *(v13 + 14) = v18;
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_11();

    (*(v12 + 8))(v39, v38);
  }

  else
  {
    v25 = *(v0 + 88);
    v24 = *(v0 + 96);
    v26 = *(v0 + 80);
    v28 = *(v0 + 56);
    v27 = *(v0 + 64);
    v29 = *(v0 + 48);

    v30 = *(v28 + 8);
    v31 = OUTLINED_FUNCTION_33();
    v32(v31);
  }

  v33 = *(v0 + 64);

  OUTLINED_FUNCTION_34();
  v35 = *MEMORY[0x277D85DE8];

  return v34(0, 0);
}

uint64_t sub_231CBBAF0()
{
  OUTLINED_FUNCTION_29();
  *(v1 + 16) = *v0;
  v2 = *(*v0 + 144);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_23(v4);

  return v6(v5);
}

uint64_t sub_231CBBC28()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CBBD18()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 32);
  if (*(v0 + 40))
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    sub_231CBBDA0();
  }

  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_48();

  return v5(v4);
}

uint64_t sub_231CBBDA0()
{
  v0 = objc_opt_self();
  OUTLINED_FUNCTION_48();
  v1 = sub_231E115F0();
  v2 = [v0 snippetFromHTMLBody:v1 options:32 maxLength:0x7FFFFFFFFFFFFFFFLL preservingQuotedForwardedContent:0];

  sub_231E11620();
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_231CBBE30()
{
  OUTLINED_FUNCTION_18();
  v1[57] = v2;
  v1[58] = v0;
  v1[56] = v3;
  v1[59] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  v1[60] = OUTLINED_FUNCTION_55();
  v7 = sub_231E0F950();
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  v1[61] = OUTLINED_FUNCTION_55();
  v10 = sub_231E10010();
  v1[62] = v10;
  OUTLINED_FUNCTION_6(v10);
  v1[63] = v11;
  v13 = *(v12 + 64);
  v1[64] = OUTLINED_FUNCTION_55();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  OUTLINED_FUNCTION_47(v14);
  v16 = *(v15 + 64);
  v1[65] = OUTLINED_FUNCTION_69();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v17 = sub_231E10400();
  v1[68] = v17;
  OUTLINED_FUNCTION_6(v17);
  v1[69] = v18;
  v20 = *(v19 + 64);
  v1[70] = OUTLINED_FUNCTION_69();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v21 = sub_231E10210();
  v1[74] = v21;
  OUTLINED_FUNCTION_6(v21);
  v1[75] = v22;
  v24 = *(v23 + 64);
  v1[76] = OUTLINED_FUNCTION_55();
  v25 = sub_231E10E30();
  v1[77] = v25;
  OUTLINED_FUNCTION_6(v25);
  v1[78] = v26;
  v28 = *(v27 + 64);
  v1[79] = OUTLINED_FUNCTION_69();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_231CBC12C()
{
  v72 = v0;
  v1 = v0[91];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[57];
  v5 = sub_231CB4EEC();
  v0[92] = v5;
  v6 = *(v2 + 16);
  v0[93] = v6;
  v0[94] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  (v6)(v1, v5, v3);

  v7 = sub_231E10E10();
  v8 = sub_231E11AC0();

  v9 = os_log_type_enabled(v7, v8);
  v70 = v0[91];
  v10 = v0[78];
  v69 = v0[77];
  if (v9)
  {
    v67 = v5;
    v11 = v0[57];
    swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_28();
    v71 = v12;
    *v6 = 136446210;
    v13 = sub_231DE2398(v11);
    v15 = v4;
    v16 = sub_231CB5000(v13, v14, &v71);
    v5 = v67;

    *(v6 + 4) = v16;
    v4 = v15;
    _os_log_impl(&dword_231CAE000, v7, v8, "%{public}s Fetching mail thread", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  v19 = *(v10 + 8);
  v17 = v10 + 8;
  v18 = v19;
  v19(v70, v69);
  v20 = v0[56];
  v21 = sub_231E10100();
  if (!v22)
  {
    (v6)(v0[82], v5, v0[77]);

    v37 = sub_231E10E10();
    sub_231E11AD0();

    OUTLINED_FUNCTION_39_0();
    v38 = v0[82];
    OUTLINED_FUNCTION_61();
    if (v39)
    {
      OUTLINED_FUNCTION_67_0();
      v40 = OUTLINED_FUNCTION_17_1();
      v71 = v40;
      *v38 = 136446210;
      v41 = sub_231DE2398(v4);
      v43 = sub_231CB5000(v41, v42, &v71);

      *(v38 + 4) = v43;
      OUTLINED_FUNCTION_3_2();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_11();
    }

    v18(v38, v17);
    if (v0[57])
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v23 = sub_231CBF4B0(v21, v22);
  v0[95] = v23;
  if (v24)
  {
    (v6)(v0[83], v5, v0[77]);

    v25 = sub_231E10E10();
    sub_231E11AD0();

    OUTLINED_FUNCTION_39_0();
    v26 = v0[83];
    OUTLINED_FUNCTION_61();
    if (v27)
    {
      OUTLINED_FUNCTION_67_0();
      v28 = OUTLINED_FUNCTION_17_1();
      v71 = v28;
      *v26 = 136446210;
      v29 = sub_231DE2398(v4);
      v31 = sub_231CB5000(v29, v30, &v71);

      *(v26 + 4) = v31;
      OUTLINED_FUNCTION_3_2();
      _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_11();
    }

    v18(v26, v17);
    if (v0[57])
    {
LABEL_15:
      sub_231DDABDC();
    }

LABEL_16:
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_13_1();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_46();

    __asm { BRAA            X1, X16 }
  }

  v49 = v23;
  v68 = v0[58];
  v66 = sub_231CC1784(0, &qword_2814CAE98, 0x277D06DB8);
  v0[96] = v66;
  v71 = MEMORY[0x277D84F90];
  sub_231E11E30();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_231E11E10();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_37_0();
  sub_231E11E50();
  sub_231E11E20();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_231E11E10();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_37_0();
  sub_231E11E50();
  sub_231E11E20();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_231E11E10();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_37_0();
  sub_231E11E50();
  sub_231E11E20();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_231E11E10();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_37_0();
  sub_231E11E50();
  sub_231E11E20();
  sub_231CC1784(0, &qword_2814CAF08, 0x277CCA920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_231E13410;
  v51 = objc_opt_self();
  *(v50 + 32) = [v51 predicateForMessagesInConversation_];
  sub_231CC1784(0, &qword_2814CBD70, 0x277CCABB0);
  v52 = sub_231E11850();

  v53 = [v51 predicateForExcludingMessagesInMailboxesWithTypes_];

  *(v50 + 40) = v53;
  v54 = sub_231CBF7A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_231E13420;
  *(v55 + 32) = [objc_opt_self() sortDescriptorForDateAscending_];
  v56 = objc_allocWithZone(MEMORY[0x277D06E80]);
  v57 = sub_231CC01B0(v66, v54, v55, 0, 0xD000000000000023, 0x8000000231E2DCD0);
  v0[97] = v57;
  v58 = sub_231CBA414();
  v59 = [v58 messageRepository];
  v0[98] = v59;

  v60 = sub_231D1308C();
  v0[2] = v0;
  v0[7] = v0 + 55;
  v0[3] = sub_231CBC958;
  v61 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB8, &qword_231E13470);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_231CBF82C;
  v0[13] = &block_descriptor;
  v0[14] = v61;
  [v59 performQuery:v57 limit:v60 completionHandler:?];
  OUTLINED_FUNCTION_46();

  return MEMORY[0x282200938]();
}

uint64_t sub_231CBC958()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 792) = *(v3 + 48);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231CBCA58()
{
  v53 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 720);
  v6 = *(v0 + 616);
  v7 = *(v0 + 456);
  v8 = *(v0 + 440);
  *(v0 + 800) = v8;
  *(v0 + 432) = v8;

  v9 = OUTLINED_FUNCTION_40();
  v3(v9);

  v10 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_70_0();
  v11 = OUTLINED_FUNCTION_39_0();
  v12 = *(v0 + 720);
  v13 = *(v0 + 624);
  v14 = *(v0 + 616);
  if (v11)
  {
    OUTLINED_FUNCTION_10_2();
    swift_slowAlloc();
    v52[0] = OUTLINED_FUNCTION_17_1();
    v15 = OUTLINED_FUNCTION_52(4.8752e-34);
    sub_231CB5000(v15, v16, v52);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_63();
    *(v14 + 14) = sub_231CBA138(v8);
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_11();

    v22 = *(v13 + 8);
    v22(v12, v14);
  }

  else
  {

    v22 = *(v13 + 8);
    v22(v12, v14);
  }

  *(v0 + 808) = v22;
  v23 = *(v0 + 448);

  v25 = sub_231CBF960(v24);
  v27 = v26;

  *(v0 + 816) = v25;
  if (v27)
  {
    OUTLINED_FUNCTION_7_1();
    v28 = *(v0 + 616);
    v29 = *(v0 + 456);
    v30(*(v0 + 672));

    v31 = sub_231E10E10();
    v32 = sub_231E11AD0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 760);
      v51 = *(v0 + 672);
      v49 = *(v0 + 624);
      v50 = *(v0 + 616);
      OUTLINED_FUNCTION_10_2();
      v48 = v34;
      swift_slowAlloc();
      v52[0] = OUTLINED_FUNCTION_17_1();
      v35 = OUTLINED_FUNCTION_52(4.8752e-34);
      sub_231CB5000(v35, v36, v52);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_26();
      *(v14 + 14) = v33;
      _os_log_impl(&dword_231CAE000, v31, v32, "%{public}s Unable to fetch mail thread messages, parent email unexpectedly not in conversation: %lld", v14, 0x16u);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_11();

      v37 = v50;
      v38 = v51;
    }

    else
    {
      v43 = *(v0 + 672);
      v44 = *(v0 + 624);
      v45 = *(v0 + 616);

      v38 = OUTLINED_FUNCTION_33();
    }

    v22(v38, v37);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1_1();

    OUTLINED_FUNCTION_19();

    return v46();
  }

  else
  {
    sub_231CC0ED4(v25, (v8 & 0xC000000000000001) == 0, v8);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v47 = OUTLINED_FUNCTION_48();
      v39 = MEMORY[0x23837D2A0](v47);
    }

    else
    {
      v39 = *(v8 + 8 * v25 + 32);
    }

    *(v0 + 824) = v39;
    v40 = swift_task_alloc();
    *(v0 + 832) = v40;
    *v40 = v0;
    v40[1] = sub_231CBCE98;
    v41 = *(v0 + 464);

    return sub_231CBAD1C();
  }
}

uint64_t sub_231CBCE98()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21();
  v7 = v6;
  OUTLINED_FUNCTION_15();
  *v8 = v7;
  v10 = *(v9 + 832);
  v11 = *v1;
  OUTLINED_FUNCTION_4();
  *v12 = v11;
  *(v7 + 840) = v0;

  if (!v0)
  {

    *(v7 + 848) = v3;
    *(v7 + 856) = v5;
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231CBCFC0()
{
  v93 = v0;
  v1 = v0[107];
  v2 = v0[106];
  v3 = sub_231CBBDA0();
  v5 = v4;

  if (!v5)
  {
    v21 = v0[100];
    v22 = v0[97];
    v23 = v0[76];
    OUTLINED_FUNCTION_43_0();
    (*(v24 + 104))(v23, *MEMORY[0x277D42270]);
    sub_231E10230();

    goto LABEL_52;
  }

  v6 = v0[102];
  v7 = v0[76];
  OUTLINED_FUNCTION_43_0();
  *v7 = v3;
  v7[1] = v5;
  (*(v8 + 104))(v7, *MEMORY[0x277D42268]);
  sub_231E10230();
  v9 = (v6 + 1);
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v10 = sub_231CBA138(v0[100]);
  if (v10 < v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  i = v10;
  v12 = v0[100];
  v13 = OUTLINED_FUNCTION_48();
  sub_231CC14F4(v13, v14);
  sub_231CC14F4(i, v12);
  if ((v12 & 0xC000000000000001) == 0 || v9 == i)
  {
    v20 = v0[100];
  }

  else
  {
    if (v9 >= i)
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v15 = v0[100];

    v16 = v6 + 1;
    do
    {
      v17 = v0[100];
      v18 = v0[96];
      v19 = v16 + 1;
      sub_231E11D90();
      v16 = v19;
    }

    while (i != v19);
    v20 = v0[100];
  }

  if (v20 >> 62)
  {
LABEL_18:
    sub_231E11EE0();
    v9 = v29;
    i = v30;

    if ((i & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  if ((i & 0x8000000000000000) != 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  i = (2 * i) | 1;
  if ((i & 1) == 0)
  {
LABEL_15:
    v25 = OUTLINED_FUNCTION_57();
    sub_231CC0F10(v25, v26, v9, i);
    v28 = v27;
LABEL_25:
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

LABEL_19:
  sub_231E12120();
  swift_unknownObjectRetain_n();
  v31 = swift_dynamicCastClass();
  if (!v31)
  {
    swift_unknownObjectRelease();
    v31 = MEMORY[0x277D84F90];
  }

  v32 = *(v31 + 16);

  if (__OFSUB__(i >> 1, v9))
  {
    goto LABEL_59;
  }

  if (v32 != (i >> 1) - v9)
  {
LABEL_60:
    swift_unknownObjectRelease_n();
    goto LABEL_15;
  }

  v28 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v28)
  {
    v28 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_26:
  v33 = MEMORY[0x277D84F90];
  v9 = v0[100];
  swift_beginAccess();
  v0[54] = v28;

  v92 = v33;
  v34 = sub_231CBA138(v28);

  for (i = 0; v34 != i; ++i)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x23837D2A0](i, v28);
    }

    else
    {
      if (i >= *(v28 + 16))
      {
        goto LABEL_56;
      }

      v35 = *(v28 + 8 * i + 32);
    }

    v36 = v35;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v9 = [v35 flags];
    v37 = [v9 draft];

    if (v37 & 1) != 0 || (v9 = [v36 flags], v38 = objc_msgSend(v9, sel_deleted), v9, (v38))
    {
    }

    else
    {
      v9 = &v92;
      sub_231E11E10();
      v39 = *(v92 + 16);
      sub_231E11E40();
      sub_231E11E50();
      sub_231E11E20();
    }
  }

  v40 = v0[94];
  v41 = v0[93];
  v42 = v0[92];
  v43 = v0[89];
  v44 = v0[77];
  v45 = v0[57];

  v46 = v92;
  v0[108] = v92;
  v0[54] = v46;

  v41(v43, v42, v44);

  v47 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_70_0();
  v48 = OUTLINED_FUNCTION_39_0();
  v49 = v0[101];
  v50 = v0[89];
  v51 = v0[78];
  v52 = v0[77];
  if (v48)
  {
    OUTLINED_FUNCTION_10_2();
    swift_slowAlloc();
    v92 = OUTLINED_FUNCTION_17_1();
    v53 = OUTLINED_FUNCTION_52(4.8752e-34);
    sub_231CB5000(v53, v54, &v92);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_63();
    *(v50 + 14) = sub_231CBA138(v46);
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v55, v56, v57, v58, v59, 0x16u);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_11();
  }

  v49(v50, v52);
  v60 = sub_231CBA138(v46);
  v0[109] = v60;
  if (!v60)
  {
    v64 = OUTLINED_FUNCTION_5();
    v65(v64);
    v66 = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();

    v67 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_49();

    v68 = OUTLINED_FUNCTION_39_0();
    v69 = v0[101];
    v70 = v0[85];
    v71 = v0[78];
    v72 = v0[77];
    if (v68)
    {
      OUTLINED_FUNCTION_10_2();
      swift_slowAlloc();
      v92 = OUTLINED_FUNCTION_17_1();
      v73 = OUTLINED_FUNCTION_52(4.8752e-34);
      sub_231CB5000(v73, v74, &v92);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_26();
      v75 = *(MEMORY[0x277D84F90] + 16);

      *(v69 + 14) = v75;
      v66 = MEMORY[0x277D84F90];

      OUTLINED_FUNCTION_3_2();
      _os_log_impl(v76, v77, v78, v79, v80, 0x16u);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_11();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v81 = OUTLINED_FUNCTION_33();
    (v69)(v81);
    OUTLINED_FUNCTION_27_0();
    *v72 = v66;
    v84 = *MEMORY[0x277D42288];
    v85 = sub_231E10290();
    OUTLINED_FUNCTION_12(v85);
    v87 = *(v86 + 104);
    v88 = OUTLINED_FUNCTION_45();
    v89(v88);
    OUTLINED_FUNCTION_35_0();

LABEL_52:
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_13_1();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_46();

    __asm { BRAA            X1, X16 }
  }

  v0[110] = *MEMORY[0x277CBCFC0];
  v0[111] = MEMORY[0x277D84F90];
  v61 = v0[108];

  if ((v61 & 0xC000000000000001) != 0)
  {
    v63 = MEMORY[0x23837D2A0](0, v61);
  }

  else
  {
    if (!*(v61 + 16))
    {
      __break(1u);
      return result;
    }

    v63 = *(v61 + 32);
  }

  v0[112] = v63;
  v0[113] = 1;
  v82 = swift_task_alloc();
  v0[114] = v82;
  *v82 = v0;
  OUTLINED_FUNCTION_2(v82);
  OUTLINED_FUNCTION_46();

  return sub_231CBAD1C();
}

uint64_t sub_231CBD7A8()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_15();
  *v6 = v5;
  v8 = *(v7 + 912);
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  v5[115] = v11;
  v5[116] = v0;

  if (!v0)
  {
    v5[117] = v3;
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_231CBD8BC()
{
  v212 = v0;
  v2 = *(v0 + 936);
  v3 = *(v0 + 920);
  v4 = *(v0 + 896);
  sub_231CBBDA0();
  v5 = [v4 senderAddress];
  if (!v5)
  {
    v9 = *(v0 + 920);

LABEL_9:
    v16 = *(v0 + 896);
    OUTLINED_FUNCTION_7_1();
    v17 = *(v0 + 616);
    v18 = *(v0 + 456);
    v19(*(v0 + 688));

    v20 = v16;
    v21 = sub_231E10E10();
    v22 = sub_231E11AD0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 896);
      v202 = *(v0 + 688);
      v206 = *(v0 + 808);
      v24 = *(v0 + 616);
      v25 = *(v0 + 456);
      v198 = *(v0 + 624) + 8;
      OUTLINED_FUNCTION_16_0();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_53();
      v27 = OUTLINED_FUNCTION_28();
      v211[0] = v27;
      *v26 = 136446466;
      v28 = sub_231DE2398(v25);
      sub_231CB5000(v28, v29, v211);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_41();
      v30 = [v23 searchableMessageID];
      *(v26 + 14) = v30;
      *v1 = v30;
      OUTLINED_FUNCTION_68_0(&dword_231CAE000, v31, v32, "%{public}s Skipping message with unique id: %@. Failed to get sender handle, this may lead to incorrect summaries due to key content missing.");
      sub_231CC154C(v1, &qword_27DD74D30, &unk_231E13480);
      OUTLINED_FUNCTION_14();
      __swift_destroy_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_30();

      v206(v202, v24);
    }

    else
    {
      v22 = *(v0 + 808);
      v33 = *(v0 + 688);
      OUTLINED_FUNCTION_71();
      v34 = OUTLINED_FUNCTION_22();
      v22(v34);
    }

    v35 = *(v0 + 896);
    if (*(v0 + 456))
    {
      sub_231DDABDC();
    }

    goto LABEL_15;
  }

  v6 = v5;
  v7 = &off_278947000;
  v8 = [v5 emailAddressValue];
  if (v8)
  {
    sub_231CC1488(v8, &selRef_displayName);
  }

  v10 = [v6 emailAddressValue];
  if (v10)
  {
    sub_231CC1488(v10, &selRef_simpleAddress);
  }

  v11 = *(v0 + 880);
  v12 = *(v0 + 544);
  v13 = *(v0 + 536);
  sub_231E11620();
  LOBYTE(v179) = 0;
  OUTLINED_FUNCTION_48();
  sub_231E103D0();
  if (__swift_getEnumTagSinglePayload(v13, 1, v12) == 1)
  {
    v14 = *(v0 + 920);
    v15 = *(v0 + 536);

    swift_unknownObjectRelease();

    sub_231CC154C(v15, &dword_27DD73FA0, &dword_231E13460);
    goto LABEL_9;
  }

  v55 = *(v0 + 896);
  v192 = *(*(v0 + 552) + 32);
  (v192)(*(v0 + 584), *(v0 + 536), *(v0 + 544));
  v56 = [v55 toList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74030, &qword_231E13490);
  i = sub_231E11870();

  v208 = sub_231CBA138(i);
  v57 = 0;
  v199 = i & 0xC000000000000001;
  v203 = i;
  v196 = i & 0xFFFFFFFFFFFFFF8;
  v181 = MEMORY[0x277D84F90];
  while (v208 != v57)
  {
    if (v199)
    {
      i = MEMORY[0x23837D2A0](v57, v203);
    }

    else
    {
      if (v57 >= *(v196 + 16))
      {
        goto LABEL_69;
      }

      i = *(v203 + 8 * v57 + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v57, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v58 = [i v7[325]];
    if (v58)
    {
      sub_231CC1488(v58, &selRef_displayName);
    }

    v59 = [i v7[325]];
    if (v59)
    {
      sub_231CC1488(v59, &selRef_simpleAddress);
    }

    v60 = *(v0 + 880);
    v61 = *(v0 + 544);
    v62 = *(v0 + 520);
    sub_231E11620();
    LOBYTE(v180) = 0;
    sub_231E103D0();
    if (__swift_getEnumTagSinglePayload(v62, 1, v61) == 1)
    {
      v63 = *(v0 + 896);
      v64 = *(v0 + 752);
      v65 = *(v0 + 744);
      v66 = *(v0 + 736);
      v67 = *(v0 + 704);
      v68 = *(v0 + 616);
      v69 = *(v0 + 456);
      sub_231CC154C(*(v0 + 520), &dword_27DD73FA0, &dword_231E13460);
      v70 = OUTLINED_FUNCTION_40();
      v65(v70);

      v71 = v63;
      v72 = sub_231E10E10();
      v73 = sub_231E11AD0();

      if (os_log_type_enabled(v72, v73))
      {
        v188 = *(v0 + 704);
        v190 = *(v0 + 808);
        v186 = *(v0 + 616);
        v74 = *(v0 + 456);
        v182 = *(v0 + 896);
        v184 = *(v0 + 624) + 8;
        OUTLINED_FUNCTION_16_0();
        v75 = swift_slowAlloc();
        OUTLINED_FUNCTION_53();
        v76 = OUTLINED_FUNCTION_17_1();
        v211[0] = v76;
        *v75 = 136446466;
        v77 = sub_231DE2398(v74);
        v79 = sub_231CB5000(v77, v78, v211);

        *(v75 + 4) = v79;
        *(v75 + 12) = 2112;
        v80 = [v182 searchableMessageID];
        *(v75 + 14) = v80;
        *v69 = v80;
        _os_log_impl(&dword_231CAE000, v72, v73, "%{public}s Skipping recipient, failed to create handle, message id: %@", v75, 0x16u);
        sub_231CC154C(v69, &qword_27DD74D30, &unk_231E13480);
        OUTLINED_FUNCTION_11();
        __swift_destroy_boxed_opaque_existential_0(v76);
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_30();

        v190(v188, v186);
      }

      else
      {
        v82 = *(v0 + 808);
        v83 = *(v0 + 704);
        v84 = *(v0 + 624);
        v85 = *(v0 + 616);

        v86 = OUTLINED_FUNCTION_33();
        v82(v86);
      }

      v81 = 1;
      v7 = &off_278947000;
    }

    else
    {
      (v192)(*(v0 + 528), *(v0 + 520), *(v0 + 544));
      v81 = 0;
    }

    v87 = *(v0 + 544);
    v88 = *(v0 + 528);
    __swift_storeEnumTagSinglePayload(v88, v81, 1, v87);
    swift_unknownObjectRelease();
    if (__swift_getEnumTagSinglePayload(v88, 1, v87) == 1)
    {
      sub_231CC154C(*(v0 + 528), &dword_27DD73FA0, &dword_231E13460);
      ++v57;
    }

    else
    {
      v89 = *(v0 + 568);
      (v192)(*(v0 + 576), *(v0 + 528), *(v0 + 544));
      v90 = OUTLINED_FUNCTION_59_0();
      v192(v90);
      v91 = v181;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_231CC0294(0, *(v181 + 16) + 1, 1, v181, &qword_27DD740A8, &unk_231E13540, MEMORY[0x277D42328], MEMORY[0x277D42328]);
      }

      ++v57;
      i = *(v91 + 16);
      v92 = *(v91 + 24);
      if (i >= v92 >> 1)
      {
        v91 = sub_231CC0294(v92 > 1, i + 1, 1, v91, &qword_27DD740A8, &unk_231E13540, MEMORY[0x277D42328], MEMORY[0x277D42328]);
      }

      v93 = *(v0 + 568);
      v94 = *(v0 + 552);
      v95 = *(v0 + 544);
      *(v91 + 16) = i + 1;
      v181 = v91;
      (v192)(v91 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * i, v93, v95);
    }
  }

  v96 = *(v0 + 920);
  v97 = *(v0 + 896);

  v98 = [v97 searchableMessageID];
  v99 = *(v0 + 896);
  if (v98)
  {
    v100 = v98;
    v101 = *(v0 + 584);
    v102 = *(v0 + 560);
    v103 = *(v0 + 552);
    v104 = *(v0 + 544);
    v105 = *(v0 + 488);
    v106 = [v98 stringValue];

    sub_231E11620();
    (*(v103 + 16))(v102, v101, v104);
    v107 = [v99 date];
    sub_231E0F910();

    v108 = [v99 flags];
    [v108 read];

    v109 = [v99 subject];
    if (v109)
    {
      v110 = [v109 subjectString];

      sub_231E11620();
    }

    v140 = *(v0 + 888);
    v141 = *(v0 + 560);
    v142 = *(v0 + 512);
    v143 = *(v0 + 488);
    OUTLINED_FUNCTION_25();
    sub_231E0FFF0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    i = *(v0 + 888);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_61;
    }

    goto LABEL_71;
  }

  v121 = *(v0 + 752);
  v122 = *(v0 + 744);
  v123 = *(v0 + 736);
  v124 = *(v0 + 696);
  v125 = *(v0 + 616);
  v126 = *(v0 + 456);

  v127 = OUTLINED_FUNCTION_57();
  v122(v127);

  v128 = v99;
  v129 = sub_231E10E10();
  LOBYTE(v125) = sub_231E11AD0();

  if (os_log_type_enabled(v129, v125))
  {
    v130 = *(v0 + 896);
    v205 = *(v0 + 696);
    v210 = *(v0 + 808);
    v131 = *(v0 + 616);
    v132 = *(v0 + 456);
    v201 = *(v0 + 624) + 8;
    OUTLINED_FUNCTION_16_0();
    v133 = swift_slowAlloc();
    OUTLINED_FUNCTION_53();
    v134 = OUTLINED_FUNCTION_28();
    v211[0] = v134;
    *v133 = 136446466;
    v135 = sub_231DE2398(v132);
    sub_231CB5000(v135, v136, v211);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_41();
    v137 = [v130 searchableMessageID];
    *(v133 + 14) = v137;
    *v122 = v137;
    OUTLINED_FUNCTION_68_0(&dword_231CAE000, v138, v139, "%{public}s Skipping message with unique id: %@. Missing unique id, this may lead to incorrect summaries due to key content missing.");
    sub_231CC154C(v122, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_14();
    __swift_destroy_boxed_opaque_existential_0(v134);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_30();

    v210(v205, v131);
  }

  else
  {
    v155 = *(v0 + 808);
    v156 = *(v0 + 696);
    OUTLINED_FUNCTION_71();
    v157 = OUTLINED_FUNCTION_22();
    v155(v157);
  }

  v22 = *(v0 + 896);
  v158 = *(v0 + 584);
  v159 = *(v0 + 544);
  v160 = (*(v0 + 552) + 8);
  if (*(v0 + 456))
  {
    sub_231DDABDC();
    swift_unknownObjectRelease();

    v161 = *v160;
    v162 = OUTLINED_FUNCTION_25();
    v163(v162);
  }

  else
  {
    v164 = *v160;
    v165 = OUTLINED_FUNCTION_25();
    v166(v165);
    swift_unknownObjectRelease();
  }

LABEL_15:
  for (i = *(v0 + 888); ; (*(v149 + 32))(i + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v145, v150, v151))
  {
    v37 = *(v0 + 904);
    if (v37 == *(v0 + 872))
    {
      v38 = *(v0 + 864);

      v39 = OUTLINED_FUNCTION_5();
      v40(v39);
      OUTLINED_FUNCTION_60();
      swift_bridgeObjectRetain_n();

      v41 = sub_231E10E10();
      sub_231E11AF0();
      OUTLINED_FUNCTION_49();

      OUTLINED_FUNCTION_39_0();
      v42 = *(v0 + 808);
      v43 = *(v0 + 680);
      OUTLINED_FUNCTION_61();
      if (v44)
      {
        v207 = v43;
        OUTLINED_FUNCTION_10_2();
        swift_slowAlloc();
        v211[0] = OUTLINED_FUNCTION_17_1();
        v45 = OUTLINED_FUNCTION_52(4.8752e-34);
        sub_231CB5000(v45, v46, v211);
        OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_26();
        v47 = *(i + 16);

        *(v42 + 14) = v47;

        OUTLINED_FUNCTION_3_2();
        _os_log_impl(v48, v49, v50, v51, v52, 0x16u);
        OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_11();

        (v42)(v207, v22);
      }

      else
      {
        OUTLINED_FUNCTION_60();
        swift_bridgeObjectRelease_n();

        (v42)(v43, v22);
      }

      OUTLINED_FUNCTION_27_0();
      *v22 = i;
      v111 = *MEMORY[0x277D42288];
      v112 = sub_231E10290();
      OUTLINED_FUNCTION_12(v112);
      v114 = *(v113 + 104);
      v115 = OUTLINED_FUNCTION_45();
      v116(v115);
      OUTLINED_FUNCTION_35_0();

      OUTLINED_FUNCTION_0_2();
      v183 = *(v0 + 632);
      v185 = *(v0 + 608);
      v187 = *(v0 + 584);
      v189 = *(v0 + 576);
      v191 = *(v0 + 568);
      v193 = *(v0 + 560);
      v194 = *(v0 + 536);
      v195 = *(v0 + 528);
      v197 = *(v0 + 520);
      v200 = *(v0 + 512);
      v204 = *(v0 + 488);
      v209 = *(v0 + 480);

      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_64();

      __asm { BRAA            X1, X16 }
    }

    *(v0 + 888) = i;
    v53 = *(v0 + 864);
    if ((v53 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x23837D2A0](v37);
    }

    else
    {
      if (v37 >= *(v53 + 16))
      {
        __break(1u);
        return;
      }

      v54 = *(v53 + 8 * v37 + 32);
    }

    i = v54;
    *(v0 + 896) = v54;
    *(v0 + 904) = v37 + 1;
    if (!__OFADD__(v37, 1))
    {
      break;
    }

LABEL_70:
    __break(1u);
LABEL_71:
    v167 = *(i + 16);
    OUTLINED_FUNCTION_20();
    i = sub_231CC0294(0, v168 + 1, 1, i, v169, v170, v171, v172);
LABEL_61:
    v145 = *(i + 16);
    if (v145 >= *(i + 24) >> 1)
    {
      OUTLINED_FUNCTION_20();
      i = sub_231CC0294(v173, v174, 1, i, v175, v176, v177, v178);
    }

    v146 = *(v0 + 896);
    v147 = *(v0 + 584);
    v148 = *(v0 + 552);
    v22 = *(v0 + 544);
    v149 = *(v0 + 504);
    v150 = *(v0 + 512);
    v151 = *(v0 + 496);
    swift_unknownObjectRelease();

    v152 = *(v148 + 8);
    v153 = OUTLINED_FUNCTION_33();
    v154(v153);
    *(i + 16) = v145 + 1;
  }

  v119 = swift_task_alloc();
  *(v0 + 912) = v119;
  *v119 = v0;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_64();

  sub_231CBAD1C();
}

void sub_231CBE8C0()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  v5 = *(v0 + 736);
  v6 = *(v0 + 648);
  v7 = *(v0 + 616);
  v8 = *(v0 + 456);
  swift_willThrow();

  v4(v6, v5, v7);

  v9 = v1;
  v10 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_70_0();

  if (OUTLINED_FUNCTION_39_0())
  {
    v11 = *(v0 + 792);
    v12 = *(v0 + 624);
    v60 = *(v0 + 616);
    v61 = *(v0 + 648);
    v13 = *(v0 + 456);
    OUTLINED_FUNCTION_16_0();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_53();
    v15 = OUTLINED_FUNCTION_28();
    *&v62[0] = v15;
    *v14 = 136446466;
    v16 = sub_231DE2398(v13);
    sub_231CB5000(v16, v17, v62);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_66();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v2 = v18;
    OUTLINED_FUNCTION_44_0();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    sub_231CC154C(v2, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_14();
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_30();

    (*(v12 + 8))(v61, v60);
  }

  else
  {
    v24 = *(v0 + 648);
    v25 = *(v0 + 624);
    v26 = *(v0 + 616);

    v27 = *(v25 + 8);
    v28 = OUTLINED_FUNCTION_25();
    v29(v28);
  }

  v30 = *(v0 + 456);
  v31 = *(v0 + 792);
  v32 = *(v0 + 776);
  if (v30)
  {
    sub_231DD8810(*(v0 + 792), 0xD000000000000022, 0x8000000231E2DD20, v62);

    v33 = (v30 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarizationError);
    v34 = OUTLINED_FUNCTION_51();
    v35 = *v33;
    v36 = v33[1];
    v37 = v33[3];
    *(v0 + 176) = v33[2];
    *(v0 + 192) = v37;
    *(v0 + 144) = v35;
    *(v0 + 160) = v36;
    OUTLINED_FUNCTION_9_0(v34, v38, v39, v40, v41, v42, v43, v44, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62[0], v62[1], v35, v62[2]);
    sub_231CC154C(v0 + 144, &unk_27DD73FC0, &qword_231E13478);
  }

  else
  {
  }

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_64();

  __asm { BRAA            X1, X16 }
}

void sub_231CBEBE4()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 640);
  v6 = *(v0 + 616);
  v7 = *(v0 + 456);

  v8 = OUTLINED_FUNCTION_40();
  v3(v8);

  v9 = v1;
  v10 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_70_0();

  if (OUTLINED_FUNCTION_39_0())
  {
    v11 = *(v0 + 840);
    v62 = *(v0 + 640);
    v63 = *(v0 + 808);
    v12 = *(v0 + 624);
    v61 = *(v0 + 616);
    v13 = *(v0 + 456);
    OUTLINED_FUNCTION_16_0();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_53();
    v15 = OUTLINED_FUNCTION_28();
    *&v64[0] = v15;
    *v14 = 136446466;
    v16 = sub_231DE2398(v13);
    sub_231CB5000(v16, v17, v64);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_66();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v3 = v18;
    OUTLINED_FUNCTION_44_0();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    sub_231CC154C(v3, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_14();
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_30();

    v63(v62, v61);
  }

  else
  {
    v24 = *(v0 + 808);
    v25 = *(v0 + 640);
    OUTLINED_FUNCTION_71();
    v26 = OUTLINED_FUNCTION_22();
    v24(v26);
  }

  v27 = *(v0 + 456);
  if (v27)
  {
    v28 = *(v0 + 840);
    v29 = v28;
    sub_231DD8810(v28, 0xD000000000000027, 0x8000000231E2DD50, v64);
    v30 = (v27 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarizationError);
    v31 = OUTLINED_FUNCTION_51();
    v32 = *v30;
    v33 = v30[1];
    v34 = v30[3];
    *(v0 + 240) = v30[2];
    *(v0 + 256) = v34;
    *(v0 + 208) = v32;
    *(v0 + 224) = v33;
    OUTLINED_FUNCTION_9_0(v31, v35, v36, v37, v38, v39, v40, v41, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64[0], v64[1], v32, v64[2]);
    sub_231CC154C(v0 + 208, &unk_27DD73FC0, &qword_231E13478);
  }

  v42 = *(v0 + 840);
  v43 = *(v0 + 800);
  v44 = *(v0 + 776);
  v45 = *(v0 + 608);
  OUTLINED_FUNCTION_43_0();
  (*(v46 + 104))(v45, *MEMORY[0x277D42260]);
  sub_231E10230();

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_65();

  __asm { BRAA            X1, X16 }
}

void sub_231CBEF3C()
{
  v89 = v0;
  v2 = v0[58].n128_u64[0];
  v3 = v0[56].n128_u64[0];
  OUTLINED_FUNCTION_7_1();
  v4 = v0[38].n128_i64[1];
  v5 = v0[28].n128_i64[1];
  v6(v0[39].n128_u64[1]);

  v7 = v3;
  v8 = v2;
  v9 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_49();

  if (OUTLINED_FUNCTION_39_0())
  {
    v10 = v0[58].n128_u64[0];
    v11 = v0[56].n128_u64[0];
    v85 = v0[39].n128_i64[1];
    v86 = v0[50].n128_u64[1];
    v12 = v0[28].n128_i64[1];
    v83 = v0[39].n128_u64[0] + 8;
    v84 = v0[38].n128_i64[1];
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_28();
    *&v88[0] = v14;
    *v13 = 136446722;
    v15 = sub_231DE2398(v12);
    v17 = sub_231CB5000(v15, v16, v88);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    v18 = [v11 searchableMessageID];
    *(v13 + 14) = v18;
    *v1 = v18;
    *(v13 + 22) = 2112;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v20;
    v1[1] = v20;
    OUTLINED_FUNCTION_44_0();
    _os_log_impl(v21, v22, v23, v24, v25, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74D30, &unk_231E13480);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14();
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_30();

    v86(v85, v84);
  }

  else
  {
    v13 = v0[50].n128_i64[1];
    v26 = v0[39].n128_i64[1];
    OUTLINED_FUNCTION_71();
    v27 = OUTLINED_FUNCTION_22();
    (v13)(v27);
  }

  v28 = v0[28].n128_i64[1];
  v29 = v0[58].n128_u64[0];
  v30 = v0[56].n128_u64[0];
  if (v28)
  {
    sub_231DD8810(v29, 0xD000000000000027, 0x8000000231E2DD50, v88);

    v31 = (v28 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarizationError);
    v32 = OUTLINED_FUNCTION_51();
    v33 = *v31;
    v34 = v31[1];
    v35 = v31[3];
    v0[19] = v31[2];
    v0[20] = v35;
    v0[17] = v33;
    v0[18] = v34;
    OUTLINED_FUNCTION_9_0(v32, v36, v37, v38, v39, v40, v41, v42, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v88[0], v88[1], v33, v88[2]);
    sub_231CC154C(&v0[17], &unk_27DD73FC0, &qword_231E13478);
  }

  else
  {
  }

  v43 = v0[56].n128_u64[1];
  v44 = v0[54].n128_i64[0];
  if (v43 == v0[54].n128_u64[1])
  {
    v45 = v0[55].n128_i64[1];
    v46 = v0[54].n128_i64[0];

    v47 = OUTLINED_FUNCTION_5();
    v48(v47);
    OUTLINED_FUNCTION_60();
    swift_bridgeObjectRetain_n();

    v49 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_49();

    OUTLINED_FUNCTION_39_0();
    v50 = v0[50].n128_i64[1];
    v51 = v0[42].n128_i64[1];
    OUTLINED_FUNCTION_61();
    if (v52)
    {
      v87 = v51;
      OUTLINED_FUNCTION_10_2();
      swift_slowAlloc();
      *&v88[0] = OUTLINED_FUNCTION_17_1();
      v53 = OUTLINED_FUNCTION_52(4.8752e-34);
      sub_231CB5000(v53, v54, v88);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_26();
      v55 = *(v45 + 16);

      *(v50 + 14) = v55;

      OUTLINED_FUNCTION_3_2();
      _os_log_impl(v56, v57, v58, v59, v60, 0x16u);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_11();

      (v50)(v87, v13);
    }

    else
    {
      OUTLINED_FUNCTION_60();
      swift_bridgeObjectRelease_n();

      (v50)(v51, v13);
    }

    OUTLINED_FUNCTION_27_0();
    *v13 = v45;
    v62 = *MEMORY[0x277D42288];
    v63 = sub_231E10290();
    OUTLINED_FUNCTION_12(v63);
    v65 = *(v64 + 104);
    v66 = OUTLINED_FUNCTION_45();
    v67(v66);
    OUTLINED_FUNCTION_35_0();

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1_1();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_65();

    __asm { BRAA            X1, X16 }
  }

  if ((v44 & 0xC000000000000001) != 0)
  {
    v61 = MEMORY[0x23837D2A0](v0[56].n128_u64[1]);
  }

  else
  {
    if (v43 >= *(v44 + 16))
    {
LABEL_23:
      __break(1u);
      return;
    }

    v61 = *(v44 + 8 * v43 + 32);
  }

  v0[56].n128_u64[0] = v61;
  v0[56].n128_u64[1] = v43 + 1;
  if (__OFADD__(v43, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v70 = swift_task_alloc();
  v0[57].n128_u64[0] = v70;
  *v70 = v0;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_65();

  sub_231CBAD1C();
}

uint64_t sub_231CBF4B0(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v27 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v27;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v27 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_231E11DF0();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v25 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v7 = sub_231CC094C(result, a2, 10);
  v25 = v26;
LABEL_63:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

id sub_231CBF7A8()
{
  sub_231CC1784(0, &qword_2814CAF48, 0x277CCAC30);
  v0 = sub_231E11850();

  v1 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates_];

  return v1;
}

uint64_t sub_231CBF82C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_231CBF8D4(v4, v5);
  }

  else
  {
    sub_231CC1784(0, &qword_2814CAE98, 0x277D06DB8);
    v7 = sub_231E11870();

    return sub_231CBF940(v4, v7);
  }
}

uint64_t sub_231CBF8D4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_231CBF960(unint64_t a1)
{
  result = sub_231CBA138(a1);
  v16 = result;
  v3 = 0;
  while (1)
  {
    if (v16 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x23837D2A0](v3, a1);
      goto LABEL_6;
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v4 = *(a1 + 8 * v3 + 32);
LABEL_6:
    v5 = v4;
    v6 = [v4 searchableMessageID];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 stringValue];

      v9 = sub_231E11620();
      v7 = v10;
    }

    else
    {
      v9 = 0;
    }

    v11 = sub_231E10000();
    if (v7)
    {
      if (v9 == v11 && v7 == v12)
      {

        return v3;
      }

      v14 = sub_231E12100();

      if (v14)
      {
        return v3;
      }
    }

    else
    {
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_231CBFB1C()
{
  sub_231CBFAF4();

  return swift_deallocClassInstance();
}

uint64_t sub_231CBFB50()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 144);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_23(v4);

  return v7(v6);
}

uint64_t sub_231CBFC58()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 152);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_23(v4);

  return v7(v6);
}

uint64_t sub_231CBFD60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_59_0();

  return v6(v5);
}

uint64_t sub_231CBFE4C()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 160);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_32(v4);
  v6 = OUTLINED_FUNCTION_57();

  return v8(v6);
}

uint64_t sub_231CBFF60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_231CC0040(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_231CC1714;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_231CC015C;
  v9[3] = &block_descriptor_20;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithBuilder_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_231CC015C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id sub_231CC01B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_231CC1784(0, &qword_2814CAF20, 0x277CCAC98);
  v11 = sub_231E11850();

  if (a6)
  {
    v12 = sub_231E115F0();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 initWithTargetClass:swift_getObjCClassFromMetadata() predicate:a2 sortDescriptors:v11 queryOptions:a4 label:v12];

  return v13;
}

size_t sub_231CC0294(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_231CC03A4(v14, v13, a5, a6, a7);
  v16 = *(a8(0) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_231CC0498(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

size_t sub_231CC03A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  v8 = a5(0);
  OUTLINED_FUNCTION_6(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
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

uint64_t sub_231CC0498(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_12(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_58();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_58();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_231CC0558(uint64_t a1, unint64_t a2)
{
  v4 = sub_231CC05A4(a1, a2);
  sub_231CC06BC(&unk_2846F0440);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_231CC05A4(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_231E11730())
  {
    result = sub_231CC07A0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_231E11D60();
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
          result = sub_231E11DF0();
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

uint64_t sub_231CC06BC(uint64_t result)
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

    result = sub_231CC0810(result, v8, 1, v3);
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

void *sub_231CC07A0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD740B0, &qword_231E13880);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_231CC0810(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD740B0, &qword_231E13880);
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

unsigned __int8 *sub_231CC094C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_231E117B0();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_231CC0FFC();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_231E11DF0();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
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

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_231CC0ED4(unint64_t result, char a2, uint64_t a3)
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

void sub_231CC0F10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_231CC1784(0, &qword_2814CAE98, 0x277D06DB8);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_231CC0FFC()
{
  v0 = sub_231CC1068();
  v4 = sub_231CC109C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_231CC109C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_231E116C0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_231E11C00();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_231CC07A0(v9, 0);
  v12 = sub_231CC11FC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_231E116C0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_231E11DF0();
LABEL_4:

  return sub_231E116C0();
}

unint64_t sub_231CC11FC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_231CC140C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_231E11760();
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
          result = sub_231E11DF0();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_231CC140C(v12, a6, a7);
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

    result = sub_231E11740();
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

uint64_t sub_231CC140C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_231E11770();
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
    v5 = MEMORY[0x23837CC50](15, a1 >> 16);
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

uint64_t sub_231CC1488(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_231E11620();

  return v4;
}

uint64_t sub_231CC14F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_231E11ED0();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_231CC154C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_12(v4);
  (*(v5 + 8))(a1);
  return a1;
}

id sub_231CC15C8(void *a1)
{
  [a1 setRequestedRepresentation_];

  return [a1 setNetworkUsage_];
}

uint64_t sub_231CC1620()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74038, qword_231E13528);
  OUTLINED_FUNCTION_47(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);
  v5 = OUTLINED_FUNCTION_57();

  return sub_231CBA994(v5, v6, v7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_231CB51C4(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_13(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

unint64_t sub_231CC16C0()
{
  result = qword_27DD75AC0[0];
  if (!qword_27DD75AC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD75AC0);
  }

  return result;
}

uint64_t sub_231CC1714()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_231CC1784(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for EmailFrameworkMailFetcher.MailContentError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EmailFrameworkMailFetcher.MailContentError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231CC1948()
{
  result = qword_27DD75B50[0];
  if (!qword_27DD75B50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD75B50);
  }

  return result;
}

void OUTLINED_FUNCTION_1_1()
{
  v3 = v0[79];
  v4 = v0[76];
  v5 = v0[73];
  v6 = v0[72];
  v7 = v0[71];
  v8 = v0[70];
  v9 = v0[67];
  v10 = v0[66];
  v11 = v0[65];
  v12 = v0[64];
  v1 = v0[60];
  v2 = v0[61];
}

void OUTLINED_FUNCTION_7_1()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
}

uint64_t OUTLINED_FUNCTION_13_1()
{
  v4 = v0[79];
  v5 = v0[76];
  v6 = v0[73];
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[70];
  v10 = v0[67];
  v11 = v0[66];
  v12 = v0[65];
  v13 = v0[64];
  v14 = v0[61];
  *(v1 - 88) = v0[60];
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_27_0()
{
  v1 = v0[108];
  v2 = v0[97];
  v3 = v0[60];
  v4 = v0[56];
}

uint64_t OUTLINED_FUNCTION_35_0()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_231E10090();
}

uint64_t OUTLINED_FUNCTION_36()
{
  v2 = *(*(v0 - 80) + 16);

  return sub_231E11E40();
}

BOOL OUTLINED_FUNCTION_39_0()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_43_0()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[56];
}

uint64_t OUTLINED_FUNCTION_51()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_52(float a1)
{
  *v1 = a1;

  return sub_231DE2398(v2);
}

uint64_t OUTLINED_FUNCTION_53()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_54()
{
}

uint64_t OUTLINED_FUNCTION_56()
{
}

id OUTLINED_FUNCTION_66()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2112;

  return v2;
}

uint64_t OUTLINED_FUNCTION_67_0()
{
  *(v2 - 88) = v0;
  v4 = *(v1 + 456);

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_68_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_70_0()
{
}

void OUTLINED_FUNCTION_71()
{
  v3 = *(v1 + 624);
  v4 = *(v1 + 616);
}

uint64_t sub_231CC1D30(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v4 = sub_231E106A0();
  v3[8] = v4;
  OUTLINED_FUNCTION_6(v4);
  v3[9] = v5;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v8 = sub_231E10E30();
  v3[17] = v8;
  OUTLINED_FUNCTION_6(v8);
  v3[18] = v9;
  v11 = *(v10 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v12 = sub_231E0F950();
  v3[26] = v12;
  OUTLINED_FUNCTION_6(v12);
  v3[27] = v13;
  v15 = *(v14 + 64) + 15;
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231CC1F20, 0, 0);
}

uint64_t sub_231CC1F20()
{
  v2 = v0;
  v3 = v0[7];
  sub_231E10670();
  OUTLINED_FUNCTION_8_1();
  if (!v5 && (v4 & 1) != 0)
  {
    v7 = v0[18];
    v6 = v2[19];
    v8 = v2[17];
    v10 = v2[9];
    v9 = v2[10];
    v1 = v2[7];
    v11 = v2[8];
    sub_231DC4AB8();
    v12 = OUTLINED_FUNCTION_2_0();
    v13(v12);
    v14 = OUTLINED_FUNCTION_1_2();
    v15(v14);
    v16 = sub_231E10E10();
    v17 = sub_231E11AF0();
    v18 = OUTLINED_FUNCTION_5_0(v17);
    v20 = v2[18];
    v19 = v2[19];
    v21 = v2[17];
    v23 = v2[9];
    v22 = v2[10];
    v24 = v2[8];
    if (v18)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_6_2();
      *v21 = 136446210;
      sub_231E10690();
      v25 = OUTLINED_FUNCTION_0_3();
      v27 = v26(v25);
      OUTLINED_FUNCTION_4_0(v27, v28, v29, v30, v31, v32);
      OUTLINED_FUNCTION_10_1();
      *(v21 + 4) = v22;
      v33 = "Message not eligible for Smart Replies (outgoing message); id: %{public}s";
LABEL_27:
      _os_log_impl(&dword_231CAE000, v16, v1, v33, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      v158 = v2;
      v2 = v186;
      MEMORY[0x23837E1D0](v158, -1, -1);
      MEMORY[0x23837E1D0](v21, -1, -1);

      (*(v20 + 8))();
LABEL_29:
      v159 = v2[28];
      v160 = v2[24];
      v161 = v2[25];
      v163 = v2[22];
      v162 = v2[23];
      v165 = v2[20];
      v164 = v2[21];
      v166 = v2[19];
      v167 = v2;
      v168 = v2[16];
      v169 = v167[15];
      v182 = v167[14];
      v183 = v167[13];
      v184 = v167[12];
      v185 = v167[11];
      v187 = v167[10];

      v170 = v167[1];

      return v170(0);
    }

    goto LABEL_28;
  }

  v34 = v0[7];
  sub_231E10610();
  OUTLINED_FUNCTION_8_1();
  if (!v5 && (v35 & 1) != 0)
  {
    v36 = v0[20];
    v37 = v0[17];
    v38 = v0[18];
    v39 = v2[11];
    OUTLINED_FUNCTION_11_0();
    v40 = OUTLINED_FUNCTION_2_0();
    v41(v40);
    v42 = OUTLINED_FUNCTION_1_2();
    v43(v42);
    v16 = sub_231E10E10();
    v44 = sub_231E11AF0();
    v45 = OUTLINED_FUNCTION_5_0(v44);
    v19 = v2[20];
    v21 = v2[17];
    v20 = v2[18];
    v22 = v2[11];
    v24 = v2[8];
    v23 = v2[9];
    if (v45)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_6_2();
      *v21 = 136446210;
      sub_231E10690();
      v46 = OUTLINED_FUNCTION_0_3();
      v48 = v47(v46);
      OUTLINED_FUNCTION_4_0(v48, v49, v50, v51, v52, v53);
      OUTLINED_FUNCTION_10_1();
      *(v21 + 4) = v22;
      v33 = "Message not eligible for Smart Replies (junk); id: %{public}s";
      goto LABEL_27;
    }

LABEL_28:

    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
    goto LABEL_29;
  }

  v54 = v0[7];
  sub_231E10550();
  OUTLINED_FUNCTION_8_1();
  if (!v5 && (v55 & 1) != 0)
  {
    v56 = v0[21];
    v57 = v0[17];
    v58 = v0[18];
    v59 = v2[12];
    OUTLINED_FUNCTION_11_0();
    v60 = OUTLINED_FUNCTION_2_0();
    v61(v60);
    v62 = OUTLINED_FUNCTION_1_2();
    v63(v62);
    v16 = sub_231E10E10();
    v64 = sub_231E11AF0();
    v65 = OUTLINED_FUNCTION_5_0(v64);
    v19 = v2[21];
    v21 = v2[17];
    v20 = v2[18];
    v22 = v2[12];
    v24 = v2[8];
    v23 = v2[9];
    if (v65)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_6_2();
      *v21 = 136446210;
      sub_231E10690();
      v66 = OUTLINED_FUNCTION_0_3();
      v68 = v67(v66);
      OUTLINED_FUNCTION_4_0(v68, v69, v70, v71, v72, v73);
      OUTLINED_FUNCTION_10_1();
      *(v21 + 4) = v22;
      v33 = "Message not eligible for Smart Replies (two factor code); id: %{public}s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v74 = v0[7];
  sub_231E10620();
  OUTLINED_FUNCTION_8_1();
  if (!v5 && (v75 & 1) != 0)
  {
    v76 = v0[22];
    v77 = v0[17];
    v78 = v0[18];
    v79 = v2[13];
    OUTLINED_FUNCTION_11_0();
    v80 = OUTLINED_FUNCTION_2_0();
    v81(v80);
    v82 = OUTLINED_FUNCTION_1_2();
    v83(v82);
    v16 = sub_231E10E10();
    v84 = sub_231E11AF0();
    v85 = OUTLINED_FUNCTION_5_0(v84);
    v19 = v2[22];
    v21 = v2[17];
    v20 = v2[18];
    v22 = v2[13];
    v24 = v2[8];
    v23 = v2[9];
    if (v85)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_6_2();
      *v21 = 136446210;
      sub_231E10690();
      v86 = OUTLINED_FUNCTION_0_3();
      v88 = v87(v86);
      OUTLINED_FUNCTION_4_0(v88, v89, v90, v91, v92, v93);
      OUTLINED_FUNCTION_10_1();
      *(v21 + 4) = v22;
      v33 = "Message not eligible for Smart Replies (already read); id: %{public}s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v94 = v0[7];
  sub_231E105D0();
  OUTLINED_FUNCTION_8_1();
  if (!v5 && (v95 & 1) == 0)
  {
    v140 = v0[23];
    v141 = v0[17];
    v142 = v0[18];
    v143 = v2[14];
    OUTLINED_FUNCTION_11_0();
    v144 = OUTLINED_FUNCTION_2_0();
    v145(v144);
    v146 = OUTLINED_FUNCTION_1_2();
    v147(v146);
    v16 = sub_231E10E10();
    v148 = sub_231E11AF0();
    v149 = OUTLINED_FUNCTION_5_0(v148);
    v19 = v2[23];
    v21 = v2[17];
    v20 = v2[18];
    v22 = v2[14];
    v24 = v2[8];
    v23 = v2[9];
    if (v149)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_6_2();
      *v21 = 136446210;
      sub_231E10690();
      v150 = OUTLINED_FUNCTION_0_3();
      v152 = v151(v150);
      OUTLINED_FUNCTION_4_0(v152, v153, v154, v155, v156, v157);
      OUTLINED_FUNCTION_10_1();
      *(v21 + 4) = v22;
      v33 = "Message not eligible for Smart Replies (not from known sender); id: %{public}s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v97 = v0[27];
  v96 = v2[28];
  v98 = v2[26];
  v99 = v2[7];
  sub_231E105C0();
  sub_231E0F870();
  v101 = v100;
  v102 = *(v97 + 8);
  v2[29] = v102;
  v2[30] = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v102(v96, v98);
  sub_231E0F880();
  if (v103 - sub_231D11D54() > v101)
  {
    v104 = v2[24];
    v105 = v2[17];
    v106 = v2[18];
    v107 = v2[15];
    OUTLINED_FUNCTION_11_0();
    v108 = OUTLINED_FUNCTION_2_0();
    v109(v108);
    v110 = OUTLINED_FUNCTION_1_2();
    v111(v110);
    v16 = sub_231E10E10();
    v112 = sub_231E11AF0();
    v113 = OUTLINED_FUNCTION_5_0(v112);
    v19 = v2[24];
    v21 = v2[17];
    v20 = v2[18];
    v22 = v2[15];
    v24 = v2[8];
    v23 = v2[9];
    if (v113)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_6_2();
      *v21 = 136446210;
      sub_231E10690();
      v114 = OUTLINED_FUNCTION_0_3();
      v116 = v115(v114);
      OUTLINED_FUNCTION_4_0(v116, v117, v118, v119, v120, v121);
      OUTLINED_FUNCTION_10_1();
      *(v21 + 4) = v22;
      v33 = "Message not eligible for Smart Replies (too old); id: %{public}s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (sub_231DBD14C())
  {
    v122 = v2[25];
    v123 = v2[17];
    v124 = v2[18];
    v125 = v2[16];
    OUTLINED_FUNCTION_11_0();
    v126 = OUTLINED_FUNCTION_2_0();
    v127(v126);
    v128 = OUTLINED_FUNCTION_1_2();
    v129(v128);
    v16 = sub_231E10E10();
    v130 = sub_231E11AF0();
    v131 = OUTLINED_FUNCTION_5_0(v130);
    v19 = v2[25];
    v21 = v2[17];
    v20 = v2[18];
    v22 = v2[16];
    v24 = v2[8];
    v23 = v2[9];
    if (v131)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_6_2();
      *v21 = 136446210;
      sub_231E10690();
      v132 = OUTLINED_FUNCTION_0_3();
      v134 = v133(v132);
      OUTLINED_FUNCTION_4_0(v134, v135, v136, v137, v138, v139);
      OUTLINED_FUNCTION_10_1();
      *(v21 + 4) = v22;
      v33 = "Message not eligible for Smart Replies (in a CarPlay session); id: %{public}s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v172 = v2[28];
  v173 = v2[6];
  v174 = sub_231DE8A04(0);
  v176 = v175;
  v2[31] = v175;
  sub_231DB0818();
  v177 = *(*v173 + 136);
  v188 = (v177 + *v177);
  v178 = v177[1];
  v179 = swift_task_alloc();
  v2[32] = v179;
  *v179 = v2;
  v179[1] = sub_231CC2730;
  v180 = v2[28];
  v181 = v2[6];

  return (v188)(v174, v176, v180, 0);
}

uint64_t sub_231CC2730(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 40) = a3;
  v5[3] = a1;
  v5[4] = a2;
  v5[2] = v3;
  v6 = v4[32];
  v7 = v4[31];
  v8 = v4[30];
  v9 = v4[29];
  v10 = v4[28];
  v11 = v4[26];
  v13 = *v3;
  *(v5 + 264) = a3;

  v9(v10, v11);

  return MEMORY[0x2822009F8](sub_231CC28C4, 0, 0);
}

uint64_t sub_231CC28C4()
{
  v1 = *(v0 + 264);
  if (v1 != 255)
  {
    sub_231CBA16C(*(v0 + 24), *(v0 + 32), *(v0 + 264));
  }

  v2 = *(v0 + 224);
  v19 = v1 == 255;
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v14 = *(v0 + 112);
  v15 = *(v0 + 104);
  v16 = *(v0 + 96);
  v17 = *(v0 + 88);
  v18 = *(v0 + 80);

  v12 = *(v0 + 8);

  return v12(v19);
}

uint64_t sub_231CC2A08(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_231CC2A9C;

  return sub_231CC1D30(v4, a2);
}

uint64_t sub_231CC2A9C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_231CC2B98(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xCu && ((1 << a3) & 0x1480) != 0)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return swift_slowAlloc();
}

void sub_231CC2C10(void *a1)
{
  v2 = sub_231E10E30();
  v31 = *(v2 - 8);
  v3 = v31[8];
  v4 = MEMORY[0x28223BE20](v2);
  v30 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_231E13660;
  v7 = *MEMORY[0x277CBD018];
  v8 = *MEMORY[0x277CBD098];
  *(v6 + 32) = *MEMORY[0x277CBD018];
  *(v6 + 40) = v8;
  v9 = *MEMORY[0x277CBCFC0];
  *(v6 + 48) = *MEMORY[0x277CBCFC0];
  v10 = objc_opt_self();
  v11 = v7;
  v8;
  v29[3] = v9;
  *(v6 + 56) = [v10 descriptorForRequiredKeysForStyle_];
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v12);
  v31 = (*(v13 + 8))(v6, v12, v13);

  v14 = [v10 stringFromContact:v31 style:0];
  if (v14)
  {
    v15 = v14;
    v30 = sub_231E11620();
  }

  else
  {
    v30 = 0;
  }

  v16 = [v31 emailAddresses];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74180, &qword_231E13678);
  v18 = sub_231E11870();

  if (sub_231CBA138(v18))
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x23837D2A0](0, v18);
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_24:
        v23 = MEMORY[0x23837D2A0](0, v17);
        goto LABEL_16;
      }

      v19 = *(v18 + 32);
    }

    v20 = v19;

    v21 = [v20 value];

    if (v21)
    {
      v32 = 0;
      v33 = 0;
      sub_231E11610();

      if (v33)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
  }

  v22 = [v31 phoneNumbers];
  v17 = sub_231E11870();

  if (!sub_231CBA138(v17))
  {

    goto LABEL_19;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v23 = *(v17 + 32);
LABEL_16:
  v24 = v23;

  v25 = [v24 value];

  sub_231CC3474(v25);
  if (v26)
  {
LABEL_17:
    sub_231E11620();
  }

LABEL_19:
  v27 = [v31 identifier];
  sub_231E11620();

  sub_231E103D0();
  v28 = v31;
}

uint64_t sub_231CC33AC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_231E11620();

  return v4;
}

uint64_t sub_231CC340C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74D30, &unk_231E13480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231CC3474(void *a1)
{
  v2 = [a1 unformattedInternationalStringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231E11620();

  return v3;
}

uint64_t sub_231CC34E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    return a1;
  }

  if (!(a3 >> 6))
  {
    return sub_231CC3500(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_231CC3500(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xCu && ((1 << a3) & 0x1480) != 0)
  {
  }

  return result;
}

uint64_t sub_231CC352C()
{
  v1 = *(v0 + 16);
  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      return 0x7475626972747461;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v4 = *v0;
    v3 = *(v0 + 8);
    sub_231E11D70();

    sub_231CFFD6C(v4, v3, v1);
    MEMORY[0x23837CC20]();

    return 0xD000000000000014;
  }
}

uint64_t sub_231CC3610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  v4 = a4 + *(_s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa() + 20);
  return sub_231E0F920();
}

uint64_t sub_231CC364C(uint64_t a1, double a2, double a3)
{
  v6 = swift_allocObject();
  sub_231CC36A4(a1, a2, a3);
  return v6;
}

uint64_t sub_231CC36A4(uint64_t a1, double a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  v8 = OUTLINED_FUNCTION_47(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  *(v3 + 40) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v3 + 48) = 0;
  *(v3 + 56) = v13;
  *(v3 + 64) = v13;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = a2;
  v14 = sub_231E119F0();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a2;
  *(v16 + 40) = v15;
  *(v16 + 48) = a3;
  sub_231CC3BE0(0, 0, v12, &unk_231E136A0, v16);

  return v3;
}

uint64_t sub_231CC37D8()
{
  OUTLINED_FUNCTION_18();
  v0[7] = v1;
  v0[6] = v2;
  v0[5] = v3;
  v4 = sub_231E10E30();
  v0[8] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[9] = v5;
  v7 = *(v6 + 64) + 15;
  v0[10] = swift_task_alloc();
  v8 = sub_231E11E70();
  v0[11] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[12] = v9;
  v11 = *(v10 + 64) + 15;
  v0[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231CC38E8, 0, 0);
}

uint64_t sub_231CC38E8()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[6];
  swift_beginAccess();
  v2 = v0[13];
  v3 = v0[5];
  sub_231E12280();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_10_3(&dword_231E1D770);
  v10 = v4;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_4(v6);

  return v10(v8);
}

void sub_231CC398C()
{
  v1 = *(v0 + 6);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[7];
    os_unfair_lock_lock(Strong + 10);
    sub_231CB24A0((v3 + 48), v3, v4);
    os_unfair_lock_unlock((v3 + 40));

    v5 = *(v0 + 13);
    v6 = *(v0 + 5);
    sub_231E12280();
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_10_3(&dword_231E1D770);
    v7 = swift_task_alloc();
    v8 = OUTLINED_FUNCTION_20_0(v7);
    *v8 = v9;
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_17_2();

    __asm { BR              X5 }
  }

  v13 = *(v0 + 9);
  v12 = *(v0 + 10);
  v14 = *(v0 + 8);
  sub_231CB4EEC();
  v15 = OUTLINED_FUNCTION_23_0();
  v16(v15);
  v17 = sub_231E10E10();
  v18 = sub_231E11AF0();
  if (os_log_type_enabled(v17, v18))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_25_0(&dword_231CAE000, v19, v20, "InMemoryMailResultCache: Cache gone, stopping pruning task");
    OUTLINED_FUNCTION_30();
  }

  v21 = *(v0 + 13);
  v23 = *(v0 + 9);
  v22 = *(v0 + 10);
  v24 = *(v0 + 8);

  (*(v23 + 8))(v22, v24);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_231CC3B38()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_231CBFF60;

  return sub_231CC37D8();
}

uint64_t sub_231CC3BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_231CC6A58(a3, v26 - v11, &qword_27DD75180, &qword_231E13690);
  v13 = sub_231E119F0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_231CC154C(v12, &qword_27DD75180, &qword_231E13690);
  }

  else
  {
    sub_231E119E0();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_231E11920();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_231E116A0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_231CC154C(a3, &qword_27DD75180, &qword_231E13690);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_231CC154C(a3, &qword_27DD75180, &qword_231E13690);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_231CC3EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((v3 + 40));
  sub_231CC3F28(v3 + 48, a2, a3, a1, v3);

  os_unfair_lock_unlock((v3 + 40));
}

uint64_t sub_231CC3F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_231E10E30();
  v50 = OUTLINED_FUNCTION_24(v10);
  v51 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_4_1();
  v16 = v15 - v14;
  v17 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa();
  v18 = OUTLINED_FUNCTION_12(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v49 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74198, &qword_231E13878);
  v28 = OUTLINED_FUNCTION_47(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v49 - v31;
  sub_231CB4858(a4, &v49 - v31);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v17);

  sub_231CC42B0(v32, a2, a3);
  v33 = *(*(a1 + 16) + 16);
  if (a5[2] < v33)
  {
    sub_231CC46A8(v26);

    sub_231CB4E90(v26);
    v33 = *(*(a1 + 16) + 16);
  }

  v34 = sub_231CB4EEC();
  v35 = v50;
  v36 = v51;
  (*(v51 + 16))(v16, v34, v50);
  sub_231CB4858(a4, v23);

  v37 = sub_231E10E10();
  v38 = sub_231E11AF0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v39 = 136446722;
    v40 = (*(*a5 + 120))();
    v41 = v35;
    v43 = sub_231CB5000(v40, v42, &v52);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2048;
    *(v39 + 14) = v33;
    *(v39 + 22) = 2082;
    v44 = sub_231CC352C();
    v46 = v45;
    sub_231CB4E90(v23);
    v47 = sub_231CB5000(v44, v46, &v52);

    *(v39 + 24) = v47;
    _os_log_impl(&dword_231CAE000, v37, v38, "InMemoryMailResultCache %{public}s: Adding item, count: %ld item: %{public}s)", v39, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    return (*(v51 + 8))(v16, v41);
  }

  else
  {

    sub_231CB4E90(v23);
    return (*(v36 + 8))(v16, v35);
  }
}

uint64_t sub_231CC42B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v42 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  MEMORY[0x28223BE20](v13);
  v43 = &v42 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741A8, &qword_231E13898);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v23 = *v3;
  v22 = v3[1];
  v42 = a2;
  v52[0] = a2;
  v52[1] = a3;
  v49 = v23;
  v50 = v22;
  v51 = v52;
  v24 = sub_231CC5DC8(sub_231CC6BE0, v48, v22);
  v26 = v25;
  v28 = v27;
  v29 = *(v18 + 56);
  v47 = a1;
  sub_231CC6A58(a1, &v21[v29], &qword_27DD74198, &qword_231E13878);
  if (v26)
  {
    if (__swift_getEnumTagSinglePayload(&v21[v29], 1, v7) == 1)
    {
      sub_231CC154C(v47, &qword_27DD74198, &qword_231E13878);
    }

    else
    {
      v31 = v44;
      sub_231CB4E2C(&v21[v29], v44);
      sub_231CC5F44(v42, a3, v28);

      v32 = v45;
      sub_231CB4858(v31, v45);
      v35 = v3[2];
      v34 = v3 + 2;
      v33 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v34 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_231CC684C(0, *(v33 + 16) + 1, 1);
        v33 = *v34;
      }

      v38 = *(v33 + 16);
      v37 = *(v33 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_231CC684C(v37 > 1, v38 + 1, 1);
      }

      sub_231CC154C(v47, &qword_27DD74198, &qword_231E13878);
      sub_231CB4E90(v31);
      v39 = *v34;
      *(v39 + 16) = v38 + 1;
      result = sub_231CB4E2C(v32, v39 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v38);
      *v34 = v39;
    }
  }

  else
  {

    if (__swift_getEnumTagSinglePayload(&v21[v29], 1, v7) == 1)
    {
      sub_231CC60A8(v24, v28);

      sub_231CC6258(v24, v15);
      sub_231CC154C(v47, &qword_27DD74198, &qword_231E13878);
      return sub_231CB4E90(v15);
    }

    v40 = v43;
    sub_231CB4E2C(&v21[v29], v43);
    v41 = v3[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_231CC63CC(v41);
    }

    result = sub_231CC154C(v47, &qword_27DD74198, &qword_231E13878);
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *(v41 + 16))
    {
      result = sub_231CC69F4(v40, v41 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v24);
      v3[2] = v41;
      return result;
    }

    __break(1u);
  }

  return result;
}