uint64_t sub_231247F5C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  sub_231366870();
  (*(v3 + 104))(v2, *MEMORY[0x277CC9988], v4);
  sub_231366740();
  v8 = sub_231366890();
  (*(v7 + 8))(v5, v6);
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_28_0();
  result = v11(v10);
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = v0[10];
    v13 = v0[11];
    v16 = v0[8];
    v15 = v0[9];
    v17 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
    OUTLINED_FUNCTION_6_11();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_23136B670;
    v0[2] = v8 - 1;
    v19 = sub_23136A8B0();
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    v21 = *(v14 + 8);
    v22 = OUTLINED_FUNCTION_28_0();
    v23(v22);

    v24 = v0[1];

    return v24(v18);
  }

  return result;
}

uint64_t sub_231248114()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23124D228;

  return sub_231247E24();
}

uint64_t sub_2312481A0()
{
  OUTLINED_FUNCTION_8();
  v0[6] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v2);
  v4 = *(v3 + 64);
  v0[7] = OUTLINED_FUNCTION_43();
  v5 = sub_231369E00();
  v0[8] = v5;
  OUTLINED_FUNCTION_0(v5);
  v0[9] = v6;
  v8 = *(v7 + 64);
  v0[10] = OUTLINED_FUNCTION_43();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  OUTLINED_FUNCTION_40_0(v9);
  v11 = *(v10 + 64);
  v0[11] = OUTLINED_FUNCTION_67();
  v0[12] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D08, &qword_231370400);
  OUTLINED_FUNCTION_40_0(v12);
  v14 = *(v13 + 64);
  v0[13] = OUTLINED_FUNCTION_43();
  v15 = sub_231369630();
  v0[14] = v15;
  OUTLINED_FUNCTION_0(v15);
  v0[15] = v16;
  v18 = *(v17 + 64);
  v0[16] = OUTLINED_FUNCTION_67();
  v0[17] = swift_task_alloc();
  v19 = sub_2313696B0();
  v0[18] = v19;
  OUTLINED_FUNCTION_0(v19);
  v0[19] = v20;
  v22 = *(v21 + 64);
  v0[20] = OUTLINED_FUNCTION_67();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_2312483C0()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[6];
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_28_0();
  sub_2313683A0();
  v5 = sub_23136A200();

  v7 = 0;
  v179 = *(v5 + 16);
  LODWORD(v172) = *MEMORY[0x277D1EB18];
  v170 = (v2 + 8);
  v171 = (v2 + 104);
  v182 = v1;
  v185 = (v1 + 8);
  v167 = (v1 + 32);
  v168 = MEMORY[0x277D84F90];
  v169 = v5;
  while (1)
  {
    if (v179 == v7)
    {

      v44 = 0;
      result = v168;
      v45 = *(v168 + 16);
      v46 = MEMORY[0x277D84F90];
      while (v45 != v44)
      {
        if (v44 >= *(result + 16))
        {
          goto LABEL_59;
        }

        v47 = v0[24];
        v48 = v0[18];
        v49 = (*(v182 + 80) + 32) & ~*(v182 + 80);
        v50 = *(v182 + 72);
        v51 = OUTLINED_FUNCTION_21_9();
        v52(v51);
        v53 = sub_231248DA0();
        v60 = v0[24];
        if (v53)
        {
          v179 = *v167;
          (*v167)(v0[23], v0[24], v0[18]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_13_11(*(v46 + 16));
          }

          v63 = *(v46 + 16);
          v62 = *(v46 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_2311F5958(v62 > 1, v63 + 1, 1);
          }

          ++v44;
          v64 = v0[23];
          v65 = v0[18];
          *(v46 + 16) = v63 + 1;
          (v179)(v46 + v49 + v63 * v50, v64, v65);
          result = v168;
        }

        else
        {
          OUTLINED_FUNCTION_15_13(v53, v0[18], v54, v55, v56, v57, v58, v59, v166, v167, v168, v169, v170, v171, v172, v174, v176, v179, v182, v185);
          v61(v60);
          ++v44;
          result = v168;
        }
      }

      v66 = 0;
      v67 = *(v46 + 16);
      v173 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v67 == v66)
        {

          v96 = *(v173 + 16);
          if (!v96)
          {

            v103 = MEMORY[0x277D84F90];
LABEL_52:
            v145 = v0[8];
            sub_231217D94(v103, v0[12]);

            if (OUTLINED_FUNCTION_26_9() == 1)
            {
              sub_2311EB450(v0[12], &qword_27DD43C40, &qword_231378460);
            }

            else
            {
              v146 = v0[8];
              v147 = v0[9];
              v148 = sub_231369DE0();
              v150 = v149;
              v151 = *(v147 + 8);
              v152 = OUTLINED_FUNCTION_27();
              v153(v152);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
              OUTLINED_FUNCTION_6_11();
              v154 = swift_allocObject();
              *(v154 + 16) = xmmword_23136B670;
              *(v154 + 56) = MEMORY[0x277D837D0];
              *(v154 + 32) = v148;
              *(v154 + 40) = v150;
            }

            v156 = v0[25];
            v155 = v0[26];
            v158 = v0[23];
            v157 = v0[24];
            v160 = v0[21];
            v159 = v0[22];
            v161 = v0[20];
            v163 = v0[16];
            v162 = v0[17];
            v178 = v0[13];
            v181 = v0[12];
            v184 = v0[11];
            v186 = v0[10];
            v187 = v0[7];

            v164 = OUTLINED_FUNCTION_5();

            return v165(v164);
          }

          v97 = v0[9];
          OUTLINED_FUNCTION_4_10();
          v100 = v98 + v99;
          v175 = v102;
          v177 = (v102 + 32);
          v180 = *(v101 + 72);
          v103 = MEMORY[0x277D84F90];
          v183 = *(v101 + 16);
          while (2)
          {
            v104 = v0[7];
            v183(v0[21], v100, v0[18]);
            sub_231369670();
            v105 = sub_231369D00();
            v106 = OUTLINED_FUNCTION_28_1();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v106, v107, v105);
            v116 = v0[21];
            v117 = v0[18];
            v118 = v0[7];
            v119 = v0[8];
            if (EnumTagSinglePayload == 1)
            {
              OUTLINED_FUNCTION_15_13(EnumTagSinglePayload, v109, v110, v111, v112, v113, v114, v115, v166, v167, v168, v169, v170, v171, v173, v175, v177, v180, v183, v185);
              v120(v116, v117);
              sub_2311EB450(v118, &qword_27DD43358, &qword_23136FA90);
              v121 = OUTLINED_FUNCTION_28_1();
              __swift_storeEnumTagSinglePayload(v121, v122, 1, v119);
              goto LABEL_43;
            }

            v123 = v0[11];
            v124 = sub_231369CE0();
            OUTLINED_FUNCTION_15_13(v124, v125, v126, v127, v128, v129, v130, v131, v166, v167, v168, v169, v170, v171, v173, v175, v177, v180, v183, v185);
            v132(v116, v117);
            OUTLINED_FUNCTION_26_0(v105);
            (*(v133 + 8))(v118, v105);
            v134 = OUTLINED_FUNCTION_28_1();
            if (__swift_getEnumTagSinglePayload(v134, v135, v119) == 1)
            {
LABEL_43:
              sub_2311EB450(v0[11], &qword_27DD43C40, &qword_231378460);
            }

            else
            {
              v136 = *v177;
              (*v177)(v0[10], v0[11], v0[8]);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_23126E348(0, *(v103 + 16) + 1, 1, v103);
                v103 = v143;
              }

              v138 = *(v103 + 16);
              v137 = *(v103 + 24);
              if (v138 >= v137 >> 1)
              {
                sub_23126E348(v137 > 1, v138 + 1, 1, v103);
                v103 = v144;
              }

              v139 = v0[10];
              v140 = v0[8];
              *(v103 + 16) = v138 + 1;
              OUTLINED_FUNCTION_4_10();
              v136(v103 + v141 + *(v142 + 72) * v138);
            }

            v100 += v180;
            if (!--v96)
            {

              goto LABEL_52;
            }

            continue;
          }
        }

        if (v66 >= *(v46 + 16))
        {
          goto LABEL_60;
        }

        v68 = v0[22];
        v69 = v0[18];
        v70 = v0[13];
        v71 = (*(v182 + 80) + 32) & ~*(v182 + 80);
        v72 = *(v182 + 72);
        v73 = OUTLINED_FUNCTION_21_9();
        v74(v73);
        sub_231369690();
        v75 = sub_231369660();
        v76 = __swift_getEnumTagSinglePayload(v70, 1, v75);
        v77 = v0[13];
        if (v76 == 1)
        {
          break;
        }

        v84 = sub_231369640();
        OUTLINED_FUNCTION_26_0(v75);
        v86 = *(v85 + 8);
        v87 = OUTLINED_FUNCTION_27();
        v88(v87);
        if (v84)
        {
          v90 = *v167;
          (*v167)(v0[20], v0[22], v0[18]);
          v91 = v173;
          v179 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_13_11(*(v173 + 16));
            v91 = v173;
          }

          v93 = *(v91 + 16);
          v92 = *(v91 + 24);
          if (v93 >= v92 >> 1)
          {
            sub_2311F5958(v92 > 1, v93 + 1, 1);
            v91 = v173;
          }

          ++v66;
          v94 = v0[20];
          v95 = v0[18];
          *(v91 + 16) = v93 + 1;
          v173 = v91;
          result = (v90)(v91 + v71 + v93 * v72, v94, v95);
        }

        else
        {
LABEL_32:
          OUTLINED_FUNCTION_15_13(v0[22], v0[18], v78, v79, v80, v81, v82, v83, v166, v167, v168, v169, v170, v171, v173, v174, v176, v179, v182, v185);
          result = v89();
          ++v66;
        }
      }

      sub_2311EB450(v0[13], &qword_27DD43D08, &qword_231370400);
      goto LABEL_32;
    }

    if (v7 >= *(v5 + 16))
    {
      break;
    }

    v8 = v0[26];
    v10 = v0[17];
    v9 = v0[18];
    v11 = v0[16];
    v12 = v0[14];
    OUTLINED_FUNCTION_4_10();
    v176 = v13;
    v15 = v7;
    v174 = *(v14 + 72);
    v16 = OUTLINED_FUNCTION_21_9();
    v17(v16);
    sub_231369680();
    (*v171)(v11, v172, v12);
    OUTLINED_FUNCTION_1_17();
    sub_23124D064(&qword_27DD43C18, 255, v18);
    OUTLINED_FUNCTION_9_12();
    OUTLINED_FUNCTION_14_11();
    v19 = v0[5];
    v21 = v0[16];
    v20 = v0[17];
    v22 = v0[14];
    if (v0[2] == v0[4] && v0[3] == v19)
    {
      v35 = *v170;
      v36 = OUTLINED_FUNCTION_16_11();
      v35(v36);
      v37 = OUTLINED_FUNCTION_53_3();
      v35(v37);

LABEL_11:
      v38 = *v167;
      (*v167)(v0[25], v0[26], v0[18]);
      v39 = v168;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_11(*(v168 + 16));
        v39 = v168;
      }

      v5 = v169;
      OUTLINED_FUNCTION_20_11();
      if (v41)
      {
        sub_2311F5958(v40 > 1, v19, 1);
        v39 = v168;
      }

      v7 = v15 + 1;
      v42 = v0[25];
      v43 = v0[18];
      *(v39 + 16) = v19;
      v168 = v39;
      result = (v38)(v39 + v176 + v20 * v174, v42, v43);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_25_7();
      v25 = *v170;
      v26 = OUTLINED_FUNCTION_16_11();
      v25(v26);
      v27 = OUTLINED_FUNCTION_53_3();
      v25(v27);

      if (v24)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_15_13(v0[26], v0[18], v28, v29, v30, v31, v32, v33, v166, v167, v168, v169, v170, v171, v172, v174, v176, v179, v182, v185);
      result = v34();
      v7 = v15 + 1;
      v5 = v169;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_231248DA0()
{
  v0 = sub_231369D50();
  v41 = *(v0 - 8);
  v1 = *(v41 + 64);
  MEMORY[0x28223BE20](v0);
  v38 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B0, &unk_23136DFC0);
  v3 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v42 = &v37 - v4;
  v5 = sub_231368290();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v39 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v37 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  sub_231369670();
  v23 = sub_231369D00();
  if (__swift_getEnumTagSinglePayload(v13, 1, v23) == 1)
  {
    sub_2311EB450(v13, &qword_27DD43358, &qword_23136FA90);
    v24 = 1;
  }

  else
  {
    sub_231369CC0();
    (*(*(v23 - 8) + 8))(v13, v23);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v22, v24, 1, v0);
  v25 = swift_allocObject();
  (*(v6 + 104))(v9, *MEMORY[0x277D60F30], v5);
  v26 = sub_231368280();
  v28 = v27;
  (*(v6 + 8))(v9, v5);
  v25[2] = v26;
  v25[3] = v28;
  v25[4] = 0xD000000000000012;
  v25[5] = 0x800000023137DD20;
  *v20 = v25;
  v29 = v41;
  (*(v41 + 104))(v20, *MEMORY[0x277D72D28], v0);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v0);
  v30 = *(v40 + 48);
  v31 = v42;
  sub_23124D0AC(v22, v42, &qword_27DD437B8, &qword_23136FA60);
  sub_23124D0AC(v20, v31 + v30, &qword_27DD437B8, &qword_23136FA60);
  if (__swift_getEnumTagSinglePayload(v31, 1, v0) != 1)
  {
    v33 = v39;
    sub_23124D0AC(v31, v39, &qword_27DD437B8, &qword_23136FA60);
    if (__swift_getEnumTagSinglePayload(v31 + v30, 1, v0) != 1)
    {
      v34 = v38;
      (*(v29 + 32))(v38, v31 + v30, v0);
      sub_23124D064(&qword_27DD43360, 255, MEMORY[0x277D72D58]);
      v32 = sub_231369F60();
      v35 = *(v29 + 8);
      v35(v34, v0);
      sub_2311EB450(v20, &qword_27DD437B8, &qword_23136FA60);
      sub_2311EB450(v22, &qword_27DD437B8, &qword_23136FA60);
      v35(v39, v0);
      sub_2311EB450(v31, &qword_27DD437B8, &qword_23136FA60);
      return v32 & 1;
    }

    sub_2311EB450(v20, &qword_27DD437B8, &qword_23136FA60);
    sub_2311EB450(v22, &qword_27DD437B8, &qword_23136FA60);
    (*(v29 + 8))(v33, v0);
    goto LABEL_9;
  }

  sub_2311EB450(v20, &qword_27DD437B8, &qword_23136FA60);
  sub_2311EB450(v22, &qword_27DD437B8, &qword_23136FA60);
  if (__swift_getEnumTagSinglePayload(v31 + v30, 1, v0) != 1)
  {
LABEL_9:
    sub_2311EB450(v31, &qword_27DD437B0, &unk_23136DFC0);
    v32 = 0;
    return v32 & 1;
  }

  sub_2311EB450(v31, &qword_27DD437B8, &qword_23136FA60);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_2312493D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23124D228;

  return sub_2312481A0();
}

void *sub_23124946C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t sub_231249480()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  OUTLINED_FUNCTION_40_0(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_43();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231249504()
{
  v1 = *(v0 + 32);
  v2 = sub_231249640(*(v0 + 16), *(*(v0 + 24) + 32), *(*(v0 + 24) + 40), *(*(v0 + 24) + 48), *(*(v0 + 24) + 56));
  sub_231217D94(v2, v1);

  v3 = sub_231369E00();
  if (OUTLINED_FUNCTION_26_9() == 1)
  {
    sub_2311EB450(*(v0 + 32), &qword_27DD43C40, &qword_231378460);
  }

  else
  {
    v4 = sub_231369DE0();
    v6 = v5;
    OUTLINED_FUNCTION_26_0(v3);
    v8 = *(v7 + 8);
    v9 = OUTLINED_FUNCTION_27();
    v10(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
    OUTLINED_FUNCTION_6_11();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_23136B670;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 32) = v4;
    *(v11 + 40) = v6;
  }

  v12 = *(v0 + 32);

  v13 = OUTLINED_FUNCTION_5();

  return v14(v13);
}

uint64_t sub_231249640(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v87 = a5;
  v86 = a4;
  v96 = a3;
  v95 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v91 = &v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v109 = &v85 - v11;
  v94 = sub_231369E00();
  v89 = *(v94 - 8);
  v12 = *(v89 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_231369630();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v103 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v102 = &v85 - v19;
  v20 = sub_2313696B0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v85 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v93 = &v85 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v106 = &v85 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v88 = &v85 - v30;
  MEMORY[0x28223BE20](v29);
  v107 = &v85 - v31;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313683A0();
  v33 = sub_23136A200();

  v34 = 0;
  v101 = *(v33 + 16);
  v111 = v21 + 16;
  v100 = *MEMORY[0x277D1EB18];
  v98 = (v15 + 8);
  v99 = (v15 + 104);
  v110 = (v21 + 8);
  v108 = v21;
  v90 = (v21 + 32);
  v104 = MEMORY[0x277D84F90];
  v105 = v20;
  v97 = v33;
LABEL_2:
  v35 = v109;
  while (1)
  {
    v36 = v102;
    v37 = v103;
    if (v101 == v34)
    {

      v55 = 0;
      v14 = 0;
      v56 = v104;
      v57 = *(v104 + 16);
      v103 = MEMORY[0x277D84F90];
      v58 = v91;
      v59 = v87;
      v60 = v86;
      while (v57 != v55)
      {
        if (v55 >= *(v56 + 16))
        {
          goto LABEL_44;
        }

        v61 = (*(v108 + 80) + 32) & ~*(v108 + 80);
        v62 = *(v108 + 72);
        v63 = v106;
        (*(v108 + 16))(v106, v56 + v61 + v62 * v55, v20);
        if (sub_23124CAE8(v63, v95, v96, v60, v59))
        {
          v64 = *v90;
          (*v90)(v85, v106, v20);
          v65 = v103;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v114 = v65;
          if (isUniquelyReferenced_nonNull_native)
          {
            v67 = v65;
          }

          else
          {
            sub_2311F5958(0, *(v65 + 2) + 1, 1);
            v67 = v114;
          }

          v69 = *(v67 + 2);
          v68 = *(v67 + 3);
          if (v69 >= v68 >> 1)
          {
            sub_2311F5958(v68 > 1, v69 + 1, 1);
            v67 = v114;
          }

          ++v55;
          *(v67 + 2) = v69 + 1;
          v103 = v67;
          v20 = v105;
          v64(&v67[v61 + v69 * v62], v85, v105);
          v58 = v91;
          v35 = v109;
          v59 = v87;
          v60 = v86;
          v56 = v104;
        }

        else
        {
          (*v110)(v106, v20);
          ++v55;
          v35 = v109;
          v56 = v104;
        }
      }

      v70 = *(v103 + 2);
      if (!v70)
      {

        return MEMORY[0x277D84F90];
      }

      v71 = &v103[(*(v108 + 80) + 32) & ~*(v108 + 80)];
      v72 = *(v108 + 72);
      v107 = (v89 + 32);
      v73 = MEMORY[0x277D84F90];
      v74 = *(v108 + 16);
      v75 = v93;
      while (1)
      {
        v76 = v105;
        v74(v75, v71, v105);
        sub_231369670();
        v77 = v58;
        v78 = sub_231369D00();
        if (__swift_getEnumTagSinglePayload(v77, 1, v78) == 1)
        {
          (*v110)(v75, v76);
          sub_2311EB450(v77, &qword_27DD43358, &qword_23136FA90);
          __swift_storeEnumTagSinglePayload(v35, 1, 1, v94);
          v58 = v77;
        }

        else
        {
          sub_231369CE0();
          (*v110)(v75, v76);
          (*(*(v78 - 8) + 8))(v77, v78);
          v58 = v77;
          if (__swift_getEnumTagSinglePayload(v35, 1, v94) != 1)
          {
            v79 = *v107;
            (*v107)(v92, v35, v94);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_23126E348(0, *(v73 + 16) + 1, 1, v73);
              v73 = v82;
            }

            v81 = *(v73 + 16);
            v80 = *(v73 + 24);
            if (v81 >= v80 >> 1)
            {
              sub_23126E348(v80 > 1, v81 + 1, 1, v73);
              v73 = v83;
            }

            *(v73 + 16) = v81 + 1;
            v79(v73 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v81, v92, v94);
            v58 = v91;
            v35 = v109;
            goto LABEL_39;
          }
        }

        sub_2311EB450(v35, &qword_27DD43C40, &qword_231378460);
LABEL_39:
        v71 += v72;
        --v70;
        v75 = v93;
        if (!v70)
        {

          return v73;
        }
      }
    }

    if (v34 >= *(v33 + 16))
    {
      break;
    }

    v38 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v39 = v33 + v38;
    v40 = *(v108 + 72);
    (*(v108 + 16))(v107, v39 + v40 * v34, v20);
    sub_231369680();
    (*v99)(v37, v100, v14);
    sub_23124D064(&qword_27DD43C18, 255, MEMORY[0x277D1EB58]);
    sub_23136A140();
    sub_23136A140();
    if (v114 == v112 && v115 == v113)
    {
      v48 = *v98;
      (*v98)(v37, v14);
      v49 = v36;
      v47 = v14;
      v48(v49, v14);

LABEL_12:
      v50 = *v90;
      v20 = v105;
      (*v90)(v88, v107, v105);
      v51 = v104;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v116 = v51;
      if ((v52 & 1) == 0)
      {
        sub_2311F5958(0, *(v51 + 16) + 1, 1);
        v51 = v116;
      }

      v14 = v47;
      v54 = *(v51 + 16);
      v53 = *(v51 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_2311F5958(v53 > 1, v54 + 1, 1);
        v51 = v116;
      }

      ++v34;
      *(v51 + 16) = v54 + 1;
      v104 = v51;
      v50((v51 + v38 + v54 * v40), v88, v20);
      v33 = v97;
      goto LABEL_2;
    }

    v42 = sub_23136A900();
    v43 = v37;
    v44 = v42;
    v45 = *v98;
    (*v98)(v43, v14);
    v46 = v36;
    v47 = v14;
    v45(v46, v14);

    if (v44)
    {
      goto LABEL_12;
    }

    v20 = v105;
    (*v110)(v107, v105);
    ++v34;
    v35 = v109;
    v33 = v97;
  }

  __break(1u);
LABEL_44:
  __break(1u);

  (*v110)(v106, v20);

  __break(1u);
  return result;
}

void *sub_23124A150()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t sub_23124A180()
{
  sub_23124A150();
  OUTLINED_FUNCTION_6_11();

  return swift_deallocClassInstance();
}

uint64_t sub_23124A1D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23124D228;

  return sub_231249480();
}

uint64_t sub_23124A26C()
{
  OUTLINED_FUNCTION_8();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  OUTLINED_FUNCTION_40_0(v2);
  v4 = *(v3 + 64);
  v0[3] = OUTLINED_FUNCTION_43();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D10, &qword_231370418);
  OUTLINED_FUNCTION_40_0(v5);
  v7 = *(v6 + 64);
  v0[4] = OUTLINED_FUNCTION_43();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D18, &qword_231370420);
  v0[5] = v8;
  OUTLINED_FUNCTION_0(v8);
  v0[6] = v9;
  v11 = *(v10 + 64);
  v0[7] = OUTLINED_FUNCTION_43();
  v12 = sub_231368290();
  v0[8] = v12;
  OUTLINED_FUNCTION_0(v12);
  v0[9] = v13;
  v15 = *(v14 + 64);
  v0[10] = OUTLINED_FUNCTION_43();
  v16 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_23124A3C0()
{
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];
  (*(v1 + 104))(v0[10], *MEMORY[0x277D60F38], v0[8]);
  v4 = sub_231368280();
  v6 = v5;
  v7 = *(v1 + 8);
  v8 = OUTLINED_FUNCTION_27();
  v9(v8);
  v10 = sub_231249640(v3, v4, v6, 0x69746E45776F6853, 0xEA00000000007974);

  sub_231217D94(v10, v2);

  v11 = sub_231369E00();
  v12 = OUTLINED_FUNCTION_27_8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v11);
  v15 = v0[5];
  v16 = v0[3];
  if (EnumTagSinglePayload == 1)
  {
    sub_2311EB450(v0[3], &qword_27DD43C40, &qword_231378460);
    v17 = OUTLINED_FUNCTION_27_8();
    __swift_storeEnumTagSinglePayload(v17, v18, 1, v15);
LABEL_4:
    sub_2311EB450(v0[4], &qword_27DD43D10, &qword_231370418);
    goto LABEL_6;
  }

  v19 = v0[4];
  sub_231369DF0();
  OUTLINED_FUNCTION_26_0(v11);
  (*(v20 + 8))(v16, v11);
  v21 = OUTLINED_FUNCTION_27_8();
  if (__swift_getEnumTagSinglePayload(v21, v22, v15) == 1)
  {
    goto LABEL_4;
  }

  v23 = v0[7];
  v24 = v0[5];
  v25 = *(v0[6] + 32);
  v25(v23, v0[4], v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
  OUTLINED_FUNCTION_6_11();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_23136B670;
  *(v26 + 56) = v24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v26 + 32));
  v25(boxed_opaque_existential_1, v23, v24);
LABEL_6:
  v28 = v0[10];
  v29 = v0[7];
  v31 = v0[3];
  v30 = v0[4];

  v32 = OUTLINED_FUNCTION_5();

  return v33(v32);
}

uint64_t sub_23124A640()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23124D228;

  return sub_23124A26C();
}

uint64_t sub_23124A6D4()
{
  OUTLINED_FUNCTION_8();
  v0[12] = v1;
  v2 = sub_231369E00();
  v0[13] = v2;
  OUTLINED_FUNCTION_0(v2);
  v0[14] = v3;
  v5 = *(v4 + 64);
  v0[15] = OUTLINED_FUNCTION_43();
  v6 = sub_231368290();
  v0[16] = v6;
  OUTLINED_FUNCTION_0(v6);
  v0[17] = v7;
  v9 = *(v8 + 64);
  v0[18] = OUTLINED_FUNCTION_43();
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23124A7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (**a17)(uint64_t, uint64_t), uint64_t a18, void (*a19)(uint64_t, unint64_t, uint64_t), uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_32_4();
  v26 = v24[17];
  v25 = v24[18];
  v27 = v24[16];
  v28 = v24[12];
  v29 = *MEMORY[0x277D60EC0];
  v89 = *(v26 + 104);
  v89(v25, v29, v27);
  v30 = sub_231368280();
  v32 = v31;
  v33 = *(v26 + 8);
  v33(v25, v27);
  v34 = sub_231249640(v28, v30, v32, 0x6E457265646C6F46, 0xEC00000079746974);

  v89(v25, v29, v27);
  v35 = sub_231368280();
  v37 = v36;
  v33(v25, v27);
  v38 = sub_231249640(v28, v35, v37, 0x7469746E45676154, 0xE900000000000079);

  v39 = *(v34 + 16);
  if (v39)
  {
    OUTLINED_FUNCTION_22_8();
    v40 = a21;
    v42 = *(v27 + 16);
    v41 = v27 + 16;
    a18 = v34;
    v43 = v34 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    a19 = *(v41 + 56);
    v89 = v42;
    v44 = (v41 - 8);
    do
    {
      v45 = v40;
      v46 = v24[15];
      v47 = v24[13];
      v89(v46, v43, v47);
      v48 = sub_231369DE0();
      v50 = v49;
      v51 = v46;
      v40 = v45;
      (*v44)(v51, v47);
      a21 = v45;
      v27 = *(v45 + 16);
      v52 = *(v45 + 24);
      if (v27 >= v52 >> 1)
      {
        OUTLINED_FUNCTION_10_12(v52);
        sub_2311F4E34();
        v40 = v45;
      }

      *(v40 + 16) = v27 + 1;
      v53 = v40 + 16 * v27;
      *(v53 + 32) = v48;
      *(v53 + 40) = v50;
      v43 += a19;
      --v39;
    }

    while (v39);
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  v54 = *(v38 + 16);
  if (v54)
  {
    a15 = v40;
    OUTLINED_FUNCTION_22_8();
    v56 = *(v27 + 16);
    v55 = v27 + 16;
    v57 = a21;
    v58 = v38 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
    a18 = *(v55 + 56);
    a19 = v56;
    v89 = v55;
    a17 = (v55 - 8);
    do
    {
      v59 = v24[15];
      v60 = v24[13];
      a19(v59, v58, v60);
      v24[2] = sub_231369DE0();
      v24[3] = v61;
      v24[4] = 35;
      v24[5] = 0xE100000000000000;
      v24[6] = 0;
      v24[7] = 0xE000000000000000;
      a11 = sub_231207C1C();
      a12 = a11;
      a10 = a11;
      a9 = MEMORY[0x277D837D0];
      v62 = sub_23136A500();
      v64 = v63;

      (*a17)(v59, v60);
      a21 = v57;
      v66 = *(v57 + 16);
      v65 = *(v57 + 24);
      if (v66 >= v65 >> 1)
      {
        OUTLINED_FUNCTION_10_12(v65);
        sub_2311F4E34();
      }

      *(v57 + 16) = v66 + 1;
      v67 = v57 + 16 * v66;
      *(v67 + 32) = v62;
      *(v67 + 40) = v64;
      v58 += a18;
      --v54;
    }

    while (v54);
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
  }

  v88 = *(v57 + 16);
  if (v88)
  {
    v69 = 0;
    a18 = *(v40 + 16);
    v70 = v57 + 32;
    v71 = (v40 + 40);
    a14 = v40 + 40;
    a15 = v57 + 32;
    while (2)
    {
      if (v69 >= *(v57 + 16))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v72 = v70 + 16 * v69;
      a19 = *v72;
      v89 = *(v72 + 8);
      a17 = (v69 + 1);
      result = sub_231369EE0();
      for (i = 0; a18 != i; ++i)
      {
        if (i >= *(v40 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v75 = *(v71 - 1);
        v74 = *v71;
        v24[8] = v75;
        v24[9] = v74;
        v24[10] = a19;
        v24[11] = v89;
        sub_231207C1C();
        sub_231369EE0();
        if (!sub_23136A510())
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
          OUTLINED_FUNCTION_6_11();
          v76 = swift_allocObject();
          *(v76 + 16) = xmmword_23136B670;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43520, &qword_23136CA60);
          OUTLINED_FUNCTION_6_11();
          v77 = swift_allocObject();
          *(v77 + 16) = xmmword_23136C1C0;
          *(v77 + 32) = a19;
          *(v77 + 40) = v89;
          *(v77 + 48) = v75;
          *(v77 + 56) = v74;
          *(v76 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
          *(v76 + 32) = v77;
          goto LABEL_26;
        }

        v71 += 2;
      }

      v69 = a17;
      v71 = (v40 + 40);
      v70 = v57 + 32;
      if (a17 != v88)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:
  v78 = v24[18];
  v79 = v24[15];

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_0();

  return v82(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14, a15, v88, a17, a18, a19, v89, a21, a22, a23, a24);
}

uint64_t sub_23124AD5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23124D228;

  return sub_23124A6D4();
}

uint64_t sub_23124ADF0()
{
  OUTLINED_FUNCTION_8();
  v0[6] = v1;
  v2 = sub_231369D00();
  v0[7] = v2;
  OUTLINED_FUNCTION_0(v2);
  v0[8] = v3;
  v5 = *(v4 + 64);
  v0[9] = OUTLINED_FUNCTION_67();
  v0[10] = swift_task_alloc();
  v6 = sub_231369630();
  v0[11] = v6;
  OUTLINED_FUNCTION_0(v6);
  v0[12] = v7;
  v9 = *(v8 + 64);
  v0[13] = OUTLINED_FUNCTION_67();
  v0[14] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  OUTLINED_FUNCTION_40_0(v10);
  v12 = *(v11 + 64);
  v0[15] = OUTLINED_FUNCTION_43();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v13);
  v15 = *(v14 + 64);
  v0[16] = OUTLINED_FUNCTION_67();
  v0[17] = swift_task_alloc();
  v16 = sub_2313696B0();
  v0[18] = v16;
  OUTLINED_FUNCTION_0(v16);
  v0[19] = v17;
  v19 = *(v18 + 64);
  v0[20] = OUTLINED_FUNCTION_67();
  v0[21] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_23124B580(char a1)
{
  if (a1)
  {
    return 0x7465736E7553;
  }

  else
  {
    return 0x657369726E7553;
  }
}

uint64_t sub_23124B5B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23124D228;

  return sub_23124ADF0();
}

uint64_t sub_23124B648()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_231366880();
  v0[2] = v1;
  OUTLINED_FUNCTION_0(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = OUTLINED_FUNCTION_43();
  v5 = sub_2313668A0();
  v0[5] = v5;
  OUTLINED_FUNCTION_0(v5);
  v0[6] = v6;
  v8 = *(v7 + 64);
  v0[7] = OUTLINED_FUNCTION_43();
  v9 = sub_231366750();
  v0[8] = v9;
  OUTLINED_FUNCTION_0(v9);
  v0[9] = v10;
  v12 = *(v11 + 64);
  v0[10] = OUTLINED_FUNCTION_43();
  v13 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_23124B780()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v17 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];
  sub_231366740();
  sub_231366870();
  (*(v7 + 104))(v6, *MEMORY[0x277CC9980], v8);
  OUTLINED_FUNCTION_28_0();
  v9 = sub_231366890();
  (*(v7 + 8))(v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
  OUTLINED_FUNCTION_6_11();
  v10 = swift_allocObject();
  v11 = v10;
  v12 = 0x657369726E7553;
  if (v9 > 8)
  {
    v12 = 0x7465736E7553;
  }

  v13 = 0xE700000000000000;
  if (v9 > 8)
  {
    v13 = 0xE600000000000000;
  }

  v14 = MEMORY[0x277D837D0];
  *(v10 + 16) = xmmword_23136B670;
  *(v10 + 56) = v14;
  *(v10 + 32) = v12;
  *(v10 + 40) = v13;
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v17);

  v15 = v0[1];

  return v15(v11);
}

double sub_23124B954()
{
  *(v0 + 16) = 0x5372656874616577;
  *(v0 + 24) = 0xEF65676174536E75;
  *&result = 9;
  *(v0 + 32) = xmmword_23136FD50;
  return result;
}

uint64_t sub_23124B98C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311EC8F4;

  return sub_23124B648();
}

uint64_t sub_23124BA18()
{
  OUTLINED_FUNCTION_8();
  v0[6] = v1;
  v2 = sub_231369CA0();
  v0[7] = v2;
  OUTLINED_FUNCTION_0(v2);
  v0[8] = v3;
  v5 = *(v4 + 64);
  v0[9] = OUTLINED_FUNCTION_43();
  v6 = sub_231369C90();
  v0[10] = v6;
  OUTLINED_FUNCTION_0(v6);
  v0[11] = v7;
  v9 = *(v8 + 64);
  v0[12] = OUTLINED_FUNCTION_43();
  v10 = sub_231369630();
  v0[13] = v10;
  OUTLINED_FUNCTION_0(v10);
  v0[14] = v11;
  v13 = *(v12 + 64);
  v0[15] = OUTLINED_FUNCTION_67();
  v0[16] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  OUTLINED_FUNCTION_40_0(v14);
  v16 = *(v15 + 64);
  v0[17] = OUTLINED_FUNCTION_43();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v17);
  v19 = *(v18 + 64);
  v0[18] = OUTLINED_FUNCTION_43();
  v20 = sub_231369D00();
  v0[19] = v20;
  OUTLINED_FUNCTION_0(v20);
  v0[20] = v21;
  v23 = *(v22 + 64);
  v0[21] = OUTLINED_FUNCTION_67();
  v0[22] = swift_task_alloc();
  v24 = sub_2313696B0();
  v0[23] = v24;
  OUTLINED_FUNCTION_0(v24);
  v0[24] = v25;
  v27 = *(v26 + 64);
  v0[25] = OUTLINED_FUNCTION_67();
  v0[26] = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_23124C2DC()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_23124C338()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23124D228;

  return sub_23124BA18();
}

uint64_t sub_23124C40C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23124D228;

  return sub_23124C3CC();
}

void sub_23124C9A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2311D1D6C(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
  if ((OUTLINED_FUNCTION_34_4() & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = v11[2];
  if (!v3)
  {
LABEL_9:

LABEL_10:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v4 = 0;
  v5 = (v11 + 4);
  while (v4 < v11[2])
  {
    sub_2311D1D6C(v5, v12);
    sub_23124D17C();
    if (OUTLINED_FUNCTION_34_4())
    {
      sub_23124D1C0(v11);
      if (v6)
      {

        v7 = [v11 displayName];
        v8 = sub_231369FD0();
        v10 = v9;

        *(a2 + 24) = MEMORY[0x277D837D0];
        *a2 = v8;
        *(a2 + 8) = v10;
        return;
      }
    }

    ++v4;
    v5 += 32;
    if (v3 == v4)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_23124CAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v40 = a2;
  v7 = sub_231369D50();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v37 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B0, &unk_23136DFC0);
  v10 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v38 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v37 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = &v37 - v24;
  sub_231369670();
  v26 = sub_231369D00();
  if (__swift_getEnumTagSinglePayload(v16, 1, v26) == 1)
  {
    sub_2311EB450(v16, &qword_27DD43358, &qword_23136FA90);
    v27 = 1;
  }

  else
  {
    sub_231369CC0();
    (*(*(v26 - 8) + 8))(v16, v26);
    v27 = 0;
  }

  __swift_storeEnumTagSinglePayload(v25, v27, 1, v7);
  v28 = swift_allocObject();
  v28[2] = v40;
  v28[3] = a3;
  v28[4] = a4;
  v28[5] = v41;
  *v23 = v28;
  (*(v42 + 104))(v23, *MEMORY[0x277D72D28], v7);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v7);
  v29 = *(v39 + 48);
  sub_23124D0AC(v25, v12, &qword_27DD437B8, &qword_23136FA60);
  sub_23124D0AC(v23, &v12[v29], &qword_27DD437B8, &qword_23136FA60);
  if (__swift_getEnumTagSinglePayload(v12, 1, v7) != 1)
  {
    v31 = v38;
    sub_23124D0AC(v12, v38, &qword_27DD437B8, &qword_23136FA60);
    if (__swift_getEnumTagSinglePayload(&v12[v29], 1, v7) != 1)
    {
      v32 = v42;
      v33 = &v12[v29];
      v34 = v37;
      (*(v42 + 32))(v37, v33, v7);
      sub_23124D064(&qword_27DD43360, 255, MEMORY[0x277D72D58]);
      sub_231369EE0();
      sub_231369EE0();
      v30 = sub_231369F60();
      v35 = *(v32 + 8);
      v35(v34, v7);
      sub_2311EB450(v23, &qword_27DD437B8, &qword_23136FA60);
      sub_2311EB450(v25, &qword_27DD437B8, &qword_23136FA60);
      v35(v31, v7);
      sub_2311EB450(v12, &qword_27DD437B8, &qword_23136FA60);
      return v30 & 1;
    }

    sub_231369EE0();
    sub_231369EE0();
    sub_2311EB450(v23, &qword_27DD437B8, &qword_23136FA60);
    sub_2311EB450(v25, &qword_27DD437B8, &qword_23136FA60);
    (*(v42 + 8))(v31, v7);
    goto LABEL_9;
  }

  sub_231369EE0();
  sub_231369EE0();
  sub_2311EB450(v23, &qword_27DD437B8, &qword_23136FA60);
  sub_2311EB450(v25, &qword_27DD437B8, &qword_23136FA60);
  if (__swift_getEnumTagSinglePayload(&v12[v29], 1, v7) != 1)
  {
LABEL_9:
    sub_2311EB450(v12, &qword_27DD437B0, &unk_23136DFC0);
    v30 = 0;
    return v30 & 1;
  }

  sub_2311EB450(v12, &qword_27DD437B8, &qword_23136FA60);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_23124D064(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_23124D0AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_26_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_64();
  v9(v8);
  return a2;
}

uint64_t sub_23124D10C(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231369FD0();

  return v3;
}

unint64_t sub_23124D17C()
{
  result = qword_27DD43D20;
  if (!qword_27DD43D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD43D20);
  }

  return result;
}

uint64_t sub_23124D1C0(void *a1)
{
  v1 = [a1 contactIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231369FD0();

  return v3;
}

void OUTLINED_FUNCTION_13_11(uint64_t a1@<X8>)
{

  sub_2311F5958(0, a1 + 1, 1);
}

void OUTLINED_FUNCTION_24_10()
{
  v2 = *(v0 + 16) + 1;

  sub_2311F5958(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_26_9()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

void sub_23124D2C0(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v3 = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E18, &qword_2313707A0);
  v4 = sub_23136A770();
  v5 = v4;
  v33 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;
  v37 = v4 + 64;
  sub_231369EE0();
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v35 = v5;
  v36 = v3;
  v34 = v9;
  if (v8)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v15 = v12 | (v10 << 6);
      v16 = (*(v3 + 48) + 16 * v15);
      v17 = v16[1];
      v41 = *v16;
      v18 = *(*(v3 + 56) + 8 * v15);
      v19 = *(v18 + 16);
      if (v19)
      {
        break;
      }

      v27 = sub_231369EE0();
      v21 = v11;
LABEL_18:
      *(v37 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v28 = (v5[6] + 16 * v15);
      *v28 = v41;
      v28[1] = v27;
      *(v5[7] + 8 * v15) = v21;
      v29 = v5[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_24;
      }

      v5[2] = v31;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v39 = v15;
    v40 = v8;
    v46 = v11;
    v38 = v17;
    sub_231369EE0();
    sub_231369EE0();
    sub_2311F59F0();
    v20 = 0;
    v21 = v46;
    v22 = v18 + 72;
    while (v20 < *(v18 + 16))
    {
      sub_231252E14(v22 - 40, __src);
      sub_231252F98(v22, &__src[40]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_2311D9ECC(&__dst[5], &v44);
      __swift_destroy_boxed_opaque_existential_1Tm(__dst);
      v23 = v45;
      v24 = __swift_project_boxed_opaque_existential_1(&v44, v45);
      *&__src[24] = v23;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__src);
      (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v24, v23);
      __swift_destroy_boxed_opaque_existential_1Tm(&v44);
      v46 = v21;
      v26 = *(v21 + 16);
      if (v26 >= *(v21 + 24) >> 1)
      {
        sub_2311F59F0();
        v21 = v46;
      }

      ++v20;
      *(v21 + 16) = v26 + 1;
      sub_2311D9ECC(__src, (v21 + 32 * v26 + 32));
      v22 += 72;
      if (v19 == v20)
      {

        v5 = v35;
        v3 = v36;
        v9 = v34;
        v11 = MEMORY[0x277D84F90];
        v15 = v39;
        v8 = v40;
        v27 = v38;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v13 = v10;
    while (1)
    {
      v10 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        *a2 = v5;
        return;
      }

      v14 = *(v33 + 8 * v10);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_23124D658(void *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  [a1 lock];
  a3(&v8, a2);
  [a1 unlock];
  if (v3)
  {
  }

  return v8;
}

id sub_23124D6F4(void (*a1)(uint64_t *__return_ptr, id))
{
  a1(&v4, [v1 lock]);
  if (v2)
  {
    return [v1 unlock];
  }

  [v1 unlock];
  return v4;
}

uint64_t sub_23124D798(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v3 = *(v1 + 112);

  return sub_23124D658(v3, v1, a1);
}

void sub_23124D7E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 112);

  v4 = sub_23124D658(v3, a1, sub_23124D2C0);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v23 = v4;
  sub_231369EE0();
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (!v8)
      {
        while (1)
        {
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v12);
          ++v10;
          if (v8)
          {
            v10 = v12;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

LABEL_9:
      v13 = (v10 << 9) | (8 * __clz(__rbit64(v8)));
      v14 = *(*(v23 + 56) + v13);
      v15 = *(v14 + 16);
      v16 = *(v11 + 16);
      if (__OFADD__(v16, v15))
      {
        goto LABEL_22;
      }

      v17 = *(*(v23 + 56) + v13);
      sub_231369EE0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v16 + v15 > *(v11 + 24) >> 1)
      {
        sub_23126E92C();
        v11 = v18;
      }

      v8 &= v8 - 1;
      if (!*(v14 + 16))
      {
        break;
      }

      if ((*(v11 + 24) >> 1) - *(v11 + 16) < v15)
      {
        goto LABEL_23;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v19 = *(v11 + 16);
        v20 = __OFADD__(v19, v15);
        v21 = v19 + v15;
        if (v20)
        {
          goto LABEL_24;
        }

        *(v11 + 16) = v21;
      }
    }
  }

  while (!v15);
  __break(1u);
LABEL_20:

  *a2 = v11;
}

uint64_t DefaultGlobalLifeCycleContainer.__allocating_init()()
{
  v0 = swift_allocObject();
  DefaultGlobalLifeCycleContainer.init()();
  return v0;
}

void *DefaultGlobalLifeCycleContainer.init()()
{
  swift_defaultActor_initialize();
  v0[14] = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D28, &unk_231370460);
  v0[15] = sub_231369EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
  v0[16] = sub_231369EC0();
  return v0;
}

uint64_t sub_23124DABC()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(v1 + 16);
  v4 = sub_2312502D0();
  sub_231251CFC();
  v6 = v5;
  sub_231369EE0();
  sub_2311D3BBC();
  if (v6 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_23124DBB0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_8_5(sub_23124DBD0, v2);
}

uint64_t sub_23124DBD0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[2].i64[0];
  v2 = *(v1 + 112);
  v3 = swift_task_alloc();
  v4 = v0[1];
  *(v3 + 16) = v1;
  *(v3 + 24) = vextq_s8(v4, v4, 8uLL);
  sub_23124D5E0(sub_231252050);

  OUTLINED_FUNCTION_56_0();

  return v5();
}

uint64_t sub_23124DC74(uint64_t a1, uint64_t a2, void *a3)
{
  v9[2] = a3;
  v5 = sub_231250B90(sub_231252F18, v9, a2);
  swift_beginAccess();
  sub_2312510F8(v5, sub_231252F34, 0, (a1 + 120));
  swift_endAccess();
  v6 = a3[3];
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v6);
  MEMORY[0x231929610](v6, v7);
  sub_231252E14(a3, v10);
  swift_beginAccess();
  sub_2312C50C8(v10);
  return swift_endAccess();
}

uint64_t sub_23124DD8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v6[2] = a2;
  result = sub_23132BD80(sub_231252F78, v6, v4);
  *a3 = result;
  return result;
}

uint64_t sub_23124DDDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_231252E14(a2, a3);
  v5 = a1[3];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v5);
  *(a3 + 64) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a3 + 40));
  return (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
}

uint64_t sub_23124DE88()
{
  OUTLINED_FUNCTION_8();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_23124DF2C;
  v2 = *(v0 + 56);

  return sub_23124E1C8();
}

uint64_t sub_23124DF2C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  sub_231228E9C(v2 + 16, &qword_27DD43D30, qword_231375200);
  OUTLINED_FUNCTION_56_0();

  return v8();
}

uint64_t sub_23124E01C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_8_5(sub_23124E038, v1);
}

uint64_t sub_23124E038()
{
  OUTLINED_FUNCTION_8();
  sub_231252E14(v0[7], (v0 + 2));
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_23124E0D8;
  v2 = v0[8];

  return sub_23124E1C8();
}

uint64_t sub_23124E0D8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  sub_231228E9C(v2 + 16, &qword_27DD43D30, qword_231375200);
  OUTLINED_FUNCTION_56_0();

  return v8();
}

uint64_t sub_23124E1C8()
{
  OUTLINED_FUNCTION_8();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_2313698C0();
  v1[9] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[10] = v4;
  v6 = *(v5 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23124E27C, v0, 0);
}

uint64_t sub_23124E27C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = *(v2 + 112);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = sub_23124D6F4(sub_231252DF8);
  v0[12] = v6;

  sub_2313690F0();
  sub_231369EE0();
  v7 = sub_2313698A0();
  v8 = sub_23136A3A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v6[2];

    _os_log_impl(&dword_2311CB000, v7, v8, "Destroying remaining entities: %ld", v9, 0xCu);
    MEMORY[0x23192B930](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  v10 = v6[2];
  v0[13] = v10;
  if (v10)
  {
    v0[14] = 0;
    sub_231252E14(v0[12] + 32, (v0 + 2));
    v11 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v12 = *(MEMORY[0x277D60A10] + 4);
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v14 = OUTLINED_FUNCTION_8_10(v13);

    return MEMORY[0x2821C67F0](v14);
  }

  else
  {

    v15 = v0[11];

    OUTLINED_FUNCTION_56_0();

    return v16();
  }
}

uint64_t sub_23124E480()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 64);
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  return MEMORY[0x2822009F8](sub_23124E580, v6, 0);
}

uint64_t sub_23124E580()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[14] + 1;
  if (v1 == v0[13])
  {
    v2 = v0[12];

    v3 = v0[11];

    OUTLINED_FUNCTION_56_0();

    return v4();
  }

  else
  {
    v0[14] = v1;
    sub_231252E14(v0[12] + 40 * v1 + 32, (v0 + 2));
    v6 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v7 = *(MEMORY[0x277D60A10] + 4);
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v9 = OUTLINED_FUNCTION_8_10();

    return MEMORY[0x2821C67F0](v9);
  }
}

void sub_23124E678(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v115 = a3;
  v6 = sub_2313698C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v117 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v115 - v11;
  sub_2313690F0();
  v122 = a1;
  sub_231252E6C(a1, __src, &qword_27DD43D30, qword_231375200);
  swift_retain_n();
  v13 = sub_2313698A0();
  v14 = sub_23136A3A0();
  v15 = os_log_type_enabled(v13, v14);
  v125 = v3;
  v126 = a2;
  v118 = v7;
  v119 = v6;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v129.n128_u64[0] = v127;
    *v16 = 136315394;
    sub_231252E6C(__src, v128, &qword_27DD43D30, qword_231375200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D30, qword_231375200);
    v17 = sub_23136A010();
    v19 = v18;
    a2 = v126;
    sub_231228E9C(__src, &qword_27DD43D30, qword_231375200);
    v20 = sub_2311CFD58(v17, v19, &v129);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2048;
    v21 = *(a2 + 112);

    v22 = v21;
    v23 = v125;
    v24 = sub_23124D658(v22, a2, sub_23124D7E8);
    v125 = v23;
    v25 = *(v24 + 16);

    *(v16 + 14) = v25;

    _os_log_impl(&dword_2311CB000, v13, v14, "Destroying: %s. Entries before: %ld", v16, 0x16u);
    v26 = v127;
    __swift_destroy_boxed_opaque_existential_1Tm(v127);
    MEMORY[0x23192B930](v26, -1, -1);
    MEMORY[0x23192B930](v16, -1, -1);

    v116 = *(v118 + 8);
    v116(v12, v119);
  }

  else
  {

    sub_231228E9C(__src, &qword_27DD43D30, qword_231375200);
    v116 = *(v7 + 8);
    v116(v12, v6);
  }

  swift_beginAccess();
  v27 = *(a2 + 120);
  v28 = *(v27 + 64);
  v124 = (v27 + 64);
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v32 = (v29 + 63) >> 6;
  v127 = v27;
  swift_bridgeObjectRetain_n();
  v33 = 0;
  v34 = MEMORY[0x277D84F90];
  while (v31)
  {
LABEL_12:
    v36 = (v33 << 9) | (8 * __clz(__rbit64(v31)));
    v37 = *(v127[7] + v36);
    v38 = *(v37 + 16);
    v39 = *(v34 + 16);
    if (__OFADD__(v39, v38))
    {
      goto LABEL_67;
    }

    v40 = *(v127[7] + v36);
    sub_231369EE0();
    if (!swift_isUniquelyReferenced_nonNull_native() || v39 + v38 > *(v34 + 24) >> 1)
    {
      sub_23126EA10();
      v34 = v41;
    }

    v31 &= v31 - 1;
    if (*(v37 + 16))
    {
      if ((*(v34 + 24) >> 1) - *(v34 + 16) < v38)
      {
        goto LABEL_68;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43630, &qword_23136CB70);
      swift_arrayInitWithCopy();

      if (v38)
      {
        v42 = *(v34 + 16);
        v43 = __OFADD__(v42, v38);
        v44 = v42 + v38;
        if (v43)
        {
          goto LABEL_69;
        }

        *(v34 + 16) = v44;
      }
    }

    else
    {

      if (v38)
      {
        __break(1u);
LABEL_23:

        MEMORY[0x28223BE20](v45);
        *(&v115 - 2) = v122;
        v46 = v125;
        v47 = sub_231254F64(sub_231252EB8, (&v115 - 4), v34);
        v125 = v46;
        v48 = v47[2];
        if (v48)
        {
          v124 = v47;
          v49 = (v47 + 4);
          v127 = MEMORY[0x277D84F90];
          do
          {
            sub_231252E6C(v49, __src, &qword_27DD43630, &qword_23136CB70);
            memcpy(v128, __src, sizeof(v128));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DE0, &unk_231370760);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DE8, &unk_231370EE0);
            if ((swift_dynamicCast() & 1) == 0)
            {
              v131 = 0;
              v129 = 0u;
              v130 = 0u;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v128);
            if (*(&v130 + 1))
            {
              sub_2311D9EB8(&v129, v128);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v52 = v127[2];
                sub_23126EAEC();
                v127 = v53;
              }

              v50 = v127[2];
              if (v50 >= v127[3] >> 1)
              {
                sub_23126EAEC();
                v127 = v54;
              }

              v51 = v127;
              v127[2] = v50 + 1;
              sub_2311D9EB8(v128, &v51[5 * v50 + 4]);
            }

            else
            {
              sub_231228E9C(&v129, &qword_27DD43DF0, &qword_231370770);
            }

            v49 += 72;
            --v48;
          }

          while (v48);
        }

        else
        {

          v127 = MEMORY[0x277D84F90];
        }

        v55 = *(v126 + 120);
        v58 = *(v55 + 64);
        v57 = v55 + 64;
        v56 = v58;
        v59 = 1 << *(*(v126 + 120) + 32);
        v60 = -1;
        if (v59 < 64)
        {
          v60 = ~(-1 << v59);
        }

        v61 = v60 & v56;
        v62 = (v59 + 63) >> 6;
        v121 = *(v126 + 120);
        v63 = sub_231369EE0();
        v64 = 0;
        v120 = v57;
        if (v61)
        {
          goto LABEL_44;
        }

        while (1)
        {
          v65 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            goto LABEL_65;
          }

          if (v65 >= v62)
          {

            v76 = v117;
            sub_2313690F0();
            sub_231252E6C(v122, __src, &qword_27DD43D30, qword_231375200);
            v77 = v126;
            swift_retain_n();
            v78 = sub_2313698A0();
            v79 = sub_23136A3A0();
            if (os_log_type_enabled(v78, v79))
            {
              v80 = swift_slowAlloc();
              v124 = swift_slowAlloc();
              v129.n128_u64[0] = v124;
              *v80 = 136315394;
              sub_231252E6C(__src, v128, &qword_27DD43D30, qword_231375200);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D30, qword_231375200);
              v81 = sub_23136A010();
              v83 = v82;
              sub_231228E9C(__src, &qword_27DD43D30, qword_231375200);
              v84 = sub_2311CFD58(v81, v83, &v129);

              *(v80 + 4) = v84;
              *(v80 + 12) = 2048;
              v85 = *(v77 + 112);

              v86 = v125;
              v87 = *(sub_23124D658(v85, v77, sub_23124D7E8) + 16);

              *(v80 + 14) = v87;

              _os_log_impl(&dword_2311CB000, v78, v79, "Destroyed container for: %s. Entries after: %ld", v80, 0x16u);
              v88 = v124;
              __swift_destroy_boxed_opaque_existential_1Tm(v124);
              MEMORY[0x23192B930](v88, -1, -1);
              MEMORY[0x23192B930](v80, -1, -1);

              v116(v117, v119);
            }

            else
            {

              sub_231228E9C(__src, &qword_27DD43D30, qword_231375200);
              v116(v76, v119);
              v86 = v125;
            }

            v89 = swift_beginAccess();
            v90 = *(v77 + 128);
            MEMORY[0x28223BE20](v89);
            *(&v115 - 2) = v122;
            sub_231369EE0();
            v91 = sub_231250D58(sub_231252EF8, &v115 - 4, v90);
            v123 = v86;

            v92 = 0;
            v94 = v91 + 8;
            v93 = v91[8];
            v125 = v91;
            v95 = 1 << *(v91 + 32);
            v96 = -1;
            if (v95 < 64)
            {
              v96 = ~(-1 << v95);
            }

            v97 = v96 & v93;
            v98 = (v95 + 63) >> 6;
            while (v97)
            {
LABEL_59:
              v100 = __clz(__rbit64(v97)) | (v92 << 6);
              v101 = (v125[6] + 16 * v100);
              v103 = *v101;
              v102 = v101[1];
              sub_231252E14(v125[7] + 40 * v100, &__src[16]);
              *v128 = v103;
              *&v128[8] = v102;
              sub_2311D9EB8(&__src[16], &v128[16]);
              v104 = v126;
              swift_beginAccess();
              v105 = *(v104 + 128);
              sub_231369EE0();
              v106 = sub_231215F6C(v103, v102);
              if (v107)
              {
                v108 = v106;
                v109 = *(v104 + 128);
                LODWORD(v124) = swift_isUniquelyReferenced_nonNull_native();
                v133 = *(v104 + 128);
                v110 = v133;
                *(v104 + 128) = 0x8000000000000000;
                v111 = *(v110 + 24);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E00, &unk_231370780);
                sub_23136A700();
                v112 = v133;
                v113 = *(*(v133 + 48) + 16 * v108 + 8);

                sub_2311D9EB8(*(v112 + 56) + 40 * v108, &v129);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
                sub_23136A720();
                v114 = *(v104 + 128);
                *(v104 + 128) = v112;
              }

              else
              {
                v131 = 0;
                v129 = 0u;
                v130 = 0u;
              }

              v97 &= v97 - 1;
              sub_231228E9C(&v129, &qword_27DD43D30, qword_231375200);
              swift_endAccess();
              sub_231228E9C(v128, &qword_27DD43DF8, &qword_231370778);
            }

            while (1)
            {
              v99 = v92 + 1;
              if (__OFADD__(v92, 1))
              {
                goto LABEL_66;
              }

              if (v99 >= v98)
              {

                *v115 = v127;
                return;
              }

              v97 = v94[v99];
              ++v92;
              if (v97)
              {
                v92 = v99;
                goto LABEL_59;
              }
            }
          }

          v61 = *(v57 + 8 * v65);
          ++v64;
          if (v61)
          {
            v64 = v65;
            do
            {
LABEL_44:
              v123 = &v115;
              v66 = __clz(__rbit64(v61)) | (v64 << 6);
              v67 = (*(v121 + 48) + 16 * v66);
              v69 = *v67;
              v68 = v67[1];
              v70 = *(*(v121 + 56) + 8 * v66);
              MEMORY[0x28223BE20](v63);
              *(&v115 - 2) = v122;
              swift_bridgeObjectRetain_n();
              sub_231369EE0();
              v124 = v70;
              v71 = v125;
              v72 = sub_231254F64(sub_231252ED8, (&v115 - 4), v70);
              v125 = v71;
              v73 = v126;
              swift_beginAccess();
              sub_231369EE0();
              sub_231369EE0();
              v74 = *(v73 + 120);
              swift_isUniquelyReferenced_nonNull_native();
              *v128 = *(v73 + 120);
              v123 = v69;
              sub_23125A168();
              *(v73 + 120) = *v128;

              swift_endAccess();
              v75 = *(v72 + 16);

              if (!v75)
              {
                swift_beginAccess();
                sub_2312D0540(v123, v68);
                swift_endAccess();
              }

              v57 = v120;
              v61 &= v61 - 1;
            }

            while (v61);
          }
        }
      }
    }
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v32)
    {
      goto LABEL_23;
    }

    v31 = v124[v35];
    ++v33;
    if (v31)
    {
      v33 = v35;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

uint64_t sub_23124F398(uint64_t a1, uint64_t a2)
{
  sub_231252E6C(a2, v4, &qword_27DD43D30, qword_231375200);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = sub_231368F90();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_231228E9C(v4, &qword_27DD43D30, qword_231375200);
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_23124F450(uint64_t a1, uint64_t a2)
{
  sub_231252E6C(a2, v5, &qword_27DD43D30, qword_231375200);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v2 = sub_231368F90();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v3 = v2 ^ 1;
  }

  else
  {
    sub_231228E9C(v5, &qword_27DD43D30, qword_231375200);
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_23124F50C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  sub_231252E14(a2, &v10);
  sub_231252E6C(a3, v7, &qword_27DD43D30, qword_231375200);
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    sub_231369EE0();
    v5 = sub_231368F90();
    sub_231228E9C(v9, &qword_27DD43DF8, &qword_231370778);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_231369EE0();
    sub_231228E9C(v9, &qword_27DD43DF8, &qword_231370778);
    sub_231228E9C(v7, &qword_27DD43D30, qword_231375200);
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_23124F624(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_8_5(sub_23124F644, v2);
}

uint64_t sub_23124F644()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v0[2] = v2;
  type metadata accessor for DefaultGlobalLifeCycleContainer();
  sub_2312526B0(qword_280F7E1B0, v4, type metadata accessor for DefaultGlobalLifeCycleContainer);
  v5 = sub_231368790();
  v7 = v6;
  v8 = *(v2 + 112);
  v9 = swift_task_alloc();
  v9[2] = v1;
  v9[3] = v2;
  v9[4] = v5;
  v9[5] = v7;
  sub_2312520B4();
  sub_23136A250();
  sub_23136A4D0();
  sub_23124D5E0(sub_231252094);

  v10 = v0[2];
  OUTLINED_FUNCTION_14();

  return v11();
}

uint64_t sub_23124F794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = swift_beginAccess();
  v9 = *(a1 + 120);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  sub_231369EE0();
  v10 = sub_231215F6C(a2, a3);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  sub_231369EE0();

  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D28, &unk_231370460);
  sub_231252D94();
  v14 = sub_23136A110();

LABEL_6:
  *a4 = v14;
  return result;
}

uint64_t sub_23124F8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_231252E6C(a1, v7, &qword_27DD43630, &qword_23136CB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DE0, &unk_231370760);
  v5 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(a3, v5 ^ 1u, 1, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t DefaultGlobalLifeCycleContainer.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DefaultGlobalLifeCycleContainer.__deallocating_deinit()
{
  DefaultGlobalLifeCycleContainer.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23124FA28()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 16);
  sub_23124D2A8();
  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_23124FA80(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231209AAC;

  return sub_23124DBB0(a1, a2);
}

uint64_t sub_23124FB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D610C0] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for DefaultGlobalLifeCycleContainer();
  *v11 = v5;
  v11[1] = sub_2311D05C8;

  return MEMORY[0x2821C72B0](a1, a2, v12, a3, a5);
}

uint64_t sub_23124FBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D610D0] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for DefaultGlobalLifeCycleContainer();
  *v11 = v5;
  v11[1] = sub_231209AAC;

  return MEMORY[0x2821C72C0](a1, a2, a3, v12, a5);
}

uint64_t sub_23124FCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D610C8] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for DefaultGlobalLifeCycleContainer();
  *v7 = v3;
  v7[1] = sub_231209AAC;

  return MEMORY[0x2821C72B8](a1, v8, a3);
}

uint64_t sub_23124FD70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2311DDECC;

  return sub_23124F624(a1, a2);
}

uint64_t sub_23124FE14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209AAC;

  return sub_23124E01C(a1);
}

uint64_t sub_23124FEC8()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 16);
  sub_23124DABC();
  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_23124FF20()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209AAC;

  return sub_23124DE6C();
}

uint64_t sub_23124FFB0()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_23124FFD0, v2, 0);
}

uint64_t sub_23124FFD0()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 16);
  sub_23124D780();
  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_2312500A0()
{
  OUTLINED_FUNCTION_34_5();
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_16_12(v2, v3, v4, v5);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_32_5(v6);
  *(v1 + 16) = v0;
  *(v1 + 24) = 2 * (v7 / 16);
  return v1;
}

uint64_t sub_231250158()
{
  OUTLINED_FUNCTION_34_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43550, &unk_23136CA90);
  v1 = OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_32_5(v1);
  OUTLINED_FUNCTION_12_9(v2);
  return v0;
}

uint64_t sub_2312502D0()
{
  OUTLINED_FUNCTION_34_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_16_12(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_32_5(v5);
  OUTLINED_FUNCTION_12_9(v6);
  return v0;
}

uint64_t sub_2312504E0()
{
  OUTLINED_FUNCTION_34_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_32_5(v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = (2 * (v4 / 8)) | 1;
  return v0;
}

uint64_t sub_231250590()
{
  OUTLINED_FUNCTION_34_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_16_12(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_32_5(v5);
  OUTLINED_FUNCTION_12_9(v6);
  return v0;
}

size_t sub_231250678(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_16_12(a1, a2, a3, a4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_0(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      OUTLINED_FUNCTION_12_9(result - v13);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_2312507D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_16_12(a1, a2, a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = v5;
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

uint64_t sub_2312508BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v47 = a5;
  sub_2312B7234(v46);
  v6 = v46[1];
  v7 = v46[3];
  v8 = v46[4];
  v39 = v46[5];
  v40 = v46[0];
  v9 = (v46[2] + 64) >> 6;
  sub_231369EE0();

  v38 = v6;
  if (v8)
  {
    while (1)
    {
      v41 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v40 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v40 + 56) + 8 * v12);
      v45[0] = *v13;
      v45[1] = v14;
      v45[2] = v15;
      sub_231369EE0();
      sub_231369EE0();
      v39(&v42, v45);

      v16 = v42;
      v17 = v43;
      v18 = v44;
      v19 = *v47;
      v21 = sub_231215F6C(v42, v43);
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v24 = v20;
      if (*(v19 + 24) >= v22 + v23)
      {
        if ((v41 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E08, &unk_231370B10);
          sub_23136A710();
        }
      }

      else
      {
        v25 = v47;
        sub_2312B5368();
        v26 = *v25;
        v27 = sub_231215F6C(v16, v17);
        if ((v24 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }

        v21 = v27;
      }

      v8 &= v8 - 1;
      if (v24)
      {
        v29 = *v47;
        v45[0] = *(*(*v47 + 56) + 8 * v21);
        sub_231369EE0();
        sub_2312675E4(v18);

        v30 = *(v29 + 56);
        v31 = *(v30 + 8 * v21);
        *(v30 + 8 * v21) = v45[0];
      }

      else
      {
        v32 = *v47;
        v32[(v21 >> 6) + 8] |= 1 << v21;
        v33 = (v32[6] + 16 * v21);
        *v33 = v16;
        v33[1] = v17;
        *(v32[7] + 8 * v21) = v18;
        v34 = v32[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_23;
        }

        v32[2] = v36;
      }

      a4 = 1;
      v7 = v10;
      v6 = v38;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_2311D3BBC();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v41 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_231250B90(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E10, &unk_231370790);
  result = sub_23136A770();
  v6 = result;
  v7 = 0;
  v29 = a3;
  v30 = result;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v27 = result + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = (*(v29 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v32 = *(*(v29 + 56) + 8 * v18);
      sub_231369EE0();
      sub_231369EE0();
      a1(&v31, &v32);

      if (v3)
      {
        break;
      }

      *(v27 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v6 = v30;
      v22 = v31;
      v23 = (v30[6] + 16 * v18);
      *v23 = v20;
      v23[1] = v21;
      *(v30[7] + 8 * v18) = v22;
      v24 = v30[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_17;
      }

      v30[2] = v26;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v6 = v30;

    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t *sub_231250D58(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      a2 = sub_231251068(v13, v8, a3, v6);
      MEMORY[0x23192B930](v13, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = (v14 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_2312B3C88(0, v8, v9);
  sub_231250EDC(v9, v8, a3, v6);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v10;
  }

LABEL_5:
  v11 = *MEMORY[0x277D85DE8];
  return a2;
}

void sub_231250EDC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  v22 = 0;
  v5 = 0;
  v26 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(v26 + 56);
    v16 = (*(v26 + 48) + 16 * v14);
    v17 = v16[1];
    v25[0] = *v16;
    v25[1] = v17;
    sub_231252E14(v15 + 40 * v14, v24);
    sub_231369EE0();
    v18 = a4(v25, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);

    if (v4)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        sub_2312416E8(a1, a2, v22, v26);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_231251068(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_231250EDC(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_2312510F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a4;
  result = sub_2312508BC(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v11);
  *a4 = v11;
  return result;
}

void sub_23125116C()
{
  OUTLINED_FUNCTION_21_10();
  v3 = v1 + 64;
  v2 = *(v1 + 64);
  v4 = *(v1 + 32);
  OUTLINED_FUNCTION_0_16();
  v9 = v8 & v7;
  if (!v5)
  {
    OUTLINED_FUNCTION_17_7();
LABEL_17:
    OUTLINED_FUNCTION_35_7(v12);
    return;
  }

  v10 = v6;
  if (!v6)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = v5;
    OUTLINED_FUNCTION_3_16();
    v16 = (v14 - v15) >> 6;
    while (v13 < v10)
    {
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        while (1)
        {
          v18 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v18 >= v16)
          {
            goto LABEL_17;
          }

          v9 = *(v3 + 8 * v18);
          ++v12;
          if (v9)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v18 = v12;
LABEL_12:
      OUTLINED_FUNCTION_14_12();
      *v11 = *(*(v0 + 56) + ((v18 << 10) | (16 * v19)));
      if (v17 == v10)
      {
        sub_231369EE0();
        sub_231369EE0();
        v12 = v18;
        goto LABEL_17;
      }

      ++v11;
      sub_231369EE0();
      sub_231369EE0();
      v13 = v17;
      v12 = v18;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_2312512C8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_40_6();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43908, &unk_23136EBA0);
  v3 = OUTLINED_FUNCTION_0_0(v28);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v27 = v6;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_0();
  v9 = v0 + 64;
  v8 = *(v0 + 64);
  v10 = *(v0 + 32);
  OUTLINED_FUNCTION_0_16();
  v13 = v12 & v11;
  if (!v2)
  {
    v14 = 0;
LABEL_17:
    OUTLINED_FUNCTION_25_8(v14);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (!v1)
  {
    v14 = 0;
    goto LABEL_17;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_16();
    v18 = (v16 - v17) >> 6;
    v25 = v0;
    v26 = v1;
    while (v15 < v1)
    {
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_21;
      }

      if (!v13)
      {
        while (1)
        {
          v20 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            goto LABEL_17;
          }

          v13 = *(v9 + 8 * v20);
          ++v14;
          if (v13)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v20 = v14;
LABEL_12:
      OUTLINED_FUNCTION_13_12();
      v21 = sub_231367890();
      OUTLINED_FUNCTION_7_0(v21);
      (*(v22 + 16))(v27 + *(v28 + 48), v0 + *(v22 + 72) * v2);
      v23 = OUTLINED_FUNCTION_42_6();
      sub_231252FE8(v23, v24, &qword_27DD43908, &unk_23136EBA0);
      OUTLINED_FUNCTION_37_5();
      v1 = v26;
      if (v19 == v26)
      {
        sub_231369EE0();
        v14 = v20;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_46_7();
      v15 = v19;
      v14 = v20;
      v0 = v25;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_2312514C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 + 64;
  v4 = *(a4 + 64);
  v6 = *(a4 + 32);
  OUTLINED_FUNCTION_0_16();
  v14 = v13 & v12;
  if (!v8)
  {
    OUTLINED_FUNCTION_17_7();
LABEL_18:
    *v7 = v10;
    v7[1] = v5;
    v7[2] = ~v11;
    v7[3] = v17;
    v7[4] = v14;
    return;
  }

  v15 = v9;
  if (!v9)
  {
    v17 = 0;
    goto LABEL_18;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v16 = v8;
    v33 = v11;
    v34 = v7;
    OUTLINED_FUNCTION_3_16();
    v21 = (v19 - v20) >> 6;
    while (1)
    {
      if (v18 >= v15)
      {
        goto LABEL_21;
      }

      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_22;
      }

      if (!v14)
      {
        while (1)
        {
          v23 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v23 >= v21)
          {
            v14 = 0;
            goto LABEL_16;
          }

          v14 = *(v5 + 8 * v23);
          ++v17;
          if (v14)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v23 = v17;
LABEL_12:
      OUTLINED_FUNCTION_14_12();
      v25 = v24 | (v23 << 6);
      v27 = v26;
      v28 = (*(v26 + 48) + 16 * v25);
      v29 = *v28;
      v30 = v28[1];
      sub_231252F98(*(v26 + 56) + 32 * v25, &v36);
      *&v35 = v29;
      *(&v35 + 1) = v30;
      v32 = v36;
      v31 = v37;
      v39 = v36;
      v40 = v37;
      v38 = v35;
      *v16 = v35;
      v16[1] = v32;
      v16[2] = v31;
      if (v22 == v15)
      {
        break;
      }

      v16 += 3;
      sub_231369EE0();
      v18 = v22;
      v17 = v23;
      v10 = v27;
    }

    sub_231369EE0();
    v17 = v23;
    v10 = v27;
LABEL_16:
    v11 = v33;
    v7 = v34;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_231251660()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_33_6();
  v7 = sub_231367E10();
  v27 = OUTLINED_FUNCTION_0_0(v7);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_0();
  v11 = *(v2 + 64);
  v26 = -1 << *(v2 + 32);
  OUTLINED_FUNCTION_1_18();
  v15 = v14 & v13;
  if (!v3)
  {
    v18 = 0;
LABEL_18:
    OUTLINED_FUNCTION_24_11(v18);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (!v1)
  {
    v18 = 0;
    goto LABEL_18;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v24 = v12;
    OUTLINED_FUNCTION_3_16();
    v17 = OUTLINED_FUNCTION_15_14(v16);
    while (v19 < v17)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_22;
      }

      if (!v15)
      {
        while (1)
        {
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v20 >= v1)
          {
            goto LABEL_18;
          }

          v15 = *(v24 + 8 * v20);
          ++v18;
          if (v15)
          {
            v28 = v19 + 1;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

      v28 = v19 + 1;
      v20 = v18;
LABEL_13:
      v21 = OUTLINED_FUNCTION_9_13();
      v22(v21);
      v23 = OUTLINED_FUNCTION_26_10();
      (v2)(v23);
      (v2)(v3, v0, v5);
      v17 = v25;
      v19 = v28;
      if (v28 == v25)
      {
        v18 = v20;
        goto LABEL_18;
      }

      v3 += v6;
      v18 = v20;
      v2 = v4;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_23125182C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_23136A590();
    sub_2313692F0();
    sub_2312526B0(&unk_280F7C910, 255, MEMORY[0x277D612D0]);
    result = sub_23136A350();
    v4 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
LABEL_27:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v10;
    v7[4] = v11;
    return v12;
  }

  v10 = 0;
  v18 = -1 << *(a4 + 32);
  v8 = a4 + 56;
  v9 = ~v18;
  v19 = -v18;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v11 = v20 & *(a4 + 56);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v21 = v9;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!sub_23136A5C0())
        {
          goto LABEL_25;
        }

        sub_2313692F0();
        swift_dynamicCast();
        result = v22;
        if (!v22)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v11 = 0;
              goto LABEL_25;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v17 = *(*(v4 + 48) + ((v10 << 9) | (8 * v16)));

        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v12;
      if (v14 == a3)
      {
        v12 = a3;
LABEL_25:
        v9 = v21;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_231251AA0()
{
  OUTLINED_FUNCTION_11_0();
  v45 = v0;
  v46 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v44 = v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v0);
  v11 = OUTLINED_FUNCTION_0_0(v43);
  v40 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_1();
  v42 = v15;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17_0();
  v41 = v17;
  v47 = v3;
  v19 = *(v3 + 64);
  v18 = v3 + 64;
  v20 = *(v18 - 32);
  OUTLINED_FUNCTION_0_16();
  v24 = v23 & v22;
  if (!v7)
  {
    OUTLINED_FUNCTION_17_7();
LABEL_18:
    *v9 = v47;
    v9[1] = v18;
    v9[2] = ~v21;
    v9[3] = v25;
    v9[4] = v24;
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (!v5)
  {
    v25 = 0;
    goto LABEL_18;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v37 = v21;
    v38 = v9;
    OUTLINED_FUNCTION_3_16();
    v29 = (v27 - v28) >> 6;
    v39 = v5;
    while (1)
    {
      if (v26 >= v5)
      {
        goto LABEL_21;
      }

      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_22;
      }

      if (!v24)
      {
        while (1)
        {
          v31 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v31 >= v29)
          {
            v24 = 0;
            goto LABEL_16;
          }

          v24 = *(v18 + 8 * v31);
          ++v25;
          if (v24)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v31 = v25;
LABEL_12:
      v32 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v33 = v32 | (v31 << 6);
      v34 = *(v47 + 48);
      v35 = v46(0);
      OUTLINED_FUNCTION_7_0(v35);
      (*(v36 + 16))(v42, v34 + *(v36 + 72) * v33);
      *(v42 + *(v43 + 48)) = *(*(v47 + 56) + 8 * v33);
      sub_231252FE8(v42, v41, v44, v45);
      sub_231252FE8(v41, v7, v44, v45);
      v5 = v39;
      if (v30 == v39)
      {
        break;
      }

      v7 += *(v40 + 72);
      sub_231369EE0();
      v26 = v30;
      v25 = v31;
    }

    sub_231369EE0();
    v25 = v31;
LABEL_16:
    v21 = v37;
    v9 = v38;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_231251CFC()
{
  OUTLINED_FUNCTION_21_10();
  v4 = v2 + 64;
  v3 = *(v2 + 64);
  v5 = *(v2 + 32);
  OUTLINED_FUNCTION_0_16();
  v12 = v11 & v10;
  if (!v6)
  {
    v17 = 0;
LABEL_17:
    *v0 = v1;
    v0[1] = v4;
    v0[2] = ~v9;
    v0[3] = v17;
    v0[4] = v12;
    return;
  }

  v13 = v7;
  if (!v7)
  {
    v17 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v14 = v8;
    v15 = v6;
    v16 = 0;
    v17 = 0;
    v22 = v9;
    v18 = (63 - v9) >> 6;
    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (!v12)
      {
        while (1)
        {
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            v12 = 0;
            goto LABEL_15;
          }

          v12 = *(v4 + 8 * v20);
          ++v17;
          if (v12)
          {
            v17 = v20;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      OUTLINED_FUNCTION_14_12();
      sub_231252E14(*(v1 + 56) + 40 * (v21 | (v17 << 6)), v23);
      v14(v23, v24);
      v14(v24, v15);
      v15 += 40;
      v16 = v19;
      if (v19 == v13)
      {
LABEL_15:
        v9 = v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_231251E5C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_40_6();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435D0, &qword_23136CB10);
  v3 = OUTLINED_FUNCTION_0_0(v27);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v26 = v6;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_0();
  v9 = v0 + 64;
  v8 = *(v0 + 64);
  v10 = *(v0 + 32);
  OUTLINED_FUNCTION_0_16();
  v13 = v12 & v11;
  if (!v2)
  {
    v14 = 0;
LABEL_17:
    OUTLINED_FUNCTION_25_8(v14);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (!v1)
  {
    v14 = 0;
    goto LABEL_17;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_16();
    v18 = (v16 - v17) >> 6;
    v24 = v0;
    v25 = v1;
    while (v15 < v1)
    {
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_21;
      }

      if (!v13)
      {
        while (1)
        {
          v20 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            goto LABEL_17;
          }

          v13 = *(v9 + 8 * v20);
          ++v14;
          if (v13)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v20 = v14;
LABEL_12:
      OUTLINED_FUNCTION_13_12();
      v21 = type metadata accessor for SignalOverrides();
      sub_231247630(v0 + *(*(v21 - 8) + 72) * v2, v26 + *(v27 + 48));
      v22 = OUTLINED_FUNCTION_42_6();
      sub_231252FE8(v22, v23, &qword_27DD435D0, &qword_23136CB10);
      OUTLINED_FUNCTION_37_5();
      v1 = v25;
      if (v19 == v25)
      {
        sub_231369EE0();
        v14 = v20;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_46_7();
      v15 = v19;
      v14 = v20;
      v0 = v24;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_2312520B4()
{
  result = qword_280F7C7E8;
  if (!qword_280F7C7E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F7C7E8);
  }

  return result;
}

uint64_t dispatch thunk of DefaultGlobalLifeCycleContainer.addToLifeCycle(owner:localEntities:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_0();
  v5 = *(v4 + 192);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_30(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_34_0(v8);

  return v11(a1, a2);
}

uint64_t dispatch thunk of DefaultGlobalLifeCycleContainer.destroy()()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_13_0();
  v1 = *(v0 + 200);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_34_0(v4);

  return v7();
}

uint64_t dispatch thunk of DefaultGlobalLifeCycleContainer.destroy(owner:)()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  OUTLINED_FUNCTION_13_0();
  v3 = *(v2 + 208);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_30(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_34_0(v6);

  return v9(v1);
}

uint64_t dispatch thunk of DefaultGlobalLifeCycleContainer.getEntity<A>(entityType:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_0();
  v5 = *(v4 + 224);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_30(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_34_0(v8);

  return v11(a1, a2);
}

uint64_t sub_2312526B0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_2312526F8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_21_10();
  v3 = v1 + 64;
  v2 = *(v1 + 64);
  v4 = -1 << *(v1 + 32);
  OUTLINED_FUNCTION_1_18();
  v9 = v8 & v7;
  if (!v5)
  {
    OUTLINED_FUNCTION_17_7();
LABEL_17:
    OUTLINED_FUNCTION_10_13(v12);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v10 = v6;
  if (!v6)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = v5;
    OUTLINED_FUNCTION_3_16();
    v15 = (v14 - v4) >> 6;
    while (v13 < v10)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        while (1)
        {
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            goto LABEL_17;
          }

          v9 = *(v3 + 8 * v17);
          ++v12;
          if (v9)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v17 = v12;
LABEL_12:
      OUTLINED_FUNCTION_39_3();
      *v11 = *(*(v0 + 56) + ((v17 << 9) | (8 * v18)));
      if (v16 == v10)
      {

        v12 = v17;
        goto LABEL_17;
      }

      ++v11;

      v13 = v16;
      v12 = v17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_23125280C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_21_10();
  v3 = v1 + 64;
  v2 = *(v1 + 64);
  v4 = -1 << *(v1 + 32);
  OUTLINED_FUNCTION_1_18();
  v9 = v8 & v7;
  if (!v5)
  {
    OUTLINED_FUNCTION_17_7();
LABEL_17:
    OUTLINED_FUNCTION_10_13(v12);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v10 = v6;
  if (!v6)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = v5;
    OUTLINED_FUNCTION_3_16();
    v15 = (v14 - v4) >> 6;
    while (v13 < v10)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        while (1)
        {
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            goto LABEL_17;
          }

          v9 = *(v3 + 8 * v17);
          ++v12;
          if (v9)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v17 = v12;
LABEL_12:
      OUTLINED_FUNCTION_39_3();
      v19 = *(*(v0 + 48) + ((v17 << 9) | (8 * v18)));
      *v11 = v19;
      if (v16 == v10)
      {
        v21 = v19;
        v12 = v17;
        goto LABEL_17;
      }

      ++v11;
      v20 = v19;
      v13 = v16;
      v12 = v17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_231252920()
{
  OUTLINED_FUNCTION_21_10();
  v3 = v1 + 64;
  v2 = *(v1 + 64);
  v4 = *(v1 + 32);
  OUTLINED_FUNCTION_0_16();
  v9 = v8 & v7;
  if (!v5)
  {
    OUTLINED_FUNCTION_17_7();
LABEL_17:
    OUTLINED_FUNCTION_35_7(v12);
    return;
  }

  v10 = v6;
  if (!v6)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = v5;
    OUTLINED_FUNCTION_3_16();
    v16 = (v14 - v15) >> 6;
    while (v13 < v10)
    {
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        while (1)
        {
          v18 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v18 >= v16)
          {
            goto LABEL_17;
          }

          v9 = *(v3 + 8 * v18);
          ++v12;
          if (v9)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v18 = v12;
LABEL_12:
      v19 = __clz(__rbit64(v9)) | (v18 << 6);
      v20 = (*(v0 + 48) + 16 * v19);
      v21 = v20[1];
      v22 = *(*(v0 + 56) + 8 * v19);
      v9 &= v9 - 1;
      *v11 = *v20;
      v11[1] = v21;
      v11[2] = v22;
      if (v17 == v10)
      {
        sub_231369EE0();
        sub_231369EE0();
        v12 = v18;
        goto LABEL_17;
      }

      v11 += 3;
      sub_231369EE0();
      sub_231369EE0();
      v13 = v17;
      v12 = v18;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_231252A6C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_21_10();
  v3 = v1 + 64;
  v2 = *(v1 + 64);
  v4 = -1 << *(v1 + 32);
  OUTLINED_FUNCTION_1_18();
  v9 = v8 & v7;
  if (!v5)
  {
    OUTLINED_FUNCTION_17_7();
LABEL_17:
    OUTLINED_FUNCTION_10_13(v12);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v10 = v6;
  if (!v6)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = v5;
    OUTLINED_FUNCTION_3_16();
    v15 = (v14 - v4) >> 6;
    while (v13 < v10)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        while (1)
        {
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            goto LABEL_17;
          }

          v9 = *(v3 + 8 * v17);
          ++v12;
          if (v9)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v17 = v12;
LABEL_12:
      v18 = (*(v0 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v9)))));
      v19 = v18[1];
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      if (v16 == v10)
      {
        sub_231369EE0();
        v12 = v17;
        goto LABEL_17;
      }

      v11 += 2;
      sub_231369EE0();
      v13 = v16;
      v12 = v17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_231252BA8()
{
  OUTLINED_FUNCTION_11_0();
  v7 = OUTLINED_FUNCTION_33_6();
  v9 = v8(v7);
  v29 = OUTLINED_FUNCTION_0_0(v9);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_0();
  v13 = *(v2 + 56);
  v28 = -1 << *(v2 + 32);
  OUTLINED_FUNCTION_1_18();
  v17 = v16 & v15;
  if (!v3)
  {
    v20 = 0;
LABEL_18:
    OUTLINED_FUNCTION_24_11(v20);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (!v1)
  {
    v20 = 0;
    goto LABEL_18;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v26 = v14;
    OUTLINED_FUNCTION_3_16();
    v19 = OUTLINED_FUNCTION_15_14(v18);
    while (v21 < v19)
    {
      if (__OFADD__(v21, 1))
      {
        goto LABEL_22;
      }

      if (!v17)
      {
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v1)
          {
            goto LABEL_18;
          }

          v17 = *(v26 + 8 * v22);
          ++v20;
          if (v17)
          {
            v30 = v21 + 1;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

      v30 = v21 + 1;
      v22 = v20;
LABEL_13:
      v23 = OUTLINED_FUNCTION_9_13();
      v24(v23);
      v25 = OUTLINED_FUNCTION_26_10();
      (v2)(v25);
      (v2)(v3, v0, v5);
      v19 = v27;
      v21 = v30;
      if (v30 == v27)
      {
        v20 = v22;
        goto LABEL_18;
      }

      v3 += v6;
      v20 = v22;
      v2 = v4;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_231252D94()
{
  result = qword_280F7C828;
  if (!qword_280F7C828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43D28, &unk_231370460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C828);
  }

  return result;
}

uint64_t sub_231252E14(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = *(OUTLINED_FUNCTION_44_6(a1, a2) + 32);
  (**(v3 - 8))(v2);
  return v2;
}

uint64_t sub_231252E6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_0(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_231252F34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2313625AC(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_231252F98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_44_6(a1, a2);
  (**(v3 - 8))(v2);
  return v2;
}

uint64_t sub_231252FE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_0(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_13_12()
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = (v3 + 16 * (__clz(__rbit64(v2)) | (v0 << 6)));
  v6 = *v5;
  v7 = v5[1];
  return 0;
}

void OUTLINED_FUNCTION_24_11(uint64_t a1@<X8>)
{
  v6 = ~*(v5 - 128);
  *v2 = v3;
  v2[1] = v1;
  v2[2] = v6;
  v2[3] = a1;
  v2[4] = v4;
}

uint64_t OUTLINED_FUNCTION_26_10()
{
  v2 = *(v0 + 32);
  result = *(v1 - 120);
  v4 = *(v1 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_46_7()
{
  v3 = v0 + *(*(v1 - 120) + 72);

  return sub_231369EE0();
}

uint64_t sub_2312530E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437A0, &qword_23136DB10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23136B670;
  v1 = sub_231367D20();
  *(v0 + 56) = v1;
  OUTLINED_FUNCTION_0_17();
  *(v0 + 64) = sub_231253AB0(v2, 255, v3);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B50], v1);
  return v0;
}

uint64_t sub_2312531B0(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C08, &unk_2313708B0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v4 = sub_2313698C0();
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v6 = *(v5 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312532B4, 0, 0);
}

uint64_t sub_2312532B4()
{
  v32 = v0;
  v1 = v0[15];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_231367820();
  if (v3[2])
  {
    v4 = v0[21];
    v5 = v3[4];
    v0[22] = v5;
    v6 = v3[5];
    v0[23] = v6;
    sub_231369EE0();

    sub_231369150();
    sub_231369EE0();
    v7 = sub_2313698A0();
    v8 = sub_23136A3A0();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[21];
    v11 = v0[18];
    v12 = v0[19];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_2311CFD58(v5, v6, &v31);
      _os_log_impl(&dword_2311CB000, v7, v8, "Apps mentioned: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x23192B930](v14, -1, -1);
      MEMORY[0x23192B930](v13, -1, -1);
    }

    (*(v12 + 8))(v10, v11);
    sub_2311CF324(v0[16] + 16, (v0 + 2));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43520, &qword_23136CA60);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_23136B670;
    *(v15 + 32) = v5;
    *(v15 + 40) = v6;
    type metadata accessor for FallbackSignalHelper();
    v0[24] = swift_initStackObject();
    sub_231369EE0();
    v16 = swift_task_alloc();
    v0[25] = v16;
    *v16 = v0;
    v16[1] = sub_231253624;

    return sub_2312C4274((v0 + 2), v15);
  }

  else
  {
    v18 = v0[20];

    sub_231369150();
    v19 = sub_2313698A0();
    v20 = sub_23136A3A0();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[19];
    v22 = v0[20];
    v24 = v0[18];
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2311CB000, v19, v20, "No apps mentioned", v25, 2u);
      MEMORY[0x23192B930](v25, -1, -1);
    }

    (*(v23 + 8))(v22, v24);
    v27 = v0[20];
    v26 = v0[21];
    v28 = v0[17];

    v29 = v0[1];
    v30 = MEMORY[0x277D84F90];

    return v29(v30);
  }
}

uint64_t sub_231253624(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_231253724, 0, 0);
}

uint64_t sub_231253724()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2313707C0;
  sub_2313692F0();
  v6 = sub_231367D20();
  v0[10] = v6;
  OUTLINED_FUNCTION_0_17();
  v0[11] = sub_231253AB0(v7, 255, v8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(*(v6 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B50], v6);
  sub_2312C3FA0(v3, v2);
  sub_231367B70();
  v10 = sub_231367B80();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v10);
  *(v5 + 32) = sub_231369220();

  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[17];

  v14 = v0[1];

  return v14(v5);
}

uint64_t sub_23125391C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23120B320;

  return sub_2312531B0(a1);
}

void sub_2312539B4(uint64_t a1, uint64_t a2)
{
  sub_231253AB0(qword_280F7F4C8, a2, type metadata accessor for MentionedAppSignalExtractor);

  JUMPOUT(0x2319284B0);
}

uint64_t sub_231253AB0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_231253AF8(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  result = sub_231369EE0();
  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_2311D1D6C(*(a1 + 56) + 32 * v12, v37);
    *&v36 = v15;
    *(&v36 + 1) = v14;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    sub_2311D1D6C(&v34, v30);
    sub_231369EE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E30, &qword_231375150);
    if (swift_dynamicCast())
    {
      v16 = v31;
      if (!v31)
      {
        goto LABEL_17;
      }

      v32[0] = v34;
      v32[1] = v35;
      v31 = v33;
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_2312B5354();
        v2 = v38;
      }

      v17 = v31;
      v18 = *(v2 + 40);
      sub_23136A9D0();
      v39 = *(&v17 + 1);
      sub_23136A060();
      result = sub_23136AA00();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = (*(v2 + 48) + 16 * v23);
      v29 = v39;
      *v28 = v17;
      v28[1] = v29;
      *(*(v2 + 56) + 8 * v23) = v16;
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v32);
    }

    else
    {
      *&v31 = 0;
LABEL_17:
      result = sub_231228E9C(&v33, &qword_27DD43558, &qword_231374890);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_231253DBC()
{
  OUTLINED_FUNCTION_1_19();
  sub_23136A650();

  sub_231369040();
  OUTLINED_FUNCTION_5_11();

  MEMORY[0x23192A730](95, 0xE100000000000000);
  sub_2313692D0();
  OUTLINED_FUNCTION_5_11();

  return 0x6E496B6E61725F5FLL;
}

uint64_t sub_231253E64(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_19();
  sub_23136A650();

  MEMORY[0x23192A730](a1, a2);
  return 0x70417473616C5F5FLL;
}

uint64_t sub_231253EE4()
{
  OUTLINED_FUNCTION_1_19();
  sub_23136A650();

  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_3_17();
  sub_231369040();
  OUTLINED_FUNCTION_5_11();

  return v1;
}

uint64_t sub_231253F48()
{
  OUTLINED_FUNCTION_1_19();
  sub_23136A650();

  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_3_17();
  sub_231369040();
  OUTLINED_FUNCTION_5_11();

  return v1;
}

uint64_t sub_231253FAC()
{
  OUTLINED_FUNCTION_1_19();
  sub_23136A650();

  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_3_17();
  sub_231369040();
  OUTLINED_FUNCTION_5_11();

  return v1;
}

uint64_t sub_231254010()
{
  OUTLINED_FUNCTION_1_19();
  sub_23136A650();

  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_3_17();
  sub_231367D40();
  OUTLINED_FUNCTION_5_11();

  return v1;
}

uint64_t sub_231254074(uint64_t a1, uint64_t a2)
{
  sub_231253E64(a1, a2);
  OUTLINED_FUNCTION_0_18();
  v2();

  if (v6)
  {
    v3 = OUTLINED_FUNCTION_2_9();
    return OUTLINED_FUNCTION_4_11(v3);
  }

  else
  {
    sub_231228E9C(v5, &qword_27DD443C0, &unk_23136E000);
    return 0;
  }
}

uint64_t sub_231254110()
{
  sub_231253F48();
  OUTLINED_FUNCTION_0_18();
  v0();

  if (v4)
  {
    sub_2313692F0();
    if (OUTLINED_FUNCTION_2_9())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_231228E9C(v3, &qword_27DD443C0, &unk_23136E000);
    return 0;
  }
}

uint64_t sub_2312541AC()
{
  sub_231253FAC();
  OUTLINED_FUNCTION_0_18();
  v0();

  if (v4)
  {
    v1 = OUTLINED_FUNCTION_2_9();
    return OUTLINED_FUNCTION_4_11(v1);
  }

  else
  {
    sub_231228E9C(v3, &qword_27DD443C0, &unk_23136E000);
    return 0;
  }
}

uint64_t sub_231254248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_231369050();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_231254110())
  {
    v10 = sub_231253DBC();
    (*(a3 + 8))(v28, v10);

    if (v28[3])
    {
      v11 = swift_dynamicCast();
      return OUTLINED_FUNCTION_4_11(v11);
    }

    sub_231228E9C(v28, &qword_27DD443C0, &unk_23136E000);
  }

  else
  {
    v13 = sub_231253F48();
    v15 = v14;
    if (qword_280F7C8A0 != -1)
    {
      swift_once();
    }

    v16 = sub_2313698C0();
    __swift_project_value_buffer(v16, qword_280F8E510);
    (*(v6 + 16))(v9, a1, v5);
    sub_231369EE0();
    v17 = sub_2313698A0();
    v18 = sub_23136A3A0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v13;
      v21 = v20;
      v28[0] = v20;
      *v19 = 136315394;
      v22 = sub_231369040();
      v24 = v23;
      (*(v6 + 8))(v9, v5);
      v25 = sub_2311CFD58(v22, v24, v28);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2080;
      v26 = sub_2311CFD58(v27, v15, v28);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_2311CB000, v17, v18, "unable to determine signal for %s. DataProvider does not have this available for key %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23192B930](v21, -1, -1);
      MEMORY[0x23192B930](v19, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }
  }

  return 0;
}

uint64_t sub_231254598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_231369040();
  MEMORY[0x23192A730](v5);

  (*(a3 + 8))(v7, 0x6E6F697463615F5FLL, 0xEA00000000005F73, a2, a3);

  if (v7[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E30, &qword_231375150);
    if (swift_dynamicCast())
    {
      return 0x6E6F697463615F5FLL;
    }
  }

  else
  {
    sub_231228E9C(v7, &qword_27DD443C0, &unk_23136E000);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2312546AC(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  v3 = sub_231253AF8(v2);

  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v3;
  result = sub_231369EE0();
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (!v7)
      {
        while (1)
        {
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v13 >= v8)
          {
            goto LABEL_23;
          }

          v7 = *(v4 + 8 * v13);
          ++v11;
          if (v7)
          {
            v11 = v13;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

LABEL_9:
      v14 = (v11 << 9) | (8 * __clz(__rbit64(v7)));
      v15 = *(*(v9 + 56) + v14);
      v16 = *(v15 + 16);
      v17 = *(v12 + 16);
      v18 = v17 + v16;
      if (__OFADD__(v17, v16))
      {
        goto LABEL_25;
      }

      v19 = *(*(v9 + 56) + v14);
      sub_231369EE0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v18 > *(v12 + 24) >> 1)
      {
        if (v17 <= v18)
        {
          v21 = v17 + v16;
        }

        else
        {
          v21 = v17;
        }

        sub_23126E388(isUniquelyReferenced_nonNull_native, v21, 1, v12);
        v12 = v22;
      }

      v7 &= v7 - 1;
      if (!*(v15 + 16))
      {
        break;
      }

      v23 = (*(v12 + 24) >> 1) - *(v12 + 16);
      result = sub_231368090();
      v24 = *(result - 8);
      if (v23 < v16)
      {
        goto LABEL_26;
      }

      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v26 = *(v24 + 72);
      swift_arrayInitWithCopy();

      if (v16)
      {
        v27 = *(v12 + 16);
        v28 = __OFADD__(v27, v16);
        v29 = v27 + v16;
        if (v28)
        {
          goto LABEL_27;
        }

        *(v12 + 16) = v29;
      }
    }
  }

  while (!v16);
  __break(1u);
LABEL_23:

  return v12;
}

uint64_t sub_2312548B8(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(v4, 0xD000000000000012, 0x800000023137DF30, a1, a2);
  if (v4[3])
  {
    if (OUTLINED_FUNCTION_2_9())
    {
      return v3;
    }
  }

  else
  {
    sub_231228E9C(v4, &qword_27DD443C0, &unk_23136E000);
  }

  return 0;
}

uint64_t sub_231254950()
{
  sub_231253EE4();
  OUTLINED_FUNCTION_0_18();
  v0();

  if (v4)
  {
    if (OUTLINED_FUNCTION_2_9())
    {
      return v2;
    }
  }

  else
  {
    sub_231228E9C(v3, &qword_27DD443C0, &unk_23136E000);
  }

  return -2;
}

void OUTLINED_FUNCTION_5_11()
{

  JUMPOUT(0x23192A730);
}

uint64_t sub_231254A3C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a2;
  v5 = type metadata accessor for IntentDetails();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1_1();
  v30 = v8;
  OUTLINED_FUNCTION_36();
  result = MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = 0;
  v14 = *(a3 + 16);
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 == v13)
    {

      return v31;
    }

    if (v13 >= *(a3 + 16))
    {
      break;
    }

    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = *(v6 + 72);
    sub_23125D69C(a3 + v15 + v16 * v13, v12);
    v17 = v32(v12);
    if (v3)
    {
      sub_23120542C(v12);
      v27 = v31;

      return v27;
    }

    if (v17)
    {
      sub_23125D700(v12, v30);
      v18 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = *(v18 + 16);
        v21 = OUTLINED_FUNCTION_28_9();
        sub_2311F5A40(v21, v22, v23);
        v18 = v34;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v31 = v25 + 1;
        v29 = v25;
        sub_2311F5A40(v24 > 1, v25 + 1, 1);
        v26 = v31;
        v25 = v29;
        v18 = v34;
      }

      ++v13;
      *(v18 + 16) = v26;
      v31 = v18;
      result = sub_23125D700(v30, v18 + v15 + v25 * v16);
    }

    else
    {
      result = sub_23120542C(v12);
      ++v13;
    }
  }

  __break(1u);
  return result;
}

void sub_231254CB8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v35 = a4(0);
  v8 = OUTLINED_FUNCTION_0_0(v35);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_1();
  v30 = v13;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_14();
  v15 = 0;
  v34 = *(a3 + 16);
  v16 = (v10 + 8);
  v29 = (v10 + 32);
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v34 == v15)
    {

      return;
    }

    if (v15 >= *(a3 + 16))
    {
      break;
    }

    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = *(v10 + 72);
    (*(v10 + 16))(v6, a3 + v17 + v18 * v15, v35);
    v19 = a1(v6);
    if (v5)
    {
      (*v16)(v6, v35);

      return;
    }

    if (v19)
    {
      v27 = *v29;
      (*v29)(v30, v6, v35);
      v36 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = *(v31 + 16);
        v22 = OUTLINED_FUNCTION_28_9();
        a5(v22);
      }

      v20 = v31;
      v24 = *(v31 + 16);
      v23 = *(v31 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v32 = v24 + 1;
        v26 = v24;
        (a5)(v23 > 1, v24 + 1, 1);
        v25 = v32;
        v24 = v26;
        v20 = v36;
      }

      ++v15;
      *(v20 + 16) = v25;
      v31 = v20;
      v27(v20 + v17 + v24 * v18, v30, v35);
    }

    else
    {
      (*v16)(v6, v35);
      ++v15;
    }
  }

  __break(1u);
}

uint64_t sub_231254F64(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  v9 = a3 + 32;
  v18 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_23123EA8C(v9, __src, &qword_27DD43630, &qword_23136CB70);
    v10 = v5(__src);
    if (v3)
    {
      sub_2311D1F18(__src, &qword_27DD43630, &qword_23136CB70);

LABEL_14:

      return v8;
    }

    if (v10)
    {
      memcpy(__dst, __src, sizeof(__dst));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = *(v8 + 16);
        v13 = OUTLINED_FUNCTION_28_9();
        sub_2311F5D38(v13, v14, v15);
        v8 = v21;
      }

      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2311F5D38(v16 > 1, v17 + 1, 1);
        v8 = v21;
      }

      *(v8 + 16) = v17 + 1;
      result = memcpy((v8 + 72 * v17 + 32), __dst, 0x48uLL);
      v5 = v18;
    }

    else
    {
      result = sub_2311D1F18(__src, &qword_27DD43630, &qword_23136CB70);
    }

    v9 += 72;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_231255100(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v21 = MEMORY[0x277D84F90];
  result = sub_231255288(a3);
  v8 = result;
  v9 = 0;
  v10 = v4 & 0xC000000000000001;
  v18 = v4;
  v19 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v8 == v9)
    {

      return v21;
    }

    if (v10)
    {
      result = MEMORY[0x23192AD10](v9, v4);
      v11 = result;
    }

    else
    {
      if (v9 >= *(v19 + 16))
      {
        goto LABEL_16;
      }

      v11 = *(v4 + 8 * v9 + 32);
    }

    if (__OFADD__(v9, 1))
    {
      break;
    }

    v20 = v11;
    v12 = a1(&v20);
    if (v3)
    {
    }

    if (v12)
    {
      sub_23136A6A0();
      v13 = v8;
      v14 = v10;
      v15 = a1;
      v16 = a2;
      v17 = *(v21 + 16);
      sub_23136A6D0();
      a2 = v16;
      a1 = v15;
      v10 = v14;
      v8 = v13;
      v4 = v18;
      sub_23136A6E0();
      result = sub_23136A6B0();
    }

    else
    {
    }

    ++v9;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_231255288(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_23136A5A0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_2312552AC(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C88, &qword_231370B00);
    v5 = sub_23136A790();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;
  a2(a1, 1, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_231255354(uint64_t a1)
{
  result = MEMORY[0x23192A9E0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v8 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v8;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;
    sub_231369EE0();
    sub_23122E218();
  }

  __break(1u);
  return result;
}

void sub_231255414()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_32_6();
  v2 = sub_231369A00();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_18();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_11();
  sub_23125D758(&qword_27DD43B18, MEMORY[0x277D723F8]);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_34_6(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_2_10();
    do
    {
      v8 = OUTLINED_FUNCTION_14_13();
      v1(v8);
      OUTLINED_FUNCTION_13_13();
      sub_23122E348();
      v9 = OUTLINED_FUNCTION_12_10();
      v10(v9);
      OUTLINED_FUNCTION_39_4();
    }

    while (!v11);
  }

  else
  {
    OUTLINED_FUNCTION_53_4();
  }

  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_9_0();
}

void sub_231255540()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_32_6();
  v2 = sub_231367490();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_18();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_11();
  sub_23125D758(&qword_27DD43B30, MEMORY[0x277D608B8]);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_34_6(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_2_10();
    do
    {
      v8 = OUTLINED_FUNCTION_14_13();
      v1(v8);
      OUTLINED_FUNCTION_13_13();
      sub_23122E4BC();
      v9 = OUTLINED_FUNCTION_12_10();
      v10(v9);
      OUTLINED_FUNCTION_39_4();
    }

    while (!v11);
  }

  else
  {
    OUTLINED_FUNCTION_53_4();
  }

  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_23125566C(unint64_t a1)
{
  sub_231255288(a1);
  OUTLINED_FUNCTION_24_0();
  sub_2313692F0();
  sub_23125D758(&unk_280F7C910, MEMORY[0x277D612D0]);
  OUTLINED_FUNCTION_24_12();
  v8 = v2;
  result = sub_231255288(a1);
  v4 = result;
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return v8;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x23192AD10](i, a1);
      v6 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_23122E630(&v7, v6);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

void sub_231255788()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_32_6();
  v2 = sub_231369D90();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_18();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_11();
  sub_23125D758(&qword_27DD43B00, MEMORY[0x277D73110]);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_34_6(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_2_10();
    do
    {
      v8 = OUTLINED_FUNCTION_14_13();
      v1(v8);
      OUTLINED_FUNCTION_13_13();
      sub_23122EE54();
      v9 = OUTLINED_FUNCTION_12_10();
      v10(v9);
      OUTLINED_FUNCTION_39_4();
    }

    while (!v11);
  }

  else
  {
    OUTLINED_FUNCTION_53_4();
  }

  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_9_0();
}

void sub_2312558B4()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_32_6();
  v2 = sub_231369900();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_18();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_11();
  sub_23125D758(&qword_27DD43B48, MEMORY[0x277D72108]);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_34_6(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_2_10();
    do
    {
      v8 = OUTLINED_FUNCTION_14_13();
      v1(v8);
      OUTLINED_FUNCTION_13_13();
      sub_23122F13C();
      v9 = OUTLINED_FUNCTION_12_10();
      v10(v9);
      OUTLINED_FUNCTION_39_4();
    }

    while (!v11);
  }

  else
  {
    OUTLINED_FUNCTION_53_4();
  }

  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_9_0();
}

void sub_2312559E0()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_32_6();
  v2 = sub_231369D50();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_18();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_11();
  sub_23125D758(&qword_280F7C888, MEMORY[0x277D72D58]);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_34_6(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_2_10();
    do
    {
      v8 = OUTLINED_FUNCTION_14_13();
      v1(v8);
      OUTLINED_FUNCTION_13_13();
      sub_23122F2B0();
      v9 = OUTLINED_FUNCTION_12_10();
      v10(v9);
      OUTLINED_FUNCTION_39_4();
    }

    while (!v11);
  }

  else
  {
    OUTLINED_FUNCTION_53_4();
  }

  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_9_0();
}

void sub_231255B0C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_32_6();
  v2 = sub_231369990();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_18();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_11();
  sub_23125D758(&qword_27DD43AE8, MEMORY[0x277D72238]);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_34_6(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_2_10();
    do
    {
      v8 = OUTLINED_FUNCTION_14_13();
      v1(v8);
      OUTLINED_FUNCTION_13_13();
      sub_23122EFC8();
      v9 = OUTLINED_FUNCTION_12_10();
      v10(v9);
      OUTLINED_FUNCTION_39_4();
    }

    while (!v11);
  }

  else
  {
    OUTLINED_FUNCTION_53_4();
  }

  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_231255C38(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E6574(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_23125B03C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_231255CA4(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E65D4(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_23125B130(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_231255D58()
{
  sub_231367710();
  v1 = MEMORY[0x277D84F90];
  sub_231369EC0();
  OUTLINED_FUNCTION_24_0();
  sub_2313673A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E38, &unk_2313708C0);
  OUTLINED_FUNCTION_0_19();
  sub_23125D758(v2, v3);
  v4 = sub_231369EC0();
  type metadata accessor for SuggestionPool();
  v5 = swift_allocObject();
  result = SuggestionPool.init(pool:resolvers:intentOwners:)(v0, v1, v4);
  qword_280F84A00 = v5;
  return result;
}

uint64_t SuggestionPool.__allocating_init(pool:resolvers:intentOwners:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_41_6();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_21_11();
  SuggestionPool.init(pool:resolvers:intentOwners:)(v6, a2, a3);
  return v3;
}

uint64_t static SuggestionPool.emptyPool.getter()
{
  if (qword_280F849F8 != -1)
  {
    swift_once();
  }
}

uint64_t SuggestionPool.__allocating_init(pool:resolvers:)(uint64_t a1, uint64_t a2)
{
  sub_2313673A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E38, &unk_2313708C0);
  OUTLINED_FUNCTION_0_19();
  sub_23125D758(v4, v5);
  v6 = sub_231369EC0();
  OUTLINED_FUNCTION_41_6();
  v7 = swift_allocObject();
  SuggestionPool.init(pool:resolvers:intentOwners:)(a1, a2, v6);
  return v7;
}

uint64_t SuggestionPool.init(pool:resolvers:intentOwners:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = 0;
  *(v3 + 16) = a1;
  *(v3 + 48) = a2;
  sub_231369EE0();
  static SuggestionPool.buildIntentKeyedPool(pool:)();
  *(v3 + 24) = v5;
  static SuggestionPool.buildBridgePool(pool:)();
  v7 = v6;

  *(v3 + 32) = a3;
  *(v3 + 40) = v7;
  return v3;
}

void static SuggestionPool.buildIntentKeyedPool(pool:)()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v2 = sub_2313698C0();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v160 = v8;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_0();
  v149 = v10;
  OUTLINED_FUNCTION_18();
  v168 = sub_231368180();
  v11 = OUTLINED_FUNCTION_0_0(v168);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_1();
  v159 = v16;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17_0();
  v165 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E40, &qword_231370F50);
  v20 = OUTLINED_FUNCTION_40_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v164 = &v136 - v23;
  OUTLINED_FUNCTION_18();
  v24 = sub_2313673A0();
  v25 = OUTLINED_FUNCTION_0_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_1();
  v157 = v30;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v31);
  v161 = &v136 - v32;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v33);
  v150 = &v136 - v34;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_17_0();
  v158 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E48, &qword_2313708D0);
  OUTLINED_FUNCTION_0_19();
  sub_23125D758(v37, v38);
  v166 = v24;
  v163 = sub_231369EC0();
  v40 = v1 + 64;
  v39 = *(v1 + 64);
  v41 = *(v1 + 32);
  OUTLINED_FUNCTION_37_6();
  v44 = v43 & v42;
  v46 = (v45 + 63) >> 6;
  v167 = (v13 + 8);
  v154 = (v27 + 32);
  v156 = (v27 + 16);
  v151 = v27;
  v155 = (v27 + 8);
  v152 = v5 + 8;
  sub_231369EE0();
  v47 = 0;
  *(&v48 + 1) = 3;
  v153 = xmmword_2313707C0;
  *&v48 = 136315394;
  v148 = v48;
  while (v44)
  {
LABEL_7:
    v50 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v51 = *(*(v1 + 56) + ((v47 << 9) | (8 * v50)));

    sub_2313676D0();
    __swift_project_boxed_opaque_existential_1(v171, v172[0]);
    OUTLINED_FUNCTION_17_8();
    v52 = sub_231368F80();
    __swift_destroy_boxed_opaque_existential_1Tm(v171);
    if (v52)
    {
    }

    else
    {
      v53 = v165;
      sub_2313676F0();
      sub_231368110();
      v54 = *v167;
      (*v167)(v53, v168);
      if (v172[0])
      {
        v162 = v54;
        __swift_project_boxed_opaque_existential_1(v171, v172[0]);
        OUTLINED_FUNCTION_17_8();
        v56 = v55;
        sub_2313674A0();
        v57 = v166;
        __swift_storeEnumTagSinglePayload(v56, 0, 1, v166);
        __swift_destroy_boxed_opaque_existential_1Tm(v171);
        if (__swift_getEnumTagSinglePayload(v56, 1, v57) == 1)
        {

          goto LABEL_13;
        }

        v58 = *v154;
        v59 = v158;
        v60 = OUTLINED_FUNCTION_19();
        v61 = v166;
        v62(v60);
        v63 = v163;
        v64 = v163[2];
        v142 = v1;
        v143 = v2;
        if (v64 && (v65 = sub_23121652C(), v63 = v163, (v66 & 1) != 0))
        {
          v170 = *(v163[7] + 8 * v65);
          swift_beginAccess();

          v67 = sub_231369EE0();
          MEMORY[0x23192A830](v67);
          sub_2312592C8(*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_23136A240();
          v68 = v170;
          swift_endAccess();
          v69 = sub_231255288(v68);
          v146 = v68;
          if (v69)
          {
            v169 = MEMORY[0x277D84F90];
            sub_231369EE0();
            OUTLINED_FUNCTION_43_6();
            if ((v145 & 0x8000000000000000) != 0)
            {
              goto LABEL_62;
            }

            v70 = 0;
            v1 = v169;
            v144 = (v68 & 0xC000000000000001);
            do
            {
              if (v144)
              {
                MEMORY[0x23192AD10](v70, v146);
              }

              else
              {
                v71 = *(v146 + 8 * v70 + 32);
              }

              sub_2313676D0();
              v72 = v172[1];
              __swift_project_boxed_opaque_existential_1(v171, v172[0]);
              v73 = *(v72 + 16);
              OUTLINED_FUNCTION_21_11();
              sub_23136A8B0();
              v147 = v74;
              __swift_destroy_boxed_opaque_existential_1Tm(v171);

              v169 = v1;
              v76 = *(v1 + 16);
              v75 = *(v1 + 24);
              if (v76 >= v75 >> 1)
              {
                OUTLINED_FUNCTION_37(v75);
                sub_2311F4E34();
                v1 = v169;
              }

              ++v70;
              *(v1 + 16) = v76 + 1;
              OUTLINED_FUNCTION_49_4(v1 + 16 * v76);
              v78 = v160;
              v77 = v161;
            }

            while (v79 != v70);
          }

          else
          {
            v1 = MEMORY[0x277D84F90];
            v78 = v160;
            v77 = v161;
          }

          if (*(sub_231255354(v1) + 16) <= 1uLL)
          {

            OUTLINED_FUNCTION_65_2();
            v2 = v143;
          }

          else
          {
            v95 = v149;
            sub_231369130();
            (*v156)(v150, v158, v166);
            sub_231369EE0();
            v1 = sub_2313698A0();
            v96 = sub_23136A390();

            LODWORD(v147) = v96;
            if (os_log_type_enabled(v1, v96))
            {
              v97 = swift_slowAlloc();
              v141 = v97;
              v98 = swift_slowAlloc();
              *v97 = OUTLINED_FUNCTION_57_5(v98, v172).n128_u32[0];
              OUTLINED_FUNCTION_0_19();
              sub_23125D758(&qword_280F7CAE0, v99);
              v100 = v150;
              v144 = v1;
              v1 = v166;
              v101 = sub_23136A8B0();
              (*v155)(v100, v1);
              OUTLINED_FUNCTION_54_4();
              OUTLINED_FUNCTION_21_11();

              v102 = v141;
              *(v141 + 4) = v101;
              *(v102 + 12) = 2080;
              v103 = sub_23136A320();

              OUTLINED_FUNCTION_54_4();
              OUTLINED_FUNCTION_21_11();
              v78 = v160;

              *(v102 + 14) = v103;
              v104 = v144;
              _os_log_impl(&dword_2311CB000, v144, v147, "[warning] multiple owners attributed to %s. This is highly unusual and should be corrected. Owners: %s", v102, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_29();
              OUTLINED_FUNCTION_29();

              OUTLINED_FUNCTION_29_7();
              v106 = v149;
            }

            else
            {

              (*v155)(v150, v166);
              OUTLINED_FUNCTION_29_7();
              v106 = v95;
            }

            v2 = v143;
            v105(v106, v143);
            OUTLINED_FUNCTION_65_2();
            v77 = v161;
          }

          sub_231369130();
          (*v156)(v77, v158, v166);
          v107 = sub_2313698A0();
          v138 = sub_23136A390();
          v108 = os_log_type_enabled(v107, v138);
          v109 = v155;
          v141 = v155 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          if (v108)
          {
            v137 = v107;
            v110 = swift_slowAlloc();
            v139 = v110;
            v111 = swift_slowAlloc();
            *v110 = OUTLINED_FUNCTION_57_5(v111, &v165).n128_u32[0];
            OUTLINED_FUNCTION_0_19();
            sub_23125D758(&qword_280F7CAE0, v112);
            v113 = v109;
            v114 = v161;
            v115 = v166;
            v147 = sub_23136A8B0();
            v145 = v116;
            v140 = *v113;
            v140(v114, v115);
            v117 = sub_2311CFD58(v147, v145, v171);

            v118 = v139;
            *(v139 + 1) = v117;
            *(v118 + 6) = 2080;
            v119 = v146;
            if (sub_231255288(v146))
            {
              v169 = MEMORY[0x277D84F90];
              sub_231369EE0();
              OUTLINED_FUNCTION_43_6();
              if ((v145 & 0x8000000000000000) != 0)
              {
                goto LABEL_63;
              }

              v1 = 0;
              v120 = v169;
              v144 = (v119 & 0xC000000000000001);
              do
              {
                if (v144)
                {
                  MEMORY[0x23192AD10](v1, v119);
                }

                else
                {
                  v121 = *(v119 + 8 * v1 + 32);
                }

                v122 = v159;
                sub_2313676F0();
                sub_231368130();
                v147 = v123;

                v162(v122, v168);
                v169 = v120;
                v125 = *(v120 + 16);
                v124 = *(v120 + 24);
                if (v125 >= v124 >> 1)
                {
                  OUTLINED_FUNCTION_37(v124);
                  sub_2311F4E34();
                  v120 = v169;
                }

                ++v1;
                *(v120 + 16) = v125 + 1;
                OUTLINED_FUNCTION_49_4(v120 + 16 * v125);
                v119 = v146;
              }

              while (v126 != v1);

              OUTLINED_FUNCTION_65_2();
            }

            else
            {
              v120 = MEMORY[0x277D84F90];
            }

            v169 = v120;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
            OUTLINED_FUNCTION_22_9();
            sub_23121C788(&qword_280F7C820, &unk_27DD42F68, &qword_23136B890);
            v129 = sub_231369F50();

            OUTLINED_FUNCTION_54_4();
            OUTLINED_FUNCTION_21_11();

            v130 = v139;
            *(v139 + 14) = v129;
            v131 = v137;
            _os_log_impl(&dword_2311CB000, v137, v138, "[warning] Detected duplicate suggestions registered to intent: %s. Whilst this is supported, we need to be careful about what it \nmeans to have multiple suggestions registered to a single intent. Suggestions registered: %s", v130, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_29();
            OUTLINED_FUNCTION_29();

            OUTLINED_FUNCTION_29_7();
            v128 = v160;
            v2 = v143;
          }

          else
          {

            v140 = *v109;
            v140(v161, v166);
            OUTLINED_FUNCTION_29_7();
            v128 = v78;
          }

          v127(v128, v2);
          v132 = v158;
          sub_231369EE0();
          v133 = v163;
          swift_isUniquelyReferenced_nonNull_native();
          v171[0] = v133;
          v134 = OUTLINED_FUNCTION_19();
          sub_23125A17C(v134, v135);

          v140(v132, v166);

          v163 = v171[0];
        }

        else
        {
          v147 = *v156;
          v147(v157, v59, v61);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
          v80 = swift_allocObject();
          *(v80 + 16) = v153;
          v162 = v80;
          *(v80 + 32) = v51;

          swift_isUniquelyReferenced_nonNull_native();
          v171[0] = v63;
          v81 = sub_23121652C();
          if (__OFADD__(*(v63 + 16), (v82 & 1) == 0))
          {
            goto LABEL_60;
          }

          v1 = v81;
          v83 = v82;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E58, &unk_2313708E8);
          if (sub_23136A700())
          {
            v84 = sub_23121652C();
            v86 = v166;
            if ((v83 & 1) != (v85 & 1))
            {
              goto LABEL_64;
            }

            v1 = v84;
          }

          else
          {
            v86 = v166;
          }

          v163 = v171[0];
          if (v83)
          {
            v87 = *(v171[0] + 56);
            v88 = *(v87 + 8 * v1);
            *(v87 + 8 * v1) = v162;
          }

          else
          {
            *(v171[0] + 8 * (v1 >> 6) + 64) |= 1 << v1;
            v147(v163[6] + *(v151 + 72) * v1, v157, v86);
            v89 = v163;
            *(v163[7] + 8 * v1) = v162;
            v90 = v89[2];
            v91 = __OFADD__(v90, 1);
            v92 = v90 + 1;
            if (v91)
            {
              goto LABEL_61;
            }

            v89[2] = v92;
          }

          OUTLINED_FUNCTION_65_2();
          v2 = v143;
          v93 = *v155;
          (*v155)(v157, v86);
          v94 = OUTLINED_FUNCTION_19();
          v93(v94);
        }
      }

      else
      {

        sub_2311D1F18(v171, &qword_27DD43E50, &unk_2313708D8);
        v56 = v164;
        __swift_storeEnumTagSinglePayload(v164, 1, 1, v166);
LABEL_13:
        sub_2311D1F18(v56, &qword_27DD43E40, &qword_231370F50);
      }
    }
  }

  while (1)
  {
    v49 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v49 >= v46)
    {

      OUTLINED_FUNCTION_9_0();
      return;
    }

    v44 = *(v40 + 8 * v49);
    ++v47;
    if (v44)
    {
      v47 = v49;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_23136A970();
  __break(1u);
}

void static SuggestionPool.buildBridgePool(pool:)()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v2 = sub_2313673A0();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_18();
  v48 = sub_231368180();
  v6 = OUTLINED_FUNCTION_0_0(v48);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v9 = OUTLINED_FUNCTION_74_3();
  v10 = OUTLINED_FUNCTION_40_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  v49 = v13;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_0();
  v51 = v15;
  v16 = sub_23125AC50(v1);
  v18 = v16 + 8;
  v17 = v16[8];
  v19 = *(v16 + 32);
  OUTLINED_FUNCTION_37_6();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v50 = v25;

  v26 = 0;
  v47 = MEMORY[0x277D84F90];
LABEL_2:
  v27 = v26;
  v28 = v51;
  if (!v22)
  {
    goto LABEL_4;
  }

  do
  {
    v26 = v27;
LABEL_7:
    v29 = __clz(__rbit64(v22)) | (v26 << 6);
    v30 = *(*(v50 + 56) + 8 * v29);
    v52 = *(*(v50 + 48) + 16 * v29 + 8);
    sub_231369EE0();

    v53 = v30;
    sub_2313676F0();
    sub_231368110();
    v31 = OUTLINED_FUNCTION_47_5();
    v32(v31, v48);
    if (v55)
    {
      __swift_project_boxed_opaque_existential_1(v54, v55);
      v28 = v51;
      sub_2313674A0();
      __swift_storeEnumTagSinglePayload(v51, 0, 1, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
    }

    else
    {
      sub_2311D1F18(v54, &qword_27DD43E50, &unk_2313708D8);
      __swift_storeEnumTagSinglePayload(v28, 1, 1, v2);
    }

    v22 &= v22 - 1;
    sub_23123EA8C(v28, v49, &qword_27DD43E40, &qword_231370F50);
    if (__swift_getEnumTagSinglePayload(v49, 1, v2) != 1)
    {
      v33 = OUTLINED_FUNCTION_47_5();
      v34(v33, v49, v2);
      v35 = sub_231367380();
      v46 = v36;
      v37 = OUTLINED_FUNCTION_47_5();
      v38(v37, v2);
      sub_2311D1F18(v28, &qword_27DD43E40, &qword_231370F50);

      v39 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = *(v47 + 16);
        sub_23126EB10();
        v47 = v44;
      }

      v41 = *(v47 + 16);
      v40 = *(v47 + 24);
      if (v41 >= v40 >> 1)
      {
        OUTLINED_FUNCTION_37(v40);
        sub_23126EB10();
        v47 = v45;
      }

      *(v47 + 16) = v41 + 1;
      v42 = (v47 + 24 * v41);
      v42[4] = v35;
      v42[5] = v46;
      v42[6] = v53;
      v2 = v39;
      goto LABEL_2;
    }

    sub_2311D1F18(v28, &qword_27DD43E40, &qword_231370F50);
    v27 = v26;
  }

  while (v22);
LABEL_4:
  while (1)
  {
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v26 >= v24)
    {

      sub_2312552AC(v47, sub_231259744);
      OUTLINED_FUNCTION_9_0();
      return;
    }

    v22 = v18[v26];
    ++v27;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void SuggestionPool.description.getter()
{
  OUTLINED_FUNCTION_11_0();
  v80 = sub_231368180();
  v1 = OUTLINED_FUNCTION_0_0(v80);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v78 = v7 - v6;
  OUTLINED_FUNCTION_18();
  v8 = sub_2313673A0();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E60, &unk_2313708F8);
  v18 = OUTLINED_FUNCTION_40_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_1();
  v71 = v21;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v22);
  v24 = &v66 - v23;
  v86 = 0xD000000000000013;
  v87 = 0x800000023137DFB0;
  v68 = v0;
  v84 = sub_2312595A0(*(v0 + 24), sub_2312501BC, &qword_27DD43620, &qword_23136CB60, sub_231251638);
  v25 = 0;
  sub_231255CA4(&v84);
  v67 = 0;
  v75 = v24;
  v76 = v11 + 32;
  v26 = v84;
  v79 = (v3 + 8);
  v27 = *(v84 + 16);
  v28 = v11 + 8;
  v72 = v11 + 8;
  v73 = v27;
  v29 = v71;
  v69 = v16;
  v70 = v8;
  v74 = v84;
  while (1)
  {
    if (v25 == v27)
    {
      v30 = OUTLINED_FUNCTION_74_3();
      __swift_storeEnumTagSinglePayload(v29, 1, 1, v30);
      v31 = v27;
    }

    else
    {
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      v28 = *(v26 + 16);
      if (v25 >= v28)
      {
        goto LABEL_26;
      }

      v32 = OUTLINED_FUNCTION_74_3();
      OUTLINED_FUNCTION_46_1(v32);
      sub_23123EA8C(v26 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v34 + 72) * v25, v29, &qword_27DD43620, &qword_23136CB60);
      v31 = v25 + 1;
      __swift_storeEnumTagSinglePayload(v29, 0, 1, v32);
    }

    sub_23123E9F8(v29, v24, &qword_27DD43E60, &unk_2313708F8);
    v35 = OUTLINED_FUNCTION_74_3();
    if (__swift_getEnumTagSinglePayload(v24, 1, v35) == 1)
    {
      break;
    }

    v77 = v31;
    v36 = *&v24[*(v35 + 48)];
    v37 = OUTLINED_FUNCTION_47_5();
    v38(v37, v24, v8);
    v84 = 8224;
    v85 = 0xE200000000000000;
    OUTLINED_FUNCTION_0_19();
    sub_23125D758(&qword_280F7CAE0, v39);
    v40 = sub_23136A8B0();
    MEMORY[0x23192A730](v40);

    MEMORY[0x23192A730](10, 0xE100000000000000);
    MEMORY[0x23192A730](v84, v85);

    v84 = 0;
    v85 = 0xE000000000000000;
    if (v36 >> 62)
    {
      v41 = sub_23136A5A0();
      if (!v41)
      {
LABEL_20:

        v43 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }
    }

    else
    {
      v41 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v41)
      {
        goto LABEL_20;
      }
    }

    v83 = MEMORY[0x277D84F90];
    sub_2311F4E34();
    if (v41 < 0)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      v65 = *(v28 - 256);
      goto LABEL_28;
    }

    v42 = 0;
    v43 = v83;
    v44 = v36 & 0xC000000000000001;
    v45 = v36;
    do
    {
      if (v44)
      {
        MEMORY[0x23192AD10](v42, v36);
      }

      else
      {
        v46 = *(v36 + 8 * v42 + 32);
      }

      v81 = 0x2020202020;
      v82 = 0xE500000000000000;
      v47 = v78;
      sub_2313676F0();
      v48 = sub_231368130();
      v50 = v49;
      (*v79)(v47, v80);
      MEMORY[0x23192A730](v48, v50);

      v51 = v81;
      v52 = v82;
      v83 = v43;
      v54 = *(v43 + 16);
      v53 = *(v43 + 24);
      if (v54 >= v53 >> 1)
      {
        OUTLINED_FUNCTION_37(v53);
        sub_2311F4E34();
        v43 = v83;
      }

      ++v42;
      *(v43 + 16) = v54 + 1;
      v55 = v43 + 16 * v54;
      *(v55 + 32) = v51;
      *(v55 + 40) = v52;
      v36 = v45;
    }

    while (v41 != v42);

    v8 = v70;
    v29 = v71;
LABEL_21:
    v81 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
    OUTLINED_FUNCTION_22_9();
    sub_23121C788(&qword_280F7C820, &unk_27DD42F68, &qword_23136B890);
    v56 = sub_231369F50();
    v58 = v57;

    MEMORY[0x23192A730](v56, v58);

    MEMORY[0x23192A730](10, 0xE100000000000000);
    MEMORY[0x23192A730](v84, v85);

    v59 = OUTLINED_FUNCTION_47_5();
    v60(v59, v8);
    v26 = v74;
    v24 = v75;
    v25 = v77;
    v27 = v73;
  }

  MEMORY[0x23192A730](0x7020657269746E45, 0xED00000A3A6C6F6FLL);
  v61 = *(v68 + 16);
  v62 = sub_231369EE0();
  v84 = sub_23122AB50(v62);
  sub_231369EE0();
  v63 = v67;
  sub_231255C38(&v84);
  if (!v63)
  {

    sub_231367BB0();

    v64 = OUTLINED_FUNCTION_62_3();
    MEMORY[0x23192A730](v64);

    OUTLINED_FUNCTION_9_0();
    return;
  }

  v65 = v63;
LABEL_28:

  __break(1u);
}

uint64_t sub_231257A58(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  sub_23123EA8C(a1, &v24 - v9, &qword_27DD43620, &qword_23136CB60);
  v11 = *&v10[*(v4 + 56)];

  v12 = sub_231367370();
  v14 = v13;
  v15 = sub_2313673A0();
  v16 = *(*(v15 - 8) + 8);
  v16(v10, v15);
  sub_23123EA8C(v25, v8, &qword_27DD43620, &qword_23136CB60);
  v17 = *&v8[*(v4 + 56)];

  v18 = sub_231367370();
  v20 = v19;
  v16(v8, v15);
  if (v12 == v18 && v14 == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_23136A900();
  }

  return v22 & 1;
}

void static SuggestionPool.keySuggestions(suggestions:)()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_32_6();
  v25 = sub_231368180();
  v1 = OUTLINED_FUNCTION_0_0(v25);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  v26 = v0;
  v9 = sub_231255288(v0);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
LABEL_10:
    sub_2312552AC(v10, sub_2312598F4);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v11 = v9;
  v27 = MEMORY[0x277D84F90];
  v12 = OUTLINED_FUNCTION_64_3();
  sub_2311F5D58(v12, v13, v14);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v10 = v27;
    v16 = (v3 + 8);
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x23192AD10](v15, v26);
      }

      else
      {
        v17 = *(v26 + 8 * v15 + 32);
      }

      sub_2313676F0();
      v18 = sub_231368130();
      v20 = v19;
      (*v16)(v8, v25);
      v22 = *(v27 + 16);
      v21 = *(v27 + 24);
      if (v22 >= v21 >> 1)
      {
        v24 = OUTLINED_FUNCTION_37(v21);
        sub_2311F5D58(v24, v22 + 1, 1);
      }

      ++v15;
      *(v27 + 16) = v22 + 1;
      v23 = (v27 + 24 * v22);
      v23[4] = v18;
      v23[5] = v20;
      v23[6] = v17;
    }

    while (v11 != v15);
    goto LABEL_10;
  }

  __break(1u);
}

void SuggestionPool.getSuggestions(intentQuery:)()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v0;
  OUTLINED_FUNCTION_24_0();
  v3 = sub_2313698C0();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v44 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  v11 = sub_2313673A0();
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_14();
  sub_231367430();
  v20 = sub_2312177D4(v1, *(v0 + 24));
  if (v20)
  {
    MEMORY[0x28223BE20](v20);
    *(&v39 - 2) = v0;
    v22 = sub_231255100(sub_23125ADB4, (&v39 - 4), v21);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  if (sub_231255288(v22))
  {
    (*(v14 + 8))(v1, v11);
  }

  else
  {
    v43 = v3;

    sub_231369110();
    (*(v14 + 16))(v19, v1, v11);
    v23 = sub_2313698A0();
    v24 = sub_23136A390();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v40 = v25;
      v41 = swift_slowAlloc();
      v45 = v41;
      *v25 = 136315138;
      OUTLINED_FUNCTION_0_19();
      sub_23125D758(v26, v27);
      v28 = sub_23136A8B0();
      v42 = v2;
      v30 = v29;
      v31 = OUTLINED_FUNCTION_63_3();
      v3(v31);
      v32 = sub_2311CFD58(v28, v30, &v45);
      v2 = v42;

      v33 = v40;
      *(v40 + 1) = v32;
      _os_log_impl(&dword_2311CB000, v23, v24, "No specific suggestion found for %s. Checking bridges", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      v34 = OUTLINED_FUNCTION_63_3();
      v3(v34);
    }

    (*(v44 + 8))(v10, v43);
    v35 = *(v2 + 40);
    v36 = sub_231367380();
    sub_231210DDC(v36, v37, v35);
    OUTLINED_FUNCTION_59_3();

    if (v35)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_2313707C0;
      *(v38 + 32) = v35;
    }

    (v3)(v1, v11);
  }

  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_231258170(uint64_t *a1)
{
  v2 = sub_231368180();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_2313676D0();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  if (sub_231368F80())
  {
    goto LABEL_5;
  }

  sub_2313676F0();
  sub_231368110();
  (*(v3 + 8))(v6, v2);
  if (!v11)
  {
    sub_2311D1F18(v10, &qword_27DD43E50, &unk_2313708D8);
LABEL_5:
    v8 = 1;
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = sub_2313674B0();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v8 & 1;
}

void SuggestionPool.getOwner(for:)()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_2313673A0();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  SuggestionPool.getSuggestions(intentQuery:)();
  if (!v13)
  {
    v32 = *(v0 + 32);
    sub_231367430();
    v33 = sub_2312177D4(v12, v32);
    (*(v7 + 8))(v12, v4);
    if (!v33)
    {
      *(v3 + 32) = 0;
      *v3 = 0u;
      *(v3 + 16) = 0u;
      goto LABEL_17;
    }

    v35[0] = v33;
    LOBYTE(v37) = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E38, &unk_2313708C0);
    OUTLINED_FUNCTION_25_9(&qword_280F7C830);
    sub_23125ADD4();
    v34 = v35;
    sub_23136A100();
    OUTLINED_FUNCTION_21_11();
LABEL_16:

    sub_23121CD80(v34, v3);

LABEL_17:
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v14 = v13;
  v15 = sub_231255288(v13);
  if (!v15)
  {

    v21 = MEMORY[0x277D84F90];
LABEL_15:
    v35[0] = v21;
    LOBYTE(v37) = *(v1 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E38, &unk_2313708C0);
    OUTLINED_FUNCTION_25_9(&qword_280F7C830);
    sub_23125ADD4();
    v34 = sub_23136A100();
    goto LABEL_16;
  }

  v16 = v15;
  v37 = MEMORY[0x277D84F90];
  v17 = OUTLINED_FUNCTION_64_3();
  sub_2311F59B0(v17, v18, v19);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = v37;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23192AD10](v20, v14);
      }

      else
      {
        v22 = *(v14 + 8 * v20 + 32);
      }

      sub_2313676D0();

      v37 = v21;
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        v31 = OUTLINED_FUNCTION_37(v23);
        sub_2311F59B0(v31, v24 + 1, 1);
      }

      ++v20;
      v25 = v36;
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      v27 = *(*(v25 - 8) + 64);
      MEMORY[0x28223BE20](v26);
      OUTLINED_FUNCTION_1_4();
      (*(v30 + 16))(v29 - v28);
      sub_23125D3D4();
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v21 = v37;
    }

    while (v16 != v20);

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t SuggestionPool.getSuggestion(suggestionId:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_231215F6C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
}

void SuggestionPool.getAllSuggestions()()
{
  OUTLINED_FUNCTION_65_1();
  v1 = v0;
  v2 = sub_2313698C0();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  sub_231369110();
  v11 = sub_2313698A0();
  v12 = sub_23136A3B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2311CB000, v11, v12, "getting all suggestions from the pool", v13, 2u);
    OUTLINED_FUNCTION_29();
  }

  (*(v5 + 8))(v10, v2);
  v14 = *(v1 + 16);
  v15 = sub_231369EE0();
  sub_23122AD20(v15);
  OUTLINED_FUNCTION_64_1();
}

void SuggestionPool.getSuggestions(identifier:)()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v3 = sub_2313698C0();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v62 = v5;
  v63 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v64 = v9 - v8;
  OUTLINED_FUNCTION_18();
  v10 = sub_231367670();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v60 = v12;
  v61 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v17 = v16 - v15;
  v18 = sub_231367490();
  v19 = OUTLINED_FUNCTION_0_0(v18);
  v65 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  v25 = v24 - v23;
  v26 = sub_231367E50();
  v27 = OUTLINED_FUNCTION_0_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_1();
  v59 = v32;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_14();
  v34 = v29[2];
  v34(v0, v2, v26);
  v35 = v29[11];
  v36 = OUTLINED_FUNCTION_19();
  v38 = v37(v36);
  if (v38 == *MEMORY[0x277D60CB0])
  {
    v39 = v29[12];
    v40 = OUTLINED_FUNCTION_19();
    v41(v40);
    v42 = SuggestionPool.getSuggestion(suggestionId:)(*v0, v0[1]);

    if (v42)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_2313707C0;
      *(v43 + 32) = v42;
    }
  }

  else if (v38 == *MEMORY[0x277D60CA8])
  {
    v44 = v29[12];
    v45 = OUTLINED_FUNCTION_19();
    v46(v45);
    (*(v65 + 32))(v25, v0, v18);
    SuggestionPool.getSuggestions(intentQuery:)();
    (*(v65 + 8))(v25, v18);
  }

  else if (v38 == *MEMORY[0x277D60CB8])
  {
    v47 = v29[12];
    v48 = OUTLINED_FUNCTION_19();
    v49(v48);
    (*(v60 + 32))(v17, v0, v61);
    sub_231367660();
    SuggestionPool.getSuggestions(intentQuery:)();
    (*(v65 + 8))(v25, v18);
    (*(v60 + 8))(v17, v61);
  }

  else
  {
    sub_231369110();
    v34(v59, v2, v26);
    v50 = sub_2313698A0();
    v51 = sub_23136A3B0();
    if (os_log_type_enabled(v50, v51))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = v67;
      *v66 = 136315138;
      sub_23125D758(&qword_280F7CA08, MEMORY[0x277D60CC0]);
      v52 = sub_23136A8B0();
      v54 = v53;
      v55 = OUTLINED_FUNCTION_46_8();
      v18(v55);
      v56 = sub_2311CFD58(v52, v54, &v68);

      *(v66 + 4) = v56;
      _os_log_impl(&dword_2311CB000, v50, v51, "identifier %s type is not supported by the pool", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v62 + 8))(v64, v63);
    }

    else
    {

      v57 = OUTLINED_FUNCTION_46_8();
      v18(v57);
      (*(v62 + 8))(v64, v63);
    }

    v58 = OUTLINED_FUNCTION_19();
    v18(v58);
  }

  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_231258D1C(void *a1, void *a2)
{
  v5 = a1[4];
  v135 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_8();
  v6 = sub_231368F70();
  v14 = OUTLINED_FUNCTION_38_6(v6, v7, v8, v9, v10, v11, v12, v13, v125, v135, v5, v154, v155, v156, v157, v158, v159, v160, v161);
  OUTLINED_FUNCTION_73_2(v14, v15, v16, v17, v18, v19, v20, v21, v126, v136, v145, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166);
  OUTLINED_FUNCTION_26_0(v2);
  (*(v22 + 16))();
  v23 = sub_2313685D0();
  v157 = v23;
  __swift_allocate_boxed_opaque_existential_1(&v154);
  v24 = *MEMORY[0x277D60FC8];
  OUTLINED_FUNCTION_26_0(v23);
  v26 = *(v25 + 104);
  OUTLINED_FUNCTION_67_2();
  v26();
  v27 = OUTLINED_FUNCTION_72_2();
  v30 = OUTLINED_FUNCTION_50_5(v27, v28, v29);
  OUTLINED_FUNCTION_51_4(v30, v31, v32, v33, v34, v35, v36, v37, v127, v137, v146, v154);
  __swift_destroy_boxed_opaque_existential_1Tm(&v158);
  if (v27)
  {
    v38 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v39 = OUTLINED_FUNCTION_71_1();
    v47 = OUTLINED_FUNCTION_38_6(v39, v40, v41, v42, v43, v44, v45, v46, v128, v138, v147, v154, v155, v156, v157, v158, v159, v160, v161);
    OUTLINED_FUNCTION_73_2(v47, v48, v49, v50, v51, v52, v53, v54, v129, v139, v148, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166);
    OUTLINED_FUNCTION_26_0(v27);
    (*(v55 + 16))();
    v157 = v23;
    __swift_allocate_boxed_opaque_existential_1(&v154);
    OUTLINED_FUNCTION_67_2();
    v26();
    v27 = OUTLINED_FUNCTION_72_2();
    v58 = OUTLINED_FUNCTION_50_5(v27, v56, v57);
    OUTLINED_FUNCTION_51_4(v58, v59, v60, v61, v62, v63, v64, v65, v130, v140, v149, v154);
    __swift_destroy_boxed_opaque_existential_1Tm(&v158);
    if ((v27 & 1) == 0)
    {
      return -1;
    }
  }

  v66 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v67 = OUTLINED_FUNCTION_71_1();
  v75 = OUTLINED_FUNCTION_38_6(v67, v68, v69, v70, v71, v72, v73, v74, v128, v138, v147, v154, v155, v156, v157, v158, v159, v160, v161);
  OUTLINED_FUNCTION_73_2(v75, v76, v77, v78, v79, v80, v81, v82, v131, v141, v150, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166);
  OUTLINED_FUNCTION_26_0(v27);
  (*(v83 + 16))();
  v157 = v23;
  __swift_allocate_boxed_opaque_existential_1(&v154);
  OUTLINED_FUNCTION_67_2();
  v26();
  v84 = OUTLINED_FUNCTION_72_2();
  v85 = v84;
  v88 = OUTLINED_FUNCTION_50_5(v84, v86, v87);
  OUTLINED_FUNCTION_51_4(v88, v89, v90, v91, v92, v93, v94, v95, v132, v142, v151, v154);
  __swift_destroy_boxed_opaque_existential_1Tm(&v158);
  if (v85)
  {
    v96 = v143;
    v97 = sub_231368F70();
    v105 = OUTLINED_FUNCTION_38_6(v97, v98, v99, v100, v101, v102, v103, v104, v133, v143, v152, v154, v155, v156, v157, v158, v159, v160, v161);
    OUTLINED_FUNCTION_73_2(v105, v106, v107, v108, v109, v110, v111, v112, v134, v144, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166);
    OUTLINED_FUNCTION_26_0(v96);
    (*(v113 + 16))();
    v157 = v23;
    __swift_allocate_boxed_opaque_existential_1(&v154);
    OUTLINED_FUNCTION_67_2();
    v26();
    LOBYTE(v96) = OUTLINED_FUNCTION_72_2();
    sub_2311D1F18(&v154, &qword_27DD443C0, &unk_23136E000);
    sub_2311D1F18(&v163, &qword_27DD443C0, &unk_23136E000);
    __swift_destroy_boxed_opaque_existential_1Tm(&v158);
    if ((v96 & 1) == 0)
    {
      return 1;
    }
  }

  v114 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_8();
  if ((sub_231368F80() & 1) == 0)
  {
    v115 = a2[3];
    v116 = a2[4];
    v117 = OUTLINED_FUNCTION_62_3();
    __swift_project_boxed_opaque_existential_1(v117, v118);
    OUTLINED_FUNCTION_17_8();
    if (sub_231368F80())
    {
      return 1;
    }
  }

  v120 = a2[3];
  v121 = a2[4];
  v122 = OUTLINED_FUNCTION_62_3();
  __swift_project_boxed_opaque_existential_1(v122, v123);
  OUTLINED_FUNCTION_17_8();
  if (sub_231368F80())
  {
    return 0;
  }

  v124 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_62_3();
  if ((sub_231368F80() & 1) == 0)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_231259098()
{
  sub_23136A9D0();
  sub_2313668C0();
  return sub_23136AA00();
}

uint64_t sub_231259128()
{
  v1 = *v0;
  sub_23136A9D0();
  sub_2313668C0();
  return sub_23136AA00();
}

void *SuggestionPool.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t SuggestionPool.__deallocating_deinit()
{
  SuggestionPool.deinit();
  OUTLINED_FUNCTION_41_6();

  return swift_deallocClassInstance();
}

uint64_t sub_231259208()
{
  v2 = *v0;
  v3 = sub_231258D14();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_2312592C8(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_23136A1C0();
  }

  return result;
}

uint64_t sub_23125930C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_2312593D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(unint64_t, void), uint64_t (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      v9 = a6(0);
      OUTLINED_FUNCTION_46_1(v9);
      v11 = v10;
      v13 = v12;
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v13 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_2312594B8(uint64_t a1)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v3 = sub_23136A5A0();
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    sub_23125303C(v3, 0);
    OUTLINED_FUNCTION_59_3();
    sub_231369EE0();
    v2 = sub_23125182C(&v5, (v1 + 32), v3, v2);
    sub_2311D3BBC();
    if (v2 == v3)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v3 = *(v2 + 16);
    if (!v3)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v1;
}

uint64_t sub_2312595A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(_BYTE *, unint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_59_3();
  v12 = v11(v10, 0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_40_0(v13);
  a5(v17, v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v6, v5);
  OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_75_1();
  if (!v15)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v12;
}

uint64_t sub_2312596A8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = OUTLINED_FUNCTION_59_3();
  v8 = v7(v6, 0);
  a3(v11, v8 + 32, v4, v3);
  OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_75_1();
  if (!v9)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v8;
}

uint64_t sub_231259744(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v24 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v6 = *(i - 2);
    v7 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    sub_231369EE0();

    v11 = sub_231215F6C(v6, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_17;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_14;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EA8, &qword_231370B08);
        sub_23136A710();
        if (v14)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_2312B537C();
      v15 = *a3;
      v16 = sub_231215F6C(v6, v7);
      if ((v14 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v11 = v16;
      if (v14)
      {
LABEL_14:
        __break(1u);
      }
    }

    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v6;
    v19[1] = v7;
    *(v18[7] + 8 * v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_18;
    }

    v18[2] = v22;
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

uint64_t sub_2312598F4(uint64_t a1, char a2, void *a3)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EA8, &qword_231370B08);
        sub_23136A710();
      }
    }

    else
    {
      sub_2312B537C();
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

uint64_t sub_231259B24()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_2312160A8();
  OUTLINED_FUNCTION_4_12(v11, v12);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  if (OUTLINED_FUNCTION_69_2())
  {
    v18 = *v5;
    sub_2312160A8();
    OUTLINED_FUNCTION_16_13();
    if (!v20)
    {
      goto LABEL_14;
    }

    v16 = v19;
  }

  v21 = *v5;
  if (v17)
  {
    v22 = *(v21 + 56);
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = v9;
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    sub_23125A83C(v16, v7, v9, v21);
    OUTLINED_FUNCTION_9_0();
  }
}

void sub_231259C34()
{
  OUTLINED_FUNCTION_65_1();
  v6 = OUTLINED_FUNCTION_9_14(v3, v4, v5);
  OUTLINED_FUNCTION_4_12(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_13:
    sub_23136A970();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_48_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EB8, &unk_231376F60);
  v9 = OUTLINED_FUNCTION_11_10();
  if (v9)
  {
    v13 = OUTLINED_FUNCTION_36_6();
    sub_231215F6C(v13, v0);
    OUTLINED_FUNCTION_16_13();
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_42_7(v9, v10, v11, v12, *v1);
    OUTLINED_FUNCTION_64_1();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_18_10();
    sub_23125A878(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_64_1();

    sub_231369EE0();
  }
}

_OWORD *sub_231259D04()
{
  OUTLINED_FUNCTION_65_1();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_23_7(v7, v5, v3);
  OUTLINED_FUNCTION_4_12(v9, v10);
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_48_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CF0, &unk_23136FD40);
  if (OUTLINED_FUNCTION_11_10())
  {
    v12 = OUTLINED_FUNCTION_36_6();
    sub_231215F6C(v12, v4);
    OUTLINED_FUNCTION_16_13();
    if (!v14)
    {
      goto LABEL_14;
    }

    v2 = v13;
  }

  v15 = *v0;
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((*(v15 + 56) + 32 * v2));
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_64_1();

    return sub_2312250F8(v16, v17);
  }

  else
  {
    sub_23125A8BC(v2, v6, v4, v8, v15);
    OUTLINED_FUNCTION_64_1();

    return sub_231369EE0();
  }
}

uint64_t sub_231259E04()
{
  OUTLINED_FUNCTION_65_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_23_7(v5, v3, v1);
  OUTLINED_FUNCTION_4_12(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E70, &unk_231370AB0);
  if ((OUTLINED_FUNCTION_11_10() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = OUTLINED_FUNCTION_36_6();
  v15 = sub_231215F6C(v14, v2);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  v17 = *v0;
  if (v13)
  {
    v18 = v17[7];
    v19 = type metadata accessor for SignalOverrides();
    OUTLINED_FUNCTION_40_0(v19);
    v21 = *(v20 + 72);
    OUTLINED_FUNCTION_64_1();

    return sub_23125D638(v22, v23);
  }

  else
  {
    sub_23125A904(v12, v4, v2, v6, v17);
    OUTLINED_FUNCTION_64_1();

    return sub_231369EE0();
  }
}

void sub_231259F20()
{
  OUTLINED_FUNCTION_65_1();
  v8 = OUTLINED_FUNCTION_9_14(v5, v6, v7);
  OUTLINED_FUNCTION_4_12(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_12:
    sub_23136A970();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_48_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CE0, &qword_23136FD30);
  if (OUTLINED_FUNCTION_11_10())
  {
    v11 = OUTLINED_FUNCTION_36_6();
    sub_231215F6C(v11, v0);
    OUTLINED_FUNCTION_16_13();
    if (!v13)
    {
      goto LABEL_12;
    }

    v4 = v12;
  }

  if (v3)
  {
    *(*(*v2 + 56) + 8 * v4) = v1;
    OUTLINED_FUNCTION_64_1();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_18_10();
    sub_23125A878(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_64_1();

    sub_231369EE0();
  }
}

uint64_t sub_23125A010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t *))
{
  v10 = v7;
  v14 = OUTLINED_FUNCTION_23_7(a1, a2, a3);
  OUTLINED_FUNCTION_4_12(v14, v15);
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if ((sub_23136A700() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = *v7;
  v22 = OUTLINED_FUNCTION_19();
  v24 = sub_231215F6C(v22, v23);
  if ((v20 & 1) != (v25 & 1))
  {
LABEL_13:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

  v19 = v24;
LABEL_5:
  v26 = *v10;
  if (v20)
  {
    v27 = (*(v26 + 56) + 40 * v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);

    return a7(a1, v27);
  }

  else
  {
    sub_23125A9C8(v19, a2, a3, a1, v26);

    return sub_231369EE0();
  }
}

uint64_t sub_23125A17C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2313673A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = sub_23121652C();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E58, &unk_2313708E8);
  if ((sub_23136A700() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  v17 = sub_23121652C();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  if (v15)
  {
    v19 = *(*v3 + 56);
    v20 = *(v19 + 8 * v14);
    *(v19 + 8 * v14) = a1;
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    return sub_23125AA14();
  }
}

uint64_t sub_23125A350()
{
  OUTLINED_FUNCTION_65_1();
  v6 = OUTLINED_FUNCTION_9_14(v3, v4, v5);
  OUTLINED_FUNCTION_4_12(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_48_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E98, &unk_231370AE8);
  v9 = OUTLINED_FUNCTION_11_10();
  if (v9)
  {
    v13 = OUTLINED_FUNCTION_36_6();
    sub_231215F6C(v13, v0);
    OUTLINED_FUNCTION_16_13();
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_42_7(v9, v10, v11, v12, *v1);
    OUTLINED_FUNCTION_64_1();

    return swift_unknownObjectRelease();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_18_10();
    sub_23125A878(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_64_1();

    return sub_231369EE0();
  }
}

uint64_t sub_23125A420(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_231367050();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v14 = v13 - v12;
  v15 = *v2;
  v16 = sub_231216730();
  OUTLINED_FUNCTION_4_12(v16, v17);
  if (v20)
  {
    __break(1u);
    goto LABEL_9;
  }

  v21 = v18;
  v22 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EA0, &qword_231370AF8);
  result = OUTLINED_FUNCTION_69_2();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v24 = *v3;
  result = sub_231216730();
  if ((v22 & 1) != (v25 & 1))
  {
LABEL_9:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

  v21 = result;
LABEL_5:
  v26 = *v3;
  if (v22)
  {
    *(v26[7] + 8 * v21) = a2;
  }

  else
  {
    (*(v9 + 16))(v14, a1, v6);
    return sub_23125AAA4(v21, v14, v26, a2);
  }

  return result;
}

uint64_t sub_23125A59C()
{
  OUTLINED_FUNCTION_11_0();
  v4 = v3;
  v6 = v5;
  v10 = OUTLINED_FUNCTION_9_14(v7, v8, v9);
  OUTLINED_FUNCTION_4_12(v10, v11);
  if (v12)
  {
    __break(1u);
LABEL_13:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_48_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
  v13 = OUTLINED_FUNCTION_11_10();
  if (v13)
  {
    v17 = OUTLINED_FUNCTION_36_6();
    sub_231215F6C(v17, v0);
    OUTLINED_FUNCTION_16_13();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_42_7(v13, v14, v15, v16, *v1);
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    v21 = OUTLINED_FUNCTION_18_10();
    sub_23125A878(v21, v22, v23, v24, v25);
    OUTLINED_FUNCTION_9_0();

    return sub_231369EE0();
  }
}

void sub_23125A66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_11_0();
  v14 = v13;
  v16 = v15;
  OUTLINED_FUNCTION_32_6();
  v17 = sub_231369DD0();
  v18 = OUTLINED_FUNCTION_0_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_4();
  v25 = v24 - v23;
  v26 = *v13;
  v27 = sub_231216910();
  OUTLINED_FUNCTION_4_12(v27, v28);
  if (v31)
  {
    __break(1u);
    goto LABEL_11;
  }

  v32 = v29;
  v33 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E88, qword_231370AD0);
  if ((OUTLINED_FUNCTION_11_10() & 1) == 0)
  {
    goto LABEL_5;
  }

  v34 = *v14;
  v35 = sub_231216910();
  if ((v33 & 1) != (v36 & 1))
  {
LABEL_11:
    sub_23136A970();
    __break(1u);
    return;
  }

  v32 = v35;
LABEL_5:
  v37 = *v14;
  if (v33)
  {
    v38 = v37[7];
    v39 = sub_2313696B0();
    OUTLINED_FUNCTION_11(v39);
    v41 = *(v40 + 40);
    v42 = v38 + *(v40 + 72) * v32;
    OUTLINED_FUNCTION_9_0();

    v46(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
  }

  else
  {
    (*(v20 + 16))(v25, v16, v17);
    sub_23125AB5C(v32, v25, v12, v37);
    OUTLINED_FUNCTION_9_0();
  }
}

void sub_23125A810(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_5_12(a1, a2, a3, a4, a5);
  *(v8 + 4 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_33_7(v6, v11);
  }
}

unint64_t sub_23125A83C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_55_5(a1, a2, a3, a4);
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

void sub_23125A878(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_5_12(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_33_7(v6, v11);
  }
}

_OWORD *sub_23125A8BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_5_12(a1, a2, a3, a4, a5);
  result = sub_2312250F8(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

uint64_t sub_23125A904(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for SignalOverrides();
  result = sub_23125D700(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_23125A9C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_5_12(a1, a2, a3, a4, a5);
  result = v9(v8, v7 + 40 * v6);
  v11 = *(a5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }

  return result;
}

uint64_t sub_23125AA14()
{
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_55_5(v4, v5, v6, v7);
  v9 = *(v8 + 48);
  v11 = v10(0);
  OUTLINED_FUNCTION_11(v11);
  result = (*(v12 + 32))(v9 + *(v12 + 72) * v3, v2);
  *(*(v0 + 56) + 8 * v3) = v1;
  v14 = *(v0 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v16;
  }

  return result;
}

uint64_t sub_23125AAA4(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_231367050();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_23125AB5C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_231369DD0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_2313696B0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t *sub_23125AC50(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_23125AFC4(v9, v4, v2);
      MEMORY[0x23192B930](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_2312B3C88(0, v4, v5);
  sub_23125AE28(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_23125ADD4()
{
  result = qword_280F849E8;
  if (!qword_280F849E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F849E8);
  }

  return result;
}

void sub_23125AE28(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v23 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(a3 + 48) + 16 * v12 + 8);
    v14 = v12;
    v15 = *(*(a3 + 56) + 8 * v12);
    sub_231369EE0();

    sub_2313676D0();
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v16 = sub_231368F80();
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    v7 = v23;
    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:
        sub_2312418F0(a1, a2, v20, a3);
        return;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v23 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_23125AFC4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_23125AE28(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_23125B03C(uint64_t *a1)
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
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_23125B720(v7, v8, a1, v4);
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
    return sub_23125B278(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23125B130(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_23125BC28(v8, v9, a1, v4);
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
    return sub_23125B340(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23125B278(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_23136A900();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_23125B340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60);
  v8 = *(*(v65 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v65);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v60 = &v47 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v47 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  result = MEMORY[0x28223BE20](v15);
  v21 = &v47 - v20;
  v49 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v54 = -v23;
    v55 = v22;
    v25 = a1 - a3;
    v48 = v23;
    v26 = v22 + v23 * a3;
    v57 = v17;
    v58 = &v47 - v20;
    while (2)
    {
      v52 = v24;
      v53 = a3;
      v50 = v26;
      v51 = v25;
      v27 = v25;
      while (1)
      {
        v62 = v27;
        v63 = v26;
        sub_23123EA8C(v26, v21, &qword_27DD43620, &qword_23136CB60);
        v61 = v24;
        sub_23123EA8C(v24, v17, &qword_27DD43620, &qword_23136CB60);
        v28 = v59;
        sub_23123EA8C(v21, v59, &qword_27DD43620, &qword_23136CB60);
        v29 = *(v28 + *(v65 + 48));

        v30 = sub_231367370();
        v32 = v31;
        v33 = sub_2313673A0();
        v64 = *(*(v33 - 8) + 8);
        v64(v28, v33);
        v34 = v17;
        v35 = v60;
        sub_23123EA8C(v34, v60, &qword_27DD43620, &qword_23136CB60);
        v36 = *(v35 + *(v65 + 48));

        v37 = sub_231367370();
        v39 = v38;
        v64(v35, v33);
        if (v30 == v37 && v32 == v39)
        {
          break;
        }

        v41 = sub_23136A900();

        v17 = v57;
        sub_2311D1F18(v57, &qword_27DD43620, &qword_23136CB60);
        v21 = v58;
        result = sub_2311D1F18(v58, &qword_27DD43620, &qword_23136CB60);
        v43 = v62;
        v42 = v63;
        v44 = v61;
        if (v41)
        {
          if (!v55)
          {
            __break(1u);
            return result;
          }

          v45 = v56;
          sub_23123E9F8(v63, v56, &qword_27DD43620, &qword_23136CB60);
          swift_arrayInitWithTakeFrontToBack();
          result = sub_23123E9F8(v45, v44, &qword_27DD43620, &qword_23136CB60);
          v24 = v44 + v54;
          v26 = v42 + v54;
          v46 = __CFADD__(v43, 1);
          v27 = v43 + 1;
          if (!v46)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v17 = v57;
      sub_2311D1F18(v57, &qword_27DD43620, &qword_23136CB60);
      v21 = v58;
      result = sub_2311D1F18(v58, &qword_27DD43620, &qword_23136CB60);
LABEL_14:
      a3 = v53 + 1;
      v24 = v52 + v48;
      v25 = v51 - 1;
      v26 = v50 + v48;
      if (v53 + 1 != v49)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23125B720(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_23136A900();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_23136A900()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_23136A900() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_23126DB78();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_23126DB78();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_23125CAD4((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_23125C9A8(&v92, *a1, a3);
LABEL_102:
}