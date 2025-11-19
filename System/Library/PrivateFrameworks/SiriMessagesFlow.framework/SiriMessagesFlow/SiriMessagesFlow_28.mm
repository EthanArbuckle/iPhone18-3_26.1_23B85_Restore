uint64_t sub_267DDE1FC()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[34];

  v5 = v0[27];

  v6 = v0[25];

  sub_267B9FF34(v4, &unk_28022AE30, &qword_267EFC0B0);
  v7 = v0[70];
  OUTLINED_FUNCTION_30_26();

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267DDE2B4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  *(v2 + 216) = v4;
  *(v2 + 208) = v0;
  v6 = v5[37];
  v7 = v5[36];
  v8 = v5[35];
  v9 = *v0;
  OUTLINED_FUNCTION_5();
  *v10 = v9;

  sub_267B9FF34(v2 + 16, &qword_28022A310, &qword_267F00400);
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267DDE3F0()
{
  v49 = v0;
  v1 = *(*(v0 + 248) + 72);
  if (v1)
  {
    if (*(v0 + 216) == 1)
    {
      v2 = qword_280228818;
      v3 = v1;
      if (v2 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v4 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);
      v5 = sub_267EF89F8();
      v6 = sub_267EF95D8();
      if (os_log_type_enabled(v5, v6))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v7, v8, v9, v10, v11, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v12 = *(v0 + 240);

      v13 = 0;
      v14 = 0;
      v15 = 1;
      *(v12 + 425) = 1;
    }

    else
    {
      v22 = *(v0 + 264);
      v23 = *(v0 + 272);
      v24 = *(v0 + 240);
      v46 = *(v0 + 232);
      v44 = *(v0 + 256);
      v45 = *(v0 + 224);
      sub_267BA9F38(0, &qword_28022A0B8, 0x277CBEAF8);
      v25 = v24[5];
      v14 = v24[6];
      __swift_project_boxed_opaque_existential_0(v24 + 2, v25);
      v26 = *(v14 + 8);
      v47 = v1;
      v26(v25, v14);
      v27 = *(v0 + 184);
      __swift_project_boxed_opaque_existential_0((v0 + 152), *(v0 + 176));
      sub_267EF3B68();
      v28 = sub_267EF2D48();
      v30 = v29;
      (*(v22 + 8))(v23, v44);
      v31 = sub_267BF952C(v28, v30);
      __swift_destroy_boxed_opaque_existential_0((v0 + 152));
      v13 = sub_267EF8FF8();
      v32 = [v31 localizedStringForLanguageCode_];

      if (v32)
      {
        sub_267EF9028();
        OUTLINED_FUNCTION_359();
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v33 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);

      v34 = sub_267EF89F8();
      v35 = sub_267EF95D8();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_48();
        v37 = OUTLINED_FUNCTION_52();
        v48 = v37;
        *v36 = 136315138;
        *(v0 + 192) = v13;
        *(v0 + 200) = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
        v38 = sub_267EF9878();
        v40 = sub_267BA33E8(v38, v39, &v48);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_267B93000, v34, v35, "#TextComponent content is in a different language that we don't support, reading %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_11_11();
      }

      v15 = 0;
      *(*(v0 + 240) + 424) = 1;
    }
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v16 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
    v17 = sub_267EF89F8();
    v18 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v18))
    {
      v19 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v19);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v20, v21, "#TextComponent sender is nil, don't omit content from CAT");
      OUTLINED_FUNCTION_26();
    }

    v15 = 0;
    v13 = 0;
    v14 = 0;
  }

  v41 = *(v0 + 272);

  v42 = *(v0 + 8);

  return v42(v15, v13, v14);
}

uint64_t sub_267DDE7FC(uint64_t a1, char a2, char a3, uint64_t a4, char a5, char a6, double a7)
{
  *(v8 + 96) = v7;
  *(v8 + 88) = a7;
  *(v8 + 139) = a6;
  *(v8 + 138) = a5;
  *(v8 + 137) = a3;
  *(v8 + 136) = a2;
  *(v8 + 72) = a1;
  *(v8 + 80) = a4;
  return MEMORY[0x2822009F8](sub_267DDE834, 0, 0);
}

uint64_t sub_267DDE834()
{
  OUTLINED_FUNCTION_56();
  *(*(v0 + 72) + 81) = 0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  *(v0 + 104) = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#TextComponent getting summary for spoken message");
    OUTLINED_FUNCTION_26();
  }

  v7 = *(v0 + 137);
  v8 = *(v0 + 136);

  if (v8 != 1)
  {
    goto LABEL_9;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  *(v0 + 40) = &type metadata for Features;
  *(v0 + 48) = sub_267BAFCAC();
  *(v0 + 16) = 12;
  v9 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if ((v9 & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = *(v0 + 96);
  v11 = *(v0 + 88);
  v12 = sub_267DDFAB0(*(v0 + 80), *(v0 + 138), *(v0 + 139));
  if (v12 != 2)
  {
    v15 = v12;
    v16 = *(v0 + 72);
    v17 = swift_task_alloc();
    *(v0 + 112) = v17;
    *v17 = v0;
    v17[1] = sub_267DDE9FC;
    v18 = *(v0 + 96);

    return sub_267DDFDC8(v16, v15);
  }

  else
  {
LABEL_9:
    v13 = *(v0 + 8);

    return v13(0, 0);
  }
}

uint64_t sub_267DDE9FC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 112);
  *v2 = *v0;
  *(v1 + 120) = v5;
  *(v1 + 128) = v6;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DDEAE4()
{
  v34 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  swift_bridgeObjectRetain_n();
  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = OUTLINED_FUNCTION_48();
    v8 = OUTLINED_FUNCTION_52();
    v33 = v8;
    *v7 = 136315138;
    *(v0 + 56) = v6;
    *(v0 + 64) = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v9 = sub_267EF9098();
    v11 = sub_267BA33E8(v9, v10, &v33);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  if (*(v0 + 128))
  {
    v17 = *(v0 + 72);

    *(v17 + 81) = 1;
    v18 = *(v17 + 168);
    v19 = [*(v18 + 16) smsContext];
    [v19 setIsSummarized_];

    v20 = [*(v18 + 16) smsContext];
    if (v20)
    {
      v21 = v20;
      [v20 setSummarySourceType_];
    }
  }

  if ((*(*(v0 + 72) + 81) & 1) != 0 || *(v0 + 139))
  {
    v22 = *(v0 + 104);
    v23 = sub_267EF89F8();
    v24 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v24))
    {
      v25 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v25);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v26, v27, "#TextComponent setup to offer full read");
      OUTLINED_FUNCTION_26();
    }

    v28 = *(v0 + 72);

    *(v28 + 82) = 1;
  }

  v29 = *(v0 + 120);
  v30 = *(v0 + 128);
  v31 = *(v0 + 8);

  return v31(v29, v30);
}

uint64_t sub_267DDED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v19;
  *(v8 + 176) = v20;
  *(v8 + 152) = v18;
  *(v8 + 136) = v17;
  *(v8 + 120) = v16;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  v9 = sub_267EF8248();
  *(v8 + 184) = v9;
  v10 = *(v9 - 8);
  *(v8 + 192) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  v13 = *(*(type metadata accessor for TextComponent() - 8) + 64) + 15;
  *(v8 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267DDEEDC, 0, 0);
}

uint64_t sub_267DDEEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_377();
  v23 = *(v22 + 144);
  v24 = *(v22 + 88);
  sub_267BFF55C(*(v22 + 64), *(v22 + 288));
  v25 = v24[1];
  v160 = *v24;
  *(v22 + 296) = v25;
  v26 = *(v23 + 8);
  v27 = *(v22 + 280);
  if (v26)
  {
    v28 = **(v22 + 144);

    sub_267EF90F8();

    sub_267EF79B8();
    v29 = OUTLINED_FUNCTION_118();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  }

  else
  {
    v33 = sub_267EF79B8();
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v33);
  }

  v163 = v25;
  if (*(v22 + 160))
  {
    v34 = *(v22 + 272);
    v35 = *(v22 + 152);
    sub_267EF90F8();
  }

  v37 = *(v22 + 264);
  v36 = *(v22 + 272);
  v38 = *(v22 + 80);
  v39 = *(v22 + 56);
  v40 = sub_267EF79B8();
  OUTLINED_FUNCTION_521();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  SpokenTextComponentParameters = type metadata accessor for SearchForMessagesReadSpokenTextComponentParameters(0);
  *(v22 + 304) = SpokenTextComponentParameters;
  v45 = *(SpokenTextComponentParameters + 44);
  sub_267B9FF34(v39 + v45, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  v47 = ComponentPatternCommonParameters[5];
  *(v22 + 312) = v40;
  v166 = v47;
  (*(*(v40 - 8) + 16))(v39 + v45, v38 + v47, v40);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v40);
  v168 = v38;
  *(v22 + 16) = *(v38 + ComponentPatternCommonParameters[6]);
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v170 = SpokenTextComponentParameters;
  v172 = v40;
  v51 = SpokenTextComponentParameters;
  v53 = *(v22 + 256);
  v52 = *(v22 + 264);
  v54 = *(v22 + 80);
  v55 = *(v22 + 56);
  v56 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v40);
  OUTLINED_FUNCTION_46_1(v51[21]);
  *(v22 + 32) = *(v54 + ComponentPatternCommonParameters[7]);
  sub_267EF8348();
  v60 = *(v22 + 248);
  v59 = *(v22 + 256);
  v61 = *(v22 + 80);
  v62 = *(v22 + 56);
  v63 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v40);
  OUTLINED_FUNCTION_46_1(v51[22]);
  *(v22 + 40) = *(v61 + ComponentPatternCommonParameters[8]);
  sub_267EF8348();
  v67 = *(v22 + 240);
  v66 = *(v22 + 248);
  v68 = *(v22 + 80);
  v69 = *(v22 + 56);
  v70 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v40);
  OUTLINED_FUNCTION_46_1(v51[25]);
  *(v22 + 48) = *(v68 + ComponentPatternCommonParameters[9]);
  sub_267EF8348();
  v151 = *(v22 + 240);
  v152 = *(v22 + 56);
  v153 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v153, v154, v155, v40);
  sub_267BD3DDC(v151, v152 + v51[27]);
  v156 = v51;
  v157 = v40;
  *(v22 + 320) = 0;
  if (v163)
  {
    v73 = *(v22 + 232);
    sub_267EF90F8();
    v74 = 0;
  }

  else
  {
    v74 = 1;
  }

  v75 = *(v22 + 232);
  v76 = *(v22 + 120);
  v77 = *(v22 + 56);
  __swift_storeEnumTagSinglePayload(v75, v74, 1, v40);
  sub_267BD3DDC(v75, v77 + v156[8]);
  if (v76)
  {
    v78 = *(v22 + 224);
    v79 = *(v22 + 112);
    v80 = *(v22 + 120);
    sub_267EF90F8();
  }

  v81 = *(v22 + 224);
  v82 = *(v22 + 104);
  v83 = *(v22 + 56);
  v84 = 1;
  OUTLINED_FUNCTION_521();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v157);
  sub_267BD3DDC(v81, v83);
  if (v82)
  {
    v88 = *(v22 + 216);
    v89 = *(v22 + 96);
    v90 = *(v22 + 104);
    sub_267EF90F8();
    v84 = 0;
  }

  v91 = *(v22 + 280);
  v159 = *(v22 + 272);
  v92 = *(v22 + 216);
  v94 = *(v22 + 168);
  v93 = *(v22 + 176);
  v96 = *(v22 + 128);
  v95 = *(v22 + 136);
  v161 = *(v22 + 72);
  v164 = *(v22 + 288);
  v97 = *(v22 + 56);
  __swift_storeEnumTagSinglePayload(v92, v84, 1, v172);
  sub_267BD3DDC(v92, v97 + v170[19]);
  v98 = v170[23];
  v99 = *(v97 + v98);

  *(v97 + v98) = v96;
  sub_267BE855C(v95, v97 + v170[12]);
  v100 = v170[7];
  v101 = *(v97 + v100);

  *(v97 + v100) = v94;
  v102 = v170[26];
  v103 = *(v97 + v102);

  *(v97 + v102) = v93;
  sub_267BE855C(v91, v97 + v170[9]);
  sub_267BE855C(v159, v97 + v170[10]);
  v104 = sub_267EF7998();
  *(v22 + 328) = v104;
  *(v22 + 336) = v105;
  *(v22 + 344) = *(v161 + 96);
  *(v22 + 352) = sub_267BE85CC(v104);
  v106 = sub_267BDAF74();
  *(v22 + 368) = v106 & 1;
  if (v106)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v173 = v107;
    v108 = swift_task_alloc();
    *(v22 + 360) = v108;
    *v108 = v22;
    v108[1] = sub_267DDF770;
    OUTLINED_FUNCTION_93();

    return v111(v109, v110, v111, v112, v113, v114, v115, v116, a9, a10, v159, v161, v164, v166, v168, v170, v173, a18, a19, a20, a21, a22);
  }

  else
  {
    v119 = *(v22 + 344);
    v118 = *(v22 + 352);
    v120 = *(v22 + 328);
    v121 = *(v22 + 336);
    v122 = *(v22 + 320);
    v124 = *(v22 + 200);
    v123 = *(v22 + 208);
    v125 = *(v22 + 184);
    sub_267EF7C18();
    OUTLINED_FUNCTION_234();
    v127 = 0xE000000000000000;
    if (!v128)
    {
      v127 = v126;
    }

    v158 = v127;
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_72();
    sub_267EF8238();
    sub_267EF8348();
    if (v122)
    {
      OUTLINED_FUNCTION_52_13();
      v162 = v130;
      v165 = v129;
      v167 = *(v22 + 232);
      v169 = *(v22 + 224);
      v171 = *(v22 + 216);
      v174 = *(v22 + 208);
      OUTLINED_FUNCTION_49_18();

      v131 = OUTLINED_FUNCTION_16_29();
      v132(v131);
      OUTLINED_FUNCTION_35_20();
      OUTLINED_FUNCTION_38_19(v118);
      sub_267C00468(v94);
    }

    else
    {
      OUTLINED_FUNCTION_48_21();
      a10 = v133;
      v159 = v134;
      v162 = v135;
      v165 = *(v22 + 248);
      v167 = *(v22 + 240);
      v169 = *(v22 + 232);
      v136 = *(v22 + 208);
      v171 = *(v22 + 224);
      v174 = *(v22 + 216);
      OUTLINED_FUNCTION_49_18();
      v137 = *(v22 + 56);

      v138 = OUTLINED_FUNCTION_16_29();
      v139(v138);
      OUTLINED_FUNCTION_38_19(0);
      OUTLINED_FUNCTION_35_20();
      sub_267C00468(v121);
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v140, v141, v142, v123);
      sub_267BD3DDC(v136, v137 + *(a10 + 24));
    }

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_93();

    return v144(v143, v144, v145, v146, v147, v148, v149, v150, v158, a10, v159, v162, v165, v167, v169, v171, v174, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_267DDF770()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 360);
  *v2 = *v0;
  *(v1 + 369) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DDF858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_377();
  v23 = *(v22 + 369);
  v24 = *(v22 + 368);
  v25 = *(v22 + 344);
  v26 = *(v22 + 352);
  v28 = *(v22 + 328);
  v27 = *(v22 + 336);
  v60 = *(v22 + 320);
  v30 = *(v22 + 200);
  v29 = *(v22 + 208);
  v31 = *(v22 + 184);
  sub_267EF7C18();
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_19_29();
  sub_267EF8348();
  if (v60)
  {
    OUTLINED_FUNCTION_52_13();
    v55 = v33;
    v56 = v32;
    v57 = *(v22 + 232);
    v58 = *(v22 + 224);
    v59 = *(v22 + 216);
    v61 = *(v22 + 208);
    OUTLINED_FUNCTION_49_18();

    v34 = OUTLINED_FUNCTION_16_29();
    v35(v34);
    OUTLINED_FUNCTION_35_20();
    OUTLINED_FUNCTION_38_19(v24);
    sub_267C00468(v31);
  }

  else
  {
    OUTLINED_FUNCTION_48_21();
    a11 = v36;
    a12 = v37;
    v55 = v38;
    v56 = *(v22 + 248);
    v57 = *(v22 + 240);
    v58 = *(v22 + 232);
    v39 = *(v22 + 208);
    v59 = *(v22 + 224);
    v61 = *(v22 + 216);
    OUTLINED_FUNCTION_49_18();
    v40 = *(v22 + 56);

    v41 = OUTLINED_FUNCTION_16_29();
    v42(v41);
    OUTLINED_FUNCTION_38_19(0);
    OUTLINED_FUNCTION_35_20();
    sub_267C00468(v28);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v26);
    sub_267BD3DDC(v39, v40 + *(a11 + 24));
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_93();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, v55, v56, v57, v58, v59, v61, a19, a20, a21, a22);
}

uint64_t sub_267DDFAB0(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
    if (*(a1 + 416))
    {
      v4 = sub_267BF4920();
    }

    else
    {
      v4 = 0;
    }

    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      if (v4)
      {
        v15 = 0x70756F7267;
      }

      else
      {
        v15 = 19780;
      }

      if (v4)
      {
        v16 = 0xE500000000000000;
      }

      else
      {
        v16 = 0xE200000000000000;
      }

      v17 = sub_267BA33E8(v15, v16, &v23);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_267B93000, v11, v12, "#TextComponent is a long message in a %s .. get topic", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x26D60A7B0](v14, -1, -1);
      MEMORY[0x26D60A7B0](v13, -1, -1);
    }

    return 1;
  }

  else if ((a2 & 1) != 0 || *(v3 + 72) && sub_267DEAC40())
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v5 = sub_267EF8A08();
    __swift_project_value_buffer(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_267B93000, v6, v7, "#TextComponent is a message from unknown contact .. get summary", v8, 2u);
      MEMORY[0x26D60A7B0](v8, -1, -1);
    }

    return 0;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95D8();
    if (os_log_type_enabled(v20, v21))
    {
      v9 = 2;
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_267B93000, v20, v21, "#TextComponent DM or relevant group with no long message.. dont caption", v22, 2u);
      MEMORY[0x26D60A7B0](v22, -1, -1);
    }

    else
    {

      return 2;
    }
  }

  return v9;
}

uint64_t sub_267DDFDC8(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_267DDFDEC, 0, 0);
}

uint64_t sub_267DDFDEC()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 16);
  if (!v1 || *(v0 + 24) == 2)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v2 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v5);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v6, v7, "#TextComponent invalid input to getTopicOrSummary");
      OUTLINED_FUNCTION_26();
    }

LABEL_8:
    v8 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  v9 = *(v1 + 160);
  if (!v9)
  {
    v12 = qword_280228818;
    v13 = *(v0 + 16);

    if (v12 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v14 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v14, qword_280240FB0);
    v15 = sub_267EF89F8();
    v16 = sub_267EF95D8();
    if (os_log_type_enabled(v15, v16))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_8;
  }

  v8 = *(v1 + 152);

LABEL_9:
  v10 = *(v0 + 8);

  return v10(v8, v9);
}

uint64_t sub_267DDFF8C()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t sub_267DDFFA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267DDFFE8(uint64_t a1)
{
  result = sub_267DDFFA0(&qword_28022C198, type metadata accessor for TextComponent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267DE0040()
{
  OUTLINED_FUNCTION_31_19();
  v14 = *(v0 + 104);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_267BAEBEC;
  OUTLINED_FUNCTION_26_25();

  return sub_267DDED20(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t type metadata accessor for UnsendMessagesCATsSimple()
{
  result = qword_28022C1A0;
  if (!qword_28022C1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267DE01BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DE0258()
{
  v1 = v0[5];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  v0[6] = v3;
  OUTLINED_FUNCTION_2_8(v3, xmmword_267EFCC90);
  sub_267BC9B04(v2, v1, &unk_28022AE30, &qword_267EFC0B0);
  v4 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v4);
  if (v5)
  {
    sub_267B9FED8(v1, &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_5_0(v2);
    (*(v6 + 32))();
  }

  OUTLINED_FUNCTION_0_51();
  *(v3 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v3 + 96) = v2;
  OUTLINED_FUNCTION_4_49(MEMORY[0x277D55C70]);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_1_61(v7);

  return v9(v8);
}

uint64_t sub_267DE03E4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v7 = v6;
  v2[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {
    v12 = v2[5];
    v11 = v2[6];

    v13 = OUTLINED_FUNCTION_5_3();

    return v14(v13);
  }
}

uint64_t sub_267DE0528(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DE05C4()
{
  v1 = v0[5];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  v0[6] = v3;
  OUTLINED_FUNCTION_2_8(v3, xmmword_267EFCC90);
  sub_267BC9B04(v2, v1, &unk_28022AE30, &qword_267EFC0B0);
  v4 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v4);
  if (v5)
  {
    sub_267B9FED8(v1, &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_5_0(v2);
    (*(v6 + 32))();
  }

  OUTLINED_FUNCTION_0_51();
  *(v3 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v3 + 96) = v2;
  OUTLINED_FUNCTION_4_49(MEMORY[0x277D55C70]);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_1_61(v7);

  return v9(v8);
}

uint64_t sub_267DE0750()
{
  v2 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v7 = v6;
  v2[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {
    v12 = v2[5];
    v11 = v2[6];

    v13 = OUTLINED_FUNCTION_5_3();

    return v14(v13);
  }
}

uint64_t sub_267DE0894()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_267DE0900(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_267DE0954(a1, a2);
}

uint64_t sub_267DE0954(uint64_t a1, uint64_t a2)
{
  v5 = sub_267EF7B88();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_267BC9B04(a1, &v18 - v15, &qword_280229E20, &unk_267EFDCC0);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_267EF79C8();
  (*(v8 + 8))(a2, v2);
  sub_267B9FED8(a1, &qword_280229E20, &unk_267EFDCC0);
  return v16;
}

uint64_t sub_267DE0AD0(uint64_t a1, uint64_t a2)
{
  v5 = sub_267EF7B88();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_267EF79D8();
  (*(v8 + 8))(a2, v3);
  return v15;
}

double sub_267DE0BDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0.0;
    do
    {
      v4 = *(a1 + 32 + 8 * v2++);
      v3 = v3 + v4;
    }

    while (v1 != v2);
    return v3 / v1;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);
    v7 = sub_267EF89F8();
    v8 = sub_267EF95E8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_267B93000, v7, v8, "Array is empty", v9, 2u);
      MEMORY[0x26D60A7B0](v9, -1, -1);
    }

    return 0.0;
  }
}

int16x4_t *sub_267DE0CF0(int16x4_t *result)
{
  if (*&result[2] >= 5uLL)
  {
    return (result[5].i16[0] + vaddvq_s32(vmovl_s16(result[4])));
  }

  __break(1u);
  return result;
}

uint64_t sub_267DE0D1C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 < 6)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 == 6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 8)
  {
    return *(result + 42) + *(result + 44) + *(result + 46);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_267DE0D58@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v82 = sub_267EF2CC8();
  v2 = OUTLINED_FUNCTION_58(v82);
  v73 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v72 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_6();
  v81 = v9;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v10);
  v80 = &v69 - v11;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  v70 = &v69 - v13;
  OUTLINED_FUNCTION_3_54();
  v14 = *(v1 + 24);
  v15 = *(v14 + 16);
  if (!v15)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_37:
    result = sub_267BAF0DC(v17);
    v45 = result;
    v46 = 0;
    v47 = v17 & 0xC000000000000001;
    v48 = v17;
    v49 = v17 & 0xFFFFFFFFFFFFFF8;
    v83 = MEMORY[0x277D84F90];
    v79 = v73 + 32;
    while (v45 != v46)
    {
      if (v47)
      {
        result = MEMORY[0x26D609870](v46, v48);
      }

      else
      {
        if (v46 >= *(v49 + 16))
        {
          goto LABEL_60;
        }

        result = *(v48 + 8 * v46 + 32);
      }

      v50 = result;
      v51 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v52 = [result dateSent];
      if (v52)
      {
        v53 = v52;
        v54 = v81;
        sub_267EF2C98();

        v55 = 0;
      }

      else
      {
        v55 = 1;
        v54 = v81;
      }

      v56 = v55;
      v57 = v82;
      __swift_storeEnumTagSinglePayload(v54, v56, 1, v82);
      v58 = v80;
      sub_267C5EE88(v54, v80);
      if (__swift_getEnumTagSinglePayload(v58, 1, v57) == 1)
      {
        result = sub_267B9FF34(v58, &qword_28022BD90, &unk_267EFCDD0);
        ++v46;
      }

      else
      {
        v59 = v58;
        v60 = *v79;
        (*v79)(v72, v59, v82);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = *(v83 + 16);
          sub_267C70B00();
          v83 = v65;
        }

        v61 = *(v83 + 16);
        if (v61 >= *(v83 + 24) >> 1)
        {
          sub_267C70B00();
          v83 = v66;
        }

        v62 = v82;
        v63 = v83;
        *(v83 + 16) = v61 + 1;
        result = v60(v63 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v61, v72, v62);
        v46 = v51;
      }
    }

    v67 = v70;
    sub_267DE1404(v83, v70);

    v68 = v82;
    if (__swift_getEnumTagSinglePayload(v67, 1, v82) != 1)
    {
      return (*v79)(v71, v67, v68);
    }

    sub_267EF2C18();
    result = __swift_getEnumTagSinglePayload(v67, 1, v68);
    if (result != 1)
    {
      return sub_267B9FF34(v67, &qword_28022BD90, &unk_267EFCDD0);
    }

    return result;
  }

  v78 = v14 + 32;
  v69 = v14;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v74 = v15;
  while (1)
  {
    sub_267B9AFEC(v78 + 40 * v16, v85);
    v18 = v86;
    v19 = v87;
    __swift_project_boxed_opaque_existential_0(v85, v86);
    OUTLINED_FUNCTION_42_7(v19);
    v21 = v20(v18, v19);

    __swift_destroy_boxed_opaque_existential_0(v85);
    v22 = v21 >> 62 ? sub_267EF9A68() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v17 >> 62;
    result = v17 >> 62 ? sub_267EF9A68() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = result + v22;
    if (__OFADD__(result, v22))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v83 = v22;
    if (result)
    {
      if (v23)
      {
        goto LABEL_15;
      }

      v26 = v17 & 0xFFFFFFFFFFFFFF8;
      if (v25 <= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v23)
      {
LABEL_15:
        sub_267EF9A68();
        goto LABEL_16;
      }

      v26 = v17 & 0xFFFFFFFFFFFFFF8;
    }

    v27 = *(v26 + 16);
LABEL_16:
    result = sub_267EF9BB8();
    v17 = result;
    v26 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v28 = *(v26 + 16);
    v29 = (*(v26 + 24) >> 1) - v28;
    v30 = v26 + 8 * v28;
    v79 = v26;
    if (v21 >> 62)
    {
      v32 = OUTLINED_FUNCTION_16_30();
      if (v32)
      {
        v33 = v32;
        result = sub_267EF9A68();
        if (v29 < result)
        {
          goto LABEL_64;
        }

        if (v33 < 1)
        {
          goto LABEL_66;
        }

        v75 = result;
        v76 = v16;
        v77 = v17;
        v34 = v30 + 32;
        sub_267CF6EF8();
        for (i = 0; i != v33; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
          v36 = OUTLINED_FUNCTION_13_34();
          v39 = sub_267C73FD8(v36, v37, v38);
          v41 = *v40;
          v39(v84, 0);
          *(v34 + 8 * i) = v41;
        }

        v16 = v76;
        v17 = v77;
        v15 = v74;
        v31 = v75;
        goto LABEL_27;
      }
    }

    else
    {
      v31 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        if (v29 < v31)
        {
          goto LABEL_65;
        }

        sub_267CF6EB4();
        swift_arrayInitWithCopy();
LABEL_27:

        if (v31 < v83)
        {
          goto LABEL_62;
        }

        if (v31 > 0)
        {
          v42 = *(v79 + 16);
          v43 = __OFADD__(v42, v31);
          v44 = v42 + v31;
          if (v43)
          {
            goto LABEL_63;
          }

          *(v79 + 16) = v44;
        }

        goto LABEL_32;
      }
    }

    if (v83 > 0)
    {
      goto LABEL_62;
    }

LABEL_32:
    if (++v16 == v15)
    {

      goto LABEL_37;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_267DE1404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_267EF2CC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v10, v13, v4);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      v12(v9, v13 + *(v5 + 72) * i, v4);
      sub_267DE2CF4();
      v16 = sub_267EF8FD8();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v9, v4);
      }

      else
      {
        v17(v9, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

void sub_267DE1640()
{
  OUTLINED_FUNCTION_3_54();
  v1 = *(v0 + 24);
  v2 = MEMORY[0x277D84F90];
  v39 = *(v1 + 16);
  if (v39)
  {
    v38 = v1 + 32;

    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_267B9AFEC(v38 + 40 * v3, v41);
      v5 = v42;
      v6 = v43;
      __swift_project_boxed_opaque_existential_0(v41, v42);
      OUTLINED_FUNCTION_42_7(v6);
      v8 = v7(v5, v6);

      __swift_destroy_boxed_opaque_existential_0(v41);
      if (v8 >> 62)
      {
        v9 = sub_267EF9A68();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v4 >> 62;
      if (v4 >> 62)
      {
        v11 = sub_267EF9A68();
      }

      else
      {
        v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_51;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v10)
        {
          goto LABEL_15;
        }

        v13 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v10)
        {
LABEL_15:
          sub_267EF9A68();
          goto LABEL_16;
        }

        v13 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_16:
      v4 = sub_267EF9BB8();
      v13 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
      v15 = *(v13 + 16);
      v16 = (*(v13 + 24) >> 1) - v15;
      v17 = v13 + 8 * v15;
      if (v8 >> 62)
      {
        v19 = sub_267EF9A68();
        if (!v19)
        {
LABEL_31:

          if (v9 > 0)
          {
            goto LABEL_52;
          }

          goto LABEL_32;
        }

        v20 = v19;
        v37 = sub_267EF9A68();
        if (v16 < v37)
        {
          goto LABEL_54;
        }

        if (v20 < 1)
        {
          goto LABEL_56;
        }

        v36 = v13;
        v21 = v17 + 32;
        sub_267CF6EF8();
        for (i = 0; i != v20; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
          v23 = sub_267C73FD8(v40, i, v8);
          v25 = *v24;
          v23(v40, 0);
          *(v21 + 8 * i) = v25;
        }

        v13 = v36;
        v18 = v37;
      }

      else
      {
        v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_31;
        }

        if (v16 < v18)
        {
          goto LABEL_55;
        }

        sub_267CF6EB4();
        swift_arrayInitWithCopy();
      }

      if (v18 < v9)
      {
        goto LABEL_52;
      }

      if (v18 > 0)
      {
        v26 = *(v13 + 16);
        v27 = __OFADD__(v26, v18);
        v28 = v26 + v18;
        if (v27)
        {
          goto LABEL_53;
        }

        *(v13 + 16) = v28;
      }

LABEL_32:
      if (++v3 == v39)
      {

        v2 = MEMORY[0x277D84F90];
        goto LABEL_37;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_37:
  v29 = v2;
  v41[0] = v2;
  v30 = sub_267BAF0DC(v4);
  v31 = 0;
  while (1)
  {
    if (v30 == v31)
    {

      sub_267D2F5A8(v29);
      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x26D609870](v31, v4);
    }

    else
    {
      if (v31 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v32 = *(v4 + 8 * v31 + 32);
    }

    v33 = v32;
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    v35 = [v32 sender];

    ++v31;
    if (v35)
    {
      MEMORY[0x26D608F90]();
      if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
      v29 = v41[0];
      v31 = v34;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

id sub_267DE1A4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_6();
  v78 = v3;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v4);
  v77 = &v70 - v5;
  v83 = sub_267EF2CC8();
  v6 = *(v83 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v83 - 8);
  OUTLINED_FUNCTION_6();
  v75 = v8;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v9);
  v79 = &v70 - v10;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v11);
  v82 = &v70 - v12;
  OUTLINED_FUNCTION_3_54();
  v13 = *(v0 + 24);
  v14 = *(v13 + 16);
  if (v14)
  {
    v71 = v6;
    v15 = v13 + 32;
    v70 = v13;

    v16 = 0;
    v17 = MEMORY[0x277D84F90];
    v73 = v14;
    v72 = v15;
    while (1)
    {
      sub_267B9AFEC(v15 + 40 * v16, v86);
      v18 = v87;
      v19 = v88;
      __swift_project_boxed_opaque_existential_0(v86, v87);
      OUTLINED_FUNCTION_42_7(v19);
      v21 = v20(v18, v19);

      __swift_destroy_boxed_opaque_existential_0(v86);
      v6 = v21 >> 62;
      if (v21 >> 62)
      {
        v22 = sub_267EF9A68();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = v17 >> 62;
      if (v17 >> 62)
      {
        v24 = sub_267EF9A68();
      }

      else
      {
        v24 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v25 = &v22[v24];
      if (__OFADD__(v24, v22))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
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
LABEL_70:
        __break(1u);
LABEL_71:
        v46 = MEMORY[0x26D609870](0, v17);
        goto LABEL_40;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v84 = v22;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v23)
        {
          goto LABEL_15;
        }

        v27 = v17 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v23)
        {
LABEL_15:
          sub_267EF9A68();
          goto LABEL_16;
        }

        v27 = v17 & 0xFFFFFFFFFFFFFF8;
      }

      v28 = *(v27 + 16);
LABEL_16:
      v17 = sub_267EF9BB8();
      v27 = v17 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
      v29 = *(v27 + 16);
      v30 = (*(v27 + 24) >> 1) - v29;
      v31 = v27 + 8 * v29;
      v80 = v27;
      if (v6)
      {
        v32 = OUTLINED_FUNCTION_16_30();
        if (v32)
        {
          v33 = v32;
          v34 = sub_267EF9A68();
          if (v30 < v34)
          {
            goto LABEL_68;
          }

          if (v33 < 1)
          {
            goto LABEL_70;
          }

          v74 = v34;
          v76 = v16;
          v81 = v17;
          v35 = v31 + 32;
          sub_267CF6EF8();
          for (i = 0; i != v33; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
            v37 = OUTLINED_FUNCTION_13_34();
            v40 = sub_267C73FD8(v37, v38, v39);
            v42 = *v41;
            v40(v85, 0);
            *(v35 + 8 * i) = v42;
          }

          v17 = v81;
          v14 = v73;
          v15 = v72;
          v16 = v76;
          v6 = v74;
          goto LABEL_27;
        }
      }

      else
      {
        v6 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6)
        {
          if (v30 < v6)
          {
            goto LABEL_69;
          }

          sub_267CF6EB4();
          swift_arrayInitWithCopy();
LABEL_27:

          if (v6 < v84)
          {
            goto LABEL_63;
          }

          if (v6 > 0)
          {
            v43 = *(v80 + 16);
            v44 = __OFADD__(v43, v6);
            v45 = v43 + v6;
            if (v44)
            {
              goto LABEL_65;
            }

            *(v80 + 16) = v45;
          }

          goto LABEL_32;
        }
      }

      if (v84 > 0)
      {
        goto LABEL_63;
      }

LABEL_32:
      if (++v16 == v14)
      {

        v6 = v71;
        goto LABEL_37;
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_37:
  v76 = sub_267BAF0DC(v17);
  if (v76)
  {
    v21 = v17 & 0xC000000000000001;
    sub_267BBD0EC(0, (v17 & 0xC000000000000001) == 0, v17);
    v74 = v17 & 0xC000000000000001;
    if ((v17 & 0xC000000000000001) != 0)
    {
      goto LABEL_71;
    }

    v46 = *(v17 + 32);
LABEL_40:
    v47 = v46;
    v72 = v17 & 0xFFFFFFFFFFFFFF8;
    v80 = v6 + 32;
    v73 = (v6 + 8);
    v48 = 1;
    v49 = &off_279C2E000;
    v81 = v17;
    v50 = v82;
    while (v76 != v48)
    {
      if (v74)
      {
        v51 = MEMORY[0x26D609870](v48, v17);
      }

      else
      {
        if ((v48 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        if (v48 >= *(v72 + 16))
        {
          goto LABEL_67;
        }

        v51 = *(v17 + 8 * v48 + 32);
      }

      v17 = v51;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_64;
      }

      v52 = v49[427];
      v84 = v47;
      v53 = [v47 v52];
      if (v53)
      {
        v54 = v53;
        v21 = v79;
        sub_267EF2C98();

        v55 = *v80;
        v56 = v77;
        v57 = OUTLINED_FUNCTION_12_34();
        v55(v57);
        OUTLINED_FUNCTION_17_24();
        (v55)(v82, v56, v21);
      }

      else
      {
        v58 = v77;
        OUTLINED_FUNCTION_8_46();
        sub_267EF2C18();
        if (__swift_getEnumTagSinglePayload(v58, 1, v21) != 1)
        {
          sub_267B9FF34(v77, &qword_28022BD90, &unk_267EFCDD0);
        }
      }

      v59 = v49;
      v60 = [v17 v49[427]];
      if (v60)
      {
        v61 = v60;
        v47 = v17;
        v21 = v79;
        sub_267EF2C98();

        v62 = *v80;
        v63 = v78;
        v64 = OUTLINED_FUNCTION_12_34();
        v62(v64);
        OUTLINED_FUNCTION_17_24();
        v65 = v75;
        (v62)(v75, v63, v21);
      }

      else
      {
        v47 = v17;
        v66 = v78;
        OUTLINED_FUNCTION_8_46();
        v65 = v75;
        sub_267EF2C18();
        if (__swift_getEnumTagSinglePayload(v66, 1, v21) != 1)
        {
          sub_267B9FF34(v78, &qword_28022BD90, &unk_267EFCDD0);
        }
      }

      v6 = sub_267EF2C68();
      v67 = *v73;
      (*v73)(v65, v21);
      v67(v50, v21);
      if (v6)
      {

        ++v48;
        v17 = v81;
      }

      else
      {

        ++v48;
        v17 = v81;
        v47 = v84;
      }

      v49 = v59;
    }
  }

  else
  {
    v47 = 0;
  }

  v68 = [v47 sender];

  return v68;
}

void sub_267DE2198()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = *(v0 + 24);

    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_267B9AFEC(v3, v15);
      v6 = v16;
      v7 = v17;
      __swift_project_boxed_opaque_existential_0(v15, v16);
      v8 = (*(v7 + 24))(v6, v7);
      __swift_destroy_boxed_opaque_existential_0(v15);
      v9 = *(v8 + 16);
      v10 = *(v5 + 16);
      if (__OFADD__(v10, v9))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v10 + v9 > *(v5 + 24) >> 1)
      {
        sub_267BF4EE8();
        v5 = v11;
      }

      if (*(v8 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v9)
        {
          goto LABEL_18;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v12 = *(v5 + 16);
          v13 = __OFADD__(v12, v9);
          v14 = v12 + v9;
          if (v13)
          {
            goto LABEL_19;
          }

          *(v5 + 16) = v14;
        }
      }

      else
      {

        if (v9)
        {
          goto LABEL_17;
        }
      }

      v3 += 40;
      if (!--v2)
      {

        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }
}

uint64_t sub_267DE2334(uint64_t a1)
{
  *(v2 + 528) = v1;
  *(v2 + 520) = a1;
  return MEMORY[0x2822009F8](sub_267DE2358, 0, 0);
}

void sub_267DE2358()
{
  v2 = v1[66];
  swift_beginAccess();
  v4 = *(v2 + 24);
  v1[67] = v4;
  v5 = *(v4 + 16);
  v1[68] = v5;
  if (!v5)
  {
LABEL_14:
    v25 = v1[1];
    v3.n128_u64[0] = 0;

    v25(v3);
    return;
  }

  v6 = 0;
  while (1)
  {
    v1[70] = v6;
    v1[69] = 0;
    if (v6 >= *(v1[67] + 16))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_15_31(v6);
    sub_267B9AFEC((v1 + 32), (v1 + 37));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (!swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0(v1 + 32);
    v7 = v1[3];
    v8 = v1[5];
    v9 = v1[6];
    v10 = v1[7];
    v11 = v1[8];
    v13 = v1[11];
    v12 = v1[12];
    v14 = v1[13];
    v0 = v1[15];

LABEL_8:

LABEL_11:
    OUTLINED_FUNCTION_14_35();
    if (v23)
    {
      v24 = v1[67];

      goto LABEL_14;
    }
  }

  sub_267B9AFEC((v1 + 32), (v1 + 42));
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v1 + 32);
    v15 = v1[18];
    v16 = v1[20];
    v0 = v1[21];
    v17 = v1[22];
    v18 = v1[23];
    v19 = v1[26];
    v20 = v1[27];
    v14 = v1[28];
    v21 = v1[30];

    goto LABEL_8;
  }

  sub_267B9AFEC((v1 + 32), (v1 + 52));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C1B0, &qword_267F09868);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v1 + 32);
    v22 = OUTLINED_FUNCTION_9_39();
    sub_267B9FF34(v22, &qword_28022C1B8, &unk_267F09870);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_19_30();
  v26 = *(v0 + 64);
  v30 = (v26 + *v26);
  v27 = v26[1];
  v28 = swift_task_alloc();
  v1[71] = v28;
  *v28 = v1;
  v29 = OUTLINED_FUNCTION_0_52(v28);

  v30(v29);
}

uint64_t sub_267DE269C(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 568);
  v9 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {
    v6 = *(v4 + 536);

    v7 = sub_267DE2B58;
  }

  else
  {
    *(v4 + 584) = a1;
    v7 = sub_267DE27C8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_267DE27C8()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 552);
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  v3 = v1 + v2;
  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  while (1)
  {
    OUTLINED_FUNCTION_14_35();
    if (v5)
    {
      break;
    }

    *(v0 + 560) = v4;
    *(v0 + 552) = v3;
    if (v4 >= *(*(v0 + 536) + 16))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_15_31(v4);
    sub_267B9AFEC(v0 + 256, v0 + 296);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    v6 = (v0 + 24);
    v7 = (v0 + 40);
    v8 = (v0 + 48);
    v9 = (v0 + 56);
    v11 = (v0 + 64);
    v10 = (v0 + 88);
    v12 = (v0 + 96);
    v14 = (v0 + 104);
    v13 = (v0 + 120);
    if (swift_dynamicCast())
    {
      goto LABEL_6;
    }

    sub_267B9AFEC(v0 + 256, v0 + 336);
    v6 = (v0 + 144);
    v7 = (v0 + 160);
    v8 = (v0 + 168);
    v9 = (v0 + 176);
    v11 = (v0 + 184);
    v10 = (v0 + 208);
    v12 = (v0 + 216);
    v14 = (v0 + 224);
    v13 = (v0 + 240);
    if (swift_dynamicCast())
    {
LABEL_6:
      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      v15 = *v7;
      v30 = *v6;
      v31 = *v8;
      v16 = *v9;
      v17 = *v11;
      v18 = *v10;
      v19 = *v12;
      v20 = *v14;
      v21 = *v13;
    }

    else
    {
      sub_267B9AFEC(v0 + 256, v0 + 416);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C1B0, &qword_267F09868);
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_19_30();
        v26 = *(v0 + 224);
        v32 = (v26 + *v26);
        v27 = v26[1];
        v28 = swift_task_alloc();
        *(v0 + 568) = v28;
        *v28 = v0;
        v29 = OUTLINED_FUNCTION_0_52();

        v32(v29);
        return;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      v22 = OUTLINED_FUNCTION_9_39();
      sub_267B9FF34(v22, &qword_28022C1B8, &unk_267F09870);
    }
  }

  v23 = *(v0 + 536);

  v24 = *(v0 + 8);
  v25.n128_f64[0] = v3;

  v24(v25);
}

uint64_t sub_267DE2B58()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = v0[72];
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[72];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_267B93000, v4, v5, "#Conversation error getting content speech duration for component %@", v8, 0xCu);
    sub_267B9FF34(v9, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  v12 = v0[1];
  v13.n128_u64[0] = 0;

  return v12(v13);
}

unint64_t sub_267DE2CF4()
{
  result = qword_28022B0C0;
  if (!qword_28022B0C0)
  {
    sub_267EF2CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B0C0);
  }

  return result;
}

void sub_267DE2D6C()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  v1 = type metadata accessor for DisallowedAppsProvider();
  v2 = swift_allocObject();
  v3 = v0;
  v4 = sub_267DE3488(v3, v2);

  qword_280240E48 = v1;
  unk_280240E50 = &off_2878D8290;
  qword_280240E30 = v4;
}

uint64_t sub_267DE2E24()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D3A0D0]) init];
  result = sub_267BA9F38(0, &qword_28022C1C0, 0x277D3A0D0);
  qword_280240E98 = result;
  unk_280240EA0 = &off_2878D5F58;
  qword_280240E80 = v0;
  return result;
}

uint64_t sub_267DE2E8C()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultWorkspace];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  v19[0] = 0;
  v2 = [v0 defaultApplicationForCategory:3 error:v19];

  if (v2)
  {
    v3 = v19[0];
    result = sub_267BC3164(v2, &selRef_bundleIdentifier);
  }

  else
  {
    v5 = v19[0];
    OUTLINED_FUNCTION_43();
    v6 = sub_267EF2A78();

    swift_willThrow();
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v7 = sub_267EF8A08();
    __swift_project_value_buffer(v7, qword_280240FB0);
    v8 = OUTLINED_FUNCTION_43();
    v9 = sub_267EF89F8();
    sub_267EF95E8();

    if (OUTLINED_FUNCTION_99())
    {
      v10 = OUTLINED_FUNCTION_48();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v6;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      OUTLINED_FUNCTION_45();
      _os_log_impl(v14, v15, v16, v17, v10, 0xCu);
      sub_267B9FF34(v11, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    result = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_267DE3080(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF92D8();
  v5 = [v2 relativeAppUsageProbabilitiesForCandidateBundleIds:v4 daysAgo:a2];

  sub_267BA9F38(0, &qword_280229538, 0x277CCABB0);
  v6 = sub_267EF8EF8();

  v7 = sub_267DE3318(v6);

  return v7;
}

uint64_t sub_267DE3164()
{
  v2 = sub_267EF57C8();
  v3 = OUTLINED_FUNCTION_4_6(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_55();
  v8 = sub_267EF5E68();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_267EF5E58();
  v12 = sub_267EF4628();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  sub_267EF4618();
  sub_267EF4608();
  v16 = v15;

  if (v16)
  {
    sub_267EF5E48();
  }

  sub_267EF7C18();
  if (v17)
  {
    if (sub_267EF5E38())
    {
      sub_267EF5798();
      sub_267EF5668();

      (*(v5 + 8))(v1, v0);
    }

    else
    {
    }
  }

  return v11;
}

void *sub_267DE3318(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C1C8, &unk_267F09900);
  result = sub_267EF9CD8();
  v3 = result;
  v4 = 0;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v12 = (result + 8);
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v16 = v13 | (v4 << 6);
      v17 = (*(v26 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v26 + 56) + 8 * v16);

      result = [v20 doubleValue];
      *&v12[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
      v21 = (v3[6] + 16 * v16);
      *v21 = v18;
      v21[1] = v19;
      *(v3[7] + 8 * v16) = v22;
      v23 = v3[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v3[2] = v25;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v15 = *(v6 + 8 * v4);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_267DE3488(uint64_t a1, void *a2)
{
  v9[3] = sub_267BA9F38(0, &qword_28022B5B8, 0x277D73660);
  v9[4] = &off_2878D3D40;
  v9[0] = a1;
  sub_267B9AFEC(v9, (a2 + 2));
  v4 = a2[5];
  v5 = a2[6];
  __swift_project_boxed_opaque_existential_0(a2 + 2, v4);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v5 + 16);

  v7(0xD000000000000031, 0x8000000267F0F890, sub_267DE35AC, v6, v4, v5);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v9);

  return a2;
}

uint64_t sub_267DE35D4()
{
  v9 = MEMORY[0x277D84F90];
  sub_267EF9BF8();
  v0 = 0;
  do
  {
    v1 = byte_2878CA9E0[v0 + 32];
    switch(byte_2878CA9E0[v0 + 32])
    {
      case 5u:
        OUTLINED_FUNCTION_19_31();
        goto LABEL_4;
      case 6u:
LABEL_17:

        break;
      default:
LABEL_4:
        v2 = sub_267EF9EA8();

        if ((v2 & 1) == 0)
        {
          switch(v1)
          {
            case 0:
            case 6:
              goto LABEL_12;
            case 1:
              OUTLINED_FUNCTION_21_25();
              goto LABEL_12;
            case 2:
              OUTLINED_FUNCTION_44_18();
              goto LABEL_12;
            case 3:
              OUTLINED_FUNCTION_36_19();
              goto LABEL_12;
            case 4:
              OUTLINED_FUNCTION_28_27();
              goto LABEL_12;
            case 5:
              OUTLINED_FUNCTION_10_34();
              goto LABEL_12;
            case 7:
              if (0x8000000267F0FDD0 == 0x8000000267F0FE30)
              {
                goto LABEL_17;
              }

LABEL_12:
              v3 = OUTLINED_FUNCTION_51_14();

              if ((v3 & 1) == 0)
              {
                switch(v1)
                {
                  case 1:
                    OUTLINED_FUNCTION_21_25();
                    break;
                  case 2:
                    OUTLINED_FUNCTION_44_18();
                    break;
                  case 3:
                    OUTLINED_FUNCTION_36_19();
                    break;
                  case 4:
                    OUTLINED_FUNCTION_28_27();
                    break;
                  case 5:
                    OUTLINED_FUNCTION_10_34();
                    break;
                  case 7:
                    goto LABEL_17;
                  default:
                    break;
                }

                sub_267EF9EA8();
              }

              break;
            case 8:
              goto LABEL_17;
            default:
              JUMPOUT(0);
          }
        }

        return result;
    }

    ++v0;
    v4 = sub_267EF3888();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_267EF3878();
    sub_267EF9BD8();
    v7 = *(v9 + 16);
    sub_267EF9C08();
    sub_267EF9C18();
    sub_267EF9BE8();
  }

  while (v0 != 9);
  return v9;
}

uint64_t sub_267DE3998()
{
  v9 = MEMORY[0x277D84F90];
  sub_267EF9BF8();
  v0 = 0;
  v1 = 0;
  do
  {
    v2 = v0;
    if (*(&unk_2878CADC0 + v1 + 32))
    {
      v3 = 0x8000000267F0FE60;
    }

    else
    {
      v3 = 0xED0000746E65746ELL;
    }

    if ((*(&unk_2878CADC0 + v1 + 32) & 1) != 0 || v3 != 0xED0000746E65746ELL)
    {
      sub_267EF9EA8();
    }

    v4 = sub_267EF3888();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_267EF3878();
    sub_267EF9BD8();
    v7 = *(v9 + 16);
    sub_267EF9C08();
    sub_267EF9C18();
    sub_267EF9BE8();
    v0 = 1;
    v1 = 1u;
  }

  while ((v2 & 1) == 0);
  return v9;
}

uint64_t sub_267DE3B04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_267EF4C08();
  v5 = OUTLINED_FUNCTION_58(v4);
  v59 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v57 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = v56 - v11;
  v12 = sub_267EF4BA8();
  v13 = OUTLINED_FUNCTION_58(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v20 = sub_267EF8A08();
  v21 = __swift_project_value_buffer(v20, qword_280240FB0);
  (*(v15 + 16))(v19, a1, v12);
  v56[2] = v21;
  v22 = sub_267EF89F8();
  v23 = sub_267EF95C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v56[0] = swift_slowAlloc();
    v56[1] = a2;
    v62[0] = v56[0];
    *v24 = 136315138;
    sub_267DE7764(&qword_28022AF50, MEMORY[0x277D5C118]);
    v25 = sub_267EF9E58();
    v26 = v4;
    v28 = v27;
    (*(v15 + 8))(v19, v12);
    v29 = sub_267BA33E8(v25, v28, v62);
    v4 = v26;

    *(v24 + 4) = v29;
    _os_log_impl(&dword_267B93000, v22, v23, "#EditMessageRCHFlowStrategy received input: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56[0]);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v15 + 8))(v19, v12);
  }

  v30 = v58;
  sub_267EF4B88();
  v31 = v59;
  v32 = (*(v59 + 88))(v30, v4);
  v33 = *MEMORY[0x277D5C150];
  v34 = *(v31 + 8);
  v34(v30, v4);
  if (v32 == v33)
  {
    return sub_267EF3E58();
  }

  v36 = v57;
  sub_267EF4B88();
  v37 = sub_267E57DFC(v36, &v60);
  (v34)(v36, v4, v37);
  if (v61)
  {
    sub_267BE58F4(&v60, v62);
    v38 = v64;
    __swift_project_boxed_opaque_existential_0(v62, v63);
    v39 = *(v38 + 288);
    v40 = OUTLINED_FUNCTION_38_0();
    if (v41(v40) & 1) != 0 && (v42 = v64, __swift_project_boxed_opaque_existential_0(v62, v63), v43 = *(v42 + 232), v44 = OUTLINED_FUNCTION_38_0(), (v45(v44)))
    {
      sub_267EF3E58();
    }

    else
    {
      v46 = sub_267EF89F8();
      v47 = sub_267EF95D8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v48);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v49, v50, "#EditMessageRCHFlowStrategy unrelated request, ignoring");
        OUTLINED_FUNCTION_26();
      }

      sub_267EF3E68();
    }

    return __swift_destroy_boxed_opaque_existential_0(v62);
  }

  else
  {
    sub_267B9F98C(&v60, &unk_28022BBF0, &unk_267F01C60);
    v51 = sub_267EF89F8();
    v52 = sub_267EF95C8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v53);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v54, v55, "#EditMessageRCHFlowStrategy unexpected input, ignoring");
      OUTLINED_FUNCTION_26();
    }

    return sub_267EF3E68();
  }
}

uint64_t sub_267DE3FD0()
{
  OUTLINED_FUNCTION_12();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_267EF4BE8();
  v1[8] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF4C08();
  v1[11] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[12] = v9;
  v11 = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267DE40C8()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#EditMessageRCHFlowStrategy making intent");
    OUTLINED_FUNCTION_26();
  }

  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  v10 = v0[5];

  (*(v8 + 16))(v7, v10, v9);
  v11 = (*(v8 + 88))(v7, v9);
  if (v11 == *MEMORY[0x277D5C128])
  {
    goto LABEL_6;
  }

  if (v11 == *MEMORY[0x277D5C150])
  {
    v17 = v0[13];
    v18 = v0[10];
    v19 = v0[8];
    v20 = v0[9];
    (*(v0[12] + 96))(v17, v0[11]);
    (*(v20 + 32))(v18, v17, v19);
    v21 = swift_task_alloc();
    v0[14] = v21;
    *v21 = v0;
    v21[1] = sub_267DE43E0;
    v22 = v0[10];
    v23 = v0[6];
    v24 = v0[7];

    return sub_267DE6628();
  }

  else
  {
    if (v11 == *MEMORY[0x277D5C160])
    {
LABEL_6:
      (*(v0[12] + 8))(v0[13], v0[11]);
      v12 = swift_task_alloc();
      v0[16] = v12;
      *v12 = v0;
      v12[1] = sub_267DE4568;
      v13 = v0[6];
      v14 = v0[7];
      v15 = v0[5];

      return sub_267DE6244();
    }

    v25 = v0[12];
    sub_267C266B0();
    swift_allocError();
    *v26 = 0xD000000000000042;
    v26[1] = 0x8000000267F1A700;
    swift_willThrow();
    (*(v25 + 8))(v0[13], v0[11]);
    v27 = v0[13];
    v28 = v0[10];

    OUTLINED_FUNCTION_17();

    return v29();
  }
}

uint64_t sub_267DE43E0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v9 + 120) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267DE44E0()
{
  OUTLINED_FUNCTION_12();
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[3];
  v2 = v0[13];
  v3 = v0[10];

  OUTLINED_FUNCTION_4_3();

  return v4(v1);
}

uint64_t sub_267DE4568(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  v8 = *(v4 + 104);
  v9 = *(v4 + 80);

  v11 = *(v6 + 8);
  if (!v1)
  {
    v10 = a1;
  }

  return v11(v10);
}

uint64_t sub_267DE46A8()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[15];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v2 = v0[13];
  v3 = v0[10];

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267DE472C()
{
  OUTLINED_FUNCTION_12();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60) - 8) + 64);
  v1[26] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4228();
  v1[27] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[28] = v7;
  v9 = *(v8 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267DE4864()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#EditMessageRCHFlowStrategy received error response");
    OUTLINED_FUNCTION_26();
  }

  v7 = v0[24];

  v8 = [v7 code];
  if (v8 == 9)
  {
    v9 = *(v0[25] + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageCATs);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[37] = v10;
    *v10 = v11;
    v10[1] = sub_267DE4DB4;
    v12 = v0[35];

    return sub_267D250F8();
  }

  else if (*MEMORY[0x277CD4438] == v8)
  {
    v14 = v0[25];
    v15 = *(v14 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageCATs);
    v16 = [*(v14 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_sentMessageContext + *(type metadata accessor for TimedSentMessageContext(0) + 28)) recipients];
    if (v16)
    {
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v17 = sub_267EF92F8();

      v16 = sub_267BAF0DC(v17);

      LOBYTE(v16) = v16 == 1;
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[39] = v18;
    *v18 = v19;
    v18[1] = sub_267DE4FF8;
    v20 = v0[34];

    return sub_267D249F0(v20, v16);
  }

  else if (*MEMORY[0x277CD4448] == v8)
  {
    v21 = *(v0[25] + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageCATs);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[41] = v22;
    *v22 = v23;
    v22[1] = sub_267DE5240;
    v24 = v0[33];

    return sub_267D25048();
  }

  else if (*MEMORY[0x277CD4440] == v8)
  {
    v25 = *(v0[25] + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageCATs);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[43] = v26;
    *v26 = v27;
    v26[1] = sub_267DE5488;
    v28 = v0[32];

    return sub_267D24F98();
  }

  else if (v8 == 8)
  {
    v35 = *(v0[25] + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageCATs);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[48] = v36;
    *v36 = v37;
    v36[1] = sub_267DE5928;
    v38 = v0[30];

    return sub_267D24EE8();
  }

  else if (v8 == 10)
  {
    v29 = v0[23];
    v30 = *(v0[25] + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageCATs);
    type metadata accessor for MessagesApp(0);

    v31 = sub_267EC814C();
    v0[45] = v31;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[46] = v32;
    *v32 = v33;
    v32[1] = sub_267DE56D0;
    v34 = v0[31];

    return sub_267D24C5C(v34, v31);
  }

  else
  {
    v39 = v0[25];
    v40 = v39[6];
    __swift_project_boxed_opaque_existential_0(v39 + 2, v39[5]);
    v41 = *(v40 + 8);
    v42 = OUTLINED_FUNCTION_38_0();
    v43(v42);
    v44 = *(MEMORY[0x277D5BCD8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[50] = v45;
    *v45 = v46;
    v45[1] = sub_267DE5B70;
    v47 = v0[29];

    return MEMORY[0x2821BAEE0](v47, v0 + 2);
  }
}

uint64_t sub_267DE4DB4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 304) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DE4EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v24 = *(v21 + 280);
  v23 = *(v21 + 288);
  OUTLINED_FUNCTION_37_16();
  v25();
  v26 = OUTLINED_FUNCTION_0_54();
  v27(v26);
  OUTLINED_FUNCTION_1_8();
  v28 = OUTLINED_FUNCTION_4_1();
  v29(v28);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v30 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v30);
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_25_1(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_51();
  sub_267B9F98C(v22, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_7_40();
  v33(v32);
  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v22, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DE4FF8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DE50F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v23 = *(v21 + 288);
  v24 = *(v21 + 272);
  OUTLINED_FUNCTION_37_16();
  v25();
  v26 = OUTLINED_FUNCTION_0_54();
  v27(v26);
  OUTLINED_FUNCTION_1_8();
  v28 = OUTLINED_FUNCTION_4_1();
  v29(v28);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v30 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v30);
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_25_1(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_51();
  sub_267B9F98C(v22, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_7_40();
  v33(v32);
  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v22, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DE5240()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 336) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DE5338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v23 = *(v21 + 288);
  v24 = *(v21 + 264);
  OUTLINED_FUNCTION_37_16();
  v25();
  v26 = OUTLINED_FUNCTION_0_54();
  v27(v26);
  OUTLINED_FUNCTION_1_8();
  v28 = OUTLINED_FUNCTION_4_1();
  v29(v28);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v30 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v30);
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_25_1(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_51();
  sub_267B9F98C(v22, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_7_40();
  v33(v32);
  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v22, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DE5488()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 352) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DE5580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v23 = *(v21 + 288);
  v24 = *(v21 + 256);
  OUTLINED_FUNCTION_37_16();
  v25();
  v26 = OUTLINED_FUNCTION_0_54();
  v27(v26);
  OUTLINED_FUNCTION_1_8();
  v28 = OUTLINED_FUNCTION_4_1();
  v29(v28);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v30 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v30);
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_25_1(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_51();
  sub_267B9F98C(v22, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_7_40();
  v33(v32);
  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v22, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DE56D0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *(v2 + 368);
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 376) = v0;

  if (!v0)
  {
    v7 = *(v3 + 360);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DE57D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v23 = *(v21 + 288);
  v24 = *(v21 + 248);
  OUTLINED_FUNCTION_37_16();
  v25();
  v26 = OUTLINED_FUNCTION_0_54();
  v27(v26);
  OUTLINED_FUNCTION_1_8();
  v28 = OUTLINED_FUNCTION_4_1();
  v29(v28);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v30 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v30);
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_25_1(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_51();
  sub_267B9F98C(v22, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_7_40();
  v33(v32);
  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v22, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DE5928()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 384);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 392) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DE5A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v23 = *(v21 + 288);
  v24 = *(v21 + 240);
  OUTLINED_FUNCTION_37_16();
  v25();
  v26 = OUTLINED_FUNCTION_0_54();
  v27(v26);
  OUTLINED_FUNCTION_1_8();
  v28 = OUTLINED_FUNCTION_4_1();
  v29(v28);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v30 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v30);
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_25_1(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_51();
  sub_267B9F98C(v22, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_7_40();
  v33(v32);
  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v22, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DE5B70()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *(v2 + 400);
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 408) = v0;

  sub_267B9F98C(v3 + 16, &qword_28022A620, &qword_267F08EC0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DE5C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  (*(v21[28] + 32))(v21[36], v21[29], v21[27]);
  v23 = OUTLINED_FUNCTION_0_54();
  v24(v23);
  OUTLINED_FUNCTION_1_8();
  v25 = OUTLINED_FUNCTION_4_1();
  v26(v25);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v27 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v27);
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_25_1(v28, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_51();
  sub_267B9F98C(v22, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v20, &unk_28022AE40, &unk_267EFCB60);
  v29 = OUTLINED_FUNCTION_7_40();
  v30(v29);
  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v22, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DE5DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 408);
  OUTLINED_FUNCTION_9_40();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267DE5E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 304);
  OUTLINED_FUNCTION_9_40();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267DE5F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 320);
  OUTLINED_FUNCTION_9_40();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267DE5FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 336);
  OUTLINED_FUNCTION_9_40();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267DE605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 352);
  OUTLINED_FUNCTION_9_40();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267DE60FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 360);

  v14 = *(v12 + 376);
  OUTLINED_FUNCTION_9_40();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_267DE61A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 392);
  OUTLINED_FUNCTION_9_40();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267DE6244()
{
  OUTLINED_FUNCTION_12();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0) - 8) + 64);
  v1[24] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DE62D4()
{
  v1 = *(v0 + 176);
  sub_267E57DFC(*(v0 + 168), (v0 + 16));
  if (v1)
  {
    v2 = *(v0 + 176);
    v3 = sub_267EF97C8();
  }

  else
  {
    v4 = [*(*(v0 + 184) + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_sentMessageContext + *(type metadata accessor for TimedSentMessageContext(0) + 32)) sentMessages];
    if (v4)
    {
      sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
      v5 = sub_267EF92F8();

      if (sub_267BAF0DC(v5))
      {
        sub_267BBD0EC(0, (v5 & 0xC000000000000001) == 0, v5);
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x26D609870](0, v5);
        }

        else
        {
          v6 = *(v5 + 32);
        }

        v7 = v6;

        v8 = [v7 identifier];

        v9 = sub_267EF9028();
        v4 = v10;
      }

      else
      {

        v9 = 0;
        v4 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = objc_allocWithZone(MEMORY[0x277CD3BC0]);
    v3 = sub_267DE76C4(v9, v4, 0, 0);
  }

  v12 = v3;
  sub_267C2FB6C(v0 + 16, v0 + 56, &unk_28022BBF0, &unk_267F01C60);
  v13 = *(v0 + 80);
  if (v13)
  {
    v14 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    v15 = (*(v14 + 400))(v13, v14);
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      v19 = *(v0 + 184);
      v20 = *(v0 + 192);
      v21 = v19[6];
      __swift_project_boxed_opaque_existential_0(v19 + 2, v19[5]);
      v22 = *(v21 + 8);
      v23 = OUTLINED_FUNCTION_4_1();
      v24(v23);
      OUTLINED_FUNCTION_17_25();
      OUTLINED_FUNCTION_4_1();
      sub_267EF3B68();
      v25 = sub_267EF2E38();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v25);
      v26 = sub_267D5EBA4(v20, v17, v18);
      v28 = v27;

      sub_267B9F98C(v20, &unk_28022AF10, &unk_267F001E0);
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      if (v28)
      {
        *(v0 + 160) = MEMORY[0x277D837D0];
        *(v0 + 136) = v26;
        *(v0 + 144) = v28;
        goto LABEL_18;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    }
  }

  else
  {
    sub_267B9F98C(v0 + 56, &unk_28022BBF0, &unk_267F01C60);
  }

  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
LABEL_18:
  v29 = *(v0 + 192);
  sub_267ECE2B8(v0 + 136, 0);
  sub_267B9F98C(v0 + 16, &unk_28022BBF0, &unk_267F01C60);
  sub_267B9F98C(v0 + 136, &qword_28022AEF0, &qword_267EFCDE0);

  OUTLINED_FUNCTION_4_3();

  return v30(v12);
}

uint64_t sub_267DE6628()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_267EF8228();
  v1[5] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[6] = v5;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DE6738()
{
  v73 = v0;
  v1 = v0 + 11;
  v2 = v0[3];
  sub_267B9CC04(v0[2], v0[11]);
  if (!v2)
  {
    sub_267C266B0();
    swift_allocError();
    *v9 = 0xD00000000000004BLL;
    v9[1] = 0x8000000267F1A660;
    swift_willThrow();
    goto LABEL_6;
  }

  v3 = v0[10];
  v4 = v0[3];
  sub_267C2FB6C(v0[11], v3, &unk_28022BBE0, qword_267EFD030);
  v5 = type metadata accessor for DirectInvocationUseCases();
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    v6 = v4;
LABEL_4:
    v7 = *v1;
    sub_267C266B0();
    swift_allocError();
    *v8 = 0xD000000000000044;
    v8[1] = 0x8000000267F1A6B0;
    swift_willThrow();

    sub_267B9F98C(v7, &unk_28022BBE0, qword_267EFD030);
    v1 = v0 + 10;
LABEL_6:
    v10 = *v1;
    v12 = v0[10];
    v11 = v0[11];
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[7];
    sub_267B9F98C(v10, &unk_28022BBE0, qword_267EFD030);

    OUTLINED_FUNCTION_17();

    return v16();
  }

  sub_267C2FB6C(v0[10], v0[9], &unk_28022BBE0, qword_267EFD030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[6] + 32))(v0[8], v0[9], v0[5]);
    v38 = qword_280228818;
    v25 = v4;
    if (v38 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v40 = v0[7];
    v39 = v0[8];
    v42 = v0[5];
    v41 = v0[6];
    v43 = sub_267EF8A08();
    __swift_project_value_buffer(v43, qword_280240FB0);
    (*(v41 + 16))(v40, v39, v42);
    v44 = sub_267EF89F8();
    v45 = sub_267EF95D8();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[11];
    v48 = v0[7];
    v49 = v0[8];
    v51 = v0[5];
    v50 = v0[6];
    if (v46)
    {
      v71 = v25;
      v52 = swift_slowAlloc();
      v70 = v49;
      v53 = swift_slowAlloc();
      v72 = v53;
      *v52 = 136315138;
      v54 = sub_267EF8218();
      v69 = v47;
      v56 = v55;
      v57 = *(v50 + 8);
      v57(v48, v51);
      v58 = sub_267BA33E8(v54, v56, &v72);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_267B93000, v44, v45, "#EditMessageRCHFlowStrategy Keeping the current intent for button %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      OUTLINED_FUNCTION_32_0();
      v25 = v71;
      OUTLINED_FUNCTION_32_0();

      v57(v70, v51);
      v59 = v69;
    }

    else
    {

      v63 = *(v50 + 8);
      v63(v48, v51);
      v63(v49, v51);
      v59 = v47;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 12)
  {
    v27 = v0[9];
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[3];
    v31 = v4;

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v32 = sub_267EF8A08();
    __swift_project_value_buffer(v32, qword_280240FB0);

    v33 = sub_267EF89F8();
    v34 = sub_267EF95D8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = v35;
      *v35 = 67109120;
      v37 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v37 = v28 & 0xFFFFFFFFFFFFLL;
      }

      *(v35 + 1) = v37 == 0;

      _os_log_impl(&dword_267B93000, v33, v34, "#EditMessageRCHFlowStrategy received a contentChangedViaSnippet directInvocation content.isEmpty %{BOOL}d", v36, 8u);
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    v62 = v0[11];
    *(*(v0[4] + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageState) + 18) = 1;
    v25 = sub_267DE6DBC(v31, v28, v29);

    v59 = v62;
LABEL_30:
    sub_267B9F98C(v59, &unk_28022BBE0, qword_267EFD030);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload != 11)
  {
    v60 = v0[9];
    v61 = v4;
    sub_267C269D0(v60, type metadata accessor for DirectInvocationUseCases);
    goto LABEL_4;
  }

  v19 = v0[11];
  v20 = v0[9];
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[3];
  v24 = v4;

  v25 = sub_267DE6DBC(v24, v21, v22);

  sub_267B9F98C(v19, &unk_28022BBE0, qword_267EFD030);

  v26 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v26 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    *(*(v0[4] + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageState) + 16) = 1;
  }

LABEL_31:
  v64 = v0[11];
  v66 = v0[8];
  v65 = v0[9];
  v67 = v0[7];
  sub_267B9F98C(v0[10], &unk_28022BBE0, qword_267EFD030);

  OUTLINED_FUNCTION_4_3();

  return v68(v25);
}

uint64_t sub_267DE6DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_267EF97C8();
  v7[3] = MEMORY[0x277D837D0];
  v7[0] = a2;
  v7[1] = a3;

  sub_267ECE2B8(v7, 0);
  sub_267B9F98C(v7, &qword_28022AEF0, &qword_267EFCDE0);
  return v5;
}

uint64_t sub_267DE6E3C()
{
  OUTLINED_FUNCTION_53_2(OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_sentMessageContext);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageCATs);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_commonTemplateProvider));
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageState);
}

uint64_t sub_267DE6E98()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_53_2(OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_sentMessageContext);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageCATs);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_commonTemplateProvider));
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageState);

  return v0;
}

uint64_t sub_267DE6EF4()
{
  sub_267DE6E98();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EditMessageRCHFlowStrategy()
{
  result = qword_28022C1F0;
  if (!qword_28022C1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267DE6FA0()
{
  result = type metadata accessor for TimedSentMessageContext(319);
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

uint64_t sub_267DE7060()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267CE6778;

  return sub_267DE3FD0();
}

uint64_t sub_267DE7120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for EditMessageRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_267DE71F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for EditMessageRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_267DE72C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for EditMessageRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_267DE7390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for EditMessageRCHFlowStrategy();
  *v13 = v6;
  v13[1] = sub_267BAEBEC;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_267DE7470()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267DE472C();
}

uint64_t sub_267DE7524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5C0D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for EditMessageRCHFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BF1F28;

  return MEMORY[0x2821BBB48](a1, a2, v10, a4);
}

id sub_267DE76C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v6 = sub_267EF8FF8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_267EF8FF8();

LABEL_6:
  v8 = [v4 initWithMessageIdentifier:v6 editedContent:v7];

  return v8;
}

uint64_t sub_267DE7764(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267DE77AC(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - v6;
  v8 = sub_267EF7118();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - v14;
  v16 = sub_267EF7AC8();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_267EF7AB8();
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v20 = sub_267EF3C58();
  OUTLINED_FUNCTION_3_56(v20);
  sub_267EF7A58();
  OUTLINED_FUNCTION_5_51();
  OUTLINED_FUNCTION_0_55();
  v21 = sub_267EF3C28();
  OUTLINED_FUNCTION_2_52(v21);
  sub_267EF7A18();
  OUTLINED_FUNCTION_4_51();
  OUTLINED_FUNCTION_1_62();
  v22 = sub_267EF3BE8();
  OUTLINED_FUNCTION_3_56(v22);
  sub_267EF7A98();
  OUTLINED_FUNCTION_5_51();
  OUTLINED_FUNCTION_0_55();
  v23 = sub_267EF3C38();
  OUTLINED_FUNCTION_2_52(v23);
  sub_267EF7A38();
  OUTLINED_FUNCTION_4_51();
  OUTLINED_FUNCTION_1_62();
  v24 = sub_267EF3C18();
  OUTLINED_FUNCTION_3_56(v24);
  sub_267EF7A08();
  OUTLINED_FUNCTION_5_51();
  OUTLINED_FUNCTION_0_55();
  v25 = sub_267EF3BF8();
  OUTLINED_FUNCTION_2_52(v25);
  sub_267EF7AA8();
  OUTLINED_FUNCTION_4_51();
  OUTLINED_FUNCTION_1_62();
  v26 = sub_267EF3C48();
  OUTLINED_FUNCTION_3_56(v26);
  sub_267EF7A48();
  OUTLINED_FUNCTION_5_51();
  OUTLINED_FUNCTION_0_55();
  v27 = sub_267EF3B88();
  OUTLINED_FUNCTION_2_52(v27);
  sub_267EF7A28();
  OUTLINED_FUNCTION_4_51();
  OUTLINED_FUNCTION_1_62();
  v28 = sub_267EF3BC8();
  OUTLINED_FUNCTION_3_56(v28);
  sub_267EF7A88();
  OUTLINED_FUNCTION_5_51();
  OUTLINED_FUNCTION_0_55();
  v29 = sub_267EF3B48();
  OUTLINED_FUNCTION_2_52(v29);
  sub_267EF7A68();
  OUTLINED_FUNCTION_4_51();
  sub_267DE7B70(a2, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_267EF3BA8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
    v32 = v36;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9FF34(v7, &unk_28022BAC0, &unk_267EFE470);
    }
  }

  else
  {
    v32 = v36;
    (*(v36 + 32))(v11, v7, v8);
  }

  sub_267EF7108();
  (*(v32 + 8))(v11, v8);
  sub_267EF90F8();

  v33 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v33);
  sub_267EF7A78();

  sub_267B9FF34(v15, &unk_28022AE30, &qword_267EFC0B0);
  v34 = sub_267EF7AD8();
  sub_267B9FF34(a2, &unk_28022BAC0, &unk_267EFE470);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v34;
}

uint64_t sub_267DE7B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DE7BE0()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 272) = v2;
  *(v1 + 144) = v3;
  *(v1 + 152) = v0;
  *(v1 + 128) = v4;
  *(v1 + 136) = v5;
  *(v1 + 112) = v6;
  *(v1 + 120) = v7;
  *(v1 + 96) = v8;
  *(v1 + 104) = v9;
  v10 = sub_267EF8B28();
  *(v1 + 160) = v10;
  v11 = *(v10 - 8);
  *(v1 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v1 + 176) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C218, &qword_267F09B90);
  *(v1 + 184) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 216) = swift_task_alloc();
  v15 = sub_267EF89E8();
  *(v1 + 224) = v15;
  v16 = *(v15 - 8);
  *(v1 + 232) = v16;
  v17 = *(v16 + 64) + 15;
  *(v1 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267DE7D68, 0, 0);
}

uint64_t sub_267DE7D68()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  v0[31] = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  v10 = v0[19];

  v11 = *(v10 + 16);
  v12 = *(MEMORY[0x277D857C8] + 4);
  v13 = swift_task_alloc();
  v0[32] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A418, &qword_267F00AE0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  *v13 = v0;
  v13[1] = sub_267DE7EC8;
  v16 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 7, v11, v14, v15, v16);
}

uint64_t sub_267DE7EC8()
{
  OUTLINED_FUNCTION_12();
  v2 = *(*v1 + 256);
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *(v5 + 264) = v0;

  if (v0)
  {
    v6 = sub_267DE8460;
  }

  else
  {
    v6 = sub_267DE7FD0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267DE7FD0()
{
  v60 = v0;
  v1 = *(v0 + 248);
  sub_267BE58F4((v0 + 56), v0 + 16);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 240);
  v11 = *(v0 + 216);
  v55 = *(v0 + 208);
  v57 = *(v0 + 248);
  v53 = *(v0 + 272);
  v51 = *(v0 + 136);
  v52 = *(v0 + 144);
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v16 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  sub_267EF89B8();
  v17 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  sub_267EF8B18();
  sub_267EF9688();
  sub_267EF89B8();
  sub_267DE8630(v11, v55);
  v18 = sub_267EF89F8();
  v19 = sub_267EF95D8();
  v20 = OUTLINED_FUNCTION_10_2(v19);
  v21 = *(v0 + 208);
  if (v20)
  {
    v22 = *(v0 + 200);
    v23 = *(v0 + 184);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v59 = v25;
    *v24 = 136315138;
    sub_267DE8630(v21, v22);
    v26 = sub_267EF9098();
    v28 = v27;
    sub_267B9F98C(v21, &qword_28022C218, &qword_267F09B90);
    v29 = sub_267BA33E8(v26, v28, &v59);

    *(v24 + 4) = v29;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x26D60A7B0](v25, -1, -1);
    OUTLINED_FUNCTION_26();
  }

  else
  {

    sub_267B9F98C(v21, &qword_28022C218, &qword_267F09B90);
  }

  v35 = *(v0 + 184);
  sub_267DE8630(*(v0 + 216), *(v0 + 192));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = *(v0 + 232);
  v37 = *(v0 + 240);
  v39 = *(v0 + 216);
  v40 = *(v0 + 224);
  if (EnumCaseMultiPayload == 1)
  {
    v56 = *(v0 + 208);
    v58 = *(v0 + 200);
    v54 = *(v0 + 192);
    v41 = *(v0 + 176);
    v42 = *(v0 + 160);
    v43 = *(*(v0 + 168) + 32);
    v43(v41);
    sub_267BF1D98();
    swift_willThrowTypedImpl();
    swift_allocError();
    (v43)(v44, v41, v42);
    sub_267B9F98C(v39, &qword_28022C218, &qword_267F09B90);
    (*(v38 + 8))(v37, v40);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    v46 = *(v0 + 192);
    v47 = *(v0 + 96);
    sub_267B9F98C(*(v0 + 216), &qword_28022C218, &qword_267F09B90);
    (*(v38 + 8))(v37, v40);
    v48 = sub_267EF8B38();
    OUTLINED_FUNCTION_22(v48);
    (*(v49 + 32))(v47, v46);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    OUTLINED_FUNCTION_10_35();
  }

  OUTLINED_FUNCTION_17();

  return v45();
}

uint64_t sub_267DE8460()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[33];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_267B93000, v4, v5, "#SendMessageIntentConfirmationInferrer failed to get AutoConfirming: %@, returning .confirmWithUser", v8, 0xCu);
    sub_267B9F98C(v9, &unk_280229E30, &unk_267EFC270);
    MEMORY[0x26D60A7B0](v9, -1, -1);
    MEMORY[0x26D60A7B0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[12];
  v13 = *MEMORY[0x277D55958];
  v14 = sub_267EF8B38();
  OUTLINED_FUNCTION_22(v14);
  (*(v15 + 104))(v12, v13);
  OUTLINED_FUNCTION_10_35();

  OUTLINED_FUNCTION_17();

  return v16();
}

uint64_t sub_267DE8630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C218, &qword_267F09B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DE86A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_267DE86F4()
{
  v2 = objc_allocWithZone(OUTLINED_FUNCTION_3_57());
  sub_267EF92D8();
  OUTLINED_FUNCTION_7_41();
  v3 = OUTLINED_FUNCTION_5_52();
  v5 = [v3 v4];

  v6 = v5;
  if (v0)
  {
    v7 = sub_267EF8FF8();
  }

  else
  {
    v7 = 0;
  }

  [v5 _setLaunchId_];

  return v5;
}

uint64_t sub_267DE87C0()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_28022C220);
  swift_endAccess();
  if (v1)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_267B9FF34(v6, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }
}

uint64_t sub_267DE88AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_267EF8FF8();
  }

  else
  {
    v3 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, &unk_28022C220, v3, 1);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void sub_267DE8E14()
{
  OUTLINED_FUNCTION_28_10();
  v1 = v0;
  v3 = v2;
  if (sub_267BCEA0C(v2))
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v14 = OUTLINED_FUNCTION_2_53();
  }

  else
  {
    v14 = 0;
  }

  if (sub_267E2D6E4(v3))
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v4 = OUTLINED_FUNCTION_2_53();
  }

  else
  {
    v4 = 0;
  }

  if (sub_267E43628(v3))
  {
    v5 = sub_267EF92D8();
  }

  else
  {
    v5 = 0;
  }

  v13 = [v3 attributes];
  v6 = [v3 dateTimeRange];
  if (sub_267DE92F0(v3))
  {
    v7 = sub_267EF92D8();
  }

  else
  {
    v7 = 0;
  }

  if (sub_267E2D798(v3))
  {
    v8 = sub_267EF92D8();

    if (v1)
    {
LABEL_15:
      sub_267BA9F38(0, &qword_280229ED0, 0x277CD4188);
      v9 = sub_267EF92D8();

      goto LABEL_18;
    }
  }

  else
  {
    v8 = 0;
    if (v1)
    {
      goto LABEL_15;
    }
  }

  v9 = 0;
LABEL_18:
  if (sub_267E2D78C(v3))
  {
    sub_267EF92D8();
    OUTLINED_FUNCTION_7_41();
  }

  else
  {
    v1 = 0;
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecipients:v14 senders:v4 searchTerms:v5 attributes:v13 dateTimeRange:v6 identifiers:v7 notificationIdentifiers:? speakableGroupNames:? conversationIdentifiers:?];

  v11 = v10;
  v12 = [v3 _metadata];
  OUTLINED_FUNCTION_6_42(v12, sel__setMetadata_);

  OUTLINED_FUNCTION_27_1();
}

void sub_267DE9088()
{
  OUTLINED_FUNCTION_28_10();
  v14 = v0;
  v2 = v1;
  if (sub_267BCEA0C(v1))
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v3 = OUTLINED_FUNCTION_2_53();
  }

  else
  {
    v3 = 0;
  }

  if (sub_267E2D6E4(v2))
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v4 = OUTLINED_FUNCTION_2_53();
  }

  else
  {
    v4 = 0;
  }

  if (sub_267E43628(v2))
  {
    v5 = sub_267EF92D8();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 dateTimeRange];
  if (sub_267DE92F0(v2))
  {
    v7 = sub_267EF92D8();
  }

  else
  {
    v7 = 0;
  }

  if (sub_267E2D798(v2))
  {
    v8 = sub_267EF92D8();
  }

  else
  {
    v8 = 0;
  }

  if (sub_267E2D700(v2))
  {
    sub_267BA9F38(0, &qword_280229ED0, 0x277CD4188);
    v9 = OUTLINED_FUNCTION_2_53();
  }

  else
  {
    v9 = 0;
  }

  if (sub_267E2D78C(v2))
  {
    v10 = sub_267EF92D8();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecipients:v3 senders:v4 searchTerms:v5 attributes:v14 dateTimeRange:v6 identifiers:v7 notificationIdentifiers:? speakableGroupNames:? conversationIdentifiers:?];

  v12 = v11;
  v13 = [v2 _metadata];
  OUTLINED_FUNCTION_6_42(v13, sel__setMetadata_);

  OUTLINED_FUNCTION_27_1();
}

uint64_t sub_267DE92F0(void *a1)
{
  v1 = [a1 identifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267DE9348@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EF2D78();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v3;
  if (qword_2802287D8 != -1)
  {
    OUTLINED_FUNCTION_0_56();
  }

  v6 = sub_267BC2F78(v4, v5, qword_28022C230);

  if (v6)
  {
    if (qword_2802287F0 != -1)
    {
      swift_once();
    }

    v7 = qword_28022C268;
  }

  else
  {
LABEL_8:
    if (qword_2802287D0 != -1)
    {
      swift_once();
    }

    v7 = qword_280240EC0;
  }

  v8 = sub_267EF2728();
  __swift_project_value_buffer(v8, v7);
  OUTLINED_FUNCTION_1_63();
  v10 = *(v9 + 16);

  return v10(a1);
}

uint64_t sub_267DE9484@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EF2D78();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v3;
  if (qword_2802287D8 != -1)
  {
    OUTLINED_FUNCTION_0_56();
  }

  v6 = sub_267BC2F78(v4, v5, qword_28022C230);

  if (v6)
  {
    if (qword_2802287E8 != -1)
    {
      swift_once();
    }

    v7 = qword_28022C250;
  }

  else
  {
LABEL_8:
    if (qword_2802287C8 != -1)
    {
      swift_once();
    }

    v7 = qword_280240EA8;
  }

  v8 = sub_267EF2728();
  __swift_project_value_buffer(v8, v7);
  OUTLINED_FUNCTION_1_63();
  v10 = *(v9 + 16);

  return v10(a1);
}

uint64_t sub_267DE95C0()
{
  v0 = sub_267EF2728();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v11 - v7;
  __swift_allocate_value_buffer(v6, qword_280240EA8);
  __swift_project_value_buffer(v0, qword_280240EA8);
  sub_267EF26C8();
  sub_267EF26D8();
  sub_267EF26E8();
  v9 = *(v1 + 8);
  v9(v5, v0);
  return (v9)(v8, v0);
}

uint64_t sub_267DE9744()
{
  v0 = sub_267EF2728();
  __swift_allocate_value_buffer(v0, qword_28022C238);
  __swift_project_value_buffer(v0, qword_28022C238);
  return sub_267EF26A8();
}

uint64_t sub_267DE9798()
{
  v0 = sub_267EF2728();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v15 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v15 - v10;
  __swift_allocate_value_buffer(v9, qword_28022C250);
  __swift_project_value_buffer(v0, qword_28022C250);
  sub_267EF26D8();
  sub_267EF26C8();
  sub_267EF26E8();
  v12 = *(v1 + 8);
  v12(v5, v0);
  v12(v8, v0);
  if (qword_2802287E0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v0, qword_28022C238);
  (*(v1 + 16))(v8, v13, v0);
  sub_267EF2688();
  v12(v8, v0);
  return (v12)(v11, v0);
}

uint64_t sub_267DE99C0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_267EF2728();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v10, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v12, v13, v7);
  sub_267EF2718();
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_267DE9B04()
{
  sub_267BBD38C(v1, &selRef_contactIdentifier);
  if (v2 || (sub_267BBD38C(v1, &selRef_customIdentifier), v3) || (v5 = [v1 personHandle]) != 0 && (sub_267BBE048(v5), v6))
  {
    OUTLINED_FUNCTION_38_21();
  }

  else
  {
    v7 = [v1 displayName];
    sub_267EF9028();
    OUTLINED_FUNCTION_38_21();
  }

  return v0;
}

uint64_t sub_267DE9BAC()
{
  v1 = sub_267EF2A58();
  v2 = OUTLINED_FUNCTION_58(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  if ((sub_267DEAF90() & 1) == 0)
  {
    return 0;
  }

  v13 = [v0 nameComponents];
  if (v13)
  {
    v14 = v13;
    sub_267EF2A18();

    v15 = *(v4 + 32);
    v16 = OUTLINED_FUNCTION_54_0();
    v17(v16);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v1);
    sub_267B9FED8(v12, &unk_28022BCA0, &unk_267EFD990);
    return 0;
  }

  v18 = 1;
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v1);
  sub_267B9FED8(v12, &unk_28022BCA0, &unk_267EFD990);
  v19 = [v0 relationship];
  if (v19)
  {

    return 0;
  }

  return v18;
}

void sub_267DE9D58()
{
  OUTLINED_FUNCTION_48_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v7 = OUTLINED_FUNCTION_18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_60();
  v54 = v10 - v11;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_32_17();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  v55 = v0;
  v21 = [v0 displayName];
  sub_267EF9028();

  OUTLINED_FUNCTION_30_27();
  if (v22)
  {
    goto LABEL_2;
  }

  v52 = v0;
  v53 = v4;
  v51 = v1;
  v23 = v55;
  v24 = [v55 nameComponents];
  if (v24)
  {
    v25 = v24;
    sub_267EF2A18();

    sub_267EF2A58();
    v26 = 0;
  }

  else
  {
    sub_267EF2A58();
    v26 = 1;
  }

  OUTLINED_FUNCTION_18_28(v5, v26);
  sub_267D2E49C(v5, v20);
  sub_267EF2A58();
  if (OUTLINED_FUNCTION_11_38() || (v31 = sub_267EF2988(), !v32))
  {
    sub_267B9FED8(v20, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    v33 = v31;
    v34 = v32;
    sub_267B9FED8(v20, &unk_28022BCA0, &unk_267EFD990);

    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      goto LABEL_2;
    }
  }

  v27 = [v23 nameComponents];
  if (v27)
  {
    v28 = v27;
    v29 = v52;
    sub_267EF2A18();

    v30 = 0;
  }

  else
  {
    v30 = 1;
    v29 = v52;
  }

  OUTLINED_FUNCTION_18_28(v29, v30);
  sub_267D2E49C(v29, v2);
  if (OUTLINED_FUNCTION_14_36(v2) || (sub_267EF29A8(), !v40))
  {
    sub_267B9FED8(v2, &unk_28022BCA0, &unk_267EFD990);
    v36 = v53;
  }

  else
  {
    sub_267B9FED8(v2, &unk_28022BCA0, &unk_267EFD990);

    OUTLINED_FUNCTION_16_31();
    v36 = v53;
    if (v41)
    {
      goto LABEL_2;
    }
  }

  v37 = [v23 &selRef_setDelayDismissalMs_ + 3];
  if (v37)
  {
    v38 = v37;
    sub_267EF2A18();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  OUTLINED_FUNCTION_18_28(v36, v39);
  sub_267D2E49C(v36, v3);
  if (OUTLINED_FUNCTION_14_36(v3) || (sub_267EF29C8(), !v47))
  {
    sub_267B9FED8(v3, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    sub_267B9FED8(v3, &unk_28022BCA0, &unk_267EFD990);

    OUTLINED_FUNCTION_16_31();
    if (v48)
    {
      goto LABEL_2;
    }
  }

  v42 = [v23 &selRef_setDelayDismissalMs_ + 3];
  if (v42)
  {
    v43 = v42;
    v44 = v54;
    sub_267EF2A18();

    v45 = 0;
    v46 = v51;
  }

  else
  {
    v45 = 1;
    v46 = v51;
    v44 = v54;
  }

  OUTLINED_FUNCTION_18_28(v44, v45);
  sub_267D2E49C(v44, v46);
  if (OUTLINED_FUNCTION_11_38() || (sub_267EF2A28(), !v49))
  {
    sub_267B9FED8(v46, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    sub_267B9FED8(v46, &unk_28022BCA0, &unk_267EFD990);

    OUTLINED_FUNCTION_16_31();
  }

LABEL_2:
  OUTLINED_FUNCTION_47();
}

id sub_267DEA1E8()
{
  OUTLINED_FUNCTION_48_0();
  v123 = v0;
  v121 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v9 = OUTLINED_FUNCTION_18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_60();
  v120 = v12 - v13;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77_0();
  v114 = v15;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0();
  v116 = v17;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  v119 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  v122 = v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  v118 = v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77_0();
  v113 = v25;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77_0();
  v115 = v27;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_77_0();
  v117 = v29;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77_0();
  v111 = v32;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_77_0();
  v112 = v34;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_51();
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v110 - v39;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_32_17();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_22_4();
  MEMORY[0x28223BE20](v44);
  v46 = &v110 - v45;
  v47 = [v123 nameComponents];
  if (v47)
  {
    v48 = v47;
    sub_267EF2A18();

    v49 = sub_267EF2A58();
    v50 = 0;
  }

  else
  {
    v49 = sub_267EF2A58();
    v50 = 1;
  }

  OUTLINED_FUNCTION_18_28(v2, v50);
  sub_267D2E49C(v2, v46);
  sub_267EF2A58();
  if (OUTLINED_FUNCTION_11_38())
  {
    v51 = OUTLINED_FUNCTION_61_0();
    sub_267BF6CEC(v51, v52, v53, v54);
    OUTLINED_FUNCTION_8_6(v0);
    v55 = v122;
    if (v56)
    {
      v60 = 0;
    }

    else
    {
      v60 = sub_267EF29E8();
      OUTLINED_FUNCTION_5_0(v49);
      (*(v61 + 8))(v0, v49);
    }

    [v123 setNameComponents_];

    sub_267B9FED8(v46, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    v57 = [v123 nameComponents];
    if (v57)
    {
      v58 = v57;
      sub_267EF2A18();

      v59 = 0;
    }

    else
    {
      v59 = 1;
    }

    OUTLINED_FUNCTION_18_28(v6, v59);
    sub_267D2E49C(v6, v1);
    if (!OUTLINED_FUNCTION_14_36(v1))
    {
      sub_267EF2988();
    }

    sub_267B9FED8(v1, &unk_28022BCA0, &unk_267EFD990);
    sub_267DEBDB8();
    OUTLINED_FUNCTION_15_33();

    OUTLINED_FUNCTION_54_0();
    sub_267EF2998();
    OUTLINED_FUNCTION_8_6(v46);
    if (v56)
    {
      v62 = 0;
    }

    else
    {
      v62 = sub_267EF29E8();
      OUTLINED_FUNCTION_5_0(v49);
      (*(v63 + 8))(v46, v49);
    }

    v55 = v122;
    [v123 setNameComponents_];
  }

  v64 = OUTLINED_FUNCTION_27_24();
  if (v64)
  {
    v46 = v64;
    sub_267EF2A18();

    v65 = 0;
  }

  else
  {
    v65 = 1;
  }

  OUTLINED_FUNCTION_18_28(v3, v65);
  sub_267D2E49C(v3, v40);
  if (OUTLINED_FUNCTION_14_36(v40))
  {
    sub_267BF6CEC(v40, v4, &unk_28022BCA0, &unk_267EFD990);
    OUTLINED_FUNCTION_8_6(v4);
    if (v56)
    {
      v46 = 0;
    }

    else
    {
      sub_267EF29E8();
      OUTLINED_FUNCTION_0_57();
      (*(v72 + 8))(v4, v49);
    }

    v73 = v118;
    v70 = &selRef_personTypes;
    OUTLINED_FUNCTION_26_26();

    sub_267B9FED8(v40, &unk_28022BCA0, &unk_267EFD990);
    v74 = v119;
  }

  else
  {
    v66 = OUTLINED_FUNCTION_27_24();
    if (v66)
    {
      v67 = v66;
      v68 = v111;
      sub_267EF2A18();

      v69 = 0;
      v70 = &selRef_personTypes;
    }

    else
    {
      v69 = 1;
      v70 = &selRef_personTypes;
      v68 = v111;
    }

    v71 = v112;
    OUTLINED_FUNCTION_18_28(v68, v69);
    sub_267D2E49C(v68, v71);
    if (OUTLINED_FUNCTION_14_36(v71))
    {
      v75 = 0;
    }

    else
    {
      sub_267EF29A8();
      v75 = v76;
    }

    sub_267B9FED8(v71, &unk_28022BCA0, &unk_267EFD990);
    OUTLINED_FUNCTION_66();
    sub_267DEBDB8();
    OUTLINED_FUNCTION_74_0();

    OUTLINED_FUNCTION_108();
    sub_267EF29B8();
    OUTLINED_FUNCTION_8_6(v40);
    if (v56)
    {
      v75 = 0;
    }

    else
    {
      sub_267EF29E8();
      OUTLINED_FUNCTION_0_57();
      (*(v77 + 8))(v40, v49);
    }

    v73 = v118;
    v74 = v119;
    [v123 v70[346]];
  }

  v78 = OUTLINED_FUNCTION_27_24();
  if (v78)
  {
    v79 = v78;
    v80 = v117;
    sub_267EF2A18();

    v81 = v80;
    v82 = 0;
  }

  else
  {
    v82 = 1;
    v81 = v117;
  }

  OUTLINED_FUNCTION_18_28(v81, v82);
  sub_267D2E49C(v81, v5);
  if (OUTLINED_FUNCTION_14_36(v5))
  {
    v83 = v115;
    sub_267BF6CEC(v5, v115, &unk_28022BCA0, &unk_267EFD990);
    OUTLINED_FUNCTION_8_6(v83);
    if (v56)
    {
      v83 = 0;
    }

    else
    {
      sub_267EF29E8();
      OUTLINED_FUNCTION_0_57();
      (*(v87 + 8))(v83, v49);
    }

    v88 = v120;
    OUTLINED_FUNCTION_26_26();

    sub_267B9FED8(v5, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    v84 = OUTLINED_FUNCTION_27_24();
    if (v84)
    {
      v85 = v84;
      sub_267EF2A18();

      v86 = 0;
    }

    else
    {
      v86 = 1;
    }

    v89 = v113;
    OUTLINED_FUNCTION_18_28(v73, v86);
    v90 = OUTLINED_FUNCTION_108();
    sub_267D2E49C(v90, v91);
    if (OUTLINED_FUNCTION_14_36(v89))
    {
      v83 = 0;
    }

    else
    {
      sub_267EF29C8();
      v83 = v92;
    }

    sub_267B9FED8(v89, &unk_28022BCA0, &unk_267EFD990);
    OUTLINED_FUNCTION_66();
    sub_267DEBDB8();
    OUTLINED_FUNCTION_74_0();

    OUTLINED_FUNCTION_108();
    sub_267EF29D8();
    OUTLINED_FUNCTION_8_6(v5);
    if (v56)
    {
      v83 = 0;
    }

    else
    {
      sub_267EF29E8();
      OUTLINED_FUNCTION_0_57();
      (*(v93 + 8))(v5, v49);
    }

    v88 = v120;
    [v123 v70[346]];
  }

  v94 = OUTLINED_FUNCTION_27_24();
  if (v94)
  {
    v83 = v94;
    sub_267EF2A18();

    v95 = 0;
  }

  else
  {
    v95 = 1;
  }

  OUTLINED_FUNCTION_18_28(v74, v95);
  sub_267D2E49C(v74, v55);
  if (OUTLINED_FUNCTION_14_36(v55))
  {
    v96 = v116;
    sub_267BF6CEC(v55, v116, &unk_28022BCA0, &unk_267EFD990);
    OUTLINED_FUNCTION_8_6(v96);
    if (v56)
    {
      v83 = 0;
    }

    else
    {
      sub_267EF29E8();
      OUTLINED_FUNCTION_0_57();
      (*(v100 + 8))(v96, v49);
    }

    OUTLINED_FUNCTION_26_26();

    sub_267B9FED8(v55, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    v97 = OUTLINED_FUNCTION_27_24();
    if (v97)
    {
      v98 = v97;
      sub_267EF2A18();

      v99 = 0;
    }

    else
    {
      v99 = 1;
    }

    v101 = v114;
    OUTLINED_FUNCTION_18_28(v88, v99);
    v102 = OUTLINED_FUNCTION_108();
    sub_267D2E49C(v102, v103);
    if (OUTLINED_FUNCTION_14_36(v101))
    {
      v104 = 0;
    }

    else
    {
      sub_267EF2A28();
      v104 = v105;
    }

    sub_267B9FED8(v101, &unk_28022BCA0, &unk_267EFD990);
    OUTLINED_FUNCTION_66();
    sub_267DEBDB8();
    OUTLINED_FUNCTION_74_0();

    OUTLINED_FUNCTION_108();
    sub_267EF2A38();
    OUTLINED_FUNCTION_8_6(v55);
    if (v56)
    {
      v104 = 0;
    }

    else
    {
      sub_267EF29E8();
      OUTLINED_FUNCTION_0_57();
      (*(v106 + 8))(v55, v49);
    }

    [v123 v70[346]];
  }

  OUTLINED_FUNCTION_47();

  return v107;
}

BOOL sub_267DEAC40()
{
  sub_267DE9D58();
  if ((v1 & 1) != 0 && (sub_267BBD38C(v0, &selRef_contactIdentifier), v2))
  {

    return !sub_267DEB1AC();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_267DEAC8C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

id sub_267DEAE28()
{
  result = [v0 personHandle];
  if (result)
  {
    v3 = result;
    v4 = [result label];

    if (v4)
    {
      sub_267EF9028();
      OUTLINED_FUNCTION_38_21();

      v5 = HIBYTE(v1) & 0xF;
      if ((v1 & 0x2000000000000000) == 0)
      {
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      return (v5 != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_267DEAEC4()
{
  sub_267EF9B68();

  result = INIntentSlotValueTransformToContactValue();
  if (result)
  {
    result = sub_267DEC238(result);
    if (v1 >> 60 != 15)
    {
      OUTLINED_FUNCTION_23_21();
      sub_267EF2BC8();
      OUTLINED_FUNCTION_15_33();
      v2 = OUTLINED_FUNCTION_61_0();
      sub_267BBE0C8(v2, v3);
      v4 = OUTLINED_FUNCTION_54_0();
      MEMORY[0x26D608E60](v4);

      return 0xD000000000000010;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_267DEAF90()
{
  result = [v0 personHandle];
  if (result)
  {
    sub_267BBE048(result);
    if (v2)
    {
      OUTLINED_FUNCTION_23_21();

      OUTLINED_FUNCTION_16_31();
      return (v3 != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_267DEAFF8()
{
  sub_267BBD38C(v0, &selRef_contactIdentifier);
  if (!v1)
  {
    sub_267BBD38C(v0, &selRef_customIdentifier);
    if (!v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_267DEB048()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_66();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    type metadata accessor for FLOWSchemaFLOWPersonType(0);
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_267B9FED8(v7, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }

  return result;
}

uint64_t sub_267DEB128()
{
  type metadata accessor for FLOWSchemaFLOWPersonType(0);
  v0 = sub_267EF9F08();
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_108();
  objc_setAssociatedObject(v1, v2, v0, 1);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

BOOL sub_267DEB1AC()
{
  sub_267BBD38C(v0, &selRef_contactIdentifier);
  if (v1)
  {

    sub_267BBD38C(v0, &selRef_contactIdentifier);
    if (v2)
    {

      OUTLINED_FUNCTION_30_27();
      if (v3)
      {
        return 1;
      }
    }
  }

  sub_267BBD38C(v0, &selRef_customIdentifier);
  if (!v5)
  {
    return 0;
  }

  sub_267BBD38C(v0, &selRef_customIdentifier);
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_23_21();

  OUTLINED_FUNCTION_16_31();
  return v7 != 0;
}

uint64_t sub_267DEB278()
{
  if (sub_267DEB1AC())
  {
    return 1;
  }

  sub_267DE9D58();
  if (v0)
  {
    return 1;
  }

  return sub_267DEAF90();
}

BOOL sub_267DEB2B8()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = [v0 personHandle];
  if (v9)
  {
    goto LABEL_2;
  }

  v10 = [v0 nameComponents];
  if (v10)
  {
    v11 = v10;
    sub_267EF2A18();

    sub_267EF2A58();
    v12 = OUTLINED_FUNCTION_57_0();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    sub_267B9FED8(v8, &unk_28022BCA0, &unk_267EFD990);
    return 0;
  }

  v16 = sub_267EF2A58();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
  sub_267B9FED8(v8, &unk_28022BCA0, &unk_267EFD990);
  v17 = [v0 displayName];
  sub_267EF9028();
  OUTLINED_FUNCTION_15_33();

  v18 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v18 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    return 0;
  }

  v9 = [v0 image];
  if (v9)
  {
    goto LABEL_2;
  }

  v20 = sub_267D102E0(v0, &selRef_aliases, &qword_28022C298, 0x277CD3E98);
  if (v20)
  {
    v21 = sub_267BAF0DC(v20);

    if (v21)
    {
      return 0;
    }
  }

  sub_267BBD38C(v0, &selRef_contactIdentifier);
  if (v22)
  {
    goto LABEL_15;
  }

  sub_267BBD38C(v0, &selRef_customIdentifier);
  if (v23)
  {
    goto LABEL_15;
  }

  if ([v0 isMe])
  {
    return 0;
  }

  v9 = [v0 relationship];
  if (v9)
  {
LABEL_2:

    return 0;
  }

  sub_267BBD38C(v0, &selRef_sourceAppBundleIdentifier);
  if (v24)
  {
LABEL_15:

    return 0;
  }

  v25 = sub_267D102E0(v0, &selRef_scoredAlternatives, &qword_280229DB8, 0x277CD4008);
  if (!v25)
  {
    return 1;
  }

  v26 = sub_267BAF0DC(v25);

  return v26 == 0;
}

void sub_267DEB538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v27 = OUTLINED_FUNCTION_18(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_22_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_66_5();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &a9 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &a9 - v35;
  v37 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  v38 = [v25 nameComponents];
  if (v38)
  {
    v39 = v38;
    sub_267EF2A18();

    v40 = sub_267EF2A58();
    v41 = 0;
  }

  else
  {
    v40 = sub_267EF2A58();
    v41 = 1;
  }

  __swift_storeEnumTagSinglePayload(v34, v41, 1, v40);
  sub_267D2E49C(v34, v36);
  sub_267EF2A58();
  if (__swift_getEnumTagSinglePayload(v36, 1, v40))
  {
    sub_267B9FED8(v36, &unk_28022BCA0, &unk_267EFD990);
LABEL_6:

    goto LABEL_8;
  }

  sub_267EF2988();
  v43 = v42;
  sub_267B9FED8(v36, &unk_28022BCA0, &unk_267EFD990);
  if (!v43)
  {
    goto LABEL_6;
  }

LABEL_8:
  v44 = sub_267EF8FF8();

  [v37 setGivenName_];

  v45 = [v25 nameComponents];
  if (v45)
  {
    v46 = v45;
    sub_267EF2A18();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  __swift_storeEnumTagSinglePayload(v22, v47, 1, v40);
  sub_267D2E49C(v22, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v40))
  {
    sub_267B9FED8(v21, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    sub_267EF29A8();
    v49 = v48;
    sub_267B9FED8(v21, &unk_28022BCA0, &unk_267EFD990);
    if (v49)
    {
      goto LABEL_15;
    }
  }

LABEL_15:
  v50 = sub_267EF8FF8();

  [v37 setFamilyName_];

  OUTLINED_FUNCTION_47();
}

void sub_267DEB810()
{
  OUTLINED_FUNCTION_48_0();
  v4 = v0;
  v69 = v5;
  v70 = v6;
  v71 = v7;
  v72 = v8;
  v76 = v9;
  v77 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v12 = OUTLINED_FUNCTION_18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_60();
  v73 = v15 - v16;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77_0();
  v74 = v18;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v20);
  v22 = &v68 - v21;
  v23 = sub_267EF2728();
  v24 = OUTLINED_FUNCTION_58(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_0();
  v31 = v30 - v29;
  v32 = [v0 displayName];
  sub_267EF9028();
  OUTLINED_FUNCTION_15_33();

  v82 = v1;
  v83 = v2;
  sub_267EF2698();
  v79 = sub_267BB5034();
  v68 = sub_267EF9918();
  v75 = v33;
  v78 = *(v26 + 8);
  v78(v31, v23);

  v34 = v4;
  v35 = [v4 nameComponents];
  if (v35)
  {
    v36 = v35;
    sub_267EF2A18();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = sub_267EF2A58();
  __swift_storeEnumTagSinglePayload(v3, v37, 1, v38);
  sub_267D2E49C(v3, v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v38);
  v40 = v23;
  v41 = v73;
  if (EnumTagSinglePayload)
  {
    sub_267B9FED8(v22, &unk_28022BCA0, &unk_267EFD990);
LABEL_6:

    v42 = 0;
    v43 = 0xE000000000000000;
    goto LABEL_8;
  }

  v42 = sub_267EF2988();
  v43 = v44;
  sub_267B9FED8(v22, &unk_28022BCA0, &unk_267EFD990);
  if (!v43)
  {
    goto LABEL_6;
  }

LABEL_8:
  v82 = v42;
  v83 = v43;
  sub_267EF2698();
  v45 = sub_267EF9918();
  v47 = v46;
  v78(v31, v40);

  v48 = [v34 nameComponents];
  if (v48)
  {
    v49 = v48;
    sub_267EF2A18();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = v74;
  __swift_storeEnumTagSinglePayload(v41, v50, 1, v38);
  v52 = OUTLINED_FUNCTION_61_0();
  sub_267D2E49C(v52, v53);
  if (__swift_getEnumTagSinglePayload(v51, 1, v38))
  {
    sub_267B9FED8(v51, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    sub_267EF29A8();
    OUTLINED_FUNCTION_38_21();
    sub_267B9FED8(v51, &unk_28022BCA0, &unk_267EFD990);
    if (v38)
    {
      goto LABEL_15;
    }
  }

  v41 = 0;
  v38 = 0xE000000000000000;
LABEL_15:
  v82 = v41;
  v83 = v38;
  sub_267EF2698();
  v54 = sub_267EF9918();
  v56 = v55;
  v78(v31, v40);

  v58 = v76;
  v57 = v77;
  if (!v77)
  {
    goto LABEL_24;
  }

  v59 = HIBYTE(v77) & 0xF;
  if ((v77 & 0x2000000000000000) == 0)
  {
    v59 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (!v59)
  {
LABEL_24:

    v63 = v71;
    v62 = v72;
    if (v72 && (OUTLINED_FUNCTION_16_31(), v64))
    {
      if (!v70)
      {
        goto LABEL_42;
      }

      v65 = HIBYTE(v70) & 0xF;
      if ((v70 & 0x2000000000000000) == 0)
      {
        v65 = v69 & 0xFFFFFFFFFFFFLL;
      }

      if (!v65)
      {
LABEL_42:

        v82 = v45;
        v83 = v47;
        v80 = v63;
        v81 = v62;
        OUTLINED_FUNCTION_2_54();

        goto LABEL_43;
      }

      v82 = v45;
      v83 = v47;
      v80 = v63;
      v81 = v62;
      v66 = OUTLINED_FUNCTION_2_54();

      if (!v66)
      {
        v82 = v54;
        v83 = v56;
        v80 = v69;
        v81 = v70;
        goto LABEL_37;
      }
    }

    else
    {

      if (v70)
      {
        v67 = HIBYTE(v70) & 0xF;
        if ((v70 & 0x2000000000000000) == 0)
        {
          v67 = v69 & 0xFFFFFFFFFFFFLL;
        }

        if (v67)
        {
          v82 = v54;
          v83 = v56;
          v80 = v69;
          v81 = v70;
          goto LABEL_37;
        }
      }
    }

    goto LABEL_41;
  }

  v82 = v68;
  v83 = v75;
  v80 = v76;
  v81 = v77;
  v60 = OUTLINED_FUNCTION_2_54();

  if (!v60)
  {

    goto LABEL_41;
  }

  if ((sub_267DEAC8C(v71, v72) & 1) == 0 || (sub_267DEAC8C(v69, v70) & 1) == 0)
  {

    goto LABEL_41;
  }

  v82 = v45;
  v83 = v47;
  v80 = v58;
  v81 = v57;
  v61 = OUTLINED_FUNCTION_2_54();

  if (!v61)
  {
LABEL_41:

    goto LABEL_43;
  }

  v82 = v54;
  v83 = v56;
  v80 = v58;
  v81 = v57;
LABEL_37:
  OUTLINED_FUNCTION_2_54();

LABEL_43:
  OUTLINED_FUNCTION_47();
}

void sub_267DEBDB8()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  if (v3)
  {
    v12 = sub_267D5EEC4(v5);
    v14 = v13;
    v36 = v12;
    v37 = v13;
    v15 = sub_267EF2E38();
    OUTLINED_FUNCTION_5_0(v15);
    v17 = *(v16 + 16);
    v35 = v1;
    v17(v11, v1, v15);
    v18 = OUTLINED_FUNCTION_57_0();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v15);
    sub_267BB5034();
    v21 = sub_267EF98D8();
    v23 = v22;
    sub_267B9FED8(v11, &unk_28022AF10, &unk_267F001E0);
    v24 = v12 == v21 && v14 == v23;
    if (!v24 && (sub_267EF9EA8() & 1) == 0)
    {
      v36 = v12;
      v37 = v14;
      v17(v11, v35, v15);
      v28 = OUTLINED_FUNCTION_57_0();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v15);
      v34 = sub_267EF98E8();
      v32 = v31;
      sub_267B9FED8(v11, &unk_28022AF10, &unk_267F001E0);
      if (v12 == v34 && v14 == v32)
      {
      }

      else
      {
        LODWORD(v34) = sub_267EF9EA8();

        if ((v34 & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }

    v36 = v21;
    v37 = v23;
    v17(v11, v35, v15);
    v25 = OUTLINED_FUNCTION_57_0();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v15);
    sub_267EF98F8();
    sub_267B9FED8(v11, &unk_28022AF10, &unk_267F001E0);
LABEL_8:
  }

  OUTLINED_FUNCTION_47();
}

void sub_267DEC034(uint64_t a1)
{
  v2 = sub_267BAF0DC(a1);
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = [v5 searchProvider];

    v3 = v4 + 1;
  }

  while (v7 != 1);
}

uint64_t INScoredPersonRecommendation.description.getter(uint64_t a1)
{
  if (a1 == 2)
  {
    sub_267EF9B68();

    OUTLINED_FUNCTION_37_17();
    v5 = v2 + 2;
  }

  else if (a1 == 1)
  {
    sub_267EF9B68();

    OUTLINED_FUNCTION_37_17();
    v5 = v1;
  }

  else if (a1)
  {
    v5 = 0x286E776F6E6B6E75;
  }

  else
  {
    v5 = 0x6E656469666E6F63;
  }

  v3 = sub_267EF9E58();
  MEMORY[0x26D608E60](v3);

  MEMORY[0x26D608E60](41, 0xE100000000000000);
  return v5;
}

uint64_t sub_267DEC238(void *a1)
{
  v2 = [a1 data];

  if (v2)
  {
    sub_267EF2BE8();
    OUTLINED_FUNCTION_23_21();
  }

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267DEC2BC(void *a1, void *a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  sub_267DEE0EC(a7, &v21);
  if (v22)
  {
    sub_267DEE208(a7);
    sub_267BE58F4(&v21, &v23);
  }

  else
  {
    v15 = a5[6];
    v19 = a5[5];
    __swift_project_boxed_opaque_existential_0(a5 + 2, v19);
    v20 = a4;
    v18 = *(v15 + 8);
    sub_267DEE15C(a1, a2, a3, a4);

    v18(&v23, v19, v15);
    v16 = sub_267BFA8F4(&v23);
    __swift_destroy_boxed_opaque_existential_0(&v23);
    v24 = type metadata accessor for SearchForMessagesCATPatternsExecutor(0);
    v25 = &off_2878D3460;

    sub_267DEE1AC(a1, a2, a3, v20);
    *&v23 = v16;
    sub_267DEE208(a7);
    if (v22)
    {
      sub_267DEE208(&v21);
    }
  }

  sub_267BE58F4(&v23, v8 + 88);
  return v8;
}

uint64_t sub_267DEC43C()
{
  OUTLINED_FUNCTION_12();
  v1[35] = v2;
  v1[36] = v0;
  v3 = *(*(sub_267EF3CF8() - 8) + 64);
  v1[37] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF48A8();
  v1[38] = v4;
  v5 = *(v4 - 8);
  v1[39] = v5;
  v6 = *(v5 + 64);
  v1[40] = OUTLINED_FUNCTION_2();
  v7 = *(*(sub_267EF2E38() - 8) + 64);
  v1[41] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DEC534()
{
  v1 = v0[36];
  v2 = *(v1 + 40);
  v0[42] = v2;
  v3 = *(v1 + 48);
  v0[43] = v3;
  v4 = *(v1 + 56);
  v0[44] = v4;
  if (!*(v1 + 64))
  {
    v11 = v0[41];
    type metadata accessor for MessagesGroup(0);
    v12 = *(v1 + 72);
    v13 = v2;
    v64 = sub_267BE4AD0();
    v15 = v12[5];
    v14 = v12[6];
    __swift_project_boxed_opaque_existential_0(v12 + 2, v15);
    v16 = *(v14 + 8);
    v17 = v13;
    v16(v15, v14);
    v18 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    sub_267EF3B68();
    sub_267D2EBEC(v64, v2, v11);
    v20 = v19;
    v0[48] = v19;
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v21 = OUTLINED_FUNCTION_19_32();
    v22 = *(v20 + OBJC_IVAR____TtC16SiriMessagesFlow13MessagesGroup_membersOtherThanYouAndSender);
    v0[49] = v22;
    v23 = *v21;

    swift_bridgeObjectRetain_n();
    if (v22 >> 62)
    {
      goto LABEL_46;
    }

    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
    *&v25 = v24;

    v0[56] = sub_267D40204(v26, v22, v25, 0);
    OUTLINED_FUNCTION_10(MEMORY[0x277D55BE8]);
    v27 = swift_task_alloc();
    v0[57] = v27;
    *v27 = v0;
    v27[1] = sub_267DED438;
    goto LABEL_41;
  }

  if (*(v1 + 64) == 1)
  {
    v5 = *OUTLINED_FUNCTION_19_32();

    v6 = v3;

    sub_267DEE15C(v2, v3, v4, 1);
    OUTLINED_FUNCTION_10(dword_267F05418);
    v7 = swift_task_alloc();
    v0[46] = v7;
    *v7 = v0;
    v7[1] = sub_267DECDA4;
    v8 = v0[36];
    OUTLINED_FUNCTION_15();

    __asm { BR              X5 }
  }

  if (!(v4 | v3 | v2))
  {
    v22 = *(v1 + 72);
    v63 = sub_267BF4170();
    v0[51] = v63;
    swift_beginAccess();
    v33 = *(v22 + 56);
    v34 = sub_267BAF0DC(v33);
    v35 = MEMORY[0x277D84F90];
    if (v34)
    {
      v36 = v34;
      v67 = MEMORY[0x277D84F90];

      result = sub_267EF9BF8();
      if (v36 < 0)
      {
        __break(1u);
        return result;
      }

      v37 = 0;
      v65 = v33 & 0xC000000000000001;
      type metadata accessor for MessagesGroup(0);
      v38 = v33;
      do
      {
        if (v65)
        {
          v39 = MEMORY[0x26D609870](v37, v33);
        }

        else
        {
          v39 = *(v33 + 8 * v37 + 32);
        }

        v40 = v0[41];
        ++v37;
        v41 = *(v22 + 40);
        v42 = *(v22 + 48);
        __swift_project_boxed_opaque_existential_0((v22 + 16), v41);
        (*(v42 + 8))(v41, v42);
        v43 = v0[16];
        __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
        sub_267EF3B68();
        sub_267D2EBEC(v39, 0, v40);
        __swift_destroy_boxed_opaque_existential_0(v0 + 12);
        sub_267EF9BD8();
        v44 = *(v67 + 16);
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
        v33 = v38;
      }

      while (v36 != v37);

      v45 = v67;
      v35 = MEMORY[0x277D84F90];
    }

    else
    {
      v45 = MEMORY[0x277D84F90];
    }

    v66 = v45;
    v68 = v35;
    v0[52] = v45;
    v49 = *(v22 + 56);
    v50 = sub_267BAF0DC(v49);

    for (i = 0; v50 != i; ++i)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D609870](i, v49);
      }

      else
      {
        if (i >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v52 = *(v49 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v24 = sub_267EF9A68();
        goto LABEL_8;
      }

      if (sub_267BF4920())
      {
        sub_267EF9BD8();
        v53 = *(v68 + 16);
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }

      else
      {
      }
    }

    v54 = v0[36];

    v55 = sub_267BAF0DC(v68);

    v56 = __swift_project_boxed_opaque_existential_0((v54 + 88), *(v54 + 112));
    v57 = [*(v22 + 64) attributes] == 1;
    v58 = [*(v22 + 64) attributes] == 2;
    v59 = *v56;
    LODWORD(v55) = (v55 != 0) | (v57 << 8) | (v58 << 16);
    swift_retain_n();

    v0[53] = sub_267D40088(v55, v66, v63);
    OUTLINED_FUNCTION_10(MEMORY[0x277D55BE8]);
    v60 = swift_task_alloc();
    v0[54] = v60;
    *v60 = v0;
    v60[1] = sub_267DED1CC;
LABEL_41:
    OUTLINED_FUNCTION_15();

    __asm { BR              X3 }
  }

  if (v2 == 1 && (v4 | v3) == 0)
  {
    v46 = *OUTLINED_FUNCTION_19_32();
    v47 = swift_task_alloc();
    v0[50] = v47;
    *v47 = v0;
    v47[1] = sub_267DECFDC;
    OUTLINED_FUNCTION_15();

    return sub_267D48450();
  }

  else
  {
    v29 = *OUTLINED_FUNCTION_19_32();
    v30 = swift_task_alloc();
    v0[45] = v30;
    *v30 = v0;
    v30[1] = sub_267DECC64;
    OUTLINED_FUNCTION_15();

    return sub_267D481B4();
  }
}

uint64_t sub_267DECC64()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v3[20] = v1;
  v3[21] = v5;
  v3[22] = v0;
  OUTLINED_FUNCTION_84();
  v7 = *(v6 + 360);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;

  if (v0)
  {
    v11 = v3[40];
    v10 = v3[41];
    v12 = v3[37];

    OUTLINED_FUNCTION_17();

    return v13();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_267DECDA4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v2[23] = v1;
  v2[24] = v4;
  v2[25] = v0;
  OUTLINED_FUNCTION_84();
  v6 = *(v5 + 368);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v9 + 376) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267DECEA4()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);

  OUTLINED_FUNCTION_9_41(*(v0 + 192));
  OUTLINED_FUNCTION_16_32();
  OUTLINED_FUNCTION_1_64();
  sub_267EF47F8();
  sub_267EF4858();
  v3 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v3);
  v4 = sub_267EF4188();
  OUTLINED_FUNCTION_13_35(v4);
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4_53(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_58(v6);

  return v9(v8);
}

uint64_t sub_267DECF60()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[43];
  v1 = v0[44];

  v3 = v0[47];
  OUTLINED_FUNCTION_18_29();

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267DECFDC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v3[26] = v1;
  v3[27] = v5;
  v3[28] = v0;
  OUTLINED_FUNCTION_84();
  v7 = *(v6 + 400);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;

  if (v0)
  {
    v11 = v3[40];
    v10 = v3[41];
    v12 = v3[37];

    OUTLINED_FUNCTION_17();

    return v13();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_267DED11C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_9_41(*(v0 + 216));
  OUTLINED_FUNCTION_16_32();
  OUTLINED_FUNCTION_1_64();
  sub_267EF47F8();
  sub_267EF4858();
  v1 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v1);
  v2 = sub_267EF4188();
  OUTLINED_FUNCTION_13_35(v2);
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4_53(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_58(v4);

  return v7(v6);
}

uint64_t sub_267DED1CC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v2[29] = v1;
  v2[30] = v4;
  v2[31] = v0;
  OUTLINED_FUNCTION_84();
  v6 = *(v5 + 432);
  v8 = *(v7 + 424);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v11 + 440) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267DED2E8()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  swift_bridgeObjectRelease_n();

  OUTLINED_FUNCTION_9_41(*(v0 + 240));
  OUTLINED_FUNCTION_16_32();
  OUTLINED_FUNCTION_1_64();
  sub_267EF47F8();
  sub_267EF4858();
  v3 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v3);
  v4 = sub_267EF4188();
  OUTLINED_FUNCTION_13_35(v4);
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4_53(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_58(v6);

  return v9(v8);
}

uint64_t sub_267DED3B0()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[51];
  v1 = v0[52];
  swift_bridgeObjectRelease_n();

  v3 = v0[55];
  OUTLINED_FUNCTION_18_29();

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267DED438()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v2[32] = v1;
  v2[33] = v4;
  v2[34] = v0;
  OUTLINED_FUNCTION_84();
  v6 = *(v5 + 456);
  v8 = *(v7 + 448);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v11 + 464) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267DED554()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 336);

  swift_bridgeObjectRelease_n();
  sub_267DEE1AC(v5, v4, v3, 0);

  OUTLINED_FUNCTION_9_41(*(v0 + 264));
  OUTLINED_FUNCTION_16_32();
  OUTLINED_FUNCTION_1_64();
  sub_267EF47F8();
  sub_267EF4858();
  v6 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v6);
  v7 = sub_267EF4188();
  OUTLINED_FUNCTION_13_35(v7);
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4_53(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_0_58(v9);

  return v12(v11);
}

uint64_t sub_267DED650()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[48];
  v2 = v0[49];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];

  swift_bridgeObjectRelease_n();
  sub_267DEE1AC(v5, v4, v3, 0);
  v6 = v0[58];
  OUTLINED_FUNCTION_18_29();

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_267DED6F4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_9_41(*(v0 + 168));
  OUTLINED_FUNCTION_16_32();
  OUTLINED_FUNCTION_1_64();
  sub_267EF47F8();
  sub_267EF4858();
  v1 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v1);
  v2 = sub_267EF4188();
  OUTLINED_FUNCTION_13_35(v2);
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4_53(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_58(v4);

  return v7(v6);
}

uint64_t sub_267DED7A4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = v4[61];
  v6 = v4[60];
  v7 = v4[59];
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v10 + 496) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267DED8DC()
{
  v1 = v0[59];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[38];
  v5 = v0[39];
  v6 = v0[37];
  v7 = v0[35];
  sub_267B9AFEC((v0 + 2), v7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v5 + 8))(v2, v4);
  v8 = MEMORY[0x277D84F90];
  *(v7 + 40) = MEMORY[0x277D84F90];
  *(v7 + 48) = v8;

  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_267DED9B4()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 496);
  OUTLINED_FUNCTION_18_29();

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267DEDA4C()
{
  OUTLINED_FUNCTION_12();
  v0[9] = v1;
  v0[10] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v5 = sub_267EF2E38();
  v0[11] = v5;
  v6 = *(v5 - 8);
  v0[12] = v6;
  v7 = *(v6 + 64);
  v0[13] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DEDB00()
{
  v1 = v0[8];
  if (v1)
  {
    v3 = v0[12];
    v2 = v0[13];
    v4 = v0[11];
    v5 = *(v0[9] + 72);
    v6 = v5[5];
    v7 = v5[6];
    __swift_project_boxed_opaque_existential_0(v5 + 2, v6);
    (*(v7 + 8))(v6, v7);
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    sub_267EF3B68();
    v9 = sub_267BC20F4(v2, 0, 0, 0, v1);
    (*(v3 + 8))(v2, v4);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    v9 = 0;
  }

  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[7];
  v13 = v12[2];

  v12[2] = v9;
  v14 = *v12;

  *v12 = v11;

  OUTLINED_FUNCTION_17();

  return v15();
}

uint64_t sub_267DEDC5C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  sub_267DEE1AC(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  return v0;
}

uint64_t sub_267DEDCA4()
{
  sub_267DEDC5C();

  return swift_deallocClassInstance();
}

uint64_t sub_267DEDCFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267DEC43C();
}

uint64_t sub_267DEDDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return j__OUTLINED_FUNCTION_5_10(a1, a2, a3, WitnessTable);
}

void (*sub_267DEDE10(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v5[2] = v2;
  v5[3] = a2;
  WitnessTable = swift_getWitnessTable();
  v5[4] = WitnessTable;
  *v5 = sub_267C3698C(a2, WitnessTable);
  v5[1] = v7;
  return sub_267C94288;
}

uint64_t sub_267DEDEA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_267C3698C(a1, WitnessTable);
}

uint64_t sub_267DEDEF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267BF9538();
}

uint64_t sub_267DEDFB4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StaticAction.debugDescription.getter();
}

uint64_t sub_267DEE068(uint64_t a1)
{
  result = sub_267DEE0AC(&qword_28022C2B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267DEE0AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReadingSummaryAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267DEE0EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299B0, &unk_267F00D00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_267DEE15C(id result, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }

    result = a2;
  }

  return result;
}

void sub_267DEE1AC(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

uint64_t sub_267DEE208(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299B0, &unk_267F00D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267DEE298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B3F8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267BCE5E4;

  return MEMORY[0x2821B9CD8](a1, a2, a3);
}

uint64_t sub_267DEE34C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 128) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  v7 = sub_267EF89E8();
  *(v5 + 56) = v7;
  v8 = *(v7 - 8);
  *(v5 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267DEE44C, 0, 0);
}

uint64_t sub_267DEE44C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 128);
  v4 = *(v0 + 24);
  v5 = [objc_allocWithZone(MEMORY[0x277D47700]) init];
  *(v0 + 80) = v5;
  v6 = sub_267EFA068();
  [v5 setStartTime_];

  v7 = sub_267EFA068();
  [v5 setEndTime_];

  v8 = MEMORY[0x277D48820];
  if ((v3 & 1) == 0)
  {
    v8 = MEMORY[0x277D48818];
  }

  v9 = *v8;
  v10 = sub_267EF9028();
  sub_267DEEC6C(v10, v11, v5);
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_267EF45A8();
  if (v13)
  {
    v14 = sub_267EF8FF8();
  }

  else
  {
    v14 = 0;
  }

  [v5 setSpeechRequestId_];

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v15 = sub_267EF8A08();
  *(v0 + 88) = __swift_project_value_buffer(v15, qword_280240FB0);
  v16 = sub_267EF89F8();
  v17 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v17))
  {
    v19 = *(v0 + 24);
    v18 = *(v0 + 32);
    v20 = swift_slowAlloc();
    *v20 = 134218240;
    *(v20 + 4) = v19;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v18;
    _os_log_impl(&dword_267B93000, v16, v17, "extractSpeechData attempting to extract speech for audio message with startTime: %llu and endTime: %llu", v20, 0x16u);
    OUTLINED_FUNCTION_32_0();
  }

  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 72);
  v22 = *(v0 + 40);
  v23 = qword_280240FC8;
  *(v0 + 96) = qword_280240FC8;
  v24 = v23;
  sub_267EF89C8();
  sub_267EF9698();
  sub_267EF89A8();
  v25 = v2[3];
  v26 = v2[4];
  __swift_project_boxed_opaque_existential_0(v22, v25);
  v27 = *(MEMORY[0x277D5BFB8] + 4);
  v28 = swift_task_alloc();
  *(v0 + 104) = v28;
  sub_267DEECD0();
  *v28 = v0;
  v28[1] = sub_267DEE780;

  return MEMORY[0x2821BB6A0](v5);
}

uint64_t sub_267DEE780(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = sub_267DEEBE0;
  }

  else
  {
    v5 = sub_267DEE894;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267DEE894()
{
  v37 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  sub_267EF9688();
  sub_267EF89B8();
  v4 = sub_267DEED14(v1);
  v6 = v0[11];
  if (!v5)
  {
    v17 = sub_267EF89F8();
    v22 = sub_267EF95E8();
    v19 = ".ExtractSpeechData";
    if (!OUTLINED_FUNCTION_5_2(v22))
    {
      v15 = 0xD000000000000013;
      goto LABEL_12;
    }

    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_1_7(&dword_267B93000, v23, v24, "SASExtractSpeechData returned an empty speechDataUrl");
    v15 = 0xD000000000000013;
    goto LABEL_9;
  }

  v7 = v4;
  v8 = v5;
  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_267BA33E8(v7, v8, &v36);
    _os_log_impl(&dword_267B93000, v9, v10, "SASExtractSpeechData returned url: '%s'", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v13 = v0[6];
  sub_267EF2B88();

  v14 = sub_267EF2BA8();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    v25 = v0[14];
    v26 = v0[10];
    v27 = v0[6];
    v28 = v0[2];
    (*(v0[8] + 8))(v0[9], v0[7]);

    (*(*(v14 - 8) + 32))(v28, v27, v14);

    v29 = v0[1];
    goto LABEL_13;
  }

  v15 = 0xD000000000000012;
  v16 = v0[11];
  sub_267BB2D24(v0[6]);
  v17 = sub_267EF89F8();
  v18 = sub_267EF95E8();
  v19 = "Empty speechDataUrl";
  if (OUTLINED_FUNCTION_5_2(v18))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_1_7(&dword_267B93000, v20, v21, "SASExtractSpeechData failed to create url object");
LABEL_9:
    OUTLINED_FUNCTION_32_0();
  }

LABEL_12:
  v30 = v0[14];
  v31 = v0[10];

  sub_267C266B0();
  swift_allocError();
  *v32 = v15;
  v32[1] = v19 | 0x8000000000000000;
  swift_willThrow();

  v33 = OUTLINED_FUNCTION_0_59();
  v34(v33);

  v29 = v0[1];
LABEL_13:

  return v29();
}

uint64_t sub_267DEEBE0()
{
  v1 = *(v0 + 120);
  v2 = OUTLINED_FUNCTION_0_59();
  v3(v2);

  v4 = *(v0 + 8);

  return v4();
}

void sub_267DEEC6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setAudioOutputType_];
}

unint64_t sub_267DEECD0()
{
  result = qword_28022C2B8;
  if (!qword_28022C2B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022C2B8);
  }

  return result;
}

uint64_t sub_267DEED14(void *a1)
{
  v1 = [a1 speechDataUrl];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

unint64_t sub_267DEED78@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAE0, &unk_267F07D80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v85 = v80 - v5;
  v6 = sub_267EF2D28();
  v7 = OUTLINED_FUNCTION_58(v6);
  v83 = v8;
  v84 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v13 = v12 - v11;
  v14 = sub_267EF8AE8();
  v15 = OUTLINED_FUNCTION_58(v14);
  v90 = v16;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v89 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = v80 - v21;
  v22 = sub_267EF57C8();
  v23 = OUTLINED_FUNCTION_58(v22);
  v87 = v24;
  v88 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_0();
  v91 = v28 - v27;
  v29 = sub_267EF6178();
  v30 = OUTLINED_FUNCTION_58(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_0_0();
  v37 = v36 - v35;
  v38 = sub_267BB8214(v1);
  if (v39)
  {
    v40 = v38;
    v41 = v39;
    v81 = v14;
    v82 = a1;
    v42 = sub_267EF6388();
    OUTLINED_FUNCTION_97(v42);
    v43 = sub_267EF6378();
    v44 = sub_267EF6558();
    OUTLINED_FUNCTION_97(v44);
    sub_267EF6548();
    (*(v32 + 104))(v37, *MEMORY[0x277D5ED90], v29);
    sub_267EF6538();
    (*(v32 + 8))(v37, v29);

    sub_267EF6368();

    v93[0] = v40;
    v93[1] = v41;
    v92[0] = 61;
    v92[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](v45);
    v78 = v92;
    result = sub_267DF0D8C(sub_267BC3234, &v80[-4], v40, v41);
    if (v47)
    {
      __break(1u);
    }

    else
    {
      sub_267EF9178();
      sub_267BB5034();
      sub_267EF9988();

      v48 = v91;
      sub_267EF5798();
      sub_267EF5668();
      v49 = MEMORY[0x26D6059D0](v43);
      v50 = v89;
      if (v49)
      {
        v51 = v49;
        v80[1] = v43;
        sub_267EF2D18();
        v52 = sub_267EF2CE8();
        v54 = v53;
        (*(v83 + 8))(v13, v84);
        v55 = sub_267EF8A78();
        v56 = v85;
        __swift_storeEnumTagSinglePayload(v85, 1, 1, v55);

        v78 = 0xF000000000000000;
        v79 = v56;
        v57 = v86;
        OUTLINED_FUNCTION_29_24(v52, v54, 0x6C7070612E6D6F63, 0xEF636973754D2E65, v51);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v58 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v58, qword_280240FB0);
        v59 = v90;
        v60 = v81;
        (*(v90 + 16))(v50, v57, v81);
        v61 = sub_267EF89F8();
        v62 = sub_267EF95D8();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = OUTLINED_FUNCTION_48();
          v64 = v50;
          v65 = OUTLINED_FUNCTION_52();
          v93[0] = v65;
          *v63 = 136642819;
          sub_267DF0E90();
          v66 = sub_267EF9E58();
          v68 = v67;
          (*(v90 + 8))(v64, v60);
          v69 = sub_267BA33E8(v66, v68, v93);
          v57 = v86;

          *(v63 + 4) = v69;
          _os_log_impl(&dword_267B93000, v61, v62, "#INMessage+RREntityHelpers extractSongEntity Created entity for Apple Music link: %{sensitive}s.", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v65);
          OUTLINED_FUNCTION_32_0();
          v59 = v90;
          OUTLINED_FUNCTION_32_0();
        }

        else
        {

          (*(v59 + 8))(v50, v60);
        }

        (*(v87 + 8))(v91, v88);
        v77 = v82;
        (*(v59 + 32))(v82, v57, v60);
        v74 = v77;
        v76 = 0;
        v75 = v60;
      }

      else
      {
        (*(v87 + 8))(v48, v88);

        v75 = v81;
        v74 = v82;
        v76 = 1;
      }

      return __swift_storeEnumTagSinglePayload(v74, v76, 1, v75);
    }
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v70 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v70, qword_280240FB0);
    v71 = sub_267EF89F8();
    v72 = sub_267EF95E8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v73);
      _os_log_impl(&dword_267B93000, v71, v72, "#INMessage+RREntityHelpers extractSongEntity INMessage has no content. Unable to perform search for Apple Music link. RREntity cannot be created.", v29, 2u);
      OUTLINED_FUNCTION_26();
    }

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v14);
  }

  return result;
}

uint64_t sub_267DEF520()
{
  OUTLINED_FUNCTION_12();
  v1 = *(*v0 + 616);
  v2 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DEFDC8()
{
  OUTLINED_FUNCTION_12();
  v1 = *(*v0 + 632);
  v2 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DF0554()
{
  OUTLINED_FUNCTION_12();
  v1 = *(*v0 + 664);
  v2 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DF0CE0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 16 * result + 24);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *v6;
    v10[0] = *(v6 - 1);
    v10[1] = v8;

    v9 = a1(v10);

    if (v3)
    {
      break;
    }

    v6 -= 2;
    result = v7 - 1;
  }

  while ((v9 & 1) == 0);
  return result;
}

unint64_t sub_267DF0D8C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_267EF9158();
    v13[0] = sub_267EF9258();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

unint64_t sub_267DF0E90()
{
  result = qword_2802294B8;
  if (!qword_2802294B8)
  {
    sub_267EF8AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802294B8);
  }

  return result;
}

uint64_t sub_267DF0EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280228FB0, &qword_267EFC248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267DF0F50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DF1004(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v7 = a1;
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_267EF9A68())
  {
    if (a2 >> 62)
    {
      result = sub_267EF9A68();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v22 = 0;
      return v22 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 < 0)
    {
      v11 = v7;
    }

    if (v8)
    {
      v12 = v11;
    }

    v13 = a2 & 0xFFFFFFFFFFFFFF8;
    v14 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v13 = a2;
    }

    if (a2 >> 62)
    {
      v14 = v13;
    }

    if (v12 == v14)
    {
LABEL_31:
      v22 = 1;
      return v22 & 1;
    }

    if (i < 0)
    {
      break;
    }

    a4 = sub_267BA9F38(0, a3, a4);
    v25 = v7;
    v15 = v7 & 0xC000000000000001;
    v7 = a2;
    v16 = a2 & 0xC000000000000001;
    v17 = 4;
    a2 = i;
    while (1)
    {
      v18 = v17 - 4;
      v8 = v17 - 3;
      if (__OFADD__(v17 - 4, 1))
      {
        break;
      }

      if (v15)
      {
        v19 = MEMORY[0x26D609870](v17 - 4, v25);
      }

      else
      {
        if (v18 >= *(v24 + 16))
        {
          goto LABEL_34;
        }

        v19 = *(v25 + 8 * v17);
      }

      a3 = v19;
      if (v16)
      {
        v20 = MEMORY[0x26D609870](v17 - 4, v7);
      }

      else
      {
        if (v18 >= *(v23 + 16))
        {
          goto LABEL_35;
        }

        v20 = *(v7 + 8 * v17);
      }

      v21 = v20;
      v22 = sub_267EF9818();

      if (v22)
      {
        ++v17;
        if (v8 != a2)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_267DF11D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_267EF9EA8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_267DF1260@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    sub_267EF8678();
    v7 = v6;

    if (v7)
    {
      sub_267EF2CD8();

      v8 = sub_267EF2D28();
      if (__swift_getEnumTagSinglePayload(v5, 1, v8) != 1)
      {
        (*(*(v8 - 8) + 32))(a1, v5, v8);
        v14 = a1;
        v15 = 0;
        v13 = v8;
        return __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
      }

      sub_267B9F98C(v5, &qword_280229430, &qword_267EFD2C0);
    }
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_267B93000, v10, v11, "Failed to get the request id for the current execution.", v12, 2u);
    MEMORY[0x26D60A7B0](v12, -1, -1);
  }

  v13 = sub_267EF2D28();
  v14 = a1;
  v15 = 1;
  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
}

void sub_267DF1490(uint64_t a1)
{
  v2 = sub_267EF2D28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = sub_267EF2CF8();
  v19 = [v7 derivedIdentifierForComponentName:27 fromSourceIdentifier:v8];

  if (v19)
  {
    sub_267EF2D08();
    v9 = v19;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);
    (*(v3 + 16))(v6, a1, v2);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95E8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      v15 = sub_267EF2CE8();
      v17 = v16;
      (*(v3 + 8))(v6, v2);
      v18 = sub_267BA33E8(v15, v17, &v20);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_267B93000, v11, v12, "Failed to create a derived identifier for SELF for request ID: %s. Will create a random UUID.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x26D60A7B0](v14, -1, -1);
      MEMORY[0x26D60A7B0](v13, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    sub_267EF2D18();
  }
}

uint64_t sub_267DF1780(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  type metadata accessor for DefaultUnlockDeviceFlowStrategyAsync();
  OUTLINED_FUNCTION_49();
  type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy();
  sub_267BA9F38(0, a3, a4);
  sub_267DF5E38(&unk_28022CEF0, type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy);
  sub_267DF5E38(&qword_28022C310, type metadata accessor for DefaultUnlockDeviceFlowStrategyAsync);
  v6 = sub_267EF3408();

  return v6;
}

uint64_t sub_267DF189C()
{
  type metadata accessor for DefaultUnlockDeviceFlowStrategyAsync();
  swift_allocObject();
  type metadata accessor for FixedAppResolutionOnDeviceFlowStrategy();
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  sub_267DF5E38(&qword_28022C308, type metadata accessor for FixedAppResolutionOnDeviceFlowStrategy);
  sub_267DF5E38(&qword_28022C310, type metadata accessor for DefaultUnlockDeviceFlowStrategyAsync);
  v0 = sub_267EF3408();

  return v0;
}

uint64_t sub_267DF19E0()
{
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *(v1 + 16) = v0 + 16;
  OUTLINED_FUNCTION_10(&unk_267F004A8);
  v5 = v2;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_267DF1AA8;

  return v5(sub_267DF7214, v1);
}

uint64_t sub_267DF1AA8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 24);
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v9 + 40) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267DF1BC4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_267CB8FE8(0xD000000000000013, 0x8000000267F0F820, sub_267CA5B68, v4);
}

uint64_t sub_267DF1C60@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtC16SiriMessagesFlow42SendMessageAppResolutionAndPreRCHCheckFlow_state;
  swift_beginAccess();
  sub_267DF72E8(v1 + v10, v9);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v11 = sub_267EF2FC8();
    OUTLINED_FUNCTION_22(v11);
    v13 = *(v12 + 32);
    v14 = OUTLINED_FUNCTION_26_0();
    return v15(v14);
  }

  else
  {
    sub_267C4BE60();
    v17 = swift_allocError();
    *v18 = 0;
    v18[1] = 0;
    *a1 = v17;
    *(a1 + 8) = 0;
    v19 = *MEMORY[0x277D5B408];
    v20 = sub_267EF2FC8();
    OUTLINED_FUNCTION_22(v20);
    (*(v21 + 104))(a1, v19);
    OUTLINED_FUNCTION_1_66();
    return sub_267DF7290(v9, v22);
  }
}

uint64_t sub_267DF1E14()
{
  OUTLINED_FUNCTION_12();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_267EF2FC8();
  v1[7] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[8] = v4;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v7 = sub_267EF4BA8();
  v1[12] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_2();
  v11 = type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(0);
  v1[15] = v11;
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267DF1F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = v22[17];
  v26 = v22[15];
  v27 = v22[6];
  v28 = OBJC_IVAR____TtC16SiriMessagesFlow42SendMessageAppResolutionAndPreRCHCheckFlow_state;
  swift_beginAccess();
  sub_267DF72E8(v27 + v28, v25);
  OUTLINED_FUNCTION_66();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    (*(v22[8] + 32))(v22[11], v22[17], v22[7]);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v47 = v22[10];
    v48 = v22[11];
    v49 = v22[7];
    v50 = v22[8];
    v51 = sub_267EF8A08();
    __swift_project_value_buffer(v51, qword_280240FB0);
    v52 = *(v50 + 16);
    v53 = OUTLINED_FUNCTION_61_0();
    v52(v53);
    v54 = sub_267EF89F8();
    v55 = sub_267EF95D8();
    v56 = OUTLINED_FUNCTION_10_2(v55);
    v57 = v22[10];
    if (v56)
    {
      HIDWORD(a10) = v47;
      v58 = v22[8];
      v59 = v22[9];
      v60 = v22[7];
      v61 = OUTLINED_FUNCTION_48();
      a9 = OUTLINED_FUNCTION_52();
      a11 = a9;
      *v61 = 136315138;
      (v52)(v59, v57, v60);
      v62 = sub_267EF9098();
      v64 = v63;
      v65 = *(v58 + 8);
      v65(v57, v60);
      v66 = sub_267BA33E8(v62, v64, &a11);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_267B93000, v54, BYTE4(a10), "SendAppResolutionFlow# flow execution completed with result: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a9);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    else
    {
      v86 = v22[7];
      v87 = v22[8];

      v65 = *(v87 + 8);
      v65(v57, v86);
    }

    v88 = v22[11];
    v89 = v22[7];
    v90 = v22[5];
    sub_267EF4018();
    v91 = OUTLINED_FUNCTION_66();
    (v65)(v91);
LABEL_21:
    OUTLINED_FUNCTION_25_29();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_64_3();

    return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12, a13, a14);
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v30 = v22[17];
      v32 = v22[13];
      v31 = v22[14];
      v33 = v22[12];
      v22[18] = *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C318, &qword_267F0AA40) + 48));
      v34 = *(v32 + 32);
      v35 = OUTLINED_FUNCTION_61_0();
      v36(v35);
      v37 = swift_task_alloc();
      v22[19] = v37;
      *v37 = v22;
      v37[1] = sub_267DF242C;
      v38 = v22[14];
      v39 = v22[5];
      v40 = v22[6];
      OUTLINED_FUNCTION_64_3();

      return sub_267DF2740();
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v67 = v22[6];
    v68 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v68, qword_280240FB0);

    v69 = sub_267EF89F8();
    v70 = sub_267EF95E8();

    if (os_log_type_enabled(v69, v70))
    {
      v72 = v22[15];
      v71 = v22[16];
      v73 = OUTLINED_FUNCTION_48();
      v74 = OUTLINED_FUNCTION_52();
      a11 = v74;
      *v73 = 136315138;
      sub_267DF72E8(v27 + v28, v71);
      v75 = sub_267EF9098();
      v77 = sub_267BA33E8(v75, v76, &a11);

      *(v73 + 4) = v77;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v78, v79, v80, v81, v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    v83 = v22[17];
    v84 = v22[5];
    sub_267EF4018();
    OUTLINED_FUNCTION_1_66();
    sub_267DF7290(v83, v85);
    goto LABEL_21;
  }

  v22[20] = *v22[17];
  v43 = swift_task_alloc();
  v22[21] = v43;
  *v43 = v22;
  v43[1] = sub_267DF25C4;
  v44 = v22[5];
  v45 = v22[6];
  OUTLINED_FUNCTION_64_3();

  return sub_267DF410C();
}

uint64_t sub_267DF242C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DF2510()
{
  v1 = v0[18];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_66();
  v7(v6);
  OUTLINED_FUNCTION_25_29();

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267DF25C4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DF26A8()
{
  v1 = *(v0 + 160);

  OUTLINED_FUNCTION_25_29();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267DF2740()
{
  OUTLINED_FUNCTION_12();
  v1[70] = v0;
  v1[69] = v2;
  v1[68] = v3;
  v1[67] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  v1[71] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF4C08();
  v1[72] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[73] = v9;
  v11 = *(v10 + 64);
  v1[74] = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267DF281C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = *(v22 + 592);
  v26 = *(v22 + 584);
  v27 = *(v22 + 576);
  v28 = *(v22 + 568);
  v29 = *(v22 + 544);
  sub_267EF4B88();
  sub_267E57DFC(v25, (v22 + 16));
  v30 = *(v26 + 8);
  v31 = OUTLINED_FUNCTION_26_0();
  v32(v31);
  sub_267E71BD8(v28);
  v33 = type metadata accessor for DirectInvocationUseCases();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v33);
  v35 = *(v22 + 568);
  if (EnumTagSinglePayload == 1)
  {
    sub_267B9F98C(*(v22 + 568), &unk_28022BBE0, qword_267EFD030);
  }

  else
  {
    OUTLINED_FUNCTION_66();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      v37 = *v35;
      v36 = v35[1];
      goto LABEL_9;
    }

    sub_267DF7290(v35, type metadata accessor for DirectInvocationUseCases);
  }

  sub_267C6AD4C(v22 + 16, v22 + 56, &unk_28022BBF0, &unk_267F01C60);
  if (*(v22 + 80))
  {
    v38 = *(v22 + 88);
    __swift_project_boxed_opaque_existential_0((v22 + 56), *(v22 + 80));
    v39 = *(v38 + 368);
    v40 = OUTLINED_FUNCTION_26_0();
    v37 = v41(v40);
    v36 = v42;
    __swift_destroy_boxed_opaque_existential_0((v22 + 56));
  }

  else
  {
    sub_267B9F98C(v22 + 56, &unk_28022BBF0, &unk_267F01C60);
    v37 = 0;
    v36 = 0;
  }

LABEL_9:

  sub_267C6AD4C(v22 + 16, v22 + 96, &unk_28022BBF0, &unk_267F01C60);
  v43 = *(v22 + 120);
  if (v43)
  {
    v44 = *(v22 + 128);
    __swift_project_boxed_opaque_existential_0((v22 + 96), *(v22 + 120));
    v45 = (*(v44 + 272))(v43, v44);
    __swift_destroy_boxed_opaque_existential_0((v22 + 96));
    if ((v45 & 1) != 0 || v36)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_267B9F98C(v22 + 96, &unk_28022BBF0, &unk_267F01C60);
    if (v36)
    {
LABEL_12:

      v46 = 1;
      goto LABEL_15;
    }
  }

  v46 = 0;
LABEL_15:
  sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00((v22 + 136));
  v47 = *(v22 + 160);
  v48 = *(v22 + 168);
  OUTLINED_FUNCTION_62_1((v22 + 136), v47);
  v49 = (*(v48 + 8))(0xD000000000000013, 0x8000000267F1AB10, v47, v48);
  __swift_destroy_boxed_opaque_existential_0((v22 + 136));
  if (v49)
  {

    sub_267EF7C38();
    v50 = sub_267EF7C08();
    OUTLINED_FUNCTION_44_1();
    if (!v51)
    {
      OUTLINED_FUNCTION_0();
    }

    v52 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v52, qword_280240FB0);
    v53 = sub_267EF89F8();
    v54 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_27(v54))
    {
      goto LABEL_30;
    }

    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_6_24(&dword_267B93000, v55, v56, "SendAppResolutionFlow# Forcing App to 1P for testing!");
LABEL_29:
    OUTLINED_FUNCTION_32_0();
LABEL_30:

LABEL_31:
    v64 = qword_280228818;

    if (v64 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v65 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v65, qword_280240FB0);
    v66 = sub_267EF89F8();
    v67 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_27(v67))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v68, v69, "SendAppResolutionFlow# using fixed app resolution flow strategy");
      OUTLINED_FUNCTION_32_0();
    }

    v70 = *(v22 + 560);
    v71 = *(v22 + 544);

    OUTLINED_FUNCTION_62_1((v70 + 152), *(v70 + 176));
    type metadata accessor for FixedAppResolutionOnDeviceFlowStrategy();
    *(swift_allocObject() + 16) = v50;
    v72 = *v66;

    sub_267DF189C();

LABEL_36:

    OUTLINED_FUNCTION_38_22();
    sub_267C6AD4C(v72 + 56, v22 + 416, &qword_28022AC78, &unk_267F09F80);
    if (*(v22 + 440))
    {
      sub_267B9A5E8((v22 + 416), v22 + 376);
      OUTLINED_FUNCTION_44_1();
      if (!v51)
      {
        OUTLINED_FUNCTION_0();
      }

      v73 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v73, qword_280240FB0);
      v74 = sub_267EF89F8();
      v75 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v75))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_6_22(&dword_267B93000, v76, v77, "#SendAppResolutionFlow# overriding protected app client");
        OUTLINED_FUNCTION_32_0();
      }

      sub_267EF30B8();
      __swift_destroy_boxed_opaque_existential_0((v22 + 376));
    }

    else
    {
      sub_267B9F98C(v22 + 416, &qword_28022AC78, &unk_267F09F80);
    }

    OUTLINED_FUNCTION_34_23();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AC88, &unk_267F03600);
    sub_267D01510();
    OUTLINED_FUNCTION_12_35();

    sub_267B9F98C(v22 + 16, &unk_28022BBF0, &unk_267F01C60);

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_64_3();

    return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14);
  }

  v57 = *(v22 + 552);
  if (v57)
  {
    if (v46)
    {
      if (!v36)
      {
        goto LABEL_55;
      }

LABEL_25:
      v58 = *(v22 + 560);
      sub_267EF7C38();

      v50 = sub_267EF7C08();
      sub_267DF4BB4();
      OUTLINED_FUNCTION_44_1();
      if (!v51)
      {
        OUTLINED_FUNCTION_0();
      }

      v59 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v59, qword_280240FB0);

      v53 = sub_267EF89F8();
      v60 = sub_267EF95C8();

      if (!os_log_type_enabled(v53, v60))
      {

        goto LABEL_31;
      }

      v61 = OUTLINED_FUNCTION_48();
      v62 = OUTLINED_FUNCTION_52();
      a11 = v62;
      *v61 = 136446210;
      v63 = sub_267BA33E8(v37, v36, &a11);

      *(v61 + 4) = v63;
      _os_log_impl(&dword_267B93000, v53, v60, "SendAppResolutionFlow# app identifier available in input, resolving to: %{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      OUTLINED_FUNCTION_32_0();
      goto LABEL_29;
    }

    *(v22 + 480) = &type metadata for Features;
    *(v22 + 488) = sub_267BAFCAC();
    *(v22 + 456) = 7;

    v87 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0((v22 + 456));
    if ((v87 & 1) == 0 || (v88 = *(v22 + 560), (sub_267DF4000() & 1) == 0) || *(*(*(v22 + 560) + 104) + 96) == 1)
    {

      v89 = qword_280228818;

      if (v89 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v90 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v90, qword_280240FB0);

      v91 = sub_267EF89F8();
      v92 = sub_267EF95C8();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = OUTLINED_FUNCTION_48();
        v94 = OUTLINED_FUNCTION_52();
        a11 = v94;
        *v93 = 136446210;
        *(v22 + 528) = v57;
        sub_267EF7C38();
        sub_267DF5E38(&qword_28022A060, MEMORY[0x277D55380]);
        v95 = sub_267EF9E58();
        v97 = v96;

        v98 = sub_267BA33E8(v95, v97, &a11);

        *(v93 + 4) = v98;
        _os_log_impl(&dword_267B93000, v91, v92, "SendAppResolutionFlow# previously resolved app %{public}s is present, fresh app is not in input and recipient is not changed, skipping app resolution", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v94);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      else
      {
      }

      v50 = *(v22 + 552);
      goto LABEL_31;
    }

    if (v36)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v36)
    {
      goto LABEL_25;
    }

    if (v46)
    {
LABEL_55:
      OUTLINED_FUNCTION_44_1();
      if (!v51)
      {
        OUTLINED_FUNCTION_0();
      }

      v99 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v99, qword_280240FB0);
      v100 = sub_267EF89F8();
      v101 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v101))
      {
        v102 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v102);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v103, v104, v105, v106, v107, 2u);
        OUTLINED_FUNCTION_26();
      }

      v108 = *(v22 + 560);

      v109 = *(v108 + 96);
      v72 = *(v108 + 104);
      sub_267B9AFEC(v108 + 16, v22 + 176);
      v110 = qword_2802286F0;
      a10 = v109;

      if (v110 != -1)
      {
        OUTLINED_FUNCTION_4_0();
      }

      sub_267B9AFEC(qword_2802405A0, v22 + 216);
      v111 = type metadata accessor for AppInfoBuilder();
      v112 = OUTLINED_FUNCTION_49();
      if (qword_280228730 != -1)
      {
        OUTLINED_FUNCTION_2_9();
      }

      v113 = *(v22 + 560);
      v114 = *(v22 + 552);
      a9 = *(v22 + 544);
      __swift_mutable_project_boxed_opaque_existential_1(v22 + 216, *(v22 + 240));
      *(v22 + 280) = &type metadata for CATProvider;
      *(v22 + 288) = &off_2878CE7A0;
      *(v22 + 320) = &type metadata for MessagesFeatureFlagsImpl;
      *(v22 + 328) = off_2878D1228;
      *(v22 + 360) = v111;
      *(v22 + 368) = &off_2878D24C8;
      *(v22 + 336) = v112;
      v115 = type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy();
      OUTLINED_FUNCTION_27_4(v115);
      swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v22 + 256, &type metadata for CATProvider);
      __swift_mutable_project_boxed_opaque_existential_1(v22 + 296, &type metadata for MessagesFeatureFlagsImpl);
      __swift_mutable_project_boxed_opaque_existential_1(v22 + 336, v111);
      OUTLINED_FUNCTION_23();
      v117 = *(v116 + 64);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_39_20();
      v118();

      v121 = OUTLINED_FUNCTION_33_16(a10, v119, v120, (v22 + 176));
      __swift_destroy_boxed_opaque_existential_0((v22 + 336));

      OUTLINED_FUNCTION_36_21();
      sub_267DF1780(v121, a9, &qword_28022AE60, 0x277CD4078);
      goto LABEL_36;
    }
  }

  v122 = swift_task_alloc();
  *(v22 + 600) = v122;
  *v122 = v22;
  v122[1] = sub_267DF333C;
  v123 = *(v22 + 560);
  OUTLINED_FUNCTION_64_3();

  return sub_267DF4704();
}

uint64_t sub_267DF333C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 600);
  *v2 = *v0;
  *(v1 + 608) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DF3428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  if (*(v14 + 608))
  {
    v15 = qword_280228818;
    v16 = *(v14 + 608);

    if (v15 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v17 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v17, qword_280240FB0);
    v18 = sub_267EF89F8();
    v19 = sub_267EF95C8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_32();
      *v20 = 0;
      _os_log_impl(&dword_267B93000, v18, v19, "SendAppResolutionFlow# run app selection Experiment", v20, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v21 = *(v14 + 560);
    v22 = *(v14 + 552);
    v23 = *(v14 + 544);

    v24 = OUTLINED_FUNCTION_26_0();
    v26 = sub_267DF4904(v24, v25);
    v27 = *__swift_project_boxed_opaque_existential_0((v21 + 152), *(v21 + 176));
    sub_267DF1780(v26, v23, &qword_28022AE60, 0x277CD4078);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v28 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v28, qword_280240FB0);
    v29 = sub_267EF89F8();
    v30 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v30))
    {
      v31 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v31);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v32, v33, v34, v35, v36, 2u);
      OUTLINED_FUNCTION_26();
    }

    v37 = *(v14 + 560);

    v38 = *(v37 + 96);
    v27 = *(v37 + 104);
    sub_267B9AFEC(v37 + 16, v14 + 176);
    v39 = qword_2802286F0;
    a11 = v38;

    if (v39 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    sub_267B9AFEC(qword_2802405A0, v14 + 216);
    v40 = type metadata accessor for AppInfoBuilder();
    v41 = OUTLINED_FUNCTION_49();
    if (qword_280228730 != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v42 = *(v14 + 560);
    v43 = *(v14 + 552);
    a10 = *(v14 + 544);
    __swift_mutable_project_boxed_opaque_existential_1(v14 + 216, *(v14 + 240));
    *(v14 + 280) = &type metadata for CATProvider;
    *(v14 + 288) = &off_2878CE7A0;
    *(v14 + 320) = &type metadata for MessagesFeatureFlagsImpl;
    *(v14 + 328) = off_2878D1228;
    *(v14 + 360) = v40;
    *(v14 + 368) = &off_2878D24C8;
    *(v14 + 336) = v41;
    v44 = type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy();
    OUTLINED_FUNCTION_27_4(v44);
    swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v14 + 256, &type metadata for CATProvider);
    __swift_mutable_project_boxed_opaque_existential_1(v14 + 296, &type metadata for MessagesFeatureFlagsImpl);
    __swift_mutable_project_boxed_opaque_existential_1(v14 + 336, v40);
    OUTLINED_FUNCTION_23();
    v46 = *(v45 + 64);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_39_20();
    v47();

    v50 = OUTLINED_FUNCTION_33_16(a11, v48, v49, (v14 + 176));
    __swift_destroy_boxed_opaque_existential_0((v14 + 336));

    OUTLINED_FUNCTION_36_21();
    sub_267DF1780(v50, a10, &qword_28022AE60, 0x277CD4078);
  }

  OUTLINED_FUNCTION_38_22();
  sub_267C6AD4C(v27 + 56, v14 + 416, &qword_28022AC78, &unk_267F09F80);
  if (*(v14 + 440))
  {
    sub_267B9A5E8((v14 + 416), v14 + 376);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v51 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v51, qword_280240FB0);
    v52 = sub_267EF89F8();
    v53 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v53))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_6_22(&dword_267B93000, v54, v55, "#SendAppResolutionFlow# overriding protected app client");
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF30B8();
    __swift_destroy_boxed_opaque_existential_0((v14 + 376));
  }

  else
  {
    sub_267B9F98C(v14 + 416, &qword_28022AC78, &unk_267F09F80);
  }

  OUTLINED_FUNCTION_34_23();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AC88, &unk_267F03600);
  sub_267D01510();
  OUTLINED_FUNCTION_12_35();

  sub_267B9F98C(v14 + 16, &unk_28022BBF0, &unk_267F01C60);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267DF3904(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_267EF2FC8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (&v54 - v17);
  v60 = *(v9 + 16);
  v61 = a1;
  v60(&v54 - v17, a1, v8);
  if ((*(v9 + 88))(v18, v8) == *MEMORY[0x277D5B410])
  {
    (*(v9 + 96))(v18, v8);
    v19 = *v18;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v20 = sub_267EF8A08();
    __swift_project_value_buffer(v20, qword_280240FB0);

    v21 = sub_267EF89F8();
    v22 = sub_267EF95C8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = v7;
      v25 = swift_slowAlloc();
      v63[0] = v25;
      *v23 = 136446210;
      v62[0] = v19;
      sub_267EF7C38();
      sub_267DF5E38(&qword_28022A060, MEMORY[0x277D55380]);
      v26 = sub_267EF9E58();
      v28 = sub_267BA33E8(v26, v27, v63);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_267B93000, v21, v22, "SendAppResolutionFlow# app resolution flow resolved app: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      v29 = v25;
      v7 = v24;
      MEMORY[0x26D60A7B0](v29, -1, -1);
      MEMORY[0x26D60A7B0](v23, -1, -1);
    }

    *v7 = v19;
    swift_storeEnumTagMultiPayload();
    v30 = OBJC_IVAR____TtC16SiriMessagesFlow42SendMessageAppResolutionAndPreRCHCheckFlow_state;
    swift_beginAccess();

    sub_267DF721C(v7, a2 + v30);
    swift_endAccess();
    v31 = a2[5];
    v32 = a2[6];
    __swift_project_boxed_opaque_existential_0(a2 + 2, v31);
    (*(v32 + 8))(v63, v31, v32);
    __swift_project_boxed_opaque_existential_0(v63, v63[3]);
    if (sub_267EF3C28())
    {

      return __swift_destroy_boxed_opaque_existential_0(v63);
    }

    else
    {
      v49 = a2[5];
      v50 = a2[6];
      __swift_project_boxed_opaque_existential_0(a2 + 2, v49);
      (*(v50 + 8))(v62, v49, v50);
      __swift_project_boxed_opaque_existential_0(v62, v62[3]);
      LOBYTE(v49) = sub_267EF3BE8();
      __swift_destroy_boxed_opaque_existential_0(v62);
      __swift_destroy_boxed_opaque_existential_0(v63);
      if ((v49 & 1) == 0)
      {
        sub_267DF534C(v19);
      }
    }
  }

  else
  {
    v57 = v4;
    v58 = v7;
    v59 = a2;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v34 = sub_267EF8A08();
    __swift_project_value_buffer(v34, qword_280240FB0);
    v35 = sub_267EF89F8();
    v36 = sub_267EF95C8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_267B93000, v35, v36, "SendAppResolutionFlow# app resolution flow didn't resolve app", v37, 2u);
      MEMORY[0x26D60A7B0](v37, -1, -1);
    }

    v38 = v60;
    v60(v16, v61, v8);
    v39 = sub_267EF89F8();
    v40 = sub_267EF95D8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v55 = v41;
      v56 = swift_slowAlloc();
      v63[0] = v56;
      *v41 = 136315138;
      v38(v13, v16, v8);
      v54 = sub_267EF9098();
      v43 = v42;
      v44 = *(v9 + 8);
      v44(v16, v8);
      v45 = sub_267BA33E8(v54, v43, v63);

      v46 = v55;
      *(v55 + 1) = v45;
      _os_log_impl(&dword_267B93000, v39, v40, "SendAppResolutionFlow# app resolution flow didn't resolve app: %s", v46, 0xCu);
      v47 = v56;
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x26D60A7B0](v47, -1, -1);
      MEMORY[0x26D60A7B0](v46, -1, -1);

      v48 = v60;
    }

    else
    {

      v44 = *(v9 + 8);
      v48 = v38;
      v44(v16, v8);
    }

    v51 = v58;
    v48(v58, v61, v8);
    swift_storeEnumTagMultiPayload();
    v52 = OBJC_IVAR____TtC16SiriMessagesFlow42SendMessageAppResolutionAndPreRCHCheckFlow_state;
    v53 = v59;
    swift_beginAccess();
    sub_267DF721C(v51, v53 + v52);
    swift_endAccess();
    return (v44)(v18, v8);
  }
}

uint64_t sub_267DF4000()
{
  v1 = *(*(v0 + 104) + 64);
  if (v1)
  {
    v2 = *(v0 + 96);
    v3 = v1;
    v4 = [v2 recipients];
    if (v4)
    {
      v5 = v4;
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v6 = sub_267EF92F8();
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_267BCEA0C(v3);
    v8 = v7;
    if (v6)
    {
      if (v7)
      {
        v9 = sub_267DF1004(v6, v7, &qword_28022BB60, 0x277CD3E90);

        LOBYTE(v1) = v9 ^ 1;
        return v1 & 1;
      }
    }

    else
    {

      if (!v8)
      {
        LOBYTE(v1) = 0;
        return v1 & 1;
      }
    }

    LOBYTE(v1) = 1;
  }

  return v1 & 1;
}

uint64_t sub_267DF410C()
{
  OUTLINED_FUNCTION_12();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(0);
  v1[14] = v4;
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[15] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DF418C()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  v4 = sub_267EF95C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_59(v5);
    _os_log_impl(&dword_267B93000, v3, v4, "SendAppResolutionFlow# pushing unlock check flow", v0, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v7 = *(v1 + 112);
  v6 = *(v1 + 120);
  v8 = *(v1 + 96);
  v9 = *(v1 + 104);
  v10 = *(v1 + 88);

  v11 = *(v9 + 96);
  sub_267B9AFEC(v9 + 16, v1 + 16);
  type metadata accessor for SiriKitFlowFactoryImpl();
  v12 = OUTLINED_FUNCTION_49();
  v13 = sub_267BCD068(v11, (v1 + 16), v12);
  swift_storeEnumTagMultiPayload();
  v14 = OBJC_IVAR____TtC16SiriMessagesFlow42SendMessageAppResolutionAndPreRCHCheckFlow_state;
  swift_beginAccess();
  sub_267DF721C(v6, v9 + v14);
  swift_endAccess();
  *(v1 + 80) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v8;
  type metadata accessor for SendMessageUnlockCheckFlow();
  sub_267DF5E38(&qword_28022AC80, type metadata accessor for SendMessageUnlockCheckFlow);

  sub_267EF3FC8();

  OUTLINED_FUNCTION_17();

  return v16();
}

uint64_t sub_267DF43C8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95E8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_267B93000, v11, v12, "SendAppResolutionFlow# error while trying to unlock the device", v13, 2u);
      MEMORY[0x26D60A7B0](v13, -1, -1);
    }

    sub_267C4BE60();
    v14 = swift_allocError();
    *v15 = xmmword_267F00050;
    *v9 = v14;
    v9[8] = 0;
    v16 = *MEMORY[0x277D5B408];
    v17 = sub_267EF2FC8();
    (*(*(v17 - 8) + 104))(v9, v16, v17);
    swift_storeEnumTagMultiPayload();
    v18 = OBJC_IVAR____TtC16SiriMessagesFlow42SendMessageAppResolutionAndPreRCHCheckFlow_state;
    swift_beginAccess();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95C8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_267B93000, v20, v21, "SendAppResolutionFlow# Unlock successful!", v22, 2u);
      MEMORY[0x26D60A7B0](v22, -1, -1);
    }

    *v9 = a3;
    v23 = *MEMORY[0x277D5B410];
    v24 = sub_267EF2FC8();
    (*(*(v24 - 8) + 104))(v9, v23, v24);
    swift_storeEnumTagMultiPayload();
    v18 = OBJC_IVAR____TtC16SiriMessagesFlow42SendMessageAppResolutionAndPreRCHCheckFlow_state;
    swift_beginAccess();
  }

  sub_267DF721C(v9, a2 + v18);
  return swift_endAccess();
}