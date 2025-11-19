uint64_t sub_2696E30F4()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = *v0;
  v3 = sub_269853404();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_4_7();
  v7 = sub_2698548D4();
  v1[7] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_4_7();
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2696E320C()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v0[8];
  v1 = v0[9];
  __swift_project_value_buffer(v0[7], qword_28033D910);
  v3 = OUTLINED_FUNCTION_2_8();
  v4(v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_16_2();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "CommonMediaItemDisambiguationFlowStrategy.makeDisambiguationItemContainer() called", v7, 2u);
    OUTLINED_FUNCTION_10();
  }

  v9 = v0[8];
  v8 = v0[9];
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[4];
  v13 = v0[5];
  v15 = v0[2];
  v14 = v0[3];

  v16 = OUTLINED_FUNCTION_17_6();
  v17(v16);
  v18 = *(v14 + 80);
  sub_2698536E4();
  sub_2698536D4();
  v19 = sub_2698533F4();
  v21 = v20;
  v22 = *(v13 + 8);
  v23 = OUTLINED_FUNCTION_0_17();
  v24(v23);
  if (v19 == 0x657449616964656DLL && v21 == 0xEA0000000000736DLL)
  {
  }

  else
  {
    v26 = sub_269855584();

    if ((v26 & 1) == 0)
    {
      sub_2696BAE9C();
      OUTLINED_FUNCTION_30_1();
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      *v27 = 10;
      v28 = 3;
LABEL_17:
      v42 = v0[9];
      v43 = v0[6];
      *(v27 + 24) = v28;
      swift_willThrow();

      OUTLINED_FUNCTION_7_7();

      return v44();
    }
  }

  v29 = v0[2];
  v30 = sub_2698536C4();
  v31 = [v30 disambiguationItems];

  v32 = sub_269854CB4();
  v33 = sub_2696E3558(v32);

  if (!v33)
  {
    sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1();
    v28 = 0;
    *v27 = 0xD000000000000013;
    *(v27 + 8) = 0x800000026987CFF0;
    *(v27 + 16) = 0;
    goto LABEL_17;
  }

  v34 = v0[9];
  v35 = v0[6];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323830, qword_26985B560);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = sub_2698537E4();

  v40 = v0[1];

  return v40(v39);
}

uint64_t sub_2696E3558(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_2698552A4();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    sub_2696B6F94(v3, v6);
    sub_2696E55AC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_269855284();
    v4 = *(v7 + 16);
    sub_2698552B4();
    sub_2698552C4();
    sub_269855294();
    v3 += 32;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_2696E3644()
{
  OUTLINED_FUNCTION_2_7();
  v1[14] = v2;
  v1[15] = v3;
  v1[12] = v4;
  v1[13] = v5;
  v6 = *v0;
  v1[16] = *v0;
  v1[17] = *(v6 + 80);
  v7 = sub_269853344();
  v1[18] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[19] = v8;
  v10 = *(v9 + 64);
  v1[20] = OUTLINED_FUNCTION_4_7();
  v11 = sub_269852474();
  v1[21] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[22] = v12;
  v14 = *(v13 + 64);
  v1[23] = OUTLINED_FUNCTION_4_7();
  v15 = sub_2698523C4();
  v1[24] = v15;
  OUTLINED_FUNCTION_5_12(v15);
  v1[25] = v16;
  v18 = *(v17 + 64);
  v1[26] = OUTLINED_FUNCTION_4_7();
  v19 = sub_269851EF4();
  v1[27] = v19;
  OUTLINED_FUNCTION_5_12(v19);
  v1[28] = v20;
  v22 = *(v21 + 64);
  v1[29] = OUTLINED_FUNCTION_4_7();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v23);
  v25 = *(v24 + 64);
  v1[30] = OUTLINED_FUNCTION_4_7();
  v26 = sub_269853874();
  v1[31] = v26;
  OUTLINED_FUNCTION_5_12(v26);
  v1[32] = v27;
  v29 = *(v28 + 64);
  v1[33] = OUTLINED_FUNCTION_4_7();
  v30 = type metadata accessor for MediaNLIntent();
  v1[34] = v30;
  OUTLINED_FUNCTION_8_9(v30);
  v32 = *(v31 + 64);
  v1[35] = OUTLINED_FUNCTION_4_7();
  v33 = sub_269853F44();
  v1[36] = v33;
  OUTLINED_FUNCTION_5_12(v33);
  v1[37] = v34;
  v36 = *(v35 + 64);
  v1[38] = OUTLINED_FUNCTION_4_7();
  v37 = sub_2698538B4();
  v1[39] = v37;
  OUTLINED_FUNCTION_5_12(v37);
  v1[40] = v38;
  v40 = *(v39 + 64);
  v1[41] = OUTLINED_FUNCTION_4_7();
  v41 = sub_2698548D4();
  v1[42] = v41;
  OUTLINED_FUNCTION_5_12(v41);
  v1[43] = v42;
  v44 = *(v43 + 64) + 15;
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v45 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v45, v46, v47);
}

uint64_t sub_2696E39A8()
{
  v130 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v0[45];
  v3 = v0[43];
  v125 = __swift_project_value_buffer(v0[42], qword_28033D910);
  v123 = *(v3 + 16);
  v123(v2);
  v4 = sub_2698548B4();
  v5 = sub_269854F14();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24(v6);
    _os_log_impl(&dword_269684000, v4, v5, "CommonMediaItemDisambiguationFlowStrategy.parseDisambiguationResult() called", v1, 2u);
    OUTLINED_FUNCTION_12_1();
  }

  v7 = v0[45];
  v9 = v0[42];
  v8 = v0[43];
  v11 = v0[40];
  v10 = v0[41];
  v12 = v0[39];
  v13 = v0[13];

  v14 = *(v8 + 8);
  v14(v7, v9);
  sub_269853844();
  v15 = *(v11 + 88);
  v16 = OUTLINED_FUNCTION_0_17();
  v18 = v17(v16);
  if (v18 == *MEMORY[0x277D5C128])
  {
    v19 = v0[41];
    v20 = v0[38];
    v22 = v0[36];
    v21 = v0[37];
    v23 = v0[35];
    (*(v0[40] + 96))(v19, v0[39]);
    (*(v21 + 32))(v20, v19, v22);
    (*(v21 + 16))(v23, v20, v22);
    if (qword_280322580 != -1)
    {
      OUTLINED_FUNCTION_7_17();
    }

    v25 = v0[34];
    v24 = v0[35];
    sub_2696DAEF8();
    sub_269853D54();
    v26 = v0[3];
    v27 = v0[37];
    v28 = v0[38];
    v30 = v0[35];
    v29 = v0[36];
    if (v26)
    {
      v121 = v14;
      v0[4] = v0[2];
      v0[5] = v26;
      OUTLINED_FUNCTION_20_5();
      v0[6] = v31;
      v0[7] = v32;
      v0[8] = 0;
      v0[9] = 0xE000000000000000;
      sub_269693054();
      v33 = OUTLINED_FUNCTION_23_4();
      v35 = v34;

      sub_2696CC460(v30);
LABEL_19:
      v74 = OUTLINED_FUNCTION_16_7();
      v76(v74, v75);
      goto LABEL_20;
    }

    sub_2696CC460(v0[35]);
    v65 = OUTLINED_FUNCTION_16_7();
    v66(v65);
    goto LABEL_17;
  }

  if (v18 == *MEMORY[0x277D5C140])
  {
    v121 = v14;
    v36 = v0[41];
    v37 = v0[32];
    v38 = v0[33];
    v40 = v0[30];
    v39 = v0[31];
    v42 = v0[28];
    v41 = v0[29];
    v43 = v0[27];
    v44 = v0[21];
    (*(v0[40] + 96))(v36, v0[39]);
    (*(v37 + 32))(v38, v36, v39);
    sub_269853864();
    sub_2696D3C74();
    (*(v42 + 8))(v41, v43);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v44);
    v46 = v0[32];
    v47 = v0[33];
    v48 = v0[30];
    v49 = v0[31];
    if (EnumTagSinglePayload != 1)
    {
      v69 = v0[25];
      v68 = v0[26];
      v70 = v0[24];
      v71 = v0[21];
      v72 = v0[22];
      sub_269852424();
      (*(v72 + 8))(v48, v71);
      v33 = sub_2698520D4();
      v35 = v73;
      (*(v69 + 8))(v68, v70);
      goto LABEL_19;
    }

    v50 = OUTLINED_FUNCTION_16_7();
    v51(v50);
    sub_269698048(v48, &qword_280323360, &unk_26985AB80);
LABEL_17:
    sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_5_14(v67, 11);
LABEL_27:
    swift_willThrow();
    goto LABEL_28;
  }

  v52 = v0[40];
  v53 = v0[41];
  v54 = v0[39];
  if (v18 == *MEMORY[0x277D5C148])
  {
    (*(v52 + 96))(v0[41], v0[39]);
    v55 = *v53;
    sub_2696D6C54();
    if (v56)
    {
      v57 = v56;
      v121 = v14;
      v58 = v0[25];
      v59 = v0[26];
      v60 = v0[23];
      v61 = v0[24];
      v62 = v0[21];
      v63 = v0[22];
      sub_269854544();

      sub_269852424();
      (*(v63 + 8))(v60, v62);
      v33 = sub_2698520D4();
      v35 = v64;

      (*(v58 + 8))(v59, v61);
LABEL_20:
      v77 = v0[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323840, &qword_26985B650);
      v0[11] = sub_269853544();
      v78 = swift_task_alloc();
      *(v78 + 16) = v33;
      *(v78 + 24) = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323848, &qword_26985B658);
      sub_269693204(qword_280323850, &qword_280323848, &qword_26985B658);
      sub_269854C24();

      v79 = v0[10];
      if (v79)
      {
        v115 = v0[45];
        v116 = v0[44];
        v117 = v0[41];
        v118 = v0[38];
        v119 = v0[35];
        v120 = v0[33];
        v122 = v0[30];
        v124 = v0[29];
        v126 = v0[26];
        v128 = v0[23];
        v81 = v0[19];
        v80 = v0[20];
        v82 = v0[17];
        v83 = v0[15];
        v84 = v0[16];
        v113 = v0[12];
        v114 = v0[18];

        sub_2698536E4();
        v85 = sub_2698536B4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
        v86 = swift_allocObject();
        *(v86 + 16) = xmmword_2698590C0;
        *(v86 + 32) = v79;
        v87 = *(v84 + 96);
        v88 = v79;
        sub_2697A1EFC();

        v129[3] = sub_2696E55AC();
        v129[0] = v88;
        v89 = v88;
        sub_2698536B4();
        sub_269853334();
        sub_269853424();

        (*(v81 + 8))(v80, v114);

        OUTLINED_FUNCTION_7_7();
        goto LABEL_29;
      }

      (v123)(v0[44], v125, v0[42]);

      v91 = sub_2698548B4();
      v92 = sub_269854F24();

      v93 = os_log_type_enabled(v91, v92);
      v95 = v0[43];
      v94 = v0[44];
      v96 = v0[42];
      if (v93)
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v129[0] = v98;
        *v97 = 136315138;
        v99 = sub_26974F520(v33, v35, v129);

        *(v97 + 4) = v99;
        _os_log_impl(&dword_269684000, v91, v92, "No content matched selected Identifier: %s", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v98);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      else
      {
      }

      v121(v94, v96);
      sub_2696BAE9C();
      OUTLINED_FUNCTION_30_1();
      *(v101 + 8) = 0;
      *(v101 + 16) = 0;
      *v101 = 3;
      *(v101 + 24) = 3;
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  sub_2696BAE9C();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_14(v100, 13);
  swift_willThrow();
  (*(v52 + 8))(v53, v54);
LABEL_28:
  v103 = v0[44];
  v102 = v0[45];
  v104 = v0[41];
  v105 = v0[38];
  v106 = v0[35];
  v107 = v0[33];
  v109 = v0[29];
  v108 = v0[30];
  v110 = v0[26];
  v111 = v0[23];
  v127 = v0[20];

  OUTLINED_FUNCTION_7_7();
LABEL_29:

  return v90();
}

uint64_t sub_2696E42C0(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2697400A0(*a1);
  if (v6)
  {
    if (v5 == a2 && v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_269855584();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2696E4344()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v1[10] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v4);
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_4_7();
  v7 = sub_269853234();
  v1[12] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_4_7();
  v11 = sub_2698532A4();
  v1[15] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[16] = v12;
  v14 = *(v13 + 64);
  v1[17] = OUTLINED_FUNCTION_4_7();
  v15 = sub_2698548D4();
  v1[18] = v15;
  OUTLINED_FUNCTION_5_12(v15);
  v1[19] = v16;
  v18 = *(v17 + 64);
  v1[20] = OUTLINED_FUNCTION_4_7();
  v19 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_2696E44D8()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v0[19];
  v1 = v0[20];
  __swift_project_value_buffer(v0[18], qword_28033D910);
  v3 = OUTLINED_FUNCTION_2_8();
  v4(v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_16_2();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "CommonMediaItemDisambiguationFlowStrategy.makePromptForDisambiguation() called", v7, 2u);
    OUTLINED_FUNCTION_10();
  }

  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v11 = v0[9];

  (*(v9 + 8))(v8, v10);
  v12 = *__swift_project_boxed_opaque_existential_1((v11 + 56), *(v11 + 80));
  v13 = swift_task_alloc();
  v0[21] = v13;
  *v13 = v0;
  v13[1] = sub_2696E4680;
  v14 = v0[17];

  return sub_269788BF4(v14, 0xD000000000000012, 0x800000026987CFD0);
}

uint64_t sub_2696E4680()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *(*v1 + 168);
  v3 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;
  *(v5 + 176) = v0;

  if (v0)
  {
    v6 = sub_2696E4AF0;
  }

  else
  {
    v6 = sub_2696E4788;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2696E4788()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 80) + 80);
  sub_2698536E4();
  v3 = sub_2698536C4();
  v4 = [v3 disambiguationItems];

  v5 = sub_269854CB4();
  v6 = sub_2696E3558(v5);

  if (v6)
  {
    v32 = *(v0 + 136);
    v33 = *(v0 + 128);
    v7 = *(v0 + 112);
    v34 = *(v0 + 120);
    v35 = *(v0 + 160);
    v8 = *(v0 + 104);
    v36 = *(v0 + 96);
    v9 = *(v0 + 88);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    v12 = *(v0 + 56);
    v13 = sub_2698536A4();
    v14 = v11[12];
    sub_26973F904(v7, v6, v13);
    v16 = v15;

    v17 = v11[6];
    __swift_project_boxed_opaque_existential_1(v11 + 2, v11[5]);
    OUTLINED_FUNCTION_0_17();
    sub_269852CA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2698590C0;
    *(v18 + 32) = v16;
    (*(v8 + 16))(v9, v7, v36);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v36);
    v19 = sub_2698538F4();
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    v20 = MEMORY[0x277D5C1D8];
    v12[3] = v19;
    v12[4] = v20;
    __swift_allocate_boxed_opaque_existential_1(v12);
    v21 = v16;
    sub_2698530D4();

    sub_269698048(v0 + 16, &qword_280323028, qword_26985AD20);
    sub_269698048(v9, &qword_280323010, &unk_26985B640);
    (*(v8 + 8))(v7, v36);
    (*(v33 + 8))(v32, v34);
  }

  else
  {
    v24 = *(v0 + 128);
    v23 = *(v0 + 136);
    v25 = *(v0 + 120);
    sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1();
    *v26 = 0xD000000000000013;
    *(v26 + 8) = 0x800000026987CFF0;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    swift_willThrow();
    (*(v24 + 8))(v23, v25);
    v27 = *(v0 + 160);
    v28 = *(v0 + 136);
    v29 = *(v0 + 112);
    v30 = *(v0 + 88);
  }

  OUTLINED_FUNCTION_7_7();

  return v22();
}

uint64_t sub_2696E4AF0()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];

  OUTLINED_FUNCTION_7_7();

  return v6();
}

uint64_t sub_2696E4B7C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_2696D1E70(v0 + 56);
  v1 = *(v0 + 96);

  return v0;
}

uint64_t sub_2696E4BAC()
{
  sub_2696E4B7C();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

void sub_2696E4BFC(uint64_t a1, void *a2)
{
  v3 = a2[10];
  v2 = a2[11];
  v4 = a2[12];
  type metadata accessor for CommonMediaItemDisambiguationFlowStrategy();

  JUMPOUT(0x26D643790);
}

uint64_t sub_2696E4C84(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2696E4D20;

  return sub_2696E30F4();
}

uint64_t sub_2696E4D20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_2696E4E28()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696BBFF8;

  return sub_2696E3644();
}

uint64_t sub_2696E4EEC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696BBE14;

  return sub_2696E4344();
}

uint64_t sub_2696E4F98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B588] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = type metadata accessor for CommonMediaItemDisambiguationFlowStrategy();
  *v12 = v5;
  v12[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9F38](a1, a2, a3, v16, a5);
}

uint64_t sub_2696E507C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B598] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = type metadata accessor for CommonMediaItemDisambiguationFlowStrategy();
  *v12 = v5;
  v12[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9F48](a1, a2, a3, v16, a5);
}

uint64_t sub_2696E5160(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B590] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for CommonMediaItemDisambiguationFlowStrategy();
  *v10 = v4;
  v10[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9F40](a1, a2, v14, a4);
}

uint64_t sub_2696E5234(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B5A0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for CommonMediaItemDisambiguationFlowStrategy();
  *v10 = v4;
  v10[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9F58](a1, a2, v14, a4);
}

uint64_t sub_2696E5308(uint64_t a1, void *a2)
{
  v3 = a2[10];
  v2 = a2[11];
  v4 = a2[12];
  type metadata accessor for CommonMediaItemDisambiguationFlowStrategy();

  return sub_2698528E4();
}

uint64_t sub_2696E5364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5C0B0] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = a5[10];
  v16 = a5[11];
  v17 = a5[12];
  v18 = type metadata accessor for CommonMediaItemDisambiguationFlowStrategy();
  *v14 = v6;
  v14[1] = sub_2696BBFF8;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v18, a6);
}

uint64_t sub_2696E5450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D5C0B8] + 4);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  v17 = a6[10];
  v18 = a6[11];
  v19 = a6[12];
  v20 = type metadata accessor for CommonMediaItemDisambiguationFlowStrategy();
  *v16 = v7;
  v16[1] = sub_2696BBFF8;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v20, a7);
}

unint64_t sub_2696E55AC()
{
  result = qword_280323838;
  if (!qword_280323838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280323838);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_12()
{
  v2 = *(*(v1 - 368) + 8);
  result = v0;
  v4 = *(v1 - 360);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_4()
{

  return sub_269855104();
}

void OUTLINED_FUNCTION_29_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2696E5730@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v1 = sub_2698548D4();
  v2 = OUTLINED_FUNCTION_8(v1);
  v109 = v3;
  v110 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v108 = v7 - v6;
  OUTLINED_FUNCTION_2_13();
  v122 = sub_269852474();
  v8 = OUTLINED_FUNCTION_8(v122);
  v113 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v106 = v13 - v12;
  OUTLINED_FUNCTION_2_13();
  v114 = sub_2698523C4();
  v14 = OUTLINED_FUNCTION_8(v114);
  v112 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v111 = v19 - v18;
  OUTLINED_FUNCTION_2_13();
  v118 = sub_269851EF4();
  v20 = OUTLINED_FUNCTION_8(v118);
  v116 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v115 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v27 = OUTLINED_FUNCTION_8_9(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v106 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803238E0, qword_26985B848);
  v33 = OUTLINED_FUNCTION_8_9(v32);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v107 = &v106 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v120 = &v106 - v38;
  OUTLINED_FUNCTION_2_13();
  v121 = sub_269853874();
  v39 = OUTLINED_FUNCTION_8(v121);
  v119 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_1();
  v117 = v44 - v43;
  OUTLINED_FUNCTION_2_13();
  v45 = type metadata accessor for MediaNLIntent();
  v46 = OUTLINED_FUNCTION_4_3(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3_1();
  v51 = v50 - v49;
  v52 = sub_269853F44();
  v53 = OUTLINED_FUNCTION_8(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3_1();
  v60 = v59 - v58;
  v61 = sub_2698538B4();
  v62 = OUTLINED_FUNCTION_8(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_3_1();
  v69 = (v68 - v67);
  sub_269853844();
  v70 = (*(v64 + 88))(v69, v61);
  if (v70 == *MEMORY[0x277D5C128])
  {
    v71 = OUTLINED_FUNCTION_13_6();
    v72(v71);
    (*(v55 + 32))(v60, v69, v52);
    (*(v55 + 16))(v51, v60, v52);
    if (qword_280322628 != -1)
    {
      OUTLINED_FUNCTION_12_10();
    }

    OUTLINED_FUNCTION_5_17();
    sub_2696E84DC(v73, v74);
    sub_269853D54();
    sub_2696CC460(v51);
    if (v124 - 1 >= 2)
    {
      if (v124)
      {
        sub_269853014();
      }

      else
      {
        sub_269853004();
      }
    }

    else
    {
      sub_269852FF4();
    }

    return (*(v55 + 8))(v60, v52);
  }

  else if (v70 == *MEMORY[0x277D5C140])
  {
    v75 = OUTLINED_FUNCTION_13_6();
    v76(v75);
    v77 = v119;
    v78 = v117;
    v79 = v121;
    (*(v119 + 32))(v117, v69, v121);
    v80 = v115;
    sub_269853864();
    sub_2696D3C74();
    (*(v116 + 8))(v80, v118);
    v81 = v122;
    if (__swift_getEnumTagSinglePayload(v31, 1, v122) == 1)
    {
      sub_26969B0C0(v31, &qword_280323360, &unk_26985AB80);
      v82 = 1;
      v83 = v120;
    }

    else
    {
      sub_269852424();
      (*(v113 + 8))(v31, v81);
      v83 = v120;
      sub_269852364();
      v94 = OUTLINED_FUNCTION_23_5();
      v95(v94);
      v82 = 0;
    }

    v96 = sub_269852594();
    __swift_storeEnumTagSinglePayload(v83, v82, 1, v96);
    sub_2696E5FC8(v83);
    sub_26969B0C0(v83, &qword_2803238E0, qword_26985B848);
    return (*(v77 + 8))(v78, v79);
  }

  else if (v70 == *MEMORY[0x277D5C148])
  {
    v84 = OUTLINED_FUNCTION_13_6();
    v85(v84);
    v86 = *v69;
    sub_2696D6C54();
    if (v87)
    {
      v88 = v87;
      v89 = v106;
      sub_269854544();

      sub_269852424();
      (*(v113 + 8))(v89, v122);
      v90 = v107;
      sub_269852364();
      v91 = OUTLINED_FUNCTION_23_5();
      v92(v91);
      v93 = 0;
    }

    else
    {
      v93 = 1;
      v90 = v107;
    }

    v105 = sub_269852594();
    __swift_storeEnumTagSinglePayload(v90, v93, 1, v105);
    sub_2696E5FC8(v90);

    return sub_26969B0C0(v90, &qword_2803238E0, qword_26985B848);
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v98 = v110;
    v99 = __swift_project_value_buffer(v110, qword_28033D910);
    v101 = v108;
    v100 = v109;
    (*(v109 + 16))(v108, v99, v98);
    v102 = sub_2698548B4();
    v103 = sub_269854F14();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = OUTLINED_FUNCTION_16_2();
      *v104 = 0;
      _os_log_impl(&dword_269684000, v102, v103, "CommonNeedsConfirmationFlowStrategy#actionForInput, not a NLv3IntentOnly or pommesResponse parse", v104, 2u);
      MEMORY[0x26D647170](v104, -1, -1);
    }

    (*(v100 + 8))(v101, v98);
    sub_269853014();
    return (*(v64 + 8))(v69, v61);
  }
}

uint64_t sub_2696E5FC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803238E0, qword_26985B848);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  sub_2696E846C(a1, &v14 - v7);
  v9 = sub_269852594();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    goto LABEL_2;
  }

  sub_2696E846C(v8, v6);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 88))(v6, v9);
  if (v11 == *MEMORY[0x277D39B10])
  {
    sub_269853004();
    return sub_26969B0C0(v8, &qword_2803238E0, qword_26985B848);
  }

  if (v11 != *MEMORY[0x277D39B08] && v11 != *MEMORY[0x277D39B18])
  {
    (*(v10 + 8))(v6, v9);
LABEL_2:
    sub_269853014();
    return sub_26969B0C0(v8, &qword_2803238E0, qword_26985B848);
  }

  sub_26969B0C0(v8, &qword_2803238E0, qword_26985B848);
  return sub_269852FF4();
}

uint64_t sub_2696E61AC()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v3;
  v1[7] = v4;
  v1[10] = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323540, &qword_26985B830);
  OUTLINED_FUNCTION_8_9(v5);
  v7 = *(v6 + 64);
  v1[11] = OUTLINED_FUNCTION_4_7();
  v8 = sub_2698548D4();
  v1[12] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[13] = v9;
  v11 = *(v10 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v12 = sub_269852474();
  v1[18] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v1[19] = v13;
  v15 = *(v14 + 64);
  v1[20] = OUTLINED_FUNCTION_4_7();
  v16 = sub_269852594();
  v1[21] = v16;
  OUTLINED_FUNCTION_5_12(v16);
  v1[22] = v17;
  v19 = *(v18 + 64);
  v1[23] = OUTLINED_FUNCTION_4_7();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803238D8, &unk_26985B838);
  v1[24] = v20;
  OUTLINED_FUNCTION_8_9(v20);
  v22 = *(v21 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v23 = sub_2698523C4();
  v1[27] = v23;
  OUTLINED_FUNCTION_5_12(v23);
  v1[28] = v24;
  v26 = *(v25 + 64);
  v1[29] = OUTLINED_FUNCTION_4_7();
  v27 = sub_269851EF4();
  v1[30] = v27;
  OUTLINED_FUNCTION_5_12(v27);
  v1[31] = v28;
  v30 = *(v29 + 64);
  v1[32] = OUTLINED_FUNCTION_4_7();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v31);
  v33 = *(v32 + 64);
  v1[33] = OUTLINED_FUNCTION_4_7();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803238E0, qword_26985B848);
  OUTLINED_FUNCTION_8_9(v34);
  v36 = *(v35 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v37 = sub_269853874();
  v1[40] = v37;
  OUTLINED_FUNCTION_5_12(v37);
  v1[41] = v38;
  v40 = *(v39 + 64);
  v1[42] = OUTLINED_FUNCTION_4_7();
  v41 = type metadata accessor for MediaNLIntent();
  v1[43] = v41;
  OUTLINED_FUNCTION_8_9(v41);
  v43 = *(v42 + 64);
  v1[44] = OUTLINED_FUNCTION_4_7();
  v44 = sub_269853F44();
  v1[45] = v44;
  OUTLINED_FUNCTION_5_12(v44);
  v1[46] = v45;
  v47 = *(v46 + 64);
  v1[47] = OUTLINED_FUNCTION_4_7();
  v48 = sub_2698538B4();
  v1[48] = v48;
  OUTLINED_FUNCTION_5_12(v48);
  v1[49] = v49;
  v51 = *(v50 + 64);
  v1[50] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_2696E65F4, 0, 0);
}

uint64_t sub_2696E65F4()
{
  v1 = *(v0 + 72);
  v2 = *(*(v0 + 80) + 80);
  sub_2698536E4();
  v3 = sub_2698536C4();
  v4 = [v3 itemToConfirm];

  sub_269855154();
  swift_unknownObjectRelease();
  sub_2696E55AC();
  if (!swift_dynamicCast())
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v24 = *(v0 + 104);
    v23 = *(v0 + 112);
    __swift_project_value_buffer(*(v0 + 96), qword_281571B38);
    v25 = OUTLINED_FUNCTION_2_8();
    v26(v25);
    v27 = sub_2698548B4();
    v28 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v28))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_31_0(&dword_269684000, v29, v30, "CommonNeedsConfirmationFlowStrategy#parseConfirmationResponse itemToConfirm could not be parsed as INMediaItem");
      OUTLINED_FUNCTION_18_7();
    }

    v32 = *(v0 + 104);
    v31 = *(v0 + 112);
    v33 = *(v0 + 96);

    (*(v32 + 8))(v31, v33);
    sub_2696BAE9C();
    swift_allocError();
    *v34 = xmmword_26985B660;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    swift_willThrow();
    goto LABEL_56;
  }

  v5 = *(v0 + 392);
  v6 = *(v0 + 400);
  v7 = *(v0 + 384);
  v8 = *(v0 + 64);
  v9 = *(v0 + 48);
  sub_269853844();
  v10 = (*(v5 + 88))(v6, v7);
  if (v10 != *MEMORY[0x277D5C128])
  {
    if (v10 != *MEMORY[0x277D5C140])
    {
      if (v10 != *MEMORY[0x277D5C148])
      {
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10();
        }

        v115 = *(v0 + 136);
        v116 = *(v0 + 104);
        __swift_project_value_buffer(*(v0 + 96), qword_28033D910);
        v117 = OUTLINED_FUNCTION_2_8();
        v118(v117);
        v119 = sub_2698548B4();
        v120 = sub_269854F14();
        if (OUTLINED_FUNCTION_19_5(v120))
        {
          *OUTLINED_FUNCTION_16_2() = 0;
          OUTLINED_FUNCTION_31_0(&dword_269684000, v121, v122, "CommonNeedsConfirmationFlowStrategy#actionForInput, not a NLv3IntentOnly or pommesResponse parse");
          OUTLINED_FUNCTION_18_7();
        }

        v124 = *(v0 + 392);
        v123 = *(v0 + 400);
        v125 = *(v0 + 384);
        v126 = *(v0 + 136);
        v127 = *(v0 + 96);
        v128 = *(v0 + 104);

        (*(v128 + 8))(v126, v127);
        sub_2696BAE9C();
        swift_allocError();
        *(v129 + 8) = 0;
        *(v129 + 16) = 0;
        *v129 = 13;
        *(v129 + 24) = 3;
        swift_willThrow();

        (*(v124 + 8))(v123, v125);
        goto LABEL_56;
      }

      v244 = v9;
      v54 = *(v0 + 400);
      (*(*(v0 + 392) + 96))(v54, *(v0 + 384));
      v55 = *v54;
      sub_2696D6C54();
      if (v56)
      {
        v57 = v56;
        v58 = *(v0 + 288);
        v59 = *(v0 + 224);
        v60 = *(v0 + 232);
        v239 = *(v0 + 216);
        v61 = *(v0 + 152);
        v62 = *(v0 + 160);
        v63 = *(v0 + 144);
        sub_269854544();

        sub_269852424();
        (*(v61 + 8))(v62, v63);
        sub_269852364();
        (*(v59 + 8))(v60, v239);
        v64 = 0;
      }

      else
      {
        v64 = 1;
      }

      v151 = *(v0 + 280);
      v150 = *(v0 + 288);
      v152 = *(v0 + 192);
      v153 = *(v0 + 200);
      v155 = *(v0 + 168);
      v154 = *(v0 + 176);
      __swift_storeEnumTagSinglePayload(v150, v64, 1, v155);
      (*(v154 + 104))(v151, *MEMORY[0x277D39B10], v155);
      OUTLINED_FUNCTION_24_4();
      __swift_storeEnumTagSinglePayload(v156, v157, v158, v155);
      v159 = *(v152 + 48);
      sub_2696E846C(v150, v153);
      sub_2696E846C(v151, v153 + v159);
      if (__swift_getEnumTagSinglePayload(v153, 1, v155) == 1)
      {
        v161 = *(v0 + 280);
        v160 = *(v0 + 288);
        v162 = *(v0 + 168);

        OUTLINED_FUNCTION_20_6(v161);
        OUTLINED_FUNCTION_20_6(v160);
        v163 = OUTLINED_FUNCTION_22_5();
        v9 = v244;
        if (__swift_getEnumTagSinglePayload(v163, v164, v162) == 1)
        {
          sub_26969B0C0(*(v0 + 200), &qword_2803238E0, qword_26985B848);
          goto LABEL_29;
        }
      }

      else
      {
        v165 = *(v0 + 168);
        sub_2696E846C(*(v0 + 200), *(v0 + 272));
        v166 = OUTLINED_FUNCTION_22_5();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v166, v167, v165);
        v169 = *(v0 + 280);
        v170 = *(v0 + 288);
        v171 = *(v0 + 272);
        if (EnumTagSinglePayload != 1)
        {
          v238 = *(v0 + 200);
          v197 = *(v0 + 288);
          v198 = *(v0 + 176);
          v199 = *(v0 + 184);
          v200 = *(v0 + 168);
          (*(v198 + 32))(v199, v153 + v159, v200);
          OUTLINED_FUNCTION_4_18();
          sub_2696E84DC(v201, v202);
          v203 = sub_269854A54();

          v204 = *(v198 + 8);
          v204(v199, v200);
          OUTLINED_FUNCTION_20_6(v169);
          OUTLINED_FUNCTION_20_6(v197);
          v204(v171, v200);
          OUTLINED_FUNCTION_20_6(v238);
          v9 = v244;
          if ((v203 & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_29;
        }

        v172 = *(v0 + 168);
        v173 = *(v0 + 176);

        OUTLINED_FUNCTION_26_1(v169);
        OUTLINED_FUNCTION_26_1(v170);
        (*(v173 + 8))(v171, v172);
        v9 = v244;
      }

      sub_26969B0C0(*(v0 + 200), &qword_2803238D8, &unk_26985B838);
      goto LABEL_51;
    }

    v243 = v9;
    v35 = *(v0 + 328);
    v36 = *(v0 + 336);
    v37 = *(v0 + 320);
    v39 = *(v0 + 256);
    v38 = *(v0 + 264);
    v41 = *(v0 + 240);
    v40 = *(v0 + 248);
    v42 = *(v0 + 144);
    (*(*(v0 + 392) + 96))(*(v0 + 400), *(v0 + 384));
    v43 = *(v35 + 32);
    v44 = OUTLINED_FUNCTION_18_3();
    v45(v44);
    sub_269853864();
    sub_2696D3C74();
    (*(v40 + 8))(v39, v41);
    if (__swift_getEnumTagSinglePayload(v38, 1, v42) == 1)
    {
      sub_26969B0C0(*(v0 + 264), &qword_280323360, &unk_26985AB80);
      v46 = 1;
    }

    else
    {
      v65 = *(v0 + 312);
      v66 = *(v0 + 264);
      v67 = *(v0 + 224);
      v68 = *(v0 + 232);
      v69 = *(v0 + 216);
      v71 = *(v0 + 144);
      v70 = *(v0 + 152);
      sub_269852424();
      (*(v70 + 8))(v66, v71);
      sub_269852364();
      (*(v67 + 8))(v68, v69);
      v46 = 0;
    }

    v72 = *(v0 + 304);
    v73 = *(v0 + 208);
    v74 = *(v0 + 192);
    v76 = *(v0 + 168);
    v75 = *(v0 + 176);
    __swift_storeEnumTagSinglePayload(*(v0 + 312), v46, 1, v76);
    (*(v75 + 104))(v72, *MEMORY[0x277D39B10], v76);
    OUTLINED_FUNCTION_24_4();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v76);
    v80 = *(v74 + 48);
    v81 = OUTLINED_FUNCTION_18_3();
    sub_2696E846C(v81, v82);
    sub_2696E846C(v72, v73 + v80);
    if (__swift_getEnumTagSinglePayload(v73, 1, v76) == 1)
    {
      v83 = *(v0 + 328);
      v84 = *(v0 + 336);
      v86 = *(v0 + 312);
      v85 = *(v0 + 320);
      v87 = *(v0 + 168);
      sub_26969B0C0(*(v0 + 304), &qword_2803238E0, qword_26985B848);
      sub_26969B0C0(v86, &qword_2803238E0, qword_26985B848);
      (*(v83 + 8))(v84, v85);
      v88 = OUTLINED_FUNCTION_22_5();
      if (__swift_getEnumTagSinglePayload(v88, v89, v87) == 1)
      {
        sub_26969B0C0(*(v0 + 208), &qword_2803238E0, qword_26985B848);
        v9 = v243;
        goto LABEL_29;
      }
    }

    else
    {
      v131 = *(v0 + 168);
      v130 = *(v0 + 176);
      sub_2696E846C(*(v0 + 208), *(v0 + 296));
      v132 = OUTLINED_FUNCTION_22_5();
      v134 = __swift_getEnumTagSinglePayload(v132, v133, v131);
      v135 = (v130 + 8);
      v137 = *(v0 + 328);
      v136 = *(v0 + 336);
      v138 = *(v0 + 320);
      v236 = *(v0 + 312);
      v139 = *(v0 + 296);
      v140 = *(v0 + 304);
      if (v134 != 1)
      {
        v233 = *(v0 + 208);
        v145 = *(v0 + 184);
        v230 = *(v0 + 320);
        v146 = *(v0 + 168);
        (*(*(v0 + 176) + 32))(v145, v73 + v80, v146);
        OUTLINED_FUNCTION_4_18();
        sub_2696E84DC(v147, v148);
        v227 = sub_269854A54();
        v149 = *v135;
        (*v135)(v145, v146);
        sub_26969B0C0(v140, &qword_2803238E0, qword_26985B848);
        sub_26969B0C0(v236, &qword_2803238E0, qword_26985B848);
        (*(v137 + 8))(v136, v230);
        v149(v139, v146);
        sub_26969B0C0(v233, &qword_2803238E0, qword_26985B848);
        v9 = v243;
        if ((v227 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_29;
      }

      v141 = *(v0 + 168);
      OUTLINED_FUNCTION_26_1(*(v0 + 304));
      OUTLINED_FUNCTION_26_1(v236);
      (*(v137 + 8))(v136, v138);
      v142 = *v135;
      v143 = OUTLINED_FUNCTION_18_3();
      v144(v143);
    }

    sub_26969B0C0(*(v0 + 208), &qword_2803238D8, &unk_26985B838);
    v9 = v243;
    goto LABEL_51;
  }

  v11 = *(v0 + 376);
  v13 = *(v0 + 360);
  v12 = *(v0 + 368);
  v14 = *(v0 + 352);
  (*(*(v0 + 392) + 96))(*(v0 + 400), *(v0 + 384));
  v15 = *(v12 + 32);
  v16 = OUTLINED_FUNCTION_18_3();
  v17(v16);
  (*(v12 + 16))(v14, v11, v13);
  if (qword_280322628 != -1)
  {
    OUTLINED_FUNCTION_12_10();
  }

  v19 = *(v0 + 344);
  v18 = *(v0 + 352);
  OUTLINED_FUNCTION_5_17();
  sub_2696E84DC(v20, v21);
  sub_269853D54();
  sub_2696CC460(v18);
  v22 = *(v0 + 408);
  if (v22 == 7)
  {
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
LABEL_51:
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v174 = *(v0 + 120);
    v175 = *(v0 + 104);
    __swift_project_value_buffer(*(v0 + 96), qword_281571B38);
    v176 = OUTLINED_FUNCTION_2_8();
    v177(v176);
    v178 = sub_2698548B4();
    v179 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v179))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_31_0(&dword_269684000, v180, v181, "CommonNeedsConfirmationFlowStrategy#parseConfirmationResponse failed");
      OUTLINED_FUNCTION_18_7();
    }

    v182 = *(v0 + 120);
    v183 = *(v0 + 96);
    v184 = *(v0 + 104);

    (*(v184 + 8))(v182, v183);
    sub_2696BAE9C();
    swift_allocError();
    *v185 = xmmword_26985B670;
    *(v185 + 16) = 0;
    *(v185 + 24) = 1;
    swift_willThrow();

LABEL_56:
    v186 = *(v0 + 400);
    v187 = *(v0 + 376);
    v188 = *(v0 + 352);
    v189 = *(v0 + 336);
    v191 = *(v0 + 304);
    v190 = *(v0 + 312);
    v193 = *(v0 + 288);
    v192 = *(v0 + 296);
    v194 = *(v0 + 272);
    v195 = *(v0 + 280);
    v216 = *(v0 + 264);
    v218 = *(v0 + 256);
    v220 = *(v0 + 232);
    v221 = *(v0 + 208);
    v223 = *(v0 + 200);
    v225 = *(v0 + 184);
    v228 = *(v0 + 160);
    v231 = *(v0 + 136);
    v234 = *(v0 + 128);
    v237 = *(v0 + 120);
    v241 = *(v0 + 112);
    v242 = *(v0 + 88);

    OUTLINED_FUNCTION_7_7();
    goto LABEL_57;
  }

  v47 = sub_2697A9738(v22);
  v49 = *(v0 + 368);
  v50 = *(v0 + 376);
  v51 = *(v0 + 360);
  if (v47 == 7562617 && v48 == 0xE300000000000000)
  {

    (*(v49 + 8))(v50, v51);
  }

  else
  {
    v53 = sub_269855584();

    (*(v49 + 8))(v50, v51);
    if ((v53 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

LABEL_29:
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v245 = v9;
  v90 = *(v0 + 128);
  v92 = *(v0 + 96);
  v91 = *(v0 + 104);
  v93 = __swift_project_value_buffer(v92, qword_281571B38);
  (*(v91 + 16))(v90, v93, v92);
  v94 = sub_2698548B4();
  v95 = sub_269854F14();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = OUTLINED_FUNCTION_16_2();
    *v96 = 0;
    _os_log_impl(&dword_269684000, v94, v95, "CommonNeedsConfirmationFlowStrategy#parseConfirmationResponse confirmed", v96, 2u);
    MEMORY[0x26D647170](v96, -1, -1);
  }

  v205 = *(v0 + 400);
  v206 = *(v0 + 376);
  v207 = *(v0 + 352);
  v208 = *(v0 + 336);
  v209 = *(v0 + 312);
  v210 = *(v0 + 304);
  v211 = *(v0 + 296);
  v212 = *(v0 + 288);
  v213 = *(v0 + 280);
  v214 = *(v0 + 272);
  v215 = *(v0 + 264);
  v217 = *(v0 + 256);
  v219 = *(v0 + 232);
  v222 = *(v0 + 208);
  v224 = *(v0 + 200);
  v226 = *(v0 + 184);
  v229 = *(v0 + 160);
  v97 = *(v0 + 128);
  v232 = *(v0 + 136);
  v235 = *(v0 + 120);
  v240 = *(v0 + 112);
  v99 = *(v0 + 96);
  v98 = *(v0 + 104);
  v100 = *(v0 + 80);
  v101 = *(v0 + 88);
  v102 = *(v0 + 72);
  v103 = *(v0 + 56);

  (*(v98 + 8))(v97, v99);
  v104 = sub_2698536B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_2698590C0;
  *(v105 + 32) = v245;
  v106 = *(v100 + 96);
  v107 = v245;
  sub_2697A1EFC();

  v108 = *MEMORY[0x277D5BED8];
  v109 = sub_269853414();
  OUTLINED_FUNCTION_4_3(v109);
  (*(v110 + 104))(v101, v108, v109);
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v109);
  sub_2698536B4();
  sub_2698535B4();

  OUTLINED_FUNCTION_7_7();
LABEL_57:

  return v114();
}

uint64_t sub_2696E767C()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v1[10] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v4);
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_4_7();
  v7 = sub_2698532A4();
  v1[12] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_2696E7780, 0, 0);
}

uint64_t sub_2696E7780()
{
  v1 = v0[9];
  v2 = v0[8];
  v3 = *(v0[10] + 80);
  sub_2698536E4();
  v4 = sub_2698536A4();
  v0[15] = v4;
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_2696E7844;
  v6 = v0[14];

  return sub_2696BB484(v6, v4);
}

uint64_t sub_2696E7844()
{
  OUTLINED_FUNCTION_2_7();
  v3 = *(*v1 + 128);
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v2;
  *(v2 + 136) = v0;

  if (v0)
  {
    v5 = sub_2696E7AD8;
  }

  else
  {
    v6 = *(v2 + 120);

    v5 = sub_2696E7954;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2696E7954()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = v5[11];
  __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  sub_269852CA4();
  sub_269835870();
  sub_269853234();
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = sub_2698538F4();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v13 = MEMORY[0x277D5C1D8];
  v6[3] = v12;
  v6[4] = v13;
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_2698530C4();
  sub_26969B0C0(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v3, &qword_280323010, &unk_26985B640);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_7_7();

  return v14();
}

uint64_t sub_2696E7AD8()
{
  OUTLINED_FUNCTION_2_7();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];

  OUTLINED_FUNCTION_7_7();
  v5 = v0[17];

  return v4();
}

uint64_t sub_2696E7B48()
{
  sub_2696E8524(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  return v0;
}

uint64_t sub_2696E7B70()
{
  sub_2696E7B48();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_2696E7BD8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696BBFF8;

  return sub_2696E61AC();
}

uint64_t sub_2696E7C8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B4E0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v10 = v4;
  v10[1] = sub_2696DF218;

  return MEMORY[0x2821B9E10](a1, a2, v14, a4);
}

uint64_t sub_2696E7D60()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696BBE14;

  return sub_2696E767C();
}

uint64_t sub_2696E7E0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B4F0] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v12 = v5;
  v12[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9E28](a1, a2, a3, v16, a5);
}

uint64_t sub_2696E7EF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B500] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v12 = v5;
  v12[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9E38](a1, a2, a3, v16, a5);
}

uint64_t sub_2696E7FD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B4F8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v10 = v4;
  v10[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9E30](a1, a2, v14, a4);
}

uint64_t sub_2696E80A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B508] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v10 = v4;
  v10[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9E40](a1, a2, v14, a4);
}

uint64_t sub_2696E817C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B4E8] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = a5[10];
  v16 = a5[11];
  v17 = a5[12];
  v18 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v14 = v6;
  v14[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9E18](a1, a2, a3, a4, v18, a6);
}

uint64_t sub_2696E8268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5C0B0] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = a5[10];
  v16 = a5[11];
  v17 = a5[12];
  v18 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v14 = v6;
  v14[1] = sub_2696BBFF8;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v18, a6);
}

uint64_t sub_2696E8354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D5C0B8] + 4);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  v17 = a6[10];
  v18 = a6[11];
  v19 = a6[12];
  v20 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v16 = v7;
  v16[1] = sub_2696BBFF8;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v20, a7);
}

uint64_t sub_2696E846C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803238E0, qword_26985B848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2696E84DC(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_18_7()
{

  JUMPOUT(0x26D647170);
}

BOOL OUTLINED_FUNCTION_19_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_20_6(uint64_t a1)
{

  return sub_26969B0C0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_23_5()
{
  v2 = *(*(v1 - 192) + 8);
  result = v0;
  v4 = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_1(uint64_t a1)
{

  return sub_26969B0C0(a1, v1, v2);
}

void sub_2696E864C()
{
  sub_2696F27F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_2696E8710@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v369 = a1;
  v370 = a2;
  v382[1] = *MEMORY[0x277D85DE8];
  v359 = *v2;
  v3 = sub_2698523C4();
  v4 = OUTLINED_FUNCTION_3_18(v3, &v366);
  v337 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_13();
  v334 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_1(&v326 - v14);
  v15 = sub_269851EF4();
  v16 = OUTLINED_FUNCTION_3_18(v15, &v371);
  v341 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v20);
  v21 = sub_269852474();
  v22 = OUTLINED_FUNCTION_3_18(v21, &v376);
  v345 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_15_1(v28);
  v29 = sub_269853874();
  v30 = OUTLINED_FUNCTION_3_18(v29, &v377);
  v348 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_15_7();
  v349 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E8, &qword_26985BAE8);
  OUTLINED_FUNCTION_8_9(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_15_1(&v326 - v39);
  v360 = type metadata accessor for MediaNLIntent();
  v40 = OUTLINED_FUNCTION_4_3(v360);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_15_1(v45);
  v46 = sub_269853F44();
  v47 = OUTLINED_FUNCTION_3_18(v46, &v384);
  v363 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v51);
  v326 = type metadata accessor for SignalRecordingContext();
  v52 = OUTLINED_FUNCTION_4_3(v326);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v55);
  v56 = sub_2698538A4();
  v57 = OUTLINED_FUNCTION_3_18(v56, v382);
  v350 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_15_1(v62);
  v63 = sub_2698538B4();
  v64 = OUTLINED_FUNCTION_8(v63);
  v372 = v65;
  v373 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  v69 = MEMORY[0x28223BE20](v68);
  v71 = &v326 - v70;
  v72 = MEMORY[0x28223BE20](v69);
  v74 = &v326 - v73;
  v75 = MEMORY[0x28223BE20](v72);
  v77 = &v326 - v76;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_7_13();
  v374 = v79;
  v80 = sub_2698548D4();
  v81 = OUTLINED_FUNCTION_8(v80);
  v83 = v82;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  v96 = MEMORY[0x28223BE20](v95);
  v98 = &v326 - v97;
  MEMORY[0x28223BE20](v96);
  v100 = &v326 - v99;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  __swift_project_value_buffer(v80, qword_28033D910);
  OUTLINED_FUNCTION_25_1();
  v366 = v101;
  v367 = v103;
  v368 = v102;
  (v103)(v100);
  v104 = sub_2698548B4();
  v105 = sub_269854F14();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = OUTLINED_FUNCTION_16_2();
    *v106 = 0;
    _os_log_impl(&dword_269684000, v104, v105, "DisambiguateContentStrategy.actionForInput() called", v106, 2u);
    OUTLINED_FUNCTION_10();
  }

  v107 = *(v83 + 8);
  v371 = v80;
  v365 = v83 + 8;
  v107(v100, v80);
  v108 = v374;
  v109 = v369;
  sub_269853844();
  v110 = v372;
  v111 = v373;
  v112 = *(v372 + 88);
  v113 = OUTLINED_FUNCTION_105();
  v115 = v114(v113);
  if (v115 != *MEMORY[0x277D5C128])
  {
    if (v115 == *MEMORY[0x277D5C150])
    {
      v110 = v372;
      OUTLINED_FUNCTION_25_1();
      v150 = v357;
      v151(v357, v374, v111);
      OUTLINED_FUNCTION_4_13();
      v152(v150, v111);
      v153 = v350;
      v154 = *(v350 + 16);
      v155 = OUTLINED_FUNCTION_7_16();
      v156 = v354;
      v157(v155);
      sub_269853884();
      OUTLINED_FUNCTION_1_5();
      if (v160 == 0xD00000000000002CLL && v159 == v158)
      {
      }

      else
      {
        v162 = sub_269855584();

        if ((v162 & 1) == 0)
        {
          v163 = *(v153 + 8);
          v163(v358, v156);
          (*(v153 + 32))(v344, v357, v156);
          sub_269853884();
          OUTLINED_FUNCTION_1_5();
          if (v166 == 0xD00000000000002DLL && v165 == v164)
          {

            OUTLINED_FUNCTION_99();
          }

          else
          {
            v168 = sub_269855584();

            OUTLINED_FUNCTION_99();
            if ((v168 & 1) == 0)
            {
              v169 = OUTLINED_FUNCTION_0_17();
              (v163)(v169);
LABEL_58:
              sub_269853014();
LABEL_89:
              v110 = v372;
              goto LABEL_90;
            }
          }

          OUTLINED_FUNCTION_6_14();
          v255();
          v256 = sub_2698548B4();
          v257 = sub_269854F14();
          if (OUTLINED_FUNCTION_17_2(v257))
          {
            v258 = OUTLINED_FUNCTION_16_2();
            OUTLINED_FUNCTION_30_2(v258);
            OUTLINED_FUNCTION_20_7(&dword_269684000, v259, v260, "DisambiguateContentStrategy.actionForInput() handling direct invocation from com.apple.siri.video.ReformToThirdParty");
            OUTLINED_FUNCTION_18_7();
          }

          v107(v98, v371);
          if (sub_269853894())
          {
            v261 = objc_opt_self();
            v262 = sub_2698549D4();

            v379 = 0;
            v263 = [v261 dataWithJSONObject:v262 options:0 error:&v379];

            v264 = v379;
            if (v263)
            {
              v265 = v107;
              v266 = sub_269851C94();
              v268 = v267;

              if (qword_280322440 != -1)
              {
                OUTLINED_FUNCTION_58();
              }

              sub_2696CC3A4();
              sub_269851A84();
              sub_2696C1F3C(v266, v268);
              v107 = v265;
              if (v380[0])
              {
                v314 = v380[3];
                if (v380[2])
                {
                  sub_26969329C(0, &qword_280322DB8, 0x277CD3DC8);

                  v369 = sub_269854ED4();
                  OUTLINED_FUNCTION_6_14();
                  v315();
                  v316 = sub_2698548B4();
                  v317 = sub_269854F14();
                  if (OUTLINED_FUNCTION_19_4(v317))
                  {
                    *OUTLINED_FUNCTION_16_2() = 0;
                    OUTLINED_FUNCTION_60();
                    _os_log_impl(v318, v319, v320, v321, v322, 2u);
                    OUTLINED_FUNCTION_10();
                  }

                  v265(v328, v371);
                  v323 = __swift_project_boxed_opaque_existential_1((v355 + 136), *(v355 + 160));
                  v324 = v327;
                  *v327 = v314;
                  swift_storeEnumTagMultiPayload();
                  v325 = *v323;

                  sub_2697F9BE8();

                  v107 = v265;

                  sub_2696F4188(v324, type metadata accessor for SignalRecordingContext);
                }

                else
                {

                  v107 = v265;
                }
              }
            }

            else
            {
              v293 = v264;
              v294 = sub_269851BD4();

              swift_willThrow();
            }
          }

          v295 = v336;
          OUTLINED_FUNCTION_6_14();
          v296();
          v297 = sub_2698548B4();
          v298 = sub_269854F14();
          if (OUTLINED_FUNCTION_17_2(v298))
          {
            v299 = OUTLINED_FUNCTION_16_2();
            OUTLINED_FUNCTION_30_2(v299);
            OUTLINED_FUNCTION_20_7(&dword_269684000, v300, v301, "DisambiguateContentStrategy.actionForInput() ignoring SelectedPlayMediaApp");
            OUTLINED_FUNCTION_18_7();
          }

          v107(v295, v371);
          sub_269853014();
          v302 = OUTLINED_FUNCTION_0_17();
          (v163)(v302);
          goto LABEL_89;
        }
      }

      OUTLINED_FUNCTION_6_14();
      v208();
      v209 = sub_2698548B4();
      v210 = sub_269854F14();
      if (OUTLINED_FUNCTION_17_2(v210))
      {
        v211 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v211);
        OUTLINED_FUNCTION_20_7(&dword_269684000, v212, v213, "DisambiguateContentStrategy.actionForInput() handling direct invocation from com.apple.siri.video.DisambiguationSelection");
        OUTLINED_FUNCTION_18_7();
      }

      OUTLINED_FUNCTION_41_0();
      (v107)();
      sub_269853004();
      v214 = *(v153 + 8);
      v214(v358, v156);
      v214(v357, v156);
      goto LABEL_90;
    }

    if (v115 == *MEMORY[0x277D5C140])
    {
      v358 = v107;
      v110 = v372;
      OUTLINED_FUNCTION_25_1();
      v173(v71, v374, v111);
      OUTLINED_FUNCTION_4_13();
      v174(v71, v111);
      v175 = v348;
      v176 = *(v348 + 32);
      v177 = v349;
      v178 = OUTLINED_FUNCTION_0_17();
      v179 = v347;
      v180(v178);
      OUTLINED_FUNCTION_118();
      v181 = OUTLINED_FUNCTION_76();
      v182(v181);
      v183 = OUTLINED_FUNCTION_38_0();
      v184(v183);
      v185 = v371;
      if ((v109 & 1) == 0)
      {
LABEL_26:
        sub_269853014();
        (*(v175 + 8))(v177, v179);
        goto LABEL_90;
      }

      v186 = v340;
      sub_269853864();
      v187 = v343;
      sub_2696D3C74();
      OUTLINED_FUNCTION_3_15(&v370);
      v188(v186, v342);
      v189 = OUTLINED_FUNCTION_94();
      v190 = v346;
      if (__swift_getEnumTagSinglePayload(v189, v191, v346) == 1)
      {
        sub_26969B0C0(v187, &qword_280323360, &unk_26985AB80);
        goto LABEL_26;
      }

      v269 = v345;
      v270 = v335;
      (*(v345 + 32))(v335, v187, v190);
      v271 = v334;
      sub_269852424();
      sub_2698520D4();
      OUTLINED_FUNCTION_3_15(&v365);
      v272(v271, v338);

      OUTLINED_FUNCTION_101();
      if (v273)
      {
        sub_269853004();
        (*(v269 + 8))(v270, v346);
        (*(v175 + 8))(v349, v179);
        goto LABEL_90;
      }

      v367(v330, v366, v185);
      v282 = sub_2698548B4();
      v283 = sub_269854F14();
      if (OUTLINED_FUNCTION_17_2(v283))
      {
        v284 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v284);
        OUTLINED_FUNCTION_20_7(&dword_269684000, v285, v286, "Empty selectedItemIdentifier in client component");
        OUTLINED_FUNCTION_18_7();
      }

      OUTLINED_FUNCTION_26_2();
      v287();
      sub_269853014();
      OUTLINED_FUNCTION_3_15(&v374);
      v288 = OUTLINED_FUNCTION_98();
      v289(v288);
      OUTLINED_FUNCTION_3_15(&v378);
      v291 = v349;
      v292 = v179;
    }

    else
    {
      if (v115 != *MEMORY[0x277D5C148])
      {
        goto LABEL_58;
      }

      v358 = v107;
      v110 = v372;
      OUTLINED_FUNCTION_25_1();
      v215 = v339;
      v216(v339, v374, v111);
      OUTLINED_FUNCTION_4_13();
      v217(v215, v111);
      v218 = *v215;
      v219 = v359;
      v220 = *(v359 + 96);
      sub_269853844();
      (*(*(v219 + 112) + 8))(v74, v220);
      v221 = OUTLINED_FUNCTION_38_0();
      v222(v221);
      if ((v220 & 1) == 0 || (sub_2696D6C54(), !v223))
      {
        sub_269853014();

        goto LABEL_90;
      }

      v224 = v223;
      v225 = v331;
      sub_269854544();

      v226 = v345;
      (*(v345 + 32))(v333, v225, v346);
      v227 = v332;
      sub_269852424();
      sub_2698520D4();
      OUTLINED_FUNCTION_3_15(&v365);
      v228(v227, v338);

      OUTLINED_FUNCTION_101();
      if (v229)
      {
        sub_269853004();

        v230 = *(v226 + 8);
        v231 = OUTLINED_FUNCTION_8_3();
        v232(v231);
        goto LABEL_90;
      }

      v308 = v329;
      OUTLINED_FUNCTION_6_14();
      v309();
      v310 = sub_2698548B4();
      v311 = sub_269854F14();
      if (OUTLINED_FUNCTION_17_2(v311))
      {
        v312 = OUTLINED_FUNCTION_16_2();
        *v312 = 0;
        _os_log_impl(&dword_269684000, v310, v308, "Empty selectedItemIdentifier in client component", v312, 2u);
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_26_2();
      v313();
      sub_269853014();

      OUTLINED_FUNCTION_3_15(&v374);
      v291 = OUTLINED_FUNCTION_8_3();
    }

    v290(v291, v292);
    goto LABEL_90;
  }

  v358 = v107;
  OUTLINED_FUNCTION_25_1();
  v116(v77, v108, v111);
  OUTLINED_FUNCTION_4_13();
  v117(v77, v111);
  v118 = v363;
  v119 = *(v363 + 32);
  v120 = OUTLINED_FUNCTION_44_0();
  v121(v120);
  OUTLINED_FUNCTION_118();
  v122 = OUTLINED_FUNCTION_76();
  v123(v122);
  v124 = OUTLINED_FUNCTION_38_0();
  v125(v124);
  if (v109)
  {
    v126 = *(v118 + 16);
    v127 = v361;
    v128 = OUTLINED_FUNCTION_34_0();
    v129(v128);
    v130 = v351;
    sub_2696F3FC8(v127, v351, type metadata accessor for MediaNLIntent);
    OUTLINED_FUNCTION_24_4();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v360);
    v134 = qword_2803238F0;
    v135 = v355;
    swift_beginAccess();
    sub_2696F40D0(v130, v135 + v134);
    swift_endAccess();
    v136 = OUTLINED_FUNCTION_12_13(v380);
    v137 = v371;
    (v367)(v136);
    v138 = v352;
    sub_2696F3FC8(v127, v352, type metadata accessor for MediaNLIntent);
    v139 = sub_2698548B4();
    v140 = sub_269854F14();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = OUTLINED_FUNCTION_27_2();
      v142 = OUTLINED_FUNCTION_9_3();
      v379 = v142;
      *v141 = 136315138;
      OUTLINED_FUNCTION_1_13();
      sub_2696F4140(v143, v144);
      v145 = sub_269855544();
      v147 = v146;
      OUTLINED_FUNCTION_0_21();
      sub_2696F4188(v138, v148);
      v134 = sub_26974F520(v145, v147, &v379);

      *(v141 + 4) = v134;
      _os_log_impl(&dword_269684000, v139, v140, "mediaIntent: %s", v141, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v142);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    else
    {

      OUTLINED_FUNCTION_0_21();
      sub_2696F4188(v138, v192);
    }

    OUTLINED_FUNCTION_26_2();
    v149();
    v193 = OUTLINED_FUNCTION_12_13(v383);
    (v367)(v193);
    OUTLINED_FUNCTION_11_10();
    v194 = v353;
    sub_2696F3FC8(v361, v353, v195);
    v196 = sub_2698548B4();
    v197 = sub_269854F14();
    if (os_log_type_enabled(v196, v197))
    {
      v198 = OUTLINED_FUNCTION_27_2();
      v199 = OUTLINED_FUNCTION_9_3();
      v381 = v199;
      *v198 = 136315138;
      if (qword_2803225F0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_1_13();
      sub_2696F4140(v200, v201);
      sub_269853D54();
      if (v380[0])
      {
        v202 = v379;
      }

      else
      {
        v202 = 7104878;
      }

      v203 = v194;
      if (v380[0])
      {
        v204 = v380[0];
      }

      else
      {
        v204 = 0xE300000000000000;
      }

      sub_2696F4188(v203, type metadata accessor for MediaNLIntent);
      v205 = sub_26974F520(v202, v204, &v381);

      *(v198 + 4) = v205;
      _os_log_impl(&dword_269684000, v196, v197, "mediaReference: %s", v198, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v199);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_18_7();

      v206 = v356;
      v207 = v371;
    }

    else
    {

      OUTLINED_FUNCTION_0_21();
      sub_2696F4188(v194, v233);
      v206 = v134;
      v207 = v137;
    }

    v234 = v358;
    (v358)(v206, v207);
    v235 = v363;
    v236 = v361;
    if (qword_280322628 != -1)
    {
      OUTLINED_FUNCTION_12_10();
    }

    OUTLINED_FUNCTION_1_13();
    sub_2696F4140(v237, v238);
    sub_269853D54();
    if (v379 == 7)
    {
      v239 = v364;
      if (qword_280322580 != -1)
      {
        OUTLINED_FUNCTION_7_17();
      }

      sub_269853D54();
      if (v380[0])
      {
        v381 = v379;
        v382[0] = v380[0];
        OUTLINED_FUNCTION_20_5();
        v377 = v240;
        v378 = v241;
        v375 = 0;
        v376 = 0xE000000000000000;
        sub_269693054();
        OUTLINED_FUNCTION_23_4();

LABEL_57:
        sub_269853004();
LABEL_81:
        OUTLINED_FUNCTION_0_21();
        sub_2696F4188(v236, v281);
        (*(v235 + 8))(v362, v239);
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_6_14();
      v248();
      v249 = sub_2698548B4();
      v250 = sub_269854F14();
      if (OUTLINED_FUNCTION_17_2(v250))
      {
        v251 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v251);
        OUTLINED_FUNCTION_20_7(&dword_269684000, v252, v253, "Ignoring action due to missing canonicalId in NL intent");
        OUTLINED_FUNCTION_18_7();
      }

      v254 = &v375;
    }

    else
    {
      OUTLINED_FUNCTION_102();
      sub_269853D54();
      v239 = v364;
      if (v379 <= 6u)
      {
        if (((1 << v379) & 0x61) != 0)
        {
          goto LABEL_57;
        }

        if (((1 << v379) & 6) != 0)
        {
          OUTLINED_FUNCTION_6_14();
          v242();
          v243 = sub_2698548B4();
          v244 = sub_269854F14();
          if (OUTLINED_FUNCTION_17_2(v244))
          {
            v245 = OUTLINED_FUNCTION_16_2();
            OUTLINED_FUNCTION_30_2(v245);
            OUTLINED_FUNCTION_20_7(&dword_269684000, v246, v247, "Content disambiguation cancelled.");
            OUTLINED_FUNCTION_18_7();
          }

          OUTLINED_FUNCTION_41_0();
          v234();
          sub_269852FF4();
          goto LABEL_81;
        }
      }

      OUTLINED_FUNCTION_6_14();
      v274();
      v275 = sub_2698548B4();
      v276 = sub_269854F14();
      if (OUTLINED_FUNCTION_17_2(v276))
      {
        v277 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v277);
        OUTLINED_FUNCTION_20_7(&dword_269684000, v278, v279, "actionForInput handle");
        OUTLINED_FUNCTION_18_7();
      }

      v254 = &v363;
    }

    v280 = *(v254 - 32);
    OUTLINED_FUNCTION_41_0();
    v234();
    sub_269853014();
    goto LABEL_81;
  }

  sub_269853014();
  v170 = *(v118 + 8);
  v171 = OUTLINED_FUNCTION_44_0();
  v172(v171);
LABEL_90:
  v303 = *(v110 + 8);
  v304 = OUTLINED_FUNCTION_105();
  result = v305(v304);
  v307 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2696EA260()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = *v0;
  v3 = sub_2698548D4();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2696EA32C()
{
  OUTLINED_FUNCTION_34();
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = __swift_project_value_buffer(v3, qword_28033D910);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_45_0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v7);
    OUTLINED_FUNCTION_68(&dword_269684000, v5, v3, "DisambiguateContentStrategy.makeDisambiguationItemContainer() called");
    OUTLINED_FUNCTION_18_7();
  }

  v9 = v0[5];
  v8 = v0[6];
  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];

  v13 = *(v9 + 8);
  v14 = OUTLINED_FUNCTION_22_3();
  v15(v14);
  v16 = *(v11 + 80);
  sub_2698536E4();
  v17 = sub_2698536C4();
  sub_269750C2C();

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323988, qword_26985B9B8);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_89();
  v21 = sub_2698537E4();

  v22 = v0[1];

  return v22(v21);
}

uint64_t sub_2696EA4AC()
{
  OUTLINED_FUNCTION_2_7();
  v64 = *MEMORY[0x277D85DE8];
  v1[31] = v2;
  v1[32] = v0;
  v1[29] = v3;
  v1[30] = v4;
  v1[28] = v5;
  v6 = *v0;
  v1[33] = *v0;
  v1[34] = *(v6 + 80);
  v7 = sub_269853344();
  v1[35] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[36] = v8;
  v10 = *(v9 + 64);
  v1[37] = OUTLINED_FUNCTION_4_7();
  v11 = sub_2698538A4();
  v1[38] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[39] = v12;
  v14 = *(v13 + 64);
  v1[40] = OUTLINED_FUNCTION_37_0();
  v1[41] = swift_task_alloc();
  v15 = sub_269852474();
  v1[42] = v15;
  OUTLINED_FUNCTION_5_12(v15);
  v1[43] = v16;
  v18 = *(v17 + 64);
  v1[44] = OUTLINED_FUNCTION_4_7();
  v19 = sub_2698523C4();
  v1[45] = v19;
  OUTLINED_FUNCTION_5_12(v19);
  v1[46] = v20;
  v22 = *(v21 + 64);
  v1[47] = OUTLINED_FUNCTION_4_7();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A30, &unk_26985BB30);
  OUTLINED_FUNCTION_8_9(v23);
  v25 = *(v24 + 64);
  v1[48] = OUTLINED_FUNCTION_37_0();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v26 = sub_269851EF4();
  v1[52] = v26;
  OUTLINED_FUNCTION_5_12(v26);
  v1[53] = v27;
  v29 = *(v28 + 64);
  v1[54] = OUTLINED_FUNCTION_37_0();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v30);
  v32 = *(v31 + 64);
  v1[57] = OUTLINED_FUNCTION_37_0();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A38, qword_26985BB40);
  v1[60] = v33;
  OUTLINED_FUNCTION_8_9(v33);
  v35 = *(v34 + 64);
  v1[61] = OUTLINED_FUNCTION_37_0();
  v1[62] = swift_task_alloc();
  v36 = sub_269853874();
  v1[63] = v36;
  OUTLINED_FUNCTION_5_12(v36);
  v1[64] = v37;
  v39 = *(v38 + 64);
  v1[65] = OUTLINED_FUNCTION_37_0();
  v1[66] = swift_task_alloc();
  v40 = sub_2698532D4();
  v1[67] = v40;
  OUTLINED_FUNCTION_5_12(v40);
  v1[68] = v41;
  v43 = *(v42 + 64);
  v1[69] = OUTLINED_FUNCTION_4_7();
  v44 = type metadata accessor for MediaNLIntent();
  v1[70] = v44;
  OUTLINED_FUNCTION_8_9(v44);
  v46 = *(v45 + 64);
  v1[71] = OUTLINED_FUNCTION_37_0();
  v1[72] = swift_task_alloc();
  v47 = sub_269853F44();
  v1[73] = v47;
  OUTLINED_FUNCTION_5_12(v47);
  v1[74] = v48;
  v50 = *(v49 + 64);
  v1[75] = OUTLINED_FUNCTION_37_0();
  v1[76] = swift_task_alloc();
  v51 = sub_2698538B4();
  v1[77] = v51;
  OUTLINED_FUNCTION_5_12(v51);
  v1[78] = v52;
  v54 = *(v53 + 64);
  v1[79] = OUTLINED_FUNCTION_37_0();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v55 = sub_2698548D4();
  v1[84] = v55;
  OUTLINED_FUNCTION_5_12(v55);
  v1[85] = v56;
  v58 = *(v57 + 64);
  v1[86] = OUTLINED_FUNCTION_37_0();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v59 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v60, v61, v62);
}

uint64_t sub_2696EAA5C()
{
  v583 = v0;
  v582[4] = *MEMORY[0x277D85DE8];
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = *(v0 + 768);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v575 = __swift_project_value_buffer(v3, qword_28033D910);
  v578 = *(v2 + 16);
  v580 = v2 + 16;
  v578(v1);
  v4 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_45_0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v6);
    OUTLINED_FUNCTION_68(&dword_269684000, v4, v3, "DisambiguateContentStrategy.parseDisambiguationResult() called");
    OUTLINED_FUNCTION_18_7();
  }

  v7 = *(v0 + 768);
  v8 = *(v0 + 680);
  v9 = *(v0 + 672);
  v10 = *(v0 + 664);
  v11 = *(v0 + 624);
  v12 = *(v0 + 616);
  v13 = *(v0 + 232);

  v14 = *(v8 + 8);
  v15 = OUTLINED_FUNCTION_22_3();
  v573 = v16;
  v16(v15);
  sub_269853844();
  v17 = *(v11 + 88);
  v18 = OUTLINED_FUNCTION_44_0();
  v20 = v19(v18);
  if (v20 != *MEMORY[0x277D5C128])
  {
    if (v20 == *MEMORY[0x277D5C150])
    {
      v56 = *(v0 + 624);
      v57 = *(v0 + 616);
      v58 = *(v0 + 328);
      v59 = *(v0 + 304);
      v60 = *(v0 + 312);
      (*(v56 + 16))(*(v0 + 632), *(v0 + 664), v57);
      v61 = *(v56 + 96);
      v62 = OUTLINED_FUNCTION_7_16();
      v63(v62);
      v64 = *(v60 + 16);
      v65 = OUTLINED_FUNCTION_15_6();
      v66(v65);
      sub_269853884();
      OUTLINED_FUNCTION_1_5();
      if (v69 == 0xD00000000000002CLL && v68 == v67)
      {
      }

      else
      {
        LOBYTE(v57) = sub_269855584();

        if ((v57 & 1) == 0)
        {
          v71 = *(v0 + 632);
          v72 = *(v0 + 320);
          v73 = *(v0 + 312);
          v74 = *(v73 + 8);
          (v74)(*(v0 + 328), *(v0 + 304));
          v75 = *(v73 + 32);
          v76 = OUTLINED_FUNCTION_50_0();
          v77(v76);
          sub_269853884();
          OUTLINED_FUNCTION_1_5();
          if (v80 == 0xD00000000000002DLL && v79 == v78)
          {
          }

          else
          {
            LOBYTE(v72) = sub_269855584();

            if ((v72 & 1) == 0)
            {
              (v74)(*(v0 + 320), *(v0 + 304));
LABEL_56:
              v252 = *(v0 + 712);
              v253 = OUTLINED_FUNCTION_17_7();
              v254(v253);
              v255 = sub_2698548B4();
              sub_269854F24();
              OUTLINED_FUNCTION_45_0();
              if (os_log_type_enabled(v255, v256))
              {
                v257 = OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_30_2(v257);
                OUTLINED_FUNCTION_18_8();
                _os_log_impl(v258, v259, v260, v261, v262, 2u);
                OUTLINED_FUNCTION_18_7();
              }

              v263 = *(v0 + 712);
              v264 = *(v0 + 680);
              v265 = *(v0 + 672);
              v266 = *(v0 + 664);
              v267 = *(v0 + 624);
              v268 = *(v0 + 616);

              v269 = OUTLINED_FUNCTION_22_3();
              v573(v269);
              sub_2696BAE9C();
              OUTLINED_FUNCTION_30_1();
              OUTLINED_FUNCTION_5_14(v270, 13);
              OUTLINED_FUNCTION_91();
              v271 = *(v267 + 8);
              v272 = OUTLINED_FUNCTION_44_0();
              v273(v272);
              goto LABEL_70;
            }
          }

          v324 = *(v0 + 720);
          v325 = OUTLINED_FUNCTION_17_7();
          v326(v325);
          v327 = sub_2698548B4();
          sub_269854F14();
          OUTLINED_FUNCTION_45_0();
          if (os_log_type_enabled(v327, v328))
          {
            v329 = OUTLINED_FUNCTION_16_2();
            OUTLINED_FUNCTION_30_2(v329);
            OUTLINED_FUNCTION_68(&dword_269684000, v327, v72, "DisambiguateContentStrategy.parseDisambiguationResult() taking appId from com.apple.siri.video.ReformSearchToThirdParty");
            OUTLINED_FUNCTION_18_7();
          }

          v330 = *(v0 + 720);
          v331 = *(v0 + 680);
          v332 = *(v0 + 672);
          v333 = *(v0 + 320);

          v334 = OUTLINED_FUNCTION_22_3();
          v573(v334);
          if (sub_269853894())
          {
            v335 = objc_opt_self();
            v336 = sub_2698549D4();

            *(v0 + 184) = 0;
            v337 = [v335 dataWithJSONObject:v336 options:0 error:v0 + 184];

            v338 = *(v0 + 184);
            if (v337)
            {
              sub_269851C94();

              if (qword_280322440 != -1)
              {
                OUTLINED_FUNCTION_58();
              }

              sub_2696CC3A4();
              sub_269851A84();
              v552 = OUTLINED_FUNCTION_4_15();
              sub_2696C1F3C(v552, v553);
              if (*(v0 + 24))
              {
                v104 = *(v0 + 40);
                v572 = *(v0 + 32);
                v554 = *(v0 + 48);
                v555 = *(v0 + 664);
                v556 = *(v0 + 624);
                v557 = *(v0 + 616);
                (v74)(*(v0 + 320), *(v0 + 304));

                KeyPath = swift_getKeyPath();
                (*(v556 + 8))(v555, v557);
                if (!v104)
                {
                  goto LABEL_66;
                }

                v98 = v572;
                goto LABEL_25;
              }
            }

            else
            {
              v516 = v338;
              v517 = sub_269851BD4();

              swift_willThrow();
            }
          }

          v518 = *(v0 + 664);
          v455 = *(v0 + 624);
          v519 = *(v0 + 616);
          v520 = *(v0 + 320);
          v521 = *(v0 + 304);
          sub_2696BAE9C();
          OUTLINED_FUNCTION_30_1();
          OUTLINED_FUNCTION_5_14(v522, 4);
          OUTLINED_FUNCTION_91();
          v523 = OUTLINED_FUNCTION_44_0();
          v74(v523);
LABEL_117:
          v524 = *(v455 + 8);
          v525 = OUTLINED_FUNCTION_7_16();
          v526(v525);
          goto LABEL_70;
        }
      }

      v191 = *(v0 + 728);
      v192 = OUTLINED_FUNCTION_17_7();
      v193(v192);
      v194 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_45_0();
      if (os_log_type_enabled(v194, v195))
      {
        v196 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v196);
        OUTLINED_FUNCTION_68(&dword_269684000, v194, v57, "DisambiguateContentStrategy.parseDisambiguationResult() taking umcId from com.apple.siri.video.DisambiguationSelection");
        OUTLINED_FUNCTION_18_7();
      }

      v197 = *(v0 + 728);
      v198 = *(v0 + 680);
      v199 = *(v0 + 672);
      v200 = *(v0 + 328);

      v201 = OUTLINED_FUNCTION_22_3();
      v573(v201);
      v202 = sub_269853894();
      v203 = *(v0 + 328);
      v204 = *(v0 + 304);
      v205 = *(v0 + 312);
      if (v202)
      {
        sub_26981CFD4(0x696669746E656469, 0xEA00000000007265, v202);

        v206 = *(v205 + 8);
        v207 = OUTLINED_FUNCTION_7_16();
        v206(v207);
        if (*(v0 + 80))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            v290 = *(v0 + 632);
            v291 = *(v0 + 304);
            swift_getKeyPath();
            v292 = OUTLINED_FUNCTION_7_16();
            v206(v292);
            goto LABEL_65;
          }

          v569 = *(v0 + 664);
          v208 = *(v0 + 632);
          v209 = *(v0 + 624);
          v210 = *(v0 + 616);
          v211 = *(v0 + 304);
          v212 = *(v0 + 104);
          v104 = *(v0 + 112);
          KeyPath = swift_getKeyPath();
          (v206)(v208, v211);
          v98 = v212;
          (*(v209 + 8))(v569, v210);
          goto LABEL_25;
        }
      }

      else
      {
        v206 = *(v205 + 8);
        v276 = OUTLINED_FUNCTION_7_16();
        v206(v276);
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      v287 = *(v0 + 632);
      v288 = *(v0 + 304);
      sub_26969B0C0(v0 + 56, &qword_280322F88, qword_26985AB90);
      swift_getKeyPath();
      v289 = OUTLINED_FUNCTION_7_16();
      v206(v289);
      goto LABEL_65;
    }

    if (v20 == *MEMORY[0x277D5C140])
    {
      v128 = *(v0 + 744);
      v129 = *(v0 + 672);
      v130 = *(v0 + 664);
      v131 = *(v0 + 648);
      v132 = *(v0 + 624);
      v133 = *(v0 + 616);
      v134 = *(v0 + 528);
      v135 = *(v0 + 520);
      v136 = *(v0 + 504);
      v137 = *(v0 + 512);
      OUTLINED_FUNCTION_25_1();
      v138(v131);
      v139 = *(v132 + 96);
      v140 = OUTLINED_FUNCTION_34_0();
      v141(v140);
      v142 = OUTLINED_FUNCTION_96(v137);
      v143(v142);
      v144 = OUTLINED_FUNCTION_56_0();
      v145(v144);
      v146 = *(v137 + 16);
      v147 = OUTLINED_FUNCTION_8_3();
      v148(v147);
      v149 = sub_2698548B4();
      v150 = sub_269854F14();
      if (os_log_type_enabled(v149, v150))
      {
        v151 = *(v0 + 520);
        v152 = *(v0 + 472);
        v153 = *(v0 + 448);
        v155 = *(v0 + 416);
        v154 = *(v0 + 424);
        v156 = *(v0 + 336);
        v157 = OUTLINED_FUNCTION_27_2();
        v568 = OUTLINED_FUNCTION_9_3();
        v582[0] = v568;
        *v157 = 136315138;
        sub_269853864();
        sub_2696D3C74();
        v158 = *(v154 + 8);
        v159 = OUTLINED_FUNCTION_106();
        v160(v159);
        v161 = OUTLINED_FUNCTION_94();
        if (__swift_getEnumTagSinglePayload(v161, v162, v156) == 1)
        {
          sub_26969B0C0(*(v0 + 472), &qword_280323360, &unk_26985AB80);
          v163 = 1;
        }

        else
        {
          v339 = *(v0 + 496);
          v340 = *(v0 + 472);
          v341 = *(v0 + 336);
          v342 = *(v0 + 344);
          sub_269852424();
          v343 = *(v342 + 8);
          v344 = OUTLINED_FUNCTION_7_16();
          v345(v344);
          v163 = 0;
        }

        v346 = *(v0 + 680);
        v562 = *(v0 + 672);
        v565 = *(v0 + 744);
        v347 = *(v0 + 520);
        v349 = *(v0 + 504);
        v348 = *(v0 + 512);
        v350 = *(v0 + 480);
        __swift_storeEnumTagSinglePayload(*(v0 + 496), v163, 1, *(v0 + 360));
        v351 = sub_269854AE4();
        v353 = v352;
        v354 = v349;
        v283 = *(v348 + 8);
        v283(v347, v354);
        v355 = sub_26974F520(v351, v353, v582);

        *(v157 + 4) = v355;
        _os_log_impl(&dword_269684000, v149, v150, "DisambiguateContentStrategy.parseDisambiguationResult() with pegasusResults: %s", v157, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v568);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();

        v286 = v562;
        v285 = v565;
      }

      else
      {
        v277 = *(v0 + 744);
        v278 = *(v0 + 680);
        v279 = *(v0 + 672);
        v280 = *(v0 + 520);
        v281 = *(v0 + 504);
        v282 = *(v0 + 512);

        v283 = *(v282 + 8);
        v284 = OUTLINED_FUNCTION_44_0();
        (v283)(v284);
        v285 = OUTLINED_FUNCTION_7_16();
      }

      (v573)(v285, v286);
      v356 = *(v0 + 528);
      v357 = *(v0 + 464);
      v358 = *(v0 + 440);
      v359 = *(v0 + 416);
      v360 = *(v0 + 424);
      v361 = *(v0 + 336);
      sub_269853864();
      sub_2696D3C74();
      v362 = *(v360 + 8);
      v363 = OUTLINED_FUNCTION_34_0();
      v362(v363);
      v364 = OUTLINED_FUNCTION_94();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v364, v365, v361);
      v367 = *(v0 + 464);
      v368 = *(v0 + 408);
      if (EnumTagSinglePayload == 1)
      {
        sub_26969B0C0(*(v0 + 464), &qword_280323360, &unk_26985AB80);
        sub_269852544();
        OUTLINED_FUNCTION_57();
        __swift_storeEnumTagSinglePayload(v369, v370, v371, v372);
        sub_26969B0C0(v368, &qword_280323A30, &unk_26985BB30);
LABEL_85:
        v373 = *(v0 + 528);
        v374 = *(v0 + 456);
        v375 = *(v0 + 432);
        v376 = *(v0 + 416);
        v377 = *(v0 + 336);
        sub_269853864();
        sub_2696D3C74();
        v378 = OUTLINED_FUNCTION_34_0();
        v362(v378);
        v379 = OUTLINED_FUNCTION_94();
        v381 = __swift_getEnumTagSinglePayload(v379, v380, v377);
        v382 = *(v0 + 456);
        if (v381 == 1)
        {
          sub_26969B0C0(*(v0 + 456), &qword_280323360, &unk_26985AB80);
LABEL_101:
          v454 = *(v0 + 664);
          v455 = *(v0 + 624);
          v456 = *(v0 + 616);
          v457 = *(v0 + 528);
          v458 = *(v0 + 504);
          v459 = *(v0 + 512);
          sub_2696BAE9C();
          OUTLINED_FUNCTION_30_1();
          OUTLINED_FUNCTION_5_14(v460, 11);
          OUTLINED_FUNCTION_91();
          v461 = OUTLINED_FUNCTION_44_0();
          (v283)(v461);
          goto LABEL_117;
        }

        v402 = *(v0 + 368);
        v401 = *(v0 + 376);
        v403 = *(v0 + 360);
        v404 = *(v0 + 336);
        v405 = *(v0 + 344);
        sub_269852424();
        (*(v405 + 8))(v382, v404);
        v98 = sub_2698520D4();
        v104 = v406;
        v407 = *(v402 + 8);
        v408 = OUTLINED_FUNCTION_22_3();
        v409(v408);
        OUTLINED_FUNCTION_100();
        if (!v410)
        {

          goto LABEL_101;
        }

        v411 = *(v0 + 664);
        v412 = *(v0 + 624);
        v413 = *(v0 + 616);
        v414 = *(v0 + 512) + 8;
        v283(*(v0 + 528), *(v0 + 504));
LABEL_122:
        KeyPath = swift_getKeyPath();
        v545 = *(v412 + 8);
        v546 = OUTLINED_FUNCTION_7_16();
        v547(v546);
        goto LABEL_25;
      }

      v566 = v362;
      v571 = v283;
      v383 = *(v0 + 400);
      v385 = *(v0 + 368);
      v384 = *(v0 + 376);
      v386 = *(v0 + 360);
      v387 = *(v0 + 336);
      v388 = *(v0 + 344);
      sub_269852424();
      (*(v388 + 8))(v367, v387);
      sub_269852354();
      v390 = *(v385 + 8);
      v389 = v385 + 8;
      v391 = OUTLINED_FUNCTION_44_0();
      v392(v391);
      sub_269852544();
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_24_4();
      __swift_storeEnumTagSinglePayload(v393, v394, v395, v384);
      sub_2696F4060(v368, v383);
      v396 = *(v384 - 8);
      v397 = *(v396 + 88);
      v398 = OUTLINED_FUNCTION_50_0();
      v400 = v399(v398);
      if (v400 == *MEMORY[0x277D399E8])
      {
        OUTLINED_FUNCTION_47_0();
        sub_2698532C4();
      }

      else
      {
        if (v400 != *MEMORY[0x277D399E0])
        {
          (*(v396 + 8))(*(v0 + 400), v384);
          v362 = v566;
          v283 = v571;
          goto LABEL_85;
        }

        OUTLINED_FUNCTION_47_0();
        sub_2698532B4();
      }

      sub_269853434();
      v419 = *(v384 + 8);
      v420 = OUTLINED_FUNCTION_34_0();
      v421(v420);
      v422 = OUTLINED_FUNCTION_0_17();
      (v571)(v422);
      (*(v389 + 8))(v580, v578);
      goto LABEL_111;
    }

    if (v20 != *MEMORY[0x277D5C148])
    {
      goto LABEL_56;
    }

    v213 = *(v0 + 736);
    v214 = *(v0 + 672);
    v215 = *(v0 + 640);
    v216 = *(v0 + 624);
    (*(v216 + 16))(v215, *(v0 + 664), *(v0 + 616));
    v217 = *(v216 + 96);
    v218 = OUTLINED_FUNCTION_34_0();
    v219(v218);
    v220 = *v215;
    v221 = OUTLINED_FUNCTION_56_0();
    v222(v221);
    v223 = v220;
    v224 = sub_2698548B4();
    v225 = sub_269854F14();

    v570 = v223;
    if (os_log_type_enabled(v224, v225))
    {
      v226 = OUTLINED_FUNCTION_27_2();
      v227 = OUTLINED_FUNCTION_9_3();
      v582[0] = v227;
      *v226 = 136315138;
      sub_2696D6C54();
      if (v228)
      {
        v229 = v228;
        v230 = *(v0 + 488);
        v231 = *(v0 + 344);
        v232 = *(v0 + 352);
        v233 = *(v0 + 336);
        sub_269854544();

        sub_269852424();
        (*(v231 + 8))(v232, v233);
        v234 = 0;
      }

      else
      {
        v234 = 1;
      }

      v462 = *(v0 + 736);
      v416 = *(v0 + 680);
      v463 = *(v0 + 672);
      v464 = *(v0 + 480);
      __swift_storeEnumTagSinglePayload(*(v0 + 488), v234, 1, *(v0 + 360));
      v465 = sub_269854AE4();
      v467 = sub_26974F520(v465, v466, v582);

      *(v226 + 4) = v467;
      _os_log_impl(&dword_269684000, v224, v225, "DisambiguateContentStrategy.parseDisambiguationResult() with pommesResponse: %s", v226, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v227);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (v573)(v462, v463);
      v223 = v570;
    }

    else
    {
      v415 = *(v0 + 736);
      v416 = *(v0 + 680);
      v417 = *(v0 + 672);

      v418 = OUTLINED_FUNCTION_7_16();
      v573(v418);
    }

    sub_2696D6C54();
    v469 = *(v0 + 392);
    if (v468)
    {
      v470 = v468;
      v471 = *(v0 + 376);
      v472 = *(v0 + 384);
      v474 = *(v0 + 360);
      v473 = *(v0 + 368);
      v476 = *(v0 + 344);
      v475 = *(v0 + 352);
      v477 = *(v0 + 336);
      sub_269854544();

      sub_269852424();
      v478 = *(v476 + 8);
      v479 = OUTLINED_FUNCTION_106();
      v480(v479);
      v481 = v471;
      sub_269852354();
      v482 = *(v473 + 8);
      v416 = v473 + 8;
      v482(v471, v474);
      sub_269852544();
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_24_4();
      __swift_storeEnumTagSinglePayload(v483, v484, v485, v471);
      v486 = OUTLINED_FUNCTION_102();
      sub_2696F4060(v486, v487);
      v488 = *(v471 - 8);
      v489 = *(v488 + 88);
      v490 = OUTLINED_FUNCTION_9_8();
      v492 = v491(v490);
      if (v492 == *MEMORY[0x277D399E8])
      {
        OUTLINED_FUNCTION_55_0();
        OUTLINED_FUNCTION_77();
        sub_2698532C4();
LABEL_110:
        sub_269853434();

        v497 = *(v477 + 8);
        v498 = OUTLINED_FUNCTION_102();
        v499(v498);
        v500 = *(v416 + 8);
        v501 = OUTLINED_FUNCTION_7_16();
        v503(v501, v502);
        goto LABEL_111;
      }

      if (v492 == *MEMORY[0x277D399E0])
      {
        OUTLINED_FUNCTION_55_0();
        OUTLINED_FUNCTION_77();
        sub_2698532B4();
        goto LABEL_110;
      }

      (*(v488 + 8))(*(v0 + 384), v481);
      v223 = v570;
    }

    else
    {
      sub_269852544();
      OUTLINED_FUNCTION_57();
      __swift_storeEnumTagSinglePayload(v493, v494, v495, v496);
      sub_26969B0C0(v469, &qword_280323A30, &unk_26985BB30);
    }

    sub_2696D6C54();
    if (v527)
    {
      v528 = v527;
      v530 = *(v0 + 368);
      v529 = *(v0 + 376);
      v532 = *(v0 + 352);
      v531 = *(v0 + 360);
      v533 = *(v0 + 336);
      v534 = *(v0 + 344);
      sub_269854544();

      sub_269852424();
      v535 = *(v534 + 8);
      v536 = OUTLINED_FUNCTION_0_17();
      v537(v536);
      v98 = sub_2698520D4();
      v104 = v538;
      v539 = *(v530 + 8);
      v416 = v530 + 8;
      v540 = OUTLINED_FUNCTION_22_3();
      v541(v540);
      OUTLINED_FUNCTION_100();
      if (v542)
      {
        v543 = *(v0 + 664);
        v412 = *(v0 + 624);
        v544 = *(v0 + 616);

        goto LABEL_122;
      }
    }

    OUTLINED_FUNCTION_55_0();
    sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_5_14(v548, 11);
    OUTLINED_FUNCTION_91();

LABEL_125:
    v549 = *(v416 + 8);
    v550 = OUTLINED_FUNCTION_7_16();
    v551(v550);
    goto LABEL_70;
  }

  v21 = *(v0 + 760);
  v22 = *(v0 + 672);
  v23 = *(v0 + 624);
  v24 = *(v0 + 608);
  v25 = *(v0 + 600);
  v26 = *(v0 + 592);
  v27 = *(v0 + 584);
  (*(v23 + 16))(*(v0 + 656), *(v0 + 664), *(v0 + 616));
  v28 = *(v23 + 96);
  v29 = OUTLINED_FUNCTION_34_0();
  v30(v29);
  v31 = OUTLINED_FUNCTION_96(v26);
  v32(v31);
  v33 = OUTLINED_FUNCTION_56_0();
  v34(v33);
  v35 = *(v26 + 16);
  v36 = OUTLINED_FUNCTION_8_3();
  v35(v36);
  v37 = sub_2698548B4();
  v563 = sub_269854F14();
  v38 = os_log_type_enabled(v37, v563);
  v39 = *(v0 + 760);
  v40 = *(v0 + 680);
  v41 = *(v0 + 672);
  v42 = *(v0 + 600);
  v43 = *(v0 + 592);
  v44 = *(v0 + 584);
  if (v38)
  {
    v560 = *(v0 + 672);
    v45 = OUTLINED_FUNCTION_27_2();
    v559 = OUTLINED_FUNCTION_9_3();
    v582[0] = v559;
    *v45 = 136315138;
    sub_2696F4140(&qword_2803236E0, MEMORY[0x277D5F458]);
    v46 = sub_269855544();
    v558 = v39;
    v47 = v35;
    v49 = v48;
    v51 = *(v43 + 8);
    v50 = v43 + 8;
    v52 = OUTLINED_FUNCTION_7_16();
    v567 = v53;
    (v53)(v52);
    sub_26974F520(v46, v49, v582);
    OUTLINED_FUNCTION_89();
    v35 = v47;

    *(v45 + 4) = v42;
    _os_log_impl(&dword_269684000, v37, v563, "DisambiguateContentStrategy.parseDisambiguationResult() matched NLv3Intent. intent: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v559);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v54 = v558;
    v55 = v560;
  }

  else
  {

    v82 = *(v43 + 8);
    v50 = v43 + 8;
    v83 = OUTLINED_FUNCTION_7_16();
    v567 = v84;
    (v84)(v83);
    v54 = v39;
    v55 = v41;
  }

  (v573)(v54, v55);
  (v35)(*(v0 + 576), *(v0 + 608), *(v0 + 584));
  if (qword_280322580 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  v85 = *(v0 + 576);
  v86 = *(v0 + 560);
  OUTLINED_FUNCTION_1_13();
  v89 = sub_2696F4140(v87, v88);
  OUTLINED_FUNCTION_4_15();
  sub_269853D54();
  v90 = *(v0 + 128);
  if (!v90)
  {
    swift_getKeyPath();
    if (qword_280322628 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_130;
  }

  v91 = *(v0 + 624);
  v561 = *(v0 + 616);
  v564 = *(v0 + 664);
  v92 = *(v0 + 608);
  v93 = *(v0 + 592);
  v94 = *(v0 + 584);
  v95 = *(v0 + 576);
  *(v0 + 136) = *(v0 + 120);
  *(v0 + 144) = v90;
  OUTLINED_FUNCTION_20_5();
  *(v0 + 152) = v96;
  *(v0 + 160) = v97;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  sub_269693054();
  v98 = OUTLINED_FUNCTION_23_4();
  v100 = v99;

  v101 = swift_getKeyPath();
  OUTLINED_FUNCTION_0_21();
  sub_2696F4188(v95, v102);
  KeyPath = v101;
  v567(v92, v94);
  (*(v91 + 8))(v564, v561);
  v104 = v100;
LABEL_25:
  v105 = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239C8, &unk_26985BAB8);
  *(v0 + 200) = sub_269853544();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A40, &qword_26985BB90);
  v107 = sub_269693204(&qword_280323A48, &qword_280323A40, &qword_26985BB90);
  MEMORY[0x26D645B10](v106, v107);

  *(v0 + 208) = *(v0 + 192);
  v108 = swift_task_alloc();
  v108[2] = KeyPath;
  v108[3] = v98;
  v108[4] = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A50, qword_26985BB98);
  sub_269693204(&qword_280323A58, &qword_280323A50, qword_26985BB98);
  sub_269854C24();

  v109 = *(v0 + 96);
  if (!v109)
  {
    v173 = *(v0 + 696);
    v174 = OUTLINED_FUNCTION_17_7();
    v175(v174);

    v176 = sub_2698548B4();
    sub_269854F24();

    v177 = OUTLINED_FUNCTION_124();
    v178 = *(v0 + 696);
    v179 = *(v0 + 680);
    v180 = *(v0 + 672);
    if (v177)
    {
      v181 = OUTLINED_FUNCTION_27_2();
      v182 = OUTLINED_FUNCTION_9_3();
      v183 = v98;
      v184 = v182;
      v582[0] = v182;
      *v181 = 136315138;
      v185 = sub_26974F520(v183, v104, v582);

      *(v181 + 4) = v185;
      OUTLINED_FUNCTION_40();
      _os_log_impl(v186, v187, v188, v189, v190, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v184);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    else
    {
    }

    v274 = OUTLINED_FUNCTION_22_3();
    v573(v274);
    sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1();
    *(v275 + 8) = 0;
    *(v275 + 16) = 0;
    *v275 = 3;
    *(v275 + 24) = 3;
LABEL_69:
    OUTLINED_FUNCTION_91();

LABEL_70:
    v309 = *(v0 + 768);
    OUTLINED_FUNCTION_93();
    v310 = *(v0 + 744);
    v311 = *(v0 + 736);
    v312 = *(v0 + 728);
    v313 = *(v0 + 720);
    v314 = *(v0 + 712);
    v315 = *(v0 + 704);
    v316 = *(v0 + 696);
    OUTLINED_FUNCTION_23_6();

    OUTLINED_FUNCTION_7_7();
    v318 = *MEMORY[0x277D85DE8];
    goto LABEL_112;
  }

  v110 = *(v0 + 264);
  v111 = *(v0 + 272);
  v112 = *(v0 + 248);
  v90 = *(v0 + 256);
  v113 = *(v0 + 88);

  sub_2698536E4();
  v114 = sub_2698536B4();
  v50 = *(v110 + 104);
  v89 = *(v50 + 16);
  v567 = v109;
  (v89)(v109, v111, v50);

  __swift_project_boxed_opaque_existential_1((v90 + 16), *(v90 + 40));
  if (!__OFADD__(v113, 1))
  {
    v115 = *(v0 + 704);
    v116 = *(v0 + 672);
    *(v0 + 216) = *(v0 + 272);
    swift_getMetatypeMetadata();
    sub_269854AE4();
    sub_2697B22A4();

    (v578)(v115, v575, v116);
    v117 = sub_2698548B4();
    sub_269854F44();
    OUTLINED_FUNCTION_45_0();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = OUTLINED_FUNCTION_16_2();
      *v119 = 0;
      _os_log_impl(&dword_269684000, v117, v115, "Found matching content item from previous request, injecting it in the intent", v119, 2u);
      OUTLINED_FUNCTION_10();
    }

    v120 = *(v0 + 704);
    v121 = *(v0 + 680);
    v122 = *(v0 + 672);
    v123 = *(v0 + 272);
    v124 = *(v0 + 248);

    (v573)(v120, v122);
    v125 = sub_2698536B4();
    v126 = (*(v50 + 8))(v123, v50);

    v127 = 0;
    if (v126)
    {
      v127 = type metadata accessor for Content();
    }

    else
    {
      v582[1] = 0;
      v582[2] = 0;
    }

    v247 = *(v0 + 288);
    v246 = *(v0 + 296);
    v249 = *(v0 + 272);
    v248 = *(v0 + 280);
    v250 = *(v0 + 248);
    v251 = *(v0 + 224);
    v582[0] = v126;
    v582[3] = v127;
    sub_2698536B4();
    sub_269853334();
    sub_269853424();

    (*(v247 + 8))(v246, v248);
    goto LABEL_111;
  }

  __break(1u);
LABEL_130:
  OUTLINED_FUNCTION_12_10();
LABEL_36:
  v164 = *(v0 + 576);
  v165 = *(v0 + 560);
  sub_269853D54();
  if (*(v0 + 776) == 7)
  {
    v166 = *(v0 + 608);
    v167 = *(v0 + 592);
    v168 = *(v0 + 584);
    v169 = *(v0 + 576);
    OUTLINED_FUNCTION_0_21();
    sub_2696F4188(v170, v171);
    v172 = OUTLINED_FUNCTION_7_16();
    (v567)(v172);
LABEL_65:
    (*(*(v0 + 624) + 8))(*(v0 + 664), *(v0 + 616));
LABEL_66:
    v293 = *(v0 + 688);
    v294 = OUTLINED_FUNCTION_17_7();
    v295(v294);
    v296 = sub_2698548B4();
    sub_269854F24();
    OUTLINED_FUNCTION_45_0();
    if (os_log_type_enabled(v296, v297))
    {
      v298 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v298);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v299, v300, v301, v302, v303, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v304 = *(v0 + 688);
    v305 = *(v0 + 680);
    v306 = *(v0 + 672);

    v307 = OUTLINED_FUNCTION_22_3();
    v573(v307);
    sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_5_14(v308, 11);
    goto LABEL_69;
  }

  v235 = *(v0 + 576);
  v236 = *(v0 + 560);
  sub_269853D54();
  v237 = *(v0 + 777);
  if (v237 == 6)
  {
    OUTLINED_FUNCTION_110();
    v319 = *(v0 + 592);
    v574 = *(v0 + 584);
    v577 = *(v0 + 608);
    OUTLINED_FUNCTION_66();
    sub_2698532B4();
    OUTLINED_FUNCTION_105();
    sub_269853434();

    v320 = *(v89 + 8);
    v321 = OUTLINED_FUNCTION_106();
    v322(v321);
    OUTLINED_FUNCTION_0_21();
    sub_2696F4188(v50, v323);
    v245 = v574;
    v244 = v577;
    goto LABEL_72;
  }

  if (v237 != 5)
  {
    v423 = *(v0 + 752);
    v424 = *(v0 + 672);
    v425 = *(v0 + 576);
    v426 = *(v0 + 568);
    v427 = OUTLINED_FUNCTION_56_0();
    v428(v427);
    OUTLINED_FUNCTION_11_10();
    sub_2696F3FC8(v425, v426, v429);
    v430 = sub_2698548B4();
    v431 = sub_269854F24();
    v432 = os_log_type_enabled(v430, v431);
    v416 = *(v0 + 752);
    v433 = *(v0 + 680);
    v434 = *(v0 + 672);
    v435 = *(v0 + 568);
    if (v432)
    {
      v581 = *(v0 + 680);
      v436 = *(v0 + 560);
      v437 = OUTLINED_FUNCTION_27_2();
      v579 = v434;
      v438 = OUTLINED_FUNCTION_9_3();
      v582[0] = v438;
      *v437 = 136315138;
      sub_269853D54();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A60, qword_26985BBD8);
      sub_269854AE4();
      OUTLINED_FUNCTION_0_21();
      sub_2696F4188(v435, v439);
      v440 = OUTLINED_FUNCTION_102();
      v443 = sub_26974F520(v440, v441, v442);

      *(v437 + 4) = v443;
      _os_log_impl(&dword_269684000, v430, v431, "Unsupported mediaIntent.confirmation received for disambiguation: %s", v437, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v438);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v444 = v579;
      v445 = v416;
    }

    else
    {

      OUTLINED_FUNCTION_0_21();
      sub_2696F4188(v435, v446);
      v445 = OUTLINED_FUNCTION_4_15();
    }

    (v573)(v445, v444);
    OUTLINED_FUNCTION_55_0();
    v447 = *(v0 + 608);
    v448 = *(v0 + 592);
    v449 = *(v0 + 584);
    v450 = *(v0 + 576);
    sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1();
    *v451 = xmmword_26985B670;
    *(v451 + 16) = 0;
    *(v451 + 24) = 1;
    OUTLINED_FUNCTION_91();

    OUTLINED_FUNCTION_0_21();
    sub_2696F4188(v450, v452);
    v453 = OUTLINED_FUNCTION_0_17();
    (v567)(v453);
    goto LABEL_125;
  }

  OUTLINED_FUNCTION_110();
  v576 = *(v0 + 608);
  v238 = *(v0 + 592);
  v239 = *(v0 + 584);
  OUTLINED_FUNCTION_66();
  sub_2698532C4();
  OUTLINED_FUNCTION_105();
  sub_269853434();

  v240 = *(v89 + 8);
  v241 = OUTLINED_FUNCTION_106();
  v242(v241);
  OUTLINED_FUNCTION_0_21();
  sub_2696F4188(v50, v243);
  v244 = v576;
  v245 = v239;
LABEL_72:
  v567(v244, v245);
  (*(v90 + 8))(v580, v578);
LABEL_111:
  v504 = *(v0 + 768);
  v505 = *(v0 + 760);
  v506 = *(v0 + 752);
  v507 = *(v0 + 744);
  v508 = *(v0 + 736);
  v509 = *(v0 + 728);
  v510 = *(v0 + 720);
  v511 = *(v0 + 712);
  v512 = *(v0 + 704);
  v513 = *(v0 + 696);
  OUTLINED_FUNCTION_23_6();

  OUTLINED_FUNCTION_7_7();
  v514 = *MEMORY[0x277D85DE8];
LABEL_112:

  return v317();
}

void sub_2696ECC04(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 appBundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_269854A94();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2696ECC6C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_269854A64();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

uint64_t sub_2696ECCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  swift_getAtKeyPath();

  if (v11)
  {
    if (v10 == a3 && v11 == a4)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_269855584();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2696ECD90()
{
  OUTLINED_FUNCTION_2_7();
  v1[69] = v0;
  v1[68] = v2;
  v1[67] = v3;
  v1[66] = v4;
  v1[70] = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239D8, &unk_26985BAD0);
  v1[71] = v5;
  OUTLINED_FUNCTION_8_9(v5);
  v7 = *(v6 + 64);
  v1[72] = OUTLINED_FUNCTION_37_0();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v8 = type metadata accessor for VideoDataModels.ResultsListModel(0);
  v1[75] = v8;
  OUTLINED_FUNCTION_8_9(v8);
  v10 = *(v9 + 64);
  v1[76] = OUTLINED_FUNCTION_4_7();
  v11 = type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(0);
  OUTLINED_FUNCTION_8_9(v11);
  v13 = *(v12 + 64);
  v1[77] = OUTLINED_FUNCTION_4_7();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v1[78] = v14;
  OUTLINED_FUNCTION_8_9(v14);
  v16 = *(v15 + 64);
  v1[79] = OUTLINED_FUNCTION_37_0();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v1[82] = v17;
  OUTLINED_FUNCTION_8_9(v17);
  v19 = *(v18 + 64);
  v1[83] = OUTLINED_FUNCTION_37_0();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v20 = type metadata accessor for VideoDataModels.VideoResult(0);
  v1[86] = v20;
  OUTLINED_FUNCTION_5_12(v20);
  v1[87] = v21;
  v23 = *(v22 + 64);
  v1[88] = OUTLINED_FUNCTION_4_7();
  v24 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v24);
  v26 = *(v25 + 64);
  v1[89] = OUTLINED_FUNCTION_4_7();
  v27 = sub_269853634();
  v1[90] = v27;
  OUTLINED_FUNCTION_5_12(v27);
  v1[91] = v28;
  v30 = *(v29 + 64);
  v1[92] = OUTLINED_FUNCTION_4_7();
  v31 = type metadata accessor for MediaNLIntent();
  v1[93] = v31;
  OUTLINED_FUNCTION_8_9(v31);
  v33 = *(v32 + 64);
  v1[94] = OUTLINED_FUNCTION_4_7();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E8, &qword_26985BAE8);
  OUTLINED_FUNCTION_8_9(v34);
  v36 = *(v35 + 64);
  v1[95] = OUTLINED_FUNCTION_4_7();
  v37 = sub_2698548D4();
  v1[96] = v37;
  OUTLINED_FUNCTION_5_12(v37);
  v1[97] = v38;
  v40 = *(v39 + 64);
  v1[98] = OUTLINED_FUNCTION_37_0();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v41, v42, v43);
}

uint64_t sub_2696ED0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_114();
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v13 = *(v12 + 800);
  v14 = *(v12 + 776);
  *(v12 + 808) = __swift_project_value_buffer(*(v12 + 768), qword_28033D910);
  v15 = *(v14 + 16);
  *(v12 + 816) = v15;
  *(v12 + 824) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16 = OUTLINED_FUNCTION_7_16();
  v15(v16);
  v17 = sub_2698548B4();
  v18 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v18))
  {
    v19 = OUTLINED_FUNCTION_16_2();
    *v19 = 0;
    _os_log_impl(&dword_269684000, v17, v18, "DisambiguateContentStrategy.makePromptForDisambiguation() called", v19, 2u);
    OUTLINED_FUNCTION_10();
  }

  v20 = *(v12 + 800);
  v21 = *(v12 + 776);
  v22 = *(v12 + 768);
  v23 = *(v12 + 552);

  v24 = *(v21 + 8);
  v25 = OUTLINED_FUNCTION_34_0();
  v24(v25);
  v26 = v23[11];
  __swift_project_boxed_opaque_existential_1(v23 + 7, v23[10]);
  OUTLINED_FUNCTION_34_0();
  if (sub_269852D14())
  {
    v27 = *(v12 + 552);
    v28 = *(v27 + 384);
    *(v12 + 832) = v28;
    if (v28)
    {
      v29 = *(v12 + 760);
      v30 = *(v12 + 744);
      v31 = qword_2803238F0;
      swift_beginAccess();
      sub_2696F3F6C(v27 + v31, v29, &qword_2803239E8, &qword_26985BAE8);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v30);
      v33 = *(v12 + 760);
      if (EnumTagSinglePayload)
      {
        v34 = v28;
        sub_26969B0C0(v33, &qword_2803239E8, &qword_26985BAE8);
LABEL_15:
        v56 = *(v12 + 552);
        v57 = *(v12 + 544);
        v58 = *(*(v12 + 560) + 80);
        sub_2698536E4();
        v59 = sub_2698536C4();
        sub_269750C2C();

        v60 = OUTLINED_FUNCTION_34_0();
        sub_2696F03F8(v60, v61);

        v62 = *__swift_project_boxed_opaque_existential_1((v56 + 96), *(v56 + 120));
        OUTLINED_FUNCTION_82(&dword_26985F698);
        v100 = v63;
        v64 = swift_task_alloc();
        *(v12 + 848) = v64;
        *v64 = v12;
        v64[1] = sub_2696ED8A4;
        OUTLINED_FUNCTION_71();

        return v67(v65, v66, v67, v68, v69, v70, v71, v72, v100, a10, a11, a12);
      }

      v46 = *(v12 + 752);
      OUTLINED_FUNCTION_11_10();
      sub_2696F3FC8(v33, v47, v48);
      v49 = v28;
      sub_26969B0C0(v33, &qword_2803239E8, &qword_26985BAE8);
      if (qword_280322628 != -1)
      {
        OUTLINED_FUNCTION_12_10();
      }

      v50 = *(v12 + 752);
      v51 = *(v12 + 744);
      OUTLINED_FUNCTION_1_13();
      sub_2696F4140(v52, v53);
      OUTLINED_FUNCTION_98();
      sub_269853D54();
      OUTLINED_FUNCTION_0_21();
      sub_2696F4188(v50, v54);
      v55 = *(v12 + 1032);
      if (v55 == 7)
      {
        goto LABEL_15;
      }

      if (sub_2697A9738(*(v12 + 1032)) != 0x726F6D20776F6873 || v73 != 0xE900000000000065)
      {
        v75 = OUTLINED_FUNCTION_117();

        if (v75)
        {
LABEL_30:
          v79 = *(v12 + 792);
          v80 = *(v12 + 768);
          v81 = OUTLINED_FUNCTION_7_16();
          v15(v81);
          v82 = sub_2698548B4();
          sub_269854F14();
          OUTLINED_FUNCTION_45_0();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = OUTLINED_FUNCTION_16_2();
            OUTLINED_FUNCTION_30_2(v84);
            OUTLINED_FUNCTION_18_8();
            _os_log_impl(v85, v86, v87, v88, v89, 2u);
            OUTLINED_FUNCTION_18_7();
          }

          v90 = *(v12 + 792);
          v91 = *(v12 + 776);
          v92 = *(v12 + 768);

          v93 = OUTLINED_FUNCTION_22_3();
          v24(v93);
          if (sub_2697A9738(v55) != 0x726F6D20776F6873 || v94 != 0xE900000000000065)
          {
            OUTLINED_FUNCTION_117();
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_23_2();
          *(v12 + 840) = v96;
          *v96 = v97;
          v96[1] = sub_2696ED674;
          v98 = *(v12 + 552);
          OUTLINED_FUNCTION_71();

          return sub_2696EF6B8();
        }

        if (sub_2697A9738(v55) != 0x6B636162206F67 || v76 != 0xE700000000000000)
        {
          v78 = sub_269855584();

          if ((v78 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_30;
        }
      }

      goto LABEL_30;
    }
  }

  v35 = *(v12 + 560);
  v36 = *(v12 + 544);
  v37 = *(v35 + 80);
  sub_2698536E4();
  v38 = sub_2698536C4();
  *(v12 + 888) = sub_269750C2C();

  *(v12 + 896) = sub_2698536B4();
  v39 = *(v35 + 104);
  v40 = swift_task_alloc();
  *(v12 + 904) = v40;
  *v40 = v12;
  v40[1] = sub_2696EDE58;
  v41 = *(v12 + 552);
  OUTLINED_FUNCTION_71();

  return sub_2696F2474(v42, v43);
}

uint64_t sub_2696ED674()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 840);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2696ED758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_103();
  v21 = v20[104];
  v22 = v20[67];
  v23 = v20[66];
  v24 = sub_2698538F4();
  v25 = MEMORY[0x277D5C1D8];
  v23[3] = v24;
  v23[4] = v25;
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_2696F0240();

  v26 = v20[100];
  v27 = v20[99];
  v28 = v20[98];
  OUTLINED_FUNCTION_93();
  v29 = v20[92];
  v30 = v20[89];
  v31 = v20[88];
  v32 = v20[85];
  v33 = v20[84];
  OUTLINED_FUNCTION_5_18();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_84();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2696ED8A4(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v8 = *(v7 + 848);
  v9 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;
  *(v5 + 856) = v1;

  if (!v1)
  {
    *(v5 + 864) = a1;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2696ED9B4()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[108];
  v2 = v0[92];
  v3 = v0[89];
  v4 = v0[69];
  v5 = v0[67];
  sub_269852E84();
  *(swift_task_alloc() + 16) = v5;
  sub_2698535C4();

  v6 = v4[36];
  v7 = v4[37];
  OUTLINED_FUNCTION_36_0(v4 + 33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v8 = OUTLINED_FUNCTION_35_0();
  v0[109] = v8;
  *(v8 + 16) = xmmword_2698590C0;
  *(v8 + 32) = v1;
  v9 = *(MEMORY[0x277D5BE58] + 4);
  v10 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[110] = v11;
  *v11 = v12;
  v11[1] = sub_2696EDB00;
  v13 = v0[92];
  v14 = v0[66];

  return MEMORY[0x2821BB488](v14, v8, v13, v6, v7);
}

uint64_t sub_2696EDB00()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 880);
  v3 = *(v1 + 872);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2696EDC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_103();
  v21 = *(v20 + 832);
  v22 = *(v20 + 736);
  v23 = *(v20 + 728);
  v24 = *(v20 + 720);

  v25 = *(v23 + 8);
  v26 = OUTLINED_FUNCTION_7_16();
  v27(v26);
  v28 = *(v20 + 800);
  v29 = *(v20 + 792);
  v30 = *(v20 + 784);
  OUTLINED_FUNCTION_93();
  v31 = *(v20 + 736);
  v32 = *(v20 + 712);
  v33 = *(v20 + 704);
  v34 = *(v20 + 680);
  v35 = *(v20 + 672);
  OUTLINED_FUNCTION_5_18();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_84();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2696EDD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_115();

  v34 = *(v22 + 856);
  OUTLINED_FUNCTION_27_3();
  v23 = *(v22 + 752);
  v24 = *(v22 + 736);
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_52_0();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_69();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v34, a20, a21, a22);
}

uint64_t sub_2696EDE58()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 904);
  *v4 = *v1;
  *(v3 + 912) = v7;
  *(v3 + 920) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2696EDF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_115();
  v25 = sub_26975004C(v24[111]);
  v24[116] = v25;
  if (v25)
  {
    if (v25 >= 1)
    {
      v31 = v24[111];
      v24[117] = *(v24[69] + 176);
      v24[119] = MEMORY[0x277D84F90];
      v24[118] = 0;
      if ((v31 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x26D646120](0);
      }

      else
      {
        v32 = *(v31 + 32);
      }

      v62 = v32;
      v24[120] = v32;
      if ([v32 umcId])
      {
        sub_269854A94();
        OUTLINED_FUNCTION_122();
      }

      else
      {
        OUTLINED_FUNCTION_107();
      }

      v24[122] = v23;
      v24[121] = v22;
      if ([v62 name])
      {
        sub_269854A94();
        OUTLINED_FUNCTION_122();
      }

      else
      {
        OUTLINED_FUNCTION_107();
      }

      OUTLINED_FUNCTION_83();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v24[125] = v63;
      *v63 = v64;
      OUTLINED_FUNCTION_37_1(v63);
      OUTLINED_FUNCTION_69();

      return sub_2696CE508(v65, v66);
    }

    __break(1u);
    return MEMORY[0x2821BB468](v25, v26, v27, v28, v29, v30);
  }

  v33 = v24[111];

  OUTLINED_FUNCTION_63();
  if (v34)
  {
    v101 = v24[77];
    v102 = v24[89];
    v35 = v24[76];
    v36 = v24[75];
    v37 = v24[74];
    v38 = v24[73];
    v39 = v24[72];
    v40 = v24[71];
    v105 = v24[69];
    v106 = v24[114];
    v103 = v24[67];
    v104 = v24[92];
    v41 = type metadata accessor for VideoDataModels.PersonModel(0);
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
    v45 = *(v36 + 20);
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v41);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_9_8();
    sub_269852674();
    sub_26969B0C0(v38, &qword_2803239D8, &unk_26985BAD0);
    v49 = *(v36 + 24);
    v24[61] = 0;
    v24[62] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
    sub_269852674();
    v24[65] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A18, &unk_26985BB20);
    sub_269852674();
    sub_2696F3F6C(v37, v38, &qword_2803239D8, &unk_26985BAD0);
    OUTLINED_FUNCTION_121();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
    sub_2698526A4();
    sub_26969B0C0(v38, &qword_2803239D8, &unk_26985BAD0);
    v24[63] = 0;
    v24[64] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
    sub_2698526A4();
    sub_26969B0C0(v37, &qword_2803239D8, &unk_26985BAD0);
    VideoDataModels.VideoResultDisambiguationModel.init(systemText:resultsListModel:)();
    sub_269852E84();
    v50 = swift_task_alloc();
    OUTLINED_FUNCTION_49_0(v50);

    v24[23] = type metadata accessor for VideoDataModels(0);
    OUTLINED_FUNCTION_51_0();
    v24[24] = sub_2696F4140(v51, v52);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 20);
    OUTLINED_FUNCTION_48_0(boxed_opaque_existential_1);
    OUTLINED_FUNCTION_50_0();
    swift_storeEnumTagMultiPayload();
    v54 = v105[36];
    v55 = v105[37];
    OUTLINED_FUNCTION_36_0(v105 + 33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v56 = OUTLINED_FUNCTION_35_0();
    v24[127] = v56;
    *(v56 + 16) = xmmword_2698590C0;
    *(v56 + 32) = v106;
    v57 = *(MEMORY[0x277D5BE38] + 4);
    v58 = v106;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v24[128] = v59;
    *v59 = v60;
    OUTLINED_FUNCTION_31_1(v59);
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2821BB468](v25, v26, v27, v28, v29, v30);
  }

  v69 = v24[103];
  v70 = v24[102];
  v71 = v24[101];
  v72 = v24[98];
  v73 = v24[96];

  v74 = OUTLINED_FUNCTION_50_0();
  (v70)(v74);
  v75 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_45_0();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v77);
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v78, v79, v80, v81, v82, 2u);
    OUTLINED_FUNCTION_18_7();
  }

  OUTLINED_FUNCTION_120();
  v83 = *(v70 + 8);
  v84 = OUTLINED_FUNCTION_22_3();
  v85(v84);
  sub_2696BAE9C();
  v107 = OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_14(v86, 7);
  swift_willThrow();

  OUTLINED_FUNCTION_27_3();
  v87 = v24[94];
  v88 = v24[92];
  v89 = v24[89];
  v90 = v24[88];
  v91 = v24[85];
  v92 = v24[84];
  OUTLINED_FUNCTION_5_18();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_69();

  return v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14, a15, a16, a17, v107, a19, a20, a21, a22);
}

uint64_t sub_2696EE4F8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v2[28] = v0;
  v2[29] = v4;
  v2[30] = v5;
  v7 = *(v6 + 1000);
  v8 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v9 = v8;
  v2[126] = v10;

  sub_26969B0C0((v2 + 15), &qword_280323398, &unk_26985BAF0);
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2696EE5F8()
{
  v1 = *(v0 + 1008);
  if (v1)
  {
    v2 = *(v0 + 232);
  }

  else
  {
    v2 = 0;
  }

  if (!v1)
  {
    v1 = 0xE000000000000000;
  }

  v149 = v1;
  v151 = v2;
  v3 = [*(v0 + 960) ratingValue];
  if (v3)
  {
    v4 = v3;
    v5 = sub_269854A94();
    v159 = v6;
    v162 = v5;
  }

  else
  {
    v159 = 0;
    v162 = 0;
  }

  v7 = [*(v0 + 960) ratingSystem];
  if (v7)
  {
    v8 = v7;
    v156 = sub_269854A94();
    v153 = v9;
  }

  else
  {
    v156 = 0;
    v153 = 0;
  }

  v10 = *(v0 + 960);
  v11 = *(v0 + 680);
  sub_2696CEF80();
  sub_269851C64();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_269857710;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F8, &unk_26985BB00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(v0 + 248) = 0x696669746E656469;
  *(v0 + 256) = 0xEA00000000007265;
  v14 = MEMORY[0x277D837D0];
  sub_2698551B4();
  v15 = [v10 umcId];
  if (v15)
  {
    v16 = v15;
    v17 = sub_269854A94();
    v19 = v18;

    v20 = (inited + 72);
    *(inited + 96) = v14;
    if (v19)
    {
      *v20 = v17;
      goto LABEL_17;
    }
  }

  else
  {
    v20 = (inited + 72);
    *(inited + 96) = v14;
  }

  *v20 = 0;
  v19 = 0xE000000000000000;
LABEL_17:
  v144 = *(v0 + 984);
  v145 = *(v0 + 992);
  v142 = *(v0 + 968);
  v143 = *(v0 + 976);
  v21 = *(v0 + 704);
  v22 = *(v0 + 688);
  v146 = *(v0 + 680);
  v147 = *(v0 + 952);
  v23 = *(v0 + 672);
  v165 = *(v0 + 664);
  v136 = *(v0 + 656);
  v24 = *(v0 + 648);
  v131 = *(v0 + 640);
  v168 = *(v0 + 632);
  v138 = *(v0 + 624);
  *(inited + 80) = v19;
  sub_269854A04();
  v25 = sub_269852664();
  v26 = MEMORY[0x277D63778];
  *(v12 + 56) = v25;
  *(v12 + 64) = v26;
  __swift_allocate_boxed_opaque_existential_1((v12 + 32));
  sub_269852654();

  sub_269852634();
  v27 = sub_269852624();
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  *(v0 + 264) = 0;
  *(v0 + 272) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  v132 = v22[5];
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  sub_269852674();
  v135 = v22[6];
  *(v0 + 296) = 0;
  *(v0 + 304) = 0;
  sub_269852674();
  v134 = v22[7];
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  sub_269852674();
  v141 = v22[8];
  *(v0 + 328) = 0;
  *(v0 + 336) = 0;
  sub_269852674();
  v140 = v22[9];
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  sub_269852674();
  v133 = v22[10];
  sub_269851C74();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  sub_2696F3F6C(v23, v165, &qword_280323030, &qword_26985BAE0);
  sub_269852674();
  v35 = OUTLINED_FUNCTION_4_15();
  sub_26969B0C0(v35, v36, &qword_26985BAE0);
  v137 = v22[11];
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v27);
  sub_2696F3F6C(v131, v168, &qword_2803239E0, &unk_26985D8B0);
  sub_269852674();
  sub_26969B0C0(v131, &qword_2803239E0, &unk_26985D8B0);
  v139 = v22[12];
  *(v0 + 360) = 0;
  *(v0 + 368) = 0;
  sub_269852674();
  *(v0 + 376) = v142;
  *(v0 + 384) = v143;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_2698526A4();
  *(v0 + 392) = v144;
  *(v0 + 400) = v145;
  OUTLINED_FUNCTION_90();
  *(v0 + 408) = v151;
  *(v0 + 416) = v149;
  OUTLINED_FUNCTION_90();
  *(v0 + 424) = 0;
  *(v0 + 432) = 0;
  OUTLINED_FUNCTION_90();
  v40 = OUTLINED_FUNCTION_98();
  sub_2696F3F6C(v40, v41, &qword_280323030, &qword_26985BAE0);
  sub_2696F3F6C(v23, v165, &qword_280323030, &qword_26985BAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  sub_2698526A4();
  sub_26969B0C0(v23, &qword_280323030, &qword_26985BAE0);
  sub_2696F3F6C(v24, v131, &qword_2803239E0, &unk_26985D8B0);
  sub_2696F3F6C(v131, v168, &qword_2803239E0, &unk_26985D8B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  sub_2698526A4();
  v42 = OUTLINED_FUNCTION_22_3();
  sub_26969B0C0(v42, v43, &unk_26985D8B0);
  *(v0 + 440) = v162;
  *(v0 + 448) = v159;
  OUTLINED_FUNCTION_90();
  *(v0 + 456) = v156;
  *(v0 + 464) = v153;
  OUTLINED_FUNCTION_90();
  *(v0 + 472) = 0;
  *(v0 + 480) = 0;
  OUTLINED_FUNCTION_90();
  sub_26969B0C0(v24, &qword_2803239E0, &unk_26985D8B0);
  sub_26969B0C0(v146, &qword_280323030, &qword_26985BAE0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v0 + 952);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v126 = *(v45 + 16);
    v127 = *(v0 + 952);
    sub_26977C82C();
    v45 = v128;
  }

  v46 = *(v45 + 16);
  if (v46 >= *(v45 + 24) >> 1)
  {
    sub_26977C82C();
    v45 = v129;
  }

  v47 = *(v0 + 944);
  v48 = *(v0 + 928);
  v49 = *(v0 + 704);
  v50 = *(v0 + 696);

  *(v45 + 16) = v46 + 1;
  sub_2696F3EEC(v49, v45 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v46);
  if (v47 + 1 == v48)
  {
    v51 = *(v0 + 888);

    OUTLINED_FUNCTION_63();
    if (!v52)
    {
      v98 = *(v0 + 824);
      v99 = *(v0 + 816);
      v100 = *(v0 + 808);
      v101 = *(v0 + 784);
      v102 = *(v0 + 768);

      v103 = OUTLINED_FUNCTION_50_0();
      v99(v103);
      v104 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_45_0();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v106);
        OUTLINED_FUNCTION_18_8();
        _os_log_impl(v107, v108, v109, v110, v111, 2u);
        OUTLINED_FUNCTION_18_7();
      }

      OUTLINED_FUNCTION_120();
      v112 = *(v98 + 8);
      v113 = OUTLINED_FUNCTION_22_3();
      v114(v113);
      sub_2696BAE9C();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_5_14(v115, 7);
      swift_willThrow();

      OUTLINED_FUNCTION_27_3();
      v116 = *(v0 + 752);
      v117 = *(v0 + 736);
      OUTLINED_FUNCTION_13_7();
      v150 = *(v0 + 640);
      v152 = *(v0 + 632);
      v155 = *(v0 + 616);
      v158 = *(v0 + 608);
      v161 = *(v0 + 592);
      v164 = *(v0 + 584);
      v167 = *(v0 + 576);

      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_113();

      __asm { BRAA            X1, X16 }
    }

    v169 = *(v0 + 912);
    v163 = *(v0 + 736);
    v157 = *(v0 + 712);
    v154 = *(v0 + 616);
    v53 = *(v0 + 608);
    v54 = *(v0 + 600);
    v148 = *(v0 + 592);
    v55 = *(v0 + 584);
    v56 = *(v0 + 576);
    v57 = *(v0 + 568);
    v166 = *(v0 + 552);
    v160 = *(v0 + 536);
    v58 = type metadata accessor for VideoDataModels.PersonModel(0);
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v58);
    v62 = *(v54 + 20);
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v58);
    v66 = OUTLINED_FUNCTION_44_0();
    sub_2696F3F6C(v66, v67, &qword_2803239D8, &unk_26985BAD0);
    OUTLINED_FUNCTION_9_8();
    sub_269852674();
    v68 = OUTLINED_FUNCTION_4_15();
    sub_26969B0C0(v68, v69, &unk_26985BAD0);
    v70 = *(v54 + 24);
    *(v0 + 488) = 0;
    *(v0 + 496) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
    sub_269852674();
    *(v0 + 520) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A18, &unk_26985BB20);
    sub_269852674();
    v71 = OUTLINED_FUNCTION_34_0();
    sub_2696F3F6C(v71, v72, &qword_2803239D8, &unk_26985BAD0);
    v73 = OUTLINED_FUNCTION_44_0();
    sub_2696F3F6C(v73, v74, &qword_2803239D8, &unk_26985BAD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
    sub_2698526A4();
    v75 = OUTLINED_FUNCTION_4_15();
    sub_26969B0C0(v75, v76, &unk_26985BAD0);
    *(v0 + 504) = 0;
    *(v0 + 512) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
    sub_2698526A4();
    sub_26969B0C0(v148, &qword_2803239D8, &unk_26985BAD0);
    VideoDataModels.VideoResultDisambiguationModel.init(systemText:resultsListModel:)();
    sub_269852E84();
    v77 = swift_task_alloc();
    OUTLINED_FUNCTION_49_0(v77);

    *(v0 + 184) = type metadata accessor for VideoDataModels(0);
    OUTLINED_FUNCTION_51_0();
    *(v0 + 192) = sub_2696F4140(v78, v79);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 160));
    OUTLINED_FUNCTION_48_0(boxed_opaque_existential_1);
    OUTLINED_FUNCTION_50_0();
    swift_storeEnumTagMultiPayload();
    v81 = v166[36];
    v82 = v166[37];
    OUTLINED_FUNCTION_36_0(v166 + 33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v83 = OUTLINED_FUNCTION_35_0();
    *(v0 + 1016) = v83;
    *(v83 + 16) = xmmword_2698590C0;
    *(v83 + 32) = v169;
    v84 = *(MEMORY[0x277D5BE38] + 4);
    v85 = v169;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    *(v0 + 1024) = v86;
    *v86 = v87;
    OUTLINED_FUNCTION_31_1(v86);
    OUTLINED_FUNCTION_113();

    return MEMORY[0x2821BB468](v88, v89, v90, v91, v92, v93);
  }

  else
  {
    v95 = *(v0 + 944) + 1;
    *(v0 + 952) = v45;
    *(v0 + 944) = v95;
    v96 = *(v0 + 888);
    if ((v96 & 0xC000000000000001) != 0)
    {
      v97 = MEMORY[0x26D646120]();
    }

    else
    {
      v97 = *(v96 + 8 * v95 + 32);
    }

    v120 = v97;
    *(v0 + 960) = v97;
    if ([v97 umcId])
    {
      sub_269854A94();
      OUTLINED_FUNCTION_122();
    }

    else
    {
      OUTLINED_FUNCTION_107();
    }

    *(v0 + 976) = v45;
    *(v0 + 968) = v49;
    if ([v120 name])
    {
      sub_269854A94();
      OUTLINED_FUNCTION_122();
    }

    else
    {
      OUTLINED_FUNCTION_107();
    }

    OUTLINED_FUNCTION_83();
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    *(v0 + 1000) = v121;
    *v121 = v122;
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_113();

    return sub_2696CE508(v123, v124);
  }
}

uint64_t sub_2696EF24C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 1024);
  v3 = *(v1 + 1016);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2696EF34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_103();
  v21 = *(v20 + 736);
  v22 = *(v20 + 728);
  v23 = *(v20 + 720);
  v24 = *(v20 + 616);

  v25 = *(v22 + 8);
  v26 = OUTLINED_FUNCTION_7_16();
  v27(v26);
  sub_2696F4188(v24, type metadata accessor for VideoDataModels.VideoResultDisambiguationModel);
  __swift_destroy_boxed_opaque_existential_0((v20 + 160));
  v28 = *(v20 + 800);
  v29 = *(v20 + 792);
  v30 = *(v20 + 784);
  OUTLINED_FUNCTION_93();
  v31 = *(v20 + 736);
  v32 = *(v20 + 712);
  v33 = *(v20 + 704);
  v34 = *(v20 + 680);
  v35 = *(v20 + 672);
  OUTLINED_FUNCTION_5_18();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_84();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2696EF4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_115();
  v23 = *(v22 + 888);

  v35 = *(v22 + 920);
  OUTLINED_FUNCTION_27_3();
  v24 = *(v22 + 752);
  v25 = *(v22 + 736);
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_52_0();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_69();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v35, a20, a21, a22);
}

uint64_t sub_2696EF5D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239C8, &unk_26985BAB8);
  sub_269853534();
  sub_2698359E4();

  sub_269853234();
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_269853604();
  sub_269853624();
  return sub_2698535E4();
}

uint64_t sub_2696EF6B8()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 72) = v0;
  *(v1 + 216) = v2;
  v3 = sub_2698548D4();
  *(v1 + 80) = v3;
  OUTLINED_FUNCTION_5_12(v3);
  *(v1 + 88) = v4;
  v6 = *(v5 + 64);
  *(v1 + 96) = OUTLINED_FUNCTION_37_0();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2696EF79C()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = __swift_project_value_buffer(v2, qword_28033D910);
  *(v0 + 144) = v4;
  v5 = *(v3 + 16);
  *(v0 + 152) = v5;
  *(v0 + 160) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_45_0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v8);
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_18_7();
  }

  v14 = *(v0 + 136);
  v15 = *(v0 + 80);
  v16 = *(v0 + 88);
  v17 = *(v0 + 72);

  v18 = *(v16 + 8);
  *(v0 + 168) = v18;
  v19 = OUTLINED_FUNCTION_22_3();
  v18(v19);
  v20 = *(v17 + 384);
  if (!v20)
  {
    v50 = *(v0 + 128);
    v49 = *(v0 + 136);
    v52 = *(v0 + 112);
    v51 = *(v0 + 120);
    v54 = *(v0 + 96);
    v53 = *(v0 + 104);

    OUTLINED_FUNCTION_95();
    OUTLINED_FUNCTION_112();

    __asm { BRAA            X3, X16 }
  }

  v64 = v18;
  v21 = *(v0 + 128);
  v22 = *(v0 + 80);
  v23 = *(v0 + 216);
  v24 = v20;
  sub_269854604();
  v26 = v25;

  *(v0 + 176) = v26;
  v27 = sub_2696F2424(v23);
  *(v0 + 184) = v27;
  v28 = OUTLINED_FUNCTION_98();
  (v5)(v28);
  v29 = v27;
  v30 = sub_2698548B4();
  sub_269854F14();

  v31 = OUTLINED_FUNCTION_124();
  v32 = *(v0 + 128);
  v33 = *(v0 + 80);
  v34 = *(v0 + 88);
  if (v31)
  {
    v35 = OUTLINED_FUNCTION_27_2();
    v65 = OUTLINED_FUNCTION_9_3();
    *v35 = 136315138;
    v63 = v32;
    v36 = v29;
    v62 = v33;
    v37 = [v36 description];
    sub_269854A94();

    v38 = OUTLINED_FUNCTION_0_17();
    v41 = sub_26974F520(v38, v39, v40);

    *(v35 + 4) = v41;
    OUTLINED_FUNCTION_40();
    _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v47 = v63;
    v48 = v62;
  }

  else
  {

    v47 = OUTLINED_FUNCTION_22_3();
  }

  v64(v47, v48);
  sub_2696A73F8(*(v0 + 72) + 304, v0 + 16);
  v57 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v58 = *(MEMORY[0x277D5BFA8] + 4);
  v59 = swift_task_alloc();
  *(v0 + 192) = v59;
  sub_26969329C(0, &qword_2803239C0, 0x277D471B0);
  *v59 = v0;
  v59[1] = sub_2696EFB40;
  OUTLINED_FUNCTION_112();

  return MEMORY[0x2821BB680]();
}

uint64_t sub_2696EFB40()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = *(v2 + 192);
  v4 = *(v2 + 176);
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v8 + 200) = v7;
  *(v8 + 208) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_2696EFC60()
{
  v2 = (v0 + 25);
  v1 = v0[25];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[10];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v8 = OUTLINED_FUNCTION_50_0();
  v4(v8);
  v9 = v1;
  v10 = sub_2698548B4();
  LOBYTE(v1) = sub_269854F14();

  if (os_log_type_enabled(v10, v1))
  {
    v11 = v0[25];
    v72 = v0[15];
    v73 = v0[21];
    v13 = v0[10];
    v12 = v0[11];
    v14 = OUTLINED_FUNCTION_27_2();
    v15 = OUTLINED_FUNCTION_9_3();
    v74 = v15;
    *v14 = 136315138;
    v0[8] = [v11 dictionary];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239D0, &qword_26985BAC8);
    v16 = sub_269854AE4();
    v18 = sub_26974F520(v16, v17, &v74);

    *(v14 + 4) = v18;
    OUTLINED_FUNCTION_119(&dword_269684000, v19, v20, "handlePaginateOnRemoteDevice submitToRemote completed with response: %s");
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v73(v72, v13);
  }

  else
  {
    v21 = v0[21];
    v22 = v0[15];
    v23 = v0[10];
    v24 = v0[11];

    v25 = OUTLINED_FUNCTION_22_3();
    v21(v25);
  }

  v26 = v0[25];
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  v29 = v0[19];
  v28 = v0[20];
  v30 = v0[18];
  v31 = v0[10];
  if (v27)
  {
    v32 = v0[14];
    v33 = [v27 firstItemIndex];
    v34 = OUTLINED_FUNCTION_9_8();
    v29(v34);
    v35 = sub_2698548B4();
    v36 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v36))
    {
      v37 = OUTLINED_FUNCTION_27_2();
      *v37 = 134217984;
      *(v37 + 4) = v33;
      OUTLINED_FUNCTION_119(&dword_269684000, v38, v39, "handlePaginateOnRemoteDevice firstItemIndex: %ld");
      OUTLINED_FUNCTION_10();
      v40 = v0[23];
    }

    else
    {
      v40 = v35;
      v35 = v0[25];
      v2 = (v0 + 23);
    }

    v58 = v0[21];
    v59 = v0[14];
    v60 = v0[10];
    v61 = v0[11];

    v62 = OUTLINED_FUNCTION_44_0();
    v58(v62);
  }

  else
  {
    v41 = v0[13];
    v42 = OUTLINED_FUNCTION_15_6();
    v29(v42);
    v43 = sub_2698548B4();
    v44 = sub_269854F24();
    v45 = OUTLINED_FUNCTION_19_4(v44);
    v46 = v0[25];
    v47 = v0[23];
    v48 = v0[21];
    v49 = v0[13];
    v50 = v0[10];
    v51 = v0[11];
    if (v45)
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_60();
      _os_log_impl(v52, v53, v54, v55, v56, 2u);
      OUTLINED_FUNCTION_10();
    }

    else
    {
    }

    v57 = OUTLINED_FUNCTION_34_0();
    v48(v57);
  }

  v64 = v0[16];
  v63 = v0[17];
  v66 = v0[14];
  v65 = v0[15];
  v68 = v0[12];
  v67 = v0[13];

  v69 = v0[1];
  OUTLINED_FUNCTION_116();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_2696F0018()
{
  v43 = v0;
  v1 = *(v0 + 208);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v7 = OUTLINED_FUNCTION_15_6();
  v3(v7);
  v8 = v1;
  v9 = sub_2698548B4();
  LOBYTE(v2) = sub_269854F24();

  if (os_log_type_enabled(v9, v2))
  {
    v10 = *(v0 + 208);
    v41 = *(v0 + 168);
    v11 = *(v0 + 88);
    v39 = *(v0 + 184);
    v40 = *(v0 + 96);
    v12 = *(v0 + 80);
    v13 = OUTLINED_FUNCTION_27_2();
    v14 = OUTLINED_FUNCTION_9_3();
    v42 = v14;
    *v13 = 136315138;
    *(v0 + 56) = v10;
    v15 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v16 = sub_269854AE4();
    v18 = sub_26974F520(v16, v17, &v42);

    *(v13 + 4) = v18;
    OUTLINED_FUNCTION_60();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v41(v40, v12);
  }

  else
  {
    v24 = *(v0 + 208);
    v25 = *(v0 + 168);
    v27 = *(v0 + 88);
    v26 = *(v0 + 96);
    v28 = *(v0 + 80);

    v29 = OUTLINED_FUNCTION_34_0();
    v25(v29);
  }

  v31 = *(v0 + 128);
  v30 = *(v0 + 136);
  v33 = *(v0 + 112);
  v32 = *(v0 + 120);
  v35 = *(v0 + 96);
  v34 = *(v0 + 104);

  v36 = OUTLINED_FUNCTION_95();

  return v37(v36);
}

uint64_t sub_2696F0240()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_8_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v8 = sub_269853234();
  v9 = OUTLINED_FUNCTION_8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239C8, &unk_26985BAB8);
  sub_269853534();
  sub_2698359E4();

  v16 = *(v11 + 16);
  v17 = OUTLINED_FUNCTION_0_17();
  v18(v17);
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v8);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_2698530E4();
  sub_26969B0C0(v23, &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v7, &qword_280323010, &unk_26985B640);
  return (*(v11 + 8))(v15, v8);
}

uint64_t sub_2696F03F8(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  OUTLINED_FUNCTION_8_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  sub_269854DB4();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v2;
  v13[5] = a2;
  v13[6] = a1;

  v14 = a1;
  sub_26983AA20();
}

uint64_t sub_2696F04F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = sub_269853094();
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v9 = *(v8 + 64) + 15;
  v6[19] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239B8, &qword_26985BAB0) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v11 = sub_2698532A4();
  v6[21] = v11;
  v12 = *(v11 - 8);
  v6[22] = v12;
  v13 = *(v12 + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v14 = sub_2698548D4();
  v6[25] = v14;
  v15 = *(v14 - 8);
  v6[26] = v15;
  v16 = *(v15 + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2696F06EC, 0, 0);
}

uint64_t sub_2696F06EC()
{
  OUTLINED_FUNCTION_34();
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = v0[32];
  v2 = v0[25];
  v3 = v0[26];
  v4 = __swift_project_value_buffer(v2, qword_28033D910);
  v0[33] = v4;
  v5 = *(v3 + 16);
  v0[34] = v5;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_45_0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v8);
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_18_7();
  }

  v14 = v0[32];
  v15 = v0[25];
  v16 = v0[26];
  v17 = v0[14];

  v0[36] = *(v16 + 8);
  v18 = OUTLINED_FUNCTION_22_3();
  v19(v18);
  v20 = *__swift_project_boxed_opaque_existential_1((v17 + 96), *(v17 + 120));
  OUTLINED_FUNCTION_82(&dword_26985FF80);
  v26 = v21;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[37] = v22;
  *v22 = v23;
  v22[1] = sub_2696F088C;
  v24 = v0[23];

  return v26(v24, 0xD00000000000002ALL, 0x800000026987D0D0);
}

uint64_t sub_2696F088C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = *(v2 + 296);
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2696F098C()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[20];
  (*(v0[22] + 32))(v0[24], v0[23], v0[21]);
  v2 = sub_269853294();
  sub_269771DA8(v2);

  v3 = sub_269853324();
  if (__swift_getEnumTagSinglePayload(v1, 1, v3) == 1)
  {
    sub_26969B0C0(v0[20], &qword_2803239B8, &qword_26985BAB0);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v0[18];
    v6 = v0[19];
    v8 = v0[17];
    sub_269853314();
    v9 = *(*(v3 - 8) + 8);
    v10 = OUTLINED_FUNCTION_7_16();
    v11(v10);
    v4 = sub_269853084();
    v5 = v12;
    v13 = *(v7 + 8);
    v14 = OUTLINED_FUNCTION_34_0();
    v15(v14);
  }

  v0[39] = v4;
  v0[40] = v5;
  sub_2696A73F8(v0[14] + 344, (v0 + 2));
  v16 = v0[5];
  v17 = v0[6];
  OUTLINED_FUNCTION_36_0(v0 + 2);
  v18 = *(MEMORY[0x277D61F28] + 4);
  v19 = swift_task_alloc();
  v0[41] = v19;
  *v19 = v0;
  v19[1] = sub_2696F0C74;

  return MEMORY[0x2821C8A70](4000, 4000, v16, v17);
}

uint64_t sub_2696F0B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_114();
  v13 = *(v12 + 280);
  (*(v12 + 272))(*(v12 + 248), *(v12 + 264), *(v12 + 200));
  v14 = sub_2698548B4();
  v15 = sub_269854F24();
  v16 = OUTLINED_FUNCTION_19_4(v15);
  v17 = *(v12 + 304);
  v18 = *(v12 + 288);
  v19 = *(v12 + 248);
  v20 = *(v12 + 200);
  v21 = *(v12 + 208);
  if (v16)
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_60();
    _os_log_impl(v22, v23, v24, v25, v26, 2u);
    OUTLINED_FUNCTION_10();
  }

  v27 = OUTLINED_FUNCTION_22_3();
  v18(v27);
  OUTLINED_FUNCTION_21_6();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_71();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_2696F0C74()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 328);
  *v4 = *v1;
  v3[42] = v7;
  v3[43] = v0;

  if (v0)
  {
    v8 = v3[40];
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2696F0D7C()
{
  v1 = *(v0 + 336);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = sub_26975004C(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  while (1)
  {
    if (v2 == v3)
    {
      v10 = *(v0 + 336);
      v11 = *(v0 + 320);

      v12 = 0;
      goto LABEL_15;
    }

    if (v4)
    {
      v7 = MEMORY[0x26D646120](v3, *(v0 + 336));
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_21;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    *(v0 + 352) = v7;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    sub_269854654();
    v9 = sub_2698547B4();
    if (v9 == sub_2698547B4())
    {
      v13 = *(v0 + 336);
      v14 = *(v0 + 312);
      v15 = *(v0 + 320);
      v17 = *(v0 + 112);
      v16 = *(v0 + 120);

      v12 = v8;
      v18 = sub_269854604();
      v20 = v19;

      v21 = sub_2696F1888(v16, v14, v15, v18, v20, *(v17 + 176), v17 + 184);
      *(v0 + 360) = v21;

      if (v21)
      {
        v22 = *(v0 + 128);
        sub_2696A73F8(*(v0 + 112) + 304, v0 + 56);
        v23 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        sub_269854604();
        *(v0 + 368) = v24;
        v25 = *(MEMORY[0x277D5BFA8] + 4);
        v26 = swift_task_alloc();
        *(v0 + 376) = v26;
        sub_26969329C(0, &qword_2803239C0, 0x277D471B0);
        *v26 = v0;
        v26[1] = sub_2696F10E4;
        OUTLINED_FUNCTION_116();

        return MEMORY[0x2821BB680]();
      }

LABEL_15:
      v28 = *(v0 + 280);
      (*(v0 + 272))(*(v0 + 232), *(v0 + 264), *(v0 + 200));
      v29 = sub_2698548B4();
      v30 = sub_269854F24();
      v31 = OUTLINED_FUNCTION_19_4(v30);
      v32 = *(v0 + 288);
      v33 = *(v0 + 232);
      v35 = *(v0 + 200);
      v34 = *(v0 + 208);
      v47 = *(v0 + 192);
      v36 = *(v0 + 168);
      v37 = *(v0 + 176);
      if (v31)
      {
        v46 = *(v0 + 288);
        *OUTLINED_FUNCTION_16_2() = 0;
        OUTLINED_FUNCTION_40();
        _os_log_impl(v38, v39, v40, v41, v42, 2u);
        OUTLINED_FUNCTION_10();
      }

      v32(v33, v35);
      (*(v37 + 8))(v47, v36);
      OUTLINED_FUNCTION_21_6();

      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_116();

      __asm { BRAA            X1, X16 }
    }

    ++v3;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return MEMORY[0x2821BB680]();
}

uint64_t sub_2696F10E4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 376);
  *v4 = *v1;
  v3[48] = v7;
  v3[49] = v0;

  if (!v0)
  {
    v8 = v3[46];
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2696F11EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_114();
  v13 = *(v12 + 384);
  v15 = *(v12 + 272);
  v14 = *(v12 + 280);
  v16 = *(v12 + 264);
  v17 = *(v12 + 240);
  v18 = *(v12 + 200);
  __swift_destroy_boxed_opaque_existential_0((v12 + 56));
  v19 = OUTLINED_FUNCTION_50_0();
  v15(v19);
  v20 = v13;
  v21 = sub_2698548B4();
  LOBYTE(v17) = sub_269854F14();

  if (os_log_type_enabled(v21, v17))
  {
    v22 = *(v12 + 384);
    v23 = OUTLINED_FUNCTION_27_2();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v22;
    *v24 = v22;
    v25 = v22;
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
    sub_26969B0C0(v24, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_18_7();
  }

  v31 = *(v12 + 384);
  v32 = *(v12 + 360);
  v33 = *(v12 + 288);
  v34 = *(v12 + 240);
  v35 = *(v12 + 200);
  v36 = *(v12 + 208);
  v50 = *(v12 + 192);
  v37 = v21;
  v39 = *(v12 + 168);
  v38 = *(v12 + 176);

  v40 = OUTLINED_FUNCTION_22_3();
  v33(v40);
  (*(v38 + 8))(v50, v39);
  OUTLINED_FUNCTION_21_6();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_71();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, v50, a10, a11, a12);
}

void sub_2696F13C0()
{
  v1 = v0[43];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = v0[28];
  v6 = v0[25];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = OUTLINED_FUNCTION_15_6();
  v3(v7);
  v8 = v1;
  v9 = sub_2698548B4();
  sub_269854F24();

  if (OUTLINED_FUNCTION_124())
  {
    v10 = v0[43];
    v11 = v0[26];
    v38 = v0[25];
    v39 = v0[28];
    v41 = v0[36];
    v42 = v0[24];
    v12 = v0[22];
    v40 = v0[21];
    v13 = OUTLINED_FUNCTION_27_2();
    v14 = OUTLINED_FUNCTION_9_3();
    v43 = v14;
    *v13 = 136315138;
    v0[12] = v10;
    v15 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v16 = sub_269854AE4();
    v18 = sub_26974F520(v16, v17, &v43);

    *(v13 + 4) = v18;
    OUTLINED_FUNCTION_40();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v41(v39, v38);
    (*(v12 + 8))(v42, v40);
  }

  else
  {
    v24 = v0[43];
    v25 = v0[36];
    v26 = v0[28];
    v27 = v0[25];
    v28 = v0[26];
    v29 = v0[24];
    v30 = v0[21];
    v31 = v0[22];

    v32 = OUTLINED_FUNCTION_34_0();
    v25(v32);
    v33 = *(v31 + 8);
    v34 = OUTLINED_FUNCTION_0_17();
    v35(v34);
  }

  OUTLINED_FUNCTION_21_6();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_112();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2696F1614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_103();
  a26 = v28;
  v31 = v28[49];
  v32 = v28[46];
  v34 = v28[34];
  v33 = v28[35];
  v35 = v28[33];
  v36 = v28[27];
  v37 = v28[25];

  __swift_destroy_boxed_opaque_existential_0(v28 + 7);
  v38 = OUTLINED_FUNCTION_15_6();
  v34(v38);
  v39 = v31;
  v40 = sub_2698548B4();
  sub_269854F24();

  if (OUTLINED_FUNCTION_124())
  {
    v41 = v28[49];
    v42 = v28[45];
    a10 = v28[26];
    a11 = v28[44];
    a12 = v28[25];
    a13 = v28[27];
    v73 = v28[36];
    v74 = v28[24];
    v43 = v28[22];
    a14 = v28[21];
    v44 = OUTLINED_FUNCTION_27_2();
    v45 = OUTLINED_FUNCTION_9_3();
    a17 = v45;
    *v44 = 136315138;
    v28[13] = v41;
    v46 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v47 = sub_269854AE4();
    v49 = sub_26974F520(v47, v48, &a17);

    *(v44 + 4) = v49;
    OUTLINED_FUNCTION_40();
    _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v73(a13, a12);
    (*(v43 + 8))(v74, a14);
  }

  else
  {
    v55 = v28[49];
    v57 = v28[44];
    v56 = v28[45];
    v59 = v28[26];
    v58 = v28[27];
    v60 = v28[25];
    v73 = v28[36];
    v74 = v28[24];
    v61 = v28[21];
    v62 = v28[22];

    v63 = OUTLINED_FUNCTION_34_0();
    (v73)(v63);
    (*(v62 + 8))(v74, v61);
  }

  OUTLINED_FUNCTION_21_6();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_84();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, v73, v74, a17, a18, a19, a20);
}

id sub_2696F1888(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v71 = a4;
  v14 = *v7;
  v15 = *v7;
  v16 = sub_2698548D4();
  v17 = OUTLINED_FUNCTION_3_18(v16, &v87);
  v68[4] = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v21);
  v22 = sub_269851DA4();
  v23 = OUTLINED_FUNCTION_3_18(v22, &v86);
  v68[1] = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  v28 = v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2698526C4();
  v30 = OUTLINED_FUNCTION_8(v29);
  v69 = v31;
  v70 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_15_7();
  v68[6] = v34;
  v35 = *(v15 + 96);
  v73 = *(v15 + 80);
  v74 = v35;
  v75 = *(v14 + 112);
  v76 = a1;
  v77 = a6;
  v78 = a7;
  v79 = v15;
  sub_2698080B0(sub_2696F3340, v72, a1);
  v37 = v36;
  if (a3)
  {
    v38 = a2;
  }

  else
  {
    v38 = 0;
  }

  if (a3)
  {
    v39 = a3;
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  v40 = sub_269851AD4();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();

  sub_269851AC4();
  v80 = v71;
  v81 = a5;
  v82 = v38;
  v83 = v39;
  v84 = v37;
  sub_2696F3378();
  sub_269851AB4();
  v68[0] = v28;
  v71 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323998, &qword_26985BA98);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_269857710;
  v44 = sub_269852614();
  v45 = MEMORY[0x277D62A70];
  *(v43 + 56) = v44;
  *(v43 + 64) = v45;
  __swift_allocate_boxed_opaque_existential_1((v43 + 32));
  v46 = OUTLINED_FUNCTION_111();
  sub_2696CE464(v46, v47);
  sub_269852604();
  sub_2698526D4();
  sub_2696F4140(&qword_2803239A0, MEMORY[0x277D637F0]);
  v48 = sub_269852644();
  v50 = v49;
  v51 = [objc_allocWithZone(MEMORY[0x277D47B50]) init];
  v52 = v68[0];
  sub_269851D94();
  sub_269851D54();
  OUTLINED_FUNCTION_3_15(&v85);
  v53(v52, v68[2]);
  OUTLINED_FUNCTION_50_0();
  v54 = sub_269854A64();

  [v51 setAceId_];

  v55 = v48;
  v56 = sub_269851C84();
  [v51 setModelData_];

  type metadata accessor for Content();
  sub_2696F4140(&qword_2803239A8, type metadata accessor for Content);
  v80 = sub_269854D14();
  sub_269855544();
  v57 = sub_269854A64();

  [v51 setViewIdentifier_];

  v58 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v59 = OUTLINED_FUNCTION_35_0();
  *(v59 + 16) = xmmword_2698590C0;
  *(v59 + 32) = v51;
  sub_26969329C(0, &qword_2803239B0, 0x277D47140);
  v60 = v51;
  v61 = sub_269854CA4();

  [v58 setViews_];
  sub_2696C1F3C(v55, v50);

  v62 = OUTLINED_FUNCTION_111();
  sub_2696C1F3C(v62, v63);
  v64 = *(v69 + 8);
  v65 = OUTLINED_FUNCTION_44_0();
  v66(v65);
  return v58;
}

void sub_2696F1FDC(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a5;
  v53 = a4;
  v54 = a3;
  v9 = sub_2698548D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = *a1;
  v18 = [*a1 name];
  if (!v18 || (v18, (v19 = [v17 umcId]) == 0))
  {
    if (qword_2803226E0 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v9, qword_28033D910);
    (*(v10 + 16))(v14, v28, v9);
    v29 = sub_2698548B4();
    v30 = sub_269854F24();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_269684000, v29, v30, "Unable to create list item from content (contentName or umcId). Skipping.", v31, 2u);
      MEMORY[0x26D647170](v31, -1, -1);
    }

    (*(v10 + 8))(v14, v9);
    goto LABEL_10;
  }

  v20 = v19;
  v50 = sub_269854A94();
  v51 = v21;

  v22 = sub_2696D1B74(a2);
  v23 = [v17 name];
  if (v23)
  {
    v24 = v23;
    v25 = sub_269854A94();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  if (*(v22 + 16))
  {
    v32 = sub_26973CFEC(v25, v27);
    v34 = v33;

    if (v34)
    {
      v35 = *(*(v22 + 56) + 8 * v32);

      v36 = v35 > 1;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v36 = 0;
LABEL_17:
  v37 = __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  v38 = sub_2696F3570(v36, v54, *v37, v17);
  if (!v39)
  {

    if (qword_2803226E0 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v9, qword_28033D910);
    (*(v10 + 16))(v16, v45, v9);
    v46 = sub_2698548B4();
    v47 = sub_269854F24();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_269684000, v46, v47, "Unable to create list item from content (contentName is nil). Skipping.", v48, 2u);
      MEMORY[0x26D647170](v48, -1, -1);
    }

    (*(v10 + 8))(v16, v9);
LABEL_10:
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *a6 = 0u;
    return;
  }

  v40 = v38;
  v41 = v39;
  v42 = sub_2696F2404([v17 type]);
  sub_2696D1748();
  *a6 = v40;
  *(a6 + 8) = v41;
  v43 = v51;
  *(a6 + 16) = v50;
  *(a6 + 24) = v43;
  *(a6 + 32) = v42;
  *(a6 + 40) = v44;
}

uint64_t sub_2696F2404(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 0;
  }

  else
  {
    return (0x102020200uLL >> (8 * a1));
  }
}

id sub_2696F2424(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D47AD0]) init];
  [v2 setForward_];
  return v2;
}

uint64_t sub_2696F2474(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_3_16();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2696F24A0()
{
  OUTLINED_FUNCTION_34();
  v1 = v0;
  v4 = v0 + 24;
  v2 = *(v0 + 24);
  v3 = *(v4 + 8);
  v5 = *(v1 + 16);
  ObjectType = swift_getObjectType();
  v7 = (*(v2 + 40))(ObjectType, v2);
  v8 = *__swift_project_boxed_opaque_existential_1((v3 + 96), *(v3 + 120));
  OUTLINED_FUNCTION_82(&dword_26985F698);
  v14 = v9;
  v10 = swift_task_alloc();
  *(v1 + 40) = v10;
  *v10 = v1;
  if (v7)
  {
    v10[1] = sub_2696F41E4;
    v11 = 0x800000026987CFD0;
    v12 = 0xD000000000000012;
  }

  else
  {
    v10[1] = sub_2696F2604;
    v12 = 0xD00000000000001DLL;
    v11 = 0x800000026987D070;
  }

  return v14(v12, v11);
}

uint64_t sub_2696F2604()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_2696F26F4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_2696D1E70(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  v1 = *(v0 + 176);

  __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  __swift_destroy_boxed_opaque_existential_0((v0 + 224));
  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  __swift_destroy_boxed_opaque_existential_0((v0 + 344));

  sub_26969B0C0(v0 + qword_2803238F0, &qword_2803239E8, &qword_26985BAE8);
  return v0;
}

uint64_t sub_2696F2784()
{
  sub_2696F26F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2696F27F4()
{
  if (!qword_280323978)
  {
    type metadata accessor for MediaNLIntent();
    v0 = sub_2698550A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280323978);
    }
  }
}

uint64_t sub_2696F284C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v5 = type metadata accessor for BaseDisambiguateContentStrategy();
  return MEMORY[0x26D643790](a1, v5, a3);
}

uint64_t sub_2696F28D8(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2696F2974;

  return sub_2696EA260();
}

uint64_t sub_2696F2974(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_2696F2A70()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DAF80;

  return sub_2696EA4AC();
}

uint64_t sub_2696F2B34()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_2696ECD90();
}

uint64_t sub_2696F2BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B588] + 4);
  v12 = swift_task_alloc();
  *(v5 + 56) = v12;
  v13 = *(a4 + 112);
  v14 = *(a4 + 96);
  *(v5 + 16) = *(a4 + 80);
  *(v5 + 32) = v14;
  *(v5 + 48) = v13;
  v15 = type metadata accessor for BaseDisambiguateContentStrategy();
  *v12 = v5;
  v12[1] = sub_2696F2CDC;

  return MEMORY[0x2821B9F38](a1, a2, a3, v15, a5);
}

uint64_t sub_2696F2CDC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_7_7();

  return v5();
}

uint64_t sub_2696F2DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B598] + 4);
  v12 = swift_task_alloc();
  *(v5 + 56) = v12;
  v13 = *(a4 + 112);
  v14 = *(a4 + 96);
  *(v5 + 16) = *(a4 + 80);
  *(v5 + 32) = v14;
  *(v5 + 48) = v13;
  v15 = type metadata accessor for BaseDisambiguateContentStrategy();
  *v12 = v5;
  v12[1] = sub_2696F41E0;

  return MEMORY[0x2821B9F48](a1, a2, a3, v15, a5);
}

uint64_t sub_2696F2EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B590] + 4);
  v10 = swift_task_alloc();
  *(v4 + 56) = v10;
  v11 = *(a3 + 112);
  v12 = *(a3 + 96);
  *(v4 + 16) = *(a3 + 80);
  *(v4 + 32) = v12;
  *(v4 + 48) = v11;
  v13 = type metadata accessor for BaseDisambiguateContentStrategy();
  *v10 = v4;
  v10[1] = sub_2696F41E0;

  return MEMORY[0x2821B9F40](a1, a2, v13, a4);
}

uint64_t sub_2696F2F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B5A0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 56) = v10;
  v11 = *(a3 + 112);
  v12 = *(a3 + 96);
  *(v4 + 16) = *(a3 + 80);
  *(v4 + 32) = v12;
  *(v4 + 48) = v11;
  v13 = type metadata accessor for BaseDisambiguateContentStrategy();
  *v10 = v4;
  v10[1] = sub_2696F41E0;

  return MEMORY[0x2821B9F58](a1, a2, v13, a4);
}

uint64_t sub_2696F3078(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  v5 = *(a2 + 112);
  type metadata accessor for BaseDisambiguateContentStrategy();
  return sub_2698528E4();
}

uint64_t sub_2696F30D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5C0B0] + 4);
  v14 = swift_task_alloc();
  *(v6 + 56) = v14;
  v15 = *(a5 + 112);
  v16 = *(a5 + 96);
  *(v6 + 16) = *(a5 + 80);
  *(v6 + 32) = v16;
  *(v6 + 48) = v15;
  v17 = type metadata accessor for BaseDisambiguateContentStrategy();
  *v14 = v6;
  v14[1] = sub_2696F41E0;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v17, a6);
}

uint64_t sub_2696F31D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D5C0B8] + 4);
  v16 = swift_task_alloc();
  *(v7 + 56) = v16;
  v17 = *(a6 + 112);
  v18 = *(a6 + 96);
  *(v7 + 16) = *(a6 + 80);
  *(v7 + 32) = v18;
  *(v7 + 48) = v17;
  v19 = type metadata accessor for BaseDisambiguateContentStrategy();
  *v16 = v7;
  v16[1] = sub_2696F41E0;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v19, a7);
}

void sub_2696F3340(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  sub_2696F1FDC(a1, *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), a2);
}

unint64_t sub_2696F3378()
{
  result = qword_280323990;
  if (!qword_280323990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323990);
  }

  return result;
}

uint64_t sub_2696F33CC(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = type metadata accessor for GlobalsImpl();
  v24 = &off_287A41CD0;
  v22[0] = a2;
  v5 = *__swift_project_boxed_opaque_existential_1(v22, v23);

  sub_2697B6BCC();
  if (!v6 || (sub_269693054(), v7 = sub_269855144(), , (v7 & 1) == 0))
  {
    v8 = sub_26977E46C(a3);
    if (v9)
    {
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        sub_269831F5C(a3);
        if (v11)
        {
          v12 = sub_26983060C();
          v14 = v13;

          goto LABEL_17;
        }
      }
    }
  }

  v15 = sub_26977E46C(a3);
  if (v16)
  {
    v12 = v15;
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      goto LABEL_19;
    }
  }

  v18 = sub_269831F5C(a3);
  if (!v19)
  {
LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  v12 = sub_26983055C(v18, v19);
  v14 = v20;
LABEL_17:

  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v12;
}

uint64_t sub_2696F3570(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v70 = a2;
  v7 = sub_269851E64();
  v65 = *(v7 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269851E84();
  v64 = *(v11 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_269851D34();
  v66 = *(v15 - 8);
  v67 = v15;
  v16 = *(v66 + 64);
  MEMORY[0x28223BE20](v15);
  v69 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2698548D4();
  v71 = *(v18 - 8);
  v19 = *(v71 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v68 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
  v24 = type metadata accessor for GlobalsImpl();
  v76[3] = v24;
  v76[4] = &off_287A41CD0;
  v76[0] = a3;

  v72 = sub_26977E46C(a4);
  if (v25)
  {
    v26 = v25;
    switch([a4 type])
    {
      case 1uLL:
      case 4uLL:
        if ((a1 & 1) == 0)
        {
          goto LABEL_29;
        }

        v27 = [a4 releaseDate];
        if (!v27)
        {
          goto LABEL_29;
        }

        v28 = v27;
        sub_269851D14();

        sub_269851E54();
        v29 = v65;
        (*(v65 + 104))(v10, *MEMORY[0x277CC9988], v7);
        v30 = sub_269851E74();
        (*(v29 + 8))(v10, v7);
        (*(v64 + 8))(v14, v11);
        v31 = v72;
        v32 = sub_269830474(v72, v26, v30);
        v34 = v33;
        if (qword_280322700 != -1)
        {
          swift_once();
        }

        v35 = __swift_project_value_buffer(v18, qword_281571B38);
        v36 = v71;
        v37 = v68;
        (*(v71 + 16))(v68, v35, v18);

        v38 = sub_2698548B4();
        v39 = sub_269854F14();

        v40 = os_log_type_enabled(v38, v39);
        v70 = v32;
        if (v40)
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v75 = v42;
          *v41 = 136315394;
          *(v41 + 4) = sub_26974F520(v31, v26, &v75);
          *(v41 + 12) = 2080;
          v73 = v32;
          v74 = v34;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
          v43 = sub_269854AE4();
          v45 = sub_26974F520(v43, v44, &v75);

          *(v41 + 14) = v45;
          _os_log_impl(&dword_269684000, v38, v39, "Reformatted %s as %s", v41, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D647170](v42, -1, -1);
          MEMORY[0x26D647170](v41, -1, -1);

          (*(v36 + 8))(v68, v18);
          v31 = v72;
        }

        else
        {

          (*(v36 + 8))(v37, v18);
        }

        (*(v66 + 8))(v69, v67);
        if (v34)
        {

          v31 = v70;
        }

        break;
      case 2uLL:

        v54 = [a4 show];
        if (v54)
        {
          sub_26978701C(v54);
          if (v55)
          {
            v56 = __swift_project_boxed_opaque_existential_1(v76, v24);
            sub_2696F33CC(v70, *v56, a4);
            v31 = sub_2698306C8();

            goto LABEL_21;
          }
        }

        v61 = __swift_project_boxed_opaque_existential_1(v76, v24);
        v31 = sub_2696F33CC(v70, *v61, a4);
        break;
      case 3uLL:
        sub_269831F5C(a4);
        if (!v57)
        {
          goto LABEL_29;
        }

        sub_26976F9BC(a4);
        if (!v58)
        {
          goto LABEL_28;
        }

        sub_26977E46C(a4);
        if (!v59)
        {

LABEL_28:

          goto LABEL_29;
        }

        sub_269830380();
        v31 = v60;

LABEL_21:

        break;
      default:
LABEL_29:
        v31 = v72;
        break;
    }
  }

  else
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(v18, qword_281571B38);
    v47 = v71;
    (*(v71 + 16))(v23, v46, v18);
    v48 = a4;
    v49 = sub_2698548B4();
    v50 = sub_269854F24();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v52 = v48;
      v53 = v48;
      _os_log_impl(&dword_269684000, v49, v50, "Returning nil for content due to missing title: %@", v51, 0xCu);
      sub_26969B0C0(v52, &qword_280324D50, &qword_26985D530);
      MEMORY[0x26D647170](v52, -1, -1);
      MEMORY[0x26D647170](v51, -1, -1);
    }

    (*(v47 + 8))(v23, v18);
    v31 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v76);
  return v31;
}

uint64_t sub_2696F3DD0()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_2696DA938;

  return sub_2696F04F0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2696F3EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoDataModels.VideoResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2696F3F6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_50_0();
  v9(v8);
  return a2;
}

uint64_t sub_2696F3FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_50_0();
  v8(v7);
  return a2;
}

uint64_t sub_2696F4060(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A30, &unk_26985BB30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2696F40D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E8, &qword_26985BAE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2696F4140(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2696F4188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_18@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_18()
{
  v4 = v0[83];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[77];
  v9 = v0[76];
  v2 = v0[74];
  v10 = v0[73];
  v11 = v0[72];
}

void OUTLINED_FUNCTION_6_14()
{
  v1 = *(v0 - 264);
  v2 = *(v0 - 224);
  v4 = *(v0 - 256);
  v3 = *(v0 - 248);
}

uint64_t OUTLINED_FUNCTION_12_13@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 264);
  return result;
}

void OUTLINED_FUNCTION_13_7()
{
  v1 = v0[89];
  v2 = v0[88];
  v3 = v0[85];
  v4 = v0[84];
  v5 = v0[83];
  v6 = v0[81];
}

uint64_t OUTLINED_FUNCTION_17_7()
{
  v3 = *(v1 + 672);
  result = v0;
  v5 = *(v2 - 152);
  v6 = *(v2 - 144);
  v7 = *(v2 - 136);
  return result;
}

void OUTLINED_FUNCTION_20_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_21_6()
{
  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v7 = v0[27];
  v6 = v0[28];
  v9 = v0[23];
  v8 = v0[24];
  v11 = v0[19];
  v10 = v0[20];
}

uint64_t OUTLINED_FUNCTION_23_6()
{
  v8 = v0[86];
  v9 = v0[83];
  v10 = v0[82];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[76];
  v15 = v0[75];
  v16 = v0[72];
  v17 = v0[71];
  v18 = v0[69];
  v19 = v0[66];
  v20 = v0[65];
  v21 = v0[62];
  v22 = v0[61];
  v23 = v0[59];
  v24 = v0[58];
  v25 = v0[57];
  v26 = v0[56];
  v27 = v0[55];
  v28 = v0[54];
  v3 = v0[50];
  *(v1 - 200) = v0[51];
  *(v1 - 192) = v3;
  v4 = v0[48];
  *(v1 - 184) = v0[49];
  *(v1 - 176) = v4;
  v5 = v0[44];
  *(v1 - 168) = v0[47];
  *(v1 - 160) = v5;
  v6 = v0[40];
  *(v1 - 152) = v0[41];
  *(v1 - 144) = v6;
  *(v1 - 136) = v0[37];
}

uint64_t OUTLINED_FUNCTION_27_3()
{
  result = v0[100];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[95];
  return result;
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1)
{
  *(a1 + 8) = sub_2696EF24C;
  v2 = *(v1 + 736);
  return *(v1 + 528);
}

void OUTLINED_FUNCTION_47_0()
{
  v2 = v0[83];
  v3 = v0[78];
  *(v1 - 144) = v0[77];
  *(v1 - 136) = v2;
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v9 = v0[63];
  v8 = v0[64];
  v10 = v0[35];
  v11 = v0[28];
}

uint64_t OUTLINED_FUNCTION_48_0(uint64_t a1)
{

  return sub_2696F3FC8(v1, a1, type metadata accessor for VideoDataModels.VideoResultDisambiguationModel);
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_2698535C4();
}

uint64_t OUTLINED_FUNCTION_52_0()
{
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[77];
  v7 = v0[76];
  v2 = v0[74];
  v8 = v0[73];
  v9 = v0[72];
}

void OUTLINED_FUNCTION_55_0()
{
  v1 = v0[83];
  v2 = v0[78];
  v3 = v0[77];
}

uint64_t OUTLINED_FUNCTION_56_0()
{
  result = v0;
  v3 = *(v1 - 152);
  v4 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_58()
{

  return swift_once();
}

void OUTLINED_FUNCTION_63()
{
  v2 = *(*(v0 + 552) + 176);

  sub_269830114();
}

void OUTLINED_FUNCTION_66()
{
  v1 = v0[72];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[35];
  v6 = v0[28];
}

void OUTLINED_FUNCTION_68(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

void OUTLINED_FUNCTION_77()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[35];
  v5 = v0[28];
}

uint64_t OUTLINED_FUNCTION_82@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_83()
{
  v2[124] = v1;
  v2[123] = v0;
  v4 = v2[117];
  v5 = v2[69] + 96;

  return sub_2696F3E90(v5, (v2 + 15));
}

uint64_t OUTLINED_FUNCTION_90()
{

  return sub_2698526A4();
}

uint64_t OUTLINED_FUNCTION_91()
{

  return swift_willThrow();
}

void OUTLINED_FUNCTION_110()
{
  v2 = v0[83];
  v3 = v0[78];
  *(v1 - 144) = v0[77];
  *(v1 - 136) = v2;
}

uint64_t OUTLINED_FUNCTION_117()
{

  return sub_269855584();
}

uint64_t OUTLINED_FUNCTION_118()
{
  v2 = *(*(v0 - 320) + 96);

  return sub_269853844();
}

void OUTLINED_FUNCTION_119(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_120()
{
  v3 = v1[114];
  v4 = v1[98];
  v5 = v1[97];
  v6 = v1[96];
}

uint64_t OUTLINED_FUNCTION_121()
{

  return sub_2696F3F6C(v3, v2, v1, v0);
}

void OUTLINED_FUNCTION_122()
{
}

BOOL OUTLINED_FUNCTION_124()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_2696F4A14()
{
  v0 = sub_2698553E4();

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

uint64_t sub_2696F4A68(char a1)
{
  if (a1)
  {
    return 0x6C65636E6163;
  }

  else
  {
    return 0x6D7269666E6F63;
  }
}

uint64_t sub_2696F4A9C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = sub_269853234();
  (*(*(v7 - 8) + 16))(v6, a2, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  sub_269853604();
  sub_269853624();

  return sub_2698535E4();
}

uint64_t sub_2696F4BA0()
{
  v1 = sub_2698548D4();
  v2 = OUTLINED_FUNCTION_8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269830114();
  if (v10)
  {
    v0 = v9;
    sub_269830114();
    if (v11)
    {
      return v0;
    }
  }

  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_281571B38);
  (*(v4 + 16))(v8, v12, v1);
  v13 = sub_2698548B4();
  v14 = sub_269854F34();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_269684000, v13, v14, "DeviceConfirmationFlowStrategy#getLabels: Failed to localize labels for confirmation dialog.", v15, 2u);
    MEMORY[0x26D647170](v15, -1, -1);
  }

  (*(v4 + 8))(v8, v1);
  sub_2696BAE9C();
  swift_allocError();
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *v16 = 7;
  *(v16 + 24) = 3;
  swift_willThrow();
  return v0;
}

uint64_t sub_2696F4DC4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v49 = a4;
  v48 = a3;
  v47 = a2;
  v46 = a1;
  v50 = a5;
  v5 = sub_269852624();
  v6 = OUTLINED_FUNCTION_8(v5);
  v53 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v12);
  v51 = &v40 - v13;
  v14 = type metadata accessor for VideoDataModels.ConfirmationViewModel(0);
  v15 = *(v14 - 8);
  v41 = v14 - 8;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v43 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
  v18 = swift_allocObject();
  v52 = xmmword_269857710;
  *(v18 + 16) = xmmword_269857710;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F8, &unk_26985BB00);
  inited = swift_initStackObject();
  *(inited + 16) = v52;
  v54 = 0xD000000000000011;
  v55 = 0x800000026987CD50;
  v20 = MEMORY[0x277D837D0];
  sub_2698551B4();
  *(inited + 96) = v20;
  *(inited + 72) = 0x6D7269666E6F63;
  *(inited + 80) = 0xE700000000000000;
  sub_269854A04();
  v21 = sub_269852664();
  v22 = MEMORY[0x277D63778];
  *(v18 + 56) = v21;
  *(v18 + 64) = v22;
  __swift_allocate_boxed_opaque_existential_1((v18 + 32));
  sub_269852654();

  sub_269852634();
  v23 = swift_allocObject();
  *(v23 + 16) = v52;
  v24 = swift_initStackObject();
  *(v24 + 16) = v52;
  v54 = 0xD000000000000011;
  v55 = 0x800000026987CD50;
  sub_2698551B4();
  *(v24 + 96) = v20;
  *(v24 + 72) = 0x6C65636E6163;
  *(v24 + 80) = 0xE600000000000000;
  sub_269854A04();
  *(v23 + 56) = v21;
  *(v23 + 64) = MEMORY[0x277D63778];
  __swift_allocate_boxed_opaque_existential_1((v23 + 32));
  sub_269852654();

  v25 = v42;
  sub_269852634();
  v26 = v41;
  v27 = *(v41 + 28);
  v54 = v46;
  v55 = v47;

  v28 = v43;
  sub_269852674();
  v29 = v53;
  v30 = *(v53 + 16);
  v31 = v44;
  v30(v44, v51, v5);
  v32 = v45;
  v30(v45, v31, v5);
  sub_269852674();
  v33 = *(v29 + 8);
  v53 = v29 + 8;
  v33(v31, v5);
  v34 = *(v26 + 36);
  v54 = v48;
  v55 = v49;

  sub_269852674();
  v30(v31, v25, v5);
  v35 = *(v26 + 32);
  v30(v32, v31, v5);
  sub_269852674();
  v33(v31, v5);
  v33(v25, v5);
  v33(v51, v5);
  v36 = type metadata accessor for VideoDataModels(0);
  v37 = v50;
  v50[3] = v36;
  v37[4] = sub_2696F5364();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  sub_2696F53BC(v28, boxed_opaque_existential_1);
  swift_storeEnumTagMultiPayload();
  return sub_2696F5420(v28);
}

unint64_t sub_2696F5364()
{
  result = qword_280323A28;
  if (!qword_280323A28)
  {
    type metadata accessor for VideoDataModels(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323A28);
  }

  return result;
}

uint64_t sub_2696F53BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoDataModels.ConfirmationViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2696F5420(uint64_t a1)
{
  v2 = type metadata accessor for VideoDataModels.ConfirmationViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2696F547C@<X0>(uint64_t a1@<X8>)
{
  v108 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v2 = OUTLINED_FUNCTION_8_9(v1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v94 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v101 = &v94 - v7;
  OUTLINED_FUNCTION_2_13();
  v100 = sub_269851EF4();
  v8 = OUTLINED_FUNCTION_8(v100);
  v98 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v96 = v13 - v12;
  OUTLINED_FUNCTION_2_13();
  v99 = sub_269853874();
  v14 = OUTLINED_FUNCTION_8(v99);
  v97 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v95 = v19 - v18;
  OUTLINED_FUNCTION_2_13();
  v20 = sub_2698538A4();
  v21 = OUTLINED_FUNCTION_8(v20);
  v103 = v22;
  v104 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v102 = v26 - v25;
  OUTLINED_FUNCTION_2_13();
  v107 = type metadata accessor for MediaNLIntent();
  v27 = OUTLINED_FUNCTION_4_3(v107);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v106 = v31 - v30;
  OUTLINED_FUNCTION_2_13();
  v32 = sub_269853F44();
  v33 = OUTLINED_FUNCTION_8(v32);
  v105 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_1();
  v39 = v38 - v37;
  v40 = sub_2698538B4();
  v41 = OUTLINED_FUNCTION_8(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v41);
  v48 = (&v94 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v94 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v94 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v94 - v56;
  MEMORY[0x28223BE20](v55);
  v59 = &v94 - v58;
  sub_269853844();
  v60 = (*(v43 + 88))(v59, v40);
  if (v60 != *MEMORY[0x277D5C128])
  {
    if (v60 == *MEMORY[0x277D5C150])
    {
      OUTLINED_FUNCTION_25_1();
      v65 = v40;
      v66(v54, v59, v40);
      OUTLINED_FUNCTION_4_13();
      v67(v54, v40);
      v68 = v103;
      v69 = *(v103 + 32);
      v70 = OUTLINED_FUNCTION_27_1();
      v71(v70);
      if (sub_269853884() == 0xD00000000000002ALL && 0x800000026987A040 == v72)
      {
      }

      else
      {
        v74 = sub_269855584();

        if ((v74 & 1) == 0)
        {
          v75 = *(v68 + 8);
          v76 = OUTLINED_FUNCTION_27_1();
          v77(v76);
          goto LABEL_25;
        }
      }

      sub_269853004();
    }

    else
    {
      if (v60 != *MEMORY[0x277D5C140])
      {
        v65 = v40;
        if (v60 == *MEMORY[0x277D5C148])
        {
          OUTLINED_FUNCTION_25_1();
          v85(v48, v59, v40);
          OUTLINED_FUNCTION_4_13();
          v86(v48, v40);
          v87 = *v48;
          sub_2696D6C54();
          if (v88)
          {
            v89 = v88;
            v90 = v94;
            sub_269854544();

            v91 = 0;
          }

          else
          {
            v91 = 1;
            v90 = v94;
          }

          v92 = sub_269852474();
          __swift_storeEnumTagSinglePayload(v90, v91, 1, v92);
          sub_2696F5C10(v90, v108);

          sub_26969B0C0(v90, &qword_280323360, &unk_26985AB80);
          return (*(v43 + 8))(v59, v65);
        }

LABEL_25:
        sub_269853014();
        return (*(v43 + 8))(v59, v65);
      }

      OUTLINED_FUNCTION_25_1();
      v65 = v40;
      v78(v51, v59, v40);
      OUTLINED_FUNCTION_4_13();
      v79(v51, v40);
      v68 = v97;
      (*(v97 + 32))(v95, v51, v99);
      v80 = v96;
      sub_269853864();
      v81 = v101;
      sub_2696D3C74();
      (*(v98 + 8))(v80, v100);
      sub_2696F5C10(v81, v108);
      sub_26969B0C0(v81, &qword_280323360, &unk_26985AB80);
    }

    v82 = *(v68 + 8);
    v83 = OUTLINED_FUNCTION_27_1();
    v84(v83);
    return (*(v43 + 8))(v59, v65);
  }

  OUTLINED_FUNCTION_25_1();
  v61(v57, v59, v40);
  OUTLINED_FUNCTION_4_13();
  v62(v57, v40);
  v63 = v105;
  (*(v105 + 32))(v39, v57, v32);
  v64 = v106;
  (*(v63 + 16))(v106, v39, v32);
  v65 = v40;
  if (qword_280322628 != -1)
  {
    OUTLINED_FUNCTION_12_10();
  }

  sub_2696DAEF8();
  sub_269853D54();
  if (v109 < 2u)
  {
    sub_269853004();
  }

  else if (v109 == 2)
  {
    sub_269852FF4();
  }

  else
  {
    sub_269853014();
  }

  sub_2696CC460(v64);
  (*(v63 + 8))(v39, v32);
  return (*(v43 + 8))(v59, v65);
}

uint64_t sub_2696F5C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40[1] = a2;
  v3 = sub_269852594();
  v4 = OUTLINED_FUNCTION_8(v3);
  v40[0] = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = sub_2698523C4();
  v12 = OUTLINED_FUNCTION_8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v21 = OUTLINED_FUNCTION_8_9(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v40 - v24;
  v26 = sub_269852474();
  v27 = OUTLINED_FUNCTION_8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v34 = v33 - v32;
  sub_2696DAE88(a1, v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_26969B0C0(v25, &qword_280323360, &unk_26985AB80);
    return sub_269853014();
  }

  else
  {
    (*(v29 + 32))(v34, v25, v26);
    sub_269852424();
    sub_269852364();
    (*(v14 + 8))(v19, v11);
    v36 = v40[0];
    v37 = (*(v40[0] + 88))(v10, v3);
    if (v37 == *MEMORY[0x277D39B10] || v37 == *MEMORY[0x277D39B08])
    {
      sub_269853004();
      return (*(v29 + 8))(v34, v26);
    }

    else
    {
      v39 = (v29 + 8);
      if (v37 == *MEMORY[0x277D39B18])
      {
        sub_269852FF4();
        return (*v39)(v34, v26);
      }

      else
      {
        sub_269853014();
        (*v39)(v34, v26);
        return (*(v36 + 8))(v10, v3);
      }
    }
  }
}

uint64_t sub_2696F5F2C()
{
  OUTLINED_FUNCTION_2_7();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323540, &qword_26985B830);
  OUTLINED_FUNCTION_8_9(v4);
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_4_7();
  v7 = sub_2698548D4();
  v1[12] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_4_7();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v11);
  v13 = *(v12 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v14 = sub_269851EF4();
  v1[17] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v1[18] = v15;
  v17 = *(v16 + 64);
  v1[19] = OUTLINED_FUNCTION_4_7();
  v18 = sub_269853874();
  v1[20] = v18;
  OUTLINED_FUNCTION_5_12(v18);
  v1[21] = v19;
  v21 = *(v20 + 64);
  v1[22] = OUTLINED_FUNCTION_4_7();
  v22 = sub_2698538A4();
  v1[23] = v22;
  OUTLINED_FUNCTION_5_12(v22);
  v1[24] = v23;
  v25 = *(v24 + 64);
  v1[25] = OUTLINED_FUNCTION_4_7();
  v26 = type metadata accessor for MediaNLIntent();
  v1[26] = v26;
  OUTLINED_FUNCTION_8_9(v26);
  v28 = *(v27 + 64);
  v1[27] = OUTLINED_FUNCTION_4_7();
  v29 = sub_269853F44();
  v1[28] = v29;
  OUTLINED_FUNCTION_5_12(v29);
  v1[29] = v30;
  v32 = *(v31 + 64);
  v1[30] = OUTLINED_FUNCTION_4_7();
  v33 = sub_2698538B4();
  v1[31] = v33;
  OUTLINED_FUNCTION_5_12(v33);
  v1[32] = v34;
  v36 = *(v35 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v37 = sub_269853414();
  v1[38] = v37;
  OUTLINED_FUNCTION_5_12(v37);
  v1[39] = v38;
  v40 = *(v39 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v41, v42, v43);
}

uint64_t sub_2696F6290()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 72);
  sub_269853844();
  v5 = *(v3 + 88);
  v6 = OUTLINED_FUNCTION_22_3();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x277D5C128])
  {
    v10 = *(v0 + 288);
    v9 = *(v0 + 296);
    v11 = *(v0 + 256);
    v13 = *(v0 + 232);
    v12 = *(v0 + 240);
    v15 = *(v0 + 216);
    v14 = *(v0 + 224);
    v16 = OUTLINED_FUNCTION_18_6(v11);
    v17(v16);
    v18 = *(v11 + 96);
    v19 = OUTLINED_FUNCTION_7_16();
    v20(v19);
    (*(v13 + 32))(v12, v10, v14);
    v21 = *(v13 + 16);
    v22 = OUTLINED_FUNCTION_27_1();
    v23(v22);
    if (qword_280322628 != -1)
    {
      OUTLINED_FUNCTION_12_10();
    }

    v24 = *(v0 + 208);
    v25 = *(v0 + 216);
    sub_2696DAEF8();
    sub_269853D54();
    v26 = *(v0 + 352);
    if (v26 == 7)
    {
      v28 = *(v0 + 232);
      v27 = *(v0 + 240);
      v29 = *(v0 + 224);
      sub_2696CC460(*(v0 + 216));
      v30 = *(v28 + 8);
      v31 = OUTLINED_FUNCTION_7_16();
      v32(v31);
LABEL_6:
      v33 = MEMORY[0x277D5BED0];
LABEL_31:
      v79 = *(v0 + 344);
      v80 = *(v0 + 312);
      (*(v80 + 104))(*(v0 + 336), *v33, *(v0 + 304));
      v81 = *(v80 + 32);
      v82 = OUTLINED_FUNCTION_7_16();
      v83(v82);
      goto LABEL_32;
    }

    v48 = sub_2697A9738(v26);
    v51 = *(v0 + 232);
    v50 = *(v0 + 240);
    v53 = *(v0 + 216);
    v52 = *(v0 + 224);
    if (v48 == 7562617 && v49 == 0xE300000000000000)
    {

      sub_2696CC460(v53);
      v76 = *(v51 + 8);
      v77 = OUTLINED_FUNCTION_7_16();
      v78(v77);
    }

    else
    {
      v55 = sub_269855584();

      sub_2696CC460(v53);
      v56 = *(v51 + 8);
      v57 = OUTLINED_FUNCTION_7_16();
      v58(v57);
      if ((v55 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v33 = MEMORY[0x277D5BED8];
    goto LABEL_31;
  }

  if (v8 != *MEMORY[0x277D5C150])
  {
    if (v8 == *MEMORY[0x277D5C140])
    {
      v59 = *(v0 + 272);
      v60 = *(v0 + 248);
      v61 = *(v0 + 256);
      v62 = *(v0 + 168);
      v63 = *(v0 + 176);
      v65 = *(v0 + 152);
      v64 = *(v0 + 160);
      v66 = *(v0 + 144);
      v176 = *(v0 + 136);
      v179 = *(v0 + 328);
      v67 = *(v0 + 128);
      (*(v61 + 16))(v59, *(v0 + 296), v60);
      (*(v61 + 96))(v59, v60);
      (*(v62 + 32))(v63, v59, v64);
      sub_269853864();
      sub_2696D3C74();
      (*(v66 + 8))(v65, v176);
      sub_2696F6CC0(v67, v179);
      v143 = *(v0 + 344);
      v144 = *(v0 + 328);
      v145 = *(v0 + 304);
      v146 = *(v0 + 312);
      v148 = *(v0 + 168);
      v147 = *(v0 + 176);
      v149 = *(v0 + 160);
      sub_26969B0C0(*(v0 + 128), &qword_280323360, &unk_26985AB80);
      (*(v148 + 8))(v147, v149);
      v150 = *(v146 + 32);
      v151 = OUTLINED_FUNCTION_7_16();
      v152(v151);
LABEL_32:
      v85 = *(v0 + 336);
      v84 = *(v0 + 344);
      v86 = *(v0 + 320);
      v87 = *(v0 + 328);
      v88 = *(v0 + 304);
      v89 = *(v0 + 312);
      v160 = *(v0 + 288);
      v161 = *(v0 + 280);
      v162 = *(v0 + 272);
      v164 = *(v0 + 264);
      v166 = *(v0 + 240);
      v168 = *(v0 + 216);
      v170 = *(v0 + 200);
      v172 = *(v0 + 176);
      v90 = *(v0 + 152);
      v175 = *(v0 + 128);
      v177 = *(v0 + 120);
      v180 = *(v0 + 112);
      v91 = *(v0 + 88);
      v92 = *(v0 + 64);
      (*(*(v0 + 256) + 8))(*(v0 + 296), *(v0 + 248));
      v93 = *(v89 + 16);
      v94 = OUTLINED_FUNCTION_7_16();
      v95(v94);
      __swift_storeEnumTagSinglePayload(v91, 0, 1, v88);
      sub_269853834();
      v96 = *(v89 + 8);
      v97 = OUTLINED_FUNCTION_22_3();
      v98(v97);

      OUTLINED_FUNCTION_7_7();
      goto LABEL_45;
    }

    if (v8 == *MEMORY[0x277D5C148])
    {
      v100 = *(v0 + 296);
      v102 = *(v0 + 256);
      v101 = *(v0 + 264);
      v103 = *(v0 + 248);
      v104 = OUTLINED_FUNCTION_18_6(v102);
      v105(v104);
      v106 = *(v102 + 96);
      v107 = OUTLINED_FUNCTION_7_16();
      v108(v107);
      v109 = *v101;
      sub_2696D6C54();
      if (v110)
      {
        v111 = v110;
        v112 = *(v0 + 120);
        sub_269854544();

        v113 = 0;
      }

      else
      {
        v113 = 1;
      }

      v153 = *(v0 + 320);
      v154 = *(v0 + 120);
      v155 = sub_269852474();
      __swift_storeEnumTagSinglePayload(v154, v113, 1, v155);
      sub_2696F6CC0(v154, v153);
      v156 = *(v0 + 344);
      v158 = *(v0 + 312);
      v157 = *(v0 + 320);
      v159 = *(v0 + 304);
      sub_26969B0C0(*(v0 + 120), &qword_280323360, &unk_26985AB80);

      (*(v158 + 32))(v156, v157, v159);
      goto LABEL_32;
    }

    goto LABEL_36;
  }

  v34 = *(v0 + 296);
  v35 = *(v0 + 280);
  v36 = *(v0 + 256);
  v38 = *(v0 + 192);
  v37 = *(v0 + 200);
  v39 = *(v0 + 184);
  v40 = OUTLINED_FUNCTION_18_6(v36);
  v41(v40);
  v42 = *(v36 + 96);
  v43 = OUTLINED_FUNCTION_7_16();
  v44(v43);
  (*(v38 + 32))(v37, v35, v39);
  if (sub_269853884() == 0xD00000000000002ALL && 0x800000026987A040 == v45)
  {
  }

  else
  {
    v47 = sub_269855584();

    if ((v47 & 1) == 0)
    {
      (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
LABEL_36:
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v115 = *(v0 + 104);
      v114 = *(v0 + 112);
      __swift_project_value_buffer(*(v0 + 96), qword_28033D910);
      v116 = OUTLINED_FUNCTION_2_8();
      v117(v116);
      v118 = sub_2698548B4();
      v119 = sub_269854F24();
      if (OUTLINED_FUNCTION_19_5(v119))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_31_0(&dword_269684000, v120, v121, "Unsupported parse type");
        OUTLINED_FUNCTION_18_7();
      }

      v123 = *(v0 + 104);
      v122 = *(v0 + 112);
      v124 = *(v0 + 96);

      v125 = *(v123 + 8);
      v126 = OUTLINED_FUNCTION_22_3();
      v127(v126);
      sub_2696BAE9C();
      OUTLINED_FUNCTION_20_4();
      swift_allocError();
      OUTLINED_FUNCTION_5_14(v128, 13);
      swift_willThrow();
      goto LABEL_44;
    }
  }

  v68 = *(v0 + 200);
  v69 = sub_269853894();
  if (v69)
  {
    sub_26981CFD4(0xD000000000000011, 0x800000026987CD50, v69);

    if (*(v0 + 40))
    {
      if (swift_dynamicCast())
      {
        v70 = *(v0 + 48);
        v71 = *(v0 + 56);
        v72 = sub_2696F4A14();
        if (v72 != 2)
        {
          v73 = v72;
          v74 = *(v0 + 312);
          (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
          if (v73)
          {
            v75 = MEMORY[0x277D5BED0];
          }

          else
          {
            v75 = MEMORY[0x277D5BED8];
          }

          (*(v74 + 104))(*(v0 + 344), *v75, *(v0 + 304));
          goto LABEL_32;
        }
      }

      goto LABEL_43;
    }
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  sub_26969B0C0(v0 + 16, &qword_280322F88, qword_26985AB90);
LABEL_43:
  v130 = *(v0 + 192);
  v129 = *(v0 + 200);
  v131 = *(v0 + 184);
  sub_2696BAE9C();
  OUTLINED_FUNCTION_20_4();
  swift_allocError();
  OUTLINED_FUNCTION_5_14(v132, 4);
  swift_willThrow();
  (*(v130 + 8))(v129, v131);
LABEL_44:
  v133 = *(v0 + 336);
  v134 = *(v0 + 344);
  v136 = *(v0 + 320);
  v135 = *(v0 + 328);
  v137 = *(v0 + 288);
  v139 = *(v0 + 272);
  v138 = *(v0 + 280);
  v140 = *(v0 + 264);
  v163 = *(v0 + 240);
  v165 = *(v0 + 216);
  v167 = *(v0 + 200);
  v169 = *(v0 + 176);
  v171 = *(v0 + 152);
  v173 = *(v0 + 128);
  v174 = *(v0 + 120);
  v141 = *(v0 + 112);
  v178 = *(v0 + 88);
  (*(*(v0 + 256) + 8))(*(v0 + 296), *(v0 + 248));

  OUTLINED_FUNCTION_7_7();
LABEL_45:

  return v99();
}

uint64_t sub_2696F6CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v47 = sub_269852594();
  v3 = OUTLINED_FUNCTION_8(v47);
  v46 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = sub_2698523C4();
  v11 = OUTLINED_FUNCTION_8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v20 = OUTLINED_FUNCTION_8_9(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v44 - v23;
  v25 = sub_269852474();
  v26 = OUTLINED_FUNCTION_8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v33 = v32 - v31;
  sub_2696DAE88(a1, v24);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    sub_26969B0C0(v24, &qword_280323360, &unk_26985AB80);
    sub_2696BAE9C();
    OUTLINED_FUNCTION_20_4();
    swift_allocError();
    OUTLINED_FUNCTION_5_14(v34, 11);
    return swift_willThrow();
  }

  (*(v28 + 32))(v33, v24, v25);
  sub_269852424();
  sub_269852364();
  (*(v13 + 8))(v18, v10);
  v36 = v46;
  v37 = v47;
  v38 = (*(v46 + 88))(v9, v47);
  if (v38 == *MEMORY[0x277D39B10])
  {
    v39 = MEMORY[0x277D5BED8];
LABEL_7:
    (*(v28 + 8))(v33, v25);
    v40 = *v39;
    v41 = sub_269853414();
    OUTLINED_FUNCTION_4_3(v41);
    return (*(v42 + 104))(v45, v40);
  }

  if (v38 == *MEMORY[0x277D39B08])
  {
    v39 = MEMORY[0x277D5BED0];
    goto LABEL_7;
  }

  sub_2696BAE9C();
  OUTLINED_FUNCTION_20_4();
  swift_allocError();
  *v43 = 0xD00000000000001FLL;
  *(v43 + 8) = 0x800000026987CD30;
  *(v43 + 16) = 0;
  *(v43 + 24) = 1;
  swift_willThrow();
  (*(v28 + 8))(v33, v25);
  return (*(v36 + 8))(v9, v37);
}

uint64_t sub_2696F7074()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_4_7();
  v7 = sub_269853634();
  v1[11] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_4_7();
  v11 = sub_269853234();
  v1[14] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[15] = v12;
  v14 = *(v13 + 64);
  v1[16] = OUTLINED_FUNCTION_4_7();
  v15 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2696F7188()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[8];
  sub_269854654();
  v2 = sub_2698547B4();
  if (v2 == sub_2698547B4() || (v3 = v0[8], sub_269854654(), v4 = sub_2698547B4(), v5 = 0, v4 == sub_2698547B4()))
  {
    v6 = v0[8];
    sub_269854634();
    v5 = v7;
  }

  v0[17] = v5;
  v8 = v0[9];
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_2696F7280;
  OUTLINED_FUNCTION_22_3();

  return sub_2696BD964();
}

uint64_t sub_2696F7280()
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

  if (v0)
  {
    v8 = sub_2696F79B0;
  }

  else
  {
    v9 = v3[17];

    v8 = sub_2696F7390;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2696F7390()
{
  v1 = v0[9];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v3 = OUTLINED_FUNCTION_7_16();
  if (sub_2696CB5D4(v3, v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = v1[5];
    v7 = v1[6];
    OUTLINED_FUNCTION_36_0(v1 + 2);
    OUTLINED_FUNCTION_22_3();
    v5 = sub_269852CE4();
  }

  v8 = v0[16];
  v9 = v0[13];
  v11 = v0[9];
  v10 = v0[10];
  v12 = *(v11 + 96);
  sub_269835870();
  sub_269852E74();
  v13 = swift_task_alloc();
  v13[2] = v8;
  v13[3] = 0xD00000000000001DLL;
  v13[4] = 0x800000026987AF50;
  sub_2698535C4();

  if (v5)
  {
    v14 = v0[20];
    v15 = sub_2696F4BA0();
    if (v14)
    {
      v19 = v0[19];
      v21 = v0[15];
      v20 = v0[16];
      v22 = v0[14];
      (*(v0[12] + 8))(v0[13], v0[11]);
      v23 = *(v21 + 8);
      v24 = OUTLINED_FUNCTION_7_16();
      v25(v24);

      v26 = v0[16];
      v27 = v0[13];
      v28 = v0[10];

      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_71();

      __asm { BRAA            X1, X16 }
    }

    v48 = v15;
    v49 = v16;
    v50 = v17;
    v51 = v18;
    v52 = v0[19];
    v53 = v0[9];
    v54 = *(v53 + 128);
    v55 = *(v53 + 136);
    OUTLINED_FUNCTION_36_0((v11 + 104));
    sub_2696F4DC4(v48, v49, v50, v51, v0 + 2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v56 = OUTLINED_FUNCTION_35_0();
    v0[23] = v56;
    *(v56 + 16) = xmmword_2698590C0;
    *(v56 + 32) = v52;
    v57 = *(MEMORY[0x277D5BE48] + 4);
    v58 = v52;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[24] = v59;
    *v59 = v60;
    v59[1] = sub_2696F78AC;
    v61 = v0[13];
    v62 = v0[7];
    OUTLINED_FUNCTION_71();

    return MEMORY[0x2821BB478]();
  }

  else
  {
    v31 = v0[19];
    v32 = v0[9];
    v33 = *(v32 + 128);
    v34 = *(v32 + 136);
    OUTLINED_FUNCTION_36_0((v11 + 104));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v35 = OUTLINED_FUNCTION_35_0();
    v0[21] = v35;
    *(v35 + 16) = xmmword_2698590C0;
    *(v35 + 32) = v31;
    v36 = *(MEMORY[0x277D5BE58] + 4);
    v37 = v31;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[22] = v38;
    *v38 = v39;
    v38[1] = sub_2696F76F0;
    v40 = v0[13];
    v41 = v0[7];
    OUTLINED_FUNCTION_9_10();
    OUTLINED_FUNCTION_71();

    return MEMORY[0x2821BB488](v42, v43, v44, v45, v46);
  }
}

uint64_t sub_2696F76F0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 176);
  v3 = *(v1 + 168);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2696F77F0()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  (*(v0[12] + 8))(v0[13], v0[11]);
  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_7_16();
  v8(v7);

  OUTLINED_FUNCTION_7_7();

  return v9();
}

uint64_t sub_2696F78AC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *(v4 + 184);
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2696F79B0()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[17];

  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[10];

  OUTLINED_FUNCTION_7_7();

  return v6();
}

uint64_t sub_2696F7A34()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_4_7();
  v6 = sub_269853634();
  v1[5] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_4_7();
  v10 = sub_2698548D4();
  v1[8] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[9] = v11;
  v13 = *(v12 + 64);
  v1[10] = OUTLINED_FUNCTION_4_7();
  v14 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2696F7B44()
{
  OUTLINED_FUNCTION_34();
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v0[9];
  v1 = v0[10];
  __swift_project_value_buffer(v0[8], qword_28033D910);
  v3 = OUTLINED_FUNCTION_2_8();
  v4(v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v6))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_31_0(&dword_269684000, v7, v8, "DeviceConfirmationStrategy.makeConfirmationRejectedResponse() called");
    OUTLINED_FUNCTION_18_7();
  }

  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  v12 = v0[3];

  v13 = *(v10 + 8);
  v14 = OUTLINED_FUNCTION_22_3();
  v15(v14);
  v16 = *__swift_project_boxed_opaque_existential_1((v12 + 56), *(v12 + 80));
  v17 = OUTLINED_FUNCTION_34_1(&dword_26985F698);
  v0[11] = v17;
  *v17 = v0;
  v18 = OUTLINED_FUNCTION_19_6(v17);

  return v19(v18);
}

uint64_t sub_2696F7CA0()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_6_13();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[10];
    v12 = v5[7];
    v13 = v5[4];

    OUTLINED_FUNCTION_7_7();

    return v14();
  }

  else
  {
    v5[12] = v3;
    v16 = OUTLINED_FUNCTION_3_16();

    return MEMORY[0x2822009F8](v16, v17, v18);
  }
}

uint64_t sub_2696F7DE4()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_32_0();
  v3 = v1[16];
  v4 = v1[17];
  OUTLINED_FUNCTION_36_0(v1 + 13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v5 = OUTLINED_FUNCTION_35_0();
  v0[13] = v5;
  *(v5 + 16) = xmmword_2698590C0;
  *(v5 + 32) = v2;
  v6 = *(MEMORY[0x277D5BE58] + 4);
  v7 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[14] = v8;
  *v8 = v9;
  v8[1] = sub_2696F7EE4;
  v10 = v0[7];
  v11 = v0[2];
  OUTLINED_FUNCTION_9_10();

  return MEMORY[0x2821BB488](v12, v13, v14, v15, v16);
}

uint64_t sub_2696F7EE4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2696F7FE4()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);

  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_22_3();
  v8(v7);

  OUTLINED_FUNCTION_7_7();

  return v9();
}

uint64_t sub_2696F8088()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_4_7();
  v6 = sub_269853634();
  v1[5] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_4_7();
  v10 = sub_2698548D4();
  v1[8] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[9] = v11;
  v13 = *(v12 + 64);
  v1[10] = OUTLINED_FUNCTION_4_7();
  v14 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2696F8198()
{
  OUTLINED_FUNCTION_34();
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v0[9];
  v1 = v0[10];
  __swift_project_value_buffer(v0[8], qword_28033D910);
  v3 = OUTLINED_FUNCTION_2_8();
  v4(v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v6))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_31_0(&dword_269684000, v7, v8, "DeviceConfirmationStrategy.makeFlowCancelledResponse() called");
    OUTLINED_FUNCTION_18_7();
  }

  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  v12 = v0[3];

  v13 = *(v10 + 8);
  v14 = OUTLINED_FUNCTION_22_3();
  v15(v14);
  v16 = *__swift_project_boxed_opaque_existential_1((v12 + 56), *(v12 + 80));
  v17 = OUTLINED_FUNCTION_34_1(&dword_26985F698);
  v0[11] = v17;
  *v17 = v0;
  v18 = OUTLINED_FUNCTION_19_6(v17);

  return v19(v18);
}

uint64_t sub_2696F82F4()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_6_13();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[10];
    v12 = v5[7];
    v13 = v5[4];

    OUTLINED_FUNCTION_7_7();

    return v14();
  }

  else
  {
    v5[12] = v3;
    v16 = OUTLINED_FUNCTION_3_16();

    return MEMORY[0x2822009F8](v16, v17, v18);
  }
}

uint64_t sub_2696F8438()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_32_0();
  v3 = v1[16];
  v4 = v1[17];
  OUTLINED_FUNCTION_36_0(v1 + 13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v5 = OUTLINED_FUNCTION_35_0();
  v0[13] = v5;
  *(v5 + 16) = xmmword_2698590C0;
  *(v5 + 32) = v2;
  v6 = *(MEMORY[0x277D5BE58] + 4);
  v7 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[14] = v8;
  *v8 = v9;
  v8[1] = sub_2696F8538;
  v10 = v0[7];
  v11 = v0[2];
  OUTLINED_FUNCTION_9_10();

  return MEMORY[0x2821BB488](v12, v13, v14, v15, v16);
}

uint64_t sub_2696F8538()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2696F867C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_2696F5F2C();
}

uint64_t sub_2696F8724(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2696DAF80;

  return sub_2696F7074();
}

uint64_t sub_2696F87CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B658] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeviceConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821BA040](a1, a2, v10, a4);
}

uint64_t sub_2696F8890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B660] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeviceConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821BA048](a1, a2, v10, a4);
}

uint64_t sub_2696F8954()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DA938;

  return sub_2696F7A34();
}

uint64_t sub_2696F89EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_2696F8088();
}

uint64_t sub_2696F8A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B650] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2696DAF80;

  return MEMORY[0x2821BA038](a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_34_1@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_35_1()
{
  v2 = v0[12];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];

  return sub_269852EA4();
}

uint64_t sub_2696F8BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a1;
  v147 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v3 = OUTLINED_FUNCTION_8_9(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_3();
  v126 = v6;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v7);
  v137 = &v125 - v8;
  OUTLINED_FUNCTION_2_13();
  v136 = sub_269851EF4();
  v9 = OUTLINED_FUNCTION_8(v136);
  v134 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v132 = v14 - v13;
  OUTLINED_FUNCTION_2_13();
  v135 = sub_269853874();
  v15 = OUTLINED_FUNCTION_8(v135);
  v133 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v131 = v20 - v19;
  OUTLINED_FUNCTION_2_13();
  v21 = sub_2698538A4();
  v22 = OUTLINED_FUNCTION_8(v21);
  v141 = v23;
  v142 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v140 = v27 - v26;
  OUTLINED_FUNCTION_2_13();
  v143 = type metadata accessor for MediaNLIntent();
  v28 = OUTLINED_FUNCTION_4_3(v143);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_1();
  v148 = v32 - v31;
  OUTLINED_FUNCTION_2_13();
  v33 = sub_269853F44();
  v34 = OUTLINED_FUNCTION_8(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_1();
  v41 = v40 - v39;
  v42 = sub_2698538B4();
  v43 = OUTLINED_FUNCTION_8(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_24_3();
  v125 = v48;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v49);
  v130 = &v125 - v50;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v51);
  v139 = &v125 - v52;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v53);
  v144 = &v125 - v54;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v55);
  v57 = &v125 - v56;
  v58 = sub_2698548D4();
  v59 = OUTLINED_FUNCTION_8(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_24_3();
  v138 = v64;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v65);
  v67 = &v125 - v66;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v68 = __swift_project_value_buffer(v58, qword_28033D910);
  v69 = v61;
  v70 = *(v61 + 16);
  v128 = v68;
  v149 = v58;
  v129 = v61 + 16;
  v127 = v70;
  (v70)(v67);
  v71 = sub_2698548B4();
  sub_269854F04();
  OUTLINED_FUNCTION_45_0();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = OUTLINED_FUNCTION_16_2();
    v145 = v41;
    *v73 = 0;
    _os_log_impl(&dword_269684000, v71, v58, "In action for input", v73, 2u);
    v41 = v145;
    OUTLINED_FUNCTION_10();
  }

  v74 = *(v69 + 8);
  v74(v67, v149);
  sub_269853844();
  v75 = (*(v45 + 88))(v57, v42);
  if (v75 != *MEMORY[0x277D5C128])
  {
    if (v75 == *MEMORY[0x277D5C150])
    {
      OUTLINED_FUNCTION_36_1();
      v83 = v139;
      v84 = OUTLINED_FUNCTION_13_8();
      v85(v84);
      v86 = OUTLINED_FUNCTION_8_11();
      v87(v86);
      v89 = v140;
      v88 = v141;
      v90 = v142;
      (*(v141 + 32))(v140, v83, v142);
      if (sub_269853884() == 0xD00000000000002CLL && 0x800000026987A070 == v91)
      {
      }

      else
      {
        v93 = sub_269855584();

        if ((v93 & 1) == 0)
        {
          (*(v88 + 8))(v89, v90);
          goto LABEL_31;
        }
      }

      sub_269853004();
      (*(v88 + 8))(v89, v90);
      return (*(v45 + 8))(v57, v42);
    }

    if (v75 == *MEMORY[0x277D5C140])
    {
      OUTLINED_FUNCTION_36_1();
      v99 = v130;
      v100 = OUTLINED_FUNCTION_13_8();
      v101(v100);
      v102 = OUTLINED_FUNCTION_8_11();
      v103(v102);
      v104 = v133;
      v105 = v131;
      v106 = v135;
      (*(v133 + 32))(v131, v99, v135);
      v107 = v132;
      sub_269853864();
      v108 = v137;
      sub_2696D3C74();
      (*(v134 + 8))(v107, v136);
      sub_2696F95F4(v147);
      sub_26969B0C0(v108, &qword_280323360, &unk_26985AB80);
      (*(v104 + 8))(v105, v106);
      return (*(v45 + 8))(v57, v42);
    }

    if (v75 == *MEMORY[0x277D5C148])
    {
      OUTLINED_FUNCTION_36_1();
      v109 = v125;
      v110 = OUTLINED_FUNCTION_13_8();
      v111(v110);
      v112 = OUTLINED_FUNCTION_8_11();
      v113(v112);
      v114 = *v109;
      sub_2696D6C54();
      if (v115)
      {
        v116 = v115;
        v117 = v126;
        sub_269854544();

        v118 = 0;
      }

      else
      {
        v118 = 1;
        v117 = v126;
      }

      v124 = sub_269852474();
      __swift_storeEnumTagSinglePayload(v117, v118, 1, v124);
      sub_2696F95F4(v147);

      sub_26969B0C0(v117, &qword_280323360, &unk_26985AB80);
      return (*(v45 + 8))(v57, v42);
    }

LABEL_31:
    sub_269853014();
    return (*(v45 + 8))(v57, v42);
  }

  OUTLINED_FUNCTION_36_1();
  v76 = v144;
  v77 = OUTLINED_FUNCTION_13_8();
  v78(v77);
  v79 = OUTLINED_FUNCTION_8_11();
  v80(v79);
  (*(v36 + 32))(v41, v76, v33);
  v81 = v148;
  (*(v36 + 16))(v148, v41, v33);
  if (sub_2697AC034())
  {
    sub_269852FF4();
    OUTLINED_FUNCTION_3_19();
    sub_2696FD654(v81, v82);
    (*(v36 + 8))(v41, v33);
  }

  else
  {
    v145 = v41;
    if (qword_2803225D8 != -1)
    {
      OUTLINED_FUNCTION_18_9();
    }

    OUTLINED_FUNCTION_10_10();
    v96 = sub_2696FD6AC(v94, v95);
    sub_269853D54();
    if (v150)
    {

      OUTLINED_FUNCTION_39_0();
      if (v97)
      {
        goto LABEL_23;
      }
    }

    if (qword_2803225E8 != -1)
    {
      swift_once();
    }

    sub_269853D54();
    if (v150 && (, OUTLINED_FUNCTION_39_0(), v98))
    {
LABEL_23:
      sub_269853004();
    }

    else
    {
      v127(v138, v128, v149);
      v119 = sub_2698548B4();
      v120 = sub_269854F14();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v121);
        _os_log_impl(&dword_269684000, v119, v120, "actionForInput does not contain valid mediaIntent.destinationDeviceId, ignoring.", v96, 2u);
        OUTLINED_FUNCTION_18_7();
      }

      v74(v138, v149);
      sub_269853014();
    }

    OUTLINED_FUNCTION_3_19();
    sub_2696FD654(v148, v122);
    (*(v36 + 8))(v145, v33);
  }

  return (*(v45 + 8))(v57, v42);
}

uint64_t sub_2696F95F4@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_269852594();
  v2 = OUTLINED_FUNCTION_8(v1);
  v48 = v3;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v2);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v49 = sub_2698523C4();
  v11 = OUTLINED_FUNCTION_8(v49);
  v47 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_24_3();
  v46 = v15;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v20 = OUTLINED_FUNCTION_8_9(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v46 - v23;
  v25 = sub_269852474();
  v26 = OUTLINED_FUNCTION_8(v25);
  v50 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v32 = v31 - v30;
  v33 = OUTLINED_FUNCTION_7_16();
  sub_26969B138(v33, v34, &qword_280323360, &unk_26985AB80);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    sub_26969B0C0(v24, &qword_280323360, &unk_26985AB80);
    return sub_269853014();
  }

  else
  {
    (*(v50 + 32))(v32, v24, v25);
    sub_269852424();
    sub_269852364();
    v36 = *(v47 + 8);
    v36(v18, v49);
    v37 = v48;
    (*(v48 + 104))(v8, *MEMORY[0x277D39B18], v1);
    sub_2696FD6AC(&qword_2803238E8, MEMORY[0x277D39B20]);
    v38 = sub_269854A54();
    v39 = *(v37 + 8);
    v39(v8, v1);
    v39(v10, v1);
    if (v38)
    {
      sub_269852FF4();
      return (*(v50 + 8))(v32, v25);
    }

    else
    {
      v40 = v46;
      sub_269852424();
      v41 = sub_2698520D4();
      v43 = v42;
      v36(v40, v49);

      v44 = HIBYTE(v43) & 0xF;
      if ((v43 & 0x2000000000000000) == 0)
      {
        v44 = v41 & 0xFFFFFFFFFFFFLL;
      }

      v45 = (v50 + 8);
      if (v44)
      {
        sub_269853004();
      }

      else
      {
        sub_269853014();
      }

      return (*v45)(v32, v25);
    }
  }
}

uint64_t sub_2696F99FC()
{
  OUTLINED_FUNCTION_2_7();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v5 = sub_269852474();
  v1[15] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[16] = v6;
  v8 = *(v7 + 64);
  v1[17] = OUTLINED_FUNCTION_4_7();
  v9 = sub_2698523C4();
  v1[18] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[19] = v10;
  v12 = *(v11 + 64);
  v1[20] = OUTLINED_FUNCTION_4_7();
  v13 = sub_269851EF4();
  v1[21] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v1[22] = v14;
  v16 = *(v15 + 64);
  v1[23] = OUTLINED_FUNCTION_4_7();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v17);
  v19 = *(v18 + 64);
  v1[24] = OUTLINED_FUNCTION_4_7();
  v20 = sub_269853874();
  v1[25] = v20;
  OUTLINED_FUNCTION_5_12(v20);
  v1[26] = v21;
  v23 = *(v22 + 64);
  v1[27] = OUTLINED_FUNCTION_4_7();
  v24 = sub_2698538A4();
  v1[28] = v24;
  OUTLINED_FUNCTION_5_12(v24);
  v1[29] = v25;
  v27 = *(v26 + 64);
  v1[30] = OUTLINED_FUNCTION_4_7();
  v28 = type metadata accessor for MediaNLIntent();
  v1[31] = v28;
  OUTLINED_FUNCTION_8_9(v28);
  v30 = *(v29 + 64);
  v1[32] = OUTLINED_FUNCTION_4_7();
  v31 = sub_2698548D4();
  v1[33] = v31;
  OUTLINED_FUNCTION_5_12(v31);
  v1[34] = v32;
  v34 = *(v33 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v35 = sub_269853F44();
  v1[39] = v35;
  OUTLINED_FUNCTION_5_12(v35);
  v1[40] = v36;
  v38 = *(v37 + 64);
  v1[41] = OUTLINED_FUNCTION_4_7();
  v39 = sub_2698538B4();
  v1[42] = v39;
  OUTLINED_FUNCTION_5_12(v39);
  v1[43] = v40;
  v42 = *(v41 + 64) + 15;
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v43 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v43, v44, v45);
}

uint64_t sub_2696F9D6C()
{
  v264 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = *(v0 + 96);
  sub_269853844();
  v5 = *(v3 + 88);
  v6 = OUTLINED_FUNCTION_22_3();
  v8 = v7(v6);
  v9 = 0x280322000uLL;
  if (v8 == *MEMORY[0x277D5C128])
  {
    v11 = *(v0 + 376);
    v10 = *(v0 + 384);
    v12 = *(v0 + 344);
    v14 = *(v0 + 320);
    v13 = *(v0 + 328);
    v15 = *(v0 + 312);
    v16 = OUTLINED_FUNCTION_18_6(v12);
    v17(v16);
    v18 = *(v12 + 96);
    v19 = OUTLINED_FUNCTION_7_16();
    v20(v19);
    v21 = *(v14 + 32);
    v22 = OUTLINED_FUNCTION_15_6();
    v23(v22);
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v24 = *(v0 + 304);
    v25 = *(v0 + 272);
    __swift_project_value_buffer(*(v0 + 264), qword_28033D910);
    v26 = OUTLINED_FUNCTION_9_11();
    v27(v26);
    v28 = sub_2698548B4();
    sub_269854F14();
    OUTLINED_FUNCTION_45_0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v30);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v31, v32, "DevicesDisambiguationStrategy.parseDisambiguationResult using NLv3Intent");
      OUTLINED_FUNCTION_18_7();
    }

    v34 = *(v0 + 320);
    v33 = *(v0 + 328);
    v36 = *(v0 + 304);
    v35 = *(v0 + 312);
    v37 = *(v0 + 264);
    v38 = *(v0 + 272);
    v39 = *(v0 + 256);

    (*(v38 + 8))(v36, v37);
    (*(v34 + 16))(v39, v33, v35);
    if (qword_2803225D8 != -1)
    {
      OUTLINED_FUNCTION_18_9();
    }

    v40 = *(v0 + 384);
    v41 = *(v0 + 336);
    v42 = *(v0 + 344);
    v44 = *(v0 + 320);
    v43 = *(v0 + 328);
    v45 = *(v0 + 312);
    v47 = *(v0 + 248);
    v46 = *(v0 + 256);
    OUTLINED_FUNCTION_10_10();
    sub_2696FD6AC(v48, v49);
    sub_269853D54();
    OUTLINED_FUNCTION_3_19();
    sub_2696FD654(v46, v50);
    v51 = *(v44 + 8);
    v52 = OUTLINED_FUNCTION_22_3();
    v53(v52);
    v54 = *(v0 + 72);
    v254 = *(v0 + 64);
    (*(v42 + 8))(v40, v41);
    if (v54)
    {
      v55 = v54;

      v56 = v254;
      goto LABEL_38;
    }

LABEL_20:
    v56 = 0;
LABEL_55:
    v9 = 0x280322000;
    goto LABEL_66;
  }

  if (v8 == *MEMORY[0x277D5C150])
  {
    v57 = *(v0 + 384);
    v58 = *(v0 + 368);
    v59 = *(v0 + 344);
    v61 = *(v0 + 232);
    v60 = *(v0 + 240);
    v62 = *(v0 + 224);
    v63 = OUTLINED_FUNCTION_18_6(v59);
    v64(v63);
    v65 = *(v59 + 96);
    v66 = OUTLINED_FUNCTION_7_16();
    v67(v66);
    v68 = *(v61 + 32);
    v69 = OUTLINED_FUNCTION_15_6();
    v70(v69);
    if (sub_269853884() == 0xD00000000000002CLL && 0x800000026987A070 == v71)
    {
    }

    else
    {
      v73 = sub_269855584();

      if ((v73 & 1) == 0)
      {
        (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
LABEL_33:
        v147 = *(v0 + 384);
        v149 = *(v0 + 336);
        v148 = *(v0 + 344);
        sub_2696BAE9C();
        swift_allocError();
        OUTLINED_FUNCTION_5_14(v150, 6);
        swift_willThrow();
        (*(v148 + 8))(v147, v149);
        goto LABEL_77;
      }
    }

    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v99 = *(v0 + 296);
    v100 = *(v0 + 264);
    v101 = *(v0 + 272);
    __swift_project_value_buffer(v100, qword_28033D910);
    v102 = OUTLINED_FUNCTION_9_11();
    v103(v102);
    v104 = sub_2698548B4();
    sub_269854F14();
    OUTLINED_FUNCTION_45_0();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v106);
      _os_log_impl(&dword_269684000, v104, v100, "DevicesDisambiguationStrategy.parseDisambiguationResult using directInvocation", v101, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v107 = *(v0 + 296);
    v108 = *(v0 + 264);
    v109 = *(v0 + 272);
    v110 = *(v0 + 240);

    v111 = *(v109 + 8);
    v112 = OUTLINED_FUNCTION_22_3();
    v113(v112);
    v114 = sub_269853894();
    v116 = *(v0 + 232);
    v115 = *(v0 + 240);
    v117 = *(v0 + 224);
    if (v114)
    {
      sub_26981CFD4(0x696669746E656469, 0xEA00000000007265, v114);

      v118 = *(v116 + 8);
      v119 = OUTLINED_FUNCTION_7_16();
      v120(v119);
      if (*(v0 + 40))
      {
        v121 = swift_dynamicCast();
        v122 = *(v0 + 384);
        v123 = *(v0 + 336);
        v124 = *(v0 + 344);
        if (v121)
        {
          v56 = *(v0 + 48);
          v55 = *(v0 + 56);
          (*(v124 + 8))(v122, v123);
          goto LABEL_37;
        }

        (*(v124 + 8))(v122, v123);
LABEL_65:
        v254 = 0;
        v56 = 0;
LABEL_66:
        if (*(v9 + 1760) == -1)
        {
          goto LABEL_67;
        }

        goto LABEL_83;
      }
    }

    else
    {
      v151 = *(v116 + 8);
      v152 = OUTLINED_FUNCTION_7_16();
      v153(v152);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    v154 = *(v0 + 384);
    v155 = *(v0 + 336);
    v156 = *(v0 + 344);
    sub_26969B0C0(v0 + 16, &qword_280322F88, qword_26985AB90);
    v157 = *(v156 + 8);
    v158 = OUTLINED_FUNCTION_7_16();
    v159(v158);
    goto LABEL_65;
  }

  if (v8 != *MEMORY[0x277D5C140])
  {
    if (v8 != *MEMORY[0x277D5C148])
    {
      goto LABEL_33;
    }

    v125 = *(v0 + 384);
    v127 = *(v0 + 344);
    v126 = *(v0 + 352);
    v128 = *(v0 + 336);
    v129 = OUTLINED_FUNCTION_18_6(v127);
    v130(v129);
    v131 = *(v127 + 96);
    v132 = OUTLINED_FUNCTION_7_16();
    v133(v132);
    v134 = *v126;
    sub_2696D6C54();
    v136 = *(v0 + 344);
    if (v135)
    {
      v137 = v135;
      v139 = *(v0 + 152);
      v138 = *(v0 + 160);
      v250 = *(v0 + 144);
      v254 = *(v0 + 336);
      v259 = *(v0 + 384);
      v141 = *(v0 + 128);
      v140 = *(v0 + 136);
      v142 = *(v0 + 120);
      sub_269854544();

      sub_269852424();
      v143 = *(v141 + 8);
      v144 = OUTLINED_FUNCTION_22_3();
      v145(v144);
      v56 = sub_2698520D4();
      v55 = v146;

      (*(v139 + 8))(v138, v250);
      (*(v136 + 8))(v259, v254);
      goto LABEL_37;
    }

    v204 = *(v136 + 8);
    v205 = OUTLINED_FUNCTION_22_3();
    v206(v205);
    goto LABEL_65;
  }

  v74 = *(v0 + 384);
  v75 = *(v0 + 360);
  v76 = *(v0 + 344);
  v78 = *(v0 + 208);
  v77 = *(v0 + 216);
  v80 = *(v0 + 192);
  v79 = *(v0 + 200);
  v82 = *(v0 + 176);
  v81 = *(v0 + 184);
  v255 = *(v0 + 168);
  v258 = *(v0 + 120);
  v83 = OUTLINED_FUNCTION_18_6(v76);
  v84(v83);
  v85 = *(v76 + 96);
  v86 = OUTLINED_FUNCTION_7_16();
  v87(v86);
  v88 = *(v78 + 32);
  v89 = OUTLINED_FUNCTION_15_6();
  v90(v89);
  sub_269853864();
  sub_2696D3C74();
  (*(v82 + 8))(v81, v255);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, 1, v258);
  v92 = *(v0 + 384);
  v94 = *(v0 + 336);
  v93 = *(v0 + 344);
  v95 = *(v0 + 208);
  v96 = *(v0 + 216);
  v97 = *(v0 + 192);
  v98 = *(v0 + 200);
  if (EnumTagSinglePayload == 1)
  {
    (*(v95 + 8))(*(v0 + 216), *(v0 + 200));
    sub_26969B0C0(v97, &qword_280323360, &unk_26985AB80);
    (*(v93 + 8))(v92, v94);
    v254 = 0;
    goto LABEL_20;
  }

  v161 = *(v0 + 152);
  v160 = *(v0 + 160);
  v251 = *(v0 + 144);
  v254 = *(v0 + 384);
  v260 = *(v0 + 336);
  v162 = *(v0 + 120);
  v163 = *(v0 + 128);
  sub_269852424();
  v164 = *(v163 + 8);
  v165 = OUTLINED_FUNCTION_7_16();
  v166(v165);
  v56 = sub_2698520D4();
  v55 = v167;
  (*(v161 + 8))(v160, v251);
  (*(v95 + 8))(v96, v98);
  (*(v93 + 8))(v254, v260);
LABEL_37:

LABEL_38:
  v168 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v168 = v56 & 0xFFFFFFFFFFFFLL;
  }

  v261 = v55;
  if (!v168)
  {
    v254 = v56;

    v56 = v55;
    goto LABEL_55;
  }

  v169 = *(v0 + 104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A88, &unk_26985BF20);
  v170 = sub_269853544();
  v171 = sub_26975004C(v170);
  for (i = 0; ; ++i)
  {
    if (v171 == i)
    {

      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v179 = *(v0 + 288);
      v180 = *(v0 + 272);
      __swift_project_value_buffer(*(v0 + 264), qword_28033D910);
      v181 = OUTLINED_FUNCTION_9_11();
      v182(v181);

      v183 = sub_2698548B4();
      v184 = sub_269854F24();

      v185 = os_log_type_enabled(v183, v184);
      v186 = *(v0 + 288);
      v187 = *(v0 + 264);
      v188 = *(v0 + 272);
      if (v185)
      {
        v189 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        v263[0] = v190;
        *v189 = 136315138;
        v191 = sub_26974F520(v56, v261, v263);
        v192 = v186;
        v193 = v191;

        *(v189 + 4) = v193;
        OUTLINED_FUNCTION_41_1(&dword_269684000, v194, v195, "DevicesDisambiguationStrategy.parseDisambiguationResult No device matched specified ID: %s");
        __swift_destroy_boxed_opaque_existential_0(v190);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();

        (*(v188 + 8))(v192, v187);
      }

      else
      {

        (*(v188 + 8))(v186, v187);
      }

      goto LABEL_76;
    }

    if ((v170 & 0xC000000000000001) != 0)
    {
      v173 = MEMORY[0x26D646120](i, v170);
    }

    else
    {
      if (i >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      v173 = *(v170 + 8 * i + 32);
    }

    v174 = v173;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (sub_269792A6C() == v56 && v175 == v261)
    {

LABEL_61:
      v197 = *(v0 + 376);
      v196 = *(v0 + 384);
      v199 = *(v0 + 360);
      v198 = *(v0 + 368);
      v235 = *(v0 + 352);
      v236 = *(v0 + 328);
      v237 = *(v0 + 304);
      v238 = *(v0 + 296);
      v239 = *(v0 + 288);
      v240 = *(v0 + 280);
      v242 = *(v0 + 256);
      v244 = *(v0 + 240);
      v246 = *(v0 + 216);
      v248 = *(v0 + 192);
      v252 = *(v0 + 184);
      v256 = *(v0 + 160);
      v262 = *(v0 + 136);
      v200 = *(v0 + 112);
      v201 = *(v0 + 88);

      __swift_project_boxed_opaque_existential_1((v200 + 136), *(v200 + 160));
      v202 = sub_269854654();
      sub_2697B4540(1, v202);
      *(v0 + 80) = v174;
      sub_269854664();
      sub_269853424();

      OUTLINED_FUNCTION_7_7();
      goto LABEL_78;
    }

    v177 = v56;
    v178 = sub_269855584();

    if (v178)
    {
      goto LABEL_61;
    }

    v56 = v177;
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  OUTLINED_FUNCTION_0_10();
LABEL_67:
  v208 = *(v0 + 272);
  v207 = *(v0 + 280);
  __swift_project_value_buffer(*(v0 + 264), qword_28033D910);
  v209 = OUTLINED_FUNCTION_9_11();
  v210(v209);

  v211 = sub_2698548B4();
  v212 = sub_269854F24();

  v213 = os_log_type_enabled(v211, v212);
  v215 = *(v0 + 272);
  v214 = *(v0 + 280);
  v216 = *(v0 + 264);
  if (v213)
  {
    v217 = swift_slowAlloc();
    v218 = swift_slowAlloc();
    v263[0] = v218;
    *v217 = 136315138;
    if (v56)
    {
      v219 = v254;
    }

    else
    {
      v219 = 7104878;
    }

    if (!v56)
    {
      v56 = 0xE300000000000000;
    }

    v220 = sub_26974F520(v219, v56, v263);

    *(v217 + 4) = v220;
    OUTLINED_FUNCTION_41_1(&dword_269684000, v221, v222, "DevicesDisambiguationStrategy.parseDisambiguationResult Empty or missing identifier: %s");
    __swift_destroy_boxed_opaque_existential_0(v218);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  (*(v215 + 8))(v214, v216);
LABEL_76:
  sub_2696BAE9C();
  swift_allocError();
  OUTLINED_FUNCTION_5_14(v223, 6);
  swift_willThrow();
LABEL_77:
  v225 = *(v0 + 376);
  v224 = *(v0 + 384);
  v227 = *(v0 + 360);
  v226 = *(v0 + 368);
  v228 = *(v0 + 352);
  v229 = *(v0 + 328);
  v230 = *(v0 + 296);
  v231 = *(v0 + 304);
  v233 = *(v0 + 280);
  v232 = *(v0 + 288);
  v241 = *(v0 + 256);
  v243 = *(v0 + 240);
  v245 = *(v0 + 216);
  v247 = *(v0 + 192);
  v249 = *(v0 + 184);
  v253 = *(v0 + 160);
  v257 = *(v0 + 136);

  OUTLINED_FUNCTION_7_7();
LABEL_78:

  return v203();
}