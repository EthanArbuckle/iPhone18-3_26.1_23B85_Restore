uint64_t sub_1CFD101D8()
{
  OUTLINED_FUNCTION_18_1();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[3];
  sub_1CFD125F4();
  OUTLINED_FUNCTION_71();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  v0[15] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_113_0(v4);

  return sub_1CFD0FD58(v6, v7);
}

uint64_t sub_1CFD1028C()
{
  OUTLINED_FUNCTION_66_0();
  v2 = *v1;
  OUTLINED_FUNCTION_20_4();
  *v4 = v3;
  v5 = v2[15];
  v6 = v2[11];
  *v4 = *v1;
  *(v3 + 128) = v0;

  OUTLINED_FUNCTION_8_5();
  sub_1CFD09BE8(v6, v7);
  v8 = v2[4];
  if (v0)
  {
    v9 = sub_1CFD10760;
  }

  else
  {
    v9 = sub_1CFD103CC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1CFD103CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_187();
  v16 = v12[13];
  v15 = v12[14];
  v17 = v12[12];
  OUTLINED_FUNCTION_4_5();
  sub_1CFD125F4();
  OUTLINED_FUNCTION_71();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = v12[13];
  if (EnumCaseMultiPayload == 1)
  {
    v20 = v12[8];
    v21 = v12[9];
    v22 = v12[5];
    OUTLINED_FUNCTION_2_7();
    sub_1CFD09C40();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_51_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v12[13];
      v24 = v12[14];
      OUTLINED_FUNCTION_99_0();
      v25 = v12[2];
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v13, v26);
      OUTLINED_FUNCTION_5_5();
      sub_1CFD09BE8(v24, v27);
      sub_1CFD09C40();

      OUTLINED_FUNCTION_23_1();
      goto LABEL_16;
    }

    v40 = v12[8];
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v41, v42);
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5();
    }

    v43 = v12[9];
    v44 = v12[7];
    v45 = sub_1CFD48E38();
    v46 = __swift_project_value_buffer(v45, qword_1EDDD3788);
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    v47 = sub_1CFD48E18();
    v48 = sub_1CFD492F8();
    v49 = OUTLINED_FUNCTION_95(v48);
    v50 = v12[7];
    if (v49)
    {
      v52 = v12[5];
      v51 = v12[6];
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_111();
      *v46 = 136315138;
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_68_0();
      sub_1CFD125F4();
      OUTLINED_FUNCTION_64_0();
      sub_1CFD48FF8();
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v50, v53);
      v54 = OUTLINED_FUNCTION_64_0();
      sub_1CFCFE9A4(v54, v55, v56);
      OUTLINED_FUNCTION_129_0();
      *(v46 + 4) = v50;
      OUTLINED_FUNCTION_46_2(&dword_1CFCD7000, v57, v58, "Error: %s");
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_86();
    }

    else
    {

      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v50, v59);
    }

    v37 = v12[14];
    v60 = v12[9];
    v62 = v12[5];
    v61 = v12[6];
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_51_0();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_32_1();
    sub_1CFD48FF8();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_38_2();
    v63 = swift_allocError();
    OUTLINED_FUNCTION_44_2(v63, v64);
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v60, v65);
  }

  else
  {
    v28 = *v19;
    v29 = v19[1];
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5();
    }

    v30 = sub_1CFD48E38();
    OUTLINED_FUNCTION_116_0(v30, qword_1EDDD3788);
    v31 = sub_1CFD48E18();
    sub_1CFD492F8();
    OUTLINED_FUNCTION_125_0();
    if (OUTLINED_FUNCTION_119_0())
    {
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_109_1();
      *v14 = 136315138;
      v32 = OUTLINED_FUNCTION_51_0();
      *(v14 + 4) = sub_1CFCFE9A4(v32, v33, v34);
      OUTLINED_FUNCTION_32_3(&dword_1CFCD7000, v35, v36, "Error: %s");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_69();
    }

    v37 = v12[14];
    sub_1CFD12E10();
    OUTLINED_FUNCTION_38_2();
    v38 = swift_allocError();
    OUTLINED_FUNCTION_45_2(v38, v39);
  }

  sub_1CFD09BE8(v37, type metadata accessor for SummarizationPipelineResult);
  OUTLINED_FUNCTION_143_0();

  OUTLINED_FUNCTION_23_1();
LABEL_16:
  OUTLINED_FUNCTION_82();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12);
}

uint64_t sub_1CFD10760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_27_1();
  v11 = v10[16];
  v13 = v10[13];
  v12 = v10[14];
  OUTLINED_FUNCTION_99_0();

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_144_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1CFD107F8()
{
  OUTLINED_FUNCTION_18_1();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for SummarizationPipelineResponse(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_6_2(v4);
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_118_0();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = type metadata accessor for SummarizationPipelineRequest(0);
  v1[10] = v7;
  OUTLINED_FUNCTION_6_2(v7);
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_26_0();
  v10 = type metadata accessor for SummarizationPipelineResult(0);
  v1[12] = v10;
  OUTLINED_FUNCTION_6_2(v10);
  v12 = *(v11 + 64);
  v1[13] = OUTLINED_FUNCTION_118_0();
  v1[14] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1CFD108F0()
{
  OUTLINED_FUNCTION_18_1();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[3];
  OUTLINED_FUNCTION_53_1();
  sub_1CFD125F4();
  OUTLINED_FUNCTION_71();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  v0[15] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_113_0(v4);

  return sub_1CFD0FD58(v6, v7);
}

uint64_t sub_1CFD10994()
{
  OUTLINED_FUNCTION_66_0();
  v2 = *v1;
  OUTLINED_FUNCTION_20_4();
  *v4 = v3;
  v5 = v2[15];
  v6 = v2[11];
  *v4 = *v1;
  *(v3 + 128) = v0;

  OUTLINED_FUNCTION_8_5();
  sub_1CFD09BE8(v6, v7);
  v8 = v2[4];
  if (v0)
  {
    v9 = sub_1CFD152B4;
  }

  else
  {
    v9 = sub_1CFD10AD4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1CFD10AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_187();
  v16 = v12[13];
  v15 = v12[14];
  v17 = v12[12];
  OUTLINED_FUNCTION_4_5();
  sub_1CFD125F4();
  OUTLINED_FUNCTION_71();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = v12[13];
  if (EnumCaseMultiPayload == 1)
  {
    v20 = v12[8];
    v21 = v12[9];
    v22 = v12[5];
    OUTLINED_FUNCTION_2_7();
    sub_1CFD09C40();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_51_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v23 = v12[13];
      v24 = v12[14];
      OUTLINED_FUNCTION_99_0();
      v25 = v12[2];
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v13, v26);
      OUTLINED_FUNCTION_5_5();
      sub_1CFD09BE8(v24, v27);
      *v25 = *v14;

      OUTLINED_FUNCTION_23_1();
      goto LABEL_16;
    }

    v40 = v12[8];
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v41, v42);
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5();
    }

    v43 = v12[9];
    v44 = v12[7];
    v45 = sub_1CFD48E38();
    v46 = __swift_project_value_buffer(v45, qword_1EDDD3788);
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    v47 = sub_1CFD48E18();
    v48 = sub_1CFD492F8();
    v49 = OUTLINED_FUNCTION_95(v48);
    v50 = v12[7];
    if (v49)
    {
      v52 = v12[5];
      v51 = v12[6];
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_111();
      *v46 = 136315138;
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_68_0();
      sub_1CFD125F4();
      OUTLINED_FUNCTION_64_0();
      sub_1CFD48FF8();
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v50, v53);
      v54 = OUTLINED_FUNCTION_64_0();
      sub_1CFCFE9A4(v54, v55, v56);
      OUTLINED_FUNCTION_129_0();
      *(v46 + 4) = v50;
      OUTLINED_FUNCTION_46_2(&dword_1CFCD7000, v57, v58, "Error: %s");
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_86();
    }

    else
    {

      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v50, v59);
    }

    v37 = v12[14];
    v60 = v12[9];
    v62 = v12[5];
    v61 = v12[6];
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_51_0();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_32_1();
    sub_1CFD48FF8();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_38_2();
    v63 = swift_allocError();
    OUTLINED_FUNCTION_44_2(v63, v64);
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v60, v65);
  }

  else
  {
    v28 = *v19;
    v29 = v19[1];
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5();
    }

    v30 = sub_1CFD48E38();
    OUTLINED_FUNCTION_116_0(v30, qword_1EDDD3788);
    v31 = sub_1CFD48E18();
    sub_1CFD492F8();
    OUTLINED_FUNCTION_125_0();
    if (OUTLINED_FUNCTION_119_0())
    {
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_109_1();
      *v14 = 136315138;
      v32 = OUTLINED_FUNCTION_51_0();
      *(v14 + 4) = sub_1CFCFE9A4(v32, v33, v34);
      OUTLINED_FUNCTION_32_3(&dword_1CFCD7000, v35, v36, "Error: %s");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_69();
    }

    v37 = v12[14];
    sub_1CFD12E10();
    OUTLINED_FUNCTION_38_2();
    v38 = swift_allocError();
    OUTLINED_FUNCTION_45_2(v38, v39);
  }

  sub_1CFD09BE8(v37, type metadata accessor for SummarizationPipelineResult);
  OUTLINED_FUNCTION_143_0();

  OUTLINED_FUNCTION_23_1();
LABEL_16:
  OUTLINED_FUNCTION_82();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12);
}

uint64_t SummarizationPipelineClient.priorityFeedback(for:)()
{
  OUTLINED_FUNCTION_66_0();
  v3 = v2;
  v1[25] = v2;
  v1[26] = v0;
  v1[24] = v4;
  v5 = type metadata accessor for SummarizationPipelineResponse(0);
  v1[27] = v5;
  OUTLINED_FUNCTION_6_2(v5);
  v7 = *(v6 + 64);
  v1[28] = OUTLINED_FUNCTION_148_0();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v8 = type metadata accessor for SummarizationPipelineRequest(0);
  v1[32] = v8;
  OUTLINED_FUNCTION_6_2(v8);
  v10 = *(v9 + 64);
  v1[33] = OUTLINED_FUNCTION_26_0();
  v11 = type metadata accessor for SummarizationPipelineResult(0);
  v1[34] = v11;
  OUTLINED_FUNCTION_6_2(v11);
  v13 = *(v12 + 64);
  v1[35] = OUTLINED_FUNCTION_148_0();
  v1[36] = swift_task_alloc();
  memcpy(v1 + 2, v3, 0x51uLL);
  v14 = OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1CFD10F64()
{
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 256);
  memcpy(*(v0 + 264), *(v0 + 200), 0x51uLL);
  OUTLINED_FUNCTION_71();
  swift_storeEnumTagMultiPayload();
  sub_1CFD12BE0(v0 + 16, v0 + 104);
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v0 + 296) = v2;
  *v2 = v3;
  v2[1] = sub_1CFD11024;
  v4 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 208);

  return sub_1CFD0FD58(v4, v5);
}

uint64_t sub_1CFD11024()
{
  OUTLINED_FUNCTION_66_0();
  v2 = *v1;
  OUTLINED_FUNCTION_20_4();
  *v4 = v3;
  v5 = v2[37];
  *v4 = *v1;
  *(v3 + 304) = v0;

  v6 = v2[33];
  v7 = v2[26];
  sub_1CFD09BE8(v6, type metadata accessor for SummarizationPipelineRequest);
  if (v0)
  {
    v8 = sub_1CFD11508;
  }

  else
  {
    v8 = sub_1CFD11174;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1CFD11174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_187();
  v15 = v12[35];
  v14 = v12[36];
  v16 = v12[34];
  OUTLINED_FUNCTION_4_5();
  sub_1CFD125F4();
  OUTLINED_FUNCTION_71();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = v12[35];
  if (EnumCaseMultiPayload == 1)
  {
    v19 = v12[30];
    v20 = v12[31];
    v21 = v12[27];
    OUTLINED_FUNCTION_2_7();
    sub_1CFD09C40();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_51_0();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v22 = v12[35];
      v23 = v12[36];
      v24 = v12[33];
      v26 = v12[30];
      v25 = v12[31];
      v28 = v12[28];
      v27 = v12[29];
      v29 = v12[24];
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v25, v30);
      OUTLINED_FUNCTION_5_5();
      sub_1CFD09BE8(v23, v31);
      *v29 = *v26;

      OUTLINED_FUNCTION_23_1();
      goto LABEL_16;
    }

    v44 = v12[30];
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v45, v46);
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5();
    }

    v47 = v12[31];
    v48 = v12[29];
    v49 = sub_1CFD48E38();
    v50 = __swift_project_value_buffer(v49, qword_1EDDD3788);
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    v51 = sub_1CFD48E18();
    v52 = sub_1CFD492D8();
    v53 = OUTLINED_FUNCTION_95(v52);
    v54 = v12[29];
    if (v53)
    {
      v56 = v12[27];
      v55 = v12[28];
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_111();
      *v50 = 136315138;
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_68_0();
      sub_1CFD125F4();
      OUTLINED_FUNCTION_64_0();
      sub_1CFD48FF8();
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v54, v57);
      v58 = OUTLINED_FUNCTION_64_0();
      sub_1CFCFE9A4(v58, v59, v60);
      OUTLINED_FUNCTION_129_0();
      *(v50 + 4) = v54;
      OUTLINED_FUNCTION_46_2(&dword_1CFCD7000, v61, v62, "Error: %s");
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_86();
    }

    else
    {

      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v54, v63);
    }

    v41 = v12[36];
    v64 = v12[31];
    v66 = v12[27];
    v65 = v12[28];
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_51_0();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_32_1();
    sub_1CFD48FF8();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_38_2();
    v67 = swift_allocError();
    OUTLINED_FUNCTION_44_2(v67, v68);
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v64, v69);
  }

  else
  {
    v32 = *v18;
    v33 = v18[1];
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5();
    }

    v34 = sub_1CFD48E38();
    OUTLINED_FUNCTION_116_0(v34, qword_1EDDD3788);
    v35 = sub_1CFD48E18();
    sub_1CFD492D8();
    OUTLINED_FUNCTION_125_0();
    if (OUTLINED_FUNCTION_119_0())
    {
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_109_1();
      *v13 = 136315138;
      v36 = OUTLINED_FUNCTION_51_0();
      *(v13 + 4) = sub_1CFCFE9A4(v36, v37, v38);
      OUTLINED_FUNCTION_32_3(&dword_1CFCD7000, v39, v40, "Error: %s");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_69();
    }

    v41 = v12[36];
    sub_1CFD12E10();
    OUTLINED_FUNCTION_38_2();
    v42 = swift_allocError();
    OUTLINED_FUNCTION_45_2(v42, v43);
  }

  sub_1CFD09BE8(v41, type metadata accessor for SummarizationPipelineResult);
  v71 = v12[35];
  v70 = v12[36];
  v72 = v12[33];
  v74 = v12[30];
  v73 = v12[31];
  v76 = v12[28];
  v75 = v12[29];

  OUTLINED_FUNCTION_23_1();
LABEL_16:
  OUTLINED_FUNCTION_82();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12);
}

uint64_t sub_1CFD11508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_27_1();
  v11 = v10[38];
  v13 = v10[35];
  v12 = v10[36];
  v14 = v10[33];
  v16 = v10[30];
  v15 = v10[31];
  v18 = v10[28];
  v17 = v10[29];

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_144_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t SummarizationPipelineClient.bundleIdRedaction(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_62_1();
}

uint64_t sub_1CFD115C0()
{
  OUTLINED_FUNCTION_66_0();
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FA0, &qword_1CFD4D000);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_1CFD4BE60;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1CFD116A0;
  v5 = v0[4];

  return SummarizationPipelineClient.bundleIdRedaction(for:)();
}

uint64_t sub_1CFD116A0()
{
  OUTLINED_FUNCTION_18_1();
  v2 = *v1;
  OUTLINED_FUNCTION_20_4();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v1;
  v2[7] = v6;
  v2[8] = v0;

  if (v0)
  {
    v7 = v2[4];
    v8 = sub_1CFD118BC;
  }

  else
  {
    v10 = v2[4];
    v9 = v2[5];

    v8 = sub_1CFD117B8;
    v7 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1CFD117B8()
{
  OUTLINED_FUNCTION_66_0();
  v1 = *(v0 + 56);
  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];

    v4 = *(v0 + 8);
    v5 = OUTLINED_FUNCTION_51_0();

    return v6(v5);
  }

  else
  {
    v8 = *(v0 + 56);

    sub_1CFD12E10();
    OUTLINED_FUNCTION_38_2();
    swift_allocError();
    *v9 = 0xD000000000000017;
    *(v9 + 8) = 0x80000001CFD5E260;
    *(v9 + 16) = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_23_1();

    return v10();
  }
}

uint64_t sub_1CFD118BC()
{
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_23_1();

  return v3();
}

uint64_t SummarizationPipelineClient.bundleIdRedaction(for:)()
{
  OUTLINED_FUNCTION_18_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for SummarizationPipelineResponse(0);
  v1[4] = v3;
  OUTLINED_FUNCTION_6_2(v3);
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_118_0();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for SummarizationPipelineRequest(0);
  v1[9] = v6;
  OUTLINED_FUNCTION_6_2(v6);
  v8 = *(v7 + 64);
  v1[10] = OUTLINED_FUNCTION_26_0();
  v9 = type metadata accessor for SummarizationPipelineResult(0);
  v1[11] = v9;
  OUTLINED_FUNCTION_6_2(v9);
  v11 = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_118_0();
  v1[13] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1CFD11A0C()
{
  OUTLINED_FUNCTION_18_1();
  v1 = v0[9];
  *v0[10] = v0[2];
  swift_storeEnumTagMultiPayload();

  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  v0[14] = v2;
  *v2 = v3;
  v2[1] = sub_1CFD11AC0;
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[3];

  return sub_1CFD0FD58(v4, v5);
}

uint64_t sub_1CFD11AC0()
{
  OUTLINED_FUNCTION_66_0();
  v2 = *v1;
  OUTLINED_FUNCTION_20_4();
  *v4 = v3;
  v5 = v2[14];
  v6 = v2[10];
  *v4 = *v1;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_8_5();
  sub_1CFD09BE8(v6, v7);
  v8 = v2[3];
  if (v0)
  {
    v9 = sub_1CFD11FBC;
  }

  else
  {
    v9 = sub_1CFD11C00;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1CFD11C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_187();
  v15 = v12[12];
  v14 = v12[13];
  v16 = v12[11];
  OUTLINED_FUNCTION_4_5();
  sub_1CFD125F4();
  OUTLINED_FUNCTION_71();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = v12[12];
  if (EnumCaseMultiPayload == 1)
  {
    v19 = v12[7];
    v20 = v12[8];
    v21 = v12[4];
    OUTLINED_FUNCTION_2_7();
    sub_1CFD09C40();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_51_0();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v22 = v12[12];
      v23 = v12[13];
      v24 = v12[10];
      v26 = v12[7];
      v25 = v12[8];
      v28 = v12[5];
      v27 = v12[6];
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v25, v29);
      OUTLINED_FUNCTION_5_5();
      sub_1CFD09BE8(v23, v30);
      v31 = *v26;

      v32 = v12[1];
      OUTLINED_FUNCTION_82();

      return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
    }

    v54 = v12[7];
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v55, v56);
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5();
    }

    v57 = v12[8];
    v58 = v12[6];
    v59 = sub_1CFD48E38();
    v60 = __swift_project_value_buffer(v59, qword_1EDDD3788);
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    v61 = sub_1CFD48E18();
    v62 = sub_1CFD492F8();
    v63 = OUTLINED_FUNCTION_95(v62);
    v64 = v12[6];
    if (v63)
    {
      v66 = v12[4];
      v65 = v12[5];
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_111();
      *v60 = 136315138;
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_68_0();
      sub_1CFD125F4();
      OUTLINED_FUNCTION_64_0();
      sub_1CFD48FF8();
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v64, v67);
      v68 = OUTLINED_FUNCTION_64_0();
      sub_1CFCFE9A4(v68, v69, v70);
      OUTLINED_FUNCTION_129_0();
      *(v60 + 4) = v64;
      OUTLINED_FUNCTION_46_2(&dword_1CFCD7000, v71, v72, "Error: %s");
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_86();
    }

    else
    {

      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v64, v73);
    }

    v51 = v12[13];
    v74 = v12[8];
    v76 = v12[4];
    v75 = v12[5];
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_51_0();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_32_1();
    sub_1CFD48FF8();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_38_2();
    v77 = swift_allocError();
    OUTLINED_FUNCTION_44_2(v77, v78);
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v74, v79);
  }

  else
  {
    v42 = *v18;
    v43 = v18[1];
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5();
    }

    v44 = sub_1CFD48E38();
    OUTLINED_FUNCTION_116_0(v44, qword_1EDDD3788);
    v45 = sub_1CFD48E18();
    sub_1CFD492F8();
    OUTLINED_FUNCTION_125_0();
    if (OUTLINED_FUNCTION_119_0())
    {
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_109_1();
      *v13 = 136315138;
      v46 = OUTLINED_FUNCTION_51_0();
      *(v13 + 4) = sub_1CFCFE9A4(v46, v47, v48);
      OUTLINED_FUNCTION_32_3(&dword_1CFCD7000, v49, v50, "Error: %s");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_69();
    }

    v51 = v12[13];
    sub_1CFD12E10();
    OUTLINED_FUNCTION_38_2();
    v52 = swift_allocError();
    OUTLINED_FUNCTION_45_2(v52, v53);
  }

  sub_1CFD09BE8(v51, type metadata accessor for SummarizationPipelineResult);
  v81 = v12[12];
  v80 = v12[13];
  v82 = v12[10];
  v84 = v12[7];
  v83 = v12[8];
  v86 = v12[5];
  v85 = v12[6];

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_82();

  return v88(v87, v88, v89, v90, v91, v92, v93, v94, a9, a10, a11, a12);
}

uint64_t sub_1CFD11FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_27_1();
  v11 = v10[15];
  v13 = v10[12];
  v12 = v10[13];
  v14 = v10[10];
  v16 = v10[7];
  v15 = v10[8];
  v18 = v10[5];
  v17 = v10[6];

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_144_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1CFD1205C()
{
  v2 = sub_1CFD48E68();
  v3 = OUTLINED_FUNCTION_6_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  if (*(v0 + 112))
  {
  }

  sub_1CFD48E98();
  v7 = sub_1CFD05A8C();
  v8 = *v7;
  v9 = v7[1];

  sub_1CFD48E58();
  OUTLINED_FUNCTION_68_0();
  result = sub_1CFD48E48();
  if (!v1)
  {
    v10 = *(v0 + 112);
    *(v0 + 112) = result;

    if (*(v0 + 112))
    {
    }

    sub_1CFD12E10();
    OUTLINED_FUNCTION_38_2();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1CFD12174(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F32A8, &qword_1CFD4F918);
  v4 = OUTLINED_FUNCTION_37(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_4();
  (*(v6 + 16))(v1, a1, v3);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v1, v3);
  type metadata accessor for SummarizationPipelineRequest(0);
  type metadata accessor for SummarizationPipelineResult(0);
  sub_1CFD09CEC(&qword_1EDDD2B08, 255, type metadata accessor for SummarizationPipelineRequest);
  sub_1CFD09CEC(&qword_1EDDD2B10, 255, type metadata accessor for SummarizationPipelineResult);
  sub_1CFD48E78();
}

uint64_t sub_1CFD1236C(uint64_t a1)
{
  v3 = type metadata accessor for SummarizationPipelineResult(0);
  v4 = OUTLINED_FUNCTION_6_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F32B0, &unk_1CFD4F920);
  OUTLINED_FUNCTION_25(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_147();
  sub_1CFD151B0(a1, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16[1] = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F32A8, &qword_1CFD4F918);
    return sub_1CFD49228();
  }

  else
  {
    sub_1CFD09C40();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_51_0();
    sub_1CFD125F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F32A8, &qword_1CFD4F918);
    sub_1CFD49238();
    OUTLINED_FUNCTION_5_5();
    return sub_1CFD09BE8(v9, v15);
  }
}

unint64_t sub_1CFD1250C()
{
  result = qword_1EC4F3100;
  if (!qword_1EC4F3100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3100);
  }

  return result;
}

unint64_t sub_1CFD125A0()
{
  result = qword_1EDDD6000;
  if (!qword_1EDDD6000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6000);
  }

  return result;
}

uint64_t sub_1CFD125F4()
{
  OUTLINED_FUNCTION_137();
  v2 = v1(0);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return v0;
}

unint64_t sub_1CFD1264C()
{
  result = qword_1EDDD5CD8[0];
  if (!qword_1EDDD5CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD5CD8);
  }

  return result;
}

unint64_t sub_1CFD126A0()
{
  result = qword_1EC4FA3F0;
  if (!qword_1EC4FA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA3F0);
  }

  return result;
}

unint64_t sub_1CFD126F4()
{
  result = qword_1EDDD5008[0];
  if (!qword_1EDDD5008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD5008);
  }

  return result;
}

unint64_t sub_1CFD12748()
{
  result = qword_1EDDD4B40[0];
  if (!qword_1EDDD4B40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD4B40);
  }

  return result;
}

unint64_t sub_1CFD1279C()
{
  result = qword_1EC4FA3F8;
  if (!qword_1EC4FA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA3F8);
  }

  return result;
}

unint64_t sub_1CFD127F0()
{
  result = qword_1EC4F3178;
  if (!qword_1EC4F3178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3178);
  }

  return result;
}

unint64_t sub_1CFD12844()
{
  result = qword_1EC4FA400;
  if (!qword_1EC4FA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA400);
  }

  return result;
}

unint64_t sub_1CFD12898()
{
  result = qword_1EC4F3180;
  if (!qword_1EC4F3180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3180);
  }

  return result;
}

unint64_t sub_1CFD128EC()
{
  result = qword_1EC4FA408;
  if (!qword_1EC4FA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA408);
  }

  return result;
}

unint64_t sub_1CFD12940()
{
  result = qword_1EC4FA410;
  if (!qword_1EC4FA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA410);
  }

  return result;
}

unint64_t sub_1CFD12994()
{
  result = qword_1EC4F31C0;
  if (!qword_1EC4F31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F31C0);
  }

  return result;
}

unint64_t sub_1CFD129E8()
{
  result = qword_1EC4F31C8;
  if (!qword_1EC4F31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F31C8);
  }

  return result;
}

unint64_t sub_1CFD12A3C()
{
  result = qword_1EC4FA418;
  if (!qword_1EC4FA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA418);
  }

  return result;
}

unint64_t sub_1CFD12A90()
{
  result = qword_1EC4FA420;
  if (!qword_1EC4FA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA420);
  }

  return result;
}

unint64_t sub_1CFD12AE4()
{
  result = qword_1EC4FA428;
  if (!qword_1EC4FA428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA428);
  }

  return result;
}

unint64_t sub_1CFD12B38()
{
  result = qword_1EC4F3220;
  if (!qword_1EC4F3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3220);
  }

  return result;
}

unint64_t sub_1CFD12B8C()
{
  result = qword_1EC4F3230;
  if (!qword_1EC4F3230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3230);
  }

  return result;
}

unint64_t sub_1CFD12C18()
{
  result = qword_1EC4FA430;
  if (!qword_1EC4FA430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA430);
  }

  return result;
}

unint64_t sub_1CFD12C6C()
{
  result = qword_1EC4FA438;
  if (!qword_1EC4FA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA438);
  }

  return result;
}

unint64_t sub_1CFD12CC0()
{
  result = qword_1EC4FA440;
  if (!qword_1EC4FA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA440);
  }

  return result;
}

unint64_t sub_1CFD12D14()
{
  result = qword_1EC4FA448;
  if (!qword_1EC4FA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA448);
  }

  return result;
}

unint64_t sub_1CFD12D68()
{
  result = qword_1EC4FA450;
  if (!qword_1EC4FA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA450);
  }

  return result;
}

unint64_t sub_1CFD12DBC()
{
  result = qword_1EC4FA458[0];
  if (!qword_1EC4FA458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FA458);
  }

  return result;
}

unint64_t sub_1CFD12E10()
{
  result = qword_1EC4F3298;
  if (!qword_1EC4F3298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3298);
  }

  return result;
}

unint64_t sub_1CFD12E68()
{
  result = qword_1EC4F32A0;
  if (!qword_1EC4F32A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F32A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28ProactiveSummarizationClient0b8PipelineC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CFD12EEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_3_2(*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 > 2)
  {
    return OUTLINED_FUNCTION_3_2(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }
}

uint64_t sub_1CFD12F28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CFD12F6C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void sub_1CFD12F94()
{
  type metadata accessor for ModelInputContentRequest(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FeedbackRequest(319);
    if (v1 <= 0x3F)
    {
      sub_1CFD13018();
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_122();
        OUTLINED_FUNCTION_141_0();
      }
    }
  }
}

void sub_1CFD13018()
{
  if (!qword_1EDDD3318)
  {
    v0 = sub_1CFD49218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDD3318);
    }
  }
}

void sub_1CFD13068()
{
  sub_1CFD130D0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    OUTLINED_FUNCTION_141_0();
  }
}

void sub_1CFD130D0()
{
  if (!qword_1EDDD31C8[0])
  {
    v0 = type metadata accessor for SummarizationPipelineResponse(0);
    if (!v1)
    {
      atomic_store(v0, qword_1EDDD31C8);
    }
  }
}

void sub_1CFD13118()
{
  type metadata accessor for SummarizationResponse();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ModelInputContentResponse(319);
    if (v1 <= 0x3F)
    {
      sub_1CFD13018();
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_122();
        OUTLINED_FUNCTION_141_0();
      }
    }
  }
}

uint64_t sub_1CFD131C4()
{
  result = type metadata accessor for SummarizationFeedback(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ModelInputContentKind(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_141_0();
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1CFD13270(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1CFD132B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CFD13328(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_3_2(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_3_2(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v4);
}

uint64_t sub_1CFD13378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *sub_1CFD13440(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PriorityFeedbackRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 7);
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

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *storeEnumTagSinglePayload for PriorityFeedbackRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1CFD13720(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1CFD13818(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s28ProactiveSummarizationClient27SummarizationPipelineResultO15ErrorCodingKeysOwst_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CFD139D4()
{
  result = qword_1EC4FAAE0[0];
  if (!qword_1EC4FAAE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FAAE0);
  }

  return result;
}

unint64_t sub_1CFD13A2C()
{
  result = qword_1EC4FABF0[0];
  if (!qword_1EC4FABF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FABF0);
  }

  return result;
}

unint64_t sub_1CFD13A84()
{
  result = qword_1EC4FAD00[0];
  if (!qword_1EC4FAD00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FAD00);
  }

  return result;
}

unint64_t sub_1CFD13ADC()
{
  result = qword_1EC4FAE10[0];
  if (!qword_1EC4FAE10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FAE10);
  }

  return result;
}

unint64_t sub_1CFD13B34()
{
  result = qword_1EC4FAF20[0];
  if (!qword_1EC4FAF20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FAF20);
  }

  return result;
}

unint64_t sub_1CFD13B8C()
{
  result = qword_1EC4FB030[0];
  if (!qword_1EC4FB030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FB030);
  }

  return result;
}

unint64_t sub_1CFD13BE4()
{
  result = qword_1EC4FB140[0];
  if (!qword_1EC4FB140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FB140);
  }

  return result;
}

unint64_t sub_1CFD13C3C()
{
  result = qword_1EC4FB250[0];
  if (!qword_1EC4FB250[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FB250);
  }

  return result;
}

unint64_t sub_1CFD13C94()
{
  result = qword_1EC4FB360[0];
  if (!qword_1EC4FB360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FB360);
  }

  return result;
}

unint64_t sub_1CFD13CEC()
{
  result = qword_1EC4FB470[0];
  if (!qword_1EC4FB470[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FB470);
  }

  return result;
}

unint64_t sub_1CFD13D44()
{
  result = qword_1EC4FB580[0];
  if (!qword_1EC4FB580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FB580);
  }

  return result;
}

unint64_t sub_1CFD13D9C()
{
  result = qword_1EC4FB690[0];
  if (!qword_1EC4FB690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FB690);
  }

  return result;
}

unint64_t sub_1CFD13DF4()
{
  result = qword_1EC4FB7A0[0];
  if (!qword_1EC4FB7A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FB7A0);
  }

  return result;
}

unint64_t sub_1CFD13E4C()
{
  result = qword_1EC4FB8B0[0];
  if (!qword_1EC4FB8B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FB8B0);
  }

  return result;
}

unint64_t sub_1CFD13EA4()
{
  result = qword_1EC4FB9C0[0];
  if (!qword_1EC4FB9C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FB9C0);
  }

  return result;
}

unint64_t sub_1CFD13EFC()
{
  result = qword_1EC4FBBD0[0];
  if (!qword_1EC4FBBD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FBBD0);
  }

  return result;
}

unint64_t sub_1CFD13F54()
{
  result = qword_1EC4FBDE0[0];
  if (!qword_1EC4FBDE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FBDE0);
  }

  return result;
}

unint64_t sub_1CFD13FAC()
{
  result = qword_1EC4FBFF0[0];
  if (!qword_1EC4FBFF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FBFF0);
  }

  return result;
}

unint64_t sub_1CFD14004()
{
  result = qword_1EC4FC600[0];
  if (!qword_1EC4FC600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FC600);
  }

  return result;
}

unint64_t sub_1CFD1405C()
{
  result = qword_1EC4FC810[0];
  if (!qword_1EC4FC810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FC810);
  }

  return result;
}

unint64_t sub_1CFD140B4()
{
  result = qword_1EC4FC920;
  if (!qword_1EC4FC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FC920);
  }

  return result;
}

unint64_t sub_1CFD1410C()
{
  result = qword_1EC4FC928[0];
  if (!qword_1EC4FC928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FC928);
  }

  return result;
}

unint64_t sub_1CFD14164()
{
  result = qword_1EC4FC9B0;
  if (!qword_1EC4FC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FC9B0);
  }

  return result;
}

unint64_t sub_1CFD141BC()
{
  result = qword_1EC4FC9B8[0];
  if (!qword_1EC4FC9B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FC9B8);
  }

  return result;
}

unint64_t sub_1CFD14214()
{
  result = qword_1EC4FCA40;
  if (!qword_1EC4FCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FCA40);
  }

  return result;
}

unint64_t sub_1CFD1426C()
{
  result = qword_1EC4FCA48[0];
  if (!qword_1EC4FCA48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FCA48);
  }

  return result;
}

unint64_t sub_1CFD142C4()
{
  result = qword_1EC4FCAD0;
  if (!qword_1EC4FCAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FCAD0);
  }

  return result;
}

unint64_t sub_1CFD1431C()
{
  result = qword_1EC4FCAD8[0];
  if (!qword_1EC4FCAD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FCAD8);
  }

  return result;
}

unint64_t sub_1CFD14374()
{
  result = qword_1EC4FCB60;
  if (!qword_1EC4FCB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FCB60);
  }

  return result;
}

unint64_t sub_1CFD143CC()
{
  result = qword_1EC4FCB68[0];
  if (!qword_1EC4FCB68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FCB68);
  }

  return result;
}

unint64_t sub_1CFD14424()
{
  result = qword_1EC4FCBF0;
  if (!qword_1EC4FCBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FCBF0);
  }

  return result;
}

unint64_t sub_1CFD1447C()
{
  result = qword_1EC4FCBF8[0];
  if (!qword_1EC4FCBF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FCBF8);
  }

  return result;
}

unint64_t sub_1CFD144D4()
{
  result = qword_1EC4FCC80;
  if (!qword_1EC4FCC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FCC80);
  }

  return result;
}

unint64_t sub_1CFD1452C()
{
  result = qword_1EC4FCC88[0];
  if (!qword_1EC4FCC88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FCC88);
  }

  return result;
}

unint64_t sub_1CFD14584()
{
  result = qword_1EC4FCD10;
  if (!qword_1EC4FCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FCD10);
  }

  return result;
}

unint64_t sub_1CFD145DC()
{
  result = qword_1EC4FCD18[0];
  if (!qword_1EC4FCD18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FCD18);
  }

  return result;
}

unint64_t sub_1CFD14634()
{
  result = qword_1EC4FCDA0;
  if (!qword_1EC4FCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FCDA0);
  }

  return result;
}

unint64_t sub_1CFD1468C()
{
  result = qword_1EC4FCDA8[0];
  if (!qword_1EC4FCDA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FCDA8);
  }

  return result;
}

unint64_t sub_1CFD146E4()
{
  result = qword_1EDDD5190;
  if (!qword_1EDDD5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD5190);
  }

  return result;
}

unint64_t sub_1CFD1473C()
{
  result = qword_1EDDD5198;
  if (!qword_1EDDD5198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD5198);
  }

  return result;
}

unint64_t sub_1CFD14794()
{
  result = qword_1EDDD49A0;
  if (!qword_1EDDD49A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD49A0);
  }

  return result;
}

unint64_t sub_1CFD147EC()
{
  result = qword_1EDDD49A8[0];
  if (!qword_1EDDD49A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD49A8);
  }

  return result;
}

unint64_t sub_1CFD14844()
{
  result = qword_1EDDD4E60;
  if (!qword_1EDDD4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD4E60);
  }

  return result;
}

unint64_t sub_1CFD1489C()
{
  result = qword_1EDDD4E68[0];
  if (!qword_1EDDD4E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD4E68);
  }

  return result;
}

unint64_t sub_1CFD148F4()
{
  result = qword_1EDDD4CD0;
  if (!qword_1EDDD4CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD4CD0);
  }

  return result;
}

unint64_t sub_1CFD1494C()
{
  result = qword_1EDDD4CD8[0];
  if (!qword_1EDDD4CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD4CD8);
  }

  return result;
}

unint64_t sub_1CFD149A4()
{
  result = qword_1EDDD4B30;
  if (!qword_1EDDD4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD4B30);
  }

  return result;
}

unint64_t sub_1CFD149FC()
{
  result = qword_1EDDD4B38;
  if (!qword_1EDDD4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD4B38);
  }

  return result;
}

unint64_t sub_1CFD14A54()
{
  result = qword_1EDDD4FF0;
  if (!qword_1EDDD4FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD4FF0);
  }

  return result;
}

unint64_t sub_1CFD14AAC()
{
  result = qword_1EDDD4FF8;
  if (!qword_1EDDD4FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD4FF8);
  }

  return result;
}

unint64_t sub_1CFD14B04()
{
  result = qword_1EDDD5E60;
  if (!qword_1EDDD5E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD5E60);
  }

  return result;
}

unint64_t sub_1CFD14B5C()
{
  result = qword_1EDDD5E68[0];
  if (!qword_1EDDD5E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD5E68);
  }

  return result;
}

unint64_t sub_1CFD14BB4()
{
  result = qword_1EDDD5CC0;
  if (!qword_1EDDD5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD5CC0);
  }

  return result;
}

unint64_t sub_1CFD14C0C()
{
  result = qword_1EDDD5CC8;
  if (!qword_1EDDD5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD5CC8);
  }

  return result;
}

unint64_t sub_1CFD14C64()
{
  result = qword_1EDDD5FF0;
  if (!qword_1EDDD5FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD5FF0);
  }

  return result;
}

unint64_t sub_1CFD14CBC()
{
  result = qword_1EDDD5FF8;
  if (!qword_1EDDD5FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD5FF8);
  }

  return result;
}

unint64_t sub_1CFD14D14()
{
  result = qword_1EDDD5B20;
  if (!qword_1EDDD5B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD5B20);
  }

  return result;
}

unint64_t sub_1CFD14D6C()
{
  result = qword_1EDDD5B28;
  if (!qword_1EDDD5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD5B28);
  }

  return result;
}

unint64_t sub_1CFD14DC4()
{
  result = qword_1EDDD5330;
  if (!qword_1EDDD5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD5330);
  }

  return result;
}

unint64_t sub_1CFD14E1C()
{
  result = qword_1EDDD5338[0];
  if (!qword_1EDDD5338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD5338);
  }

  return result;
}

unint64_t sub_1CFD14E74()
{
  result = qword_1EDDD57F0;
  if (!qword_1EDDD57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD57F0);
  }

  return result;
}

unint64_t sub_1CFD14ECC()
{
  result = qword_1EDDD57F8[0];
  if (!qword_1EDDD57F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD57F8);
  }

  return result;
}

unint64_t sub_1CFD14F24()
{
  result = qword_1EDDD5660;
  if (!qword_1EDDD5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD5660);
  }

  return result;
}

unint64_t sub_1CFD14F7C()
{
  result = qword_1EDDD5668[0];
  if (!qword_1EDDD5668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD5668);
  }

  return result;
}

unint64_t sub_1CFD14FD4()
{
  result = qword_1EDDD54C0;
  if (!qword_1EDDD54C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD54C0);
  }

  return result;
}

unint64_t sub_1CFD1502C()
{
  result = qword_1EDDD54C8;
  if (!qword_1EDDD54C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD54C8);
  }

  return result;
}

unint64_t sub_1CFD15084()
{
  result = qword_1EDDD5980;
  if (!qword_1EDDD5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD5980);
  }

  return result;
}

unint64_t sub_1CFD150DC()
{
  result = qword_1EDDD5988;
  if (!qword_1EDDD5988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD5988);
  }

  return result;
}

uint64_t sub_1CFD15130(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CFD12174(a1);
}

uint64_t sub_1CFD15138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F32A8, &qword_1CFD4F918);
  OUTLINED_FUNCTION_6_2(v2);
  v4 = *(v3 + 80);

  return sub_1CFD1236C(a1);
}

uint64_t sub_1CFD151B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F32B0, &unk_1CFD4F920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return swift_once();
}

void OUTLINED_FUNCTION_26_2()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1D3874700);
}

void OUTLINED_FUNCTION_32_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_39_1()
{
  v2 = *(v0 - 72);

  return sub_1CFD494F8();
}

void OUTLINED_FUNCTION_40_2()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1D3874700);
}

uint64_t OUTLINED_FUNCTION_42_2()
{
  v2 = *(v0 - 72);

  return sub_1CFD494F8();
}

uint64_t OUTLINED_FUNCTION_44_2(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_45_2(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_46_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return sub_1CFD49438();
}

uint64_t OUTLINED_FUNCTION_67(unint64_t *a1)
{

  return sub_1CFCE3CB4(a1);
}

void OUTLINED_FUNCTION_69()
{

  JUMPOUT(0x1D3874700);
}

uint64_t OUTLINED_FUNCTION_71_0(unint64_t *a1)
{

  return sub_1CFCE3CB4(a1);
}

uint64_t OUTLINED_FUNCTION_77_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_87_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_97()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_99_0()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
}

uint64_t OUTLINED_FUNCTION_113_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[14];
  v4 = v2[11];
  v5 = v2[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_116_0(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_118_0()
{

  return swift_task_alloc();
}

BOOL OUTLINED_FUNCTION_119_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_120_0()
{
  v2 = *(v0 - 72);

  return sub_1CFD49788();
}

uint64_t OUTLINED_FUNCTION_122()
{

  return swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_124_0()
{
  v2 = *(v0 - 72);

  return sub_1CFD49618();
}

uint64_t OUTLINED_FUNCTION_125_0()
{
}

uint64_t OUTLINED_FUNCTION_127()
{

  return sub_1CFD09BE8(v1, v0);
}

unint64_t OUTLINED_FUNCTION_128_0()
{

  return sub_1CFD12E10();
}

uint64_t OUTLINED_FUNCTION_129_0()
{
}

__n128 *OUTLINED_FUNCTION_130_0@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = *(a1 - 256);
  *v3 = a2;
  result = v3;
  v5 = *(v2 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_142_0()
{

  return sub_1CFD49578();
}

uint64_t OUTLINED_FUNCTION_143_0()
{
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
}

uint64_t OUTLINED_FUNCTION_146_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1CFD09C40();
}

uint64_t OUTLINED_FUNCTION_147_0()
{

  return sub_1CFD49728();
}

uint64_t OUTLINED_FUNCTION_148_0()
{

  return swift_task_alloc();
}

uint64_t SummarizationResponseError.errorMessage.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SummarizationResponseError.errorDomain.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void __swiftcall SummarizationResponseError.init(errorMessage:errorDomain:errorCode:)(ProactiveSummarizationClient::SummarizationResponseError *__return_ptr retstr, Swift::String errorMessage, Swift::String errorDomain, Swift::Int errorCode)
{
  retstr->errorMessage = errorMessage;
  retstr->errorDomain = errorDomain;
  retstr->errorCode = errorCode;
}

uint64_t sub_1CFD15CF0(uint64_t a1, uint64_t a2)
{
  v5 = a1 == OUTLINED_FUNCTION_14_6() && a2 == v4;
  if (v5 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961;
    if (v7 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_20();

      if (v9)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1CFD15DD4(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_14_6();
  }

  if (a1 == 1)
  {
    return 0x6D6F44726F727265;
  }

  return 0x646F43726F727265;
}

uint64_t sub_1CFD15E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD15CF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFD15E68()
{
  sub_1CFD1604C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD15EA0()
{
  sub_1CFD1604C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void SummarizationResponseError.encode(to:)()
{
  OUTLINED_FUNCTION_143();
  v18 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F32B8, &qword_1CFD4F930);
  OUTLINED_FUNCTION_37(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v13 = *v0;
  v12 = v0[1];
  v14 = v0[2];
  v17[1] = v0[3];
  v17[2] = v14;
  v17[0] = v0[4];
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1CFD1604C();
  OUTLINED_FUNCTION_21_4();
  v16 = v18;
  sub_1CFD495E8();
  if (!v16)
  {
    OUTLINED_FUNCTION_7_5();
    sub_1CFD495E8();
    OUTLINED_FUNCTION_7_5();
    sub_1CFD49608();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_142();
}

unint64_t sub_1CFD1604C()
{
  result = qword_1EC4FCE30;
  if (!qword_1EC4FCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FCE30);
  }

  return result;
}

void SummarizationResponseError.init(from:)()
{
  OUTLINED_FUNCTION_143();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F32C0, &unk_1CFD4F938);
  OUTLINED_FUNCTION_37(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1CFD1604C();
  sub_1CFD49788();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = sub_1CFD49548();
    v18 = v11;
    v16 = sub_1CFD49548();
    v17 = v12;
    v13 = sub_1CFD49568();
    v14 = OUTLINED_FUNCTION_6_7();
    v15(v14);
    *v4 = v10;
    v4[1] = v18;
    v4[2] = v16;
    v4[3] = v17;
    v4[4] = v13;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_142();
}

uint64_t CodableError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD49778();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_1CFD16510();
    sub_1CFD49678();
    sub_1CFD02070(0, &qword_1EC4F32D0, 0x1E696ACD0);
    sub_1CFD02070(0, &qword_1EC4F32D8, 0x1E696ABC0);
    v6 = sub_1CFD49308();
    v8 = v6;
    if (v6)
    {
      sub_1CFD01E2C(v13, v14);
      __swift_destroy_boxed_opaque_existential_1(v15);
      *a2 = v8;
    }

    else
    {
      v9 = sub_1CFD49448();
      swift_allocError();
      v11 = v10;
      v12 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1CFD49768();
      sub_1CFD49438();
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6B00], v9);
      swift_willThrow();
      sub_1CFD01E2C(v13, v14);
      __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1CFD16510()
{
  result = qword_1EC4F32C8;
  if (!qword_1EC4F32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F32C8);
  }

  return result;
}

uint64_t CodableError.encode(to:)(void *a1)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD49798();
  v12[0] = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v12];
  v5 = v12[0];
  if (v4)
  {
    v6 = sub_1CFD48C78();
    v8 = v7;

    v12[0] = v6;
    v12[1] = v8;
    __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_1CFD16704();
    sub_1CFD49698();
    sub_1CFD01E2C(v6, v8);
  }

  else
  {
    v9 = v5;
    sub_1CFD48BE8();

    swift_willThrow();
  }

  result = __swift_destroy_boxed_opaque_existential_1(v13);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1CFD16704()
{
  result = qword_1EC4F32E0;
  if (!qword_1EC4F32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F32E0);
  }

  return result;
}

uint64_t sub_1CFD16794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SummarizationResponse.topLineSummary.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_16_5() + 20);

  return sub_1CFD16794(v2, v0);
}

uint64_t type metadata accessor for SummarizationResponse()
{
  result = qword_1EDDD6050;
  if (!qword_1EDDD6050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummarizationResponse.synopsisSummary.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_16_5() + 24);

  return sub_1CFD16794(v2, v0);
}

uint64_t SummarizationResponse.status.getter()
{
  result = OUTLINED_FUNCTION_16_5();
  *v0 = *(v1 + *(result + 28));
  return result;
}

id SummarizationResponse.summarizationError.getter()
{
  v2 = *(v1 + *(OUTLINED_FUNCTION_16_5() + 36));
  *v0 = v2;

  return v2;
}

uint64_t SummarizationResponse.error.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_16_5() + 40));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v7;

  return sub_1CFD169A4(v3, v4);
}

uint64_t sub_1CFD169A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t SummarizationResponse.errorMessage.getter()
{
  v1 = (v0 + *(type metadata accessor for SummarizationResponse() + 40));
  if (!v1[1])
  {
    return 0;
  }

  v2 = *v1;
  v3 = v1[1];

  return v2;
}

double SummarizationResponse.init(topicSummary:topLineSummary:synopsisSummary:status:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  sub_1CFD16AD8(a1, a5);
  v9 = type metadata accessor for SummarizationResponse();
  sub_1CFD16AD8(a2, a5 + v9[5]);
  sub_1CFD16AD8(a3, a5 + v9[6]);
  *(a5 + v9[7]) = v8;
  v10 = a5 + v9[10];
  *(v10 + 32) = 0;
  result = 0.0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(a5 + v9[9]) = 0;
  *(a5 + v9[8]) = 2;
  return result;
}

uint64_t sub_1CFD16AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double SummarizationResponse.init(topicSummary:topLineSummary:synopsisSummary:status:isSafe:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  sub_1CFD16AD8(a1, a6);
  v11 = type metadata accessor for SummarizationResponse();
  sub_1CFD16AD8(a2, a6 + v11[5]);
  sub_1CFD16AD8(a3, a6 + v11[6]);
  *(a6 + v11[7]) = v10;
  v12 = a6 + v11[10];
  *(v12 + 32) = 0;
  result = 0.0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(a6 + v11[9]) = 0;
  *(a6 + v11[8]) = a5;
  return result;
}

__n128 SummarizationResponse.init(error:summarizationError:)@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a1[1];
  v10 = *a1;
  v4 = *(a1 + 4);
  v5 = *a2;
  sub_1CFD48BD8();
  OUTLINED_FUNCTION_12_4(a3);
  v6 = type metadata accessor for SummarizationResponse();
  OUTLINED_FUNCTION_12_4(a3 + v6[5]);
  OUTLINED_FUNCTION_12_4(a3 + v6[6]);
  *(a3 + v6[7]) = 2;
  v7 = a3 + v6[10];
  result = v9;
  *v7 = v10;
  *(v7 + 16) = v9;
  *(v7 + 32) = v4;
  *(a3 + v6[9]) = v5;
  *(a3 + v6[8]) = 2;
  return result;
}

uint64_t sub_1CFD16C98(uint64_t a1, uint64_t a2)
{
  v5 = a1 == OUTLINED_FUNCTION_15_5() && a2 == v4;
  if (v5 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = a1 == OUTLINED_FUNCTION_11_6() && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v10 = a1 == OUTLINED_FUNCTION_10_3() && a2 == v9;
      if (v10 || (OUTLINED_FUNCTION_20() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v11 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
        if (v11 || (OUTLINED_FUNCTION_20() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v12 = a1 == 0x656661537369 && a2 == 0xE600000000000000;
          if (v12 || (OUTLINED_FUNCTION_20() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v13 = a1 == 0xD000000000000012 && 0x80000001CFD5E380 == a2;
            if (v13 || (OUTLINED_FUNCTION_20() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
            {

              return 6;
            }

            else
            {
              v15 = OUTLINED_FUNCTION_20();

              if (v15)
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

uint64_t sub_1CFD16E3C()
{
  result = OUTLINED_FUNCTION_15_5();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_11_6();
      break;
    case 2:
      result = OUTLINED_FUNCTION_10_3();
      break;
    case 3:
      result = 0x737574617473;
      break;
    case 4:
      result = 0x656661537369;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x726F727265;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFD16F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD16C98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFD16F3C()
{
  sub_1CFD17238();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD16F74()
{
  sub_1CFD17238();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void SummarizationResponse.encode(to:)()
{
  OUTLINED_FUNCTION_143();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F32E8, &qword_1CFD4F948);
  OUTLINED_FUNCTION_37(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1CFD17238();
  OUTLINED_FUNCTION_21_4();
  LOBYTE(v26) = 0;
  sub_1CFD48BD8();
  sub_1CFD178EC(&qword_1EC4F32F0);
  OUTLINED_FUNCTION_4_6();
  if (!v1)
  {
    v14 = type metadata accessor for SummarizationResponse();
    v15 = v14[5];
    LOBYTE(v26) = 1;
    OUTLINED_FUNCTION_4_6();
    v16 = v14[6];
    LOBYTE(v26) = 2;
    OUTLINED_FUNCTION_4_6();
    LOBYTE(v26) = *(v2 + v14[7]);
    sub_1CFD1728C();
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_7_5();
    sub_1CFD49618();
    v17 = *(v2 + v14[8]);
    LOBYTE(v26) = 4;
    OUTLINED_FUNCTION_7_5();
    sub_1CFD495C8();
    v26 = *(v2 + v14[9]);
    v18 = v26;
    sub_1CFD172E0();
    v19 = v18;
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_7_5();
    sub_1CFD495D8();

    v20 = v2 + v14[10];
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    v23 = *(v20 + 24);
    v24 = *(v20 + 32);
    v26 = *v20;
    v27 = v21;
    v28 = v22;
    v29 = v23;
    v30 = v24;
    sub_1CFD169A4(v26, v21);
    sub_1CFD17334();
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_7_5();
    sub_1CFD495D8();
    sub_1CFD17388(v26, v27);
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_142();
}

unint64_t sub_1CFD17238()
{
  result = qword_1EC4FCE38[0];
  if (!qword_1EC4FCE38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FCE38);
  }

  return result;
}

unint64_t sub_1CFD1728C()
{
  result = qword_1EC4F32F8;
  if (!qword_1EC4F32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F32F8);
  }

  return result;
}

unint64_t sub_1CFD172E0()
{
  result = qword_1EC4F3300;
  if (!qword_1EC4F3300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3300);
  }

  return result;
}

unint64_t sub_1CFD17334()
{
  result = qword_1EC4F3308;
  if (!qword_1EC4F3308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3308);
  }

  return result;
}

uint64_t sub_1CFD17388(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void SummarizationResponse.init(from:)()
{
  OUTLINED_FUNCTION_143();
  v40 = v0;
  v2 = v1;
  v36 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3310, &qword_1CFD4F950);
  OUTLINED_FUNCTION_37(v37);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  v38 = type metadata accessor for SummarizationResponse();
  v21 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2[3];
  v25 = v2[4];
  v41 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v24);
  sub_1CFD17238();
  v39 = v20;
  v26 = v40;
  sub_1CFD49788();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    v40 = v15;
    sub_1CFD48BD8();
    LOBYTE(v42) = 0;
    sub_1CFD178EC(&qword_1EC4F3318);
    OUTLINED_FUNCTION_3_6();
    v27 = v13;
    v28 = v23;
    sub_1CFD16AD8(v27, v23);
    LOBYTE(v42) = 1;
    v29 = v11;
    OUTLINED_FUNCTION_3_6();
    v30 = v38;
    sub_1CFD16AD8(v29, v28 + *(v38 + 20));
    LOBYTE(v42) = 2;
    OUTLINED_FUNCTION_3_6();
    sub_1CFD16AD8(v8, v28 + v30[6]);
    sub_1CFD17930();
    OUTLINED_FUNCTION_0_9();
    sub_1CFD49578();
    *(v28 + v30[7]) = v42;
    LOBYTE(v42) = 4;
    *(v28 + v30[8]) = sub_1CFD49528();
    sub_1CFD17984();
    OUTLINED_FUNCTION_0_9();
    sub_1CFD49538();
    *(v28 + v30[9]) = v42;
    sub_1CFD179D8();
    OUTLINED_FUNCTION_0_9();
    sub_1CFD49538();
    v31 = OUTLINED_FUNCTION_8_6();
    v32(v31);
    v33 = v44;
    v34 = v28 + v30[10];
    v35 = v43;
    *v34 = v42;
    *(v34 + 16) = v35;
    *(v34 + 32) = v33;
    sub_1CFD17A2C(v28, v36);
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_1CFD17A90(v28);
  }

  OUTLINED_FUNCTION_142();
}

uint64_t sub_1CFD17884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFD178EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CFD48BD8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFD17930()
{
  result = qword_1EC4F3320;
  if (!qword_1EC4F3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3320);
  }

  return result;
}

unint64_t sub_1CFD17984()
{
  result = qword_1EC4F3328;
  if (!qword_1EC4F3328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3328);
  }

  return result;
}

unint64_t sub_1CFD179D8()
{
  result = qword_1EC4F3330;
  if (!qword_1EC4F3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3330);
  }

  return result;
}

uint64_t sub_1CFD17A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizationResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFD17A90(uint64_t a1)
{
  v2 = type metadata accessor for SummarizationResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CFD17B30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1CFD17B70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CFD17BC8(uint64_t *a1, int a2)
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

uint64_t sub_1CFD17C08(uint64_t result, int a2, int a3)
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

void sub_1CFD17C7C()
{
  sub_1CFD17D6C();
  if (v0 <= 0x3F)
  {
    sub_1CFD04BF0(319, &unk_1EDDD3760);
    if (v1 <= 0x3F)
    {
      sub_1CFD04BF0(319, &qword_1EDDD3598);
      if (v2 <= 0x3F)
      {
        sub_1CFD04BF0(319, &qword_1EDDD3740);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CFD17D6C()
{
  if (!qword_1EDDD3758)
  {
    sub_1CFD48BD8();
    v0 = sub_1CFD49338();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDD3758);
    }
  }
}

uint64_t getEnumTagSinglePayload for SummarizationResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SummarizationResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationResponseError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SummarizationResponseError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CFD18090()
{
  result = qword_1EC4FD240[0];
  if (!qword_1EC4FD240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FD240);
  }

  return result;
}

unint64_t sub_1CFD180E8()
{
  result = qword_1EC4FD450[0];
  if (!qword_1EC4FD450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FD450);
  }

  return result;
}

unint64_t sub_1CFD18140()
{
  result = qword_1EC4FD560;
  if (!qword_1EC4FD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FD560);
  }

  return result;
}

unint64_t sub_1CFD18198()
{
  result = qword_1EC4FD568[0];
  if (!qword_1EC4FD568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FD568);
  }

  return result;
}

unint64_t sub_1CFD181F0()
{
  result = qword_1EC4FD5F0;
  if (!qword_1EC4FD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FD5F0);
  }

  return result;
}

unint64_t sub_1CFD18248()
{
  result = qword_1EC4FD5F8[0];
  if (!qword_1EC4FD5F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FD5F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_6()
{
  v2 = *(v0 - 152);

  return sub_1CFD49538();
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return sub_1CFD495D8();
}

uint64_t OUTLINED_FUNCTION_9_7()
{
  result = *(v0 - 152);
  v2 = *(*(v0 - 144) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_16_5()
{

  return type metadata accessor for SummarizationResponse();
}

uint64_t OUTLINED_FUNCTION_21_4()
{

  return sub_1CFD497A8();
}

uint64_t String.nilIfEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;

  return v3;
}

ProactiveSummarizationClient::UrgencyStatus_optional __swiftcall UrgencyStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1CFD18490()
{
  result = qword_1EC4F3338;
  if (!qword_1EC4F3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3338);
  }

  return result;
}

uint64_t sub_1CFD184EC@<X0>(uint64_t *a1@<X8>)
{
  result = UrgencyStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CFD18514()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD18670();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49158();
}

uint64_t sub_1CFD1855C()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD18670();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49128();
}

_BYTE *storeEnumTagSinglePayload for UrgencyStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CFD18670()
{
  result = qword_1EC4F3340;
  if (!qword_1EC4F3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3340);
  }

  return result;
}

uint64_t EntityHandle.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_27();
}

uint64_t EntityHandle.name.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t EntityHandle.handle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_27();
}

uint64_t EntityHandle.handle.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t EntityHandle.contactIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_27();
}

uint64_t EntityHandle.contactIdentifier.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t EntityHandle.handleType.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_27();
}

uint64_t EntityHandle.handleType.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void __swiftcall EntityHandle.init(name:handle:contactIdentifier:handleType:isMe:)(ProactiveSummarizationClient::EntityHandle_optional *__return_ptr retstr, Swift::String_optional name, Swift::String_optional handle, Swift::String_optional contactIdentifier, Swift::String_optional handleType, Swift::Bool_optional isMe)
{
  object = handleType.value._object;
  countAndFlagsBits = handleType.value._countAndFlagsBits;
  v8 = contactIdentifier.value._object;
  v9 = contactIdentifier.value._countAndFlagsBits;
  v10 = handle.value._object;
  v11 = handle.value._countAndFlagsBits;
  v12 = name.value._object;
  v13 = name.value._countAndFlagsBits;
  if (name.value._object)
  {

    String.nilIfEmpty.getter(v13, v12);
    v16 = v15;

    if (v16)
    {
      goto LABEL_7;
    }
  }

  if (v10)
  {

    String.nilIfEmpty.getter(v11, v10);
    v18 = v17;

    if (v18)
    {
      goto LABEL_7;
    }
  }

  if (v8)
  {

    String.nilIfEmpty.getter(v9, v8);
    v20 = v19;

    if (v20)
    {
LABEL_7:

      __src[0] = v13;
      __src[1] = v12;
      __src[2] = v11;
      __src[3] = v10;
      __src[4] = v9;
      __src[5] = v8;
      __src[6] = countAndFlagsBits;
      __src[7] = object;
      LOBYTE(__src[8]) = isMe;
      memcpy(retstr, __src, 0x41uLL);
      *&v23 = v13;
      *(&v23 + 1) = v12;
      *&v24 = v11;
      *(&v24 + 1) = v10;
      *&v25 = v9;
      *(&v25 + 1) = v8;
      *&v26 = countAndFlagsBits;
      *(&v26 + 1) = object;
      value = isMe.value;
      sub_1CFCDB100(__src, v21);
      sub_1CFCDB1BC(&v23);
      return;
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  value = 2;
  sub_1CFCDB1BC(&v23);
  retstr->value.name = xmmword_1CFD4D230;
  retstr->value.handle = 0u;
  retstr->value.contactIdentifier = 0u;
  retstr->value.handleType = 0u;
  retstr->value.isMe.value = 0;
}

BOOL static EntityHandle.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[5];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  result = 1;
  if (!v7 || (v12 = a2[5]) == 0 || (a1[4] == a2[4] ? (v13 = v7 == v12) : (v13 = 0), !v13 && (sub_1CFD49668() & 1) == 0))
  {
    if (!v6 || !v11 || (v5 == v10 ? (v14 = v6 == v11) : (v14 = 0), !v14 && (sub_1CFD49668() & 1) == 0))
    {
      if (!v4 || !v9)
      {
        return 0;
      }

      if (v3 != v8 || v4 != v9)
      {
        OUTLINED_FUNCTION_27();
        if ((sub_1CFD49668() & 1) == 0)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1CFD18B68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001CFD5E3A0 == a2;
      if (v7 || (OUTLINED_FUNCTION_20() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7954656C646E6168 && a2 == 0xEA00000000006570;
        if (v8 || (OUTLINED_FUNCTION_20() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1699574633 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = OUTLINED_FUNCTION_20();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1CFD18CD8(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656C646E6168;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x7954656C646E6168;
      break;
    case 4:
      result = 1699574633;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFD18D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD18B68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFD18D94(uint64_t a1)
{
  v2 = sub_1CFD18FF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFD18DD0(uint64_t a1)
{
  v2 = sub_1CFD18FF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityHandle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3348, &qword_1CFD4FE90);
  v4 = OUTLINED_FUNCTION_37(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v19 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v24 = v1[3];
  v25 = v13;
  v14 = v1[4];
  v22 = v1[5];
  v23 = v14;
  v15 = v1[6];
  v20 = v1[7];
  v21 = v15;
  v19[1] = *(v1 + 64);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD18FF8();
  sub_1CFD497A8();
  v31 = 0;
  v17 = v26;
  sub_1CFD495B8();
  if (!v17)
  {
    v30 = 1;
    OUTLINED_FUNCTION_7_8();
    v29 = 2;
    OUTLINED_FUNCTION_7_8();
    v28 = 3;
    OUTLINED_FUNCTION_7_8();
    v27 = 4;
    sub_1CFD495C8();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_1CFD18FF8()
{
  result = qword_1EC4FD900[0];
  if (!qword_1EC4FD900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FD900);
  }

  return result;
}

uint64_t EntityHandle.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3350, &qword_1CFD4FE98);
  v6 = OUTLINED_FUNCTION_37(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[3];
  v10 = a1[4];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1CFD18FF8();
  sub_1CFD49788();
  if (v2)
  {
    OUTLINED_FUNCTION_3_7();
    __swift_destroy_boxed_opaque_existential_1(a1);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = v9;
    v35 = v10;
    v36 = a1;
    v37 = a2;
    v38 = 2;
  }

  else
  {
    OUTLINED_FUNCTION_2_8();
    v26 = sub_1CFD49518();
    v27 = v12;
    OUTLINED_FUNCTION_2_8();
    v24 = sub_1CFD49518();
    v25 = v13;
    OUTLINED_FUNCTION_2_8();
    v14 = sub_1CFD49518();
    v23 = v15;
    v22 = a2;
    LOBYTE(v30) = 3;
    OUTLINED_FUNCTION_2_8();
    v16 = sub_1CFD49518();
    v18 = v17;
    v39 = 4;
    OUTLINED_FUNCTION_2_8();
    v19 = sub_1CFD49528();
    v20 = OUTLINED_FUNCTION_0_10();
    v21(v20);
    __src[0] = v26;
    __src[1] = v27;
    __src[2] = v24;
    __src[3] = v25;
    __src[4] = v14;
    __src[5] = v23;
    __src[6] = v16;
    __src[7] = v18;
    LOBYTE(__src[8]) = v19;
    memcpy(v22, __src, 0x41uLL);
    sub_1CFCDB100(__src, &v30);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v30 = v26;
    v31 = v27;
    v32 = v24;
    v33 = v25;
    v34 = v14;
    v35 = v23;
    v36 = v16;
    v37 = v18;
    v38 = v19;
  }

  return sub_1CFCDB1BC(&v30);
}

uint64_t sub_1CFD193B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 65))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1CFD19404(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CFD1955C()
{
  result = qword_1EC4FDB90[0];
  if (!qword_1EC4FDB90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FDB90);
  }

  return result;
}

unint64_t sub_1CFD195B4()
{
  result = qword_1EC4FDCA0;
  if (!qword_1EC4FDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FDCA0);
  }

  return result;
}

unint64_t sub_1CFD1960C()
{
  result = qword_1EC4FDCA8[0];
  if (!qword_1EC4FDCA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FDCA8);
  }

  return result;
}

void OUTLINED_FUNCTION_6_8()
{
  v2 = *(v0 - 256);
  v1 = *(v0 - 248);
  v3 = *(v0 - 264);
  v4 = *(v0 - 272);
}

uint64_t OUTLINED_FUNCTION_7_8()
{

  return sub_1CFD495B8();
}

uint64_t sub_1CFD19704(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1818845549 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_20();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1CFD197F4(char a1)
{
  if (!a1)
  {
    return 1818845549;
  }

  if (a1 == 1)
  {
    return 0x6567617373656DLL;
  }

  return 0x6163696669746F6ELL;
}

uint64_t sub_1CFD19854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD19704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFD1987C()
{
  sub_1CFD1A098();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD198B4()
{
  sub_1CFD1A098();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD198EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1CFD49668();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1CFD1995C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD198EC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1CFD19988()
{
  sub_1CFD1A254();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD199C0()
{
  sub_1CFD1A254();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD199F8()
{
  sub_1CFD1A1A4();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD19A30()
{
  sub_1CFD1A1A4();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD19A68()
{
  sub_1CFD1A150();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD19AA0()
{
  sub_1CFD1A150();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t ModelInputContentResponse.Kind.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3358, &unk_1CFD500C0);
  v3 = OUTLINED_FUNCTION_37(v2);
  v83 = v4;
  v84 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22_1();
  v82 = v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA8, qword_1CFD4BD78);
  OUTLINED_FUNCTION_25(v80);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_22_1();
  v81 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3360, &unk_1CFD500D0);
  v14 = OUTLINED_FUNCTION_37(v13);
  v78 = v15;
  v79 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_22_1();
  v77 = v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA0, &unk_1CFD4BD68);
  OUTLINED_FUNCTION_25(v75);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_22_1();
  v76 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3368, &unk_1CFD500E0);
  v25 = OUTLINED_FUNCTION_37(v24);
  v73 = v26;
  v74 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v72 - v30;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D98, &unk_1CFD50A10);
  OUTLINED_FUNCTION_25(v72);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v72 - v35;
  v37 = type metadata accessor for ModelInputContentResponse.Kind(0);
  v38 = OUTLINED_FUNCTION_25(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_0();
  v43 = v42 - v41;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3370, &qword_1CFD500F0);
  OUTLINED_FUNCTION_37(v86);
  v45 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v72 - v49;
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD1A098();
  sub_1CFD497A8();
  sub_1CFD1A0EC(v85, v43);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v53 = (v45 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v54 = &unk_1CFD4BD68;
      v55 = v76;
      sub_1CFD1A1F8(v43, v76, &qword_1EC4F2DA0, &unk_1CFD4BD68);
      v88 = 1;
      sub_1CFD1A1A4();
      v56 = v77;
      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_1_9();
      sub_1CFD1AFF0(v57, v58, &unk_1CFD4BD68);
      OUTLINED_FUNCTION_23_3();
      v59 = v79;
      sub_1CFD49618();
      (*(v78 + 8))(v56, v59);
      v60 = v55;
      v61 = &qword_1EC4F2DA0;
    }

    else
    {
      v54 = qword_1CFD4BD78;
      v66 = v81;
      sub_1CFD1A1F8(v43, v81, &qword_1EC4F2DA8, qword_1CFD4BD78);
      v89 = 2;
      sub_1CFD1A150();
      v67 = v82;
      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_1_9();
      sub_1CFD1AFF0(v68, v69, qword_1CFD4BD78);
      OUTLINED_FUNCTION_23_3();
      v70 = v84;
      sub_1CFD49618();
      (*(v83 + 8))(v67, v70);
      v60 = v66;
      v61 = &qword_1EC4F2DA8;
    }

    v65 = v54;
  }

  else
  {
    sub_1CFD1A1F8(v43, v36, &qword_1EC4F2D98, &unk_1CFD50A10);
    v87 = 0;
    sub_1CFD1A254();
    OUTLINED_FUNCTION_13_7();
    OUTLINED_FUNCTION_1_9();
    sub_1CFD1AFF0(v62, v63, &unk_1CFD50A10);
    OUTLINED_FUNCTION_23_3();
    v64 = v74;
    sub_1CFD49618();
    (*(v73 + 8))(v31, v64);
    v60 = v36;
    v61 = &qword_1EC4F2D98;
    v65 = &unk_1CFD50A10;
  }

  sub_1CFCE3050(v60, v61, v65);
  return (*v53)(v50, v51);
}

unint64_t sub_1CFD1A098()
{
  result = qword_1EC4FDD30;
  if (!qword_1EC4FDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FDD30);
  }

  return result;
}

uint64_t sub_1CFD1A0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelInputContentResponse.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFD1A150()
{
  result = qword_1EC4FDD38;
  if (!qword_1EC4FDD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FDD38);
  }

  return result;
}

unint64_t sub_1CFD1A1A4()
{
  result = qword_1EC4FDD40;
  if (!qword_1EC4FDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FDD40);
  }

  return result;
}

uint64_t sub_1CFD1A1F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_27();
  v9(v8);
  return a2;
}

unint64_t sub_1CFD1A254()
{
  result = qword_1EC4FDD48;
  if (!qword_1EC4FDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FDD48);
  }

  return result;
}

uint64_t ModelInputContentResponse.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3390, &qword_1CFD500F8);
  v105 = OUTLINED_FUNCTION_37(v3);
  v106 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22_1();
  v111 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3398, &qword_1CFD50100);
  v103 = OUTLINED_FUNCTION_37(v9);
  v104 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_22_1();
  v107 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F33A0, &qword_1CFD50108);
  v16 = OUTLINED_FUNCTION_37(v15);
  v101 = v17;
  v102 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_22_1();
  v110 = v21;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F33A8, &unk_1CFD50110);
  OUTLINED_FUNCTION_37(v112);
  v109 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v97 - v26;
  v28 = type metadata accessor for ModelInputContentResponse.Kind(0);
  v29 = OUTLINED_FUNCTION_25(v28);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v97 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v97 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v97 - v41;
  v44 = a1[3];
  v43 = a1[4];
  v113 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1CFD1A098();
  v45 = v114;
  sub_1CFD49788();
  if (v45)
  {
    goto LABEL_13;
  }

  v97 = v37;
  v98 = v34;
  v99 = v40;
  v114 = v28;
  v46 = v112;
  v47 = v27;
  v48 = sub_1CFD49588();
  result = sub_1CFCE83C4(v48, 0);
  if (v51 == v52 >> 1)
  {
    v53 = v114;
    goto LABEL_11;
  }

  v100 = v27;
  if (v51 < (v52 >> 1))
  {
    v46 = *(v50 + v51);
    sub_1CFCE840C(v51 + 1, v52 >> 1, result, v50, v51, v52);
    v55 = v54;
    v57 = v56;
    swift_unknownObjectRelease();
    if (v55 == v57 >> 1)
    {
      if (v46)
      {
        v58 = v108;
        if (v46 == 1)
        {
          v116 = 1;
          sub_1CFD1A1A4();
          OUTLINED_FUNCTION_9_8();
          v59 = OUTLINED_FUNCTION_27();
          __swift_instantiateConcreteTypeFromMangledNameV2(v59, v60);
          v111 = 0;
          OUTLINED_FUNCTION_2_9();
          sub_1CFD1AFF0(v61, &qword_1EC4F2DA0, &unk_1CFD4BD68);
          v62 = v97;
          v63 = v111;
          sub_1CFD49578();
          if (v63)
          {
            swift_unknownObjectRelease();
            v64 = OUTLINED_FUNCTION_19_4();
            v65(v64);
            OUTLINED_FUNCTION_18_4();
            v67 = v100;
LABEL_12:
            v66(v67, v46);
LABEL_13:
            v72 = v113;
            return __swift_destroy_boxed_opaque_existential_1(v72);
          }

          swift_unknownObjectRelease();
          v80 = OUTLINED_FUNCTION_19_4();
          v81(v80);
          OUTLINED_FUNCTION_18_4();
          v82 = OUTLINED_FUNCTION_16_6();
          v83(v82);
          swift_storeEnumTagMultiPayload();
          v91 = v62;
          v90 = v113;
        }

        else
        {
          v117 = 2;
          sub_1CFD1A150();
          OUTLINED_FUNCTION_9_8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA8, qword_1CFD4BD78);
          OUTLINED_FUNCTION_2_9();
          sub_1CFD1AFF0(v77, &qword_1EC4F2DA8, qword_1CFD4BD78);
          v78 = v98;
          sub_1CFD49578();
          v79 = v109;
          swift_unknownObjectRelease();
          v92 = OUTLINED_FUNCTION_21_5();
          v93(v92);
          v94 = *(v79 + 8);
          v95 = OUTLINED_FUNCTION_16_6();
          v96(v95);
          swift_storeEnumTagMultiPayload();
          v91 = v78;
          v90 = v113;
          v58 = v108;
        }
      }

      else
      {
        v115 = 0;
        sub_1CFD1A254();
        OUTLINED_FUNCTION_9_8();
        v58 = v108;
        v73 = OUTLINED_FUNCTION_27();
        __swift_instantiateConcreteTypeFromMangledNameV2(v73, v74);
        OUTLINED_FUNCTION_2_9();
        sub_1CFD1AFF0(v75, &qword_1EC4F2D98, &unk_1CFD50A10);
        sub_1CFD49578();
        v76 = v109;
        swift_unknownObjectRelease();
        v84 = OUTLINED_FUNCTION_24_5();
        v85(v84);
        v86 = *(v76 + 8);
        v87 = OUTLINED_FUNCTION_16_6();
        v88(v87);
        v89 = v99;
        swift_storeEnumTagMultiPayload();
        v90 = v113;
        v91 = v89;
      }

      sub_1CFD1B0F4(v91, v42);
      sub_1CFD1B0F4(v42, v58);
      v72 = v90;
      return __swift_destroy_boxed_opaque_existential_1(v72);
    }

    v47 = v100;
    v53 = v114;
    v46 = v112;
LABEL_11:
    v68 = sub_1CFD49448();
    swift_allocError();
    v70 = v69;
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CB0, &qword_1CFD4BF00) + 48);
    *v70 = v53;
    sub_1CFD49508();
    sub_1CFD49438();
    (*(*(v68 - 8) + 104))(v70, *MEMORY[0x1E69E6AF8], v68);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_18_4();
    v67 = v47;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFD1AB10(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1CFD49668();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1CFD1AB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD1AB10(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1CFD1ABD0()
{
  sub_1CFD1B038();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD1AC08()
{
  sub_1CFD1B038();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t ModelInputContentResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F33C8, &qword_1CFD50120);
  OUTLINED_FUNCTION_37(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD1B038();
  sub_1CFD497A8();
  type metadata accessor for ModelInputContentResponse.Kind(0);
  OUTLINED_FUNCTION_6_9();
  sub_1CFD1B0AC(v11, v12);
  OUTLINED_FUNCTION_23_3();
  sub_1CFD49618();
  return (*(v4 + 8))(v9, v2);
}

uint64_t ModelInputContentResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for ModelInputContentResponse.Kind(0);
  v5 = OUTLINED_FUNCTION_25(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v30 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F33D8, &qword_1CFD50128);
  OUTLINED_FUNCTION_37(v10);
  v29 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = type metadata accessor for ModelInputContentResponse(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD1B038();
  sub_1CFD49788();
  if (!v2)
  {
    v23 = v28;
    OUTLINED_FUNCTION_6_9();
    sub_1CFD1B0AC(v24, v25);
    v26 = v30;
    sub_1CFD49578();
    (*(v29 + 8))(v16, v10);
    OUTLINED_FUNCTION_7_9();
    sub_1CFD1B0F4(v26, v21);
    sub_1CFD1B0F4(v21, v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1CFD1AFF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1CFD1B038()
{
  result = qword_1EC4FDD50[0];
  if (!qword_1EC4FDD50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FDD50);
  }

  return result;
}

uint64_t sub_1CFD1B0AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFD1B0F4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_35_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_27();
  v9(v8);
  return a2;
}

uint64_t sub_1CFD1B174()
{
  result = type metadata accessor for ModelInputContentResponse.Kind(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1CFD1B1E0()
{
  sub_1CFD1B268();
  if (v0 <= 0x3F)
  {
    sub_1CFD1B2FC();
    if (v1 <= 0x3F)
    {
      sub_1CFD1B390();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1CFD1B268()
{
  if (!qword_1EDDD2E30[0])
  {
    type metadata accessor for MailEntity(255);
    sub_1CFD1B0AC(&qword_1EDDD2F60, type metadata accessor for MailEntity);
    v0 = type metadata accessor for ModelContentInput();
    if (!v1)
    {
      atomic_store(v0, qword_1EDDD2E30);
    }
  }
}

void sub_1CFD1B2FC()
{
  if (!qword_1EDDD2E28)
  {
    type metadata accessor for MessageEntity();
    sub_1CFD1B0AC(&qword_1EDDD2EB8, type metadata accessor for MessageEntity);
    v0 = type metadata accessor for ModelContentInput();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDD2E28);
    }
  }
}

void sub_1CFD1B390()
{
  if (!qword_1EDDD2E20)
  {
    type metadata accessor for NotificationEntity();
    sub_1CFD1B0AC(&qword_1EDDD2E08, type metadata accessor for NotificationEntity);
    v0 = type metadata accessor for ModelContentInput();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDD2E20);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ModelInputContentResponse.Kind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s28ProactiveSummarizationClient25ModelInputContentResponseV10CodingKeysOwet_0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_23_0();
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

  return *a1;
}

_BYTE *_s28ProactiveSummarizationClient25ModelInputContentResponseV10CodingKeysOwst_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CFD1B634()
{
  result = qword_1EC4FE060[0];
  if (!qword_1EC4FE060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FE060);
  }

  return result;
}

unint64_t sub_1CFD1B68C()
{
  result = qword_1EC4FE270[0];
  if (!qword_1EC4FE270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FE270);
  }

  return result;
}

unint64_t sub_1CFD1B6E4()
{
  result = qword_1EC4FE480[0];
  if (!qword_1EC4FE480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FE480);
  }

  return result;
}

unint64_t sub_1CFD1B73C()
{
  result = qword_1EC4FE690[0];
  if (!qword_1EC4FE690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FE690);
  }

  return result;
}

unint64_t sub_1CFD1B794()
{
  result = qword_1EC4FE8A0[0];
  if (!qword_1EC4FE8A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FE8A0);
  }

  return result;
}

unint64_t sub_1CFD1B7EC()
{
  result = qword_1EC4FE9B0;
  if (!qword_1EC4FE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FE9B0);
  }

  return result;
}

unint64_t sub_1CFD1B844()
{
  result = qword_1EC4FE9B8[0];
  if (!qword_1EC4FE9B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FE9B8);
  }

  return result;
}

unint64_t sub_1CFD1B89C()
{
  result = qword_1EC4FEA40;
  if (!qword_1EC4FEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEA40);
  }

  return result;
}

unint64_t sub_1CFD1B8F4()
{
  result = qword_1EC4FEA48[0];
  if (!qword_1EC4FEA48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FEA48);
  }

  return result;
}

unint64_t sub_1CFD1B94C()
{
  result = qword_1EC4FEAD0;
  if (!qword_1EC4FEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEAD0);
  }

  return result;
}

unint64_t sub_1CFD1B9A4()
{
  result = qword_1EC4FEAD8[0];
  if (!qword_1EC4FEAD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FEAD8);
  }

  return result;
}

unint64_t sub_1CFD1B9FC()
{
  result = qword_1EC4FEB60;
  if (!qword_1EC4FEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEB60);
  }

  return result;
}

unint64_t sub_1CFD1BA54()
{
  result = qword_1EC4FEB68[0];
  if (!qword_1EC4FEB68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FEB68);
  }

  return result;
}

unint64_t sub_1CFD1BAAC()
{
  result = qword_1EC4FEBF0;
  if (!qword_1EC4FEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEBF0);
  }

  return result;
}

unint64_t sub_1CFD1BB04()
{
  result = qword_1EC4FEBF8[0];
  if (!qword_1EC4FEBF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FEBF8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_8()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 200);

  return sub_1CFD494F8();
}

uint64_t OUTLINED_FUNCTION_13_7()
{
  v2 = *(v0 - 96);

  return sub_1CFD495A8();
}

ProactiveSummarizationClient::TapbackType_optional __swiftcall TapbackType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

BOOL sub_1CFD1BC8C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1CFD0511C();
}

uint64_t sub_1CFD1BCA4@<X0>(uint64_t *a1@<X8>)
{
  result = TapbackType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CFD1BCCC()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD05A10();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49158();
}

uint64_t sub_1CFD1BD14()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD05A10();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49128();
}

uint64_t getEnumTagSinglePayload for TapbackType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TapbackType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t ModelContentInputRequestOptions.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_27();
}

uint64_t sub_1CFD1BF04()
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_197();
  v3 = v1 == 0xD000000000000012 && v2 == v0;
  if (v3 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_106_0();
    if (v3 && v5 == v0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_76_0();
      OUTLINED_FUNCTION_37_0();
      if (v1)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }
  }
}

uint64_t sub_1CFD1BFE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFD1BF04();
  *a1 = result;
  return result;
}

uint64_t sub_1CFD1C008()
{
  sub_1CFD1C398();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD1C040()
{
  sub_1CFD1C398();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD1C078()
{
  sub_1CFD1C440();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD1C0B0()
{
  sub_1CFD1C440();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD1C0E8()
{
  sub_1CFD1C3EC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD1C120()
{
  sub_1CFD1C3EC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ModelContentInputRequestOptions.NotificationType.encode(to:)()
{
  OUTLINED_FUNCTION_143();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F33E8, &qword_1CFD50940);
  OUTLINED_FUNCTION_37(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F33F0, &qword_1CFD50948);
  OUTLINED_FUNCTION_37(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_147_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F33F8, &qword_1CFD50950);
  OUTLINED_FUNCTION_37(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_111_0();
  v17 = *v0;
  v18 = v2[4];
  OUTLINED_FUNCTION_178(v2, v2[3]);
  sub_1CFD1C398();
  OUTLINED_FUNCTION_426();
  sub_1CFD497A8();
  v19 = (v13 + 8);
  if (v17)
  {
    sub_1CFD1C3EC();
    OUTLINED_FUNCTION_134_1();
    sub_1CFD495A8();
    v20 = OUTLINED_FUNCTION_237();
  }

  else
  {
    sub_1CFD1C440();
    OUTLINED_FUNCTION_134_1();
    sub_1CFD495A8();
    v20 = OUTLINED_FUNCTION_239();
  }

  v21(v20);
  v22 = *v19;
  v23 = OUTLINED_FUNCTION_212();
  v24(v23);
  OUTLINED_FUNCTION_142();
}

unint64_t sub_1CFD1C398()
{
  result = qword_1EC4FEE80;
  if (!qword_1EC4FEE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEE80);
  }

  return result;
}

unint64_t sub_1CFD1C3EC()
{
  result = qword_1EC4FEE88;
  if (!qword_1EC4FEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEE88);
  }

  return result;
}

unint64_t sub_1CFD1C440()
{
  result = qword_1EC4FEE90;
  if (!qword_1EC4FEE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEE90);
  }

  return result;
}

uint64_t ModelContentInputRequestOptions.NotificationType.hashValue.getter()
{
  OUTLINED_FUNCTION_351();
  sub_1CFD49728();
  OUTLINED_FUNCTION_394();
  return sub_1CFD49758();
}

void ModelContentInputRequestOptions.NotificationType.init(from:)()
{
  OUTLINED_FUNCTION_143();
  v2 = v1;
  v49 = v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3400, &qword_1CFD50958);
  OUTLINED_FUNCTION_37(v51);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_112_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3408, &qword_1CFD50960);
  OUTLINED_FUNCTION_37(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_148();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3410, &unk_1CFD50968);
  OUTLINED_FUNCTION_37(v11);
  v50 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16_4();
  v17 = v2[3];
  v16 = v2[4];
  v18 = OUTLINED_FUNCTION_165_0();
  OUTLINED_FUNCTION_178(v18, v19);
  sub_1CFD1C398();
  OUTLINED_FUNCTION_441();
  if (!v0)
  {
    v52 = v2;
    v20 = sub_1CFD49588();
    v21 = sub_1CFCE83C4(v20, 0);
    if (v23 != v22 >> 1)
    {
      OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_135_0();
      if (v28 == v29)
      {
        __break(1u);
        return;
      }

      v30 = *(v27 + v25);
      sub_1CFD3601C(v25 + 1, v24, v21, v27, v25, v26);
      v32 = v31;
      v34 = v33;
      swift_unknownObjectRelease();
      if (v32 == v34 >> 1)
      {
        if (v30)
        {
          sub_1CFD1C3EC();
          OUTLINED_FUNCTION_63_0();
          sub_1CFD494F8();
          v35 = v49;
          v36 = v50;
          swift_unknownObjectRelease();
          v37 = OUTLINED_FUNCTION_133_1();
          v39 = v51;
        }

        else
        {
          sub_1CFD1C440();
          OUTLINED_FUNCTION_63_0();
          sub_1CFD494F8();
          v35 = v49;
          v36 = v50;
          swift_unknownObjectRelease();
          v37 = OUTLINED_FUNCTION_133_1();
          v39 = v7;
        }

        v38(v37, v39);
        v46 = *(v36 + 8);
        v47 = OUTLINED_FUNCTION_345();
        v48(v47);
        *v35 = v30;
        __swift_destroy_boxed_opaque_existential_1(v52);
        goto LABEL_10;
      }
    }

    v40 = sub_1CFD49448();
    OUTLINED_FUNCTION_362();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CB0, &qword_1CFD4BF00) + 48);
    *v42 = &type metadata for ModelContentInputRequestOptions.NotificationType;
    sub_1CFD49508();
    OUTLINED_FUNCTION_65_0();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    v44 = OUTLINED_FUNCTION_240();
    v45(v44, v11);
    v2 = v52;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_10:
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_142();
}

uint64_t sub_1CFD1C904()
{
  v0 = sub_1CFD48BC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  sub_1CFD48BB8();
  sub_1CFD393B8(&qword_1EC4F35A0, MEMORY[0x1E6968678]);
  sub_1CFD49258();
  sub_1CFD49278();
  sub_1CFD393B8(&qword_1EC4F35A8, MEMORY[0x1E69687E8]);
  v8 = sub_1CFD48EE8();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t sub_1CFD1CAC4()
{
  OUTLINED_FUNCTION_351();
  sub_1CFD49728();
  OUTLINED_FUNCTION_394();
  return sub_1CFD49758();
}

uint64_t sub_1CFD1CB40()
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_197();
  v3 = v1 == 0xD000000000000019 && v2 == v0;
  if (v3 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_197();
    v6 = v1 == 0xD000000000000018 && v5 == v0;
    if (v6 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_106_0();
      v8 = v3 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_76_0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_197();
        v10 = v1 == 0xD000000000000015 && v9 == v0;
        if (v10 || (OUTLINED_FUNCTION_20() & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_197();
          v12 = v1 == 0xD000000000000017 && v11 == v0;
          if (v12 || (OUTLINED_FUNCTION_20() & 1) != 0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_106_0();
            if (v3 && v13 == v0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_76_0();
              OUTLINED_FUNCTION_37_0();
              if (v1)
              {
                return 5;
              }

              else
              {
                return 6;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1CFD1CCAC(char a1)
{
  result = 0xD000000000000019;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
    case 5:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFD1CD58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFD1CB40();
  *a1 = result;
  return result;
}

uint64_t sub_1CFD1CD88()
{
  sub_1CFD35B58();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD1CDC0()
{
  sub_1CFD35B58();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD1CDF8()
{
  sub_1CFD35CA8();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD1CE30()
{
  sub_1CFD35CA8();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD1CE68()
{
  sub_1CFD35C54();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD1CEA0()
{
  sub_1CFD35C54();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD1CED8()
{
  sub_1CFD35D50();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD1CF10()
{
  sub_1CFD35D50();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD1CF48()
{
  sub_1CFD35CFC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD1CF80()
{
  sub_1CFD35CFC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD1CFB8()
{
  sub_1CFD35C00();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD1CFF0()
{
  sub_1CFD35C00();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD1D028()
{
  sub_1CFD35BAC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD1D060()
{
  sub_1CFD35BAC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ModelContentInputRequestOptions.NotificationContentType.encode(to:)()
{
  OUTLINED_FUNCTION_143();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3418, &qword_1CFD50978);
  OUTLINED_FUNCTION_37(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3420, &qword_1CFD50980);
  OUTLINED_FUNCTION_37(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_343(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3428, &qword_1CFD50988);
  OUTLINED_FUNCTION_37(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_22_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3430, &qword_1CFD50990);
  OUTLINED_FUNCTION_37(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_22_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3438, &qword_1CFD50998);
  OUTLINED_FUNCTION_37(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_324();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3440, &qword_1CFD509A0);
  OUTLINED_FUNCTION_37(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_147();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3448, &qword_1CFD509A8);
  OUTLINED_FUNCTION_37(v38);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_111_0();
  v34 = *v0;
  v35 = v3[4];
  OUTLINED_FUNCTION_178(v3, v3[3]);
  sub_1CFD35B58();
  OUTLINED_FUNCTION_426();
  sub_1CFD497A8();
  switch(v34)
  {
    case 1:
      sub_1CFD35CFC();
      OUTLINED_FUNCTION_100_1();
      v36 = OUTLINED_FUNCTION_424();
      goto LABEL_9;
    case 2:
      OUTLINED_FUNCTION_404();
      sub_1CFD35CA8();
      OUTLINED_FUNCTION_98_1();
      goto LABEL_8;
    case 3:
      sub_1CFD35C54();
      OUTLINED_FUNCTION_98_1();
      goto LABEL_8;
    case 4:
      sub_1CFD35C00();
      OUTLINED_FUNCTION_98_1();
      goto LABEL_8;
    case 5:
      sub_1CFD35BAC();
      OUTLINED_FUNCTION_98_1();
      goto LABEL_8;
    default:
      sub_1CFD35D50();
      OUTLINED_FUNCTION_98_1();
LABEL_8:
      v36 = OUTLINED_FUNCTION_237();
LABEL_9:
      v37(v36);
      (*(v30 + 8))(v1, v34);
      OUTLINED_FUNCTION_142();
      return;
  }
}

void ModelContentInputRequestOptions.NotificationContentType.init(from:)()
{
  OUTLINED_FUNCTION_143();
  v2 = v1;
  v69 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3450, &qword_1CFD509B0);
  OUTLINED_FUNCTION_37(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_343(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3458, &qword_1CFD509B8);
  OUTLINED_FUNCTION_37(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_22_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3460, &qword_1CFD509C0);
  OUTLINED_FUNCTION_37(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_80(v17, v67);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3468, &qword_1CFD509C8);
  OUTLINED_FUNCTION_37(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_22_1();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3470, &qword_1CFD509D0);
  OUTLINED_FUNCTION_37(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_146();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3478, &qword_1CFD509D8);
  OUTLINED_FUNCTION_37(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_324();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3480, &qword_1CFD509E0);
  OUTLINED_FUNCTION_37(v30);
  v70 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_111_0();
  v35 = v2[4];
  OUTLINED_FUNCTION_178(v2, v2[3]);
  sub_1CFD35B58();
  OUTLINED_FUNCTION_426();
  sub_1CFD49788();
  if (!v0)
  {
    v68 = v2;
    v36 = sub_1CFD49588();
    v37 = sub_1CFCE83C4(v36, 0);
    if (v39 == v38 >> 1)
    {
      v40 = v70;
    }

    else
    {
      OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_135_0();
      if (v45 == v46)
      {
        __break(1u);
        return;
      }

      v47 = *(v44 + v42);
      sub_1CFD3601C(v42 + 1, v41, v37, v44, v42, v43);
      v49 = v48;
      v51 = v50;
      swift_unknownObjectRelease();
      if (v49 == v51 >> 1)
      {
        switch(v47)
        {
          case 1:
            sub_1CFD35CFC();
            OUTLINED_FUNCTION_134_1();
            sub_1CFD494F8();
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 2:
            OUTLINED_FUNCTION_404();
            sub_1CFD35CA8();
            OUTLINED_FUNCTION_134_1();
            sub_1CFD494F8();
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 3:
            sub_1CFD35C54();
            OUTLINED_FUNCTION_134_1();
            sub_1CFD494F8();
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 4:
            sub_1CFD35C00();
            OUTLINED_FUNCTION_134_1();
            sub_1CFD494F8();
            swift_unknownObjectRelease();
            v52 = OUTLINED_FUNCTION_424();
            break;
          case 5:
            sub_1CFD35BAC();
            OUTLINED_FUNCTION_134_1();
            sub_1CFD494F8();
            swift_unknownObjectRelease();
LABEL_18:
            v52 = OUTLINED_FUNCTION_240();
            break;
          default:
            sub_1CFD35D50();
            OUTLINED_FUNCTION_134_1();
            sub_1CFD494F8();
            swift_unknownObjectRelease();
            v52 = OUTLINED_FUNCTION_240();
            v54 = v26;
            break;
        }

        v53(v52, v54);
        v64 = *(v70 + 8);
        v65 = OUTLINED_FUNCTION_183();
        v66(v65);
        *v69 = v47;
        v63 = v68;
        goto LABEL_12;
      }

      v40 = v70;
    }

    sub_1CFD49448();
    OUTLINED_FUNCTION_362();
    v56 = v55;
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CB0, &qword_1CFD4BF00) + 48);
    *v56 = &type metadata for ModelContentInputRequestOptions.NotificationContentType;
    sub_1CFD49508();
    OUTLINED_FUNCTION_65_0();
    v58 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_90_1();
    (*(v59 + 104))(v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = *(v40 + 8);
    v61 = OUTLINED_FUNCTION_313();
    v62(v61);
    v2 = v68;
  }

  v63 = v2;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v63);
  OUTLINED_FUNCTION_142();
}

ProactiveSummarizationClient::ModelContentInputRequestOptions::NotificationAppBundles_optional __swiftcall ModelContentInputRequestOptions.NotificationAppBundles.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFD494E8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

void ModelContentInputRequestOptions.NotificationAppBundles.rawValue.getter()
{
  *v0;
  *v0;
  OUTLINED_FUNCTION_253();
}

uint64_t sub_1CFD1DCFC(char a1, char a2)
{
  v2 = "com.apple.MobileSMS";
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (v3)
  {
    v5 = "contactIdentifier";
  }

  else
  {
    v5 = "com.apple.MobileSMS";
  }

  if (a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if ((a2 & 1) == 0)
  {
    v2 = "contactIdentifier";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1CFD49668();
  }

  return v8 & 1;
}

uint64_t sub_1CFD1DDB8()
{
  sub_1CFD49038();
}

uint64_t sub_1CFD1DE24()
{
  sub_1CFD49728();
  sub_1CFD49038();

  return sub_1CFD49758();
}

void sub_1CFD1DEA8(void *a1@<X8>)
{
  ModelContentInputRequestOptions.NotificationAppBundles.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

ProactiveSummarizationClient::ModelContentInputRequestOptions::NotificationContentType __swiftcall ModelContentInputRequestOptions.notificationContentType()()
{
  v3 = v1;
  v4 = *(v2 + 16);
  if (v4 == 2)
  {
    v5 = 4;
  }

  else
  {
    v6 = *v2;
    v7 = v2[1];
    if (*v2 == 0xD000000000000013 && 0x80000001CFD5E3C0 == v7)
    {
      v9 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_396();
      v9 = sub_1CFD49668();
    }

    if (v6 == 0xD000000000000014 && 0x80000001CFD5E3E0 == v7)
    {
      result = ProactiveSummarizationClient_ModelContentInputRequestOptions_NotificationContentType_messageStackNotification;
    }

    else
    {
      OUTLINED_FUNCTION_396();
      result = sub_1CFD49668();
    }

    if (result)
    {
      v5 = 3;
    }

    else
    {
      v5 = 5;
    }

    if (v9)
    {
      v5 = 1;
    }

    if (result)
    {
      v11 = 2;
    }

    else
    {
      v11 = 4;
    }

    if (v9)
    {
      v11 = 0;
    }

    if ((v4 & 1) == 0)
    {
      v5 = v11;
    }
  }

  *v3 = v5;
  return result;
}

uint64_t sub_1CFD1DFCC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_197();
  v5 = v3 == 0xD000000000000010 && v4 == a2;
  if (v5 || (v6 = v3, (OUTLINED_FUNCTION_76_0() & 1) != 0))
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_106_0();
    v9 = v5 && v8 == a2;
    if (v9 || (OUTLINED_FUNCTION_76_0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_197();
      if (v6 == 0xD000000000000027 && v10 == a2)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_37_0();
        if (v6)
        {
          return 2;
        }

        else
        {
          return 3;
        }
      }
    }
  }
}

uint64_t sub_1CFD1E108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD1DFCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFD1E130()
{
  sub_1CFD35DA4();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD1E168()
{
  sub_1CFD35DA4();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ModelContentInputRequestOptions.encode(to:)()
{
  OUTLINED_FUNCTION_143();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3488, &qword_1CFD509E8);
  OUTLINED_FUNCTION_37(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_147();
  v11 = *v0;
  v12 = v0[1];
  v18 = *(v0 + 16);
  v17 = *(v0 + 17);
  v14 = *(v4 + 24);
  v13 = *(v4 + 32);
  v15 = OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_178(v15, v16);
  sub_1CFD35DA4();
  sub_1CFD497A8();
  OUTLINED_FUNCTION_419();
  sub_1CFD495E8();
  if (!v1)
  {
    OUTLINED_FUNCTION_358();
    sub_1CFD35DF8();
    sub_1CFD495D8();
    OUTLINED_FUNCTION_404();
    sub_1CFD495C8();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_142();
}

void ModelContentInputRequestOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_143();
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3498, &qword_1CFD509F0);
  OUTLINED_FUNCTION_37(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_148();
  v23 = v14[4];
  OUTLINED_FUNCTION_178(v14, v14[3]);
  sub_1CFD35DA4();
  sub_1CFD49788();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v24 = sub_1CFD49548();
    v26 = v25;
    OUTLINED_FUNCTION_358();
    sub_1CFD35E4C();
    OUTLINED_FUNCTION_134_1();
    sub_1CFD49538();
    OUTLINED_FUNCTION_404();
    v27 = sub_1CFD49528();
    v28 = *(v19 + 8);
    v29 = OUTLINED_FUNCTION_136();
    v30(v29);
    *v16 = v24;
    *(v16 + 8) = v26;
    *(v16 + 16) = a12;
    *(v16 + 17) = v27;

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_142();
}

uint64_t GenericModelInputAndOutputResult.inputString.getter()
{
  v0 = type metadata accessor for GenericModelInputAndOutputResult(0);
  OUTLINED_FUNCTION_28(*(v0 + 20));
  return OUTLINED_FUNCTION_27();
}

uint64_t GenericModelInputAndOutputResult.outputString.getter()
{
  v0 = type metadata accessor for GenericModelInputAndOutputResult(0);
  OUTLINED_FUNCTION_28(*(v0 + 24));
  return OUTLINED_FUNCTION_27();
}

int *sub_1CFD1E5E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  sub_1CFD35F00();
  result = type metadata accessor for GenericModelInputAndOutputResult(0);
  v13 = (a6 + result[5]);
  *v13 = a1;
  v13[1] = a2;
  v14 = (a6 + result[6]);
  *v14 = a3;
  v14[1] = a4;
  *(a6 + result[7]) = a5;
  return result;
}

uint64_t ModelInputAndOutputKind.AnnotatedContent.original.getter()
{
  OUTLINED_FUNCTION_357();
  v0 = sub_1CFD48D98();
  OUTLINED_FUNCTION_25(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_27();

  return v4(v3);
}

uint64_t ModelInputAndOutputKind.AnnotatedContent.generated.getter()
{
  v2 = OUTLINED_FUNCTION_357();
  v3 = *(type metadata accessor for ModelInputAndOutputKind.AnnotatedContent(v2) + 20);
  v4 = sub_1CFD48D98();
  v5 = OUTLINED_FUNCTION_25(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

void ModelInputAndOutputKind.annotatedContent(for:client:)()
{
  OUTLINED_FUNCTION_156();
  v373 = v7;
  v366 = v8;
  v359 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F34A8, &qword_1CFD509F8);
  OUTLINED_FUNCTION_6_2(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_22_1();
  v358 = v14;
  OUTLINED_FUNCTION_102_1();
  v369 = sub_1CFD48DA8();
  v15 = OUTLINED_FUNCTION_37(v369);
  v354 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_185();
  v355 = v19;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_146_1();
  v353 = v21;
  OUTLINED_FUNCTION_102_1();
  v22 = sub_1CFD48D98();
  v23 = OUTLINED_FUNCTION_37(v22);
  v356 = v24;
  v357 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_9();
  v370 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EC0, &unk_1CFD4BF60);
  OUTLINED_FUNCTION_6_2(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_22_1();
  v348 = v32;
  OUTLINED_FUNCTION_102_1();
  v337 = type metadata accessor for NotificationEntity();
  v33 = OUTLINED_FUNCTION_25(v337);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9_9();
  v339 = v36;
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA8, qword_1CFD4BD78);
  OUTLINED_FUNCTION_25(v336);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_22_1();
  v345 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F34B0, &qword_1CFD50A00);
  OUTLINED_FUNCTION_6_2(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_22_1();
  v338 = v45;
  OUTLINED_FUNCTION_102_1();
  v346 = type metadata accessor for MessageEntity();
  v46 = OUTLINED_FUNCTION_37(v346);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_185();
  v322 = v49;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_146_1();
  v378 = v51;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA0, &unk_1CFD4BD68);
  OUTLINED_FUNCTION_25(v334);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_22_1();
  v362 = v55;
  OUTLINED_FUNCTION_102_1();
  v344 = sub_1CFD48BB8();
  v56 = OUTLINED_FUNCTION_25(v344);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_9_9();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  v60 = OUTLINED_FUNCTION_6_2(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_185();
  v335 = v63;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_121_0();
  v333 = v65;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_121_0();
  v321 = v67;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_146_1();
  v330 = v69;
  OUTLINED_FUNCTION_102_1();
  v360 = sub_1CFD48BD8();
  v70 = OUTLINED_FUNCTION_37(v360);
  v343 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_185();
  v324 = v74;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_121_0();
  v323 = v76;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_121_0();
  v320 = v78;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_146_1();
  v331 = v80;
  OUTLINED_FUNCTION_102_1();
  v81 = sub_1CFD48B28();
  v82 = OUTLINED_FUNCTION_37(v81);
  v326 = v83;
  v327 = v82;
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_9_9();
  v325 = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F34B8, &qword_1CFD50A08);
  OUTLINED_FUNCTION_6_2(v87);
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_22_1();
  v328 = v91;
  OUTLINED_FUNCTION_102_1();
  v92 = sub_1CFD48F48();
  v93 = OUTLINED_FUNCTION_6_2(v92);
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_102_1();
  v96 = sub_1CFD48CE8();
  v97 = OUTLINED_FUNCTION_6_2(v96);
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_102_1();
  v100 = sub_1CFD48F68();
  v101 = OUTLINED_FUNCTION_6_2(v100);
  v103 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_9_9();
  v104 = OUTLINED_FUNCTION_102_1();
  v105 = type metadata accessor for MailEntity(v104);
  v340 = OUTLINED_FUNCTION_37(v105);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v340);
  OUTLINED_FUNCTION_185();
  v377 = v108;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_92_0();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_109_2();
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D98, &unk_1CFD50A10);
  OUTLINED_FUNCTION_25(v329);
  v112 = *(v111 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_147();
  v114 = type metadata accessor for ModelInputAndOutputKind(0);
  v115 = OUTLINED_FUNCTION_25(v114);
  v117 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_14_7();
  v118 = sub_1CFD48D88();
  v119 = OUTLINED_FUNCTION_37(v118);
  v371 = v120;
  v372 = v119;
  v122 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_185();
  v349 = v123;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_108_1();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_121_0();
  v332 = v126;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_321();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_208();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_142_1();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_121_0();
  v368 = v131;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_146_1();
  v376 = v133;
  v351 = *v373;
  v352 = *v366;
  OUTLINED_FUNCTION_7_10();
  sub_1CFD35F58();
  OUTLINED_FUNCTION_433();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1CFD020E8();
      v135 = *(sub_1CFD209C8() + 16);

      v136 = v371[13];
      v137 = MEMORY[0x1E699C458];
      if (v135 <= 1)
      {
        v137 = MEMORY[0x1E699C440];
      }

      v136(v4, *v137, v372);
      v138 = v371[4];
      v138(v376, v4, v372);
      if (v135 < 2)
      {
        v136(v332, *MEMORY[0x1E699C4D0], v372);
        v138(v368, v332, v372);
        OUTLINED_FUNCTION_197();
      }

      else
      {
        v136(v332, *MEMORY[0x1E699C4E0], v372);
        v138(v368, v332, v372);
      }

      sub_1CFD48EF8();
      sub_1CFD21410();
      OUTLINED_FUNCTION_271();
      OUTLINED_FUNCTION_2_10();
      v350 = sub_1CFD48FE8();
      v375 = v155;
      OUTLINED_FUNCTION_437();
      OUTLINED_FUNCTION_388();
      OUTLINED_FUNCTION_417();
      OUTLINED_FUNCTION_203(&v381);
      OUTLINED_FUNCTION_328();
      OUTLINED_FUNCTION_353();
      sub_1CFD48F58();
      sub_1CFD21410();
      OUTLINED_FUNCTION_271();
      OUTLINED_FUNCTION_2_10();
      sub_1CFD48FE8();
      v156 = *(sub_1CFD209C8() + 16);
      if (v156)
      {
        v157 = (v378 + *(v346 + 52));
        OUTLINED_FUNCTION_319();
        v160 = v158 + v159;
        v162 = *(v161 + 72);
        v163 = MEMORY[0x1E69E7CC0];
        do
        {
          OUTLINED_FUNCTION_179_0();
          sub_1CFD35F58();
          v164 = *v157;
          v165 = v157[1];

          OUTLINED_FUNCTION_62_2();
          sub_1CFD35FB0();
          if (v165)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v169 = OUTLINED_FUNCTION_43_3();
              v163 = sub_1CFCFE404(v169, v170, v171, v172);
            }

            v167 = *(v163 + 2);
            v166 = *(v163 + 3);
            if (v167 >= v166 >> 1)
            {
              OUTLINED_FUNCTION_72(v166);
              OUTLINED_FUNCTION_416();
              v163 = sub_1CFCFE404(v173, v174, v175, v163);
            }

            *(v163 + 2) = v167 + 1;
            v168 = &v163[16 * v167];
            *(v168 + 4) = v164;
            *(v168 + 5) = v165;
          }

          v160 += v162;
          --v156;
        }

        while (v156);
      }

      else
      {

        v163 = MEMORY[0x1E69E7CC0];
      }

      v187 = sub_1CFD2148C(v163);
      v188 = sub_1CFD209C8();
      v189 = v338;
      sub_1CFD2154C(v188, type metadata accessor for MessageEntity);

      OUTLINED_FUNCTION_378(v338, 1, v346);
      if (v180)
      {

        sub_1CFCE3050(v338, &qword_1EC4F34B0, &qword_1CFD50A00);
        OUTLINED_FUNCTION_77_1();
        OUTLINED_FUNCTION_117_1();
        sub_1CFD48EF8();
        sub_1CFD21410();
        OUTLINED_FUNCTION_271();
        OUTLINED_FUNCTION_2_10();
        v181 = sub_1CFD48FE8();
        v194 = v190;
        OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_244();
        sub_1CFD48EF8();
        sub_1CFD21410();
        OUTLINED_FUNCTION_271();
        OUTLINED_FUNCTION_2_10();
        v191 = OUTLINED_FUNCTION_449();
        OUTLINED_FUNCTION_286(v191, v192);
      }

      else
      {
        OUTLINED_FUNCTION_60_2();
        v189 = v322;
        sub_1CFD35F00();
        v181 = sub_1CFD217F0(v322, v187);
        v194 = v193;

        v195 = (v322 + *(v346 + 60));
        v380 = *v195;
        v347 = v195[1];

        OUTLINED_FUNCTION_62_2();
        sub_1CFD35FB0();
      }

      v196 = *(v334 + 68);
      sub_1CFD02140();
      OUTLINED_FUNCTION_378(v333, 1, v360);
      if (v180)
      {
        sub_1CFCE3050(v333, &qword_1EC4F2EB8, &unk_1CFD4BF50);
        OUTLINED_FUNCTION_197();
        OUTLINED_FUNCTION_279();
        sub_1CFD48EF8();
        sub_1CFD21410();
        OUTLINED_FUNCTION_271();
        OUTLINED_FUNCTION_2_10();
        v197 = sub_1CFD48FE8();
        OUTLINED_FUNCTION_259(v197, v198);
      }

      else
      {
        OUTLINED_FUNCTION_316();
        OUTLINED_FUNCTION_226();
        v199();
        OUTLINED_FUNCTION_373();
        OUTLINED_FUNCTION_11_7();
        sub_1CFD393B8(v200, v201);
        v202 = OUTLINED_FUNCTION_300();
        OUTLINED_FUNCTION_259(v202, v203);
        (*(v189 + 8))(v323, v360);
      }

      v204 = &qword_1EC4F2DA0;
      v205 = &unk_1CFD4BD68;
      v206 = v362;
    }

    else
    {
      sub_1CFD020E8();
      v151 = *(sub_1CFD20D30() + 16);

      v152 = v371[13];
      v153 = MEMORY[0x1E699C438];
      if (v151 <= 1)
      {
        v153 = MEMORY[0x1E699C428];
      }

      v152(v5, *v153, v372);
      v154 = v371[4];
      v154(v376, v5, v372);
      if (v151 >= 2)
      {
        v152(v349, *MEMORY[0x1E699C4C8], v372);
      }

      else
      {
        v152(v349, *MEMORY[0x1E699C4B8], v372);
      }

      v154(v368, v349, v372);
      sub_1CFD48EF8();
      sub_1CFD21410();
      OUTLINED_FUNCTION_271();
      OUTLINED_FUNCTION_2_10();
      v350 = sub_1CFD48FE8();
      v375 = v176;
      sub_1CFD48F38();
      OUTLINED_FUNCTION_388();
      OUTLINED_FUNCTION_417();
      OUTLINED_FUNCTION_203(&v381);
      sub_1CFD48F28();
      OUTLINED_FUNCTION_353();
      sub_1CFD48F58();
      sub_1CFD21410();
      OUTLINED_FUNCTION_271();
      OUTLINED_FUNCTION_2_10();
      sub_1CFD48FE8();
      v177 = v345;
      v178 = sub_1CFD20D30();
      sub_1CFD2154C(v178, type metadata accessor for NotificationEntity);

      OUTLINED_FUNCTION_378(v348, 1, v337);
      v179 = v360;
      if (v180)
      {
        sub_1CFCE3050(v348, &qword_1EC4F2EC0, &unk_1CFD4BF60);
        OUTLINED_FUNCTION_77_1();
        OUTLINED_FUNCTION_377();
        sub_1CFD21410();
        OUTLINED_FUNCTION_271();
        OUTLINED_FUNCTION_2_10();
        v181 = sub_1CFD48FE8();
        v364 = v182;
        OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_244();
        sub_1CFD48EF8();
        sub_1CFD21410();
        OUTLINED_FUNCTION_271();
        OUTLINED_FUNCTION_2_10();
        v183 = OUTLINED_FUNCTION_449();
        OUTLINED_FUNCTION_286(v183, v184);
        v185 = v336;
      }

      else
      {
        OUTLINED_FUNCTION_61_2();
        sub_1CFD35F00();
        v186 = (v339 + v337[9]);
        if (v186[1])
        {
          v341 = *v186;
          v364 = v186[1];
        }

        else
        {
          OUTLINED_FUNCTION_77_1();
          OUTLINED_FUNCTION_377();
          sub_1CFD21410();
          OUTLINED_FUNCTION_271();
          OUTLINED_FUNCTION_2_10();
          v341 = sub_1CFD48FE8();
          v364 = v245;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F34C8, &unk_1CFD50A20);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1CFD508E0;
        v247 = (v339 + v337[10]);
        v248 = v247[1];
        *(inited + 32) = *v247;
        *(inited + 40) = v248;
        v249 = (v339 + v337[11]);
        v250 = v249[1];
        *(inited + 48) = *v249;
        *(inited + 56) = v250;

        v251 = 0;
        v252 = MEMORY[0x1E69E7CC0];
LABEL_69:
        v253 = (inited + 40 + 16 * v251);
        while (++v251 != 3)
        {
          v254 = v253 + 2;
          v255 = *v253;
          v253 += 2;
          if (v255)
          {
            v256 = *(v254 - 3);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v260 = OUTLINED_FUNCTION_43_3();
              v252 = sub_1CFCFE404(v260, v261, v262, v263);
            }

            v258 = *(v252 + 2);
            v257 = *(v252 + 3);
            if (v258 >= v257 >> 1)
            {
              v264 = OUTLINED_FUNCTION_68_1(v257);
              v252 = sub_1CFCFE404(v264, v265, v266, v252);
            }

            *(v252 + 2) = v258 + 1;
            v259 = &v252[16 * v258];
            *(v259 + 4) = v256;
            *(v259 + 5) = v255;
            v179 = v360;
            goto LABEL_69;
          }
        }

        swift_setDeallocating();
        sub_1CFD347A8(&qword_1EC4F35F0, &unk_1CFD53B20);
        *&v381 = v252;
        v267 = OUTLINED_FUNCTION_173();
        __swift_instantiateConcreteTypeFromMangledNameV2(v267, v268);
        OUTLINED_FUNCTION_0_11();
        OUTLINED_FUNCTION_226();
        sub_1CFD1AFF0(v269, v270, v271);
        OUTLINED_FUNCTION_125_1();
        sub_1CFD48ED8();
        OUTLINED_FUNCTION_265();

        *&v381 = &v381;
        *(&v381 + 1) = &unk_1CFD4D010;
        sub_1CFD48B18();
        sub_1CFD01DC4();
        v272 = sub_1CFD49358();
        OUTLINED_FUNCTION_286(v272, v273);
        (*(v326 + 8))(v325, v327);

        OUTLINED_FUNCTION_186_0();
        sub_1CFD35FB0();
        v177 = v345;
        v185 = v336;
        v181 = v341;
      }

      v274 = *(v185 + 68);
      sub_1CFD02140();
      OUTLINED_FUNCTION_378(v335, 1, v179);
      if (v180)
      {
        sub_1CFCE3050(v335, &qword_1EC4F2EB8, &unk_1CFD4BF50);
        OUTLINED_FUNCTION_197();
        OUTLINED_FUNCTION_279();
        sub_1CFD48EF8();
        sub_1CFD21410();
        OUTLINED_FUNCTION_271();
        OUTLINED_FUNCTION_2_10();
        v275 = sub_1CFD48FE8();
        OUTLINED_FUNCTION_259(v275, v276);
      }

      else
      {
        (*(v343 + 32))(v324, v335, v179);
        OUTLINED_FUNCTION_373();
        OUTLINED_FUNCTION_11_7();
        sub_1CFD393B8(v277, v278);
        v279 = OUTLINED_FUNCTION_300();
        OUTLINED_FUNCTION_259(v279, v280);
        (*(v343 + 8))(v324, v179);
      }

      v194 = v364;
      v204 = &qword_1EC4F2DA8;
      v205 = qword_1CFD4BD78;
      v206 = v177;
    }

    sub_1CFCE3050(v206, v204, v205);
    goto LABEL_92;
  }

  v379 = v2;
  v374 = v0;
  OUTLINED_FUNCTION_173();
  sub_1CFD020E8();
  v139 = *(sub_1CFD20660() + 16);

  v140 = sub_1CFD20660();
  v141 = *(v140 + 16);
  v363 = v1;
  if (!v141)
  {

    v142 = 0;
LABEL_45:
    v150 = __OFADD__(v139, v142);
    v207 = v139 + v142;
    if (v150)
    {
      goto LABEL_94;
    }

    v208 = v371[13];
    v209 = MEMORY[0x1E699C400];
    if (v207 <= 1)
    {
      v209 = MEMORY[0x1E699C410];
    }

    v208(v379, *v209, v372);
    v210 = v371[4];
    v210(v376, v379, v372);
    if (v207 <= 1)
    {
      v208(v374, *MEMORY[0x1E699C4A0], v372);
      v210(v368, v374, v372);
      OUTLINED_FUNCTION_197();
    }

    else
    {
      v208(v374, *MEMORY[0x1E699C468], v372);
      v210(v368, v374, v372);
      OUTLINED_FUNCTION_244();
    }

    sub_1CFD48EF8();
    sub_1CFD21410();
    sub_1CFD48CD8();
    OUTLINED_FUNCTION_2_10();
    v350 = sub_1CFD48FE8();
    v375 = v211;
    v212 = v377;
    OUTLINED_FUNCTION_437();
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_417();
    OUTLINED_FUNCTION_203(&v381);
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_353();
    sub_1CFD48F58();
    sub_1CFD21410();
    OUTLINED_FUNCTION_271();
    OUTLINED_FUNCTION_2_10();
    sub_1CFD48FE8();
    v213 = v363;
    v214 = *(sub_1CFD20660() + 16);
    if (v214)
    {
      OUTLINED_FUNCTION_319();
      v217 = v215 + v216;
      v219 = *(v218 + 72);
      v220 = MEMORY[0x1E69E7CC0];
      do
      {
        OUTLINED_FUNCTION_63_1();
        sub_1CFD35F58();
        v222 = *(v3 + 72);
        v221 = *(v3 + 80);

        OUTLINED_FUNCTION_6_10();
        sub_1CFD35FB0();
        if (v221)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v226 = OUTLINED_FUNCTION_43_3();
            v220 = sub_1CFCFE404(v226, v227, v228, v229);
          }

          v224 = *(v220 + 2);
          v223 = *(v220 + 3);
          if (v224 >= v223 >> 1)
          {
            OUTLINED_FUNCTION_72(v223);
            OUTLINED_FUNCTION_416();
            v220 = sub_1CFCFE404(v230, v231, v232, v220);
          }

          *(v220 + 2) = v224 + 1;
          v225 = &v220[16 * v224];
          *(v225 + 4) = v222;
          *(v225 + 5) = v221;
          v212 = v377;
        }

        v217 += v219;
        --v214;
      }

      while (v214);

      v213 = v363;
    }

    else
    {

      v220 = MEMORY[0x1E69E7CC0];
    }

    v233 = sub_1CFD2148C(v220);
    v234 = sub_1CFD20660();
    sub_1CFD2154C(v234, type metadata accessor for MailEntity);

    OUTLINED_FUNCTION_378(v328, 1, v340);
    if (v180)
    {

      sub_1CFCE3050(v328, &qword_1EC4F34B8, &qword_1CFD50A08);
      OUTLINED_FUNCTION_117_1();
      OUTLINED_FUNCTION_353();
      sub_1CFD48EF8();
      sub_1CFD21410();
      sub_1CFD48CD8();
      OUTLINED_FUNCTION_45_3();
      v342 = sub_1CFD48FE8();
      v240 = v235;
      OUTLINED_FUNCTION_353();
      sub_1CFD48EF8();
      sub_1CFD21410();
      OUTLINED_FUNCTION_271();
      OUTLINED_FUNCTION_2_10();
      v236 = OUTLINED_FUNCTION_449();
      OUTLINED_FUNCTION_286(v236, v237);
    }

    else
    {
      OUTLINED_FUNCTION_59_2();
      OUTLINED_FUNCTION_433();
      sub_1CFD35F00();
      v342 = sub_1CFD21634(v212, v233);
      v238 = v212;
      v240 = v239;

      v241 = *(v238 + 216);
      v381 = *(v238 + 200);
      v382 = v241;
      MailEntity.Body.text.getter();
      if (v242)
      {
        sub_1CFD48B18();
        sub_1CFD01DC4();
        v243 = sub_1CFD49358();
        OUTLINED_FUNCTION_286(v243, v244);
        v213 = v363;
        (*(v326 + 8))(v325, v327);
      }

      else
      {
        OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_244();
        sub_1CFD48EF8();
        sub_1CFD21410();
        OUTLINED_FUNCTION_271();
        OUTLINED_FUNCTION_2_10();
        v281 = OUTLINED_FUNCTION_449();
        OUTLINED_FUNCTION_286(v281, v282);
      }

      OUTLINED_FUNCTION_6_10();
      sub_1CFD35FB0();
    }

    v283 = *(v329 + 68);
    sub_1CFD02140();
    OUTLINED_FUNCTION_378(v330, 1, v360);
    if (v180)
    {
      OUTLINED_FUNCTION_70();
      sub_1CFCE3050(v284, v285, v286);
      v287 = *(v329 + 72);
      sub_1CFD02140();
      OUTLINED_FUNCTION_378(v321, 1, v360);
      if (v180)
      {
        sub_1CFCE3050(v321, &qword_1EC4F2EB8, &unk_1CFD4BF50);
        OUTLINED_FUNCTION_197();
        OUTLINED_FUNCTION_279();
        sub_1CFD48EF8();
        sub_1CFD21410();
        OUTLINED_FUNCTION_271();
        OUTLINED_FUNCTION_2_10();
        v288 = sub_1CFD48FE8();
        OUTLINED_FUNCTION_259(v288, v289);
LABEL_91:
        v194 = v240;
        sub_1CFCE3050(v213, &qword_1EC4F2D98, &unk_1CFD50A10);
        v181 = v342;
LABEL_92:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FB0, &qword_1CFD4D008);
        v301 = swift_initStackObject();
        *(v301 + 16) = xmmword_1CFD508F0;
        *(v301 + 32) = sub_1CFD48D68();
        *(v301 + 40) = v302;
        *(v301 + 48) = v181;
        *(v301 + 56) = v194;
        *(v301 + 64) = sub_1CFD48D58();
        *(v301 + 72) = v303;
        OUTLINED_FUNCTION_417();
        *(v301 + 80) = sub_1CFD49648();
        *(v301 + 88) = v304;
        *(v301 + 96) = 0xD00000000000001BLL;
        *(v301 + 104) = 0x80000001CFD5E670;
        OUTLINED_FUNCTION_243();
        sub_1CFD48EF8();
        sub_1CFD21410();
        sub_1CFD48CD8();
        OUTLINED_FUNCTION_145_1();
        *(v301 + 112) = sub_1CFD48FE8();
        *(v301 + 120) = v305;
        *(v301 + 128) = 0xD00000000000001ALL;
        *(v301 + 136) = 0x80000001CFD5E6E0;
        *(v301 + 144) = v350;
        *(v301 + 152) = v375;
        sub_1CFD48EC8();
        v306 = swift_initStackObject();
        *(v306 + 16) = xmmword_1CFD50900;
        *(v306 + 32) = sub_1CFD48D58();
        *(v306 + 40) = v307;
        *(v306 + 48) = 49;
        *(v306 + 56) = 0xE100000000000000;
        *(v306 + 64) = 0xD00000000000001BLL;
        *(v306 + 72) = 0x80000001CFD5E670;
        OUTLINED_FUNCTION_243();
        sub_1CFD48EF8();
        sub_1CFD21410();
        sub_1CFD48CD8();
        OUTLINED_FUNCTION_145_1();
        *(v306 + 80) = sub_1CFD48FE8();
        *(v306 + 88) = v308;
        *(v306 + 96) = 0xD00000000000001ALL;
        *(v306 + 104) = 0x80000001CFD5E6E0;
        *(v306 + 112) = v350;
        *(v306 + 120) = v375;
        sub_1CFD48EC8();
        *v353 = ModelInputAndOutputKind.inputString()();
        v309 = *MEMORY[0x1E699C5D0];
        v361 = *(v354 + 104);
        v361(v353, v309, v369);
        v365 = v371[2];
        v365(v358, v376, v372);
        OUTLINED_FUNCTION_213();
        __swift_storeEnumTagSinglePayload(v310, v311, v312, v313);
        sub_1CFD48D78();
        LOBYTE(v381) = v352;
        *v355 = ModelInputAndOutputKind.outputString(for:)(&v381);
        v361(v355, v309, v369);
        sub_1CFD48EF8();
        sub_1CFD21410();
        sub_1CFD48CD8();
        OUTLINED_FUNCTION_41_1();
        sub_1CFD48FE8();
        OUTLINED_FUNCTION_360();
        v365(v358, v368, v372);
        OUTLINED_FUNCTION_213();
        __swift_storeEnumTagSinglePayload(v314, v315, v316, v317);
        v318 = *(type metadata accessor for ModelInputAndOutputKind.AnnotatedContent(0) + 20);
        sub_1CFD48D78();
        v319 = v371[1];
        v319(v368, v372);
        v319(v376, v372);
        (*(v356 + 32))(v359, v370, v357);
        OUTLINED_FUNCTION_155();
        return;
      }

      OUTLINED_FUNCTION_316();
      OUTLINED_FUNCTION_226();
      v296();
      OUTLINED_FUNCTION_373();
      OUTLINED_FUNCTION_11_7();
      sub_1CFD393B8(v297, v298);
      v299 = OUTLINED_FUNCTION_300();
      OUTLINED_FUNCTION_259(v299, v300);
      (*(v213 + 8))(v320, v360);
    }

    else
    {
      OUTLINED_FUNCTION_316();
      v290 = OUTLINED_FUNCTION_138_1();
      v291(v290);
      sub_1CFD48B98();
      OUTLINED_FUNCTION_11_7();
      sub_1CFD393B8(v292, v293);
      v294 = OUTLINED_FUNCTION_300();
      OUTLINED_FUNCTION_259(v294, v295);
      (*(v213 + 8))(v331, v360);
    }

    v213 = v363;
    goto LABEL_91;
  }

  v367 = v139;
  v142 = 0;
  v143 = v6 + *(v340 + 132);
  OUTLINED_FUNCTION_319();
  v145 = v140 + v144;
  v147 = *(v146 + 72);
  while (1)
  {
    OUTLINED_FUNCTION_63_1();
    OUTLINED_FUNCTION_421();
    sub_1CFD35F58();
    v148 = *(v143 + 8);
    if (v148 == 255)
    {
      v149 = 0;
    }

    else
    {
      *&v381 = *v143;
      BYTE8(v381) = v148 & 1;
      v149 = MailEntity.Thread.messageCount.getter();
    }

    v150 = __OFADD__(v142, v149);
    v142 += v149;
    if (v150)
    {
      break;
    }

    OUTLINED_FUNCTION_6_10();
    sub_1CFD35FB0();
    v145 += v147;
    if (!--v141)
    {

      v139 = v367;
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
}

size_t sub_1CFD20660()
{
  v1 = type metadata accessor for MailEntity(0);
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F50, &qword_1CFD4CFB8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  v11 = *(v0 + 64);
  v12 = *(v11 + 16);
  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v14 = *(v8 + 72);
  v21[1] = v11;

  v15 = MEMORY[0x1E69E7CC0];
  v21[2] = v5;
  do
  {
    sub_1CFD02140();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1CFCE3050(v10, &qword_1EC4F2F50, &qword_1CFD4CFB8);
    }

    else
    {
      sub_1CFD35F00();
      sub_1CFD35F58();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1CFD34A9C(0, *(v15 + 16) + 1, 1, v15, &qword_1EC4F35D8, &qword_1CFD53B08, type metadata accessor for MailEntity, type metadata accessor for MailEntity);
      }

      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1CFD34A9C(v16 > 1, v17 + 1, 1, v15, &qword_1EC4F35D8, &qword_1CFD53B08, type metadata accessor for MailEntity, type metadata accessor for MailEntity);
      }

      sub_1CFD35FB0();
      *(v15 + 16) = v17 + 1;
      v18 = v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v19 = *(v22 + 72);
      sub_1CFD35F00();
    }

    v13 += v14;
    --v12;
  }

  while (v12);

  return v15;
}

size_t sub_1CFD209C8()
{
  v1 = type metadata accessor for MessageEntity();
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3010, &qword_1CFD4D068);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  v11 = *(v0 + 64);
  v12 = *(v11 + 16);
  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v14 = *(v8 + 72);
  v21[1] = v11;

  v15 = MEMORY[0x1E69E7CC0];
  v21[2] = v5;
  do
  {
    sub_1CFD02140();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1CFCE3050(v10, &qword_1EC4F3010, &qword_1CFD4D068);
    }

    else
    {
      sub_1CFD35F00();
      sub_1CFD35F58();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1CFD34A9C(0, *(v15 + 16) + 1, 1, v15, &qword_1EC4F35E8, &qword_1CFD53B18, type metadata accessor for MessageEntity, type metadata accessor for MessageEntity);
      }

      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1CFD34A9C(v16 > 1, v17 + 1, 1, v15, &qword_1EC4F35E8, &qword_1CFD53B18, type metadata accessor for MessageEntity, type metadata accessor for MessageEntity);
      }

      sub_1CFD35FB0();
      *(v15 + 16) = v17 + 1;
      v18 = v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v19 = *(v22 + 72);
      sub_1CFD35F00();
    }

    v13 += v14;
    --v12;
  }

  while (v12);

  return v15;
}

size_t sub_1CFD20D30()
{
  v1 = type metadata accessor for NotificationEntity();
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F30, &qword_1CFD4CF98);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  v11 = *(v0 + 64);
  v12 = *(v11 + 16);
  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v14 = *(v8 + 72);
  v21[1] = v11;

  v15 = MEMORY[0x1E69E7CC0];
  v21[2] = v5;
  do
  {
    sub_1CFD02140();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1CFCE3050(v10, &qword_1EC4F2F30, &qword_1CFD4CF98);
    }

    else
    {
      sub_1CFD35F00();
      sub_1CFD35F58();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1CFD34A9C(0, *(v15 + 16) + 1, 1, v15, &qword_1EC4F3600, &unk_1CFD53B30, type metadata accessor for NotificationEntity, type metadata accessor for NotificationEntity);
      }

      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1CFD34A9C(v16 > 1, v17 + 1, 1, v15, &qword_1EC4F3600, &unk_1CFD53B30, type metadata accessor for NotificationEntity, type metadata accessor for NotificationEntity);
      }

      sub_1CFD35FB0();
      *(v15 + 16) = v17 + 1;
      v18 = v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v19 = *(v22 + 72);
      sub_1CFD35F00();
    }

    v13 += v14;
    --v12;
  }

  while (v12);

  return v15;
}

void sub_1CFD21098()
{
  OUTLINED_FUNCTION_156();
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_16_7();
  v43 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  v50 = v7;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_146_1();
  v49 = v9;
  v11 = *(v10 + 24);
  v12 = type metadata accessor for ModelContentInput.EntityStatus();
  v13 = OUTLINED_FUNCTION_37(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v42 - v20;
  v48 = v2;
  v53 = sub_1CFD48EA8();
  v22 = *(v0 + 64);

  v23 = sub_1CFD49198();
  v52 = v23;
  if (v23 == sub_1CFD491F8())
  {
LABEL_2:

    OUTLINED_FUNCTION_155();
    return;
  }

  v42 = v17;
  v24 = (v15 + 16);
  v25 = (v15 + 32);
  v26 = (v15 + 8);
  v44 = (v43 + 2);
  v45 = (v43 + 4);
  ++v43;
  v46 = (v15 + 8);
  v47 = v21;
  while (1)
  {
    v27 = sub_1CFD491D8();
    sub_1CFD491A8();
    if ((v27 & 1) == 0)
    {
      break;
    }

    (*(v15 + 16))(v21, v22 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v23, v12);
LABEL_6:
    sub_1CFD49208();
    v28 = *v25;
    v29 = OUTLINED_FUNCTION_419();
    v30(v29);
    OUTLINED_FUNCTION_212();
    if (swift_getEnumCaseMultiPayload())
    {
      v31 = *v26;
      v32 = OUTLINED_FUNCTION_212();
      v33(v32);
    }

    else
    {
      v34 = v24;
      v35 = v49;
      v36 = v25;
      v37 = v48;
      (*v45)(v49, v19, v48);
      (*v44)(v50, v35, v37);
      sub_1CFD49218();
      sub_1CFD491E8();
      v38 = v35;
      v24 = v34;
      v39 = v37;
      v25 = v36;
      v26 = v46;
      v21 = v47;
      (*v43)(v38, v39);
    }

    v40 = sub_1CFD491F8();
    v23 = v52;
    if (v52 == v40)
    {
      goto LABEL_2;
    }
  }

  OUTLINED_FUNCTION_411();
  v41 = sub_1CFD49418();
  if (v42 == 8)
  {
    v51 = v41;
    (*v24)(v21, &v51, v12);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

id sub_1CFD21410()
{
  sub_1CFD39610();
  OUTLINED_FUNCTION_197();
  result = sub_1CFD34744();
  if (!result)
  {
    v1 = [objc_opt_self() mainBundle];

    return v1;
  }

  return result;
}

uint64_t sub_1CFD2148C(uint64_t a1)
{
  result = MEMORY[0x1D3873B20](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1CFD34F70(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFD2154C(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(a1 + 16))
  {
    v3 = *(a2(0) - 8);
    v4 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    OUTLINED_FUNCTION_162_0();
    sub_1CFD35F58();
    OUTLINED_FUNCTION_213();
  }

  else
  {
    a2(0);
    OUTLINED_FUNCTION_154_0();
  }

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1CFD21634(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFD48F48();
  v5 = OUTLINED_FUNCTION_6_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_7();
  v8 = sub_1CFD48CE8();
  v9 = OUTLINED_FUNCTION_6_2(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_91_1();
  v12 = sub_1CFD48F68();
  v13 = OUTLINED_FUNCTION_6_2(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = *(a1 + 72);
  if (!*(a1 + 80))
  {
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_117_1();
    sub_1CFD48EF8();
    sub_1CFD21410();
    OUTLINED_FUNCTION_395();
    OUTLINED_FUNCTION_281();
    goto LABEL_5;
  }

  v17 = *(a2 + 16);

  if (v17 > 1)
  {
    sub_1CFD48F38();
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_107();
    sub_1CFD48F18();

    sub_1CFD48F28();
    v19 = *(a2 + 16) - 1;
    OUTLINED_FUNCTION_203(&v19);
    OUTLINED_FUNCTION_329();
    sub_1CFD48F58();
    sub_1CFD21410();
    OUTLINED_FUNCTION_395();
    OUTLINED_FUNCTION_41_1();
LABEL_5:
    sub_1CFD48FE8();
  }

  return OUTLINED_FUNCTION_107();
}

uint64_t sub_1CFD217F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFD48F48();
  v5 = OUTLINED_FUNCTION_6_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_7();
  v8 = sub_1CFD48CE8();
  v9 = OUTLINED_FUNCTION_6_2(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_91_1();
  v12 = sub_1CFD48F68();
  v13 = OUTLINED_FUNCTION_6_2(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_6();
  v16 = (a1 + *(type metadata accessor for MessageEntity() + 52));
  v17 = *v16;
  if (!v16[1])
  {
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_117_1();
    sub_1CFD48EF8();
    sub_1CFD21410();
    OUTLINED_FUNCTION_395();
    OUTLINED_FUNCTION_281();
    goto LABEL_5;
  }

  v18 = *(a2 + 16);
  v19 = v16[1];

  if (v18 > 1)
  {
    sub_1CFD48F38();
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_107();
    sub_1CFD48F18();

    sub_1CFD48F28();
    v21 = *(a2 + 16) - 1;
    OUTLINED_FUNCTION_203(&v21);
    OUTLINED_FUNCTION_329();
    sub_1CFD48F58();
    sub_1CFD21410();
    OUTLINED_FUNCTION_395();
    OUTLINED_FUNCTION_41_1();
LABEL_5:
    sub_1CFD48FE8();
  }

  return OUTLINED_FUNCTION_107();
}

Swift::String __swiftcall ModelInputAndOutputKind.inputString()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA8, qword_1CFD4BD78);
  OUTLINED_FUNCTION_6_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_323();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA0, &unk_1CFD4BD68);
  OUTLINED_FUNCTION_6_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_112_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D98, &unk_1CFD50A10);
  OUTLINED_FUNCTION_6_2(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_147();
  v13 = type metadata accessor for ModelInputAndOutputKind(0);
  v14 = OUTLINED_FUNCTION_25(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_158_0();
  OUTLINED_FUNCTION_7_10();
  sub_1CFD35F58();
  OUTLINED_FUNCTION_107();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_266();
      sub_1CFD020E8();
      v19 = sub_1CFD21E70(&qword_1EC4F2F30, &qword_1CFD4CF98, sub_1CFD2A9F0);
      v21 = v26;
      OUTLINED_FUNCTION_231();
      goto LABEL_7;
    }

    v18 = &unk_1CFD4BD68;
    OUTLINED_FUNCTION_231();
    sub_1CFD020E8();
    v19 = sub_1CFD21E70(&qword_1EC4F3010, &qword_1CFD4D068, sub_1CFD2B3CC);
    v21 = v20;
    v22 = v0;
    v23 = &qword_1EC4F2DA0;
  }

  else
  {
    v18 = &unk_1CFD50A10;
    sub_1CFD020E8();
    v19 = sub_1CFD21E70(&qword_1EC4F2F50, &qword_1CFD4CFB8, sub_1CFD2BB50);
    v21 = v24;
    v22 = OUTLINED_FUNCTION_117();
  }

  v25 = v18;
LABEL_7:
  sub_1CFCE3050(v22, v23, v25);
  v27 = v19;
  v28 = v21;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

void ModelInputAndOutputKind.isUrgent.getter()
{
  OUTLINED_FUNCTION_156();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA8, qword_1CFD4BD78);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_323();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA0, &unk_1CFD4BD68);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_146();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D98, &unk_1CFD50A10);
  OUTLINED_FUNCTION_25(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_148();
  v15 = type metadata accessor for ModelInputAndOutputKind(0);
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_7_10();
  sub_1CFD35F58();
  OUTLINED_FUNCTION_419();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_70();
      sub_1CFD020E8();
      v25 = *(v0 + *(v3 + 76));
      OUTLINED_FUNCTION_346();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_212();
    OUTLINED_FUNCTION_310();
    sub_1CFD020E8();
    v20 = *(v1 + *(v7 + 76));
  }

  else
  {
    OUTLINED_FUNCTION_263();
    OUTLINED_FUNCTION_310();
    sub_1CFD020E8();
    v21 = *(v2 + *(v11 + 76));
  }

  OUTLINED_FUNCTION_70();
LABEL_7:
  sub_1CFCE3050(v22, v23, v24);
  OUTLINED_FUNCTION_155();
}

uint64_t sub_1CFD22704()
{
  OUTLINED_FUNCTION_431();
  v3 = v3 && v2 == 0xE400000000000000;
  if (v3 || (v4 = v1, OUTLINED_FUNCTION_339(0x616Du), (OUTLINED_FUNCTION_20() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = v4 == OUTLINED_FUNCTION_275(0x656Du) && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_139_0();
      if (v3 && v0 == v7)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_37_0();
        if (v4)
        {
          return 2;
        }

        else
        {
          return 3;
        }
      }
    }
  }
}