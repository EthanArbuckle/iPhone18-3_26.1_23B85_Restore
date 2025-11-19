uint64_t sub_1DA3F91E0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_72();
  swift_getDynamicType();
  v12 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = sub_1DA421BB4();

  MEMORY[0x1DA74D370](a4, a5);

  return v11;
}

uint64_t sub_1DA3F9288()
{
  v1 = sub_1DA421204();
  v2 = OUTLINED_FUNCTION_3_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_140();
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_171();
  sub_1DA4212D4();
  sub_1DA4212B4();
  sub_1DA421324();
  (*(v4 + 104))(v0, *MEMORY[0x1E69D2A30], v1);
  return sub_1DA421354();
}

uint64_t sub_1DA3F9398()
{
  OUTLINED_FUNCTION_16();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[14] = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  v1[15] = OUTLINED_FUNCTION_40();
  v8 = sub_1DA4212E4();
  v1[16] = v8;
  OUTLINED_FUNCTION_5_2(v8);
  v1[17] = v9;
  v11 = *(v10 + 64);
  v1[18] = OUTLINED_FUNCTION_40();
  v12 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DA3F9494()
{
  v3 = v1[12];
  v2 = v1[13];
  v4 = v1[11];
  (*(v1[17] + 16))(v1[18], v4, v1[16]);
  OUTLINED_FUNCTION_146();
  sub_1DA3F91E0(v3, v5, v6, v7, 0xE800000000000000);
  OUTLINED_FUNCTION_157();
  v1[19] = v8;
  if (sub_1DA3F98F8(v4, v3))
  {
    v10 = v1[17];
    v9 = v1[18];
    v11 = v1[16];
    v12 = v1[10];

    (*(v10 + 32))(v12, v9, v11);
    v13 = v1[18];
    v14 = v1[15];

    OUTLINED_FUNCTION_4_0();

    return v15();
  }

  else
  {
    v17 = v1[12];
    v1[20] = v0;
    v18 = v17[3];
    v19 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v23 = (OUTLINED_FUNCTION_3_8() + 8);
    v24 = (*v23 + **v23);
    v20 = (*v23)[1];
    v21 = swift_task_alloc();
    v1[21] = v21;
    *v21 = v1;
    v21[1] = sub_1DA3F9698;
    v22 = OUTLINED_FUNCTION_13_5(v1[11]);

    return v24(v22, v18, v19);
  }
}

uint64_t sub_1DA3F9698()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA3F977C()
{
  v1 = v0[19];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v19 = v0[16];
  v17 = v0[20];
  v18 = v0[10];
  *v4 = 1;
  v5 = *MEMORY[0x1E69D2AC8];
  v6 = sub_1DA4213B4();
  OUTLINED_FUNCTION_17_0(v6);
  (*(v7 + 104))(v4, v5, v6);
  OUTLINED_FUNCTION_47();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
  v11 = sub_1DA4212C4();
  v12 = sub_1DA4211B4();
  sub_1DA3F82C0(v4, v17, v1);
  v12(v0 + 6, 0);
  v11(v0 + 2, 0);
  (*(v3 + 32))(v18, v2, v19);
  v13 = v0[18];
  v14 = v0[15];

  OUTLINED_FUNCTION_4_0();

  return v15();
}

uint64_t sub_1DA3F98F8(uint64_t a1, void *a2)
{
  v4 = sub_1DA4211F4();
  v5 = OUTLINED_FUNCTION_3_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_171();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  OUTLINED_FUNCTION_146();
  v19 = sub_1DA3F91E0(a2, v16, v17, v18, 0xE800000000000000);
  v21 = v20;
  sub_1DA4212D4();
  v22 = sub_1DA4211C4();
  (*(v7 + 8))(v2, v4);
  sub_1DA3EA2EC(v19, v21, v22, v15);

  sub_1DA4213B4();
  v23 = OUTLINED_FUNCTION_158();
  if (__swift_getEnumTagSinglePayload(v23, 1, v4) == 1)
  {
    sub_1DA4039D4(v15);
    v24 = 0;
  }

  else
  {
    v24 = sub_1DA4213A4();
    OUTLINED_FUNCTION_17_0(v4);
    v26 = *(v25 + 8);
    v27 = OUTLINED_FUNCTION_24();
    v28(v27);
  }

  return v24 & 1;
}

uint64_t sub_1DA3F9ABC()
{
  OUTLINED_FUNCTION_16();
  v1[28] = v2;
  v1[29] = v0;
  v1[26] = v3;
  v1[27] = v4;
  v1[24] = v5;
  v1[25] = v6;
  v1[30] = *v0;
  v7 = sub_1DA421314();
  v1[31] = v7;
  OUTLINED_FUNCTION_5_2(v7);
  v1[32] = v8;
  v10 = *(v9 + 64);
  v1[33] = OUTLINED_FUNCTION_95();
  v1[34] = swift_task_alloc();
  v11 = sub_1DA4213B4();
  v1[35] = v11;
  OUTLINED_FUNCTION_5_2(v11);
  v1[36] = v12;
  v14 = *(v13 + 64);
  v1[37] = OUTLINED_FUNCTION_95();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v15);
  v17 = *(v16 + 64);
  v1[41] = OUTLINED_FUNCTION_95();
  v1[42] = swift_task_alloc();
  v18 = sub_1DA4211F4();
  v1[43] = v18;
  OUTLINED_FUNCTION_5_2(v18);
  v1[44] = v19;
  v21 = *(v20 + 64);
  v1[45] = OUTLINED_FUNCTION_95();
  v1[46] = swift_task_alloc();
  v22 = sub_1DA4212E4();
  v1[47] = v22;
  OUTLINED_FUNCTION_5_2(v22);
  v1[48] = v23;
  v25 = *(v24 + 64);
  v1[49] = OUTLINED_FUNCTION_40();
  v26 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v26, v27, v28);
}

uint64_t sub_1DA3F9CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(void), uint64_t a13, void (*a14)(uint64_t, uint64_t), uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_174();
  v21 = v20[46];
  v22 = v20[43];
  v23 = v20[44];
  v24 = v20[42];
  v25 = v20[35];
  v26 = v20[27];
  (*(v20[48] + 16))(v20[49], v20[25], v20[47]);
  OUTLINED_FUNCTION_148();
  v30 = sub_1DA3F91E0(v26, v27, v28, v29, 0xEA00000000006465);
  v32 = v31;
  v20[50] = v30;
  v20[51] = v31;
  sub_1DA4212D4();
  v33 = sub_1DA4211C4();
  v36 = *(v23 + 8);
  v35 = v23 + 8;
  v34 = v36;
  (v36)(v21, v22);
  v144 = v32;
  sub_1DA3EA2EC(v30, v32, v33, v24);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v25);
  v38 = v20[42];
  if (EnumTagSinglePayload)
  {
    sub_1DA4039D4(v20[42]);
LABEL_3:
    v39 = MEMORY[0x1E69E7CC0];
    goto LABEL_4;
  }

  v67 = v20[40];
  v69 = v20[35];
  v68 = v20[36];
  v70 = *(v68 + 16);
  OUTLINED_FUNCTION_166();
  v145 = v71;
  v71();
  sub_1DA4039D4(v38);
  v72 = sub_1DA421384();
  a14 = *(v68 + 8);
  a14(v67, v69);
  if (!v72)
  {
    goto LABEL_3;
  }

  v73 = *(v72 + 16);
  if (!v73)
  {

    goto LABEL_3;
  }

  a12 = v34;
  a13 = v35;
  v74 = v20[36];
  a10 = v72;
  v75 = v72 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v76 = *(v74 + 72);
  v39 = MEMORY[0x1E69E7CC0];
  do
  {
    v77 = v20[39];
    (v145)(v77, v75, v20[35]);
    sub_1DA421394();
    OUTLINED_FUNCTION_77();
    v78 = OUTLINED_FUNCTION_38();
    (a14)(v78);
    if (v25)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = *(v39 + 16);
        OUTLINED_FUNCTION_16_1();
        sub_1DA3A5B78();
        v39 = v83;
      }

      v80 = *(v39 + 16);
      v79 = *(v39 + 24);
      if (v80 >= v79 >> 1)
      {
        OUTLINED_FUNCTION_21_3(v79);
        OUTLINED_FUNCTION_173();
        sub_1DA3A5B78();
        v39 = v84;
      }

      *(v39 + 16) = v80 + 1;
      v81 = v39 + 16 * v80;
      *(v81 + 32) = v77;
      *(v81 + 40) = v25;
    }

    v75 += v76;
    --v73;
  }

  while (v73);

  v34 = a12;
  v35 = a13;
LABEL_4:
  v20[52] = v39;
  v40 = v20[29];
  v41 = v20[26];
  v42 = v20[27];
  v43 = v20[25];
  sub_1DA3FBBF8();
  if ((v44 & 1) == 0)
  {
    goto LABEL_22;
  }

  a12 = v34;
  a13 = v35;
  if (qword_1EE100EF8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v45 = v20[34];
  v47 = v20[31];
  v46 = v20[32];
  v49 = v20[26];
  v48 = v20[27];
  v50 = sub_1DA421A94();
  __swift_project_value_buffer(v50, static Logger.conversionCategory);
  sub_1DA3B2454(v48, (v20 + 2));
  (*(v46 + 16))(v45, v49, v47);
  v51 = sub_1DA421A74();
  v52 = sub_1DA421F64();
  v53 = os_log_type_enabled(v51, v52);
  v54 = v20[34];
  v55 = v20[31];
  v56 = v20[32];
  if (v53)
  {
    v57 = OUTLINED_FUNCTION_90();
    a17 = OUTLINED_FUNCTION_92();
    *v57 = 136315394;
    v58 = v20[5];
    OUTLINED_FUNCTION_186();
    DynamicType = swift_getDynamicType();
    OUTLINED_FUNCTION_172(DynamicType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
    OUTLINED_FUNCTION_149();
    __swift_destroy_boxed_opaque_existential_0(v20 + 2);
    v60 = OUTLINED_FUNCTION_167();
    v63 = sub_1DA3A5FE8(v60, v61, v62);

    *(v57 + 4) = v63;
    *(v57 + 12) = 2080;
    sub_1DA4212F4();
    (*(v56 + 8))(v54, v55);
    v64 = OUTLINED_FUNCTION_43_0();
    sub_1DA3A5FE8(v64, v65, v66);
    OUTLINED_FUNCTION_51_0();

    *(v57 + 14) = v54;
    _os_log_impl(&dword_1DA39E000, v51, v52, "processor - %s has suggestion - %s already marked as converted", v57, 0x16u);
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_66();
  }

  else
  {

    (*(v56 + 8))(v54, v55);
    __swift_destroy_boxed_opaque_existential_0(v20 + 2);
  }

  v85 = v20[27];
  v86 = v85[4];
  __swift_project_boxed_opaque_existential_1(v85, v85[3]);
  v87 = *(v86 + 16);
  v88 = OUTLINED_FUNCTION_31_2();
  v34 = a12;
  if ((v89(v88, v86) & 1) == 0)
  {
    v116 = v20[45];
    v117 = v20[43];
    v118 = v20[28];
    v119 = v20[29];
    v120 = v20[27];
    v147 = v20[25];

    v121 = __swift_project_boxed_opaque_existential_1((v119 + 152), *(v119 + 176));
    sub_1DA4212D4();
    LOBYTE(v119) = sub_1DA4211D4();
    v122 = OUTLINED_FUNCTION_43_0();
    a12(v122);
    v123 = *v121;
    sub_1DA3B6A3C(v120, 0xD00000000000002ALL, 0x80000001DA42E4C0, 1, v119 & 1);
    sub_1DA3B2454(v120, (v20 + 7));
    v124 = sub_1DA421A74();
    v125 = sub_1DA421F64();
    if (OUTLINED_FUNCTION_52_0(v125))
    {
      v126 = OUTLINED_FUNCTION_150();
      a17 = OUTLINED_FUNCTION_139();
      *v126 = 136315138;
      __swift_project_boxed_opaque_existential_1(v20 + 7, v20[10]);
      OUTLINED_FUNCTION_72();
      v127 = swift_getDynamicType();
      v128 = v20[11];
      v20[20] = v127;
      v20[21] = v128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
      sub_1DA421BB4();
      __swift_destroy_boxed_opaque_existential_0(v20 + 7);
      v129 = OUTLINED_FUNCTION_74();
      v132 = sub_1DA3A5FE8(v129, v130, v131);

      *(v126 + 4) = v132;
      _os_log_impl(&dword_1DA39E000, v124, v121, "skipping the conversion because processor - %s has sendConversionsAfterNotConverted set as false", v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a17);
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v20 + 7);
    }

    OUTLINED_FUNCTION_85();
    v148 = v134;
    v150 = v133;
    (*(v135 + 32))(v20[24], v124);

    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_121();

    return v137(v136, v137, v138, v139, v140, v141, v142, v143, a9, a10, v144, a12, a13, a14, v148, v150, a17, a18, a19, a20);
  }

  else
  {
LABEL_22:
    v90 = v20[45];
    v91 = v20[43];
    v92 = v20[28];
    v93 = v20[27];
    v94 = v20[25];
    v95 = __swift_project_boxed_opaque_existential_1((v20[29] + 152), *(v20[29] + 176));
    sub_1DA4212D4();
    v96 = sub_1DA4211D4();
    v97 = OUTLINED_FUNCTION_24();
    v34(v97);
    v98 = *v95;
    sub_1DA3B6A3C(v93, 0, 0, 1, v96 & 1);
    v99 = v93[3];
    v100 = v93[4];
    v101 = OUTLINED_FUNCTION_167();
    __swift_project_boxed_opaque_existential_1(v101, v102);
    v146 = (OUTLINED_FUNCTION_3_8() + 24);
    v149 = *v146 + **v146;
    v103 = (*v146)[1];
    v104 = swift_task_alloc();
    v20[53] = v104;
    *v104 = v20;
    v104[1] = sub_1DA3FA4E8;
    v105 = v20[28];
    v106 = v20[26];
    OUTLINED_FUNCTION_13_5(v20[25]);
    OUTLINED_FUNCTION_121();

    return v112(v107, v108, v109, v110, v111, v112, v113, v114, a9, a10, v144, a12, a13, a14, v146, v149, a17, a18, a19, a20);
  }
}

uint64_t sub_1DA3FA4E8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 424);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA3FA5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_174();
  a27 = v30;
  a28 = v31;
  a26 = v28;
  v32 = v28[52];
  v33 = v28[26];
  v34 = swift_task_alloc();
  *(v34 + 16) = v33;
  LOBYTE(v32) = sub_1DA412A3C(sub_1DA403A3C, v34, v32);

  v35 = v28[52];
  if (v32)
  {
    v36 = v28[52];

    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v37 = v28[51];
    v39 = v28[32];
    v38 = v28[33];
    v40 = v28[31];
    v41 = v28[26];
    v42 = sub_1DA421A94();
    __swift_project_value_buffer(v42, static Logger.conversionCategory);
    v43 = *(v39 + 16);
    v44 = OUTLINED_FUNCTION_83();
    v45(v44);

    v46 = sub_1DA421A74();
    v47 = sub_1DA421F64();

    v48 = os_log_type_enabled(v46, v47);
    v49 = v28[51];
    if (v48)
    {
      v51 = v28[32];
      v50 = v28[33];
      v113 = v28[31];
      v116 = v28[50];
      v52 = OUTLINED_FUNCTION_90();
      a16 = OUTLINED_FUNCTION_92();
      *v52 = 136315394;
      v53 = sub_1DA4212F4();
      v55 = v54;
      (*(v51 + 8))(v50, v113);
      sub_1DA3A5FE8(v53, v55, &a16);
      OUTLINED_FUNCTION_135();

      OUTLINED_FUNCTION_64();
      sub_1DA3A5FE8(v116, v49, &a16);
      OUTLINED_FUNCTION_78();

      *(v52 + 14) = v50;
      OUTLINED_FUNCTION_183(&dword_1DA39E000, v46, v47, "%s was already recorded in database as converted for processor %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_53_0();
    }

    else
    {
      v90 = v28[32];
      v50 = v28[33];
      v91 = v28[31];
      v92 = v28[51];

      v93 = *(v90 + 8);
      v94 = OUTLINED_FUNCTION_83();
      v95(v94);
    }
  }

  else
  {
    v56 = v28[26];
    sub_1DA4212F4();
    OUTLINED_FUNCTION_77();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v28[52];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v108 = v58[2];
      OUTLINED_FUNCTION_16_1();
      sub_1DA3A5B78();
      v58 = v109;
    }

    a10 = v28 + 16;
    a11 = v28 + 12;
    v59 = v58[2];
    v60 = v59 + 1;
    if (v59 >= v58[3] >> 1)
    {
      OUTLINED_FUNCTION_72();
      sub_1DA3A5B78();
      v58 = v110;
    }

    v61 = v28[36];
    v112 = v28[37];
    v58[2] = v60;
    v62 = &v58[2 * v59];
    v62[4] = v56;
    v62[5] = v29;
    a16 = MEMORY[0x1E69E7CC0];
    sub_1DA3B04B0(0, v59 + 1, 0);
    v63 = a16;
    v111 = *MEMORY[0x1E69D2AE8];
    v114 = *(v61 + 104);
    a9 = v58;
    v64 = v58 + 5;
    do
    {
      v65 = v28[35];
      v66 = *v64;
      *v28[37] = *(v64 - 1);
      *(v112 + 8) = v66;
      v114();
      a16 = v63;
      v67 = *(v63 + 16);
      v68 = *(v63 + 24);

      if (v67 >= v68 >> 1)
      {
        OUTLINED_FUNCTION_173();
        sub_1DA3B04B0(v73, v74, v75);
        v63 = a16;
      }

      v69 = v28[37];
      v70 = v28[35];
      *(v63 + 16) = v67 + 1;
      v71 = *(v61 + 80);
      OUTLINED_FUNCTION_49();
      (*(v61 + 32))(v63 + v72 + *(v61 + 72) * v67);
      v64 += 2;
      --v60;
    }

    while (v60);
    a12 = v28[50];
    a13 = v28[51];
    v76 = v28[49];
    v77 = v28[41];
    v78 = v28[38];
    v79 = v28[35];
    v80 = v28[36];

    *v78 = v63;
    (v114)(v78, *MEMORY[0x1E69D2AD0], v79);
    (*(v80 + 16))(v77, v78, v79);
    OUTLINED_FUNCTION_47();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v79);
    v84 = sub_1DA4212C4();
    v85 = sub_1DA4211B4();
    v50 = v86;
    sub_1DA3F82C0(v77, a12, a13);
    v85(a10, 0);
    v84(a11, 0);
    v87 = *(v80 + 8);
    v88 = OUTLINED_FUNCTION_74();
    v89(v88);
  }

  OUTLINED_FUNCTION_85();
  v115 = v97;
  v117 = v96;
  (*(v98 + 32))(v28[24], v50);

  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_121();

  return v100(v99, v100, v101, v102, v103, v104, v105, v106, a9, a10, a11, a12, a13, v115, v117, a16, a17, a18, a19, a20);
}

uint64_t sub_1DA3FAAE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 == sub_1DA4212F4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DA4223A4();
  }

  return v5 & 1;
}

void sub_1DA3FAB60()
{
  OUTLINED_FUNCTION_178();
  v2 = v1;
  v82 = sub_1DA421314();
  v3 = OUTLINED_FUNCTION_3_1(v82);
  v90 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_76();
  v84 = (v7 - v8);
  OUTLINED_FUNCTION_132();
  MEMORY[0x1EEE9AC00](v9);
  v83 = v81 - v10;
  OUTLINED_FUNCTION_104();
  v11 = sub_1DA4213B4();
  v12 = OUTLINED_FUNCTION_3_1(v11);
  v85 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_7();
  v89 = v17 - v16;
  OUTLINED_FUNCTION_104();
  v91 = sub_1DA4211F4();
  v18 = OUTLINED_FUNCTION_3_1(v91);
  v88 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_7();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_148();
  v87 = sub_1DA3F91E0(v2, v29, v30, v31, 0xEA00000000006465);
  v33 = v32;
  v34 = sub_1DA4212B4();
  sub_1DA421604();
  v35 = sub_1DA4215A4();
  v37 = sub_1DA3EA3F0(v35, v36, v34);

  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  sub_1DA4212D4();
  v39 = sub_1DA4211C4();
  v88[1](v24, v91);
  sub_1DA3EA2EC(v87, v33, v39, v0);

  if (OUTLINED_FUNCTION_145() != 1)
  {
    v40 = sub_1DA421384();
    v41 = v85;
    v42 = *(v85 + 8);
    v43 = OUTLINED_FUNCTION_51();
    v88 = v44;
    (v44)(v43);
    v45 = v82;
    if (v40)
    {
      v46 = *(v40 + 16);
      if (v46)
      {
        v48 = *(v41 + 16);
        v47 = v41 + 16;
        v49 = *(v47 + 64);
        OUTLINED_FUNCTION_49();
        v81[1] = v40;
        v51 = v40 + v50;
        v86 = *(v47 + 56);
        v87 = v52;
        v91 = MEMORY[0x1E69E7CC0];
        v85 = v47;
        do
        {
          v53 = v89;
          v87(v89, v51, v11);
          sub_1DA421394();
          v54 = OUTLINED_FUNCTION_79();
          (v88)(v54, v11);
          if (v45)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = *(v91 + 16);
              OUTLINED_FUNCTION_16_1();
              sub_1DA3A5B78();
              v91 = v60;
            }

            v56 = *(v91 + 16);
            v55 = *(v91 + 24);
            if (v56 >= v55 >> 1)
            {
              OUTLINED_FUNCTION_21_3(v55);
              sub_1DA3A5B78();
              v91 = v61;
            }

            v57 = v91;
            *(v91 + 16) = v56 + 1;
            v58 = v57 + 16 * v56;
            *(v58 + 32) = v53;
            *(v58 + 40) = v45;
          }

          v51 += v86;
          --v46;
        }

        while (v46);

        goto LABEL_17;
      }
    }

    v91 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  sub_1DA4039D4(v0);
  v91 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v45 = v82;
LABEL_20:
  v62 = 0;
  v63 = *(v38 + 16);
  v88 = (v90 + 16);
  v89 = v63;
  v85 = v90 + 32;
  v87 = (v90 + 8);
  v86 = MEMORY[0x1E69E7CC0];
  v64 = v83;
  while (1)
  {
    if (v89 == v62)
    {

      OUTLINED_FUNCTION_181();
      return;
    }

    if (v62 >= *(v38 + 16))
    {
      break;
    }

    v65 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v66 = v38;
    v67 = *(v90 + 72);
    (*(v90 + 16))(v64, v38 + v65 + v67 * v62, v45);
    v92[0] = sub_1DA4212F4();
    v92[1] = v68;
    MEMORY[0x1EEE9AC00](v92[0]);
    OUTLINED_FUNCTION_117();
    *(v69 - 16) = v92;
    v71 = sub_1DA412A3C(sub_1DA403B04, v70, v91);

    if (v71)
    {
      (*v87)(v64, v45);
      ++v62;
    }

    else
    {
      v72 = *v85;
      (*v85)(v84, v64, v45);
      v73 = v86;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v73;
      v93 = v73;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DA3B0508(0, *(v73 + 16) + 1, 1);
        v64 = v83;
        v75 = v93;
      }

      v38 = v66;
      v77 = *(v75 + 16);
      v76 = *(v75 + 24);
      if (v77 >= v76 >> 1)
      {
        OUTLINED_FUNCTION_21_3(v76);
        OUTLINED_FUNCTION_72();
        sub_1DA3B0508(v78, v79, v80);
        v64 = v83;
        v75 = v93;
      }

      ++v62;
      *(v75 + 16) = v77 + 1;
      v86 = v75;
      v72((v75 + v65 + v77 * v67), v84, v45);
    }
  }

  __break(1u);
}

uint64_t sub_1DA3FB144(uint64_t a1, void *a2)
{
  v146 = a1;
  v145 = sub_1DA4212E4();
  v4 = OUTLINED_FUNCTION_3_1(v145);
  v143 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_7();
  v139 = v9 - v8;
  OUTLINED_FUNCTION_104();
  v151 = sub_1DA421314();
  v10 = OUTLINED_FUNCTION_3_1(v151);
  v140 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_7();
  v150 = v15 - v14;
  OUTLINED_FUNCTION_104();
  v149 = sub_1DA4213B4();
  v16 = OUTLINED_FUNCTION_3_1(v149);
  v141 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_7();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v26);
  v147 = v136 - v27;
  OUTLINED_FUNCTION_104();
  v148 = sub_1DA4210B4();
  v28 = OUTLINED_FUNCTION_3_1(v148);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_7();
  v33 = OUTLINED_FUNCTION_140();
  v34 = OUTLINED_FUNCTION_3_1(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_76();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v136 - v43;
  v46 = a2[3];
  v45 = a2[4];
  v144 = a2;
  v47 = OUTLINED_FUNCTION_50_0();
  __swift_project_boxed_opaque_existential_1(v47, v48);
  v49 = *(v45 + 8);
  v50 = OUTLINED_FUNCTION_84();
  v52 = v51(v50, v45);
  v54 = v53;
  sub_1DA4212D4();
  sub_1DA4211E4();
  v57 = *(v36 + 8);
  v56 = v36 + 8;
  v55 = v57;
  v138 = v44;
  v57(v44, v33);
  sub_1DA421074();
  v59 = v58;
  (*(v30 + 8))(v2, v148);
  if (v52 + v54 > -v59)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18_7();
  v64 = v55;
  v65 = sub_1DA3F91E0(v144, v60, v61, v62, v63);
  v67 = v66;
  sub_1DA4212D4();
  v68 = v41;
  sub_1DA4211C4();
  v69 = OUTLINED_FUNCTION_78();
  v137 = v33;
  v136[0] = v64;
  v64(v69, v33);
  v70 = v147;
  sub_1DA3EA2EC(v65, v67, v68, v147);

  v71 = v149;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, v149);
  v136[1] = v56;
  if (EnumTagSinglePayload == 1)
  {
    sub_1DA4039D4(v70);
    v73 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v74 = sub_1DA421384();
    v75 = *(v141 + 8);
    v75(v70, v71);
    if (v74)
    {
      v76 = *(v74 + 16);
      if (v76)
      {
        v148 = *(v141 + 16);
        v77 = *(v141 + 80);
        OUTLINED_FUNCTION_49();
        v141 = v74;
        v79 = v74 + v78;
        v147 = *(v80 + 56);
        v73 = MEMORY[0x1E69E7CC0];
        do
        {
          (v148)(v22, v79, v71);
          v81 = sub_1DA421394();
          v83 = v82;
          v75(v22, v71);
          if (v83)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v88 = *(v73 + 16);
              OUTLINED_FUNCTION_16_1();
              sub_1DA3A5B78();
              v73 = v89;
            }

            v85 = *(v73 + 16);
            v84 = *(v73 + 24);
            v86 = v73;
            if (v85 >= v84 >> 1)
            {
              OUTLINED_FUNCTION_21_3(v84);
              OUTLINED_FUNCTION_72();
              sub_1DA3A5B78();
              v86 = v90;
            }

            *(v86 + 16) = v85 + 1;
            v73 = v86;
            v87 = v86 + 16 * v85;
            *(v87 + 32) = v81;
            *(v87 + 40) = v83;
            v71 = v149;
          }

          v79 += v147;
          --v76;
        }

        while (v76);
      }

      else
      {

        v73 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v73 = MEMORY[0x1E69E7CC0];
    }
  }

  v147 = v73;
  sub_1DA3FAB60();
  v92 = v91;
  v93 = *(v91 + 16);
  v94 = v145;
  if (v93)
  {
    v155[0] = MEMORY[0x1E69E7CC0];
    sub_1DA3B0160();
    v95 = v155[0];
    v149 = *(v140 + 16);
    v96 = *(v140 + 80);
    OUTLINED_FUNCTION_49();
    v142 = v92;
    v98 = v92 + v97;
    v148 = *(v99 + 56);
    v100 = (v99 - 8);
    do
    {
      v149(v150, v98, v151);
      v101 = sub_1DA4212F4();
      v103 = v102;
      v104 = *v100;
      v105 = OUTLINED_FUNCTION_45_0();
      v106(v105);
      v155[0] = v95;
      v108 = *(v95 + 16);
      v107 = *(v95 + 24);
      if (v108 >= v107 >> 1)
      {
        OUTLINED_FUNCTION_21_3(v107);
        sub_1DA3B0160();
        v95 = v155[0];
      }

      *(v95 + 16) = v108 + 1;
      v109 = v95 + 16 * v108;
      *(v109 + 32) = v101;
      *(v109 + 40) = v103;
      v98 += v148;
      --v93;
    }

    while (v93);

    v94 = v145;
  }

  else
  {

    v95 = MEMORY[0x1E69E7CC0];
  }

  v110 = v143;
  sub_1DA3BC3DC(v95);
  v111 = v147;

  sub_1DA3BC3DC(v112);
  v113 = OUTLINED_FUNCTION_39();
  v115 = sub_1DA3FBA50(v113, v114);

  if (v115)
  {

    return 0;
  }

  v117 = *(v111 + 16);

  if (v117)
  {
    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v118 = sub_1DA421A94();
    __swift_project_value_buffer(v118, static Logger.conversionCategory);
    v119 = *(v110 + 16);
    v120 = v139;
    v121 = OUTLINED_FUNCTION_74();
    v122(v121);
    sub_1DA3B2454(v144, v155);
    v123 = sub_1DA421A74();
    v124 = sub_1DA421F74();
    if (OUTLINED_FUNCTION_147(v124))
    {
      OUTLINED_FUNCTION_90();
      v154 = OUTLINED_FUNCTION_34_1();
      *v111 = 136315394;
      v125 = v138;
      sub_1DA4212D4();
      sub_1DA421194();
      (v136[0])(v125, v137);
      v126 = *(v110 + 8);
      v127 = OUTLINED_FUNCTION_55_0();
      v128(v127);
      v129 = OUTLINED_FUNCTION_60();
      sub_1DA3A5FE8(v129, v130, v131);
      OUTLINED_FUNCTION_78();

      OUTLINED_FUNCTION_17_6();
      v132 = v156;
      __swift_project_boxed_opaque_existential_1(v155, v156);
      DynamicType = swift_getDynamicType();
      v153 = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
      sub_1DA421BB4();
      OUTLINED_FUNCTION_89();
      __swift_destroy_boxed_opaque_existential_0(v155);
      v133 = OUTLINED_FUNCTION_60();
      sub_1DA3A5FE8(v133, v134, v135);
      OUTLINED_FUNCTION_78();

      *(v111 + 14) = v132;
      OUTLINED_FUNCTION_122(&dword_1DA39E000, v123, v115, "for suggestionsShownInteraction with id - %s and for process - %s not converted is already set but the value has to be updated - This is not expected");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_7_9();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v155);
      (*(v110 + 8))(v120, v94);
    }
  }

  return 1;
}

uint64_t sub_1DA3FBA50(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_1DA422434();

      sub_1DA421BF4();
      v16 = sub_1DA422474();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = sub_1DA4223A4();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
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
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1DA3FBBF8()
{
  OUTLINED_FUNCTION_178();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DA4213B4();
  v6 = OUTLINED_FUNCTION_3_1(v5);
  v60 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_7();
  v10 = OUTLINED_FUNCTION_140();
  v11 = OUTLINED_FUNCTION_3_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_7();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v59 - v23;
  OUTLINED_FUNCTION_18_7();
  v29 = sub_1DA3F91E0(v2, v25, v26, v27, v28);
  v31 = v30;
  sub_1DA4212D4();
  v32 = sub_1DA4211C4();
  (*(v13 + 8))(v18, v10);
  sub_1DA3EA2EC(v29, v31, v32, v24);

  if (__swift_getEnumTagSinglePayload(v24, 1, v5) == 1)
  {
    sub_1DA4039D4(v24);
    v33 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v59[2] = v4;
  v34 = sub_1DA421384();
  v35 = v60;
  v36 = *(v60 + 8);
  v37 = OUTLINED_FUNCTION_154();
  v63 = v38;
  v38(v37);
  if (!v34)
  {
LABEL_15:
    v33 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v39 = *(v34 + 16);
  if (!v39)
  {

    goto LABEL_15;
  }

  v41 = *(v35 + 16);
  v40 = v35 + 16;
  v42 = *(v40 + 64);
  OUTLINED_FUNCTION_49();
  v59[1] = v34;
  v44 = v34 + v43;
  v61 = *(v40 + 56);
  v62 = v45;
  v33 = MEMORY[0x1E69E7CC0];
  v60 = v40;
  do
  {
    v62(v0, v44, v5);
    v46 = sub_1DA421394();
    v48 = v47;
    v49 = OUTLINED_FUNCTION_169();
    v63(v49);
    if (v48)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = *(v33 + 16);
        OUTLINED_FUNCTION_16_1();
        sub_1DA3A5B78();
        v33 = v54;
      }

      v51 = *(v33 + 16);
      v50 = *(v33 + 24);
      if (v51 >= v50 >> 1)
      {
        OUTLINED_FUNCTION_21_3(v50);
        sub_1DA3A5B78();
        v33 = v55;
      }

      *(v33 + 16) = v51 + 1;
      v52 = v33 + 16 * v51;
      *(v52 + 32) = v46;
      *(v52 + 40) = v48;
    }

    v44 += v61;
    --v39;
  }

  while (v39);

LABEL_16:
  v64[0] = sub_1DA4212F4();
  v64[1] = v56;
  MEMORY[0x1EEE9AC00](v64[0]);
  OUTLINED_FUNCTION_117();
  *(v57 - 16) = v64;
  sub_1DA412A3C(sub_1DA403B04, v58, v33);

  OUTLINED_FUNCTION_181();
}

uint64_t sub_1DA3FBF84()
{
  OUTLINED_FUNCTION_16();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v1[28] = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  v1[29] = OUTLINED_FUNCTION_40();
  v8 = sub_1DA4213B4();
  v1[30] = v8;
  OUTLINED_FUNCTION_5_2(v8);
  v1[31] = v9;
  v11 = *(v10 + 64);
  v1[32] = OUTLINED_FUNCTION_95();
  v1[33] = swift_task_alloc();
  v12 = sub_1DA4211F4();
  v1[34] = v12;
  OUTLINED_FUNCTION_5_2(v12);
  v1[35] = v13;
  v15 = *(v14 + 64);
  v1[36] = OUTLINED_FUNCTION_40();
  v16 = sub_1DA421314();
  v1[37] = v16;
  OUTLINED_FUNCTION_5_2(v16);
  v1[38] = v17;
  v19 = *(v18 + 64);
  v1[39] = OUTLINED_FUNCTION_40();
  v20 = sub_1DA4212E4();
  v1[40] = v20;
  OUTLINED_FUNCTION_5_2(v20);
  v1[41] = v21;
  v23 = *(v22 + 64);
  v1[42] = OUTLINED_FUNCTION_95();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1DA3FC188()
{
  v56 = v0;
  v1 = v0[44];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[26];
  v5 = v0[27];
  v6 = v0[25];
  v7 = *(v3 + 16);
  v0[45] = v7;
  v0[46] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  if (sub_1DA3FB144(v6, v4))
  {
    v8 = v0[26];
    v9 = v0[25];
    v10 = *__swift_project_boxed_opaque_existential_1((v0[27] + 152), *(v0[27] + 176));
    sub_1DA3B6A3C(v8, 0, 0, 0, 2);
    sub_1DA3FAB60();
    v12 = v11;
    v0[47] = v11;
    v13 = v8[3];
    v14 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v13);
    v15 = *(v14 + 32);
    v53 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[48] = v17;
    *v17 = v0;
    v17[1] = sub_1DA3FC604;
    v18 = OUTLINED_FUNCTION_13_5(v0[25]);

    return v53(v18, v12, v13, v14);
  }

  else
  {
    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v20 = v0[42];
    v21 = v0[40];
    v23 = v0[25];
    v22 = v0[26];
    v24 = sub_1DA421A94();
    __swift_project_value_buffer(v24, static Logger.conversionCategory);
    v25 = OUTLINED_FUNCTION_87();
    (v7)(v25);
    sub_1DA3B2454(v22, (v0 + 2));
    v26 = sub_1DA421A74();
    v27 = sub_1DA421F64();
    v28 = OUTLINED_FUNCTION_7_1(v27);
    v29 = v0[44];
    v30 = v0[41];
    v31 = v0[42];
    v32 = v0[40];
    if (v28)
    {
      v54 = v0[44];
      v33 = v0[35];
      v34 = v0[36];
      v49 = v0[34];
      v51 = v27;
      v35 = OUTLINED_FUNCTION_90();
      v55 = OUTLINED_FUNCTION_92();
      *v35 = 136315394;
      v50 = v26;
      sub_1DA4212D4();
      v36 = sub_1DA421194();
      v52 = v7;
      v38 = v37;
      (*(v33 + 8))(v34, v49);
      v39 = *(v30 + 8);
      v39(v31, v32);
      sub_1DA3A5FE8(v36, v38, &v55);
      OUTLINED_FUNCTION_135();
      v7 = v52;

      OUTLINED_FUNCTION_64();
      v40 = OUTLINED_FUNCTION_39_0();
      v41 = v0[6];
      v0[20] = v40;
      v0[21] = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
      v42 = sub_1DA421BB4();
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v43 = OUTLINED_FUNCTION_45_0();
      sub_1DA3A5FE8(v43, v44, v45);
      OUTLINED_FUNCTION_31_2();

      *(v35 + 14) = v42;
      OUTLINED_FUNCTION_183(&dword_1DA39E000, v50, v51, "for suggestionsShownInteraction with id - %s and for process - %s - database already has correct not converted values - no update needed");
      OUTLINED_FUNCTION_123();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_53_0();

      v39(v54, v32);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v46 = *(v30 + 8);
      v46(v31, v32);
      v47 = OUTLINED_FUNCTION_24();
      (v46)(v47);
    }

    v7(v0[24], v0[25], v0[40]);
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_4_0();

    return v48();
  }
}

uint64_t sub_1DA3FC604()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 384);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA3FC6E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_log_t log, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_174();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = v28[47];
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = v28[38];
    OUTLINED_FUNCTION_127();
    sub_1DA3B0160();
    v34 = a17;
    v35 = *(v33 + 16);
    v33 += 16;
    v36 = *(v33 + 64);
    OUTLINED_FUNCTION_49();
    v38 = v31 + v37;
    v136 = *(v33 + 56);
    loga = v39;
    v40 = (v33 - 8);
    do
    {
      v41 = v28[39];
      v42 = v28[37];
      v43 = OUTLINED_FUNCTION_87();
      (loga)(v43);
      v44 = sub_1DA4212F4();
      v46 = v45;
      (*v40)(v41, v42);
      a17 = v34;
      v48 = *(v34 + 16);
      v47 = *(v34 + 24);
      if (v48 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_21_3(v47);
        OUTLINED_FUNCTION_173();
        sub_1DA3B0160();
        v34 = a17;
      }

      *(v34 + 16) = v48 + 1;
      v49 = v34 + 16 * v48;
      *(v49 + 32) = v44;
      *(v49 + 40) = v46;
      v38 += v136;
      --v32;
    }

    while (v32);
    v50 = v28[47];
  }

  else
  {
    v51 = v28[47];

    v34 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EE100EF8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v53 = v28[45];
  v52 = v28[46];
  v54 = v28[43];
  v55 = v28[40];
  v57 = v28[25];
  v56 = v28[26];
  v58 = sub_1DA421A94();
  __swift_project_value_buffer(v58, static Logger.conversionCategory);
  v59 = OUTLINED_FUNCTION_60();
  v53(v59);
  sub_1DA3B2454(v56, (v28 + 7));

  v60 = sub_1DA421A74();
  sub_1DA421F64();
  OUTLINED_FUNCTION_185();
  v61 = OUTLINED_FUNCTION_182();
  v62 = v28[43];
  v64 = v28[40];
  v63 = v28[41];
  if (v61)
  {
    v65 = v28[35];
    v66 = v28[36];
    v135 = v28[34];
    v67 = OUTLINED_FUNCTION_139();
    a17 = swift_slowAlloc();
    *v67 = 136315650;
    logd = v60;
    sub_1DA4212D4();
    v68 = sub_1DA421194();
    v137 = v56;
    (*(v65 + 8))(v66, v135);
    v69 = *(v63 + 8);
    v70 = OUTLINED_FUNCTION_38();
    v71(v70);
    v72 = OUTLINED_FUNCTION_87();
    sub_1DA3A5FE8(v72, v73, v74);
    OUTLINED_FUNCTION_51_0();

    *(v67 + 4) = v68;
    *(v67 + 12) = 2080;
    v75 = MEMORY[0x1DA74D4B0](v34, MEMORY[0x1E69E6158]);
    v77 = sub_1DA3A5FE8(v75, v76, &a17);

    *(v67 + 14) = v77;
    *(v67 + 22) = 2080;
    v78 = v28[10];
    __swift_project_boxed_opaque_existential_1(v28 + 7, v78);
    DynamicType = swift_getDynamicType();
    v80 = v28[11];
    v28[22] = DynamicType;
    v28[23] = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_105();
    __swift_destroy_boxed_opaque_existential_0(v28 + 7);
    v81 = OUTLINED_FUNCTION_87();
    sub_1DA3A5FE8(v81, v82, v83);
    OUTLINED_FUNCTION_51_0();

    *(v67 + 24) = v78;
    _os_log_impl(&dword_1DA39E000, logd, v137, "Updating interaction - %s with NotConverted Entities - %s for processor %s", v67, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_17();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v28 + 7);
    v84 = *(v63 + 8);
    v85 = OUTLINED_FUNCTION_38();
    v86(v85);
  }

  v87 = *(v34 + 16);
  if (v87)
  {
    v88 = v28[31];
    logb = v28[32];
    v89 = OUTLINED_FUNCTION_127();
    sub_1DA3B04B0(v89, v90, v91);
    v92 = a17;
    v138 = *MEMORY[0x1E69D2AE8];
    v144 = *(v88 + 104);
    v93 = (v34 + 40);
    do
    {
      v94 = v28[30];
      v95 = *v93;
      *v28[32] = *(v93 - 1);
      logb[1].isa = v95;
      v144();
      a17 = v92;
      v96 = *(v92 + 16);
      v97 = *(v92 + 24);

      if (v96 >= v97 >> 1)
      {
        OUTLINED_FUNCTION_72();
        sub_1DA3B04B0(v102, v103, v104);
        v92 = a17;
      }

      v98 = v28[32];
      v99 = v28[30];
      *(v92 + 16) = v96 + 1;
      v100 = *(v88 + 80);
      OUTLINED_FUNCTION_49();
      (*(v88 + 32))(v92 + v101 + *(v88 + 72) * v96);
      v93 += 2;
      --v87;
    }

    while (v87);

    v105 = v144;
  }

  else
  {
    v106 = v28[31];

    v105 = *(v106 + 104);
    v92 = MEMORY[0x1E69E7CC0];
  }

  v134 = v28[44];
  logc = v28[41];
  v145 = v28[40];
  v107 = v28[33];
  v109 = v28[30];
  v108 = v28[31];
  v110 = v28[29];
  v111 = v28[26];
  v139 = v28[24];
  *v107 = v92;
  (v105)(v107, *MEMORY[0x1E69D2AD0], v109);
  OUTLINED_FUNCTION_18_7();
  v116 = sub_1DA3F91E0(v111, v112, v113, v114, v115);
  v132 = v117;
  v133 = v116;
  (*(v108 + 16))(v110, v107, v109);
  OUTLINED_FUNCTION_47();
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v109);
  v121 = sub_1DA4212C4();
  v122 = sub_1DA4211B4();
  sub_1DA3F82C0(v110, v133, v132);
  v122(v28 + 16, 0);
  v121(v28 + 12, 0);
  (*(v108 + 8))(v107, v109);
  (logc[4].isa)(v139, v134, v145);
  OUTLINED_FUNCTION_119();

  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_121();

  return v124(v123, v124, v125, v126, v127, v128, v129, v130, a9, v132, v133, v134, v28 + 12, v139, logc, v145, a17, a18, a19, a20);
}

void sub_1DA3FCD04()
{
  OUTLINED_FUNCTION_178();
  v1 = v0;
  v129 = v2;
  v3 = sub_1DA421314();
  v4 = OUTLINED_FUNCTION_3_1(v3);
  v133 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_76();
  v124 = v8 - v9;
  OUTLINED_FUNCTION_132();
  MEMORY[0x1EEE9AC00](v10);
  v126 = &v112 - v11;
  OUTLINED_FUNCTION_132();
  MEMORY[0x1EEE9AC00](v12);
  v132 = &v112 - v13;
  OUTLINED_FUNCTION_104();
  v14 = sub_1DA4211F4();
  v15 = OUTLINED_FUNCTION_3_1(v14);
  v125 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_7();
  v21 = v20 - v19;
  v22 = sub_1DA4212E4();
  v23 = OUTLINED_FUNCTION_3_1(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_76();
  v121 = v28 - v29;
  OUTLINED_FUNCTION_132();
  MEMORY[0x1EEE9AC00](v30);
  v131 = &v112 - v31;
  OUTLINED_FUNCTION_132();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v112 - v33;
  if (qword_1EE100EF8 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v35 = sub_1DA421A94();
    v36 = __swift_project_value_buffer(v35, static Logger.conversionCategory);
    v38 = *(v25 + 16);
    v127 = v1;
    OUTLINED_FUNCTION_166();
    (v38)();
    v118 = v38;
    v119 = v25 + 16;
    (v38)(v131, v129, v22);
    v120 = v36;
    v37 = sub_1DA421A74();
    LODWORD(v38) = sub_1DA421F64();
    v39 = OUTLINED_FUNCTION_7_1(v38);
    v134 = v3;
    v114 = v14;
    v123 = v22;
    v113 = v21;
    v122 = v25;
    if (v39)
    {
      v40 = OUTLINED_FUNCTION_90();
      v130 = OUTLINED_FUNCTION_92();
      v135[0] = v130;
      *v40 = 136315394;
      v128 = v37;
      sub_1DA4212D4();
      v41 = sub_1DA421194();
      LODWORD(v116) = v38;
      v38 = v22;
      v43 = v42;
      v117 = *(v125 + 8);
      v44 = OUTLINED_FUNCTION_131();
      v45(v44);
      v3 = *(v25 + 8);
      (v3)(v34, v38);
      v46 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v46, v43, v47);
      OUTLINED_FUNCTION_78();

      *(v40 + 4) = v41;
      *(v40 + 12) = 2080;
      v48 = v131;
      sub_1DA4212D4();
      sub_1DA421194();
      OUTLINED_FUNCTION_89();
      v49 = OUTLINED_FUNCTION_131();
      v117(v49);
      v117 = v3;
      (v3)(v48, v38);
      v50 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v50, v43, v51);
      OUTLINED_FUNCTION_78();

      *(v40 + 14) = v21;
      v52 = v128;
      _os_log_impl(&dword_1DA39E000, v128, v116, "Checking if Suggestion shown - %s and engagement %s can be considered a conversion", v40, 0x16u);
      OUTLINED_FUNCTION_151();
      OUTLINED_FUNCTION_75();
      OUTLINED_FUNCTION_17();
    }

    else
    {

      v53 = *(v25 + 8);
      v53(v131, v22);
      v117 = v53;
      v53(v34, v22);
    }

    v54 = sub_1DA4212B4();
    v55 = sub_1DA421604();
    v56 = sub_1DA4215A4();
    v58 = sub_1DA3EA3F0(v56, v57, v54);

    v59 = v58 ? v58 : MEMORY[0x1E69E7CC0];
    v60 = *(v59 + 16);
    v128 = MEMORY[0x1E69E7CC0];
    if (v60)
    {
      v116 = v55;
      v135[0] = MEMORY[0x1E69E7CC0];
      sub_1DA3B0160();
      v34 = v135[0];
      v38 = v133 + 16;
      v131 = *(v133 + 16);
      v61 = *(v133 + 80);
      OUTLINED_FUNCTION_49();
      v115 = v59;
      v63 = v59 + v62;
      v130 = *(v38 + 56);
      do
      {
        v64 = OUTLINED_FUNCTION_83();
        v65(v64);
        v3 = sub_1DA4212F4();
        v14 = v66;
        v67 = *(v38 - 8);
        v68 = OUTLINED_FUNCTION_60();
        v69(v68);
        v135[0] = v34;
        v71 = *(v34 + 2);
        v70 = *(v34 + 3);
        if (v71 >= v70 >> 1)
        {
          OUTLINED_FUNCTION_21_3(v70);
          OUTLINED_FUNCTION_72();
          sub_1DA3B0160();
          v34 = v135[0];
        }

        *(v34 + 2) = v71 + 1;
        v72 = &v34[16 * v71];
        *(v72 + 4) = v3;
        *(v72 + 5) = v14;
        v63 += v130;
        --v60;
        v22 = v134;
      }

      while (v60);
    }

    else
    {

      v34 = MEMORY[0x1E69E7CC0];
      v22 = v134;
    }

    if (!*(v34 + 2))
    {
      break;
    }

    v73 = sub_1DA4212B4();
    v74 = sub_1DA4215A4();
    v76 = sub_1DA3EA3F0(v74, v75, v73);

    v25 = 0;
    v21 = 0;
    if (!v76)
    {
      v76 = MEMORY[0x1E69E7CC0];
    }

    v77 = *(v76 + 16);
    v131 = (v133 + 16);
    v132 = v77;
    v129 = (v133 + 8);
    v130 = v76;
    v127 = (v133 + 32);
    v1 = v126;
    while (1)
    {
      if (v132 == v25)
      {

        goto LABEL_32;
      }

      if (v25 >= *(v76 + 16))
      {
        break;
      }

      v3 = ((*(v133 + 80) + 32) & ~*(v133 + 80));
      v78 = *(v133 + 72);
      (*(v133 + 16))(v1, &v3[v76 + v78 * v25], v22);
      v14 = &v112;
      v135[0] = sub_1DA4212F4();
      v135[1] = v79;
      MEMORY[0x1EEE9AC00](v135[0]);
      OUTLINED_FUNCTION_117();
      *(v80 - 16) = v135;
      v82 = sub_1DA412A3C(sub_1DA3B8E14, v81, v34);

      if (v82)
      {
        v14 = v3;
        v125 = v25;
        v3 = *v127;
        v86 = v124;
        OUTLINED_FUNCTION_166();
        (v3)();
        v87 = v128;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = v87;
        v136 = v87;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isa = v87[2].isa;
          v91 = OUTLINED_FUNCTION_162();
          sub_1DA3B0508(v91, v92, v93);
          v1 = v126;
          v89 = v136;
        }

        v76 = v130;
        v95 = v89[2].isa;
        v94 = v89[3].isa;
        if (v95 >= v94 >> 1)
        {
          OUTLINED_FUNCTION_21_3(v94);
          OUTLINED_FUNCTION_72();
          sub_1DA3B0508(v98, v99, v100);
          v1 = v126;
          v89 = v136;
        }

        v96 = v125 + 1;
        v89[2].isa = (v95 + 1);
        v128 = v89;
        v97 = v14 + v89 + v95 * v78;
        v25 = v96;
        v22 = v134;
        (v3)(v97, v86, v134);
      }

      else
      {
        v83 = *v129;
        v84 = OUTLINED_FUNCTION_60();
        v85(v84);
        ++v25;
        v76 = v130;
      }
    }

    __break(1u);
LABEL_34:
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v118(v121, v129, v123);
  v101 = sub_1DA421A74();
  v102 = sub_1DA421F74();
  if (OUTLINED_FUNCTION_147(v102))
  {
    v103 = OUTLINED_FUNCTION_150();
    v104 = OUTLINED_FUNCTION_139();
    v135[0] = v104;
    *v103 = 136315138;
    v105 = v113;
    sub_1DA4212D4();
    sub_1DA421194();
    OUTLINED_FUNCTION_89();
    (*(v125 + 8))(v105, v114);
    v106 = OUTLINED_FUNCTION_107();
    v107(v106);
    v108 = OUTLINED_FUNCTION_25_3();
    sub_1DA3A5FE8(v108, v22, v109);
    OUTLINED_FUNCTION_78();

    *(v103 + 4) = v105;
    _os_log_impl(&dword_1DA39E000, v101, v38, "suggestion entity not present in engagement %s - which is not expected", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v104);
    OUTLINED_FUNCTION_53_0();
    OUTLINED_FUNCTION_7_9();
  }

  else
  {

    v110 = OUTLINED_FUNCTION_107();
    v111(v110);
  }

LABEL_32:
  OUTLINED_FUNCTION_181();
}

uint64_t DefaultConversionLogger.runMetricsLogic(store:)()
{
  OUTLINED_FUNCTION_16();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_1DA421314();
  v1[9] = v3;
  OUTLINED_FUNCTION_5_2(v3);
  v1[10] = v4;
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_95();
  v1[12] = swift_task_alloc();
  v7 = sub_1DA4211F4();
  v1[13] = v7;
  OUTLINED_FUNCTION_5_2(v7);
  v1[14] = v8;
  v10 = *(v9 + 64);
  v1[15] = OUTLINED_FUNCTION_40();
  v11 = sub_1DA4212E4();
  v1[16] = v11;
  OUTLINED_FUNCTION_5_2(v11);
  v1[17] = v12;
  v14 = *(v13 + 64);
  v1[18] = OUTLINED_FUNCTION_95();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF928, &qword_1DA429278);
  v1[23] = v15;
  OUTLINED_FUNCTION_5_2(v15);
  v1[24] = v16;
  v18 = *(v17 + 64);
  v1[25] = OUTLINED_FUNCTION_40();
  v19 = sub_1DA421294();
  v1[26] = v19;
  OUTLINED_FUNCTION_5_2(v19);
  v1[27] = v20;
  v22 = *(v21 + 64);
  v1[28] = OUTLINED_FUNCTION_95();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v23 = sub_1DA421184();
  v1[32] = v23;
  OUTLINED_FUNCTION_5_2(v23);
  v1[33] = v24;
  v26 = *(v25 + 64);
  v1[34] = OUTLINED_FUNCTION_95();
  v1[35] = swift_task_alloc();
  v27 = sub_1DA4210B4();
  v1[36] = v27;
  OUTLINED_FUNCTION_5_2(v27);
  v1[37] = v28;
  v30 = *(v29 + 64);
  v1[38] = OUTLINED_FUNCTION_95();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

uint64_t sub_1DA3FD8F8()
{
  v257 = v0;
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 64);
  v4 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
  v5 = OUTLINED_FUNCTION_20_4();
  v6(v5);
  sub_1DA421024();
  v7 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_31_2();
  v10(v9, v7);
  sub_1DA421024();
  if (qword_1EE100EF8 != -1)
  {
LABEL_69:
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v11 = *(v0 + 320);
  v12 = *(v0 + 328);
  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  v15 = *(v0 + 288);
  v16 = *(v0 + 296);
  v17 = sub_1DA421A94();
  __swift_project_value_buffer(v17, static Logger.conversionCategory);
  v18 = *(v16 + 16);
  OUTLINED_FUNCTION_166();
  v18();
  v19 = OUTLINED_FUNCTION_167();
  v222 = v18;
  (v18)(v19);
  v20 = sub_1DA421A74();
  v21 = sub_1DA421F64();
  v22 = os_log_type_enabled(v20, v21);
  v24 = *(v0 + 304);
  v23 = *(v0 + 312);
  v25 = v0;
  v26 = *(v0 + 296);
  v244 = v25;
  v27 = v25[36];
  if (v22)
  {
    v246 = v21;
    v28 = OUTLINED_FUNCTION_90();
    v256[0] = OUTLINED_FUNCTION_92();
    *v28 = 136315394;
    sub_1DA4038FC();
    OUTLINED_FUNCTION_154();
    v29 = sub_1DA422364();
    v31 = v30;
    v32 = *(v26 + 8);
    v33 = OUTLINED_FUNCTION_50_0();
    v32(v33);
    sub_1DA3A5FE8(v29, v31, v256);
    OUTLINED_FUNCTION_78();

    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_154();
    sub_1DA422364();
    OUTLINED_FUNCTION_89();
    v34 = OUTLINED_FUNCTION_81();
    v32(v34);
    v35 = OUTLINED_FUNCTION_60();
    sub_1DA3A5FE8(v35, v36, v37);
    OUTLINED_FUNCTION_78();

    *(v28 + 14) = v24;
    OUTLINED_FUNCTION_183(&dword_1DA39E000, v20, v246, "Start looking up engagement interactions from %s and suggestions shown interactions from %s");
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_53_0();
  }

  else
  {

    v32 = *(v26 + 8);
    v38 = OUTLINED_FUNCTION_81();
    v32(v38);
    v39 = OUTLINED_FUNCTION_50_0();
    v32(v39);
  }

  v221 = v32;
  v40 = v244;
  v244[42] = v32;
  v41 = v244[35];
  v231 = v244[36];
  v235 = v244[40];
  v42 = v244[33];
  v43 = v244[34];
  v226 = v244[32];
  v247 = v244[31];
  v44 = v244[30];
  v238 = v244[29];
  v223 = v244[27];
  v250 = v244[26];
  v45 = v244[24];
  v46 = v244[25];
  v229 = v244[23];
  v242 = v244[7];
  sub_1DA421174();
  sub_1DA421604();
  sub_1DA4215B4();
  sub_1DA421164();

  v47 = v42 + 8;
  v0 = *(v42 + 8);
  v244[43] = v0;
  v244[44] = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (v0)(v43, v226);
  sub_1DA421284();
  sub_1DA421234();
  v224 = *(v223 + 8);
  v244[45] = v224;
  v244[46] = (v223 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v224(v44, v250);
  (v222)(v46, v235, v231);
  v220 = *MEMORY[0x1E69D29B8];
  v219 = *(v45 + 104);
  v219(v46);
  sub_1DA421274();
  v48 = *(v45 + 8);
  v48(v46, v229);
  sub_1DA421264();
  v224(v238, v250);
  v49 = OUTLINED_FUNCTION_50_0();
  (v224)(v49);
  v50 = *(v223 + 32);
  v50(v247, v44, v250);
  v51 = sub_1DA421224();
  v216 = v50;
  v53 = 0;
  v54 = v244[17];
  v239 = *(v51 + 16);
  v251 = (v244[14] + 8);
  v227 = (v54 + 32);
  v236 = v54;
  v245 = (v54 + 8);
  v55 = MEMORY[0x1E69E7CC0];
  v218 = v0;
  v217 = v48;
  v232 = v51;
LABEL_9:
  v243 = v55;
  while (1)
  {
    v244[47] = v55;
    if (v239 == v53)
    {
      break;
    }

    if (v53 >= *(v51 + 16))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v56 = v244[22];
    v58 = v244[15];
    v57 = v244[16];
    v59 = v244[13];
    v60 = *(v236 + 80);
    OUTLINED_FUNCTION_49();
    v230 = v61;
    v0 = *(v63 + 72);
    (*(v63 + 16))(v56, v62 + v61 + v0 * v53);
    sub_1DA4212D4();
    sub_1DA4211A4();
    v64 = *v251;
    v65 = OUTLINED_FUNCTION_24();
    v64(v65);
    sub_1DA421524();
    LOBYTE(v58) = sub_1DA421C64();

    if (v58)
    {
      v66 = v244[22];
      v67 = v244[15];
      v68 = v244[13];
      sub_1DA4212D4();
      sub_1DA421194();
      v69 = OUTLINED_FUNCTION_24();
      v64(v69);
      sub_1DA421594();
      LOBYTE(v67) = sub_1DA421C74();

      if ((v67 & 1) == 0)
      {
        v70 = *v227;
        (*v227)(v244[21], v244[22], v244[16]);
        v55 = v243;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v256[0] = v243;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v72 = *(v243 + 16);
          v73 = OUTLINED_FUNCTION_162();
          sub_1DA3B0560(v73, v74, v75);
          v55 = v256[0];
        }

        v77 = *(v55 + 16);
        v76 = *(v55 + 24);
        if (v77 >= v76 >> 1)
        {
          v80 = OUTLINED_FUNCTION_21_3(v76);
          sub_1DA3B0560(v80, v77 + 1, 1);
          v55 = v256[0];
        }

        ++v53;
        v78 = v244[21];
        v79 = v244[16];
        *(v55 + 16) = v77 + 1;
        v70(v55 + v230 + v77 * v0, v78, v79);
        v51 = v232;
        goto LABEL_9;
      }
    }

    (*v245)(v244[22], v244[16]);
    ++v53;
    v55 = v243;
    v51 = v232;
  }

  if (*(v55 + 16))
  {
    v81 = *(v55 + 16);

    v82 = v55;
    v83 = sub_1DA421A74();
    v84 = sub_1DA421F64();
    if (OUTLINED_FUNCTION_7_1(v84))
    {
      v85 = v244[16];
      v86 = OUTLINED_FUNCTION_90();
      v87 = OUTLINED_FUNCTION_139();
      v256[0] = v87;
      *v86 = 134218242;
      *(v86 + 4) = *(v82 + 16);

      *(v86 + 12) = 2080;
      v88 = MEMORY[0x1DA74D4B0](v82, v85);
      v90 = sub_1DA3A5FE8(v88, v89, v256);

      *(v86 + 14) = v90;
      OUTLINED_FUNCTION_122(&dword_1DA39E000, v83, v84, "number of suggestionsShownInteractions - %ld - %s");
      __swift_destroy_boxed_opaque_existential_0(v87);
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_7_9();
    }

    else
    {
    }

    v116 = *(v236 + 80);
    OUTLINED_FUNCTION_49();
    v215 = v117;
    v118 = v82 + v117;
    v233 = *(v119 + 72);
    v240 = *(v119 + 16);
    v120 = v81;
    do
    {
      v121 = v40[19];
      (v240)(v40[20], v118, v40[16]);
      v122 = OUTLINED_FUNCTION_83();
      v240(v122);
      v123 = sub_1DA421A74();
      v124 = sub_1DA421F64();
      v125 = os_log_type_enabled(v123, v124);
      v127 = v40[19];
      v126 = v40[20];
      v128 = v40[16];
      if (v125)
      {
        v129 = v40[15];
        v225 = v40[13];
        v237 = v120;
        v130 = OUTLINED_FUNCTION_90();
        v256[0] = OUTLINED_FUNCTION_92();
        *v130 = 136315394;
        sub_1DA4212B4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF750, qword_1DA429290);
        v131 = sub_1DA421AF4();
        v228 = v124;
        v133 = v132;

        v134 = *v245;
        v135 = OUTLINED_FUNCTION_170();
        v134(v135);
        v136 = v131;
        v40 = v244;
        sub_1DA3A5FE8(v136, v133, v256);
        OUTLINED_FUNCTION_31_2();

        OUTLINED_FUNCTION_110();
        sub_1DA4212D4();
        v137 = sub_1DA4211C4();
        v138 = v129;
        v139 = v134;
        (*v251)(v138, v225);
        sub_1DA4213B4();
        sub_1DA421AD4();

        v140 = OUTLINED_FUNCTION_155();
        v134(v140);
        v141 = OUTLINED_FUNCTION_43_0();
        sub_1DA3A5FE8(v141, v142, v143);
        OUTLINED_FUNCTION_51_0();

        *(v130 + 14) = v137;
        _os_log_impl(&dword_1DA39E000, v123, v228, "SiriSuggestionsLightHousePlugin: suggestionShownInteraction parameter keys - %s, interaction - %s", v130, 0x16u);
        OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_75();
        v120 = v237;
        OUTLINED_FUNCTION_17();
      }

      else
      {

        v139 = *v245;
        v144 = OUTLINED_FUNCTION_155();
        v139(v144);
        v145 = OUTLINED_FUNCTION_170();
        v139(v145);
      }

      v118 += v233;
      --v120;
    }

    while (v120);
    v254 = v139;
    v146 = v40[41];
    v147 = v40[36];
    v148 = v40[30];
    v149 = v40[28];
    v150 = v40[26];
    v151 = v244[25];
    v152 = v244[23];
    v153 = v244[7];
    sub_1DA421284();
    sub_1DA421554();
    sub_1DA421254();

    v154 = OUTLINED_FUNCTION_51();
    (v224)(v154);
    (v222)(v151, v146, v147);
    (v219)(v151, v220, v152);
    sub_1DA421274();
    v217(v151, v152);
    v224(v149, v150);
    v155 = OUTLINED_FUNCTION_43_0();
    v216(v155);
    v156 = sub_1DA421224();
    v244[48] = v156;
    v157 = *(v156 + 16);
    if (v157)
    {
      v158 = v244[10];
      v159 = v156 + v215;
      v160 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v161 = v160;
        v162 = v244[18];
        v163 = v244[16];
        v164 = OUTLINED_FUNCTION_50_0();
        v240(v164);
        v165 = sub_1DA4212B4();
        v166 = sub_1DA4215A4();
        if (*(v165 + 16))
        {
          v168 = sub_1DA3B76EC(v166, v167);
          v170 = v169;

          v171 = MEMORY[0x1E69E7CC0];
          if (v170)
          {
            v171 = *(*(v165 + 56) + 8 * v168);
          }
        }

        else
        {

          v171 = MEMORY[0x1E69E7CC0];
        }

        (v254)(v244[18], v244[16]);
        v172 = *(v171 + 16);
        v0 = *(v161 + 16);
        v173 = v0 + v172;
        if (__OFADD__(v0, v172))
        {
          goto LABEL_66;
        }

        v160 = v161;
        v174 = swift_isUniquelyReferenced_nonNull_native();
        if (!v174 || v173 > *(v161 + 24) >> 1)
        {
          if (v0 <= v173)
          {
            v175 = v0 + v172;
          }

          else
          {
            v175 = v0;
          }

          v160 = sub_1DA3A5C34(v174, v175, 1, v161);
        }

        if (*(v171 + 16))
        {
          if ((*(v160 + 24) >> 1) - *(v160 + 16) < v172)
          {
            goto LABEL_68;
          }

          v176 = v244[9];
          v177 = (*(v158 + 80) + 32) & ~*(v158 + 80);
          v178 = *(v158 + 72);
          swift_arrayInitWithCopy();

          if (v172)
          {
            v179 = *(v160 + 16);
            v180 = __OFADD__(v179, v172);
            v181 = v179 + v172;
            if (v180)
            {
              __break(1u);
              return result;
            }

            *(v160 + 16) = v181;
          }
        }

        else
        {

          if (v172)
          {
            goto LABEL_67;
          }
        }

        v159 += v233;
        if (!--v157)
        {
          goto LABEL_54;
        }
      }
    }

    v160 = MEMORY[0x1E69E7CC0];
LABEL_54:
    v182 = *(v160 + 16);
    if (v182)
    {
      v183 = v244;
      v184 = v244[10];
      v186 = *(v184 + 16);
      v184 += 16;
      v185 = v186;
      v187 = *(v184 + 64);
      OUTLINED_FUNCTION_49();
      v189 = v160 + v188;
      v249 = (v184 - 8);
      v255 = *(v184 + 56);
      v234 = v186;
      do
      {
        v190 = v183[11];
        v191 = v183[9];
        (v185)(v183[12], v189, v191);
        v192 = OUTLINED_FUNCTION_60();
        v185(v192);
        v193 = sub_1DA421A74();
        v194 = sub_1DA421F64();
        v195 = OUTLINED_FUNCTION_147(v194);
        v197 = v183[11];
        v196 = v183[12];
        v198 = v183[9];
        if (v195)
        {
          v199 = OUTLINED_FUNCTION_90();
          v256[0] = OUTLINED_FUNCTION_92();
          *v199 = 136315394;
          sub_1DA4212F4();
          v241 = v193;
          v200 = *v249;
          v201 = OUTLINED_FUNCTION_170();
          v200(v201);
          v202 = OUTLINED_FUNCTION_169();
          sub_1DA3A5FE8(v202, v203, v204);
          OUTLINED_FUNCTION_3_8();

          *(v199 + 4) = v196;
          *(v199 + 12) = 2080;
          v205 = sub_1DA421304();
          sub_1DA4213B4();
          sub_1DA421AD4();

          v206 = OUTLINED_FUNCTION_155();
          v200(v206);
          v207 = OUTLINED_FUNCTION_169();
          sub_1DA3A5FE8(v207, v208, v209);
          OUTLINED_FUNCTION_3_8();

          *(v199 + 14) = v205;
          _os_log_impl(&dword_1DA39E000, v241, v191, "SiriSuggestionsLightHousePlugin: siriEngagementEntity - loggingId %s, fields - %s", v199, 0x16u);
          OUTLINED_FUNCTION_151();
          OUTLINED_FUNCTION_75();
          v185 = v234;
          v183 = v244;
          OUTLINED_FUNCTION_17();
        }

        else
        {

          v210 = *v249;
          v211 = OUTLINED_FUNCTION_155();
          v210(v211);
          v212 = OUTLINED_FUNCTION_170();
          v210(v212);
        }

        v189 += v255;
        --v182;
      }

      while (v182);
    }

    else
    {

      v183 = v244;
    }

    v213 = swift_task_alloc();
    v183[49] = v213;
    *v213 = v183;
    v213[1] = sub_1DA3FEC0C;
    v214 = v183[8];

    return sub_1DA3FF0B8();
  }

  else
  {

    v91 = sub_1DA421A74();
    v92 = sub_1DA421F64();
    v93 = os_log_type_enabled(v91, v92);
    v94 = v244[40];
    v252 = v244[41];
    v95 = v244[36];
    v96 = v244[37];
    v97 = v244[35];
    v99 = v244[31];
    v98 = v244[32];
    v100 = v244[26];
    if (v93)
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_1DA39E000, v91, v92, "No suggestions shown interactions found - aborting the job ", v101, 2u);
      OUTLINED_FUNCTION_75();
    }

    v102 = OUTLINED_FUNCTION_38();
    (v224)(v102);
    v103 = OUTLINED_FUNCTION_74();
    v218(v103);
    v104 = OUTLINED_FUNCTION_167();
    v221(v104);
    (v221)(v252, v95);
    v106 = v244[40];
    v105 = v244[41];
    v108 = v244[38];
    v107 = v244[39];
    v109 = v244[34];
    v110 = v244[35];
    v112 = v244[30];
    v111 = v244[31];
    v114 = v244[28];
    v113 = v244[29];
    OUTLINED_FUNCTION_82();
    v248 = v244[12];
    v253 = v244[11];

    OUTLINED_FUNCTION_4_0();

    return v115();
  }
}

uint64_t sub_1DA3FEC0C()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v3 = v2;
  v4 = v1[49];
  v5 = v1[47];
  v6 = *v0;
  *v3 = *v0;

  v7 = swift_task_alloc();
  v2[50] = v7;
  *v7 = v6;
  v7[1] = sub_1DA3FED74;
  v8 = v1[48];
  v9 = v1[8];
  OUTLINED_FUNCTION_13_5(v8);

  return sub_1DA402F2C();
}

uint64_t sub_1DA3FED74()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 400);
  v3 = *(v1 + 384);
  v4 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA3FEE74()
{
  v1 = v0[45];
  v2 = v0[46];
  v36 = v0[44];
  v38 = v0[42];
  v40 = v0[41];
  v32 = v0[43];
  v34 = v0[40];
  v28 = v0[37];
  v30 = v0[36];
  v24 = v0[32];
  v26 = v0[35];
  v22 = v0[28];
  v23 = v0[31];
  v3 = v0[26];
  v4 = v0[8];
  v5 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  sub_1DA421994();
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_55_0();
  sub_1DA421934();
  v7 = *(v5 + 16);
  v8 = OUTLINED_FUNCTION_43_0();
  v9(v8);
  v1(v22, v3);
  v1(v23, v3);
  v32(v26, v24);
  v38(v34, v30);
  v38(v40, v30);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v11 = v0[40];
  v10 = v0[41];
  v13 = v0[38];
  v12 = v0[39];
  v14 = v0[34];
  v15 = v0[35];
  v17 = v0[30];
  v16 = v0[31];
  v19 = v0[28];
  v18 = v0[29];
  v25 = v0[25];
  v27 = v0[22];
  v29 = v0[21];
  v31 = v0[20];
  v33 = v0[19];
  v35 = v0[18];
  v37 = v0[15];
  v39 = v0[12];
  v41 = v0[11];

  OUTLINED_FUNCTION_4_0();

  return v20();
}

uint64_t sub_1DA3FF0B8()
{
  OUTLINED_FUNCTION_16();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  v4 = sub_1DA421374();
  v1[28] = v4;
  OUTLINED_FUNCTION_5_2(v4);
  v1[29] = v5;
  v7 = *(v6 + 64);
  v1[30] = OUTLINED_FUNCTION_40();
  v8 = sub_1DA421314();
  v1[31] = v8;
  OUTLINED_FUNCTION_5_2(v8);
  v1[32] = v9;
  v11 = *(v10 + 64);
  v1[33] = OUTLINED_FUNCTION_40();
  v12 = sub_1DA4213B4();
  v1[34] = v12;
  OUTLINED_FUNCTION_5_2(v12);
  v1[35] = v13;
  v15 = *(v14 + 64);
  v1[36] = OUTLINED_FUNCTION_95();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v16);
  v18 = *(v17 + 64);
  v1[40] = OUTLINED_FUNCTION_95();
  v1[41] = swift_task_alloc();
  v19 = sub_1DA4211F4();
  v1[42] = v19;
  OUTLINED_FUNCTION_5_2(v19);
  v1[43] = v20;
  v22 = *(v21 + 64);
  v1[44] = OUTLINED_FUNCTION_95();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v23 = sub_1DA4210B4();
  v1[47] = v23;
  OUTLINED_FUNCTION_5_2(v23);
  v1[48] = v24;
  v26 = *(v25 + 64);
  v1[49] = OUTLINED_FUNCTION_95();
  v1[50] = swift_task_alloc();
  v27 = sub_1DA4212E4();
  v1[51] = v27;
  OUTLINED_FUNCTION_5_2(v27);
  v1[52] = v28;
  v30 = *(v29 + 64);
  v1[53] = OUTLINED_FUNCTION_95();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

uint64_t sub_1DA3FF3D4(__n128 a1)
{
  v305 = v2;
  v7 = *(v2 + 200);
  v8 = *(v7 + 16);
  *(v2 + 512) = v8;
  if (!v8)
  {
LABEL_93:
    OUTLINED_FUNCTION_91();
    v284 = *(v2 + 368);
    v286 = *(v2 + 360);
    v290 = *(v2 + 352);
    v293 = *(v2 + 328);
    v256 = *(v2 + 304);
    v296 = *(v2 + 320);
    v298 = *(v2 + 312);
    OUTLINED_FUNCTION_120();

    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_26_2();

    __asm { BRAA            X1, X16 }
  }

  v288 = 0;
  v9 = 0;
  v270 = v2 + 128;
  v271 = v2 + 96;
  v275 = v2 + 160;
  v10 = *(v2 + 416);
  v11 = *(v2 + 216);
  v12 = *(*(v2 + 208) + 16);
  *(v2 + 520) = v12;
  v13 = *(v11 + 96);
  *(v2 + 528) = v13;
  *(v2 + 536) = *(v13 + 16);
  v14 = *(v10 + 80);
  *(v2 + 728) = v14;
  v15 = *(v10 + 72);
  *(v2 + 544) = v15;
  v276 = "ionEngagedInteraction";
  *(v2 + 732) = *MEMORY[0x1E69D2AE8];
  *(v2 + 736) = *MEMORY[0x1E69D2AD0];
  v16 = *(v10 + 16);
  *(v2 + 552) = v16;
  a1.n128_u64[0] = 136315394;
  v285 = a1;
  a1.n128_u64[0] = 136315138;
  v272 = a1;
  while (1)
  {
    *(v2 + 560) = v9;
    v17 = *(v2 + 504);
    v18 = *(v2 + 408);
    *(v2 + 568) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v17, v7 + ((v14 + 32) & ~v14) + v15 * v9, v18);
    if (v12)
    {
      break;
    }

    if (*(v2 + 536))
    {
      BYTE4(v273) = 0;
LABEL_78:
      v19 = v288;
      goto LABEL_79;
    }

LABEL_86:
    v250 = OUTLINED_FUNCTION_125();
    v251(v250);
    if (v1 == v12)
    {
      goto LABEL_93;
    }

    v9 = *(v2 + 560) + 1;
    v16 = *(v2 + 552);
    v15 = *(v2 + 544);
    LOBYTE(v14) = *(v2 + 728);
    v12 = *(v2 + 520);
    v10 = *(v2 + 416);
    v7 = *(v2 + 200);
  }

  HIDWORD(v273) = 0;
  v19 = 0;
  while (2)
  {
    v20 = *(v2 + 520);
    while (1)
    {
      if (v19 >= v20)
      {
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v21 = v19 + 1;
      *(v2 + 576) = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_100;
      }

      v22 = OUTLINED_FUNCTION_14_6(v19);
      v23(v22);
      OUTLINED_FUNCTION_39();
      sub_1DA3FCD04();
      v25 = v24;
      OUTLINED_FUNCTION_109(v24);
      if (v26)
      {
        break;
      }

      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      OUTLINED_FUNCTION_19_5();
      v71 = *(v2 + 424);
      v1 = *(v2 + 432);
      v72 = OUTLINED_FUNCTION_100();
      v73 = OUTLINED_FUNCTION_3_18(v72, static Logger.conversionCategory);
      v5(v73);
      v74 = OUTLINED_FUNCTION_13_6();
      v5(v74);
      v75 = sub_1DA421A74();
      v76 = sub_1DA421F64();
      OUTLINED_FUNCTION_7_1(v76);
      OUTLINED_FUNCTION_118();
      if (!v77)
      {

        v138 = *(v3 + 8);
        v3 += 8;
        v12 = v138;
        v139 = OUTLINED_FUNCTION_81();
        (v138)(v139);
        v140 = OUTLINED_FUNCTION_103();
        (v138)(v140);
        v137 = OUTLINED_FUNCTION_131();
        goto LABEL_27;
      }

      v78 = *(v2 + 368);
      LODWORD(v301) = v76;
      v79 = *(v2 + 344);
      v297 = *(v2 + 336);
      OUTLINED_FUNCTION_90();
      v300 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_23_3(v300, v80, v81, v82, v83, v84, v85, v86, v270, v271, v272.n128_i64[0], v272.n128_i64[1], v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v87);
      v299 = v75;
      sub_1DA4212D4();
      v281 = sub_1DA421194();
      v282 = v5;
      v88 = OUTLINED_FUNCTION_126();
      v89(v88);
      v90 = *(v3 + 8);
      v3 += 8;
      v291 = v90;
      v91 = OUTLINED_FUNCTION_103();
      v92(v91);
      sub_1DA3A5FE8(v281, v5, v304);
      OUTLINED_FUNCTION_135();

      OUTLINED_FUNCTION_11_8();
      sub_1DA4212D4();
      v93 = sub_1DA421194();
      v94 = OUTLINED_FUNCTION_102();
      v294(v94, v297);
      v95 = OUTLINED_FUNCTION_81();
      v59 = v90;
      (v90)(v95);
      v96 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v96, v1, v97);
      OUTLINED_FUNCTION_31_2();

      *(v71 + 14) = v93;
      v12 = v299;
      OUTLINED_FUNCTION_122(&dword_1DA39E000, v299, v301, "engagement - %s is not considered a conversion for suggestionShown - %s");
      v1 = v300;
      OUTLINED_FUNCTION_123();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_7_9();

      v98 = v71;
      v99 = v4;
LABEL_24:
      v59(v98, v99);
LABEL_52:
      v20 = *(v2 + 520);
      v19 = v21;
      if (v21 == v20)
      {
        if (*(v2 + 536))
        {
          goto LABEL_78;
        }

LABEL_85:
        if ((v273 & 0x100000000) != 0)
        {
          goto LABEL_104;
        }

        goto LABEL_86;
      }
    }

    v303 = v21;
    v28 = *(v2 + 496);
    v27 = *(v2 + 504);
    v30 = *(v2 + 392);
    v29 = *(v2 + 400);
    v31 = *(v2 + 368);
    v5 = *(v2 + 336);
    v32 = *(v2 + 344);
    sub_1DA4212D4();
    sub_1DA4211E4();
    v34 = *(v32 + 8);
    v33 = v32 + 8;
    *(v2 + 600) = v34;
    *(v2 + 608) = v33 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35 = OUTLINED_FUNCTION_55_0();
    v34(v35);
    sub_1DA4212D4();
    sub_1DA4211E4();
    v36 = OUTLINED_FUNCTION_55_0();
    v302 = v34;
    v34(v36);
    sub_1DA421054();
    *(v2 + 616) = v37;
    if (v37 > 1814400.0)
    {

      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v38 = OUTLINED_FUNCTION_47_0();
      v39 = OUTLINED_FUNCTION_3_18(v38, static Logger.conversionCategory);
      v5(v39);
      v40 = OUTLINED_FUNCTION_13_6();
      v5(v40);
      v41 = sub_1DA421A74();
      v42 = sub_1DA421F64();
      OUTLINED_FUNCTION_52_0(v42);
      v4 = *(v2 + 488);
      v297 = *(v2 + 496);
      v43 = *(v2 + 480);
      OUTLINED_FUNCTION_21_5();
      if (!v44)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_32_2();
      LODWORD(v281) = v29;
      v45 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_23_3(v45, v46, v47, v48, v49, v50, v51, v52, v270, v271, v272.n128_i64[0], v272.n128_i64[1], v273, v274, v275, v276, v277, v278, v27, v280, v281, v45, v53);
      v280 = v41;
      sub_1DA4212D4();
      sub_1DA421194();
      v54 = OUTLINED_FUNCTION_79();
      v55 = v5;
      v277 = v25;
      v5 = v302;
      (v302)(v54, v55);
      v56 = *(v30 + 8);
      v3 = v30 + 8;
      v57 = OUTLINED_FUNCTION_67();
      v59 = v58;
      (v58)(v57);
      v60 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v60, v21, v61);
      OUTLINED_FUNCTION_137();

      OUTLINED_FUNCTION_11_8();
      sub_1DA4212D4();
      v62 = v33;
      sub_1DA421194();
      v63 = OUTLINED_FUNCTION_38_0();
      v302(v63);
      v64 = v277;
      v59(v291, v277);
      v65 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v65, v4, v66);
      OUTLINED_FUNCTION_84();

      *(v29 + 14) = v62;
      OUTLINED_FUNCTION_133();
      v70 = "time difference is greater than 21 days between engagement - %s and suggestionShown - %s skipping";
LABEL_23:
      OUTLINED_FUNCTION_122(v67, v68, v69, v70);
      OUTLINED_FUNCTION_123();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_7_9();

      v12 = *(v279 + 8);
      v1 = v300;
      (v12)(v299, v300);
      (v12)(v301, v300);
      v98 = v297;
      v99 = v64;
      goto LABEL_24;
    }

    if (v37 < 0.0)
    {

      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      OUTLINED_FUNCTION_19_5();
      v100 = *(v2 + 464);
      v27 = *(v2 + 472);
      v101 = OUTLINED_FUNCTION_100();
      v102 = OUTLINED_FUNCTION_3_18(v101, static Logger.conversionCategory);
      v5(v102);
      v103 = OUTLINED_FUNCTION_13_6();
      v5(v103);
      v41 = sub_1DA421A74();
      v104 = sub_1DA421F74();
      OUTLINED_FUNCTION_52_0(v104);
      v297 = *(v2 + 496);
      v105 = *(v2 + 464);
      v4 = *(v2 + 472);
      OUTLINED_FUNCTION_21_5();
      if (!v106)
      {
LABEL_25:

        v126 = *(v30 + 8);
        v3 = v30 + 8;
        v12 = v126;
        (v126)(v291, v25);
        v127 = OUTLINED_FUNCTION_67();
        (v126)(v127);
        v128 = *(v27 + 8);
        v1 = v27 + 8;
        v4 = v300;
        v128(v299, v300);
        v129 = (v128)(v301, v300);
        v137 = OUTLINED_FUNCTION_164(v129, v130, v131, v132, v133, v134, v135, v136, v270, v271, v272.n128_i64[0], v272.n128_i64[1], v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v285.n128_i64[0], v285.n128_i64[1], v287, v288, v291, v294, v297);
LABEL_27:
        (v12)(v137);
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_32_2();
      LODWORD(v281) = v100;
      v107 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_23_3(v107, v108, v109, v110, v111, v112, v113, v114, v270, v271, v272.n128_i64[0], v272.n128_i64[1], v273, v274, v275, v276, v277, v278, v27, v280, v281, v107, v115);
      v280 = v41;
      sub_1DA4212D4();
      sub_1DA421194();
      v116 = OUTLINED_FUNCTION_79();
      v117 = v5;
      v277 = v25;
      v5 = v302;
      (v302)(v116, v117);
      v118 = *(v30 + 8);
      v3 = v30 + 8;
      v119 = OUTLINED_FUNCTION_67();
      v59 = v120;
      (v120)(v119);
      v121 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v121, v21, v122);
      OUTLINED_FUNCTION_137();

      OUTLINED_FUNCTION_11_8();
      sub_1DA4212D4();
      v62 = v33;
      sub_1DA421194();
      v123 = OUTLINED_FUNCTION_38_0();
      v302(v123);
      v64 = v277;
      v59(v291, v277);
      v124 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v124, v4, v125);
      OUTLINED_FUNCTION_84();

      *(v100 + 14) = v62;
      OUTLINED_FUNCTION_133();
      v70 = "engagement happened before the suggestion was shown - %s and suggestionShown - %s skipping";
      goto LABEL_23;
    }

    v141 = *(v2 + 504);
    v142 = *(v2 + 360);
    v144 = *(v2 + 328);
    v143 = *(v2 + 336);
    v145 = *(v2 + 272);
    sub_1DA4212D4();
    sub_1DA4211C4();
    v146 = OUTLINED_FUNCTION_31_2();
    (v302)(v146, v143);
    OUTLINED_FUNCTION_143(v276 | 0x8000000000000000, v144);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v144, 1, v145);
    v148 = *(v2 + 328);
    if (EnumTagSinglePayload)
    {
      sub_1DA4039D4(*(v2 + 328));
      v149 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v294 = v33;
      v150 = *(v2 + 312);
      v151 = *(v2 + 272);
      v152 = *(v2 + 280);
      v153 = *(v152 + 16);
      v154 = OUTLINED_FUNCTION_39();
      v300 = v156;
      v301 = v155;
      v156(v154);
      sub_1DA4039D4(v148);
      v157 = sub_1DA421384();
      v158 = *(v152 + 8);
      v159 = OUTLINED_FUNCTION_24();
      v299 = v160;
      (v160)(v159);
      if (v157)
      {
        v145 = *(v157 + 16);
        v291 = v157;
        if (v145)
        {
          OUTLINED_FUNCTION_22_4();
          v297 = v161;
          v149 = MEMORY[0x1E69E7CC0];
          do
          {
            v5 = *(v2 + 304);
            v300(v5, v151, *(v2 + 272));
            v162 = v5;
            sub_1DA421394();
            OUTLINED_FUNCTION_89();
            v163 = OUTLINED_FUNCTION_38();
            (v299)(v163);
            if (v144)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v167 = *(v149 + 16);
                OUTLINED_FUNCTION_16_1();
                sub_1DA3A5B78();
                v149 = v168;
              }

              v165 = *(v149 + 16);
              v164 = *(v149 + 24);
              v5 = (v165 + 1);
              if (v165 >= v164 >> 1)
              {
                OUTLINED_FUNCTION_21_3(v164);
                OUTLINED_FUNCTION_173();
                sub_1DA3A5B78();
                v149 = v169;
              }

              *(v149 + 16) = v5;
              v166 = v149 + 16 * v165;
              *(v166 + 32) = v162;
              *(v166 + 40) = v144;
            }

            v151 += v297;
            --v145;
          }

          while (v145);
        }

        else
        {
          v149 = MEMORY[0x1E69E7CC0];
        }

        v21 = v303;
      }

      else
      {
        v149 = MEMORY[0x1E69E7CC0];
      }

      v33 = v294;
    }

    *(v2 + 624) = v149;
    v170 = *(v2 + 496);
    v171 = *(v2 + 368);
    v172 = *(v2 + 336);
    sub_1DA4212D4();
    sub_1DA421194();
    OUTLINED_FUNCTION_77();
    (v302)(v171, v172);
    *(v2 + 160) = v171;
    *(v2 + 168) = v145;
    v173 = swift_task_alloc();
    v174 = OUTLINED_FUNCTION_12_7(v173, v275);
    v3 = sub_1DA412A3C(v174, v175, v149);
    *(v2 + 632) = v288;

    if (v3)
    {

      if (qword_1EE100EF8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_19_5();
      v177 = *(v2 + 448);
      v176 = *(v2 + 456);
      v178 = OUTLINED_FUNCTION_100();
      v179 = OUTLINED_FUNCTION_3_18(v178, static Logger.conversionCategory);
      v5(v179);
      v180 = OUTLINED_FUNCTION_13_6();
      v5(v180);
      v181 = sub_1DA421A74();
      v182 = sub_1DA421F64();
      OUTLINED_FUNCTION_52_0(v182);
      v297 = *(v2 + 496);
      v183 = *(v2 + 448);
      v4 = *(v2 + 456);
      OUTLINED_FUNCTION_21_5();
      if (v184)
      {
        v280 = v176;
        v277 = v25;
        v185 = OUTLINED_FUNCTION_32_2();
        v281 = v181;
        v282 = OUTLINED_FUNCTION_92();
        v304[0] = v282;
        *v185 = v285.n128_u32[0];
        sub_1DA4212D4();
        sub_1DA421194();
        v186 = OUTLINED_FUNCTION_79();
        LODWORD(v279) = v177;
        (v302)(v186, v5);
        v187 = *(v3 + 8);
        v3 += 8;
        v5 = v277;
        v187(v4, v277);
        v188 = OUTLINED_FUNCTION_25_3();
        sub_1DA3A5FE8(v188, v21, v189);
        OUTLINED_FUNCTION_137();
        v21 = v303;

        OUTLINED_FUNCTION_64();
        sub_1DA4212D4();
        sub_1DA421194();
        v190 = OUTLINED_FUNCTION_38_0();
        v302(v190);
        v187(v291, v277);
        v191 = OUTLINED_FUNCTION_25_3();
        sub_1DA3A5FE8(v191, v4, v192);
        OUTLINED_FUNCTION_84();

        *(v185 + 14) = v33;
        OUTLINED_FUNCTION_183(&dword_1DA39E000, v181, v177, "matched engagement - %s is already processed for suggestionShown - %s");
        OUTLINED_FUNCTION_123();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_53_0();

        v12 = *(v176 + 8);
        v1 = v300;
        (v12)(v299, v300);
        (v12)(v301, v300);
        v187(v297, v277);
      }

      else
      {

        v193 = *(v3 + 8);
        v3 += 8;
        v12 = v193;
        (v193)(v291, v25);
        v194 = OUTLINED_FUNCTION_67();
        (v193)(v194);
        v195 = *(v176 + 8);
        v1 = v176 + 8;
        v4 = v300;
        v195(v299, v300);
        v196 = (v195)(v301, v300);
        v204 = OUTLINED_FUNCTION_164(v196, v197, v198, v199, v200, v201, v202, v203, v270, v271, v272.n128_i64[0], v272.n128_i64[1], v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v285.n128_i64[0], v285.n128_i64[1], v287, v288, v291, v294, v297);
        (v12)(v204);
      }

      v274 = v288;
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_115();
    if (!v206)
    {
LABEL_64:
      OUTLINED_FUNCTION_30_3();
      sub_1DA4212D4();
      sub_1DA421194();
      v216 = OUTLINED_FUNCTION_51();
      v5(v216);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v218 = *(v2 + 624);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v247 = v218[2];
        OUTLINED_FUNCTION_16_1();
        sub_1DA3A5B78();
        v218 = v248;
      }

      v219 = v218[2];
      v220 = v219 + 1;
      if (v219 >= v218[3] >> 1)
      {
        sub_1DA3A5B78();
        v218 = v249;
      }

      OUTLINED_FUNCTION_160();
      v221 = OUTLINED_FUNCTION_112(MEMORY[0x1E69E7CC0]);
      sub_1DA3B04B0(v221, v219 + 1, 0);
      OUTLINED_FUNCTION_159();
      do
      {
        v222 = OUTLINED_FUNCTION_69();
        v223 = *v218;
        *v222 = *(v218 - 1);
        v222[1] = v223;
        (v3)();
        OUTLINED_FUNCTION_177();
        if (v219 >= v21 >> 1)
        {
          OUTLINED_FUNCTION_99();
          v5 = *(v2 + 192);
        }

        v224 = OUTLINED_FUNCTION_56_0();
        v225(v224);
        v218 += 2;
        --v220;
      }

      while (v220);
      OUTLINED_FUNCTION_65();
      v292 = *(v2 + 392);
      v295 = *(v2 + 400);
      v226 = *(v2 + 384);
      v283 = *(v2 + 376);
      OUTLINED_FUNCTION_176();
      *v21 = v5;
      v227 = OUTLINED_FUNCTION_111();
      (v3)(v227);
      v228 = OUTLINED_FUNCTION_130();
      v229(v228);
      OUTLINED_FUNCTION_47();
      __swift_storeEnumTagSinglePayload(v230, v231, v232, v33);
      v5 = v271;
      v233 = sub_1DA4212C4();
      v234 = OUTLINED_FUNCTION_179(v233);
      OUTLINED_FUNCTION_175(v276);
      v234(v3, 0);
      v303(v271, 0);
      v235 = OUTLINED_FUNCTION_116();
      v236(v235);
      v237 = *(v226 + 8);
      v4 = v226 + 8;
      v12 = v237;
      v1 = v283;
      v238 = (v237)(v292, v283);
      v246 = OUTLINED_FUNCTION_153(v238, v239, v240, v241, v242, v243, v244, v245, v270, v271, v272.n128_i64[0], v272.n128_i64[1], v273, v274, v275, v276, v277, v278, v279, v280, v281, v283, v285.n128_i64[0], v285.n128_i64[1], v287, v288, v292, v295);
      (v237)(v246);
      (*(v297 + 8))(v300, v299);
      if (v302 == v301)
      {
        v19 = *(v2 + 632);
        if (*(v2 + 536))
        {
          BYTE4(v273) = 1;
          v274 = v289;
LABEL_79:
          *(v2 + 688) = v19;
          while (1)
          {
            OUTLINED_FUNCTION_24_3();
            if (v207)
            {
              goto LABEL_101;
            }

            OUTLINED_FUNCTION_54_0(v19);
            if (OUTLINED_FUNCTION_184())
            {
              break;
            }

            OUTLINED_FUNCTION_28_2();
            if (v215)
            {
              v288 = *(v2 + 688);
              goto LABEL_85;
            }
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_27();
          *(v2 + 704) = v252;
          *v252 = v253;
          OUTLINED_FUNCTION_1_15(v252);
          OUTLINED_FUNCTION_26_2();

          return sub_1DA3FBF84();
        }

LABEL_103:
        v288 = v19;
LABEL_104:
        OUTLINED_FUNCTION_59(v288);
        OUTLINED_FUNCTION_58_0();
        OUTLINED_FUNCTION_36_1(&unk_1DA429410);
        v265 = swift_task_alloc();
        v266 = OUTLINED_FUNCTION_161(v265);
        *v266 = v267;
        OUTLINED_FUNCTION_4_16(v266);
        OUTLINED_FUNCTION_13_5(*(v2 + 240));
        OUTLINED_FUNCTION_26_2();

        __asm { BR              X3 }
      }

      v274 = v289;
      v288 = *(v2 + 632);
      v19 = *(v2 + 576);
      HIDWORD(v273) = 1;
      continue;
    }

    break;
  }

  while (1)
  {
    OUTLINED_FUNCTION_114(v205);
    if (v207)
    {
      goto LABEL_102;
    }

    OUTLINED_FUNCTION_142(v19);
    v208 = OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_172(v208);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_157();
    v209 = *(v2 + 40);
    v3 = *(v2 + 48);
    OUTLINED_FUNCTION_186();
    v210 = OUTLINED_FUNCTION_20_4();
    if (v6 < v211(v210))
    {
      break;
    }

    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v212 = sub_1DA421A94();
    __swift_project_value_buffer(v212, static Logger.conversionCategory);
    OUTLINED_FUNCTION_31_2();

    v213 = sub_1DA421A74();
    sub_1DA421F64();
    OUTLINED_FUNCTION_185();
    if (OUTLINED_FUNCTION_182())
    {
      v3 = OUTLINED_FUNCTION_150();
      v214 = OUTLINED_FUNCTION_139();
      v304[0] = v214;
      OUTLINED_FUNCTION_97(v272.n128_f32[0]);
      OUTLINED_FUNCTION_158();

      *(v3 + 4) = v288;
      _os_log_impl(&dword_1DA39E000, v213, v209, "not considering a conversion for postConversionProcessor - %s)", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v214);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_17();
    }

    else
    {
    }

    OUTLINED_FUNCTION_94();
    if (v215)
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_113();
  }

  v259 = *(v2 + 256);

  v260 = OUTLINED_FUNCTION_37();
  v261(v260);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v2 + 680) = v262;
  *v262 = v263;
  OUTLINED_FUNCTION_7_12(v262);
  OUTLINED_FUNCTION_26_2();

  return sub_1DA3F9ABC();
}

uint64_t sub_1DA400694()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1[85];
  v3 = v1[33];
  v4 = v1[32];
  v5 = v1[31];
  v6 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;

  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_45_0();
  v10(v9);
  v11 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1DA4007D4()
{
  v318 = v1;
  v4 = *(v1 + 672);
  v5 = *(v1 + 592);
  OUTLINED_FUNCTION_165();
  v6 = OUTLINED_FUNCTION_62();
  v7(v6);
  v8 = *(v2 + 32);
  v9 = OUTLINED_FUNCTION_45_0();
  v10(v9);
  if (v3 == v5)
  {
    v270 = v1 + 128;
    v272 = v1 + 96;
    v276 = v1 + 160;
    v278 = "ionEngagedInteraction";
    *&v11 = 136315138;
    v267 = v11;
    while (1)
    {
      OUTLINED_FUNCTION_94();
      if (!v12)
      {
        OUTLINED_FUNCTION_113();
        goto LABEL_63;
      }

      while (2)
      {
        OUTLINED_FUNCTION_30_3();
        sub_1DA4212D4();
        v13 = sub_1DA421194();
        v15 = v14;
        v16 = OUTLINED_FUNCTION_51();
        MEMORY[0x28](v16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v1 + 624);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v232 = v18[2];
          OUTLINED_FUNCTION_16_1();
          sub_1DA3A5B78();
          v18 = v233;
        }

        v19 = v18[2];
        v20 = v19 + 1;
        if (v19 >= v18[3] >> 1)
        {
          sub_1DA3A5B78();
          v18 = v234;
        }

        v21 = *(v1 + 280);
        v18[2] = v20;
        v22 = &v18[2 * v19];
        v22[4] = v13;
        v22[5] = v15;
        v23 = OUTLINED_FUNCTION_112(MEMORY[0x1E69E7CC0]);
        sub_1DA3B04B0(v23, v19 + 1, 0);
        v24 = *(v1 + 192);
        v25 = *(v21 + 104);
        v26 = v18 + 5;
        v274 = v294;
        do
        {
          v27 = OUTLINED_FUNCTION_69();
          v28 = *v26;
          *v27 = *(v26 - 1);
          v27[1] = v28;
          v25();
          *(v1 + 192) = v24;
          v29 = *(v24 + 16);
          v30 = *(v24 + 24);

          if (v29 >= v30 >> 1)
          {
            OUTLINED_FUNCTION_99();
            v24 = *(v1 + 192);
          }

          v32 = *(v1 + 280);
          v31 = *(v1 + 288);
          v33 = *(v1 + 272);
          *(v24 + 16) = v29 + 1;
          (*(v32 + 32))(v24 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, v31, v33);
          v26 += 2;
          --v20;
        }

        while (v20);
        v34 = *(v1 + 736);
        v312 = *(v1 + 520);
        v314 = *(v1 + 576);
        v292 = *(v1 + 504);
        v308 = *(v1 + 496);
        v303 = *(v1 + 416);
        v305 = *(v1 + 408);
        v296 = *(v1 + 392);
        v299 = *(v1 + 400);
        v35 = *(v1 + 384);
        v295 = *(v1 + 376);
        v36 = *(v1 + 320);
        v37 = *(v1 + 296);
        v39 = *(v1 + 272);
        v38 = *(v1 + 280);

        *v37 = v24;
        v40 = OUTLINED_FUNCTION_111();
        (v25)(v40);
        (*(v38 + 16))(v36, v37, v39);
        OUTLINED_FUNCTION_47();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v39);
        v44 = v272;
        v293 = sub_1DA4212C4();
        v45 = v270;
        v46 = sub_1DA4211B4();
        sub_1DA3F82C0(v36, 0xD00000000000001BLL, v278 | 0x8000000000000000);
        (v46)(v270, 0);
        v293(v272, 0);
        v47 = OUTLINED_FUNCTION_116();
        v48(v47);
        v50 = *(v35 + 8);
        v49 = v35 + 8;
        v50(v296, v295);
        v50(v299, v295);
        (v303[1].isa)(v308, v305);
        if (v314 == v312)
        {
          v294 = *(v1 + 632);
          if (!*(v1 + 536))
          {
LABEL_81:
            OUTLINED_FUNCTION_59(v294);
            OUTLINED_FUNCTION_58_0();
            OUTLINED_FUNCTION_36_1(&unk_1DA429410);
            v258 = swift_task_alloc();
            v259 = OUTLINED_FUNCTION_161(v258);
            *v259 = v260;
            OUTLINED_FUNCTION_4_16();
            OUTLINED_FUNCTION_63(*(v1 + 240));
            OUTLINED_FUNCTION_138();

            __asm { BR              X3 }
          }

LABEL_75:
          *(v1 + 688) = v294;
          while (1)
          {
            OUTLINED_FUNCTION_24_3();
            if (v238)
            {
              goto LABEL_92;
            }

            OUTLINED_FUNCTION_54_0(v257);
            if (OUTLINED_FUNCTION_184())
            {
              break;
            }

            OUTLINED_FUNCTION_28_2();
            if (v12)
            {
              v294 = *(v1 + 688);
              goto LABEL_81;
            }
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_27();
          *(v1 + 704) = v263;
          *v263 = v264;
          OUTLINED_FUNCTION_1_15();
          OUTLINED_FUNCTION_138();

          sub_1DA3FBF84();
          return;
        }

        v51 = *(v1 + 576);
        v294 = *(v1 + 632);
        v52 = *(v1 + 520);
        while (1)
        {
          if (v51 >= v52)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
            goto LABEL_93;
          }

          v53 = (v51 + 1);
          *(v1 + 576) = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            goto LABEL_91;
          }

          v54 = OUTLINED_FUNCTION_14_6(v51);
          v55(v54);
          OUTLINED_FUNCTION_39();
          sub_1DA3FCD04();
          v57 = OUTLINED_FUNCTION_109(v56);
          if (!v58)
          {

            if (qword_1EE100EF8 != -1)
            {
              swift_once();
            }

            OUTLINED_FUNCTION_19_5();
            v36 = *(v1 + 424);
            v95 = *(v1 + 432);
            v96 = OUTLINED_FUNCTION_100();
            v97 = OUTLINED_FUNCTION_3_18(v96, static Logger.conversionCategory);
            (v46)(v97);
            v98 = OUTLINED_FUNCTION_13_6();
            (v46)(v98);
            v99 = sub_1DA421A74();
            v45 = sub_1DA421F64();
            OUTLINED_FUNCTION_7_1(v45);
            OUTLINED_FUNCTION_118();
            if (v100)
            {
              v316 = v53;
              v101 = *(v1 + 368);
              v310 = v45;
              v103 = *(v1 + 336);
              v102 = *(v1 + 344);
              OUTLINED_FUNCTION_90();
              v307 = OUTLINED_FUNCTION_34_1();
              OUTLINED_FUNCTION_23_3(v307, v104, v105, v106, v107, v108, v109, v110, v267, *(&v267 + 1), v270, v272, v274, v276, v278, v280, v283, v286, v288, v290, v291, v293, v111);
              v303 = v99;
              sub_1DA4212D4();
              v291 = sub_1DA421194();
              v293 = v46;
              v113 = v112;
              v114 = *(v102 + 8);
              v45 = v102 + 8;
              v297 = v114;
              v114(v101, v103);
              v115 = *(v49 + 8);
              v49 += 8;
              v116 = OUTLINED_FUNCTION_103();
              v115(v116);
              sub_1DA3A5FE8(v291, v113, v317);
              OUTLINED_FUNCTION_135();

              OUTLINED_FUNCTION_11_8();
              v46 = v293;
              sub_1DA4212D4();
              v117 = sub_1DA421194();
              v118 = OUTLINED_FUNCTION_102();
              v53 = v316;
              v297(v118, v103);
              v119 = OUTLINED_FUNCTION_81();
              v115(v119);
              v120 = OUTLINED_FUNCTION_25_3();
              sub_1DA3A5FE8(v120, v95, v121);
              OUTLINED_FUNCTION_31_2();

              *(v36 + 14) = v117;
              OUTLINED_FUNCTION_122(&dword_1DA39E000, v303, v310, "engagement - %s is not considered a conversion for suggestionShown - %s");
              OUTLINED_FUNCTION_123();
              OUTLINED_FUNCTION_42_0();
              OUTLINED_FUNCTION_7_9();

              (v115)(v36, v44);
            }

            else
            {

              v161 = *(v49 + 8);
              v49 += 8;
              v162 = OUTLINED_FUNCTION_81();
              v161(v162);
              v163 = OUTLINED_FUNCTION_103();
              v161(v163);
              v164 = OUTLINED_FUNCTION_131();
              v161(v164);
            }

            goto LABEL_60;
          }

          v309 = v57;
          OUTLINED_FUNCTION_141();
          sub_1DA4211E4();
          v59 = *(v46 + 8);
          v46 += 8;
          *(v1 + 600) = v59;
          *(v1 + 608) = v46 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v60 = OUTLINED_FUNCTION_74();
          v59(v60);
          sub_1DA4212D4();
          sub_1DA4211E4();
          v61 = OUTLINED_FUNCTION_74();
          v313 = v59;
          v59(v61);
          sub_1DA421054();
          *(v1 + 616) = v62;
          v315 = v53;
          v306 = v46;
          if (v62 > 1814400.0)
          {

            if (qword_1EE100EF8 != -1)
            {
              OUTLINED_FUNCTION_0_9();
              swift_once();
            }

            v63 = OUTLINED_FUNCTION_47_0();
            v64 = OUTLINED_FUNCTION_3_18(v63, static Logger.conversionCategory);
            (v46)(v64);
            v65 = OUTLINED_FUNCTION_13_6();
            (v46)(v65);
            v66 = sub_1DA421A74();
            v67 = sub_1DA421F64();
            OUTLINED_FUNCTION_7_1(v67);
            v44 = *(v1 + 488);
            v36 = *(v1 + 496);
            v68 = *(v1 + 480);
            OUTLINED_FUNCTION_129();
            if (!v69)
            {
              goto LABEL_33;
            }

            OUTLINED_FUNCTION_29_2();
            v300 = v36;
            v70 = OUTLINED_FUNCTION_34_1();
            OUTLINED_FUNCTION_23_3(v70, v71, v72, v73, v74, v75, v76, v77, v267, *(&v267 + 1), v270, v272, v274, v276, v278, v280, v283, v286, v288, v66, v70, v293, v78);
            sub_1DA4212D4();
            sub_1DA421194();
            v281 = v68;
            v284 = v46;
            v80 = v79;
            v81 = OUTLINED_FUNCTION_35_1();
            v53(v81);
            v82 = *(v49 + 8);
            v49 += 8;
            v83 = OUTLINED_FUNCTION_55_0();
            v46 = v84;
            v84(v83);
            v85 = OUTLINED_FUNCTION_25_3();
            sub_1DA3A5FE8(v85, v80, v86);
            OUTLINED_FUNCTION_137();

            OUTLINED_FUNCTION_17_6();
            sub_1DA4212D4();
            v87 = v67;
            sub_1DA421194();
            OUTLINED_FUNCTION_77();
            (v53)(v67, v287);
            v88 = v284;
            (v46)(v281, v284);
            v89 = OUTLINED_FUNCTION_25_3();
            sub_1DA3A5FE8(v89, v44, v90);
            OUTLINED_FUNCTION_84();

            *(v36 + 14) = v67;
            OUTLINED_FUNCTION_133();
            v94 = "time difference is greater than 21 days between engagement - %s and suggestionShown - %s skipping";
            goto LABEL_32;
          }

          if (v62 >= 0.0)
          {
            break;
          }

          if (qword_1EE100EF8 != -1)
          {
            OUTLINED_FUNCTION_0_9();
            swift_once();
          }

          OUTLINED_FUNCTION_19_5();
          v123 = *(v1 + 464);
          v122 = *(v1 + 472);
          v124 = OUTLINED_FUNCTION_100();
          v125 = OUTLINED_FUNCTION_3_18(v124, static Logger.conversionCategory);
          (v46)(v125);
          v126 = OUTLINED_FUNCTION_13_6();
          (v46)(v126);
          v66 = sub_1DA421A74();
          v127 = sub_1DA421F74();
          OUTLINED_FUNCTION_7_1(v127);
          v36 = *(v1 + 496);
          v68 = *(v1 + 464);
          v44 = *(v1 + 472);
          OUTLINED_FUNCTION_129();
          if (!v128)
          {
LABEL_33:

            v158 = *(v49 + 8);
            v49 += 8;
            v157 = v158;
            v158(v68, v46);
            v159 = OUTLINED_FUNCTION_55_0();
            (v158)(v159);
            v160 = *(v45 + 8);
            v45 += 8;
            v160(v309, v53);
            v160(v303, v53);
            v157(v36, v46);
            goto LABEL_59;
          }

          OUTLINED_FUNCTION_29_2();
          v300 = v36;
          v129 = OUTLINED_FUNCTION_34_1();
          OUTLINED_FUNCTION_23_3(v129, v130, v131, v132, v133, v134, v135, v136, v267, *(&v267 + 1), v270, v272, v274, v276, v278, v280, v283, v286, v288, v66, v129, v293, v137);
          sub_1DA4212D4();
          sub_1DA421194();
          v281 = v68;
          v284 = v46;
          v139 = v138;
          v140 = OUTLINED_FUNCTION_35_1();
          v53(v140);
          v141 = *(v49 + 8);
          v49 += 8;
          v142 = OUTLINED_FUNCTION_55_0();
          v46 = v143;
          v143(v142);
          v144 = OUTLINED_FUNCTION_25_3();
          sub_1DA3A5FE8(v144, v139, v145);
          OUTLINED_FUNCTION_137();

          OUTLINED_FUNCTION_17_6();
          sub_1DA4212D4();
          v87 = v127;
          sub_1DA421194();
          OUTLINED_FUNCTION_77();
          (v53)(v127, v287);
          v88 = v284;
          (v46)(v281, v284);
          v146 = OUTLINED_FUNCTION_25_3();
          sub_1DA3A5FE8(v146, v44, v147);
          OUTLINED_FUNCTION_84();

          *(v36 + 14) = v127;
          OUTLINED_FUNCTION_133();
          v94 = "engagement happened before the suggestion was shown - %s and suggestionShown - %s skipping";
LABEL_32:
          OUTLINED_FUNCTION_122(v91, v92, v93, v94);
          v44 = v291;
          swift_arrayDestroy();
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_7_9();

          v156 = OUTLINED_FUNCTION_128(v148, v149, v150, v151, v152, v153, v154, v155, v268, v269, v271, v273, v275, v277, v279, v281, v284, v287, v289);
          (v87)(v156);
          (v87)(v303, v36);
          (v46)(v300, v88);
LABEL_59:
          v53 = v315;
LABEL_60:
          v52 = *(v1 + 520);
          v51 = v53;
          if (v53 == v52)
          {
            if (!*(v1 + 536))
            {
              goto LABEL_81;
            }

            goto LABEL_75;
          }
        }

        OUTLINED_FUNCTION_144();
        sub_1DA4211C4();
        v165 = OUTLINED_FUNCTION_31_2();
        v313(v165, v36);
        OUTLINED_FUNCTION_143(v278 | 0x8000000000000000, v45);

        v166 = OUTLINED_FUNCTION_145();
        v167 = *(v1 + 328);
        if (v166)
        {
          sub_1DA4039D4(*(v1 + 328));
          v168 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v169 = *(v1 + 312);
          v45 = *(v1 + 272);
          v170 = *(v1 + 280);
          v171 = *(v170 + 16);
          v172 = OUTLINED_FUNCTION_13_6();
          v304 = v173;
          v173(v172);
          sub_1DA4039D4(v167);
          v174 = sub_1DA421384();
          v301 = *(v170 + 8);
          v301(v169, v45);
          if (v174)
          {
            v175 = *(v174 + 16);
            v293 = v174;
            if (v175)
            {
              OUTLINED_FUNCTION_22_4();
              v298 = v176;
              v168 = MEMORY[0x1E69E7CC0];
              do
              {
                v177 = *(v1 + 304);
                v304(v177, v169, *(v1 + 272));
                sub_1DA421394();
                OUTLINED_FUNCTION_105();
                v178 = OUTLINED_FUNCTION_74();
                (v301)(v178);
                if (v45)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v182 = *(v168 + 16);
                    OUTLINED_FUNCTION_16_1();
                    sub_1DA3A5B78();
                    v168 = v183;
                  }

                  v180 = *(v168 + 16);
                  v179 = *(v168 + 24);
                  if (v180 >= v179 >> 1)
                  {
                    OUTLINED_FUNCTION_21_3(v179);
                    OUTLINED_FUNCTION_72();
                    sub_1DA3A5B78();
                    v168 = v184;
                  }

                  *(v168 + 16) = v180 + 1;
                  v181 = v168 + 16 * v180;
                  *(v181 + 32) = v177;
                  *(v181 + 40) = v45;
                }

                v169 += v298;
                --v175;
              }

              while (v175);
            }

            else
            {
              v168 = MEMORY[0x1E69E7CC0];
            }
          }

          else
          {
            v168 = MEMORY[0x1E69E7CC0];
          }

          v46 = v306;
        }

        *(v1 + 624) = v168;
        v185 = *(v1 + 496);
        v186 = *(v1 + 368);
        v187 = *(v1 + 336);
        sub_1DA4212D4();
        sub_1DA421194();
        OUTLINED_FUNCTION_105();
        v188 = OUTLINED_FUNCTION_24();
        (v313)(v188);
        *(v1 + 160) = v186;
        *(v1 + 168) = v45;
        v189 = swift_task_alloc();
        v190 = OUTLINED_FUNCTION_12_7(v189, v276);
        v0 = v294;
        LOBYTE(v186) = sub_1DA412A3C(v190, v191, v168);
        *(v1 + 632) = v294;

        if (v186)
        {

          if (qword_1EE100EF8 != -1)
          {
            swift_once();
          }

          OUTLINED_FUNCTION_19_5();
          v193 = *(v1 + 448);
          v192 = *(v1 + 456);
          v194 = OUTLINED_FUNCTION_100();
          v195 = OUTLINED_FUNCTION_3_18(v194, static Logger.conversionCategory);
          (v46)(v195);
          v196 = OUTLINED_FUNCTION_13_6();
          (v46)(v196);
          v197 = sub_1DA421A74();
          v198 = sub_1DA421F64();
          v199 = OUTLINED_FUNCTION_7_1(v198);
          v303 = *(v1 + 496);
          v36 = *(v1 + 448);
          v44 = *(v1 + 456);
          v46 = *(v1 + 408);
          v200 = *(v1 + 416);
          v201 = *(v1 + 400);
          v311 = *(v1 + 392);
          v202 = *(v1 + 376);
          v45 = *(v1 + 384);
          if (v199)
          {
            v302 = *(v1 + 400);
            v203 = OUTLINED_FUNCTION_29_2();
            v290 = v197;
            v291 = OUTLINED_FUNCTION_92();
            v317[0] = v291;
            *v203 = 136315394;
            sub_1DA4212D4();
            sub_1DA421194();
            v282 = v36;
            v285 = v46;
            v205 = v204;
            v206 = OUTLINED_FUNCTION_35_1();
            v202(v206);
            v207 = *(v200 + 8);
            v49 = v200 + 8;
            v208 = OUTLINED_FUNCTION_55_0();
            v46 = v209;
            v209(v208);
            v210 = OUTLINED_FUNCTION_25_3();
            sub_1DA3A5FE8(v210, v205, v211);
            OUTLINED_FUNCTION_3_8();

            OUTLINED_FUNCTION_110();
            sub_1DA4212D4();
            sub_1DA421194();
            OUTLINED_FUNCTION_77();
            (v202)(v198, v286);
            v212 = v285;
            (v46)(v282, v285);
            v213 = OUTLINED_FUNCTION_25_3();
            sub_1DA3A5FE8(v213, v44, v214);
            OUTLINED_FUNCTION_84();

            *(v203 + 14) = v198;
            OUTLINED_FUNCTION_133();
            _os_log_impl(v215, v216, v217, "matched engagement - %s is already processed for suggestionShown - %s", v203, 0x16u);
            v36 = v291;
            swift_arrayDestroy();
            OUTLINED_FUNCTION_7_9();
            OUTLINED_FUNCTION_17();

            v226 = OUTLINED_FUNCTION_128(v218, v219, v220, v221, v222, v223, v224, v225, v267, *(&v267 + 1), v270, v272, v274, v276, v278, v282, v285, v286, v288);
            (v198)(v226);
            (v198)(v302, v291);
            (v46)(v303, v212);
          }

          else
          {

            v228 = *(v200 + 8);
            v49 = v200 + 8;
            v227 = v228;
            v228(v36, v46);
            v229 = OUTLINED_FUNCTION_55_0();
            (v228)(v229);
            v230 = *(v45 + 8);
            v45 += 8;
            v230(v311, v202);
            v230(v201, v202);
            v227(v303, v46);
          }

          v274 = v294;
          goto LABEL_59;
        }

        OUTLINED_FUNCTION_115();
        if (!v231)
        {
          continue;
        }

        break;
      }

LABEL_63:
      OUTLINED_FUNCTION_114(v235);
      if (v238)
      {
LABEL_93:
        __break(1u);
        return;
      }

      v239 = *(v1 + 616);
      sub_1DA3B2454(v236 + 40 * v237 + 32, v1 + 16);
      v240 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_172(v240);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
      OUTLINED_FUNCTION_149();
      OUTLINED_FUNCTION_157();
      v241 = *(v1 + 40);
      v242 = *(v1 + 48);
      OUTLINED_FUNCTION_186();
      v243 = OUTLINED_FUNCTION_20_4();
      if (v239 < v244(v243))
      {
        v266 = *(v1 + 256);

        v249 = 0;
        v252 = *(v266 + 80);
        *(v1 + 740) = v252;
        v251 = *(v266 + 72);
        *(v1 + 656) = v251;
        v250 = *(v266 + 16);
        *(v1 + 664) = v250;
        goto LABEL_71;
      }

      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v245 = sub_1DA421A94();
      __swift_project_value_buffer(v245, static Logger.conversionCategory);
      OUTLINED_FUNCTION_31_2();

      v246 = sub_1DA421A74();
      sub_1DA421F64();
      OUTLINED_FUNCTION_185();
      if (OUTLINED_FUNCTION_182())
      {
        v247 = OUTLINED_FUNCTION_150();
        v248 = OUTLINED_FUNCTION_139();
        v317[0] = v248;
        OUTLINED_FUNCTION_97(*&v267);
        OUTLINED_FUNCTION_158();

        *(v247 + 4) = v0;
        _os_log_impl(&dword_1DA39E000, v246, v241, "not considering a conversion for postConversionProcessor - %s)", v247, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v248);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_17();
      }

      else
      {
      }
    }
  }

  v249 = *(v1 + 672) + 1;
  v250 = *(v1 + 664);
  v251 = *(v1 + 656);
  LOBYTE(v252) = *(v1 + 740);
LABEL_71:
  *(v1 + 672) = v249;
  v253 = (*(v1 + 256) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v250(*(v1 + 264), *(v1 + 584) + ((v252 + 32) & ~v252) + v251 * v249, *(v1 + 248));
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v1 + 680) = v254;
  *v254 = v255;
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_138();

  sub_1DA3F9ABC();
}

uint64_t sub_1DA4019BC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 704);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DA401AA0()
{
  v3 = v0[87];
  v4 = v0[67];
  OUTLINED_FUNCTION_165();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v5 = OUTLINED_FUNCTION_62();
  v6(v5);
  v7 = *(v1 + 32);
  v8 = OUTLINED_FUNCTION_45_0();
  v9(v8);
  if (v2 == v4)
  {
LABEL_7:
    OUTLINED_FUNCTION_59(v0[86]);
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_36_1(&unk_1DA429410);
    v21 = v14;
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_161(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_4_16(v16);
    v18 = OUTLINED_FUNCTION_63(v0[30]);

    v21(v18, 0xD000000000000024);
  }

  else
  {
    v10 = v0[87];
    OUTLINED_FUNCTION_152();
    while (1)
    {
      OUTLINED_FUNCTION_24_3();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_54_0(v11);
      if (OUTLINED_FUNCTION_184())
      {
        break;
      }

      OUTLINED_FUNCTION_28_2();
      if (v13)
      {
        goto LABEL_7;
      }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_27();
    v0[88] = v19;
    *v19 = v20;
    OUTLINED_FUNCTION_1_15();

    sub_1DA3FBF84();
  }
}

uint64_t sub_1DA401C14()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 720);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA401CF8()
{
  v362 = v3;
  v281 = v3 + 128;
  v285 = v3 + 96;
  v309 = v3 + 160;
  v9 = (*(*(v3 + 232) + 8))(*(v3 + 240), *(v3 + 224));
  v344 = *(v3 + 712);
  v313 = "ionEngagedInteraction";
  v9.n128_u64[0] = 136315394;
  v342 = v9;
  v9.n128_u64[0] = 136315138;
  v289 = v9;
  while (1)
  {
    v10 = OUTLINED_FUNCTION_125();
    v11(v10);
    if (v0 == v1)
    {
      OUTLINED_FUNCTION_91();
      logd = *(v3 + 368);
      v341 = *(v3 + 360);
      v343 = *(v3 + 352);
      v346 = *(v3 + 328);
      v350 = *(v3 + 320);
      v263 = *(v3 + 304);
      v352 = *(v3 + 312);
      OUTLINED_FUNCTION_120();

      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_26_2();

      __asm { BRAA            X1, X16 }
    }

    v12 = *(v3 + 560) + 1;
    *(v3 + 560) = v12;
    v13 = *(v3 + 552);
    v1 = *(v3 + 520);
    v14 = *(v3 + 504);
    v15 = *(v3 + 408);
    v16 = *(v3 + 200) + ((*(v3 + 728) + 32) & ~*(v3 + 728)) + *(v3 + 544) * v12;
    *(v3 + 568) = (*(v3 + 416) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v14, v16, v15);
    if (v1)
    {
      break;
    }

    if (!*(v3 + 536))
    {
      continue;
    }

    BYTE4(v300) = 0;
LABEL_75:
    v17 = v344;
LABEL_76:
    v2 = 0;
    *(v3 + 688) = v17;
    v4 = 32;
    do
    {
      OUTLINED_FUNCTION_24_3();
      if (v222)
      {
        goto LABEL_97;
      }

      OUTLINED_FUNCTION_54_0(v17);
      if (OUTLINED_FUNCTION_184())
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_27();
        *(v3 + 704) = v266;
        *v266 = v267;
        OUTLINED_FUNCTION_1_15();
        OUTLINED_FUNCTION_26_2();

        return sub_1DA3FBF84();
      }

      OUTLINED_FUNCTION_28_2();
    }

    while (!v230);
    v344 = *(v3 + 688);
LABEL_82:
    if ((v300 & 0x100000000) != 0)
    {
LABEL_100:
      OUTLINED_FUNCTION_59(v344);
      OUTLINED_FUNCTION_58_0();
      OUTLINED_FUNCTION_36_1(&unk_1DA429410);
      v276 = swift_task_alloc();
      v277 = OUTLINED_FUNCTION_161(v276);
      *v277 = v278;
      OUTLINED_FUNCTION_4_16();
      OUTLINED_FUNCTION_63(*(v3 + 240));
      OUTLINED_FUNCTION_26_2();

      __asm { BR              X3 }
    }
  }

  HIDWORD(v300) = 0;
  v17 = 0;
  while (2)
  {
    v18 = *(v3 + 520);
    while (1)
    {
      if (v17 >= v18)
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v19 = v17 + 1;
      *(v3 + 576) = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_96;
      }

      v20 = OUTLINED_FUNCTION_14_6(v17);
      v21(v20);
      OUTLINED_FUNCTION_39();
      sub_1DA3FCD04();
      v23 = OUTLINED_FUNCTION_109(v22);
      if (v24)
      {
        break;
      }

      if (qword_1EE100EF8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_19_5();
      v2 = *(v3 + 424);
      v0 = *(v3 + 432);
      v67 = OUTLINED_FUNCTION_100();
      v68 = OUTLINED_FUNCTION_3_18(v67, static Logger.conversionCategory);
      (v7)(v68);
      v69 = OUTLINED_FUNCTION_13_6();
      (v7)(v69);
      v70 = sub_1DA421A74();
      v4 = sub_1DA421F64();
      OUTLINED_FUNCTION_7_1(v4);
      OUTLINED_FUNCTION_118();
      if (!v71)
      {

        v144 = *(v5 + 8);
        v5 += 8;
        v1 = v144;
        v145 = OUTLINED_FUNCTION_81();
        (v144)(v145);
        v146 = OUTLINED_FUNCTION_103();
        (v144)(v146);
        v143 = OUTLINED_FUNCTION_131();
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_163();
      v358 = v4;
      v4 = *(v3 + 344);
      v351 = *(v3 + 336);
      OUTLINED_FUNCTION_90();
      v356 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_73(v356, v72, v73, v74, v75, v76, v77, v78, v281, v285, v289.n128_i64[0], v289.n128_i64[1], v296, v300, v304, v309, v313, v317, v322, v324, v327, v329, log, v337, v79);
      v353 = v70;
      sub_1DA4212D4();
      log = sub_1DA421194();
      v337 = v7;
      v80 = OUTLINED_FUNCTION_126();
      v81(v80);
      v82 = *(v5 + 8);
      v5 += 8;
      v83 = OUTLINED_FUNCTION_103();
      v82(v83);
      sub_1DA3A5FE8(log, v7, v361);
      OUTLINED_FUNCTION_135();

      OUTLINED_FUNCTION_11_8();
      sub_1DA4212D4();
      v84 = sub_1DA421194();
      v85 = OUTLINED_FUNCTION_102();
      v19 = v354;
      (v347)(v85, v351);
      v86 = OUTLINED_FUNCTION_81();
      v82(v86);
      v87 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v87, v0, v88);
      OUTLINED_FUNCTION_31_2();

      *(v2 + 14) = v84;
      v1 = v353;
      OUTLINED_FUNCTION_122(&dword_1DA39E000, v353, v358, "engagement - %s is not considered a conversion for suggestionShown - %s");
      v0 = v356;
      OUTLINED_FUNCTION_123();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_7_9();

      (v82)(v2, v6);
LABEL_52:
      v18 = *(v3 + 520);
      v17 = v19;
      if (v19 == v18)
      {
        if (!*(v3 + 536))
        {
          goto LABEL_82;
        }

        goto LABEL_75;
      }
    }

    v357 = v23;
    v25 = v19;
    OUTLINED_FUNCTION_141();
    sub_1DA4211E4();
    v26 = *(v7 + 8);
    v7 += 8;
    *(v3 + 600) = v26;
    *(v3 + 608) = v7 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27 = OUTLINED_FUNCTION_74();
    v26(v27);
    sub_1DA4212D4();
    sub_1DA4211E4();
    v28 = OUTLINED_FUNCTION_74();
    v360 = v26;
    v26(v28);
    sub_1DA421054();
    *(v3 + 616) = v29;
    v355 = v7;
    if (v29 > 1814400.0)
    {

      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v30 = OUTLINED_FUNCTION_47_0();
      v31 = OUTLINED_FUNCTION_3_18(v30, static Logger.conversionCategory);
      (v7)(v31);
      v32 = OUTLINED_FUNCTION_13_6();
      (v7)(v32);
      v33 = sub_1DA421A74();
      v34 = sub_1DA421F64();
      OUTLINED_FUNCTION_52_0(v34);
      v6 = *(v3 + 488);
      v35 = *(v3 + 496);
      v0 = *(v3 + 480);
      OUTLINED_FUNCTION_106();
      if (!v36)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_163();
      v37 = *(v3 + 336);
      OUTLINED_FUNCTION_90();
      LODWORD(log) = v2;
      v38 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_73(v38, v39, v40, v41, v42, v43, v44, v45, v281, v285, v289.n128_i64[0], v289.n128_i64[1], v296, v300, v304, v309, v313, v317, v322, v324, v37, v329, log, v38, v46);
      v330 = v33;
      sub_1DA4212D4();
      sub_1DA421194();
      v47 = OUTLINED_FUNCTION_88();
      v37(v47);
      v48 = *(v5 + 8);
      v5 += 8;
      v49 = OUTLINED_FUNCTION_67();
      v50 = v48(v49);
      OUTLINED_FUNCTION_180(v50, v51, v52, v53, v54, v55, v56, v57, v282, v286, v290, v293, v297, v301, v305, v310, v314, v318);
      OUTLINED_FUNCTION_31_2();

      OUTLINED_FUNCTION_11_8();
      sub_1DA4212D4();
      v58 = v19;
      sub_1DA421194();
      OUTLINED_FUNCTION_105();
      v59 = v19;
      v19 = v354;
      (v37)(v59, v328);
      v60 = v325;
      v6(v323, v325);
      v61 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v61, v4, v62);
      OUTLINED_FUNCTION_51_0();

      *(v2 + 14) = v58;
      v63 = loga;
      v64 = v330;
      v65 = v330;
      v66 = "time difference is greater than 21 days between engagement - %s and suggestionShown - %s skipping";
LABEL_25:
      OUTLINED_FUNCTION_122(&dword_1DA39E000, v65, v63, v66);
      OUTLINED_FUNCTION_123();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_7_9();

      v121 = *(v7 + 8);
      v7 += 8;
      v1 = v121;
      v0 = v357;
      v122 = (v121)(v353, v357);
      v130 = OUTLINED_FUNCTION_153(v122, v123, v124, v125, v126, v127, v128, v129, v283, v287, v291, v294, v298, v302, v306, v311, v315, v319, v323, v325, v328, v330, loga, v338, v342.n128_i64[0], v342.n128_i64[1], v344, v347);
      (v121)(v130);
      v6(v351, v60);
      goto LABEL_52;
    }

    if (v29 < 0.0)
    {

      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      OUTLINED_FUNCTION_19_5();
      v2 = *(v3 + 464);
      v89 = *(v3 + 472);
      v90 = OUTLINED_FUNCTION_100();
      v91 = OUTLINED_FUNCTION_3_18(v90, static Logger.conversionCategory);
      (v7)(v91);
      v92 = OUTLINED_FUNCTION_13_6();
      (v7)(v92);
      v33 = sub_1DA421A74();
      v93 = sub_1DA421F74();
      OUTLINED_FUNCTION_52_0(v93);
      v94 = *(v3 + 496);
      v0 = *(v3 + 464);
      v6 = *(v3 + 472);
      OUTLINED_FUNCTION_106();
      if (!v95)
      {
LABEL_26:

        v131 = *(v5 + 8);
        v5 += 8;
        v1 = v131;
        v132 = OUTLINED_FUNCTION_43_0();
        (v131)(v132);
        v133 = OUTLINED_FUNCTION_67();
        (v131)(v133);
        v134 = OUTLINED_FUNCTION_168();
        (v2)(v134);
        v135 = (v2)(v347, v6);
        v143 = OUTLINED_FUNCTION_164(v135, v136, v137, v138, v139, v140, v141, v142, v281, v285, v289.n128_i64[0], v289.n128_i64[1], v296, v300, v304, v309, v313, v317, v322, v324, v327, v329, log, v337, v342.n128_i64[0], v342.n128_i64[1], v344, v347, v351);
LABEL_28:
        (v1)(v143);
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_163();
      v96 = *(v3 + 336);
      OUTLINED_FUNCTION_90();
      LODWORD(log) = v2;
      v97 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_73(v97, v98, v99, v100, v101, v102, v103, v104, v281, v285, v289.n128_i64[0], v289.n128_i64[1], v296, v300, v304, v309, v313, v317, v322, v324, v96, v329, log, v97, v105);
      v330 = v33;
      sub_1DA4212D4();
      sub_1DA421194();
      v106 = OUTLINED_FUNCTION_88();
      v96(v106);
      v107 = *(v5 + 8);
      v5 += 8;
      v108 = OUTLINED_FUNCTION_67();
      v109 = v107(v108);
      OUTLINED_FUNCTION_180(v109, v110, v111, v112, v113, v114, v115, v116, v284, v288, v292, v295, v299, v303, v307, v312, v316, v320);
      OUTLINED_FUNCTION_31_2();

      OUTLINED_FUNCTION_11_8();
      sub_1DA4212D4();
      v117 = v19;
      sub_1DA421194();
      OUTLINED_FUNCTION_105();
      v118 = v19;
      v19 = v354;
      (v96)(v118, v328);
      v60 = v325;
      v6(v323, v325);
      v119 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v119, v4, v120);
      OUTLINED_FUNCTION_51_0();

      *(v2 + 14) = v117;
      v63 = loga;
      v64 = v330;
      v65 = v330;
      v66 = "engagement happened before the suggestion was shown - %s and suggestionShown - %s skipping";
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_144();
    sub_1DA4211C4();
    v147 = OUTLINED_FUNCTION_31_2();
    v360(v147, v2);
    OUTLINED_FUNCTION_143(v313 | 0x8000000000000000, v4);

    v148 = OUTLINED_FUNCTION_145();
    v149 = *(v3 + 328);
    if (v148)
    {
      sub_1DA4039D4(*(v3 + 328));
      v150 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v354 = v19;
      v151 = *(v3 + 312);
      v152 = *(v3 + 272);
      v153 = *(v3 + 280);
      v154 = *(v153 + 16);
      v25 = v153 + 16;
      v155 = OUTLINED_FUNCTION_39();
      v353 = v156;
      (v156)(v155);
      sub_1DA4039D4(v149);
      v157 = sub_1DA421384();
      v158 = *(v153 + 8);
      v159 = OUTLINED_FUNCTION_24();
      v351 = v160;
      v160(v159);
      if (v157)
      {
        v161 = *(v157 + 16);
        v337 = v157;
        if (v161)
        {
          OUTLINED_FUNCTION_22_4();
          v347 = v162;
          v150 = MEMORY[0x1E69E7CC0];
          do
          {
            v163 = *(v3 + 304);
            v164 = *(v3 + 272);
            v165 = OUTLINED_FUNCTION_154();
            (v353)(v165);
            sub_1DA421394();
            OUTLINED_FUNCTION_89();
            v166 = OUTLINED_FUNCTION_55_0();
            (v351)(v166);
            if (v5)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v170 = *(v150 + 16);
                OUTLINED_FUNCTION_16_1();
                sub_1DA3A5B78();
                v150 = v171;
              }

              v168 = *(v150 + 16);
              v167 = *(v150 + 24);
              if (v168 >= v167 >> 1)
              {
                OUTLINED_FUNCTION_21_3(v167);
                sub_1DA3A5B78();
                v150 = v172;
              }

              *(v150 + 16) = v168 + 1;
              v169 = v150 + 16 * v168;
              *(v169 + 32) = v163;
              *(v169 + 40) = v5;
            }

            v152 += v347;
            --v161;
          }

          while (v161);
        }

        else
        {
          v150 = MEMORY[0x1E69E7CC0];
        }

        v19 = v354;
        v7 = v355;
      }

      else
      {
        v150 = MEMORY[0x1E69E7CC0];
        v19 = v354;
      }
    }

    *(v3 + 624) = v150;
    v173 = *(v3 + 496);
    v174 = *(v3 + 368);
    v175 = *(v3 + 336);
    sub_1DA4212D4();
    sub_1DA421194();
    OUTLINED_FUNCTION_89();
    v360(v174, v175);
    *(v3 + 160) = v174;
    *(v3 + 168) = v5;
    v176 = swift_task_alloc();
    v177 = OUTLINED_FUNCTION_12_7(v176, v309);
    LOBYTE(v175) = sub_1DA412A3C(v177, v178, v150);
    *(v3 + 632) = v344;

    if (v175)
    {

      if (qword_1EE100EF8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_19_5();
      v2 = *(v3 + 448);
      v179 = *(v3 + 456);
      v180 = OUTLINED_FUNCTION_100();
      v181 = OUTLINED_FUNCTION_3_18(v180, static Logger.conversionCategory);
      (v7)(v181);
      v182 = OUTLINED_FUNCTION_13_6();
      (v7)(v182);
      v183 = sub_1DA421A74();
      v184 = sub_1DA421F64();
      v185 = OUTLINED_FUNCTION_52_0(v184);
      v351 = *(v3 + 496);
      v0 = *(v3 + 448);
      v6 = *(v3 + 456);
      v4 = *(v3 + 408);
      v186 = *(v3 + 416);
      v187 = *(v3 + 400);
      v353 = *(v3 + 392);
      v7 = *(v3 + 384);
      v359 = *(v3 + 376);
      if (v185)
      {
        OUTLINED_FUNCTION_163();
        v331 = v7;
        v188 = *(v3 + 336);
        v326 = v188;
        v348 = v187;
        v189 = OUTLINED_FUNCTION_90();
        logb = v183;
        v339 = OUTLINED_FUNCTION_92();
        v361[0] = v339;
        *v189 = v342.n128_u32[0];
        sub_1DA4212D4();
        v308 = sub_1DA421194();
        v321 = v0;
        v190 = OUTLINED_FUNCTION_102();
        v191 = v188;
        v7 = v355;
        LODWORD(v327) = v2;
        v360(v190, v191);
        v192 = *(v186 + 8);
        v5 = v186 + 8;
        v193 = OUTLINED_FUNCTION_67();
        v192(v193);
        v6 = v192;
        sub_1DA3A5FE8(v308, v0, v361);
        OUTLINED_FUNCTION_31_2();

        OUTLINED_FUNCTION_110();
        sub_1DA4212D4();
        v194 = v19;
        sub_1DA421194();
        OUTLINED_FUNCTION_105();
        v195 = v19;
        v19 = v354;
        v360(v195, v326);
        v2 = v4;
        (v192)(v0, v4);
        v196 = OUTLINED_FUNCTION_25_3();
        sub_1DA3A5FE8(v196, v4, v197);
        OUTLINED_FUNCTION_51_0();

        *(v189 + 14) = v194;
        _os_log_impl(&dword_1DA39E000, logb, v327, "matched engagement - %s is already processed for suggestionShown - %s", v189, 0x16u);
        OUTLINED_FUNCTION_123();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_17();

        v4 = v331 + 8;
        v1 = *(v331 + 8);
        v0 = v359;
        v198 = (v1)(v353, v359);
        v206 = OUTLINED_FUNCTION_153(v198, v199, v200, v201, v202, v203, v204, v205, v281, v285, v289.n128_i64[0], v289.n128_i64[1], v296, v300, v308, v309, v313, v321, v2, v326, v327, v331, logb, v339, v342.n128_i64[0], v342.n128_i64[1], v344, v348);
        (v1)(v206);
        (v192)(v351, v2);
      }

      else
      {

        v207 = *(v186 + 8);
        v5 = v186 + 8;
        v1 = v207;
        v208 = OUTLINED_FUNCTION_43_0();
        (v207)(v208);
        v209 = OUTLINED_FUNCTION_67();
        (v207)(v209);
        v210 = OUTLINED_FUNCTION_168();
        (v2)(v210);
        v211 = (v2)(v187, v6);
        v219 = OUTLINED_FUNCTION_164(v211, v212, v213, v214, v215, v216, v217, v218, v281, v285, v289.n128_i64[0], v289.n128_i64[1], v296, v300, v304, v309, v313, v317, v322, v324, v327, v329, log, v337, v342.n128_i64[0], v342.n128_i64[1], v344, v347, v351);
        (v207)(v219);
      }

      v304 = v344;
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_115();
    if (!v221)
    {
LABEL_64:
      OUTLINED_FUNCTION_30_3();
      sub_1DA4212D4();
      sub_1DA421194();
      v231 = OUTLINED_FUNCTION_51();
      (v7)(v231);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v233 = *(v3 + 624);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v260 = v233[2];
        OUTLINED_FUNCTION_16_1();
        sub_1DA3A5B78();
        v233 = v261;
      }

      v234 = v233[2];
      v4 = v234 + 1;
      if (v234 >= v233[3] >> 1)
      {
        sub_1DA3A5B78();
        v233 = v262;
      }

      OUTLINED_FUNCTION_160();
      v235 = OUTLINED_FUNCTION_112(MEMORY[0x1E69E7CC0]);
      sub_1DA3B04B0(v235, v234 + 1, 0);
      OUTLINED_FUNCTION_159();
      do
      {
        v236 = OUTLINED_FUNCTION_69();
        v237 = *v233;
        *v236 = *(v233 - 1);
        v236[1] = v237;
        (v5)();
        OUTLINED_FUNCTION_177();
        if (v234 >= v25 >> 1)
        {
          OUTLINED_FUNCTION_99();
          v7 = *(v3 + 192);
        }

        v238 = OUTLINED_FUNCTION_56_0();
        v239(v238);
        v233 += 2;
        --v4;
      }

      while (v4);
      OUTLINED_FUNCTION_65();
      v349 = *(v3 + 400);
      v240 = *(v3 + 384);
      logc = *(v3 + 376);
      v340 = *(v3 + 392);
      OUTLINED_FUNCTION_176();
      *v25 = v7;
      v241 = OUTLINED_FUNCTION_111();
      (v5)(v241);
      v242 = OUTLINED_FUNCTION_130();
      v243(v242);
      OUTLINED_FUNCTION_47();
      __swift_storeEnumTagSinglePayload(v244, v245, v246, v19);
      v7 = v285;
      v247 = sub_1DA4212C4();
      v2 = OUTLINED_FUNCTION_179(v247);
      OUTLINED_FUNCTION_175(v313);
      (v2)(v5, 0);
      v360(v285, 0);
      v248 = OUTLINED_FUNCTION_116();
      v249(v248);
      v250 = *(v240 + 8);
      v6 = (v240 + 8);
      v1 = v250;
      v0 = logc;
      v251 = (v250)(v340, logc);
      v259 = OUTLINED_FUNCTION_153(v251, v252, v253, v254, v255, v256, v257, v258, v281, v285, v289.n128_i64[0], v289.n128_i64[1], v296, v300, v304, v309, v313, v317, v322, v324, v327, v329, logc, v340, v342.n128_i64[0], v342.n128_i64[1], v344, v349);
      (v250)(v259);
      (*(v351 + 8))(v354, v353);
      if (v357 == v355)
      {
        v17 = *(v3 + 632);
        if (*(v3 + 536))
        {
          BYTE4(v300) = 1;
          v304 = v345;
          goto LABEL_76;
        }

LABEL_99:
        v344 = v17;
        goto LABEL_100;
      }

      v304 = v345;
      v344 = *(v3 + 632);
      v17 = *(v3 + 576);
      HIDWORD(v300) = 1;
      continue;
    }

    break;
  }

  while (1)
  {
    OUTLINED_FUNCTION_114(v220);
    if (v222)
    {
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_142(v17);
    v223 = OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_172(v223);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_157();
    v224 = *(v3 + 40);
    v5 = *(v3 + 48);
    OUTLINED_FUNCTION_186();
    v225 = OUTLINED_FUNCTION_20_4();
    if (v8 < v226(v225))
    {
      break;
    }

    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v227 = sub_1DA421A94();
    __swift_project_value_buffer(v227, static Logger.conversionCategory);
    OUTLINED_FUNCTION_31_2();

    v228 = sub_1DA421A74();
    sub_1DA421F64();
    OUTLINED_FUNCTION_185();
    if (OUTLINED_FUNCTION_182())
    {
      v5 = OUTLINED_FUNCTION_150();
      v229 = OUTLINED_FUNCTION_139();
      v361[0] = v229;
      OUTLINED_FUNCTION_97(v289.n128_f32[0]);
      OUTLINED_FUNCTION_158();

      *(v5 + 4) = v344;
      _os_log_impl(&dword_1DA39E000, v228, v224, "not considering a conversion for postConversionProcessor - %s)", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v229);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_17();
    }

    else
    {
    }

    OUTLINED_FUNCTION_94();
    if (v230)
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_113();
  }

  v270 = *(v3 + 256);

  v271 = OUTLINED_FUNCTION_37();
  v272(v271);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v3 + 680) = v273;
  *v273 = v274;
  OUTLINED_FUNCTION_7_12(v273);
  OUTLINED_FUNCTION_26_2();

  return sub_1DA3F9ABC();
}

uint64_t sub_1DA402F2C()
{
  OUTLINED_FUNCTION_16();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_1DA421374();
  v1[9] = v3;
  OUTLINED_FUNCTION_5_2(v3);
  v1[10] = v4;
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_40();
  v7 = sub_1DA4212E4();
  v1[12] = v7;
  OUTLINED_FUNCTION_5_2(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_95();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1DA403034()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  *(v0 + 136) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 104);
    v5 = *(*(v0 + 64) + 104);
    *(v0 + 144) = v5;
    v6 = *(v5 + 16);
    *(v0 + 152) = v6;
    v7 = *(v4 + 80);
    *(v0 + 208) = v7;
    v8 = *(v4 + 72);
    *(v0 + 160) = v8;
    v9 = *(v4 + 16);
    *(v0 + 168) = v9;
    while (1)
    {
      *(v0 + 176) = v3;
      v10 = *(v0 + 120);
      v11 = *(v0 + 96);
      v12 = (v4 + 16);
      (v9)(*(v0 + 128), v1 + ((v7 + 32) & ~v7) + v8 * v3, v11);
      v13 = OUTLINED_FUNCTION_39();
      v9(v13);
      if (v6)
      {
        break;
      }

LABEL_9:
      v17 = OUTLINED_FUNCTION_86();
      v12(v17);
      v18 = OUTLINED_FUNCTION_45_0();
      v12(v18);
      if (v9 == v11)
      {
        goto LABEL_14;
      }

      v9 = *(v0 + 168);
      v3 = *(v0 + 176) + 1;
      LOBYTE(v7) = *(v0 + 208);
      v6 = *(v0 + 152);
      v8 = *(v0 + 160);
      v4 = *(v0 + 104);
      v1 = *(v0 + 56);
    }

    v11 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_71();
      if (v15)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_98(v14);
      if ((sub_1DA3F98F8(v10, (v0 + 16)) & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_93();
      if (v16)
      {
        goto LABEL_9;
      }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_27();
    *(v0 + 192) = v19;
    *v19 = v20;
    OUTLINED_FUNCTION_8_15(v19);

    sub_1DA3F9398();
  }

  else
  {
LABEL_14:
    v22 = *(v0 + 120);
    v21 = *(v0 + 128);
    v23 = *(v0 + 112);
    v24 = *(v0 + 88);

    OUTLINED_FUNCTION_4_0();

    v25();
  }
}

uint64_t sub_1DA403218()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DA4032FC()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[23] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = OUTLINED_FUNCTION_62();
  v8(v7);
  v9 = *(v5 + 32);
  v10 = OUTLINED_FUNCTION_45_0();
  v11(v10);
  if (v6 == v1)
  {
LABEL_7:
    v16 = v0[15];
    v17 = v0[11];
    v18 = v0[8];
    sub_1DA3F9288();
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_36_1(&unk_1DA429410);
    v24 = v19;
    v20 = swift_task_alloc();
    v0[25] = v20;
    *v20 = v0;
    v20[1] = sub_1DA4034A4;
    v21 = OUTLINED_FUNCTION_63(v0[11]);

    v24(v21, 0xD000000000000025);
  }

  else
  {
    v12 = v0[23];
    OUTLINED_FUNCTION_152();
    while (1)
    {
      OUTLINED_FUNCTION_71();
      if (v14)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_98(v13);
      if ((sub_1DA3F98F8(v2, v0 + 2) & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_93();
      if (v15)
      {
        goto LABEL_7;
      }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_27();
    v0[24] = v22;
    *v22 = v23;
    OUTLINED_FUNCTION_8_15();

    sub_1DA3F9398();
  }
}

uint64_t sub_1DA4034A4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 200);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DA403588()
{
  (*(*(v1 + 80) + 8))(*(v1 + 88), *(v1 + 72));
  do
  {
LABEL_2:
    v4 = OUTLINED_FUNCTION_86();
    v3(v4);
    v5 = OUTLINED_FUNCTION_45_0();
    v3(v5);
    if (v2 == v0)
    {
      v16 = *(v1 + 120);
      v15 = *(v1 + 128);
      v17 = *(v1 + 112);
      v18 = *(v1 + 88);

      OUTLINED_FUNCTION_4_0();

      v19();
      return;
    }

    v6 = *(v1 + 168);
    v7 = *(v1 + 176) + 1;
    *(v1 + 176) = v7;
    v2 = *(v1 + 152);
    v8 = *(v1 + 120);
    v0 = *(v1 + 96);
    v3 = (*(v1 + 104) + 16);
    (v6)(*(v1 + 128), *(v1 + 56) + ((*(v1 + 208) + 32) & ~*(v1 + 208)) + *(v1 + 160) * v7, v0);
    v9 = OUTLINED_FUNCTION_39();
    v6(v9);
  }

  while (!v2);
  v0 = 0;
  while (1)
  {
    OUTLINED_FUNCTION_71();
    if (v11)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_98(v10);
    if ((sub_1DA3F98F8(v8, (v1 + 16)) & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_93();
    if (v12)
    {
      goto LABEL_2;
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v1 + 192) = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_8_15();

  sub_1DA3F9398();
}

uint64_t *DefaultConversionLogger.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  return v0;
}

uint64_t DefaultConversionLogger.__deallocating_deinit()
{
  DefaultConversionLogger.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 192, 7);
}

uint64_t sub_1DA4037B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DA3B76EC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF5A8, &qword_1DA429400);
    sub_1DA4221A4();
    v12 = *(*(v19 + 48) + 16 * v9 + 8);

    v13 = *(v19 + 56);
    v14 = sub_1DA4213B4();
    (*(*(v14 - 8) + 32))(a3, v13 + *(*(v14 - 8) + 72) * v9, v14);
    sub_1DA4221C4();
    *v4 = v19;
    v15 = a3;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = sub_1DA4213B4();
    v15 = a3;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

unint64_t sub_1DA4038FC()
{
  result = qword_1EE100F18;
  if (!qword_1EE100F18)
  {
    sub_1DA4210B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100F18);
  }

  return result;
}

uint64_t sub_1DA403964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DA4223A4() & 1;
  }
}

uint64_t sub_1DA4039D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DA403A5C(uint64_t a1, char a2)
{
  v5 = sub_1DA421374();
  OUTLINED_FUNCTION_5_2(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  sub_1DA3F8640(a1, a2 & 1, v2 + v10, v12, v13);
}

uint64_t OUTLINED_FUNCTION_1_15(uint64_t a1)
{
  *(a1 + 8) = sub_1DA4019BC;
  v2 = v1[63];
  result = v1[55];
  v4 = v1[27];
  return result;
}

uint64_t OUTLINED_FUNCTION_7_12(uint64_t a1)
{
  *(a1 + 8) = sub_1DA400694;
  v3 = v1[62];
  v2 = v1[63];
  result = v1[55];
  v5 = v1[33];
  v6 = v1[27];
  return result;
}

uint64_t OUTLINED_FUNCTION_8_15(uint64_t a1)
{
  *(a1 + 8) = sub_1DA403218;
  result = v1[14];
  v3 = v1[15];
  v4 = v1[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_6@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 568);
  v3 = *(v1 + 552);
  v4 = *(v1 + 504);
  v5 = *(v1 + 408);
  v6 = *(v1 + 208) + ((*(v1 + 728) + 32) & ~*(v1 + 728)) + *(v1 + 544) * a1;
  return *(v1 + 496);
}

void OUTLINED_FUNCTION_19_5()
{
  v1 = v0[71];
  v2 = v0[69];
  v3 = v0[62];
}

void OUTLINED_FUNCTION_21_5()
{
  v2 = v0[51];
  v3 = v0[52];
  v4 = v0[50];
  *(v1 - 152) = v0[49];
  v5 = v0[48];
  *(v1 - 144) = v0[47];
  *(v1 - 136) = v4;
}

void OUTLINED_FUNCTION_22_4()
{
  v2 = *(v1 + 280);
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v4 = *(v2 + 72);
}

__n128 OUTLINED_FUNCTION_23_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a23)
{
  *(v24 - 112) = a1;
  result = a23;
  *v23 = a23.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_29_2()
{
  v2 = *(v0 + 368);
  v3 = *(v0 + 336);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_3()
{
  v2 = v0[78];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[73];
  v6 = v0[62];
  v7 = v0[44];
  v8 = v0[42];
}

uint64_t OUTLINED_FUNCTION_32_2()
{
  v2 = *(v0 + 368);
  v3 = *(v0 + 336);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_35_1()
{
  result = v0;
  v3 = *(v1 - 144);
  v4 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_1@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_37()
{
  v2 = *(v0 + 80);
  *(v1 + 740) = v2;
  *(v1 + 656) = *(v0 + 72);
  *(v1 + 664) = *(v0 + 16);
  *(v1 + 672) = 0;
  result = *(v1 + 264);
  v4 = *(v1 + 248);
  v5 = *(v1 + 256) + 16;
  v6 = *(v1 + 584) + ((v2 + 32) & ~v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_0()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));

  return swift_getDynamicType();
}

void OUTLINED_FUNCTION_42_0()
{

  JUMPOUT(0x1DA74E430);
}

uint64_t OUTLINED_FUNCTION_47_0()
{
  v2 = v0[71];
  v3 = v0[69];
  v4 = v0[61];
  v5 = v0[62];
  v6 = v0[60];
  v7 = v0[51];

  return sub_1DA421A94();
}

BOOL OUTLINED_FUNCTION_52_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_53_0()
{

  JUMPOUT(0x1DA74E430);
}

uint64_t OUTLINED_FUNCTION_54_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 504);
  v5 = *(v1 + 216);

  return sub_1DA3B2454(a1 + v2, v1 + 56);
}

unint64_t OUTLINED_FUNCTION_56_0()
{
  v5 = v2[35];
  v4 = v2[36];
  v6 = v2[34];
  *(v3 + 16) = v1;
  v7 = *(v5 + 32);
  return v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v0;
}

uint64_t *OUTLINED_FUNCTION_58_0()
{
  result = __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
  v2 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_59@<X0>(uint64_t a1@<X8>)
{
  v1[89] = a1;
  v3 = v1[63];
  v4 = v1[30];
  v5 = v1[27];

  return sub_1DA3F9288();
}

void OUTLINED_FUNCTION_65()
{
  v2 = *(v0 + 576);
  v3 = *(v0 + 736);
  *(v1 - 136) = *(v0 + 520);
  *(v1 - 128) = v2;
  v4 = *(v0 + 504);
  *(v1 - 144) = *(v0 + 496);
  v5 = *(v0 + 416);
  *(v1 - 152) = *(v0 + 408);
}

void OUTLINED_FUNCTION_66()
{

  JUMPOUT(0x1DA74E430);
}

uint64_t OUTLINED_FUNCTION_69()
{
  v1 = *(v0 + 732);
  result = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280) + 104;
  return result;
}

__n128 OUTLINED_FUNCTION_73(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a25)
{
  *(v26 - 112) = a1;
  result = a25;
  *v25 = a25.n128_u32[0];
  return result;
}

void OUTLINED_FUNCTION_75()
{

  JUMPOUT(0x1DA74E430);
}

void OUTLINED_FUNCTION_82()
{
  v6 = v0[25];
  v2 = v0[21];
  *(v1 - 168) = v0[22];
  *(v1 - 160) = v2;
  v3 = v0[19];
  *(v1 - 152) = v0[20];
  *(v1 - 144) = v3;
  v4 = v0[18];
  v5 = v0[15];
}

void OUTLINED_FUNCTION_85()
{
  v1 = v0[48];
  v2 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];
  v7 = v0[41];
  v6 = v0[42];
  v9 = v0[39];
  v8 = v0[40];
  v11 = v0[37];
  v10 = v0[38];
  v12 = v0[33];
  v13 = v0[34];
}

uint64_t OUTLINED_FUNCTION_86()
{
  v1 = v0[16];
  v2 = v0[17];
  result = v0[15];
  v4 = v0[12];
  v5 = v0[22] + 1;
  v6 = *(v0[13] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_88()
{
  result = v0;
  v3 = *(v1 - 120);
  v4 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_90()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_91()
{
  v2 = v0[62];
  result = v0[63];
  v4 = v0[60];
  v3 = v0[61];
  v6 = v0[58];
  v5 = v0[59];
  v7 = v0[56];
  v8 = v0[57];
  v10 = v0[54];
  v9 = v0[55];
  v11 = v0[53];
  v13 = v0[49];
  v12 = v0[50];
  return result;
}

uint64_t OUTLINED_FUNCTION_92()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_94()
{
  v1 = v0[80];
  v2 = v0[81] + 1;
  return __swift_destroy_boxed_opaque_existential_0(v0 + 2);
}

uint64_t OUTLINED_FUNCTION_95()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_97(float a1)
{
  *v3 = a1;

  return sub_1DA3A5FE8(v2, v1, (v4 - 112));
}

uint64_t OUTLINED_FUNCTION_98@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 128);
  v5 = *(v1 + 64);

  return sub_1DA3B2454(a1 + v2, v1 + 16);
}

void OUTLINED_FUNCTION_99()
{
  if (!v1 & v0)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_1DA3B04B0(v4, v2, 1);
}

uint64_t OUTLINED_FUNCTION_100()
{
  v2 = *(v0 + 408);

  return sub_1DA421A94();
}

void OUTLINED_FUNCTION_106()
{
  v2 = v0[51];
  v3 = v0[52];
  v5 = v0[50];
  *(v1 - 152) = v0[49];
  v4 = v0[48];
  *(v1 - 128) = v0[47];
}

uint64_t OUTLINED_FUNCTION_107()
{
  v2 = *(v1 - 224) + 8;
  result = v0;
  v4 = *(v1 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_109(uint64_t result)
{
  *(v1 + 584) = result;
  *(v1 + 592) = *(result + 16);
  return result;
}

void OUTLINED_FUNCTION_118()
{
  v1 = v0[62];
  v3 = v0[53];
  v2 = v0[54];
  v5 = v0[51];
  v4 = v0[52];
}

uint64_t OUTLINED_FUNCTION_119()
{
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[36];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[29];
}

uint64_t OUTLINED_FUNCTION_120()
{
  v5 = v1[36];
  v4 = v1[37];
  *(v2 - 152) = v0;
  *(v2 - 144) = v4;
  v6 = v1[33];
  *(v2 - 136) = v5;
  *(v2 - 128) = v6;
  *(v2 - 120) = v1[30];
}

void OUTLINED_FUNCTION_122(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_123()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_125()
{
  result = v0[63];
  v2 = v0[64];
  v3 = v0[51];
  v4 = v0[70] + 1;
  v5 = *(v0[52] + 8);
  return result;
}

void OUTLINED_FUNCTION_129()
{
  v3 = v0[51];
  v2 = v0[52];
  v6 = v0[50];
  *(v1 - 136) = v0[49];
  v5 = v0[47];
  v4 = v0[48];
}

uint64_t OUTLINED_FUNCTION_139()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_140()
{

  return sub_1DA4211F4();
}

uint64_t OUTLINED_FUNCTION_141()
{
  v3 = v0[62];
  v2 = v0[63];
  v5 = v0[49];
  v4 = v0[50];
  v6 = v0[46];
  v7 = v0[42];
  v8 = v0[43];

  return sub_1DA4212D4();
}

uint64_t OUTLINED_FUNCTION_142@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 616);

  return sub_1DA3B2454(a1 + 40 * v1 + 32, v2 + 16);
}

uint64_t OUTLINED_FUNCTION_143@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return sub_1DA3EA2EC(0xD00000000000001BLL, a1, v2, a2);
}

uint64_t OUTLINED_FUNCTION_144()
{
  v2 = v0[63];
  v3 = v0[45];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[34];

  return sub_1DA4212D4();
}

uint64_t OUTLINED_FUNCTION_145()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

BOOL OUTLINED_FUNCTION_147(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_149()
{

  return sub_1DA421BB4();
}

uint64_t OUTLINED_FUNCTION_150()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_151()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_159()
{
  v4 = *(v0 + 192);
  v5 = *(v1 + 104);
  *(v3 - 120) = v2;
}

void OUTLINED_FUNCTION_160()
{
  v6 = *(v3 + 280);
  *(v5 + 16) = v4;
  v7 = v5 + 16 * v0;
  *(v7 + 32) = v1;
  *(v7 + 40) = v2;
}

void OUTLINED_FUNCTION_165()
{
  v1 = v0[63];
  v2 = v0[55];
  v3 = v0[51];
  v4 = v0[52];
}

uint64_t OUTLINED_FUNCTION_168()
{
  v2 = *(v0 + 8);
  result = *(v1 - 152);
  v4 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_172(uint64_t result)
{
  v2 = v1[6];
  v1[22] = result;
  v1[23] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_175@<X0>(uint64_t a1@<X8>)
{

  return sub_1DA3F82C0(v1, 0xD00000000000001BLL, a1 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_176()
{
  v3 = v0[40];
  v4 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v7 = *(v1 - 120);
}

uint64_t OUTLINED_FUNCTION_177()
{
  *(v0 + 192) = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_179(uint64_t a1)
{
  *(v1 - 120) = a1;

  return sub_1DA4211B4();
}

uint64_t OUTLINED_FUNCTION_180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return sub_1DA3A5FE8(a18, v18, (v19 - 112));
}

BOOL OUTLINED_FUNCTION_182()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_183(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_184()
{

  return sub_1DA3FB144(v0, (v1 + 56));
}

uint64_t OUTLINED_FUNCTION_185()
{
}

void *OUTLINED_FUNCTION_186()
{

  return __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
}

uint64_t static SiriSuggestionsIntelligence.createFeatureService(clock:configProvider:accountDetailsProvider:possibleOwners:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[50] = a4;
  v5[51] = a5;
  v5[48] = a2;
  v5[49] = a3;
  v5[47] = a1;
  v6 = sub_1DA4214A4();
  v5[52] = v6;
  v7 = *(v6 - 8);
  v5[53] = v7;
  v5[54] = *(v7 + 64);
  v5[55] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0A8, &unk_1DA425510) - 8) + 64) + 15;
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA404AE4()
{
  v1 = *(v0 + 456);
  v47 = *(v0 + 448);
  v2 = *(v0 + 416);
  v46 = v1;
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v5 = *(v0 + 384);
  v6 = [objc_allocWithZone(MEMORY[0x1E69977D0]) init];
  *(v0 + 464) = v6;
  type metadata accessor for SiriSuggestionsIntelligence.AppUsageFeatureExtractor();
  sub_1DA3A7ED4(v5, v0 + 16);
  sub_1DA3A7ED4(v4, v0 + 56);
  v7 = SiriSuggestionsIntelligence.AppUsageFeatureExtractor.__allocating_init(clock:configProvider:)((v0 + 16), (v0 + 56));
  *(v0 + 472) = v7;
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v8 = type metadata accessor for SiriSuggestionsIntelligence.MobileAssetsAssetQuerier();
  *(v0 + 96) = swift_allocObject();
  *(v0 + 120) = v8;
  *(v0 + 128) = &protocol witness table for SiriSuggestionsIntelligence.MobileAssetsAssetQuerier;
  type metadata accessor for SiriSuggestionsIntelligence.DefaultNetworkConnectionService();
  v9 = swift_allocObject();
  *(v0 + 480) = v9;
  sub_1DA4213E4();
  v10 = v6;
  sub_1DA4213D4();
  sub_1DA4213C4();

  type metadata accessor for SiriSuggestionsIntelligence.FeatureServiceBuilder();
  *(v0 + 488) = swift_initStackObject();
  v11 = SiriSuggestionsIntelligence.FeatureServiceBuilder.init()();
  v12 = sub_1DA405A00(v7, v11, type metadata accessor for SiriSuggestionsIntelligence.AppUsageFeatureExtractor, &protocol witness table for SiriSuggestionsIntelligence.AppUsageFeatureExtractor);

  sub_1DA3A7ED4(v5, v0 + 176);
  type metadata accessor for SiriSuggestionsIntelligence.TimeFeatureExtractor();
  v13 = swift_allocObject();
  sub_1DA3A1FF8((v0 + 176), v13 + 16);
  v14 = OUTLINED_FUNCTION_0_19();
  v17 = sub_1DA405A00(v14, v12, v15, v16);

  sub_1DA3A7ED4(v3, v0 + 216);
  sub_1DA3A7ED4(v0 + 96, v0 + 256);
  v18 = type metadata accessor for SiriSuggestionsIntelligence.MobileAssetsLatestSUVersionService();
  v19 = OUTLINED_FUNCTION_5_11();
  *(v19 + 16) = sub_1DA405928;
  *(v19 + 24) = 0;
  sub_1DA3A1FF8((v0 + 256), v19 + 32);
  *(v0 + 320) = v18;
  *(v0 + 328) = &protocol witness table for SiriSuggestionsIntelligence.MobileAssetsLatestSUVersionService;
  *(v0 + 296) = v19;
  type metadata accessor for SiriSuggestionsIntelligence.BuildVersionService();
  v20 = OUTLINED_FUNCTION_5_11();
  *(v20 + 56) = sub_1DA405928;
  *(v20 + 64) = 0;
  sub_1DA3A1FF8((v0 + 296), v20 + 16);
  type metadata accessor for SiriSuggestionsIntelligence.DeviceFeatureExtractor();
  swift_allocObject();
  sub_1DA412AEC((v0 + 216), v20, sub_1DA405928, 0);
  OUTLINED_FUNCTION_1_16();
  v24 = sub_1DA405A00(v21, v17, v22, v23);

  sub_1DA405BF4(sub_1DA405928, 0, v10, v9, v5, v4);
  OUTLINED_FUNCTION_2_17();
  v28 = sub_1DA405A00(v25, v24, v26, v27);

  sub_1DA405EB0(v46, v47);
  v29 = 0;
  if (__swift_getEnumTagSinglePayload(v47, 1, v2) != 1)
  {
    v30 = *(v0 + 440);
    v32 = *(v0 + 424);
    v31 = *(v0 + 432);
    v33 = *(v0 + 416);
    v34 = *(v32 + 32);
    v34(v30, *(v0 + 448), v33);
    v35 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v36 = swift_allocObject();
    v34(v36 + v35, v30, v33);
    type metadata accessor for SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor();
    v29 = OUTLINED_FUNCTION_4_17();
    *(v29 + 16) = sub_1DA405F20;
    *(v29 + 24) = v36;
  }

  v37 = type metadata accessor for SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor();
  *(v0 + 360) = v37;
  *(v0 + 368) = &protocol witness table for SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor;
  if (!v29)
  {
    v29 = OUTLINED_FUNCTION_4_17();
    *(v29 + 16) = sub_1DA3D1E2C;
    *(v29 + 24) = 0;
  }

  v38 = *(v0 + 408);
  *(v0 + 336) = v29;
  v39 = __swift_project_boxed_opaque_existential_1((v0 + 336), v37);
  v40 = sub_1DA3B1874(v39, v28, v37, &protocol witness table for SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  type metadata accessor for SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor();
  v41 = swift_allocObject();
  *(v41 + 16) = v38;

  *(v0 + 496) = sub_1DA405AB8(v41, v40);

  v42 = swift_task_alloc();
  *(v0 + 504) = v42;
  *v42 = v0;
  v42[1] = sub_1DA404FE0;
  v43 = *(v0 + 376);
  v44 = *(v0 + 384);

  return SiriSuggestionsIntelligence.FeatureServiceBuilder.build(clock:)();
}

uint64_t sub_1DA404FE0()
{
  v1 = *v0;
  v2 = *(*v0 + 504);
  v3 = *(*v0 + 496);
  v4 = *(*v0 + 480);
  v5 = *(*v0 + 472);
  v6 = *(*v0 + 464);
  v7 = *(*v0 + 456);
  v12 = *v0;

  sub_1DA3D9980(v7);
  __swift_destroy_boxed_opaque_existential_0((v1 + 96));
  v8 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA405174()
{
  v1 = *(v0 + 456);
  v3 = *(v0 + 440);
  v2 = *(v0 + 448);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t static SiriSuggestionsIntelligence.createFeatureService(clock:accountDetailsProvider:appUsageExtractor:deviceStateServiceProvider:usersegmentOverride:assetQuerier:brightnessClient:networkConnectionService:configProvider:possibleOwners:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 336) = v18;
  *(v8 + 344) = v19;
  *(v8 + 320) = v17;
  *(v8 + 304) = a7;
  *(v8 + 312) = a8;
  *(v8 + 288) = a5;
  *(v8 + 296) = a6;
  *(v8 + 272) = a3;
  *(v8 + 280) = a4;
  *(v8 + 256) = a1;
  *(v8 + 264) = a2;
  v9 = sub_1DA4214A4();
  *(v8 + 352) = v9;
  v10 = *(v9 - 8);
  *(v8 + 360) = v10;
  *(v8 + 368) = *(v10 + 64);
  *(v8 + 376) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0A8, &unk_1DA425510) - 8) + 64) + 15;
  *(v8 + 384) = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DA405310()
{
  v58 = *(v0 + 384);
  v59 = *(v0 + 352);
  v55 = *(v0 + 328);
  v56 = *(v0 + 336);
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v57 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v53 = *(v0 + 312);
  v54 = v5;
  type metadata accessor for SiriSuggestionsIntelligence.FeatureServiceBuilder();
  *(v0 + 392) = swift_initStackObject();
  v7 = SiriSuggestionsIntelligence.FeatureServiceBuilder.init()();
  v9 = v3[3];
  v8 = v3[4];
  v10 = __swift_project_boxed_opaque_existential_1(v3, v9);
  v11 = sub_1DA3B1874(v10, v7, v9, *(v8 + 8));

  sub_1DA3A7ED4(v5, v0 + 56);
  type metadata accessor for SiriSuggestionsIntelligence.TimeFeatureExtractor();
  v12 = swift_allocObject();
  sub_1DA3A1FF8((v0 + 56), v12 + 16);
  v13 = OUTLINED_FUNCTION_0_19();
  v16 = sub_1DA405A00(v13, v11, v14, v15);

  sub_1DA3A7ED4(v6, v0 + 96);
  sub_1DA3A7ED4(v53, v0 + 136);
  v17 = type metadata accessor for SiriSuggestionsIntelligence.MobileAssetsLatestSUVersionService();
  v18 = OUTLINED_FUNCTION_5_11();
  *(v18 + 16) = v4;
  *(v18 + 24) = v2;
  sub_1DA3A1FF8((v0 + 136), v18 + 32);
  *(v0 + 176) = v18;
  *(v0 + 200) = v17;
  *(v0 + 208) = &protocol witness table for SiriSuggestionsIntelligence.MobileAssetsLatestSUVersionService;
  type metadata accessor for SiriSuggestionsIntelligence.BuildVersionService();
  v19 = OUTLINED_FUNCTION_5_11();
  *(v19 + 56) = v4;
  *(v19 + 64) = v2;
  v52 = v2;
  sub_1DA3A1FF8((v0 + 176), v19 + 16);
  type metadata accessor for SiriSuggestionsIntelligence.DeviceFeatureExtractor();
  swift_allocObject();
  v20 = sub_1DA412AEC((v0 + 96), v19, v4, v2);
  swift_retain_n();
  OUTLINED_FUNCTION_1_16();
  v23 = sub_1DA405A00(v20, v16, v21, v22);

  v24 = type metadata accessor for SiriSuggestionsIntelligence.EnvironmentFeatureExtractor();
  v26 = v1[3];
  v25 = v1[4];
  v27 = __swift_project_boxed_opaque_existential_1(v1, v26);
  v28 = v55[3];
  v29 = v55[4];
  v30 = __swift_project_boxed_opaque_existential_1(v55, v28);
  sub_1DA3F1248(v4, v52, v27, v30, v54, v56, v24, v26, v28, v25, v29);
  OUTLINED_FUNCTION_2_17();
  v34 = sub_1DA405A00(v31, v23, v32, v33);

  sub_1DA405EB0(v57, v58);
  v35 = 0;
  if (__swift_getEnumTagSinglePayload(v58, 1, v59) != 1)
  {
    v36 = *(v0 + 376);
    v38 = *(v0 + 360);
    v37 = *(v0 + 368);
    v39 = *(v0 + 352);
    v40 = *(v38 + 32);
    v40(v36, *(v0 + 384), v39);
    v41 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v42 = swift_allocObject();
    v40(v42 + v41, v36, v39);
    type metadata accessor for SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor();
    v35 = OUTLINED_FUNCTION_4_17();
    *(v35 + 16) = sub_1DA40602C;
    *(v35 + 24) = v42;
  }

  v43 = type metadata accessor for SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor();
  *(v0 + 240) = v43;
  *(v0 + 248) = &protocol witness table for SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor;
  if (!v35)
  {
    v35 = OUTLINED_FUNCTION_4_17();
    *(v35 + 16) = sub_1DA3D1E2C;
    *(v35 + 24) = 0;
  }

  v44 = *(v0 + 344);
  *(v0 + 216) = v35;
  v45 = __swift_project_boxed_opaque_existential_1((v0 + 216), v43);
  v46 = sub_1DA3B1874(v45, v34, v43, &protocol witness table for SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor);

  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  type metadata accessor for SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor();
  v47 = swift_allocObject();
  *(v47 + 16) = v44;

  *(v0 + 400) = sub_1DA405AB8(v47, v46);

  v48 = swift_task_alloc();
  *(v0 + 408) = v48;
  *v48 = v0;
  v48[1] = sub_1DA405770;
  v49 = *(v0 + 256);
  v50 = *(v0 + 264);

  return SiriSuggestionsIntelligence.FeatureServiceBuilder.build(clock:)();
}

uint64_t sub_1DA405770()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 384);
  v4 = *(*v0 + 376);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

id static SiriSuggestionsIntelligence.getDeviceStateServiceProvider@Sendable ()@<X0>(void *a1@<X8>)
{
  result = MobileGestalt_get_current_device();
  v3 = result;
  if (result)
  {
    result = sub_1DA3A6990(0, &unk_1EE100F80, 0x1E69E5100);
    v4 = &protocol witness table for OS_MobileGestalt;
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v4;
  return result;
}

id sub_1DA405928@<X0>(void *a1@<X8>)
{
  result = MobileGestalt_get_current_device();
  v3 = result;
  if (result)
  {
    result = sub_1DA3A6990(0, &unk_1EE100F80, 0x1E69E5100);
    v4 = &protocol witness table for OS_MobileGestalt;
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v4;
  return result;
}

uint64_t sub_1DA405A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  swift_beginAccess();

  sub_1DA3AFD18();
  v8 = *(*(a2 + 16) + 16);
  sub_1DA3AFDBC(v8);
  sub_1DA405B74(v8, a1, (a2 + 16), a3, a4, sub_1DA3B2D10);
  swift_endAccess();
}

uint64_t sub_1DA405AB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_1DA3AFD00();
  v4 = *(*(a2 + 24) + 16);
  sub_1DA3AFDA4(v4);
  sub_1DA405B74(v4, a1, (a2 + 24), type metadata accessor for SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor, &protocol witness table for SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor, sub_1DA3B2D10);
  swift_endAccess();
}

uint64_t sub_1DA405B74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void *, uint64_t))
{
  v13[3] = a4(0);
  v13[4] = a5;
  v13[0] = a2;
  v11 = *a3;
  *(v11 + 16) = a1 + 1;
  return a6(v13, v11 + 40 * a1 + 32);
}

void *sub_1DA405BF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a1;
  v38[3] = sub_1DA3A6990(0, &qword_1EE100F60, 0x1E69977D0);
  v38[4] = &protocol witness table for BrightnessSystemClient;
  v38[0] = a3;
  v37[3] = type metadata accessor for SiriSuggestionsIntelligence.DefaultNetworkConnectionService();
  v37[4] = &protocol witness table for SiriSuggestionsIntelligence.DefaultNetworkConnectionService;
  v37[0] = a4;
  type metadata accessor for SiriSuggestionsIntelligence.NowPlayingService();
  v11 = a3;

  v28 = sub_1DA408D88(a5, a6);
  type metadata accessor for SiriSuggestionsIntelligence.MotionService();
  v12 = sub_1DA3CD4AC();
  type metadata accessor for SiriSuggestionsIntelligence.FocusModeService();
  v13 = sub_1DA410420();
  type metadata accessor for SiriSuggestionsIntelligence.CarPlayService();
  v14 = sub_1DA3F191C();
  type metadata accessor for SiriSuggestionsIntelligence.LocationService();
  v15 = sub_1DA41DD70();
  sub_1DA3A7ED4(v37, v36);
  v16 = _s19DefaultAudioServiceCMa();
  v17 = swift_allocObject();
  sub_1DA3A7ED4(v38, &v33);
  v18 = type metadata accessor for SiriSuggestionsIntelligence.DefaultScreenService();
  v19 = swift_allocObject();
  sub_1DA3A1FF8(&v33, v19 + 16);
  v34 = v16;
  v35 = &off_1F55E9E60;
  *&v33 = v17;
  v32 = &protocol witness table for SiriSuggestionsIntelligence.DefaultScreenService;
  v31 = v18;
  *&v30 = v19;
  type metadata accessor for SiriSuggestionsIntelligence.EnvironmentFeatureExtractor();
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v16);
  v22 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v20[17] = v16;
  v20[18] = &off_1F55E9E60;
  v20[14] = v26;
  v20[2] = v28;
  v20[3] = v12;
  v20[4] = v13;
  v20[5] = v14;
  v20[6] = v15;
  sub_1DA3A1FF8(v36, (v20 + 7));
  v20[12] = v29;
  v20[13] = a2;
  sub_1DA3A1FF8(&v30, (v20 + 19));

  __swift_destroy_boxed_opaque_existential_0(&v33);
  __swift_destroy_boxed_opaque_existential_0(v38);
  __swift_destroy_boxed_opaque_existential_0(v37);
  return v20;
}

uint64_t sub_1DA405EB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0A8, &unk_1DA425510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = sub_1DA4214A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t OUTLINED_FUNCTION_4_17()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_11()
{

  return swift_allocObject();
}

uint64_t sub_1DA4060C0()
{
  type metadata accessor for SiriSuggestionsIntelligence.NoopBrightnessClient();
  result = swift_initStaticObject();
  static SiriSuggestionsIntelligence.NoopBrightnessClient.instance = result;
  return result;
}

uint64_t *SiriSuggestionsIntelligence.NoopBrightnessClient.instance.unsafeMutableAddressor()
{
  if (qword_1ECBAE828 != -1)
  {
    swift_once();
  }

  return &static SiriSuggestionsIntelligence.NoopBrightnessClient.instance;
}

double SiriSuggestionsIntelligence.NoopBrightnessClient.copyProperty(forKey:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t SiriSuggestionsIntelligence.DefaultScreenService.getBrightness()()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 8))(v60, 0xD000000000000011, 0x80000001DA42E570, v2, v3);
  OUTLINED_FUNCTION_6_13(v4, v5, v6, v7);
  v8 = v58;
  v9 = sub_1DA406704(v57);
  if (!v8)
  {
    v13 = v1[5];
    v14 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v13);
    (*(v14 + 8))(v57, 0x656E746867697242, 0xEA00000000007373, v13, v14);
    v9 = sub_1DA40676C(v57, v60);
  }

  OUTLINED_FUNCTION_6_13(v9, v10, v11, v12);
  if (v58)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF938, &qword_1DA429448);
    v15 = OUTLINED_FUNCTION_3_19();
    if (v15)
    {
      v19 = v56[0];
      v56[0] = 0x656E746867697242;
      v56[1] = 0xEA00000000007373;
      sub_1DA422044();
      sub_1DA3EA288(v57, v19, v56);

      sub_1DA3B8210(v57);
      v20 = v56;
      goto LABEL_10;
    }
  }

  else
  {
    v15 = sub_1DA406704(v57);
  }

  OUTLINED_FUNCTION_6_13(v15, v16, v17, v18);
  if (!v58)
  {
    sub_1DA406704(v57);
    goto LABEL_24;
  }

  sub_1DA3F7198();
  if ((OUTLINED_FUNCTION_3_19() & 1) == 0)
  {
LABEL_24:
    if (qword_1EE102E00 != -1)
    {
      OUTLINED_FUNCTION_12();
    }

    v35 = sub_1DA421A94();
    __swift_project_value_buffer(v35, static Logger.extractionCategory);
    v36 = sub_1DA421A74();
    v37 = sub_1DA421F54();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_34;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v59 = v39;
    v40 = OUTLINED_FUNCTION_7_13(4.8149e-34);
    OUTLINED_FUNCTION_6_13(v40, v41, v42, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF270, &qword_1DA429440);
    v44 = sub_1DA421BB4();
    v46 = sub_1DA3A5FE8(v44, v45, &v59);

    *(v38 + 4) = v46;
    v47 = "unable to get brightness value for %s";
    goto LABEL_33;
  }

  v21 = MEMORY[0x1E69E63B0];
  [v56[0] doubleValue];
  v23 = v22;
  v58 = v21;

  v57[0] = v23;
  v20 = v57;
LABEL_10:
  v24 = sub_1DA40676C(v20, v60);
  OUTLINED_FUNCTION_6_13(v24, v25, v26, v27);
  if (!v58)
  {
    sub_1DA406704(v57);
    goto LABEL_29;
  }

  if ((OUTLINED_FUNCTION_3_19() & 1) == 0)
  {
LABEL_29:
    if (qword_1EE102E00 != -1)
    {
      OUTLINED_FUNCTION_12();
    }

    v48 = sub_1DA421A94();
    __swift_project_value_buffer(v48, static Logger.extractionCategory);
    v36 = sub_1DA421A74();
    v37 = sub_1DA421F54();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_34;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v59 = v39;
    v49 = OUTLINED_FUNCTION_7_13(4.8149e-34);
    OUTLINED_FUNCTION_6_13(v49, v50, v51, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF270, &qword_1DA429440);
    v53 = sub_1DA421BB4();
    v55 = sub_1DA3A5FE8(v53, v54, &v59);

    *(v38 + 4) = v55;
    v47 = "unable to convert %s to Double)";
LABEL_33:
    _os_log_impl(&dword_1DA39E000, v36, v37, v47, v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x1DA74E430](v39, -1, -1);
    MEMORY[0x1DA74E430](v38, -1, -1);
LABEL_34:

    sub_1DA406704(v60);
    return 3;
  }

  v28 = v56[0];
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v29 = sub_1DA421A94();
  __swift_project_value_buffer(v29, static Logger.extractionCategory);
  v30 = sub_1DA421A74();
  v31 = sub_1DA421F54();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = *&v28;
    _os_log_impl(&dword_1DA39E000, v30, v31, "ScreenService: got device brightness as: %f", v32, 0xCu);
    MEMORY[0x1DA74E430](v32, -1, -1);
  }

  sub_1DA406704(v60);
  if (*&v28 <= 0.33)
  {
    return 0;
  }

  if (*&v28 > 0.66 || *&v28 <= 0.33)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1DA406694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF270, &qword_1DA429440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA406704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF270, &qword_1DA429440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA40676C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF270, &qword_1DA429440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SiriSuggestionsIntelligence.DefaultScreenService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1DA406834(char a1)
{
  result = 7827308;
  switch(a1)
  {
    case 1:
      result = 0x6D756964656DLL;
      break;
    case 2:
      result = 1751607656;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA4068D0(uint64_t a1)
{
  v2 = sub_1DA40768C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA40690C(uint64_t a1)
{
  v2 = sub_1DA40768C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA406948(uint64_t a1)
{
  v2 = sub_1DA407734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA406984(uint64_t a1)
{
  v2 = sub_1DA407734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA4069C0(uint64_t a1)
{
  v2 = sub_1DA4077DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA4069FC(uint64_t a1)
{
  v2 = sub_1DA4077DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA406A38(uint64_t a1)
{
  v2 = sub_1DA407788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA406A74(uint64_t a1)
{
  v2 = sub_1DA407788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA406AB0(uint64_t a1)
{
  v2 = sub_1DA4076E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA406AEC(uint64_t a1)
{
  v2 = sub_1DA4076E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.ScreenBrightness.encode(to:)(void *a1, uint64_t a2)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF940, &qword_1DA429450);
  v4 = OUTLINED_FUNCTION_3_1(v3);
  v53 = v5;
  v54 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_5();
  v52 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF948, &qword_1DA429458);
  v11 = OUTLINED_FUNCTION_3_1(v10);
  v50 = v12;
  v51 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10_5();
  v49 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF950, &qword_1DA429460);
  v18 = OUTLINED_FUNCTION_3_1(v17);
  v47 = v19;
  v48 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF958, &qword_1DA429468);
  OUTLINED_FUNCTION_3_1(v25);
  v46 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v45 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF960, &qword_1DA429470);
  OUTLINED_FUNCTION_3_1(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v45 - v38;
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA40768C();
  sub_1DA422494();
  switch(v55)
  {
    case 1:
      v57 = 1;
      sub_1DA407788();
      OUTLINED_FUNCTION_5_12();
      (*(v47 + 8))(v24, v48);
      break;
    case 2:
      v58 = 2;
      sub_1DA407734();
      v41 = v49;
      OUTLINED_FUNCTION_5_12();
      v43 = v50;
      v42 = v51;
      goto LABEL_5;
    case 3:
      v59 = 3;
      sub_1DA4076E0();
      v41 = v52;
      OUTLINED_FUNCTION_5_12();
      v43 = v53;
      v42 = v54;
LABEL_5:
      (*(v43 + 8))(v41, v42);
      break;
    default:
      v56 = 0;
      sub_1DA4077DC();
      OUTLINED_FUNCTION_5_12();
      (*(v46 + 8))(v31, v25);
      break;
  }

  return (*(v34 + 8))(v39, v32);
}

uint64_t SiriSuggestionsIntelligence.ScreenBrightness.init(from:)(uint64_t *a1)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF978, &qword_1DA429478);
  OUTLINED_FUNCTION_3_1(v78);
  v75 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_5();
  v77 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF980, &qword_1DA429480);
  v8 = OUTLINED_FUNCTION_3_1(v7);
  v72 = v9;
  v73 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_5();
  v74 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF988, &qword_1DA429488);
  v15 = OUTLINED_FUNCTION_3_1(v14);
  v70 = v16;
  v71 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF990, &qword_1DA429490);
  OUTLINED_FUNCTION_3_1(v22);
  v69 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v64 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF998, &unk_1DA429498);
  OUTLINED_FUNCTION_3_1(v29);
  v76 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v64 - v34;
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA40768C();
  v37 = v79;
  sub_1DA422484();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v66 = v22;
  v67 = v28;
  v68 = v21;
  v38 = v77;
  v39 = v78;
  v79 = a1;
  v40 = v35;
  v41 = sub_1DA4222C4();
  result = sub_1DA3C2AA0(v41, 0);
  if (v44 == v45 >> 1)
  {
    goto LABEL_8;
  }

  v65 = 0;
  if (v44 >= (v45 >> 1))
  {
    __break(1u);
    return result;
  }

  v46 = *(v43 + v44);
  sub_1DA3C2A9C(v44 + 1);
  v48 = v47;
  v50 = v49;
  swift_unknownObjectRelease();
  if (v48 != v50 >> 1)
  {
LABEL_8:
    v56 = sub_1DA4220F4();
    swift_allocError();
    v58 = v57;
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620) + 48);
    *v58 = &type metadata for SiriSuggestionsIntelligence.ScreenBrightness;
    sub_1DA422254();
    sub_1DA4220E4();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69E6AF8], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v76 + 8))(v40, v29);
    a1 = v79;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v51 = v46;
  v52 = v46;
  v54 = v75;
  v53 = v76;
  switch(v52)
  {
    case 1:
      v81 = 1;
      sub_1DA407788();
      v60 = v68;
      OUTLINED_FUNCTION_14_1();
      swift_unknownObjectRelease();
      v62 = v70;
      v61 = v71;
      goto LABEL_18;
    case 2:
      v82 = 2;
      sub_1DA407734();
      v60 = v74;
      OUTLINED_FUNCTION_14_1();
      swift_unknownObjectRelease();
      v62 = v72;
      v61 = v73;
LABEL_18:
      (*(v62 + 8))(v60, v61);
      goto LABEL_19;
    case 3:
      v83 = 3;
      sub_1DA4076E0();
      v63 = v65;
      sub_1DA422244();
      if (v63)
      {
        (*(v53 + 8))(v40, v29);
        swift_unknownObjectRelease();
        a1 = v79;
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }

      swift_unknownObjectRelease();
      (*(v54 + 8))(v38, v39);
LABEL_19:
      (*(v53 + 8))(v40, v29);
      __swift_destroy_boxed_opaque_existential_0(v79);
      result = v51;
      break;
    default:
      v80 = 0;
      sub_1DA4077DC();
      v55 = v67;
      OUTLINED_FUNCTION_14_1();
      swift_unknownObjectRelease();
      (*(v69 + 8))(v55, v66);
      goto LABEL_19;
  }

  return result;
}

uint64_t sub_1DA40752C()
{
  v1 = *v0;
  sub_1DA422434();
  SiriSuggestionsIntelligence.ScreenBrightness.hash(into:)(v3, v1);
  return sub_1DA422474();
}

uint64_t sub_1DA407570@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SiriSuggestionsIntelligence.ScreenBrightness.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double sub_1DA4075F8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    v4 = sub_1DA421B64();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 copyPropertyForKey_];

  if (v5)
  {
    sub_1DA421FF4();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_1DA40768C()
{
  result = qword_1EE102388;
  if (!qword_1EE102388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102388);
  }

  return result;
}

unint64_t sub_1DA4076E0()
{
  result = qword_1ECBAF968;
  if (!qword_1ECBAF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF968);
  }

  return result;
}

unint64_t sub_1DA407734()
{
  result = qword_1ECBAF970;
  if (!qword_1ECBAF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF970);
  }

  return result;
}

unint64_t sub_1DA407788()
{
  result = qword_1EE102348;
  if (!qword_1EE102348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102348);
  }

  return result;
}

unint64_t sub_1DA4077DC()
{
  result = qword_1EE102370;
  if (!qword_1EE102370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102370);
  }

  return result;
}

unint64_t sub_1DA407834()
{
  result = qword_1ECBAF9A0;
  if (!qword_1ECBAF9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF9A0);
  }

  return result;
}

unint64_t sub_1DA40788C()
{
  result = qword_1ECBAF9A8;
  if (!qword_1ECBAF9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAF9B0, &qword_1DA429580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF9A8);
  }

  return result;
}

_BYTE *sub_1DA407948(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA407A68()
{
  result = qword_1ECBAF9B8;
  if (!qword_1ECBAF9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF9B8);
  }

  return result;
}

unint64_t sub_1DA407AC0()
{
  result = qword_1EE102360;
  if (!qword_1EE102360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102360);
  }

  return result;
}

unint64_t sub_1DA407B18()
{
  result = qword_1EE102368;
  if (!qword_1EE102368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102368);
  }

  return result;
}

unint64_t sub_1DA407B70()
{
  result = qword_1EE102338;
  if (!qword_1EE102338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102338);
  }

  return result;
}

unint64_t sub_1DA407BC8()
{
  result = qword_1EE102340;
  if (!qword_1EE102340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102340);
  }

  return result;
}

unint64_t sub_1DA407C20()
{
  result = qword_1EE102350;
  if (!qword_1EE102350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102350);
  }

  return result;
}

unint64_t sub_1DA407C78()
{
  result = qword_1EE102358;
  if (!qword_1EE102358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102358);
  }

  return result;
}

unint64_t sub_1DA407CD0()
{
  result = qword_1EE102328;
  if (!qword_1EE102328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102328);
  }

  return result;
}

unint64_t sub_1DA407D28()
{
  result = qword_1EE102330;
  if (!qword_1EE102330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102330);
  }

  return result;
}

unint64_t sub_1DA407D80()
{
  result = qword_1EE102378;
  if (!qword_1EE102378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102378);
  }

  return result;
}

unint64_t sub_1DA407DD8()
{
  result = qword_1EE102380;
  if (!qword_1EE102380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102380);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_19()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return sub_1DA4222D4();
}

uint64_t OUTLINED_FUNCTION_6_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  return sub_1DA406694(va1, va);
}

uint64_t OUTLINED_FUNCTION_7_13(float a1)
{
  *v1 = a1;

  return swift_beginAccess();
}

uint64_t sub_1DA407EAC()
{
  v0 = sub_1DA421B94();
  v2 = v1;
  if (v0 == sub_1DA421B94() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_3_20();
  }

  return v5 & 1;
}

uint64_t sub_1DA407F24()
{
  OUTLINED_FUNCTION_4_18();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v2 = 0xE600000000000000;
      v5 = 0x6D6F74737563;
      break;
    case 2:
      v5 = 0x746C7561666564;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v5 = 0x7065656C73;
      break;
    case 4:
      v6 = 1986622052;
      goto LABEL_13;
    case 5:
      v2 = 0xE800000000000000;
      v5 = 0x6573696372657865;
      break;
    case 6:
      v2 = 0xE400000000000000;
      v5 = 1802661751;
      break;
    case 7:
      v5 = 0x6C616E6F73726570;
      v2 = 0xEC000000656D6954;
      break;
    case 8:
      v6 = 1684104562;
LABEL_13:
      v5 = v6 | 0x676E6900000000;
      break;
    case 9:
      v2 = 0xE600000000000000;
      v5 = 0x676E696D6167;
      break;
    case 10:
      v5 = 0x6E6C7566646E696DLL;
      v2 = 0xEB00000000737365;
      break;
    case 11:
      v5 = 0xD000000000000013;
      v2 = 0x80000001DA42C550;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v7 = 0xE600000000000000;
      v1 = 0x6D6F74737563;
      break;
    case 2:
      v1 = 0x746C7561666564;
      break;
    case 3:
      v7 = 0xE500000000000000;
      v1 = 0x7065656C73;
      break;
    case 4:
      v8 = 1986622052;
      goto LABEL_26;
    case 5:
      v7 = 0xE800000000000000;
      v1 = 0x6573696372657865;
      break;
    case 6:
      v7 = 0xE400000000000000;
      v1 = 1802661751;
      break;
    case 7:
      v1 = 0x6C616E6F73726570;
      v7 = 0xEC000000656D6954;
      break;
    case 8:
      v8 = 1684104562;
LABEL_26:
      v1 = v8 | 0x676E6900000000;
      break;
    case 9:
      v7 = 0xE600000000000000;
      v1 = 0x676E696D6167;
      break;
    case 10:
      v1 = 0x6E6C7566646E696DLL;
      v7 = 0xEB00000000737365;
      break;
    case 11:
      v1 = 0xD000000000000013;
      v7 = 0x80000001DA42C550;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_20();
  }

  return v10 & 1;
}

uint64_t sub_1DA4081A8(unsigned __int8 a1, char a2)
{
  v2 = 0x65636E6169726176;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1851876717;
    }

    else
    {
      v4 = 0x5364656C706D6173;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEB00000000657A69;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x65636E6169726176;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1851876717;
    }

    else
    {
      v2 = 0x5364656C706D6173;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEB00000000657A69;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20();
  }

  return v8 & 1;
}

uint64_t sub_1DA408298(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000072656B61;
  v3 = 0x6570536C61636F6CLL;
  v4 = a1;
  v5 = 0x6570536C61636F6CLL;
  v6 = 0xEC00000072656B61;
  switch(v4)
  {
    case 1:
      v5 = 0x6E6F687064616568;
      v6 = 0xEA00000000007365;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v5 = 0x72656B61657073;
      break;
    case 3:
      v6 = 0xE200000000000000;
      v5 = 30324;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v5 = 0x6E6565726373;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_10_9();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6E6F687064616568;
      v2 = 0xEA00000000007365;
      break;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x72656B61657073;
      break;
    case 3:
      v2 = 0xE200000000000000;
      v3 = 30324;
      break;
    case 4:
      v2 = 0xE600000000000000;
      v3 = 0x6E6565726373;
      break;
    case 5:
      v2 = 0xE700000000000000;
      OUTLINED_FUNCTION_4_18();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_11_9();
  }

  return v8 & 1;
}

uint64_t sub_1DA408410(char a1, char a2)
{
  v3 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1);
  v5 = v4;
  if (v3 == SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20();
  }

  return v8 & 1;
}

uint64_t sub_1DA408488(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x7669736E65707865;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x736E657078656E69;
    }

    else
    {
      v5 = 0x69617274736E6F63;
    }

    if (v4 == 1)
    {
      v6 = 0xEB00000000657669;
    }

    else
    {
      v6 = 0xEB0000000064656ELL;
    }
  }

  else
  {
    v5 = 0x7669736E65707865;
    v6 = 0xE900000000000065;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x736E657078656E69;
    }

    else
    {
      v3 = 0x69617274736E6F63;
    }

    if (a2 == 1)
    {
      v2 = 0xEB00000000657669;
    }

    else
    {
      v2 = 0xEB0000000064656ELL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_11_9();
  }

  return v8 & 1;
}

uint64_t sub_1DA40859C(unsigned __int8 a1, char a2)
{
  v2 = 0x6F69647561;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6F69647561;
  switch(v4)
  {
    case 1:
      v5 = 0x6F65646976;
      break;
    case 2:
      v5 = 0x636973756DLL;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_10_9();
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6F65646976;
      break;
    case 2:
      v2 = 0x636973756DLL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_4_18();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20();
  }

  return v8 & 1;
}

uint64_t sub_1DA4086A0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x797469746E656469;
  }

  else
  {
    v3 = 0x796142657669616ELL;
  }

  if (v2)
  {
    v4 = 0xEA00000000007365;
  }

  else
  {
    v4 = 0xED00006C65646F4DLL;
  }

  if (a2)
  {
    v5 = 0x797469746E656469;
  }

  else
  {
    v5 = 0x796142657669616ELL;
  }

  if (a2)
  {
    v6 = 0xED00006C65646F4DLL;
  }

  else
  {
    v6 = 0xEA00000000007365;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20();
  }

  return v8 & 1;
}

uint64_t sub_1DA408744(unsigned __int8 a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x7365536C61746F74;
    }

    else
    {
      v3 = 0x6D69546C61746F74;
    }

    if (v2 == 1)
    {
      v4 = 0xED0000736E6F6973;
    }

    else
    {
      v4 = 0xE900000000000065;
    }
  }

  else
  {
    v3 = 0xD000000000000014;
    v4 = 0x80000001DA42C420;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x7365536C61746F74;
    }

    else
    {
      v5 = 0x6D69546C61746F74;
    }

    if (a2 == 1)
    {
      v6 = 0xED0000736E6F6973;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else
  {
    v5 = 0xD000000000000014;
    v6 = 0x80000001DA42C420;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20();
  }

  return v8 & 1;
}

uint64_t sub_1DA408840(unsigned __int8 a1, char a2)
{
  v2 = 0x676E696E726F6DLL;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x676E696E726F6DLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x79616464696DLL;
      break;
    case 2:
      v5 = 0x6F6F6E7265746661;
      v3 = 0xE90000000000006ELL;
      break;
    case 3:
      v5 = 0x676E696E657665;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x79616464696DLL;
      break;
    case 2:
      v2 = 0x6F6F6E7265746661;
      v6 = 0xE90000000000006ELL;
      break;
    case 3:
      v2 = 0x676E696E657665;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20();
  }

  return v8 & 1;
}

uint64_t sub_1DA408A08(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1DA40BE08(a4, a5);
  sub_1DA421CD4();
  sub_1DA421CD4();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_11_9();
  }

  return v8 & 1;
}

uint64_t SiriSuggestionsIntelligence.MediaDeviceType.rawValue.getter(char a1)
{
  result = 0x6570536C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x6E6F687064616568;
      break;
    case 2:
      result = 0x72656B61657073;
      break;
    case 3:
      result = 30324;
      break;
    case 4:
      result = 0x6E6565726373;
      break;
    case 5:
      result = OUTLINED_FUNCTION_10_9();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA408B88(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DA408BA8, 0, 0);
}

uint64_t sub_1DA408BA8()
{
  v1 = *(*(v0 + 64) + 16);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1DA408C58;

  return sub_1DA41CF74(v0 + 16);
}

uint64_t sub_1DA408C58()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 56);
  v4 = *v0;

  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  *(v3 + 32) = *(v1 + 48);
  *v3 = v5;
  *(v3 + 16) = v6;
  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_1DA408D88(uint64_t a1, uint64_t a2)
{
  v4 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v5 = [v4 NowPlaying];
  swift_unknownObjectRelease();
  sub_1DA3A7ED4(a1, v9);
  sub_1DA3A7ED4(a2, v8);
  v6 = swift_allocObject();
  sub_1DA408E58(v5, v9, v8);
  return v6;
}

uint64_t sub_1DA408E58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  sub_1DA3A7ED4(a3, v10);
  v8 = swift_allocObject();
  sub_1DA3B2D10(v10, v8 + 16);
  sub_1DA421984();

  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAA0, &qword_1DA42A280);
  swift_allocObject();
  *(v4 + 16) = sub_1DA420960(a1, v10, sub_1DA408F5C, 0);
  return v4;
}

void sub_1DA408F5C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_19;
  }

  v5 = a2;
  if ([v5 playbackState] != 1)
  {

LABEL_19:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v6 = [v5 outputDevices];
  sub_1DA40BDC4();
  v7 = sub_1DA421D34();

  v8 = sub_1DA3A6D84(v7);
  if (v8)
  {
    v9 = v8;
    v27 = v5;
    v28 = a1;
    v29 = a3;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1DA3B05B8();
    if (v9 < 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v10 = 0;
    v11 = v30;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA74D830](v10, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v10 + 32);
      }

      v13 = v12;
      if ([v12 type] == 4)
      {

        v14 = 0;
      }

      else
      {
        v15 = [v13 subType];

        if (v15 - 1 > 0x13)
        {
          v14 = 5;
        }

        else
        {
          v14 = byte_1DA42A292[v15 - 1];
        }
      }

      v16 = *(v30 + 16);
      if (v16 >= *(v30 + 24) >> 1)
      {
        sub_1DA3B05B8();
      }

      ++v10;
      *(v30 + 16) = v16 + 1;
      *(v30 + v16 + 32) = v14;
    }

    while (v9 != v10);

    a1 = v28;
    a3 = v29;
    v5 = v27;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v11 + 16))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_23:
      v17 = *(v11 + 16);
      if (v17 >= *(v11 + 24) >> 1)
      {
        sub_1DA3A5D44();
        v11 = v26;
      }

      *(v11 + 16) = v17 + 1;
      *(v11 + v17 + 32) = 0;
      goto LABEL_26;
    }

LABEL_34:
    sub_1DA3A5D44();
    v11 = v25;
    goto LABEL_23;
  }

LABEL_26:
  v18 = v5;
  v19 = sub_1DA40B09C(v18);
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0x6E776F6E6B6E75;
  }

  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0xE700000000000000;
  }

  v23 = v18;
  v24 = sub_1DA409210();

  *a3 = v21;
  *(a3 + 8) = v22;
  *(a3 + 16) = v24;
  *(a3 + 24) = a1;
  *(a3 + 32) = v11;
}

unint64_t sub_1DA409210()
{
  v2 = [v0 itemMediaSubtype] - 1;
  if (v2 < 6)
  {
    return 0x10000010102uLL >> (8 * v2);
  }

  result = sub_1DA40B038(v0);
  if (!*MEMORY[0x1E69B0DF0])
  {
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v5 = result;
  v6 = v4;
  v7 = *MEMORY[0x1E69B0DF0];
  v8 = sub_1DA421BA4();
  if (v6)
  {
    if (v8 == v5 && v6 == v9)
    {
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_2_18();
    result = OUTLINED_FUNCTION_14_7();
    if (v1)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  if (!*MEMORY[0x1E69B0DD0])
  {
    goto LABEL_56;
  }

  v11 = *MEMORY[0x1E69B0DD0];
  v12 = sub_1DA421BA4();
  if (v6)
  {
    if (v12 == v5 && v6 == v13)
    {
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_2_18();
    result = OUTLINED_FUNCTION_14_7();
    if (v1)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  if (!*MEMORY[0x1E69B0DE8])
  {
    goto LABEL_57;
  }

  v15 = *MEMORY[0x1E69B0DE8];
  v16 = sub_1DA421BA4();
  if (v6)
  {
    if (v16 == v5 && v6 == v17)
    {

LABEL_41:

      return 2;
    }

    OUTLINED_FUNCTION_2_18();
    result = OUTLINED_FUNCTION_14_7();
    if (v1)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  if (!*MEMORY[0x1E69B0DC8])
  {
    goto LABEL_58;
  }

  v19 = *MEMORY[0x1E69B0DC8];
  v20 = sub_1DA421BA4();
  if (!v6)
  {

    goto LABEL_43;
  }

  if (v20 == v5 && v6 == v21)
  {
LABEL_38:

LABEL_39:

    return 0;
  }

  OUTLINED_FUNCTION_2_18();
  result = OUTLINED_FUNCTION_14_7();
  if (v1)
  {
    goto LABEL_39;
  }

LABEL_43:
  if (*MEMORY[0x1E69B0DF8])
  {
    v23 = *MEMORY[0x1E69B0DF8];
    v24 = sub_1DA421BA4();
    if (v6)
    {
      if (v24 == v5 && v6 == v25)
      {

        return 1;
      }

      v27 = OUTLINED_FUNCTION_2_18();

      if (v27)
      {
        return 1;
      }
    }

    else
    {
    }

    return 3;
  }

LABEL_59:
  __break(1u);
  return result;
}

double sub_1DA409444(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 8))(v8, v3, v4);
  if (!v1)
  {
    v5 = v9;
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v2 = (*(v6 + 48))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  return v2;
}

uint64_t SiriSuggestionsIntelligence.NowPlayingService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SiriSuggestionsIntelligence.NowPlayingService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DA409558(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6979616C50746F6ELL && a2 == 0xEA0000000000676ELL;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6979616C70 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

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

uint64_t sub_1DA409628(char a1)
{
  if (a1)
  {
    return 0x676E6979616C70;
  }

  else
  {
    return 0x6979616C50746F6ELL;
  }
}

uint64_t sub_1DA40966C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA409558(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA409694(uint64_t a1)
{
  v2 = sub_1DA40A67C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA4096D0(uint64_t a1)
{
  v2 = sub_1DA40A67C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA40970C(uint64_t a1)
{
  v2 = sub_1DA40A778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA409748(uint64_t a1)
{
  v2 = sub_1DA40A778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA409784(uint64_t a1)
{
  v2 = sub_1DA40A6D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA4097C0(uint64_t a1)
{
  v2 = sub_1DA40A6D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static SiriSuggestionsIntelligence.NowPlaying.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return *(a2 + 8) == 0;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *a1 == *a2 && v3 == v4;
  return (v11 || (sub_1DA4223A4() & 1) != 0) && (sub_1DA40859C(v5, v8) & 1) != 0 && v6 == v9 && (sub_1DA40A474(v7, v10) & 1) != 0;
}

uint64_t static SiriSuggestionsIntelligence.NowPlayingMediaDetails.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1DA4223A4() & 1) == 0 || (sub_1DA40859C(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);

  return sub_1DA40A474(v5, v6);
}

uint64_t SiriSuggestionsIntelligence.NowPlaying.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF9C0, &qword_1DA429A80);
  v6 = OUTLINED_FUNCTION_3_1(v5);
  v35 = v7;
  v36 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF9C8, &qword_1DA429A88);
  v12 = OUTLINED_FUNCTION_3_1(v11);
  v33 = v13;
  v34 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF9D0, &qword_1DA429A90);
  OUTLINED_FUNCTION_3_1(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v32 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA40A67C();
  sub_1DA422494();
  v28 = v3[1];
  if (v28)
  {
    v29 = *v3;
    LOBYTE(v37) = 1;
    sub_1DA40A6D0();
    sub_1DA4222D4();
    v37 = v29;
    v38 = v28;
    v39 = *(v3 + 1);
    v40 = v3[4];
    sub_1DA40A724();
    v30 = v36;
    sub_1DA422334();
    (*(v35 + 8))(v2, v30);
  }

  else
  {
    LOBYTE(v37) = 0;
    sub_1DA40A778();
    sub_1DA4222D4();
    (*(v33 + 8))(v18, v34);
  }

  return (*(v21 + 8))(v26, v19);
}

uint64_t SiriSuggestionsIntelligence.NowPlaying.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF9E8, &qword_1DA429A98);
  OUTLINED_FUNCTION_3_1(v60);
  v57 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_16();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF9F0, &qword_1DA429AA0);
  OUTLINED_FUNCTION_3_1(v8);
  v56 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF9F8, &unk_1DA429AA8);
  OUTLINED_FUNCTION_3_1(v15);
  v59 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51[-v20];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA40A67C();
  v23 = v66;
  sub_1DA422484();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v53 = v8;
  v54 = v14;
  v55 = v2;
  v66 = a1;
  v24 = sub_1DA4222C4();
  result = sub_1DA3C2AA0(v24, 0);
  if (v27 == v28 >> 1)
  {
    goto LABEL_7;
  }

  if (v27 >= (v28 >> 1))
  {
    __break(1u);
    return result;
  }

  v52 = *(v26 + v27);
  sub_1DA3C2A9C(v27 + 1);
  v30 = v29;
  v32 = v31;
  swift_unknownObjectRelease();
  v33 = v58;
  if (v30 != v32 >> 1)
  {
LABEL_7:
    v34 = sub_1DA4220F4();
    swift_allocError();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620) + 48);
    *v36 = &type metadata for SiriSuggestionsIntelligence.NowPlaying;
    sub_1DA422254();
    sub_1DA4220E4();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    v38 = OUTLINED_FUNCTION_1_17();
    v39(v38);
    a1 = v66;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v52)
  {
    LOBYTE(v61) = 1;
    sub_1DA40A6D0();
    OUTLINED_FUNCTION_7_14();
    sub_1DA422244();
    sub_1DA40B10C();
    sub_1DA4222B4();
    v41 = v59;
    swift_unknownObjectRelease();
    v44 = OUTLINED_FUNCTION_12_8();
    v45(v44);
    (*(v41 + 8))(v21, v15);
    v46 = v61;
    v47 = v62;
    v48 = v63;
    v49 = v64;
    v50 = v65;
    v33 = v58;
  }

  else
  {
    LOBYTE(v61) = 0;
    sub_1DA40A778();
    v40 = v54;
    OUTLINED_FUNCTION_7_14();
    sub_1DA422244();
    v50 = 0;
    swift_unknownObjectRelease();
    (*(v56 + 8))(v40, v53);
    v42 = OUTLINED_FUNCTION_1_17();
    v43(v42);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v66);
  *v33 = v46;
  v33[1] = v47;
  v33[2] = v48;
  v33[3] = v49;
  v33[4] = v50;
  return result;
}

uint64_t sub_1DA40A160(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954616964656DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6964654D6D657469 && a2 == 0xED00006570795461;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5064657472617473 && a2 == 0xEB0000000079616CLL;
      if (v7 || (sub_1DA4223A4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DA4223A4();

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

uint64_t sub_1DA40A2CC(char a1)
{
  result = 0x707954616964656DLL;
  switch(a1)
  {
    case 1:
      result = 0x6964654D6D657469;
      break;
    case 2:
      result = 0x5064657472617473;
      break;
    case 3:
      result = 0x73656369766564;
      break;
    default:
      return result;
  }

  return result;
}

double sub_1DA40A36C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  SiriSuggestionsIntelligence.NowPlaying.init(from:)(a1, v6);
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

uint64_t sub_1DA40A3D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA40A160(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA40A3FC(uint64_t a1)
{
  v2 = sub_1DA40B160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA40A438(uint64_t a1)
{
  v2 = sub_1DA40B160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA40A474(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v5 = *v4;
      v6 = 0xEC00000072656B61;
      v7 = 0x6570536C61636F6CLL;
      switch(*v3)
      {
        case 1:
          v7 = 0x6E6F687064616568;
          v6 = 0xEA00000000007365;
          break;
        case 2:
          v6 = 0xE700000000000000;
          v7 = 0x72656B61657073;
          break;
        case 3:
          v6 = 0xE200000000000000;
          v7 = 30324;
          break;
        case 4:
          v6 = 0xE600000000000000;
          v7 = 0x6E6565726373;
          break;
        case 5:
          v6 = 0xE700000000000000;
          v7 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v8 = 0x6570536C61636F6CLL;
      v9 = 0xEC00000072656B61;
      switch(*v4)
      {
        case 1:
          v8 = 0x6E6F687064616568;
          v9 = 0xEA00000000007365;
          break;
        case 2:
          v9 = 0xE700000000000000;
          v8 = 0x72656B61657073;
          break;
        case 3:
          v9 = 0xE200000000000000;
          v8 = 30324;
          break;
        case 4:
          v9 = 0xE600000000000000;
          v8 = 0x6E6565726373;
          break;
        case 5:
          v9 = 0xE700000000000000;
          v8 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      if (v7 == v8 && v6 == v9)
      {
      }

      else
      {
        v11 = sub_1DA4223A4();

        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

unint64_t sub_1DA40A67C()
{
  result = qword_1EE102B00;
  if (!qword_1EE102B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102B00);
  }

  return result;
}

unint64_t sub_1DA40A6D0()
{
  result = qword_1ECBAF9D8;
  if (!qword_1ECBAF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF9D8);
  }

  return result;
}

unint64_t sub_1DA40A724()
{
  result = qword_1ECBAF9E0;
  if (!qword_1ECBAF9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF9E0);
  }

  return result;
}

unint64_t sub_1DA40A778()
{
  result = qword_1EE102B28[0];
  if (!qword_1EE102B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE102B28);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.NowPlayingMediaDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFA08, &qword_1DA429AB8);
  OUTLINED_FUNCTION_3_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA40B160();
  sub_1DA422494();
  v14 = *v3;
  v15 = v3[1];
  v23 = 0;
  OUTLINED_FUNCTION_13_7();
  sub_1DA4222F4();
  if (!v2)
  {
    v22 = *(v3 + 16);
    v21 = 1;
    sub_1DA40B1B4();
    OUTLINED_FUNCTION_13_7();
    sub_1DA422334();
    v16 = v3[3];
    v20 = 2;
    OUTLINED_FUNCTION_13_7();
    sub_1DA422314();
    v19 = v3[4];
    v18[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFA20, &qword_1DA429AC0);
    sub_1DA40B2B0(&qword_1ECBAFA28, sub_1DA40B208);
    OUTLINED_FUNCTION_13_7();
    sub_1DA422334();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t SiriSuggestionsIntelligence.NowPlayingMediaDetails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFA38, &qword_1DA429AC8);
  OUTLINED_FUNCTION_3_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_16();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA40B160();
  sub_1DA422484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_7_14();
  v10 = sub_1DA422274();
  v12 = v11;
  sub_1DA40B25C();
  OUTLINED_FUNCTION_7_14();
  sub_1DA4222B4();
  OUTLINED_FUNCTION_7_14();
  sub_1DA422294();
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFA20, &qword_1DA429AC0);
  sub_1DA40B2B0(&qword_1ECBAFA48, sub_1DA40B328);
  OUTLINED_FUNCTION_7_14();
  sub_1DA4222B4();
  v15 = OUTLINED_FUNCTION_9_12();
  v16(v15);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v19;
  *(a2 + 24) = v14;
  *(a2 + 32) = v18;
  return result;
}

double sub_1DA40AC54@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  SiriSuggestionsIntelligence.NowPlayingMediaDetails.init(from:)(a1, v6);
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

uint64_t SiriSuggestionsIntelligence.MediaDeviceType.init(rawValue:)()
{
  v0 = sub_1DA422234();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DA40AD24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SiriSuggestionsIntelligence.MediaDeviceType.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t sub_1DA40AD54@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestionsIntelligence.MediaDeviceType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SiriSuggestionsIntelligence.ItemMediaType.init(rawValue:)()
{
  v0 = sub_1DA422234();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t SiriSuggestionsIntelligence.ItemMediaType.rawValue.getter(char a1)
{
  result = 0x6F69647561;
  switch(a1)
  {
    case 1:
      result = 0x6F65646976;
      break;
    case 2:
      result = 0x636973756DLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_10_9();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA40AF2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SiriSuggestionsIntelligence.ItemMediaType.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t sub_1DA40AF5C@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestionsIntelligence.ItemMediaType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DA40B038(void *a1)
{
  v1 = [a1 mediaType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DA421B94();

  return v3;
}

uint64_t sub_1DA40B09C(void *a1)
{
  v2 = [a1 mediaType];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DA421B94();

  return v3;
}