uint64_t sub_2697C10D8()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;
  v5 = v2[35];
  *v4 = *v1;
  v3[36] = v0;

  v6 = v2[21];
  if (v0)
  {
    v7 = v3[20];
    v8 = v3[18];

    v9 = sub_2697C16DC;
  }

  else
  {
    v9 = sub_2697C121C;
  }

  return MEMORY[0x2822009F8](v9, v6, 0);
}

void sub_2697C121C()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];
  v6 = v0[15];

  sub_26981D518(v4, v3, v5);

  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v7 = v0[34];
    v9 = v0[21];
    v8 = v0[22];
    v11 = v0[19];
    v10 = v0[20];
    v13 = v0[17];
    v12 = v0[18];

    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    if (v10)
    {
      v15 = v11;
    }

    else
    {
      v15 = 0;
    }

    sub_269698048(v8, &qword_280324E98, &unk_269863360);
    swift_beginAccess();
    sub_26983FED8(v13, v12, v15, v14);
    swift_endAccess();

    sub_2697C3370();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_3_37();

    OUTLINED_FUNCTION_7_7();
  }

  else
  {
    v69 = v6;
    v17 = v0[26];
    v18 = v0[22];
    v19 = v0[20];
    v20 = v0[18];

    sub_2697BE740(v18, v17);
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v21 = v0[33];
    v23 = v0[28];
    v22 = v0[29];
    v24 = v0[26];
    v25 = v0[25];
    v26 = v0[20];
    v27 = v0[18];
    OUTLINED_FUNCTION_33_0(v0[27], qword_281571B38);
    v21(v22);
    sub_2697BE3D4(v24, v25);

    v28 = sub_2698548B4();
    v29 = sub_269854F04();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[34];
    v32 = v0[32];
    v33 = v0[29];
    v34 = v0[27];
    v35 = v0[25];
    if (v30)
    {
      v63 = v0[24];
      v64 = v0[23];
      v67 = v0[32];
      v68 = v0[29];
      v36 = v0[20];
      v62 = v0[19];
      v66 = v0[27];
      v37 = v0[17];
      v38 = v0[18];
      v65 = v0[28];
      v39 = OUTLINED_FUNCTION_9_3();
      swift_slowAlloc();
      *v39 = 136315650;
      v40 = OUTLINED_FUNCTION_14_20();
      *(v39 + 4) = sub_26974F520(v40, v38, v41);
      *(v39 + 12) = 2080;
      OUTLINED_FUNCTION_13_21();
      if (v43)
      {
        v44 = v42;
      }

      else
      {
        v44 = v36;
      }

      v45 = OUTLINED_FUNCTION_14_20();
      v47 = sub_26974F520(v45, v44, v46);

      *(v39 + 14) = v47;
      *(v39 + 22) = 2080;
      sub_2697BE3D4(v35, v63);
      sub_269854AE4();
      v49 = v48;
      sub_2697C33C4(v35);
      v50 = OUTLINED_FUNCTION_14_20();
      v52 = sub_26974F520(v50, v49, v51);

      *(v39 + 24) = v52;
      _os_log_impl(&dword_269684000, v28, v29, "Returning playable for %s and %s: %s", v39, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v67(v68, v66);
    }

    else
    {

      sub_2697C33C4(v35);
      v32(v33, v34);
    }

    v54 = v0[30];
    v53 = v0[31];
    v55 = v0[29];
    v56 = v0[25];
    v57 = v0[24];
    v58 = v0[22];
    v59 = v0[16];
    sub_2697BE740(v0[26], v59);

    *(v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324210, &qword_26985F1D0) + 28)) = v69;

    OUTLINED_FUNCTION_7_7();
  }

  OUTLINED_FUNCTION_69();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2697C16DC()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 288);
  OUTLINED_FUNCTION_3_37();

  OUTLINED_FUNCTION_7_7();

  return v3();
}

uint64_t sub_2697C1788(unint64_t a1, unint64_t a2)
{
  v141 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  v4 = OUTLINED_FUNCTION_8_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v128 = &v127 - v7;
  v8 = sub_2698548D4();
  v9 = OUTLINED_FUNCTION_8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v127 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v127 - v17;
  MEMORY[0x28223BE20](v16);
  inited = (&v127 - v19);
  if (qword_280322700 != -1)
  {
LABEL_98:
    OUTLINED_FUNCTION_0_4();
  }

  v131 = v18;
  OUTLINED_FUNCTION_33_0(v8, qword_281571B38);
  v21 = *(v11 + 16);
  v129 = v22;
  v130 = v11 + 16;
  v134 = v21;
  (v21)(inited);
  v23 = sub_2698548B4();
  v24 = sub_269854F44();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_16_2();
    *v25 = 0;
    _os_log_impl(&dword_269684000, v23, v24, "Inside BackgroundPlayableFetch::triggerFetch", v25, 2u);
    OUTLINED_FUNCTION_10();
  }

  v26 = *(v11 + 8);
  v11 += 8;
  v132 = v8;
  v135 = v11;
  *&v133 = v26;
  v26(inited, v8);
  v27 = *(a1 + 16);
  v138 = a1 + 32;
  v139 = v27;
  v18 = 0;
  v145 =  + 40;
  v28 = MEMORY[0x277D84F90];
  while (v18 != v139)
  {
    v29 = (v138 + 16 * v18);
    v11 = *v29;
    inited = v29[1];
    v30 = *(v141 + 16);
    swift_bridgeObjectRetain_n();
    if (v30)
    {
      v31 = v145;
      do
      {
        v33 = *(v31 - 1);
        v32 = *v31;
        swift_bridgeObjectRetain_n();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = *(v28 + 16);
          OUTLINED_FUNCTION_3_5();
          sub_26977CF38();
          v28 = v38;
        }

        v35 = *(v28 + 16);
        v34 = *(v28 + 24);
        a1 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          OUTLINED_FUNCTION_9(v34);
          sub_26977CF38();
          v28 = v39;
        }

        *(v28 + 16) = a1;
        v36 = (v28 + 32 * v35);
        v36[4] = v11;
        v36[5] = inited;
        v36[6] = v33;
        v36[7] = v32;

        v31 += 2;
        --v30;
      }

      while (v30);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = *(v28 + 16);
        OUTLINED_FUNCTION_3_5();
        sub_26977CF38();
        v28 = v43;
      }

      a1 = *(v28 + 16);
      v40 = *(v28 + 24);
      if (a1 >= v40 >> 1)
      {
        OUTLINED_FUNCTION_9(v40);
        sub_26977CF38();
        v28 = v44;
      }

      *(v28 + 16) = a1 + 1;
      v41 = (v28 + 32 * a1);
      v41[4] = v11;
      v41[5] = inited;
      v41[6] = 0;
      v41[7] = 0xE000000000000000;
    }

    ++v18;
  }

  v45 = 0;
  v140 = v28 + 56;
  v8 = MEMORY[0x277D84F90];
LABEL_21:
  while (1)
  {
    v137 = v8;
    if (v45 == v139)
    {
      break;
    }

    if (v45 >= v139)
    {
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    if (__OFADD__(v45, 1))
    {
      goto LABEL_96;
    }

    v136 = v45 + 1;
    v46 = (v138 + 16 * v45);
    v11 = v46[1];
    v145 = *v46;
    v47 = *(v28 + 16);

    v48 = 0;
    v18 = -v47;
    v142 = MEMORY[0x277D84F90];
LABEL_25:
    v8 = v48 + 1;
    inited = (v140 + 32 * v48);
    while (v18 + v8 != 1)
    {
      v48 = v8;
      if ((v8 - 1) >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_87;
      }

      v50 = *(inited - 3);
      v49 = *(inited - 2);
      v51 = *(inited - 1);
      a1 = *inited;
      if (v50 == v145 && v49 == v11)
      {
        v50 = v145;
LABEL_35:

        v53 = v142;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v147 = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_269815344(0, v53[2] + 1, 1);
          v53 = v147;
        }

        v56 = v53[2];
        v55 = v53[3];
        v57 = v56 + 1;
        if (v56 >= v55 >> 1)
        {
          v59 = OUTLINED_FUNCTION_9(v55);
          v143 = v60;
          sub_269815344(v59, v60, 1);
          v57 = v143;
          v53 = v147;
        }

        v53[2] = v57;
        v142 = v53;
        v58 = &v53[4 * v56];
        v58[4] = v50;
        v58[5] = v49;
        v58[6] = v51;
        v58[7] = a1;
        goto LABEL_25;
      }

      ++v8;
      inited += 4;
      if (sub_269855584())
      {
        goto LABEL_35;
      }
    }

    v61 = v142;
    v143 = v142[2];
    swift_beginAccess();
    v62 = 0;
    for (i = v61 + 7; ; i += 4)
    {
      if (v143 == v62)
      {

        v45 = v136;
        v8 = v137;
        goto LABEL_21;
      }

      if (v62 >= v61[2])
      {
        __break(1u);
        goto LABEL_92;
      }

      inited = *(v144 + 152);
      if (!inited[2])
      {

        goto LABEL_49;
      }

      v18 = *(i - 1);
      a1 = *i;
      v8 = *(i - 3);
      v64 = *(i - 2);
      v65 = *(v144 + 152);

      sub_26973D3A8(v8, v64, v18, a1);
      if ((v66 & 1) == 0)
      {
        break;
      }

      ++v62;
    }

LABEL_49:
    v8 = v137;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v146[0] = v8;
    a1 = v136;
    if ((v67 & 1) == 0)
    {
      inited = v146;
      sub_269814F0C(0, *(v8 + 16) + 1, 1);
      v8 = v146[0];
    }

    v18 = *(v8 + 16);
    v68 = *(v8 + 24);
    if (v18 >= v68 >> 1)
    {
      v70 = OUTLINED_FUNCTION_9(v68);
      inited = v146;
      sub_269814F0C(v70, v18 + 1, 1);
      v8 = v146[0];
    }

    *(v8 + 16) = v18 + 1;
    v69 = v8 + 16 * v18;
    *(v69 + 32) = v145;
    *(v69 + 40) = v11;
    v45 = a1;
  }

  v71 = v131;
  v28 = v129;
  v11 = v132;
  (v134)(v131, v129, v132);

  v72 = sub_2698548B4();
  v73 = sub_269854F14();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = OUTLINED_FUNCTION_27_2();
    v75 = OUTLINED_FUNCTION_9_3();
    v146[0] = v75;
    *v74 = 136315138;
    v76 = MEMORY[0x26D645BC0](v8, MEMORY[0x277D837D0]);
    v78 = sub_26974F520(v76, v77, v146);

    *(v74 + 4) = v78;
    v8 = v137;
    _os_log_impl(&dword_269684000, v72, v73, "Reduced list of IDs to: %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v75);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  a1 = v135;
  (v133)(v71, v11);
  v135 = *(v8 + 16);
  if (v135)
  {
    v79 = sub_269854DB4();
    v80 = v128;
    __swift_storeEnumTagSinglePayload(v128, 1, 1, v79);
    v81 = sub_2697C3264();
    inited = swift_allocObject();
    v82 = v144;
    inited[2] = v144;
    inited[3] = v81;
    inited[4] = v82;
    inited[5] = v8;
    v18 = v141;
    inited[6] = v141;
    swift_retain_n();

    v145 = sub_2697C2C78(0, 0, v80, &unk_269863338, inited);
    v83 = 0;
    v134 = (v8 + 32);
    v139 = (v18 + 40);
    v133 = xmmword_269857710;
LABEL_58:
    if (v83 == v135)
    {
    }

    if (v83 < *(v8 + 16))
    {
      v84 = &v134[16 * v83];
      v138 = v83 + 1;
      v85 = *v84;
      v86 = v84[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
      inited = swift_initStackObject();
      *(inited + 1) = v133;
      inited[4] = v85;
      inited[5] = v86;
      v136 = v86;
      swift_bridgeObjectRetain_n();

      v87 = MEMORY[0x277D84F90];
      v18 = inited[4];
      v11 = inited[5];
      v8 = *(v141 + 16);
      swift_bridgeObjectRetain_n();
      if (v8)
      {
        v88 = v139;
        do
        {
          v90 = *(v88 - 1);
          v89 = *v88;
          swift_bridgeObjectRetain_n();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = v87[2];
            OUTLINED_FUNCTION_3_5();
            sub_26977CF38();
            v87 = v95;
          }

          v92 = v87[2];
          v91 = v87[3];
          a1 = v92 + 1;
          if (v92 >= v91 >> 1)
          {
            OUTLINED_FUNCTION_9(v91);
            sub_26977CF38();
            v87 = v96;
          }

          v87[2] = a1;
          v93 = &v87[4 * v92];
          v93[4] = v18;
          v93[5] = v11;
          v93[6] = v90;
          v93[7] = v89;

          v88 += 2;
          --v8;
        }

        while (v8);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = v87[2];
          OUTLINED_FUNCTION_3_5();
          sub_26977CF38();
          v87 = v100;
        }

        a1 = v87[2];
        v97 = v87[3];
        if (a1 >= v97 >> 1)
        {
          OUTLINED_FUNCTION_9(v97);
          sub_26977CF38();
          v87 = v101;
        }

        v87[2] = a1 + 1;
        v98 = &v87[4 * a1];
        v98[4] = v18;
        v98[5] = v11;
        v98[6] = 0;
        v98[7] = 0xE000000000000000;
      }

      swift_setDeallocating();
      sub_269819D84();
      v102 = 0;
      v140 = v87[2];
      v103 = v87 + 7;
      while (1)
      {
        if (v140 == v102)
        {

          v8 = v137;
          v83 = v138;
          goto LABEL_58;
        }

        if (v102 >= v87[2])
        {
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v142 = v103;
        v143 = v102;
        a1 = *(v103 - 3);
        v11 = *(v103 - 2);
        v104 = *(v103 - 1);
        v105 = *v103;
        v106 = v144;
        swift_beginAccess();

        v107 = *(v106 + 152);
        v8 = swift_isUniquelyReferenced_nonNull_native();
        v147 = *(v106 + 152);
        inited = v147;
        *(v106 + 152) = 0x8000000000000000;
        v108 = OUTLINED_FUNCTION_17_17();
        v110 = inited[2];
        v111 = (v109 & 1) == 0;
        v18 = v110 + v111;
        if (__OFADD__(v110, v111))
        {
          goto LABEL_93;
        }

        v112 = v108;
        v113 = v109;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324E88, &qword_269863348);
        inited = &v147;
        if (sub_2698552E4())
        {
          inited = v147;
          v114 = OUTLINED_FUNCTION_17_17();
          if ((v113 & 1) != (v115 & 1))
          {
            result = sub_2698555F4();
            __break(1u);
            return result;
          }

          v112 = v114;
        }

        v18 = v147;
        if (v113)
        {
          v116 = v147[7];
          v117 = *(v116 + 8 * v112);
          *(v116 + 8 * v112) = v145;
        }

        else
        {
          v147[(v112 >> 6) + 8] |= 1 << v112;
          v118 = (*(v18 + 48) + 32 * v112);
          *v118 = a1;
          v118[1] = v11;
          v118[2] = v104;
          v118[3] = v105;
          *(*(v18 + 56) + 8 * v112) = v145;
          v119 = *(v18 + 16);
          v120 = __OFADD__(v119, 1);
          v121 = v119 + 1;
          if (v120)
          {
            goto LABEL_94;
          }

          *(v18 + 16) = v121;
        }

        *(v144 + 152) = v18;
        swift_endAccess();

        v103 = v142 + 4;
        v102 = v143 + 1;
      }
    }

    goto LABEL_97;
  }

LABEL_87:

  v122 = v127;
  (v134)(v127, v28, v11);
  v123 = sub_2698548B4();
  v124 = sub_269854F14();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = OUTLINED_FUNCTION_16_2();
    *v125 = 0;
    _os_log_impl(&dword_269684000, v123, v124, "Empty list of IDs to prefetch, skipping call", v125, 2u);
    OUTLINED_FUNCTION_10();
  }

  return (v133)(v122, v11);
}

uint64_t sub_2697C24B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  v8 = sub_2698548D4();
  v6[11] = v8;
  v9 = *(v8 - 8);
  v6[12] = v9;
  v10 = *(v9 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697C2598, a4, 0);
}

uint64_t sub_2697C2598()
{
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v1 = v0[15];
  v2 = v0[12];
  v0[16] = OUTLINED_FUNCTION_33_0(v0[11], qword_281571B38);
  v3 = *(v2 + 16);
  v0[17] = v3;
  v0[18] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1);
  v4 = sub_2698548B4();
  v5 = sub_269854F14();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_16_2();
    *v6 = 0;
    _os_log_impl(&dword_269684000, v4, v5, "Task executed", v6, 2u);
    OUTLINED_FUNCTION_10();
  }

  v7 = v0[15];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[8];

  v0[19] = *(v9 + 8);
  v11 = OUTLINED_FUNCTION_22_3();
  v12(v11);
  __swift_project_boxed_opaque_existential_1((v10 + 112), *(v10 + 136));
  v13 = swift_task_alloc();
  v0[20] = v13;
  *v13 = v0;
  v13[1] = sub_2697C272C;
  v15 = v0[9];
  v14 = v0[10];

  return sub_2697BD230();
}

uint64_t sub_2697C272C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[20];
  v7 = *v3;
  v5[21] = v2;

  v8 = v4[8];
  if (v2)
  {
    v9 = sub_2697C2A20;
  }

  else
  {
    v9 = sub_2697C2860;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_2697C2860()
{
  v27 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  (*(v0 + 136))(*(v0 + 112), *(v0 + 128), *(v0 + 88));

  v3 = sub_2698548B4();
  v4 = sub_269854F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 152);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);
  if (v5)
  {
    v10 = *(v0 + 72);
    v25 = *(v0 + 152);
    v11 = OUTLINED_FUNCTION_27_2();
    v12 = OUTLINED_FUNCTION_9_3();
    v26 = v12;
    *v11 = 136315138;
    v13 = MEMORY[0x26D645BC0](v10, MEMORY[0x277D837D0]);
    v15 = sub_26974F520(v13, v14, &v26);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_269684000, v3, v4, "BackgroundFetch playables request returned success response for: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v16 = OUTLINED_FUNCTION_22_3();
    v25(v16);
  }

  else
  {

    v17 = OUTLINED_FUNCTION_22_3();
    v6(v17);
  }

  v18 = *(v0 + 32);
  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  v21 = *(v0 + 104);
  v22 = *(v0 + 56);
  *v22 = *(v0 + 24);
  v22[1] = v18;

  OUTLINED_FUNCTION_7_7();

  return v23();
}

uint64_t sub_2697C2A20()
{
  v34 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 72);
  (*(v0 + 136))(*(v0 + 104), *(v0 + 128), *(v0 + 88));

  v4 = v1;
  v5 = sub_2698548B4();
  v6 = sub_269854F24();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 168);
    v8 = *(v0 + 96);
    v31 = *(v0 + 104);
    v32 = *(v0 + 152);
    v9 = *(v0 + 88);
    v10 = *(v0 + 72);
    v11 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = MEMORY[0x26D645BC0](v10, MEMORY[0x277D837D0]);
    v14 = sub_26974F520(v12, v13, v33);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    *(v0 + 48) = v7;
    v15 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v16 = sub_269854AE4();
    v18 = sub_26974F520(v16, v17, v33);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_269684000, v5, v6, "BackgroundFetch playables request returned failure response for %s, error: %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v32(v31, v9);
  }

  else
  {
    v19 = *(v0 + 152);
    v21 = *(v0 + 96);
    v20 = *(v0 + 104);
    v22 = *(v0 + 88);

    v23 = OUTLINED_FUNCTION_22_3();
    v19(v23);
  }

  v24 = *(v0 + 168);
  v25 = *(v0 + 112);
  v26 = *(v0 + 120);
  v27 = *(v0 + 104);
  swift_willThrow();

  OUTLINED_FUNCTION_7_7();
  v29 = *(v0 + 168);

  return v28();
}

uint64_t sub_2697C2C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_2697B12E4(a3, v23 - v10);
  v12 = sub_269854DB4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_269698048(v11, &qword_280324D20, &qword_269860000);
  }

  else
  {
    sub_269854DA4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_269854D34();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_269854B04() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324E90, &unk_269863350);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_269698048(a3, &qword_280324D20, &qword_269860000);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_269698048(a3, &qword_280324D20, &qword_269860000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324E90, &unk_269863350);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void sub_2697C2F08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  v2 = OUTLINED_FUNCTION_8_9(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = sub_269854DB4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;

  sub_26983AA20();
}

uint64_t sub_2697C3004()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(v0 + 16);
  sub_2697C305C();
  OUTLINED_FUNCTION_7_7();

  return v2();
}

uint64_t sub_2697C305C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803241A0, &qword_26985F1E0);
  sub_2696B2880();
  v1 = sub_269854A04();
  swift_beginAccess();
  v2 = *(v0 + 152);
  *(v0 + 152) = v1;
}

uint64_t sub_2697C30DC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  v1 = *(v0 + 152);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2697C310C()
{
  sub_2697C30DC();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2697C315C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2697C319C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2697C3210()
{
  result = qword_280324E78;
  if (!qword_280324E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324E78);
  }

  return result;
}

unint64_t sub_2697C3264()
{
  result = qword_280324E80;
  if (!qword_280324E80)
  {
    type metadata accessor for BackgroundPlayableFetch();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324E80);
  }

  return result;
}

uint64_t sub_2697C32B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v8 = OUTLINED_FUNCTION_8_31(v7);

  return sub_2697C24B8(v8, v9, v10, v4, v5, v6);
}

unint64_t sub_2697C3370()
{
  result = qword_280324EA0;
  if (!qword_280324EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324EA0);
  }

  return result;
}

uint64_t sub_2697C33C4(uint64_t a1)
{
  v2 = _s8PlayableVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2697C3420()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_8_31(v5);

  return sub_2697C2FE4(v6, v7, v8, v4);
}

_BYTE *sub_2697C34C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2697C35A0()
{
  result = qword_280324EA8;
  if (!qword_280324EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324EA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_37()
{
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v8 = v0[22];
}

unint64_t OUTLINED_FUNCTION_17_17()
{

  return sub_26973D3A8(v1, v2, v0, v3);
}

id sub_2697C367C()
{
  v1 = v0;
  type metadata accessor for ContentImage();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = OUTLINED_FUNCTION_0_37();
  v4 = v1[1];
  v5 = sub_269854E84();
  [v3 setWidth_];

  v6 = *v1;
  v7 = sub_269854E84();
  [v3 setHeight_];

  if (v1[5])
  {
    v8 = v1[4];
    v9 = v1[5];
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7496556;
  }

  sub_2697C6C18(v8, v9, v3);
  sub_2697C6C7C(v1[2], v1[3], v3);
  return v3;
}

uint64_t sub_2697C374C()
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

uint64_t sub_2697C37A0(char a1)
{
  if (a1)
  {
    return 0x656B6F547478656ELL;
  }

  else
  {
    return 0x736D657469;
  }
}

uint64_t sub_2697C37FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2697C374C();
  *a2 = result;
  return result;
}

uint64_t sub_2697C382C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2697C37A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2697C3860@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697C374C();
  *a1 = result;
  return result;
}

uint64_t sub_2697C3894(uint64_t a1)
{
  v2 = sub_2697C6A9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697C38D0(uint64_t a1)
{
  v2 = sub_2697C6A9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697C390C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324EB0, &qword_2698634C8);
  OUTLINED_FUNCTION_8(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_2697C6A9C();
  sub_2698556E4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324EC0, &unk_2698634D0);
    sub_2697C781C(&qword_280324EC8, &qword_280324EC0, &unk_2698634D0, sub_2697C6AF0);
    sub_269855454();
    if (v11)
    {
      v7 = v11;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    sub_269855414();
    v9 = OUTLINED_FUNCTION_17_18();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

uint64_t sub_2697C3B1C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v5 = *(a1 + 16);
  v6 = (a1 + 32);
  v7 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (a3)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  for (i = !v8; v5; --v5)
  {
    memcpy(__dst, v6, 0x102uLL);
    memcpy(v16, v6, sizeof(v16));
    sub_2697C6CD4(__dst, &v13);
    v10 = sub_2697C3D4C(i);
    v11 = sub_269854D24();
    [v10 setIsInWatchList_];

    v12 = sub_2697C6D0C(__dst);
    MEMORY[0x26D645B90](v12);
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_269854CD4();
    }

    sub_269854CF4();
    result = v15;
    v6 += 264;
  }

  return result;
}

uint64_t sub_2697C3C58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6569766F4DLL && a2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_14_21() & 1) != 0)
  {
    return 4;
  }

  v6 = a1 == 2003789907 && a2 == 0xE400000000000000;
  if (v6 || (OUTLINED_FUNCTION_14_21() & 1) != 0)
  {
    return 1;
  }

  v7 = a1 == 0x6E6F73616553 && a2 == 0xE600000000000000;
  if (v7 || (OUTLINED_FUNCTION_14_21() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x65646F73697045 && a2 == 0xE700000000000000)
  {
    return 3;
  }

  if (OUTLINED_FUNCTION_14_21())
  {
    return 3;
  }

  return 0;
}

id sub_2697C3D4C(int a1)
{
  v2 = v1;
  v59 = a1;
  v58 = sub_269851D34();
  v3 = OUTLINED_FUNCTION_8(v58);
  v57 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0) - 8) + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  type metadata accessor for Content();
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_allocWithZone(ObjCClassFromMetadata);

  v19 = sub_2697C01B0(v13, v14);
  sub_2697A3DA0(v15, v16, v19);
  [v19 setType_];
  sub_2697C6D3C(v13, v14, v19);
  v20 = v1[11];
  v21 = v1[12];
  sub_269851C64();
  v22 = sub_269851C74();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v22);
  v24 = 0;
  if (EnumTagSinglePayload != 1)
  {
    v24 = sub_269851C24();
    EnumTagSinglePayload = (*(*(v22 - 8) + 8))(v12, v22);
  }

  OUTLINED_FUNCTION_0_16(EnumTagSinglePayload, sel_setDetailsUrl_);

  v25 = v2[6];
  if (v25 && v25[2])
  {
    v27 = v25[4];
    v26 = v25[5];
LABEL_8:

    v29 = sub_269854A64();

    goto LABEL_10;
  }

  if (v2[5])
  {
    v28 = v2[4];
    goto LABEL_8;
  }

  v29 = 0;
LABEL_10:
  [v19 setGenre_];

  v30 = sub_269854D24();
  OUTLINED_FUNCTION_0_16(v30, sel_setHasMoreResults_);

  if (v2[30])
  {
    v32 = 0;
  }

  else
  {
    *&v68 = v2[29];
    v32 = &v68;
    sub_269855544();
    sub_269854A64();
    v31 = OUTLINED_FUNCTION_25_15();
  }

  OUTLINED_FUNCTION_0_16(v31, sel_setEpisodeNumber_);

  if (v2[32])
  {
    v34 = 0;
  }

  else
  {
    *&v68 = v2[31];
    v34 = &v68;
    sub_269855544();
    sub_269854A64();
    v33 = OUTLINED_FUNCTION_25_15();
  }

  OUTLINED_FUNCTION_0_16(v33, sel_setSeasonNumber_);

  v35 = v2[26];
  if (v35)
  {
    v36 = v2[25];
    v37 = objc_allocWithZone(ObjCClassFromMetadata);
    v38 = OUTLINED_FUNCTION_0_37();
    OUTLINED_FUNCTION_0_16(v38, sel_setShow_);

    v39 = [v19 show];
    if (v39)
    {
      v40 = v39;
      sub_2697A3DA0(v36, v35, v39);
    }
  }

  if ((v2[8] & 1) == 0)
  {
    v41 = *(v2 + 7) / 1000.0;
    sub_269851CF4();
    v42 = sub_269851CD4();
    v43 = (*(v57 + 8))(v8, v58);
    OUTLINED_FUNCTION_0_16(v43, sel_setReleaseDate_);
  }

  sub_2697C6BA4(MEMORY[0x277D84F90], v19);
  v44 = *(v2 + 13);
  v45 = v2[16];
  v63 = v2[15];
  v61 = *(v2 + 17);
  v62 = v44;
  v46 = v2[22];
  if (v46)
  {
    v68 = *(v2 + 19);
    v47 = v2[21];
    v71 = *(v2 + 23);
    v69 = v47;
    v70 = v46;
    v48 = sub_2697C367C();
    [v48 &off_279C6F4F8];
    *&v64 = sub_2697C6B44(v19);
    if (v64)
    {
      v49 = v48;
      v50 = &v64;
      MEMORY[0x26D645B90]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_24_15();
      }

      v51 = sub_269854CF4();
      if (v64)
      {
        type metadata accessor for ContentImage();
        sub_269854CA4();
        v51 = OUTLINED_FUNCTION_25_15();
      }

      else
      {
        v50 = 0;
      }

      OUTLINED_FUNCTION_0_16(v51, sel_setImages_);
    }

    else
    {
      [v19 setImages_];
    }
  }

  if (v45)
  {
    v64 = v62;
    v67 = v61;
    v65 = v63;
    v66 = v45;
    v52 = sub_2697C367C();
    [v52 &off_279C6F4F8];
    v60 = sub_2697C6B44(v19);
    if (v60)
    {
      v53 = v52;
      v54 = &v60;
      MEMORY[0x26D645B90]();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_24_15();
      }

      v55 = sub_269854CF4();
      if (v60)
      {
        type metadata accessor for ContentImage();
        sub_269854CA4();
        v55 = OUTLINED_FUNCTION_25_15();
      }

      else
      {
        v54 = 0;
      }

      OUTLINED_FUNCTION_0_16(v55, sel_setImages_);
    }

    else
    {
      [v19 setImages_];
    }
  }

  return v19;
}

uint64_t sub_2697C4300(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4172657355736168 && a2 == 0xEF79746976697463)
  {

    return 1;
  }

  else
  {
    v7 = sub_269855584();

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

uint64_t sub_2697C43D0(char a1)
{
  if (a1)
  {
    return 0x4172657355736168;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

void sub_2697C4414()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v12 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324EF0, &qword_2698637D8);
  OUTLINED_FUNCTION_8(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v7);
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2697C7070();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    sub_2697C70C4();
    sub_269855494();
    memcpy(v16, v15, sizeof(v16));
    v9 = sub_269855424();
    v10 = OUTLINED_FUNCTION_15_22();
    v11(v10);
    memcpy(v13, v16, 0x101uLL);
    v13[257] = v9;
    sub_2697C6CD4(v13, v14);
    __swift_destroy_boxed_opaque_existential_0(v2);
    memcpy(v14, v16, 0x101uLL);
    v14[257] = v9;
    sub_2697C6D0C(v14);
    memcpy(v12, v13, 0x102uLL);
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697C4640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C4300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697C4668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2696D2830();
  *a1 = result;
  return result;
}

uint64_t sub_2697C4690(uint64_t a1)
{
  v2 = sub_2697C7070();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697C46CC(uint64_t a1)
{
  v2 = sub_2697C7070();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2697C4708(void *a1@<X8>)
{
  sub_2697C4414();
  if (!v1)
  {
    memcpy(a1, __src, 0x102uLL);
  }
}

uint64_t sub_2697C475C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65726E6567 && a2 == 0xE500000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701869940 && a2 == 0xE400000000000000;
            if (v10 || (sub_269855584() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 7107189 && a2 == 0xE300000000000000;
              if (v11 || (sub_269855584() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x736567616D69 && a2 == 0xE600000000000000;
                if (v12 || (sub_269855584() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6C746954776F6873 && a2 == 0xE900000000000065;
                  if (v13 || (sub_269855584() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6449776F6873 && a2 == 0xE600000000000000;
                    if (v14 || (sub_269855584() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4E65646F73697065 && a2 == 0xED00007265626D75;
                      if (v15 || (sub_269855584() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x754E6E6F73616573 && a2 == 0xEC0000007265626DLL)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_269855584();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

uint64_t sub_2697C4B00(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      v3 = 1819568500;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 2:
      v3 = 1919837543;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 3:
      v4 = 1919837543;
      goto LABEL_10;
    case 4:
      return 0x44657361656C6572;
    case 5:
      return 1701869940;
    case 6:
      return 7107189;
    case 7:
      v4 = 1734438249;
LABEL_10:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x736500000000;
      break;
    case 8:
      result = 0x6C746954776F6873;
      break;
    case 9:
      result = 0x6449776F6873;
      break;
    case 10:
      result = 0x4E65646F73697065;
      break;
    case 11:
      result = 0x754E6E6F73616573;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2697C4C2C()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F50, &qword_269863BD8);
  OUTLINED_FUNCTION_8(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  v9 = v2[3];
  v70 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v9);
  sub_2697C7798();
  sub_2698556E4();
  if (v0)
  {
    OUTLINED_FUNCTION_10_22();
    __swift_destroy_boxed_opaque_existential_0(v2);
    if (v9)
    {

      if ((v4 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v4)
    {
LABEL_5:
      if (!v44)
      {
        goto LABEL_9;
      }

LABEL_6:

      goto LABEL_9;
    }

    if ((v44 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v45 = v4;
  LOBYTE(v47[0]) = 0;
  OUTLINED_FUNCTION_5_31();
  v10 = sub_269855464();
  v43 = v11;
  OUTLINED_FUNCTION_0_46(1);
  v12 = sub_269855464();
  v42 = v13;
  OUTLINED_FUNCTION_0_46(2);
  v35 = sub_269855414();
  v41 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F60, &qword_269863BE0);
  LOBYTE(v46[0]) = 3;
  sub_2697C781C(&qword_280324F68, &qword_280324F60, &qword_269863BE0, sub_2697C7898);
  OUTLINED_FUNCTION_5_31();
  sub_269855454();
  v40 = v47[0];
  OUTLINED_FUNCTION_0_46(4);
  v34 = sub_269855434();
  v69 = v15 & 1;
  OUTLINED_FUNCTION_0_46(5);
  v33 = sub_269855464();
  v39 = v16;
  OUTLINED_FUNCTION_0_46(6);
  v32 = sub_269855464();
  v38 = v17;
  v64 = 7;
  sub_2697C78EC();
  OUTLINED_FUNCTION_5_31();
  sub_269855494();
  memcpy(v68, v65, sizeof(v68));
  OUTLINED_FUNCTION_0_46(8);
  v31 = sub_269855414();
  v37 = v18;
  OUTLINED_FUNCTION_0_46(9);
  v19 = sub_269855414();
  v36 = v20;
  v21 = v19;
  OUTLINED_FUNCTION_0_46(10);
  v30 = sub_269855444();
  v67 = v22 & 1;
  v63 = 11;
  OUTLINED_FUNCTION_5_31();
  v29 = sub_269855444();
  v24 = v23;
  v25 = OUTLINED_FUNCTION_7_34();
  v26(v25, v5);
  v65[96] = v24 & 1;
  v46[0] = v10;
  v46[1] = v43;
  v46[2] = v12;
  v46[3] = v42;
  v46[4] = v35;
  v46[5] = v41;
  v46[6] = v40;
  v46[7] = v34;
  v28 = v69;
  LOBYTE(v46[8]) = v69;
  v46[9] = v33;
  v46[10] = v39;
  v46[11] = v32;
  v46[12] = v38;
  memcpy(&v46[13], v68, 0x60uLL);
  v46[25] = v31;
  v46[26] = v37;
  v46[27] = v21;
  v46[28] = v36;
  v46[29] = v30;
  v27 = v67;
  LOBYTE(v46[30]) = v67;
  v46[31] = v29;
  LOBYTE(v46[32]) = v24 & 1;
  sub_2697C7940(v46, v47);
  __swift_destroy_boxed_opaque_existential_0(v70);
  v47[0] = v10;
  v47[1] = v43;
  v47[2] = v12;
  v47[3] = v42;
  v47[4] = v35;
  v47[5] = v41;
  v47[6] = v40;
  v47[7] = v34;
  v48 = v28;
  v49 = v33;
  v50 = v39;
  v51 = v32;
  v52 = v38;
  memcpy(v53, v68, sizeof(v53));
  v54 = v31;
  v55 = v37;
  v56 = v21;
  v57 = v36;
  v58 = v30;
  v59 = v27;
  *v60 = *v66;
  *&v60[3] = *&v66[3];
  v61 = v29;
  v62 = v24 & 1;
  sub_2697C7118(v47);
  memcpy(v45, v46, 0x101uLL);
LABEL_9:
  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697C52EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C475C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697C5314@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697C4AF8();
  *a1 = result;
  return result;
}

uint64_t sub_2697C533C(uint64_t a1)
{
  v2 = sub_2697C7798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697C5378(uint64_t a1)
{
  v2 = sub_2697C7798();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2697C53B4(void *a1@<X8>)
{
  sub_2697C4C2C();
  if (!v1)
  {
    memcpy(a1, __src, 0x101uLL);
  }
}

uint64_t sub_2697C5408(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E65746E6F63 && a2 == 0xEC0000006567616DLL;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002698802B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_269855584();

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

uint64_t sub_2697C54DC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x49746E65746E6F63;
  }
}

void sub_2697C5520()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324FF0, &qword_269863FC0);
  OUTLINED_FUNCTION_8(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19_14();
  sub_2697C80C4();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    LOBYTE(v23[0]) = 0;
    sub_2697C7A20();
    OUTLINED_FUNCTION_22_15();
    v9 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    v22 = v29;
    OUTLINED_FUNCTION_22_15();
    v10 = OUTLINED_FUNCTION_13_22();
    v11(v10, v5);
    v17 = v36;
    v16 = v37;
    v15 = v38;
    v14 = v39;
    v13 = v40;
    v12 = v41;
    v23[0] = v9;
    v23[1] = v18;
    v23[2] = v19;
    v23[3] = v20;
    v23[4] = v21;
    v23[5] = v22;
    v23[6] = v36;
    v23[7] = v37;
    v23[8] = v38;
    v23[9] = v39;
    v23[10] = v40;
    v23[11] = v41;
    sub_2697C815C(v23, &v24);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v24 = v9;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = v22;
    v30 = v17;
    v31 = v16;
    v32 = v15;
    v33 = v14;
    v34 = v13;
    v35 = v12;
    sub_2697C77EC(&v24);
    memcpy(v4, v23, 0x60uLL);
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697C5850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C5408(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697C5878(uint64_t a1)
{
  v2 = sub_2697C80C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697C58B4(uint64_t a1)
{
  v2 = sub_2697C80C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2697C58F0(void *a1@<X8>)
{
  sub_2697C5520();
  if (!v1)
  {
    memcpy(a1, v3, 0x60uLL);
  }
}

uint64_t sub_2697C593C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7107189 && a2 == 0xE300000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_269855584();

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

uint64_t sub_2697C5A88(char a1)
{
  result = 0x746867696568;
  switch(a1)
  {
    case 1:
      result = 0x6874646977;
      break;
    case 2:
      result = 7107189;
      break;
    case 3:
      result = 0x74616D726F66;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2697C5AF4()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F80, &qword_269863BE8);
  OUTLINED_FUNCTION_8(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19_14();
  sub_2697C7978();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    OUTLINED_FUNCTION_4_10();
    v9 = sub_269855484();
    OUTLINED_FUNCTION_4_10();
    v19 = sub_269855484();
    OUTLINED_FUNCTION_4_10();
    v10 = sub_269855464();
    v12 = v11;
    v18 = v10;
    OUTLINED_FUNCTION_4_10();
    v13 = sub_269855414();
    v14 = OUTLINED_FUNCTION_13_22();
    v16 = v15;
    v17(v14, v5);
    __swift_destroy_boxed_opaque_existential_0(v2);
    *v4 = v9;
    v4[1] = v19;
    v4[2] = v18;
    v4[3] = v12;
    v4[4] = v13;
    v4[5] = v16;
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697C5CD8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6349707061 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269855584();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2697C5D68()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F90, &qword_269863BF0);
  OUTLINED_FUNCTION_8(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19_14();
  sub_2697C79CC();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    sub_2697C7A20();
    sub_269855454();
    v9 = OUTLINED_FUNCTION_13_22();
    v10(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v2);
    *v4 = v11;
    *(v4 + 16) = v12;
    *(v4 + 32) = v13;
    *(v4 + 40) = v14;
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697C5EC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x496D616441707061 && a2 == 0xEA00000000007364;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5074737269467369 && a2 == 0xEC00000079747261;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7263736275537369 && a2 == 0xEC00000064656269;
            if (v10 || (sub_269855584() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C6174736E497369 && a2 == 0xEB0000000064656CLL;
              if (v11 || (sub_269855584() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65726F7453707061 && a2 == 0xEB000000006C7255;
                if (v12 || (sub_269855584() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_269855584();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_2697C6194(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x496D616441707061;
      break;
    case 3:
      result = 0x656D614E707061;
      break;
    case 4:
      result = 0x5074737269467369;
      break;
    case 5:
      result = 0x7263736275537369;
      break;
    case 6:
      result = 0x6C6174736E497369;
      break;
    case 7:
      result = 0x65726F7453707061;
      break;
    case 8:
      result = 0x736567616D69;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2697C629C()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v4 = v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F08, &unk_2698637E0);
  OUTLINED_FUNCTION_8(v35);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v7);
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2697C7148();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    LOBYTE(v38[0]) = 0;
    OUTLINED_FUNCTION_5_31();
    v9 = sub_269855464();
    v11 = v10;
    v32 = v9;
    OUTLINED_FUNCTION_1_39(1);
    v12 = sub_269855464();
    v34 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
    LOBYTE(v37[0]) = 2;
    sub_2697C719C();
    OUTLINED_FUNCTION_5_31();
    sub_269855454();
    v31 = v38[0];
    OUTLINED_FUNCTION_1_39(3);
    v30 = sub_269855414();
    v33 = v14;
    OUTLINED_FUNCTION_1_39(4);
    v56 = sub_269855474();
    OUTLINED_FUNCTION_1_39(5);
    v28 = sub_269855474();
    OUTLINED_FUNCTION_1_39(6);
    v26 = sub_269855474();
    OUTLINED_FUNCTION_1_39(7);
    v15 = sub_269855414();
    v17 = v16;
    v25 = v15;
    sub_2697C7218();
    OUTLINED_FUNCTION_5_31();
    sub_269855454();
    v56 &= 1u;
    v18 = v28 & 1;
    v21 = v26 & 1;
    v19 = OUTLINED_FUNCTION_7_34();
    v20(v19, v35);
    v27 = v52;
    v29 = v51;
    v23 = v54;
    v24 = v53;
    v22 = v55;
    v36 = v50;
    v37[0] = v32;
    v37[1] = v11;
    v37[2] = v12;
    v37[3] = v34;
    v37[4] = v31;
    v37[5] = v30;
    v37[6] = v33;
    LOBYTE(v37[7]) = v56;
    BYTE1(v37[7]) = v18;
    BYTE2(v37[7]) = v21;
    v37[8] = v25;
    v37[9] = v17;
    v37[10] = v50;
    v37[11] = v51;
    v37[12] = v52;
    v37[13] = v53;
    v37[14] = v54;
    v37[15] = v55;
    sub_2697926F8(v37, v38);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v38[0] = v32;
    v38[1] = v11;
    v38[2] = v12;
    v38[3] = v34;
    v38[4] = v31;
    v38[5] = v30;
    v38[6] = v33;
    v39 = v56;
    v40 = v18;
    v41 = v21;
    v42 = v25;
    v43 = v17;
    v44 = v36;
    v45 = v29;
    v46 = v27;
    v47 = v24;
    v48 = v23;
    v49 = v22;
    sub_269792754(v38);
    memcpy(v4, v37, 0x80uLL);
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697C6780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C593C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697C67A8(uint64_t a1)
{
  v2 = sub_2697C7978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697C67E4(uint64_t a1)
{
  v2 = sub_2697C7978();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2697C6820@<D0>(_OWORD *a1@<X8>)
{
  sub_2697C5AF4();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_2697C6868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C5CD8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2697C6894(uint64_t a1)
{
  v2 = sub_2697C79CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697C68D0(uint64_t a1)
{
  v2 = sub_2697C79CC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2697C690C@<D0>(_OWORD *a1@<X8>)
{
  sub_2697C5D68();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_2697C6958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C5EC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697C6980@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697C618C();
  *a1 = result;
  return result;
}

uint64_t sub_2697C69A8(uint64_t a1)
{
  v2 = sub_2697C7148();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697C69E4(uint64_t a1)
{
  v2 = sub_2697C7148();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2697C6A20(void *a1@<X8>)
{
  sub_2697C629C();
  if (!v1)
  {
    memcpy(a1, v3, 0x80uLL);
  }
}

uint64_t sub_2697C6A6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2697C390C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_2697C6A9C()
{
  result = qword_280324EB8;
  if (!qword_280324EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324EB8);
  }

  return result;
}

unint64_t sub_2697C6AF0()
{
  result = qword_280324ED0;
  if (!qword_280324ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324ED0);
  }

  return result;
}

uint64_t sub_2697C6B44(void *a1)
{
  v1 = [a1 images];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for ContentImage();
  v3 = sub_269854CB4();

  return v3;
}

void sub_2697C6BA4(uint64_t a1, void *a2)
{
  type metadata accessor for ContentImage();
  v3 = sub_269854CA4();

  [a2 setImages_];
}

void sub_2697C6C18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setFormat_];
}

void sub_2697C6C7C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();
  [a3 setTemplateUrl_];
}

void sub_2697C6D3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();
  [a3 setUmcId_];
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents7UTSDataV8UTSImageVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents7UTSDataV7ChannelV0E12ImageOptionsVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_2697C6DD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_2697C6E18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2697C6E98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 258))
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

uint64_t sub_2697C6ED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
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
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 258) = 1;
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

    *(result + 258) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2697C6F6C()
{
  result = qword_280324ED8;
  if (!qword_280324ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324ED8);
  }

  return result;
}

unint64_t sub_2697C6FC4()
{
  result = qword_280324EE0;
  if (!qword_280324EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324EE0);
  }

  return result;
}

unint64_t sub_2697C701C()
{
  result = qword_280324EE8;
  if (!qword_280324EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324EE8);
  }

  return result;
}

unint64_t sub_2697C7070()
{
  result = qword_280324EF8;
  if (!qword_280324EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324EF8);
  }

  return result;
}

unint64_t sub_2697C70C4()
{
  result = qword_280324F00;
  if (!qword_280324F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F00);
  }

  return result;
}

unint64_t sub_2697C7148()
{
  result = qword_280324F10;
  if (!qword_280324F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F10);
  }

  return result;
}

unint64_t sub_2697C719C()
{
  result = qword_280323428;
  if (!qword_280323428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322878, &qword_2698587A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323428);
  }

  return result;
}

unint64_t sub_2697C7218()
{
  result = qword_280324F18;
  if (!qword_280324F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UTSData.Channel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2697C7358(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2697C7398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2697C73F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_2697C7444(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_2697C74B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 257))
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

uint64_t sub_2697C74F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
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
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 257) = 1;
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

    *(result + 257) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2697C758C()
{
  result = qword_280324F20;
  if (!qword_280324F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F20);
  }

  return result;
}

unint64_t sub_2697C75E4()
{
  result = qword_280324F28;
  if (!qword_280324F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F28);
  }

  return result;
}

unint64_t sub_2697C763C()
{
  result = qword_280324F30;
  if (!qword_280324F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F30);
  }

  return result;
}

unint64_t sub_2697C7694()
{
  result = qword_280324F38;
  if (!qword_280324F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F38);
  }

  return result;
}

unint64_t sub_2697C76EC()
{
  result = qword_280324F40;
  if (!qword_280324F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F40);
  }

  return result;
}

unint64_t sub_2697C7744()
{
  result = qword_280324F48;
  if (!qword_280324F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F48);
  }

  return result;
}

unint64_t sub_2697C7798()
{
  result = qword_280324F58;
  if (!qword_280324F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F58);
  }

  return result;
}

uint64_t sub_2697C781C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2697C7898()
{
  result = qword_280324F70;
  if (!qword_280324F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F70);
  }

  return result;
}

unint64_t sub_2697C78EC()
{
  result = qword_280324F78;
  if (!qword_280324F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F78);
  }

  return result;
}

unint64_t sub_2697C7978()
{
  result = qword_280324F88;
  if (!qword_280324F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F88);
  }

  return result;
}

unint64_t sub_2697C79CC()
{
  result = qword_280324F98;
  if (!qword_280324F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F98);
  }

  return result;
}

unint64_t sub_2697C7A20()
{
  result = qword_280324FA0;
  if (!qword_280324FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UTSData.Channel.ChannelImageOptions.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for UTSData.UTSImage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for UTSData.UTSContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2697C7CE0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_2697C7D34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_2697C7DB0()
{
  result = qword_280324FA8;
  if (!qword_280324FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FA8);
  }

  return result;
}

unint64_t sub_2697C7E08()
{
  result = qword_280324FB0;
  if (!qword_280324FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FB0);
  }

  return result;
}

unint64_t sub_2697C7E60()
{
  result = qword_280324FB8;
  if (!qword_280324FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FB8);
  }

  return result;
}

unint64_t sub_2697C7EB8()
{
  result = qword_280324FC0;
  if (!qword_280324FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FC0);
  }

  return result;
}

unint64_t sub_2697C7F10()
{
  result = qword_280324FC8;
  if (!qword_280324FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FC8);
  }

  return result;
}

unint64_t sub_2697C7F68()
{
  result = qword_280324FD0;
  if (!qword_280324FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FD0);
  }

  return result;
}

unint64_t sub_2697C7FC0()
{
  result = qword_280324FD8;
  if (!qword_280324FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FD8);
  }

  return result;
}

unint64_t sub_2697C8018()
{
  result = qword_280324FE0;
  if (!qword_280324FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FE0);
  }

  return result;
}

unint64_t sub_2697C8070()
{
  result = qword_280324FE8;
  if (!qword_280324FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FE8);
  }

  return result;
}

unint64_t sub_2697C80C4()
{
  result = qword_280324FF8;
  if (!qword_280324FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FF8);
  }

  return result;
}

uint64_t sub_2697C8118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

_BYTE *sub_2697C8194(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2697C8274()
{
  result = qword_280325000;
  if (!qword_280325000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325000);
  }

  return result;
}

unint64_t sub_2697C82CC()
{
  result = qword_280325008;
  if (!qword_280325008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325008);
  }

  return result;
}

unint64_t sub_2697C8324()
{
  result = qword_280325010;
  if (!qword_280325010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325010);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_21()
{

  return sub_269855584();
}

uint64_t OUTLINED_FUNCTION_22_15()
{

  return sub_269855454();
}

uint64_t OUTLINED_FUNCTION_24_15()
{

  return sub_269854CD4();
}

uint64_t OUTLINED_FUNCTION_25_15()
{
}

uint64_t sub_2697C8518(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269855584();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2697C85A8(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325078, &qword_269864300);
  OUTLINED_FUNCTION_8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  v12 = a1[4];
  OUTLINED_FUNCTION_56_5(a1, a1[3]);
  sub_2697CC140();
  sub_2698556E4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325088, &qword_269864308);
    sub_2697CC194();
    sub_269855494();
    (*(v6 + 8))(v11, v4);
    v1 = v14[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v1;
}

uint64_t sub_2697C8718(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x49746E65746E6F63 && a2 == 0xEC0000006567616DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269855584();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2697C87B4()
{
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803250C8, &qword_269864318);
  OUTLINED_FUNCTION_8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_52_4();
  v12 = v3[4];
  OUTLINED_FUNCTION_56_5(v3, v3[3]);
  sub_2697CC41C();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    sub_2697C7A20();
    sub_269855494();
    (*(v8 + 8))(v1, v6);
    __swift_destroy_boxed_opaque_existential_0(v3);
    *v5 = v13;
    *(v5 + 16) = v14;
    *(v5 + 32) = v15;
    *(v5 + 40) = v16;
  }

  OUTLINED_FUNCTION_44();
}

void sub_2697C8918()
{
  OUTLINED_FUNCTION_43();
  v35 = OUTLINED_FUNCTION_54_3(v2);
  v3 = OUTLINED_FUNCTION_8(v35);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v36 = sub_269851C74();
  v6 = OUTLINED_FUNCTION_8(v36);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803250D8, &qword_269864320);
  OUTLINED_FUNCTION_8(v37);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_12_27();
  v38 = _s9MovieLiteVMa(v12);
  v13 = OUTLINED_FUNCTION_4_3(v38);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v18 = (v17 - v16);
  v19 = v0[4];
  OUTLINED_FUNCTION_56_5(v0, v0[3]);
  sub_2697CC470();
  OUTLINED_FUNCTION_39_5();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_19_15();
    *v18 = sub_269855464();
    v18[1] = v20;
    v18[2] = OUTLINED_FUNCTION_15_23(1);
    v18[3] = v21;
    v18[4] = OUTLINED_FUNCTION_15_23(2);
    v18[5] = v22;
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_4_31();
    sub_2697CC2A4(v23, v24);
    OUTLINED_FUNCTION_22_16();
    OUTLINED_FUNCTION_19_15();
    sub_269855494();
    v25 = OUTLINED_FUNCTION_25_16();
    v26(v25);
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_3_39();
    sub_2697CC2A4(v27, v28);
    OUTLINED_FUNCTION_22_16();
    OUTLINED_FUNCTION_19_15();
    sub_269855494();
    v29 = OUTLINED_FUNCTION_29_13();
    v30(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F60, &qword_269863BE0);
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_19_15();
    sub_269855454();
    OUTLINED_FUNCTION_32_10();
    OUTLINED_FUNCTION_23_16();
    OUTLINED_FUNCTION_19_15();
    sub_269855494();
    v31 = OUTLINED_FUNCTION_8_32();
    v32(v31);
    v33 = v18 + *(v18 + 10);
    OUTLINED_FUNCTION_7_35(v39);
    sub_2697CC3C4(v18, v34);
    __swift_destroy_boxed_opaque_existential_0(v0);
    sub_2697CC4C4(v18, _s9MovieLiteVMa);
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697C8E18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7107189 && a2 == 0xE300000000000000;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
            if (v10 || (sub_269855584() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6449776F6873 && a2 == 0xE600000000000000;
              if (v11 || (sub_269855584() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C746954776F6873 && a2 == 0xE900000000000065;
                if (v12 || (sub_269855584() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x69546E6F73616573 && a2 == 0xEB00000000656C74;
                  if (v13 || (sub_269855584() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_269855584();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

uint64_t sub_2697C9124(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 7107189;
      break;
    case 4:
      result = 0x44657361656C6572;
      break;
    case 5:
      result = 0x7365726E6567;
      break;
    case 6:
      result = 0x6449776F6873;
      break;
    case 7:
      result = 0x6C746954776F6873;
      break;
    case 8:
      result = 0x69546E6F73616573;
      break;
    case 9:
      result = 0x736567616D69;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2697C9224()
{
  OUTLINED_FUNCTION_43();
  v4 = v3;
  v6 = v5;
  v56 = sub_269851D34();
  v7 = OUTLINED_FUNCTION_8(v56);
  v55 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  v57 = sub_269851C74();
  v14 = OUTLINED_FUNCTION_8(v57);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_52_4();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803250A0, &qword_269864310);
  OUTLINED_FUNCTION_8(v54);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_12_27();
  v59 = _s11EpisodeLiteVMa(v22);
  v23 = OUTLINED_FUNCTION_4_3(v59);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  v58 = (v27 - v26);
  v28 = v4[4];
  OUTLINED_FUNCTION_56_5(v4, v4[3]);
  sub_2697CC250();
  sub_2698556E4();
  if (v0)
  {
    OUTLINED_FUNCTION_17_19();
    __swift_destroy_boxed_opaque_existential_0(v4);
    if (v28)
    {
      v32 = v58[5];

      v29 = v59;
      if ((v2 & 1) == 0)
      {
LABEL_9:
        if (!v1)
        {
          goto LABEL_11;
        }

LABEL_10:
        v33 = OUTLINED_FUNCTION_42_7(v29[8]);
        v34(v33);
        goto LABEL_11;
      }
    }

    else
    {
      v29 = v59;
      if (!v2)
      {
        goto LABEL_9;
      }
    }

    v30 = OUTLINED_FUNCTION_43_5(v29[7]);
    v31(v30);
    if ((v1 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_50_5();
  OUTLINED_FUNCTION_14_22();
  *v58 = sub_269855464();
  v58[1] = v35;
  OUTLINED_FUNCTION_1_40(1);
  v58[2] = sub_269855464();
  v58[3] = v36;
  OUTLINED_FUNCTION_1_40(2);
  v58[4] = sub_269855464();
  v58[5] = v37;
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_4_31();
  sub_2697CC2A4(v38, v39);
  OUTLINED_FUNCTION_22_16();
  OUTLINED_FUNCTION_14_22();
  sub_269855494();
  v40 = OUTLINED_FUNCTION_31_12();
  v41(v40);
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_3_39();
  sub_2697CC2A4(v42, v43);
  OUTLINED_FUNCTION_22_16();
  OUTLINED_FUNCTION_14_22();
  sub_269855494();
  (*(v55 + 32))(v58 + v59[8], v13, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F60, &qword_269863BE0);
  OUTLINED_FUNCTION_28_12();
  OUTLINED_FUNCTION_11_30();
  OUTLINED_FUNCTION_14_22();
  sub_269855454();
  *(v58 + v59[9]) = v60;
  OUTLINED_FUNCTION_1_40(6);
  v44 = sub_269855464();
  OUTLINED_FUNCTION_33_12(v44, v45, v59[10]);
  OUTLINED_FUNCTION_1_40(7);
  v46 = sub_269855464();
  OUTLINED_FUNCTION_33_12(v46, v47, v59[11]);
  OUTLINED_FUNCTION_1_40(8);
  v48 = sub_269855464();
  OUTLINED_FUNCTION_33_12(v48, v49, v59[12]);
  sub_2697CC370();
  OUTLINED_FUNCTION_23_16();
  OUTLINED_FUNCTION_14_22();
  sub_269855494();
  v50 = *(v18 + 8);
  v51 = OUTLINED_FUNCTION_49_7();
  v52(v51);
  v53 = v58 + v59[13];
  OUTLINED_FUNCTION_7_35(v61);
  sub_2697CC3C4(v58, v6);
  __swift_destroy_boxed_opaque_existential_0(v4);
  sub_2697CC4C4(v58, _s11EpisodeLiteVMa);
LABEL_11:
  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697C98B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7107189 && a2 == 0xE300000000000000;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
            if (v10 || (sub_269855584() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6449776F6873 && a2 == 0xE600000000000000;
              if (v11 || (sub_269855584() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C746954776F6873 && a2 == 0xE900000000000065;
                if (v12 || (sub_269855584() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x754E6E6F73616573 && a2 == 0xEC0000007265626DLL;
                  if (v13 || (sub_269855584() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_269855584();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

uint64_t sub_2697C9BB8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 7107189;
      break;
    case 4:
      result = 0x44657361656C6572;
      break;
    case 5:
      result = 0x7365726E6567;
      break;
    case 6:
      result = 0x6449776F6873;
      break;
    case 7:
      result = 0x6C746954776F6873;
      break;
    case 8:
      result = 0x754E6E6F73616573;
      break;
    case 9:
      result = 0x736567616D69;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2697C9CB4()
{
  OUTLINED_FUNCTION_43();
  v4 = v3;
  v6 = v5;
  v53 = sub_269851D34();
  v7 = OUTLINED_FUNCTION_8(v53);
  v52 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  v54 = sub_269851C74();
  v14 = OUTLINED_FUNCTION_8(v54);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_52_4();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803250E8, &qword_269864328);
  OUTLINED_FUNCTION_8(v51);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_12_27();
  v56 = _s10SeasonLiteVMa(v22);
  v23 = OUTLINED_FUNCTION_4_3(v56);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  v55 = (v27 - v26);
  v28 = v4[4];
  OUTLINED_FUNCTION_56_5(v4, v4[3]);
  sub_2697CC51C();
  sub_2698556E4();
  if (v0)
  {
    OUTLINED_FUNCTION_17_19();
    __swift_destroy_boxed_opaque_existential_0(v4);
    if (v28)
    {
      v29 = v55[3];

      if (v2)
      {
        goto LABEL_9;
      }
    }

    else if (v2)
    {
LABEL_9:
      v33 = v55[5];

      v30 = v56;
      if ((v1 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    v30 = v56;
    if (!v1)
    {
      goto LABEL_10;
    }

LABEL_6:
    v31 = OUTLINED_FUNCTION_43_5(v30[7]);
    v32(v31);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_50_5();
  OUTLINED_FUNCTION_14_22();
  *v55 = sub_269855464();
  v55[1] = v34;
  OUTLINED_FUNCTION_1_40(1);
  v55[2] = sub_269855464();
  v55[3] = v35;
  OUTLINED_FUNCTION_1_40(2);
  v55[4] = sub_269855464();
  v55[5] = v36;
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_4_31();
  sub_2697CC2A4(v37, v38);
  OUTLINED_FUNCTION_22_16();
  OUTLINED_FUNCTION_14_22();
  sub_269855494();
  v39 = OUTLINED_FUNCTION_31_12();
  v40(v39);
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_3_39();
  sub_2697CC2A4(v41, v42);
  OUTLINED_FUNCTION_22_16();
  OUTLINED_FUNCTION_14_22();
  sub_269855494();
  (*(v52 + 32))(v55 + v56[8], v13, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F60, &qword_269863BE0);
  OUTLINED_FUNCTION_28_12();
  OUTLINED_FUNCTION_11_30();
  OUTLINED_FUNCTION_14_22();
  sub_269855454();
  *(v55 + v56[9]) = v57;
  OUTLINED_FUNCTION_1_40(6);
  v43 = sub_269855464();
  OUTLINED_FUNCTION_33_12(v43, v44, v56[10]);
  OUTLINED_FUNCTION_1_40(7);
  v45 = sub_269855464();
  OUTLINED_FUNCTION_33_12(v45, v46, v56[11]);
  OUTLINED_FUNCTION_1_40(8);
  *(v55 + v56[12]) = sub_269855484();
  sub_2697CC370();
  OUTLINED_FUNCTION_23_16();
  OUTLINED_FUNCTION_14_22();
  sub_269855494();
  v47 = *(v18 + 8);
  v48 = OUTLINED_FUNCTION_49_7();
  v49(v48);
  v50 = v55 + v56[13];
  OUTLINED_FUNCTION_7_35(v58);
  sub_2697CC3C4(v55, v6);
  __swift_destroy_boxed_opaque_existential_0(v4);
  sub_2697CC4C4(v55, _s10SeasonLiteVMa);
LABEL_10:
  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697CA324(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_14_21() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_14_21() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_14_21() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7107189 && a2 == 0xE300000000000000;
        if (v8 || (OUTLINED_FUNCTION_14_21() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = a1 == OUTLINED_FUNCTION_40_6() && a2 == v9;
          if (v10 || (OUTLINED_FUNCTION_14_21() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
            if (v11 || (OUTLINED_FUNCTION_14_21() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
            {

              return 6;
            }

            else
            {
              v13 = OUTLINED_FUNCTION_14_21();

              if (v13)
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

void sub_2697CA4E0()
{
  OUTLINED_FUNCTION_43();
  v35 = OUTLINED_FUNCTION_54_3(v2);
  v3 = OUTLINED_FUNCTION_8(v35);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v36 = sub_269851C74();
  v6 = OUTLINED_FUNCTION_8(v36);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803250F8, &qword_269864330);
  OUTLINED_FUNCTION_8(v37);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_12_27();
  v38 = _s8ShowLiteVMa(v12);
  v13 = OUTLINED_FUNCTION_4_3(v38);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v18 = (v17 - v16);
  v19 = v0[4];
  OUTLINED_FUNCTION_56_5(v0, v0[3]);
  sub_2697CC570();
  OUTLINED_FUNCTION_39_5();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_19_15();
    *v18 = sub_269855464();
    v18[1] = v20;
    v18[2] = OUTLINED_FUNCTION_15_23(1);
    v18[3] = v21;
    v18[4] = OUTLINED_FUNCTION_15_23(2);
    v18[5] = v22;
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_4_31();
    sub_2697CC2A4(v23, v24);
    OUTLINED_FUNCTION_22_16();
    OUTLINED_FUNCTION_19_15();
    sub_269855494();
    v25 = OUTLINED_FUNCTION_25_16();
    v26(v25);
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_3_39();
    sub_2697CC2A4(v27, v28);
    OUTLINED_FUNCTION_22_16();
    OUTLINED_FUNCTION_19_15();
    sub_269855494();
    v29 = OUTLINED_FUNCTION_29_13();
    v30(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F60, &qword_269863BE0);
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_19_15();
    sub_269855454();
    OUTLINED_FUNCTION_32_10();
    OUTLINED_FUNCTION_23_16();
    OUTLINED_FUNCTION_19_15();
    sub_269855494();
    v31 = OUTLINED_FUNCTION_8_32();
    v32(v31);
    v33 = v18 + *(v18 + 10);
    OUTLINED_FUNCTION_7_35(v39);
    sub_2697CC3C4(v18, v34);
    __swift_destroy_boxed_opaque_existential_0(v0);
    sub_2697CC4C4(v18, _s8ShowLiteVMa);
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697CA9E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269855584();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2697CAA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C8518(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2697CAABC(uint64_t a1)
{
  v2 = sub_2697CC140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CAAF8(uint64_t a1)
{
  v2 = sub_2697CC140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697CAB34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2697C85A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2697CAB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C8718(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2697CAB90(uint64_t a1)
{
  v2 = sub_2697CC41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CABCC(uint64_t a1)
{
  v2 = sub_2697CC41C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2697CAC08@<D0>(_OWORD *a1@<X8>)
{
  sub_2697C87B4();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_2697CAC4C(uint64_t a1)
{
  v2 = sub_2697CC470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CAC88(uint64_t a1)
{
  v2 = sub_2697CC470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697CACE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C8E18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697CAD0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697C911C();
  *a1 = result;
  return result;
}

uint64_t sub_2697CAD34(uint64_t a1)
{
  v2 = sub_2697CC250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CAD70(uint64_t a1)
{
  v2 = sub_2697CC250();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697CADCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C98B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697CADF4(uint64_t a1)
{
  v2 = sub_2697CC51C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CAE30(uint64_t a1)
{
  v2 = sub_2697CC51C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697CAE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 52);
  OUTLINED_FUNCTION_26_15(a2);
}

uint64_t sub_2697CAEBC(uint64_t a1)
{
  v2 = sub_2697CC570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CAEF8(uint64_t a1)
{
  v2 = sub_2697CC570();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697CAF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_269851C74();
  v6 = OUTLINED_FUNCTION_4_3(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_2697CAFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_269851D34();
  v6 = OUTLINED_FUNCTION_4_3(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_2697CB024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_26_15(a2);
}

uint64_t sub_2697CB05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697CA9E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2697CB088(uint64_t a1)
{
  v2 = sub_2697CC5C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CB0C4(uint64_t a1)
{
  v2 = sub_2697CC5C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2697CB100()
{
  OUTLINED_FUNCTION_43();
  v63 = v0;
  v3 = v2;
  v61 = v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325108, &qword_269864338);
  OUTLINED_FUNCTION_8(v62);
  v60 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_52_4();
  v59 = _s11ContentLiteOMa(0);
  v9 = OUTLINED_FUNCTION_4_3(v59);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v55 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v55 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v55 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v55 - v24;
  v26 = v3[4];
  v64 = v3;
  OUTLINED_FUNCTION_56_5(v3, v3[3]);
  sub_2697CC5C4();
  v27 = v63;
  sub_2698556E4();
  if (!v27)
  {
    v63 = v23;
    v56 = v17;
    v57 = v20;
    v29 = v60;
    v28 = v61;
    v58 = v25;
    v30 = sub_269855464();
    v33 = v30;
    v34 = v31;
    v55 = v1;
    v35 = v30 == 0x6E6F73616553 && v31 == 0xE600000000000000;
    v32 = v64;
    if (v35 || (OUTLINED_FUNCTION_27_13() & 1) != 0)
    {

      OUTLINED_FUNCTION_55_5();
      v36 = v63;
      sub_2697C9CB4();
      v37 = OUTLINED_FUNCTION_13_23();
      v38(v37);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_47();
      v39 = v36;
      v40 = v58;
      sub_2697CBBAC(v39, v58);
      v41 = v28;
      goto LABEL_22;
    }

    if (v33 == 2003789907 && v34 == 0xE400000000000000)
    {

      v41 = v28;
    }

    else
    {
      v41 = v28;
      if ((OUTLINED_FUNCTION_27_13() & 1) == 0)
      {
        v47 = v33 == 0x65646F73697045 && v34 == 0xE700000000000000;
        if (v47 || (OUTLINED_FUNCTION_27_13() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_5();
          v48 = v56;
          sub_2697C9224();
          v49 = OUTLINED_FUNCTION_13_23();
          v50(v49);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_0_47();
          v46 = v48;
        }

        else
        {
          if (v33 == 0x6569766F4DLL && v34 == 0xE500000000000000)
          {
          }

          else
          {
            v52 = OUTLINED_FUNCTION_27_13();

            if ((v52 & 1) == 0)
            {
              (*(v29 + 8))(v55, v62);
              v40 = v58;
              swift_storeEnumTagMultiPayload();
              goto LABEL_22;
            }
          }

          OUTLINED_FUNCTION_55_5();
          sub_2697C8918();
          v53 = OUTLINED_FUNCTION_13_23();
          v54(v53);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_0_47();
          v46 = v14;
        }

LABEL_21:
        v40 = v58;
        sub_2697CBBAC(v46, v58);
LABEL_22:
        OUTLINED_FUNCTION_0_47();
        sub_2697CBBAC(v40, v41);
        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_55_5();
    v43 = v57;
    sub_2697CA4E0();
    v44 = OUTLINED_FUNCTION_13_23();
    v45(v44);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_47();
    v46 = v43;
    goto LABEL_21;
  }

  v32 = v3;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v32);
  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697CB57C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s11ContentLiteOMa(0);
  v5 = OUTLINED_FUNCTION_4_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  sub_2697CC3C4(v2, v9 - v8);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v12 = _s8ShowLiteVMa(0);
      v13 = &off_287A42FD8;
      goto LABEL_7;
    case 2:
      v12 = _s11EpisodeLiteVMa(0);
      v13 = &off_287A42F18;
      goto LABEL_7;
    case 3:
      v12 = _s9MovieLiteVMa(0);
      v13 = &off_287A42F58;
      goto LABEL_7;
    case 4:
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    default:
      v12 = _s10SeasonLiteVMa(0);
      v13 = &off_287A42F98;
LABEL_7:
      v16 = v12;
      v17 = v13;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_2697CBBAC(v10, boxed_opaque_existential_1);
      return sub_26968E5D4(&v15, a1);
  }
}

id sub_2697CB710()
{
  v1 = sub_269851C74();
  v2 = OUTLINED_FUNCTION_8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = sub_269851D34();
  v11 = OUTLINED_FUNCTION_8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  type metadata accessor for Content();
  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = OUTLINED_FUNCTION_47_6();
  v21 = sub_2697C01B0(v20, 0);
  sub_2697CB57C(&v58);
  if (*(&v59 + 1))
  {
    sub_26968E5D4(&v58, v55);
    OUTLINED_FUNCTION_30_14();
    v22 = v0[3];
    v23 = OUTLINED_FUNCTION_21_16();
    v25 = v24(v23);
    sub_2696D1DEC(v25, v26, v21);
    OUTLINED_FUNCTION_30_14();
    v27 = v0[1];
    v28 = OUTLINED_FUNCTION_21_16();
    v30 = v29(v28);
    sub_2696D1DF8(v30, v31, v21);
    OUTLINED_FUNCTION_30_14();
    v32 = v0[6];
    v33 = OUTLINED_FUNCTION_21_16();
    v35 = v34(v33);
    v36 = v35;
    if (v35)
    {
      if (v35[2])
      {
        v37 = v35[4];
        v0 = v35[5];

        v36 = sub_269854A64();
      }

      else
      {

        v36 = 0;
      }
    }

    [v21 setGenre_];

    OUTLINED_FUNCTION_30_14();
    v38 = v0[5];
    v39 = OUTLINED_FUNCTION_21_16();
    v40(v39);
    v41 = sub_269851CD4();
    (*(v13 + 8))(v18, v10);
    [v21 setReleaseDate_];

    v42 = v56;
    v43 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    (*(v43 + 32))(v42, v43);
    v44 = sub_269851C24();
    (*(v4 + 8))(v9, v1);
    [v21 setDetailsUrl_];

    v45 = v56;
    v46 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v47 = (*(v46 + 16))(v45, v46);
    v49 = sub_2697C3C58(v47, v48);

    [v21 setType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_2698590C0;
    v51 = v56;
    v52 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    (*(v52 + 56))(&v58, v51, v52);
    v53 = sub_2697C367C();
    v62 = v59;
    sub_2696A8078(&v62);
    v61 = v60;
    sub_26969B0C0(&v61, &qword_280322EA0, &unk_2698577C0);
    *(v50 + 32) = v53;
    sub_2697C6BA4(v50, v21);
    __swift_destroy_boxed_opaque_existential_0(v55);
  }

  else
  {

    sub_26969B0C0(&v58, &qword_280325018, &qword_2698640F0);
    return 0;
  }

  return v21;
}

uint64_t sub_2697CBBAC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_6();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_50_0();
  v9(v8);
  return a2;
}

void sub_2697CBC88()
{
  if (!qword_280325030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280324F60, &qword_269863BE0);
    v0 = sub_2698550A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280325030);
    }
  }
}

void sub_2697CBD58()
{
  sub_269851C74();
  if (v0 <= 0x3F)
  {
    sub_269851D34();
    if (v1 <= 0x3F)
    {
      sub_2697CBC88();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_269851C74();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = sub_269851D34();
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_269851C74();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = sub_269851D34();
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_2697CBFE8()
{
  sub_269851C74();
  if (v0 <= 0x3F)
  {
    sub_269851D34();
    if (v1 <= 0x3F)
    {
      sub_2697CBC88();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2697CC0A4()
{
  result = _s10SeasonLiteVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s8ShowLiteVMa(319);
    if (v2 <= 0x3F)
    {
      result = _s11EpisodeLiteVMa(319);
      if (v3 <= 0x3F)
      {
        result = _s9MovieLiteVMa(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_2697CC140()
{
  result = qword_280325080;
  if (!qword_280325080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325080);
  }

  return result;
}

unint64_t sub_2697CC194()
{
  result = qword_280325090;
  if (!qword_280325090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325088, &qword_269864308);
    sub_2697CC2A4(&qword_280325098, _s11ContentLiteOMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325090);
  }

  return result;
}

unint64_t sub_2697CC250()
{
  result = qword_2803250A8;
  if (!qword_2803250A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803250A8);
  }

  return result;
}

uint64_t sub_2697CC2A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2697CC2EC()
{
  result = qword_280324F68;
  if (!qword_280324F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280324F60, &qword_269863BE0);
    sub_2697C7898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F68);
  }

  return result;
}

unint64_t sub_2697CC370()
{
  result = qword_2803250C0;
  if (!qword_2803250C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803250C0);
  }

  return result;
}

uint64_t sub_2697CC3C4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_6();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_50_0();
  v9(v8);
  return a2;
}

unint64_t sub_2697CC41C()
{
  result = qword_2803250D0;
  if (!qword_2803250D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803250D0);
  }

  return result;
}

unint64_t sub_2697CC470()
{
  result = qword_2803250E0;
  if (!qword_2803250E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803250E0);
  }

  return result;
}

uint64_t sub_2697CC4C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2697CC51C()
{
  result = qword_2803250F0;
  if (!qword_2803250F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803250F0);
  }

  return result;
}

unint64_t sub_2697CC570()
{
  result = qword_280325100;
  if (!qword_280325100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325100);
  }

  return result;
}

unint64_t sub_2697CC5C4()
{
  result = qword_280325110;
  if (!qword_280325110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325110);
  }

  return result;
}

_BYTE *sub_2697CC648(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2697CC734(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2697CC810(_BYTE *result, int a2, int a3)
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

unint64_t sub_2697CC8C0()
{
  result = qword_280325118;
  if (!qword_280325118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325118);
  }

  return result;
}

unint64_t sub_2697CC918()
{
  result = qword_280325120;
  if (!qword_280325120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325120);
  }

  return result;
}

unint64_t sub_2697CC970()
{
  result = qword_280325128;
  if (!qword_280325128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325128);
  }

  return result;
}

unint64_t sub_2697CC9C8()
{
  result = qword_280325130;
  if (!qword_280325130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325130);
  }

  return result;
}

unint64_t sub_2697CCA20()
{
  result = qword_280325138;
  if (!qword_280325138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325138);
  }

  return result;
}

unint64_t sub_2697CCA78()
{
  result = qword_280325140;
  if (!qword_280325140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325140);
  }

  return result;
}

unint64_t sub_2697CCAD0()
{
  result = qword_280325148;
  if (!qword_280325148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325148);
  }

  return result;
}

unint64_t sub_2697CCB28()
{
  result = qword_280325150;
  if (!qword_280325150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325150);
  }

  return result;
}

unint64_t sub_2697CCB80()
{
  result = qword_280325158;
  if (!qword_280325158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325158);
  }

  return result;
}

unint64_t sub_2697CCBD8()
{
  result = qword_280325160;
  if (!qword_280325160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325160);
  }

  return result;
}

unint64_t sub_2697CCC30()
{
  result = qword_280325168;
  if (!qword_280325168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325168);
  }

  return result;
}

unint64_t sub_2697CCC88()
{
  result = qword_280325170;
  if (!qword_280325170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325170);
  }

  return result;
}

unint64_t sub_2697CCCE0()
{
  result = qword_280325178;
  if (!qword_280325178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325178);
  }

  return result;
}

unint64_t sub_2697CCD38()
{
  result = qword_280325180;
  if (!qword_280325180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325180);
  }

  return result;
}

unint64_t sub_2697CCD90()
{
  result = qword_280325188;
  if (!qword_280325188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325188);
  }

  return result;
}

unint64_t sub_2697CCDE8()
{
  result = qword_280325190;
  if (!qword_280325190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325190);
  }

  return result;
}

unint64_t sub_2697CCE40()
{
  result = qword_280325198;
  if (!qword_280325198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325198);
  }

  return result;
}

unint64_t sub_2697CCE98()
{
  result = qword_2803251A0;
  if (!qword_2803251A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251A0);
  }

  return result;
}

unint64_t sub_2697CCEF0()
{
  result = qword_2803251A8;
  if (!qword_2803251A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251A8);
  }

  return result;
}

unint64_t sub_2697CCF48()
{
  result = qword_2803251B0;
  if (!qword_2803251B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251B0);
  }

  return result;
}

unint64_t sub_2697CCFA0()
{
  result = qword_2803251B8;
  if (!qword_2803251B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251B8);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_7_35@<Q0>(uint64_t a1@<X8>)
{
  *v2 = *(v3 - 128);
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  result = *(v3 - 96);
  *(v2 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_32()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_23()
{
  v2 = *(v0 + 8);
  result = *(v1 - 192);
  v4 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_23@<X0>(char a1@<W8>)
{
  *(v1 - 128) = a1;

  return sub_269855464();
}

uint64_t OUTLINED_FUNCTION_26_15@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + v1;
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = *(v4 + 40);
  *a1 = *v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
}

uint64_t OUTLINED_FUNCTION_27_13()
{

  return sub_269855584();
}

unint64_t OUTLINED_FUNCTION_28_12()
{
  *(v0 - 65) = 5;

  return sub_2697CC2EC();
}

void *OUTLINED_FUNCTION_30_14()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 176);

  return __swift_project_boxed_opaque_existential_1((v0 - 200), v3);
}

unint64_t OUTLINED_FUNCTION_32_10()
{
  *(v0 + *(v1 + 36)) = *(v2 - 128);
  *(v2 - 65) = 6;

  return sub_2697CC370();
}

uint64_t OUTLINED_FUNCTION_33_12@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_9()
{
  v3 = *(*(v2 - 184) + 8);
  result = v0 + *(v1 + 32);
  v5 = *(v2 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_12()
{
  v3 = *(*(v2 - 176) + 8);
  result = v0 + *(v1 + 28);
  v5 = *(v2 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_5()
{

  return sub_2698556E4();
}

uint64_t OUTLINED_FUNCTION_41_5@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_42_7@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v2 - 184) + 8);
  result = v1 + a1;
  v5 = *(v2 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_5@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v2 - 176) + 8);
  result = v1 + a1;
  v5 = *(v2 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_49_7()
{
  result = v0;
  v3 = *(v1 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_54_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 192) = a1;

  return sub_269851D34();
}

uint64_t OUTLINED_FUNCTION_55_5()
{

  return sub_2696A73F8(v0, v1 - 120);
}

uint64_t sub_2697CD454(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2697CD494(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2697CD4E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269855584();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2697CD568(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803251C0, &qword_269864AD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2697CD798();
  sub_2698556E4();
  if (!v1)
  {
    v9 = sub_269855464();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_2697CD6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697CD4E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2697CD6F4(uint64_t a1)
{
  v2 = sub_2697CD798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CD730(uint64_t a1)
{
  v2 = sub_2697CD798();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697CD76C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2697CD568(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_2697CD798()
{
  result = qword_2803251C8;
  if (!qword_2803251C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251C8);
  }

  return result;
}

_BYTE *_s5GenreV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_2697CD89C()
{
  result = qword_2803251D0;
  if (!qword_2803251D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251D0);
  }

  return result;
}

unint64_t sub_2697CD8F4()
{
  result = qword_2803251D8;
  if (!qword_2803251D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251D8);
  }

  return result;
}

unint64_t sub_2697CD94C()
{
  result = qword_2803251E0;
  if (!qword_2803251E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251E0);
  }

  return result;
}

uint64_t sub_2697CD9A0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2697CD9F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents7UTSDataV11LiveServiceV12ImageOptionsVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents7UTSDataV11LiveServiceV12PunchOutUrlsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_2697CDAA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736C656E6E616863 && a2 == 0xE800000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656B6F547478656ELL && a2 == 0xE90000000000006ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_269855584();

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

uint64_t sub_2697CDBBC(char a1)
{
  if (!a1)
  {
    return 0x736D657469;
  }

  if (a1 == 1)
  {
    return 0x736C656E6E616863;
  }

  return 0x656B6F547478656ELL;
}

uint64_t sub_2697CDC14(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803251E8, &qword_269864D58);
  OUTLINED_FUNCTION_8(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_2697CED28();
  sub_2698556E4();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803251F8, &qword_269864D60);
    sub_2697CEDD0(&qword_280325200, &qword_2803251F8, &qword_269864D60, sub_2697CED7C);
    sub_269855454();
    v7 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325210, &qword_269864D68);
    sub_2697CEDD0(&qword_280325218, &qword_280325210, &qword_269864D68, sub_2697CEE4C);
    sub_269855454();
    sub_269855414();
    v9 = OUTLINED_FUNCTION_1_41();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_2697CDED4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1869049708 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269855584();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2697CDF5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325278, &qword_269865070);
  OUTLINED_FUNCTION_8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2697CF3A0();
  sub_2698556E4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  sub_2697C7A20();
  sub_269855454();
  (*(v7 + 8))(v12, v5);
  v14 = v22;
  v15 = v23;
  v18 = v21;
  v19 = v20;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v17 = v18;
  *a2 = v19;
  *(a2 + 16) = v17;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  return result;
}

uint64_t sub_2697CE0D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 2036427888 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269855584();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2697CE160(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325288, &qword_269865078);
  OUTLINED_FUNCTION_8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2697CF3F4();
  sub_2698556E4();
  if (!v1)
  {
    v12 = sub_269855414();
    (*(v5 + 8))(v10, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

uint64_t sub_2697CE2AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x496C656E6E616863 && a2 == 0xE900000000000064;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x736567616D69 && a2 == 0xE600000000000000;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74756F68636E7570 && a2 == 0xEC000000736C7255;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 7107189 && a2 == 0xE300000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_269855584();

            if (v11)
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

uint64_t sub_2697CE494(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x496C656E6E616863;
      break;
    case 3:
      result = 0x736567616D69;
      break;
    case 4:
      result = 0x74756F68636E7570;
      break;
    case 5:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_2697CE534@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325228, &qword_269864D70);
  OUTLINED_FUNCTION_8(v45);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2697CEEA0();
  sub_2698556E4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = v6;
  v42 = a2;
  LOBYTE(v47) = 0;
  OUTLINED_FUNCTION_2_30();
  v14 = sub_269855464();
  v43 = v15;
  LOBYTE(v47) = 1;
  OUTLINED_FUNCTION_2_30();
  v34 = sub_269855464();
  v41 = v16;
  LOBYTE(v47) = 2;
  OUTLINED_FUNCTION_2_30();
  v17 = sub_269855464();
  v35 = v18;
  LODWORD(v44) = 1;
  v19 = v17;
  LOBYTE(v46[0]) = 3;
  sub_2697CEF18();
  OUTLINED_FUNCTION_2_30();
  sub_269855454();
  v20 = v49;
  v39 = v48;
  v40 = v50;
  v33 = v51;
  v37 = v47;
  v38 = v52;
  LOBYTE(v46[0]) = 4;
  sub_2697CEF6C();
  OUTLINED_FUNCTION_2_30();
  sub_269855454();
  v36 = v20;
  v31 = v19;
  v32 = v14;
  v22 = v47;
  v21 = v48;
  v63 = 5;
  OUTLINED_FUNCTION_2_30();
  v23 = sub_269855414();
  v24 = *(v13 + 8);
  v25 = v23;
  v44 = v26;
  v24(v11, v45);
  v46[0] = v32;
  v46[1] = v43;
  v27 = v35;
  v46[2] = v34;
  v46[3] = v41;
  v46[4] = v31;
  v46[5] = v35;
  v46[6] = v37;
  v46[7] = v39;
  v46[8] = v20;
  v46[9] = v40;
  v28 = v33;
  v46[10] = v33;
  v46[11] = v38;
  v46[12] = v22;
  v46[13] = v21;
  v29 = v44;
  v46[14] = v25;
  v46[15] = v44;
  sub_2697C0244(v46, &v47);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v47 = v32;
  v48 = v43;
  v49 = v34;
  v50 = v41;
  v51 = v31;
  v52 = v27;
  v53 = v37;
  v54 = v39;
  v55 = v36;
  v56 = v40;
  v57 = v28;
  v58 = v38;
  v59 = v22;
  v60 = v21;
  v61 = v25;
  v62 = v29;
  sub_2697C02A0(&v47);
  return memcpy(v42, v46, 0x80uLL);
}

uint64_t sub_2697CE9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697CDAA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697CE9CC(uint64_t a1)
{
  v2 = sub_2697CED28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CEA08(uint64_t a1)
{
  v2 = sub_2697CED28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697CEA44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2697CDC14(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_2697CEA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697CDED4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2697CEAA4(uint64_t a1)
{
  v2 = sub_2697CF3A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CEAE0(uint64_t a1)
{
  v2 = sub_2697CF3A0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2697CEB1C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2697CDF5C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_2697CEB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697CE0D8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2697CEB90(uint64_t a1)
{
  v2 = sub_2697CF3F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CEBCC(uint64_t a1)
{
  v2 = sub_2697CF3F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697CEC08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2697CE160(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2697CEC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697CE2AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697CEC64(uint64_t a1)
{
  v2 = sub_2697CEEA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CECA0(uint64_t a1)
{
  v2 = sub_2697CEEA0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2697CECDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2697CE534(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x80uLL);
  }

  return result;
}

unint64_t sub_2697CED28()
{
  result = qword_2803251F0;
  if (!qword_2803251F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251F0);
  }

  return result;
}

unint64_t sub_2697CED7C()
{
  result = qword_280325208;
  if (!qword_280325208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325208);
  }

  return result;
}

uint64_t sub_2697CEDD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2697CEE4C()
{
  result = qword_280325220;
  if (!qword_280325220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325220);
  }

  return result;
}

unint64_t sub_2697CEEA0()
{
  result = qword_280325230;
  if (!qword_280325230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325230);
  }

  return result;
}

uint64_t sub_2697CEEF4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2697CEF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_2697C8118(a1, a2, a3, a4);
  }

  return a1;
}

unint64_t sub_2697CEF18()
{
  result = qword_280325238;
  if (!qword_280325238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325238);
  }

  return result;
}

unint64_t sub_2697CEF6C()
{
  result = qword_280325240;
  if (!qword_280325240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325240);
  }

  return result;
}

_BYTE *_s11LiveServiceV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s20LiveServicesResponseV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2697CF194()
{
  result = qword_280325248;
  if (!qword_280325248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325248);
  }

  return result;
}

unint64_t sub_2697CF1EC()
{
  result = qword_280325250;
  if (!qword_280325250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325250);
  }

  return result;
}

unint64_t sub_2697CF244()
{
  result = qword_280325258;
  if (!qword_280325258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325258);
  }

  return result;
}

unint64_t sub_2697CF29C()
{
  result = qword_280325260;
  if (!qword_280325260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325260);
  }

  return result;
}

unint64_t sub_2697CF2F4()
{
  result = qword_280325268;
  if (!qword_280325268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325268);
  }

  return result;
}

unint64_t sub_2697CF34C()
{
  result = qword_280325270;
  if (!qword_280325270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325270);
  }

  return result;
}

unint64_t sub_2697CF3A0()
{
  result = qword_280325280;
  if (!qword_280325280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325280);
  }

  return result;
}

unint64_t sub_2697CF3F4()
{
  result = qword_280325290;
  if (!qword_280325290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325290);
  }

  return result;
}

_BYTE *sub_2697CF458(_BYTE *result, int a2, int a3)
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

unint64_t sub_2697CF508()
{
  result = qword_280325298;
  if (!qword_280325298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325298);
  }

  return result;
}

unint64_t sub_2697CF560()
{
  result = qword_2803252A0;
  if (!qword_2803252A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803252A0);
  }

  return result;
}

unint64_t sub_2697CF5B8()
{
  result = qword_2803252A8;
  if (!qword_2803252A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803252A8);
  }

  return result;
}

unint64_t sub_2697CF610()
{
  result = qword_2803252B0;
  if (!qword_2803252B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803252B0);
  }

  return result;
}

unint64_t sub_2697CF668()
{
  result = qword_2803252B8;
  if (!qword_2803252B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803252B8);
  }

  return result;
}

unint64_t sub_2697CF6C0()
{
  result = qword_2803252C0;
  if (!qword_2803252C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803252C0);
  }

  return result;
}

uint64_t _s8PlayableVMa()
{
  result = qword_2803252C8;
  if (!qword_2803252C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2697CF7AC()
{
  sub_2697154B0();
  if (v0 <= 0x3F)
  {
    sub_269851C74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2697CF838()
{
  v38[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v37[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v37[-v6];
  MEMORY[0x28223BE20](v5);
  v9 = &v37[-v8];
  v10 = objc_opt_self();
  v11 = sub_269851C24();
  v38[0] = 0;
  v12 = [v10 appLinksWithURL:v11 limit:1 error:v38];

  v13 = v38[0];
  if (!v12)
  {
    v22 = v38[0];
    v23 = sub_269851BD4();

    swift_willThrow();
    goto LABEL_9;
  }

  sub_26969329C(0, &qword_2803252F0, 0x277CC1E48);
  v14 = sub_269854CB4();
  v15 = v13;

  if (!sub_26975004C(v14))
  {

    goto LABEL_9;
  }

  sub_269750050(0);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x26D646120](0, v14);
  }

  else
  {
    v16 = *(v14 + 32);
  }

  v17 = v16;

  v18 = [v17 targetApplicationRecord];

  v19 = sub_2696B6BAC(v18);
  if (!v20)
  {
LABEL_9:
    v24 = [objc_allocWithZone(MEMORY[0x277CC1E80]) init];
    v25 = sub_269851C24();
    v26 = [v24 URLOverrideForURL_];

    if (v26)
    {
      sub_269851C44();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = sub_269851C74();
    __swift_storeEnumTagSinglePayload(v7, v27, 1, v28);
    sub_26973F894(v7, v9);
    sub_2697238F0(v9, v4);
    v29 = 0;
    if (__swift_getEnumTagSinglePayload(v4, 1, v28) != 1)
    {
      v29 = sub_269851C24();
      (*(*(v28 - 8) + 8))(v4, v28);
    }

    v30 = [v24 applicationsAvailableForOpeningURL_];

    if (v30)
    {
      sub_26969329C(0, &qword_2803252E8, 0x277CC1E60);
      v31 = sub_269854CB4();

      if (!sub_26975004C(v31))
      {

        sub_2697D05D8(v9);
        goto LABEL_22;
      }

      sub_269750050(0);
      if ((v31 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x26D646120](0, v31);
      }

      else
      {
        v32 = *(v31 + 32);
      }

      v33 = v32;

      v34 = [v33 bundleIdentifier];

      if (v34)
      {
        v21 = sub_269854A94();

        sub_2697D05D8(v9);
        goto LABEL_23;
      }
    }

    sub_2697D05D8(v9);

LABEL_22:
    v21 = 0;
    goto LABEL_23;
  }

  v21 = v19;
LABEL_23:
  v35 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t sub_2697CFC7C()
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

uint64_t sub_2697CFCD4(char a1)
{
  if (a1)
  {
    return 0x656C626179616C70;
  }

  else
  {
    return 0x736C656E6E616863;
  }
}

uint64_t sub_2697CFD34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2697CFC7C();
  *a2 = result;
  return result;
}

uint64_t sub_2697CFD64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2697CFCD4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2697CFD98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697CFC7C();
  *a1 = result;
  return result;
}

uint64_t sub_2697CFDC0(uint64_t a1)
{
  v2 = sub_2697D0834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CFDFC(uint64_t a1)
{
  v2 = sub_2697D0834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697CFE38(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325310, &qword_269865488);
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_2697D0834();
  sub_2698556E4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325320, &qword_269865490);
    sub_2697D0888();
    OUTLINED_FUNCTION_1_42();
    v7 = v11;
    if (!v11)
    {
      v7 = sub_269854A04();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325330, &qword_269865498);
    sub_2697D0914();
    OUTLINED_FUNCTION_1_42();
    if (!v11)
    {
      _s8PlayableVMa();
      sub_269854A04();
    }

    v9 = OUTLINED_FUNCTION_17_18();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

uint64_t sub_2697D0050@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2697CFE38(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2697D007C()
{
  v0 = sub_2698553E4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2697D00C8(char a1)
{
  if (!a1)
  {
    return 0x496C656E6E616863;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 7107189;
}

uint64_t sub_2697D0144@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2697D007C();
  *a2 = result;
  return result;
}

uint64_t sub_2697D0174@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2697D00C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2697D01A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697D007C();
  *a1 = result;
  return result;
}

uint64_t sub_2697D01DC(uint64_t a1)
{
  v2 = sub_2697D0584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697D0218(uint64_t a1)
{
  v2 = sub_2697D0584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697D0254@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_269851C74();
  v5 = OUTLINED_FUNCTION_8(v4);
  v35 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803252D8, &unk_2698652C8);
  v12 = OUTLINED_FUNCTION_8(v11);
  v37 = v13;
  v38 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  v18 = _s8PlayableVMa();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_2697D0584();
  sub_2698556E4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    v24 = v21;
    v25 = v37;
    v26 = v38;
    v42 = 1;
    v27 = sub_269855424();
    v34 = v24;
    *(v24 + 16) = v27 & 1;
    v41 = 0;
    v28 = sub_269855414();
    v29 = v34;
    *v34 = v28;
    v29[1] = v30;
    v40 = 2;
    sub_2697D09D0(&qword_2803250B0, MEMORY[0x277CC9260]);
    sub_269855494();
    (*(v25 + 8))(v17, v26);
    v31 = *(v18 + 24);
    v32 = v34;
    (*(v35 + 32))(v34 + v31, v10, v4);
    sub_2697BE3D4(v32, v36);
    __swift_destroy_boxed_opaque_existential_0(v39);
    return sub_2697C33C4(v32);
  }
}

unint64_t sub_2697D0584()
{
  result = qword_2803252E0;
  if (!qword_2803252E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803252E0);
  }

  return result;
}

uint64_t sub_2697D05D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *_s8PlayableV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2697D0730()
{
  result = qword_2803252F8;
  if (!qword_2803252F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803252F8);
  }

  return result;
}

unint64_t sub_2697D0788()
{
  result = qword_280325300;
  if (!qword_280325300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325300);
  }

  return result;
}

unint64_t sub_2697D07E0()
{
  result = qword_280325308;
  if (!qword_280325308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325308);
  }

  return result;
}

unint64_t sub_2697D0834()
{
  result = qword_280325318;
  if (!qword_280325318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325318);
  }

  return result;
}

unint64_t sub_2697D0888()
{
  result = qword_280325328;
  if (!qword_280325328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325320, &qword_269865490);
    sub_2697CEE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325328);
  }

  return result;
}

unint64_t sub_2697D0914()
{
  result = qword_280325338;
  if (!qword_280325338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325330, &qword_269865498);
    sub_2697D09D0(&qword_280325340, _s8PlayableVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325338);
  }

  return result;
}

uint64_t sub_2697D09D0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *_s17SmartPlayResponseV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2697D0AF8()
{
  result = qword_280325348;
  if (!qword_280325348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325348);
  }

  return result;
}

unint64_t sub_2697D0B50()
{
  result = qword_280325350;
  if (!qword_280325350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325350);
  }

  return result;
}

unint64_t sub_2697D0BA8()
{
  result = qword_280325358;
  if (!qword_280325358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325358);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_42()
{

  return sub_269855454();
}

uint64_t sub_2697D0C4C()
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

uint64_t sub_2697D0CA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2697D0C4C();
  *a2 = result;
  return result;
}

uint64_t sub_2697D0CD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697D0C4C();
  *a1 = result;
  return result;
}

uint64_t sub_2697D0CF8(uint64_t a1)
{
  v2 = sub_2697D1360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697D0D34(uint64_t a1)
{
  v2 = sub_2697D1360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697D0D70(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325360, &unk_269865650);
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_2697D1360();
  sub_2698556E4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325320, &qword_269865490);
    sub_2697D13B4(&qword_280325328, &qword_280325320, &qword_269865490, sub_2697CEE4C);
    sub_269855454();
    v7 = v11;
    if (!v11)
    {
      v7 = sub_269854A04();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325370, &qword_269865660);
    sub_2697D13B4(&qword_280325378, &qword_280325370, &qword_269865660, sub_2697D1438);
    sub_269855454();
    if (!v11)
    {
      sub_269854A04();
    }

    v9 = OUTLINED_FUNCTION_1_43();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

uint64_t sub_2697D1024(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496C656E6E616863 && a2 == 0xE900000000000064;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x800000026987A7D0 == a2;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7107189 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_269855584();

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

uint64_t sub_2697D1144@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253A0, &qword_269865820);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2697D1760();
  sub_2698556E4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = 0;
  OUTLINED_FUNCTION_0_48();
  v14 = sub_269855464();
  v16 = v15;
  v25 = 1;
  OUTLINED_FUNCTION_0_48();
  v23 = sub_269855474();
  v24 = 2;
  OUTLINED_FUNCTION_0_48();
  v17 = sub_269855464();
  v18 = v12;
  v20 = v19;
  (*(v8 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v17;
  *(a2 + 32) = v20;
  return result;
}

uint64_t sub_2697D1334@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2697D0D70(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_2697D1360()
{
  result = qword_280325368;
  if (!qword_280325368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325368);
  }

  return result;
}

uint64_t sub_2697D13B4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2697D1438()
{
  result = qword_280325380;
  if (!qword_280325380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325380);
  }

  return result;
}

_BYTE *sub_2697D148C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2697D1574()
{
  result = qword_280325388;
  if (!qword_280325388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325388);
  }

  return result;
}

uint64_t sub_2697D15C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697D1024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697D15F0(uint64_t a1)
{
  v2 = sub_2697D1760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697D162C(uint64_t a1)
{
  v2 = sub_2697D1760();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2697D1668@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2697D1144(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_2697D16B4()
{
  result = qword_280325390;
  if (!qword_280325390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325390);
  }

  return result;
}

unint64_t sub_2697D170C()
{
  result = qword_280325398;
  if (!qword_280325398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325398);
  }

  return result;
}

unint64_t sub_2697D1760()
{
  result = qword_2803253A8;
  if (!qword_2803253A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803253A8);
  }

  return result;
}

_BYTE *_s19SportsEventPlayableV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2697D1894()
{
  result = qword_2803253B0;
  if (!qword_2803253B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803253B0);
  }

  return result;
}

unint64_t sub_2697D18EC()
{
  result = qword_2803253B8;
  if (!qword_2803253B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803253B8);
  }

  return result;
}

unint64_t sub_2697D1944()
{
  result = qword_2803253C0;
  if (!qword_2803253C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803253C0);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2697D19D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2697D1A18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2697D1A74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253F8, &unk_269865A00);
    v2 = sub_2698553C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v25 = *v15;
    v26 = v15[1];

    swift_dynamicCast();
    sub_269694FFC(&v27, v29);
    sub_269694FFC(v29, v30);
    sub_269694FFC(v30, &v28);
    result = sub_26973CEF8(v14, v13);
    v16 = result;
    if (v17)
    {
      v18 = (v2[6] + 16 * result);
      v19 = v18[1];
      *v18 = v14;
      v18[1] = v13;

      v20 = (v2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_0(v20);
      result = sub_269694FFC(&v28, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v2[6] + 16 * result);
      *v21 = v14;
      v21[1] = v13;
      result = sub_269694FFC(&v28, (v2[7] + 32 * result));
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2697D1CC0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253F0, &qword_2698659F8);
    v2 = sub_2698553C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2696B6F94(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_269694FFC(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_269694FFC(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_269694FFC(v32, v33);
    v15 = *(v2 + 40);
    result = sub_269855194();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_269694FFC(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}