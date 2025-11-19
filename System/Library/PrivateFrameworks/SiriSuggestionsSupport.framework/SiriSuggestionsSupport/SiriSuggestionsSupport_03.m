uint64_t sub_2315F7414()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 352);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F74FC()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[34];
  v3 = v0[31];
  v2 = v0[32];
  sub_231606928();
  v4 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[45] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_14_4(v5);

  return MEMORY[0x2822005A8](v7);
}

uint64_t sub_2315F7578()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 360);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 368) = v0;

  if (v0)
  {
    v9 = *(v3 + 336);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F767C()
{
  v133 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 336);
    v3 = *(v0 + 344);
    v5 = *(v0 + 160);
    v6 = *(v0 + 144);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    v7 = sub_2316066C8();
    sub_231606958();

    v8 = OUTLINED_FUNCTION_71_1();
    v9 = *(v0 + 336);
    if (v8)
    {
      v10 = *(v0 + 152);
      v11 = *(v0 + 160);
      v13 = *(v0 + 136);
      v12 = *(v0 + 144);
      if (v11)
      {
        v14 = *(v0 + 160);
      }

      else
      {
        v14 = 0xE300000000000000;
      }

      if (!v11)
      {
        v10 = 4271950;
      }

      v130 = v10;
      v15 = OUTLINED_FUNCTION_63();
      v132[0] = swift_slowAlloc();
      *v15 = 136315650;
      *(v15 + 4) = sub_2315B1574(v13, v12, v132);
      *(v15 + 12) = 2080;

      v16 = sub_2315B1574(v130, v14, v132);

      *(v15 + 14) = v16;
      *(v15 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
      sub_231606718();
      OUTLINED_FUNCTION_75_0();

      v17 = sub_2315B1574(v16, 0x820uLL, v132);

      *(v15 + 24) = v17;
      OUTLINED_FUNCTION_18();
      _os_log_impl(v18, v19, v20, v21, v22, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_17();
    }

    else
    {
    }

    v56 = *(v0 + 296);
    v55 = *(v0 + 304);
    v57 = *(v0 + 288);
    v59 = *(v0 + 264);
    v58 = *(v0 + 272);
    v60 = *(v0 + 256);
    [*(v0 + 176) finalise];
    (*(v59 + 8))(v58, v60);
    v61 = *(v56 + 8);
    v62 = OUTLINED_FUNCTION_36();
    v63(v62);
    goto LABEL_17;
  }

  v23 = *(v0 + 368);
  (*(*(v0 + 208) + 32))(*(v0 + 216), v1, v2);
  v24 = sub_231604F78();
  OUTLINED_FUNCTION_32(v24);
  sub_231604F68();
  sub_231604F48();
  OUTLINED_FUNCTION_4_4();
  sub_2315B3174(v25, v26);
  OUTLINED_FUNCTION_15_4();
  v27 = sub_231604F58();
  if (v23)
  {
    v29 = *(v0 + 336);
    v30 = *(v0 + 296);
    v129 = *(v0 + 304);
    v131 = v23;
    v31 = *(v0 + 264);
    v125 = *(v0 + 272);
    v127 = *(v0 + 288);
    v32 = *(v0 + 248);
    v124 = *(v0 + 256);
    v34 = *(v0 + 232);
    v33 = *(v0 + 240);
    v36 = *(v0 + 208);
    v35 = *(v0 + 216);
    v37 = *(v0 + 200);

    v39 = *(v36 + 8);
    v38 = v36 + 8;
    v39(v35, v37);
    v40 = *(v33 + 8);
    v41 = OUTLINED_FUNCTION_68_0();
    v42(v41);
    (*(v31 + 8))(v125, v124);
    (*(v30 + 8))(v129, v127);
    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v43 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v43, qword_280FE9578);
    v44 = v131;
    v45 = sub_2316066C8();
    sub_231606978();
    OUTLINED_FUNCTION_65_0();
    if (OUTLINED_FUNCTION_71_1())
    {
      OUTLINED_FUNCTION_60();
      v46 = OUTLINED_FUNCTION_21_2();
      v132[0] = v46;
      *v37 = 136315138;
      *(v0 + 64) = v131;
      v47 = v131;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
      v48 = sub_2316067A8();
      sub_2315B1574(v48, v49, v132);
      OUTLINED_FUNCTION_72_1();
      *(v37 + 4) = v38;
      OUTLINED_FUNCTION_35_1(&dword_2315AF000, v50, v35, "could not suggest next turn info because of: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_7_1();
    }

    v51 = *(v0 + 176);
    v52 = *(v0 + 184);
    v53 = sub_2315F53D4();
    v54 = sub_231604F88();

    [v51 connectionErrorWithError_];
LABEL_17:
    OUTLINED_FUNCTION_36_1();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_64_2();

    __asm { BRAA            X1, X16 }
  }

  v66 = v27;
  v67 = v28;
  v69 = *(v0 + 336);
  v68 = *(v0 + 344);
  v70 = *(v0 + 160);
  v71 = *(v0 + 144);
  sub_2315B2F24(v27, v28);

  v72 = OUTLINED_FUNCTION_15_4();
  sub_2315B2F24(v72, v73);
  v74 = sub_2316066C8();
  sub_231606958();

  if (OUTLINED_FUNCTION_71_1())
  {
    v126 = v74;
    v128 = *(v0 + 336);
    v75 = *(v0 + 152);
    v76 = *(v0 + 136);
    v77 = *(v0 + 144);
    if (*(v0 + 160))
    {
      v78 = *(v0 + 160);
      v79 = *(v0 + 152);
    }

    v80 = swift_slowAlloc();
    *(v0 + 80) = swift_slowAlloc();
    *v80 = 136315906;
    *(v80 + 4) = sub_2315B1574(v76, v77, (v0 + 80));
    *(v80 + 12) = 2080;

    v81 = OUTLINED_FUNCTION_72();
    v84 = sub_2315B1574(v81, v82, v83);

    *(v80 + 14) = v84;
    *(v80 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    v85 = sub_231606718();
    v87 = sub_2315B1574(v85, v86, (v0 + 80));

    *(v80 + 24) = v87;
    *(v80 + 32) = 2048;
    switch(v67 >> 62)
    {
      case 1uLL:
        v101 = OUTLINED_FUNCTION_15_4();
        sub_2315B300C(v101, v102);
        LODWORD(v90) = HIDWORD(v66) - v66;
        if (!__OFSUB__(HIDWORD(v66), v66))
        {
          v90 = v90;
          goto LABEL_32;
        }

        __break(1u);
        return MEMORY[0x2822005A8]();
      case 2uLL:
        v95 = *(v66 + 16);
        v96 = *(v66 + 24);
        v97 = OUTLINED_FUNCTION_15_4();
        sub_2315B300C(v97, v98);
        v90 = v96 - v95;
        if (!__OFSUB__(v96, v95))
        {
          goto LABEL_32;
        }

        __break(1u);
        goto LABEL_29;
      case 3uLL:
LABEL_29:
        v99 = OUTLINED_FUNCTION_15_4();
        sub_2315B300C(v99, v100);
        v90 = 0;
        goto LABEL_32;
      default:
        v88 = OUTLINED_FUNCTION_15_4();
        sub_2315B300C(v88, v89);
        v90 = BYTE6(v67);
LABEL_32:
        v74 = v126;
        *(v80 + 34) = v90;
        v103 = OUTLINED_FUNCTION_15_4();
        sub_2315B300C(v103, v104);
        OUTLINED_FUNCTION_47_1();
        _os_log_impl(v105, v106, v107, v108, v80, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_22_4();
        break;
    }
  }

  else
  {
    v91 = OUTLINED_FUNCTION_15_4();
    sub_2315B300C(v91, v92);
    v93 = OUTLINED_FUNCTION_15_4();
    sub_2315B300C(v93, v94);
  }

  v109 = *(v0 + 208);
  v110 = *(v0 + 216);
  v111 = *(v0 + 200);
  v112 = *(v0 + 176);
  OUTLINED_FUNCTION_15_4();
  v113 = sub_231605018();
  [v112 sendSuggestionsWithSuggestions_];

  v114 = OUTLINED_FUNCTION_15_4();
  sub_2315B300C(v114, v115);
  v116 = *(v109 + 8);
  v117 = OUTLINED_FUNCTION_72();
  v118(v117);
  v119 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 360) = v120;
  *v120 = v121;
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_64_2();

  return MEMORY[0x2822005A8]();
}

uint64_t sub_2315F7E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_92();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_4_0();
  a16 = v18;
  v23 = v18[37];
  v22 = v18[38];
  v24 = v18[36];
  v26 = v18[33];
  v25 = v18[34];
  v27 = v18[32];
  (*(v18[30] + 8))(v18[31], v18[29]);
  (*(v26 + 8))(v25, v27);
  v28 = *(v23 + 8);
  v29 = OUTLINED_FUNCTION_36();
  v30(v29);
  v31 = v18[9];
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v32 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v32, qword_280FE9578);
  v33 = v31;
  v34 = sub_2316066C8();
  sub_231606978();

  if (OUTLINED_FUNCTION_7())
  {
    OUTLINED_FUNCTION_60();
    v35 = OUTLINED_FUNCTION_21_2();
    a9 = v35;
    *v27 = 136315138;
    v18[8] = v31;
    v36 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
    v37 = sub_2316067A8();
    sub_2315B1574(v37, v38, &a9);
    OUTLINED_FUNCTION_72_1();
    *(v27 + 4) = v19;
    OUTLINED_FUNCTION_35_1(&dword_2315AF000, v39, v25, "could not suggest next turn info because of: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  v41 = v18[22];
  v40 = v18[23];
  v42 = sub_2315F53D4();
  v43 = sub_231604F88();

  [v41 connectionErrorWithError_];
  OUTLINED_FUNCTION_36_1();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_94();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10);
}

uint64_t sub_2315F8058()
{
  v1 = sub_231604F38();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_231604F28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60840, &qword_231609AD0);
  sub_2315FC354();
  sub_231604F08();

  if (!v0)
  {
    return v5;
  }

  return result;
}

void sub_2315F82B0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_231604F88();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_2315F8314()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_62_2();
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v0;
  v22[5] = v13;
  v22[6] = v11;
  v22[7] = v9;
  v22[8] = v7;
  v22[9] = v5;
  v22[10] = v3;

  v23 = OUTLINED_FUNCTION_5_8();
  sub_2315FD77C(v23, v24, v1, v25, v22);

  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315F8420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v14;
  v8[8] = v15;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_2316061C8();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315F84F4, 0, 0);
}

uint64_t sub_2315F84F4()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0[11];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = v6[6];
  v8 = v6[7];
  __swift_project_boxed_opaque_existential_1(v6 + 3, v7);

  OUTLINED_FUNCTION_15_4();
  sub_231606198();
  v9 = *(MEMORY[0x277D604D8] + 4);
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_2315F85F4;
  v11 = v0[11];

  return MEMORY[0x2821C5D78](v11, v7, v8);
}

uint64_t sub_2315F85F4()
{
  OUTLINED_FUNCTION_10();
  v2 = v1[12];
  v3 = v1[11];
  v4 = v1[10];
  v5 = v1[9];
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_36();
  v10(v9);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F8738()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  (*(v0 + 56))(0);

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_2315F8898(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_62_2();
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_2315B4568(v4 + 128, v23);
  OUTLINED_FUNCTION_74_0();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v18[5] = a2;
  sub_2315B4648(v23, (v18 + 6));
  v18[11] = a3;
  v18[12] = a4;
  v18[13] = v4;
  sub_2315B2F24(a1, a2);

  v19 = OUTLINED_FUNCTION_5_8();
  sub_2315FD77C(v19, v20, v5, v21, v18);
}

uint64_t sub_2315F89B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v14;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = sub_231605E98();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315F8A84, 0, 0);
}

uint64_t sub_2315F8A84()
{
  OUTLINED_FUNCTION_49();
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_231604F38();
  OUTLINED_FUNCTION_32(v3);
  v4 = sub_231604F28();
  v0[2] = 200;
  v0[14] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60848, &qword_231609AF8);
  sub_2315FC56C();
  OUTLINED_FUNCTION_15_4();
  sub_231604F08();
  v0[15] = 0;
  v5 = v0[3];
  v0[16] = v5;
  v6 = qword_280FE9570;
  swift_bridgeObjectRetain_n();
  if (v6 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v7 = sub_2316066E8();
  v0[17] = OUTLINED_FUNCTION_47(v7, qword_280FE9578);

  v8 = sub_2316066C8();
  v9 = sub_231606958();
  if (OUTLINED_FUNCTION_93_0(v9))
  {
    v10 = OUTLINED_FUNCTION_60();
    *v10 = 134217984;
    v11 = *(v5 + 16);

    *(v10 + 4) = v11;

    OUTLINED_FUNCTION_35_1(&dword_2315AF000, v12, v9, "Decoded %ld intent queries: XPC Stream for intent opened.");
    OUTLINED_FUNCTION_7_1();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v13 = v0[7];
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v16 = *(MEMORY[0x277D604E0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[18] = v17;
  *v17 = v18;
  v17[1] = sub_2315F8DF8;
  v19 = v0[13];

  return MEMORY[0x2821C5D90](v19, v5, v14, v15);
}

uint64_t sub_2315F8DF8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 144);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F8EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  v25 = v22[15];
  v26 = v22[13];
  v27 = v22[11];
  v28 = sub_231604F78();
  OUTLINED_FUNCTION_32(v28);
  sub_231604F68();
  sub_231604F48();
  OUTLINED_FUNCTION_4_4();
  sub_2315B3174(v29, v30);
  OUTLINED_FUNCTION_53();
  v31 = sub_231604F58();
  if (v25)
  {
    v33 = v22[14];
    (*(v22[12] + 8))(v22[13], v22[11]);

    v34 = v22[16];
    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v35 = sub_2316066E8();
    v36 = OUTLINED_FUNCTION_17_5(v35, qword_280FE9578);
    v37 = sub_2316066C8();
    v38 = sub_231606978();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_60();
      v40 = OUTLINED_FUNCTION_63();
      a10 = v40;
      *v39 = 136315138;
      v22[4] = v25;
      v41 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
      v42 = sub_2316067A8();
      v44 = sub_2315B1574(v42, v43, &a10);

      *(v39 + 4) = v44;
      OUTLINED_FUNCTION_84_0(&dword_2315AF000, v45, v46, "could not get suggestions because of: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_29();
    }

    v47 = v22[15];
    v49 = v22[9];
    v48 = v22[10];
    v50 = v22[8];
    v51 = sub_2315F53D4();
    v50(0, 0xC000000000000000, v51);

    if (!v47)
    {
    }
  }

  else
  {
    v52 = v31;
    v53 = v32;
    v54 = v22[16];
    v55 = v22[17];

    v56 = OUTLINED_FUNCTION_15_4();
    sub_2315B2F24(v56, v57);
    v58 = sub_2316066C8();
    v59 = sub_231606958();
    if (OUTLINED_FUNCTION_93_0(v59))
    {
      result = OUTLINED_FUNCTION_60();
      *result = 134217984;
      v61 = result;
      v62 = 0;
      switch(v53 >> 62)
      {
        case 1uLL:
          LODWORD(v62) = HIDWORD(v52) - v52;
          if (!__OFSUB__(HIDWORD(v52), v52))
          {
            v62 = v62;
            goto LABEL_15;
          }

          __break(1u);
          goto LABEL_21;
        case 2uLL:
          v66 = *(v52 + 16);
          v65 = *(v52 + 24);
          v67 = __OFSUB__(v65, v66);
          v62 = v65 - v66;
          if (!v67)
          {
            goto LABEL_15;
          }

LABEL_21:
          __break(1u);
          return result;
        case 3uLL:
          goto LABEL_15;
        default:
          v62 = BYTE6(v53);
LABEL_15:
          *(result + 4) = v62;
          v68 = OUTLINED_FUNCTION_15_4();
          sub_2315B300C(v68, v69);
          OUTLINED_FUNCTION_47_1();
          _os_log_impl(v70, v71, v72, v73, v61, 0xCu);
          OUTLINED_FUNCTION_22_4();
          goto LABEL_16;
      }
    }

    v63 = OUTLINED_FUNCTION_15_4();
    sub_2315B300C(v63, v64);
LABEL_16:
    v74 = v58;
    v76 = v22[13];
    v75 = v22[14];
    v77 = v22[11];
    v78 = v22[12];
    v80 = v22[8];
    v79 = v22[9];

    v81 = OUTLINED_FUNCTION_15_4();
    v80(v81);

    v82 = OUTLINED_FUNCTION_15_4();
    sub_2315B300C(v82, v83);
    (*(v78 + 8))(v76, v77);
  }

  v84 = v22[13];

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  return v86(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2315F9324(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = *(v2 + 16);
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v11;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = v2;

  v17 = OUTLINED_FUNCTION_5_8();
  sub_2315FD77C(v17, v18, v10, v19, v16);
}

uint64_t sub_2315F941C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v8 = swift_task_alloc();
  v7[6] = v8;
  *v8 = v7;
  v8[1] = sub_2315F94B8;

  return StatefulSuggestionsClient.refreshService()();
}

uint64_t sub_2315F94B8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F95B4()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 32);
  (*(v0 + 24))(0);
  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_2315F9614()
{
  OUTLINED_FUNCTION_4_0();
  v24 = v0;
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v2 = v0[7];
  v3 = sub_2316066E8();
  v4 = OUTLINED_FUNCTION_17_5(v3, qword_280FE9578);
  v5 = sub_2316066C8();
  sub_231606978();
  OUTLINED_FUNCTION_65_0();
  if (OUTLINED_FUNCTION_71_1())
  {
    v6 = v0[7];
    v7 = OUTLINED_FUNCTION_60();
    v1 = OUTLINED_FUNCTION_63();
    v23 = v1;
    *v7 = 136315138;
    v0[2] = v6;
    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
    v9 = OUTLINED_FUNCTION_89_0();
    v11 = sub_2315B1574(v9, v10, &v23);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_18();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_17();
  }

  v17 = v0[7];
  v19 = v0[4];
  v18 = v0[5];
  v20 = v0[3];
  sub_2315F53D4();
  OUTLINED_FUNCTION_67_2();
  v20();

  OUTLINED_FUNCTION_14();

  return v21();
}

uint64_t sub_2315F9824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60540, &unk_231609000);
  v4[14] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315F98EC, 0, 0);
}

uint64_t sub_2315F98EC()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[10];
  v0[8] = v0[11];
  v4 = *v3;
  v5 = v3[1];
  sub_2315FC964(v3, v1, &qword_27DD60540, &unk_231609000);
  v6 = *(v1 + 8);

  v7 = *(v2 + 48);
  sub_2316061E8();
  v8 = sub_2316061F8();
  v0[19] = v8;
  OUTLINED_FUNCTION_5_1(v8);
  v10 = *(v9 + 8);
  v0[20] = v10;
  v0[21] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1 + v7);
  v11 = *(MEMORY[0x277D60570] + 4);
  v12 = swift_task_alloc();
  v0[22] = v12;
  v13 = type metadata accessor for StatefulSuggestionsClient();
  OUTLINED_FUNCTION_24_3();
  v16 = sub_2315B3174(v14, v15);
  *v12 = v0;
  v12[1] = sub_2315F9A60;
  v17 = v0[12];
  v18 = v0[13];

  return MEMORY[0x2821C5FC8](v17, v18, v4, v5, v0 + 2, v13, v16);
}

uint64_t sub_2315F9A60()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 184) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F9B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *, uint64_t), uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v25 = v22[17];
  v26 = v22[10];
  v27 = sub_2316066E8();
  __swift_project_value_buffer(v27, qword_280FE9578);
  sub_2315FC964(v26, v25, &qword_27DD60540, &unk_231609000);
  v28 = sub_2316066C8();
  v29 = sub_231606958();
  if (OUTLINED_FUNCTION_93_0(v29))
  {
    a9 = v22[20];
    a10 = v22[21];
    v30 = v22[19];
    v32 = v22[16];
    v31 = v22[17];
    v33 = v22[14];
    v34 = OUTLINED_FUNCTION_60();
    v35 = OUTLINED_FUNCTION_63();
    a11 = v35;
    *v34 = 136315138;
    sub_2315FC228(v31, v32);
    v36 = *v32;
    v37 = v32[1];
    a9(v32 + *(v33 + 48), v30);
    v38 = sub_2315B1574(v36, v37, &a11);

    *(v34 + 4) = v38;
    OUTLINED_FUNCTION_18();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_17();
  }

  else
  {
    v44 = v22[17];

    sub_2315B2F7C(v44, &qword_27DD60540, &unk_231609000);
  }

  v46 = v22[17];
  v45 = v22[18];
  v48 = v22[15];
  v47 = v22[16];

  v49 = v22[1];
  OUTLINED_FUNCTION_31();

  return v52(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
}

void sub_2315F9D38()
{
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[10];
  v4 = sub_2316066E8();
  __swift_project_value_buffer(v4, qword_280FE9578);
  sub_2315FC964(v3, v2, &qword_27DD60540, &unk_231609000);
  v5 = v1;
  v6 = sub_2316066C8();
  sub_231606978();

  v7 = OUTLINED_FUNCTION_7();
  v8 = v0[23];
  if (v7)
  {
    v35 = v0[20];
    v36 = v0[21];
    v34 = v0[19];
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    v12 = OUTLINED_FUNCTION_91_0();
    v37 = OUTLINED_FUNCTION_90_0();
    *v12 = 136315394;
    sub_2315FC228(v10, v9);
    v13 = *v9;
    v14 = *(v9 + 1);
    v35(&v9[*(v11 + 48)], v34);
    v15 = OUTLINED_FUNCTION_68_0();
    v18 = sub_2315B1574(v15, v16, v17);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    v0[9] = v8;
    v19 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
    v20 = sub_2316067A8();
    sub_2315B1574(v20, v21, &v37);
    OUTLINED_FUNCTION_72_1();
    *(v12 + 14) = v9;
    OUTLINED_FUNCTION_47_1();
    _os_log_impl(v22, v23, v24, v25, v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {
    v26 = v0[15];

    sub_2315B2F7C(v26, &qword_27DD60540, &unk_231609000);
  }

  v28 = v0[17];
  v27 = v0[18];
  v30 = v0[15];
  v29 = v0[16];

  v31 = v0[1];
  OUTLINED_FUNCTION_33_1();

  __asm { BRAA            X2, X16 }
}

void sub_2315F9F98()
{
  OUTLINED_FUNCTION_93();
  v4 = v0;
  v6 = v5;
  OUTLINED_FUNCTION_79_0();
  v8 = v7;
  v31 = v9;
  v10 = *v0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v17 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v17, qword_280FE9578);
  v18 = sub_2316066C8();
  v19 = sub_231606958();
  if (OUTLINED_FUNCTION_93_0(v19))
  {
    v20 = OUTLINED_FUNCTION_33();
    v30 = v8;
    *v20 = 0;
    _os_log_impl(&dword_2315AF000, v18, v19, "Submitting all local state store properties", v20, 2u);
    v8 = v30;
    OUTLINED_FUNCTION_20();
  }

  v21 = v4[2];
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_76_0();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v31;
  v26[5] = v8;
  v26[6] = v2;
  v26[7] = v1;
  v26[8] = v21;
  v26[9] = v3;
  v26[10] = v6;
  v26[11] = v4;
  v26[12] = v10;

  sub_2315B2F24(v2, v1);

  v27 = OUTLINED_FUNCTION_5_8();
  sub_2315FD77C(v27, v28, v16, v29, v26);

  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315FA19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = v18;
  *(v8 + 16) = v17;
  v14 = swift_task_alloc();
  *(v8 + 40) = v14;
  *v14 = v8;
  v14[1] = sub_2315FA274;

  return sub_2315F4480(a4, a5, a6, a7, a8);
}

uint64_t sub_2315FA274()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315FA370()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_2315FA3D0()
{
  OUTLINED_FUNCTION_21();
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v3 = v1[6];
  v4 = sub_2316066E8();
  v5 = OUTLINED_FUNCTION_17_5(v4, qword_280FE9578);
  v6 = sub_2316066C8();
  sub_231606978();
  OUTLINED_FUNCTION_65_0();
  if (os_log_type_enabled(v6, v0))
  {
    v7 = v1[6];
    OUTLINED_FUNCTION_60();
    v8 = OUTLINED_FUNCTION_41_0();
    *v2 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_69_1(v10);
    OUTLINED_FUNCTION_43_0(&dword_2315AF000, v11, v0, "Error when submitting to state store: %@");
    sub_2315B2F7C(v8, &qword_27DD60278, &unk_231608238);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  v12 = v1[6];
  v14 = v1[3];
  v13 = v1[4];
  v15 = v1[2];

  sub_2315F53D4();
  OUTLINED_FUNCTION_67_2();
  v15();

  OUTLINED_FUNCTION_14();

  return v16();
}

void sub_2315FA55C()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v34 = v3;
  v35 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  v21 = *(v0 + 16);
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_74_0();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v8;
  v26[5] = v6;
  v26[6] = v14;
  v26[7] = v12;
  v28 = v34;
  v27 = v35;
  v26[8] = v21;
  v26[9] = v28;
  v26[10] = v10;
  v26[11] = v27;
  v26[12] = v2;
  v26[13] = v0;
  v29 = OUTLINED_FUNCTION_59_1();
  sub_2315B2F24(v29, v30);

  v31 = OUTLINED_FUNCTION_5_8();
  sub_2315FD77C(v31, v32, v20, v33, v26);

  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315FA690()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 288) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315FA78C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  (*(v0 + 224))(0);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v3 = *(v0 + 264);

  OUTLINED_FUNCTION_14();

  return v4();
}

uint64_t sub_2315FA808()
{
  OUTLINED_FUNCTION_21();
  v3 = v1[34];

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
  v4 = v1[36];
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v5 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v5, qword_280FE9578);
  v6 = v4;
  v7 = sub_2316066C8();
  sub_231606978();

  if (os_log_type_enabled(v7, v0))
  {
    OUTLINED_FUNCTION_60();
    v8 = OUTLINED_FUNCTION_41_0();
    *v2 = 138412290;
    v9 = v4;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_69_1(v10);
    OUTLINED_FUNCTION_43_0(&dword_2315AF000, v11, v0, "Error when submitting to state store: %@");
    sub_2315B2F7C(v8, &qword_27DD60278, &unk_231608238);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  v13 = v1[29];
  v12 = v1[30];
  v14 = v1[28];

  sub_2315F53D4();
  OUTLINED_FUNCTION_67_2();
  v14();

  v15 = v1[33];

  OUTLINED_FUNCTION_14();

  return v16();
}

void sub_2315FAA9C(uint64_t a1, void (**a2)(void, void))
{
  if (qword_280FE9570 != -1)
  {
    swift_once();
  }

  v3 = sub_2316066E8();
  __swift_project_value_buffer(v3, qword_280FE9578);
  v4 = sub_2316066C8();
  v5 = sub_231606958();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2315AF000, v4, v5, "warm up started!", v6, 2u);
    MEMORY[0x231933730](v6, -1, -1);
  }

  a2[2](a2, 0);

  _Block_release(a2);
}

void sub_2315FABFC()
{
  OUTLINED_FUNCTION_93();
  v49 = v1;
  v50 = v0;
  v47 = v2;
  v48 = v3;
  v5 = v4;
  v45 = v6;
  v46 = v7;
  v44 = v8;
  v9 = sub_231605098();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  (*(v12 + 16))(v15, v5, v9);
  v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v27 = (v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  (*(v12 + 32))(v30 + v26, v15, v9);
  v31 = (v30 + v27);
  v32 = v44;
  v33 = v45;
  *v31 = v44;
  v31[1] = v33;
  v34 = (v30 + v28);
  v35 = v48;
  *v34 = v47;
  v34[1] = v35;
  v36 = (v30 + v29);
  v37 = v46;
  v39 = v49;
  v38 = v50;
  *v36 = v46;
  v36[1] = v39;
  *(v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8)) = v38;
  sub_2315B2F24(v32, v33);

  sub_2315B2F24(v37, v39);

  v40 = OUTLINED_FUNCTION_5_8();
  sub_2315FD77C(v40, v41, v21, v42, v30);

  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315FAE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v22;
  *(v8 + 160) = v21;
  *(v8 + 144) = a7;
  *(v8 + 152) = a8;
  *(v8 + 128) = a5;
  *(v8 + 136) = a6;
  *(v8 + 120) = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60808, &qword_231609A60) - 8) + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v10 = sub_231606158();
  *(v8 + 192) = v10;
  v11 = *(v10 - 8);
  *(v8 + 200) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v13 = sub_2316061F8();
  *(v8 + 216) = v13;
  v14 = *(v13 - 8);
  *(v8 + 224) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v16 = sub_231605098();
  *(v8 + 248) = v16;
  v17 = *(v16 - 8);
  *(v8 + 256) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315FAFE8, 0, 0);
}

uint64_t sub_2315FAFE8()
{
  v108 = v0;
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[15];
  v5 = sub_2316066E8();
  v0[35] = __swift_project_value_buffer(v5, qword_280FE9578);
  v105 = *(v3 + 16);
  v105(v1, v4, v2);
  v6 = sub_2316066C8();
  v7 = sub_231606968();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[34];
  v11 = v0[31];
  v10 = v0[32];
  if (v8)
  {
    v12 = OUTLINED_FUNCTION_60();
    v13 = OUTLINED_FUNCTION_63();
    v107 = v13;
    *v12 = 136315138;
    OUTLINED_FUNCTION_25_1();
    sub_2315B3174(v14, v15);
    sub_231606BC8();
    v16 = *(v10 + 8);
    v17 = OUTLINED_FUNCTION_17_0();
    v106 = v18;
    v18(v17);
    v19 = OUTLINED_FUNCTION_68_0();
    v22 = sub_2315B1574(v19, v20, v21);

    *(v12 + 4) = v22;
    _os_log_impl(&dword_2315AF000, v6, v7, "Received log XPC call for: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_29();
  }

  else
  {

    v23 = *(v10 + 8);
    v24 = OUTLINED_FUNCTION_17_0();
    v106 = v25;
    v25(v24);
  }

  v26 = v0[30];
  v27 = v0[27];
  v29 = v0[16];
  v28 = v0[17];
  v30 = sub_231604F38();
  OUTLINED_FUNCTION_32(v30);
  v0[36] = sub_231604F28();
  OUTLINED_FUNCTION_26_2();
  sub_2315B3174(v31, v32);
  sub_231604F18();
  v33 = v0[30];
  v34 = v0[27];
  v35 = v0[28];
  sub_2316061E8();
  v36 = *(v35 + 8);
  v36(v33, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60810, &qword_231609A68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = sub_2316066C8();
    v43 = sub_231606978();
    if (os_log_type_enabled(v42, v43))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_86_0(&dword_2315AF000, v44, v45, "unknown type of suggestions");
      OUTLINED_FUNCTION_17();
    }

    v47 = v0[18];
    v46 = v0[19];

    sub_2315FC0E0();
    v48 = swift_allocError();
    *v49 = 0xD00000000000001CLL;
    v49[1] = 0x800000023160B4A0;
LABEL_11:
    v47();

    OUTLINED_FUNCTION_54_0();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_64_2();

    __asm { BRAA            X1, X16 }
  }

  v37 = v0[29];
  v38 = v0[27];
  v39 = v0[20];
  v40 = v0[21];
  v41 = v0[14];
  v0[37] = v41;
  sub_231604F18();
  v52 = v0[29];
  v53 = v0[27];
  v54 = v0[23];
  v55 = v0[24];
  sub_2316061E8();
  v56 = OUTLINED_FUNCTION_72();
  (v36)(v56);
  v57 = swift_dynamicCast();
  if ((v57 & 1) == 0)
  {
    v85 = v0[23];
    v84 = v0[24];

    OUTLINED_FUNCTION_38();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v84);
    sub_2315B2F7C(v85, &qword_27DD60808, &qword_231609A60);
    v89 = sub_2316066C8();
    v90 = sub_231606978();
    if (os_log_type_enabled(v89, v90))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_86_0(&dword_2315AF000, v91, v92, "unknown type of deliveryVehicle");
      OUTLINED_FUNCTION_17();
    }

    v47 = v0[18];
    v93 = v0[19];

    sub_2315FC0E0();
    v48 = swift_allocError();
    *v94 = xmmword_231609930;
    goto LABEL_11;
  }

  v58 = v0[33];
  v59 = v0[31];
  v60 = v41;
  v61 = v0[25];
  v62 = v0[26];
  v64 = v0[23];
  v63 = v0[24];
  v65 = v0[15];
  __swift_storeEnumTagSinglePayload(v64, 0, 1, v63);
  (*(v61 + 32))(v62, v64, v63);
  v105(v58, v65, v59);

  v66 = sub_2316066C8();
  v67 = sub_231606968();

  v68 = os_log_type_enabled(v66, v67);
  v70 = v0[32];
  v69 = v0[33];
  v71 = v0[31];
  if (v68)
  {
    v72 = OUTLINED_FUNCTION_91_0();
    v107 = OUTLINED_FUNCTION_90_0();
    *v72 = 136315394;
    OUTLINED_FUNCTION_25_1();
    sub_2315B3174(v73, v74);
    sub_231606BC8();
    v75 = OUTLINED_FUNCTION_17_0();
    v106(v75);
    v76 = OUTLINED_FUNCTION_68_0();
    v79 = sub_2315B1574(v76, v77, v78);

    *(v72 + 4) = v79;
    *(v72 + 12) = 2080;
    v80 = sub_231605DD8();
    v81 = MEMORY[0x231932D20](v60, v80);
    v83 = sub_2315B1574(v81, v82, &v107);

    *(v72 + 14) = v83;
    _os_log_impl(&dword_2315AF000, v66, v67, "executing SiriSuggestionsXPCService log on generationId: %s with suggestions: %s)", v72, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {

    v95 = OUTLINED_FUNCTION_17_0();
    v106(v95);
  }

  v96 = *(v0[22] + 16);
  v97 = swift_task_alloc();
  v0[38] = v97;
  *v97 = v0;
  v97[1] = sub_2315FB7E4;
  v98 = v0[26];
  v99 = v0[15];
  OUTLINED_FUNCTION_64_2();

  return StatefulSuggestionsClient.logShown(for:deliveryVehicle:generationId:)(v100, v101, v102);
}

uint64_t sub_2315FB7E4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *(v2 + 304);
  *v4 = *v1;
  *(v3 + 312) = v0;

  v6 = *(v2 + 296);

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315FB910()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 288);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 152);
  (*(v0 + 144))(0);

  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_54_0();

  OUTLINED_FUNCTION_14();

  return v6();
}

uint64_t sub_2315FB9D8()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[36];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];

  v7 = *(v4 + 8);
  v6 = v4 + 8;
  v8 = OUTLINED_FUNCTION_36();
  v9(v8);
  v10 = v0[39];
  v11 = v0[35];
  v12 = v10;
  v13 = sub_2316066C8();
  sub_231606978();

  if (os_log_type_enabled(v13, v6))
  {
    OUTLINED_FUNCTION_60();
    v14 = OUTLINED_FUNCTION_41_0();
    *v1 = 138412290;
    v15 = v10;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_69_1(v16);
    OUTLINED_FUNCTION_43_0(&dword_2315AF000, v17, v6, "Error when logging: %@");
    sub_2315B2F7C(v14, &qword_27DD60278, &unk_231608238);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  v18 = v0[22];
  v20 = v0[18];
  v19 = v0[19];

  sub_2315F53D4();
  OUTLINED_FUNCTION_67_2();
  v20();

  OUTLINED_FUNCTION_54_0();

  OUTLINED_FUNCTION_14();

  return v21();
}

uint64_t *sub_2315FBD10()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v2 = v0[9];

  v3 = v0[10];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  return v0;
}

uint64_t sub_2315FBD58()
{
  sub_2315FBD10();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t get_enum_tag_for_layout_string_22SiriSuggestionsSupport9XPCErrorsO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2315FBDD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2315FBE28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_2315FBE84(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2315FBED0()
{
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_78();
  v2 = v1;
  v3 = *(sub_231605098() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v0 + 24);
  v27 = *(v0 + 16);
  v7 = (v0 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v5);
  v11 = *(v0 + v5 + 8);
  v13 = *(v0 + v6);
  v12 = *(v0 + v6 + 8);
  v14 = *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_2315B4740;
  OUTLINED_FUNCTION_31();

  return sub_2315FAE04(v16, v17, v18, v19, v20, v21, v22, v23);
}

id sub_2315FC030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_231606788();

  if (a4)
  {
    v8 = sub_231606708();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

unint64_t sub_2315FC0E0()
{
  result = qword_27DD60818;
  if (!qword_27DD60818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60818);
  }

  return result;
}

uint64_t sub_2315FC134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_78();
  v10 = v9[3];
  v26 = v9[2];
  OUTLINED_FUNCTION_7_6();
  v12 = v9[11];
  v11 = v9[12];
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_12(v13);
  *v14 = v15;
  v14[1] = sub_2315B4740;
  OUTLINED_FUNCTION_10_2(a9);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_31();

  return sub_2315FA19C(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_2315FC1E8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_2316069F8();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2315FC228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60540, &unk_231609000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315FC298(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2315B8CC8;

  return sub_2315F9824(a1, v4, v5, v6);
}

uint64_t sub_2315FC348(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_2315FC354()
{
  result = qword_280FE85D8;
  if (!qword_280FE85D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD60840, &qword_231609AD0);
    sub_2315B3174(&qword_280FE95B0, MEMORY[0x277D60D68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE85D8);
  }

  return result;
}

uint64_t sub_2315FC410()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_2();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12(v3);
  *v4 = v5;
  v4[1] = sub_2315B4740;
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_94();

  return sub_2315F941C(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_2315FC4B4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_2();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[13];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_12(v4);
  *v5 = v6;
  v5[1] = sub_2315B4660;
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_58();

  return sub_2315F89B4(v7, v8, v9, v10, v11, v12, v13, v14);
}

unint64_t sub_2315FC56C()
{
  result = qword_280FE85C8;
  if (!qword_280FE85C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD60848, &qword_231609AF8);
    sub_2315B3174(&qword_280FE9600, MEMORY[0x277D60908]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE85C8);
  }

  return result;
}

uint64_t sub_2315FC620()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[3];
  v22 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_12(v9);
  *v10 = v11;
  v10[1] = sub_2315B4740;
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_58();

  return sub_2315F8420(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_2315FC6E8()
{
  v24 = *(v0 + 16);
  v23 = *(v0 + 24);
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 88);
  v21 = *(v0 + 136);
  v22 = *(v0 + 72);
  v7 = *(v0 + 152);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_12(v8);
  *v9 = v10;
  v9[1] = sub_2315B4740;
  OUTLINED_FUNCTION_10_2(v22);
  OUTLINED_FUNCTION_33_1();

  return sub_2315F68F8(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_2315FC7EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2315B2F24(a1, a2);
  }

  return a1;
}

unint64_t sub_2315FC800()
{
  result = qword_280FE85D0;
  if (!qword_280FE85D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD60500, &qword_231608FB8);
    sub_2315B3174(&qword_280FE9608, MEMORY[0x277D608B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE85D0);
  }

  return result;
}

uint64_t sub_2315FC8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_78();
  v10 = v9[2];
  v11 = v9[3];
  OUTLINED_FUNCTION_7_6();
  v12 = v9[11];
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_12(v13);
  *v14 = v15;
  v14[1] = sub_2315B4740;
  OUTLINED_FUNCTION_10_2(a9);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_31();

  return sub_2315F5CE4(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_2315FC964(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2315FC9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_78();
  v10 = v9[3];
  v26 = v9[2];
  OUTLINED_FUNCTION_7_6();
  v12 = v9[11];
  v11 = v9[12];
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_12(v13);
  *v14 = v15;
  v14[1] = sub_2315B4740;
  OUTLINED_FUNCTION_10_2(a9);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_31();

  return sub_2315F39B4(v16, v17, v18, v19, v20, v21, v22, v23);
}

void OUTLINED_FUNCTION_35_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_36_1()
{
  v2 = v0[41];
  v3 = v0[38];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[31];
  v8 = v0[27];
  v7 = v0[28];
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_43_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_45_1()
{
  result = v0[15];
  v2 = v0[13];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[4];
  v6 = *(v0[14] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_54_0()
{
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[26];
  v7 = v0[23];
}

uint64_t OUTLINED_FUNCTION_55_1()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[12];
  v5 = *(v0[14] + 8);
  return v0[15];
}

uint64_t OUTLINED_FUNCTION_56_1()
{

  return sub_2316064D8();
}

uint64_t OUTLINED_FUNCTION_60_0()
{

  return sub_2316064D8();
}

void OUTLINED_FUNCTION_65_0()
{
}

uint64_t OUTLINED_FUNCTION_69_1(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

BOOL OUTLINED_FUNCTION_71_1()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_72_1()
{
}

void OUTLINED_FUNCTION_73_0()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[2];
  v6 = v0[3];
}

void OUTLINED_FUNCTION_77_0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
}

uint64_t OUTLINED_FUNCTION_83_0()
{

  return sub_2316064F8();
}

void OUTLINED_FUNCTION_84_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_86_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_89_0()
{

  return sub_2316067A8();
}

uint64_t OUTLINED_FUNCTION_90_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_91_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_93_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2315FCDB8(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6F69746361;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = "preComputedSuggestions";
  v6 = 0x6E6F69746361;
  v7 = "presentationContext";
  switch(v4)
  {
    case 1:
      v6 = 0xD000000000000013;
      v3 = 0x800000023160A0B0;
      break;
    case 2:
      v3 = 0x800000023160A0D0;
      v6 = 0xD000000000000016;
      break;
    case 3:
      OUTLINED_FUNCTION_35_2();
      break;
    case 4:
      OUTLINED_FUNCTION_36_2();
      break;
    case 5:
      v6 = 0x6974736567677573;
      v3 = 0xEA00000000006E6FLL;
      break;
    default:
      break;
  }

  v8 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000013;
      v8 = (v7 - 32) | 0x8000000000000000;
      break;
    case 2:
      v8 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000016;
      break;
    case 3:
      v2 = 0x697461636F766E69;
      v8 = 0xEE00657079546E6FLL;
      break;
    case 4:
      v2 = 0x6F43676F6C616964;
      v8 = 0xEF6449747865746ELL;
      break;
    case 5:
      v2 = 0x6974736567677573;
      v8 = 0xEA00000000006E6FLL;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_231606BD8();
  }

  return v10 & 1;
}

uint64_t sub_2315FCF88(unsigned __int8 a1, char a2)
{
  v2 = 0xEC000000706C6548;
  v3 = 0x69726953776F6873;
  v4 = a1;
  v5 = 0x69726953776F6873;
  v6 = 0xEC000000706C6548;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v6 = 0x800000023160A050;
      v5 = 0xD000000000000013;
      break;
    case 3:
      v6 = 0x800000023160A070;
      v5 = 0xD00000000000001ALL;
      break;
    default:
      v6 = 0x800000023160A030;
      v5 = 0xD000000000000011;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 0x800000023160A050;
      v3 = 0xD000000000000013;
      break;
    case 3:
      v2 = 0x800000023160A070;
      v3 = 0xD00000000000001ALL;
      break;
    default:
      v2 = 0x800000023160A030;
      v3 = 0xD000000000000011;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_231606BD8();
  }

  return v8 & 1;
}

uint64_t sub_2315FD0D4(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000065707954;
  v3 = 0x7974697669746361;
  v4 = a1;
  v5 = 0x7974697669746361;
  v6 = 0xEC00000065707954;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000010;
      v7 = "intentProperties";
      goto LABEL_7;
    case 2:
      goto LABEL_10;
    case 3:
      v6 = 0x800000023160A160;
      v5 = 0xD000000000000013;
      goto LABEL_10;
    case 4:
      v5 = 0x45746E65696C6173;
      v6 = 0xEF7365697469746ELL;
      goto LABEL_10;
    case 5:
      v5 = 0x7453656369766564;
      v6 = 0xEB00000000657461;
      goto LABEL_10;
    case 6:
      v6 = 0xE500000000000000;
      v5 = 0x72656E776FLL;
      goto LABEL_10;
    case 7:
      v5 = 0xD000000000000010;
      v7 = "ies";
      goto LABEL_7;
    default:
      v5 = 0xD000000000000010;
      v7 = "extId";
LABEL_7:
      v6 = v7 | 0x8000000000000000;
LABEL_10:
      switch(a2)
      {
        case 1:
          v3 = 0xD000000000000010;
          v8 = "intentProperties";
          goto LABEL_16;
        case 2:
          goto LABEL_19;
        case 3:
          v2 = 0x800000023160A160;
          v3 = 0xD000000000000013;
          goto LABEL_19;
        case 4:
          v3 = 0x45746E65696C6173;
          v2 = 0xEF7365697469746ELL;
          goto LABEL_19;
        case 5:
          v3 = 0x7453656369766564;
          v2 = 0xEB00000000657461;
          goto LABEL_19;
        case 6:
          v2 = 0xE500000000000000;
          v3 = 0x72656E776FLL;
          goto LABEL_19;
        case 7:
          v3 = 0xD000000000000010;
          v8 = "ies";
          goto LABEL_16;
        default:
          v3 = 0xD000000000000010;
          v8 = "extId";
LABEL_16:
          v2 = v8 | 0x8000000000000000;
LABEL_19:
          if (v5 == v3 && v6 == v2)
          {
            v10 = 1;
          }

          else
          {
            v10 = sub_231606BD8();
          }

          return v10 & 1;
      }
  }
}

uint64_t sub_2315FD300()
{
  sub_231606C68();
  OUTLINED_FUNCTION_9_4();
  sub_2316067E8();
  return sub_231606C88();
}

uint64_t sub_2315FD374(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_231606C68();
  a2(v5, a1);
  return sub_231606C88();
}

uint64_t sub_2315FD3C4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_26_3();
      break;
    case 3:
      OUTLINED_FUNCTION_35_2();
      break;
    case 4:
      OUTLINED_FUNCTION_36_2();
      break;
    default:
      break;
  }

  sub_2316067E8();
}

uint64_t sub_2315FD4C4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      break;
    default:
      OUTLINED_FUNCTION_26_3();
      break;
  }

  sub_2316067E8();
}

uint64_t sub_2315FD58C()
{
  sub_2316067E8();
}

uint64_t sub_2315FD6D8()
{
  sub_231606C68();
  OUTLINED_FUNCTION_9_4();
  sub_2316067E8();
  return sub_231606C88();
}

uint64_t sub_2315FD730(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_231606C68();
  a3(v6, a2);
  return sub_231606C88();
}

uint64_t sub_2315FD77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_231601CA4(a3, v26 - v11, &qword_27DD60398, &qword_231609BD0);
  v13 = sub_2316068E8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_231601D8C(v12, &qword_27DD60398, &qword_231609BD0);
  }

  else
  {
    sub_2316068D8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2316068A8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2316067C8() + 32;
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

      sub_231601D8C(a3, &qword_27DD60398, &qword_231609BD0);

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

  sub_231601D8C(a3, &qword_27DD60398, &qword_231609BD0);
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

unint64_t StatefulSuggestionsClient.DefaultKeys.rawValue.getter()
{
  result = 0x7974697669746361;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x45746E65696C6173;
      break;
    case 5:
      result = 0x7453656369766564;
      break;
    case 6:
      result = 0x72656E776FLL;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t StatefulSuggestionsClient.suggestNext(requestId:)()
{
  OUTLINED_FUNCTION_8();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v5 = *(*(sub_231605098() - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v6 = sub_231605E98();
  v1[14] = v6;
  OUTLINED_FUNCTION_4(v6);
  v1[15] = v7;
  v9 = *(v8 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v10 = sub_231605E28();
  v1[19] = v10;
  OUTLINED_FUNCTION_4(v10);
  v1[20] = v11;
  v13 = *(v12 + 64) + 15;
  v1[21] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v14);
}

uint64_t sub_2315FDCA4()
{
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v1 = sub_2316066E8();
  v0[22] = __swift_project_value_buffer(v1, qword_280FE9630);
  v2 = sub_2316066C8();
  v3 = sub_231606958();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_18();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_17();
  }

  v9 = v0[12];

  v10 = v9[7];
  v11 = v9[8];
  __swift_project_boxed_opaque_existential_1(v9 + 4, v10);
  v12 = *(v11 + 8);
  v20 = (v12 + *v12);
  v13 = v12[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[23] = v14;
  *v14 = v15;
  v14[1] = sub_2315FDE70;
  v16 = v0[21];
  v17 = v0[10];
  v18 = v0[11];

  return v20(v16, v17, v18, v10, v11);
}

uint64_t sub_2315FDE70()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315FDF6C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45_2(v1[12]);
  v1[8] = v0;
  v3 = *(v2 + 16);
  v4 = *(MEMORY[0x277D60468] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v1[25] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_3_8(v5);

  return MEMORY[0x2821C5CD8](v7);
}

uint64_t sub_2315FE014()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 200);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315FE0F8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_17_6();
  v3 = *(MEMORY[0x277D60438] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v2[26] = v4;
  *v4 = v5;
  v4[1] = sub_2315FE1A0;
  v6 = v2[21];
  v7 = v2[18];

  return MEMORY[0x2821C5C98](v7, v6, v0, v1);
}

uint64_t sub_2315FE1A0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 208);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315FE284()
{
  v30 = v0;
  v1 = v0[22];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[14];
  v5 = v0[15];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v6 = *(v5 + 16);
  v6(v3, v2, v4);
  v7 = sub_2316066C8();
  v8 = sub_231606968();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[20];
  v11 = v0[21];
  v12 = v0[19];
  v13 = v0[17];
  if (v9)
  {
    v28 = v0[19];
    v14 = v0[15];
    v15 = v0[16];
    log = v7;
    v16 = v0[14];
    OUTLINED_FUNCTION_60();
    v26 = OUTLINED_FUNCTION_21_2();
    v29 = v26;
    *v11 = 136315138;
    v6(v15, v13, v16);
    v17 = sub_2316067A8();
    v18 = v8;
    v20 = v19;
    (*(v14 + 8))(v13, v16);
    v21 = sub_2315B1574(v17, v20, &v29);

    *(v11 + 4) = v21;
    _os_log_impl(&dword_2315AF000, log, v18, "Determined suggestions: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_7_1();

    (*(v10 + 8))(v11, v28);
  }

  else
  {
    v22 = v0[14];
    v23 = v0[15];

    (*(v23 + 8))(v13, v22);
    (*(v10 + 8))(v11, v12);
  }

  (*(v0[15] + 32))(v0[9], v0[18], v0[14]);
  OUTLINED_FUNCTION_40_2();

  OUTLINED_FUNCTION_14();

  return v24();
}

uint64_t sub_2315FE4B0()
{
  v25 = v0;
  v1 = v0[24];
  v2 = v0[22];
  v3 = v1;
  v4 = sub_2316066C8();
  v5 = sub_231606978();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = OUTLINED_FUNCTION_60();
    v8 = swift_slowAlloc();
    v24[0] = v8;
    *v7 = 136315138;
    v0[7] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
    v10 = sub_2316067A8();
    v12 = sub_2315B1574(v10, v11, v24);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_18();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_17();
  }

  v18 = v0[24];
  v19 = v0[13];
  v20 = v0[9];
  v21 = sub_231606528();
  v24[3] = sub_231606058();
  v24[4] = sub_231601D00(&qword_280FE95F0, 255, MEMORY[0x277D60A60]);
  v24[0] = v21;
  sub_231605088();
  sub_231605E58();

  OUTLINED_FUNCTION_40_2();

  OUTLINED_FUNCTION_14();

  return v22();
}

uint64_t StatefulSuggestionsClient.logEngagement(for:intent:)()
{
  OUTLINED_FUNCTION_15();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_231606128();
  v1[12] = v5;
  OUTLINED_FUNCTION_4(v5);
  v1[13] = v6;
  v8 = *(v7 + 64) + 15;
  v1[14] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v1[15] = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_11_3(v9);

  return sub_2315FF8E4(v11, v12, v13);
}

uint64_t sub_2315FE7A0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315FE884()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45_2(*(v0 + 88));
  OUTLINED_FUNCTION_19_2();
  v1 = *(MEMORY[0x277D60468] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 128) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3_8(v2);

  return MEMORY[0x2821C5CD8](v4);
}

uint64_t sub_2315FE920()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315FEA1C()
{
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_31_3();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_2315FEA90()
{
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_31_3();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_14();
  v4 = *(v0 + 144);

  return v3();
}

uint64_t sub_2315FEB18()
{
  OUTLINED_FUNCTION_15();
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v1 = sub_2316066E8();
  __swift_project_value_buffer(v1, qword_280FE9630);
  v2 = sub_2316066C8();
  v3 = sub_231606958();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_18();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_17();
  }

  v9 = *(v0 + 16);

  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  ObjectType = swift_getObjectType();
  v13 = *(*(v11 + 8) + 16);
  v14 = *(MEMORY[0x277D607F0] + 4);
  v15 = swift_task_alloc();
  *(v0 + 24) = v15;
  *v15 = v0;
  v15[1] = sub_2315FEC60;

  return MEMORY[0x2821C6518](ObjectType);
}

uint64_t sub_2315FEC60()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t StatefulSuggestionsClient.logShown(for:deliveryVehicle:generationId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_2315FED5C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45_2(*(v0 + 88));
  OUTLINED_FUNCTION_19_2();
  v1 = *(MEMORY[0x277D60468] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 96) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3_8(v2);

  return MEMORY[0x2821C5CD8](v4);
}

uint64_t sub_2315FEDF8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315FEEDC()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_17_6();
  v1 = *(MEMORY[0x277D60448] + 4);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_2315FEF7C;
  v3 = OUTLINED_FUNCTION_33_2();

  return MEMORY[0x2821C5CA8](v3);
}

uint64_t sub_2315FEF7C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315FF078()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_2315FF0D4()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_14();
  v2 = *(v0 + 112);

  return v1();
}

SiriSuggestionsSupport::StatefulSuggestionsClient::DefaultKeys_optional __swiftcall StatefulSuggestionsClient.DefaultKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231606B48();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2315FF20C@<X0>(unint64_t *a1@<X8>)
{
  result = StatefulSuggestionsClient.DefaultKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *StatefulSuggestionsClient.__allocating_init(suggestionService:salientEntityService:runtimeConfigProvider:featureFlagProvider:generationIdProvider:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  type metadata accessor for InMemoryHintsStateStore();
  swift_allocObject();
  v12 = sub_2315CA638();
  type metadata accessor for TurnProtectedHintsStateStore();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_44_1(&qword_280FE8E70);
  v15 = OUTLINED_FUNCTION_44_1(&qword_280FE8E68);
  swift_defaultActor_initialize();
  v13[17] = 0;
  v13[18] = 0;
  v13[14] = v12;
  v13[15] = v14;
  v13[16] = v15;
  sub_2315B4568(a3, v27);
  v16 = a4;
  sub_2315B4568(a4, v26);
  sub_2315B4568(a5, v25);
  sub_2315B4568(a6, v24);
  v17 = type metadata accessor for StateStoreInteractionBuilder();
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_44_1(&qword_280FE88C8);
  v18[2] = v13;
  v18[3] = v19;
  sub_2315B4648(v27, (v18 + 4));
  sub_2315B4648(v26, (v18 + 9));
  sub_2315B4648(v25, (v18 + 14));
  v18[19] = a1;
  v18[20] = a2;
  sub_2315B4648(v24, (v18 + 21));
  v20 = swift_allocObject();
  v20[7] = v17;
  v20[8] = &off_284623858;
  v20[4] = v18;
  v21 = OUTLINED_FUNCTION_44_1(&qword_280FE88D0);
  v20[2] = a1;
  v20[3] = a2;
  v20[9] = v13;
  v20[10] = v21;

  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v20;
}

uint64_t StatefulSuggestionsClient.submit(for:propertyKey:propertyValue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v23 - v18;
  v20 = sub_2316068E8();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  sub_2315B2D08(a5, v23);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v8;
  *(v21 + 40) = a1;
  *(v21 + 48) = a2;
  *(v21 + 56) = a3;
  *(v21 + 64) = a4;
  sub_2315CAB60(v23, (v21 + 72));
  *(v21 + 120) = a6;
  *(v21 + 128) = a7;

  sub_2315FD77C(0, 0, v19, &unk_231609BE0, v21);
}

uint64_t sub_2315FF5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = v21;
  v8[4] = v22;
  v8[2] = a4;
  v13 = *(MEMORY[0x277D60570] + 4);
  v14 = swift_task_alloc();
  v8[5] = v14;
  v15 = type metadata accessor for StatefulSuggestionsClient();
  v17 = sub_231601D00(qword_280FE9350, v16, type metadata accessor for StatefulSuggestionsClient);
  *v14 = v8;
  v14[1] = sub_2315FF700;

  return MEMORY[0x2821C5FC8](a5, a6, a7, a8, v20, v15, v17);
}

uint64_t sub_2315FF700()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315FF7FC()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 32);
  (*(v0 + 24))(0, 0);
  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_2315FF860()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v1;
  v5 = OUTLINED_FUNCTION_24_4();
  v3(v5);

  OUTLINED_FUNCTION_14();

  return v6();
}

uint64_t sub_2315FF8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a1;
  v6 = sub_231606248();
  v3[13] = v6;
  v7 = *(v6 - 8);
  v3[14] = v7;
  v8 = *(v7 + 64) + 15;
  v3[15] = swift_task_alloc();
  v9 = sub_231606278();
  v3[16] = v9;
  v10 = *(v9 - 8);
  v3[17] = v10;
  v11 = *(v10 + 64) + 15;
  v3[18] = swift_task_alloc();
  v12 = sub_2316054A8();
  v3[19] = v12;
  v13 = *(v12 - 8);
  v3[20] = v13;
  v14 = *(v13 + 64) + 15;
  v3[21] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604B8, &qword_231608F60);
  v3[22] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v17 = sub_231606288();
  v3[25] = v17;
  v18 = *(v17 - 8);
  v3[26] = v18;
  v19 = *(v18 + 64) + 15;
  v3[27] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604C0, &qword_231608F68) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60478, &qword_231609E40) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v22 = swift_task_alloc();
  v3[37] = v22;
  *v22 = v3;
  v22[1] = sub_2315FFC10;

  return sub_231600580((v3 + 7), a2, a3);
}

uint64_t sub_2315FFC10()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 296);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315FFCF4()
{
  if (!*(v0 + 80))
  {
    v29 = *(v0 + 96);
    sub_231601D8C(v0 + 56, &qword_27DD60468, &qword_231609E50);
    v30 = *MEMORY[0x277D60AD8];
    v31 = sub_231606128();
    OUTLINED_FUNCTION_6_7(v31);
    (*(v32 + 104))(v29, v30);
    goto LABEL_30;
  }

  v1 = *(v0 + 288);
  v2 = *(v0 + 104);
  sub_2315B4648((v0 + 56), v0 + 16);
  OUTLINED_FUNCTION_14_5();
  sub_231605D08();
  v3 = OUTLINED_FUNCTION_24_4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, v4, v2);
  sub_231601D8C(v1, &qword_27DD60478, &qword_231609E40);
  if (EnumTagSinglePayload != 1 || (v6 = *(v0 + 272), v7 = *(v0 + 152), OUTLINED_FUNCTION_14_5(), sub_231605D18(), v8 = OUTLINED_FUNCTION_24_4(), v10 = __swift_getEnumTagSinglePayload(v8, v9, v7), sub_231601D8C(v6, &qword_27DD604C0, &qword_231608F68), v10 != 1))
  {
    v16 = *(v0 + 256);
    v15 = *(v0 + 264);
    v17 = *(v0 + 192);
    v18 = *(v0 + 176);
    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    v21 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_231605D18();
    v131 = *(v20 + 104);
    v131(v16, *MEMORY[0x277D61C78], v19);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v19);
    v133 = v18;
    v22 = *(v18 + 48);
    sub_231601CA4(v15, v17, &qword_27DD604C0, &qword_231608F68);
    OUTLINED_FUNCTION_41_1();
    v23 = OUTLINED_FUNCTION_24_4();
    if (__swift_getEnumTagSinglePayload(v23, v24, v19) == 1)
    {
      v25 = *(v0 + 264);
      v26 = *(v0 + 152);
      OUTLINED_FUNCTION_42_1(*(v0 + 256));
      OUTLINED_FUNCTION_42_1(v25);
      v27 = OUTLINED_FUNCTION_38_0();
      if (__swift_getEnumTagSinglePayload(v27, v28, v26) == 1)
      {
        sub_231601D8C(*(v0 + 192), &qword_27DD604C0, &qword_231608F68);
LABEL_14:
        v45 = MEMORY[0x277D60E68];
LABEL_15:
        v55 = *(v0 + 232);
        v56 = *(v0 + 240);
        v57 = *(v0 + 184);
        v58 = *(v0 + 152);
        (*(*(v0 + 208) + 104))(*(v0 + 216), *v45, *(v0 + 200));
        v59 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        sub_231605D18();
        v131(v55, *MEMORY[0x277D61C48], v58);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v58);
        v60 = *(v133 + 48);
        sub_231601CA4(v56, v57, &qword_27DD604C0, &qword_231608F68);
        OUTLINED_FUNCTION_41_1();
        v61 = OUTLINED_FUNCTION_24_4();
        if (__swift_getEnumTagSinglePayload(v61, v62, v58) == 1)
        {
          v63 = *(v0 + 240);
          v64 = *(v0 + 152);
          OUTLINED_FUNCTION_42_1(*(v0 + 232));
          OUTLINED_FUNCTION_42_1(v63);
          v65 = OUTLINED_FUNCTION_38_0();
          if (__swift_getEnumTagSinglePayload(v65, v66, v64) == 1)
          {
            sub_231601D8C(*(v0 + 184), &qword_27DD604C0, &qword_231608F68);
LABEL_23:
            v79 = MEMORY[0x277D60E10];
            goto LABEL_24;
          }
        }

        else
        {
          v67 = *(v0 + 152);
          sub_231601CA4(*(v0 + 184), *(v0 + 224), &qword_27DD604C0, &qword_231608F68);
          v68 = OUTLINED_FUNCTION_38_0();
          v70 = __swift_getEnumTagSinglePayload(v68, v69, v67);
          v72 = *(v0 + 232);
          v71 = *(v0 + 240);
          v73 = *(v0 + 224);
          if (v70 != 1)
          {
            v134 = *(v0 + 184);
            v81 = *(v0 + 160);
            v80 = *(v0 + 168);
            v82 = *(v0 + 152);
            v83 = OUTLINED_FUNCTION_37_2(v81);
            v84(v83);
            OUTLINED_FUNCTION_16_3();
            sub_231601D00(v85, 255, v86);
            v87 = OUTLINED_FUNCTION_39_0();
            v88 = *(v81 + 8);
            v88(v80, v82);
            OUTLINED_FUNCTION_29_2(v72);
            OUTLINED_FUNCTION_29_2(v71);
            v89 = OUTLINED_FUNCTION_27_3();
            (v88)(v89);
            OUTLINED_FUNCTION_29_2(v134);
            if (v87)
            {
              goto LABEL_23;
            }

LABEL_21:
            v79 = MEMORY[0x277D60E18];
LABEL_24:
            v90 = *(v0 + 280);
            v91 = *(v0 + 104);
            (*(*(v0 + 136) + 104))(*(v0 + 144), *v79, *(v0 + 128));
            OUTLINED_FUNCTION_14_5();
            sub_231605D08();
            v92 = OUTLINED_FUNCTION_24_4();
            v94 = __swift_getEnumTagSinglePayload(v92, v93, v91);
            v95 = *(v0 + 280);
            v96 = *(v0 + 208);
            v98 = *(v0 + 112);
            v97 = *(v0 + 120);
            v99 = *(v0 + 104);
            if (v94 == 1)
            {
              (*(v96 + 32))(*(v0 + 120), *(v0 + 216), *(v0 + 200));
              (*(v98 + 104))(v97, *MEMORY[0x277D60DC0], v99);
              if (__swift_getEnumTagSinglePayload(v95, 1, v99) != 1)
              {
                sub_231601D8C(*(v0 + 280), &qword_27DD60478, &qword_231609E40);
              }
            }

            else
            {
              (*(v96 + 8))(*(v0 + 216), *(v0 + 200));
              v100 = *(v98 + 32);
              v101 = OUTLINED_FUNCTION_27_3();
              v102(v101);
            }

            v104 = *(v0 + 136);
            v103 = *(v0 + 144);
            v106 = *(v0 + 120);
            v105 = *(v0 + 128);
            v107 = *(v0 + 104);
            v108 = *(v0 + 112);
            v109 = *(v0 + 96);
            v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604C8, &qword_231608F70) + 48);
            (*(v108 + 32))(v109, v106, v107);
            (*(v104 + 32))(v109 + v110, v103, v105);
            v111 = *MEMORY[0x277D60AC0];
            v112 = sub_231606128();
            OUTLINED_FUNCTION_6_7(v112);
            (*(v113 + 104))(v109, v111);
            goto LABEL_29;
          }

          v74 = *(v0 + 152);
          v75 = *(v0 + 160);
          OUTLINED_FUNCTION_43_1(*(v0 + 232));
          OUTLINED_FUNCTION_43_1(v71);
          v76 = *(v75 + 8);
          v77 = OUTLINED_FUNCTION_27_3();
          v78(v77);
        }

        sub_231601D8C(*(v0 + 184), &qword_27DD604B8, &qword_231608F60);
        goto LABEL_21;
      }
    }

    else
    {
      v33 = *(v0 + 152);
      sub_231601CA4(*(v0 + 192), *(v0 + 248), &qword_27DD604C0, &qword_231608F68);
      v34 = OUTLINED_FUNCTION_38_0();
      v36 = __swift_getEnumTagSinglePayload(v34, v35, v33);
      v38 = *(v0 + 256);
      v37 = *(v0 + 264);
      v39 = *(v0 + 248);
      if (v36 != 1)
      {
        v129 = *(v0 + 192);
        v46 = *(v0 + 160);
        v47 = *(v0 + 168);
        v48 = *(v0 + 152);
        v49 = OUTLINED_FUNCTION_37_2(v46);
        v50(v49);
        OUTLINED_FUNCTION_16_3();
        sub_231601D00(v51, 255, v52);
        v127 = OUTLINED_FUNCTION_39_0();
        v53 = *(v46 + 8);
        v53(v47, v48);
        OUTLINED_FUNCTION_29_2(v38);
        OUTLINED_FUNCTION_29_2(v37);
        v54 = OUTLINED_FUNCTION_27_3();
        (v53)(v54);
        OUTLINED_FUNCTION_29_2(v129);
        if (v127)
        {
          goto LABEL_14;
        }

LABEL_12:
        v45 = MEMORY[0x277D60E60];
        goto LABEL_15;
      }

      v40 = *(v0 + 152);
      v41 = *(v0 + 160);
      OUTLINED_FUNCTION_43_1(*(v0 + 256));
      OUTLINED_FUNCTION_43_1(v37);
      v42 = *(v41 + 8);
      v43 = OUTLINED_FUNCTION_27_3();
      v44(v43);
    }

    sub_231601D8C(*(v0 + 192), &qword_27DD604B8, &qword_231608F60);
    goto LABEL_12;
  }

  v11 = *(v0 + 96);
  v12 = *MEMORY[0x277D60AD8];
  v13 = sub_231606128();
  OUTLINED_FUNCTION_6_7(v13);
  (*(v14 + 104))(v11, v12);
LABEL_29:
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_30:
  v115 = *(v0 + 280);
  v114 = *(v0 + 288);
  v117 = *(v0 + 264);
  v116 = *(v0 + 272);
  v119 = *(v0 + 248);
  v118 = *(v0 + 256);
  v121 = *(v0 + 232);
  v120 = *(v0 + 240);
  v123 = *(v0 + 216);
  v122 = *(v0 + 224);
  v126 = *(v0 + 192);
  v128 = *(v0 + 184);
  v130 = *(v0 + 168);
  v132 = *(v0 + 144);
  v135 = *(v0 + 120);

  OUTLINED_FUNCTION_14();

  return v124();
}

uint64_t sub_231600580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[19] = *v3;
  v5 = sub_231605B38();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23160066C, 0, 0);
}

uint64_t sub_23160066C()
{
  v38 = v0;
  v1 = *(v0[18] + 72);
  v0[23] = v1;
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v1))
  {
    v3 = v2;
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[20];
    ObjectType = swift_getObjectType();
    (*(v5 + 104))(v4, *MEMORY[0x277D605B0], v6);
    swift_unknownObjectRetain();
    v8 = sub_231605B28();
    v10 = v9;
    v0[24] = v9;
    (*(v5 + 8))(v4, v6);
    v11 = *(v3 + 16);
    v36 = (v11 + *v11);
    v12 = v11[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    v0[25] = v13;
    *v13 = v14;
    v13[1] = sub_231600998;
    v15 = v0[16];
    v16 = v0[17];

    return (v36)(v0 + 2, v15, v16, v8, v10, ObjectType, v3);
  }

  else
  {
    if (qword_280FE9628 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v18 = v0[18];
    v19 = sub_2316066E8();
    __swift_project_value_buffer(v19, qword_280FE9630);

    v20 = sub_2316066C8();
    v21 = sub_231606968();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = v0[18];
      v22 = v0[19];
      v24 = OUTLINED_FUNCTION_60();
      v25 = swift_slowAlloc();
      v37 = v25;
      *v24 = 136315138;
      v0[13] = v23;

      v26 = sub_2316067A8();
      v28 = sub_2315B1574(v26, v27, &v37);

      *(v24 + 4) = v28;
      OUTLINED_FUNCTION_18();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x231933730](v25, -1, -1);
      OUTLINED_FUNCTION_17();
    }

    OUTLINED_FUNCTION_34_2();
    v34 = v0[22];

    OUTLINED_FUNCTION_14();

    return v35();
  }
}

uint64_t sub_231600998()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 200);
  v3 = *(v1 + 192);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_231600A98()
{
  v20 = v0;
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60530, &unk_231608FF0);
    if (swift_dynamicCast())
    {
      if (*(v0 + 88))
      {
        v2 = *(v0 + 184);
        v3 = *(v0 + 120);
        swift_unknownObjectRelease();
        sub_2315B4648((v0 + 64), v3);
        goto LABEL_12;
      }
    }

    else
    {
      *(v0 + 96) = 0;
      *(v0 + 64) = 0u;
      *(v0 + 80) = 0u;
    }
  }

  else
  {
    sub_231601D8C(v0 + 16, &qword_27DD60390, &qword_231608910);
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0;
  }

  sub_231601D8C(v0 + 64, &qword_27DD60468, &qword_231609E50);
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v4 = *(v0 + 144);
  v5 = sub_2316066E8();
  __swift_project_value_buffer(v5, qword_280FE9630);

  v6 = sub_2316066C8();
  v7 = sub_231606968();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 184);
  if (v8)
  {
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    OUTLINED_FUNCTION_60();
    v12 = OUTLINED_FUNCTION_21_2();
    v19 = v12;
    *v1 = 136315138;
    *(v0 + 112) = v11;

    v13 = sub_2316067A8();
    v15 = sub_2315B1574(v13, v14, &v19);

    *(v1 + 4) = v15;
    _os_log_impl(&dword_2315AF000, v6, v7, "%s: No SiriRequestState in the stateStore", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x231933730](v12, -1, -1);
    OUTLINED_FUNCTION_7_1();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_34_2();
LABEL_12:
  v16 = *(v0 + 176);

  OUTLINED_FUNCTION_14();

  return v17();
}

uint64_t StatefulSuggestionsClient.suggestNext(interaction:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_231600CF8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45_2(*(v0 + 80));
  OUTLINED_FUNCTION_19_2();
  v1 = *(MEMORY[0x277D60468] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 88) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3_8(v2);

  return MEMORY[0x2821C5CD8](v4);
}

uint64_t sub_231600D94()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_231600E78()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_17_6();
  v3 = *(MEMORY[0x277D60438] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v2[12] = v4;
  *v4 = v5;
  v4[1] = sub_231600F1C;
  v6 = v2[8];
  v7 = v2[9];

  return MEMORY[0x2821C5C98](v6, v7, v0, v1);
}

uint64_t sub_231600F1C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t StatefulSuggestionsClient.getNextSuggestions(requestId:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_11_3(v1);

  return StatefulSuggestionsClient.suggestNext(requestId:)();
}

uint64_t StatefulSuggestionsClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_11_3(v1);

  return StatefulSuggestionsClient.suggestNext(requestId:)();
}

uint64_t sub_23160114C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_23160124C()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_14();

  return v3();
}

void *StatefulSuggestionsClient.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t StatefulSuggestionsClient.__deallocating_deinit()
{
  StatefulSuggestionsClient.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_231601314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D60570] + 4);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_2315B4740;

  return MEMORY[0x2821C5FC8](a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_2316013F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D60568] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2315B4740;

  return MEMORY[0x2821C5FC0](a1, a2, a3, a4, a5);
}

uint64_t sub_2316014BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D60590] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2315B4740;

  return MEMORY[0x2821C5FE8](a1, a2, a3, a4);
}

uint64_t sub_23160157C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2315B4740;

  return StatefulSuggestionsClient.logShown(for:deliveryVehicle:generationId:)(a1, a2, a3);
}

uint64_t sub_23160162C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4740;

  return StatefulSuggestionsClient.warmup()();
}

uint64_t sub_2316016B8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4740;

  return StatefulSuggestionsClient.getNextSuggestions(requestId:)();
}

uint64_t sub_23160176C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4740;

  return StatefulSuggestionsClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)();
}

uint64_t sub_231601820()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4660;

  return StatefulSuggestionsClient.refreshService()();
}

uint64_t sub_2316018B0(uint64_t a1)
{
  v16 = v1[2];
  v14 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v9 = v1[15];
  v8 = v1[16];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_12(v10);
  *v11 = v12;
  v11[1] = sub_2315B4660;

  return sub_2315FF5D4(a1, v16, v14, v3, v4, v5, v6, v7);
}

unint64_t sub_2316019AC()
{
  result = qword_27DD60888;
  if (!qword_27DD60888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60888);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StatefulSuggestionsClient.DefaultKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StatefulSuggestionsClient.DefaultKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231601B7C()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_22_5(v4);

  return v7(v6);
}

uint64_t sub_231601C10()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_22_5(v4);

  return v7(v6);
}

uint64_t sub_231601CA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6_7(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_231601D00(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_231601D8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1)
{

  return sub_231601D8C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_33_2()
{
  v1 = v0[9];
  v2 = v0[10];
  return v0[8];
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return sub_231606778();
}

uint64_t OUTLINED_FUNCTION_40_2()
{
  v2 = v0[21];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[13];
}

uint64_t OUTLINED_FUNCTION_41_1()
{

  return sub_231601CA4(v2, v0 + v4, v1, v3);
}

uint64_t OUTLINED_FUNCTION_42_1(uint64_t a1)
{

  return sub_231601D8C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1)
{

  return sub_231601D8C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_44_1(unint64_t *a1)
{

  return sub_231601D00(a1, 255, v1);
}

uint64_t OUTLINED_FUNCTION_45_2@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  return swift_getObjectType();
}

uint64_t sub_231601F54()
{
  v0 = sub_231605098();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231605088();
  v8 = sub_231605068();
  (*(v3 + 8))(v7, v0);
  return v8;
}

uint64_t StaticRequestIdProvider.randomId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_randomId;
  v4 = sub_231605098();
  v5 = OUTLINED_FUNCTION_5_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t StaticRequestIdProvider.__allocating_init(uuidString:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60268, &qword_231608230);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_231605098();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231605058();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_231605088();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_2315BE86C(v7);
    }
  }

  else
  {
    (*(v11 + 32))(v15, v7, v8);
  }

  v16 = type metadata accessor for StaticRequestIdProvider();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_randomId, v15, v8);
  v20 = (v19 + OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_uuidString);
  *v20 = a1;
  v20[1] = a2;
  return v19;
}

uint64_t StaticRequestIdProvider.__allocating_init(requestId:uuidString:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_randomId;
  v11 = sub_231605098();
  OUTLINED_FUNCTION_5_1(v11);
  (*(v12 + 32))(v9 + v10, a1);
  v13 = (v9 + OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_uuidString);
  *v13 = a2;
  v13[1] = a3;
  return v9;
}

uint64_t type metadata accessor for StaticRequestIdProvider()
{
  result = qword_27DD60890;
  if (!qword_27DD60890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticRequestIdProvider.init(requestId:uuidString:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_randomId;
  v8 = sub_231605098();
  OUTLINED_FUNCTION_5_1(v8);
  (*(v9 + 32))(v3 + v7, a1);
  v10 = (v3 + OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_uuidString);
  *v10 = a2;
  v10[1] = a3;
  return v3;
}

uint64_t sub_23160240C()
{
  if (*(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_uuidString + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_uuidString);
  }

  else
  {
    v1 = sub_231605068();
  }

  return v1;
}

uint64_t StaticRequestIdProvider.deinit()
{
  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_randomId;
  v2 = sub_231605098();
  OUTLINED_FUNCTION_5_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_uuidString + 8);

  return v0;
}

uint64_t StaticRequestIdProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_randomId;
  v2 = sub_231605098();
  OUTLINED_FUNCTION_5_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_uuidString + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_23160269C()
{
  result = sub_231605098();
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

uint64_t String.fromBase64String<A>()@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_231605008();
  if (v5 >> 60 == 15)
  {
    v6 = 1;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v9 = sub_231604F38();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_231604F28();
    v6 = 0;
    sub_231604F18();

    sub_2315C95D0(v7, v8);
  }

  return __swift_storeEnumTagSinglePayload(a2, v6, 1, a1);
}

Swift::String_optional __swiftcall Encodable.toBase64String()()
{
  v0 = sub_231604F78();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_231604F68();
  v3 = sub_231604F58();
  v5 = v4;
  sub_2315B2F24(v3, v4);
  v6 = sub_231605028();
  v8 = v7;
  sub_2315B300C(v3, v5);

  sub_2315B300C(v3, v5);
  v9 = v6;
  v10 = v8;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_23160294C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2315CAB60(a1, v18);
    v6 = v19;
    v7 = v20;
    v8 = v21;
    v9 = __swift_mutable_project_boxed_opaque_existential_2(v18, v19);
    v10 = *(*(v6 - 8) + 64);
    MEMORY[0x28223BE20](v9);
    v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v12);
    sub_231604A58(v12, a2, a3, v3, v6, v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  else
  {
    sub_2315CA9BC(a1);
    v15 = OUTLINED_FUNCTION_41();
    sub_2315F0990(v15, v16, v17);

    return sub_2315CA9BC(v18);
  }
}

uint64_t static OfflineGenerationSuggestionsClient.getInteractionBuilder@Sendable (intentQueries:executionParameters:deviceState:)@<X0>(uint64_t a1@<X2>, __n128 **a2@<X8>)
{
  sub_2315B4568(a1, v9);
  v3 = type metadata accessor for OfflineGenerationInteractionBuilder();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_41();
  v7 = OfflineGenerationInteractionBuilder.init(intentQueries:executionParameters:deviceState:)(v4, v5, v6);
  a2[3] = v3;
  a2[4] = &protocol witness table for OfflineGenerationInteractionBuilder;
  *a2 = v7;
}

void *OfflineGenerationSuggestionsClient.__allocating_init(suggestionService:interactionBuilder:requestId:)()
{
  OUTLINED_FUNCTION_7_7();
  v5 = v4;
  v6 = swift_allocObject();
  sub_2315BCA58(v5, (v6 + 2));
  v6[7] = v3;
  v6[8] = v2;
  v6[9] = v1;
  v6[10] = v0;
  return v6;
}

void *OfflineGenerationSuggestionsClient.init(suggestionService:interactionBuilder:requestId:)()
{
  OUTLINED_FUNCTION_7_7();
  sub_2315BCA58(v5, (v1 + 2));
  v1[7] = v4;
  v1[8] = v3;
  v1[9] = v2;
  v1[10] = v0;
  return v1;
}

uint64_t OfflineGenerationSuggestionsClient.getSuggestionsForIntents(for:)()
{
  OUTLINED_FUNCTION_8();
  v1[47] = v2;
  v1[48] = v0;
  v1[46] = v3;
  v4 = sub_231605E28();
  v1[49] = v4;
  OUTLINED_FUNCTION_4(v4);
  v1[50] = v5;
  v7 = *(v6 + 64) + 15;
  v1[51] = swift_task_alloc();
  v8 = sub_231605098();
  v1[52] = v8;
  OUTLINED_FUNCTION_4(v8);
  v1[53] = v9;
  v11 = *(v10 + 64) + 15;
  v1[54] = swift_task_alloc();
  v12 = sub_231605FA8();
  v1[55] = v12;
  OUTLINED_FUNCTION_4(v12);
  v1[56] = v13;
  v15 = *(v14 + 64) + 15;
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v16 = sub_231605F68();
  v1[59] = v16;
  OUTLINED_FUNCTION_4(v16);
  v1[60] = v17;
  v19 = *(v18 + 64) + 15;
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v20);
}

uint64_t sub_231602D94()
{
  if (qword_280FE9628 != -1)
  {
LABEL_30:
    swift_once();
  }

  v1 = *(v0 + 376);
  v2 = sub_2316066E8();
  __swift_project_value_buffer(v2, qword_280FE9630);

  v3 = sub_2316066C8();
  v4 = sub_231606968();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 376);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_2315AF000, v3, v4, "Building Interaction in OfflineGenerationSuggestionsClient with intentQuery: %ld", v7, 0xCu);
    MEMORY[0x231933730](v7, -1, -1);
  }

  else
  {
    v8 = *(v0 + 376);
  }

  v9 = *(v0 + 376);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = *(v0 + 480);
    v13 = *(v0 + 448);
    v87 = MEMORY[0x277D84F90];
    sub_231604170(0, v10, 0);
    v11 = v87;
    v85 = *(v13 + 16);
    v14 = *(v13 + 80);
    OUTLINED_FUNCTION_8_3();
    v16 = v9 + v15;
    v82 = *(v13 + 72);
    v83 = v10;
    v17 = (v13 + 8);
    do
    {
      v18 = *(v0 + 496);
      v19 = *(v0 + 464);
      v20 = *(v0 + 440);
      v21 = OUTLINED_FUNCTION_41();
      v85(v21);
      sub_231605F88();
      (*v17)(v19, v20);
      v23 = *(v87 + 16);
      v22 = *(v87 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_231604170(v22 > 1, v23 + 1, 1);
      }

      v24 = *(v0 + 496);
      v25 = *(v0 + 472);
      *(v87 + 16) = v23 + 1;
      v26 = *(v12 + 80);
      OUTLINED_FUNCTION_8_3();
      (*(v12 + 32))(v87 + v27 + *(v12 + 72) * v23);
      v16 += v82;
      --v10;
    }

    while (v10);
    v10 = v83;
  }

  *(v0 + 504) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
  v86 = sub_231606728();
  if (!v10)
  {
LABEL_22:
    *(v0 + 512) = v86;
    v68 = *(v0 + 384);
    v69 = v68[5];
    v70 = v68[6];
    OUTLINED_FUNCTION_10_3(v68 + 2);
    v71 = *(MEMORY[0x277D60468] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    *(v0 + 520) = v72;
    *v72 = v73;
    v72[1] = sub_231603508;

    return MEMORY[0x2821C5CD8](v0 + 208);
  }

  v28 = *(v0 + 480);
  v29 = *(v0 + 448);
  v30 = *(v0 + 424);
  v31 = *(v0 + 376);
  sub_231605538();
  v32 = *(v29 + 16);
  v29 += 16;
  v80 = v32;
  v33 = *(v29 + 64);
  OUTLINED_FUNCTION_8_3();
  v35 = v31 + v34;
  v78 = (v30 + 8);
  v79 = (v28 + 8);
  v76 = (v29 - 8);
  v77 = *(v29 + 56);
  while (1)
  {
    v84 = v10;
    v36 = *(v0 + 488);
    v37 = *(v0 + 472);
    v39 = *(v0 + 432);
    v38 = *(v0 + 440);
    v40 = *(v0 + 416);
    v81 = v35;
    v80(*(v0 + 456));
    sub_231605F88();
    sub_231605F58();
    (*v79)(v36, v37);
    v41 = sub_231605068();
    v43 = v42;
    (*v78)(v39, v40);
    v88 = sub_231605518();
    v89 = v44;
    MEMORY[0x231932CB0](v41, v43);

    v45 = sub_2316063D8();
    *(v0 + 40) = v45;
    v46 = MEMORY[0x277D610F8];
    v47 = sub_231604218(&qword_280FE9590, MEMORY[0x277D610F8]);
    *(v0 + 48) = v47;
    v48 = sub_231604218(&qword_280FE9598, v46);
    *(v0 + 56) = v48;
    __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_231605F98();
    sub_2315CAB60((v0 + 16), (v0 + 64));
    v49 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 64, *(v0 + 88));
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 136) = v45;
    *(v0 + 144) = v47;
    *(v0 + 152) = v48;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    v51 = *(v45 - 8);
    (*(v51 + 16))(boxed_opaque_existential_1, v49, v45);
    v52 = sub_2315CD0A0(v88, v89);
    if (__OFADD__(v86[2], (v53 & 1) == 0))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v54 = v52;
    v55 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604E8, &qword_231608FA0);
    if (sub_231606AC8())
    {
      break;
    }

LABEL_17:
    if (v55)
    {
      v58 = (v86[7] + 48 * v54);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      sub_2315CAB60((v0 + 112), v58);
    }

    else
    {
      v59 = *(v0 + 136);
      v75 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 112, v59);
      v60 = *(v59 - 8);
      v61 = *(v60 + 64) + 15;
      v62 = swift_task_alloc();
      (*(v60 + 16))(v62, v75, v59);
      *(v0 + 184) = v45;
      *(v0 + 192) = v47;
      *(v0 + 200) = v48;
      v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 160));
      (*(v51 + 32))(v63, v62, v45);
      v86[(v54 >> 6) + 8] |= 1 << v54;
      v64 = (v86[6] + 16 * v54);
      *v64 = v88;
      v64[1] = v89;
      sub_2315CAB60((v0 + 160), (v86[7] + 48 * v54));
      v65 = v86[2];
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        goto LABEL_29;
      }

      v86[2] = v67;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
    }

    (*v76)(*(v0 + 456), *(v0 + 440));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
    v35 = v81 + v77;
    v10 = v84 - 1;
    if (v84 == 1)
    {
      goto LABEL_22;
    }
  }

  v56 = sub_2315CD0A0(v88, v89);
  if ((v55 & 1) == (v57 & 1))
  {
    v54 = v56;
    goto LABEL_17;
  }

  return sub_231606C08();
}

uint64_t sub_231603508()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 520);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2316035EC()
{
  v1 = *(v0 + 384);
  v2 = v1[5];
  v3 = v1[6];
  OUTLINED_FUNCTION_10_3(v1 + 2);
  v4 = *(v3 + 8);
  v5 = *(MEMORY[0x277D60470] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 528) = v6;
  *v6 = v7;
  v6[1] = sub_2316036A4;

  return MEMORY[0x2821C5CE0](v0 + 288, v2, v4);
}

uint64_t sub_2316036A4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 528);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_231603788()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[48];
  v4 = v0[40];
  __swift_project_boxed_opaque_existential_1(v0 + 36, v0[39]);
  sub_2316055E8();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 36);
  v5 = v3[7];
  v6 = v3[8];
  v7 = OUTLINED_FUNCTION_41();
  v8(v7);

  v9 = v0[44];
  v10 = v0[45];
  OUTLINED_FUNCTION_10_3(v0 + 41);
  v11 = v3[9];
  v12 = v3[10];
  v13 = *(v10 + 8);
  v19 = (v13 + *v13);
  v14 = v13[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[67] = v15;
  *v15 = v16;
  v15[1] = sub_231603920;
  v17 = v0[51];

  return v19(v17, v11, v12, v9, v10);
}

uint64_t sub_231603920()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 536);
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 544) = v0;

  if (v0)
  {
    v7 = sub_231603C70;
  }

  else
  {
    v7 = sub_231603A24;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_231603A24()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);
  v1 = v0[29];
  v2 = v0[30];
  OUTLINED_FUNCTION_10_3(v0 + 26);
  v3 = *(MEMORY[0x277D60438] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[69] = v4;
  *v4 = v5;
  v4[1] = sub_231603AE0;
  v6 = v0[51];
  v7 = v0[46];

  return MEMORY[0x2821C5C98](v7, v6, v1, v2);
}

uint64_t sub_231603AE0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 552);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_231603BC4()
{
  (*(v0[50] + 8))(v0[51], v0[49]);
  OUTLINED_FUNCTION_4_5();

  v1 = v0[1];

  return v1();
}

uint64_t sub_231603C70()
{
  v1 = v0[68];
  v2 = v0[54];
  v3 = v0[46];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);
  sub_231606528();
  sub_231606058();
  sub_231604218(&qword_280FE95F0, MEMORY[0x277D60A60]);
  sub_231605088();
  sub_231605E58();

  OUTLINED_FUNCTION_4_5();

  v4 = v0[1];

  return v4();
}

uint64_t *OfflineGenerationSuggestionsClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  return v0;
}

uint64_t OfflineGenerationSuggestionsClient.__deallocating_deinit()
{
  OfflineGenerationSuggestionsClient.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_231603E00()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231603EAC;

  return OfflineGenerationSuggestionsClient.getSuggestionsForIntents(for:)();
}

uint64_t sub_231603EAC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

size_t sub_231603F90(size_t a1, int64_t a2, char a3)
{
  result = sub_23160489C(a1, a2, a3, *v3, &qword_27DD608C0, &qword_23160A028, MEMORY[0x277D60C18], sub_2315DA6B4);
  *v3 = result;
  return result;
}

size_t sub_231603FE8(size_t a1, int64_t a2, char a3)
{
  result = sub_2316042B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_231604008(size_t a1, int64_t a2, char a3)
{
  result = sub_23160489C(a1, a2, a3, *v3, &qword_27DD603F0, &qword_2316095B0, MEMORY[0x277D606E0], sub_2315DA6E0);
  *v3 = result;
  return result;
}

size_t sub_231604060(size_t a1, int64_t a2, char a3)
{
  result = sub_23160489C(a1, a2, a3, *v3, &qword_27DD608A0, &qword_231609FF8, MEMORY[0x277D604E8], sub_2315DA710);
  *v3 = result;
  return result;
}

uint64_t sub_2316040B8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2316044B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2316040D8(size_t a1, int64_t a2, char a3)
{
  result = sub_23160489C(a1, a2, a3, *v3, &unk_27DD608D0, &unk_23160A040, MEMORY[0x277D5DD60], sub_2315DA748);
  *v3 = result;
  return result;
}

uint64_t sub_231604130(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2316045B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_231604150(size_t a1, int64_t a2, char a3)
{
  result = sub_2316046D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_231604170(size_t a1, int64_t a2, char a3)
{
  result = sub_23160489C(a1, a2, a3, *v3, &qword_27DD608C8, &unk_23160A030, MEMORY[0x277D608B8], sub_2315DA864);
  *v3 = result;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_2(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_231604218(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_2316042B0(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD608B8, &unk_23160A018);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60550, &dword_231609010) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60550, &dword_231609010) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2315DA6CC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2316044B8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60588, &qword_231609048);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2315DA728((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2316045B8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60548, &qword_2316098E0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_2315DA760((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60420, &qword_2316096F0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_2316046D0(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD608B0, &unk_23160A008);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60540, &unk_231609000) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60540, &unk_231609000) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2315DA788(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_23160489C(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
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
LABEL_25:
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
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = a7(0);
  OUTLINED_FUNCTION_4(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((result - v20) / v18);
LABEL_19:
  v23 = *(*(a7(0) - 8) + 80);
  OUTLINED_FUNCTION_8_3();
  if (v11)
  {
    a8(a4 + v24, v14, v21 + v24);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v21;
}

uint64_t sub_231604A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v23 - v18;
  (*(v13 + 32))(&v23 - v18);
  v20 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *a4;
  (*(v13 + 16))(v17, v19, a5);
  sub_231604BD8(v17, a2, a3, isUniquelyReferenced_nonNull_native, &v24, a5, a6, a7);
  result = (*(v13 + 8))(v19, a5);
  *a4 = v24;
  return result;
}

_OWORD *sub_231604BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a6;
  v35 = a7;
  v36 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v16 = *a5;
  v17 = sub_2315CD0A0(a2, a3);
  if (__OFADD__(v16[2], (v18 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v17;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604E8, &qword_231608FA0);
  if ((sub_231606AC8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = *a5;
  v22 = sub_2315CD0A0(a2, a3);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_10:
    result = sub_231606C08();
    __break(1u);
    return result;
  }

  v19 = v22;
LABEL_5:
  v24 = *a5;
  if (v20)
  {
    v25 = (v24[7] + 48 * v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    return sub_2315CAB60(&v33, v25);
  }

  else
  {
    v27 = v34;
    v28 = __swift_mutable_project_boxed_opaque_existential_2(&v33, v34);
    v29 = *(*(v27 - 8) + 64);
    MEMORY[0x28223BE20](v28);
    v31 = &v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v31);
    sub_231604E0C(v19, a2, a3, v31, v24, a6, a7, a8);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v33);
  }
}

_OWORD *sub_231604E0C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a6;
  v22 = a7;
  v23 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v15 = (a5[6] + 16 * a1);
  *v15 = a2;
  v15[1] = a3;
  result = sub_2315CAB60(&v20, (a5[7] + 48 * a1));
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
    return sub_231604EE8();
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}