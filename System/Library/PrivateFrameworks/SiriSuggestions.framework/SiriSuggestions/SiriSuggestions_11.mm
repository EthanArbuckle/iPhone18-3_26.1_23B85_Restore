void sub_2312B1688()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = v2[47];
  v9 = *v1;
  v3[48] = v5;

  if (v0)
  {
  }

  else
  {
    v6 = v3[46];
    v7 = v3[33];
    v8 = v3[24];
    sub_2312777C0(v7, &qword_27DD44560, &qword_231374670);

    MEMORY[0x2822009F8](sub_2312B17D8, 0, 0);
  }
}

uint64_t sub_2312B17D8()
{
  v47 = v0;
  v1 = v0[48];
  v2 = v0[42];
  sub_231369170();
  sub_231369EE0();
  v3 = sub_2313698A0();
  v4 = sub_23136A3A0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[48];
    v6 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    buf = v6;
    v45 = v42;
    *v6 = 136315138;
    v7 = *(v5 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v41 = v4;
      v9 = v0[48];
      v46 = MEMORY[0x277D84F90];
      sub_2311F4E34();
      v8 = v46;
      v10 = v9 + 32;
      do
      {
        sub_2311CF324(v10, (v0 + 13));
        v11 = v0[17];
        __swift_project_boxed_opaque_existential_1(v0 + 13, v0[16]);
        v12 = sub_231368320();
        v14 = v13;
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
        v46 = v8;
        v15 = *(v8 + 16);
        if (v15 >= *(v8 + 24) >> 1)
        {
          sub_2311F4E34();
          v8 = v46;
        }

        *(v8 + 16) = v15 + 1;
        v16 = v8 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v14;
        v10 += 40;
        --v7;
      }

      while (v7);
      v4 = v41;
    }

    v22 = v0[44];
    v21 = v0[45];
    v23 = v0[42];
    v24 = v0[39];
    v25 = MEMORY[0x23192A860](v8, MEMORY[0x277D837D0]);
    v27 = v26;

    v28 = sub_2311CFD58(v25, v27, &v45);

    *(buf + 4) = v28;
    _os_log_impl(&dword_2311CB000, v3, v4, "EducationalChannelGenerator generated: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v22(v23, v24);
  }

  else
  {
    v18 = v0[44];
    v17 = v0[45];
    v19 = v0[42];
    v20 = v0[39];

    v18(v19, v20);
  }

  bufa = v0[48];
  v30 = v0[42];
  v29 = v0[43];
  v31 = v0[41];
  v33 = v0[37];
  v32 = v0[38];
  v34 = v0[36];
  v36 = v0[32];
  v35 = v0[33];
  v37 = v0[29];
  v38 = v0[26];

  OUTLINED_FUNCTION_14();

  return v39(bufa);
}

uint64_t sub_2312B1AC0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = v2[50];
  v6 = v2[49];
  v28 = v2[32];
  v7 = v2[31];
  v27 = v2[30];
  v8 = v2[29];
  v9 = v2[28];
  v10 = v2[27];
  v11 = v2[26];
  v12 = *v1;
  OUTLINED_FUNCTION_2();
  *v13 = v12;

  sub_2312777C0(v11, &qword_27DD42F18, &unk_23136B810);
  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v28, v27);
  v14 = MEMORY[0x277D84F90];
  if (a1)
  {
    v14 = a1;
  }

  v30 = v14;
  v15 = v2[43];
  v16 = v2[42];
  v17 = v2[41];
  v18 = v2[38];
  v19 = v2[37];
  v20 = v2[36];
  v21 = v2[33];
  v22 = v3[32];
  v23 = v3[29];
  v24 = v3[26];

  v25 = v12[1];

  return v25(v30);
}

uint64_t sub_2312B1DC0(uint64_t *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v5 = sub_2313694E0();
  v2[4] = v5;
  v6 = *(v5 - 8);
  v2[5] = v6;
  v7 = *(v6 + 64) + 15;
  v2[6] = swift_task_alloc();
  v8 = sub_231367E50();
  v2[7] = v8;
  v9 = *(v8 - 8);
  v2[8] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a1;
  v13 = a1[1];
  v2[9] = v11;
  v2[10] = v12;
  v2[11] = v13;

  return MEMORY[0x2822009F8](sub_2312B1F20, 0, 0);
}

uint64_t sub_2312B1F20()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];
  *v2 = v0[10];
  v2[1] = v1;
  v9 = *MEMORY[0x277D60CB0];
  (*(v3 + 104))();
  sub_231369EE0();
  v0[12] = sub_231369EC0();
  (*(v7 + 104))(v5, *MEMORY[0x277D61380], v6);
  v10 = *MEMORY[0x277D60B78];
  v11 = sub_231367D80();
  OUTLINED_FUNCTION_11(v11);
  (*(v12 + 104))(v8, v10, v11);
  OUTLINED_FUNCTION_12_16();
  v13 = *(MEMORY[0x277D611F8] + 4);
  v20 = (*MEMORY[0x277D611F8] + MEMORY[0x277D611F8]);
  v14 = swift_task_alloc();
  v0[13] = v14;
  *v14 = v0;
  v14[1] = sub_2312B20B8;
  v15 = v0[6];
  v17 = v0[2];
  v16 = v0[3];
  v18 = OUTLINED_FUNCTION_9_19(v0[9]);

  return v20(v18);
}

void sub_2312B20B8()
{
  OUTLINED_FUNCTION_12();
  v2 = v1[13];
  v3 = v1[12];
  v4 = v1[9];
  v5 = v1[8];
  v15 = v1[7];
  v6 = v1[6];
  v7 = v1[5];
  v8 = v1[4];
  v9 = v1[3];
  v10 = *v0;
  OUTLINED_FUNCTION_2();
  *v11 = v10;

  sub_2312777C0(v9, &qword_27DD42F18, &unk_23136B810);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v4, v15);

  v12 = *(v10 + 8);
  OUTLINED_FUNCTION_40();

  __asm { BRAA            X2, X16 }
}

uint64_t EducationalChannelGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions27EducationalChannelGenerator_channel;
  v2 = sub_231369330();
  OUTLINED_FUNCTION_0_2(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t EducationalChannelGenerator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions27EducationalChannelGenerator_channel;
  v2 = sub_231369330();
  OUTLINED_FUNCTION_0_2(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2312B23E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311E6A24;

  return EducationalChannelGenerator.generateCandidateSuggestions(interaction:environment:factory:)();
}

uint64_t sub_2312B2490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D60D18] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_2312B281C(&qword_280F7F638, type metadata accessor for EducationalChannelGenerator);
  *v10 = v4;
  v10[1] = sub_2311DDECC;

  return MEMORY[0x2821C6C08](a1, a2, a3, a4, v11);
}

uint64_t sub_2312B25E0()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_231204BD4;

  return sub_2312B1DC0(v3, v0);
}

uint64_t type metadata accessor for EducationalChannelGenerator()
{
  result = qword_280F7F620;
  if (!qword_280F7F620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2312B2758()
{
  result = sub_231369330();
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

uint64_t sub_2312B281C(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_7_16()
{

  sub_23126DC90();
}

uint64_t sub_2312B2888(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2313698C0();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312B2960, 0, 0);
}

uint64_t sub_2312B2960()
{
  v57 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = sub_2313683D0();
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v6 = sub_231367820();
  if (v6[2])
  {
    v8 = v6[4];
    v7 = v6[5];
    sub_231369EE0();
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = v0[10];

  sub_231369150();
  sub_231369EE0();
  v10 = sub_2313698A0();
  v11 = sub_23136A3A0();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[10];
  v14 = v0[7];
  v53 = v0[6];
  v55 = v4;
  if (v12)
  {
    v15 = swift_slowAlloc();
    v52 = v13;
    v16 = swift_slowAlloc();
    v56 = v16;
    *v15 = 136315138;
    v17 = sub_231367B30();
    v18 = MEMORY[0x23192A860](v4, v17);
    v20 = sub_2311CFD58(v18, v19, &v56);

    *(v15 + 4) = v20;
    OUTLINED_FUNCTION_37_2(&dword_2311CB000, v21, v22, "Apps on-screen: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v23 = *(v14 + 8);
    v23(v52, v53);
  }

  else
  {

    v23 = *(v14 + 8);
    v23(v13, v53);
  }

  v24 = v0[9];
  sub_231369150();
  sub_231369EE0();
  v25 = sub_2313698A0();
  v26 = sub_23136A3A0();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[9];
  v30 = v0[6];
  v29 = v0[7];
  if (v27)
  {
    v54 = v23;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v56 = v32;
    *v31 = 136315138;
    v0[2] = v8;
    v0[3] = v7;
    sub_231369EE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44578, &unk_231374840);
    v33 = sub_23136A010();
    v35 = sub_2311CFD58(v33, v34, &v56);

    *(v31 + 4) = v35;
    OUTLINED_FUNCTION_37_2(&dword_2311CB000, v36, v37, "Apps Mentioned: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    OUTLINED_FUNCTION_29();
    v23 = v54;
    OUTLINED_FUNCTION_29();
  }

  v23(v28, v30);
  v38 = *(v55 + 16);

  if (v38 || v7)
  {

    v39 = MEMORY[0x277D84F90];
  }

  else
  {
    v45 = v0[8];
    sub_231369150();
    v46 = sub_2313698A0();
    v47 = sub_23136A390();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2311CB000, v46, v47, "No apps are running or mentioned. Using homescreen signal", v48, 2u);
      OUTLINED_FUNCTION_29();
    }

    v50 = v0[7];
    v49 = v0[8];
    v51 = v0[6];

    v23(v49, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2313707C0;
    sub_2313692F0();
    *(v39 + 32) = sub_231369270();
  }

  v41 = v0[9];
  v40 = v0[10];
  v42 = v0[8];

  v43 = v0[1];

  return v43(v39);
}

uint64_t sub_2312B2DC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23120B320;

  return sub_2312B2888(a1, a2);
}

void sub_2312B2E5C()
{
  sub_2312B2EE8(qword_280F802A0);

  JUMPOUT(0x2319284B0);
}

uint64_t sub_2312B2EE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeScreenSignalExtractor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double UnionDataProvider.getRecord(key:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_231215F6C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 32 * v6;

    sub_2311D1D6C(v8, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t UnionDataService.__allocating_init(dataServices:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t UnionDataService.createDataProvider(candidates:generationId:environment:)()
{
  OUTLINED_FUNCTION_8();
  v1[43] = v2;
  v1[44] = v0;
  v1[41] = v3;
  v1[42] = v4;
  v1[40] = v5;
  v6 = sub_2313667A0();
  v1[45] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[46] = v7;
  v1[47] = *(v8 + 64);
  v1[48] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44580, &qword_231374868) - 8) + 64) + 15;
  v1[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312B3118, 0, 0);
}

uint64_t sub_2312B3118()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);
  v9 = *(v0 + 328);
  *(v0 + 400) = sub_231369EC0();
  v10 = *(v5 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44588, &qword_231374870);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v11);
  (*(v3 + 16))(v1, v8, v6);
  sub_2311CF324(v7, v0 + 216);
  v12 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v0 + 408) = v13;
  *(v13 + 16) = v9;
  (*(v3 + 32))(v13 + v12, v1, v6);
  sub_2311D38A8((v0 + 216), v13 + ((v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *(MEMORY[0x277D60B28] + 4);
  sub_231369EE0();
  v15 = swift_task_alloc();
  *(v0 + 416) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F18, &qword_231370D38);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43580, &qword_23136CAC0);
  *v15 = v0;
  v15[1] = sub_2312B3324;
  v20 = *(v0 + 392);

  return MEMORY[0x2821C6B08](v10, v20, &unk_231374880, v13, v16, v17, v18, v19);
}

void sub_2312B3324()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = v2[52];
  v5 = *v1;
  v3[53] = v6;

  if (v0)
  {
  }

  else
  {
    v7 = v3[51];
    sub_2311D1F18(v3[49], &qword_27DD44580, &qword_231374868);

    MEMORY[0x2822009F8](sub_2312B347C, 0, 0);
  }
}

uint64_t sub_2312B384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_2312B3870, 0, 0);
}

uint64_t sub_2312B3870()
{
  v1 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43578, &qword_23136CAB8);
  v2 = swift_allocObject();
  v0[11] = v2;
  *(v2 + 16) = xmmword_23136B670;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v4 + 8);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_2312B39D8;
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[8];

  return (v12)(v0 + 2, v10, v8, v9, v3, v4);
}

uint64_t sub_2312B39D8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_2312B3AC4, 0, 0);
}

uint64_t sub_2312B3AC4()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  *(v1 + 32) = (*(v3 + 16))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = v0[1];
  v5 = v0[11];

  return v4(v5);
}

uint64_t UnionDataService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t UnionDataService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2312B3BC4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311D44D4;

  return UnionDataService.createDataProvider(candidates:generationId:environment:)();
}

uint64_t sub_2312B3C88(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_231374850;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_2312B3CEC(uint64_t a1)
{
  OUTLINED_FUNCTION_24_16(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F40, &qword_23136B860);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_71_4();
  if (!v4)
  {
LABEL_29:

    *v1 = v3;
    return;
  }

  v5 = 0;
  v6 = *(v2 + 64);
  v7 = *(v2 + 32);
  OUTLINED_FUNCTION_0_28();
  v10 = v9 & v8;
  OUTLINED_FUNCTION_41_12();
  if (!v10)
  {
LABEL_4:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v1)
      {
        break;
      }

      ++v12;
      if (*(v2 + 64 + 8 * v5))
      {
        OUTLINED_FUNCTION_31_6();
        v10 = v14 & v13;
        goto LABEL_9;
      }
    }

    if (v3)
    {
      OUTLINED_FUNCTION_5_18();
      if (v29 != v30)
      {
        OUTLINED_FUNCTION_26_14(v28);
      }

      else
      {
        v31 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v31, v32, v2 + 64);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_10();
LABEL_9:
    OUTLINED_FUNCTION_49_8(v11);
    v33 = *(v16 + 16 * v15);
    if ((v3 & 1) == 0)
    {
      sub_231369EE0();
      sub_231369EE0();
      sub_231369EE0();
    }

    v17 = *(v3 + 40);
    sub_23136A9D0();
    sub_23136A060();
    sub_23136AA00();
    v18 = *(v3 + 32);
    OUTLINED_FUNCTION_2_18();
    v20 = *(v3 + 64 + 8 * v19);
    OUTLINED_FUNCTION_36_10();
    if (v21)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_21:
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_31_15(v25);
    *(v27 + 16 * v26) = v33;
    OUTLINED_FUNCTION_28_13();
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v21)
    {
      if (v23)
      {
        break;
      }
    }

    if (v22 == v24)
    {
      v22 = 0;
    }

    OUTLINED_FUNCTION_60_5(v22);
    if (!v21)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_2312B3EBC()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_18();
  v5 = sub_231367E10();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43270, &qword_23136BD18);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_51_8();
  if (!v11)
  {
LABEL_30:

    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v12 = 0;
  v13 = *(v0 + 64);
  v14 = *(v0 + 32);
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_13_16();
  if (!v4)
  {
LABEL_4:
    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v3)
      {
        break;
      }

      OUTLINED_FUNCTION_63_6();
      if (v16)
      {
        OUTLINED_FUNCTION_31_6();
        v4 = v18 & v17;
        goto LABEL_9;
      }
    }

    if (v1)
    {
      OUTLINED_FUNCTION_5_18();
      if (v34 != v35)
      {
        OUTLINED_FUNCTION_27_12(v33);
      }

      else
      {
        v36 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v36, v37, v0 + 64);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_14_12();
LABEL_9:
    OUTLINED_FUNCTION_21_17();
    if (v19)
    {
      v20 = OUTLINED_FUNCTION_10_20();
      v21(v20);
      OUTLINED_FUNCTION_47_7();
    }

    else
    {
      v22 = OUTLINED_FUNCTION_10_20();
      v23(v22);
      OUTLINED_FUNCTION_58_6();
    }

    v24 = *(v2 + 40);
    sub_2312B71EC(&qword_280F7CA28, MEMORY[0x277D60C78]);
    OUTLINED_FUNCTION_33_11();
    v25 = *(v2 + 32);
    OUTLINED_FUNCTION_2_18();
    v27 = *(v8 + 8 * v26);
    OUTLINED_FUNCTION_36_10();
    if (v28)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
LABEL_22:
    OUTLINED_FUNCTION_3_24();
    OUTLINED_FUNCTION_48_7();
    v32();
    OUTLINED_FUNCTION_19_16();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v28)
    {
      if (v30)
      {
        break;
      }
    }

    if (v29 == v31)
    {
      v29 = 0;
    }

    OUTLINED_FUNCTION_38_8(v29);
    if (!v28)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2312B40EC(uint64_t a1)
{
  OUTLINED_FUNCTION_25_13(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44328, &qword_231374950);
  OUTLINED_FUNCTION_45_6();
  v42 = v2;
  OUTLINED_FUNCTION_81_2();
  OUTLINED_FUNCTION_70_5();
  if (!v5)
  {
LABEL_29:

LABEL_30:
    *v1 = v3;
    return;
  }

  v40 = v1;
  v41 = v4;
  v6 = 0;
  v8 = v4 + 64;
  v7 = *(v4 + 64);
  v9 = *(v4 + 32);
  OUTLINED_FUNCTION_0_28();
  v13 = (v12 + 63) >> 6;
  v14 = v3 + 64;
  if ((v11 & v10) == 0)
  {
LABEL_4:
    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v13)
      {
        break;
      }

      ++v17;
      if (*(v8 + 8 * v6))
      {
        OUTLINED_FUNCTION_31_6();
        v43 = v19 & v18;
        goto LABEL_9;
      }
    }

    if ((v42 & 1) == 0)
    {

      v1 = v40;
      goto LABEL_30;
    }

    v34 = *(v4 + 32);
    OUTLINED_FUNCTION_17_12();
    v1 = v40;
    if (v36 != v37)
    {
      OUTLINED_FUNCTION_26_14(v35);
    }

    else
    {
      v38 = OUTLINED_FUNCTION_18_16();
      sub_2312B3C88(v38, v39, v8);
    }

    *(v4 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_53_0();
    v43 = v16;
LABEL_9:
    v20 = v15 | (v6 << 6);
    v21 = *(*(v4 + 48) + 8 * v20);
    v22 = *(*(v4 + 56) + 8 * v20);
    if ((v42 & 1) == 0)
    {

      sub_231369EE0();
    }

    v23 = *(v3 + 40);
    sub_2313692F0();
    sub_2312B71EC(&unk_280F7C910, MEMORY[0x277D612D0]);
    sub_231369F30();
    v24 = *(v3 + 32);
    OUTLINED_FUNCTION_2_18();
    v26 = *(v14 + 8 * v25);
    OUTLINED_FUNCTION_36_10();
    if (v27)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_21:
    OUTLINED_FUNCTION_7_9();
    *(v14 + v31) |= v32;
    *(*(v3 + 48) + 8 * v33) = v21;
    *(*(v3 + 56) + 8 * v33) = v22;
    OUTLINED_FUNCTION_28_13();
    v4 = v41;
    if (!v43)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v27)
    {
      if (v29)
      {
        break;
      }
    }

    if (v28 == v30)
    {
      v28 = 0;
    }

    if (*(v14 + 8 * v28) != -1)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2312B43B8()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v66 = v10(0);
  v11 = OUTLINED_FUNCTION_0_0(v66);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v65 = &v58 - v16;
  v17 = *v5;
  if (*(*v5 + 24) > v9)
  {
    v18 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  v63 = v7;
  v19 = sub_23136A780();
  if (!*(v17 + 16))
  {
LABEL_32:

LABEL_33:
    *v5 = v19;
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v20 = 0;
  v22 = v17 + 64;
  v21 = *(v17 + 64);
  v23 = *(v17 + 32);
  OUTLINED_FUNCTION_0_28();
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  v59 = v5;
  v60 = (v13 + 16);
  v61 = v17;
  v62 = v13;
  v64 = (v13 + 32);
  v29 = v19 + 64;
  if ((v25 & v24) == 0)
  {
LABEL_6:
    v31 = v20;
    while (1)
    {
      v20 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v20 >= v28)
      {
        break;
      }

      ++v31;
      if (*(v22 + 8 * v20))
      {
        OUTLINED_FUNCTION_31_6();
        v26 = v33 & v32;
        goto LABEL_11;
      }
    }

    if ((v63 & 1) == 0)
    {

      v5 = v59;
      goto LABEL_33;
    }

    v52 = *(v17 + 32);
    OUTLINED_FUNCTION_17_12();
    v5 = v59;
    if (v54 != v55)
    {
      OUTLINED_FUNCTION_27_12(v53);
    }

    else
    {
      v56 = OUTLINED_FUNCTION_18_16();
      sub_2312B3C88(v56, v57, v22);
    }

    *(v17 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    OUTLINED_FUNCTION_46_11();
LABEL_11:
    v34 = v30 | (v20 << 6);
    v35 = *(v17 + 56);
    v36 = (*(v17 + 48) + 16 * v34);
    v38 = *v36;
    v37 = v36[1];
    v39 = *(v62 + 72);
    v40 = v35 + v39 * v34;
    if (v63)
    {
      (*v64)(v65, v40, v66);
    }

    else
    {
      (*v60)(v65, v40, v66);
      sub_231369EE0();
    }

    v41 = *(v19 + 40);
    sub_23136A9D0();
    sub_23136A060();
    sub_23136AA00();
    v42 = *(v19 + 32);
    OUTLINED_FUNCTION_2_18();
    v44 = *(v29 + 8 * v43);
    OUTLINED_FUNCTION_36_10();
    if (v45)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_24:
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_62_7(v49);
    *v50 = v38;
    v50[1] = v37;
    (*v64)((*(v19 + 56) + v39 * v51), v65, v66);
    OUTLINED_FUNCTION_28_13();
    v17 = v61;
    if (!v26)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v45)
    {
      if (v47)
      {
        break;
      }
    }

    if (v46 == v48)
    {
      v46 = 0;
    }

    if (*(v29 + 8 * v46) != -1)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_2312B4680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = sub_231369D50();
  v29 = OUTLINED_FUNCTION_0_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_4();
  v92 = v35 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60);
  v37 = OUTLINED_FUNCTION_0(v36);
  v97 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_1();
  v96 = v41;
  MEMORY[0x28223BE20](v42);
  v93 = &v89 - v43;
  v44 = *v23;
  if (*(*v23 + 24) > v27)
  {
    v45 = *(*v23 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44598, &qword_231374948);
  v98 = v25;
  v46 = OUTLINED_FUNCTION_57_9();
  v47 = v46;
  if (!*(v44 + 16))
  {
LABEL_38:

LABEL_39:
    *v23 = v47;
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v95 = v28;
  v89 = v23;
  v48 = 0;
  v49 = v44 + 64;
  v50 = 1 << *(v44 + 32);
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  else
  {
    v51 = -1;
  }

  v52 = v51 & *(v44 + 64);
  v53 = (v50 + 63) >> 6;
  v91 = (v31 + 32);
  v90 = (v31 + 8);
  v54 = v46 + 64;
  v94 = v44;
  v55 = v93;
  v102 = v46;
  if (!v52)
  {
LABEL_9:
    v58 = v48;
    while (1)
    {
      v48 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v48 >= v53)
      {
        break;
      }

      ++v58;
      if (*(v49 + 8 * v48))
      {
        OUTLINED_FUNCTION_31_6();
        v57 = v60 & v59;
        goto LABEL_14;
      }
    }

    if ((v98 & 1) == 0)
    {

      v23 = v89;
      goto LABEL_39;
    }

    v83 = *(v44 + 32);
    OUTLINED_FUNCTION_17_12();
    v23 = v89;
    if (v85 != v86)
    {
      OUTLINED_FUNCTION_26_14(v84);
    }

    else
    {
      v87 = OUTLINED_FUNCTION_18_16();
      sub_2312B3C88(v87, v88, v49);
    }

    *(v44 + 16) = 0;
    goto LABEL_38;
  }

  while (1)
  {
    OUTLINED_FUNCTION_53_0();
LABEL_14:
    v61 = v56 | (v48 << 6);
    v62 = *(v44 + 48);
    v100 = *(v97 + 72);
    v101 = v57;
    if (v98)
    {
      OUTLINED_FUNCTION_72_5();
      sub_2311F0440(v63, v64, v65, &qword_23136FA60);
      v99 = *(*(v44 + 56) + 8 * v61);
    }

    else
    {
      OUTLINED_FUNCTION_72_5();
      sub_2311F03B0(v66, v67, v68, &qword_23136FA60);
      v99 = *(*(v44 + 56) + 8 * v61);
      sub_231369EE0();
    }

    v69 = *(v47 + 40);
    sub_23136A9D0();
    v70 = v96;
    sub_2311F03B0(v55, v96, &qword_27DD437B8, &qword_23136FA60);
    v71 = v95;
    if (__swift_getEnumTagSinglePayload(v70, 1, v95) == 1)
    {
      sub_23136A9F0();
    }

    else
    {
      v72 = v92;
      (*v91)(v92, v70, v71);
      sub_23136A9F0();
      OUTLINED_FUNCTION_40_11();
      sub_2312B71EC(&qword_280F7C888, v73);
      sub_231369F40();
      v55 = v93;
      (*v90)(v72, v71);
    }

    sub_23136AA00();
    v74 = *(v102 + 32);
    OUTLINED_FUNCTION_2_18();
    v76 = *(v54 + 8 * v75);
    OUTLINED_FUNCTION_36_10();
    v44 = v94;
    if (v77)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
LABEL_30:
    *(v54 + ((v103 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (&a19 + 96);
    sub_2311F0440(v55, *(v78 + 48) + v100 * v103, &qword_27DD437B8, &qword_23136FA60);
    v82 = v101;
    v47 = v102;
    *(*(v102 + 56) + 8 * v103) = v99;
    ++*(v47 + 16);
    if (!v82)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v77)
    {
      if (v80)
      {
        break;
      }
    }

    if (v79 == v81)
    {
      v79 = 0;
    }

    OUTLINED_FUNCTION_37_13(v79);
    if (!v77)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_30;
    }
  }

LABEL_41:
  __break(1u);
}

void sub_2312B4AF8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_18();
  v5 = sub_231367E50();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445A0, &qword_231374958);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_51_8();
  if (!v11)
  {
LABEL_30:

    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v12 = 0;
  v13 = *(v0 + 64);
  v14 = *(v0 + 32);
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_13_16();
  if (!v4)
  {
LABEL_4:
    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v3)
      {
        break;
      }

      OUTLINED_FUNCTION_63_6();
      if (v16)
      {
        OUTLINED_FUNCTION_31_6();
        v4 = v18 & v17;
        goto LABEL_9;
      }
    }

    if (v1)
    {
      OUTLINED_FUNCTION_5_18();
      if (v34 != v35)
      {
        OUTLINED_FUNCTION_27_12(v33);
      }

      else
      {
        v36 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v36, v37, v0 + 64);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_14_12();
LABEL_9:
    OUTLINED_FUNCTION_21_17();
    if (v19)
    {
      v20 = OUTLINED_FUNCTION_10_20();
      v21(v20);
      OUTLINED_FUNCTION_47_7();
    }

    else
    {
      v22 = OUTLINED_FUNCTION_10_20();
      v23(v22);
      OUTLINED_FUNCTION_58_6();
    }

    v24 = *(v2 + 40);
    sub_2312B71EC(&qword_280F7CA10, MEMORY[0x277D60CC0]);
    OUTLINED_FUNCTION_33_11();
    v25 = *(v2 + 32);
    OUTLINED_FUNCTION_2_18();
    v27 = *(v8 + 8 * v26);
    OUTLINED_FUNCTION_36_10();
    if (v28)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
LABEL_22:
    OUTLINED_FUNCTION_3_24();
    OUTLINED_FUNCTION_48_7();
    v32();
    OUTLINED_FUNCTION_19_16();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v28)
    {
      if (v30)
      {
        break;
      }
    }

    if (v29 == v31)
    {
      v29 = 0;
    }

    OUTLINED_FUNCTION_38_8(v29);
    if (!v28)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2312B4D28()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_18();
  v5 = sub_231368260();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445E0, &qword_2313749C0);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_51_8();
  if (!v11)
  {
LABEL_30:

    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v12 = 0;
  v13 = *(v0 + 64);
  v14 = *(v0 + 32);
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_13_16();
  if (!v4)
  {
LABEL_4:
    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v3)
      {
        break;
      }

      OUTLINED_FUNCTION_63_6();
      if (v16)
      {
        OUTLINED_FUNCTION_31_6();
        v4 = v18 & v17;
        goto LABEL_9;
      }
    }

    if (v1)
    {
      OUTLINED_FUNCTION_5_18();
      if (v35 != v36)
      {
        OUTLINED_FUNCTION_27_12(v34);
      }

      else
      {
        v37 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v37, v38, v0 + 64);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_14_12();
LABEL_9:
    OUTLINED_FUNCTION_21_17();
    if (v19)
    {
      v20 = OUTLINED_FUNCTION_10_20();
      v21(v20);
      OUTLINED_FUNCTION_47_7();
    }

    else
    {
      v22 = OUTLINED_FUNCTION_10_20();
      v23(v22);
      OUTLINED_FUNCTION_58_6();
    }

    v24 = *(v2 + 40);
    OUTLINED_FUNCTION_39_10();
    sub_2312B71EC(&qword_280F7C9A0, v25);
    OUTLINED_FUNCTION_33_11();
    v26 = *(v2 + 32);
    OUTLINED_FUNCTION_2_18();
    v28 = *(v8 + 8 * v27);
    OUTLINED_FUNCTION_36_10();
    if (v29)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
LABEL_22:
    OUTLINED_FUNCTION_3_24();
    OUTLINED_FUNCTION_48_7();
    v33();
    OUTLINED_FUNCTION_19_16();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v29)
    {
      if (v31)
      {
        break;
      }
    }

    if (v30 == v32)
    {
      v30 = 0;
    }

    OUTLINED_FUNCTION_38_8(v30);
    if (!v29)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2312B4F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_76_4();
  a34 = v38;
  a35 = v39;
  OUTLINED_FUNCTION_24_16(v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445F0, &unk_2313749D0);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_71_4();
  if (!v41)
  {
LABEL_30:

    *v35 = v37;
    OUTLINED_FUNCTION_75_4();
    return;
  }

  v42 = 0;
  v43 = *(v36 + 64);
  v44 = *(v36 + 32);
  OUTLINED_FUNCTION_0_28();
  v47 = v46 & v45;
  OUTLINED_FUNCTION_41_12();
  if (!v47)
  {
LABEL_4:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v42 >= v35)
      {
        break;
      }

      ++v49;
      if (*(v36 + 64 + 8 * v42))
      {
        OUTLINED_FUNCTION_31_6();
        v47 = v51 & v50;
        goto LABEL_9;
      }
    }

    if (v37)
    {
      OUTLINED_FUNCTION_5_18();
      if (v66 != v67)
      {
        OUTLINED_FUNCTION_26_14(v65);
      }

      else
      {
        v68 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v68, v69, v36 + 64);
      }

      *(v36 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_10();
LABEL_9:
    OUTLINED_FUNCTION_49_8(v48);
    v54 = (v53 + 32 * v52);
    if (v37)
    {
      sub_2312250F8(v54, &a21);
    }

    else
    {
      sub_2311D1D6C(v54, &a21);
      sub_231369EE0();
    }

    OUTLINED_FUNCTION_80_3();
    sub_23136A060();
    sub_23136AA00();
    v55 = *(v37 + 32);
    OUTLINED_FUNCTION_2_18();
    v57 = *(v37 + 64 + 8 * v56);
    OUTLINED_FUNCTION_36_10();
    if (v58)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_22:
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_31_15(v62);
    sub_2312250F8(&a21, (v64 + 32 * v63));
    OUTLINED_FUNCTION_28_13();
    if (!v47)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v58)
    {
      if (v60)
      {
        break;
      }
    }

    if (v59 == v61)
    {
      v59 = 0;
    }

    OUTLINED_FUNCTION_60_5(v59);
    if (!v58)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2312B50F4()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_18();
  v3 = type metadata accessor for GenerationService.DedupData();
  v4 = OUTLINED_FUNCTION_0(v3);
  v50 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v52 = v9 - v8;
  OUTLINED_FUNCTION_14_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44050, &qword_231370F18);
  OUTLINED_FUNCTION_22_14();
  v51 = v1;
  OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_51_8();
  if (!v10)
  {
LABEL_30:

    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v49 = v0;
  v11 = 0;
  v13 = (v0 + 64);
  v12 = *(v0 + 64);
  v14 = *(v0 + 32);
  OUTLINED_FUNCTION_0_28();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  v20 = v2 + 64;
  if ((v16 & v15) == 0)
  {
LABEL_4:
    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v19)
      {
        break;
      }

      ++v22;
      if (v13[v11])
      {
        OUTLINED_FUNCTION_31_6();
        v17 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (v51)
    {
      OUTLINED_FUNCTION_5_18();
      if (v45 != v46)
      {
        *v13 = -1 << v44;
      }

      else
      {
        v47 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v47, v48, v13);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_9:
    v25 = v21 | (v11 << 6);
    v26 = *(v0 + 56);
    v27 = (*(v0 + 48) + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = *(v50 + 72);
    v31 = v26 + v30 * v25;
    if (v51)
    {
      sub_231270D3C(v31, v52);
    }

    else
    {
      sub_231270BA8(v31, v52);
      sub_231369EE0();
    }

    v32 = *(v2 + 40);
    sub_23136A9D0();
    OUTLINED_FUNCTION_72_5();
    sub_23136A060();
    sub_23136AA00();
    v33 = *(v2 + 32);
    OUTLINED_FUNCTION_2_18();
    v35 = *(v20 + 8 * v34);
    OUTLINED_FUNCTION_36_10();
    if (v36)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_22:
    OUTLINED_FUNCTION_7_9();
    *(v20 + v40) |= v41;
    v43 = (*(v2 + 48) + 16 * v42);
    *v43 = v28;
    v43[1] = v29;
    sub_231270D3C(v52, *(v2 + 56) + v30 * v42);
    OUTLINED_FUNCTION_29_12();
    v0 = v49;
    if (!v17)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v36)
    {
      if (v38)
      {
        break;
      }
    }

    if (v37 == v39)
    {
      v37 = 0;
    }

    OUTLINED_FUNCTION_37_13(v37);
    if (!v36)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2312B537C()
{
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_25_13(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C88, &qword_231370B00);
  OUTLINED_FUNCTION_45_6();
  v37 = v1;
  OUTLINED_FUNCTION_81_2();
  OUTLINED_FUNCTION_70_5();
  if (!v5)
  {
LABEL_29:

    *v0 = v2;
    OUTLINED_FUNCTION_77_2();
    return;
  }

  v36 = v3;
  v6 = 0;
  v8 = v3 + 64;
  v7 = *(v3 + 64);
  v9 = *(v3 + 32);
  OUTLINED_FUNCTION_0_28();
  v12 = v11 & v10;
  OUTLINED_FUNCTION_41_12();
  if (!v12)
  {
LABEL_4:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v0)
      {
        break;
      }

      ++v14;
      if (*(v8 + 8 * v6))
      {
        OUTLINED_FUNCTION_31_6();
        v12 = v16 & v15;
        goto LABEL_9;
      }
    }

    if (v37)
    {
      v30 = *(v3 + 32);
      OUTLINED_FUNCTION_17_12();
      if (v32 != v33)
      {
        OUTLINED_FUNCTION_26_14(v31);
      }

      else
      {
        v34 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v34, v35, v8);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_43_10();
LABEL_9:
    OUTLINED_FUNCTION_52_8(v13);
    v19 = *(v18 + 8 * v17);
    if ((v37 & 1) == 0)
    {
      sub_231369EE0();
    }

    OUTLINED_FUNCTION_80_3();
    sub_23136A060();
    sub_23136AA00();
    v20 = *(v2 + 32);
    OUTLINED_FUNCTION_2_18();
    v22 = *(v2 + 64 + 8 * v21);
    OUTLINED_FUNCTION_36_10();
    if (v23)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_21:
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_32_11(v27);
    *(v29 + 8 * v28) = v19;
    OUTLINED_FUNCTION_28_13();
    v3 = v36;
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v23)
    {
      if (v25)
      {
        break;
      }
    }

    if (v24 == v26)
    {
      v24 = 0;
    }

    OUTLINED_FUNCTION_61_5(v24);
    if (!v23)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_2312B551C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_18();
  v3 = sub_231369330();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44348, &qword_231374990);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_51_8();
  if (!v9)
  {
LABEL_29:

    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v10 = 0;
  v12 = v0 + 64;
  v11 = *(v0 + 64);
  v13 = *(v0 + 32);
  OUTLINED_FUNCTION_0_28();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v44 = v0;
  if ((v15 & v14) == 0)
  {
LABEL_4:
    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v10 >= v18)
      {
        break;
      }

      OUTLINED_FUNCTION_63_6();
      if (v21)
      {
        OUTLINED_FUNCTION_31_6();
        v16 = v23 & v22;
        goto LABEL_9;
      }
    }

    if (v1)
    {
      OUTLINED_FUNCTION_5_18();
      if (v40 != v41)
      {
        OUTLINED_FUNCTION_27_12(v39);
      }

      else
      {
        v42 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v42, v43, v12);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_14_12();
LABEL_9:
    v24 = v19 | (v10 << 6);
    v25 = *(v0 + 48) + *(v6 + 72) * v24;
    v26 = OUTLINED_FUNCTION_10_20();
    v27(v26);
    v28 = (*(v0 + 56) + 16 * v24);
    v45 = v28[1];
    v46 = *v28;
    if ((v1 & 1) == 0)
    {
      sub_231369EE0();
    }

    v29 = *(v2 + 40);
    sub_2312B71EC(&qword_280F7C8F0, MEMORY[0x277D61310]);
    OUTLINED_FUNCTION_33_11();
    v30 = *(v2 + 32);
    OUTLINED_FUNCTION_2_18();
    v32 = *(v2 + 64 + 8 * v31);
    OUTLINED_FUNCTION_36_10();
    if (v33)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
LABEL_21:
    v37 = OUTLINED_FUNCTION_3_24();
    (*(v6 + 32))(v37);
    v38 = (*(v2 + 56) + 16 * v29);
    *v38 = v46;
    v38[1] = v45;
    OUTLINED_FUNCTION_29_12();
    v0 = v44;
    if (!v16)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v33)
    {
      if (v35)
      {
        break;
      }
    }

    if (v34 == v36)
    {
      v34 = 0;
    }

    OUTLINED_FUNCTION_38_8(v34);
    if (!v33)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_2312B57C0()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_18();
  v5 = sub_2313694E0();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_64_6();
  OUTLINED_FUNCTION_14_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445F8, qword_2313749E0);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_51_8();
  if (!v11)
  {
LABEL_30:

    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v47 = v4;
  v12 = 0;
  v14 = v1 + 64;
  v13 = *(v1 + 64);
  v15 = *(v1 + 32);
  OUTLINED_FUNCTION_0_28();
  v18 = v17 & v16;
  OUTLINED_FUNCTION_41_12();
  v43 = v8;
  v45 = (v8 + 32);
  v44 = v1;
  if (!v18)
  {
LABEL_4:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v0)
      {
        break;
      }

      ++v20;
      if (*(v14 + 8 * v12))
      {
        OUTLINED_FUNCTION_31_6();
        v18 = v22 & v21;
        goto LABEL_9;
      }
    }

    if (v2)
    {
      OUTLINED_FUNCTION_5_18();
      if (v39 != v40)
      {
        OUTLINED_FUNCTION_27_12(v38);
      }

      else
      {
        v41 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v41, v42, v14);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_46_11();
LABEL_9:
    v46 = *(v8 + 72);
    v23 = *(v1 + 48) + v46 * (v19 | (v12 << 6));
    v24 = OUTLINED_FUNCTION_68_4();
    v25(v24);
    v26 = OUTLINED_FUNCTION_65_5();
    if (v2)
    {
      sub_2311D38A8(v26, v27);
    }

    else
    {
      sub_2311CF324(v26, v27);
    }

    v28 = *(v3 + 40);
    sub_2312B71EC(&qword_280F7C8C8, MEMORY[0x277D61388]);
    sub_231369F30();
    v29 = *(v3 + 32);
    OUTLINED_FUNCTION_2_18();
    v31 = *(v3 + 64 + 8 * v30);
    OUTLINED_FUNCTION_36_10();
    if (v32)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
    v8 = v43;
    v1 = v44;
LABEL_22:
    OUTLINED_FUNCTION_20_19();
    OUTLINED_FUNCTION_42_11(v36);
    (*v45)(v37 + v46 * v5, v47, v5);
    sub_2311D38A8(&v48, *(v3 + 56) + 40 * v5);
    OUTLINED_FUNCTION_29_12();
    if (!v18)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  v8 = v43;
  v1 = v44;
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v32)
    {
      if (v34)
      {
        break;
      }
    }

    if (v33 == v35)
    {
      v33 = 0;
    }

    OUTLINED_FUNCTION_37_13(v33);
    if (!v32)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2312B5A70()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_18();
  v5 = sub_2313673A0();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445E8, &qword_2313749C8);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_51_8();
  if (!v11)
  {
LABEL_30:

    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v12 = 0;
  v13 = *(v0 + 64);
  v14 = *(v0 + 32);
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_13_16();
  if (!v4)
  {
LABEL_4:
    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v3)
      {
        break;
      }

      OUTLINED_FUNCTION_63_6();
      if (v16)
      {
        OUTLINED_FUNCTION_31_6();
        v4 = v18 & v17;
        goto LABEL_9;
      }
    }

    if (v1)
    {
      OUTLINED_FUNCTION_5_18();
      if (v34 != v35)
      {
        OUTLINED_FUNCTION_27_12(v33);
      }

      else
      {
        v36 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v36, v37, v0 + 64);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_14_12();
LABEL_9:
    OUTLINED_FUNCTION_21_17();
    if (v19)
    {
      v20 = OUTLINED_FUNCTION_10_20();
      v21(v20);
      OUTLINED_FUNCTION_47_7();
    }

    else
    {
      v22 = OUTLINED_FUNCTION_10_20();
      v23(v22);
      OUTLINED_FUNCTION_58_6();
    }

    v24 = *(v2 + 40);
    sub_2312B71EC(&qword_280F7CAF0, MEMORY[0x277D60890]);
    OUTLINED_FUNCTION_33_11();
    v25 = *(v2 + 32);
    OUTLINED_FUNCTION_2_18();
    v27 = *(v8 + 8 * v26);
    OUTLINED_FUNCTION_36_10();
    if (v28)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
LABEL_22:
    OUTLINED_FUNCTION_3_24();
    OUTLINED_FUNCTION_48_7();
    v32();
    OUTLINED_FUNCTION_19_16();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v28)
    {
      if (v30)
      {
        break;
      }
    }

    if (v29 == v31)
    {
      v29 = 0;
    }

    OUTLINED_FUNCTION_38_8(v29);
    if (!v28)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2312B5CB4()
{
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_25_13(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_45_6();
  v39 = v1;
  OUTLINED_FUNCTION_81_2();
  OUTLINED_FUNCTION_70_5();
  if (!v7)
  {
LABEL_29:

    *v0 = v2;
    OUTLINED_FUNCTION_77_2();
    return;
  }

  v38 = v3;
  v8 = 0;
  v10 = v3 + 64;
  v9 = *(v3 + 64);
  v11 = *(v3 + 32);
  OUTLINED_FUNCTION_0_28();
  v14 = v13 & v12;
  OUTLINED_FUNCTION_41_12();
  if (!v14)
  {
LABEL_4:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v8 >= v0)
      {
        break;
      }

      ++v16;
      if (*(v10 + 8 * v8))
      {
        OUTLINED_FUNCTION_31_6();
        v14 = v18 & v17;
        goto LABEL_9;
      }
    }

    if (v39)
    {
      v32 = *(v3 + 32);
      OUTLINED_FUNCTION_17_12();
      if (v34 != v35)
      {
        OUTLINED_FUNCTION_26_14(v33);
      }

      else
      {
        v36 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v36, v37, v10);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_43_10();
LABEL_9:
    OUTLINED_FUNCTION_52_8(v15);
    v21 = *(v20 + 8 * v19);
    if ((v39 & 1) == 0)
    {
      sub_231369EE0();
      sub_231369EE0();
    }

    OUTLINED_FUNCTION_80_3();
    sub_23136A060();
    sub_23136AA00();
    v22 = *(v2 + 32);
    OUTLINED_FUNCTION_2_18();
    v24 = *(v2 + 64 + 8 * v23);
    OUTLINED_FUNCTION_36_10();
    if (v25)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_21:
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_32_11(v29);
    *(v31 + 8 * v30) = v21;
    OUTLINED_FUNCTION_28_13();
    v3 = v38;
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v25)
    {
      if (v27)
      {
        break;
      }
    }

    if (v26 == v28)
    {
      v26 = 0;
    }

    OUTLINED_FUNCTION_61_5(v26);
    if (!v25)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_2312B5E4C()
{
  OUTLINED_FUNCTION_15_18();
  v6 = sub_231368260();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_64_6();
  OUTLINED_FUNCTION_14_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44370, &qword_231373030);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_51_8();
  if (!v12)
  {
LABEL_27:

    *v0 = v4;
    return;
  }

  v46 = v5;
  v47 = v6;
  v13 = 0;
  v14 = *(v2 + 64);
  v15 = *(v2 + 32);
  OUTLINED_FUNCTION_0_28();
  v18 = v17 & v16;
  OUTLINED_FUNCTION_41_12();
  if (!v18)
  {
LABEL_4:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v13 >= v0)
      {
        break;
      }

      ++v21;
      if (*(v2 + 64 + 8 * v13))
      {
        OUTLINED_FUNCTION_31_6();
        v18 = v23 & v22;
        goto LABEL_9;
      }
    }

    if (v3)
    {
      OUTLINED_FUNCTION_5_18();
      if (v41 != v42)
      {
        OUTLINED_FUNCTION_27_12(v40);
      }

      else
      {
        v43 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v43, v44, v2 + 64);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_46_11();
LABEL_9:
    v24 = v19 | (v13 << 6);
    v45 = *(v20 + 72);
    v25 = *(v2 + 48) + v45 * v24;
    v26 = OUTLINED_FUNCTION_67_5();
    v27(v26);
    v28 = *(*(v2 + 56) + 8 * v24);
    v29 = *(v4 + 40);
    OUTLINED_FUNCTION_39_10();
    sub_2312B71EC(&qword_280F7C9A0, v30);
    sub_231369F30();
    v31 = *(v4 + 32);
    OUTLINED_FUNCTION_2_18();
    v33 = *(v4 + 64 + 8 * v32);
    OUTLINED_FUNCTION_36_10();
    if (v34)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
LABEL_19:
    OUTLINED_FUNCTION_20_19();
    OUTLINED_FUNCTION_42_11(v38);
    (*(v9 + 32))(v39 + v45 * v1, v46, v47);
    *(*(v4 + 56) + 8 * v1) = v28;
    OUTLINED_FUNCTION_29_12();
    if (!v18)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v34)
    {
      if (v36)
      {
        break;
      }
    }

    if (v35 == v37)
    {
      v35 = 0;
    }

    OUTLINED_FUNCTION_37_13(v35);
    if (!v34)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_2312B60F8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_18();
  v6 = sub_231367C70();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_64_6();
  OUTLINED_FUNCTION_14_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44360, &qword_231373020);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_51_8();
  if (!v12)
  {
LABEL_27:

    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v48 = v5;
  v13 = 0;
  v15 = v2 + 64;
  v14 = *(v2 + 64);
  v16 = *(v2 + 32);
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_41_12();
  v44 = v9;
  v46 = (v9 + 32);
  v45 = v2;
  if (!v17)
  {
LABEL_4:
    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v13 >= v0)
      {
        break;
      }

      ++v20;
      if (*(v15 + 8 * v13))
      {
        OUTLINED_FUNCTION_31_6();
        v19 = v22 & v21;
        goto LABEL_9;
      }
    }

    if (v3)
    {
      OUTLINED_FUNCTION_5_18();
      if (v40 != v41)
      {
        OUTLINED_FUNCTION_27_12(v39);
      }

      else
      {
        v42 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v42, v43, v15);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_53_0();
LABEL_9:
    v23 = v18 | (v13 << 6);
    v47 = v19;
    v24 = *(v9 + 72);
    v25 = *(v2 + 48) + v24 * v23;
    v26 = OUTLINED_FUNCTION_66_4();
    v27(v26);
    v28 = *(*(v2 + 56) + 8 * v23);
    v29 = *(v4 + 40);
    sub_2312B71EC(&qword_280F7CA80, MEMORY[0x277D60AE8]);
    sub_231369F30();
    v30 = *(v4 + 32);
    OUTLINED_FUNCTION_2_18();
    v32 = *(v4 + 64 + 8 * v31);
    OUTLINED_FUNCTION_36_10();
    if (v33)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
LABEL_19:
    OUTLINED_FUNCTION_20_19();
    OUTLINED_FUNCTION_42_11(v37);
    (*v46)(v38 + v24 * v1, v48, v6);
    *(*(v4 + 56) + 8 * v1) = v28;
    OUTLINED_FUNCTION_29_12();
    v9 = v44;
    v2 = v45;
    if (!v47)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v33)
    {
      if (v35)
      {
        break;
      }
    }

    if (v34 == v36)
    {
      v34 = 0;
    }

    OUTLINED_FUNCTION_37_13(v34);
    if (!v33)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_2312B639C(uint64_t a1)
{
  OUTLINED_FUNCTION_25_13(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445B8, &qword_231374970);
  OUTLINED_FUNCTION_45_6();
  v40 = v2;
  OUTLINED_FUNCTION_81_2();
  OUTLINED_FUNCTION_70_5();
  if (!v5)
  {
LABEL_29:

    *v1 = v3;
    return;
  }

  v39 = v4;
  v6 = 0;
  v8 = v4 + 64;
  v7 = *(v4 + 64);
  v9 = *(v4 + 32);
  OUTLINED_FUNCTION_0_28();
  v12 = v11 & v10;
  OUTLINED_FUNCTION_41_12();
  if (!v12)
  {
LABEL_4:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v1)
      {
        break;
      }

      ++v14;
      if (*(v8 + 8 * v6))
      {
        OUTLINED_FUNCTION_31_6();
        v12 = v16 & v15;
        goto LABEL_9;
      }
    }

    if (v40)
    {
      v33 = *(v4 + 32);
      OUTLINED_FUNCTION_17_12();
      if (v35 != v36)
      {
        OUTLINED_FUNCTION_26_14(v34);
      }

      else
      {
        v37 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v37, v38, v8);
      }

      *(v4 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_43_10();
LABEL_9:
    OUTLINED_FUNCTION_52_8(v13);
    v19 = (v18 + 16 * v17);
    v20 = v19[1];
    v41 = *v19;
    if ((v40 & 1) == 0)
    {
      sub_231369EE0();
      sub_231369EE0();
    }

    v21 = *(v3 + 40);
    sub_23136A9D0();
    sub_23136A060();
    sub_23136AA00();
    v22 = *(v3 + 32);
    OUTLINED_FUNCTION_2_18();
    v24 = *(v3 + 64 + 8 * v23);
    OUTLINED_FUNCTION_36_10();
    if (v25)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_21:
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_32_11(v29);
    v32 = (v31 + 16 * v30);
    *v32 = v41;
    v32[1] = v20;
    OUTLINED_FUNCTION_28_13();
    v4 = v39;
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v25)
    {
      if (v27)
      {
        break;
      }
    }

    if (v26 == v28)
    {
      v26 = 0;
    }

    OUTLINED_FUNCTION_61_5(v26);
    if (!v25)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_2312B656C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_76_4();
  a33 = v37;
  a34 = v38;
  OUTLINED_FUNCTION_24_16(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44380, &unk_231373040);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_71_4();
  if (!v40)
  {
LABEL_30:

    *v34 = v36;
    OUTLINED_FUNCTION_75_4();
    return;
  }

  v41 = 0;
  v42 = *(v35 + 64);
  v43 = *(v35 + 32);
  OUTLINED_FUNCTION_0_28();
  v46 = v45 & v44;
  OUTLINED_FUNCTION_41_12();
  v47 = v36 + 64;
  if (!v46)
  {
LABEL_4:
    v49 = v41;
    while (1)
    {
      v41 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v41 >= v34)
      {
        break;
      }

      ++v49;
      if (*(v35 + 64 + 8 * v41))
      {
        OUTLINED_FUNCTION_31_6();
        v46 = v51 & v50;
        goto LABEL_9;
      }
    }

    if (v36)
    {
      OUTLINED_FUNCTION_5_18();
      if (v71 != v72)
      {
        OUTLINED_FUNCTION_26_14(v70);
      }

      else
      {
        v73 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v73, v74, v35 + 64);
      }

      *(v35 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_10();
LABEL_9:
    v52 = v48 | (v41 << 6);
    v53 = (*(v35 + 48) + 16 * v52);
    v54 = *v53;
    v55 = v53[1];
    v56 = (*(v35 + 56) + 32 * v52);
    if (v36)
    {
      v57 = v56[1];
      a21 = *v56;
      a22 = v57;
    }

    else
    {
      sub_2311F03B0(v56, &a21, &qword_27DD443C0, &unk_23136E000);
      sub_231369EE0();
    }

    OUTLINED_FUNCTION_80_3();
    OUTLINED_FUNCTION_72_5();
    sub_23136A060();
    sub_23136AA00();
    v58 = *(v36 + 32);
    OUTLINED_FUNCTION_2_18();
    v60 = *(v47 + 8 * v59);
    OUTLINED_FUNCTION_36_10();
    if (v61)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_22:
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_62_7(v65);
    *v66 = v54;
    v66[1] = v55;
    v68 = (*(v36 + 56) + 32 * v67);
    v69 = a22;
    *v68 = a21;
    v68[1] = v69;
    OUTLINED_FUNCTION_28_13();
    if (!v46)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v61)
    {
      if (v63)
      {
        break;
      }
    }

    if (v62 == v64)
    {
      v62 = 0;
    }

    if (*(v47 + 8 * v62) != -1)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2312B6740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_76_4();
  a34 = v38;
  a35 = v39;
  OUTLINED_FUNCTION_24_16(v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445D8, &qword_2313749B8);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_71_4();
  if (!v41)
  {
LABEL_30:

    *v35 = v37;
    OUTLINED_FUNCTION_75_4();
    return;
  }

  v42 = 0;
  v43 = *(v36 + 64);
  v44 = *(v36 + 32);
  OUTLINED_FUNCTION_0_28();
  v47 = v46 & v45;
  OUTLINED_FUNCTION_41_12();
  if (!v47)
  {
LABEL_4:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v42 >= v35)
      {
        break;
      }

      ++v49;
      if (*(v36 + 64 + 8 * v42))
      {
        OUTLINED_FUNCTION_31_6();
        v47 = v51 & v50;
        goto LABEL_9;
      }
    }

    if (v37)
    {
      OUTLINED_FUNCTION_5_18();
      if (v67 != v68)
      {
        OUTLINED_FUNCTION_26_14(v66);
      }

      else
      {
        v69 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v69, v70, v36 + 64);
      }

      *(v36 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_10();
LABEL_9:
    OUTLINED_FUNCTION_49_8(v48);
    v54 = (v53 + 40 * v52);
    if (v37)
    {
      sub_2311D38A8(v54, &a20);
    }

    else
    {
      sub_2311CF324(v54, &a20);
      sub_231369EE0();
    }

    v55 = *(v37 + 40);
    sub_23136A9D0();
    sub_23136A060();
    sub_23136AA00();
    v56 = *(v37 + 32);
    OUTLINED_FUNCTION_2_18();
    v58 = *(v37 + 64 + 8 * v57);
    OUTLINED_FUNCTION_36_10();
    if (v59)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_22:
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_31_15(v63);
    sub_2311D38A8(&a20, v65 + 40 * v64);
    OUTLINED_FUNCTION_28_13();
    if (!v47)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v59)
    {
      if (v61)
      {
        break;
      }
    }

    if (v60 == v62)
    {
      v60 = 0;
    }

    OUTLINED_FUNCTION_60_5(v60);
    if (!v59)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_2312B6900@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_231361F98((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2312B6938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_2312B6974()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43908, &unk_23136EBA0);
  v4 = OUTLINED_FUNCTION_11(v47);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_64_6();
  v7 = sub_231367890();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445D0, &qword_2313749A8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_1_1();
  v49 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  v22 = *v0;
  v23 = v0[1];
  v24 = v0[2];
  v25 = v0[3];
  v26 = v0[4];
  v44 = v1;
  v48 = v24;
  if (v26)
  {
    v46 = v3;
    v27 = v25;
LABEL_7:
    v45 = (v26 - 1) & v26;
    v28 = __clz(__rbit64(v26)) | (v27 << 6);
    v29 = (*(v22 + 48) + 16 * v28);
    v30 = *v29;
    v31 = v29[1];
    (*(v10 + 16))(v15, *(v22 + 56) + *(v10 + 72) * v28, v7);
    v32 = v47;
    v33 = *(v47 + 48);
    *v21 = v30;
    *(v21 + 1) = v31;
    v34 = v15;
    v35 = v32;
    (*(v10 + 32))(&v21[v33], v34, v7);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v35);
    sub_231369EE0();
    v36 = v45;
    v3 = v46;
LABEL_8:
    *v0 = v22;
    v0[1] = v23;
    v37 = v49;
    v0[2] = v48;
    v0[3] = v25;
    v0[4] = v36;
    v38 = v0[5];
    v39 = v0[6];
    sub_2311F0440(v21, v37, &qword_27DD445D0, &qword_2313749A8);
    v40 = 1;
    if (__swift_getEnumTagSinglePayload(v37, 1, v35) != 1)
    {
      v41 = v37;
      v42 = v44;
      sub_2311F0440(v41, v44, &qword_27DD43908, &unk_23136EBA0);
      v38(v42);
      sub_2311D1F18(v42, &qword_27DD43908, &unk_23136EBA0);
      v40 = 0;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43910, &qword_2313749B0);
    __swift_storeEnumTagSinglePayload(v3, v40, 1, v43);
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= ((v24 + 64) >> 6))
      {
        v35 = v47;
        __swift_storeEnumTagSinglePayload(&v44 - v20, 1, 1, v47);
        v36 = 0;
        goto LABEL_8;
      }

      v26 = *(v23 + 8 * v27);
      ++v25;
      if (v26)
      {
        v46 = v3;
        v25 = v27;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_2312B6C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_78_3();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v31 = *v26;
  v32 = v26[1];
  v33 = v26[2];
  v34 = v26[3];
  v35 = v26[4];
  if (v35)
  {
    v36 = v26[3];
LABEL_7:
    v37 = (v35 - 1) & v35;
    v38 = __clz(__rbit64(v35)) | (v36 << 6);
    v39 = (*(v31 + 48) + 16 * v38);
    v41 = *v39;
    v40 = v39[1];
    sub_2311D1D6C(*(v31 + 56) + 32 * v38, &a9);
    *&a12 = v41;
    *(&a12 + 1) = v40;
    sub_2312250F8(&a9, &a13);
    sub_231369EE0();
    v42 = *(&a12 + 1);
    v43 = a12;
LABEL_8:
    *v26 = v31;
    v26[1] = v32;
    v26[2] = v33;
    v26[3] = v34;
    v26[4] = v37;
    if (v42)
    {
      v45 = v26[5];
      v44 = v26[6];
      *&a9 = v43;
      *(&a9 + 1) = v42;
      a10 = a13;
      a11 = a14;
      v45(&a9);
      sub_2311D1F18(&a9, &qword_27DD43558, &qword_231374890);
    }

    else
    {
      v30[1] = 0u;
      v30[2] = 0u;
      *v30 = 0u;
    }

    OUTLINED_FUNCTION_77_2();
  }

  else
  {
    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v36 >= ((v33 + 64) >> 6))
      {
        v42 = 0;
        v43 = 0;
        v37 = 0;
        a13 = 0u;
        a14 = 0u;
        a12 = 0u;
        goto LABEL_8;
      }

      v35 = *(v32 + 8 * v36);
      ++v34;
      if (v35)
      {
        v34 = v36;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2312B6DC0(uint64_t a1)
{
  v4 = sub_2313667A0();
  OUTLINED_FUNCTION_0(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2312B6ECC;

  return sub_2312B384C(a1, v9, v1 + v6, v1 + v8);
}

uint64_t sub_2312B6ECC()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_2312B7044()
{
  v1 = sub_231369D50();
  v2 = OUTLINED_FUNCTION_0_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  sub_2311F03B0(v0, &v17 - v12, &qword_27DD437B8, &qword_23136FA60);
  if (__swift_getEnumTagSinglePayload(v13, 1, v1) == 1)
  {
    return sub_23136A9F0();
  }

  (*(v4 + 32))(v9, v13, v1);
  sub_23136A9F0();
  OUTLINED_FUNCTION_40_11();
  sub_2312B71EC(v15, v16);
  sub_231369F40();
  return (*(v4 + 8))(v9, v1);
}

uint64_t sub_2312B71EC(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_13_16()
{
  *(v2 - 144) = v1 + 16;
  *(v2 - 136) = v0;
  *(v2 - 128) = v1;
  *(v2 - 112) = v1 + 32;
}

uint64_t OUTLINED_FUNCTION_24_16(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_57_9()
{

  return sub_23136A780();
}

uint64_t OUTLINED_FUNCTION_58_6()
{
  *(v2 - 104) = *(*(v1 + 56) + 8 * v0);

  return sub_231369EE0();
}

uint64_t OUTLINED_FUNCTION_67_5()
{
  v2 = *v0;
  v3 = *(v1 - 104);
  return *(v1 - 112);
}

uint64_t OUTLINED_FUNCTION_68_4()
{
  v2 = *v0;
  v3 = *(v1 - 128);
  return *(v1 - 136);
}

uint64_t OUTLINED_FUNCTION_80_3()
{
  v2 = *(v0 + 40);

  return sub_23136A9D0();
}

uint64_t OUTLINED_FUNCTION_81_2()
{

  return sub_23136A780();
}

uint64_t sub_2312B7470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  OUTLINED_FUNCTION_3_3();
  v19 = (v14 + *v14);
  v16 = *(v15 + 4);
  v17 = swift_task_alloc();
  *(v6 + 16) = v17;
  *v17 = v6;
  v17[1] = sub_2311E6A24;

  return v19(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2312B75B4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E6634(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2312B8A14(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2312B7620()
{
  OUTLINED_FUNCTION_8();
  v1[39] = v2;
  v1[40] = v0;
  v1[37] = v3;
  v1[38] = v4;
  v1[36] = v5;
  v6 = sub_231367290();
  v1[41] = v6;
  v7 = *(v6 - 8);
  OUTLINED_FUNCTION_3_3();
  v1[42] = v8;
  v10 = *(v9 + 64) + 15;
  v1[43] = swift_task_alloc();
  v11 = type metadata accessor for RankedCandidateSuggestion();
  v1[44] = v11;
  v12 = *(v11 - 8);
  OUTLINED_FUNCTION_3_3();
  v1[45] = v13;
  v15 = *(v14 + 64) + 15;
  v1[46] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44600, &qword_231374A50) - 8) + 64) + 15;
  v1[47] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2312B7768()
{
  v1 = *(v0 + 376);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44608, &qword_231374A58);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  sub_2311CF324(v3, v0 + 168);
  sub_2311CF324(v5, v0 + 208);
  sub_2311CF324(v4, v0 + 248);
  v7 = swift_allocObject();
  *(v0 + 384) = v7;
  *(v7 + 16) = v2;
  sub_2311D38A8((v0 + 168), v7 + 24);
  sub_2311D38A8((v0 + 208), v7 + 64);
  sub_2311D38A8((v0 + 248), v7 + 104);
  v8 = *(MEMORY[0x277D60B20] + 4);

  v9 = swift_task_alloc();
  *(v0 + 392) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438B8, &qword_23136EA38);
  *v9 = v0;
  v9[1] = sub_2312B7908;
  v12 = *(v0 + 376);
  v13 = *(v0 + 288);

  return MEMORY[0x2821C6B00](v13, v12, &unk_231374A68, v7, v10, v11);
}

uint64_t sub_2312B7908()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = v3[49];
  v5 = v3[48];
  v6 = v3[47];
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v10 + 400) = v9;

  sub_231228E9C(v6, &qword_27DD44600, &qword_231374A50);
  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312B7A34()
{
  v1 = v0[50];
  v2 = v0[40];
  v3 = v2[6];
  v4 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v3);
  v5 = sub_23121D8D8(v1);
  v0[51] = v5;

  v6 = *(v4 + 8);
  OUTLINED_FUNCTION_3_3();
  v14 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v0[52] = v10;
  *v10 = v0;
  v10[1] = sub_2312B7B88;
  v11 = v0[37];
  v12 = v0[38];

  return v14(v5, v11, v12, v3, v4);
}

uint64_t sub_2312B7B88()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 416);
  v5 = *(v3 + 408);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 424) = v8;

  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312B7C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = sub_2312B87D0(*(v18 + 424));
  *(v18 + 432) = v19;

  v27 = *(v19 + 16);
  *(v18 + 480) = *MEMORY[0x277D60728];
  v28 = MEMORY[0x277D84F90];
  *(v18 + 448) = 0;
  *(v18 + 456) = v28;
  *(v18 + 440) = v27;
  v29 = *(v18 + 432);
  if (v27)
  {
    if (*(v29 + 16))
    {
      v30 = *(v18 + 368);
      v31 = *(v18 + 352);
      *(v18 + 16) = 0;
      sub_231247A14(v29 + 32, v18 + 24, &qword_27DD434E8, &unk_23136E480);
      OUTLINED_FUNCTION_8_20();
      OUTLINED_FUNCTION_9_20();
      v32 = *(MEMORY[0x277D60F68] + 4);
      v33 = swift_task_alloc();
      *(v18 + 472) = v33;
      *v33 = v18;
      v29 = OUTLINED_FUNCTION_0_29(v33);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2821C6E60](v29, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v34 = *(v18 + 368);
    v35 = *(v18 + 376);
    v36 = *(v18 + 344);

    OUTLINED_FUNCTION_14();
    v38 = MEMORY[0x277D84F90];

    return v37(v38);
  }
}

uint64_t sub_2312B7E04()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 472);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312B7EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18 + 464);
  v57 = *(v18 + 448);
  v58 = *(v18 + 456);
  v20 = *(v18 + 480);
  v21 = *(v18 + 368);
  v23 = *(v18 + 344);
  v22 = *(v18 + 352);
  v25 = *(v18 + 328);
  v24 = *(v18 + 336);
  v26 = *(v18 + 304);
  v27 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_231368380();
  (*(v24 + 104))(v23, v20, v25);
  sub_2313672B0();
  sub_231247A14(v18 + 72, v18 + 120, &qword_27DD434E8, &unk_23136E480);
  v28 = *(v22 + 24);
  v29 = sub_231366E80();
  __swift_storeEnumTagSinglePayload(v21 + v28, 1, 1, v29);
  sub_2311D38A8((v18 + 120), v21 + *(v22 + 20));
  sub_231228E9C(v18 + 72, &qword_27DD434E8, &unk_23136E480);
  sub_231228E9C(v18 + 16, &qword_27DD43540, &qword_23136CA80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v18 + 456);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23126DA48(0, *(v31 + 16) + 1, 1, *(v18 + 456));
    v31 = v55;
  }

  v33 = *(v31 + 16);
  v32 = *(v31 + 24);
  if (v33 >= v32 >> 1)
  {
    sub_23126DA48(v32 > 1, v33 + 1, 1, v31);
    v31 = v56;
  }

  v35 = *(v18 + 360);
  v34 = *(v18 + 368);
  *(v31 + 16) = v33 + 1;
  sub_2311E18C4(v34, v31 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33);
  v43 = *(v18 + 440);
  v44 = *(v18 + 448) + 1;
  *(v18 + 448) = v44;
  *(v18 + 456) = v31;
  v45 = *(v18 + 432);
  if (v44 == v43)
  {
    v47 = *(v18 + 368);
    v46 = *(v18 + 376);
    v48 = *(v18 + 344);

    OUTLINED_FUNCTION_14();

    return v49(v31);
  }

  else
  {
    if (v44 >= *(v45 + 16))
    {
      __break(1u);
    }

    else
    {
      v51 = *(v18 + 368);
      v52 = *(v18 + 352);
      *(v18 + 16) = v44;
      sub_231247A14(v45 + 48 * v44 + 32, v18 + 24, &qword_27DD434E8, &unk_23136E480);
      OUTLINED_FUNCTION_8_20();
      OUTLINED_FUNCTION_9_20();
      v53 = *(MEMORY[0x277D60F68] + 4);
      v54 = swift_task_alloc();
      *(v18 + 472) = v54;
      *v54 = v18;
      v45 = OUTLINED_FUNCTION_0_29();
    }

    return MEMORY[0x2821C6E60](v45, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_2312B81C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = sub_2313694E0();
  v5[22] = v6;
  v7 = *(v6 - 8);
  v5[23] = v7;
  v8 = *(v7 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312B829C, 0, 0);
}

uint64_t sub_2312B829C()
{
  v39 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 136);
  v5 = *(*(v0 + 144) + 16);
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_231368310();
  v7 = sub_231210EEC(v1, v5);
  (*(v3 + 8))(v1, v2, v7);
  if (*(v0 + 80))
  {
    sub_2311D38A8((v0 + 56), v0 + 16);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
    v10 = *(v9 + 8);
    OUTLINED_FUNCTION_3_3();
    v37 = (v11 + *v11);
    v13 = *(v12 + 4);
    v14 = swift_task_alloc();
    *(v0 + 208) = v14;
    *v14 = v0;
    v14[1] = sub_2312B8630;
    v15 = *(v0 + 160);
    v16 = *(v0 + 168);
    v17 = *(v0 + 152);
    v18 = *(v0 + 136);

    return v37(v18, v17, v15, v16, v8, v9);
  }

  else
  {
    sub_231228E9C(v0 + 56, &qword_27DD44610, &qword_231374A78);
    if (qword_280F7C8A0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 136);
    v21 = sub_2313698C0();
    __swift_project_value_buffer(v21, qword_280F8E510);
    sub_2311CF324(v20, v0 + 96);
    v22 = sub_2313698A0();
    v23 = sub_23136A3B0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 192);
      v25 = *(v0 + 176);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v27;
      *v26 = 136315138;
      v28 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      sub_231368310();
      v29 = sub_23136A010();
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
      v32 = sub_2311CFD58(v29, v31, &v38);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_2311CB000, v22, v23, "Unable to find a scorer configured for %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x23192B930](v27, -1, -1);
      MEMORY[0x23192B930](v26, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    }

    v34 = *(v0 + 192);
    v33 = *(v0 + 200);

    OUTLINED_FUNCTION_14();
    v36 = MEMORY[0x277D84F90];

    return v35(v36);
  }
}

uint64_t sub_2312B8630()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 208);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v7 + 216) = v8;

  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2312B8710()
{
  v1 = v0[27];
  v2 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44618, qword_231374A80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23136B670;
  sub_2311CF324(v2, v3 + 32);
  *(v3 + 72) = v1;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v5 = v0[24];
  v4 = v0[25];

  OUTLINED_FUNCTION_14();

  return v6(v3);
}

uint64_t sub_2312B87D0(uint64_t a1)
{
  v12 = sub_2312B97B4(a1);
  sub_2312B75B4(&v12);
  v3 = v12;
  if (!v2)
  {
    v4 = *(v12 + 16);
    if (!v4)
    {

      return MEMORY[0x277D84F90];
    }

    v19 = MEMORY[0x277D84F90];
    sub_2311F5B70(0, v4, 0);
    v1 = v19;
    v5 = v3 + 32;
    do
    {
      sub_231247A14(v5, &v12, &qword_27DD43540, &qword_23136CA80);
      v16 = v13;
      v17 = v14;
      v18 = v15;
      v19 = v1;
      v7 = *(v1 + 16);
      v6 = *(v1 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2311F5B70(v6 > 1, v7 + 1, 1);
        v1 = v19;
      }

      *(v1 + 16) = v7 + 1;
      v8 = (v1 + 48 * v7);
      v9 = v16;
      v10 = v18;
      v8[3] = v17;
      v8[4] = v10;
      v8[2] = v9;
      v5 += 56;
      --v4;
    }

    while (v4);
  }

  return v1;
}

uint64_t sub_2312B8964(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2311DDECC;

  return sub_2312B81C8(a1, v4, v1 + 24, v1 + 64, v1 + 104);
}

uint64_t sub_2312B8A14(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23136A8A0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43540, &qword_23136CA80);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2312B8CB0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2312B8B18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2312B8B18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v23 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v4 = a3;
  v5 = *a4;
  v6 = *a4 + 56 * a3;
  v7 = result - a3;
  while (2)
  {
    v8 = v7;
    v9 = v6;
    while (1)
    {
      sub_231247A14(v9, v21, &qword_27DD43540, &qword_23136CA80);
      v10 = v9 - 56;
      sub_231247A14(v9 - 56, v19, &qword_27DD43540, &qword_23136CA80);
      v11 = v22;
      v12 = v20;
      if (v20 >= v22)
      {
        break;
      }

      sub_231228E9C(v19, &qword_27DD43540, &qword_23136CA80);
      result = sub_231228E9C(v21, &qword_27DD43540, &qword_23136CA80);
LABEL_8:
      if (!v5)
      {
        __break(1u);
        return result;
      }

      v13 = *(v9 + 48);
      v15 = *(v9 + 16);
      v14 = *(v9 + 32);
      v16 = *v9;
      v17 = *(v9 - 40);
      *v9 = *v10;
      *(v9 + 16) = v17;
      *(v9 + 32) = *(v9 - 24);
      *(v9 + 48) = *(v9 - 8);
      *v10 = v16;
      *(v9 - 40) = v15;
      *(v9 - 24) = v14;
      v9 -= 56;
      *(v10 + 48) = v13;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_13;
      }
    }

    if (v21[0] < v19[0])
    {
      sub_231228E9C(v19, &qword_27DD43540, &qword_23136CA80);
      result = sub_231228E9C(v21, &qword_27DD43540, &qword_23136CA80);
      if (v11 < v12)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    sub_231228E9C(v19, &qword_27DD43540, &qword_23136CA80);
    result = sub_231228E9C(v21, &qword_27DD43540, &qword_23136CA80);
LABEL_13:
    ++v4;
    v6 += 56;
    --v7;
    if (v4 != v23)
    {
      continue;
    }

    return result;
  }
}

void sub_2312B8CB0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_108:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    v4 = v98;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_110:
      v90 = v7 + 16;
      v91 = *(v7 + 2);
      for (i = v7; v91 >= 2; v7 = i)
      {
        if (!*a3)
        {
          goto LABEL_147;
        }

        v92 = &v7[16 * v91];
        v93 = *v92;
        v7 = &v90[2 * v91];
        v94 = *(v7 + 1);
        sub_2312B9488((*a3 + 56 * *v92), (*a3 + 56 * *v7), *a3 + 56 * v94, v8);
        if (v4)
        {
          break;
        }

        if (v94 < v93)
        {
          goto LABEL_135;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_136;
        }

        *v92 = v93;
        *(v92 + 1) = v94;
        v95 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_137;
        }

        v91 = *v90 - 1;
        sub_2311E6448(v7 + 16, v95, v7);
        *v90 = v91;
      }

LABEL_118:

      return;
    }

LABEL_144:
    v7 = sub_2311E6430(v7);
    goto LABEL_110;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = (v6 + 1);
    if ((v6 + 1) >= v5)
    {
      goto LABEL_33;
    }

    v10 = *a3;
    sub_231247A14(*a3 + 56 * v9, v107, &qword_27DD43540, &qword_23136CA80);
    sub_231247A14(v10 + 56 * v8, v105, &qword_27DD43540, &qword_23136CA80);
    if (v106 >= v108)
    {
      v12 = v108 >= v106 && v107[0] < v105[0];
      v11 = v12;
    }

    else
    {
      v11 = 1;
    }

    v101 = v11;
    i = v7;
    sub_231228E9C(v105, &qword_27DD43540, &qword_23136CA80);
    sub_231228E9C(v107, &qword_27DD43540, &qword_23136CA80);
    v13 = v8 + 2;
    v14 = 56 * v8;
    v15 = v10 + 56 * v8 + 112;
    v16 = 56 * v8 + 56;
    v17 = v9;
    do
    {
      v9 = v13;
      v4 = v17;
      v7 = v16;
      if (v13 >= v5)
      {
        break;
      }

      sub_231247A14(v15, v107, &qword_27DD43540, &qword_23136CA80);
      sub_231247A14(v15 - 56, v105, &qword_27DD43540, &qword_23136CA80);
      if (v106 >= v108)
      {
        v19 = v108 >= v106 && v107[0] < v105[0];
        v18 = v19;
      }

      else
      {
        v18 = 1;
      }

      sub_231228E9C(v105, &qword_27DD43540, &qword_23136CA80);
      sub_231228E9C(v107, &qword_27DD43540, &qword_23136CA80);
      v13 = (v9 + 1);
      v15 += 56;
      v17 = (v4 + 1);
      v16 = (v7 + 56);
    }

    while (v101 == v18);
    if (!v101)
    {
      v7 = i;
LABEL_33:
      v20 = v98;
      goto LABEL_34;
    }

    v20 = v98;
    if (v9 < v8)
    {
      goto LABEL_141;
    }

    if (v8 < v9)
    {
      v21 = v8;
      do
      {
        if (v21 != v4)
        {
          v22 = *a3;
          if (!*a3)
          {
            goto LABEL_148;
          }

          v23 = (v22 + v14);
          v24 = *(v22 + v14 + 48);
          v25 = &v7[v22];
          v27 = v23[1];
          v26 = v23[2];
          v28 = *v23;
          v30 = *(v25 + 1);
          v29 = *(v25 + 2);
          v31 = *v25;
          *(v23 + 6) = *(v25 + 6);
          v23[1] = v30;
          v23[2] = v29;
          *v23 = v31;
          *v25 = v28;
          *(v25 + 1) = v27;
          *(v25 + 2) = v26;
          *(v25 + 6) = v24;
        }

        v21 = (v21 + 1);
        v7 -= 56;
        v14 += 56;
        v12 = v21 < v4;
        v4 = (v4 - 1);
      }

      while (v12);
    }

    v7 = i;
LABEL_34:
    v32 = a3[1];
    if (v9 < v32)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_140;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v9 < v8)
    {
      goto LABEL_139;
    }

    v100 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = *(v7 + 2);
      sub_23126DB78();
      v7 = v88;
    }

    v48 = *(v7 + 2);
    v49 = v48 + 1;
    if (v48 >= *(v7 + 3) >> 1)
    {
      sub_23126DB78();
      v7 = v89;
    }

    *(v7 + 2) = v49;
    v50 = v7 + 32;
    v51 = &v7[16 * v48 + 32];
    *v51 = v8;
    *(v51 + 1) = v100;
    v103 = *a1;
    if (!*a1)
    {
      goto LABEL_149;
    }

    if (v48)
    {
      i = v7;
      while (1)
      {
        v52 = v49 - 1;
        v53 = &v50[16 * v49 - 16];
        v54 = &v7[16 * v49];
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v55 = *(v7 + 4);
          v56 = *(v7 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_76:
          if (v58)
          {
            goto LABEL_126;
          }

          v70 = *v54;
          v69 = *(v54 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_129;
          }

          v74 = *(v53 + 1);
          v75 = v74 - *v53;
          if (__OFSUB__(v74, *v53))
          {
            goto LABEL_132;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_134;
          }

          if (v72 + v75 >= v57)
          {
            if (v57 < v75)
            {
              v52 = v49 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        if (v49 < 2)
        {
          goto LABEL_128;
        }

        v77 = *v54;
        v76 = *(v54 + 1);
        v65 = __OFSUB__(v76, v77);
        v72 = v76 - v77;
        v73 = v65;
LABEL_91:
        if (v73)
        {
          goto LABEL_131;
        }

        v79 = *v53;
        v78 = *(v53 + 1);
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_133;
        }

        if (v80 < v72)
        {
          goto LABEL_105;
        }

LABEL_98:
        if (v52 - 1 >= v49)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
          goto LABEL_143;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v4 = &v50[16 * v52 - 16];
        v84 = *v4;
        v8 = v52;
        v7 = &v50[16 * v52];
        v85 = *(v7 + 1);
        sub_2312B9488((*a3 + 56 * *v4), (*a3 + 56 * *v7), *a3 + 56 * v85, v103);
        if (v20)
        {
          goto LABEL_118;
        }

        if (v85 < v84)
        {
          goto LABEL_121;
        }

        v86 = *(i + 2);
        if (v8 > v86)
        {
          goto LABEL_122;
        }

        *v4 = v84;
        v4[1] = v85;
        if (v8 >= v86)
        {
          goto LABEL_123;
        }

        v49 = v86 - 1;
        sub_2311E6448(v7 + 16, v86 - 1 - v8, v7);
        v7 = i;
        *(i + 2) = v86 - 1;
        v12 = v86 > 2;
        v20 = 0;
        if (!v12)
        {
          goto LABEL_105;
        }
      }

      v59 = &v50[16 * v49];
      v60 = *(v59 - 8);
      v61 = *(v59 - 7);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_124;
      }

      v64 = *(v59 - 6);
      v63 = *(v59 - 5);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_125;
      }

      v66 = *(v54 + 1);
      v67 = v66 - *v54;
      if (__OFSUB__(v66, *v54))
      {
        goto LABEL_127;
      }

      v65 = __OFADD__(v57, v67);
      v68 = v57 + v67;
      if (v65)
      {
        goto LABEL_130;
      }

      if (v68 >= v62)
      {
        v82 = *v53;
        v81 = *(v53 + 1);
        v65 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v65)
        {
          goto LABEL_138;
        }

        if (v57 < v83)
        {
          v52 = v49 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_76;
    }

LABEL_105:
    v98 = v20;
    v5 = a3[1];
    v6 = v100;
    if (v100 >= v5)
    {
      goto LABEL_108;
    }
  }

  v33 = &v8[a4];
  if (__OFADD__(v8, a4))
  {
    goto LABEL_142;
  }

  if (v33 >= v32)
  {
    v33 = a3[1];
  }

  if (v33 < v8)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v9 == v33)
  {
    goto LABEL_55;
  }

  v99 = v20;
  i = v7;
  v34 = *a3;
  v35 = *a3 + 56 * v9;
  v102 = v33;
  v36 = &v8[-v9];
LABEL_43:
  v37 = v9;
  v4 = v36;
  v38 = v35;
  while (1)
  {
    sub_231247A14(v38, v107, &qword_27DD43540, &qword_23136CA80);
    v39 = v38 - 56;
    sub_231247A14(v38 - 56, v105, &qword_27DD43540, &qword_23136CA80);
    v40 = v108;
    v41 = v106;
    if (v106 >= v108)
    {
      if (v107[0] >= v105[0])
      {
        v4 = &qword_27DD43540;
        sub_231228E9C(v105, &qword_27DD43540, &qword_23136CA80);
        sub_231228E9C(v107, &qword_27DD43540, &qword_23136CA80);
LABEL_53:
        v9 = v37 + 1;
        v35 += 56;
        v36 = (v36 - 1);
        if ((v37 + 1) == v102)
        {
          v9 = v102;
          v7 = i;
          v20 = v99;
          goto LABEL_55;
        }

        goto LABEL_43;
      }

      sub_231228E9C(v105, &qword_27DD43540, &qword_23136CA80);
      sub_231228E9C(v107, &qword_27DD43540, &qword_23136CA80);
      if (v40 < v41)
      {
        goto LABEL_53;
      }
    }

    else
    {
      sub_231228E9C(v105, &qword_27DD43540, &qword_23136CA80);
      sub_231228E9C(v107, &qword_27DD43540, &qword_23136CA80);
    }

    if (!v34)
    {
      break;
    }

    v42 = *(v38 + 48);
    v44 = *(v38 + 16);
    v43 = *(v38 + 32);
    v45 = *v38;
    v46 = *(v38 - 40);
    *v38 = *v39;
    *(v38 + 16) = v46;
    *(v38 + 32) = *(v38 - 24);
    *(v38 + 48) = *(v38 - 8);
    *v39 = v45;
    *(v38 - 40) = v44;
    *(v38 - 24) = v43;
    v38 -= 56;
    *(v39 + 48) = v42;
    v47 = __CFADD__(v4, 1);
    v4 = (v4 + 1);
    if (v47)
    {
      goto LABEL_53;
    }
  }

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
}

uint64_t sub_2312B9488(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 < v9)
  {
    sub_23126F804(a1, (a2 - a1) / 56, a4);
    v10 = &v4[56 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }

      sub_231247A14(v6, v37, &qword_27DD43540, &qword_23136CA80);
      sub_231247A14(v4, v35, &qword_27DD43540, &qword_23136CA80);
      v12 = v38;
      v13 = v36;
      if (v36 < v38)
      {
        break;
      }

      if (v37[0] >= v35[0])
      {
        sub_231228E9C(v35, &qword_27DD43540, &qword_23136CA80);
        sub_231228E9C(v37, &qword_27DD43540, &qword_23136CA80);
      }

      else
      {
        sub_231228E9C(v35, &qword_27DD43540, &qword_23136CA80);
        sub_231228E9C(v37, &qword_27DD43540, &qword_23136CA80);
        if (v12 >= v13)
        {
          goto LABEL_9;
        }
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 56;
      if (!v15)
      {
        goto LABEL_10;
      }

LABEL_11:
      v7 += 56;
    }

    sub_231228E9C(v35, &qword_27DD43540, &qword_23136CA80);
    sub_231228E9C(v37, &qword_27DD43540, &qword_23136CA80);
LABEL_9:
    v14 = v6;
    v15 = v7 == v6;
    v6 += 56;
    if (v15)
    {
      goto LABEL_11;
    }

LABEL_10:
    v16 = *v14;
    v17 = *(v14 + 1);
    v18 = *(v14 + 2);
    *(v7 + 6) = *(v14 + 6);
    *(v7 + 1) = v17;
    *(v7 + 2) = v18;
    *v7 = v16;
    goto LABEL_11;
  }

  sub_23126F804(a2, (a3 - a2) / 56, a4);
  v19 = &v4[56 * v9];
LABEL_20:
  v20 = (v6 - 56);
  v5 -= 56;
  v21 = (v19 - 56);
  for (i = v6; ; v6 = i)
  {
    v10 = (v21 + 56);
    if (v21 + 56 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_231247A14(v21, v37, &qword_27DD43540, &qword_23136CA80);
    v23 = v20;
    sub_231247A14(v20, v35, &qword_27DD43540, &qword_23136CA80);
    v24 = v36 < v38 || v38 >= v36 && v37[0] < v35[0];
    sub_231228E9C(v35, &qword_27DD43540, &qword_23136CA80);
    sub_231228E9C(v37, &qword_27DD43540, &qword_23136CA80);
    if (v24)
    {
      v19 = (v21 + 56);
      v6 = v23;
      if ((v5 + 56) != i)
      {
        v29 = *v23;
        v30 = *(v23 + 1);
        v31 = *(v23 + 2);
        *(v5 + 48) = *(v23 + 6);
        *(v5 + 16) = v30;
        *(v5 + 32) = v31;
        *v5 = v29;
        v6 = v23;
      }

      goto LABEL_20;
    }

    if (v10 != (v5 + 56))
    {
      v26 = *v21;
      v27 = *(v21 + 16);
      v28 = *(v21 + 32);
      *(v5 + 48) = *(v21 + 48);
      *(v5 + 16) = v27;
      *(v5 + 32) = v28;
      *v5 = v26;
    }

    v5 -= 56;
    v21 -= 56;
    v20 = v23;
  }

LABEL_41:
  v32 = (v10 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[56 * v32])
  {
    memmove(v6, v4, 56 * v32);
  }

  return 1;
}

uint64_t sub_2312B97B4(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = *(result + 16);
  v4 = result + 32;
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90] + 32;
  v7 = &qword_27DD434E8;
  v25 = v3;
  while (1)
  {
    if (v3 == v2)
    {
      v22 = v5[3];
      if (v22 >= 2)
      {
        v23 = v22 >> 1;
        v18 = __OFSUB__(v23, v1);
        v24 = v23 - v1;
        if (v18)
        {
          goto LABEL_25;
        }

        v5[2] = v24;
      }

      return v5;
    }

    *&v26[0] = v2;
    result = sub_231247A14(v4, v26 + 8, v7, &unk_23136E480);
    v28 = v26[0];
    v29 = v26[1];
    v30 = v26[2];
    v31 = v27;
    if (!v1)
    {
      v8 = v5[3];
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_24;
      }

      v9 = v7;
      v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v10 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43538, &qword_231374A70);
      v12 = swift_allocObject();
      v13 = (_swift_stdlib_malloc_size(v12) - 32) / 56;
      v12[2] = v11;
      v12[3] = 2 * v13;
      v14 = (v12 + 4);
      v15 = v5[3];
      v16 = v15 >> 1;
      if (v5[2])
      {
        if (v12 != v5 || v14 >= &v5[7 * v16 + 4])
        {
          memmove(v12 + 4, v5 + 4, 56 * v16);
        }

        v5[2] = 0;
      }

      v6 = v14 + 56 * v16;
      v1 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - (v15 >> 1);

      v5 = v12;
      v7 = v9;
      v3 = v25;
    }

    v18 = __OFSUB__(v1--, 1);
    if (v18)
    {
      break;
    }

    v19 = v28;
    v20 = v29;
    v21 = v30;
    *(v6 + 48) = v31;
    *(v6 + 16) = v20;
    *(v6 + 32) = v21;
    *v6 = v19;
    v6 += 56;
    v4 += 48;
    ++v2;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2312B9A18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2;
  v51 = a1;
  v45 = a2;
  v5 = sub_2313698C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = &v41 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = *__swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_231343BB8(v48);
  sub_231369100();
  v15 = sub_2313698A0();
  v16 = sub_23136A3A0();
  if (os_log_type_enabled(v15, v16))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_11_8(&dword_2311CB000, v17, v18, "fetching ECDF data from trial");
    OUTLINED_FUNCTION_29();
  }

  v19 = *(v6 + 8);
  v19(v13, v5);
  v20 = v49;
  v21 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v22 = (*(v21 + 48))(0x6174614466646365, 0xE800000000000000, 0xD000000000000019, 0x800000023137A580, v20, v21);
  v23 = static TrialUtils.getDirectoryPath(triLevel:)(v22);
  if (!v3)
  {
    v41 = v19;
    v42 = v5;
    if (v24)
    {
      v46 = v23;
      v47 = v24;
      MEMORY[0x23192A730](0x746144666463652FLL, 0xEA00000000002F61);
      v25 = v46;
      v26 = v47;
      v27 = v44;
      sub_231369100();
      sub_231369EE0();
      v28 = sub_2313698A0();
      v29 = sub_23136A3A0();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v43 = v25;
        v31 = v30;
        v32 = swift_slowAlloc();
        v46 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_2311CFD58(v43, v26, &v46);
        _os_log_impl(&dword_2311CB000, v28, v29, "found ecdfLocation as %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        OUTLINED_FUNCTION_29();
        v25 = v43;
        OUTLINED_FUNCTION_29();
      }

      v41(v27, v42);
      sub_23134EDB8(v51, v25, v26, v45);
    }

    else
    {
      v33 = v43;
      sub_231369100();
      v34 = sub_2313698A0();
      v35 = sub_23136A3A0();
      if (os_log_type_enabled(v34, v35))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_11_8(&dword_2311CB000, v36, v37, "User did not set ECDF data in trial rollout/experiment, falling back to using default normalizer");
        OUTLINED_FUNCTION_29();
      }

      v41(v33, v42);
      v38 = v4[10];
      v39 = v4[11];
      __swift_project_boxed_opaque_existential_1(v4 + 7, v38);
      (*(v39 + 8))(v51, v38, v39);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v48);
}

uint64_t sub_2312B9E74()
{
  v1[17] = v0;
  v2 = sub_231367C70();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312B9F2C()
{
  if (*(*(v0 + 136) + 368) == 1)
  {
    v3 = type metadata accessor for DefaultCategoryService();
    v4 = &off_2845F3230;
  }

  else
  {
    v3 = type metadata accessor for NoOpCategoryService();
    v4 = &off_2845F3220;
  }

  v5 = OUTLINED_FUNCTION_15_16();
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  *(v0 + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43290, &qword_23136BD40);
  swift_allocObject();
  *(v0 + 168) = sub_2311E98BC();
  v6 = sub_2312BA9EC(v0 + 16);
  *(v0 + 176) = v6;
  v7 = *(v6 + 16);
  *(v0 + 184) = v7;
  if (v7)
  {
    *(v0 + 296) = *MEMORY[0x277D60AE0];
    *(v0 + 192) = 0;
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
    sub_2311CF324(v6 + 32, v0 + 56);
    v12 = OUTLINED_FUNCTION_16_20();
    v13(v12);
    v14 = OUTLINED_FUNCTION_2_19();
LABEL_16:
    v16 = 0;

    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  v14 = sub_2312BAE0C(v0 + 16);
  *(v0 + 200) = v14;
  v17 = *(v14 + 16);
  *(v0 + 208) = v17;
  if (!v17)
  {
    v23 = *(v0 + 168);

LABEL_15:
    *(v0 + 272) = v23;
    v36 = *(v0 + 160);
    sub_231367C40();
    type metadata accessor for WritingToolSignalExtractor();
    v37 = OUTLINED_FUNCTION_15_16();
    v14 = OUTLINED_FUNCTION_0_30(v37);
    v15 = v23;
    goto LABEL_16;
  }

  v18 = 0;
  *(v0 + 300) = *MEMORY[0x277D60DB8];
  *(v0 + 304) = *MEMORY[0x277D60AC0];
  while (1)
  {
    *(v0 + 216) = v18;
    if (v18 >= *(v14 + 16))
    {
      break;
    }

    sub_2311CF324(v14 + 40 * v18 + 32, v0 + 96);
    v19 = sub_231368200();
    OUTLINED_FUNCTION_11_20(v19);
    if (v20)
    {
      v24 = sub_231368210();
      OUTLINED_FUNCTION_10_21(v24);
      *(v0 + 248) = v25;
      v26 = *(v25 + 80);
      OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_8_21(*(v27 + 72));
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
      v29 = sub_2313681A0();
      OUTLINED_FUNCTION_7_0(v29);
      (*(v30 + 104))(v2, v1);
      v31 = OUTLINED_FUNCTION_14_21();
      v32(v31);
      v33 = OUTLINED_FUNCTION_15_19();
      v34(v33);
      v14 = OUTLINED_FUNCTION_1_28();
      v15 = v39;
      goto LABEL_16;
    }

    v21 = *(v0 + 208);
    v22 = *(v0 + 216) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    if (v22 == v21)
    {
      v35 = *(v0 + 200);

      v23 = *(v0 + 168);
      goto LABEL_15;
    }

    v18 = *(v0 + 216) + 1;
    v14 = *(v0 + 200);
  }

  __break(1u);
  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2312BA204()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_13_17();

  (*(v4 + 8))(v1, v3);
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312BA2A4()
{
  v3 = *(v0 + 184);
  v4 = *(v0 + 192) + 1;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  if (v4 != v3)
  {
    v15 = *(v0 + 192);
    *(v0 + 192) = v15 + 1;
    v16 = *(v0 + 296);
    v17 = *(v0 + 168);
    v19 = *(v0 + 152);
    v18 = *(v0 + 160);
    v20 = *(v0 + 144);
    sub_2311CF324(*(v0 + 176) + 40 * v15 + 72, v0 + 56);
    v21 = OUTLINED_FUNCTION_16_20();
    v23 = v22(v21);
    v6 = OUTLINED_FUNCTION_2_19(v23);
LABEL_13:
    v8 = 0;

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  v5 = *(v0 + 176);

  v6 = sub_2312BAE0C(v0 + 16);
  *(v0 + 200) = v6;
  v9 = *(v6 + 16);
  *(v0 + 208) = v9;
  if (!v9)
  {
    v24 = *(v0 + 168);

LABEL_12:
    *(v0 + 272) = v24;
    v37 = *(v0 + 160);
    sub_231367C40();
    type metadata accessor for WritingToolSignalExtractor();
    v38 = OUTLINED_FUNCTION_15_16();
    v6 = OUTLINED_FUNCTION_0_30(v38);
    v7 = v24;
    goto LABEL_13;
  }

  v10 = 0;
  *(v0 + 300) = *MEMORY[0x277D60DB8];
  *(v0 + 304) = *MEMORY[0x277D60AC0];
  while (1)
  {
    *(v0 + 216) = v10;
    if (v10 >= *(v6 + 16))
    {
      break;
    }

    sub_2311CF324(v6 + 40 * v10 + 32, v0 + 96);
    v11 = sub_231368200();
    OUTLINED_FUNCTION_11_20(v11);
    if (v12)
    {
      v25 = sub_231368210();
      OUTLINED_FUNCTION_10_21(v25);
      *(v0 + 248) = v26;
      v27 = *(v26 + 80);
      OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_8_21(*(v28 + 72));
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
      v30 = sub_2313681A0();
      OUTLINED_FUNCTION_7_0(v30);
      (*(v31 + 104))(v2, v1);
      v32 = OUTLINED_FUNCTION_14_21();
      v33(v32);
      v34 = OUTLINED_FUNCTION_15_19();
      v35(v34);
      v6 = OUTLINED_FUNCTION_1_28();
      v7 = v40;
      goto LABEL_13;
    }

    v13 = *(v0 + 208);
    v14 = *(v0 + 216) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    if (v14 == v13)
    {
      v36 = *(v0 + 200);

      v24 = *(v0 + 168);
      goto LABEL_12;
    }

    v10 = *(v0 + 216) + 1;
    v6 = *(v0 + 200);
  }

  __break(1u);
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312BA510()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  OUTLINED_FUNCTION_13_17();

  (*(v4 + 8))(v1, v3);
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312BA5B0()
{
  v1 = *(v0 + 264) + 1;
  if (v1 == *(v0 + 232))
  {
    v2 = *(v0 + 224);

    while (1)
    {
      v3 = *(v0 + 208);
      v4 = *(v0 + 216) + 1;
      v5 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
      if (v4 == v3)
      {
        v15 = *(v0 + 200);

        v16 = *(v0 + 160);
        v17 = *(v0 + 168);
        *(v0 + 272) = v17;
        sub_231367C40();
        type metadata accessor for WritingToolSignalExtractor();
        v18 = OUTLINED_FUNCTION_15_16();
        v5 = OUTLINED_FUNCTION_0_30(v18);
        v6 = v17;
        goto LABEL_11;
      }

      v8 = *(v0 + 216) + 1;
      *(v0 + 216) = v8;
      v9 = *(v0 + 200);
      if (v8 >= *(v9 + 16))
      {
        break;
      }

      sub_2311CF324(v9 + 40 * v8 + 32, v0 + 96);
      v10 = sub_231368200();
      OUTLINED_FUNCTION_11_20(v10);
      if (v11)
      {
        v19 = sub_231368210();
        v1 = 0;
        *(v0 + 240) = v19;
        v33 = v19;
        v20 = *(v19 - 8);
        v13 = v20;
        *(v0 + 248) = v20;
        v14 = *(v20 + 80);
        *(v0 + 308) = v14;
        v12 = *(v20 + 72);
        *(v0 + 256) = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = *(v0 + 248);
    v12 = *(v0 + 256);
    LOBYTE(v14) = *(v0 + 308);
    v33 = *(v0 + 240);
    v10 = *(v0 + 224);
LABEL_10:
    *(v0 + 264) = v1;
    v21 = *(v0 + 304);
    v22 = *(v0 + 300);
    v24 = *(v0 + 160);
    v23 = *(v0 + 168);
    v25 = *(v0 + 144);
    v26 = *(v0 + 152);
    v27 = v10 + ((v14 + 32) & ~v14) + v12 * v1;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
    v29 = sub_2313681A0();
    OUTLINED_FUNCTION_7_0(v29);
    (*(v30 + 104))(v24, v22);
    (*(v13 + 16))(v24 + v28, v27, v33);
    v31 = (*(v26 + 104))(v24, v21, v25);
    v5 = OUTLINED_FUNCTION_1_28(v31);
    v6 = v23;
LABEL_11:
    v7 = 0;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312BA7FC()
{
  v1 = v0[35];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43010, qword_231374B70);
  v6 = swift_allocBox();
  (*(v5 + 16))(v7, v3, v4);
  sub_2312BB0D8(v1, v6, v2);

  (*(v5 + 8))(v3, v4);
  v8 = v0[34];

  return MEMORY[0x2822009F8](sub_2312BA8EC, v8, 0);
}

uint64_t sub_2312BA8EC()
{
  v1 = *(v0 + 168);
  *(v0 + 288) = sub_2311E9B44();
  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2312BA950()
{
  v1 = v0[36];
  v3 = v0[20];
  v2 = v0[21];

  type metadata accessor for PipelineConfigurationSignalExtractorProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_2312BA9EC(uint64_t a1)
{
  sub_2311CF324(a1, &v35);
  v2 = type metadata accessor for MentionedAppSignalExtractor();
  v3 = swift_allocObject();
  sub_2311D38A8(&v35, v3 + 16);
  v32 = type metadata accessor for HomeScreenSignalExtractor();
  v33 = OUTLINED_FUNCTION_15_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F30, &unk_231370D70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23136C1C0;
  *(v4 + 56) = v2;
  *(v4 + 64) = sub_2312BB604(qword_280F7F4C8, type metadata accessor for MentionedAppSignalExtractor);
  *(v4 + 32) = v3;
  sub_2311CF324(a1, &v35);
  v5 = type metadata accessor for OpenAppSignalExtractor();
  v6 = swift_allocObject();
  sub_2311D38A8(&v35, v6 + 16);
  *(v6 + 56) = 1;
  *(v4 + 96) = v5;
  OUTLINED_FUNCTION_3_25();
  *(v4 + 104) = sub_2312BB604(v7, v8);
  *(v4 + 72) = v6;
  v34 = v3;

  sub_231367F60();

  v9 = v36;
  v31 = v37;
  v10 = __swift_project_boxed_opaque_existential_1(&v35, v36);
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = *(v11 + 16);
  v14(&v31 - v13);
  sub_23126DE08();
  v16 = v15;
  v38 = v15;
  v17 = *(v15 + 16);
  if (v17 >= *(v15 + 24) >> 1)
  {
    sub_23126DE08();
    v16 = v15;
    v38 = v15;
  }

  MEMORY[0x28223BE20](v15);
  (v14)(&v31 - v13, &v31 - v13, v9);
  sub_23120FF64(v17, &v31 - v13, &v38, v9, *(v31 + 8));
  (*(v11 + 8))(&v31 - v13, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(&v35);
  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  v20 = v19 + 1;
  v21 = v33;

  if (v19 >= v18 >> 1)
  {
    sub_23126DE08();
    v16 = v29;
  }

  v36 = v32;
  OUTLINED_FUNCTION_4_20();
  v37 = sub_2312BB604(v22, v23);
  *&v35 = v21;
  *(v16 + 16) = v20;
  sub_2311D38A8(&v35, v16 + 40 * v19 + 32);
  v24 = type metadata accessor for ConversationalContinuerSignalExtractor();
  v25 = OUTLINED_FUNCTION_15_16();
  v26 = *(v16 + 24);
  v27 = v19 + 2;
  if (v27 > (v26 >> 1))
  {
    OUTLINED_FUNCTION_7_17(v26);
    sub_23126DE08();
    v16 = v30;
  }

  v36 = v24;
  v37 = sub_2312BB604(qword_280F7D130, type metadata accessor for ConversationalContinuerSignalExtractor);
  *&v35 = v25;
  *(v16 + 16) = v27;
  sub_2311D38A8(&v35, v16 + 40 * v20 + 32);
  return v16;
}

uint64_t sub_2312BAE0C(uint64_t a1)
{
  v2 = type metadata accessor for HomeScreenSignalExtractor();
  v3 = OUTLINED_FUNCTION_15_16();
  v4 = type metadata accessor for AppEntityCountBasedSignalExtractor();
  v5 = swift_allocObject();
  type metadata accessor for AppEntityTypeTransformers();
  swift_allocObject();
  *(v5 + 16) = sub_23123E6EC();
  sub_23126DE08();
  v7 = v6;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    OUTLINED_FUNCTION_7_17(v8);
    sub_23126DE08();
    v7 = v21;
  }

  v25 = v4;
  v26 = sub_2312BB604(qword_280F7D7E8, type metadata accessor for AppEntityCountBasedSignalExtractor);
  *&v24 = v5;
  *(v7 + 16) = v10;
  sub_2311D38A8(&v24, v7 + 40 * v9 + 32);
  v11 = *(v7 + 24);
  v12 = v9 + 2;

  if ((v9 + 2) > (v11 >> 1))
  {
    sub_23126DE08();
    v7 = v22;
  }

  v25 = v2;
  OUTLINED_FUNCTION_4_20();
  v26 = sub_2312BB604(v13, v14);
  *&v24 = v3;
  *(v7 + 16) = v12;
  sub_2311D38A8(&v24, v7 + 40 * v10 + 32);
  sub_2311CF324(a1, &v24);
  v15 = type metadata accessor for OpenAppSignalExtractor();
  v16 = swift_allocObject();
  sub_2311D38A8(&v24, v16 + 16);
  *(v16 + 56) = 1;
  v17 = *(v7 + 24);
  if ((v9 + 3) > (v17 >> 1))
  {
    OUTLINED_FUNCTION_7_17(v17);
    sub_23126DE08();
    v7 = v23;
  }

  v25 = v15;
  OUTLINED_FUNCTION_3_25();
  v26 = sub_2312BB604(v18, v19);
  *&v24 = v16;
  *(v7 + 16) = v9 + 3;
  sub_2311D38A8(&v24, v7 + 40 * v12 + 32);
  return v7;
}

uint64_t sub_2312BB068()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_2311F07B0(__dst);
  return swift_deallocClassInstance();
}

uint64_t sub_2312BB0D8(uint64_t a1, unint64_t a2, void *a3)
{
  v41 = sub_2313698C0();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for WritingToolSignalExtractor();
  v52[3] = v43;
  v42 = sub_2312BB604(qword_280F7F7B0, type metadata accessor for WritingToolSignalExtractor);
  v52[4] = v42;
  v52[0] = a1;

  sub_2313690F0();
  sub_2311CF324(v52, &v49);
  v10 = a2 & 0x1FFFFFFFFFFFFFFFLL;

  v11 = sub_2313698A0();
  v12 = sub_23136A3A0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = a1;
    v38 = v14;
    *&v44 = v14;
    *v13 = 136315650;
    sub_2311CF324(&v49, &v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43028, &qword_23136B920);
    v15 = sub_23136A010();
    v39 = a2 & 0x1FFFFFFFFFFFFFFFLL;
    v16 = v15;
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1Tm(&v49);
    v19 = sub_2311CFD58(v16, v18, &v44);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    sub_23120EB78();
    v22 = sub_2311CFD58(v20, v21, &v44);

    *(v13 + 14) = v22;
    v10 = v39;
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_2311CFD58(a3[16], a3[17], &v44);
    _os_log_impl(&dword_2311CB000, v11, v12, "adding %s against %s for provider of type %s", v13, 0x20u);
    v23 = v38;
    swift_arrayDestroy();
    a1 = v40;
    MEMORY[0x23192B930](v23, -1, -1);
    MEMORY[0x23192B930](v13, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v49);
  }

  (*(v6 + 8))(v9, v41);
  swift_beginAccess();
  v24 = a3[14];
  sub_231369EE0();
  v25 = sub_2312177D0(a2, v24);

  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = *(v26 + 16);
    sub_23126DE08();
    v26 = v36;
  }

  v27 = *(v26 + 16);
  if (v27 >= *(v26 + 24) >> 1)
  {
    sub_23126DE08();
    v26 = v37;
  }

  *(&v50 + 1) = v43;
  v51 = v42;
  *&v49 = a1;
  *(v26 + 16) = v27 + 1;
  sub_2311D38A8(&v49, v26 + 40 * v27 + 32);
  swift_beginAccess();

  v28 = a3[14];
  swift_isUniquelyReferenced_nonNull_native();
  *&v46 = a3[14];
  sub_231259C20();
  a3[14] = v46;
  swift_endAccess();
  if (a2 >> 61 == 6)
  {
    v29 = *(v10 + 24);
    sub_231210ACC(&v49, *(v10 + 16));
    sub_231210ACC(&v46, v29);
    v30 = type metadata accessor for JointProviderKeyExtractor();
    v31 = swift_allocObject();
    v32 = v50;
    *(v31 + 16) = v49;
    *(v31 + 32) = v32;
    v33 = v47;
    *(v31 + 56) = v46;
    *(v31 + 48) = v51;
    *(v31 + 72) = v33;
    *(v31 + 88) = v48;
    *(&v50 + 1) = v30;
    v51 = &off_2845F5A70;
    *&v49 = v31;
  }

  else
  {
    sub_231210ACC(&v49, a2);
  }

  sub_2312108A0(&v49, &v44);
  if (v45)
  {
    sub_2311D38A8(&v44, &v46);
    __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
    sub_23120E294();
    sub_231210910(&v49);
    __swift_destroy_boxed_opaque_existential_1Tm(&v46);
  }

  else
  {
    sub_231210910(&v49);
    sub_231210910(&v44);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v52);
}

uint64_t sub_2312BB604(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_13_17()
{

  sub_231210180();
}

uint64_t sub_2312BB684(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_231367C70();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312BB750, 0, 0);
}

uint64_t sub_2312BB750()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2313677D0();
  sub_231367C40();
  v7 = sub_231367C60();
  v8 = *(v4 + 8);
  v8(v2, v3);
  v8(v1, v3);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2313707C0;
    sub_2313692F0();
    *(v9 + 32) = sub_231369290();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v0[5];
  v10 = v0[6];

  v12 = v0[1];

  return v12(v9);
}

uint64_t sub_2312BB8BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23120B320;

  return sub_2312BB684(a1);
}

void sub_2312BB950()
{
  sub_2312BB9DC(qword_280F7F7B0);

  JUMPOUT(0x2319284B0);
}

uint64_t sub_2312BB9DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WritingToolSignalExtractor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2312BBA1C()
{
  OUTLINED_FUNCTION_11_0();
  v95 = sub_2313698C0();
  v0 = OUTLINED_FUNCTION_0_0(v95);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_4();
  v7 = v6 - v5;
  v8 = sub_231369D60();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v91 = v85 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44628, &qword_231374C20);
  v20 = OUTLINED_FUNCTION_40_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v103 = (v85 - v27);
  v28 = sub_2313699D0();
  v30 = 0;
  v32 = v28 + 64;
  v31 = *(v28 + 64);
  v92 = v11;
  v93 = v28;
  v33 = 1 << *(v28 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v31;
  v36 = (v33 + 63) >> 6;
  v89 = v11 + 16;
  v102 = (v11 + 32);
  v98 = v11 + 8;
  v94 = (v2 + 8);
  v87 = MEMORY[0x277D84F98];
  *&v29 = 136315138;
  v88 = v29;
  v100 = v8;
  v101 = v7;
  v90 = v25;
  v96 = v36;
  v97 = v28 + 64;
  v99 = v16;
  while (2)
  {
    v37 = v103;
    if (!v35)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v38 = v30;
LABEL_10:
      v39 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v40 = v39 | (v38 << 6);
      v41 = v92;
      v42 = (*(v93 + 48) + 16 * v40);
      v44 = *v42;
      v43 = v42[1];
      v45 = v91;
      (*(v92 + 16))(v91, *(v93 + 56) + *(v92 + 72) * v40, v8);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44630, qword_231374C28);
      v47 = *(v46 + 48);
      v48 = v90;
      *v90 = v44;
      *(v48 + 1) = v43;
      v49 = v45;
      v25 = v48;
      (*(v41 + 32))(&v48[v47], v49, v8);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v46);
      sub_231369EE0();
      v7 = v101;
      v37 = v103;
LABEL_11:
      sub_2312BD46C(v25, v37);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44630, qword_231374C28);
      if (__swift_getEnumTagSinglePayload(v37, 1, v50) == 1)
      {

        OUTLINED_FUNCTION_9_0();
        return;
      }

      v51 = v37;
      v53 = *v37;
      v52 = v37[1];
      (*v102)(v16, v51 + *(v50 + 48), v8);
      sub_2312BC08C();
      if (!v55)
      {
        goto LABEL_17;
      }

      v8 = v54;
      v16 = v55;
      v56 = HIBYTE(v55) & 0xF;
      if ((v55 & 0x2000000000000000) == 0)
      {
        v56 = v54 & 0xFFFFFFFFFFFFLL;
      }

      if (v56)
      {
        break;
      }

LABEL_17:
      sub_231369130();
      sub_231369EE0();
      v57 = sub_2313698A0();
      v8 = sub_23136A3A0();

      if (os_log_type_enabled(v57, v8))
      {
        v16 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v104 = v58;
        *v16 = v88;
        v59 = sub_2311CFD58(v53, v52, &v104);

        *(v16 + 4) = v59;
        _os_log_impl(&dword_2311CB000, v57, v8, "toolInvocationParametersDisplayStrings(): Cannot get display string for parameterKey %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        v7 = v101;
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();
      }

      else
      {
      }

      (*v94)(v7, v95);
      v60 = OUTLINED_FUNCTION_3_26();
      v61(v60);
      v37 = v103;
      v36 = v96;
      v32 = v97;
      if (!v35)
      {
LABEL_6:
        while (1)
        {
          v38 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v38 >= v36)
          {
            v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44630, qword_231374C28);
            __swift_storeEnumTagSinglePayload(v25, 1, 1, v62);
            v35 = 0;
            goto LABEL_11;
          }

          v35 = *(v32 + 8 * v38);
          ++v30;
          if (v35)
          {
            v30 = v38;
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_34;
      }
    }

    v63 = v87;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v63;
    v64 = sub_231215F6C(v53, v52);
    v66 = *(v63 + 16);
    v67 = (v65 & 1) == 0;
    v68 = __OFADD__(v66, v67);
    v69 = v66 + v67;
    if (v68)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      break;
    }

    v70 = v64;
    LODWORD(v87) = v65;
    v85[1] = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43700, &qword_23136D528);
    if ((sub_23136A700() & 1) == 0)
    {
      if (v87)
      {
        goto LABEL_30;
      }

LABEL_27:
      v73 = v104;
      *(v104 + 8 * (v70 >> 6) + 64) |= 1 << v70;
      v74 = (*(v73 + 48) + 16 * v70);
      *v74 = v53;
      v74[1] = v52;
      v75 = v73;
      v76 = (*(v73 + 56) + 16 * v70);
      *v76 = v8;
      v76[1] = v16;
      v77 = OUTLINED_FUNCTION_3_26();
      v78(v77);
      v79 = *(v75 + 16);
      v68 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (!v68)
      {
        v87 = v75;
        *(v75 + 16) = v80;
        goto LABEL_31;
      }

      goto LABEL_35;
    }

    v71 = sub_231215F6C(v53, v52);
    if ((v87 & 1) == (v72 & 1))
    {
      v70 = v71;
      if ((v87 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_30:

      v87 = v104;
      v81 = (*(v104 + 56) + 16 * v70);
      v82 = v81[1];
      *v81 = v8;
      v81[1] = v16;

      v83 = OUTLINED_FUNCTION_3_26();
      v84(v83);
LABEL_31:
      v36 = v96;
      v32 = v97;
      continue;
    }

    break;
  }

  sub_23136A970();
  __break(1u);
}

void sub_2312BC08C()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v3 = sub_2313698C0();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_18();
  v9 = sub_231369D00();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v17 = v16 - v15;
  v18 = sub_231369D60();
  v19 = OUTLINED_FUNCTION_0_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  v26 = v25 - v24;
  (*(v21 + 16))(v25 - v24, v2, v18);
  if ((*(v21 + 88))(v26, v18) == *MEMORY[0x277D72E38])
  {
    (*(v21 + 96))(v26, v18);
    v27 = *(v12 + 32);
    v28 = OUTLINED_FUNCTION_9_22();
    v29(v28);
    sub_2312BC3E0();
    (*(v12 + 8))(v17, v9);
  }

  else
  {
    sub_231369130();
    v30 = sub_2313698A0();
    v31 = sub_23136A3A0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v32 = 136315138;
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44620, &qword_231374C18);
      v33 = sub_23136A010();
      v35 = v6;
      v36 = sub_2311CFD58(v33, v34, &v38);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2311CB000, v30, v31, "displayStringForConcreteResolvable(): not handling for case: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v35 + 8))(v0, v3);
    }

    else
    {

      (*(v6 + 8))(v0, v3);
    }

    (*(v21 + 8))(v26, v18);
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_2312BC3E0()
{
  OUTLINED_FUNCTION_11_0();
  v124 = v1;
  v2 = sub_231369BE0();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v114 = v4;
  v115 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v113 = v8 - v7;
  OUTLINED_FUNCTION_18();
  v9 = sub_231369C00();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v120 = v11;
  v121 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v119 = v15 - v14;
  OUTLINED_FUNCTION_18();
  v16 = sub_231369CA0();
  v17 = OUTLINED_FUNCTION_0_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_4();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  v26 = OUTLINED_FUNCTION_40_0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22();
  v112 = v29 - v30;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v31);
  v118 = &v111 - v32;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v33);
  v35 = &v111 - v34;
  v36 = sub_231369B90();
  v37 = OUTLINED_FUNCTION_0_0(v36);
  v122 = v38;
  v123 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_4();
  v43 = v42 - v41;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v45 = OUTLINED_FUNCTION_40_0(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  v111 = &v111 - v48;
  OUTLINED_FUNCTION_18();
  v49 = sub_231369B70();
  v50 = OUTLINED_FUNCTION_0_0(v49);
  v116 = v51;
  v117 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_18();
  v54 = sub_231369D00();
  v55 = OUTLINED_FUNCTION_0_0(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_22();
  v62 = v60 - v61;
  MEMORY[0x28223BE20](v63);
  v65 = (&v111 - v64);
  (*(v57 + 16))(&v111 - v64, v124, v54);
  v66 = (*(v57 + 88))(v65, v54);
  if (v66 == *MEMORY[0x277D72A58])
  {
    v67 = OUTLINED_FUNCTION_5_19();
    v68(v67);
    v69 = *v65;
    v70 = swift_projectBox();
    (*(v19 + 16))(v24, v70, v16);
    sub_2312BCC10();
    (*(v19 + 8))(v24, v16);
LABEL_17:

    goto LABEL_18;
  }

  if (v66 == *MEMORY[0x277D729E8])
  {
    v71 = OUTLINED_FUNCTION_5_19();
    v72(v71);
    v73 = OUTLINED_FUNCTION_18_17();
    v75 = v122;
    v74 = v123;
    (*(v122 + 16))(v43, v73, v123);
    sub_231369B80();
    v76 = sub_231369E00();
    if (__swift_getEnumTagSinglePayload(v35, 1, v76) != 1)
    {
      sub_231369DE0();
      (*(v75 + 8))(v43, v74);
      OUTLINED_FUNCTION_26_0(v76);
      (*(v89 + 8))(v35, v76);
      goto LABEL_17;
    }

    (*(v75 + 8))(v43, v74);
    v77 = &qword_27DD43C40;
    v78 = &qword_231378460;
    v79 = v35;
    goto LABEL_10;
  }

  if (v66 == *MEMORY[0x277D72A38])
  {
    v80 = OUTLINED_FUNCTION_5_19();
    v81(v80);
    v82 = OUTLINED_FUNCTION_18_17();
    v83 = v120;
    (*(v120 + 16))(v119, v82, v121);
    v84 = v118;
    sub_231369BF0();
LABEL_8:
    v85 = sub_231369E00();
    if (__swift_getEnumTagSinglePayload(v84, 1, v85) != 1)
    {
      sub_231369DE0();
      v96 = *(v83 + 8);
      v97 = OUTLINED_FUNCTION_9_22();
      v98(v97);
      OUTLINED_FUNCTION_26_0(v85);
      (*(v99 + 8))(v84, v85);
      goto LABEL_17;
    }

    v86 = *(v83 + 8);
    v87 = OUTLINED_FUNCTION_9_22();
    v88(v87);
    v77 = &qword_27DD43C40;
    v78 = &qword_231378460;
    v79 = v84;
    goto LABEL_10;
  }

  if (v66 != *MEMORY[0x277D729E0])
  {
    if (v66 != *MEMORY[0x277D729F8])
    {
      (*(v57 + 8))(v65, v54);
      goto LABEL_18;
    }

    v100 = OUTLINED_FUNCTION_5_19();
    v101(v100);
    v102 = OUTLINED_FUNCTION_18_17();
    v83 = v114;
    (*(v114 + 16))(v113, v102, v115);
    v84 = v112;
    sub_231369BB0();
    goto LABEL_8;
  }

  (*(v57 + 96))(v65, v54);
  v90 = OUTLINED_FUNCTION_18_17();
  (*(v116 + 16))(v0, v90, v117);
  v91 = *(sub_231369B60() + 16);

  if (v91 != 1)
  {
    v103 = OUTLINED_FUNCTION_7_18();
    v104(v103);
    goto LABEL_17;
  }

  v92 = sub_231369B60();
  v93 = v111;
  sub_231217DDC(v92, v111);

  if (__swift_getEnumTagSinglePayload(v93, 1, v54) == 1)
  {
    v94 = OUTLINED_FUNCTION_7_18();
    v95(v94);
    v77 = &qword_27DD43358;
    v78 = &qword_23136FA90;
    v79 = v93;
LABEL_10:
    sub_2311EB450(v79, v77, v78);
    goto LABEL_17;
  }

  (*(v57 + 32))(v62, v93, v54);
  v105 = sub_2312BC3E0(v62);
  v107 = v106;
  (*(v57 + 8))(v62, v54);
  v108 = OUTLINED_FUNCTION_7_18();
  v109(v108);
  if (!v107)
  {
    goto LABEL_17;
  }

  if ((v107 & 0x2000000000000000) != 0)
  {
    v110 = HIBYTE(v107) & 0xF;
  }

  else
  {
    v110 = v105 & 0xFFFFFFFFFFFFLL;
  }

  if (!v110)
  {
  }

LABEL_18:
  OUTLINED_FUNCTION_9_0();
}

void sub_2312BCC10()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v3 = sub_2313698C0();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v118 = v5;
  v119 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v117 = v9 - v8;
  OUTLINED_FUNCTION_18();
  v10 = sub_231369C20();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v115 = v12;
  v116 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v114 = v16 - v15;
  OUTLINED_FUNCTION_18();
  v17 = sub_231369C40();
  v18 = OUTLINED_FUNCTION_0_0(v17);
  v122 = v19;
  v123 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_4();
  v121 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  v25 = OUTLINED_FUNCTION_40_0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22();
  v113 = v28 - v29;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v30);
  v120 = &v113 - v31;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v32);
  v34 = &v113 - v33;
  v35 = sub_231369C70();
  v36 = OUTLINED_FUNCTION_0_0(v35);
  v124 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_4();
  v42 = v41 - v40;
  v43 = sub_231366860();
  v44 = OUTLINED_FUNCTION_40_0(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_4();
  v47 = sub_23136A4B0();
  v48 = OUTLINED_FUNCTION_0_0(v47);
  v125 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_18();
  v52 = sub_231369CA0();
  v53 = OUTLINED_FUNCTION_0_0(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_1_4();
  v60 = (v59 - v58);
  (*(v55 + 16))(v59 - v58, v2, v52);
  v61 = (*(v55 + 88))(v60, v52);
  if (v61 == *MEMORY[0x277D72988])
  {
    v62 = OUTLINED_FUNCTION_2_20();
    v63(v62);
    *v60;
    *v60;
    goto LABEL_8;
  }

  if (v61 == *MEMORY[0x277D72978])
  {
    v64 = OUTLINED_FUNCTION_2_20();
    v65(v64);
    v126[0] = *v60;
    sub_23136A8B0();
LABEL_7:
    OUTLINED_FUNCTION_15_20();
    goto LABEL_8;
  }

  if (v61 == *MEMORY[0x277D729A8])
  {
    v66 = OUTLINED_FUNCTION_2_20();
    v67(v66);
    v68 = *v60;
    sub_23136A2F0();
    goto LABEL_7;
  }

  if (v61 == *MEMORY[0x277D729C0])
  {
    v69 = OUTLINED_FUNCTION_2_20();
    v70(v69);
    v71 = *(v60 + 4);
    v74 = v60;
    v72 = *v60;
    v73 = v74[1];
    sub_231366800();
    sub_23136A4A0();
    sub_23136A490();
    OUTLINED_FUNCTION_15_20();
    v75 = *(v125 + 8);
    v76 = v0;
LABEL_11:
    v75(v76, v47);
    goto LABEL_8;
  }

  if (v61 == *MEMORY[0x277D729B8])
  {
    v77 = OUTLINED_FUNCTION_2_20();
    v78(v77);
    v79 = v60[1];
    v126[0] = *v60;
    v126[1] = v79;
    sub_23136A0E0();
    goto LABEL_7;
  }

  if (v61 == *MEMORY[0x277D729B0])
  {
    v80 = OUTLINED_FUNCTION_2_20();
    v81(v80);
    v82 = v124;
    (*(v124 + 32))(v42, v60, v35);
    sub_231369C30();
    v47 = sub_231369E00();
    if (__swift_getEnumTagSinglePayload(v34, 1, v47) != 1)
    {
      sub_231369DE0();
      OUTLINED_FUNCTION_15_20();
      v95 = *(v82 + 8);
      v96 = OUTLINED_FUNCTION_9_22();
      v97(v96);
      OUTLINED_FUNCTION_26_0(v47);
      v75 = *(v98 + 8);
      v76 = v34;
      goto LABEL_11;
    }

    v83 = *(v82 + 8);
    v84 = OUTLINED_FUNCTION_9_22();
    v85(v84);
    v86 = v34;
LABEL_24:
    sub_2311EB450(v86, &qword_27DD43C40, &qword_231378460);
    goto LABEL_8;
  }

  if (v61 == *MEMORY[0x277D72998])
  {
    v87 = OUTLINED_FUNCTION_2_20();
    v88(v87);
    v90 = v121;
    v89 = v122;
    v91 = OUTLINED_FUNCTION_14_22();
    v92 = v123;
    v93(v91);
    v94 = v120;
    sub_231369C30();
LABEL_22:
    v103 = sub_231369E00();
    if (__swift_getEnumTagSinglePayload(v94, 1, v103) != 1)
    {
      sub_231369DE0();
      OUTLINED_FUNCTION_15_20();
      (*(v89 + 8))(v90, v92);
      OUTLINED_FUNCTION_26_0(v103);
      (*(v104 + 8))(v94, v103);
      goto LABEL_8;
    }

    (*(v89 + 8))(v90, v92);
    v86 = v94;
    goto LABEL_24;
  }

  if (v61 == *MEMORY[0x277D72970])
  {
    v99 = OUTLINED_FUNCTION_2_20();
    v100(v99);
    v90 = v114;
    v89 = v115;
    v101 = OUTLINED_FUNCTION_14_22();
    v92 = v116;
    v102(v101);
    v94 = v113;
    sub_231369C10();
    goto LABEL_22;
  }

  v105 = v117;
  sub_231369130();
  v106 = sub_2313698A0();
  v107 = sub_23136A3A0();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v126[0] = v109;
    *v108 = 136315138;
    v126[2] = &type metadata for ToolKitUtils;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44620, &qword_231374C18);
    v110 = sub_23136A010();
    v112 = sub_2311CFD58(v110, v111, v126);

    *(v108 + 4) = v112;
    _os_log_impl(&dword_2311CB000, v106, v107, "displayStringForTypedValuePrimitive(): not handling for PrimitiveValue case %s", v108, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v109);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  (*(v118 + 8))(v105, v119);
  (*(v55 + 8))(v60, v52);
LABEL_8:
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2312BD46C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44628, &qword_231374C20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_17()
{
  v2 = *v0;

  return swift_projectBox();
}

uint64_t sub_2312BD524(uint64_t a1)
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
  sub_2312C2274(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_2312BD5BC(uint64_t a1)
{
  v2 = sub_2312698AC(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_2312BD618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for StaticDefinedPipelineFactory();
  sub_2311CF324(a1, v38);
  sub_2311CF324(a2, v37);
  sub_2311CF324(a3, v34);
  sub_2311CF324(a4, v31);
  v12 = v35;
  v11 = v36;
  __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  OUTLINED_FUNCTION_21();
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  v18 = v17 - v16;
  (*(v19 + 16))(v17 - v16);
  v20 = v32;
  v21 = v33;
  __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  OUTLINED_FUNCTION_21();
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_4();
  v27 = v26 - v25;
  (*(v28 + 16))(v26 - v25);
  v29 = sub_2312C2474(v38, v37, v18, v27, v10, v12, v20, v11, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v34);
  a5[3] = v10;
  a5[4] = &off_2845F5DC0;
  *a5 = v29;
  return result;
}

uint64_t sub_2312BD800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  return MEMORY[0x2822009F8](sub_2312BD828, 0, 0);
}

uint64_t sub_2312BD828()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 264);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  sub_2312BDC98(*(v0 + 256), (v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44650, &qword_231374D90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23136C1C0;
  sub_2311CF324(v3, v4 + 32);
  sub_2311CF324(v0 + 112, v4 + 72);
  v5 = type metadata accessor for UnionResolverProvider();
  OUTLINED_FUNCTION_54();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  sub_2311CF324(v2, v0 + 152);
  *(v0 + 216) = v5;
  *(v0 + 224) = &off_2845F6E40;
  *(v0 + 192) = v6;
  type metadata accessor for OwnerWrappedResolverProvider();
  inited = swift_initStackObject();
  *(v0 + 272) = inited;
  sub_2311D38A8((v0 + 192), inited + 16);
  sub_2311D38A8((v0 + 152), inited + 56);
  v8 = swift_task_alloc();
  *(v0 + 280) = v8;
  *v8 = v0;
  v8[1] = sub_2312BD980;

  return sub_23121CDC4();
}

uint64_t sub_2312BD980()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 280);
  *v2 = *v0;
  *(v1 + 288) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312BDA6C()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_23132F684(v0[36]);
  v0[37] = v1;

  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_2312BDB1C;
  v3 = v0[33];
  v4 = v0[31];

  return sub_2312BDF14(v1, v4);
}

uint64_t sub_2312BDB1C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 304);
  v5 = *(v3 + 296);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 312) = v8;

  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312BDC20()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[34];
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  OUTLINED_FUNCTION_14();
  v3 = v0[39];

  return v2(v3);
}

uint64_t sub_2312BDC98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v30 = a1;
  v29 = sub_231368570();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231368560();
  v8 = *(v7 + 16);
  if (v8)
  {
    v25[1] = v7;
    v26 = a2;
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v11 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v27 = *(v9 + 56);
    v28 = v10;
    v12 = MEMORY[0x277D84F90];
    v13 = (v9 + 16);
    do
    {
      v14 = v29;
      v15 = v9;
      v28(v6, v11, v29);
      sub_2311CF324(v30, &v31);
      v16 = type metadata accessor for ThirdPartyParameterResolver();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      v19 = swift_allocObject();
      (*v13)(v19 + OBJC_IVAR____TtC15SiriSuggestions27ThirdPartyParameterResolver_resolutionParameter, v6, v14);
      sub_2311D38A8(&v31, v19 + OBJC_IVAR____TtC15SiriSuggestions27ThirdPartyParameterResolver_appUtils);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = *(v12 + 16);
        sub_23126E7FC();
        v12 = v22;
      }

      v20 = *(v12 + 16);
      if (v20 >= *(v12 + 24) >> 1)
      {
        sub_23126E7FC();
        v12 = v23;
      }

      v32 = v16;
      v33 = sub_2312C2AC8(&qword_280F7F168, type metadata accessor for ThirdPartyParameterResolver);
      *&v31 = v19;
      *(v12 + 16) = v20 + 1;
      sub_2311D38A8(&v31, v12 + 40 * v20 + 32);
      v11 += v27;
      --v8;
      v9 = v15;
    }

    while (v8);

    a2 = v26;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  a2[3] = &type metadata for StaticResolverProvider;
  a2[4] = &off_2845F6E20;
  *a2 = v12;
  return result;
}

uint64_t sub_2312BDF14(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44658, &unk_231374DC0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_2313698C0();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312BE00C, 0, 0);
}

uint64_t sub_2312BE00C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v19 = v0[4];
  v5 = v0[2];
  v4 = v0[3];
  sub_231369100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44660, &qword_231376F90);
  sub_231369880();
  v6 = *(v2 + 8);
  v6(v1, v3);
  sub_231369100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44668, &qword_231374DD0);
  sub_231369880();
  v6(v1, v3);
  v7 = sub_231369EE0();
  v8 = sub_23122AD4C(v7);
  v0[8] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44670, &qword_231374DD8);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v9);
  OUTLINED_FUNCTION_54();
  v10 = swift_allocObject();
  v0[9] = v10;
  *(v10 + 16) = v4;
  v11 = *(MEMORY[0x277D60B28] + 4);
  sub_231369EE0();
  v12 = swift_task_alloc();
  v0[10] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44678, &qword_231374DF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43470, &qword_23136C9A8);
  *v12 = v0;
  v12[1] = sub_2312BE298;
  v17 = v0[4];

  return MEMORY[0x2821C6B08](v8, v17, &unk_231374DE8, v10, v13, v14, v15, v16);
}

void sub_2312BE298()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_20();
  v4 = v3;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *v2;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  v4[11] = v1;

  if (v1)
  {
  }

  else
  {
    v11 = v4[8];
    v10 = v4[9];
    v12 = v4[4];
    v4[12] = v0;
    sub_2312777C0(v12, &qword_27DD44658, &unk_231374DC0);

    v13 = OUTLINED_FUNCTION_1();

    MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_2312BE3DC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[4];
  v4 = sub_2312BD524(v0[12]);

  OUTLINED_FUNCTION_14();

  return v5(v4);
}

uint64_t sub_2312BE45C(uint64_t *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44688, &unk_231374E00) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *a1;
  *(v2 + 24) = v5;
  *(v2 + 32) = v6;
  *(v2 + 40) = *(a1 + 1);

  return MEMORY[0x2822009F8](sub_2312BE508, 0, 0);
}

uint64_t sub_2312BE508()
{
  OUTLINED_FUNCTION_26();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43468, &qword_23136C9A0);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = xmmword_23136B670;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44690, &qword_231374E10);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  OUTLINED_FUNCTION_54();
  v7 = swift_allocObject();
  v0[8] = v7;
  *(v7 + 16) = v3;
  v8 = *(MEMORY[0x277D60B28] + 4);
  sub_231369EE0();
  sub_231369EE0();
  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43440, &qword_23136C960);
  *v9 = v0;
  v9[1] = sub_2312BE670;
  v13 = v0[6];
  v14 = v0[3];

  return MEMORY[0x2821C6B08](v13, v14, &unk_231374E20, v7, v10, v10, v11, v12);
}

void sub_2312BE670()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_20();
  v4 = v3;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  v7 = *(v6 + 72);
  v8 = *v2;
  OUTLINED_FUNCTION_2();
  *v9 = v8;

  if (v1)
  {
  }

  else
  {
    v10 = v4[8];
    v11 = v4[3];
    v4[10] = v0;
    sub_2312777C0(v11, &qword_27DD44688, &unk_231374E00);

    OUTLINED_FUNCTION_13();

    MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_2312BE7B0()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[3];
  *(v0[7] + 48) = v0[10];

  OUTLINED_FUNCTION_14();
  v3 = v0[7];

  return v2(v3);
}

uint64_t sub_2312BE81C(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v3 = sub_2313698C0();
  v2[29] = v3;
  v4 = *(v3 - 8);
  v2[30] = v4;
  v5 = *(v4 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312BE8E8, 0, 0);
}

uint64_t sub_2312BE8E8()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[27];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(v2 + 8);
  sub_231369510();
  v0[33] = sub_2313681E0();
  if (swift_dynamicCast())
  {
    v0[34] = v0[26];
    sub_2312C2AC8(&qword_280F7C9B8, MEMORY[0x277D60DE0]);
    v5 = sub_23136A260();
    v0[35] = v5;
    v0[36] = v4;

    return MEMORY[0x2822009F8](sub_2312BEA68, v5, v4);
  }

  else
  {
    v6 = v0[27];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43438, &unk_231370D40);
    v7 = OUTLINED_FUNCTION_50_1();
    *(v7 + 16) = xmmword_23136B670;
    sub_2311CF324(v6, v7 + 32);
    v9 = v0[31];
    v8 = v0[32];

    OUTLINED_FUNCTION_14();

    return v10(v7);
  }
}

uint64_t sub_2312BEA68()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[34];
  v0[37] = sub_2313681C0();
  v0[38] = v2;
  v0[39] = sub_2313681D0();
  v0[40] = v3;
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312BEAD0()
{
  v62 = v0;
  sub_2312177CC(v0 + 7, v0[37], v0[38], v0[28]);
  v1 = v0[40];
  v2 = v0[38];
  if (!v0[10])
  {
    v17 = v0[31];
    v18 = v0[28];
    v19 = v0[40];

    sub_2312777C0((v0 + 7), &qword_27DD44698, &qword_231374E28);
    sub_231369100();
    sub_231369EE0();
    sub_231369EE0();
    v20 = sub_2313698A0();
    v21 = sub_23136A3B0();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[38];
    if (v22)
    {
      v24 = v0[37];
      v25 = v0[34];
      v26 = v0[30];
      v27 = v0[28];
      v58 = v0[29];
      v60 = v0[31];
      v28 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_2311CFD58(v24, v23, &v61);

      *(v28 + 4) = v29;
      *(v28 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44668, &qword_231374DD0);
      v30 = sub_231369ED0();
      v32 = sub_2311CFD58(v30, v31, &v61);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_2311CB000, v20, v21, "Unable to determine resolver delegation of type: %s. Available delegations are %s", v28, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v26 + 8))(v60, v58);
    }

    else
    {
      v43 = v0[34];
      v45 = v0[30];
      v44 = v0[31];
      v46 = v0[29];
      v47 = v0[38];

      (*(v45 + 8))(v44, v46);
    }

    v48 = v0[27];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43438, &unk_231370D40);
    v49 = OUTLINED_FUNCTION_50_1();
    *(v49 + 16) = xmmword_23136B670;
    sub_2311CF324(v48, v49 + 32);
    v51 = v0[31];
    v50 = v0[32];

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_8_4();

    __asm { BRAA            X2, X16 }
  }

  v3 = v0[32];
  sub_2311D38A8((v0 + 7), (v0 + 2));
  sub_231369100();
  sub_2311CF324((v0 + 2), (v0 + 12));
  sub_231369EE0();
  sub_231369EE0();
  v4 = sub_2313698A0();
  v5 = sub_23136A3A0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[40];
  if (v6)
  {
    v8 = v0[38];
    v9 = v0[37];
    v55 = v0[39];
    v56 = v0[30];
    v57 = v0[29];
    v59 = v0[32];
    v10 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v10 = 136315650;
    sub_2311CF324((v0 + 12), (v0 + 17));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44668, &qword_231374DD0);
    v11 = sub_23136A010();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    v14 = sub_2311CFD58(v11, v13, &v61);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = sub_2311CFD58(v9, v8, &v61);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    v16 = sub_2311CFD58(v55, v7, &v61);

    *(v10 + 24) = v16;
    _os_log_impl(&dword_2311CB000, v4, v5, "Setting delegation of %s for delegationtype: %s and resolverType: %s", v10, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v56 + 8))(v59, v57);
  }

  else
  {
    v33 = v0[38];
    v34 = v0[32];
    v35 = v0[29];
    v36 = v0[30];

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    (*(v36 + 8))(v34, v35);
  }

  v37 = v0[35];
  v38 = v0[36];
  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x2822009F8](v39, v40, v41);
}

uint64_t sub_2312BEFB8()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 272);
  sub_2313681B0();
  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2312BF018()
{
  OUTLINED_FUNCTION_26();
  v2 = v0[33];
  v1 = v0[34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43438, &unk_231370D40);
  v3 = OUTLINED_FUNCTION_50_1();
  *(v3 + 16) = xmmword_23136B670;
  v4 = MEMORY[0x277D60DD8];
  *(v3 + 56) = v2;
  *(v3 + 64) = v4;
  *(v3 + 32) = v1;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v6 = v0[31];
  v5 = v0[32];

  OUTLINED_FUNCTION_14();

  return v7(v3);
}

uint64_t sub_2312BF0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v15 = *a6;
  v16 = *a7;
  sub_2311CF324(a1, v26);
  sub_2311CF324(a2, v25);
  sub_2311CF324(a3, v24);
  sub_2311CF324(a5, v23);
  v21 = v16;
  v22 = v15;
  sub_2311CF324(a8, v20);
  v17 = type metadata accessor for OwnerWrappedGeneratorProvider();
  swift_allocObject();
  v18 = sub_2311E6E20(v26, v25, v24, a4, v23, &v22, &v21, v20);
  a9[3] = v17;
  a9[4] = sub_2312C2AC8(&qword_280F7E858, type metadata accessor for OwnerWrappedGeneratorProvider);
  *a9 = v18;
  sub_231369EE0();
}

uint64_t sub_2312BF200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_2311CF324(a1, v9);
  sub_2311CF324(a2, v8);
  v5 = type metadata accessor for OwnerWrappedFinalizerProvider();
  v6 = swift_allocObject();
  sub_2311D38A8(v9, v6 + 16);
  result = sub_2311D38A8(v8, v6 + 56);
  a3[3] = v5;
  a3[4] = &off_2845F7C28;
  *a3 = v6;
  return result;
}

uint64_t sub_2312BF28C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_231366690();
  OUTLINED_FUNCTION_21();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  (*(v6 + 16))(v11 - v10, a1, v4);
  v13 = type metadata accessor for BundleLoadedPipelineFactory();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  result = (*(v6 + 32))(v16 + OBJC_IVAR____TtC15SiriSuggestions27BundleLoadedPipelineFactory_baseURL, v12, v4);
  a2[3] = v13;
  a2[4] = &off_2845F5DD0;
  *a2 = v16;
  return result;
}

uint64_t sub_2312BF39C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446A0, &unk_231374E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23136B670;
  *(inited + 32) = sub_2313680D0();
  *(inited + 40) = v1;
  v2 = type metadata accessor for ProactiveResolverDelegation();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_23128E4E0;
  *(v3 + 24) = 0;
  *(inited + 72) = v2;
  *(inited + 80) = sub_2312C2AC8(qword_280F7F2B8, type metadata accessor for ProactiveResolverDelegation);
  *(inited + 48) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44668, &qword_231374DD0);
  return sub_231369EC0();
}

uint64_t sub_2312BF49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, _OWORD *a13, uint64_t a14)
{
  OUTLINED_FUNCTION_26();
  v17 = v16;
  v19 = v18;
  *(v15 + 1680) = v14;
  *(v15 + 1672) = a14;
  *(v15 + 1664) = a12;
  *(v15 + 1648) = a11;
  *(v15 + 1632) = a10;
  *(v15 + 1616) = a9;
  *(v15 + 1608) = v20;
  *(v15 + 1600) = v21;
  *(v15 + 1592) = v22;
  *(v15 + 1584) = v23;
  *(v15 + 1576) = v24;
  *(v15 + 1568) = v25;
  memcpy((v15 + 16), v20, 0x1A8uLL);
  memcpy((v15 + 1288), v19, 0x48uLL);
  *(v15 + 1688) = *v17;
  *(v15 + 1696) = *a13;
  v26 = OUTLINED_FUNCTION_1();
  return OUTLINED_FUNCTION_26_15(v26, v27, v28);
}

uint64_t sub_2312BF564()
{
  v18 = v0;
  v1 = v0[211];
  v2 = v0[201];
  v3 = v0[199];
  v4 = v0[198];
  v5 = v0[196];
  v0[214] = type metadata accessor for SuggestionPipelineFactories();
  v0[187] = &type metadata for SiriSuggestionsRuntimeConfig;
  v0[188] = &protocol witness table for SiriSuggestionsRuntimeConfig;
  OUTLINED_FUNCTION_18_18();
  v6 = swift_allocObject();
  v0[184] = v6;
  memcpy((v6 + 16), v2, 0x1A8uLL);
  v16 = v0[54];
  v17 = v1;
  sub_2312BF0CC(v5, v5 + 120, v4, v3, (v0 + 184), &v16, &v17, v5 + 208, v0 + 179);
  sub_231286BB0((v0 + 2), (v0 + 55));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 184);
  v7 = v0[183];
  __swift_project_boxed_opaque_existential_1(v0 + 179, v0[182]);
  v8 = *(v7 + 16);
  OUTLINED_FUNCTION_3_3();
  v15 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v0[215] = v12;
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_26_3(v12);

  return v15(v13, v7);
}

uint64_t sub_2312BF734()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 1720);
  *v2 = *v0;
  *(v1 + 1728) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312BF820()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[196];
  v2 = *(v1 + 160);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[217] = v3;
  *v3 = v4;
  v3[1] = sub_2312BF8CC;
  v5 = v0[214];
  v6 = v0[208];

  return sub_2312BD800(v1 + 40, v1 + 120, v2, v6);
}

uint64_t sub_2312BF8CC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 1736);
  *v2 = *v0;
  *(v1 + 1744) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312BF9B8()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[214];
  sub_2312BF200(v0[196] + 80, v0[196] + 120, v0 + 189);
  v2 = v0[193];
  __swift_project_boxed_opaque_existential_1(v0 + 189, v0[192]);
  v3 = *(v2 + 8);
  OUTLINED_FUNCTION_3_3();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[219] = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_26_3(v7);

  return v10(v8, v2);
}

uint64_t sub_2312BFAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _OWORD *a16, uint64_t a17)
{
  v19 = *v17;
  v20 = *v17;
  OUTLINED_FUNCTION_2();
  *v21 = v20;
  v22 = v19[219];
  v23 = v19[196];
  v24 = *v17;
  v33 = *(v20 + 106);
  OUTLINED_FUNCTION_9();
  *v25 = v24;
  v20[220] = a1;

  memcpy(v20 + 108, v20 + 2, 0x1A8uLL);
  memcpy(v20 + 170, v20 + 161, 0x48uLL);
  *(v20 + 97) = v33;
  v26 = swift_task_alloc();
  v20[221] = v26;
  *v26 = v24;
  v26[1] = sub_2312BFD48;
  v27 = v19[218];
  v28 = v19[202];
  v29 = v19[200];
  v30 = v19[197];
  v38 = v19[209];
  v37 = v19[207];
  v35 = v19[203];
  v36 = v19[204];
  v31 = v19[216];

  return sub_2312BFF84(v31, v27, a1, v30, (v20 + 108), (v20 + 170), v29, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_2312BFD48()
{
  OUTLINED_FUNCTION_5_20();
  v4 = v3;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  v7 = v6[221];
  v8 = v6[220];
  v9 = v6[218];
  v10 = v6[216];
  v11 = *v2;
  OUTLINED_FUNCTION_2();
  *v12 = v11;
  *(v4 + 1776) = v1;

  if (!v1)
  {
    *(v4 + 1784) = v0;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2312BFEB8()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 189);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 179);
  OUTLINED_FUNCTION_14();
  v2 = v0[223];

  return v1(v2);
}

uint64_t sub_2312BFF20()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 189);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 179);
  OUTLINED_FUNCTION_56_0();
  v2 = v0[222];

  return v1();
}

uint64_t sub_2312BFF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _OWORD *a16, uint64_t a17)
{
  OUTLINED_FUNCTION_8();
  *(v17 + 2712) = a17;
  *(v17 + 2704) = a14;
  *(v17 + 2696) = a13;
  *(v17 + 2688) = a10;
  *(v17 + 2672) = a9;
  *(v17 + 2664) = v18;
  *(v17 + 2656) = v19;
  *(v17 + 2648) = v20;
  *(v17 + 2640) = v21;
  *(v17 + 2632) = v22;
  *(v17 + 2624) = v23;
  *(v17 + 2616) = v24;
  *(v17 + 2608) = v25;
  memcpy((v17 + 16), v21, 0x1A8uLL);
  *(v17 + 2720) = *a16;
  v26 = OUTLINED_FUNCTION_1();
  return OUTLINED_FUNCTION_26_15(v26, v27, v28);
}

uint64_t sub_2312C0028()
{
  v1 = *(v0 + 2704);
  v2 = *(v0 + 2696);
  v3 = *(v0 + 2640);
  v16 = *(v0 + 2632);
  __src = *(v0 + 2648);
  v4 = *(v0 + 2616);
  v5 = *(v0 + 2608);
  type metadata accessor for ResolutionService();
  v6 = swift_allocObject();
  *(v0 + 2736) = v6;
  v6[6] = &type metadata for SiriSuggestionsRuntimeConfig;
  v6[7] = &protocol witness table for SiriSuggestionsRuntimeConfig;
  OUTLINED_FUNCTION_18_18();
  v7 = swift_allocObject();
  v6[3] = v7;
  memcpy((v7 + 16), v3, 0x1A8uLL);
  v6[2] = v4;
  sub_2311CF324(v2, v0 + 2208);
  sub_2311CF324(v1, v0 + 2248);
  type metadata accessor for GenerationService();
  v8 = swift_allocObject();
  *(v0 + 2744) = v8;
  v8[11] = &type metadata for SiriSuggestionsRuntimeConfig;
  v8[12] = &protocol witness table for SiriSuggestionsRuntimeConfig;
  OUTLINED_FUNCTION_18_18();
  v9 = swift_allocObject();
  v8[8] = v9;
  memcpy((v9 + 16), (v0 + 16), 0x1A8uLL);
  v8[2] = v5;
  sub_2311D38A8((v0 + 2208), (v8 + 3));
  v8[13] = v16;
  sub_2311D38A8((v0 + 2248), (v8 + 14));
  v8[19] = &unk_231374DB0;
  v8[20] = 0;
  type metadata accessor for TopLevelSelector();
  memcpy((v0 + 2136), __src, 0x48uLL);
  OUTLINED_FUNCTION_22_15();
  sub_231286BB0(v0 + 16, v0 + 864);
  sub_231286BB0(v0 + 16, v0 + 1288);
  sub_231369EE0();
  sub_231369EE0();

  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 2752) = v10;
  *v10 = v11;
  v10[1] = sub_2312C0250;
  v12 = *(v0 + 2712);
  v13 = *(v0 + 2696);
  v14 = *(v0 + 2688);

  return sub_2311E086C();
}

uint64_t sub_2312C0250()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 2752);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_2312C0334()
{
  v26 = *(v0 + 2728);
  v1 = *(v0 + 2720);
  v2 = *(v0 + 2680);
  v3 = *(v0 + 2672);
  v4 = *(v0 + 2664);
  v5 = *(v0 + 2624);
  v27 = *(v0 + 2736);
  sub_2311CF324(*(v0 + 2656), v0 + 2328);
  sub_2311CF324(v0 + 2288, v0 + 2368);
  sub_2311CF324(v4, v0 + 2408);
  sub_2311CF324(v3, v0 + 2448);
  sub_2311CF324(v2, v0 + 2488);
  v6 = *(v0 + 2352);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 2328, v6);
  OUTLINED_FUNCTION_21();
  v9 = v8;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  (*(v9 + 16))(v12, v7, v6);
  v13 = *v12;
  *(v0 + 2552) = &type metadata for SiriSuggestionsRuntimeConfig;
  *(v0 + 2560) = &protocol witness table for SiriSuggestionsRuntimeConfig;
  OUTLINED_FUNCTION_18_18();
  v14 = swift_allocObject();
  *(v0 + 2528) = v14;
  memcpy((v14 + 16), (v0 + 16), 0x1A8uLL);
  v15 = type metadata accessor for ObjectiveBasedRanker();
  *(v0 + 2592) = v15;
  *(v0 + 2600) = &off_2845F5D48;
  *(v0 + 2568) = v13;
  type metadata accessor for SuggestionPipeline();
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 2568, v15);
  OUTLINED_FUNCTION_21();
  v19 = v18;
  v21 = *(v20 + 64) + 15;
  v22 = swift_task_alloc();
  (*(v19 + 16))(v22, v17, v15);
  v23 = *v22;
  v16[6].i64[1] = v15;
  v16[7].i64[0] = &off_2845F5D48;
  v16[5].i64[0] = v23;
  sub_231286BB0(v0 + 16, v0 + 1712);
  sub_231369EE0();
  sub_231369EE0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2288));
  v16[1] = vextq_s8(v27, v27, 8uLL);
  v16[2].i64[0] = v5;
  sub_2311D38A8((v0 + 2528), &v16[2].i64[1]);
  sub_2311D38A8((v0 + 2368), &v16[7].i64[1]);
  sub_2311D38A8((v0 + 2408), v16[10].i64);
  sub_2311D38A8((v0 + 2448), &v16[12].i64[1]);
  sub_2311D38A8((v0 + 2488), v16[15].i64);
  v16[17].i64[1] = v1;
  v16[18].i64[0] = v26;
  sub_231369EE0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2568));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2328));

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_8_4();

  __asm { BRAA            X2, X16 }
}

uint64_t static SuggestionPipelineFactories.createSuggestionPool(ownerProvider:generatorProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  v3 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312C063C()
{
  OUTLINED_FUNCTION_8();
  type metadata accessor for SuggestionPoolLoader();
  v0[11] = swift_initStackObject();
  v1 = type metadata accessor for DefaultSuggestionFactory();
  v2 = swift_allocObject();
  v0[5] = v1;
  v0[6] = &off_2845F5C90;
  v0[2] = v2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_2312C0714;
  v5 = v0[9];
  v4 = v0[10];

  return sub_2312FCAA8();
}

uint64_t sub_2312C0714()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v8 = *(v7 + 96);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v5 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + 16));
    v14 = *(v9 + 8);

    return v14(v3);
  }
}

uint64_t sub_2312C0850()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_56_0();
  v2 = *(v0 + 104);

  return v1();
}

uint64_t sub_2312C08C4()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *(v1 + 1280) = v0;
  *(v1 + 1272) = v29;
  *(v1 + 1256) = v27;
  *(v1 + 1240) = v26;
  *(v1 + 1224) = v25;
  *(v1 + 1208) = v24;
  *(v1 + 1192) = v23;
  *(v1 + 1184) = v8;
  *(v1 + 1176) = v9;
  *(v1 + 1168) = v10;
  *(v1 + 1160) = v11;
  *(v1 + 1152) = v12;
  v13 = sub_2313698C0();
  *(v1 + 1288) = v13;
  v14 = *(v13 - 8);
  OUTLINED_FUNCTION_3_3();
  *(v1 + 1296) = v15;
  v17 = *(v16 + 64) + 15;
  *(v1 + 1304) = swift_task_alloc();
  memcpy((v1 + 16), v7, 0x1A8uLL);
  memcpy((v1 + 864), v5, 0x48uLL);
  *(v1 + 1312) = *v3;
  *(v1 + 1320) = *v28;
  v18 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_2312C0A18()
{
  v67 = v0;
  v1 = *(v0 + 1304);
  v2 = *(v0 + 1280);
  sub_231369100();

  v3 = sub_2313698A0();
  v4 = sub_23136A390();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1304);
  v7 = *(v0 + 1296);
  v8 = *(v0 + 1288);
  if (v5)
  {
    v65 = *(v0 + 1304);
    v9 = *(v0 + 1280);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v66 = v11;
    *v10 = 136315138;
    sub_231366690();
    sub_2312C2AC8(qword_280F85968, MEMORY[0x277CC9260]);
    v12 = sub_23136A8B0();
    v14 = sub_2311CFD58(v12, v13, &v66);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2311CB000, v3, v4, "Using root plugin location as: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v7 + 8))(v65, v8);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v64 = *(v0 + 1320);
  v63 = *(v0 + 1312);
  v15 = *(v0 + 1280);
  v59 = *(v0 + 1200);
  v60 = *(v0 + 1192);
  v61 = *(v0 + 1208);
  v16 = type metadata accessor for BundleGeneratorProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43518, &qword_23136CA58);
  v17 = *(sub_231366690() - 8);
  OUTLINED_FUNCTION_3_3();
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = OUTLINED_FUNCTION_14_23();
  *(v22 + 16) = xmmword_23136B670;
  sub_231366610();
  v23 = sub_231209FB4(v22);
  v62 = type metadata accessor for CachedGeneratorProvider();
  v24 = OUTLINED_FUNCTION_50_1();
  *(v0 + 1336) = v24;
  *(v24 + 56) = v16;
  *(v24 + 64) = sub_2312C2AC8(&qword_280F81348, type metadata accessor for BundleGeneratorProvider);
  *(v24 + 16) = 1;
  *(v24 + 24) = MEMORY[0x277D84F90];
  *(v24 + 32) = v23;
  v25 = OUTLINED_FUNCTION_14_23();
  *(v25 + 16) = xmmword_23136B670;
  sub_231366610();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44638, &qword_231374D70);
  OUTLINED_FUNCTION_54();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v58 = type metadata accessor for BundleResolverProvider();
  OUTLINED_FUNCTION_54();
  v57 = swift_allocObject();
  *(v0 + 1344) = v57;
  *(v57 + 16) = v26;
  v27 = OUTLINED_FUNCTION_14_23();
  *(v27 + 16) = xmmword_23136B670;
  sub_231366610();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44640, &qword_231374D78);
  OUTLINED_FUNCTION_54();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  v56 = type metadata accessor for BundleFinalizerProvider();
  OUTLINED_FUNCTION_54();
  v55 = swift_allocObject();
  *(v0 + 1352) = v55;
  *(v55 + 16) = v28;
  v29 = type metadata accessor for BundleOwnerDefinitionProvider();
  v30 = OUTLINED_FUNCTION_14_23();
  *(v30 + 16) = xmmword_23136B670;
  sub_231366610();
  ObjectType = swift_getObjectType();
  sub_2311CF324(v60, v0 + 1008);
  v32 = *(v61 + 8);
  v33 = v29;
  v34 = sub_23129A5B0(v30, v59, v61, v59, v0 + 1008, v29, ObjectType, v32);
  *(v0 + 1360) = v34;
  v35 = type metadata accessor for InternalOwnerDefinitionProvider();
  sub_2311CF324(v60, v0 + 1048);
  v36 = swift_unknownObjectRetain_n();
  v37 = sub_23123B684(v36, v61, v59, (v0 + 1048), v35, ObjectType, v32);
  *(v0 + 1368) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44648, &qword_231374D80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_23136C1C0;
  *(v38 + 56) = v33;
  *(v38 + 64) = &protocol witness table for BundleOwnerDefinitionProvider;
  *(v38 + 32) = v34;
  *(v38 + 96) = v35;
  *(v38 + 104) = &off_2845F43C8;
  *(v38 + 72) = v37;
  *(v0 + 1112) = v62;
  *(v0 + 1120) = sub_2312C2AC8(&qword_280F81198, type metadata accessor for CachedGeneratorProvider);
  *(v0 + 1088) = v24;
  type metadata accessor for StaticDefinedPipelineFactory();
  v39 = swift_allocObject();
  *(v0 + 1376) = v39;
  v39[15] = v58;
  v39[16] = &off_2845F3970;
  v39[12] = v57;
  v39[20] = v56;
  v39[21] = &off_2845F57D0;
  v39[17] = v55;
  v40 = type metadata accessor for CachedOwnerDefinitionProvider();
  v41 = swift_allocObject();

  v42 = sub_2312C28E8(v38, v41);
  v39[5] = v40;
  v39[6] = &off_2845F3378;
  v39[2] = v42;
  sub_2311D38A8((v0 + 1088), (v39 + 7));
  OUTLINED_FUNCTION_22_15();
  memcpy((v0 + 936), (v0 + 864), 0x48uLL);
  *(v0 + 1144) = v63;
  *(v0 + 1128) = v64;
  v43 = swift_task_alloc();
  *(v0 + 1384) = v43;
  *v43 = v0;
  v43[1] = sub_2312C112C;
  v44 = *(v0 + 1272);
  v45 = *(v0 + 1264);
  v46 = *(v0 + 1248);
  v47 = *(v0 + 1232);
  v48 = *(v0 + 1216);
  v49 = *(v0 + 1184);
  v50 = *(v0 + 1176);
  v51 = *(v0 + 1168);
  v52 = *(v0 + 1160);
  v53 = *(v0 + 1152);
  v73 = v0 + 1128;
  v74 = v44;
  v72 = v45;
  v71 = v46;
  v70 = v47;
  v69 = v48;

  return sub_2312C1384();
}

uint64_t sub_2312C112C()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v8 = *(v7 + 1384);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v5 + 1392) = v0;

  if (!v0)
  {
    *(v5 + 1400) = v3;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312C1238()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_13_18();
  swift_setDeallocating();
  sub_2312C1D1C();
  OUTLINED_FUNCTION_16_21();
  swift_deallocClassInstance();

  OUTLINED_FUNCTION_14();
  v2 = *(v0 + 1400);

  return v1(v2);
}

uint64_t sub_2312C12E0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_13_18();
  swift_setDeallocating();
  sub_2312C1D1C();
  OUTLINED_FUNCTION_16_21();
  swift_deallocClassInstance();

  OUTLINED_FUNCTION_56_0();
  v2 = *(v0 + 1392);

  return v1();
}

uint64_t sub_2312C1384()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  *(v1 + 1464) = v0;
  *(v1 + 1456) = v21;
  *(v1 + 1448) = v19;
  *(v1 + 1432) = v18;
  *(v1 + 1416) = v17;
  *(v1 + 1400) = v16;
  *(v1 + 1392) = v6;
  *(v1 + 1384) = v7;
  *(v1 + 1376) = v8;
  *(v1 + 1368) = v9;
  *(v1 + 1360) = v10;
  memcpy((v1 + 16), v11, 0x1A8uLL);
  memcpy((v1 + 1112), v5, 0x48uLL);
  *(v1 + 1472) = *v3;
  *(v1 + 1480) = *v20;
  *(v1 + 1496) = type metadata accessor for SuggestionPipelineFactories();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 1504) = v12;
  *v12 = v13;
  v12[1] = sub_2312C14B0;

  return static SuggestionPipelineFactories.createSuggestionPool(ownerProvider:generatorProvider:)(v0 + 16, v0 + 56);
}

uint64_t sub_2312C14B0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v5 = *(v4 + 1504);
  *v3 = *v1;
  *(v2 + 1512) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_56_0();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_2312C15D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, _OWORD *a13, uint64_t a14)
{
  v15 = *(v14 + 1512);
  v44 = *(v14 + 1480);
  v53 = *(v14 + 1472);
  v16 = *(v14 + 1464);
  v17 = *(v14 + 1416);
  v18 = *(v14 + 1392);
  v43 = sub_2312BF39C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44650, &qword_231374D90);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23136C1C0;
  sub_2311CF324(v16 + 96, v19 + 32);
  *(v19 + 96) = type metadata accessor for SuggestionPool();
  *(v19 + 104) = &off_2845F44D0;
  *(v19 + 72) = v15;
  v20 = type metadata accessor for UnionResolverProvider();
  OUTLINED_FUNCTION_54();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v22 = type metadata accessor for CachedResolverProvider();
  v23 = swift_allocObject();
  *(v14 + 1280) = v20;
  *(v14 + 1288) = &off_2845F6E40;
  *(v14 + 1256) = v21;

  swift_defaultActor_initialize();
  *(v23 + 112) = 1;
  *(v23 + 120) = 0;
  sub_2311D38A8((v14 + 1256), v23 + 128);

  *(v14 + 928) = v22;
  *(v14 + 936) = &off_2845F6E30;
  *(v14 + 904) = v23;
  sub_2311CF324(v16 + 136, v14 + 1296);
  v24 = type metadata accessor for CachedFinalizerProvider();
  swift_allocObject();
  v25 = sub_231297640((v14 + 1296));
  *(v14 + 968) = v24;
  *(v14 + 976) = &off_2845F5BF8;
  *(v14 + 944) = v25;
  sub_2311CF324(v16 + 16, v14 + 984);
  sub_2311CF324(v18, v14 + 1032);
  sub_2311CF324(v17, v14 + 1072);
  sub_2311CF324(v16 + 56, v14 + 864);
  *(v14 + 1024) = v43;
  OUTLINED_FUNCTION_22_15();
  memcpy((v14 + 1184), (v14 + 1112), 0x48uLL);
  *(v14 + 1352) = v53;
  *(v14 + 1336) = v44;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v14 + 1520) = v26;
  *v26 = v27;
  v26[1] = sub_2312C1888;
  v28 = *(v14 + 1512);
  v29 = *(v14 + 1496);
  v30 = *(v14 + 1376);
  v31 = *(v14 + 1368);
  v32 = *(v14 + 1360);
  v52 = *(v14 + 1456);
  v50 = *(v14 + 1440);
  v51 = *(v14 + 1448);
  v48 = *(v14 + 1424);
  v49 = *(v14 + 1432);
  v46 = *(v14 + 1400);
  v47 = *(v14 + 1408);
  v45 = *(v14 + 1384);
  OUTLINED_FUNCTION_8_4();

  return sub_2312BF49C(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2312C1888()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v8 = *(v7 + 1520);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v5 + 1528) = v0;

  if (!v0)
  {
    *(v5 + 1536) = v3;
  }

  sub_2312C2954(v5 + 864);
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312C19A4()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 1512);

  OUTLINED_FUNCTION_14();
  v3 = *(v0 + 1536);

  return v2(v3);
}

uint64_t sub_2312C1A04()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 1512);

  v2 = *(v0 + 1528);
  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_2312C1A60()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions27BundleLoadedPipelineFactory_baseURL;
  v2 = sub_231366690();
  OUTLINED_FUNCTION_0_2(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2312C1AF0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2312C1C34;

  return sub_2312C08C4();
}

uint64_t sub_2312C1C34()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_20();
  v4 = *(v3 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  OUTLINED_FUNCTION_14();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t *sub_2312C1D1C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  return v0;
}

uint64_t sub_2312C1D54()
{
  sub_2312C1D1C();
  OUTLINED_FUNCTION_16_21();

  return swift_deallocClassInstance();
}

uint64_t sub_2312C1D80()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2312C2B14;

  return sub_2312C1384();
}

uint64_t sub_2312C1EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = *(a22 + 8);
  OUTLINED_FUNCTION_3_3();
  v29 = (v24 + *v24);
  v26 = *(v25 + 4);
  v27 = swift_task_alloc();
  *(v22 + 16) = v27;
  *v27 = v22;
  v27[1] = sub_2312C2088;

  return v29(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2312C2088()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_20();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_14();

  return v6(v0);
}

uint64_t type metadata accessor for BundleLoadedPipelineFactory()
{
  result = qword_280F7F6F8;
  if (!qword_280F7F6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2312C21C0()
{
  result = sub_231366690();
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

uint64_t sub_2312C2274(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    sub_231369EE0();
    sub_231369EE0();
    v11 = sub_231215F6C(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_17;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
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
      v15 = *a3;
      v16 = sub_231215F6C(v7, v6);
      if ((v14 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v11 = v16;
    }

    v18 = *a3;
    if (v14)
    {
      v19 = *(v18[7] + 8 * v11);
      sub_231369EE0();

      v20 = v18[7];
      v21 = *(v20 + 8 * v11);
      *(v20 + 8 * v11) = v19;
    }

    else
    {
      v18[(v11 >> 6) + 8] |= 1 << v11;
      v22 = (v18[6] + 16 * v11);
      *v22 = v7;
      v22[1] = v6;
      *(v18[7] + 8 * v11) = v8;
      v23 = v18[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v18[2] = v25;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_2312C2474(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a2;
  v36 = a8;
  v34 = a1;
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v33 = a9;
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v33 - v18;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v17);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v33 - v26;
  (*(v21 + 32))(&v33 - v26, v28, v29);
  (*(v12 + 32))(v19, a4, a7);
  v30 = swift_allocObject();
  (*(v21 + 16))(v25, v27, a6);
  (*(v12 + 16))(v16, v19, a7);
  v31 = sub_2312C26E8(v34, v35, v25, v16, v30, a6, a7, v36, v33);
  (*(v12 + 8))(v19, a7);
  (*(v21 + 8))(v27, a6);
  return v31;
}

uint64_t sub_2312C26E8(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a6;
  v38 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v34 = a7;
  v35 = a9;
  v17 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(a7 - 8) + 32))(v17, a4, a7);
  sub_2311CF324(a1, &v30);
  v18 = type metadata accessor for CachedOwnerDefinitionProvider();
  v19 = swift_allocObject();
  v20 = v31;
  v21 = v32;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v31);
  v23 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  v27 = sub_2311FDA18(v25, v19, v20, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(&v30);
  v31 = v18;
  v32 = &off_2845F3378;
  *&v30 = v27;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_2311D38A8(&v30, a5 + 16);
  sub_2311D38A8(a2, a5 + 56);
  sub_2311D38A8(&v36, a5 + 96);
  sub_2311D38A8(&v33, a5 + 136);
  return a5;
}

uint64_t sub_2312C28E8(uint64_t a1, uint64_t a2)
{
  v5 = &type metadata for OwnerDefinitionProviders.ChainedOwnerDefinitionProvider;
  v6 = &off_2845F33B0;
  *&v4 = a1;
  swift_defaultActor_initialize();
  *(a2 + 112) = 1;
  *(a2 + 120) = MEMORY[0x277D84F90];
  sub_2311D38A8(&v4, a2 + 128);
  return a2;
}

uint64_t sub_2312C29A8()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_26_3(v3);

  return sub_2312BE45C(v4, v2);
}

uint64_t sub_2312C2A38()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_26_3(v3);

  return sub_2312BE81C(v4, v2);
}

uint64_t sub_2312C2AC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_13_18()
{
  v2 = v0[172];
  v3 = v0[171];
  v4 = v0[170];
  v5 = v0[169];
  v6 = v0[168];
  v7 = v0[167];
  v8 = v0[163];
}

uint64_t OUTLINED_FUNCTION_26_15(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_2312C2B74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437A0, &qword_23136DB10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23136B670;
  v2 = sub_231367D20();
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_2312C3280(&qword_280F7CA60, 255, MEMORY[0x277D60B68]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B40], v2);
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_231368CC0();
  sub_231267780();
  return v1;
}

uint64_t sub_2312C2C8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_231367D90();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312C2D5C, 0, 0);
}

uint64_t sub_2312C2D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12[7];
  v13 = v12[8];
  v15 = v12[5];
  v16 = v12[6];
  v17 = v12[3];
  v18 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_2313683B0();
  (*(v16 + 104))(v14, *MEMORY[0x277D60BE0], v15);
  v19 = sub_2313121E4(v13, v14);
  v20 = *(v16 + 8);
  v20(v14, v15);
  v20(v13, v15);
  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2313707C0;
    sub_2313692F0();
    *(v21 + 32) = sub_231369260();
    v23 = v12[7];
    v22 = v12[8];

    v24 = v12[1];

    return v24(v21);
  }

  else
  {
    v26 = v12[4];
    v27 = v26[5];
    v28 = v26[6];
    __swift_project_boxed_opaque_existential_1(v26 + 2, v27);
    v29 = *(v28 + 8);
    v30 = *(MEMORY[0x277D60C70] + 4);
    v31 = swift_task_alloc();
    v12[9] = v31;
    *v31 = v12;
    v31[1] = sub_2312C2F58;
    v37 = v12[2];
    v36 = v12[3];

    return MEMORY[0x2821C6B98](v37, v36, v27, v29, v32, v33, v34, v35, a9, a10, a11, a12);
  }
}

uint64_t sub_2312C2F58(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v9 = *v1;

  v5 = *(v3 + 64);
  v6 = *(v3 + 56);

  v7 = *(v9 + 8);

  return v7(a1);
}

uint64_t sub_2312C30DC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23120B320;

  return sub_2312C2C8C(a1, a2);
}

void sub_2312C3184(uint64_t a1, uint64_t a2)
{
  sub_2312C3280(qword_280F81D98, a2, type metadata accessor for LockedSignalExtractor);

  JUMPOUT(0x2319284B0);
}

uint64_t sub_2312C3280(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *DefaultGeneratorProvider.__allocating_init(factories:)(uint64_t a1)
{
  result = swift_allocObject();
  result[3] = 0xD000000000000018;
  result[4] = 0x8000000231374F10;
  result[2] = a1;
  return result;
}

uint64_t DefaultGeneratorProvider.generatorsAvailable()()
{
  v1 = sub_2313698C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v82 = &v81 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v81 - v10;
  MEMORY[0x28223BE20](v9);
  sub_231369100();

  v12 = sub_2313698A0();
  v13 = sub_23136A390();

  v14 = os_log_type_enabled(v12, v13);
  v86 = v1;
  v84 = v2;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v91 = v16;
    *v15 = 136315138;
    v17 = *(v0 + 16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43770, &unk_231373CE0);
    v19 = MEMORY[0x23192A860](v17, v18);
    v21 = sub_2311CFD58(v19, v20, &v91);

    *(v15 + 4) = v21;
    v1 = v86;
    _os_log_impl(&dword_2311CB000, v12, v13, "Loading generators from classes: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v22 = v84;
    v23 = OUTLINED_FUNCTION_3_27(v84);
    v24(v23);
    v26 = v22;
  }

  else
  {

    v27 = OUTLINED_FUNCTION_3_27(v2);
    v28(v27);
    v26 = v2;
  }

  v83 = v6;
  v29 = *(v0 + 16);
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = (v29 + 32);
    v87 = v26 + 8;
    v32 = MEMORY[0x277D84F90];
    *&v25 = 136315138;
    v85 = v25;
    while (1)
    {
      v89 = *v31;
      sub_231369100();
      v33 = sub_2313698A0();
      v34 = sub_23136A390();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v90 = v36;
        *v35 = v85;
        v91 = v89;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43770, &unk_231373CE0);
        v37 = sub_23136A010();
        v39 = sub_2311CFD58(v37, v38, &v90);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_2311CB000, v33, v34, "Loading generator type: %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        v1 = v86;
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();
      }

      v88(v11, v1);
      v40 = sub_231368AA0();
      v41 = *(v40 + 16);
      v42 = *(v32 + 16);
      if (__OFADD__(v42, v41))
      {
        break;
      }

      v43 = v40;
      if (!swift_isUniquelyReferenced_nonNull_native() || v42 + v41 > *(v32 + 24) >> 1)
      {
        sub_23126DF2C();
        v32 = v44;
      }

      if (*(v43 + 16))
      {
        v45 = *(v32 + 16);
        if ((*(v32 + 24) >> 1) - v45 < v41)
        {
          goto LABEL_37;
        }

        v42 = v32 + 40 * v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
        swift_arrayInitWithCopy();

        if (v41)
        {
          v46 = *(v32 + 16);
          v47 = __OFADD__(v46, v41);
          v48 = v46 + v41;
          if (v47)
          {
            goto LABEL_38;
          }

          *(v32 + 16) = v48;
        }
      }

      else
      {

        if (v41)
        {
          goto LABEL_36;
        }
      }

      ++v31;
      if (!--v30)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v32 = MEMORY[0x277D84F90];
LABEL_21:
  v49 = v82;
  sub_231369100();
  v50 = sub_2313698A0();
  v51 = sub_23136A390();
  if (os_log_type_enabled(v50, v51))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_19_0(&dword_2311CB000, v52, v53, "Appending InAppMiniTip Generator in DefaultGeneratorsProvider");
    OUTLINED_FUNCTION_29();
  }

  v88(v49, v1);
  v42 = type metadata accessor for InAppMiniTipGenerator();
  v41 = swift_allocObject();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_39:
    v75 = *(v32 + 16);
    sub_23126DF2C();
    v32 = v76;
  }

  v54 = *(v32 + 16);
  if (v54 >= *(v32 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_31();
    v32 = v77;
  }

  v92 = v42;
  v93 = sub_2312C3EF0(qword_280F81E40, 255, type metadata accessor for InAppMiniTipGenerator);
  *&v91 = v41;
  *(v32 + 16) = v54 + 1;
  OUTLINED_FUNCTION_5_21(v32 + 40 * v54);
  v55 = type metadata accessor for EducationalChannelGenerator();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  v58 = EducationalChannelGenerator.init(firstUseSuggestionsEnabled:)(2u);
  v59 = *(v32 + 16);
  v60 = v59 + 1;
  if (v59 >= *(v32 + 24) >> 1)
  {
    OUTLINED_FUNCTION_1_29();
    v32 = v78;
  }

  v92 = v55;
  v93 = sub_2312C3EF0(&qword_280F7F640, 255, type metadata accessor for EducationalChannelGenerator);
  *&v91 = v58;
  *(v32 + 16) = v60;
  OUTLINED_FUNCTION_5_21(v32 + 40 * v59);
  v61 = type metadata accessor for IntentSuggestionsGenerator();
  v62 = swift_allocObject();
  v63 = v59 + 2;
  if ((v59 + 2) > *(v32 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_31();
    v32 = v79;
  }

  v64 = v83;
  v92 = v61;
  v93 = sub_2312C3EF0(qword_280F85520, 255, type metadata accessor for IntentSuggestionsGenerator);
  *&v91 = v62;
  *(v32 + 16) = v63;
  OUTLINED_FUNCTION_5_21(v32 + 40 * v60);
  sub_231369100();
  v65 = sub_2313698A0();
  v66 = sub_23136A390();
  if (os_log_type_enabled(v65, v66))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_19_0(&dword_2311CB000, v67, v68, "Appending CurrentAppViewAction Generator in DefaultGeneratorsProvider");
    OUTLINED_FUNCTION_29();
  }

  v88(v64, v1);
  type metadata accessor for LinkServiceAccess();
  v69 = swift_allocObject();
  v70 = sub_2313686F0();
  v71 = sub_2313686E0();
  v92 = v70;
  v93 = MEMORY[0x277D60FF0];
  *&v91 = v71;
  v72 = sub_2312C3D64(v69, 0, 0, &v91);
  v73 = *(v32 + 16);
  if (v73 >= *(v32 + 24) >> 1)
  {
    OUTLINED_FUNCTION_1_29();
    v32 = v80;
  }

  v92 = type metadata accessor for CurrentAppViewActionsGenerator();
  v93 = sub_2312C3EF0(&qword_280F7E550, 255, type metadata accessor for CurrentAppViewActionsGenerator);
  *&v91 = v72;
  *(v32 + 16) = v73 + 1;
  OUTLINED_FUNCTION_5_21(v32 + 40 * v73);
  return v32;
}

void *DefaultGeneratorProvider.init(factories:)(uint64_t a1)
{
  v1[3] = 0xD000000000000018;
  v1[4] = 0x8000000231374F10;
  v1[2] = a1;
  return v1;
}

uint64_t DefaultGeneratorProvider.description.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_231369EE0();
  return v1;
}

uint64_t DefaultGeneratorProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t DefaultGeneratorProvider.__deallocating_deinit()
{
  DefaultGeneratorProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2312C3BF0()
{
  v2 = *v0;
  v3 = DefaultGeneratorProvider.generatorsAvailable()();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_2312C3C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (a5 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_linkAccessService);
  v10[3] = type metadata accessor for LinkServiceAccess();
  v10[4] = &off_2845F7900;
  *v10 = a1;
  v11 = OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_channel;
  v12 = *MEMORY[0x277D61300];
  v13 = sub_231369330();
  (*(*(v13 - 8) + 104))(a5 + v11, v12, v13);
  v14 = (a5 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_targetBundleID);
  *v14 = a2;
  v14[1] = a3;
  v15 = a5 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_featureFlagProvider;
  v16 = *(a4 + 16);
  *v15 = *a4;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(a4 + 32);
  return a5;
}

uint64_t sub_2312C3D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LinkServiceAccess();
  v21[3] = v8;
  v21[4] = &off_2845F7900;
  v21[0] = a1;
  v9 = type metadata accessor for CurrentAppViewActionsGenerator();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v21, v8);
  v14 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v21[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_2312C3C74(*v16, a2, a3, a4, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v18;
}

uint64_t sub_2312C3E98(uint64_t a1, uint64_t a2)
{
  result = sub_2312C3EF0(&qword_27DD446A8, a2, type metadata accessor for DefaultGeneratorProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2312C3EF0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_5_21@<X0>(uint64_t a1@<X8>)
{

  return sub_2311D38A8((v1 - 128), a1 + 32);
}

uint64_t sub_2312C3FA0(uint64_t a1, unint64_t a2)
{
  v5 = sub_2313698C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 16);
  if (*(v10 + 16) && (v11 = *(v2 + 16), v12 = sub_231215F6C(a1, a2), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2313707C0;
    *(v15 + 32) = v14;
  }

  else
  {
    sub_231369150();
    sub_231369EE0();

    v16 = sub_2313698A0();
    v17 = sub_23136A390();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_2311CFD58(a1, a2, &v25);
      *(v18 + 12) = 2080;
      sub_2313692F0();
      sub_231369EE0();
      v19 = sub_231369ED0();
      v21 = v20;

      v22 = sub_2311CFD58(v19, v21, &v25);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_2311CB000, v16, v17, "Could not find app category for: %s in %s. Using fallback signal", v18, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*(v6 + 8))(v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2313707C0;
    sub_2313692F0();
    *(v15 + 32) = sub_2313692C0();
  }

  return v15;
}

uint64_t sub_2312C4274(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v3[3] = a2;
  v3[4] = v4;
  v3[2] = a1;
  v7 = *v4;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2312C434C;

  return sub_2312C44DC(a1, a2);
}

uint64_t sub_2312C434C(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_2312C446C, 0, 0);
}

uint64_t sub_2312C446C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(*(v0 + 16));
  *(v2 + 16) = v1;
  v3 = *(v0 + 8);
  v4 = *(v0 + 32);

  return v3(v4);
}

uint64_t sub_2312C44DC(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C08, &unk_2313708B0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = sub_2313698C0();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312C45E0, 0, 0);
}

uint64_t sub_2312C45E0()
{
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_2312C470C;
  v7 = v0[9];

  return v9(v7, v2, v3);
}

uint64_t sub_2312C470C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_2312C4C7C;
  }

  else
  {
    v5 = sub_2312C4820;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2312C4820()
{
  v59 = v0;
  v1 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446B0, &unk_231375020);
  result = sub_23136A770();
  v3 = result;
  v4 = 0;
  v5 = v1 + 64;
  v51 = v1;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v1 + 64);
  v9 = (v6 + 63) >> 6;
  v50 = *MEMORY[0x277D60B38];
  v49 = result + 64;
  v52 = result;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v54 = (v8 - 1) & v8;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = v53[10];
      v15 = (*(v51 + 48) + 16 * v13);
      v16 = *v15;
      v17 = v15[1];
      v18 = (*(v51 + 56) + 16 * v13);
      v19 = v18[1];
      v55 = *v18;
      v56 = v16;
      sub_2313692F0();
      v20 = sub_231367D20();
      v53[5] = v20;
      v53[6] = sub_2312C4F18();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53 + 2);
      (*(*(v20 - 8) + 104))(boxed_opaque_existential_1, v50, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_2313707C0;
      sub_231369EE0();
      sub_231369EE0();
      *(v22 + 32) = sub_2313692C0();
      v23 = sub_231367B80();
      __swift_storeEnumTagSinglePayload(v14, 1, 1, v23);
      result = sub_231369220();
      *(v49 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v3 = v52;
      v24 = (v52[6] + 16 * v13);
      *v24 = v56;
      v24[1] = v17;
      *(v52[7] + 8 * v13) = result;
      v25 = v52[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v52[2] = v27;
      v8 = v54;
      if (!v54)
      {
        goto LABEL_5;
      }
    }

LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v4 >= v9)
      {
        break;
      }

      v12 = *(v5 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v54 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    v28 = v53[16];
    v29 = v53[14];
    v30 = v53[9];

    sub_231369150();
    sub_231369EE0();

    v31 = sub_2313698A0();
    v32 = sub_23136A390();

    v33 = os_log_type_enabled(v31, v32);
    v34 = v53[14];
    v36 = v53[11];
    v35 = v53[12];
    if (v33)
    {
      v37 = v53[9];
      v38 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v38 = 136315394;
      v39 = MEMORY[0x23192A860](v37, MEMORY[0x277D837D0]);
      v57 = v34;
      v41 = sub_2311CFD58(v39, v40, &v58);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      sub_2313692F0();
      v42 = sub_231369E90();
      v44 = sub_2311CFD58(v42, v43, &v58);

      *(v38 + 14) = v44;
      _os_log_impl(&dword_2311CB000, v31, v32, "Extracted categories for appId's %s := %s", v38, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      v3 = v52;
      OUTLINED_FUNCTION_29();

      (*(v35 + 8))(v57, v36);
    }

    else
    {

      (*(v35 + 8))(v34, v36);
    }

    v46 = v53[13];
    v45 = v53[14];
    v47 = v53[10];

    v48 = v53[1];

    return v48(v3);
  }

  return result;
}