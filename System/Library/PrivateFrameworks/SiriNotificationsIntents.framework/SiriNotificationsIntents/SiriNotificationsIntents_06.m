uint64_t sub_268547804()
{
  OUTLINED_FUNCTION_5();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  v4 = sub_268567FF0();
  v1[26] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[27] = v5;
  v1[28] = *(v6 + 64);
  v1[29] = OUTLINED_FUNCTION_39();
  v7 = sub_2685689F0();
  v1[30] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[31] = v8;
  v10 = *(v9 + 64);
  v1[32] = OUTLINED_FUNCTION_39();
  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_268547900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23_10();
  if (qword_280282960 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_0();
  }

  v19 = v16[31];
  v18 = v16[32];
  v20 = v16[30];
  v21 = OUTLINED_FUNCTION_2_24(v17, qword_28028B348);
  v22(v21);
  v23 = sub_2685689E0();
  v24 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v24))
  {
    v25 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v25);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v26, v27, "RNReadNotificationsFromOneAppPatternFlowProvider makeAllResultsFlow | executing makeWindowFlow");
    OUTLINED_FUNCTION_12_3();
  }

  v29 = v16[31];
  v28 = v16[32];
  v30 = v16[30];
  v31 = v16[24];
  v32 = v16[25];

  (*(v29 + 8))(v28, v30);
  sub_2684D57FC(v32 + 64, (v16 + 18));
  v33 = v16[21];
  v34 = v16[22];
  v35 = __swift_project_boxed_opaque_existential_1(v16 + 18, v33);
  sub_2684CC878(v32 + 144, (v16 + 2));
  v36 = sub_2684DEAF0(v31);
  v37 = MEMORY[0x277D84F90];
  v64 = v34;
  v65 = v33;
  v63 = v35;
  if (v36)
  {
    v38 = v36;
    a13 = MEMORY[0x277D84F90];
    result = sub_268569040();
    if (v38 < 0)
    {
      __break(1u);
      return result;
    }

    v40 = v16[24];
    sub_2684DB414();
    v41 = 0;
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x26D61C170](v41, v16[24]);
      }

      else
      {
        v43 = *(v40 + 32 + 8 * v41);
      }

      ++v41;
      sub_26856427C(v42);
      sub_268569020();
      v44 = *(a13 + 16);
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    while (v38 != v41);
    v37 = a13;
  }

  v62 = v16[32];
  v45 = v16[28];
  v46 = v16[29];
  v48 = v16[26];
  v47 = v16[27];
  v49 = v16[24];
  v50 = v16[25];
  (*(v47 + 16))(v46, v16[23], v48);
  v51 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v52 = (v45 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 16) = v50;
  (*(v47 + 32))(v53 + v51, v46, v48);
  *(v53 + v52) = v49;
  type metadata accessor for RNYesNoPromptStrategy();
  swift_allocObject();
  sub_2685276DC(v16 + 2, v37, 0, &unk_26856FBF8, v53);
  sub_2685491EC(&qword_280283580, 255, type metadata accessor for RNYesNoPromptStrategy);

  sub_268567880();

  __swift_destroy_boxed_opaque_existential_0(v16 + 18);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_59();

  return v56(v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, a13, a14, a15, a16);
}

uint64_t sub_268547C3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26853004C;

  return sub_268548208();
}

uint64_t sub_268547CE8()
{
  OUTLINED_FUNCTION_5();
  v1[4] = v2;
  v1[5] = v0;
  OUTLINED_FUNCTION_32_5(v3);
  v4 = sub_268567B10();
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_18_8(v7);
  v8 = sub_268567F20();
  v1[7] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[8] = v9;
  v11 = *(v10 + 64);
  v1[9] = OUTLINED_FUNCTION_39();
  v12 = sub_2685689F0();
  v1[10] = v12;
  OUTLINED_FUNCTION_2_4(v12);
  v1[11] = v13;
  v15 = *(v14 + 64);
  v1[12] = OUTLINED_FUNCTION_39();
  v16 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_268547DF4(uint64_t a1)
{
  if (qword_280282960 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_0();
  }

  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  v5 = OUTLINED_FUNCTION_2_24(a1, qword_28028B348);
  v6(v5);
  v7 = sub_2685689E0();
  v8 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v8))
  {
    v9 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v9);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v10, v11, "RNReadNotificationsFromOneAppPatternFlowProvider makeAllResultsFlow | executing makeFinalWindowFlow");
    OUTLINED_FUNCTION_12_3();
  }

  v13 = v1[11];
  v12 = v1[12];
  v15 = v1[9];
  v14 = v1[10];
  v16 = v1[6];

  (*(v13 + 8))(v12, v14);
  sub_268567AE0();
  sub_268567ED0();
  v17 = swift_task_alloc();
  v1[13] = v17;
  *v17 = v1;
  v17[1] = sub_268547F64;
  v18 = v1[4];
  v19 = v1[5];
  v20 = v1[3];

  return sub_268548208();
}

uint64_t sub_268547F64()
{
  OUTLINED_FUNCTION_20_2();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  v6 = *(v4 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v5 + 112) = v0;

  if (v0)
  {
    v9 = sub_268548174;
  }

  else
  {
    *(v5 + 120) = v3;
    v9 = sub_26854807C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26854807C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  v13 = v12[15];
  v14 = v12[12];
  v16 = v12[8];
  v15 = v12[9];
  v17 = v12[6];
  v18 = v12[7];
  v19 = v12[5];
  v20 = v19[12];
  __swift_project_boxed_opaque_existential_1(v19 + 8, v19[11]);
  v12[2] = sub_268567850();
  sub_268567790();
  sub_2685678E0();

  (*(v16 + 8))(v15, v18);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_33();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_268548174()
{
  OUTLINED_FUNCTION_20_2();
  v1 = v0[12];
  v2 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_9_1();
  v4 = v0[14];

  return v3();
}

uint64_t sub_268548208()
{
  OUTLINED_FUNCTION_5();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v4 = sub_2685689F0();
  v1[13] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[14] = v5;
  v7 = *(v6 + 64);
  v1[15] = OUTLINED_FUNCTION_39();
  v8 = sub_2685679B0();
  v1[16] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[17] = v9;
  v11 = *(v10 + 64);
  v1[18] = OUTLINED_FUNCTION_39();
  v12 = sub_268567B60();
  v1[19] = v12;
  OUTLINED_FUNCTION_2_4(v12);
  v1[20] = v13;
  v15 = *(v14 + 64);
  v1[21] = OUTLINED_FUNCTION_39();
  v16 = sub_2685688F0();
  OUTLINED_FUNCTION_10(v16);
  v18 = *(v17 + 64);
  v1[22] = OUTLINED_FUNCTION_39();
  v19 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_268548368()
{
  v1 = v0[22];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  type metadata accessor for ReadNotificationsCATPatternsExecutor();
  sub_2685686F0();
  sub_2685685F0();
  v5 = sub_2685685D0();
  sub_268516318(v2 + 184, v5);

  sub_2685688E0();
  v0[23] = sub_268568710();
  v6 = *(v2 + 272);
  v7 = sub_268567FA0();
  v8 = sub_268567FC0();
  v28 = sub_268567FB0();
  v9 = sub_268567F70();
  v10 = sub_2684DEAF0(v3);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = v10;
    v30 = MEMORY[0x277D84F90];
    result = sub_268569040();
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    v25 = v9;
    v26 = v8;
    v27 = v7;
    v14 = v6;
    v15 = 0;
    v16 = v0[11];
    v17 = v16 & 0xC000000000000001;
    v18 = v16 + 32;
    do
    {
      if (v17)
      {
        MEMORY[0x26D61C170](v15, v0[11]);
      }

      else
      {
        v19 = *(v18 + 8 * v15);
      }

      ++v15;
      sub_268555B38();

      sub_268569020();
      v20 = *(v30 + 16);
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    while (v12 != v15);
    v11 = v30;
    v6 = v14;
    v8 = v26;
    v7 = v27;
    v9 = v25;
  }

  v0[24] = v11;
  v21 = v0[12];
  v22 = v0[10];
  v23 = swift_task_alloc();
  v0[25] = v23;
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  v24 = swift_task_alloc();
  v0[26] = v24;
  *v24 = v0;
  v24[1] = sub_2685485D0;

  return sub_268513F68(0, v6, v7 & 1, v8 & 1, v28 & 1, v9 & 1, v11, &unk_26856FBE8);
}

uint64_t sub_2685485D0()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v0;
  v5 = v2[26];
  v6 = v2[25];
  v7 = v2[24];
  v8 = v2[23];
  v9 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v10 = v9;

  if (v0)
  {
    v12 = v3[21];
    v11 = v3[22];
    v13 = v3[18];
    v14 = v3[15];

    v15 = *(v9 + 8);

    return v15();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_268548798, 0, 0);
  }
}

uint64_t sub_268548798()
{
  v1 = v0[10];
  v2 = sub_268567FB0();
  if (v2)
  {
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0[16];
    v8 = v0[17];
    sub_268567990();
    v28 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_268567A20();
    (*(v4 + 104))(v3, *MEMORY[0x277D5BC10], v5);
    (*(v8 + 104))(v6, *MEMORY[0x277D5B958], v7);
    sub_2684EBB74(1, 2, v3, v6, 8, 0, 0, 0, 0, 2u);
    sub_2685679A0();

    v2 = __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  if (qword_280282960 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0();
  }

  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[13];
  v12 = OUTLINED_FUNCTION_2_24(v2, qword_28028B348);
  v13(v12);
  v14 = sub_2685689E0();
  v15 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v15))
  {
    v16 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v16);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v17, v18, "RNReadNotificationsFromOneAppPatternFlowProvider executePatternForWindow | pattern successfully executed");
    OUTLINED_FUNCTION_12_3();
  }

  v19 = v0[8];
  v21 = v0[21];
  v20 = v0[22];
  v22 = v0[18];
  v24 = v0[14];
  v23 = v0[15];
  v25 = v0[13];

  (*(v24 + 8))(v23, v25);

  v26 = v0[1];

  return v26(v19);
}

uint64_t sub_2685489C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2685489E4, 0, 0);
}

uint64_t sub_2685489E4()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[4];
  v2 = v0[2];
  *(v2 + 48) = sub_2684DEAF0(*(v0[3] + 104));
  *(v2 + 56) = 0;
  sub_268567FE0();
  if ((v3 & 1) == 0)
  {
    v4 = v0[4];
    result = sub_268567FE0();
    if (v6)
    {
      __break(1u);
      return result;
    }

    v7 = v0[2];
    *(v7 + 32) = result;
    *(v7 + 40) = 0;
  }

  v8 = v0[4];
  v9 = v0[2];
  *(v9 + 64) = sub_268567F90();
  *(v9 + 72) = 0;
  OUTLINED_FUNCTION_9_1();

  return v10();
}

uint64_t sub_268548A94()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);
  v3 = *(v0 + 128);

  sub_2684CC8D4(v0 + 144);
  v4 = *(v0 + 288);

  return v0;
}

uint64_t sub_268548AF4()
{
  sub_268548A94();

  return MEMORY[0x2821FE8D8](v0, 296, 7);
}

uint64_t sub_268548B4C()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 288);

  return v1;
}

uint64_t sub_268548B80()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268532A48;

  return sub_26854663C();
}

uint64_t sub_268548C10()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268532A48;

  return sub_2685468C0();
}

uint64_t sub_268548CA0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268532A48;

  return sub_268546B44();
}

uint64_t sub_268548D30()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2684DB128;

  return sub_268547314();
}

uint64_t sub_268548DDC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_268532A48;

  return sub_268547CE8();
}

uint64_t sub_268548E84(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_268532A48;

  return sub_268547804();
}

uint64_t sub_268548F74()
{
  OUTLINED_FUNCTION_20_2();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2684DB128;

  return sub_2685489C0(v3, v5, v4);
}

uint64_t sub_268549018()
{
  v1 = sub_268567FF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2685490F0()
{
  OUTLINED_FUNCTION_20_2();
  v2 = sub_268567FF0();
  OUTLINED_FUNCTION_2_4(v2);
  v5 = *(v0 + 16);
  v6 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 24) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_268532894;

  return sub_268547C3C();
}

uint64_t sub_2685491EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_24(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v2, a2);
  v5 = *(v4 + 16);
  return v3;
}

uint64_t sub_26854929C(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x2822009F8](sub_2685492BC, 0, 0);
}

uint64_t sub_2685492BC()
{
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
  v2 = sub_268568AD0();
  v0[14] = v2;
  v3 = *(MEMORY[0x277D61E18] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = sub_268568950();
  v6 = sub_268567C50();
  v7 = sub_2684DB3B4();
  *v4 = v0;
  v4[1] = sub_2684D9E54;
  v8 = v0[11];
  v9 = v0[12];

  return MEMORY[0x2821C8828](v8, v2, &unk_26856FD30, v9, v5, v6, v7);
}

uint64_t sub_268549464(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  v3 = sub_2685679B0();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v6 = sub_268567B60();
  v2[21] = v6;
  v7 = *(v6 - 8);
  v2[22] = v7;
  v8 = *(v7 + 64) + 15;
  v2[23] = swift_task_alloc();
  v9 = *(*(sub_268567B10() - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v10 = sub_268567F20();
  v2[25] = v10;
  v11 = *(v10 - 8);
  v2[26] = v11;
  v12 = *(v11 + 64) + 15;
  v2[27] = swift_task_alloc();
  v13 = sub_2685689F0();
  v2[28] = v13;
  v14 = *(v13 - 8);
  v2[29] = v14;
  v15 = *(v14 + 64) + 15;
  v2[30] = swift_task_alloc();
  v16 = *(*(sub_2685688F0() - 8) + 64) + 15;
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268549690, 0, 0);
}

uint64_t sub_268549690()
{
  v1 = v0[31];
  v2 = v0[17];
  type metadata accessor for ReadNotificationsCATPatternsExecutor();
  sub_2685686F0();
  sub_2685685F0();
  v3 = sub_2685685D0();
  sub_268516318(v2 + 88, v3);

  sub_2685688E0();
  v4 = sub_268568710();
  v0[32] = v4;

  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_2685497C8;
  v6 = v0[17];

  return sub_2685139D4(v4, v6);
}

uint64_t sub_2685497C8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v2[12] = v1;
  v2[13] = v4;
  v2[14] = v0;
  v5 = v2[33];
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  v3[34] = v0;

  if (v0)
  {
    v8 = sub_2684DA7F8;
  }

  else
  {
    v9 = v3[32];

    v8 = sub_2685498DC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2685498DC()
{
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNNoNewNotificationsPatternFlow execute | pattern successfully executed", v7, 2u);
    MEMORY[0x26D61CB30](v7, -1, -1);
  }

  v8 = v0[30];
  v10 = v0[28];
  v9 = v0[29];
  v11 = v0[27];
  v31 = v0[26];
  v12 = v0[24];
  v32 = v0[25];
  v13 = v0[22];
  v25 = v0[13];
  v26 = v0[23];
  v27 = v0[21];
  v28 = v0[20];
  v14 = v0[19];
  v15 = v0[17];
  v29 = v0[18];
  v30 = v0[16];

  (*(v9 + 8))(v8, v10);
  sub_268567AE0();
  sub_268567ED0();
  sub_2684D57FC(v15 + 128, (v0 + 2));
  v16 = sub_268567D00();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_268567CF0();
  v19 = sub_268567840();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v0[15] = sub_268567830();
  sub_268567890();

  sub_268567990();
  v22 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_268567A20();
  (*(v13 + 104))(v26, *MEMORY[0x277D5BC10], v27);
  (*(v14 + 104))(v28, *MEMORY[0x277D5B950], v29);
  sub_2684EBB74(1, 0, v26, v28, 8, 0, 0, 0, 0, 2u);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_268567C30();

  (*(v31 + 8))(v11, v32);

  OUTLINED_FUNCTION_9_1();

  return v23();
}

uint64_t sub_268549C68(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_2684DDBA0(0, 0, v8, &unk_26856FCD8, v10);
}

uint64_t sub_268549D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v8 = *(v7 - 8);
  v6[5] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v6[6] = v10;
  v11 = swift_task_alloc();
  v6[7] = v11;
  *v11 = v6;
  v11[1] = sub_2684DAC24;

  return sub_26854929C(v10);
}

uint64_t sub_268549E64()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  sub_2684CC8D4(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t sub_268549EFC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_268549F44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684DB458;

  return sub_268549D68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26854A010()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2684DB128;

  return sub_268549464(v3, v0);
}

uint64_t sub_26854A0A8(uint64_t a1, const void *a2)
{
  *(v2 + 16) = a1;
  memcpy((v2 + 24), a2, 0x80uLL);
  *(v2 + 152) = 6;
  return v2;
}

uint64_t RNPromptFlow.exitValue.getter()
{
  if (*(v0 + 152) - 6 >= 3)
  {
    return *(v0 + 152);
  }

  else
  {
    return 5;
  }
}

uint64_t RNPromptFlow.execute()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_26854A118, 0, 0);
}

uint64_t sub_26854A118()
{
  v1 = v0[8];
  if (*(v1 + 152) == 6)
  {
    v2 = v0[7];
    *(v1 + 152) = 7;
    v3 = *(v1 + 16);
    sub_2684D57FC(v1 + 64, (v0 + 2));
    type metadata accessor for RNPromptStrategy();
    swift_allocObject();

    sub_2684F8B4C(v4, v0 + 2);
    sub_2684D57FC(v1 + 104, (v0 + 2));
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802838D8, qword_26856FD48);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_26854A3DC(&qword_2802838E0, 255, type metadata accessor for RNPromptStrategy);
    v0[2] = sub_268567760();
    sub_26854A2C8();

    sub_268567C00();
  }

  else
  {
    v8 = v0[7];
    sub_268567C40();
  }

  v9 = v0[1];

  return v9();
}

unint64_t sub_26854A2C8()
{
  result = qword_2802838E8;
  if (!qword_2802838E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802838D8, qword_26856FD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802838E8);
  }

  return result;
}

uint64_t RNPromptFlow.execute(completion:)()
{
  type metadata accessor for RNPromptFlow();
  sub_26854A3DC(&qword_2802833F0, v0, type metadata accessor for RNPromptFlow);
  return sub_268567900();
}

uint64_t sub_26854A3DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_26854A424(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2685689F0();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280283350, &qword_26856CD38);
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v32 - v18;
  (*(v15 + 16))(&v32 - v18, a1, v12);
  if ((*(v15 + 88))(v19, v12) == *MEMORY[0x277D5BC38])
  {
    (*(v15 + 96))(v19, v12);
    v20 = *v19;
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v4, qword_28028B348);
    (*(v7 + 16))(v11, v21, v4);
    v22 = sub_2685689E0();
    v23 = sub_268568DC0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v2;
      v33 = v25;
      v26 = v25;
      *v24 = 136315138;
      v27 = RNPromptResponse.rawValue.getter(v20);
      v29 = sub_2684EABEC(v27, v28, &v33);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_2684CA000, v22, v23, "RNPromptFlow processPromptResult | prompt response: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      v30 = v26;
      v2 = v32;
      MEMORY[0x26D61CB30](v30, -1, -1);
      MEMORY[0x26D61CB30](v24, -1, -1);
    }

    result = (*(v7 + 8))(v11, v4);
    *(v2 + 152) = v20;
  }

  else
  {
    *(v2 + 152) = 8;
    return (*(v15 + 8))(v19, v12);
  }

  return result;
}

uint64_t RNPromptResponse.rawValue.getter(char a1)
{
  result = 0x747065636361;
  switch(a1)
  {
    case 1:
      result = 0x6C65636E6163;
      break;
    case 2:
      result = 0x656E696C636564;
      break;
    case 3:
      result = 0x746165706572;
      break;
    case 4:
      result = 0x796C706572;
      break;
    case 5:
      result = 0x6574616C65726E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t RNPromptFlow.deinit()
{
  v1 = *(v0 + 16);

  sub_2684CC8D4(v0 + 24);
  return v0;
}

uint64_t RNPromptFlow.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_2684CC8D4(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 153, 7);
}

uint64_t sub_26854A868(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2684CEB80;

  return RNPromptFlow.execute()(a1);
}

uint64_t sub_26854A904@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = RNPromptFlow.exitValue.getter();
  *a1 = result;
  return result;
}

SiriNotificationsIntents::RNPromptResponse_optional __swiftcall RNPromptResponse.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_2685690D0();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_26854A98C()
{
  result = qword_2802838F0;
  if (!qword_2802838F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802838F0);
  }

  return result;
}

SiriNotificationsIntents::RNPromptResponse_optional sub_26854A9F8@<W0>(Swift::String *a1@<X0>, SiriNotificationsIntents::RNPromptResponse_optional *a2@<X8>)
{
  result.value = RNPromptResponse.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_26854AA28@<X0>(uint64_t *a1@<X8>)
{
  result = RNPromptResponse.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for RNPromptResponse(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RNPromptResponse(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x26854ABA8);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RNPromptFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8)
  {
    v2 = a2 + 8;
    if (a2 + 8 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 8;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 8;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x26854AC90);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 8;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 6)
  {
    v8 = v7 - 5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for RNPromptFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xF8)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF7)
  {
    v7 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x26854AD78);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26854ADA0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_26854ADB4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

uint64_t sub_26854ADD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, const void *a6, char a7)
{
  v7 = result;
  v8 = 0;
  v41 = *(result + 16);
  v9 = MEMORY[0x277D84F90];
  v40 = result + 32;
  v38 = result;
  while (1)
  {
    if (v8 == v41)
    {

      *(v37 + 16) = v9;
      *(v37 + 24) = a2;
      *(v37 + 32) = a3;
      *(v37 + 40) = a4;
      *(v37 + 48) = a5 & 1;
      *(v37 + 49) = HIBYTE(a5) & 1;
      memcpy((v37 + 56), a6, 0x80uLL);
      *(v37 + 184) = a7 & 1;
      return v37;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v10 = *(v40 + 8 * v8);
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v30 = *(v40 + 8 * v8);
      }

      v11 = sub_2685690A0();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_2685690A0();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = result + v11;
    if (__OFADD__(result, v11))
    {
      goto LABEL_40;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v12)
      {
LABEL_16:
        sub_2685690A0();
      }

      else
      {
        v14 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_15:
        v15 = *(v14 + 16);
      }

      result = sub_268569000();
      v9 = result;
      v14 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_18;
    }

    if (v12)
    {
      goto LABEL_16;
    }

    v14 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v13 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_15;
    }

LABEL_18:
    v42 = v14;
    v43 = v8 + 1;
    v16 = *(v14 + 16);
    v17 = (*(v14 + 24) >> 1) - v16;
    v18 = v14 + 8 * v16;
    if (v10 >> 62)
    {
      v20 = sub_2685690A0();
      if (v20)
      {
        v21 = v20;
        result = sub_2685690A0();
        if (v17 < result)
        {
          goto LABEL_44;
        }

        if (v21 < 1)
        {
          goto LABEL_45;
        }

        v39 = result;
        v22 = v18 + 32;
        sub_26854C830();
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C78, qword_26856CB20);
          v24 = sub_2684DE984(v44, i, v10);
          v26 = *v25;

          v24(v44, 0);
          *(v22 + 8 * i) = v26;
        }

        v7 = v38;
        v19 = v39;
        goto LABEL_28;
      }

LABEL_32:

      v8 = v43;
      if (v11 > 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_32;
      }

      if (v17 < v19)
      {
        goto LABEL_43;
      }

      type metadata accessor for ReadNotification();
      swift_arrayInitWithCopy();
LABEL_28:

      v8 = v43;
      if (v19 < v11)
      {
        goto LABEL_41;
      }

      if (v19 > 0)
      {
        v27 = *(v42 + 16);
        v28 = __OFADD__(v27, v19);
        v29 = v27 + v19;
        if (v28)
        {
          goto LABEL_42;
        }

        *(v42 + 16) = v29;
      }
    }
  }

  __break(1u);
LABEL_40:
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
  return result;
}

uint64_t sub_26854B0FC(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x2822009F8](sub_26854B11C, 0, 0);
}

uint64_t sub_26854B11C()
{
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
  v2 = sub_268568AD0();
  v0[14] = v2;
  v3 = *(MEMORY[0x277D61E18] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = sub_268568950();
  v6 = sub_268567C50();
  v7 = sub_26854CA40(&qword_280282BF8, MEMORY[0x277D55F70]);
  *v4 = v0;
  v4[1] = sub_2685455F8;
  v8 = v0[11];
  v9 = v0[12];

  return MEMORY[0x2821C8828](v8, v2, &unk_268570020, v9, v5, v6, v7);
}

uint64_t sub_26854B2F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 320) = a1;
  *(v2 + 328) = a2;
  return MEMORY[0x2822009F8](sub_26854B314, 0, 0);
}

uint64_t sub_26854B314()
{
  v1 = *(v0 + 328);
  sub_2684D57FC(v1 + 136, v0 + 144);
  v2 = sub_268567D00();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_268567CF0();
  v5 = MEMORY[0x277D5BD58];
  v6 = sub_268567840();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_268567830();
  *(v0 + 336) = v9;
  *(v0 + 304) = v9;
  v10 = *(v1 + 16);
  v31 = *(v1 + 24);
  v11 = *(v1 + 40);
  v28 = *(v1 + 32);
  v29 = *(v1 + 49);
  v30 = *(v1 + 48);
  sub_2684CC878(v1 + 56, v0 + 16);
  v32 = *(v1 + 184);
  v12 = *(v2 + 48);
  v13 = *(v2 + 52);
  swift_allocObject();

  v14 = sub_268567CF0();
  v33 = type metadata accessor for RNReadNotificationsFromOneAppPatternFlowProvider();
  v15 = swift_allocObject();
  *(v0 + 344) = v15;
  *(v0 + 208) = v2;
  *(v0 + 216) = v5;
  *(v0 + 184) = v14;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();

  *(v15 + 16) = [v17 bundleForClass_];
  *(v15 + 280) = 0xD00000000000002DLL;
  *(v15 + 288) = 0x8000000268572C80;
  *(v15 + 104) = v10;
  *(v15 + 112) = v31;
  *(v15 + 120) = v28;
  *(v15 + 128) = v11;
  *(v15 + 136) = v30;
  *(v15 + 137) = v29;
  sub_2684CC878(v0 + 16, v15 + 144);
  sub_2684D57FC(v0 + 184, v15 + 24);
  sub_2684D57FC(v0 + 96, v0 + 264);
  v18 = *(v2 + 48);
  v19 = *(v2 + 52);
  swift_allocObject();

  sub_268567CF0();
  v20 = *(v6 + 48);
  v21 = *(v6 + 52);
  swift_allocObject();
  v22 = sub_268567830();
  v23 = MEMORY[0x277D5B808];
  *(v0 + 248) = v6;
  *(v0 + 256) = v23;

  *(v0 + 224) = v22;
  sub_2684CC8D4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  sub_2684D8314((v0 + 224), v15 + 64);
  *(v15 + 272) = v32;
  *(v0 + 312) = v15;
  v24 = *(MEMORY[0x277D5B810] + 4);
  v25 = swift_task_alloc();
  *(v0 + 352) = v25;
  v26 = sub_26854CA40(&qword_280283900, type metadata accessor for RNReadNotificationsFromOneAppPatternFlowProvider);
  *v25 = v0;
  v25[1] = sub_26854B64C;

  return MEMORY[0x2821BA370](v0 + 312, v6, v33, v23, v26);
}

uint64_t sub_26854B64C(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v5 = v4;
  v6 = v4[44];
  v7 = v4[43];
  v8 = v4[42];
  v9 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v10 = v9;
  v5[45] = v1;

  if (v1)
  {
    v11 = sub_26854B810;
  }

  else
  {
    v5[46] = a1;
    v11 = sub_26854B7A8;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_26854B7A8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 368);
  v2 = *(v0 + 320);
  sub_268567C30();

  OUTLINED_FUNCTION_9_10();

  return v3();
}

uint64_t sub_26854B828(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_2684DDBA0(0, 0, v8, &unk_26856FFC8, v10);
}

uint64_t sub_26854B928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v8 = *(v7 - 8);
  v6[5] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v6[6] = v10;
  v11 = swift_task_alloc();
  v6[7] = v11;
  *v11 = v6;
  v11[1] = sub_268545DB8;

  return sub_26854B0FC(v10);
}

void sub_26854BA6C()
{
  OUTLINED_FUNCTION_11_14();
  if (v5)
  {
    OUTLINED_FUNCTION_3_23();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_17();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_25();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_23(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283910, &qword_268570038);
    v9 = OUTLINED_FUNCTION_12_18();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_10_13(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26854BB3C()
{
  OUTLINED_FUNCTION_11_14();
  if (v5)
  {
    OUTLINED_FUNCTION_3_23();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_17();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_25();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_23(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282CA0, &qword_26856AD60);
    v9 = OUTLINED_FUNCTION_12_18();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5_21();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26854BC10()
{
  OUTLINED_FUNCTION_11_14();
  if (v3)
  {
    OUTLINED_FUNCTION_3_23();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_17();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_25();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E38, &qword_268570030);
    v9 = OUTLINED_FUNCTION_12_18();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5_21();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_26854BCE4()
{
  OUTLINED_FUNCTION_11_14();
  if (v5)
  {
    OUTLINED_FUNCTION_3_23();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_17();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_25();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_23(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283918, &qword_268570040);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 24);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[3 * v2 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 24 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A88, &qword_26856A028);
    swift_arrayInitWithCopy();
  }
}

size_t sub_26854BDFC(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_26854C458(v9, a2, &qword_280283200, &unk_26856FFB0, MEMORY[0x277D5FEB0]);
  v11 = *(sub_268568A70() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_26854C5EC(a4 + v12, v9, v10 + v12, MEMORY[0x277D5FEB0]);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_14_8();
  }

  return v10;
}

void sub_26854BF58(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_23();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_8_17();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_25();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = OUTLINED_FUNCTION_12_18();
    v18 = _swift_stdlib_malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 8);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v17 != a4 || &a4[v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 8 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

size_t sub_26854C06C(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_26854C458(v9, a2, &qword_280283930, &qword_268570060, MEMORY[0x277D5FE08]);
  v11 = *(sub_268568A20() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_26854C5EC(a4 + v12, v9, v10 + v12, MEMORY[0x277D5FE08]);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_14_8();
  }

  return v10;
}

size_t sub_26854C180(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_26854C458(v9, a2, &qword_280282C98, &qword_26856AD58, type metadata accessor for ReadingRecord);
  v11 = *(type metadata accessor for ReadingRecord() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_26854C5EC(a4 + v12, v9, v10 + v12, type metadata accessor for ReadingRecord);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26854C2A4()
{
  OUTLINED_FUNCTION_11_14();
  if (v5)
  {
    OUTLINED_FUNCTION_3_23();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_17();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_25();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_23(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283908, &qword_268570DA0);
    v9 = OUTLINED_FUNCTION_12_18();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_10_13(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_26854C378(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282CA0, &qword_26856AD60);
  v4 = OUTLINED_FUNCTION_12_18();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_5_21();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_26854C3E0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
  v4 = OUTLINED_FUNCTION_12_18();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

size_t sub_26854C458(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

char *sub_26854C554(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_24(a3, result);
  }

  return result;
}

char *sub_26854C574(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_24(a3, result);
  }

  return result;
}

char *sub_26854C59C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_24(a3, result);
  }

  return result;
}

uint64_t sub_26854C5EC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_13_17();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_13_17();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

uint64_t sub_26854C700(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2685690A0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_268569000();
  *v1 = result;
  return result;
}

uint64_t sub_26854C7B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

unint64_t sub_26854C830()
{
  result = qword_2802838F8;
  if (!qword_2802838F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280282C78, qword_26856CB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802838F8);
  }

  return result;
}

uint64_t sub_26854C894()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26854C8DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684D1F44;

  return sub_26854B928(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26854C9A8()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2684D1820;

  return sub_26854B2F4(v3, v0);
}

uint64_t sub_26854CA40(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_6_23(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_10_13(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_18()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_8()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_26854CB60()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283978, &qword_268570268);
  return sub_268568B70();
}

uint64_t sub_26854CBC4()
{
  OUTLINED_FUNCTION_5();
  v1[13] = v0;
  v2 = sub_2685689F0();
  v1[14] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[15] = v3;
  v5 = *(v4 + 64);
  v1[16] = OUTLINED_FUNCTION_50();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64);
  v1[19] = OUTLINED_FUNCTION_39();
  v9 = sub_2685680C0();
  v1[20] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[21] = v10;
  v12 = *(v11 + 64);
  v1[22] = OUTLINED_FUNCTION_39();
  v13 = sub_268567CE0();
  v1[23] = v13;
  OUTLINED_FUNCTION_2_4(v13);
  v1[24] = v14;
  v16 = *(v15 + 64);
  v1[25] = OUTLINED_FUNCTION_39();
  v17 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_26854CD44()
{
  OUTLINED_FUNCTION_32_1();
  v1 = *(v0[13] + 32);
  v2 = sub_268503B1C();
  v0[26] = v2;
  if (v2)
  {
    v3 = v0[25];
    sub_2684DB414();

    v5 = sub_268564474(v4);
    sub_268517644(v5, v3);

    v6 = swift_task_alloc();
    v0[27] = v6;
    *v6 = v0;
    v6[1] = sub_26854CF70;
    v7 = v0[13];

    return sub_26854DC14();
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v9 = v0[17];
    v10 = v0[15];
    __swift_project_value_buffer(v0[14], qword_28028B348);
    v11 = OUTLINED_FUNCTION_12_2();
    v12(v11);
    v13 = sub_2685689E0();
    v14 = sub_268568DE0();
    if (OUTLINED_FUNCTION_29(v14))
    {
      *OUTLINED_FUNCTION_16_0() = 0;
      OUTLINED_FUNCTION_9_11(&dword_2684CA000, v15, v16, "ANReadNotificationAction run | missing the next notification");
      OUTLINED_FUNCTION_2();
    }

    v17 = v0[17];
    v18 = v0[14];
    v19 = v0[15];

    v20 = *(v19 + 8);
    v21 = OUTLINED_FUNCTION_34();
    v22(v21);
    sub_268554674();
    swift_allocError();
    swift_willThrow();
    v23 = v0[25];
    v24 = v0[22];
    v26 = v0[18];
    v25 = v0[19];
    v28 = v0[16];
    v27 = v0[17];

    OUTLINED_FUNCTION_9_1();

    return v29();
  }
}

uint64_t sub_26854CF70()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 216);
  *v3 = *v1;
  *(v2 + 224) = v6;
  *(v2 + 232) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26854D070()
{
  OUTLINED_FUNCTION_32_1();
  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 104);
  (*(*(v0 + 192) + 16))(v6, *(v0 + 200), v3);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v3);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  MEMORY[0x26D61AD60](v1, v6, MEMORY[0x277D84F90], v0 + 16);
  sub_2684EB7C8(v0 + 16, &qword_280282F30, &qword_26856DAD0);
  sub_2684EB7C8(v6, &qword_280282C00, &unk_26856A9A0);
  v8 = v7[18];
  v9 = v7[19];
  __swift_project_boxed_opaque_existential_1(v7 + 15, v8);
  v10 = MEMORY[0x277D5C1D8];
  *(v0 + 80) = v4;
  *(v0 + 88) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  (*(v5 + 16))(boxed_opaque_existential_0, v2, v4);
  v12 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 240) = v13;
  *v13 = v14;
  v13[1] = sub_26854D208;

  return MEMORY[0x2821BB5D0](v0 + 56, v8, v9);
}

uint64_t sub_26854D208()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v3[31] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[26];
    __swift_destroy_boxed_opaque_existential_0(v3 + 7);
    v13 = swift_task_alloc();
    v3[32] = v13;
    *v13 = v7;
    v13[1] = sub_26854D378;
    v14 = v3[13];

    return sub_268553748();
  }
}

uint64_t sub_26854D378()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 264) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26854D470()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[18];
  v2 = v0[15];
  __swift_project_value_buffer(v0[14], qword_28028B348);
  v3 = OUTLINED_FUNCTION_12_2();
  v4(v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_16_0();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "ANReadNotificationAction run | announced notification", v7, 2u);
    OUTLINED_FUNCTION_2();
  }

  v8 = v0[25];
  v9 = v0[26];
  v10 = v0[24];
  v11 = v0[21];
  v12 = v0[22];
  v22 = v0[28];
  v23 = v0[20];
  v24 = v0[23];
  v25 = v0[19];
  v13 = v0[18];
  v14 = v0[15];
  v26 = v0[17];
  v27 = v0[16];
  v15 = v0[14];

  v16 = *(v14 + 8);
  v17 = OUTLINED_FUNCTION_52();
  v18(v17);
  v19 = sub_268553B94(v9);
  sub_2685541BC(v19);

  (*(v11 + 8))(v12, v23);
  (*(v10 + 8))(v8, v24);

  OUTLINED_FUNCTION_9_10();

  return v20();
}

uint64_t sub_26854D650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_36_4();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_38_3();
  a20 = v22;
  v26 = (*(v22[24] + 8))(v22[25], v22[23]);
  v27 = v22[29];
  if (qword_280282960 != -1)
  {
    v26 = OUTLINED_FUNCTION_0_0();
  }

  v29 = v22[15];
  v28 = v22[16];
  v30 = v22[14];
  v31 = OUTLINED_FUNCTION_4_23(v26, qword_28028B348);
  v32(v31);
  v33 = v27;
  v34 = sub_2685689E0();
  sub_268568DE0();

  v35 = OUTLINED_FUNCTION_24_4();
  v36 = v22[15];
  v37 = v22[16];
  v38 = v22[14];
  if (v35)
  {
    OUTLINED_FUNCTION_4();
    a9 = v37;
    a10 = OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_69_0(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v39 = sub_268568B70();
    sub_2684EABEC(v39, v40, &a10);
    OUTLINED_FUNCTION_23_3();
    *(v37 + 4) = v23;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v41, v42, "ANReadNotificationAction run | error: %s");
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_2();
  }

  (*(v36 + 8))(v37, v38);
  v43 = v22[26];
  v44 = OUTLINED_FUNCTION_17_9();
  v46 = sub_268553E70(v44, v45);
  sub_2685541BC(v46);

  swift_willThrow();

  OUTLINED_FUNCTION_41_3();

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_34_7();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26854D82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_36_4();
  a21 = v26;
  a22 = v27;
  OUTLINED_FUNCTION_38_3();
  a20 = v22;
  OUTLINED_FUNCTION_80();
  v28 = *(v24 + 8);
  v29 = OUTLINED_FUNCTION_30();
  v30(v29);
  v31 = *(v23 + 8);
  v32 = OUTLINED_FUNCTION_17_9();
  v33(v32);
  v34 = __swift_destroy_boxed_opaque_existential_0(v22 + 7);
  v35 = v22[31];
  if (qword_280282960 != -1)
  {
    v34 = OUTLINED_FUNCTION_0_0();
  }

  v37 = v22[15];
  v36 = v22[16];
  v38 = v22[14];
  v39 = OUTLINED_FUNCTION_4_23(v34, qword_28028B348);
  v40(v39);
  v41 = v35;
  v42 = sub_2685689E0();
  sub_268568DE0();

  v43 = OUTLINED_FUNCTION_24_4();
  v44 = v22[15];
  v45 = v22[16];
  v46 = v22[14];
  if (v43)
  {
    OUTLINED_FUNCTION_4();
    a9 = v45;
    a10 = OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_69_0(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v47 = sub_268568B70();
    sub_2684EABEC(v47, v48, &a10);
    OUTLINED_FUNCTION_23_3();
    *(v45 + 4) = v25;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v49, v50, "ANReadNotificationAction run | error: %s");
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_2();
  }

  (*(v44 + 8))(v45, v46);
  v51 = v22[26];
  v52 = OUTLINED_FUNCTION_17_9();
  v54 = sub_268553E70(v52, v53);
  sub_2685541BC(v54);

  swift_willThrow();

  OUTLINED_FUNCTION_41_3();

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_34_7();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26854DA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_36_4();
  a21 = v26;
  a22 = v27;
  OUTLINED_FUNCTION_38_3();
  a20 = v22;
  OUTLINED_FUNCTION_80();
  v28 = *(v24 + 8);
  v29 = OUTLINED_FUNCTION_30();
  v30(v29);
  v31 = *(v23 + 8);
  v32 = OUTLINED_FUNCTION_17_9();
  v34 = v33(v32);
  v35 = v22[33];
  if (qword_280282960 != -1)
  {
    v34 = OUTLINED_FUNCTION_0_0();
  }

  v37 = v22[15];
  v36 = v22[16];
  v38 = v22[14];
  v39 = OUTLINED_FUNCTION_4_23(v34, qword_28028B348);
  v40(v39);
  v41 = v35;
  v42 = sub_2685689E0();
  sub_268568DE0();

  v43 = OUTLINED_FUNCTION_24_4();
  v44 = v22[15];
  v45 = v22[16];
  v46 = v22[14];
  if (v43)
  {
    OUTLINED_FUNCTION_4();
    a9 = v45;
    a10 = OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_69_0(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v47 = sub_268568B70();
    sub_2684EABEC(v47, v48, &a10);
    OUTLINED_FUNCTION_23_3();
    *(v45 + 4) = v25;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v49, v50, "ANReadNotificationAction run | error: %s");
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_2();
  }

  (*(v44 + 8))(v45, v46);
  v51 = v22[26];
  v52 = OUTLINED_FUNCTION_17_9();
  v54 = sub_268553E70(v52, v53);
  sub_2685541BC(v54);

  swift_willThrow();

  OUTLINED_FUNCTION_41_3();

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_34_7();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26854DC14()
{
  v1[3] = v0;
  v2 = sub_2685689F0();
  v1[4] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_39();
  v6 = sub_268567D90();
  v1[7] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_39();
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  v1[10] = v10;
  *v10 = v11;
  v10[1] = sub_26854DD54;

  return sub_26854E0AC();
}

uint64_t sub_26854DD54()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26854DE4C()
{
  OUTLINED_FUNCTION_19_3();
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  v4 = sub_26851C004(v0[9], (v0[3] + 40));
  v5 = *(v1 + 8);
  v6 = OUTLINED_FUNCTION_17_9();
  v7(v6);

  OUTLINED_FUNCTION_49_2();

  return v8(v4);
}

uint64_t sub_26854DEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_36_4();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_38_3();
  a20 = v22;
  if (qword_280282960 != -1)
  {
    v27 = OUTLINED_FUNCTION_0_0();
  }

  v28 = v22[11];
  v30 = v22[5];
  v29 = v22[6];
  v31 = v22[4];
  v32 = OUTLINED_FUNCTION_4_23(v27, qword_28028B348);
  v33(v32);
  v34 = v28;
  v35 = sub_2685689E0();
  sub_268568DE0();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86())
  {
    v36 = v22[11];
    v38 = v22[5];
    v37 = v22[6];
    v39 = v22[4];
    OUTLINED_FUNCTION_4();
    v40 = OUTLINED_FUNCTION_7_1();
    a10 = v40;
    *v23 = 136315138;
    v22[2] = v36;
    v41 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v42 = sub_268568B70();
    sub_2684EABEC(v42, v43, &a10);
    OUTLINED_FUNCTION_85();
    *(v23 + 4) = v24;
    OUTLINED_FUNCTION_25_7();
    _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_2();

    v49 = *(v38 + 8);
  }

  else
  {
    v53 = v22[5];
    v52 = v22[6];
    v54 = v22[4];

    v55 = *(v53 + 8);
  }

  v50 = OUTLINED_FUNCTION_34();
  v51(v50);
  v56 = v22[11];
  v57 = v22[9];
  v58 = v22[6];
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();
  v59 = v22[11];
  OUTLINED_FUNCTION_34_7();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26854E0AC()
{
  OUTLINED_FUNCTION_5();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = sub_268567BB0();
  v1[14] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[15] = v5;
  v7 = *(v6 + 64);
  v1[16] = OUTLINED_FUNCTION_39();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283820, &qword_26856ED88);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  v1[17] = OUTLINED_FUNCTION_39();
  v11 = sub_268567D90();
  v1[18] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[19] = v12;
  v14 = *(v13 + 64);
  v1[20] = OUTLINED_FUNCTION_39();
  v15 = sub_2685689F0();
  v1[21] = v15;
  OUTLINED_FUNCTION_2_4(v15);
  v1[22] = v16;
  v18 = *(v17 + 64);
  v1[23] = OUTLINED_FUNCTION_50();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v1[27] = v19;
  OUTLINED_FUNCTION_10(v19);
  v21 = *(v20 + 64);
  v1[28] = OUTLINED_FUNCTION_50();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D58, &qword_26856BDF0);
  OUTLINED_FUNCTION_10(v22);
  v24 = *(v23 + 64);
  v1[36] = OUTLINED_FUNCTION_50();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_26854E304()
{
  OUTLINED_FUNCTION_5();
  v0[39] = *(v0[13] + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  v0[40] = v1;
  *v1 = v2;
  v1[1] = sub_26854E3A4;
  v3 = v0[38];

  return sub_268504FBC(v3, 60.0);
}

uint64_t sub_26854E3A4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 320);
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26854E488()
{
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 96);
  if (*(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSameTypeAsLastAnnouncement) == 1)
  {
    v2 = *(v0 + 296);
    v4 = *(v1 + 16);
    v3 = *(v1 + 24);
    sub_268554614(*(v0 + 304), v2, &qword_280282D58, &qword_26856BDF0);
    v5 = type metadata accessor for ReadingRecord();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v5);
    v7 = *(v0 + 296);
    if (EnumTagSinglePayload != 1)
    {
      v18 = *v7;
      v17 = v7[1];

      OUTLINED_FUNCTION_1_25();
      sub_2685545BC(v7, v19);
      if (v4 == v18 && v3 == v17)
      {

        v8 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_17_9();
        v8 = sub_2685691C0();
      }

      goto LABEL_5;
    }

    sub_2684EB7C8(*(v0 + 296), &qword_280282D58, &qword_26856BDF0);
  }

  v8 = 0;
LABEL_5:
  *(v0 + 472) = v8 & 1;
  v10 = *(v0 + 304);
  v9 = *(v0 + 312);
  v11 = *(v0 + 96);
  *(v0 + 473) = sub_2685425D4();
  *(v0 + 474) = sub_268550934(v11, v10) & 1;
  *(v0 + 328) = *(v11 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_appName);
  *(v0 + 336) = sub_2685051E0(v11, v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 344) = v12;
  *v12 = v13;
  v12[1] = sub_26854E654;
  v14 = *(v0 + 96);
  v15 = *(v0 + 104);

  return sub_268550B00();
}

uint64_t sub_26854E654()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 344);
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26854E738()
{
  v98 = v0;
  if (*(v0 + 24))
  {
    v1 = *(v0 + 280);
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);

    OUTLINED_FUNCTION_52();
    sub_268568BB0();
  }

  v4 = *(v0 + 280);
  sub_268568810();
  v5 = 1;
  OUTLINED_FUNCTION_44_3(v4);
  if (*(v0 + 40))
  {
    v6 = *(v0 + 272);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);

    sub_268568BB0();

    v5 = 0;
  }

  v9 = 1;
  OUTLINED_FUNCTION_57_1(*(v0 + 272), v5);
  if (*(v0 + 56))
  {
    v10 = *(v0 + 264);
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);

    sub_268568BB0();
    swift_bridgeObjectRelease_n();
    v9 = 0;
  }

  v13 = *(v0 + 264);
  v14 = *(v0 + 96);

  OUTLINED_FUNCTION_57_1(v13, v9);
  switch(sub_268553668(v14, 0))
  {
    case 3u:
      break;
    default:
      v15 = *(v0 + 256);
      sub_268568BB0();

      break;
  }

  OUTLINED_FUNCTION_44_3(*(v0 + 256));
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v16 = *(v0 + 328);
  v18 = *(v0 + 272);
  v17 = *(v0 + 280);
  v20 = *(v0 + 240);
  v19 = *(v0 + 248);
  v21 = *(v0 + 232);
  v89 = *(v0 + 264);
  v91 = *(v0 + 224);
  v22 = *(v0 + 208);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  v93 = *(v0 + 256);
  v95 = *(v0 + 96);
  v25 = __swift_project_value_buffer(v24, qword_28028B348);
  *(v0 + 352) = v25;
  v26 = *(v23 + 16);
  *(v0 + 360) = v26;
  *(v0 + 368) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v26(v22, v25, v24);
  sub_268554614(v17, v19, &qword_280282AF0, &qword_26856A1E0);
  sub_268554614(v18, v20, &qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_62_1();
  sub_268554614(v27, v28, v29, &qword_26856A1E0);
  sub_268554614(v93, v91, &qword_280282AF0, &qword_26856A1E0);

  swift_retain_n();
  v30 = sub_2685689E0();
  v31 = sub_268568DD0();

  if (os_log_type_enabled(v30, v31))
  {
    v90 = v31;
    v32 = *(v0 + 328);
    v87 = *(v0 + 474);
    log = v30;
    v33 = *(v0 + 240);
    v34 = *(v0 + 248);
    v86 = *(v0 + 232);
    v88 = *(v0 + 224);
    v35 = *(v0 + 216);
    v92 = *(v0 + 176);
    v94 = *(v0 + 168);
    v96 = *(v0 + 208);
    v36 = *(v0 + 336);
    v37 = *(v0 + 96);
    v38 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v38 = 136317186;
    *(v0 + 80) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283968, &qword_268570260);
    v39 = sub_268568EA0();
    v41 = sub_2684EABEC(v39, v40, &v97);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2080;
    v42 = *(v37 + 16);
    v43 = *(v37 + 24);
    v44 = sub_268568BC0();
    v46 = sub_2684EABEC(v44, v45, &v97);

    *(v38 + 14) = v46;
    *(v38 + 22) = 2080;
    v47 = sub_268568EA0();
    sub_2684EB7C8(v34, &qword_280282AF0, &qword_26856A1E0);
    v48 = OUTLINED_FUNCTION_61_1();
    sub_2684EABEC(v48, v49, v50);
    OUTLINED_FUNCTION_73();

    *(v38 + 24) = v47;
    *(v38 + 32) = 2080;
    v51 = v33;
    v52 = sub_268568EA0();
    v54 = v53;
    sub_2684EB7C8(v51, &qword_280282AF0, &qword_26856A1E0);
    sub_2684EABEC(v52, v54, &v97);
    OUTLINED_FUNCTION_73();

    *(v38 + 34) = v51;
    *(v38 + 42) = 2080;
    v55 = sub_268568EA0();
    sub_2684EB7C8(v86, &qword_280282AF0, &qword_26856A1E0);
    v56 = OUTLINED_FUNCTION_61_1();
    sub_2684EABEC(v56, v57, v58);
    OUTLINED_FUNCTION_73();

    *(v38 + 44) = v55;
    *(v38 + 52) = 2048;
    *(v38 + 54) = v36;
    *(v38 + 62) = 2080;
    if (v87)
    {
      v59 = 0;
    }

    else
    {
      v59 = 7630702;
    }

    if (v87)
    {
      v60 = 0xE000000000000000;
    }

    else
    {
      v60 = 0xE300000000000000;
    }

    v61 = sub_2684EABEC(v59, v60, &v97);

    *(v38 + 64) = v61;
    *(v38 + 72) = 2080;
    v62 = sub_268568EA0();
    v64 = v63;
    sub_2684EB7C8(v88, &qword_280282AF0, &qword_26856A1E0);
    v65 = sub_2684EABEC(v62, v64, &v97);

    *(v38 + 74) = v65;
    *(v38 + 82) = 1024;
    LOBYTE(v65) = sub_2685425D4();

    *(v38 + 84) = v65 & 1;

    _os_log_impl(&dword_2684CA000, log, v90, "ANReadNotificationAction prepareNotificationDialog | preparing to read notification: %s with appName: %s, title: %s, subtitle: %s, and body: %s that is index: %f in burst, %s the same app as the previous notification, and has mail reading rule: %s, isFollowup: %{BOOL}d", v38, 0x58u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3_2();

    v66 = *(v92 + 8);
    v66(v96, v94);
  }

  else
  {
    v68 = *(v0 + 240);
    v67 = *(v0 + 248);
    v70 = *(v0 + 224);
    v69 = *(v0 + 232);
    v71 = *(v0 + 208);
    v72 = *(v0 + 168);
    v73 = *(v0 + 176);
    v74 = *(v0 + 96);

    sub_2684EB7C8(v70, &qword_280282AF0, &qword_26856A1E0);
    sub_2684EB7C8(v69, &qword_280282AF0, &qword_26856A1E0);
    v75 = OUTLINED_FUNCTION_52();
    sub_2684EB7C8(v75, v76, &qword_26856A1E0);
    v77 = OUTLINED_FUNCTION_17_9();
    sub_2684EB7C8(v77, v78, &qword_26856A1E0);
    v66 = *(v73 + 8);
    v66(v71, v72);
  }

  *(v0 + 376) = v66;
  v79 = *(v0 + 96);
  v81 = *(v79 + 16);
  v80 = *(v79 + 24);
  v82 = swift_task_alloc();
  *(v0 + 384) = v82;
  *v82 = v0;
  v82[1] = sub_26854EE24;
  v83 = *(v0 + 104);
  OUTLINED_FUNCTION_52();

  return sub_268550560();
}

uint64_t sub_26854EE24()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  v4 = *(v3 + 384);
  *v2 = *v0;
  *(v1 + 475) = v5;

  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26854EF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  OUTLINED_FUNCTION_32_1();
  if (*(v11 + 475) == 1)
  {
    v12 = *(v11 + 368);
    (*(v11 + 360))(*(v11 + 200), *(v11 + 352), *(v11 + 168));
    v13 = sub_2685689E0();
    v14 = sub_268568DC0();
    if (OUTLINED_FUNCTION_29(v14))
    {
      *OUTLINED_FUNCTION_16_0() = 0;
      OUTLINED_FUNCTION_9_11(&dword_2684CA000, v15, v16, "ANReadNotificationAction prepareNotificationDialog | notification content should be hidden, reading censored notification dialog");
      OUTLINED_FUNCTION_2();
    }

    v17 = *(v11 + 376);
    v18 = *(v11 + 200);
    v19 = *(v11 + 168);
    v20 = *(v11 + 176);
    v22 = *(v11 + 96);
    v21 = *(v11 + 104);
    v23 = *(v11 + 336);

    v24 = OUTLINED_FUNCTION_34();
    v17(v24);
    *(v22 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isAppLocked) = 1;
    *(v22 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized) = 1;
    v25 = *(v21 + 200);
    v26 = v23;
    swift_task_alloc();
    OUTLINED_FUNCTION_44();
    *(v11 + 392) = v27;
    *v27 = v28;
    OUTLINED_FUNCTION_52_2(v27);
    v34 = *(v11 + 88);
  }

  else
  {
    v35 = *(*(v11 + 104) + 200);
    v26 = *(v11 + 336);
    swift_task_alloc();
    OUTLINED_FUNCTION_44();
    *(v11 + 408) = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_52_2(v36);
    v34 = *(v11 + 160);
  }

  return sub_26850E5E4(v34, *&v26, 0, v29, v30, v31, v32, v33, a9, a10, a11);
}

uint64_t sub_26854F0E0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 392);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 400) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26854F1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_71();
  v21 = v20[38];
  v23 = v20[34];
  v22 = v20[35];
  v24 = v20[33];
  OUTLINED_FUNCTION_83(v20[32]);
  OUTLINED_FUNCTION_83(v24);
  OUTLINED_FUNCTION_83(v23);
  OUTLINED_FUNCTION_83(v22);
  sub_2684EB7C8(v21, &qword_280282D58, &qword_26856BDF0);
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_45_1();

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_13_8();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26854F310()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 408);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 416) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26854F408()
{
  v1 = v0[12];
  if (*(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title + 8))
  {
    v2 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title);
    v3 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title + 8);
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  if (*(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle + 8))
  {
    v4 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle);
    v5 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle + 8);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v23 = v2;

  MEMORY[0x26D61BDA0](v4, v5);

  if (*(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body + 8))
  {
    v6 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body);
    v7 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body + 8);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = v0[20];
  v9 = v0[17];

  MEMORY[0x26D61BDA0](v6, v7);

  v0[53] = v23;
  v0[54] = v3;
  v10 = sub_268567D80();
  sub_2684D65C0(v10, v9);

  v11 = sub_268567DE0();
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) == 1)
  {
    sub_2684EB7C8(v0[17], &qword_280283820, &qword_26856ED88);
    v12 = 0;
  }

  else
  {
    v14 = v0[15];
    v13 = v0[16];
    v15 = v0[14];
    sub_268567DD0();
    v16 = *(*(v11 - 8) + 8);
    v17 = OUTLINED_FUNCTION_61_1();
    v18(v17);
    sub_268567BA0();
    v12 = v19;
    (*(v14 + 8))(v13, v15);
  }

  v0[55] = v12;
  v20 = swift_task_alloc();
  v0[56] = v20;
  *v20 = v0;
  v20[1] = sub_26854F69C;
  v21 = v0[13];
  OUTLINED_FUNCTION_50_1(v0[12]);

  return sub_2685521CC();
}

uint64_t sub_26854F69C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  v4 = *(v3 + 448);
  v5 = *(v3 + 440);
  v6 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v9 + 476) = v8;

  v10 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26854F79C()
{
  OUTLINED_FUNCTION_71();
  if (*(v0 + 476) == 3)
  {
    v1 = *(v0 + 432);
    v2 = *(v0 + 304);
    v4 = *(v0 + 272);
    v3 = *(v0 + 280);
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = *(v0 + 152);
    v46 = *(v0 + 144);
    v48 = *(v0 + 160);
    v8 = *(v0 + 96);
    v44 = *(v0 + 88);

    OUTLINED_FUNCTION_62_1();
    sub_2684EB7C8(v9, v10, v11);
    OUTLINED_FUNCTION_62_1();
    sub_2684EB7C8(v12, v13, v14);
    OUTLINED_FUNCTION_62_1();
    sub_2684EB7C8(v15, v16, v17);
    OUTLINED_FUNCTION_62_1();
    sub_2684EB7C8(v18, v19, v20);
    sub_2684EB7C8(v2, &qword_280282D58, &qword_26856BDF0);
    *(v8 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead) = 1;
    (*(v7 + 32))(v44, v48, v46);
    OUTLINED_FUNCTION_14_9();
    v42 = *(v0 + 192);
    v43 = *(v0 + 184);
    v45 = *(v0 + 160);
    v47 = *(v0 + 136);
    v49 = *(v0 + 128);

    OUTLINED_FUNCTION_9_10();

    return v21();
  }

  else
  {
    v23 = *(v0 + 288);
    sub_268554614(*(v0 + 304), v23, &qword_280282D58, &qword_26856BDF0);
    v24 = type metadata accessor for ReadingRecord();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v24);
    v26 = *(v0 + 288);
    if (EnumTagSinglePayload == 1)
    {
      sub_2684EB7C8(v26, &qword_280282D58, &qword_26856BDF0);
    }

    else
    {
      v27 = *(v26 + *(v24 + 36));
      OUTLINED_FUNCTION_1_25();
      sub_2685545BC(v28, v29);
    }

    v30 = *(v0 + 432);
    v31 = *(v0 + 336);
    swift_task_alloc();
    OUTLINED_FUNCTION_44();
    *(v0 + 456) = v32;
    *v32 = v33;
    v32[1] = sub_26854FA98;
    v34 = *(v0 + 424);
    v35 = *(v0 + 474);
    v37 = *(v0 + 272);
    v36 = *(v0 + 280);
    v38 = *(v0 + 96);
    v39 = *(v0 + 104);
    v40 = *(v0 + 88);
    v41 = *(v0 + 476);

    return sub_268551374();
  }
}

uint64_t sub_26854FA98()
{
  v2 = *v1;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *(v2 + 456);
  *v4 = *v1;
  *(v3 + 464) = v0;

  v6 = *(v2 + 432);

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26854FBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_71();
  v21 = v20[38];
  v23 = v20[34];
  v22 = v20[35];
  v25 = v20[32];
  v24 = v20[33];
  (*(v20[19] + 8))(v20[20], v20[18]);
  OUTLINED_FUNCTION_89(v25);
  OUTLINED_FUNCTION_89(v24);
  OUTLINED_FUNCTION_89(v23);
  OUTLINED_FUNCTION_89(v22);
  sub_2684EB7C8(v21, &qword_280282D58, &qword_26856BDF0);
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_45_1();

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_13_8();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26854FD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void (*a20)(uint64_t, uint64_t), uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_78();
  a33 = v38;
  a34 = v39;
  a32 = v34;
  v40 = v34[50];
  v41 = OUTLINED_FUNCTION_24_11();
  v42(v41);
  v43 = v40;
  v44 = sub_2685689E0();
  sub_268568DE0();

  if (OUTLINED_FUNCTION_24_4())
  {
    a19 = v34[24];
    a20 = v34[47];
    v46 = v34[21];
    v45 = v34[22];
    OUTLINED_FUNCTION_4();
    v36 = OUTLINED_FUNCTION_6_8();
    a22 = v36;
    OUTLINED_FUNCTION_81(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v47 = sub_268568B70();
    v37 = v48;
    sub_2684EABEC(v47, v48, &a22);
    OUTLINED_FUNCTION_23_3();
    *(v35 + 4) = v40;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v49, v50, "ANReadNotificationAction prepareNotificationDialog | ReadNotifications#ReadFullNotification failure: %s");
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_2();

    a20(a19, v46);
  }

  else
  {
    v45 = v34[47];
    v51 = v34[24];
    v52 = v34[21];
    v53 = v34[22];

    v54 = OUTLINED_FUNCTION_30();
    v45(v54);
  }

  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_48_3(v36);
  OUTLINED_FUNCTION_48_3(v37);
  OUTLINED_FUNCTION_48_3(v40);
  OUTLINED_FUNCTION_48_3(v44);
  sub_2684EB7C8(v45, &qword_280282D58, &qword_26856BDF0);

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_75();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_26854FF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void (*a20)(uint64_t, uint64_t), uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_78();
  a33 = v38;
  a34 = v39;
  a32 = v34;
  v40 = v34[52];
  v41 = OUTLINED_FUNCTION_24_11();
  v42(v41);
  v43 = v40;
  v44 = sub_2685689E0();
  sub_268568DE0();

  if (OUTLINED_FUNCTION_24_4())
  {
    a19 = v34[24];
    a20 = v34[47];
    v46 = v34[21];
    v45 = v34[22];
    OUTLINED_FUNCTION_4();
    v36 = OUTLINED_FUNCTION_6_8();
    a22 = v36;
    OUTLINED_FUNCTION_81(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v47 = sub_268568B70();
    v37 = v48;
    sub_2684EABEC(v47, v48, &a22);
    OUTLINED_FUNCTION_23_3();
    *(v35 + 4) = v40;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v49, v50, "ANReadNotificationAction prepareNotificationDialog | ReadNotifications#ReadFullNotification failure: %s");
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_2();

    a20(a19, v46);
  }

  else
  {
    v45 = v34[47];
    v51 = v34[24];
    v52 = v34[21];
    v53 = v34[22];

    v54 = OUTLINED_FUNCTION_30();
    v45(v54);
  }

  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_48_3(v36);
  OUTLINED_FUNCTION_48_3(v37);
  OUTLINED_FUNCTION_48_3(v40);
  OUTLINED_FUNCTION_48_3(v44);
  sub_2684EB7C8(v45, &qword_280282D58, &qword_26856BDF0);

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_75();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_268550184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (*a19)(void, void), uint64_t a20, void (*a21)(uint64_t), uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_78();
  a33 = v38;
  a34 = v39;
  a32 = v34;
  v40 = *(v34 + 464);
  v41 = *(v34 + 368);
  (*(v34 + 360))(*(v34 + 184), *(v34 + 352), *(v34 + 168));
  v42 = v40;
  v43 = sub_2685689E0();
  sub_268568DE0();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86())
  {
    v44 = *(v34 + 464);
    a21 = *(v34 + 376);
    v37 = *(v34 + 176);
    v45 = *(v34 + 184);
    v46 = *(v34 + 168);
    OUTLINED_FUNCTION_4();
    v47 = OUTLINED_FUNCTION_7_1();
    a22 = v47;
    *v35 = 136315138;
    *(v34 + 72) = v44;
    v48 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v49 = sub_268568B70();
    v36 = v50;
    sub_2684EABEC(v49, v50, &a22);
    OUTLINED_FUNCTION_85();
    *(v35 + 4) = v34 + 72;
    OUTLINED_FUNCTION_25_7();
    _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_2();

    v56 = OUTLINED_FUNCTION_34();
    a21(v56);
  }

  else
  {
    v57 = *(v34 + 376);
    v59 = *(v34 + 176);
    v58 = *(v34 + 184);
    v60 = *(v34 + 168);

    v61 = OUTLINED_FUNCTION_34();
    v57(v61);
  }

  v62 = *(v34 + 464);
  v64 = *(v34 + 152);
  v63 = *(v34 + 160);
  v65 = *(v34 + 144);
  swift_willThrow();
  v66 = *(v64 + 8);
  v67 = OUTLINED_FUNCTION_17_9();
  v68(v67);
  v69 = *(v34 + 464);
  v70 = OUTLINED_FUNCTION_24_11();
  v71(v70);
  v72 = v69;
  v73 = sub_2685689E0();
  sub_268568DE0();

  v74 = OUTLINED_FUNCTION_24_4();
  v75 = *(v34 + 376);
  v76 = *(v34 + 192);
  v78 = *(v34 + 168);
  v77 = *(v34 + 176);
  if (v74)
  {
    OUTLINED_FUNCTION_4();
    a20 = v76;
    v36 = OUTLINED_FUNCTION_6_8();
    a22 = v36;
    *v76 = 136315138;
    *(v34 + 64) = v69;
    v79 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v80 = sub_268568B70();
    a19 = v75;
    v69 = v81;
    sub_2684EABEC(v80, v81, &a22);
    OUTLINED_FUNCTION_23_3();
    *(v76 + 4) = v37;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v82, v83, "ANReadNotificationAction prepareNotificationDialog | ReadNotifications#ReadFullNotification failure: %s");
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_2();
  }

  v75(v76, v78);
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_48_3(v36);
  OUTLINED_FUNCTION_48_3(v69);
  OUTLINED_FUNCTION_48_3(v37);
  OUTLINED_FUNCTION_48_3(v73);
  sub_2684EB7C8(v77, &qword_280282D58, &qword_26856BDF0);

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_75();

  return v85(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_26855050C(char a1)
{
  if (!a1)
  {
    return 1735290732;
  }

  if (a1 == 1)
  {
    return 0x647261646E617473;
  }

  return 0x657461636E757274;
}

uint64_t sub_268550560()
{
  OUTLINED_FUNCTION_5();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_268567DF0();
  v1[5] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_50();
  v1[8] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_268550614()
{
  OUTLINED_FUNCTION_5();
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC24SiriNotificationsIntents24ANReadNotificationAction_protectedAppChecker), *(v0[4] + OBJC_IVAR____TtC24SiriNotificationsIntents24ANReadNotificationAction_protectedAppChecker + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  v0[9] = v1;
  *v1 = v2;
  v1[1] = sub_2685506BC;
  v3 = v0[8];
  v4 = v0[2];
  v5 = v0[3];

  return sub_268512E90(v3, v4, v5);
}

uint64_t sub_2685506BC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2685507A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_32_1();
  v11 = v10[8];
  v12 = v10[5];
  v13 = v10[6];
  v15 = v10[2];
  v14 = v10[3];
  (*(v13 + 104))(v10[7], *MEMORY[0x277D5BE00], v12);
  sub_2684E8190();
  v16 = *(v13 + 8);
  v17 = OUTLINED_FUNCTION_61_1();
  v16(v17);
  (v16)(v11, v12);
  v18 = [objc_opt_self() currentNotificationSettingsCenter];
  v19 = sub_268568B10();
  v20 = [v18 notificationSourceWithIdentifier_];

  v21 = [v20 sourceSettings];
  v22 = [v21 notificationSettings];

  [v22 showPreviewsSetting];

  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_79();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_268550934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D58, &qword_26856BDF0);
  v5 = OUTLINED_FUNCTION_10(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for ReadingRecord();
  v11 = OUTLINED_FUNCTION_17_2(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_5();
  v16 = (v15 - v14);
  sub_268554614(a2, v9, &qword_280282D58, &qword_26856BDF0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2684EB7C8(v9, &qword_280282D58, &qword_26856BDF0);
    v17 = 0;
  }

  else
  {
    sub_2684E6D48(v9, v16);
    v18 = *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_threadIdentifier + 8);
    if (v18 && (v19 = (v16 + *(v10 + 40)), (v20 = v19[1]) != 0))
    {
      if (*(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_threadIdentifier) == *v19 && v18 == v20)
      {
        v22 = 1;
      }

      else
      {
        v22 = sub_2685691C0();
      }
    }

    else
    {
      v22 = 0;
    }

    if (*(a1 + 16) == *v16 && *(a1 + 24) == v16[1])
    {
      v24 = 1;
    }

    else
    {
      v24 = sub_2685691C0();
    }

    if (*(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSameTypeAsLastAnnouncement))
    {
      v17 = v22 | v24;
    }

    else
    {
      v17 = 0;
    }

    OUTLINED_FUNCTION_1_25();
    sub_2685545BC(v16, v25);
  }

  return v17 & 1;
}

uint64_t sub_268550B00()
{
  OUTLINED_FUNCTION_5();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = type metadata accessor for EmojiFormatter();
  v1[11] = v4;
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_39();
  v7 = type metadata accessor for ContentProcessor();
  v1[13] = v7;
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  v1[14] = OUTLINED_FUNCTION_50();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268550BBC()
{
  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_38_3();
  v1 = (v0[9] + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title);
  v2 = v1[1];
  if (v2)
  {
    v22 = *v1;
    v23 = v1[1];
  }

  else
  {
    v22 = 0;
    v2 = 0xE000000000000000;
  }

  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v21 = v0[11];
  v7 = OBJC_IVAR____TtC24SiriNotificationsIntents24ANReadNotificationAction_locale;
  v0[17] = OBJC_IVAR____TtC24SiriNotificationsIntents24ANReadNotificationAction_locale;
  v8 = *(v4 + 24);
  v9 = sub_268567690();
  v0[18] = v9;
  OUTLINED_FUNCTION_17_2(v9);
  v11 = *(v10 + 16);
  v0[19] = v11;
  v0[20] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12 = v6 + v7;
  v13 = v6;
  v11(&v3[v8], v12, v9);
  *v3 = v22;
  *(v3 + 1) = v2;
  v14 = OUTLINED_FUNCTION_58_1(*(v21 + 20));
  (v11)(v14);
  *v5 = v22;
  v5[1] = v2;

  sub_2685232B4();
  v16 = v15;
  sub_2685237C8(v15);
  OUTLINED_FUNCTION_88();
  sub_268523AA8(v2);
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_3_24();
  *(v3 + 2) = v16;
  *(v3 + 3) = v9;
  v0[21] = *(v13 + 200);
  v17 = swift_task_alloc();
  v0[22] = v17;
  *v17 = v0;
  v17[1] = sub_268550D4C;
  v18 = v0[16];
  OUTLINED_FUNCTION_34_7();

  return sub_2684CF484();
}

uint64_t sub_268550D4C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v6 = *(v5 + 176);
  v7 = *(v5 + 128);
  v8 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v9 = v8;

  OUTLINED_FUNCTION_2_26();
  sub_2685545BC(v7, v10);
  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_268550E50()
{
  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_38_3();
  v1 = (v0[9] + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle);
  v2 = v1[1];
  if (v2)
  {
    v20 = v1[1];
    v21 = *v1;
  }

  else
  {
    v21 = 0;
    v2 = 0xE000000000000000;
  }

  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[10];
  v11 = v0[11];
  v12 = OUTLINED_FUNCTION_74();
  v4(v12);
  *v7 = v21;
  v7[1] = v2;
  v13 = OUTLINED_FUNCTION_58_1(*(v11 + 20));
  v4(v13);
  *v9 = v21;
  v9[1] = v2;

  sub_2685232B4();
  v15 = v14;
  sub_2685237C8(v14);
  OUTLINED_FUNCTION_88();
  sub_268523AA8(v2);
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_3_24();
  v7[2] = v15;
  v7[3] = v6;
  v16 = swift_task_alloc();
  v0[23] = v16;
  *v16 = v0;
  v16[1] = sub_268550F80;
  v17 = v0[15];
  OUTLINED_FUNCTION_50_1(v0[21]);
  OUTLINED_FUNCTION_34_7();

  return sub_2684CF484();
}

uint64_t sub_268550F80()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  v1[5] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v6 = *(v5 + 184);
  v7 = *(v5 + 120);
  v8 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v9 = v8;

  OUTLINED_FUNCTION_2_26();
  sub_2685545BC(v7, v10);
  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_268551084()
{
  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_38_3();
  v1 = (*(v0 + 72) + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body);
  if (v1[1])
  {
    v21 = *v1;
    v2 = v1[1];
  }

  else
  {
    v21 = 0;
    v2 = 0xE000000000000000;
  }

  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 96);
  v20 = *(v0 + 88);
  v10 = *(v0 + 80);
  v11 = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  *(v0 + 192) = vextq_s8(*(v0 + 48), *(v0 + 48), 8uLL);
  *(v0 + 208) = v11;
  v12 = OUTLINED_FUNCTION_74();
  v4(v12);
  *v8 = v21;
  v8[1] = v2;
  v13 = OUTLINED_FUNCTION_58_1(*(v20 + 20));
  v4(v13);
  *v9 = v21;
  v9[1] = v2;

  sub_2685232B4();
  v15 = v14;
  sub_2685237C8(v14);
  OUTLINED_FUNCTION_88();
  sub_268523AA8(v2);
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_3_24();
  v8[2] = v15;
  v8[3] = v6;
  v16 = swift_task_alloc();
  *(v0 + 224) = v16;
  *v16 = v0;
  v16[1] = sub_2685511D0;
  v17 = *(v0 + 112);
  OUTLINED_FUNCTION_50_1(*(v0 + 168));
  OUTLINED_FUNCTION_34_7();

  return sub_2684CF484();
}

uint64_t sub_2685511D0()
{
  OUTLINED_FUNCTION_38_3();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v6 = v5;
  v8 = v7[28];
  v9 = v7[16];
  v10 = v7[15];
  v11 = v7[14];
  v12 = v7[12];
  v13 = v7[8];
  v14 = *v0;
  v19 = v5[13];
  v20 = v5[12];
  OUTLINED_FUNCTION_3_0();
  *v15 = v14;

  OUTLINED_FUNCTION_2_26();
  sub_2685545BC(v11, v16);

  *v13 = vextq_s8(v19, v19, 8uLL);
  v13[1] = vextq_s8(v20, v20, 8uLL);
  v13[2].i64[0] = v4;
  v13[2].i64[1] = v2;
  OUTLINED_FUNCTION_9_1();

  return v17();
}

uint64_t sub_268551374()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 248) = v0;
  *(v1 + 52) = v27;
  *(v1 + 51) = v2;
  *(v1 + 240) = v3;
  *(v1 + 50) = v4;
  *(v1 + 224) = v5;
  *(v1 + 232) = v6;
  *(v1 + 208) = v7;
  *(v1 + 216) = v8;
  *(v1 + 192) = v9;
  *(v1 + 200) = v10;
  v11 = sub_2685689F0();
  *(v1 + 256) = v11;
  OUTLINED_FUNCTION_2_4(v11);
  *(v1 + 264) = v12;
  v14 = *(v13 + 64);
  *(v1 + 272) = OUTLINED_FUNCTION_50();
  *(v1 + 280) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v15);
  v17 = *(v16 + 64);
  *(v1 + 288) = OUTLINED_FUNCTION_50();
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  v18 = sub_268567D90();
  *(v1 + 328) = v18;
  OUTLINED_FUNCTION_2_4(v18);
  *(v1 + 336) = v19;
  v21 = *(v20 + 64);
  *(v1 + 344) = OUTLINED_FUNCTION_50();
  *(v1 + 352) = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_2685514FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v12 = *(v11 + 248);
  if (sub_268552AE8(*(v11 + 200), *(v11 + 208), *(v11 + 216)))
  {
    v13 = *(*(v11 + 248) + 200);
    swift_task_alloc();
    OUTLINED_FUNCTION_44();
    *(v11 + 360) = v14;
    *v14 = v15;
    v14[1] = sub_268551980;
    v16 = *(v11 + 352);

    return sub_26850ECA8();
  }

  else
  {
    v18 = *(v11 + 200);
    v19 = v18 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType;
    v20 = *(v18 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 32);
    v21 = *(v18 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 16);
    *(v11 + 16) = *(v18 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType);
    *(v11 + 32) = v21;
    *(v11 + 48) = v20;
    sub_268542D10(v11 + 16, v11 + 96);
    sub_268542B84();
    v58 = v22;
    sub_268542D48(v11 + 16);
    v23 = sub_268553668(v18, 1);
    v24 = 0xE400000000000000;
    v25 = 0;
    switch(v23)
    {
      case 1:
        v24 = 0xE800000000000000;
        goto LABEL_8;
      case 2:
        v24 = 0xE900000000000064;
        goto LABEL_8;
      case 3:
        goto LABEL_9;
      default:
LABEL_8:
        v25 = v24;
LABEL_9:
        v60 = *(*(v11 + 248) + 200);
        v59 = *(*(v11 + 200) + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_appName);
        v26 = *(v19 + 32);
        v27 = *(v19 + 16);
        *(v11 + 56) = *v19;
        *(v11 + 72) = v27;
        *(v11 + 88) = v26;
        sub_268542D10(v11 + 56, v11 + 136);
        sub_268542A74();
        v29 = v28;
        sub_268542D48(v11 + 56);
        if (v29)
        {
          v30 = *(v11 + 320);
          sub_268568BB0();

          v31 = 0;
        }

        else
        {
          v31 = 1;
        }

        v32 = *(v11 + 320);
        v33 = *(v11 + 51);
        sub_268568810();
        v34 = 1;
        OUTLINED_FUNCTION_57_1(v32, v31);
        switch(v33)
        {
          case 3:
            break;
          default:
            v35 = *(v11 + 312);
            sub_268568BB0();

            v34 = 0;
            break;
        }

        v36 = *(v11 + 52);
        OUTLINED_FUNCTION_57_1(*(v11 + 312), v34);
        switch(v36)
        {
          case 3:
            break;
          default:
            v37 = *(v11 + 304);
            sub_268568BB0();

            break;
        }

        v38 = 1;
        OUTLINED_FUNCTION_44_3(*(v11 + 304));
        if (v25)
        {
          v39 = *(v11 + 296);
          sub_268568BB0();

          v38 = 0;
        }

        OUTLINED_FUNCTION_57_1(*(v11 + 296), v38);
        if (v58)
        {
          v40 = *(v11 + 288);
          sub_268568BB0();
        }

        v41 = *(v11 + 240);
        OUTLINED_FUNCTION_44_3(*(v11 + 288));
        swift_task_alloc();
        OUTLINED_FUNCTION_44();
        *(v11 + 376) = v42;
        *v42 = v43;
        v42[1] = sub_268551B58;
        v44 = *(v11 + 344);
        v46 = *(v11 + 312);
        v45 = *(v11 + 320);
        v47 = *(v11 + 304);
        v48 = *(v11 + 50);
        v64 = *(v11 + 232);
        v65 = *(v11 + 288);
        v62 = *(v11 + 296);
        v63 = *(v11 + 224);
        OUTLINED_FUNCTION_59();

        result = sub_26850FF10(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11);
        break;
    }
  }

  return result;
}

uint64_t sub_268551980()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 360);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 368) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268551A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_32_1();
  v11 = *(v10 + 352);
  v12 = *(v10 + 328);
  v13 = *(v10 + 336);
  v14 = *(v10 + 51);
  v15 = *(v10 + 192);
  v16 = *(v10 + 200);
  *(v16 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized) = 1;
  *(v16 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_summaryType) = v14;
  (*(v13 + 32))(v15, v11, v12);
  OUTLINED_FUNCTION_64_0();

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_79();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_268551B58()
{
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = v2[47];
  *v4 = *v1;
  v3[48] = v0;

  v6 = v2[40];
  v7 = v2[39];
  v8 = v2[38];
  v9 = v2[37];
  OUTLINED_FUNCTION_70(v2[36]);
  OUTLINED_FUNCTION_70(v9);
  OUTLINED_FUNCTION_70(v8);
  OUTLINED_FUNCTION_70(v7);
  OUTLINED_FUNCTION_70(v6);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268551D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_32_1();
  v12 = *(v10 + 336);
  v11 = *(v10 + 344);
  v13 = *(v10 + 328);
  v14 = *(v10 + 51);
  v15 = *(v10 + 192);
  v16 = *(v10 + 200);
  *(v16 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized) = 1;
  *(v16 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_summaryType) = v14;
  (*(v12 + 32))(v15, v11, v13);
  OUTLINED_FUNCTION_64_0();

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_79();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

void sub_268551DEC(uint64_t a1)
{
  if (qword_280282960 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_0();
  }

  v4 = v1[46];
  v5 = v1[35];
  v6 = v1[32];
  v7 = v1[33];
  v8 = OUTLINED_FUNCTION_4_23(a1, qword_28028B348);
  v9(v8);
  v10 = v4;
  v11 = sub_2685689E0();
  sub_268568DE0();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86())
  {
    v12 = v1[46];
    v13 = v1[35];
    v14 = v1[32];
    v15 = v1[33];
    OUTLINED_FUNCTION_4();
    v16 = OUTLINED_FUNCTION_7_1();
    v37 = v16;
    *v2 = 136315138;
    v1[23] = v12;
    v17 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v18 = sub_268568B70();
    sub_2684EABEC(v18, v19, &v37);
    OUTLINED_FUNCTION_85();
    *(v2 + 4) = v3;
    OUTLINED_FUNCTION_25_7();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_2();

    v25 = *(v15 + 8);
    v26 = OUTLINED_FUNCTION_34();
    v27(v26);
  }

  else
  {
    v28 = v1[35];
    v29 = v1[32];
    v30 = v1[33];

    v31 = *(v30 + 8);
    v32 = OUTLINED_FUNCTION_34();
    v33(v32);
  }

  v34 = v1[46];
  OUTLINED_FUNCTION_53_1();

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_59();

  __asm { BRAA            X1, X16 }
}

void sub_268551FDC(uint64_t a1)
{
  if (qword_280282960 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_0();
  }

  v4 = v1[48];
  v6 = v1[33];
  v5 = v1[34];
  v7 = v1[32];
  v8 = OUTLINED_FUNCTION_4_23(a1, qword_28028B348);
  v9(v8);
  v10 = v4;
  v11 = sub_2685689E0();
  sub_268568DE0();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86())
  {
    v12 = v1[48];
    v14 = v1[33];
    v13 = v1[34];
    v15 = v1[32];
    OUTLINED_FUNCTION_4();
    v16 = OUTLINED_FUNCTION_7_1();
    v37 = v16;
    *v2 = 136315138;
    v1[22] = v12;
    v17 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v18 = sub_268568B70();
    sub_2684EABEC(v18, v19, &v37);
    OUTLINED_FUNCTION_85();
    *(v2 + 4) = v3;
    OUTLINED_FUNCTION_25_7();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_2();

    v25 = *(v14 + 8);
    v26 = OUTLINED_FUNCTION_34();
    v27(v26);
  }

  else
  {
    v29 = v1[33];
    v28 = v1[34];
    v30 = v1[32];

    v31 = *(v29 + 8);
    v32 = OUTLINED_FUNCTION_34();
    v33(v32);
  }

  v34 = v1[48];
  OUTLINED_FUNCTION_53_1();

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_59();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2685521CC()
{
  OUTLINED_FUNCTION_5();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[16] = v5;
  v1[17] = v6;
  v7 = sub_268567670();
  v1[22] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[23] = v8;
  v10 = *(v9 + 64);
  v1[24] = OUTLINED_FUNCTION_39();
  v11 = sub_268567690();
  v1[25] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[26] = v12;
  v14 = *(v13 + 64);
  v1[27] = OUTLINED_FUNCTION_39();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283960, &qword_268570258);
  OUTLINED_FUNCTION_10(v15);
  v17 = *(v16 + 64);
  v1[28] = OUTLINED_FUNCTION_39();
  v18 = sub_2685689F0();
  v1[29] = v18;
  OUTLINED_FUNCTION_2_4(v18);
  v1[30] = v19;
  v21 = *(v20 + 64);
  v1[31] = OUTLINED_FUNCTION_50();
  v1[32] = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_268552348(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_log_t log, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_12_8();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_71();
  a26 = v28;
  if (*(v28 + 144) && *(v28 + 160))
  {
    v31 = *(v28 + 128) + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType;
    v32 = *(v31 + 32);
    v33 = *(v31 + 16);
    *(v28 + 16) = *v31;
    *(v28 + 32) = v33;
    *(v28 + 48) = v32;
    sub_268542D10(v28 + 16, v28 + 56);
    v34 = sub_268542B84();
    v36 = v35;
    *(v28 + 264) = v34;
    *(v28 + 272) = v35;
    sub_268542D48(v28 + 16);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v37 = *(v28 + 256);
    v38 = *(v28 + 232);
    v39 = *(v28 + 240);
    v40 = *(v28 + 168);
    v41 = *(v28 + 128);
    v42 = __swift_project_value_buffer(v38, qword_28028B348);
    *(v28 + 280) = v42;
    v43 = *(v39 + 16);
    *(v28 + 288) = v43;
    *(v28 + 296) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v43(v37, v42, v38);

    v44 = sub_2685689E0();
    v45 = sub_268568DD0();

    if (os_log_type_enabled(v44, v45))
    {
      v105 = v45;
      v106 = v34;
      v107 = v36;
      loga = v44;
      v46 = *(v28 + 216);
      v47 = *(v28 + 208);
      v101 = *(v28 + 200);
      v102 = *(v28 + 224);
      v48 = *(v28 + 184);
      v49 = *(v28 + 192);
      v50 = *(v28 + 168);
      v103 = *(v28 + 176);
      v51 = *(v28 + 128);
      v52 = swift_slowAlloc();
      a17 = swift_slowAlloc();
      *v52 = 67109890;
      v53 = v50[41];
      *(v52 + 4) = sub_2684D4BC4() & 1;

      *(v52 + 8) = 1024;
      *(v52 + 10) = *(v51 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired);

      *(v52 + 14) = 2080;
      v54 = v50[9];
      __swift_project_boxed_opaque_existential_1(v50 + 5, v50[8]);
      OUTLINED_FUNCTION_73();
      sub_268567A70();
      sub_268567680();
      v56 = *(v47 + 8);
      v55 = v47 + 8;
      v56(v46, v101);
      sub_268567660();
      (*(v48 + 8))(v49, v103);
      v57 = sub_268567650();
      if (__swift_getEnumTagSinglePayload(v102, 1, v57) == 1)
      {
        sub_2684EB7C8(*(v28 + 224), &qword_280283960, &qword_268570258);
        v58 = 0;
        v59 = 0;
      }

      else
      {
        v58 = sub_268567640();
        v59 = v81;
        v82 = *(*(v57 - 8) + 8);
        v83 = OUTLINED_FUNCTION_61_1();
        v84(v83);
      }

      v104 = *(v28 + 256);
      v86 = *(v28 + 232);
      v85 = *(v28 + 240);
      *(v28 + 96) = v58;
      *(v28 + 104) = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A50, &unk_268569F80);
      v87 = sub_268568B70();
      v89 = sub_2684EABEC(v87, v88, &a17);

      *(v52 + 16) = v89;
      *(v52 + 24) = 2080;
      *(v28 + 112) = v106;
      *(v28 + 120) = v107;

      v90 = sub_268568B70();
      sub_2684EABEC(v90, v91, &a17);
      OUTLINED_FUNCTION_88();
      *(v52 + 26) = v55;
      _os_log_impl(&dword_2684CA000, loga, v105, "ANReadNotificationAction.getSummaryType | isEnabled: %{BOOL}d, isFullReadRequired: %{BOOL}d, languageCode: %s, summaries: %s", v52, 0x22u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_3_2();

      v79 = *(v85 + 8);
      v79(v104, v86);
    }

    else
    {
      v74 = *(v28 + 256);
      v75 = *(v28 + 232);
      v76 = *(v28 + 240);
      v77 = *(v28 + 168);
      v78 = *(v28 + 128);

      v79 = *(v76 + 8);
      v80 = OUTLINED_FUNCTION_17_9();
      (v79)(v80);
    }

    *(v28 + 304) = v79;
    v92 = *(v28 + 128);
    v94 = v92[2];
    v93 = v92[3];
    v95 = v92[4];
    v96 = v92[5];
    v97 = swift_task_alloc();
    *(v28 + 312) = v97;
    *v97 = v28;
    v97[1] = sub_268552824;
    v98 = *(v28 + 160);
    v99 = *(v28 + 168);
    OUTLINED_FUNCTION_50_1(*(v28 + 152));
    OUTLINED_FUNCTION_13_8();

    return sub_268552B30();
  }

  else
  {
    v61 = *(v28 + 248);
    v60 = *(v28 + 256);
    v63 = *(v28 + 216);
    v62 = *(v28 + 224);
    v64 = *(v28 + 192);

    OUTLINED_FUNCTION_49_2();
    OUTLINED_FUNCTION_13_8();

    return v67(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, log, a17, a18, a19, a20);
  }
}

uint64_t sub_268552824()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  v4 = *(v3 + 312);
  *v2 = *v0;
  *(v1 + 50) = v5;

  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26855290C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_32_1();
  v11 = *(*(v10 + 168) + 328);
  if (sub_2684D4BC4() & 1) == 0 || (*(*(v10 + 128) + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired))
  {
    v12 = *(v10 + 272);

LABEL_4:
    v13 = *(v10 + 168);
    if ((sub_2685531D8(*(v10 + 136), *(v10 + 144)) & 1) == 0)
    {
      *(*(v10 + 128) + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired);
      *(v10 + 50);
    }

    goto LABEL_6;
  }

  v28 = *(v10 + 272);
  if (!v28)
  {
    goto LABEL_4;
  }

  v29 = *(v10 + 50);
  v30 = *(v10 + 264);
  v31 = *(v10 + 272);

  v32 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v32 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32 || !v29)
  {
    goto LABEL_4;
  }

  v33 = *(v10 + 296);
  (*(v10 + 288))(*(v10 + 248), *(v10 + 280), *(v10 + 232));
  v34 = sub_2685689E0();
  v35 = sub_268568DC0();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v10 + 304);
  v39 = *(v10 + 240);
  v38 = *(v10 + 248);
  v40 = *(v10 + 232);
  if (v36)
  {
    v41 = OUTLINED_FUNCTION_16_0();
    *v41 = 0;
    _os_log_impl(&dword_2684CA000, v34, v35, "ANReadNotificationAction getSummaryType | summarizable notification", v41, 2u);
    OUTLINED_FUNCTION_3_2();
  }

  v42 = OUTLINED_FUNCTION_30();
  v37(v42);
LABEL_6:
  v15 = *(v10 + 248);
  v14 = *(v10 + 256);
  v17 = *(v10 + 216);
  v16 = *(v10 + 224);
  v18 = *(v10 + 192);

  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_79();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_268552AE8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (sub_2685531D8(a2, a3))
  {
    return *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268552B30()
{
  OUTLINED_FUNCTION_5();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[16] = v5;
  v1[17] = v6;
  v1[15] = v7;
  v8 = sub_2685689F0();
  v1[22] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[23] = v9;
  v11 = *(v10 + 64);
  v1[24] = OUTLINED_FUNCTION_50();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v12 = sub_268567690();
  v1[27] = v12;
  OUTLINED_FUNCTION_2_4(v12);
  v1[28] = v13;
  v15 = *(v14 + 64);
  v1[29] = OUTLINED_FUNCTION_39();
  v16 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_268552C44()
{
  OUTLINED_FUNCTION_19_3();
  if (*(v0 + 128))
  {
    sub_268554614(*(v0 + 168) + 160, v0 + 56, &qword_280282B58, &qword_26856A520);
    if (*(v0 + 80))
    {
      sub_2684D8314((v0 + 56), v0 + 16);
    }

    else
    {
      v25 = *(v0 + 232);
      v27 = *(v0 + 120);
      v26 = *(v0 + 128);
      (*(*(v0 + 224) + 16))(v25, *(v0 + 168) + OBJC_IVAR____TtC24SiriNotificationsIntents24ANReadNotificationAction_locale, *(v0 + 216));
      *(v0 + 40) = type metadata accessor for ContentProcessor();
      *(v0 + 48) = &off_2879187B8;
      __swift_allocate_boxed_opaque_existential_0((v0 + 16));

      v28 = OUTLINED_FUNCTION_52();
      sub_2684CF06C(v28, v29, v25, v30);
      if (*(v0 + 80))
      {
        sub_2684EB7C8(v0 + 56, &qword_280282B58, &qword_26856A520);
      }
    }

    v31 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v32 = swift_task_alloc();
    *(v0 + 240) = v32;
    *v32 = v0;
    v32[1] = sub_268552EDC;
    OUTLINED_FUNCTION_50_1(*(v0 + 152));

    return sub_2684CFCE0();
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v2 = *(v0 + 184);
    v1 = *(v0 + 192);
    __swift_project_value_buffer(*(v0 + 176), qword_28028B348);
    v3 = OUTLINED_FUNCTION_12_2();
    v4(v3);
    v5 = sub_2685689E0();
    v6 = sub_268568DC0();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = *(v0 + 176);
    if (v7)
    {
      *OUTLINED_FUNCTION_16_0() = 0;
      OUTLINED_FUNCTION_25_7();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_2();
    }

    v16 = *(v9 + 8);
    v17 = OUTLINED_FUNCTION_34();
    v18(v17);
    v19 = *(v0 + 232);
    v20 = *(v0 + 200);
    v21 = *(v0 + 208);
    v22 = *(v0 + 192);

    OUTLINED_FUNCTION_49_2();

    return v23(0);
  }
}

uint64_t sub_268552EDC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  *(v1 + 112) = v3;
  *(v1 + 96) = v0;
  *(v1 + 104) = v4;
  v6 = *(v5 + 240);
  v7 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v10 + 248) = v9;

  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_268552FC4()
{
  OUTLINED_FUNCTION_19_3();
  if (*(v0 + 248))
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v2 = (v0 + 200);
    v1 = *(v0 + 200);
    v3 = *(v0 + 184);
    __swift_project_value_buffer(*(v0 + 176), qword_28028B348);
    v4 = OUTLINED_FUNCTION_12_2();
    v5(v4);
    v6 = sub_2685689E0();
    v7 = sub_268568DC0();
    if (OUTLINED_FUNCTION_29(v7))
    {
      *OUTLINED_FUNCTION_16_0() = 0;
      OUTLINED_FUNCTION_9_11(&dword_2684CA000, v8, v9, "ANReadNotificationAction isExcessive | missing ttsDuration, returning false");
      v10 = 0;
LABEL_10:
      OUTLINED_FUNCTION_2();
      goto LABEL_12;
    }

    v10 = 0;
  }

  else
  {
    v11 = sub_2684CF960(*(v0 + 104), 0, *(v0 + 136), *(v0 + 144));
    v10 = v11;
    if (qword_280282960 != -1)
    {
      v11 = OUTLINED_FUNCTION_0_0();
    }

    v2 = (v0 + 208);
    v12 = *(v0 + 208);
    v13 = *(v0 + 176);
    v14 = *(v0 + 184);
    v15 = OUTLINED_FUNCTION_4_23(v11, qword_28028B348);
    v16(v15);
    v6 = sub_2685689E0();
    v17 = sub_268568DC0();
    if (os_log_type_enabled(v6, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = v10 & 1;
      _os_log_impl(&dword_2684CA000, v6, v17, "ANReadNotificationAction isExcessive | isExcessive: %{BOOL}d", v18, 8u);
      goto LABEL_10;
    }
  }

LABEL_12:
  v19 = *v2;
  v20 = *(v0 + 176);
  v21 = *(v0 + 184);

  v22 = *(v21 + 8);
  v23 = OUTLINED_FUNCTION_30();
  v24(v23);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v25 = *(v0 + 232);
  v27 = *(v0 + 200);
  v26 = *(v0 + 208);
  v28 = *(v0 + 192);

  OUTLINED_FUNCTION_49_2();

  return v29(v10 & 1);
}

uint64_t sub_2685531D8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2685689F0();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_5();
  v14 = v13 - v12;
  v15 = type metadata accessor for EmojiFormatter();
  v16 = OUTLINED_FUNCTION_17_2(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_5();
  v21 = (v20 - v19);
  v22 = type metadata accessor for ContentProcessor();
  v23 = OUTLINED_FUNCTION_17_2(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_5();
  v29 = (v28 - v27);
  if (a2)
  {
    v61 = v14;
    v62 = v6;
    v30 = a1;
    v59 = v15;
    v31 = OBJC_IVAR____TtC24SiriNotificationsIntents24ANReadNotificationAction_locale;
    v32 = *(v26 + 24);
    v33 = sub_268567690();
    OUTLINED_FUNCTION_17_2(v33);
    v35 = *(v34 + 16);
    v35(v29 + v32, v3 + v31, v33);
    *v29 = v30;
    v29[1] = a2;
    v35(v21 + *(v59 + 20), v29 + v32, v33);
    *v21 = v30;
    v21[1] = a2;
    swift_bridgeObjectRetain_n();
    sub_2685232B4();
    sub_2685237C8(v36);
    v38 = v37;

    sub_268523AA8(v38);
    v40 = v39;
    v42 = v41;

    OUTLINED_FUNCTION_3_24();
    v29[2] = v40;
    v29[3] = v42;
    v60 = v30;
    v63 = v30;
    v64 = a2;
    v43 = a2;
    if (qword_280282978 != -1)
    {
      swift_once();
    }

    v44 = sub_268567450();
    __swift_project_value_buffer(v44, qword_28028B3E0);
    sub_2684D166C();
    sub_268568ED0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282ED0, &qword_26856EB00);
    sub_2684F7A60();
    v45 = sub_268568AF0();
    v47 = v46;

    v63 = v45;
    v64 = v47;
    if (qword_280282980 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v44, qword_28028B3F8);
    OUTLINED_FUNCTION_16_1();
    sub_268568F00();
    v49 = v48;

    if ((v49 & 1) != 0 && !sub_2684D61BC(v60, a2))
    {
      v51 = 1;
    }

    else
    {
      sub_2684CF1C0();
      v51 = v50;
    }

    OUTLINED_FUNCTION_2_26();
    sub_2685545BC(v29, v52);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v53 = __swift_project_value_buffer(v62, qword_28028B348);
    (*(v9 + 16))(v61, v53, v62);

    v54 = sub_2685689E0();
    v55 = sub_268568DD0();

    if (OUTLINED_FUNCTION_24_4())
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v63 = v57;
      *v56 = 67109378;
      *(v56 + 4) = v51 & 1;
      *(v56 + 8) = 2080;
      *(v56 + 10) = sub_2684EABEC(v60, v43, &v63);
      _os_log_impl(&dword_2684CA000, v54, v55, "ANReadNotificationAction isUnspeakable | isUnspeakable: %{BOOL}d notificationText: %s", v56, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v57);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();
    }

    (*(v9 + 8))(v61, v62);
  }

  else
  {
    v51 = 0;
  }

  return v51 & 1;
}

uint64_t sub_268553668(uint64_t a1, char a2)
{
  v4 = *(a1 + 16) == 0xD000000000000014 && 0x8000000268573D00 == *(a1 + 24);
  if (!v4 && (sub_2685691C0() & 1) == 0)
  {
    return 3;
  }

  result = 3;
  if (*(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title + 8))
  {
    v6 = *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle + 8);
    result = v6 ? 0 : 3;
    if (v6 && (a2 & 1) == 0)
    {
      if (*(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body + 8) && (v7 = *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body), sub_268568C10() == 256))
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_268553748()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for ReadingRecord();
  v1[4] = v3;
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_39();
  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2685537C4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_date;
  v8 = v2[5];
  v9 = sub_2685675E0();
  OUTLINED_FUNCTION_17_2(v9);
  (*(v10 + 16))(&v1[v8], v3 + v7);
  v11 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title);
  v12 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title + 8);
  v13 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle);
  v14 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle + 8);
  v15 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body);
  v16 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body + 8);
  v17 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_summaryType);
  v18 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_threadIdentifier);
  v19 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_threadIdentifier + 8);
  *v1 = v6;
  *(v1 + 1) = v5;
  v20 = &v1[v2[6]];
  *v20 = v11;
  *(v20 + 1) = v12;
  v21 = &v1[v2[7]];
  *v21 = v13;
  *(v21 + 1) = v14;
  v22 = &v1[v2[8]];
  *v22 = v15;
  *(v22 + 1) = v16;
  v1[v2[9]] = v17;
  v23 = &v1[v2[10]];
  *v23 = v18;
  *(v23 + 1) = v19;
  v24 = *(v4 + 32);
  v0[6] = v24;
  v0[7] = *(v24 + 32);

  v25 = swift_task_alloc();
  v0[8] = v25;
  *v25 = v0;
  v25[1] = sub_2685539A8;
  v26 = OUTLINED_FUNCTION_50_1(v0[5]);

  return sub_2685590A8(v26);
}

uint64_t sub_2685539A8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *(v4 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v9 + 72) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268553ABC()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_1_25();
  sub_2685545BC(v1, v3);
  sub_268504B64();

  OUTLINED_FUNCTION_9_10();

  return v4();
}

uint64_t sub_268553B28()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_1_25();
  sub_2685545BC(v1, v2);

  OUTLINED_FUNCTION_9_1();
  v4 = *(v0 + 72);

  return v3();
}

uint64_t sub_268553B94(uint64_t a1)
{
  v2 = sub_2685679B0();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_5();
  v8 = v7 - v6;
  v9 = sub_268567B60();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_5();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_47_3(OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired);
  if (v37)
  {
    sub_268567A20();
    v16 = *MEMORY[0x277D5BC10];
    v17 = OUTLINED_FUNCTION_32_7();
    v18(v17);
    v19 = *MEMORY[0x277D5B950];
    v20 = OUTLINED_FUNCTION_31_9();
    v21(v20);

    OUTLINED_FUNCTION_2_15();
    v22 = 7;
LABEL_6:
    v29 = 9;
    return sub_2684EBB74(v22, v29, v15, v8, 8, 0, 0, a1, v44, v45);
  }

  if (sub_2685425D4())
  {
    sub_268567A20();
    v23 = *MEMORY[0x277D5BC10];
    v24 = OUTLINED_FUNCTION_32_7();
    v25(v24);
    v26 = *MEMORY[0x277D5B950];
    v27 = OUTLINED_FUNCTION_31_9();
    v28(v27);

    OUTLINED_FUNCTION_2_15();
    v22 = 9;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_47_3(OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead);
  if (v37)
  {
    sub_268567A20();
    v31 = *MEMORY[0x277D5BC10];
    v32 = OUTLINED_FUNCTION_32_7();
    v33(v32);
    v34 = *MEMORY[0x277D5B950];
    v35 = OUTLINED_FUNCTION_31_9();
    v36(v35);

    OUTLINED_FUNCTION_2_15();
    v22 = 6;
    v29 = 5;
    return sub_2684EBB74(v22, v29, v15, v8, 8, 0, 0, a1, v44, v45);
  }

  OUTLINED_FUNCTION_47_3(OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized);
  if (v37)
  {
    sub_268567A20();
    v38 = *MEMORY[0x277D5BC10];
    v39 = OUTLINED_FUNCTION_32_7();
    v40(v39);
    v41 = *MEMORY[0x277D5B950];
    v42 = OUTLINED_FUNCTION_31_9();
    v43(v42);

    OUTLINED_FUNCTION_2_15();
    v22 = 6;
    v29 = 6;
    return sub_2684EBB74(v22, v29, v15, v8, 8, 0, 0, a1, v44, v45);
  }

  return 0;
}

uint64_t sub_268553E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2685679B0();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_5();
  v10 = v9 - v8;
  v11 = sub_268567B60();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_5();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_47_3(OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired);
  if (v39)
  {
    sub_268567A20();
    v18 = *MEMORY[0x277D5BC00];
    v19 = OUTLINED_FUNCTION_30_6();
    v20(v19);
    v21 = *MEMORY[0x277D5B8D0];
    v22 = OUTLINED_FUNCTION_33_4();
    v23(v22);
    OUTLINED_FUNCTION_84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_2_15();
    v24 = 7;
LABEL_6:
    v31 = 9;
    return sub_2684EBB74(v24, v31, v17, v10, 8, a2, v4, a1, v46, v47);
  }

  if (sub_2685425D4())
  {
    sub_268567A20();
    v25 = *MEMORY[0x277D5BC00];
    v26 = OUTLINED_FUNCTION_30_6();
    v27(v26);
    v28 = *MEMORY[0x277D5B8D0];
    v29 = OUTLINED_FUNCTION_33_4();
    v30(v29);
    OUTLINED_FUNCTION_84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_2_15();
    v24 = 9;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_47_3(OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead);
  if (v39)
  {
    sub_268567A20();
    v33 = *MEMORY[0x277D5BC00];
    v34 = OUTLINED_FUNCTION_30_6();
    v35(v34);
    v36 = *MEMORY[0x277D5B8D0];
    v37 = OUTLINED_FUNCTION_33_4();
    v38(v37);
    OUTLINED_FUNCTION_84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_2_15();
    v24 = 6;
    v31 = 5;
    return sub_2684EBB74(v24, v31, v17, v10, 8, a2, v4, a1, v46, v47);
  }

  OUTLINED_FUNCTION_47_3(OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized);
  if (v39)
  {
    sub_268567A20();
    v40 = *MEMORY[0x277D5BC00];
    v41 = OUTLINED_FUNCTION_30_6();
    v42(v41);
    v43 = *MEMORY[0x277D5B8D0];
    v44 = OUTLINED_FUNCTION_33_4();
    v45(v44);
    OUTLINED_FUNCTION_84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_2_15();
    v24 = 6;
    v31 = 6;
    return sub_2684EBB74(v24, v31, v17, v10, 8, a2, v4, a1, v46, v47);
  }

  return 0;
}

uint64_t sub_2685541BC(uint64_t result)
{
  if (result)
  {

    sub_268567990();
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    OUTLINED_FUNCTION_34();
    sub_2685679A0();

    return __swift_destroy_boxed_opaque_existential_0(v1);
  }

  return result;
}

uint64_t *sub_268554230()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  sub_2684EB7C8((v0 + 20), &qword_280282B58, &qword_26856A520);
  v3 = v0[25];

  sub_2684CC8D4((v0 + 26));
  v4 = OBJC_IVAR____TtC24SiriNotificationsIntents24ANReadNotificationAction_locale;
  v5 = sub_268567690();
  OUTLINED_FUNCTION_17_2(v5);
  (*(v6 + 8))(v0 + v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC24SiriNotificationsIntents24ANReadNotificationAction_protectedAppChecker));
  return v0;
}

uint64_t sub_2685542E8()
{
  sub_268554230();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ANReadNotificationAction()
{
  result = qword_280283948;
  if (!qword_280283948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268554394()
{
  result = sub_268567690();
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

uint64_t sub_268554460()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB128;

  return sub_26854CBC4();
}

uint64_t sub_268554578(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANReadNotificationAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2685545BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_268554614(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_17_2(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_268554674()
{
  result = qword_280283970;
  if (!qword_280283970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283970);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ANReadNotificationAction.ReadNotificationActionErrors(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x268554764);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2685547A0()
{
  result = qword_280283980;
  if (!qword_280283980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283980);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_24()
{

  return sub_2685545BC(v0, type metadata accessor for EmojiFormatter);
}

uint64_t OUTLINED_FUNCTION_4_23(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v3, a2);
  v5 = *(v4 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_10_14()
{
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[34];
  v8 = v0[32];
  v11 = v0[31];
  v12 = v0[30];
  v13 = v0[29];
  v14 = v0[28];
  v15 = v0[26];
  v16 = v0[25];
  v17 = v0[24];
  v18 = v0[23];
  v9 = v0[20];
  v19 = v0[17];
  v20 = v0[16];

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_14_9()
{
  v2 = v0[37];
  result = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[31];
  v8 = v0[32];
  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[28];
  v13 = v0[25];
  v12 = v0[26];
  return result;
}

uint64_t OUTLINED_FUNCTION_24_11()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[21];
  return v0[24];
}

uint64_t OUTLINED_FUNCTION_41_3()
{
  v2 = v0[25];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
}

uint64_t OUTLINED_FUNCTION_44_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_45_1()
{
  v3 = v0[24];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[16];
}

uint64_t OUTLINED_FUNCTION_48_3(uint64_t a1)
{

  return sub_2684EB7C8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_51_1()
{
}

uint64_t OUTLINED_FUNCTION_52_2(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 328);
  v4 = *(v2 + 473);
  v5 = *(v2 + 472);
  v7 = *(v2 + 272);
  v6 = *(v2 + 280);
  v9 = *(v2 + 256);
  v8 = *(v2 + 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_53_1()
{
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[35];
  v10 = v0[34];

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_57_1(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_64_0()
{
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v9 = v0[35];
  v8 = v0[36];
  v10 = v0[34];
}

uint64_t OUTLINED_FUNCTION_67_0()
{
}

id OUTLINED_FUNCTION_69_0(float a1)
{
  *v3 = a1;
  *(v2 + 96) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_70(uint64_t a1)
{

  return sub_2684EB7C8(a1, v2, v1);
}

void OUTLINED_FUNCTION_80()
{
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[20];
  v8 = v0[21];
}

id OUTLINED_FUNCTION_81(float a1)
{
  *v2 = a1;
  *(v1 + 64) = v3;

  return v3;
}

uint64_t OUTLINED_FUNCTION_83(uint64_t a1)
{

  return sub_2684EB7C8(a1, v1, v2);
}

id OUTLINED_FUNCTION_84()
{
  *(v1 - 88) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_85()
{
}

BOOL OUTLINED_FUNCTION_86()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_87()
{
}

uint64_t OUTLINED_FUNCTION_88()
{
}

uint64_t OUTLINED_FUNCTION_89(uint64_t a1)
{

  return sub_2684EB7C8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_90()
{

  return sub_268568B70();
}

uint64_t sub_268554CE0()
{
  v1 = v0;
  sub_268568FD0();
  OUTLINED_FUNCTION_13_18();
  MEMORY[0x26D61BDA0]();
  MEMORY[0x26D61BDA0](v1[4], v1[5]);
  OUTLINED_FUNCTION_13_18();
  MEMORY[0x26D61BDA0]();
  MEMORY[0x26D61BDA0](v1[2], v1[3]);
  MEMORY[0x26D61BDA0](0x203A65746164202CLL, 0xE800000000000000);
  sub_2685675E0();
  sub_2685036B0();
  v2 = sub_2685691A0();
  MEMORY[0x26D61BDA0](v2);

  MEMORY[0x26D61BDA0](0x3A656C746974202CLL, 0xE900000000000020);
  OUTLINED_FUNCTION_3_25(OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_title);

  OUTLINED_FUNCTION_11_15();

  MEMORY[0x26D61BDA0](0x746974627573202CLL, 0xEC000000203A656CLL);
  OUTLINED_FUNCTION_3_25(OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_subtitle);

  OUTLINED_FUNCTION_11_15();

  MEMORY[0x26D61BDA0](0x203A79646F62202CLL, 0xE800000000000000);
  OUTLINED_FUNCTION_3_25(OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_body);

  OUTLINED_FUNCTION_11_15();

  OUTLINED_FUNCTION_13_18();
  MEMORY[0x26D61BDA0]();
  if (*(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isPreviewRestricted))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isPreviewRestricted))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x26D61BDA0](v3, v4);

  MEMORY[0x26D61BDA0](0x686769487369202CLL, 0xEF203A746867696CLL);
  if (*(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x26D61BDA0](v5, v6);

  OUTLINED_FUNCTION_13_18();
  MEMORY[0x26D61BDA0](0xD000000000000010);
  v8 = OUTLINED_FUNCTION_3_25(OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_stackSummary);
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (v7)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = v8;
  }

  MEMORY[0x26D61BDA0](v10, v11);

  return 0;
}

BOOL sub_268554FB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_messagingAppBundleIDs);
  v2 = *(v0 + 24);
  v5[0] = *(v0 + 16);
  v5[1] = v2;
  v4[2] = v5;
  return sub_26855B7B0(sub_26855671C, v4, v1);
}

void sub_268555018(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_2685689F0();
  v8 = OUTLINED_FUNCTION_1(v7);
  v129 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  v124 = v12;
  OUTLINED_FUNCTION_17();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v122 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  v125 = v17;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v19);
  v21 = &v122 - v20;
  v22 = sub_2685675E0();
  v23 = OUTLINED_FUNCTION_1(v22);
  v127 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  v128 = &v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v29 = sub_26855666C(v28, &selRef_type);
  if (!v30)
  {

    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v58 = __swift_project_value_buffer(v7, qword_28028B348);
    v59 = v129;
    (*(v129 + 16))(v16, v58, v7);
    v60 = v28;
    v61 = sub_2685689E0();
    v62 = sub_268568DC0();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v130 = v64;
      *v63 = 136315138;
      v65 = sub_268565330(v60);
      v67 = v66;

      if (!v67)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v68 = sub_2684EABEC(v65, v67, &v130);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_2684CA000, v61, v62, "ReadNotification init?(notificationObject: SANotificationOnDeviceObject) | initialization failure due to missing notification type for notification with app id: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v129 + 8))(v16, v7);
    }

    else
    {

      (*(v59 + 8))(v16, v7);
    }

LABEL_32:
    type metadata accessor for ReadNotification();
    v93 = *(*v4 + 48);
    v94 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
    return;
  }

  v31 = v29;
  v32 = v30;
  v126 = a2;
  v33 = [v28 date];
  if (!v33)
  {

    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v69 = __swift_project_value_buffer(v7, qword_28028B348);
    v70 = v129;
    (*(v129 + 16))(v21, v69, v7);
    v71 = v28;
    v72 = sub_2685689E0();
    v73 = sub_268568DC0();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v130 = v75;
      *v74 = 136315138;
      v76 = sub_268565330(v71);
      v78 = v77;

      if (!v78)
      {
LABEL_49:
        __break(1u);
        return;
      }

      v79 = sub_2684EABEC(v76, v78, &v130);

      *(v74 + 4) = v79;
      _os_log_impl(&dword_2684CA000, v72, v73, "ReadNotification init?(notificationObject: SANotificationOnDeviceObject) | initialization failure due to missing date for notification with app id: %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v129 + 8))(v21, v7);
    }

    else
    {

      (*(v70 + 8))(v21, v7);
    }

    goto LABEL_32;
  }

  v34 = v33;
  sub_2685675C0();

  v35 = v28;
  v36 = sub_268565290(v35);
  if (!v37)
  {
    __break(1u);
    goto LABEL_46;
  }

  v4[4] = v36;
  v4[5] = v37;
  v38 = v35;
  v39 = sub_26855666C(v38, &selRef_applicationId);
  if (!v40)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v4[2] = v39;
  v4[3] = v40;
  v41 = v38;
  v4[6] = sub_26855666C(v41, &selRef_threadIdentifier);
  v4[7] = v42;
  (*(v127 + 16))(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_date, v128, v22);
  v43 = (v4 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type);
  *v43 = v31;
  v43[1] = v32;
  v44 = v41;

  v45 = sub_26855666C(v44, &selRef_applicationId);
  if (!v46)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v47 = v45;
  v48 = v46;

  sub_2685687A0();
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_appName) = sub_2684FF6C4(v47, v48);
  v49 = sub_268565300(v44);
  OUTLINED_FUNCTION_5_20(v49, v50, OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_title);
  v51 = sub_26856530C(v44);
  OUTLINED_FUNCTION_5_20(v51, v52, OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_subtitle);
  v53 = sub_268565318(v44);
  OUTLINED_FUNCTION_5_20(v53, v54, OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_body);
  v55 = [v44 previewRestricted];
  sub_2685566D8();
  v56 = sub_268568E60();
  if (v55)
  {
    v57 = sub_268568E70();

    v56 = v55;
  }

  else
  {
    v57 = 0;
  }

  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isPreviewRestricted) = v57 & 1;
  v80 = v44;
  v81 = sub_26855666C(v80, &selRef_source);
  v83 = v82;
  v84 = *MEMORY[0x277D48750];
  v85 = sub_268568B20();
  if (v83)
  {
    if (v81 == v85 && v83 == v86)
    {

LABEL_34:
      v89 = 0;
      goto LABEL_35;
    }

    v88 = sub_2685691C0();

    v89 = 0;
    if (v88)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v90 = [v80 isHighlight];
  v91 = sub_268568E60();
  v92 = v91;
  if (!v90)
  {

    goto LABEL_34;
  }

  v89 = sub_268568E70();

LABEL_35:
  v123 = v22;
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight) = v89 & 1;
  v95 = sub_268527624(v80);
  OUTLINED_FUNCTION_5_20(v95, v96, OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_summary);
  v97 = sub_268527630(v80);
  OUTLINED_FUNCTION_5_20(v97, v98, OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_stackSummary);
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_messagingAppBundleIDs) = v126;
  v99 = sub_26855666C(v80, &selRef_source);
  OUTLINED_FUNCTION_5_20(v99, v100, OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_source);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v101 = __swift_project_value_buffer(v7, qword_28028B348);
  v102 = v129;
  v103 = v7;
  v104 = *(v129 + 16);
  v126 = v103;
  v104(v3, v101);
  v105 = sub_2685689E0();
  v106 = sub_268568DC0();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&dword_2684CA000, v105, v106, "ReadNotification init? attempting to unwrap SANotificationOnDeviceObject.request", v107, 2u);
    OUTLINED_FUNCTION_2();
  }

  v108 = *(v102 + 8);
  v109 = v126;
  v129 = v102 + 8;
  v108(v3, v126);
  v110 = sub_268556608(v80);
  if (v111 >> 60 == 15)
  {
    v112 = v125;
    (v104)(v125, v101, v109);
    v113 = sub_2685689E0();
    v114 = sub_268568DC0();
    v115 = os_log_type_enabled(v113, v114);
    v116 = v123;
    if (v115)
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_2684CA000, v113, v114, "ReadNotification SANotificationOnDeviceObject.request is not set", v117, 2u);
      OUTLINED_FUNCTION_2();
    }

    v108(v112, v126);
    (*(v127 + 8))(v128, v116);
    v118 = 0;
    v119 = -1;
  }

  else
  {
    v118 = sub_2684E07D8(v110, v111);
    v119 = v121;
    (*(v127 + 8))(v128, v123);
  }

  v120 = v4 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_notificationContent;
  *v120 = v118;
  v120[8] = v119;
}

uint64_t sub_268555B38()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_27();
  v104 = v5;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  v103 = v7;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v102 = v9;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v101 = v11;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19();
  v100 = v13;
  OUTLINED_FUNCTION_17();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v96 - v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v18);
  v20 = v96 - v19;
  v21 = type metadata accessor for NotificationsNotification.Builder(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_2684D2024();
  v25 = v0[4];
  v26 = v0[5];
  sub_268568BB0();
  v27 = sub_268568810();
  v28 = 1;
  v29 = OUTLINED_FUNCTION_6_24();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
  v32 = OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_notificationId;
  OUTLINED_FUNCTION_2_27();
  sub_268532644(v20, v24 + v32);
  swift_endAccess();
  sub_26850341C(v20, &qword_280282AF0, &qword_26856A1E0);
  v33 = v2[2];
  v98 = v2[3];
  v99 = v33;
  sub_268568BB0();
  v34 = OUTLINED_FUNCTION_6_24();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v27);
  v37 = OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_appId;
  OUTLINED_FUNCTION_1_26();
  sub_268532644(v20, v24 + v37);
  swift_endAccess();
  sub_26850341C(v20, &qword_280282AF0, &qword_26856A1E0);
  v38 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type);
  v39 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type + 8);
  sub_268568BB0();
  v40 = OUTLINED_FUNCTION_6_24();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v27);
  v43 = OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_appName;
  OUTLINED_FUNCTION_1_26();
  sub_268532644(v20, v24 + v43);
  swift_endAccess();
  sub_26850341C(v20, &qword_280282AF0, &qword_26856A1E0);
  v44 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_title + 8);
  v96[1] = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_title);
  v97 = v44;
  if (v44)
  {
    sub_268568BB0();
    v28 = 0;
  }

  v45 = 1;
  OUTLINED_FUNCTION_9_20(v1, v28);
  v46 = OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_title;
  OUTLINED_FUNCTION_1_26();
  sub_268532644(v1, v24 + v46);
  swift_endAccess();
  sub_26850341C(v1, &qword_280282AF0, &qword_26856A1E0);
  v47 = v98;
  if (*(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_subtitle + 8))
  {
    v48 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_subtitle);
    sub_268568BB0();
    v45 = 0;
  }

  v49 = v100;
  v50 = 1;
  OUTLINED_FUNCTION_9_20(v17, v45);
  v51 = OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_subtitle;
  OUTLINED_FUNCTION_1_26();
  sub_268532644(v17, v24 + v51);
  swift_endAccess();
  sub_26850341C(v17, &qword_280282AF0, &qword_26856A1E0);
  if (*(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_body + 8))
  {
    v52 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_body);
    sub_268568BB0();
    v50 = 0;
  }

  v53 = 1;
  OUTLINED_FUNCTION_9_20(v49, v50);
  v54 = OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_body;
  OUTLINED_FUNCTION_1_26();
  sub_268532644(v49, v24 + v54);
  swift_endAccess();
  v55 = sub_26850341C(v49, &qword_280282AF0, &qword_26856A1E0);
  v56 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_messagingAppBundleIDs);
  v57 = v99;
  v105[0] = v99;
  v105[1] = v47;
  MEMORY[0x28223BE20](v55);
  v96[-2] = v105;
  *(v24 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isMessage) = sub_26855B7B0(sub_2684F3570, &v96[-4], v58);
  if (v57 != 0xD000000000000014 || 0x8000000268573D00 != v47)
  {
    v53 = sub_2685691C0();
  }

  *(v24 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isMail) = v53 & 1;
  if (v57 == 0xD000000000000013 && 0x8000000268573DF0 == v47)
  {
    v61 = 1;
  }

  else
  {
    v61 = sub_2685691C0();
  }

  v62 = v101;
  v63 = v102;
  *(v24 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isReminder) = v61 & 1;
  *(v24 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isHighlight) = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight);
  v64 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_summary);
  v65 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_summary + 8);
  if (v65)
  {
    v66 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_summary);
    v67 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_summary + 8);
    sub_268568BB0();
    v68 = 0;
  }

  else
  {
    v68 = 1;
  }

  OUTLINED_FUNCTION_9_20(v62, v68);
  v69 = OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_highlight;
  OUTLINED_FUNCTION_2_27();
  sub_268532644(v62, v24 + v69);
  swift_endAccess();
  sub_26850341C(v62, &qword_280282AF0, &qword_26856A1E0);
  v70 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_stackSummary);
  v71 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_stackSummary + 8);
  if (v71)
  {
    v72 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_stackSummary);
    v73 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_stackSummary + 8);
    sub_268568BB0();
    v74 = 0;
  }

  else
  {
    v74 = 1;
  }

  OUTLINED_FUNCTION_9_20(v63, v74);
  v75 = OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_stackSummary;
  OUTLINED_FUNCTION_1_26();
  sub_268532644(v63, v24 + v75);
  swift_endAccess();
  sub_26850341C(v63, &qword_280282AF0, &qword_26856A1E0);
  *(v24 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_containsStackSummary) = (sub_2684CCCAC(v70, v71) & 1) == 0;
  v76 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_notificationContent + 8);
  if (v76 == 255)
  {
    *(v24 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isDM) = 0;
    v78 = v103;
    goto LABEL_34;
  }

  v77 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_notificationContent);
  v78 = v103;
  if (v76)
  {
    v79 = sub_2684E06CC();
    OUTLINED_FUNCTION_17_11();
    *(v24 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isDM) = v79 & 1;
    v80 = v77;
    if (sub_2684E0514())
    {
      sub_2684E0764();
      goto LABEL_31;
    }

LABEL_33:
    OUTLINED_FUNCTION_17_11();
    goto LABEL_34;
  }

  v82 = sub_2684E0640();
  OUTLINED_FUNCTION_17_11();
  *(v24 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isDM) = v82 & 1;
  v83 = v77;
  if ((sub_2684E03C8() & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_2684E12C4();
LABEL_31:
  v84 = v81;
  OUTLINED_FUNCTION_17_11();
  if (v84)
  {
    goto LABEL_35;
  }

LABEL_34:
  v85 = v97;

  if (v85)
  {
LABEL_35:
    sub_268568BB0();

    v86 = 0;
    goto LABEL_37;
  }

  v86 = 1;
LABEL_37:
  v87 = 1;
  OUTLINED_FUNCTION_9_20(v78, v86);
  v88 = OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_senderDisplayName;
  OUTLINED_FUNCTION_2_27();
  sub_268532644(v78, v24 + v88);
  swift_endAccess();
  sub_26850341C(v78, &qword_280282AF0, &qword_26856A1E0);
  *(v24 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_containsHighlightSummary) = (sub_2684CCCAC(v64, v65) & 1) == 0;
  if (v2[7])
  {
    v89 = v2[6];
    v90 = v104;
    sub_268568BB0();
    v87 = 0;
  }

  else
  {
    v90 = v104;
  }

  OUTLINED_FUNCTION_9_20(v90, v87);
  v91 = OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_threadId;
  OUTLINED_FUNCTION_2_27();
  sub_268532644(v90, v24 + v91);
  swift_endAccess();
  sub_26850341C(v90, &qword_280282AF0, &qword_26856A1E0);
  v92 = type metadata accessor for NotificationsNotification(0);
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  swift_allocObject();
  return sub_2684D2228(v24);
}

char *sub_268556364()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_date;
  v5 = sub_2685675E0();
  OUTLINED_FUNCTION_0_9(v5);
  (*(v6 + 8))(&v0[v4]);
  OUTLINED_FUNCTION_6_22(OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type);
  v7 = *&v0[OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_appName];

  OUTLINED_FUNCTION_6_22(OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_title);
  OUTLINED_FUNCTION_6_22(OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_subtitle);
  OUTLINED_FUNCTION_6_22(OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_body);
  OUTLINED_FUNCTION_6_22(OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_summary);
  OUTLINED_FUNCTION_6_22(OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_stackSummary);
  sub_268542D78(*&v0[OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_notificationContent], v0[OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_notificationContent + 8]);
  v8 = *&v0[OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_messagingAppBundleIDs];

  OUTLINED_FUNCTION_6_22(OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_source);
  return v0;
}

uint64_t sub_26855645C()
{
  sub_268556364();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ReadNotification()
{
  result = qword_280283988;
  if (!qword_280283988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268556508()
{
  result = sub_2685675E0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_268556608(void *a1)
{
  v1 = [a1 request];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268567540();

  return v3;
}

uint64_t sub_26855666C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_268568B20();

  return v4;
}

unint64_t sub_2685566D8()
{
  result = qword_280282BA8;
  if (!qword_280282BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280282BA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_26()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_27()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_25@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v4 = *v2;
  return v2[1];
}

uint64_t OUTLINED_FUNCTION_9_20(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

void OUTLINED_FUNCTION_11_15()
{

  JUMPOUT(0x26D61BDA0);
}

void OUTLINED_FUNCTION_17_11()
{

  sub_268542D78(v1, v0);
}

uint64_t sub_2685567EC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  LODWORD(v6) = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_7_5();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = sub_2685689F0();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_5();
  v24 = v23 - v22;
  v43 = sub_2685570C0(a1);
  v44 = v25;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v26 = __swift_project_value_buffer(v16, qword_28028B348);
  (*(v19 + 16))(v24, v26, v16);
  sub_268557468(a1, v15);
  v27 = sub_2685689E0();
  v28 = sub_268568DE0();
  if (os_log_type_enabled(v27, v28))
  {
    v40 = v28;
    v41 = v6;
    v45 = a4;
    v42 = a3;
    v29 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46 = v39;
    *v29 = 136315650;
    sub_268557468(v15, v12);
    v30 = sub_2685675E0();
    if (__swift_getEnumTagSinglePayload(v12, 1, v30) == 1)
    {
      sub_2685574D8(v12);
      v31 = 0xE300000000000000;
      v6 = 7104878;
    }

    else
    {
      v6 = sub_268567550();
      v31 = v32;
      (*(*(v30 - 8) + 8))(v12, v30);
    }

    a3 = v42;
    sub_2685574D8(v15);
    v33 = sub_2684EABEC(v6, v31, &v46);

    *(v29 + 4) = v33;
    *(v29 + 12) = 1024;
    LOBYTE(v6) = v41;
    *(v29 + 14) = v41 & 1;
    *(v29 + 18) = 2080;
    if (v45)
    {
      v34 = 0xE300000000000000;
      v35 = 7104878;
    }

    else
    {
      v35 = sub_268568D80();
      v34 = v36;
    }

    v37 = sub_2684EABEC(v35, v34, &v46);

    *(v29 + 20) = v37;
    _os_log_impl(&dword_2684CA000, v27, v40, "#HintUtils %s %{BOOL}d %s", v29, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v19 + 8))(v24, v16);
    if (v45)
    {
      return 254;
    }
  }

  else
  {

    sub_2685574D8(v15);
    (*(v19 + 8))(v24, v16);
    if (a4)
    {
      return 254;
    }
  }

  if (((v43 < 7) & ~v44) == 0 && (v6 & 1) == 0 && *&a3 > 5.0)
  {
    return 128;
  }

  return 254;
}

uint64_t sub_268556BC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41[0] = a4;
  v15 = sub_2685689F0();
  v16 = OUTLINED_FUNCTION_1(v15);
  v42 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_5();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v41 - v24;
  v41[1] = a5;
  v41[2] = a6;
  v41[3] = a7;
  v41[4] = a8;
  sub_26851A778();
  if (v26)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v27 = __swift_project_value_buffer(v15, qword_28028B348);
    v28 = v42;
    (*(v42 + 16))(v22, v27, v15);
    v29 = sub_2685689E0();
    v30 = sub_268568DC0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2684CA000, v29, v30, "SpokenHintUtils getRepeatHint | repeat hint disabled", v31, 2u);
      OUTLINED_FUNCTION_2();
    }

    (*(v28 + 8))(v22, v15);
    return 254;
  }

  if (a3)
  {
    if (!a1)
    {
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v32 = __swift_project_value_buffer(v15, qword_28028B348);
      v33 = v42;
      (*(v42 + 16))(v25, v32, v15);
      v34 = sub_2685689E0();
      v35 = sub_268568DC0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_2684CA000, v34, v35, "SpokenHintUtils getRepeatHint | legacy hint read, mocking a usage of repeat hint", v36, 2u);
        OUTLINED_FUNCTION_2();
      }

      (*(v33 + 8))(v25, v15);
      sub_268519BA8();
    }

    return 254;
  }

  v38 = sub_2685675E0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a2, 1, v38);
  if (a1)
  {
    v40 = -2;
  }

  else
  {
    v40 = 1;
  }

  if (EnumTagSinglePayload == 1)
  {
    return 0;
  }

  else
  {
    return v40;
  }
}

uint64_t sub_268556ED4(char a1)
{
  if (a1)
  {
    return 0x657369636E6F63;
  }

  else
  {
    return 0x65736F62726576;
  }
}

uint64_t sub_268556F10()
{
  v0 = sub_2685690D0();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268556F60(char a1)
{
  if (a1)
  {
    return 0x7261726F706D6574;
  }

  else
  {
    return 0x746163696C707061;
  }
}

uint64_t sub_268556FD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268556F10();
  *a2 = result;
  return result;
}

uint64_t sub_268557008@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268556ED4(*v1);
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_26855705C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268556F10();
  *a2 = result;
  return result;
}

uint64_t sub_268557094@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268556F60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2685570C0(uint64_t a1)
{
  v2 = sub_2685676D0();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_5();
  v10 = v9 - v8;
  v11 = sub_268567480();
  v12 = OUTLINED_FUNCTION_1(v11);
  v50 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_5();
  v49 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v47 - v20;
  v22 = sub_2685675E0();
  v23 = OUTLINED_FUNCTION_1(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_5();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v47 - v32;
  sub_268557468(a1, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_2685574D8(v21);
    return 0;
  }

  else
  {
    (*(v25 + 32))(v33, v21, v22);
    sub_2685676B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D20, &qword_26856B320);
    v35 = sub_2685676C0();
    OUTLINED_FUNCTION_1(v35);
    v47 = v2;
    v37 = v36;
    v39 = *(v38 + 72);
    v40 = *(v36 + 80);
    v48 = v11;
    v41 = v5;
    v42 = (v40 + 32) & ~v40;
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_26856A540;
    (*(v37 + 104))(v43 + v42, *MEMORY[0x277CC9968], v35);
    sub_2684E6A40();
    sub_2685675D0();
    v44 = v49;
    sub_2685676A0();

    v45 = *(v25 + 8);
    v45(v30, v22);
    (*(v41 + 8))(v10, v47);
    v34 = sub_268567460();
    (*(v50 + 8))(v44, v48);
    v45(v33, v22);
  }

  return v34;
}

uint64_t sub_268557468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2685574D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268557540(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7E)
  {
    if (a2 + 130 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 130) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 131;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v5 >= 0x7D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *sub_2685575D8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7D)
  {
    v6 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
        JUMPOUT(0x2685576B0);
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
          *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2685576D8(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_268557704(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 1 | (a2 << 6);
  }

  else
  {
    v2 = a2 & 1 | 0x80;
  }

  *result = v2;
  return result;
}

_BYTE *sub_26855774C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268557818);
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

unint64_t sub_268557850()
{
  result = qword_280283998;
  if (!qword_280283998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283998);
  }

  return result;
}

unint64_t sub_2685578A8()
{
  result = qword_2802839A0;
  if (!qword_2802839A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802839A0);
  }

  return result;
}

uint64_t sub_268557910()
{
  OUTLINED_FUNCTION_5();
  v0[11] = v1;
  v2 = sub_2685679B0();
  v0[12] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v0[13] = v3;
  v5 = *(v4 + 64);
  v0[14] = OUTLINED_FUNCTION_39();
  v6 = sub_268567B60();
  v0[15] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v0[16] = v7;
  v9 = *(v8 + 64);
  v0[17] = OUTLINED_FUNCTION_39();
  v10 = *(*(sub_268567B10() - 8) + 64);
  v0[18] = OUTLINED_FUNCTION_39();
  v11 = sub_268567F20();
  v0[19] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v0[20] = v12;
  v14 = *(v13 + 64);
  v0[21] = OUTLINED_FUNCTION_39();
  v15 = sub_2685689F0();
  v0[22] = v15;
  OUTLINED_FUNCTION_2_4(v15);
  v0[23] = v16;
  v18 = *(v17 + 64);
  v0[24] = OUTLINED_FUNCTION_39();
  v19 = *(*(sub_2685688F0() - 8) + 64);
  v0[25] = OUTLINED_FUNCTION_39();

  return MEMORY[0x2822009F8](sub_268557AE8, 0, 0);
}

uint64_t sub_268557AE8()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[25];
  type metadata accessor for ReadNotificationsCATPatternsExecutor();
  sub_2685688E0();
  v0[26] = sub_268568710();
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_268557BA0;

  return sub_268513CA0();
}

uint64_t sub_268557BA0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v0;
  v5 = v2[27];
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  v3[28] = v0;

  if (v0)
  {
    v8 = sub_268558044;
  }

  else
  {
    v9 = v3[26];

    v8 = sub_268557CB4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_268557CB4()
{
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNReadNotificationsNotSupportedForDeviceFlow execute | pattern successfully executed", v7, 2u);
    MEMORY[0x26D61CB30](v7, -1, -1);
  }

  v8 = v0[8];
  v9 = v0[24];
  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[21];
  v30 = v0[20];
  v13 = v0[18];
  v31 = v0[19];
  v14 = v0[16];
  v25 = v0[17];
  v26 = v0[15];
  v15 = v0[13];
  v27 = v0[14];
  v28 = v0[12];
  v29 = v0[11];

  (*(v10 + 8))(v9, v11);
  sub_268567AE0();
  sub_268567ED0();
  sub_268567EB0();
  v16 = sub_268567D00();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_268567CF0();
  v19 = sub_268567840();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v0[10] = sub_268567830();
  sub_268567890();

  sub_268567990();
  v22 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_268567A20();
  (*(v14 + 104))(v25, *MEMORY[0x277D5BC00], v26);
  (*(v15 + 104))(v27, *MEMORY[0x277D5B938], v28);
  sub_2684EBB74(1, 9, v25, v27, 1, 0, 0, 0, 0, 2u);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_268567C30();

  (*(v30 + 8))(v12, v31);

  OUTLINED_FUNCTION_9_1();

  return v23();
}

uint64_t sub_268558044()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[14];

  OUTLINED_FUNCTION_9_1();
  v9 = v0[28];

  return v8();
}

uint64_t sub_2685580F4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_2684DDBA0(0, 0, v8, &unk_268570660, v10);
}

uint64_t sub_2685581F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v8 = *(v7 - 8);
  v6[5] = v8;
  v9 = *(v8 + 64) + 15;
  v6[6] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = sub_2684DAC24;

  return sub_268557910();
}

uint64_t sub_268558334()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26855837C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684DB128;

  return sub_2685581F4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_268558444(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746163696C707061 && a2 == 0xED000064496E6F69;
  if (v4 || (sub_2685691C0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
    if (v6 || (sub_2685691C0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_2685691C0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
        if (v8 || (sub_2685691C0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 2036625250 && a2 == 0xE400000000000000;
          if (v9 || (sub_2685691C0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000;
            if (v10 || (sub_2685691C0() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6449646165726874 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_2685691C0();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_268558688(char a1)
{
  result = 0x746163696C707061;
  switch(a1)
  {
    case 1:
      result = 0x6D617473656D6974;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x656C746974627573;
      break;
    case 4:
      result = 2036625250;
      break;
    case 5:
      result = 0x7972616D6D7573;
      break;
    case 6:
      result = 0x6449646165726874;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268558774(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283A20, &qword_268570808);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26855A3F4();
  sub_2685692A0();
  v14 = *v3;
  v15 = v3[1];
  v21[15] = 0;
  OUTLINED_FUNCTION_3_26();
  sub_268569150();
  if (!v2)
  {
    v16 = type metadata accessor for ReadingRecord();
    v17 = v16[5];
    v21[14] = 1;
    sub_2685675E0();
    OUTLINED_FUNCTION_4_25();
    sub_26855A49C(v18, v19);
    sub_268569170();
    OUTLINED_FUNCTION_8_18(v16[6]);
    v21[13] = 2;
    OUTLINED_FUNCTION_3_26();
    sub_268569130();
    OUTLINED_FUNCTION_8_18(v16[7]);
    v21[12] = 3;
    OUTLINED_FUNCTION_3_26();
    sub_268569130();
    OUTLINED_FUNCTION_8_18(v16[8]);
    v21[11] = 4;
    OUTLINED_FUNCTION_3_26();
    sub_268569130();
    v21[10] = *(v3 + v16[9]);
    v21[9] = 5;
    sub_26855A4E4();
    sub_268569140();
    OUTLINED_FUNCTION_8_18(v16[10]);
    v21[8] = 6;
    OUTLINED_FUNCTION_3_26();
    sub_268569130();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_2685589E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v45 = sub_2685675E0();
  v4 = OUTLINED_FUNCTION_1(v45);
  v42 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283A00, &qword_268570800);
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v43 = type metadata accessor for ReadingRecord();
  v14 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v16 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v17 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_26855A3F4();
  sub_268569290();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v44);
  }

  v53 = 0;
  OUTLINED_FUNCTION_6_25();
  *v16 = sub_268569100();
  v16[1] = v19;
  v52 = 1;
  OUTLINED_FUNCTION_4_25();
  sub_26855A49C(v20, v21);
  v22 = v45;
  OUTLINED_FUNCTION_6_25();
  sub_268569120();
  v23 = v43;
  (*(v42 + 32))(v16 + *(v43 + 20), v9, v22);
  v51 = 2;
  OUTLINED_FUNCTION_6_25();
  v24 = sub_2685690E0();
  v25 = (v16 + v23[6]);
  *v25 = v24;
  v25[1] = v26;
  v50 = 3;
  OUTLINED_FUNCTION_6_25();
  v27 = sub_2685690E0();
  v28 = (v16 + v23[7]);
  *v28 = v27;
  v28[1] = v29;
  v49 = 4;
  OUTLINED_FUNCTION_6_25();
  v30 = sub_2685690E0();
  v31 = (v16 + v23[8]);
  *v31 = v30;
  v31[1] = v32;
  v47 = 5;
  sub_26855A448();
  OUTLINED_FUNCTION_6_25();
  sub_2685690F0();
  *(v16 + v23[9]) = v48;
  v46 = 6;
  OUTLINED_FUNCTION_6_25();
  v33 = sub_2685690E0();
  v35 = v34;
  v36 = OUTLINED_FUNCTION_1_27();
  v37(v36);
  v38 = (v16 + v23[10]);
  *v38 = v33;
  v38[1] = v35;
  sub_2684E6980(v16, v41);
  __swift_destroy_boxed_opaque_existential_0(v44);
  return sub_2684E69E4(v16);
}

uint64_t sub_268558EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268558444(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268558F3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268558680();
  *a1 = result;
  return result;
}

uint64_t sub_268558F64(uint64_t a1)
{
  v2 = sub_26855A3F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268558FA0(uint64_t a1)
{
  v2 = sub_26855A3F4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_26855900C()
{
  sub_268568FD0();

  type metadata accessor for ReadingHistory();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802839D8, &unk_2685706D0);
  v0 = sub_268568B70();
  MEMORY[0x26D61BDA0](v0);

  return 0xD000000000000012;
}

uint64_t sub_2685590A8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2685689F0();
  v2[5] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v2[6] = v4;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = *(*(sub_268568B60() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = swift_task_alloc();
  v2[10] = v8;
  *v8 = v2;
  v8[1] = sub_2685591CC;

  return sub_268559770(3600.0);
}

uint64_t sub_2685591CC(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_2685592CC, 0, 0);
}

uint64_t sub_2685592CC()
{
  v1 = v0[11];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C98, &qword_26856AD58);
  v3 = type metadata accessor for ReadingRecord();
  OUTLINED_FUNCTION_2_4(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26856A540;
  sub_2684E6980(v2, v8 + v7);
  sub_26850979C(v8);
  v9 = sub_2685673D0();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_2685673C0();
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802839A8, &unk_2685706C0);
  sub_268559F40(&qword_2802839C0, &qword_2802839C8);
  v15 = sub_2685673B0();
  v17 = v16;
  v18 = v0[9];

  sub_268568B50();
  sub_268568B40();
  if (v19)
  {
    v21 = v0[8];
    v20 = v0[9];
    v22 = v0[7];
    v23 = *(v0[4] + 16);
    v24 = sub_268568B10();

    sub_26855900C();
    v25 = sub_268568B10();

    [v23 setValue:v24 forKey:v25];

    sub_2684E11BC(v15, v17);

    v26 = v0[1];
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v28 = v0[8];
    v29 = v0[5];
    v30 = v0[6];
    v31 = __swift_project_value_buffer(v29, qword_28028B348);
    (*(v30 + 16))(v28, v31, v29);
    v32 = sub_2685689E0();
    v33 = sub_268568DE0();
    if (OUTLINED_FUNCTION_13_0(v33))
    {
      v34 = OUTLINED_FUNCTION_16_0();
      *v34 = 0;
      _os_log_impl(&dword_2684CA000, v32, v33, "ReadingHistory writeRecords | unable to convert encoded data to string", v34, 2u);
      OUTLINED_FUNCTION_2();
    }

    v35 = v0[8];
    v36 = v0[5];
    v37 = v0[6];

    (*(v37 + 8))(v35, v36);
    sub_268559FDC();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();
    sub_2684E11BC(v15, v17);
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];

    v26 = v0[1];
  }

  return v26();
}

uint64_t sub_268559770(double a1)
{
  *(v2 + 80) = v1;
  *(v2 + 72) = a1;
  v3 = sub_2685689F0();
  *(v2 + 88) = v3;
  OUTLINED_FUNCTION_2_4(v3);
  *(v2 + 96) = v4;
  v6 = *(v5 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  v7 = sub_2685675E0();
  *(v2 + 120) = v7;
  OUTLINED_FUNCTION_2_4(v7);
  *(v2 + 128) = v8;
  v10 = *(v9 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v11 = type metadata accessor for ReadingRecord();
  *(v2 + 144) = v11;
  OUTLINED_FUNCTION_2_4(v11);
  *(v2 + 152) = v12;
  v14 = *(v13 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  v15 = sub_268568B60();
  *(v2 + 176) = v15;
  OUTLINED_FUNCTION_2_4(v15);
  *(v2 + 184) = v16;
  v18 = *(v17 + 64) + 15;
  *(v2 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268559940, 0, 0);
}

uint64_t sub_268559940()
{
  v1 = *(*(v0 + 80) + 16);
  sub_26855900C();
  v2 = sub_268568B10();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_268568F30();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  *(v0 + 16) = v58;
  *(v0 + 32) = v59;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v5 = *(v0 + 184);
      v4 = *(v0 + 192);
      v6 = *(v0 + 176);
      v7 = *(v0 + 48);
      v8 = *(v0 + 56);
      sub_268568B50();
      v9 = sub_268568B30();
      v11 = v10;

      (*(v5 + 8))(v4, v6);
      if (v11 >> 60 != 15)
      {
        v12 = sub_2685673A0();
        v13 = *(v12 + 48);
        v14 = *(v12 + 52);
        swift_allocObject();
        sub_268567390();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802839A8, &unk_2685706C0);
        sub_268559F40(&qword_2802839B0, &qword_2802839B8);
        sub_268567380();
        v53 = v9;
        v54 = v11;
        v35 = *(v0 + 152);
        v56 = *(v0 + 144);
        v36 = *(v0 + 128);

        v37 = 0;
        v38 = *(v0 + 64);
        v57 = *(v38 + 16);
        v39 = (v36 + 8);
        v55 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v57 == v37)
          {
            sub_268559F2C(v53, v54);

            v26 = v55;
            goto LABEL_13;
          }

          if (v37 >= *(v38 + 16))
          {
            break;
          }

          v40 = *(v0 + 136);
          v41 = *(v0 + 120);
          v42 = *(v0 + 72);
          v43 = (*(v35 + 80) + 32) & ~*(v35 + 80);
          v44 = *(v35 + 72);
          sub_2684E6980(v38 + v43 + v44 * v37, *(v0 + 168));
          sub_2685675D0();
          v45 = *(v56 + 20);
          sub_268567560();
          v47 = v46;
          (*v39)(v40, v41);
          v48 = *(v0 + 168);
          if (v47 <= v42)
          {
            sub_2684E6D48(v48, *(v0 + 160));
            v49 = v55;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2684DCFA8(0, *(v55 + 16) + 1, 1);
              v49 = v55;
            }

            v51 = *(v49 + 16);
            v50 = *(v49 + 24);
            if (v51 >= v50 >> 1)
            {
              sub_2684DCFA8(v50 > 1, v51 + 1, 1);
              v49 = v55;
            }

            ++v37;
            v52 = *(v0 + 160);
            *(v49 + 16) = v51 + 1;
            v55 = v49;
            sub_2684E6D48(v52, v49 + v43 + v51 * v44);
          }

          else
          {
            sub_2684E69E4(v48);
            ++v37;
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }
  }

  else
  {
    sub_2684D9B88(v0 + 16);
  }

  if (qword_280282960 != -1)
  {
LABEL_27:
    OUTLINED_FUNCTION_0_0();
  }

  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  __swift_project_value_buffer(*(v0 + 88), qword_28028B348);
  v17 = OUTLINED_FUNCTION_12_2();
  v18(v17);
  v19 = sub_2685689E0();
  v20 = sub_268568DC0();
  v21 = OUTLINED_FUNCTION_13_0(v20);
  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v24 = *(v0 + 88);
  if (v21)
  {
    v25 = OUTLINED_FUNCTION_16_0();
    *v25 = 0;
    _os_log_impl(&dword_2684CA000, v19, v20, "ReadingHistory readRecords | unable to obtain data from dataStoreKey)", v25, 2u);
    OUTLINED_FUNCTION_2();
  }

  (*(v23 + 8))(v22, v24);
  v26 = MEMORY[0x277D84F90];
LABEL_13:
  v27 = *(v0 + 192);
  v28 = *(v0 + 160);
  v29 = *(v0 + 168);
  v30 = *(v0 + 136);
  v32 = *(v0 + 104);
  v31 = *(v0 + 112);

  v33 = *(v0 + 8);

  return v33(v26);
}

uint64_t type metadata accessor for ReadingRecord()
{
  result = qword_2802839E0;
  if (!qword_2802839E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268559F2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2684E11BC(a1, a2);
  }

  return a1;
}

uint64_t sub_268559F40(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802839A8, &unk_2685706C0);
    sub_26855A49C(a2, type metadata accessor for ReadingRecord);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_268559FDC()
{
  result = qword_2802839D0;
  if (!qword_2802839D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802839D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReadingHistory.ReadingHistoryError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26855A0FCLL);
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

uint64_t sub_26855A148(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2685675E0();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26855A1E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2685675E0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26855A264()
{
  v0 = sub_2685675E0();
  if (v1 <= 0x3F)
  {
    sub_26855A350(319, &qword_280283188);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_26855A350(319, &qword_2802839F0);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

void sub_26855A350(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_268568EB0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_26855A3A0()
{
  result = qword_2802839F8;
  if (!qword_2802839F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802839F8);
  }

  return result;
}

unint64_t sub_26855A3F4()
{
  result = qword_280283A08;
  if (!qword_280283A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283A08);
  }

  return result;
}

unint64_t sub_26855A448()
{
  result = qword_280283A18;
  if (!qword_280283A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283A18);
  }

  return result;
}

uint64_t sub_26855A49C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26855A4E4()
{
  result = qword_280283A30;
  if (!qword_280283A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283A30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReadingRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x26855A68CLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26855A6C8()
{
  result = qword_280283A38;
  if (!qword_280283A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283A38);
  }

  return result;
}

unint64_t sub_26855A720()
{
  result = qword_280283A40;
  if (!qword_280283A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283A40);
  }

  return result;
}

unint64_t sub_26855A778()
{
  result = qword_280283A48;
  if (!qword_280283A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283A48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_18@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

_BYTE *storeEnumTagSinglePayload for SummaryType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26855A8E8);
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

uint64_t sub_26855A9B0()
{
  OUTLINED_FUNCTION_6_26();
  v0(v3, v1);
  return sub_268569280();
}

uint64_t sub_26855AA14()
{
  sub_268569260();
  sub_268568C00();
  return sub_268569280();
}

uint64_t sub_26855AA7C()
{
  OUTLINED_FUNCTION_6_26();
  v0(v1);
  OUTLINED_FUNCTION_3_27();

  return sub_268569280();
}

uint64_t sub_26855AAE8()
{
  OUTLINED_FUNCTION_2_28();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_0_25();
      break;
    case 4:
      OUTLINED_FUNCTION_1_28();
      break;
    default:
      break;
  }

  sub_268568C00();
}

uint64_t sub_26855ABC4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_0_25();
      break;
    default:
      break;
  }

  sub_268568C00();
}

uint64_t sub_26855AC68(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      goto LABEL_3;
    case 3:
      OUTLINED_FUNCTION_5_22();
LABEL_3:
      OUTLINED_FUNCTION_4_26();
      break;
    default:
      break;
  }

  sub_268568C00();
}

uint64_t sub_26855AD14()
{
  OUTLINED_FUNCTION_2_28();
  sub_268568C00();
}

uint64_t sub_26855ADA8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_0_25();
      break;
    case 5:
      OUTLINED_FUNCTION_1_28();
      break;
    default:
      break;
  }

  sub_268568C00();
}

uint64_t sub_26855AE74()
{
  sub_268568C00();
}

uint64_t sub_26855AF10()
{
  sub_268568C00();
}

uint64_t sub_26855AF90()
{
  sub_268568C00();
}

uint64_t sub_26855AFE8()
{
  OUTLINED_FUNCTION_5_22();
  OUTLINED_FUNCTION_4_26();
  sub_268568C00();
}

uint64_t sub_26855B0A4(uint64_t a1, char a2)
{
  sub_2684D2D60(a2);
  sub_268568C00();
}

uint64_t sub_26855B128()
{
  sub_268569260();
  sub_268568C00();

  return sub_268569280();
}

uint64_t sub_26855B19C()
{
  sub_268569260();
  sub_268568C00();

  return sub_268569280();
}

uint64_t sub_26855B230()
{
  sub_268569260();
  sub_268568C00();

  return sub_268569280();
}

uint64_t sub_26855B340(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_268569260();
  a3(v6, a2);
  return sub_268569280();
}

uint64_t sub_26855B3B0()
{
  sub_268569260();
  sub_268568C00();
  return sub_268569280();
}

uint64_t sub_26855B414(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_268569260();
  a3(a2);
  OUTLINED_FUNCTION_3_27();

  return sub_268569280();
}

uint64_t sub_26855B468(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0x7A6972616D6D7573;
}

uint64_t sub_26855B4D0()
{
  v0 = sub_2685690D0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26855B540@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26855B4D0();
  *a2 = result;
  return result;
}

uint64_t sub_26855B570@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26855B468(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26855B650()
{
  result = qword_280283A50;
  if (!qword_280283A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283A50);
  }

  return result;
}

unint64_t sub_26855B6A4()
{
  result = qword_280283A58;
  if (!qword_280283A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283A58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_27()
{

  return sub_268568C00();
}

uint64_t OUTLINED_FUNCTION_6_26()
{

  return sub_268569260();
}

BOOL sub_26855B7B0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_26855B860(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_2684DEAF0(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D61C170](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_26855B954(uint64_t a1, uint64_t *a2)
{
  v14 = MEMORY[0x277D84F90];
  v11 = a2;
  v12 = sub_2684DEAF0(a1);
  result = swift_beginAccess();
  for (i = 0; ; ++i)
  {
    if (v12 == i)
    {

      return v14;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D61C170](i, a1);
      v5 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v6 = *v11;
    v7 = *(v5 + 24);
    v13[0] = *(v5 + 16);
    v13[1] = v7;
    MEMORY[0x28223BE20](result);
    v10[2] = v13;

    v8 = sub_26855B7B0(sub_2684F3570, v10, v6);

    if (v8)
    {
    }

    else
    {
      sub_268569020();
      v9 = *(v14 + 16);
      sub_268569050();
      sub_268569060();
      result = sub_268569030();
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}