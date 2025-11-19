uint64_t sub_231333D4C()
{
  v1 = v0[5];
  sub_231369100();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_18_0(v3))
  {
    *OUTLINED_FUNCTION_63() = 0;
    OUTLINED_FUNCTION_57(&dword_2311CB000, v4, v5, "LocaleChangeCacheUpdater OnSiriLocaleChange. Updating DefaultLocaleProvider and DefaultMorphunTokenizer and stopWordAndNonSignificantWordList");
    OUTLINED_FUNCTION_29();
  }

  v7 = v0[4];
  v6 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  v10 = *(v7 + 8);
  v11 = OUTLINED_FUNCTION_28_0();
  v12(v11);
  v13 = v9[33];
  __swift_project_boxed_opaque_existential_1(v9 + 29, v9[32]);
  sub_231369590();

  v14 = v9[27];
  v15 = v9[28];
  OUTLINED_FUNCTION_0_39(v9 + 24);
  OUTLINED_FUNCTION_2_28();
  sub_2313695A0();

  v16 = v9[37];
  v17 = v9[38];
  OUTLINED_FUNCTION_0_39(v9 + 34);
  OUTLINED_FUNCTION_2_28();
  sub_231369530();

  v18 = v0[1];

  return v18();
}

uint64_t *sub_231333E90()
{
  sub_2312A5FE0((v0 + 14));
  sub_2312A5FE0((v0 + 19));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 29);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 34);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_231333ED8()
{
  sub_231333E90();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_231333F28()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209EB0;

  return sub_231333C8C();
}

uint64_t sub_231333FB8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231209C08;

  return sub_231333958(a1);
}

uint64_t sub_231334050()
{
  sub_23136A9D0();
  sub_2312112DC();
  return sub_23136AA00();
}

uint64_t sub_2313340D4(uint64_t a1, void (*a2)(uint64_t))
{
  sub_23136A9D0();
  a2(a1);
  sub_23136A060();

  return sub_23136AA00();
}

BOOL sub_231334158(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t sub_231334188(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (v3)
  {
    v4 = (v1 + 16 * v2);
    v5 = *v4;
    v6 = v4[1];
    sub_231369EE0();
  }

  return OUTLINED_FUNCTION_64();
}

uint64_t sub_2313341CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32 * v1);
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[2];
    v6 = v2[3];
    sub_231369EE0();
    sub_231369EE0();
  }

  return OUTLINED_FUNCTION_64();
}

uint64_t sub_231334234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231334258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_231366E80();
    OUTLINED_FUNCTION_11(v6);
    (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
    OUTLINED_FUNCTION_62_2();
  }

  else
  {
    sub_231366E80();
    v8 = OUTLINED_FUNCTION_31_22();
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_231334304(uint64_t a1)
{
  v130 = a1;
  v3 = sub_2313698C0();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v116 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  v11 = sub_231369B50();
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v127 = v13;
  v128 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v125 = v17 - v16;
  OUTLINED_FUNCTION_18();
  v18 = sub_231366860();
  v19 = OUTLINED_FUNCTION_0_0(v18);
  v126 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  v131 = v24 - v23;
  OUTLINED_FUNCTION_18();
  v25 = sub_231369AE0();
  v26 = OUTLINED_FUNCTION_0_0(v25);
  v123 = v27;
  v124 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_4();
  v122 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448D8, &qword_231378770);
  v33 = OUTLINED_FUNCTION_0_0(v32);
  v119 = v34;
  v120 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v37);
  v118 = (v114 - v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44BF8, &qword_231378778);
  OUTLINED_FUNCTION_0_0(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_30_17();
  v132 = sub_231369AC0();
  v45 = OUTLINED_FUNCTION_0_0(v132);
  KeyPath = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_22();
  v51 = v49 - v50;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_72_7();
  MEMORY[0x28223BE20](v53);
  v117 = v114 - v54;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_17_0();
  v129 = v56;
  OUTLINED_FUNCTION_18();
  sub_231369B30();
  v57 = v133;
  v58 = sub_231369B20();
  if (!v57)
  {
    v114[4] = v18;
    v114[0] = v10;
    v114[1] = v3;
    v114[5] = v58;
    sub_231369AA0();
    swift_getKeyPath();
    v59 = sub_231369D80();
    v115 = 0;
    v60 = v59;
    v61 = swift_allocBox();
    v62 = *MEMORY[0x277D730D8];
    OUTLINED_FUNCTION_26_0(v60);
    (*(v63 + 104))();
    *v1 = v61;
    (*(v41 + 104))(v1, *MEMORY[0x277D721C8], v39);
    v114[2] = sub_231341F84(&qword_27DD44880, MEMORY[0x277D724B8]);
    v114[3] = MEMORY[0x277D721D8];
    sub_23121C788(&qword_27DD44C00, &qword_27DD44BF8, &qword_231378778);
    OUTLINED_FUNCTION_148_0();
    sub_231369B40();

    v64 = *(v41 + 8);
    v65 = OUTLINED_FUNCTION_115_0();
    v66(v65);
    v133 = *(KeyPath + 8);
    v133(v51, v132);
    KeyPath = swift_getKeyPath();
    v67 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D80, &qword_2313787E0);
    v68 = sub_231369A00();
    OUTLINED_FUNCTION_0_0(v68);
    v70 = v69;
    v72 = *(v71 + 72);
    v73 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_23136C1C0;
    v75 = v74 + v73;
    v76 = *(v70 + 104);
    v76(v75, *MEMORY[0x277D723F0], v68);
    v76(v75 + v72, *MEMORY[0x277D723E8], v68);
    *(v67 + 16) = sub_2313416CC(v74);
    v78 = v118;
    v77 = v119;
    *v118 = v67;
    (*(v77 + 104))(v78, *MEMORY[0x277D721B8], v120);
    sub_23121C788(&qword_27DD448E0, &qword_27DD448D8, &qword_231378770);
    v79 = v117;
    sub_231369B40();

    v80 = *(v77 + 8);
    v81 = OUTLINED_FUNCTION_148_0();
    v82(v81);
    v83 = v132;
    v84 = v133;
    v133(v2, v132);
    swift_getKeyPath();
    v85 = v122;
    MEMORY[0x23192A180](v130);
    sub_231341F84(&qword_27DD44C08, MEMORY[0x277D724E8]);
    v86 = v129;
    OUTLINED_FUNCTION_115_0();
    sub_231369B40();

    (*(v123 + 8))(v85, v124);
    v51 = v83;
    v84(v79, v83);
    sub_231366800();
    v88 = v127;
    v87 = v128;
    v89 = v125;
    (*(v127 + 104))(v125, *MEMORY[0x277D72858], v128);
    v90 = v115;
    v91 = sub_231369B00();
    if (v90)
    {

      (*(v88 + 8))(v89, v87);
      v92 = OUTLINED_FUNCTION_161();
      v93(v92);
      v94 = OUTLINED_FUNCTION_143_0();
      (v133)(v94);
    }

    else
    {
      v96 = v91;
      v115 = 0;
      (*(v88 + 8))(v89, v87);
      v97 = OUTLINED_FUNCTION_161();
      v98(v97);
      sub_2313690F0();
      v51 = v96;
      sub_231369EE0();
      sub_231369EE0();
      v99 = sub_2313698A0();
      v100 = sub_23136A3C0();

      if (os_log_type_enabled(v99, v100))
      {
        OUTLINED_FUNCTION_94_1();
        v101 = swift_slowAlloc();
        OUTLINED_FUNCTION_30_16();
        v102 = swift_slowAlloc();
        v134 = v102;
        *v101 = 134218242;
        *(v101 + 4) = *(v51 + 16);

        *(v101 + 12) = 2080;
        sub_231369D50();
        OUTLINED_FUNCTION_50_10();
        sub_231341F84(v103, v104);
        v105 = sub_23136A340();
        v107 = sub_2311CFD58(v105, v106, &v134);

        *(v101 + 14) = v107;
        _os_log_impl(&dword_2311CB000, v99, v100, "ContextualActionsGenerator:: Got %ld Tools accepting types %s", v101, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v102);
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
        v108 = OUTLINED_FUNCTION_18_23();
        MEMORY[0x23192B930](v108);

        v109 = OUTLINED_FUNCTION_130_1();
        v110(v109);
        v111 = v129;
      }

      else
      {

        v112 = OUTLINED_FUNCTION_130_1();
        v113(v112);
        v111 = v86;
      }

      v133(v111, v132);
    }
  }

  return v51;
}

uint64_t sub_231334CCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44BF8, &qword_231378778);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - v5, a1, v4);
  return sub_231369A20();
}

uint64_t sub_231334D9C(uint64_t a1)
{
  v2 = sub_231369AE0();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_231369A90();
}

uint64_t sub_231334E64()
{
  OUTLINED_FUNCTION_8();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = sub_231369050();
  v1[36] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[37] = v5;
  v7 = *(v6 + 64);
  v1[38] = OUTLINED_FUNCTION_43();
  v8 = sub_231368FB0();
  v1[39] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[40] = v9;
  v11 = *(v10 + 64);
  v1[41] = OUTLINED_FUNCTION_43();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  OUTLINED_FUNCTION_40_0(v12);
  v14 = *(v13 + 64);
  v1[42] = OUTLINED_FUNCTION_43();
  v15 = sub_2313694E0();
  v1[43] = v15;
  OUTLINED_FUNCTION_0(v15);
  v1[44] = v16;
  v18 = *(v17 + 64);
  v1[45] = OUTLINED_FUNCTION_43();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50);
  OUTLINED_FUNCTION_40_0(v19);
  v21 = *(v20 + 64);
  v1[46] = OUTLINED_FUNCTION_43();
  v22 = sub_231367550();
  v1[47] = v22;
  OUTLINED_FUNCTION_0(v22);
  v1[48] = v23;
  v25 = *(v24 + 64);
  v1[49] = OUTLINED_FUNCTION_67();
  v1[50] = swift_task_alloc();
  v26 = sub_231369D00();
  v1[51] = v26;
  OUTLINED_FUNCTION_0(v26);
  v1[52] = v27;
  v29 = *(v28 + 64);
  v1[53] = OUTLINED_FUNCTION_43();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B78, &qword_231378720);
  OUTLINED_FUNCTION_40_0(v30);
  v32 = *(v31 + 64);
  v1[54] = OUTLINED_FUNCTION_67();
  v1[55] = swift_task_alloc();
  v33 = type metadata accessor for HydratedTool(0);
  v1[56] = v33;
  OUTLINED_FUNCTION_40_0(v33);
  v35 = *(v34 + 64);
  v1[57] = OUTLINED_FUNCTION_67();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v36 = sub_231369A00();
  v1[63] = v36;
  OUTLINED_FUNCTION_0(v36);
  v1[64] = v37;
  v39 = *(v38 + 64);
  v1[65] = OUTLINED_FUNCTION_67();
  v1[66] = swift_task_alloc();
  v40 = sub_231369990();
  v1[67] = v40;
  OUTLINED_FUNCTION_0(v40);
  v1[68] = v41;
  v43 = *(v42 + 64);
  v1[69] = OUTLINED_FUNCTION_67();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v44 = sub_231366750();
  v1[72] = v44;
  OUTLINED_FUNCTION_0(v44);
  v1[73] = v45;
  v47 = *(v46 + 64);
  v1[74] = OUTLINED_FUNCTION_43();
  v48 = sub_231369840();
  v1[75] = v48;
  OUTLINED_FUNCTION_0(v48);
  v1[76] = v49;
  v51 = *(v50 + 64);
  v1[77] = OUTLINED_FUNCTION_43();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v52);
  v54 = *(v53 + 64);
  v1[78] = OUTLINED_FUNCTION_43();
  v55 = sub_231369D50();
  v1[79] = v55;
  OUTLINED_FUNCTION_0(v55);
  v1[80] = v56;
  v58 = *(v57 + 64);
  v1[81] = OUTLINED_FUNCTION_67();
  v1[82] = swift_task_alloc();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  OUTLINED_FUNCTION_40_0(v59);
  v61 = *(v60 + 64);
  v1[83] = OUTLINED_FUNCTION_43();
  v62 = sub_2313696B0();
  v1[84] = v62;
  OUTLINED_FUNCTION_0(v62);
  v1[85] = v63;
  v65 = *(v64 + 64);
  v1[86] = OUTLINED_FUNCTION_67();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v66 = sub_231367B30();
  v1[89] = v66;
  OUTLINED_FUNCTION_0(v66);
  v1[90] = v67;
  v69 = *(v68 + 64);
  v1[91] = OUTLINED_FUNCTION_43();
  v70 = sub_2313698C0();
  v1[92] = v70;
  OUTLINED_FUNCTION_0(v70);
  v1[93] = v71;
  v73 = *(v72 + 64);
  v1[94] = OUTLINED_FUNCTION_67();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v74 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v74, v75, v76);
}

uint64_t sub_2313354BC()
{
  v222 = v0;
  if (*(v0[35] + OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_enabled) == 1)
  {
    v2 = MEMORY[0x277D84F90];
    v3 = v0[105];
    sub_2313690F0();
    v4 = sub_2313698A0();
    v5 = sub_23136A3C0();
    if (OUTLINED_FUNCTION_40_1(v5))
    {
      *OUTLINED_FUNCTION_63() = 0;
      OUTLINED_FUNCTION_0_26();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v11 = v0[105];
    v12 = v0[93];
    v13 = v0[92];
    v14 = v0[33];

    v0[106] = *(v12 + 8);
    v15 = OUTLINED_FUNCTION_28_0();
    v192 = v16;
    (v16)(v15);
    v0[32] = v2;
    v17 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    OUTLINED_FUNCTION_28_0();
    v18 = *(sub_2313683A0() + 16);
    if (v18)
    {
      v19 = v0[90];
      v215 = *(v19 + 16);
      v20 = v0[85];
      v21 = *(v19 + 80);
      OUTLINED_FUNCTION_35_0();
      v210 = v22;
      v25 = v23 + v24;
      v27 = (v26 - 8);
      v28 = (v22 + 32);
      v29 = MEMORY[0x277D84F90];
      v212 = *(v26 + 56);
      do
      {
        v30 = v0[91];
        v31 = v0[89];
        v32 = v0[84];
        v33 = v0[83];
        v34 = OUTLINED_FUNCTION_67_0();
        v215(v34);
        sub_231367B20();
        (*v27)(v30, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43300, &qword_23136BF00);
        v35 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v33, v35 ^ 1u, 1, v32);
        OUTLINED_FUNCTION_38_12(v33);
        if (v36)
        {
          sub_2311D1F18(v0[83], &qword_27DD43C68, &qword_231378D20);
        }

        else
        {
          v37 = *v28;
          (*v28)(v0[88], v0[83], v0[84]);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v46 = *(v29 + 16);
            v47 = OUTLINED_FUNCTION_109_2();
            sub_23126E138(v47, v48, v49, v29);
            v29 = v50;
          }

          v40 = *(v29 + 16);
          v39 = *(v29 + 24);
          if (v40 >= v39 >> 1)
          {
            v51 = OUTLINED_FUNCTION_37(v39);
            sub_23126E138(v51, v40 + 1, 1, v29);
            v29 = v52;
          }

          v41 = v0[88];
          v42 = v0[84];
          *(v29 + 16) = v40 + 1;
          v43 = *(v210 + 80);
          OUTLINED_FUNCTION_35_0();
          v37(v29 + v44 + *(v45 + 72) * v40);
        }

        v25 += v212;
        --v18;
      }

      while (v18);

      v65 = v29;
    }

    else
    {

      v65 = MEMORY[0x277D84F90];
    }

    v66 = 0;
    v67 = v0[85];
    v68 = v0[80];
    v198 = v0[35];
    v213 = *(v65 + 16);
    v196 = OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_typesToIgnore;
    v194 = (v0[52] + 8);
    v193 = (v68 + 8);
    v204 = (v67 + 32);
    v206 = (v67 + 8);
    v69 = MEMORY[0x277D84F90];
    v200 = v67;
    v202 = v65;
LABEL_21:
    while (1)
    {
      v0[107] = v69;
      if (v66 == v213)
      {
        break;
      }

      if (v66 >= *(v65 + 16))
      {
        __break(1u);
        return result;
      }

      v70 = v0[87];
      v71 = v0[84];
      v72 = v0[78];
      v73 = v0[51];
      v74 = *(v67 + 80);
      OUTLINED_FUNCTION_35_0();
      v218 = v75;
      v216 = *(v67 + 72);
      (*(v67 + 16))(v70, v65 + v75 + v216 * v66++);
      sub_231369670();
      OUTLINED_FUNCTION_19_13(v72, 1, v73);
      if (v36)
      {
        v76 = v0[78];
        (*v206)(v0[87], v0[84]);
        result = sub_2311D1F18(v76, &qword_27DD43358, &qword_23136FA90);
      }

      else
      {
        v208 = v69;
        v77 = v0[82];
        v78 = v0[81];
        v79 = v0[79];
        v80 = v0[78];
        v81 = v0[51];
        sub_231369CC0();
        v82 = *v194;
        v83 = OUTLINED_FUNCTION_67_0();
        v84(v83);
        v85 = (*(v68 + 32))(v77, v78, v79);
        v93 = 0;
        v94 = *(v198 + v196);
        v95 = *(v94 + 16);
        while (v95 != v93)
        {
          v96 = v0[82];
          v97 = v0[79];
          v98 = v93 + 1;
          v99 = v94 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v93;
          OUTLINED_FUNCTION_50_10();
          sub_231341F84(&qword_27DD43360, v100);
          v85 = sub_231369F60();
          v93 = v98;
          if (v85)
          {
            v101 = v0[87];
            v102 = v0[84];
            v103 = OUTLINED_FUNCTION_152(v85, v86, v87, v88, v89, v90, v91, v92, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
            v104(v103);
            v105 = *v206;
            v106 = OUTLINED_FUNCTION_67_0();
            result = v107(v106);
            v69 = v208;
            v67 = v200;
            v65 = v202;
            goto LABEL_21;
          }
        }

        v108 = v0[87];
        v109 = v0[86];
        v110 = v0[84];
        v111 = OUTLINED_FUNCTION_152(v85, v86, v87, v88, v89, v90, v91, v92, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
        v112(v111);
        v113 = *v204;
        (*v204)(v109, v108, v110);
        v69 = v208;
        v221 = v208;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = *(v208 + 16);
          v115 = OUTLINED_FUNCTION_109_2();
          sub_2311F5958(v115, v116, v117);
          v69 = v221;
        }

        v65 = v202;
        v119 = *(v69 + 16);
        v118 = *(v69 + 24);
        if (v119 >= v118 >> 1)
        {
          v122 = OUTLINED_FUNCTION_37(v118);
          sub_2311F5958(v122, v119 + 1, 1);
          v69 = v221;
        }

        v120 = v0[86];
        v121 = v0[84];
        *(v69 + 16) = v119 + 1;
        result = v113(v69 + v218 + v119 * v216, v120, v121);
        v67 = v200;
      }
    }

    v123 = v0[104];

    sub_2313690F0();

    v124 = sub_2313698A0();
    v125 = sub_23136A3C0();

    v126 = os_log_type_enabled(v124, v125);
    v127 = v0[104];
    v128 = v0[93];
    v129 = v0[92];
    if (v126)
    {
      v130 = v0[84];
      v131 = OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_30_16();
      v221 = swift_slowAlloc();
      *v131 = 136315138;
      v132 = MEMORY[0x23192A860](v69, v130);
      v219 = v127;
      v134 = v69;
      v135 = sub_2311CFD58(v132, v133, &v221);

      *(v131 + 4) = v135;
      v69 = v134;
      _os_log_impl(&dword_2311CB000, v124, v125, "ContextualActionsGenerator:: context %s", v131, 0xCu);
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      v136 = v219;
    }

    else
    {

      v136 = v127;
    }

    v192(v136, v129);
    if (*(v69 + 16))
    {
      v137 = v0[77];
      v138 = v0[74];
      v139 = v0[73];
      v140 = v0[72];
      v141 = sub_231369190();
      sub_231369140();

      sub_231366740();
      sub_231366720();
      v0[108] = v142;
      v0[109] = *(v139 + 8);
      v0[110] = (v139 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v143 = OUTLINED_FUNCTION_67_0();
      v144(v143);
      sub_2313675B0();
      v145 = sub_231369190();
      sub_2313691A0();

      v146 = swift_task_alloc();
      v0[111] = v146;
      *v146 = v0;
      v146[1] = sub_231335FB4;
      v147 = v0[35];

      return sub_23133AF44();
    }

    v148 = v0[103];

    sub_2313690F0();
    v149 = sub_2313698A0();
    v150 = sub_23136A3C0();
    if (OUTLINED_FUNCTION_40_1(v150))
    {
      *OUTLINED_FUNCTION_63() = 0;
      OUTLINED_FUNCTION_0_26();
      _os_log_impl(v151, v152, v153, v154, v155, 2u);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v156 = v0[103];
    v157 = v0[93];
    v158 = v0[92];

    v159 = OUTLINED_FUNCTION_28_0();
    (v192)(v159);
  }

  else
  {
    v53 = v0[95];
    sub_2313690F0();
    v54 = sub_2313698A0();
    sub_23136A3C0();
    OUTLINED_FUNCTION_131_1();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v0[95];
    v58 = v0[93];
    v59 = v0[92];
    if (v56)
    {
      v60 = OUTLINED_FUNCTION_63();
      *v60 = 0;
      _os_log_impl(&dword_2311CB000, v54, v1, "ContextualActionsGenerator:: return generateCandidateSuggestions not enabled", v60, 2u);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v61 = *(v58 + 8);
    v62 = OUTLINED_FUNCTION_28_0();
    v63(v62);
  }

  v160 = v0[105];
  v161 = v0[104];
  v162 = v0[103];
  v163 = v0[102];
  v164 = v0[101];
  v165 = v0[100];
  v166 = v0[99];
  v167 = v0[98];
  v168 = v0[97];
  v169 = v0[96];
  v170 = v0[95];
  v171 = v0[94];
  OUTLINED_FUNCTION_6_28();
  v195 = v0[58];
  v197 = v0[57];
  v199 = v0[55];
  v201 = v0[54];
  v203 = v0[53];
  v205 = v0[50];
  v207 = v0[49];
  v209 = v0[46];
  v211 = v0[45];
  v214 = v0[42];
  v217 = v0[41];
  v220 = v0[38];

  OUTLINED_FUNCTION_14();
  v173 = MEMORY[0x277D84F90];

  return v172(v173);
}

uint64_t sub_231335FB4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 888);
  *v2 = *v0;
  *(v1 + 896) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23133609C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v387 = v18;
  v383 = *(v18 + 880);
  v19 = *(v18 + 872);
  v20 = *(v18 + 816);
  v21 = *(v18 + 616);
  v22 = *(v18 + 592);
  v23 = *(v18 + 576);
  sub_2313675B0();
  v24 = sub_231369190();
  OUTLINED_FUNCTION_55_7();
  sub_231369180();

  sub_231366740();
  sub_231366720();
  v26 = v25;
  v19(v22, v23);
  v27 = v18;
  sub_2313690F0();
  v28 = sub_2313698A0();
  v29 = sub_23136A3C0();
  if (OUTLINED_FUNCTION_40_1(v29))
  {
    v30 = *(v18 + 864);
    v31 = OUTLINED_FUNCTION_60();
    *v31 = 134217984;
    *(v31 + 4) = v26 - v30;
    OUTLINED_FUNCTION_0_26();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  v37 = *(v18 + 896);
  v38 = v27[106];
  v39 = v27[102];
  v40 = v27[93];
  v41 = v27[92];

  v27[113] = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42 = OUTLINED_FUNCTION_28_0();
  v43 = v38(v42);
  v51 = *(v37 + 16);
  v27[114] = v51;
  v384 = v27;
  if (!v51)
  {
LABEL_51:
    v240 = v27[112];
    v241 = v27[107];

    v242 = v27[32];
    v27[133] = v242;
    v243 = *(v242 + 16);
    v27[134] = v243;
    if (!v243)
    {
      v248 = v27[96];
      sub_2313690F0();
      sub_231369EE0();
      sub_231369EE0();
      v249 = sub_2313698A0();
      sub_23136A3C0();
      OUTLINED_FUNCTION_179();
      v250 = OUTLINED_FUNCTION_178();
      v251 = v27;
      v252 = v27[133];
      v253 = v251[113];
      v254 = v251[106];
      v255 = v251[96];
      v256 = v251[92];
      v257 = v251[77];
      v258 = v251[76];
      v259 = v251[75];
      if (v250)
      {
        OUTLINED_FUNCTION_94_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_125_1();
        OUTLINED_FUNCTION_30_16();
        v386[0] = swift_slowAlloc();
        OUTLINED_FUNCTION_55_11(3.8521e-34);
        OUTLINED_FUNCTION_156();
        MEMORY[0x23192A860](MEMORY[0x277D84F90], MEMORY[0x277D837D0]);
        OUTLINED_FUNCTION_85_3();

        v260 = OUTLINED_FUNCTION_28();
        sub_2311CFD58(v260, v261, v262);
        OUTLINED_FUNCTION_38();

        *(v254 + 14) = v253;
        OUTLINED_FUNCTION_54_11(&dword_2311CB000, v263, v264, "ContextualActionsGenerator:: Returning %ld Candidate Suggestions: %s");
        OUTLINED_FUNCTION_26_2();
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();

        v378(v255, v256);
        (*(v258 + 8))(v257, v259);
      }

      else
      {

        (v254)(v255, v256);
        v265 = *(v258 + 8);
        v266 = OUTLINED_FUNCTION_41_14();
        v268(v266, v267);
      }

      v381 = v384[133];
      OUTLINED_FUNCTION_1_44();
      OUTLINED_FUNCTION_7_25();
      v354 = v384[58];
      v355 = v384[57];
      v356 = v384[55];
      v357 = v384[54];
      v359 = v384[53];
      v360 = v384[50];
      v361 = v384[49];
      v362 = v384[46];
      v365 = v384[45];
      v369 = v384[42];
      v371 = v384[41];
      v376 = v384[38];

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_133_0();

      __asm { BRAA            X2, X16 }
    }

    v27[136] = MEMORY[0x277D84F90];
    v27[135] = 0;
    sub_2311CF324(v242 + 32, (v27 + 8));
    v244 = v27[12];
    __swift_project_boxed_opaque_existential_1(v27 + 8, v27[11]);
    v245 = *(MEMORY[0x277D60F68] + 4);
    v246 = swift_task_alloc();
    v27[137] = v246;
    *v246 = v27;
    OUTLINED_FUNCTION_2_29(v246);
    v247 = v27[38];
    OUTLINED_FUNCTION_133_0();

    return MEMORY[0x2821C6E60](v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v52 = 0;
  v53 = 0;
  *(v27 + 276) = *(v27[68] + 80);
  *(v27 + 277) = *MEMORY[0x277D723F0];
  *(v27 + 278) = *MEMORY[0x277D60918];
  v54 = MEMORY[0x277D60B78];
  v55 = MEMORY[0x277D60950];
  v56 = MEMORY[0x277D60920];
  *(v27 + 279) = *MEMORY[0x277D61380];
  *(v27 + 280) = *v54;
  *(v27 + 281) = *v55;
  *(v27 + 282) = *v56;
  while (1)
  {
    v27[116] = v53;
    v27[115] = v52;
    v57 = v27[112];
    if (v53 >= *(v57 + 16))
    {
      __break(1u);
      goto LABEL_68;
    }

    v370 = v52;
    v58 = *(v27 + 277);
    v59 = v27[71];
    v60 = v27[68];
    v61 = v27[67];
    v62 = v27[66];
    v63 = v27[65];
    v65 = v27[63];
    v64 = v27[64];
    v67 = *(v60 + 16);
    v60 += 16;
    v66 = v67;
    v68 = v57 + ((*(v27 + 1104) + 32) & ~*(v27 + 1104)) + *(v60 + 56) * v53;
    v27[117] = v67;
    v27[118] = v60 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v67(v59, v68, v61);
    sub_231369980();
    (*(v64 + 104))(v63, v58, v65);
    OUTLINED_FUNCTION_5_30();
    sub_231341F84(&qword_27DD44A10, v69);
    OUTLINED_FUNCTION_148_0();
    sub_23136A140();
    OUTLINED_FUNCTION_148_0();
    sub_23136A140();
    v70 = v27[66];
    v71 = v27[65];
    v72 = v27[63];
    v73 = (v27[64] + 8);
    v74 = v27[18] == v27[20] && v27[19] == v27[21];
    if (v74)
    {
      break;
    }

    v75 = v27[19];
    v76 = v27[21];
    v77 = sub_23136A900();
    v78 = *v73;
    v79 = OUTLINED_FUNCTION_35_5();
    v78(v79);
    v80 = OUTLINED_FUNCTION_54_0();
    v78(v80);
    v27 = v384;

    if (v77)
    {
      goto LABEL_17;
    }

    v81 = v384[71];
    v384[22] = sub_231369970();
    v384[23] = v82;
    v384[24] = 46;
    v384[25] = 0xE100000000000000;
    sub_231207C1C();
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_10_11();

    OUTLINED_FUNCTION_149();
    if (v84)
    {
      OUTLINED_FUNCTION_100_1(v83);

      OUTLINED_FUNCTION_28_0();
      sub_23133F88C();
      OUTLINED_FUNCTION_147_0();
      if (!v74)
      {
        v85 = v384[56];
        v86 = v384[54];
        v87 = v384[35];
        sub_23133B820(v384[71], v384[107]);
        OUTLINED_FUNCTION_53(v86);
        if (v74)
        {
          sub_2311D1F18(v384[54], &qword_27DD44B78, &qword_231378720);
        }

        else
        {
          v202 = v384[107];
          v203 = v384[35];
          sub_231342014(v384[54], v384[58]);
          type metadata accessor for INIntentFactory();
          sub_23133D740(v202, v204, v205, v206, v207, v208, v209, v210, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353);
          v212 = OUTLINED_FUNCTION_172(v211);
          v384[130] = v212;

          if (v212)
          {
            goto LABEL_66;
          }

          sub_231342078(v384[58]);
        }
      }
    }

    else
    {
    }

    v213 = v384[118];
    v214 = v384[117];
    v215 = v384[97];
    v216 = v384[71];
    v217 = v384[69];
    v218 = v384[67];
    sub_2313690F0();
    v219 = OUTLINED_FUNCTION_65();
    v214(v219);
    v220 = sub_2313698A0();
    sub_23136A3C0();
    OUTLINED_FUNCTION_131_1();
    v222 = os_log_type_enabled(v220, v221);
    v223 = v384[113];
    v224 = v384[106];
    v375 = v384[92];
    v378 = v384[97];
    v225 = v384[71];
    v226 = v384[69];
    v227 = v384[68];
    v228 = v384[67];
    if (v222)
    {
      v229 = OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_30_16();
      v230 = swift_slowAlloc();
      OUTLINED_FUNCTION_150(v230);
      v384[26] = sub_231369970();
      v384[27] = v231;
      v364 = v224;
      v368 = v225;
      v232 = sub_23136A0E0();
      v234 = v233;
      v235 = *(v227 + 8);
      v236 = OUTLINED_FUNCTION_106_2();
      v235(v236);
      v237 = sub_2311CFD58(v232, v234, v386);

      *(v229 + 4) = v237;
      OUTLINED_FUNCTION_141_0(&dword_2311CB000, v220, v218, "ContextualActionsGenerator:: Skipping Tool: %s");
      OUTLINED_FUNCTION_176();
      v27 = v384;
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      v364(v378, v375);
      v238 = v368;
    }

    else
    {

      v235 = *(v227 + 8);
      v239 = OUTLINED_FUNCTION_106_2();
      v235(v239);
      v224(v378, v375);
      v238 = v225;
    }

    v43 = (v235)(v238, v228);
    v52 = v27[115];
LABEL_50:
    v53 = v27[116] + 1;
    if (v53 == v27[114])
    {
      goto LABEL_51;
    }
  }

  v88 = *v73;
  v89 = OUTLINED_FUNCTION_35_5();
  v88(v89);
  v90 = OUTLINED_FUNCTION_54_0();
  v88(v90);

LABEL_17:
  v91 = v27[101];
  v92 = v27[71];
  v93 = v27[70];
  v94 = v27[67];
  sub_2313690F0();
  v66(v93, v92, v94);
  v95 = sub_2313698A0();
  sub_23136A3C0();
  OUTLINED_FUNCTION_131_1();
  v97 = os_log_type_enabled(v95, v96);
  v98 = v27[106];
  v99 = v27[101];
  v100 = v27[92];
  v101 = v27[70];
  v102 = v27[68];
  v103 = v27[67];
  if (v97)
  {
    v378 = v27[113];
    v104 = OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_30_16();
    v105 = swift_slowAlloc();
    OUTLINED_FUNCTION_150(v105);
    v366 = v99;
    v106 = sub_231369950();
    v373 = v98;
    v108 = v107;
    v109 = *(v102 + 8);
    v110 = OUTLINED_FUNCTION_158();
    v109(v110);
    sub_2311CFD58(v106, v108, v386);
    OUTLINED_FUNCTION_38();

    *(v104 + 4) = v101;
    OUTLINED_FUNCTION_141_0(&dword_2311CB000, v95, v93, "ContextualActionsGenerator:: Hydrated Tools %s");
    OUTLINED_FUNCTION_176();
    v27 = v384;
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();

    v111 = v109;
    v373(v366, v100);
  }

  else
  {

    v111 = *(v102 + 8);
    v112 = OUTLINED_FUNCTION_158();
    v111(v112);
    v113 = OUTLINED_FUNCTION_40_8();
    (v98)(v113);
  }

  v27[119] = v111;
  v114 = v27[71];
  sub_23133B60C();
  v27[120] = v115;
  v27[121] = v116;
  if (!v116)
  {
    v124 = v27[68] + 8;
    v43 = (v111)(v27[71], v27[67]);
    goto LABEL_25;
  }

  v117 = v27[107];
  v118 = v27[71];
  v120 = v27[55];
  v119 = v27[56];
  v121 = v27[35];

  sub_23133B820(v118, v117);
  OUTLINED_FUNCTION_53(v120);
  if (v74)
  {
    v122 = v27[55];
    v123 = v27[68] + 8;
    (v111)(v27[71], v27[67]);

    v43 = sub_2311D1F18(v122, &qword_27DD44B78, &qword_231378720);
LABEL_25:
    v52 = v370;
    goto LABEL_50;
  }

  v358 = v111;
  v212 = v27[62];
  v125 = sub_231342014(v27[55], v212);
  sub_23133C730(v125, v126, v127, v128, v129, v130, v131, v132, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353);
  v134 = v133;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445B8, &qword_231374970);
  OUTLINED_FUNCTION_10_11();
  v135 = sub_23136A770();
  v136 = 0;
  v27 = (v134 + 64);
  v137 = *(v134 + 64);
  v363 = v135;
  v367 = v134;
  v138 = *(v134 + 32);
  OUTLINED_FUNCTION_11_26();
  v141 = v139 >> 6;
  if (v140)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v144 = v136;
    do
    {
      v136 = v144 + 1;
      if (__OFADD__(v144, 1))
      {
        __break(1u);
LABEL_66:
        v309 = *(v27 + 280);
        v310 = *(v27 + 279);
        v311 = *(v27 + 278);
        v312 = v27[48];
        v314 = v27[46];
        v313 = v27[47];
        v315 = v27[44];
        v316 = v27[45];
        v318 = v27[42];
        v317 = v27[43];
        *v27[49] = v212;
        (*(v312 + 104))();
        sub_231369330();
        v319 = OUTLINED_FUNCTION_19_21();
        __swift_storeEnumTagSinglePayload(v319, v320, v321, v322);
        v323 = *(v315 + 104);
        v324 = OUTLINED_FUNCTION_60_8();
        v325(v324);
        v326 = sub_231367D80();
        OUTLINED_FUNCTION_11(v326);
        v328 = *(v327 + 104);
        v329 = OUTLINED_FUNCTION_63_8();
        v330(v329);
        OUTLINED_FUNCTION_62_2();
        __swift_storeEnumTagSinglePayload(v331, v332, v333, v334);
        OUTLINED_FUNCTION_80_6(MEMORY[0x277D61200]);
        v335 = v212;
        v336 = swift_task_alloc();
        v27[131] = v336;
        *v336 = v27;
        OUTLINED_FUNCTION_4_28(v336);
        v338 = v27[45];
        v337 = v27[46];
        v339 = v27[42];
        v340 = v27[34];
        OUTLINED_FUNCTION_79_5(v27[49]);
LABEL_62:
        OUTLINED_FUNCTION_133_0();

        __asm { BR              X4 }
      }

      if (v136 >= v141)
      {
        v27 = v384;
        v166 = v384[100];

        sub_2313690F0();

        v167 = sub_2313698A0();
        v168 = sub_23136A3C0();

        v169 = os_log_type_enabled(v167, v168);
        v170 = v384[113];
        v171 = v384[106];
        v172 = v384[100];
        v173 = v384[92];
        if (v169)
        {
          v380 = v384[100];
          v174 = OUTLINED_FUNCTION_60();
          OUTLINED_FUNCTION_30_16();
          v175 = swift_slowAlloc();
          v386[0] = v175;
          *v174 = 136315138;
          v176 = sub_231369E90();
          v178 = v177;

          v179 = v176;
          v27 = v384;
          v180 = sub_2311CFD58(v179, v178, v386);

          *(v174 + 4) = v180;
          _os_log_impl(&dword_2311CB000, v167, v168, "ContextualActionsGenerator:: Hydrated Tool Params %s", v174, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v175);
          OUTLINED_FUNCTION_6_1();
          MEMORY[0x23192B930]();
          v181 = OUTLINED_FUNCTION_18_23();
          MEMORY[0x23192B930](v181);

          v182 = v171(v380, v173);
        }

        else
        {

          v182 = v171(v172, v173);
        }

        v183 = v27[62];
        v184 = v27[50];
        sub_23133CF94(v182);
        v27[122] = v370;
        if (!v370)
        {
          v271 = *(v27 + 282);
          v272 = *(v27 + 281);
          v385 = *(v27 + 280);
          v377 = *(v27 + 279);
          v382 = v27[62];
          v273 = v27[50];
          v275 = v27[47];
          v274 = v27[48];
          v276 = v27[46];
          v372 = v27[45];
          v278 = v27[43];
          v277 = v27[44];
          v279 = v27[42];
          v280 = sub_231367560();
          OUTLINED_FUNCTION_11(v280);
          v282 = *(v281 + 104);
          v283 = OUTLINED_FUNCTION_66_1();
          v284(v283);
          v285 = *(v274 + 104);
          v286 = OUTLINED_FUNCTION_62_9();
          v287(v286);
          sub_231369330();
          v288 = OUTLINED_FUNCTION_31_22();
          __swift_storeEnumTagSinglePayload(v288, v289, v290, v291);
          v292 = *(v277 + 104);
          v293 = OUTLINED_FUNCTION_121_1();
          v294(v293);
          sub_23133D0C8();
          v295 = OUTLINED_FUNCTION_181();
          OUTLINED_FUNCTION_11(v295);
          (*(v296 + 104))(v279, v385, v295);
          OUTLINED_FUNCTION_26_20();
          __swift_storeEnumTagSinglePayload(v297, v298, v299, v300);
          OUTLINED_FUNCTION_57_1(MEMORY[0x277D61200]);
          v301 = swift_task_alloc();
          v27[123] = v301;
          *v301 = v27;
          OUTLINED_FUNCTION_3_37(v301);
          v302 = v27[50];
          v304 = v27[45];
          v303 = v27[46];
          v305 = v27[42];
          v306 = v27[34];
          goto LABEL_62;
        }

        v185 = v27[94];

        sub_2313690F0();
        v186 = v370;
        v187 = sub_2313698A0();
        v188 = sub_23136A3B0();

        if (os_log_type_enabled(v187, v188))
        {
          v189 = OUTLINED_FUNCTION_60();
          v190 = swift_slowAlloc();
          *v189 = 138412290;
          v191 = v370;
          v192 = _swift_stdlib_bridgeErrorToNSError();
          *(v189 + 4) = v192;
          *v190 = v192;
          _os_log_impl(&dword_2311CB000, v187, v188, "Unable to construct a tool invocation: %@", v189, 0xCu);
          sub_2311D1F18(v190, &qword_27DD433B0, &unk_23136EDC0);
          v193 = OUTLINED_FUNCTION_18_23();
          MEMORY[0x23192B930](v193);
          OUTLINED_FUNCTION_6_1();
          MEMORY[0x23192B930]();
        }

        v194 = v27[113];
        v195 = v27[106];
        v196 = v27[94];
        v197 = v27[92];
        v378 = v27[71];
        v198 = v27[68];
        v199 = v27[67];
        v200 = v27[62];

        v201 = OUTLINED_FUNCTION_115_0();
        v195(v201);
        sub_231342078(v200);
        v43 = (v358)(v378, v199);
        v52 = 0;
        goto LABEL_50;
      }

      ++v144;
    }

    while (!v27[v136]);
    OUTLINED_FUNCTION_32_15();
    v374 = v145;
LABEL_33:
    v146 = v142 | (v136 << 6);
    v147 = v384[52];
    v212 = v384[53];
    v148 = v384[51];
    v149 = (*(v367 + 48) + 16 * v146);
    v150 = v149[1];
    v379 = *v149;
    v151 = *(v367 + 56) + *(v147 + 72) * v146;
    v152 = OUTLINED_FUNCTION_43_14(v147);
    v153(v152);
    sub_231369EE0();
    v154 = sub_231369CD0();
    v156 = v155;
    v157 = *(v147 + 8);
    v158 = OUTLINED_FUNCTION_27();
    v159(v158);
    OUTLINED_FUNCTION_155();
    OUTLINED_FUNCTION_78_6(v160);
    v161 = (v363[6] + 16 * v146);
    *v161 = v379;
    v161[1] = v150;
    v162 = (v363[7] + 16 * v146);
    *v162 = v154;
    v162[1] = v156;
    v163 = v363[2];
    v164 = __OFADD__(v163, 1);
    v165 = v163 + 1;
    if (!v164)
    {
      v363[2] = v165;
      if (!v374)
      {
        continue;
      }

LABEL_27:
      OUTLINED_FUNCTION_53_0();
      v374 = v143;
      goto LABEL_33;
    }

    break;
  }

LABEL_68:
  __break(1u);
  return MEMORY[0x2821C6E60](v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2313372A4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = v3[123];
  v5 = v3[50];
  v6 = v3[48];
  v7 = v3[47];
  v8 = v3[46];
  v9 = v3[45];
  v10 = v3[44];
  v11 = v3[43];
  v12 = v3[42];
  v13 = *v0;
  OUTLINED_FUNCTION_2();
  *v14 = v13;
  *(v16 + 992) = v15;

  sub_2311D1F18(v12, &qword_27DD42F18, &unk_23136B810);
  v17 = *(v10 + 8);
  v18 = OUTLINED_FUNCTION_54_0();
  v19(v18);
  sub_2311D1F18(v8, &qword_27DD43F00, &unk_231375F50);
  v20 = *(v6 + 8);
  v21 = OUTLINED_FUNCTION_27();
  v22(v21);
  v23 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_23133749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v340 = v20;
  v26 = v20[124];
  if (v26)
  {
    v27 = *(v26 + 16);
    v20[125] = v27;
    if (v27)
    {
      v20[126] = 0;
      v28 = v20[41];
      sub_2311CF324(v26 + 32, (v20 + 13));
      v29 = v20[16];
      __swift_project_boxed_opaque_existential_1(v20 + 13, v29);
      OUTLINED_FUNCTION_38();
      sub_231368300();
      OUTLINED_FUNCTION_85_3();
      v20[127] = v30;
      v20[128] = v31;
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_170(ObjectType);
      v33 = *(*(v29 + 8) + 8);
      sub_23136A260();
      OUTLINED_FUNCTION_46_14();
      OUTLINED_FUNCTION_36_15();

      return MEMORY[0x2822009F8](v34, v35, v36);
    }

    OUTLINED_FUNCTION_171();
    sub_2313690F0();
    v47 = OUTLINED_FUNCTION_28_0();
    sub_2313420D4(v47, v48);
    v49 = OUTLINED_FUNCTION_115_0();
    sub_2313420D4(v49, v50);
    v51 = OUTLINED_FUNCTION_159();
    sub_2313420D4(v51, v52);
    v53 = sub_2313698A0();
    v54 = sub_23136A3C0();
    OUTLINED_FUNCTION_137_0(v54);
    OUTLINED_FUNCTION_102_0();
    if (v55)
    {
      v323 = v20[51];
      OUTLINED_FUNCTION_30_16();
      v332 = v22;
      v56 = swift_slowAlloc();
      swift_slowAlloc();
      OUTLINED_FUNCTION_125_1();
      v339[0] = v57;
      *v56 = 136315650;
      v20[30] = sub_231369970();
      v20[31] = v58;
      sub_23136A0E0();
      OUTLINED_FUNCTION_168();
      v59 = OUTLINED_FUNCTION_65();
      sub_2311CFD58(v59, v60, v61);
      OUTLINED_FUNCTION_10_11();

      OUTLINED_FUNCTION_167();
      v62 = sub_231342078(v25);
      OUTLINED_FUNCTION_166(v62, v63, v64, v65, v66, v67, v68, v69, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311);
      v71 = v70;
      sub_231369E90();
      OUTLINED_FUNCTION_135();
      sub_231342078(v24);
      v72 = OUTLINED_FUNCTION_28_0();
      sub_2311CFD58(v72, v73, v74);
      OUTLINED_FUNCTION_38();

      *(v56 + 24) = v71;
      OUTLINED_FUNCTION_165(&dword_2311CB000, v75, v76, "ContextualActionsGenerator:: Created AppIntent Suggestion from Tool: %s with coinfidence %f and parameters as %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      v328(v332);
    }

    else
    {

      sub_231342078(v24);
      sub_231342078(v25);
      sub_231342078(v18);
      v77 = OUTLINED_FUNCTION_40_8();
      v19(v77);
    }

    v78 = v20[124];
    v39 = v20;
    v79 = v20[119];
    v80 = *(v39 + 568);
    v44 = *(v39 + 536);
    v45 = *(v39 + 496);
    v21 = *(v39 + 544) + 8;
    v41 = (v39 + 256);
    sub_2312673B4();
    sub_231342078(v45);
    v81 = OUTLINED_FUNCTION_28_0();
    v79(v81);
  }

  else
  {
    v38 = v20[121];
    v39 = v20;
    v40 = v20[119];
    v41 = *(v39 + 568);
    v42 = *(v39 + 544);
    v43 = *(v39 + 536);
    v44 = *(v39 + 496);

    v45 = v42 + 8;
    sub_231342078(v44);
    v46 = OUTLINED_FUNCTION_27();
    v40(v46);
  }

  v333 = *(v39 + 976);
  v82 = v39;
  v338 = v39;
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_12:
        OUTLINED_FUNCTION_70_7();
        if (v90)
        {
          v212 = v82[112];
          v213 = v82[107];

          OUTLINED_FUNCTION_76_5();
          if (!v214)
          {
            v219 = v82[96];
            sub_2313690F0();
            sub_231369EE0();
            sub_231369EE0();
            v220 = v219;
            v221 = sub_2313698A0();
            sub_23136A3C0();
            OUTLINED_FUNCTION_179();
            OUTLINED_FUNCTION_178();
            OUTLINED_FUNCTION_75_5();
            v335 = v222;
            OUTLINED_FUNCTION_73_5();
            if (v223)
            {
              OUTLINED_FUNCTION_94_1();
              swift_slowAlloc();
              OUTLINED_FUNCTION_125_1();
              OUTLINED_FUNCTION_30_16();
              v224 = swift_slowAlloc();
              OUTLINED_FUNCTION_92_2(v224);
              OUTLINED_FUNCTION_55_11(3.8521e-34);
              OUTLINED_FUNCTION_156();
              MEMORY[0x23192A860](MEMORY[0x277D84F90], MEMORY[0x277D837D0]);
              OUTLINED_FUNCTION_85_3();

              v225 = OUTLINED_FUNCTION_28();
              sub_2311CFD58(v225, v226, v227);
              OUTLINED_FUNCTION_38();

              *(v23 + 14) = v220;
              OUTLINED_FUNCTION_54_11(&dword_2311CB000, v228, v229, "ContextualActionsGenerator:: Returning %ld Candidate Suggestions: %s");
              OUTLINED_FUNCTION_26_2();
              OUTLINED_FUNCTION_6_1();
              MEMORY[0x23192B930]();

              (v24)(v335, v21);
              (*(v45 + 8))(v220, v330);
            }

            else
            {

              (v24)(v335, v21);
              v230 = *(v45 + 8);
              v231 = OUTLINED_FUNCTION_68_1();
              v233(v231, v232);
            }

            v336 = v82[133];
            OUTLINED_FUNCTION_1_44();
            OUTLINED_FUNCTION_7_25();
            v312 = v82[58];
            v313 = v82[57];
            v314 = v82[55];
            v316 = v82[54];
            v317 = v82[53];
            v318 = v82[50];
            v319 = v82[49];
            v322 = v82[46];
            v324 = v82[45];
            v326 = v82[42];
            v329 = v82[41];
            v331 = v82[38];

            OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_36_15();

            __asm { BRAA            X2, X16 }
          }

          OUTLINED_FUNCTION_97_1(MEMORY[0x277D84F90]);
          OUTLINED_FUNCTION_57_12();
          v215 = *(MEMORY[0x277D60F68] + 4);
          v216 = swift_task_alloc();
          v217 = OUTLINED_FUNCTION_77_4(v216);
          *v217 = v218;
          OUTLINED_FUNCTION_2_29(v217);
          OUTLINED_FUNCTION_29_15();
          OUTLINED_FUNCTION_36_15();

          return MEMORY[0x2821C6E60](v145, v146, v147, v148, v149, v150, v151, v152, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
        }

        v82[116] = v83;
        OUTLINED_FUNCTION_69_8();
        if (v85)
        {
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          v267 = *(v24 + 1120);
          v268 = *(v24 + 1116);
          v269 = *(v24 + 1112);
          v270 = *(v24 + 384);
          v272 = *(v24 + 368);
          v271 = *(v24 + 376);
          v273 = *(v24 + 352);
          v274 = *(v24 + 360);
          v276 = *(v24 + 336);
          v275 = *(v24 + 344);
          **(v24 + 392) = v41;
          (*(v270 + 104))();
          sub_231369330();
          v277 = OUTLINED_FUNCTION_19_21();
          __swift_storeEnumTagSinglePayload(v277, v278, v279, v280);
          v281 = *(v273 + 104);
          v282 = OUTLINED_FUNCTION_60_8();
          v283(v282);
          v284 = sub_231367D80();
          OUTLINED_FUNCTION_11(v284);
          v286 = *(v285 + 104);
          v287 = OUTLINED_FUNCTION_63_8();
          v288(v287);
          OUTLINED_FUNCTION_62_2();
          __swift_storeEnumTagSinglePayload(v289, v290, v291, v292);
          OUTLINED_FUNCTION_80_6(MEMORY[0x277D61200]);
          v293 = v41;
          v294 = swift_task_alloc();
          *(v24 + 1048) = v294;
          *v294 = v24;
          OUTLINED_FUNCTION_4_28();
          v296 = *(v24 + 360);
          v295 = *(v24 + 368);
          v297 = *(v24 + 336);
          v298 = *(v24 + 272);
          OUTLINED_FUNCTION_79_5(*(v24 + 392));
LABEL_68:
          OUTLINED_FUNCTION_36_15();

          __asm { BR              X4 }
        }

        v86 = OUTLINED_FUNCTION_9_28(v84);
        (v44)(v86);
        sub_231369980();
        v87 = OUTLINED_FUNCTION_68_7();
        v88(v87);
        OUTLINED_FUNCTION_5_30();
        sub_231341F84(&qword_27DD44A10, v89);
        OUTLINED_FUNCTION_74_7();
        OUTLINED_FUNCTION_66_1();
        sub_23136A140();
        OUTLINED_FUNCTION_21_23();
        v90 = v90 && v39 == v45;
        if (v90)
        {
          break;
        }

        v91 = OUTLINED_FUNCTION_138_0();
        v92 = OUTLINED_FUNCTION_42_14();
        (v24)(v92);
        v93 = OUTLINED_FUNCTION_71();
        (v24)(v93);

        if (v91)
        {
          goto LABEL_25;
        }

        v24 = v338;
        v94 = v338[71];
        v338[22] = sub_231369970();
        v338[23] = v95;
        v338[24] = 46;
        v338[25] = 0xE100000000000000;
        sub_231207C1C();
        OUTLINED_FUNCTION_177();
        OUTLINED_FUNCTION_10_11();

        OUTLINED_FUNCTION_149();
        if (v97)
        {
          OUTLINED_FUNCTION_100_1(v96);

          OUTLINED_FUNCTION_28_0();
          sub_23133F88C();
          OUTLINED_FUNCTION_147_0();
          if (!v90)
          {
            v98 = v338[56];
            v99 = v338[54];
            v100 = v338[35];
            sub_23133B820(v338[71], v338[107]);
            OUTLINED_FUNCTION_38_12(v99);
            if (v90)
            {
              sub_2311D1F18(v338[54], &qword_27DD44B78, &qword_231378720);
            }

            else
            {
              v180 = v338[107];
              v181 = v338[35];
              sub_231342014(v338[54], v338[58]);
              type metadata accessor for INIntentFactory();
              sub_23133D740(v180, v182, v183, v184, v185, v186, v187, v188, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311);
              v189 = OUTLINED_FUNCTION_115_1();
              v41 = sub_23133DA58(v189, v190);
              v338[130] = v41;

              if (v41)
              {
                goto LABEL_73;
              }

              sub_231342078(v338[58]);
            }
          }
        }

        else
        {
        }

        v191 = v338[118];
        v192 = v338[117];
        v193 = v338[97];
        v194 = v338[71];
        v195 = v338[69];
        v196 = v338[67];
        sub_2313690F0();
        v197 = OUTLINED_FUNCTION_65();
        v192(v197);
        v82 = v338;
        v45 = sub_2313698A0();
        v23 = sub_23136A3C0();
        v198 = OUTLINED_FUNCTION_137_0(v23);
        v199 = v338[113];
        v44 = v338[106];
        v25 = v338[97];
        v334 = v338[92];
        v21 = v338[71];
        v41 = v338[69];
        v200 = v338[68];
        v39 = v338[67];
        if (v198)
        {
          v330 = v338[106];
          v44 = OUTLINED_FUNCTION_60();
          OUTLINED_FUNCTION_30_16();
          v201 = swift_slowAlloc();
          v328 = v199;
          *v44 = OUTLINED_FUNCTION_59_9(v201).n128_u32[0];
          v338[26] = sub_231369970();
          v338[27] = v202;
          v323 = v25;
          v325 = v21;
          v21 = sub_23136A0E0();
          v25 = v203;
          v204 = v39;
          v321 = v39;
          v205 = *(v200 + 8);
          v24 = v200 + 8;
          v39 = v205;
          v205(v41, v204);
          v206 = OUTLINED_FUNCTION_143_0();
          v41 = sub_2311CFD58(v206, v207, v208);

          *(v44 + 4) = v41;
          _os_log_impl(&dword_2311CB000, v45, v23, "ContextualActionsGenerator:: Skipping Tool: %s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v199);
          OUTLINED_FUNCTION_6_1();
          MEMORY[0x23192B930]();
          OUTLINED_FUNCTION_6_1();
          MEMORY[0x23192B930]();

          v330(v323, v334);
          v205(v325, v321);
        }

        else
        {

          v209 = *(v200 + 8);
          v24 = v200 + 8;
          v210 = OUTLINED_FUNCTION_106_2();
          v209(v210);
          (v44)(v25, v334);
          v211 = OUTLINED_FUNCTION_71();
          v209(v211);
          v82 = v338;
        }

        v333 = v82[115];
      }

      v101 = *v25;
      (*v25)(v23, v39);
      v102 = OUTLINED_FUNCTION_71();
      v101(v102);

LABEL_25:
      v82 = v338;
      OUTLINED_FUNCTION_65_7();
      v103 = OUTLINED_FUNCTION_116_1();
      (v44)(v103);
      v45 = sub_2313698A0();
      v104 = sub_23136A3C0();
      v105 = OUTLINED_FUNCTION_137_0(v104);
      v44 = v338[113];
      v39 = v338[106];
      v23 = v338[101];
      v25 = v338[92];
      v106 = v338[70];
      v24 = v338[68];
      v21 = v338[67];
      if (v105)
      {
        v330 = v338[92];
        v25 = OUTLINED_FUNCTION_60();
        OUTLINED_FUNCTION_30_16();
        v107 = swift_slowAlloc();
        *v25 = OUTLINED_FUNCTION_59_9(v107).n128_u32[0];
        sub_231369950();
        v108 = OUTLINED_FUNCTION_89_0();
        (v23)(v108);
        OUTLINED_FUNCTION_164();
        OUTLINED_FUNCTION_38();

        *(v25 + 4) = v106;
        _os_log_impl(&dword_2311CB000, v45, v104, "ContextualActionsGenerator:: Hydrated Tools %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v104);
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();

        (v328)(v323, v330);
      }

      else
      {

        v104 = *(v24 + 8);
        v109 = OUTLINED_FUNCTION_55_7();
        (v104)(v109);
        v24 = v104;
        (v39)(v23, v25);
      }

      v338[119] = v24;
      v41 = v338[71];
      sub_23133B60C();
      v338[120] = v110;
      v338[121] = v111;
      if (v111)
      {
        break;
      }

      v113 = OUTLINED_FUNCTION_27_15();
      (v24)(v113);
    }

    OUTLINED_FUNCTION_122_1();
    sub_23133B820(v104, v39);
    OUTLINED_FUNCTION_53(v21);
    if (!v90)
    {
      break;
    }

    v112 = OUTLINED_FUNCTION_27_15();
    v41 = v338[55];
    (v24)(v112);

    sub_2311D1F18(v41, &qword_27DD44B78, &qword_231378720);
  }

  v315 = v24;
  v114 = OUTLINED_FUNCTION_139_0();
  sub_23133C730(v114, v115, v116, v117, v118, v119, v120, v121, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311);
  v123 = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445B8, &qword_231374970);
  OUTLINED_FUNCTION_38();
  sub_23136A770();
  OUTLINED_FUNCTION_142_0();
  v320 = v124;
  v323 = v123;
  v125 = *(v123 + 32);
  OUTLINED_FUNCTION_11_26();
  v24 = v126 >> 6;
  if (v127)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v130 = v39;
    do
    {
      v39 = v130 + 1;
      if (__OFADD__(v130, 1))
      {
        goto LABEL_72;
      }

      if (v39 >= v24)
      {
        v158 = v82[100];

        sub_2313690F0();

        v159 = sub_2313698A0();
        v160 = sub_23136A3C0();

        os_log_type_enabled(v159, v160);
        OUTLINED_FUNCTION_145();
        if (v161)
        {
          v330 = v21;
          v162 = OUTLINED_FUNCTION_60();
          OUTLINED_FUNCTION_30_16();
          v163 = swift_slowAlloc();
          OUTLINED_FUNCTION_92_2(v163);
          *v162 = 136315138;
          sub_231369E90();
          OUTLINED_FUNCTION_173();
          v164 = sub_2311CFD58(v123, v39, v339);

          *(v162 + 4) = v164;
          _os_log_impl(&dword_2311CB000, v159, v160, "ContextualActionsGenerator:: Hydrated Tool Params %s", v162, 0xCu);
          OUTLINED_FUNCTION_26_2();
          OUTLINED_FUNCTION_6_1();
          MEMORY[0x23192B930]();

          v165 = (v330)(v325, v23);
        }

        else
        {

          v166 = OUTLINED_FUNCTION_40_8();
          v165 = (v21)(v166);
        }

        v167 = v82[62];
        v168 = v82[50];
        v44 = v333;
        sub_23133CF94(v165);
        v82[122] = v333;
        if (!v333)
        {
          OUTLINED_FUNCTION_118_0();
          v337 = v236;
          OUTLINED_FUNCTION_127_1();
          v238 = v82[47];
          v237 = v82[48];
          v239 = v82[46];
          v327 = v82[45];
          v241 = v82[43];
          v240 = v82[44];
          v242 = v82[42];
          v243 = sub_231367560();
          OUTLINED_FUNCTION_11(v243);
          v245 = *(v244 + 104);
          v246 = OUTLINED_FUNCTION_66_1();
          v247(v246);
          v248 = *(v237 + 104);
          v249 = OUTLINED_FUNCTION_62_9();
          v250(v249);
          sub_231369330();
          OUTLINED_FUNCTION_52();
          __swift_storeEnumTagSinglePayload(v251, v252, v253, v254);
          v255 = *(v240 + 104);
          v256 = OUTLINED_FUNCTION_121_1();
          v257(v256);
          sub_23133D0C8();
          v258 = OUTLINED_FUNCTION_181();
          OUTLINED_FUNCTION_11(v258);
          (*(v259 + 104))(v242, v337, v258);
          OUTLINED_FUNCTION_26_20();
          __swift_storeEnumTagSinglePayload(v260, v261, v262, v263);
          OUTLINED_FUNCTION_57_1(MEMORY[0x277D61200]);
          v264 = swift_task_alloc();
          v82[123] = v264;
          *v264 = v82;
          OUTLINED_FUNCTION_3_37();
          OUTLINED_FUNCTION_23_17();
          goto LABEL_68;
        }

        v169 = v82[94];

        sub_2313690F0();
        v170 = v333;
        v171 = sub_2313698A0();
        v172 = sub_23136A3B0();

        if (os_log_type_enabled(v171, v172))
        {
          OUTLINED_FUNCTION_60();
          v173 = OUTLINED_FUNCTION_136_0();
          *v104 = 138412290;
          v174 = v333;
          v175 = _swift_stdlib_bridgeErrorToNSError();
          *(v104 + 4) = v175;
          *v173 = v175;
          OUTLINED_FUNCTION_141_0(&dword_2311CB000, v171, v172, "Unable to construct a tool invocation: %@");
          sub_2311D1F18(v173, &qword_27DD433B0, &unk_23136EDC0);
          v176 = OUTLINED_FUNCTION_18_23();
          MEMORY[0x23192B930](v176);
          OUTLINED_FUNCTION_6_1();
          MEMORY[0x23192B930]();
        }

        v177 = v338[113];
        v23 = v338[106];
        v178 = v338[94];
        v25 = v338[92];
        v45 = v338[71];
        v24 = v338[68];
        v21 = v338[67];
        v39 = v338[62];

        v41 = (v24 + 8);
        (v23)(v178, v25);
        v82 = v338;
        sub_231342078(v39);
        v179 = OUTLINED_FUNCTION_54_0();
        v315(v179);
        v333 = 0;
        goto LABEL_12;
      }

      ++v130;
    }

    while (!*(v25 + 8 * v39));
    OUTLINED_FUNCTION_32_15();
    v325 = v131;
LABEL_40:
    v21 = v128 | (v39 << 6);
    v132 = v82;
    v134 = v82 + 52;
    v133 = v82[52];
    v41 = v134[1];
    v135 = v132[51];
    OUTLINED_FUNCTION_157();
    v137 = v136 + *(v133 + 72) * v21;
    v138 = OUTLINED_FUNCTION_43_14(v133);
    v139(v138);
    sub_231369EE0();
    v328 = sub_231369CD0();
    v23 = v140;
    v141 = *(v133 + 8);
    v142 = OUTLINED_FUNCTION_27();
    v143(v142);
    OUTLINED_FUNCTION_155();
    OUTLINED_FUNCTION_78_6(v144);
    v104 = v320;
    v153 = (v320[6] + 16 * v21);
    *v153 = v330;
    v153[1] = v123;
    v154 = (v320[7] + 16 * v21);
    *v154 = v328;
    v154[1] = v23;
    v155 = v320[2];
    v156 = __OFADD__(v155, 1);
    v157 = v155 + 1;
    if (!v156)
    {
      v320[2] = v157;
      v82 = v338;
      if (!v325)
      {
        continue;
      }

LABEL_34:
      OUTLINED_FUNCTION_53_0();
      v325 = v129;
      goto LABEL_40;
    }

    break;
  }

  __break(1u);
  return MEMORY[0x2821C6E60](v145, v146, v147, v148, v149, v150, v151, v152, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_231338634()
{
  v1 = v0[129];
  v2 = v0[128];
  v3 = v0[127];
  v4 = v0[121];
  v5 = v0[120];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[39];
  sub_231369440();
  swift_unknownObjectRelease();
  v9 = *(v7 + 8);
  v10 = OUTLINED_FUNCTION_28_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2313386D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v332 = v19;
  v24 = v19[125];
  v25 = v19[126] + 1;
  __swift_destroy_boxed_opaque_existential_1Tm(v19 + 13);
  if (v25 != v24)
  {
    v56 = v19[126];
    v19[126] = v56 + 1;
    v57 = v19[41];
    sub_2311CF324(v19[124] + 40 * v56 + 72, (v19 + 13));
    v58 = v19[16];
    __swift_project_boxed_opaque_existential_1(v19 + 13, v58);
    OUTLINED_FUNCTION_38();
    sub_231368300();
    OUTLINED_FUNCTION_85_3();
    v19[127] = v59;
    v19[128] = v60;
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_170(ObjectType);
    v62 = *(*(v58 + 8) + 8);
    v63 = sub_23136A260();
    OUTLINED_FUNCTION_46_14(v63);
    OUTLINED_FUNCTION_36_15();

    return MEMORY[0x2822009F8](v64, v65, v66);
  }

  OUTLINED_FUNCTION_171();
  sub_2313690F0();
  v26 = OUTLINED_FUNCTION_28_0();
  sub_2313420D4(v26, v27);
  v28 = OUTLINED_FUNCTION_115_0();
  sub_2313420D4(v28, v29);
  v30 = OUTLINED_FUNCTION_159();
  sub_2313420D4(v30, v31);
  v32 = sub_2313698A0();
  v33 = sub_23136A3C0();
  OUTLINED_FUNCTION_137_0(v33);
  OUTLINED_FUNCTION_102_0();
  if (v34)
  {
    v316 = v19[51];
    OUTLINED_FUNCTION_30_16();
    v326 = v20;
    v35 = swift_slowAlloc();
    swift_slowAlloc();
    OUTLINED_FUNCTION_125_1();
    v331[0] = v36;
    *v35 = 136315650;
    v19[30] = sub_231369970();
    v19[31] = v37;
    sub_23136A0E0();
    OUTLINED_FUNCTION_168();
    v38 = OUTLINED_FUNCTION_65();
    sub_2311CFD58(v38, v39, v40);
    OUTLINED_FUNCTION_10_11();

    OUTLINED_FUNCTION_167();
    v41 = sub_231342078(v23);
    OUTLINED_FUNCTION_166(v41, v42, v43, v44, v45, v46, v47, v48, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299);
    v50 = v49;
    sub_231369E90();
    OUTLINED_FUNCTION_135();
    sub_231342078(v22);
    v51 = OUTLINED_FUNCTION_28_0();
    sub_2311CFD58(v51, v52, v53);
    OUTLINED_FUNCTION_38();

    *(v35 + 24) = v50;
    OUTLINED_FUNCTION_165(&dword_2311CB000, v54, v55, "ContextualActionsGenerator:: Created AppIntent Suggestion from Tool: %s with coinfidence %f and parameters as %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();

    v321(v326);
  }

  else
  {

    sub_231342078(v22);
    sub_231342078(v23);
    sub_231342078(v24);
    v68 = OUTLINED_FUNCTION_40_8();
    v18(v68);
  }

  v69 = v19[124];
  v70 = v19[119];
  v71 = v19[71];
  v72 = v19[67];
  v73 = v19[62];
  v74 = v19[68] + 8;
  v75 = v19 + 32;
  sub_2312673B4();
  sub_231342078(v73);
  v76 = OUTLINED_FUNCTION_28_0();
  v77 = v70(v76);
  v327 = v19[122];
  v77.n128_u64[0] = 138412290;
  v312 = v77;
  v325 = v19;
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_9:
        OUTLINED_FUNCTION_70_7();
        if (v85)
        {
          v207 = v19[112];
          v208 = v19[107];

          OUTLINED_FUNCTION_76_5();
          if (!v209)
          {
            v214 = v19[96];
            sub_2313690F0();
            sub_231369EE0();
            sub_231369EE0();
            v215 = v214;
            v216 = sub_2313698A0();
            sub_23136A3C0();
            OUTLINED_FUNCTION_179();
            OUTLINED_FUNCTION_178();
            OUTLINED_FUNCTION_75_5();
            OUTLINED_FUNCTION_73_5();
            if (v217)
            {
              OUTLINED_FUNCTION_94_1();
              swift_slowAlloc();
              OUTLINED_FUNCTION_125_1();
              OUTLINED_FUNCTION_30_16();
              v218 = swift_slowAlloc();
              OUTLINED_FUNCTION_92_2(v218);
              OUTLINED_FUNCTION_55_11(3.8521e-34);
              OUTLINED_FUNCTION_156();
              MEMORY[0x23192A860](MEMORY[0x277D84F90], MEMORY[0x277D837D0]);
              OUTLINED_FUNCTION_85_3();

              v219 = OUTLINED_FUNCTION_28();
              sub_2311CFD58(v219, v220, v221);
              OUTLINED_FUNCTION_38();

              *(v21 + 14) = v215;
              OUTLINED_FUNCTION_54_11(&dword_2311CB000, v222, v223, "ContextualActionsGenerator:: Returning %ld Candidate Suggestions: %s");
              OUTLINED_FUNCTION_26_2();
              OUTLINED_FUNCTION_6_1();
              MEMORY[0x23192B930]();

              v224 = OUTLINED_FUNCTION_112_1();
              (v22)(v224);
              (*(v73 + 8))(v215, v323);
            }

            else
            {

              v225 = OUTLINED_FUNCTION_112_1();
              (v22)(v225);
              v226 = *(v73 + 8);
              v227 = OUTLINED_FUNCTION_68_1();
              v229(v227, v228);
            }

            v329 = v19[133];
            OUTLINED_FUNCTION_1_44();
            OUTLINED_FUNCTION_6_28();
            OUTLINED_FUNCTION_91_1();
            v315 = v19[46];
            v317 = v19[45];
            v319 = v19[42];
            v322 = v19[41];
            v324 = v19[38];

            OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_36_15();

            __asm { BRAA            X2, X16 }
          }

          OUTLINED_FUNCTION_97_1(MEMORY[0x277D84F90]);
          OUTLINED_FUNCTION_57_12();
          v210 = *(MEMORY[0x277D60F68] + 4);
          v211 = swift_task_alloc();
          v212 = OUTLINED_FUNCTION_77_4(v211);
          *v212 = v213;
          OUTLINED_FUNCTION_2_29(v212);
          OUTLINED_FUNCTION_29_15();
          OUTLINED_FUNCTION_36_15();

          return MEMORY[0x2821C6E60](v143, v144, v145, v146, v147, v148, v149, v150, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
        }

        v19[116] = v78;
        OUTLINED_FUNCTION_69_8();
        if (v80)
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          v263 = OUTLINED_FUNCTION_81_5();
          v264(v263);
          sub_231369330();
          v265 = OUTLINED_FUNCTION_19_21();
          __swift_storeEnumTagSinglePayload(v265, v266, v267, v268);
          v269 = *(v22 + 104);
          v270 = OUTLINED_FUNCTION_60_8();
          v271(v270);
          v272 = sub_231367D80();
          OUTLINED_FUNCTION_11(v272);
          v274 = *(v273 + 104);
          v275 = OUTLINED_FUNCTION_63_8();
          v276(v275);
          OUTLINED_FUNCTION_62_2();
          __swift_storeEnumTagSinglePayload(v277, v278, v279, v280);
          OUTLINED_FUNCTION_80_6(MEMORY[0x277D61200]);
          v281 = v75;
          v282 = swift_task_alloc();
          v19[131] = v282;
          *v282 = v19;
          OUTLINED_FUNCTION_4_28();
          v284 = v19[45];
          v283 = v19[46];
          v285 = v19[42];
          v286 = v19[34];
          OUTLINED_FUNCTION_79_5(v19[49]);
LABEL_65:
          OUTLINED_FUNCTION_36_15();

          __asm { BR              X4 }
        }

        v81 = OUTLINED_FUNCTION_9_28(v79);
        (v72)(v81);
        sub_231369980();
        v82 = OUTLINED_FUNCTION_68_7();
        v83(v82);
        OUTLINED_FUNCTION_5_30();
        sub_231341F84(&qword_27DD44A10, v84);
        OUTLINED_FUNCTION_74_7();
        OUTLINED_FUNCTION_66_1();
        sub_23136A140();
        OUTLINED_FUNCTION_21_23();
        v85 = v85 && v74 == v73;
        if (v85)
        {
          break;
        }

        LODWORD(v323) = OUTLINED_FUNCTION_138_0();
        v86 = OUTLINED_FUNCTION_42_14();
        (v22)(v86);
        v87 = OUTLINED_FUNCTION_71();
        (v22)(v87);

        if (v323)
        {
          goto LABEL_22;
        }

        v88 = v19[71];
        v89 = sub_231369970();
        v91 = v90;
        v19[22] = v89;
        v19[23] = v90;
        v19[24] = 46;
        v19[25] = 0xE100000000000000;
        sub_231207C1C();
        OUTLINED_FUNCTION_177();
        OUTLINED_FUNCTION_10_11();

        OUTLINED_FUNCTION_149();
        if (v93)
        {
          OUTLINED_FUNCTION_100_1(v92);

          OUTLINED_FUNCTION_28_0();
          sub_23133F88C();
          OUTLINED_FUNCTION_147_0();
          if (!v85)
          {
            v91 = v19[56];
            v94 = v19[54];
            v95 = v19[35];
            sub_23133B820(v19[71], v19[107]);
            OUTLINED_FUNCTION_38_12(v94);
            if (v85)
            {
              sub_2311D1F18(v19[54], &qword_27DD44B78, &qword_231378720);
            }

            else
            {
              v91 = v19[107];
              v183 = v19[35];
              sub_231342014(v19[54], v19[58]);
              type metadata accessor for INIntentFactory();
              sub_23133D740(v91, v184, v185, v186, v187, v188, v189, v190, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299);
              v191 = OUTLINED_FUNCTION_115_1();
              v75 = sub_23133DA58(v191, v192);
              v19[130] = v75;

              if (v75)
              {
                goto LABEL_70;
              }

              sub_231342078(v19[58]);
            }
          }
        }

        else
        {
        }

        OUTLINED_FUNCTION_111_1();
        v193 = OUTLINED_FUNCTION_65();
        (v74)(v193);
        v73 = sub_2313698A0();
        v21 = sub_23136A3C0();
        v194 = OUTLINED_FUNCTION_137_0(v21);
        v72 = v19[113];
        v195 = v19[106];
        v328 = v19[97];
        v323 = v19[92];
        v196 = v19[71];
        v75 = v19[69];
        v197 = v19[68];
        v74 = v19[67];
        if (v194)
        {
          v321 = v19[113];
          v72 = OUTLINED_FUNCTION_60();
          OUTLINED_FUNCTION_30_16();
          v198 = swift_slowAlloc();
          *v72 = OUTLINED_FUNCTION_59_9(v198).n128_u32[0];
          v19[26] = sub_231369970();
          v19[27] = v199;
          sub_23136A0E0();
          v316 = v195;
          v318 = v196;
          v200 = v74;
          v314 = v74;
          v201 = *(v197 + 8);
          v22 = v197 + 8;
          v74 = v201;
          v201(v75, v200);
          v202 = OUTLINED_FUNCTION_143_0();
          v75 = sub_2311CFD58(v202, v203, v204);

          *(v72 + 4) = v75;
          _os_log_impl(&dword_2311CB000, v73, v21, "ContextualActionsGenerator:: Skipping Tool: %s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v91);
          OUTLINED_FUNCTION_6_1();
          MEMORY[0x23192B930]();
          OUTLINED_FUNCTION_6_1();
          MEMORY[0x23192B930]();

          v195(v328, v323);
          v201(v196, v314);
        }

        else
        {

          v205 = *(v197 + 8);
          v22 = v197 + 8;
          v206 = OUTLINED_FUNCTION_106_2();
          v205(v206);
          v195(v328, v323);
          (v205)(v196, v74);
        }

        v327 = v19[115];
      }

      v96 = OUTLINED_FUNCTION_42_14();
      (v22)(v96);
      v97 = OUTLINED_FUNCTION_71();
      (v22)(v97);

LABEL_22:
      OUTLINED_FUNCTION_65_7();
      v98 = OUTLINED_FUNCTION_116_1();
      (v72)(v98);
      v73 = sub_2313698A0();
      v99 = v19;
      v100 = sub_23136A3C0();
      v101 = OUTLINED_FUNCTION_137_0(v100);
      v72 = v99[113];
      v74 = v99[106];
      v21 = v99[101];
      v102 = v99[92];
      v103 = v99[70];
      v22 = v99[68];
      v104 = v99[67];
      if (v101)
      {
        v323 = v99[92];
        v102 = OUTLINED_FUNCTION_60();
        OUTLINED_FUNCTION_30_16();
        v105 = swift_slowAlloc();
        *v102 = OUTLINED_FUNCTION_59_9(v105).n128_u32[0];
        sub_231369950();
        v106 = OUTLINED_FUNCTION_89_0();
        (v21)(v106);
        OUTLINED_FUNCTION_164();
        OUTLINED_FUNCTION_38();

        *(v102 + 4) = v103;
        _os_log_impl(&dword_2311CB000, v73, v100, "ContextualActionsGenerator:: Hydrated Tools %s", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v99);
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();

        (v321)(v316, v323);
      }

      else
      {

        v107 = *(v22 + 8);
        v108 = OUTLINED_FUNCTION_55_7();
        v107(v108);
        v22 = v107;
        (v74)(v21, v102);
      }

      v19 = v325;
      v325[119] = v22;
      v75 = v325[71];
      sub_23133B60C();
      v325[120] = v109;
      v325[121] = v110;
      if (v110)
      {
        break;
      }

      v112 = OUTLINED_FUNCTION_27_15();
      (v22)(v112);
    }

    OUTLINED_FUNCTION_122_1();
    sub_23133B820(v99, v74);
    OUTLINED_FUNCTION_53(v104);
    if (!v85)
    {
      break;
    }

    v111 = OUTLINED_FUNCTION_27_15();
    v75 = v325[55];
    (v22)(v111);

    sub_2311D1F18(v75, &qword_27DD44B78, &qword_231378720);
  }

  v311 = v22;
  v113 = OUTLINED_FUNCTION_139_0();
  sub_23133C730(v113, v114, v115, v116, v117, v118, v119, v120, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299);
  v122 = v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445B8, &qword_231374970);
  OUTLINED_FUNCTION_38();
  sub_23136A770();
  OUTLINED_FUNCTION_142_0();
  v313 = v123;
  v124 = *(v122 + 32);
  OUTLINED_FUNCTION_11_26();
  v22 = v125 >> 6;
  if (v126)
  {
    goto LABEL_31;
  }

  while (2)
  {
    v129 = v74;
    do
    {
      v74 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        goto LABEL_69;
      }

      if (v74 >= v22)
      {
        v156 = v325[100];

        sub_2313690F0();

        v157 = sub_2313698A0();
        v158 = sub_23136A3C0();

        os_log_type_enabled(v157, v158);
        OUTLINED_FUNCTION_145();
        if (v159)
        {
          v323 = v104;
          v160 = OUTLINED_FUNCTION_60();
          OUTLINED_FUNCTION_30_16();
          v161 = swift_slowAlloc();
          OUTLINED_FUNCTION_92_2(v161);
          *v160 = 136315138;
          sub_231369E90();
          OUTLINED_FUNCTION_173();
          v162 = sub_2311CFD58(v122, v74, v331);

          *(v160 + 4) = v162;
          _os_log_impl(&dword_2311CB000, v157, v158, "ContextualActionsGenerator:: Hydrated Tool Params %s", v160, 0xCu);
          OUTLINED_FUNCTION_26_2();
          OUTLINED_FUNCTION_6_1();
          MEMORY[0x23192B930]();

          v163 = v323(v318, v21);
        }

        else
        {

          v164 = OUTLINED_FUNCTION_40_8();
          v163 = (v104)(v164);
        }

        v165 = v325[62];
        v166 = v325[50];
        v72 = v327;
        sub_23133CF94(v163);
        v325[122] = v327;
        if (!v327)
        {
          OUTLINED_FUNCTION_118_0();
          v330 = v232;
          OUTLINED_FUNCTION_127_1();
          v234 = v325[47];
          v233 = v325[48];
          v235 = v325[46];
          v320 = v325[45];
          v237 = v325[43];
          v236 = v325[44];
          v238 = v325[42];
          v239 = sub_231367560();
          OUTLINED_FUNCTION_11(v239);
          v241 = *(v240 + 104);
          v242 = OUTLINED_FUNCTION_66_1();
          v243(v242);
          v244 = *(v233 + 104);
          v245 = OUTLINED_FUNCTION_62_9();
          v246(v245);
          sub_231369330();
          OUTLINED_FUNCTION_52();
          __swift_storeEnumTagSinglePayload(v247, v248, v249, v250);
          v251 = *(v236 + 104);
          v252 = OUTLINED_FUNCTION_121_1();
          v253(v252);
          sub_23133D0C8();
          v254 = OUTLINED_FUNCTION_181();
          OUTLINED_FUNCTION_11(v254);
          (*(v255 + 104))(v238, v330, v254);
          OUTLINED_FUNCTION_26_20();
          __swift_storeEnumTagSinglePayload(v256, v257, v258, v259);
          OUTLINED_FUNCTION_57_1(MEMORY[0x277D61200]);
          v260 = swift_task_alloc();
          v325[123] = v260;
          *v260 = v325;
          OUTLINED_FUNCTION_3_37();
          OUTLINED_FUNCTION_23_17();
          goto LABEL_65;
        }

        v167 = v325[94];

        sub_2313690F0();
        v168 = v327;
        v169 = sub_2313698A0();
        v170 = sub_23136A3B0();

        if (os_log_type_enabled(v169, v170))
        {
          OUTLINED_FUNCTION_60();
          v171 = OUTLINED_FUNCTION_136_0();
          OUTLINED_FUNCTION_169(v171, v172, v173, v174, v175, v176, v177, v178, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, *&v312);
          v179 = _swift_stdlib_bridgeErrorToNSError();
          *(v99 + 4) = v179;
          *v73 = v179;
          OUTLINED_FUNCTION_141_0(&dword_2311CB000, v169, v170, "Unable to construct a tool invocation: %@");
          sub_2311D1F18(v73, &qword_27DD433B0, &unk_23136EDC0);
          v180 = OUTLINED_FUNCTION_18_23();
          MEMORY[0x23192B930](v180);
          OUTLINED_FUNCTION_6_1();
          MEMORY[0x23192B930]();
        }

        OUTLINED_FUNCTION_87_0();
        v75 = (v158 + 8);
        v310 = v327;

        v181 = OUTLINED_FUNCTION_115_0();
        (v22)(v181);
        sub_231342078(v74);
        v182 = OUTLINED_FUNCTION_112_1();
        v311(v182);
        v327 = 0;
        goto LABEL_9;
      }

      ++v129;
    }

    while (!*(v102 + 8 * v74));
    OUTLINED_FUNCTION_32_15();
    v316 = v130;
LABEL_37:
    v104 = v127 | (v74 << 6);
    v131 = v325[52];
    v75 = v325[53];
    v132 = v325[51];
    OUTLINED_FUNCTION_157();
    v134 = v133 + *(v131 + 72) * v104;
    v135 = OUTLINED_FUNCTION_43_14(v131);
    v136(v135);
    sub_231369EE0();
    v137 = sub_231369CD0();
    v318 = v138;
    v321 = v137;
    v139 = *(v131 + 8);
    v21 = v131 + 8;
    v140 = OUTLINED_FUNCTION_27();
    v141(v140);
    OUTLINED_FUNCTION_155();
    v99 = v313;
    OUTLINED_FUNCTION_78_6(v142);
    v151 = (v313[6] + 16 * v104);
    *v151 = v323;
    v151[1] = v122;
    v152 = (v313[7] + 16 * v104);
    *v152 = v321;
    v152[1] = v318;
    v153 = v313[2];
    v154 = __OFADD__(v153, 1);
    v155 = v153 + 1;
    if (!v154)
    {
      v313[2] = v155;
      if (!v316)
      {
        continue;
      }

LABEL_31:
      OUTLINED_FUNCTION_53_0();
      v316 = v128;
      goto LABEL_37;
    }

    break;
  }

  __break(1u);
  return MEMORY[0x2821C6E60](v143, v144, v145, v146, v147, v148, v149, v150, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23133975C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = v3[131];
  v5 = v3[49];
  v6 = v3[48];
  v7 = v3[47];
  v8 = v3[46];
  v9 = v3[45];
  v10 = v3[44];
  v11 = v3[43];
  v12 = v3[42];
  v13 = *v0;
  OUTLINED_FUNCTION_2();
  *v14 = v13;
  *(v16 + 1056) = v15;

  sub_2311D1F18(v12, &qword_27DD42F18, &unk_23136B810);
  v17 = *(v10 + 8);
  v18 = OUTLINED_FUNCTION_54_0();
  v19(v18);
  sub_2311D1F18(v8, &qword_27DD43F00, &unk_231375F50);
  v20 = *(v6 + 8);
  v21 = OUTLINED_FUNCTION_27();
  v22(v21);
  v23 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_231339954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v324 = v18;
  if (!*(v18 + 1056))
  {
    v39 = *(v18 + 1040);
    sub_231342078(*(v18 + 464));

    goto LABEL_59;
  }

  v20 = *(v18 + 784);
  v21 = *(v18 + 456);
  sub_2313690F0();
  v22 = OUTLINED_FUNCTION_67_0();
  sub_2313420D4(v22, v23);
  v24 = sub_2313698A0();
  v25 = sub_23136A3C0();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v18 + 904);
  v28 = *(v18 + 848);
  v29 = *(v18 + 784);
  v30 = *(v18 + 736);
  v31 = *(v18 + 456);
  if (v26)
  {
    v318 = *(v18 + 848);
    v32 = OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_30_16();
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_92_2(v33);
    *v32 = 136315138;
    *(v18 + 224) = sub_231369970();
    *(v18 + 232) = v34;
    v35 = sub_23136A0E0();
    v37 = v36;
    sub_231342078(v31);
    v38 = sub_2311CFD58(v35, v37, v323);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_2311CB000, v24, v25, "ContextualActionsGenerator:: Created INIntent Suggestion from Tool: %s", v32, 0xCu);
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();

    v318(v29, v30);
  }

  else
  {

    sub_231342078(v31);
    v28(v29, v30);
  }

  v19 = *(v18 + 1040);
  v40 = *(v18 + 568);
  v41 = *(v18 + 544);
  v42 = *(v18 + 536);
  v43 = *(v18 + 464);
  v44 = (v18 + 256);
  sub_2312673B4();

  sub_231342078(v43);
  v46 = *(v41 + 8);
  v45 = (v41 + 8);
  v46(v40, v42);
LABEL_62:
  v319 = *(v18 + 920);
  v47.n128_u64[0] = 138412290;
  v292 = v47;
  while (1)
  {
    while (1)
    {
LABEL_7:
      OUTLINED_FUNCTION_70_7();
      if (v55)
      {
        v161 = *(v18 + 896);
        v162 = *(v18 + 856);

        OUTLINED_FUNCTION_76_5();
        if (!v163)
        {
          v175 = *(v18 + 768);
          sub_2313690F0();
          sub_231369EE0();
          sub_231369EE0();
          v176 = v175;
          v177 = sub_2313698A0();
          sub_23136A3C0();
          OUTLINED_FUNCTION_179();
          OUTLINED_FUNCTION_178();
          OUTLINED_FUNCTION_75_5();
          OUTLINED_FUNCTION_73_5();
          if (v178)
          {
            OUTLINED_FUNCTION_94_1();
            v314 = v45;
            v179 = swift_slowAlloc();
            OUTLINED_FUNCTION_30_16();
            v180 = swift_slowAlloc();
            OUTLINED_FUNCTION_92_2(v180);
            OUTLINED_FUNCTION_55_11(3.8521e-34);
            OUTLINED_FUNCTION_156();
            MEMORY[0x23192A860](MEMORY[0x277D84F90], MEMORY[0x277D837D0]);
            OUTLINED_FUNCTION_85_3();

            v181 = OUTLINED_FUNCTION_28();
            sub_2311CFD58(v181, v182, v183);
            OUTLINED_FUNCTION_38();

            *(v179 + 14) = v176;
            OUTLINED_FUNCTION_54_11(&dword_2311CB000, v184, v185, "ContextualActionsGenerator:: Returning %ld Candidate Suggestions: %s");
            OUTLINED_FUNCTION_26_2();
            OUTLINED_FUNCTION_6_1();
            MEMORY[0x23192B930]();

            v186 = OUTLINED_FUNCTION_112_1();
            (v29)(v186);
            (*(v42 + 8))(v176, v314);
          }

          else
          {

            v187 = OUTLINED_FUNCTION_112_1();
            (v29)(v187);
            v188 = *(v42 + 8);
            v189 = OUTLINED_FUNCTION_68_1();
            v191(v189, v190);
          }

          v320 = *(v18 + 1064);
          OUTLINED_FUNCTION_1_44();
          OUTLINED_FUNCTION_6_28();
          OUTLINED_FUNCTION_91_1();
          v295 = *(v18 + 368);
          v299 = *(v18 + 360);
          v304 = *(v18 + 336);
          v307 = *(v18 + 328);
          v315 = *(v18 + 304);

          OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_134_0();

          __asm { BRAA            X2, X16 }
        }

        OUTLINED_FUNCTION_97_1(MEMORY[0x277D84F90]);
        OUTLINED_FUNCTION_57_12();
        v164 = *(MEMORY[0x277D60F68] + 4);
        v165 = swift_task_alloc();
        v166 = OUTLINED_FUNCTION_77_4(v165);
        *v166 = v167;
        OUTLINED_FUNCTION_2_29(v166);
        OUTLINED_FUNCTION_29_15();
        OUTLINED_FUNCTION_134_0();

        return MEMORY[0x2821C6E60](v120, v121, v122, v123, v124, v125, v126, v127, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
      }

      *(v18 + 928) = v48;
      OUTLINED_FUNCTION_69_8();
      if (v50)
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        v243 = OUTLINED_FUNCTION_81_5();
        v244(v243);
        sub_231369330();
        v245 = OUTLINED_FUNCTION_19_21();
        __swift_storeEnumTagSinglePayload(v245, v246, v247, v248);
        v249 = *(v29 + 104);
        v250 = OUTLINED_FUNCTION_60_8();
        v251(v250);
        v252 = sub_231367D80();
        OUTLINED_FUNCTION_11(v252);
        v254 = *(v253 + 104);
        v255 = OUTLINED_FUNCTION_63_8();
        v256(v255);
        OUTLINED_FUNCTION_62_2();
        __swift_storeEnumTagSinglePayload(v257, v258, v259, v260);
        OUTLINED_FUNCTION_80_6(MEMORY[0x277D61200]);
        v261 = v44;
        v262 = swift_task_alloc();
        *(v18 + 1048) = v262;
        *v262 = v18;
        OUTLINED_FUNCTION_4_28();
        v264 = *(v18 + 360);
        v263 = *(v18 + 368);
        v265 = *(v18 + 336);
        v266 = *(v18 + 272);
        OUTLINED_FUNCTION_79_5(*(v18 + 392));
LABEL_64:
        OUTLINED_FUNCTION_134_0();

        __asm { BR              X4 }
      }

      v51 = OUTLINED_FUNCTION_9_28(v49);
      (v40)(v51);
      sub_231369980();
      v52 = OUTLINED_FUNCTION_68_7();
      v53(v52);
      OUTLINED_FUNCTION_5_30();
      sub_231341F84(&qword_27DD44A10, v54);
      OUTLINED_FUNCTION_74_7();
      OUTLINED_FUNCTION_66_1();
      sub_23136A140();
      OUTLINED_FUNCTION_21_23();
      v55 = v55 && v19 == v42;
      if (v55)
      {
        v58 = OUTLINED_FUNCTION_42_14();
        (v29)(v58);
        v59 = OUTLINED_FUNCTION_71();
        (v29)(v59);
      }

      else
      {
        v310 = OUTLINED_FUNCTION_138_0();
        v56 = OUTLINED_FUNCTION_42_14();
        (v29)(v56);
        v57 = OUTLINED_FUNCTION_71();
        (v29)(v57);

        if ((v310 & 1) == 0)
        {
          v168 = *(v18 + 568);
          *(v18 + 176) = sub_231369970();
          *(v18 + 184) = v169;
          *(v18 + 192) = 46;
          *(v18 + 200) = 0xE100000000000000;
          sub_231207C1C();
          OUTLINED_FUNCTION_177();
          OUTLINED_FUNCTION_10_11();

          OUTLINED_FUNCTION_149();
          if (v171)
          {
            OUTLINED_FUNCTION_100_1(v170);

            OUTLINED_FUNCTION_28_0();
            sub_23133F88C();
            OUTLINED_FUNCTION_147_0();
            if (!v55)
            {
              v172 = *(v18 + 448);
              v173 = *(v18 + 432);
              v174 = *(v18 + 280);
              sub_23133B820(*(v18 + 568), *(v18 + 856));
              OUTLINED_FUNCTION_53(v173);
              if (v55)
              {
                sub_2311D1F18(*(v18 + 432), &qword_27DD44B78, &qword_231378720);
              }

              else
              {
                v194 = *(v18 + 856);
                v195 = *(v18 + 280);
                sub_231342014(*(v18 + 432), *(v18 + 464));
                type metadata accessor for INIntentFactory();
                sub_23133D740(v194, v196, v197, v198, v199, v200, v201, v202, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279);
                v44 = OUTLINED_FUNCTION_172(v203);
                *(v18 + 1040) = v44;

                if (v44)
                {
                  goto LABEL_69;
                }

                sub_231342078(*(v18 + 464));
              }
            }
          }

          else
          {
          }

LABEL_59:
          OUTLINED_FUNCTION_111_1();
          v204 = OUTLINED_FUNCTION_65();
          (v19)(v204);
          v40 = sub_2313698A0();
          v316 = sub_23136A3C0();
          v205 = os_log_type_enabled(v40, v316);
          v45 = *(v18 + 848);
          v206 = *(v18 + 776);
          v321 = *(v18 + 736);
          v29 = *(v18 + 568);
          v44 = *(v18 + 552);
          v42 = *(v18 + 536);
          v19 = (*(v18 + 544) + 8);
          v308 = v29;
          v300 = *(v18 + 904);
          v296 = v45;
          if (v205)
          {
            v29 = OUTLINED_FUNCTION_60();
            OUTLINED_FUNCTION_30_16();
            v323[0] = swift_slowAlloc();
            *v29 = 136315138;
            *(v18 + 208) = sub_231369970();
            *(v18 + 216) = v207;
            sub_23136A0E0();
            v45 = *v19;
            v208 = OUTLINED_FUNCTION_67_0();
            v45(v208);
            v209 = OUTLINED_FUNCTION_159();
            v44 = sub_2311CFD58(v209, v210, v211);

            *(v29 + 4) = v44;
            _os_log_impl(&dword_2311CB000, v40, v316, "ContextualActionsGenerator:: Skipping Tool: %s", v29, 0xCu);
            OUTLINED_FUNCTION_176();
            OUTLINED_FUNCTION_6_1();
            MEMORY[0x23192B930]();
            OUTLINED_FUNCTION_6_1();
            MEMORY[0x23192B930]();

            v296(v206, v321);
            (v45)(v308, v42);
          }

          else
          {

            v212 = *v19;
            v213 = OUTLINED_FUNCTION_67_0();
            v212(v213);
            (v45)(v206, v321);
            v47 = (v212)(v29, v42);
          }

          goto LABEL_62;
        }
      }

      OUTLINED_FUNCTION_65_7();
      v60 = OUTLINED_FUNCTION_116_1();
      (v40)(v60);
      v61 = sub_2313698A0();
      sub_23136A3C0();
      OUTLINED_FUNCTION_131_1();
      v63 = os_log_type_enabled(v61, v62);
      v64 = *(v18 + 904);
      v40 = *(v18 + 848);
      v19 = *(v18 + 808);
      v29 = *(v18 + 736);
      v65 = *(v18 + 560);
      v66 = *(v18 + 544);
      v67 = *(v18 + 536);
      if (v63)
      {
        v311 = *(v18 + 808);
        v19 = OUTLINED_FUNCTION_60();
        OUTLINED_FUNCTION_30_16();
        v68 = swift_slowAlloc();
        v323[0] = v68;
        *v19 = 136315138;
        v297 = v29;
        v301 = v40;
        v29 = sub_231369950();
        v40 = v69;
        v70 = *(v66 + 8);
        v71 = OUTLINED_FUNCTION_68_1();
        v45 = v72;
        v72(v71);
        sub_2311CFD58(v29, v40, v323);
        OUTLINED_FUNCTION_38();

        *(v19 + 4) = v65;
        _os_log_impl(&dword_2311CB000, v61, v42, "ContextualActionsGenerator:: Hydrated Tools %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();

        (v301)(v311, v297);
      }

      else
      {

        v73 = *(v66 + 8);
        v74 = OUTLINED_FUNCTION_68_1();
        v45 = v75;
        v75(v74);
        (v40)(v19, v29);
      }

      *(v18 + 952) = v45;
      v44 = *(v18 + 568);
      sub_23133B60C();
      *(v18 + 960) = v77;
      *(v18 + 968) = v76;
      if (v76)
      {
        break;
      }

      v84 = OUTLINED_FUNCTION_27_15();
      v45(v84);
    }

    v78 = v76;
    v79 = *(v18 + 856);
    v80 = *(v18 + 568);
    v42 = *(v18 + 440);
    v40 = *(v18 + 448);
    v44 = *(v18 + 280);

    v81 = OUTLINED_FUNCTION_159();
    sub_23133B820(v81, v82);
    OUTLINED_FUNCTION_53(v42);
    if (!v55)
    {
      break;
    }

    v83 = OUTLINED_FUNCTION_27_15();
    v44 = *(v18 + 440);
    v45(v83);

    sub_2311D1F18(v44, &qword_27DD44B78, &qword_231378720);
  }

  v291 = v45;
  v85 = OUTLINED_FUNCTION_139_0();
  sub_23133C730(v85, v86, v87, v88, v89, v90, v91, v92, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279);
  v94 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445B8, &qword_231374970);
  OUTLINED_FUNCTION_38();
  v95 = sub_23136A770();
  v96 = 0;
  v98 = v94 + 64;
  v97 = *(v94 + 64);
  v293 = v95;
  v294 = v94;
  v99 = *(v94 + 32);
  OUTLINED_FUNCTION_11_26();
  v29 = v100 >> 6;
  if (v101)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v104 = v96;
    do
    {
      v96 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        goto LABEL_68;
      }

      if (v96 >= v29)
      {
        v133 = *(v18 + 800);

        sub_2313690F0();

        v134 = sub_2313698A0();
        v42 = sub_23136A3C0();

        v135 = os_log_type_enabled(v134, v42);
        v136 = *(v18 + 904);
        v19 = *(v18 + 848);
        v137 = *(v18 + 800);
        v45 = *(v18 + 736);
        if (v135)
        {
          v313 = *(v18 + 848);
          v19 = OUTLINED_FUNCTION_60();
          OUTLINED_FUNCTION_30_16();
          v138 = swift_slowAlloc();
          OUTLINED_FUNCTION_92_2(v138);
          *v19 = 136315138;
          v303 = v45;
          v139 = sub_231369E90();
          v45 = v140;

          v141 = sub_2311CFD58(v139, v45, v323);

          *(v19 + 4) = v141;
          _os_log_impl(&dword_2311CB000, v134, v42, "ContextualActionsGenerator:: Hydrated Tool Params %s", v19, 0xCu);
          OUTLINED_FUNCTION_26_2();
          OUTLINED_FUNCTION_6_1();
          MEMORY[0x23192B930]();

          v142 = v313(v137, v303);
        }

        else
        {

          v142 = (v19)(v137, v45);
        }

        v143 = *(v18 + 496);
        v144 = *(v18 + 400);
        v40 = v319;
        sub_23133CF94(v142);
        *(v18 + 976) = v319;
        if (!v319)
        {
          OUTLINED_FUNCTION_118_0();
          v322 = v214;
          v309 = *(v18 + 1116);
          v317 = *(v18 + 496);
          v215 = *(v18 + 400);
          v217 = *(v18 + 376);
          v216 = *(v18 + 384);
          v218 = *(v18 + 368);
          v305 = *(v18 + 360);
          v220 = *(v18 + 344);
          v219 = *(v18 + 352);
          v221 = *(v18 + 336);
          v222 = sub_231367560();
          OUTLINED_FUNCTION_11(v222);
          v224 = *(v223 + 104);
          v225 = OUTLINED_FUNCTION_66_1();
          v226(v225);
          v227 = *(v216 + 104);
          v228 = OUTLINED_FUNCTION_62_9();
          v229(v228);
          sub_231369330();
          OUTLINED_FUNCTION_52();
          __swift_storeEnumTagSinglePayload(v230, v231, v232, v233);
          (*(v219 + 104))(v305, v309, v220);
          sub_23133D0C8();
          v234 = OUTLINED_FUNCTION_181();
          OUTLINED_FUNCTION_11(v234);
          (*(v235 + 104))(v221, v322, v234);
          OUTLINED_FUNCTION_26_20();
          __swift_storeEnumTagSinglePayload(v236, v237, v238, v239);
          OUTLINED_FUNCTION_57_1(MEMORY[0x277D61200]);
          v240 = swift_task_alloc();
          *(v18 + 984) = v240;
          *v240 = v18;
          OUTLINED_FUNCTION_3_37(v240);
          OUTLINED_FUNCTION_23_17();
          goto LABEL_64;
        }

        v145 = *(v18 + 752);

        sub_2313690F0();
        v146 = v319;
        v147 = sub_2313698A0();
        v148 = sub_23136A3B0();

        if (os_log_type_enabled(v147, v148))
        {
          OUTLINED_FUNCTION_60();
          v149 = OUTLINED_FUNCTION_136_0();
          OUTLINED_FUNCTION_169(v149, v150, v151, v152, v153, v154, v155, v156, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
          v157 = _swift_stdlib_bridgeErrorToNSError();
          *(v95 + 4) = v157;
          *v42 = v157;
          OUTLINED_FUNCTION_141_0(&dword_2311CB000, v147, v148, "Unable to construct a tool invocation: %@");
          sub_2311D1F18(v42, &qword_27DD433B0, &unk_23136EDC0);
          v158 = OUTLINED_FUNCTION_18_23();
          MEMORY[0x23192B930](v158);
          OUTLINED_FUNCTION_6_1();
          MEMORY[0x23192B930]();
        }

        OUTLINED_FUNCTION_87_0();
        v44 = (v78 + 8);
        v290 = v319;

        v159 = OUTLINED_FUNCTION_115_0();
        (v29)(v159);
        sub_231342078(v19);
        v160 = OUTLINED_FUNCTION_112_1();
        v291(v160);
        v319 = 0;
        goto LABEL_7;
      }

      ++v104;
    }

    while (!*(v98 + 8 * v96));
    OUTLINED_FUNCTION_32_15();
    v298 = v105;
LABEL_31:
    v106 = v102 | (v96 << 6);
    v107 = *(v18 + 416);
    v44 = *(v18 + 424);
    v108 = *(v18 + 408);
    v109 = (*(v294 + 48) + 16 * v106);
    v110 = v109[1];
    v312 = *v109;
    v111 = *(v294 + 56) + *(v107 + 72) * v106;
    v112 = OUTLINED_FUNCTION_43_14(v107);
    v113(v112);
    sub_231369EE0();
    v114 = sub_231369CD0();
    v302 = v115;
    v306 = v114;
    v116 = *(v107 + 8);
    v117 = OUTLINED_FUNCTION_27();
    v118(v117);
    OUTLINED_FUNCTION_155();
    v95 = v293;
    OUTLINED_FUNCTION_78_6(v119);
    v128 = (v293[6] + 16 * v106);
    *v128 = v312;
    v128[1] = v110;
    v129 = (v293[7] + 16 * v106);
    *v129 = v306;
    v129[1] = v302;
    v130 = v293[2];
    v131 = __OFADD__(v130, 1);
    v132 = v130 + 1;
    if (!v131)
    {
      v293[2] = v132;
      if (!v298)
      {
        continue;
      }

LABEL_25:
      OUTLINED_FUNCTION_53_0();
      v298 = v103;
      goto LABEL_31;
    }

    break;
  }

  __break(1u);
  return MEMORY[0x2821C6E60](v120, v121, v122, v123, v124, v125, v126, v127, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23133A990()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 1096);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23133AA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = v19[136];
  v21 = v19[37];
  v22 = v19[36];
  v23 = v19[38];
  sub_231369040();
  OUTLINED_FUNCTION_85_3();
  v24 = *(v21 + 8);
  v25 = OUTLINED_FUNCTION_54_0();
  v26(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v19 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v19[136];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v62 = *(v28 + 16);
    OUTLINED_FUNCTION_109_2();
    sub_23126DC90();
    v28 = v63;
  }

  v29 = *(v28 + 16);
  if (v29 >= *(v28 + 24) >> 1)
  {
    sub_23126DC90();
    v28 = v64;
  }

  v30 = v19[134];
  v31 = v19[135] + 1;
  *(v28 + 16) = v29 + 1;
  v32 = v28 + 16 * v29;
  *(v32 + 32) = v23;
  *(v32 + 40) = v18;
  if (v31 == v30)
  {
    v33 = v19[133];
    v34 = v19[96];
    sub_2313690F0();
    sub_231369EE0();
    sub_231369EE0();
    v35 = sub_2313698A0();
    v36 = sub_23136A3C0();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v19[133];
    v39 = v19[113];
    v77 = v19[96];
    v79 = v19[106];
    v40 = v19[92];
    v41 = v19[77];
    v42 = v19[76];
    v43 = v19[75];
    if (v37)
    {
      OUTLINED_FUNCTION_94_1();
      v44 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_16();
      swift_slowAlloc();
      *v44 = 134218242;
      *(v44 + 4) = *(v38 + 16);

      *(v44 + 12) = 2080;
      MEMORY[0x23192A860](v28, MEMORY[0x277D837D0]);

      v45 = OUTLINED_FUNCTION_67_0();
      v48 = sub_2311CFD58(v45, v46, v47);

      *(v44 + 14) = v48;
      _os_log_impl(&dword_2311CB000, v35, v36, "ContextualActionsGenerator:: Returning %ld Candidate Suggestions: %s", v44, 0x16u);
      OUTLINED_FUNCTION_176();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    else
    {
    }

    v79(v77, v40);
    (*(v42 + 8))(v41, v43);
    v80 = v19[133];
    OUTLINED_FUNCTION_1_44();
    OUTLINED_FUNCTION_7_25();
    v66 = v19[58];
    v67 = v19[57];
    v68 = v19[55];
    v69 = v19[54];
    v70 = v19[53];
    v71 = v19[50];
    v72 = v19[49];
    v73 = v19[46];
    v74 = v19[45];
    v75 = v19[42];
    v76 = v19[41];
    v78 = v19[38];

    OUTLINED_FUNCTION_14();

    return v61(v80);
  }

  else
  {
    v19[136] = v28;
    v19[135] = v31;
    sub_2311CF324(v19[133] + 40 * v31 + 32, (v19 + 8));
    OUTLINED_FUNCTION_57_12();
    v49 = *(MEMORY[0x277D60F68] + 4);
    v50 = swift_task_alloc();
    v51 = OUTLINED_FUNCTION_77_4(v50);
    *v51 = v52;
    OUTLINED_FUNCTION_2_29();
    v53 = OUTLINED_FUNCTION_29_15();

    return MEMORY[0x2821C6E60](v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_23133AF44()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313698C0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_67();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v7);
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_43();
  v10 = sub_231369D50();
  v1[10] = v10;
  OUTLINED_FUNCTION_0(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_67();
  v1[13] = swift_task_alloc();
  v14 = sub_2313696B0();
  v1[14] = v14;
  OUTLINED_FUNCTION_0(v14);
  v1[15] = v15;
  v17 = *(v16 + 64);
  v1[16] = OUTLINED_FUNCTION_43();
  v18 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_23133B0D0()
{
  v1 = v0;
  v2 = v0[2];
  v3 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v1[15];
    v7 = *(v5 + 16);
    v5 += 16;
    v6 = v7;
    v8 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v9 = *(v5 + 56);
    v95 = v1[11];
    v96 = v5;
    v97 = (v95 + 32);
    v98 = (v5 - 8);
    v93 = v9;
    v94 = v7;
    v92 = v1;
    do
    {
      v99 = v3;
      v10 = v1[16];
      v11 = v1[14];
      v12 = v1[9];
      v13 = OUTLINED_FUNCTION_27();
      v6(v13);
      sub_231369670();
      v14 = sub_231369D00();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v14);
      v23 = v1[16];
      v24 = v1[14];
      if (EnumTagSinglePayload == 1)
      {
        v25 = v1[9];
        v26 = OUTLINED_FUNCTION_160(EnumTagSinglePayload, v16, v17, v18, v19, v20, v21, v22, v91, v92, v93, v94, v95, v96, v97, v98);
        v27(v26);
        sub_2311D1F18(v25, &qword_27DD43358, &qword_23136FA90);
        v3 = v99;
      }

      else
      {
        v28 = v1[12];
        v29 = v1[13];
        v30 = v1[9];
        v31 = v1[10];
        v32 = sub_231369CC0();
        v40 = OUTLINED_FUNCTION_160(v32, v33, v34, v35, v36, v37, v38, v39, v91, v92, v93, v94, v95, v96, v97, v98);
        v41(v40);
        OUTLINED_FUNCTION_26_0(v14);
        v43 = *(v42 + 8);
        v44 = OUTLINED_FUNCTION_106_2();
        v45(v44);
        v46 = *v97;
        (*v97)(v29, v28, v31);
        v3 = v99;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = *(v99 + 16);
          v55 = OUTLINED_FUNCTION_109_2();
          sub_23126F5B0(v55, v56, v57, v99);
          v3 = v58;
        }

        v48 = *(v3 + 16);
        v47 = *(v3 + 24);
        v9 = v93;
        v6 = v94;
        v1 = v92;
        if (v48 >= v47 >> 1)
        {
          v59 = OUTLINED_FUNCTION_37(v47);
          sub_23126F5B0(v59, v48 + 1, 1, v3);
          v3 = v60;
        }

        v49 = *(v92 + 104);
        v50 = *(v92 + 80);
        *(v3 + 16) = v48 + 1;
        v51 = *(v95 + 80);
        OUTLINED_FUNCTION_35_0();
        v46(v3 + v52 + *(v53 + 72) * v48);
      }

      v8 += v9;
      --v4;
    }

    while (v4);
  }

  sub_2312559E0();
  v62 = v61;
  if (*(v61 + 16))
  {
    __swift_project_boxed_opaque_existential_1((v1[3] + OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_toolRetriever), *(v1[3] + OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_toolRetriever + 24));
    sub_231334304(v62);

    sub_231267880();
    v71 = v1 + 6;
    v70 = v1[6];
    sub_231255B0C();
    v73 = sub_23122AE8C(v72);
    sub_2313690F0();
    sub_231369EE0();
    v74 = sub_2313698A0();
    v75 = sub_23136A3C0();
    if (os_log_type_enabled(v74, v75))
    {
      v77 = OUTLINED_FUNCTION_60();
      *v77 = 134217984;
      *(v77 + 4) = *(v73 + 16);

      _os_log_impl(&dword_2311CB000, v74, v75, "ContextualActionsGenerator:: Unique Tools %ld", v77, 0xCu);
      v78 = OUTLINED_FUNCTION_18_23();
      MEMORY[0x23192B930](v78);
    }

    else
    {
    }
  }

  else
  {
    v71 = v1 + 8;
    v63 = v1[8];

    sub_2313690F0();
    v74 = sub_2313698A0();
    v64 = sub_23136A3C0();
    if (OUTLINED_FUNCTION_40_1(v64))
    {
      *OUTLINED_FUNCTION_63() = 0;
      OUTLINED_FUNCTION_0_26();
      _os_log_impl(v65, v66, v67, v68, v69, 2u);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v73 = MEMORY[0x277D84F90];
  }

  v79 = *v71;
  v80 = v1[16];
  v82 = v1[12];
  v81 = v1[13];
  v84 = v1[8];
  v83 = v1[9];
  v85 = v1;
  v88 = v1 + 6;
  v87 = v1[6];
  v86 = v88[1];
  (*(v85[5] + 8))(v79, v85[4]);

  OUTLINED_FUNCTION_14();

  return v89(v73);
}

void sub_23133B60C()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_231369910();
  v1 = OUTLINED_FUNCTION_0_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v8 = (v7 - v6);
  v9 = sub_231369D90();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  sub_231369930();
  sub_231369D70();
  v15 = *(v12 + 8);
  v16 = OUTLINED_FUNCTION_35_5();
  v17(v16);
  sub_231369970();
  v18 = sub_231369940();
  v19 = 0;
  v20 = *(v18 + 16);
  v21 = *MEMORY[0x277D72198];
  while (1)
  {
    if (v20 == v19)
    {

LABEL_8:
      OUTLINED_FUNCTION_9_0();
      return;
    }

    if (v19 >= *(v18 + 16))
    {
      break;
    }

    v22 = *(v3 + 80);
    OUTLINED_FUNCTION_35_0();
    (*(v3 + 16))(v8, v18 + v23 + *(v3 + 72) * v19, v0);
    v24 = *(v3 + 88);
    v25 = OUTLINED_FUNCTION_65();
    if (v26(v25) == v21)
    {

      v30 = *(v3 + 96);
      v31 = OUTLINED_FUNCTION_65();
      v32(v31);
      v33 = *v8;
      v34 = v8[1];
      goto LABEL_8;
    }

    ++v19;
    v27 = *(v3 + 8);
    v28 = OUTLINED_FUNCTION_65();
    v29(v28);
  }

  __break(1u);
}

void sub_23133C730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_0();
  a19 = v23;
  a20 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v28);
  v162 = &v141 - v29;
  OUTLINED_FUNCTION_18();
  v163 = sub_231369D00();
  v30 = OUTLINED_FUNCTION_0_0(v163);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_1();
  v150 = v35;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_0();
  v149 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  v39 = OUTLINED_FUNCTION_0(v38);
  v157 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_1();
  v161 = v43;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_17_0();
  v156 = v45;
  OUTLINED_FUNCTION_18();
  v46 = sub_231369DD0();
  v47 = OUTLINED_FUNCTION_0_0(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_72_7();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_17_0();
  v154 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B90, &qword_231378748);
  v55 = OUTLINED_FUNCTION_40_0(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_22();
  v60 = v58 - v59;
  MEMORY[0x28223BE20](v61);
  v62 = OUTLINED_FUNCTION_151();
  v63 = *(v20 + *(type metadata accessor for HydratedTool(v62) + 20));
  v64 = v63 + 64;
  v65 = 1 << *(v63 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & *(v63 + 64);
  v68 = (v65 + 63) >> 6;
  v153 = v49 + 16;
  v167 = (v49 + 32);
  v148 = (v32 + 32);
  v147 = v32 + 16;
  v145 = v32 + 8;
  v155 = v49;
  v160 = v49 + 8;
  v146 = v32;
  v144 = v32 + 40;
  v69 = &qword_27DD43C68;
  v158 = v63;
  sub_231369EE0();
  v70 = 0;
  v151 = MEMORY[0x277D84F98];
  v152 = v68;
  v168 = v46;
  v165 = v22;
  v166 = v21;
  v164 = v60;
  v159 = v64;
  while (v67)
  {
    v71 = v69;
    v72 = v70;
LABEL_10:
    v73 = __clz(__rbit64(v67));
    v67 &= v67 - 1;
    v74 = v73 | (v72 << 6);
    v75 = v158;
    v76 = v155;
    (*(v155 + 16))(v154, *(v158 + 48) + *(v155 + 72) * v74, v46);
    v77 = v156;
    sub_23123EA8C(*(v75 + 56) + *(v157 + 72) * v74, v156, v71, &qword_231378D20);
    v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B20, &unk_231378450) + 48);
    v79 = v164;
    (*(v76 + 32))();
    v80 = v71;
    sub_23123E9F8(v77, v79 + v78, v71, &qword_231378D20);
    OUTLINED_FUNCTION_26_20();
    v81 = v79;
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
    v22 = v165;
    v21 = v166;
    v68 = v152;
LABEL_11:
    sub_23123E9F8(v81, v22, &qword_27DD44B90, &qword_231378748);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B20, &unk_231378450);
    OUTLINED_FUNCTION_19_13(v22, 1, v86);
    if (v107)
    {

      OUTLINED_FUNCTION_9_0();
      return;
    }

    v87 = *(v86 + 48);
    v46 = v168;
    v88 = *v167;
    v89 = OUTLINED_FUNCTION_143_0();
    v90(v89);
    v91 = v22 + v87;
    v92 = v161;
    sub_23123E9F8(v91, v161, v80, &qword_231378D20);
    v93 = sub_2313696B0();
    OUTLINED_FUNCTION_19_13(v92, 1, v93);
    if (v107)
    {
      OUTLINED_FUNCTION_154();
      v94(v21, v46);
      v95 = OUTLINED_FUNCTION_158();
      sub_2311D1F18(v95, v96, &qword_231378D20);
      v105 = v162;
      OUTLINED_FUNCTION_52();
      __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
      v69 = v80;
      goto LABEL_18;
    }

    v101 = v162;
    sub_231369670();
    OUTLINED_FUNCTION_26_0(v93);
    v103 = *(v102 + 8);
    v104 = OUTLINED_FUNCTION_67_0();
    v105 = v101;
    v106(v104);
    OUTLINED_FUNCTION_38_12(v101);
    if (v107)
    {
      OUTLINED_FUNCTION_154();
      v21 = v166;
      v46 = v168;
      v108(v166, v168);
      v69 = v80;
      v22 = v165;
LABEL_18:
      sub_2311D1F18(v105, &qword_27DD43358, &qword_23136FA90);
      v64 = v159;
    }

    else
    {
      v113 = *v148;
      v114 = v149;
      v115 = OUTLINED_FUNCTION_64();
      v116 = v163;
      v142 = v117;
      (v117)(v115);
      sub_231369DA0();
      v119 = v118;
      OUTLINED_FUNCTION_8_6(&a17);
      v120 = v114;
      v122 = v121;
      v123(v150, v120, v116);
      v124 = v151;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v169 = v124;
      v125 = sub_231215F6C(v122, v119);
      v46 = v168;
      if (__OFADD__(v124[2], (v126 & 1) == 0))
      {
        goto LABEL_31;
      }

      v127 = v125;
      LODWORD(v151) = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B98, &qword_231378750);
      if (sub_23136A700())
      {
        v128 = sub_231215F6C(v122, v119);
        if ((v151 & 1) != (v129 & 1))
        {
          goto LABEL_33;
        }

        v127 = v128;
        if (v151)
        {
LABEL_27:

          v151 = v169;
          v138 = OUTLINED_FUNCTION_146_0(v169[7]);
          v139 = v163;
          (*(v122 + 40))(v138, v150, v163);
          (*(v122 + 8))(v149, v139);
          OUTLINED_FUNCTION_154();
          v21 = v166;
          v140(v166, v46);
          v69 = v80;
          goto LABEL_28;
        }
      }

      else if (v151)
      {
        goto LABEL_27;
      }

      v130 = v169;
      v169[(v127 >> 6) + 8] |= 1 << v127;
      v131 = (v130[6] + 16 * v127);
      *v131 = v122;
      v131[1] = v119;
      v132 = OUTLINED_FUNCTION_146_0(v130[7]);
      v133 = v163;
      v142(v132, v150, v163);
      (*(v122 + 8))(v149, v133);
      OUTLINED_FUNCTION_154();
      v134(v166, v46);
      v135 = v130[2];
      v136 = __OFADD__(v135, 1);
      v137 = v135 + 1;
      if (v136)
      {
        goto LABEL_32;
      }

      v151 = v130;
      v130[2] = v137;
      v69 = v80;
      v21 = v166;
LABEL_28:
      v22 = v165;
      v64 = v159;
    }
  }

  while (1)
  {
    v72 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      break;
    }

    if (v72 >= v68)
    {
      v80 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B20, &unk_231378450);
      v81 = v164;
      OUTLINED_FUNCTION_52();
      __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
      v67 = 0;
      goto LABEL_11;
    }

    v67 = *(v64 + 8 * v72);
    ++v70;
    if (v67)
    {
      v71 = v69;
      v70 = v72;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_23136A970();
  __break(1u);
}

void sub_23133D0C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B80, &qword_231378730);
  OUTLINED_FUNCTION_40_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v110 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B88, &qword_231378738);
  OUTLINED_FUNCTION_40_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  v114 = &v110 - v11;
  OUTLINED_FUNCTION_18();
  v123 = sub_231369D30();
  v12 = OUTLINED_FUNCTION_0_0(v123);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v122 = v18 - v17;
  OUTLINED_FUNCTION_18();
  v19 = sub_231369DD0();
  v20 = OUTLINED_FUNCTION_0_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_1();
  v111 = v25;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v26);
  v116 = &v110 - v27;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v28);
  v30 = &v110 - v29;
  v113 = v0;
  v31 = sub_231369920();
  v32 = *(v31 + 16);
  v124 = v19;
  v115 = v22;
  v112 = v6;
  if (v32)
  {
    v125 = MEMORY[0x277D84F90];
    v33 = OUTLINED_FUNCTION_162();
    sub_2311F6124(v33, v34, v35);
    v37 = *(v22 + 16);
    v36 = v22 + 16;
    v38 = v125;
    v39 = *(v36 + 64);
    OUTLINED_FUNCTION_35_0();
    v110 = v31;
    v41 = v31 + v40;
    v119 = *(v36 + 56);
    v120 = v42;
    v121 = v36;
    v118 = (v36 - 8);
    v43 = v14;
    v44 = (v14 + 88);
    v117 = *MEMORY[0x277D72AE8];
    v45 = (v43 + 8);
    do
    {
      v46 = v120(v30, v41, v124);
      v47 = v122;
      MEMORY[0x23192A470](v46);
      v48 = *v118;
      v49 = OUTLINED_FUNCTION_65();
      v50(v49);
      v51 = v123;
      v52 = (*v44)(v47, v123);
      (*v45)(v47, v51);
      v125 = v38;
      v54 = *(v38 + 16);
      v53 = *(v38 + 24);
      v55 = v38;
      if (v54 >= v53 >> 1)
      {
        v57 = OUTLINED_FUNCTION_37(v53);
        sub_2311F6124(v57, v54 + 1, 1);
        v55 = v125;
      }

      v56 = v52 != v117;
      *(v55 + 16) = v54 + 1;
      *(v55 + v54 + 32) = v56;
      v41 += v119;
      --v32;
      v38 = v55;
    }

    while (v32);

    v19 = v124;
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
  }

  v58 = *(v38 + 16);
  v123 = v38;
  if (v58)
  {
    v59 = (v38 + 32);
    v60 = MEMORY[0x277D84F90];
    v61 = v58;
    do
    {
      if (*v59 == 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125 = v60;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v63 = *(v60 + 16);
          v64 = OUTLINED_FUNCTION_109_2();
          sub_2311F6124(v64, v65, v66);
          v60 = v125;
        }

        v68 = *(v60 + 16);
        v67 = *(v60 + 24);
        if (v68 >= v67 >> 1)
        {
          v69 = OUTLINED_FUNCTION_37(v67);
          sub_2311F6124(v69, v68 + 1, 1);
          v60 = v125;
        }

        *(v60 + 16) = v68 + 1;
        *(v60 + v68 + 32) = 1;
      }

      ++v59;
      --v61;
    }

    while (v61);
  }

  else
  {
    v60 = MEMORY[0x277D84F90];
  }

  v70 = *(v60 + 16);

  if (v70)
  {
    v120 = v70;
    v122 = v58;
    v71 = sub_231369920();
    v72 = 0;
    v73 = *(v71 + 16);
    v121 = v123 + 32;
    v74 = (v115 + 32);
    v75 = (v115 + 8);
    v76 = 0.0;
LABEL_21:
    v77 = v111;
    while (1)
    {
      if (v73 == v72)
      {

        goto LABEL_36;
      }

      if (v72 >= *(v71 + 16))
      {
        break;
      }

      v78 = *(v115 + 80);
      OUTLINED_FUNCTION_35_0();
      v81 = v71 + v79 + *(v80 + 72) * v72;
      (*(v80 + 16))(v82);
      if (v122 == v72)
      {

        (*v75)(v116, v19);
        goto LABEL_36;
      }

      if (v72 >= *(v123 + 16))
      {
        goto LABEL_38;
      }

      v83 = *(v121 + v72);
      v84 = *v74;
      v85 = v114;
      (*v74)(v114, v116, v124);
      v86 = v85;
      v19 = v124;
      v84(v77, v86, v124);
      if (v83 == 1)
      {
        v87 = *(v113 + *(type metadata accessor for HydratedTool(0) + 20));
        if (*(v87 + 16))
        {
          v88 = sub_231216910();
          if (v89)
          {
            v99 = v88;
            v119 = *(v87 + 56);
            v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
            OUTLINED_FUNCTION_11(v100);
            v102 = v119 + *(v101 + 72) * v99;
            v103 = v112;
            sub_23123EA8C(v102, v112, &qword_27DD43C68, &qword_231378D20);
            v104 = OUTLINED_FUNCTION_119_0();
            v105(v104);
            OUTLINED_FUNCTION_26_20();
            __swift_storeEnumTagSinglePayload(v106, v107, v108, v109);
            sub_2311D1F18(v103, &qword_27DD44B80, &qword_231378730);
            v76 = v76 + 1.0;
            ++v72;
            goto LABEL_21;
          }
        }

        v90 = OUTLINED_FUNCTION_119_0();
        v91(v90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
        v92 = v112;
        OUTLINED_FUNCTION_52();
        __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
        sub_2311D1F18(v92, &qword_27DD44B80, &qword_231378730);
      }

      else
      {
        v97 = OUTLINED_FUNCTION_119_0();
        v98(v97);
      }

      ++v72;
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {

LABEL_36:
    OUTLINED_FUNCTION_163();
  }
}

void sub_23133D740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_0();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_30_17();
  v27 = sub_231369D50();
  v28 = OUTLINED_FUNCTION_0_0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_4();
  v35 = (v34 - v33);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  v37 = OUTLINED_FUNCTION_40_0(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_22();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &a9 - v44;
  v46 = sub_231369D40();
  v47 = swift_allocBox();
  v48 = *MEMORY[0x277D72CD8];
  OUTLINED_FUNCTION_26_0(v46);
  (*(v49 + 104))();
  *v35 = v47;
  (*(v30 + 104))(v35, *MEMORY[0x277D72D50], v27);
  v50 = OUTLINED_FUNCTION_68_1();
  sub_23133E404(v50, v51, v52);
  v53 = *(v30 + 8);
  v54 = OUTLINED_FUNCTION_66_1();
  v55(v54);
  sub_23123EA8C(v45, v42, &qword_27DD43C68, &qword_231378D20);
  v56 = sub_2313696B0();
  OUTLINED_FUNCTION_19_13(v42, 1, v56);
  if (v64)
  {
    v57 = OUTLINED_FUNCTION_65();
    sub_2311D1F18(v57, v58, &qword_231378D20);
    v59 = v42;
    v60 = &qword_27DD43C68;
    v61 = &qword_231378D20;
LABEL_7:
    sub_2311D1F18(v59, v60, v61);
    goto LABEL_8;
  }

  sub_231369670();
  OUTLINED_FUNCTION_26_0(v56);
  (*(v62 + 8))(v42, v56);
  v63 = sub_231369D00();
  OUTLINED_FUNCTION_19_13(v20, 1, v63);
  if (v64)
  {
    sub_2311D1F18(v45, &qword_27DD43C68, &qword_231378D20);
    v60 = &qword_27DD43358;
    v61 = &qword_23136FA90;
    v59 = v20;
    goto LABEL_7;
  }

  TypedValue.toINPerson.getter();
  sub_2311D1F18(v45, &qword_27DD43C68, &qword_231378D20);
  OUTLINED_FUNCTION_26_0(v63);
  (*(v65 + 8))(v20, v63);
LABEL_8:
  OUTLINED_FUNCTION_9_0();
}

void *sub_23133DA58(char a1, void *a2)
{
  if (!a2)
  {
    sub_23133FCCC();
    v8 = OUTLINED_FUNCTION_115_1();
    sub_231211170(v8, v9);
    OUTLINED_FUNCTION_10_11();

    return v2;
  }

  if (a1 == 33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44BA0, &qword_231378758);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23136B670;
    *(inited + 32) = a2;
    v24 = a2;
    v22 = sub_231340820(inited);
    swift_setDeallocating();
    sub_231322BD8();
  }

  else
  {
    switch(a1)
    {
      case 4:
        v20 = a2;
        v21 = OUTLINED_FUNCTION_10_11();
        v7 = sub_231340328(v21);
        break;
      case 5:
        v11 = a2;
        v12 = OUTLINED_FUNCTION_10_11();
        v7 = sub_231340408(v12);
        break;
      case 28:
        v15 = a2;
        v16 = OUTLINED_FUNCTION_10_11();
        v7 = sub_231340624(v16);
        break;
      case 29:
        v13 = a2;
        v14 = OUTLINED_FUNCTION_10_11();
        v7 = sub_23134070C(v14);
        break;
      case 3:
        v5 = a2;
        v6 = OUTLINED_FUNCTION_10_11();
        v7 = sub_23134023C(v6);
        break;
      default:
        v17 = a2;
        v18 = sub_23133FCCC();
        v19 = sub_231211170(a1, v18);

        return v19;
    }

    v22 = v7;
  }

  return v22;
}

uint64_t sub_23133DBBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_231369970();
  LOBYTE(v3) = sub_23136A0A0();

  *a2 = v3 & 1;
  return result;
}

uint64_t sub_23133DC2C(uint64_t a1)
{
  v20[3] = a1;
  v1 = sub_231369D50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v20 - v8;
  v10 = sub_231369D30();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x23192A470](v13);
  sub_231369D10();
  (*(v11 + 8))(v15, v10);
  sub_231369670();
  v16 = sub_231369D00();
  result = __swift_getEnumTagSinglePayload(v9, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_231369CC0();
    (*(*(v16 - 8) + 8))(v9, v16);
    sub_2311EFA8C();
    v19 = v18;

    (*(v2 + 8))(v5, v1);
    return v19 & 1;
  }

  return result;
}

void sub_23133DE8C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D08, &qword_231370400);
  v7 = OUTLINED_FUNCTION_40_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v76 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C60, &unk_23136FB20);
  v17 = OUTLINED_FUNCTION_40_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_72_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_151();
  v21 = sub_2313696B0();
  v22 = OUTLINED_FUNCTION_0_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_22();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v76 - v31;
  v85 = *(a1 + 16);
  if (v85)
  {
    v78 = v2;
    v76 = a2;
    v33 = *(v24 + 16);
    v34 = *(v24 + 80);
    OUTLINED_FUNCTION_35_0();
    v81 = a1 + v35;
    v82 = v36;
    (v36)(v32);
    v83 = v24 + 16;
    v84 = v32;
    v79 = (v24 + 32);
    v80 = (v24 + 8);
    v37 = 1;
    v38 = v24;
    v77 = v29;
    while (1)
    {
      if (v85 == v37)
      {
        v67 = *v79;
        v68 = v76;
        v69 = OUTLINED_FUNCTION_64();
        v70(v69);
        __swift_storeEnumTagSinglePayload(v68, 0, 1, v21);
        OUTLINED_FUNCTION_163();
        return;
      }

      v82(v29, v81 + *(v38 + 72) * v37, v21);
      sub_231369690();
      v39 = sub_231369660();
      OUTLINED_FUNCTION_19_13(v15, 1, v39);
      if (v45)
      {
        v40 = v15;
        v41 = &qword_27DD43D08;
        v42 = &qword_231370400;
      }

      else
      {
        sub_231369650();
        OUTLINED_FUNCTION_26_0(v39);
        (*(v43 + 8))(v15, v39);
        v44 = sub_231369620();
        OUTLINED_FUNCTION_38_12(v3);
        if (!v45)
        {
          sub_231369610();
          v47 = v46;
          OUTLINED_FUNCTION_26_0(v44);
          (*(v48 + 8))(v3, v44);
          goto LABEL_11;
        }

        v40 = v3;
        v41 = &qword_27DD43C60;
        v42 = &unk_23136FB20;
      }

      sub_2311D1F18(v40, v41, v42);
      v47 = 0.0;
LABEL_11:
      sub_231369690();
      OUTLINED_FUNCTION_19_13(v12, 1, v39);
      if (v45)
      {
        sub_2311D1F18(v12, &qword_27DD43D08, &qword_231370400);
      }

      else
      {
        v49 = v15;
        v50 = v21;
        v51 = v38;
        v52 = v3;
        v53 = v78;
        sub_231369650();
        OUTLINED_FUNCTION_26_0(v39);
        (*(v54 + 8))(v12, v39);
        v55 = sub_231369620();
        OUTLINED_FUNCTION_38_12(v53);
        if (!v56)
        {
          sub_231369610();
          v58 = v57;
          OUTLINED_FUNCTION_26_0(v55);
          (*(v59 + 8))(v53, v55);
          v60 = v47 < v58;
          v3 = v52;
          v38 = v51;
          v21 = v50;
          v15 = v49;
          v29 = v77;
          goto LABEL_18;
        }

        sub_2311D1F18(v53, &qword_27DD43C60, &unk_23136FB20);
        v3 = v52;
        v38 = v51;
        v21 = v50;
        v15 = v49;
        v29 = v77;
      }

      v60 = v47 < 0.0;
LABEL_18:
      if (v60)
      {
        v61 = *v80;
        v62 = OUTLINED_FUNCTION_67_0();
        v63(v62);
        v64 = *v79;
        v65 = OUTLINED_FUNCTION_158();
        v66(v65);
      }

      else
      {
        (*v80)(v29, v21);
      }

      ++v37;
    }
  }

  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_163();

  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
}

uint64_t HydratedTool.init(tool:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_231369990();
  OUTLINED_FUNCTION_11(v6);
  (*(v7 + 32))(a3, a1);
  result = type metadata accessor for HydratedTool(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_23133E404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7[2] = a2;
  sub_231369EE0();
  sub_2312549FC(sub_23134218C, v7, a1);
  sub_23133DE8C(v5, a3);
}

uint64_t sub_23133E478(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v2 = sub_231369D50();
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B0, &unk_23136DFC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v32 - v21;
  sub_231369670();
  v23 = sub_231369D00();
  if (__swift_getEnumTagSinglePayload(v12, 1, v23) == 1)
  {
    sub_2311D1F18(v12, &qword_27DD43358, &qword_23136FA90);
    v24 = 1;
  }

  else
  {
    sub_231369CC0();
    (*(*(v23 - 8) + 8))(v12, v23);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v22, v24, 1, v2);
  v25 = v35;
  (*(v35 + 16))(v19, v34, v2);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v2);
  v26 = *(v5 + 48);
  sub_23123EA8C(v22, v8, &qword_27DD437B8, &qword_23136FA60);
  sub_23123EA8C(v19, &v8[v26], &qword_27DD437B8, &qword_23136FA60);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) != 1)
  {
    sub_23123EA8C(v8, v16, &qword_27DD437B8, &qword_23136FA60);
    if (__swift_getEnumTagSinglePayload(&v8[v26], 1, v2) != 1)
    {
      v28 = &v8[v26];
      v29 = v33;
      (*(v25 + 32))(v33, v28, v2);
      sub_231341F84(&qword_27DD43360, MEMORY[0x277D72D58]);
      v27 = sub_231369F60();
      v30 = *(v25 + 8);
      v30(v29, v2);
      sub_2311D1F18(v19, &qword_27DD437B8, &qword_23136FA60);
      sub_2311D1F18(v22, &qword_27DD437B8, &qword_23136FA60);
      v30(v16, v2);
      sub_2311D1F18(v8, &qword_27DD437B8, &qword_23136FA60);
      return v27 & 1;
    }

    sub_2311D1F18(v19, &qword_27DD437B8, &qword_23136FA60);
    sub_2311D1F18(v22, &qword_27DD437B8, &qword_23136FA60);
    (*(v25 + 8))(v16, v2);
    goto LABEL_9;
  }

  sub_2311D1F18(v19, &qword_27DD437B8, &qword_23136FA60);
  sub_2311D1F18(v22, &qword_27DD437B8, &qword_23136FA60);
  if (__swift_getEnumTagSinglePayload(&v8[v26], 1, v2) != 1)
  {
LABEL_9:
    sub_2311D1F18(v8, &qword_27DD437B0, &unk_23136DFC0);
    v27 = 0;
    return v27 & 1;
  }

  sub_2311D1F18(v8, &qword_27DD437B8, &qword_23136FA60);
  v27 = 1;
  return v27 & 1;
}

void TypedValue.toINPerson.getter()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_231369CA0();
  v1 = OUTLINED_FUNCTION_0_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  v9 = sub_231369D00();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v17 = (v16 - v15);
  v18 = sub_231369C70();
  v19 = OUTLINED_FUNCTION_0_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  v26 = v25 - v24;
  v27 = *(v12 + 16);
  v28 = OUTLINED_FUNCTION_35_5();
  v29(v28);
  if ((*(v12 + 88))(v17, v9) == *MEMORY[0x277D72A58])
  {
    (*(v12 + 96))(v17, v9);
    v30 = *v17;
    swift_projectBox();
    v31 = OUTLINED_FUNCTION_43_14(v3);
    v32(v31);
    v33 = v3[11];
    v34 = OUTLINED_FUNCTION_27();
    if (v35(v34) == *MEMORY[0x277D729B0])
    {
      v36 = v3[12];
      v37 = OUTLINED_FUNCTION_27();
      v38(v37);
      (*(v21 + 32))(v26, v8, v18);

      sub_231369C60();
      v39 = *(v21 + 8);
      v40 = OUTLINED_FUNCTION_41_14();
      v41(v40);
    }

    else
    {
      v42 = v3[1];
      v43 = OUTLINED_FUNCTION_27();
      v44(v43);
    }
  }

  else
  {
    (*(v12 + 8))(v17, v9);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_23133EC1C()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_channel;
  v2 = sub_231369330();
  OUTLINED_FUNCTION_11(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_toolRetriever));
  v4 = *(v0 + OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_typesToIgnore);

  return v0;
}

uint64_t sub_23133EC94()
{
  sub_23133EC1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23133ECEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_channel;
  v5 = sub_231369330();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_23133ED68()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311DDECC;

  return sub_231334E64();
}

uint64_t sub_23133EE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D60D18] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_231341F84(&qword_27DD44BF0, type metadata accessor for ContextualActionsGenerator);
  *v10 = v4;
  v10[1] = sub_2311E6A24;

  return MEMORY[0x2821C6C08](a1, a2, a3, a4, v11);
}

void HydratedTool.description.getter()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B20, &unk_231378450);
  v2 = OUTLINED_FUNCTION_11(v43);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_1();
  v42 = v5;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_0();
  v41 = v7;
  OUTLINED_FUNCTION_18();
  v8 = sub_231369A00();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v16 = v15 - v14;
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_23136A650();
  v17 = sub_231369970();
  MEMORY[0x23192A730](v17);

  MEMORY[0x23192A730](0x6570797420666F20, 0xE900000000000020);
  sub_231369980();
  sub_23136A6F0();
  (*(v11 + 8))(v16, v8);
  MEMORY[0x23192A730](0x6170206874697720, 0xEF5B203A736D6172);
  v18 = *(v0 + *(type metadata accessor for HydratedTool(0) + 20));
  v19 = *(v18 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v48 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_162();
    sub_2311F4E34();
    v20 = v48;
    v23 = sub_231236CA8(v18);
    v39 = v18;
    v40 = v18 + 64;
    while ((v23 & 0x8000000000000000) == 0 && v23 < 1 << *(v18 + 32))
    {
      if (((*(v40 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_13;
      }

      if (*(v18 + 36) != v21)
      {
        goto LABEL_14;
      }

      v44 = v22;
      v45 = v21;
      v46 = v19;
      v24 = *(v43 + 48);
      v25 = *(v18 + 48);
      v26 = sub_231369DD0();
      OUTLINED_FUNCTION_0_0(v26);
      v28 = v27;
      (*(v29 + 16))(v41, v25 + *(v29 + 72) * v23, v26);
      v30 = *(v18 + 56);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
      OUTLINED_FUNCTION_40_0(v31);
      sub_23123EA8C(v30 + *(v32 + 72) * v23, v41 + v24, &qword_27DD43C68, &qword_231378D20);
      (*(v28 + 32))();
      sub_23123E9F8(v41 + v24, v42 + *(v43 + 48), &qword_27DD43C68, &qword_231378D20);
      sub_23133F36C(v42, v47);
      sub_2311D1F18(v42, &qword_27DD44B20, &unk_231378450);
      v33 = v47[0];
      v34 = v47[1];
      v48 = v20;
      v35 = *(v20 + 16);
      v1 = v35 + 1;
      if (v35 >= *(v20 + 24) >> 1)
      {
        sub_2311F4E34();
        v20 = v48;
      }

      *(v20 + 16) = v1;
      v36 = v20 + 16 * v35;
      *(v36 + 32) = v33;
      *(v36 + 40) = v34;
      v18 = v39;
      v37 = sub_231341A10(v23, v45, v44 & 1, v39);
      v23 = v37;
      v19 = v46 - 1;
      if (v46 == 1)
      {
        sub_2311F0490(v37, v21, v22 & 1);
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    sub_2311D1F18(v1, &qword_27DD44B20, &unk_231378450);

    __break(1u);
  }

  else
  {
LABEL_11:
    MEMORY[0x23192A860](v20, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_135();
    v38 = OUTLINED_FUNCTION_28_0();
    MEMORY[0x23192A730](v38);

    MEMORY[0x23192A730](93, 0xE100000000000000);
    OUTLINED_FUNCTION_9_0();
  }
}

uint64_t sub_23133F36C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v3 = sub_231366860();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B20, &unk_231378450);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v32 - v17;
  v36 = 0;
  v37 = 0xE000000000000000;
  v19 = sub_231369DD0();
  sub_23136A6F0();
  MEMORY[0x23192A730](8250, 0xE200000000000000);
  sub_23123EA8C(a1, v10, &qword_27DD44B20, &unk_231378450);
  sub_23123E9F8(&v10[*(v7 + 56)], v14, &qword_27DD43C68, &qword_231378D20);
  v20 = sub_2313696B0();
  if (__swift_getEnumTagSinglePayload(v14, 1, v20) == 1)
  {
    (*(*(v19 - 8) + 8))(v10, v19);
    v21 = &qword_27DD43C68;
    v22 = &qword_231378D20;
    v23 = v14;
  }

  else
  {
    sub_231369670();
    (*(*(v20 - 8) + 8))(v14, v20);
    v24 = sub_231369D00();
    if (__swift_getEnumTagSinglePayload(v18, 1, v24) != 1)
    {
      v30 = v32;
      sub_231366820();
      v26 = TypedValue.getDisplay(for:)();
      v25 = v31;
      (*(v33 + 8))(v30, v34);
      (*(*(v24 - 8) + 8))(v18, v24);
      (*(*(v19 - 8) + 8))(v10, v19);
      if (v25)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    (*(*(v19 - 8) + 8))(v10, v19);
    v21 = &qword_27DD43358;
    v22 = &qword_23136FA90;
    v23 = v18;
  }

  sub_2311D1F18(v23, v21, v22);
LABEL_6:

  v25 = 0xE500000000000000;
  v26 = 0x5954504D45;
LABEL_7:
  MEMORY[0x23192A730](v26, v25);

  result = MEMORY[0x23192A730](10, 0xE100000000000000);
  v28 = v37;
  v29 = v35;
  *v35 = v36;
  v29[1] = v28;
  return result;
}

uint64_t TypedValue.getDisplay(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  OUTLINED_FUNCTION_40_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  sub_231369CE0();
  v6 = sub_231369E00();
  OUTLINED_FUNCTION_53(v5);
  if (v7)
  {
    sub_2311D1F18(v5, &qword_27DD43C40, &qword_231378460);
    return 0;
  }

  else
  {
    v8 = sub_231369DE0();
    OUTLINED_FUNCTION_26_0(v6);
    v10 = *(v9 + 8);
    v11 = OUTLINED_FUNCTION_28_0();
    v12(v11);
  }

  return v8;
}

uint64_t sub_23133F88C()
{
  sub_23136A940();
  OUTLINED_FUNCTION_10_11();

  if (v0 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23133F8E8(char a1)
{
  result = 0x6C69427961504E49;
  switch(a1)
  {
    case 1:
    case 11:
      OUTLINED_FUNCTION_68_2();
      result = v4 - 1;
      break;
    case 2:
    case 15:
    case 16:
      OUTLINED_FUNCTION_68_2();
      result = v3 + 5;
      break;
    case 3:
    case 6:
      OUTLINED_FUNCTION_68_2();
      result = v8 - 2;
      break;
    case 4:
    case 5:
    case 7:
    case 24:
    case 25:
    case 31:
      OUTLINED_FUNCTION_68_2();
      result = v6 + 3;
      break;
    case 9:
    case 30:
      OUTLINED_FUNCTION_68_2();
      result = v11 | 8;
      break;
    case 10:
    case 12:
      OUTLINED_FUNCTION_68_2();
      result = v9 + 1;
      break;
    case 13:
    case 14:
    case 20:
    case 21:
      OUTLINED_FUNCTION_68_2();
      result = v7 + 2;
      break;
    case 17:
      OUTLINED_FUNCTION_68_2();
      result = v5 + 11;
      break;
    case 18:
    case 26:
    case 29:
      OUTLINED_FUNCTION_68_2();
      result = v13 + 6;
      break;
    case 19:
      OUTLINED_FUNCTION_68_2();
      result = v12 + 10;
      break;
    case 22:
      return result;
    case 23:
      result = 0xD000000000000013;
      break;
    case 27:
      result = 0xD000000000000013;
      break;
    case 28:
      result = 0xD000000000000013;
      break;
    case 32:
      result = 0xD000000000000013;
      break;
    case 34:
      result = 0xD000000000000013;
      break;
    case 35:
      result = 0xD000000000000013;
      break;
    default:
      OUTLINED_FUNCTION_68_2();
      result = v10 - 3;
      break;
  }

  return result;
}

uint64_t sub_23133FC60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23133F88C();
  *a2 = result;
  return result;
}

uint64_t sub_23133FC90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23133F8E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23133FCCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44BB0, &qword_231378760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231378440;
  *(inited + 32) = 0;
  *(inited + 40) = sub_2313401C8();
  *(inited + 48) = 1;
  sub_231207BDC(0, &qword_27DD44BB8, 0x277CD3B30);
  v1 = OUTLINED_FUNCTION_15_27();
  *(inited + 56) = sub_231340910(v1, v2, v3);
  *(inited + 64) = 2;
  *(inited + 72) = sub_231340200();
  *(inited + 80) = 3;
  *(inited + 88) = sub_23134023C(0);
  *(inited + 96) = 4;
  *(inited + 104) = sub_231340328(0);
  *(inited + 112) = 5;
  *(inited + 120) = sub_231340408(0);
  *(inited + 128) = 6;
  *(inited + 136) = sub_2313404EC();
  *(inited + 144) = 7;
  v4 = objc_allocWithZone(MEMORY[0x277CD4030]);
  v5 = OUTLINED_FUNCTION_16_26();
  *(inited + 152) = sub_231340C2C(v5, v6);
  *(inited + 160) = 8;
  *(inited + 168) = sub_231340558();
  *(inited + 176) = 9;
  v7 = objc_allocWithZone(MEMORY[0x277CD42B8]);
  v8 = OUTLINED_FUNCTION_15_27();
  *(inited + 184) = sub_231340DC4(v8, v9, v10);
  *(inited + 192) = 10;
  *(inited + 200) = sub_2313405D8();
  *(inited + 208) = 11;
  *(inited + 216) = OUTLINED_FUNCTION_180(objc_allocWithZone(MEMORY[0x277CD3BD0]));
  *(inited + 224) = 12;
  *(inited + 232) = OUTLINED_FUNCTION_180(objc_allocWithZone(MEMORY[0x277CD3E60]));
  *(inited + 240) = 13;
  *(inited + 248) = OUTLINED_FUNCTION_180(objc_allocWithZone(MEMORY[0x277CD3FA8]));
  *(inited + 256) = 14;
  *(inited + 264) = OUTLINED_FUNCTION_180(objc_allocWithZone(MEMORY[0x277CD3AE8]));
  *(inited + 272) = 15;
  sub_231207BDC(0, &qword_27DD44BC0, 0x277CD40C8);
  *(inited + 280) = sub_23136A420();
  *(inited + 288) = 16;
  *(inited + 296) = [objc_allocWithZone(MEMORY[0x277CD3C38]) initWithCarName_];
  *(inited + 304) = 17;
  *(inited + 312) = [objc_allocWithZone(MEMORY[0x277CD3C38]) initWithCarName_];
  *(inited + 320) = 18;
  *(inited + 328) = [objc_allocWithZone(MEMORY[0x277CD39E8]) initWithCarName:0 signals:0];
  *(inited + 336) = 19;
  v11 = objc_allocWithZone(MEMORY[0x277CD3C70]);
  *(inited + 344) = sub_2313413C8(0, 0, &qword_27DD44BA8, 0x277CD4188, &selRef_initWithReservationContainerReference_reservationItemReferences_);
  *(inited + 352) = 20;
  *(inited + 360) = [objc_allocWithZone(MEMORY[0x277CD3CA8]) init];
  *(inited + 368) = 21;
  *(inited + 376) = [objc_allocWithZone(MEMORY[0x277CD4280]) init];
  *(inited + 384) = 22;
  *(inited + 392) = [objc_allocWithZone(MEMORY[0x277CD3E70]) init];
  *(inited + 400) = 23;
  *(inited + 408) = [objc_allocWithZone(MEMORY[0x277CD4098]) init];
  *(inited + 416) = 24;
  *(inited + 424) = [objc_allocWithZone(MEMORY[0x277CD3F68]) init];
  *(inited + 432) = 25;
  *(inited + 440) = [objc_allocWithZone(MEMORY[0x277CD4028]) init];
  *(inited + 448) = 26;
  *(inited + 456) = [objc_allocWithZone(MEMORY[0x277CD4018]) init];
  *(inited + 464) = 27;
  *(inited + 472) = [objc_allocWithZone(MEMORY[0x277CD3F80]) init];
  *(inited + 480) = 28;
  *(inited + 488) = sub_231340624(0);
  *(inited + 496) = 29;
  *(inited + 504) = sub_23134070C(0);
  *(inited + 512) = 30;
  v12 = objc_allocWithZone(MEMORY[0x277CD40E0]);
  v13 = OUTLINED_FUNCTION_16_26();
  *(inited + 520) = sub_2313411C4(v13, v14);
  *(inited + 528) = 31;
  v15 = objc_allocWithZone(MEMORY[0x277CD4290]);
  *(inited + 536) = sub_231341238(0);
  *(inited + 544) = 32;
  v16 = objc_allocWithZone(MEMORY[0x277CD3BC0]);
  v17 = OUTLINED_FUNCTION_15_27();
  *(inited + 552) = sub_2313412A4(v17, v18, v19, 0);
  *(inited + 560) = 33;
  *(inited + 568) = sub_231340820(MEMORY[0x277D84F90]);
  *(inited + 576) = 34;
  v20 = objc_allocWithZone(MEMORY[0x277CD3B10]);
  *(inited + 584) = sub_2313413C8(0, 0, &qword_27DD44BD0, 0x277CD3CF8, &selRef_initWithUserTask_filters_);
  *(inited + 592) = 35;
  *(inited + 600) = [objc_allocWithZone(MEMORY[0x277CD3B48]) initWithLabel:0 duration:0 type:0.0];
  sub_231207BDC(0, &qword_27DD443D0, 0x277CD3D30);
  sub_231342138();
  return sub_231369EC0();
}

id sub_2313401C8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD3A18]);
  v1 = OUTLINED_FUNCTION_15_27();
  return sub_23134097C(v1, v2, v3, 0, 0);
}

id sub_231340200()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD4108]);
  v1 = OUTLINED_FUNCTION_15_27();
  return sub_231340A40(v1, v2, v3, 0, 0, 0);
}

id sub_23134023C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44BA0, &qword_231378758);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_123_0(inited, xmmword_23136B670);
  v3 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v4 = a1;
  do
  {
    v5 = inited[2].n128_u64[0];
    if (!v5)
    {
      break;
    }

    v6 = v5;
    OUTLINED_FUNCTION_182();
    OUTLINED_FUNCTION_34_13(v7, v8, v9, v10, v11, v12, v13, v14, v22);
    if (v15)
    {
      OUTLINED_FUNCTION_110_1();
    }

    OUTLINED_FUNCTION_41_14();
    sub_23136A240();
    OUTLINED_FUNCTION_153();
  }

  while ((v16 & 1) == 0);
  swift_setDeallocating();
  sub_231322BD8();
  v17 = objc_allocWithZone(MEMORY[0x277CD41A8]);
  v18 = OUTLINED_FUNCTION_15_27();
  return sub_231340ABC(v18, v19, v20, 0, 1, v3, 0, 0);
}

id sub_231340328(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44BA0, &qword_231378758);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_123_0(inited, xmmword_23136B670);
  v3 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v4 = a1;
  do
  {
    v5 = inited[2].n128_u64[0];
    if (!v5)
    {
      break;
    }

    v6 = v5;
    OUTLINED_FUNCTION_182();
    OUTLINED_FUNCTION_34_13(v7, v8, v9, v10, v11, v12, v13, v14, v19);
    if (v15)
    {
      OUTLINED_FUNCTION_110_1();
    }

    OUTLINED_FUNCTION_41_14();
    sub_23136A240();
    OUTLINED_FUNCTION_153();
  }

  while ((v16 & 1) == 0);
  swift_setDeallocating();
  sub_231322BD8();
  v17 = objc_allocWithZone(MEMORY[0x277CD41A0]);
  return sub_231340BA0(0, v3);
}

id sub_231340408(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44BA0, &qword_231378758);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_123_0(inited, xmmword_23136B670);
  v3 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v4 = a1;
  do
  {
    v5 = inited[2].n128_u64[0];
    if (!v5)
    {
      break;
    }

    v6 = v5;
    OUTLINED_FUNCTION_182();
    OUTLINED_FUNCTION_34_13(v7, v8, v9, v10, v11, v12, v13, v14, v19);
    if (v15)
    {
      OUTLINED_FUNCTION_110_1();
    }

    OUTLINED_FUNCTION_41_14();
    sub_23136A240();
    OUTLINED_FUNCTION_153();
  }

  while ((v16 & 1) == 0);
  swift_setDeallocating();
  sub_231322BD8();
  v17 = objc_allocWithZone(MEMORY[0x277CD41D0]);
  return sub_231341344(v3, &selRef_initWithContacts_);
}

id sub_231340558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44BE8, &qword_231378768);
  OUTLINED_FUNCTION_40_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_30_17();
  sub_2313698E0();
  v5 = OUTLINED_FUNCTION_31_22();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = objc_allocWithZone(MEMORY[0x277CD39F0]);
  v10 = OUTLINED_FUNCTION_16_26();
  return sub_231340CBC(v10, v11, v0);
}

uint64_t sub_2313405D8()
{
  sub_231207BDC(0, &qword_27DD44BD8, 0x277CD41D8);
  OUTLINED_FUNCTION_16_26();
  return sub_23136A410();
}

id sub_231340624(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44BA0, &qword_231378758);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_123_0(inited, xmmword_23136B670);
  v23 = MEMORY[0x277D84F90];
  v3 = a1;
  do
  {
    v4 = inited[2].n128_u64[0];
    if (!v4)
    {
      break;
    }

    v5 = v4;
    OUTLINED_FUNCTION_182();
    OUTLINED_FUNCTION_34_13(v6, v7, v8, v9, v10, v11, v12, v13, v23);
    if (v14)
    {
      OUTLINED_FUNCTION_110_1();
    }

    OUTLINED_FUNCTION_41_14();
    sub_23136A240();
    OUTLINED_FUNCTION_153();
  }

  while ((v15 & 1) == 0);
  swift_setDeallocating();
  sub_231322BD8();
  v16 = objc_allocWithZone(MEMORY[0x277CD4078]);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_28_19();
  return sub_231340E68(v17, v18, v19, v20, v21, 0, 0, 0);
}

id sub_23134070C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44BA0, &qword_231378758);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_123_0(inited, xmmword_23136B670);
  v13 = MEMORY[0x277D84F90];
  v3 = a1;
  v4 = inited[2].n128_u64[0];
  if (v4)
  {
    v5 = v4;
    MEMORY[0x23192A830]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23136A1C0();
    }

    OUTLINED_FUNCTION_41_14();
    sub_23136A240();
  }

  swift_setDeallocating();
  sub_231322BD8();
  v6 = objc_allocWithZone(MEMORY[0x277CD4048]);
  OUTLINED_FUNCTION_28_19();
  return sub_231340FAC(v7, v8, v9, v10, v11, 0, 0, 0, 0);
}

void *sub_231340820(void *result)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v3 = result[2];
  v4 = (result + 4);
  while (1)
  {
    if (v3 == v1)
    {
      v8 = objc_allocWithZone(MEMORY[0x277CD4138]);
      return sub_231341344(v2, &selRef_initWithRecipients_);
    }

    if (v1 >= v3)
    {
      break;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_11;
    }

    v6 = *&v4[8 * v1++];
    if (v6)
    {
      v7 = v6;
      MEMORY[0x23192A830]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23136A1C0();
      }

      OUTLINED_FUNCTION_65();
      result = sub_23136A240();
      v2 = v9;
      v1 = v5;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

id sub_231340910(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:a1 content:a2 groupName:a3];

  return v6;
}

id sub_23134097C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    sub_231207BDC(0, &qword_27DD44BA8, 0x277CD4188);
    v11 = sub_23136A190();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 initWithTargetTaskList:a1 taskTitles:v11 spatialEventTrigger:a3 temporalEventTrigger:a4 priority:a5];

  return v12;
}

id sub_231340A40(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = [v6 initWithTargetTask:a1 taskTitle:a2 status:a3 priority:a4 spatialEventTrigger:a5 temporalEventTrigger:a6];

  return v11;
}

id sub_231340ABC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (a6)
  {
    sub_231207BDC(0, &qword_27DD43D20, 0x277CD3E90);
    v17 = sub_23136A190();
  }

  else
  {
    v17 = 0;
  }

  v18 = [v9 initWithCallRecordFilter:a1 callRecordToCallBack:a2 audioRoute:a3 destinationType:a4 preferredCallProvider:a5 contacts:v17 ttyType:a7 callCapability:a8];

  return v18;
}

id sub_231340BA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_231207BDC(0, &qword_27DD43D20, 0x277CD3E90);
    v4 = sub_23136A190();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithDestinationType:a1 contacts:v4];

  return v5;
}

id sub_231340C2C(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_231207BDC(0, &qword_27DD44BE0, 0x277CD3DB8);
    v4 = sub_23136A190();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithMediaItems:v4 mediaSearch:a2];

  return v5;
}

id sub_231340CBC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    sub_231207BDC(0, &qword_27DD44BE0, 0x277CD3DB8);
    v7 = sub_23136A190();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2313698E0();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v8) != 1)
  {
    v9 = sub_2313698D0();
    (*(*(v8 - 8) + 8))(a3, v8);
  }

  v10 = [v4 initWithMediaItems:v7 mediaSearch:a2 mediaDestination:v9];

  return v10;
}

id sub_231340DC4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    sub_231207BDC(0, &qword_27DD44BE0, 0x277CD3DB8);
    v7 = sub_23136A190();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithMediaItems:v7 mediaSearch:a2 affinityType:a3];

  return v8;
}

id sub_231340E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a1)
  {
    sub_231207BDC(0, &qword_27DD43D20, 0x277CD3E90);
    v13 = sub_23136A190();

    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
    if (a3)
    {
LABEL_3:
      v14 = sub_231369FA0();

      if (a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v15 = 0;
      if (a7)
      {
        goto LABEL_5;
      }

LABEL_9:
      v16 = 0;
      goto LABEL_10;
    }
  }

  v14 = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v15 = sub_231369FA0();

  if (!a7)
  {
    goto LABEL_9;
  }

LABEL_5:
  v16 = sub_231369FA0();

LABEL_10:
  v17 = [v8 initWithRecipients:v13 content:v14 groupName:v15 serviceName:v16 sender:a8];

  return v17;
}

id sub_231340FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    sub_231207BDC(0, &qword_27DD43D20, 0x277CD3E90);
    v16 = sub_23136A190();

    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = 0;
    if (a2)
    {
LABEL_3:
      sub_231207BDC(0, &qword_27DD43D20, 0x277CD3E90);
      v17 = sub_23136A190();

      if (a3)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v17 = 0;
  if (a3)
  {
LABEL_4:
    v18 = sub_23136A190();

    if (a6)
    {
      goto LABEL_5;
    }

LABEL_10:
    v19 = 0;
    if (a7)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v18 = 0;
  if (!a6)
  {
    goto LABEL_10;
  }

LABEL_5:
  v19 = sub_23136A190();

  if (a7)
  {
LABEL_6:
    v20 = sub_23136A190();

    goto LABEL_12;
  }

LABEL_11:
  v20 = 0;
LABEL_12:
  if (!a8)
  {
    v21 = 0;
    if (a9)
    {
      goto LABEL_14;
    }

LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  sub_231207BDC(0, &qword_27DD44BA8, 0x277CD4188);
  v21 = sub_23136A190();

  if (!a9)
  {
    goto LABEL_16;
  }

LABEL_14:
  v22 = sub_23136A190();

LABEL_17:
  v23 = [v9 initWithRecipients:v16 senders:v17 searchTerms:v18 attributes:a4 dateTimeRange:a5 identifiers:v19 notificationIdentifiers:v20 speakableGroupNames:v21 conversationIdentifiers:v22];

  return v23;
}

id sub_2313411C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = sub_23136A190();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithIdentifiers:v4 attribute:a2];

  return v5;
}

id sub_231341238(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_23136A190();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithMessageIdentifiers_];

  return v3;
}

id sub_2313412A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_231369FA0();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_231369FA0();

LABEL_6:
  v8 = [v4 initWithMessageIdentifier:v6 editedContent:v7];

  return v8;
}

id sub_231341344(uint64_t a1, SEL *a2)
{
  if (a1)
  {
    sub_231207BDC(0, &qword_27DD43D20, 0x277CD3E90);
    v4 = sub_23136A190();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 *a2];

  return v5;
}

id sub_2313413C8(void *a1, uint64_t a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  if (a2)
  {
    sub_231207BDC(0, a3, a4);
    v8 = sub_23136A190();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 *a5];

  return v9;
}

uint64_t sub_231341458()
{
  sub_231369FD0();
  OUTLINED_FUNCTION_85_3();
  sub_23136A9D0();
  sub_23136A060();
  v0 = sub_23136AA00();

  return v0;
}

void sub_2313414CC(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44C10, &qword_231378820), v2 = sub_23136A630(), v3 = v2, (v26 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v24 = v1;
    v25 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v25 + 8 * v4++);
      v7 = *(v3 + 40);
      sub_231369FD0();
      sub_23136A9D0();
      v27 = v6;
      sub_23136A060();
      v8 = sub_23136AA00();

      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v14 = *(*(v3 + 48) + 8 * v10);
        v15 = sub_231369FD0();
        v17 = v16;
        if (v15 == sub_231369FD0() && v17 == v18)
        {

          goto LABEL_17;
        }

        OUTLINED_FUNCTION_35_5();
        v20 = sub_23136A900();

        if (v20)
        {

          goto LABEL_17;
        }

        v8 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v27;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v23;
LABEL_17:
      v1 = v24;
      if (v4 == v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_2313416CC(uint64_t a1)
{
  v2 = sub_231369A00();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B28, &qword_23136F4C0);
  result = sub_23136A630();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_231341F84(&qword_27DD43B18, MEMORY[0x277D723F8]);
    v16 = sub_231369F30();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v5, *(v9 + 48) + v18 * v13, v2);
      sub_231341F84(&qword_27DD43B20, MEMORY[0x277D723F8]);
      v23 = sub_231369F60();
      v24 = *v12;
      (*v12)(v5, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_231341A10(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = sub_23136A570();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_231341B04()
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

void sub_231341BDC()
{
  sub_231369990();
  if (v0 <= 0x3F)
  {
    sub_231341C60();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_231341C60()
{
  if (!qword_27DD44B48)
  {
    sub_231369DD0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43C68, &qword_231378D20);
    sub_231341F84(&qword_27DD437D8, MEMORY[0x277D73148]);
    v0 = sub_231369EF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DD44B48);
    }
  }
}

uint64_t getEnumTagSinglePayload for INIntentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDD)
  {
    if (a2 + 35 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 35) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 36;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v5 = v6 - 36;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for INIntentType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDC)
  {
    v6 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
          *result = a2 + 35;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_231341EE8()
{
  result = qword_27DD44B60;
  if (!qword_27DD44B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44B60);
  }

  return result;
}

uint64_t sub_231341F84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_231342014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HydratedTool(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231342078(uint64_t a1)
{
  v2 = type metadata accessor for HydratedTool(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2313420D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HydratedTool(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_231342138()
{
  result = qword_27DD44BC8;
  if (!qword_27DD44BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44BC8);
  }

  return result;
}

void OUTLINED_FUNCTION_7_25()
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

double OUTLINED_FUNCTION_23_17()
{
  v2 = v0[50];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[42];
  v6 = v0[34];
  return v1;
}

void OUTLINED_FUNCTION_54_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_55_11(float a1)
{
  *v1 = a1;
  *(v1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_65_7()
{
  v2 = v0[101];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[67];

  return sub_2313690F0();
}

void OUTLINED_FUNCTION_73_5()
{
  v1 = v0[92];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
}

uint64_t OUTLINED_FUNCTION_74_7()
{

  return sub_23136A140();
}

void OUTLINED_FUNCTION_75_5()
{
  v1 = v0[133];
  v2 = v0[113];
  v3 = v0[106];
  v4 = v0[96];
}

void OUTLINED_FUNCTION_76_5()
{
  v1 = v0[32];
  v0[133] = v1;
  v0[134] = *(v1 + 16);
}

void *OUTLINED_FUNCTION_81_5()
{
  v2 = *(v1 + 1120);
  v3 = *(v1 + 1116);
  v4 = *(v1 + 1112);
  v6 = *(v1 + 384);
  result = *(v1 + 392);
  v8 = *(v1 + 368);
  v7 = *(v1 + 376);
  v10 = *(v1 + 352);
  v9 = *(v1 + 360);
  v12 = *(v1 + 336);
  v11 = *(v1 + 344);
  *result = v0;
  v13 = *(v6 + 104);
  return result;
}

void OUTLINED_FUNCTION_91_1()
{
  v4 = v0[58];
  v5 = v0[57];
  v6 = v0[55];
  v7 = v0[54];
  v1 = v0[53];
  v3 = v0[49];
  v2 = v0[50];
}

uint64_t OUTLINED_FUNCTION_97_1@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 1088) = a1;
  *(v2 + 1080) = 0;

  return sub_2311CF324(v1 + 32, v2 + 64);
}

uint64_t OUTLINED_FUNCTION_100_1@<X0>(uint64_t a1@<X8>)
{
  v3 = (a1 + 16 * v1);
  v4 = *v3;
  v5 = v3[1];

  return sub_231369EE0();
}

void OUTLINED_FUNCTION_102_0()
{
  v1 = v0[113];
  v2 = v0[106];
  v3 = v0[99];
  v4 = v0[92];
  v6 = v0[60];
  v5 = v0[61];
  v7 = v0[59];
}

uint64_t OUTLINED_FUNCTION_110_1()
{

  return sub_23136A1C0();
}

uint64_t OUTLINED_FUNCTION_111_1()
{
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[97];
  v5 = v0[71];
  v6 = v0[69];
  v7 = v0[67];

  return sub_2313690F0();
}

void OUTLINED_FUNCTION_118_0()
{
  v1 = v0[282];
  v2 = v0[281];
  v3 = v0[280];
}

uint64_t OUTLINED_FUNCTION_121_1()
{
  result = *(v0 - 144);
  v2 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_122_1()
{
  v2 = v0[107];
  v3 = v0[71];
  v5 = v0[55];
  v4 = v0[56];
  v6 = v0[35];
}

__n128 *OUTLINED_FUNCTION_123_0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

void OUTLINED_FUNCTION_127_1()
{
  *(v1 - 136) = *(v0 + 1116);
  *(v1 - 128) = *(v0 + 496);
  v2 = *(v0 + 400);
}

uint64_t OUTLINED_FUNCTION_130_1()
{
  v2 = *(*(v1 - 232) + 8);
  result = v0;
  v4 = *(v1 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_135()
{
}

uint64_t OUTLINED_FUNCTION_136_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_137_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_138_0()
{

  return sub_23136A900();
}

uint64_t OUTLINED_FUNCTION_139_0()
{
  v2 = *(v0 + 440);
  v3 = *(v0 + 496);

  return sub_231342014(v2, v3);
}

void OUTLINED_FUNCTION_141_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_145()
{
  v1 = v0[113];
  v2 = v0[106];
  v3 = v0[100];
  v4 = v0[92];
}

__n128 OUTLINED_FUNCTION_150(uint64_t a1)
{
  *(v2 - 112) = a1;
  result = *(v2 - 192);
  *v1 = result.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_152(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t *a28)
{
  result = *(v28 + 656);
  v30 = *(v28 + 632);
  v31 = *a28;
  return result;
}

void OUTLINED_FUNCTION_157()
{
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = (v3 + 16 * v1);
  v6 = v5[1];
  *(v2 - 128) = *v5;
}

uint64_t OUTLINED_FUNCTION_161()
{
  v1 = *(*(v0 - 152) + 8);
  result = *(v0 - 112);
  v3 = *(v0 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_164()
{

  return sub_2311CFD58(v1, v0, (v2 - 104));
}

void OUTLINED_FUNCTION_165(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

void OUTLINED_FUNCTION_166(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 + 14) = v22;
  *(v20 + 22) = 2080;

  sub_23133C730(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void OUTLINED_FUNCTION_167()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2048;

  sub_23133D0C8();
}

uint64_t OUTLINED_FUNCTION_168()
{
  *(v3 - 144) = v0;
  *(v3 - 136) = v2;

  return sub_231342078(v1);
}

id OUTLINED_FUNCTION_169(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33)
{
  *v33 = a33;

  return v34;
}

uint64_t OUTLINED_FUNCTION_170(uint64_t a1)
{
  *(v2 + 1032) = a1;

  return sub_23129BF38(v1);
}

uint64_t OUTLINED_FUNCTION_171()
{
  v2 = v0[121];
  v3 = v0[99];
  v5 = v0[61];
  v4 = v0[62];
  v7 = v0[59];
  v6 = v0[60];
}

void *OUTLINED_FUNCTION_172(void *a1)
{

  return sub_23133DA58(v1, a1);
}

uint64_t OUTLINED_FUNCTION_173()
{
  *(v2 - 144) = v1;
  *(v2 - 136) = v0;
}

uint64_t OUTLINED_FUNCTION_177()
{

  return sub_23136A4E0();
}

BOOL OUTLINED_FUNCTION_178()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_179()
{
}

id OUTLINED_FUNCTION_180(void *a1)
{

  return [a1 (v1 + 363)];
}

uint64_t OUTLINED_FUNCTION_181()
{

  return sub_231367D80();
}

void OUTLINED_FUNCTION_182()
{

  JUMPOUT(0x23192A830);
}

NSObject *static TrialUtils.getDirectoryPath(triLevel:)(uint8_t *a1)
{
  v2 = sub_2313698C0();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v58 = &v56 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v56 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v56 = &v56 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - v18;
  sub_231369100();
  v20 = sub_2313698A0();
  v21 = sub_23136A3A0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_63();
    v57 = a1;
    OUTLINED_FUNCTION_6_29(v22);
    _os_log_impl(&dword_2311CB000, v20, v21, "Fetching asset from Trial.", v2, 2u);
    a1 = v57;
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  v23 = *(v5 + 8);
  v23(v19, v2);
  if (a1)
  {
    v24 = a1;
    if ([(uint8_t *)v24 levelOneOfCase]== 101)
    {
      v25 = [(uint8_t *)v24 directoryValue];
      if (v25)
      {
        v26 = v25;
        v27 = sub_231343CC0(v25);
        if (v28)
        {
          v29 = v27;
          v30 = HIBYTE(v28) & 0xF;
          if ((v28 & 0x2000000000000000) == 0)
          {
            v30 = v27 & 0xFFFFFFFFFFFFLL;
          }

          if (v30)
          {
          }

          else
          {

            v48 = v56;
            sub_231369100();
            v49 = sub_2313698A0();
            v50 = sub_23136A3A0();
            if (OUTLINED_FUNCTION_18_0(v50))
            {
              v51 = OUTLINED_FUNCTION_63();
              v57 = v2;
              OUTLINED_FUNCTION_6_29(v51);
              OUTLINED_FUNCTION_4_29(&dword_2311CB000, v52, v50, "Directory path from Trial is empty. It implies User did not specify asset in trial rollout/experiment.");
              v53 = OUTLINED_FUNCTION_0_40();
              MEMORY[0x23192B930](v53);

              v54 = v48;
              v55 = v57;
            }

            else
            {

              v54 = v48;
              v55 = v2;
            }

            v23(v54, v55);
            return 0;
          }

          return v29;
        }
      }

      v57 = v2;
      sub_231369100();
      v29 = sub_2313698A0();
      v42 = sub_23136A3B0();
      if (OUTLINED_FUNCTION_18_0(v42))
      {
        v43 = OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_6_29(v43);
        OUTLINED_FUNCTION_4_29(&dword_2311CB000, v44, v42, "Did not get directory path info from trial");
        v45 = OUTLINED_FUNCTION_0_40();
        MEMORY[0x23192B930](v45);
      }

      v41 = 1;
    }

    else
    {
      v57 = v2;
      v36 = v58;
      sub_231369100();
      v37 = v24;
      v29 = sub_2313698A0();
      v38 = sub_23136A3B0();
      if (OUTLINED_FUNCTION_18_0(v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 67109376;
        *(v39 + 4) = [v37 levelOneOfCase];

        *(v39 + 8) = 1024;
        *(v39 + 10) = 101;
        _os_log_impl(&dword_2311CB000, v29, v38, "getting level as %d - it should be directory i.e %d", v39, 0xEu);
        v40 = OUTLINED_FUNCTION_0_40();
        MEMORY[0x23192B930](v40);
        v41 = 4;
      }

      else
      {

        v41 = 4;
        v29 = v37;
      }

      v15 = v36;
    }

    v23(v15, v57);
    sub_231343C18();
    swift_allocError();
    *v46 = v41;
    swift_willThrow();

    return v29;
  }

  sub_231369100();
  v31 = sub_2313698A0();
  v32 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_18_0(v32))
  {
    v33 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_6_29(v33);
    OUTLINED_FUNCTION_4_29(&dword_2311CB000, v34, v32, "User did not specify trial asset in trial rollout/experiment (triLevel is nil).");
    v35 = OUTLINED_FUNCTION_0_40();
    MEMORY[0x23192B930](v35);
  }

  v23(v10, v2);
  return 0;
}

uint64_t TrialMetaData.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000001BLL, 0x8000000231381E70);
  sub_231343D24();
  v3 = sub_231369E90();
  MEMORY[0x23192A730](v3);

  MEMORY[0x23192A730](0xD00000000000001ALL, 0x8000000231381E90);
  v4 = sub_231369E90();
  MEMORY[0x23192A730](v4);

  return 0;
}

void sub_2313430EC(uint64_t *a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v94 = sub_2313698C0();
  v3 = OUTLINED_FUNCTION_0_0(v94);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v86 = &v83 - v10;
  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v93 = (v13 + 8);
  v98 = &unk_23137A540;
  v9.n128_u64[0] = 136315394;
  v85 = v9;
  v88 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
  v89 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_A";
  v87 = "SIRI_SUGGESTIONS_PLATFORM";
  v95 = MEMORY[0x277D84F98];
  v92 = v1;
  v90 = v7;
  do
  {
    v14 = *(&unk_2845F1028 + v11++ + 32);
    switch(v14)
    {
      case 2:
        OUTLINED_FUNCTION_3_38();
        break;
      case 3:
        OUTLINED_FUNCTION_2_30();
        break;
      default:
        break;
    }

    v15 = sub_231369FA0();

    v16 = [v2 experimentIdentifiersWithNamespaceName_];

    v96 = v12;
    v97 = v11;
    if (v16)
    {
      v99 = v14;
      v17 = v86;
      sub_231369100();
      v18 = v16;
      v19 = sub_2313698A0();
      v20 = sub_23136A390();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = OUTLINED_FUNCTION_8_28(v22).n128_u32[0];
        v23 = [v18 debugDescription];
        v24 = sub_231369FD0();
        v26 = v25;

        v27 = sub_2311CFD58(v24, v26, &v100);

        *(v21 + 4) = v27;
        *(v21 + 12) = 2080;
        v28 = v98;
        v29 = 0xD00000000000001FLL;
        switch(v99)
        {
          case 1:
            v28 = v89;
            break;
          case 2:
            v29 = OUTLINED_FUNCTION_3_38();
            v28 = v88;
            break;
          case 3:
            v29 = OUTLINED_FUNCTION_2_30();
            v28 = v87;
            break;
          default:
            break;
        }

        v30 = sub_2311CFD58(v29, v28 | 0x8000000000000000, &v100);

        *(v21 + 14) = v30;
        _os_log_impl(&dword_2311CB000, v19, v20, "experiment details %s for namespace - %s", v21, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
        v31 = OUTLINED_FUNCTION_0_40();
        MEMORY[0x23192B930](v31);
      }

      (*v93)(v17, v94);
      v32 = v18;
      v33 = [v32 experimentId];
      sub_231369FD0();
      v91 = v34;

      [v32 deploymentId];
      v35 = [v32 treatmentId];
      sub_231369FD0();

      v36 = v95;
      swift_isUniquelyReferenced_nonNull_native();
      v100 = v36;
      v37 = sub_23121630C(v99);
      if (__OFADD__(*(v36 + 16), (v38 & 1) == 0))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        sub_23136A970();
        __break(1u);
LABEL_50:
        JUMPOUT(0);
      }

      v39 = v37;
      v40 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44C28, &qword_231378948);
      if (sub_23136A700())
      {
        v41 = sub_23121630C(v99);
        v2 = v92;
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_49;
        }

        v39 = v41;
      }

      else
      {
        v2 = v92;
      }

      v43 = v100;
      v95 = v100;
      if (v40)
      {
        v44 = v100[7] + 40 * v39;
        v45 = *(v44 + 8);
        v46 = *(v44 + 32);
        OUTLINED_FUNCTION_7_26(v44);
      }

      else
      {
        v100[(v39 >> 6) + 8] |= 1 << v39;
        *(*(v43 + 48) + v39) = v99;
        OUTLINED_FUNCTION_7_26(*(v43 + 56) + 40 * v39);
        v48 = *(v47 + 16);
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_47;
        }

        *(v47 + 16) = v50;
      }

      v7 = v90;
      v12 = v96;
      v11 = v97;
      LODWORD(v14) = v99;
    }

    v51 = v14;
    switch(v14)
    {
      case 2:
        OUTLINED_FUNCTION_3_38();
        break;
      case 3:
        OUTLINED_FUNCTION_2_30();
        break;
      default:
        break;
    }

    v52 = sub_231369FA0();

    v53 = [v2 rolloutIdentifiersWithNamespaceName_];

    if (v53)
    {
      v54 = v14;
      sub_231369100();
      v55 = v53;
      v56 = sub_2313698A0();
      v57 = sub_23136A390();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = OUTLINED_FUNCTION_8_28(v59).n128_u32[0];
        v60 = [v55 debugDescription];
        v61 = sub_231369FD0();
        v63 = v62;

        v64 = sub_2311CFD58(v61, v63, &v100);

        *(v58 + 4) = v64;
        *(v58 + 12) = 2080;
        v65 = v98;
        v66 = 0xD00000000000001FLL;
        v7 = v90;
        switch(v51)
        {
          case 0:
            goto LABEL_32;
          case 1:
            v65 = v89;
            goto LABEL_32;
          case 2:
            v66 = OUTLINED_FUNCTION_3_38();
            v65 = v88;
            goto LABEL_32;
          case 3:
            v66 = OUTLINED_FUNCTION_2_30();
            v65 = v87;
LABEL_32:
            v67 = sub_2311CFD58(v66, v65 | 0x8000000000000000, &v100);

            *(v58 + 14) = v67;
            _os_log_impl(&dword_2311CB000, v56, v57, "rollout details %s for namespace - %s", v58, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_6_1();
            MEMORY[0x23192B930]();
            OUTLINED_FUNCTION_6_1();
            MEMORY[0x23192B930]();

            (*v93)(v7, v94);
            v12 = v96;
            v11 = v97;
            goto LABEL_33;
          default:
            goto LABEL_50;
        }
      }

      (*v93)(v7, v94);
LABEL_33:
      v68 = v55;
      sub_2311F0C84(v68, v101);
      swift_isUniquelyReferenced_nonNull_native();
      v100 = v12;
      v69 = v54;
      v70 = sub_23121630C(v54);
      if (__OFADD__(v12[2], (v71 & 1) == 0))
      {
        goto LABEL_46;
      }

      v72 = v70;
      v73 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44C20, &qword_231378940);
      if (sub_23136A700())
      {
        v74 = sub_23121630C(v54);
        v2 = v92;
        if ((v73 & 1) != (v75 & 1))
        {
          goto LABEL_49;
        }

        v72 = v74;
      }

      else
      {
        v2 = v92;
      }

      v12 = v100;
      if (v73)
      {
        sub_231343EF8(v101, v100[7] + 56 * v72);
      }

      else
      {
        v100[(v72 >> 6) + 8] |= 1 << v72;
        *(v12[6] + v72) = v69;
        v76 = v12[7] + 56 * v72;
        v77 = v101[0];
        v78 = v101[1];
        v79 = v101[2];
        *(v76 + 48) = v102;
        *(v76 + 16) = v78;
        *(v76 + 32) = v79;
        *v76 = v77;
        v80 = v12[2];
        v49 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (v49)
        {
          goto LABEL_48;
        }

        v12[2] = v81;
      }
    }
  }

  while (v11 != 4);
  v82 = v84;
  *v84 = v95;
  v82[1] = v12;
}

id sub_2313439BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_231369FA0();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_23122A624;
  v11[3] = &block_descriptor_3;
  v8 = _Block_copy(v11);

  v9 = [v4 addUpdateHandlerForNamespaceName:v7 usingBlock:v8];

  _Block_release(v8);

  return v9;
}

id sub_231343B20()
{
  v1 = sub_231369FA0();
  v2 = sub_231369FA0();
  v3 = [v0 levelForFactor:v1 withNamespaceName:v2];

  return v3;
}

unint64_t sub_231343BB8@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() clientWithIdentifier_];
  result = sub_231343F5C();
  a1[3] = result;
  a1[4] = &off_2845F6F78;
  *a1 = v2;
  return result;
}

unint64_t sub_231343C18()
{
  result = qword_27DD44C18;
  if (!qword_27DD44C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44C18);
  }

  return result;
}

void *sub_231343C6C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_231343C90@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_231343CC0(void *a1)
{
  v1 = [a1 path];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231369FD0();

  return v3;
}

unint64_t sub_231343D24()
{
  result = qword_280F84478[0];
  if (!qword_280F84478[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F84478);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrialUtils(_BYTE *result, int a2, int a3)
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

unint64_t sub_231343F5C()
{
  result = qword_280F85E88;
  if (!qword_280F85E88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F85E88);
  }

  return result;
}

void OUTLINED_FUNCTION_7_26(uint64_t a1@<X8>)
{
  v6 = *(v5 - 224);
  *a1 = v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3;
  *(a1 + 24) = v1;
  *(a1 + 32) = v4;
}

uint64_t HabitualActionsGenerator.channel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SiriSuggestions24HabitualActionsGenerator_channel;
  v4 = sub_231369330();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t HabitualActionsGenerator.generateCandidateSuggestions(interaction:environment:factory:)()
{
  OUTLINED_FUNCTION_8();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_2313698C0();
  v1[6] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_67();
  v1[9] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2313440E0()
{
  v36 = v0;
  v0[2] = MEMORY[0x277D84F90];
  v1 = (v0[5] + OBJC_IVAR____TtC15SiriSuggestions24HabitualActionsGenerator_featureFlagProvider);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_26_1();
  v3 = sub_231368420();
  v4 = v0[9];
  if (v3)
  {
    v5 = v0[9];
    sub_231369170();
    v6 = sub_2313698A0();
    v7 = sub_23136A3A0();
    v8 = OUTLINED_FUNCTION_18_0(v7);
    v9 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    if (v8)
    {
      v12 = OUTLINED_FUNCTION_60();
      v13 = OUTLINED_FUNCTION_29_0();
      v35 = v13;
      *v12 = 136315138;
      OUTLINED_FUNCTION_7_27();
      *(v12 + 4) = sub_2311CFD58(0xD00000000000003ELL, v14, &v35);
      OUTLINED_FUNCTION_25();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_15();
    }

    v20 = *(v11 + 8);
    v21 = OUTLINED_FUNCTION_26_1();
    v20(v21);
    v0[10] = v20;
    v22 = [objc_allocWithZone(MEMORY[0x277CEB7D8]) initWithConsumerSubType_];
    v0[11] = v22;
    v23 = [v22 suggestionLayoutFromCache];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 allSuggestionsInLayout];

      sub_231207BDC(0, &unk_27DD443E0, 0x277D42068);
      v26 = sub_23136A1A0();
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
    }

    v0[12] = v26;
    v31 = swift_task_alloc();
    v0[13] = v31;
    *v31 = v0;
    v31[1] = sub_23134437C;
    v32 = v0[4];
    v33 = v0[5];
    v34 = v0[3];

    return sub_2313445E8(v26, (v0 + 2), v32, v34);
  }

  else
  {
    v27 = v0[8];

    v28 = v0[1];
    v29 = MEMORY[0x277D84F90];

    return v28(v29);
  }
}

uint64_t sub_23134437C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23134447C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_70_1();
  a20 = v22;
  if (*(*(v22 + 16) + 16))
  {
  }

  else
  {
    v25 = *(v22 + 64);
    sub_231369170();
    v26 = sub_2313698A0();
    v27 = sub_23136A390();
    v28 = OUTLINED_FUNCTION_18_0(v27);
    v29 = *(v22 + 80);
    v30 = *(v22 + 88);
    v32 = *(v22 + 56);
    v31 = *(v22 + 64);
    v33 = *(v22 + 48);
    if (v28)
    {
      a10 = *(v22 + 80);
      v34 = OUTLINED_FUNCTION_60();
      v35 = OUTLINED_FUNCTION_29_0();
      a11 = v35;
      *v34 = 136315138;
      OUTLINED_FUNCTION_7_27();
      *(v34 + 4) = sub_2311CFD58(0xD00000000000003ELL, v36, &a11);
      OUTLINED_FUNCTION_25();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_15();

      v42 = OUTLINED_FUNCTION_26_1();
      a10(v42);
    }

    else
    {

      v43 = OUTLINED_FUNCTION_26_1();
      v29(v43);
    }
  }

  v45 = *(v22 + 64);
  v44 = *(v22 + 72);

  v46 = *(v22 + 8);
  OUTLINED_FUNCTION_7();

  return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2313445E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231344618()
{
  v1 = v0[17];
  if (v1 >> 62)
  {
LABEL_21:
    v2 = sub_23136A5A0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[22] = v2;
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      v4 = v0[17];
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23192AD10](v3);
      }

      else
      {
        if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v5 = *(v4 + 8 * v3 + 32);
      }

      v6 = v5;
      v0[23] = v5;
      v0[24] = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v7 = OUTLINED_FUNCTION_43_15();
      v8 = OUTLINED_FUNCTION_42_15(v7);

      if (v8 == 10)
      {
        break;
      }

      v9 = OUTLINED_FUNCTION_43_15();
      v10 = OUTLINED_FUNCTION_42_15(v9);

      if (v10 == 2)
      {
        break;
      }

      v3 = v0[24];
      if (v3 == v0[22])
      {
        goto LABEL_13;
      }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[25] = v13;
    *v13 = v14;
    OUTLINED_FUNCTION_5_31(v13);

    return sub_231344B64();
  }

  else
  {
LABEL_13:
    OUTLINED_FUNCTION_56_0();

    return v11();
  }
}

uint64_t sub_2313447A8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 200);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23134488C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 144);
    sub_2311E6A28((v0 + 56), v0 + 16);
    sub_2311CF324(v0 + 16, v0 + 96);
    v2 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_25:
      v27 = *(v0 + 144);
      v28 = *(v2 + 16);
      sub_23126DF64();
      v2 = v29;
      *v27 = v29;
    }

    v4 = *(v2 + 16);
    v5 = *(v0 + 184);
    if (v4 >= *(v2 + 24) >> 1)
    {
      v30 = *(v0 + 144);
      sub_23126DF64();
      v2 = v31;

      *v30 = v2;
    }

    else
    {
    }

    v6 = *(v0 + 144);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, v7);
    v10 = *(v7 - 8);
    v11 = *(v10 + 64);
    v12 = OUTLINED_FUNCTION_43();
    (*(v10 + 16))(v12, v9, v7);
    sub_2312E6494(v4, v12, v6, v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

    *v6 = v2;
    if (*(v2 + 16) > 2uLL)
    {
LABEL_6:
      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_74();

      __asm { BRAA            X1, X16 }
    }
  }

  else
  {

    sub_2311D1F18(v0 + 56, &qword_27DD42F50, &qword_23136D440);
  }

  v2 = 0x1FC45E000;
  while (1)
  {
    v15 = *(v0 + 192);
    if (v15 == *(v0 + 176))
    {
      goto LABEL_6;
    }

    v16 = *(v0 + 136);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x23192AD10](*(v0 + 192));
    }

    else
    {
      if (v15 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v17 = *(v16 + 8 * v15 + 32);
    }

    v18 = v17;
    *(v0 + 184) = v17;
    *(v0 + 192) = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v19 = OUTLINED_FUNCTION_43_15();
    v20 = OUTLINED_FUNCTION_42_15(v19);

    if (v20 == 10)
    {
      break;
    }

    v21 = OUTLINED_FUNCTION_43_15();
    v22 = OUTLINED_FUNCTION_42_15(v21);

    if (v22 == 2)
    {
      break;
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 200) = v23;
  *v23 = v24;
  OUTLINED_FUNCTION_5_31();
  OUTLINED_FUNCTION_74();

  return sub_231344B64();
}

uint64_t sub_231344B64()
{
  OUTLINED_FUNCTION_8();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = sub_2313698C0();
  v1[8] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[9] = v7;
  v9 = *(v8 + 64);
  v1[10] = OUTLINED_FUNCTION_67();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231344C28()
{
  OUTLINED_FUNCTION_70_1();
  v91 = v0;
  v1 = [*(v0 + 32) executableSpecification];
  v2 = [v1 executableType];

  if (v2 != 10)
  {
    if (v2 == 2)
    {
      v3 = *(v0 + 96);
      sub_231369170();
      v4 = sub_2313698A0();
      v5 = sub_23136A3A0();
      v6 = OUTLINED_FUNCTION_18_0(v5);
      v7 = *(v0 + 96);
      v8 = *(v0 + 64);
      v9 = *(v0 + 72);
      if (v6)
      {
        v10 = OUTLINED_FUNCTION_60();
        v11 = OUTLINED_FUNCTION_29_0();
        v90 = v11;
        *v10 = 136315138;
        OUTLINED_FUNCTION_7_27();
        *(v10 + 4) = OUTLINED_FUNCTION_31_23(v12, v13, v14);
        OUTLINED_FUNCTION_28_2();
        _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_40_3();
      }

      v20 = *(v9 + 8);
      v21 = OUTLINED_FUNCTION_28_0();
      v22(v21);
      v23 = [*(v0 + 32) executableSpecification];
      v24 = [v23 executableObject];
      *(v0 + 104) = v24;

      if (v24)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v25 = *(v0 + 32);
          v26 = [v25 clientModelSpecification];
          v27 = [v26 clientModelId];

          sub_231369FD0();
          v29 = v28;

          *(v0 + 112) = v29;
          v30 = [v25 scoreSpecification];
          [v30 rawScore];

          swift_task_alloc();
          OUTLINED_FUNCTION_14_0();
          *(v0 + 120) = v31;
          *v31 = v32;
          OUTLINED_FUNCTION_14_29(v31);
          OUTLINED_FUNCTION_18_1();

          return sub_2313454C8();
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v65 = *(v0 + 80);
      v66 = *(v0 + 32);
      sub_231369170();
      v67 = v66;
      v68 = sub_2313698A0();
      v69 = sub_23136A3A0();

      v70 = os_log_type_enabled(v68, v69);
      v72 = *(v0 + 72);
      v71 = *(v0 + 80);
      v73 = *(v0 + 64);
      if (v70)
      {
        v89 = *(v0 + 80);
        v74 = *(v0 + 32);
        v75 = OUTLINED_FUNCTION_45();
        v90 = OUTLINED_FUNCTION_44();
        *v75 = 136315394;
        OUTLINED_FUNCTION_7_27();
        *(v75 + 4) = OUTLINED_FUNCTION_31_23(v76, v77, v78);
        *(v75 + 12) = 2080;
        v79 = [v74 executableSpecification];
        v80 = [v79 executableType];

        *(v0 + 16) = v80;
        v81 = sub_23136A8B0();
        v83 = sub_2311CFD58(v81, v82, &v90);

        *(v75 + 14) = v83;
        _os_log_impl(&dword_2311CB000, v68, v69, "Function: %s > Not considered type: %s", v75, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_15();

        (*(v72 + 8))(v89, v73);
      }

      else
      {

        (*(v72 + 8))(v71, v73);
      }
    }

LABEL_19:
    OUTLINED_FUNCTION_13_23(*(v0 + 24));
    v85 = *(v0 + 88);
    v84 = *(v0 + 96);
    v86 = *(v0 + 80);

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_18_1();

    __asm { BRAA            X1, X16 }
  }

  v35 = *(v0 + 88);
  sub_231369170();
  v36 = sub_2313698A0();
  v37 = sub_23136A3A0();
  v38 = OUTLINED_FUNCTION_18_0(v37);
  v39 = *(v0 + 88);
  v40 = *(v0 + 64);
  v41 = *(v0 + 72);
  if (v38)
  {
    v42 = OUTLINED_FUNCTION_60();
    v43 = OUTLINED_FUNCTION_29_0();
    v90 = v43;
    *v42 = 136315138;
    OUTLINED_FUNCTION_7_27();
    *(v42 + 4) = OUTLINED_FUNCTION_31_23(v44, v45, v46);
    OUTLINED_FUNCTION_28_2();
    _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_40_3();
  }

  v52 = *(v41 + 8);
  v53 = OUTLINED_FUNCTION_28_0();
  v54(v53);
  v55 = sub_2313467FC(*(v0 + 32));
  *(v0 + 128) = v55;
  if (!v55)
  {
    goto LABEL_19;
  }

  v56 = *(v0 + 32);
  v57 = [v56 clientModelSpecification];
  v58 = [v57 clientModelId];

  sub_231369FD0();
  v60 = v59;

  *(v0 + 136) = v60;
  v61 = [v56 scoreSpecification];
  [v61 rawScore];

  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 144) = v62;
  *v62 = v63;
  OUTLINED_FUNCTION_14_29(v62);
  OUTLINED_FUNCTION_18_1();

  return sub_231346CA8();
}

uint64_t sub_2313451E0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2313452E0()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[13];
  swift_unknownObjectRelease();
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  OUTLINED_FUNCTION_56_0();

  return v5();
}

uint64_t sub_231345354()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 144);
  v3 = *(v1 + 136);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231345454()
{
  OUTLINED_FUNCTION_8();

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  OUTLINED_FUNCTION_56_0();

  return v4();
}

uint64_t sub_2313454C8()
{
  OUTLINED_FUNCTION_8();
  v0[19] = v1;
  v0[17] = v2;
  v0[18] = v3;
  v0[15] = v4;
  v0[16] = v5;
  v0[14] = v6;
  v7 = sub_231368FB0();
  v0[20] = v7;
  OUTLINED_FUNCTION_0(v7);
  v0[21] = v8;
  v10 = *(v9 + 64);
  v0[22] = OUTLINED_FUNCTION_43();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  OUTLINED_FUNCTION_40_0(v11);
  v13 = *(v12 + 64);
  v0[23] = OUTLINED_FUNCTION_43();
  v14 = sub_2313694E0();
  v0[24] = v14;
  OUTLINED_FUNCTION_0(v14);
  v0[25] = v15;
  v17 = *(v16 + 64);
  v0[26] = OUTLINED_FUNCTION_43();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50);
  OUTLINED_FUNCTION_40_0(v18);
  v20 = *(v19 + 64);
  v0[27] = OUTLINED_FUNCTION_43();
  v21 = sub_231367550();
  v0[28] = v21;
  OUTLINED_FUNCTION_0(v21);
  v0[29] = v22;
  v24 = *(v23 + 64);
  v0[30] = OUTLINED_FUNCTION_43();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44C60, qword_231378A88);
  OUTLINED_FUNCTION_40_0(v25);
  v27 = *(v26 + 64);
  v0[31] = OUTLINED_FUNCTION_43();
  v28 = sub_231369330();
  v0[32] = v28;
  OUTLINED_FUNCTION_0(v28);
  v0[33] = v29;
  v31 = *(v30 + 64);
  v0[34] = OUTLINED_FUNCTION_43();
  v32 = sub_2313698C0();
  v0[35] = v32;
  OUTLINED_FUNCTION_0(v32);
  v0[36] = v33;
  v35 = *(v34 + 64);
  v0[37] = OUTLINED_FUNCTION_67();
  v0[38] = swift_task_alloc();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v36 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v36, v37, v38);
}

uint64_t sub_231345750()
{
  v75 = v0;
  if ([*(v0 + 120) actionType] || (v3 = objc_msgSend(*(v0 + 120), sel_intent), (*(v0 + 328) = v3) == 0))
  {
    OUTLINED_FUNCTION_13_23(*(v0 + 112));
    OUTLINED_FUNCTION_4_30();

    OUTLINED_FUNCTION_56_0();

    return v1();
  }

  else
  {
    v4 = v3;
    v5 = *(v0 + 320);
    v6 = *(v0 + 120);
    sub_231369170();
    v7 = v6;
    v8 = v4;
    v9 = sub_2313698A0();
    v10 = sub_23136A3A0();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 320);
    v13 = *(v0 + 288);
    v73 = v8;
    if (v11)
    {
      v14 = *(v0 + 120);
      v70 = *(v0 + 280);
      v15 = v8;
      v16 = OUTLINED_FUNCTION_29_0();
      v74 = swift_slowAlloc();
      *v16 = 136315650;
      OUTLINED_FUNCTION_7_27();
      *(v16 + 4) = OUTLINED_FUNCTION_41_16(v17, v18, &v74);
      *(v16 + 12) = 2080;
      v19 = [v14 bundleId];
      v20 = sub_231369FD0();
      v68 = v12;
      v22 = v21;

      v23 = sub_2311CFD58(v20, v22, &v74);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2080;
      v24 = [v15 _dictionaryRepresentation];
      sub_231369E80();

      v25 = sub_231369E90();
      v27 = v26;

      v28 = sub_2311CFD58(v25, v27, &v74);

      *(v16 + 24) = v28;
      OUTLINED_FUNCTION_25();
      _os_log_impl(v29, v30, v31, v32, v33, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_15();

      v34 = *(v13 + 8);
      v34(v68, v70);
    }

    else
    {

      v34 = *(v13 + 8);
      v35 = OUTLINED_FUNCTION_26_1();
      v34(v35, v36);
    }

    *(v0 + 336) = v34;
    v37 = *(v0 + 248);
    v39 = *(v0 + 136);
    v38 = *(v0 + 144);
    sub_231369EE0();
    sub_231368440();
    v40 = sub_231368450();
    v41 = OUTLINED_FUNCTION_45_11(v37);
    v42 = *(v0 + 272);
    v43 = *(v0 + 248);
    if (v41 == 1)
    {
      v44 = *MEMORY[0x277D60F70];
      OUTLINED_FUNCTION_26_0(v40);
      (*(v45 + 104))();
      if (OUTLINED_FUNCTION_45_11(v43) != 1)
      {
        sub_2311D1F18(*(v0 + 248), &qword_27DD44C60, qword_231378A88);
      }
    }

    else
    {
      OUTLINED_FUNCTION_26_0(v40);
      (*(v46 + 32))();
    }

    v47 = *(v0 + 264);
    v48 = *(v0 + 272);
    v49 = *(v0 + 256);
    v51 = *(v0 + 232);
    v50 = *(v0 + 240);
    v53 = *(v0 + 216);
    v52 = *(v0 + 224);
    v54 = *(v0 + 200);
    v55 = *(v0 + 184);
    v69 = *(v0 + 192);
    v71 = *(v0 + 208);
    (*(v47 + 104))(v48, *MEMORY[0x277D61308], v49);
    *v50 = v73;
    (*(v51 + 104))(v50, *MEMORY[0x277D60918], v52);
    (*(v47 + 16))(v53, v48, v49);
    OUTLINED_FUNCTION_32_16(v53);
    (*(v54 + 104))(v71, *MEMORY[0x277D61368], v69);
    v56 = *MEMORY[0x277D60B78];
    v57 = sub_231367D80();
    OUTLINED_FUNCTION_11(v57);
    (*(v58 + 104))(v55, v56, v57);
    OUTLINED_FUNCTION_32_16(v55);
    v59 = *(MEMORY[0x277D61200] + 4);
    v72 = (*MEMORY[0x277D61200] + MEMORY[0x277D61200]);
    v60 = v73;
    v61 = swift_task_alloc();
    *(v0 + 344) = v61;
    *v61 = v0;
    v61[1] = sub_231345CD8;
    v62 = *(v0 + 240);
    v64 = *(v0 + 208);
    v63 = *(v0 + 216);
    v65 = *(v0 + 184);
    v66.n128_u64[0] = *(v0 + 152);
    v67 = *(v0 + 128);

    return v72(v62, v63, v64, v65, v66);
  }
}

uint64_t sub_231345CD8()
{
  OUTLINED_FUNCTION_12();
  v2 = v1[43];
  v3 = v1[30];
  v4 = v1[29];
  v5 = v1[28];
  v6 = v1[27];
  v7 = v1[26];
  v8 = v1[25];
  v9 = v1[24];
  v10 = v1[23];
  v11 = *v0;
  OUTLINED_FUNCTION_2();
  *v12 = v11;
  *(v14 + 352) = v13;

  sub_2311D1F18(v10, &qword_27DD42F18, &unk_23136B810);
  v15 = *(v8 + 8);
  v16 = OUTLINED_FUNCTION_54_0();
  v17(v16);
  sub_2311D1F18(v6, &qword_27DD43F00, &unk_231375F50);
  v18 = *(v4 + 8);
  v19 = OUTLINED_FUNCTION_27();
  v20(v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_74();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_231345ED0()
{
  v54 = v0;
  if (*(v0 + 352))
  {
    sub_23121CD80(*(v0 + 352), v0 + 56);

    if (*(v0 + 80))
    {
      sub_2311E6A28((v0 + 56), v0 + 16);
      v1 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      OUTLINED_FUNCTION_28_0();
      v2 = sub_231368300();
      v4 = v3;
      *(v0 + 360) = v2;
      *(v0 + 368) = swift_getObjectType();
      v5 = *(v4 + 8);
      *(v0 + 376) = v5;
      v6 = *(v5 + 8);
      sub_23136A260();
      v7 = OUTLINED_FUNCTION_10_16();

      return MEMORY[0x2822009F8](v7, v8, v9);
    }

    v32 = *(v0 + 328);
    v33 = *(v0 + 304);
    sub_2311D1F18(v0 + 56, &qword_27DD42F50, &qword_23136D440);
    sub_231369170();
    v34 = v32;
    v13 = sub_2313698A0();
    v14 = sub_23136A3B0();

    v35 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 328);
    v16 = *(v0 + 336);
    v18 = *(v0 + 304);
    v20 = *(v0 + 280);
    v52 = *(v0 + 288);
    v22 = *(v0 + 264);
    v19 = *(v0 + 272);
    v21 = *(v0 + 256);
    if (v35)
    {
      v50 = *(v0 + 280);
      v23 = OUTLINED_FUNCTION_45();
      v45 = v17;
      v53 = OUTLINED_FUNCTION_44();
      *v23 = 136315394;
      OUTLINED_FUNCTION_7_27();
      *(v23 + 4) = OUTLINED_FUNCTION_41_16(v36, v37, &v53);
      *(v23 + 12) = 2080;
      v49 = v19;
      v38 = [v17 _dictionaryRepresentation];
      v47 = v16;
      v48 = v21;
      OUTLINED_FUNCTION_37_16();
      sub_231369E80();
      v46 = v18;

      OUTLINED_FUNCTION_37_16();
      sub_231369E90();

      v39 = OUTLINED_FUNCTION_27();
      v42 = sub_2311CFD58(v39, v40, v41);

      *(v23 + 14) = v42;
      v31 = "Function: %s > Got an empty suggestions array when attempting to generate a suggestion for INIntent %s";
      goto LABEL_10;
    }

LABEL_11:

    v16(v18, v20);
    (*(v22 + 8))(v19, v21);
    goto LABEL_12;
  }

  v10 = *(v0 + 328);
  v11 = *(v0 + 296);
  sub_231369170();
  v12 = v10;
  v13 = sub_2313698A0();
  v14 = sub_23136A3B0();

  v15 = os_log_type_enabled(v13, v14);
  v17 = *(v0 + 328);
  v16 = *(v0 + 336);
  v18 = *(v0 + 296);
  v51 = *(v0 + 288);
  v19 = *(v0 + 272);
  v20 = *(v0 + 280);
  v21 = *(v0 + 256);
  v22 = *(v0 + 264);
  if (!v15)
  {
    goto LABEL_11;
  }

  v50 = *(v0 + 280);
  v23 = OUTLINED_FUNCTION_45();
  v45 = v17;
  v53 = OUTLINED_FUNCTION_44();
  *v23 = 136315394;
  OUTLINED_FUNCTION_7_27();
  *(v23 + 4) = OUTLINED_FUNCTION_41_16(v24, v25, &v53);
  *(v23 + 12) = 2080;
  v49 = v19;
  v26 = [v17 _dictionaryRepresentation];
  v47 = v16;
  v48 = v21;
  OUTLINED_FUNCTION_37_16();
  sub_231369E80();
  v46 = v18;

  OUTLINED_FUNCTION_37_16();
  sub_231369E90();

  v27 = OUTLINED_FUNCTION_27();
  v30 = sub_2311CFD58(v27, v28, v29);

  *(v23 + 14) = v30;
  v31 = "Function: %s > Unable to generate suggestion for INIntent %s";
LABEL_10:
  _os_log_impl(&dword_2311CB000, v13, v14, v31, v23, 0x16u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();

  v47(v46, v50);
  (*(v22 + 8))(v49, v48);
LABEL_12:
  OUTLINED_FUNCTION_13_23(*(v0 + 112));
  OUTLINED_FUNCTION_4_30();

  OUTLINED_FUNCTION_56_0();

  return v43();
}

uint64_t sub_2313463A0()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  v4 = sub_231367740();
  v6 = v5;
  v0[12] = v4;
  v0[13] = v5;
  swift_unknownObjectRelease();
  v0[48] = v6;
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231346414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_70_1();
  a20 = v22;
  v25 = v22[48];
  v26 = v22[39];
  sub_231369170();
  sub_231369EE0();
  v27 = sub_2313698A0();
  v28 = sub_23136A3A0();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v22[48];
  if (v29)
  {
    v31 = v22[12];
    v67 = v22[42];
    v32 = v22[39];
    v33 = v22[35];
    v34 = v22[36];
    v35 = OUTLINED_FUNCTION_45();
    a11 = OUTLINED_FUNCTION_44();
    *v35 = 136315394;
    OUTLINED_FUNCTION_7_27();
    *(v35 + 4) = OUTLINED_FUNCTION_41_16(v36, v37, &a11);
    *(v35 + 12) = 2080;
    v38 = sub_2311CFD58(v31, v30, &a11);

    *(v35 + 14) = v38;
    OUTLINED_FUNCTION_28_2();
    _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_40_3();

    v44 = OUTLINED_FUNCTION_28_0();
    v67(v44);
  }

  else
  {
    v45 = v22[42];
    v46 = v22[39];
    v47 = v22[35];
    v48 = v22[36];
    v49 = v22[48];

    v50 = OUTLINED_FUNCTION_28_0();
    v45(v50);
  }

  v51 = v22[22];
  v52 = v22[15];
  v53 = v22[6];
  __swift_project_boxed_opaque_existential_1(v22 + 2, v22[5]);
  OUTLINED_FUNCTION_54_0();
  v54 = sub_231368300();
  v56 = v55;
  v22[49] = v54;
  v22[50] = v55;
  v22[51] = swift_getObjectType();
  v57 = [v52 bundleId];
  v58 = sub_231369FD0();
  v60 = v59;

  v22[52] = v58;
  v22[53] = v60;
  sub_23129BF38(v51);
  v61 = *(*(v56 + 8) + 8);
  sub_23136A260();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v62, v63, v64);
}

uint64_t sub_231346644()
{
  v1 = v0[52];
  v2 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[49];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  sub_231369440();

  swift_unknownObjectRelease();
  v9 = *(v7 + 8);
  v10 = OUTLINED_FUNCTION_26_1();
  v11(v10);
  v12 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2313466F0()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 112);

  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_27();
  v7(v6);
  sub_2311CF324(v0 + 16, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_4_30();

  OUTLINED_FUNCTION_56_0();

  return v8();
}

uint64_t sub_2313467FC(void *a1)
{
  v45 = sub_2313698C0();
  v2 = *(v45 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v45);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v45 - v8;
  v10 = [a1 executableSpecification];
  v11 = [v10 executableClassString];

  v12 = sub_231369FD0();
  v14 = v13;

  sub_231207BDC(0, &qword_27DD44C68, 0x277CEB608);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = NSStringFromClass(ObjCClassFromMetadata);
  v17 = sub_231369FD0();
  v19 = v18;

  if (v12 == v17 && v14 == v19)
  {
  }

  else
  {
    v21 = sub_23136A900();

    if ((v21 & 1) == 0)
    {
      sub_231369170();
      v22 = a1;
      v23 = sub_2313698A0();
      v24 = sub_23136A3B0();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = OUTLINED_FUNCTION_29_0();
        v26 = swift_slowAlloc();
        v46 = OUTLINED_FUNCTION_44();
        *v25 = 136315650;
        OUTLINED_FUNCTION_7_27();
        *(v25 + 4) = sub_2311CFD58(0xD000000000000016, v27, &v46);
        *(v25 + 12) = 2112;
        *(v25 + 14) = v22;
        *v26 = v22;
        *(v25 + 22) = 2080;
        v28 = [v22 executableSpecification];
        v29 = [v28 executableClassString];

        v30 = sub_231369FD0();
        v32 = v31;

        v33 = sub_2311CFD58(v30, v32, &v46);

        *(v25 + 24) = v33;
        _os_log_impl(&dword_2311CB000, v23, v24, "    Function: %s > Expected Link action suggestion %@ to have an executable\n    object of type ATXLinkActionContainer; found: %s", v25, 0x20u);
        sub_2311D1F18(v26, &qword_27DD433B0, &unk_23136EDC0);
        OUTLINED_FUNCTION_15();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_40_3();
        OUTLINED_FUNCTION_29();
      }

      (*(v2 + 8))(v9, v45);
      return 0;
    }
  }

  v34 = [a1 executableSpecification];
  v35 = [v34 executableObject];

  if (v35)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  sub_231369170();
  v37 = a1;
  v38 = sub_2313698A0();
  v39 = sub_23136A3B0();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_45();
    v41 = swift_slowAlloc();
    v42 = OUTLINED_FUNCTION_29_0();
    v46 = v42;
    *v40 = 136315394;
    OUTLINED_FUNCTION_7_27();
    *(v40 + 4) = sub_2311CFD58(0xD000000000000016, v43, &v46);
    *(v40 + 12) = 2112;
    v44 = [v37 executableSpecification];
    *(v40 + 14) = v44;
    *v41 = v44;
    _os_log_impl(&dword_2311CB000, v38, v39, "Function: %s > Unable to fetch executableObject as an ATXLinkActionContainer for linkAction: %@", v40, 0x16u);
    sub_2311D1F18(v41, &qword_27DD433B0, &unk_23136EDC0);
    OUTLINED_FUNCTION_24();
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_29();
  }

  (*(v2 + 8))(v5, v45);
  return 0;
}

uint64_t sub_231346CA8()
{
  OUTLINED_FUNCTION_8();
  v0[17] = v1;
  v0[15] = v2;
  v0[16] = v3;
  v0[13] = v4;
  v0[14] = v5;
  v0[12] = v6;
  v7 = sub_231368FB0();
  v0[18] = v7;
  OUTLINED_FUNCTION_0(v7);
  v0[19] = v8;
  v10 = *(v9 + 64);
  v0[20] = OUTLINED_FUNCTION_43();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  OUTLINED_FUNCTION_40_0(v11);
  v13 = *(v12 + 64);
  v0[21] = OUTLINED_FUNCTION_43();
  v14 = sub_2313694E0();
  v0[22] = v14;
  OUTLINED_FUNCTION_0(v14);
  v0[23] = v15;
  v17 = *(v16 + 64);
  v0[24] = OUTLINED_FUNCTION_43();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50);
  OUTLINED_FUNCTION_40_0(v18);
  v20 = *(v19 + 64);
  v0[25] = OUTLINED_FUNCTION_43();
  v21 = sub_231367550();
  v0[26] = v21;
  OUTLINED_FUNCTION_0(v21);
  v0[27] = v22;
  v24 = *(v23 + 64);
  v0[28] = OUTLINED_FUNCTION_43();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44C60, qword_231378A88);
  OUTLINED_FUNCTION_40_0(v25);
  v27 = *(v26 + 64);
  v0[29] = OUTLINED_FUNCTION_43();
  v28 = sub_231369330();
  v0[30] = v28;
  OUTLINED_FUNCTION_0(v28);
  v0[31] = v29;
  v31 = *(v30 + 64);
  v0[32] = OUTLINED_FUNCTION_43();
  v32 = sub_2313698C0();
  v0[33] = v32;
  OUTLINED_FUNCTION_0(v32);
  v0[34] = v33;
  v35 = *(v34 + 64);
  v0[35] = OUTLINED_FUNCTION_67();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v36 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v36, v37, v38);
}

uint64_t sub_231346F30()
{
  v72 = v0;
  v1 = v0[38];
  v2 = v0[13];
  sub_231369170();
  v3 = v2;
  v4 = sub_2313698A0();
  v5 = sub_23136A3A0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[38];
  v8 = &off_278908000;
  v10 = v0[33];
  v9 = v0[34];
  if (v6)
  {
    v11 = v0[13];
    v68 = v0[38];
    v12 = OUTLINED_FUNCTION_60();
    v13 = OUTLINED_FUNCTION_29_0();
    v71 = v13;
    *v12 = 136315138;
    v14 = [v11 action];
    v15 = [v14 identifier];

    v16 = sub_231369FD0();
    v18 = v17;

    v8 = &off_278908000;
    v19 = sub_2311CFD58(v16, v18, &v71);

    *(v12 + 4) = v19;
    OUTLINED_FUNCTION_28_2();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_40_3();

    (*(v9 + 8))(v68, v10);
  }

  else
  {

    (*(v9 + 8))(v7, v10);
  }

  v25 = v0[29];
  v27 = v0[15];
  v26 = v0[16];
  sub_231369EE0();
  sub_231368440();
  v28 = sub_231368450();
  v29 = OUTLINED_FUNCTION_45_11(v25);
  v30 = v0[32];
  v31 = v0[29];
  if (v29 == 1)
  {
    v32 = *MEMORY[0x277D60F70];
    OUTLINED_FUNCTION_26_0(v28);
    (*(v33 + 104))();
    if (OUTLINED_FUNCTION_45_11(v31) != 1)
    {
      sub_2311D1F18(v0[29], &qword_27DD44C60, qword_231378A88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_0(v28);
    (*(v34 + 32))();
  }

  v36 = v0[31];
  v35 = v0[32];
  v37 = v0[30];
  v38 = v0[27];
  v39 = v0[28];
  v63 = v35;
  v64 = v0[26];
  v40 = v0[23];
  v65 = v0[25];
  v66 = v0[22];
  v67 = v0[24];
  v69 = v0[21];
  v41 = v0[13];
  v42 = *MEMORY[0x277D61308];
  (*(v36 + 104))();
  v43 = [v41 v8[273]];
  v44 = [v41 bundleId];
  v45 = sub_231369FD0();
  v47 = v46;

  *v39 = v43;
  v39[1] = v45;
  v39[2] = v47;
  v48 = *MEMORY[0x277D60948];
  v49 = sub_231367560();
  OUTLINED_FUNCTION_11(v49);
  (*(v50 + 104))(v39, v48);
  (*(v38 + 104))(v39, *MEMORY[0x277D60920], v64);
  (*(v36 + 16))(v65, v63, v37);
  OUTLINED_FUNCTION_32_16(v65);
  (*(v40 + 104))(v67, *MEMORY[0x277D61380], v66);
  v51 = *MEMORY[0x277D60B98];
  v52 = sub_231367D80();
  OUTLINED_FUNCTION_11(v52);
  (*(v53 + 104))(v69, v51, v52);
  __swift_storeEnumTagSinglePayload(v69, 0, 1, v52);
  v54 = *(MEMORY[0x277D61200] + 4);
  v70 = (*MEMORY[0x277D61200] + MEMORY[0x277D61200]);
  v55 = swift_task_alloc();
  v0[39] = v55;
  *v55 = v0;
  v55[1] = sub_2313473B0;
  v56 = v0[28];
  v58 = v0[24];
  v57 = v0[25];
  v59 = v0[21];
  v60.n128_u64[0] = v0[17];
  v61 = v0[14];

  return v70(v56, v57, v58, v59, v60);
}

uint64_t sub_2313473B0()
{
  OUTLINED_FUNCTION_12();
  v2 = v1[39];
  v3 = v1[28];
  v4 = v1[27];
  v5 = v1[26];
  v6 = v1[25];
  v7 = v1[24];
  v8 = v1[23];
  v9 = v1[22];
  v10 = v1[21];
  v11 = *v0;
  OUTLINED_FUNCTION_2();
  *v12 = v11;
  *(v14 + 320) = v13;

  sub_2311D1F18(v10, &qword_27DD42F18, &unk_23136B810);
  v15 = *(v8 + 8);
  v16 = OUTLINED_FUNCTION_54_0();
  v17(v16);
  sub_2311D1F18(v6, &qword_27DD43F00, &unk_231375F50);
  v18 = *(v4 + 8);
  v19 = OUTLINED_FUNCTION_27();
  v20(v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_74();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_2313475A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_70_1();
  a20 = v22;
  if (*(v22 + 320))
  {
    sub_23121CD80(*(v22 + 320), v22 + 56);

    if (*(v22 + 80))
    {
      v25 = *(v22 + 160);
      v26 = *(v22 + 104);
      sub_2311E6A28((v22 + 56), v22 + 16);
      v27 = *(v22 + 48);
      __swift_project_boxed_opaque_existential_1((v22 + 16), *(v22 + 40));
      OUTLINED_FUNCTION_54_0();
      v28 = sub_231368300();
      v30 = v29;
      *(v22 + 328) = v28;
      *(v22 + 336) = v29;
      *(v22 + 344) = swift_getObjectType();
      v31 = [v26 bundleId];
      v32 = sub_231369FD0();
      v34 = v33;

      *(v22 + 352) = v32;
      *(v22 + 360) = v34;
      sub_23129BF38(v25);
      v35 = *(*(v30 + 8) + 8);
      sub_23136A260();
      OUTLINED_FUNCTION_10_16();
      OUTLINED_FUNCTION_7();

      return MEMORY[0x2822009F8](v36, v37, v38);
    }

    v54 = *(v22 + 288);
    sub_2311D1F18(v22 + 56, &qword_27DD42F50, &qword_23136D440);
    sub_231369170();
    v41 = sub_2313698A0();
    v42 = sub_23136A3B0();
    v55 = os_log_type_enabled(v41, v42);
    v56 = *(v22 + 288);
    v57 = *(v22 + 264);
    v44 = *(v22 + 272);
    v49 = *(v22 + 248);
    v47 = *(v22 + 256);
    v48 = *(v22 + 240);
    if (v55)
    {
      v75 = *(v22 + 256);
      v50 = OUTLINED_FUNCTION_60();
      v51 = OUTLINED_FUNCTION_29_0();
      a11 = v51;
      *v50 = 136315138;
      OUTLINED_FUNCTION_7_27();
      *(v50 + 4) = sub_2311CFD58(0xD00000000000004ELL, v58, &a11);
      v53 = "Function: %s > Suggestions array was unexpectedly empty";
      goto LABEL_10;
    }

LABEL_11:

    v62 = *(v44 + 8);
    v63 = OUTLINED_FUNCTION_54_0();
    v64(v63);
    (*(v49 + 8))(v47, v48);
    goto LABEL_12;
  }

  v40 = *(v22 + 280);
  sub_231369170();
  v41 = sub_2313698A0();
  v42 = sub_23136A3B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = *(v22 + 272);
  v45 = *(v22 + 280);
  v47 = *(v22 + 256);
  v46 = *(v22 + 264);
  v48 = *(v22 + 240);
  v49 = *(v22 + 248);
  if (!v43)
  {
    goto LABEL_11;
  }

  v75 = *(v22 + 256);
  v50 = OUTLINED_FUNCTION_60();
  v51 = OUTLINED_FUNCTION_29_0();
  a11 = v51;
  *v50 = 136315138;
  OUTLINED_FUNCTION_7_27();
  *(v50 + 4) = sub_2311CFD58(0xD00000000000004ELL, v52, &a11);
  v53 = "Function: %s > Unable to generate a suggestion with the Candidate Suggestion Factory";
LABEL_10:
  _os_log_impl(&dword_2311CB000, v41, v42, v53, v50, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_24();

  v59 = *(v44 + 8);
  v60 = OUTLINED_FUNCTION_54_0();
  v61(v60);
  (*(v49 + 8))(v75, v48);
LABEL_12:
  OUTLINED_FUNCTION_13_23(*(v22 + 96));
  OUTLINED_FUNCTION_23_18();
  v76 = v65;

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_7();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, v76, a11, a12, a13, a14);
}

uint64_t sub_231347910()
{
  v1 = v0[44];
  v2 = v0[45];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[41];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  sub_231369440();

  swift_unknownObjectRelease();
  v9 = *(v7 + 8);
  v10 = OUTLINED_FUNCTION_26_1();
  v11(v10);
  v12 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2313479BC()
{
  v1 = v0[37];
  sub_231369170();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_18_0(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2311CB000, v2, v3, "Created a candidate suggestion for Proactive suggestion", v4, 2u);
    OUTLINED_FUNCTION_29();
  }

  v5 = v0[37];
  v6 = v0[33];
  v7 = v0[34];
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[30];
  v11 = v0[12];

  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_28_0();
  v14(v13);
  v15 = *(v9 + 8);
  v16 = OUTLINED_FUNCTION_54_0();
  v17(v16);
  sub_2311CF324((v0 + 2), v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_23_18();

  OUTLINED_FUNCTION_56_0();

  return v18();
}

uint64_t HabitualActionsGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions24HabitualActionsGenerator_channel;
  v2 = sub_231369330();
  OUTLINED_FUNCTION_11(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions24HabitualActionsGenerator_featureFlagProvider));
  return v0;
}

uint64_t HabitualActionsGenerator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions24HabitualActionsGenerator_channel;
  v2 = sub_231369330();
  OUTLINED_FUNCTION_11(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions24HabitualActionsGenerator_featureFlagProvider));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_231347C74()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231295AF8;

  return HabitualActionsGenerator.generateCandidateSuggestions(interaction:environment:factory:)();
}

uint64_t sub_231347D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D60D18] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_231347F70(&qword_27DD44C58);
  *v10 = v4;
  v10[1] = sub_231347FB4;

  return MEMORY[0x2821C6C08](a1, a2, a3, a4, v11);
}

uint64_t type metadata accessor for HabitualActionsGenerator()
{
  result = qword_27DD44C48;
  if (!qword_27DD44C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231347EC0()
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

uint64_t sub_231347F70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HabitualActionsGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *OUTLINED_FUNCTION_5_31(uint64_t a1)
{
  *(a1 + 8) = sub_2313447A8;
  v2 = v1[20];
  v3 = v1[21];
  v4 = v1[19];
  return v1 + 7;
}

uint64_t OUTLINED_FUNCTION_23_18()
{
  v2 = v0[37];
  result = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[32];
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[20];
  v11 = v0[21];
  return result;
}

id OUTLINED_FUNCTION_43_15()
{

  return [v1 (v0 + 2797)];
}

double static OwnerMapping.mapToCommonOwner(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0xD000000000000014 && 0x80000002313810F0 == a2;
  if (v4 || (sub_23136A900() & 1) != 0)
  {
    v5 = sub_231367000();
    v6 = sub_231366FF0();
    *(a3 + 24) = v5;
    *(a3 + 32) = sub_2313480C8();
    *a3 = v6;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_2313480C8()
{
  result = qword_280F7CB20;
  if (!qword_280F7CB20)
  {
    sub_231367000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CB20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OwnerMapping(_BYTE *result, int a2, int a3)
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