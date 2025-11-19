uint64_t sub_1BFA69E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  v15 = v14[21];
  v16 = v14[20];
  v17 = v14[18];
  v19 = v14[14];
  v18 = v14[15];
  v21 = v14[11];
  v20 = v14[12];
  v22 = v14[10];
  v33 = v14[7];
  (*(v14[23] + 8))(v14[24], v14[22]);
  v32 = v14[2];

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_61();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1BFA69F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + *(type metadata accessor for InAppSuggestions(0) + 20);
  v6 = *(v5 + 8);
  return (*v5)(a2, a3);
}

uint64_t SiriSuggestionsFacade.getAssistantSuggestions(requestId:)()
{
  OUTLINED_FUNCTION_40();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_109();
  v1[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD78, &unk_1BFAB4A28);
  v1[10] = v9;
  OUTLINED_FUNCTION_60_0(v9);
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_109();
  v1[12] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0);
  v1[13] = v12;
  OUTLINED_FUNCTION_60_0(v12);
  v14 = *(v13 + 64);
  v1[14] = OUTLINED_FUNCTION_109();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v15 = sub_1BFAAEFD8();
  v1[22] = v15;
  OUTLINED_FUNCTION_15(v15);
  v1[23] = v16;
  v18 = *(v17 + 64);
  v1[24] = OUTLINED_FUNCTION_109();
  v1[25] = swift_task_alloc();
  v19 = type metadata accessor for SiriSuggestions.SuggestionList();
  v1[26] = v19;
  OUTLINED_FUNCTION_15(v19);
  v1[27] = v20;
  v1[28] = *(v21 + 64);
  v1[29] = OUTLINED_FUNCTION_109();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1BFA6A1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_225();
  a31 = v33;
  a32 = v34;
  a30 = v32;
  v36 = v32[21];
  v35 = v32[22];
  v37 = v32[5];
  v32[36] = OBJC_IVAR____TtC18SiriSuggestionsAPI21SiriSuggestionsFacade_siriRequestState;
  sub_1BFAAEA98();
  OUTLINED_FUNCTION_9_2(v36, 1, v35);
  if (v38)
  {
    sub_1BF9FDD5C(v32[21], &qword_1EBDFB640, &qword_1BFAB11D0);
  }

  else
  {
    v39 = v32[25];
    v40 = v32[22];
    v41 = v32[23];
    v42 = v32[21];
    v43 = v32[5];
    v44 = *(v41 + 32);
    v32[37] = v44;
    v32[38] = (v41 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v44(v39, v42, v40);
    v45 = v43[17];
    __swift_project_boxed_opaque_existential_1(v43 + 13, v43[16]);
    OUTLINED_FUNCTION_163();
    v46 = sub_1BFAAF068();
    if (v46)
    {
      if (qword_1EDCC77C0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
        swift_once();
      }

      v47 = sub_1BFAAF688();
      v32[39] = v47;
      OUTLINED_FUNCTION_126_0(v47, qword_1EDCC77C8);
      v48 = sub_1BFAAF668();
      sub_1BFAAFB68();
      v49 = OUTLINED_FUNCTION_72_2();
      if (os_log_type_enabled(v49, v50))
      {
        OUTLINED_FUNCTION_2_9();
        v51 = swift_slowAlloc();
        OUTLINED_FUNCTION_29(v51);
        OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v52, v53, "Fetching AssistantSuggestions");
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
      }

      v54 = v32[5];

      v55 = v54[5];
      v56 = v54[6];
      OUTLINED_FUNCTION_16_1(v54 + 2);
      v57 = OUTLINED_FUNCTION_144(*(v56 + 24));
      v58 = *(v57 + 8);
      v111 = v57 + 8;
      OUTLINED_FUNCTION_44();
      v113 = v59 + *v59;
      v61 = *(v60 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_33();
      v32[40] = v62;
      *v62 = v63;
      v62[1] = sub_1BFA6A6C8;
      v64 = v32[35];
      v65 = v32[3];
      v66 = v32[4];
      OUTLINED_FUNCTION_216();
      OUTLINED_FUNCTION_170();

      return v72(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v111, v113, a21, a22, a23, a24);
    }

    (*(v32[23] + 8))(v32[25], v32[22]);
  }

  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v76 = v32[5];
  v77 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v77, qword_1EDCC77C8);

  v78 = sub_1BFAAF668();
  v79 = sub_1BFAAFB68();

  if (os_log_type_enabled(v78, v79))
  {
    OUTLINED_FUNCTION_51_0();
    a21 = OUTLINED_FUNCTION_32();
    *v76 = 136315138;
    sub_1BFAAEAC8();
    sub_1BF9FD8E4(qword_1EDCC6628, MEMORY[0x1E69D2D60]);
    v80 = sub_1BFAAFEE8();
    v82 = sub_1BF9F88A8(v80, v81, &a21);

    *(v76 + 4) = v82;
    OUTLINED_FUNCTION_27_6();
    _os_log_impl(v83, v84, v85, v86, v87, 0xCu);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  if (qword_1EDCC6B08 != -1)
  {
    swift_once();
  }

  v88 = v32[2];
  v89 = type metadata accessor for AssistantEngineSuggestions(0);
  v90 = __swift_project_value_buffer(v89, qword_1EDCC6B10);
  sub_1BFA75648(v90, v88);
  OUTLINED_FUNCTION_149();
  v102 = v91;
  v103 = v92;
  v104 = v93;
  v105 = v32[17];
  v106 = v32[16];
  v107 = v32[15];
  v108 = v32[14];
  v109 = v32[12];
  v110 = v32[11];
  v112 = v32[9];
  v114 = v32[8];

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_170();

  return v95(v94, v95, v96, v97, v98, v99, v100, v101, a9, v102, v103, v104, v105, v106, v107, v108, v109, v110, v112, v114, a21, a22, a23, a24);
}

uint64_t sub_1BFA6A6C8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 320);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA6A7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_226();
  a33 = v35;
  a34 = v36;
  OUTLINED_FUNCTION_177();
  a32 = v34;
  v37 = *(v34 + 272);
  v38 = *(v34 + 216);
  v39 = *(v34 + 224);
  v247 = *(v34 + 160);
  v249 = *(v34 + 288);
  v251 = *(v34 + 152);
  v254 = *(v34 + 176);
  v245 = *(v34 + 96);
  v257 = *(v34 + 80);
  v259 = *(v34 + 184);
  v41 = *(v34 + 32);
  v40 = *(v34 + 40);
  v240 = *(v34 + 280);
  v243 = *(v34 + 24);
  sub_1BFA75648(v240, v37);
  v42 = *(v38 + 80);
  v43 = (v42 + 24) & ~v42;
  v234 = v43 + v39;
  v44 = (v43 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v40;
  sub_1BFA75428(v37, v45 + v43);
  v238 = v45;
  v46 = (v45 + v44);
  *v46 = v243;
  v46[1] = v41;
  sub_1BFA75648(v240, v37);
  v235 = v42;
  v47 = swift_allocObject();
  *(v47 + 16) = v40;
  v236 = v43;
  sub_1BFA75428(v37, v47 + v43);
  v241 = v47;
  v48 = (v47 + v44);
  *v48 = v243;
  v48[1] = v41;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_1BFAAEA98();
  v49 = *MEMORY[0x1E69D3148];
  v50 = sub_1BFAAF008();
  OUTLINED_FUNCTION_14(v50);
  (*(v51 + 104))(v251, v49);
  v52 = *(v259 + 104);
  v52(v251, *MEMORY[0x1E69D3118], v254);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v254);
  v56 = *(v257 + 48);
  sub_1BFA17B2C(v247, v245, &qword_1EBDFB640, &qword_1BFAB11D0);
  sub_1BFA17B2C(v251, v245 + v56, &qword_1EBDFB640, &qword_1BFAB11D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v245, 1, v254);
  v58 = *(v34 + 176);
  if (EnumTagSinglePayload == 1)
  {
    v59 = *(v34 + 160);
    sub_1BF9FDD5C(*(v34 + 152), &qword_1EBDFB640, &qword_1BFAB11D0);
    v60 = OUTLINED_FUNCTION_46();
    sub_1BF9FDD5C(v60, v61, &qword_1BFAB11D0);
    OUTLINED_FUNCTION_24_2(v245 + v56);
    if (!v62)
    {
      goto LABEL_8;
    }

    v63 = *(v34 + 184);
    sub_1BF9FDD5C(*(v34 + 96), &qword_1EBDFB640, &qword_1BFAB11D0);
    v64 = *(v63 + 8);
LABEL_22:
    v152 = *(v34 + 272);
    v151 = *(v34 + 280);
    v153 = *(v34 + 264);
    v154 = *(v34 + 40);
    (v64)(*(v34 + 200), *(v34 + 176));
    OUTLINED_FUNCTION_6_10();
    v155 = OUTLINED_FUNCTION_46();
    sub_1BFA75648(v155, v156);
    v138 = swift_allocObject();
    *(v138 + 16) = v154;
    sub_1BFA75428(v152, v138 + v236);
    sub_1BFA75428(v151, v153);

    v139 = sub_1BFA759E0;
    goto LABEL_23;
  }

  sub_1BFA17B2C(*(v34 + 96), *(v34 + 144), &qword_1EBDFB640, &qword_1BFAB11D0);
  OUTLINED_FUNCTION_24_2(v245 + v56);
  if (!v62)
  {
    v140 = *(v34 + 304);
    v141 = *(v34 + 184);
    v142 = *(v34 + 160);
    v143 = *(v34 + 144);
    v252 = v142;
    v255 = *(v34 + 96);
    (*(v34 + 296))(*(v34 + 192), v245 + v56, *(v34 + 176));
    OUTLINED_FUNCTION_15_4();
    sub_1BF9FD8E4(v144, v145);
    OUTLINED_FUNCTION_60_1();
    v146 = sub_1BFAAF848();
    v64 = *(v141 + 8);
    v147 = OUTLINED_FUNCTION_96();
    v64(v147);
    v148 = OUTLINED_FUNCTION_158();
    sub_1BF9FDD5C(v148, v149, &qword_1BFAB11D0);
    sub_1BF9FDD5C(v252, &qword_1EBDFB640, &qword_1BFAB11D0);
    v150 = OUTLINED_FUNCTION_119_0();
    v64(v150);
    sub_1BF9FDD5C(v255, &qword_1EBDFB640, &qword_1BFAB11D0);
    if ((v146 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

  v65 = *(v34 + 176);
  v66 = *(v34 + 184);
  v67 = *(v34 + 152);
  v68 = *(v34 + 160);
  v69 = *(v34 + 144);
  OUTLINED_FUNCTION_110_0();
  sub_1BF9FDD5C(v70, v71, v72);
  OUTLINED_FUNCTION_110_0();
  sub_1BF9FDD5C(v73, v74, v75);
  v76 = *(v66 + 8);
  v77 = OUTLINED_FUNCTION_119_0();
  v78(v77);
LABEL_8:
  sub_1BF9FDD5C(*(v34 + 96), &qword_1EBDFBD78, &unk_1BFAB4A28);
LABEL_9:
  v79 = *(v34 + 176);
  v81 = *(v34 + 128);
  v80 = *(v34 + 136);
  v82 = *(v34 + 88);
  v83 = *(v34 + 40) + *(v34 + 288);
  sub_1BFAAEA98();
  v52(v81, *MEMORY[0x1E69D3108], v79);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v79);
  v87 = *(v257 + 48);
  sub_1BFA17B2C(v80, v82, &qword_1EBDFB640, &qword_1BFAB11D0);
  sub_1BFA17B2C(v81, v82 + v87, &qword_1EBDFB640, &qword_1BFAB11D0);
  v88 = OUTLINED_FUNCTION_137();
  v89 = *(v34 + 176);
  if (v88 == 1)
  {
    v90 = *(v34 + 128);
    v91 = *(v34 + 136);
    OUTLINED_FUNCTION_110_0();
    sub_1BF9FDD5C(v92, v93, v94);
    OUTLINED_FUNCTION_110_0();
    sub_1BF9FDD5C(v95, v96, v97);
    OUTLINED_FUNCTION_24_2(v82 + v87);
    if (!v62)
    {
      goto LABEL_16;
    }

    sub_1BF9FDD5C(*(v34 + 88), &qword_1EBDFB640, &qword_1BFAB11D0);
  }

  else
  {
    sub_1BFA17B2C(*(v34 + 88), *(v34 + 120), &qword_1EBDFB640, &qword_1BFAB11D0);
    OUTLINED_FUNCTION_24_2(v82 + v87);
    if (v62)
    {
      v98 = *(v34 + 176);
      v99 = *(v34 + 184);
      v100 = *(v34 + 128);
      v101 = *(v34 + 136);
      v102 = *(v34 + 120);
      OUTLINED_FUNCTION_110_0();
      sub_1BF9FDD5C(v103, v104, v105);
      OUTLINED_FUNCTION_110_0();
      sub_1BF9FDD5C(v106, v107, v108);
      v109 = *(v99 + 8);
      v110 = OUTLINED_FUNCTION_119_0();
      v111(v110);
LABEL_16:
      sub_1BF9FDD5C(*(v34 + 88), &qword_1EBDFBD78, &unk_1BFAB4A28);
      goto LABEL_17;
    }

    v177 = *(v34 + 304);
    v178 = *(v34 + 184);
    v179 = *(v34 + 176);
    v181 = *(v34 + 128);
    v180 = *(v34 + 136);
    v182 = *(v34 + 120);
    v261 = *(v34 + 88);
    (*(v34 + 296))(*(v34 + 192), v82 + v87, v179);
    OUTLINED_FUNCTION_15_4();
    sub_1BF9FD8E4(v183, v184);
    v185 = sub_1BFAAF848();
    v186 = *(v178 + 8);
    v187 = OUTLINED_FUNCTION_96();
    v186(v187);
    v188 = OUTLINED_FUNCTION_158();
    sub_1BF9FDD5C(v188, v189, &qword_1BFAB11D0);
    v190 = OUTLINED_FUNCTION_178();
    sub_1BF9FDD5C(v190, v191, &qword_1BFAB11D0);
    (v186)(v182, v179);
    sub_1BF9FDD5C(v261, &qword_1EBDFB640, &qword_1BFAB11D0);
    if ((v185 & 1) == 0)
    {
LABEL_17:
      if (qword_1EDCC8BC0 != -1)
      {
        goto LABEL_42;
      }

      goto LABEL_18;
    }
  }

  v192 = *(v34 + 280);
  v193 = *(v34 + 256);
  v194 = *(v34 + 72);
  v195 = *(v34 + 56);
  v262 = *(v34 + 48);
  OUTLINED_FUNCTION_6_10();
  sub_1BFA75648(v192, v196);
  v197 = 0;
  v198 = *v192;
  v199 = *(*v192 + 16);
  v200 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v199 == v197)
    {
      a22 = v200;

      sub_1BFA2E554(&a22);
      v220 = *(v34 + 280);
      v221 = *(v34 + 256);
      v222 = *(v34 + 264);
      v223 = *(v34 + 248);
      v225 = *(v34 + 200);
      v224 = *(v34 + 208);
      v226 = *(v34 + 176);
      v227 = *(v34 + 184);

      v228 = *(v227 + 8);
      v229 = OUTLINED_FUNCTION_34_2();
      v230(v229);
      sub_1BFA755F8();
      *v223 = a22;
      sub_1BF9F93E8(v221 + 8, (v223 + 8));
      v231 = v224[6];
      v232 = sub_1BFAAE3F8();
      OUTLINED_FUNCTION_14(v232);
      (*(v233 + 16))(&v223[v231], v221 + v231);
      *&v223[v224[7]] = *(v221 + v224[7]);
      sub_1BFA17B2C(v221 + v224[8], &v223[v224[8]], &qword_1EBDFB670, &qword_1BFAB1CD0);
      OUTLINED_FUNCTION_96();
      sub_1BFA755F8();
      OUTLINED_FUNCTION_10_8();
      sub_1BFA75428(v223, v222);
      v138 = 0;
      v139 = nullsub_1;
      goto LABEL_23;
    }

    if (v197 >= *(v198 + 16))
    {
      break;
    }

    v201 = *(v34 + 72);
    v202 = (*(v195 + 80) + 32) & ~*(v195 + 80);
    v203 = *(v195 + 72);
    OUTLINED_FUNCTION_3_8();
    sub_1BFA75648(v204, v205);
    v206 = *(v194 + 16 + *(v262 + 44));
    if (v206 == 1 || v206 == 2)
    {
      v207 = sub_1BFAAFF08();

      if (v207)
      {
        goto LABEL_35;
      }

      v208 = *(v34 + 72);
      OUTLINED_FUNCTION_2_10();
      sub_1BFA755F8();
      ++v197;
    }

    else
    {

LABEL_35:
      v210 = *(v34 + 64);
      v209 = *(v34 + 72);
      OUTLINED_FUNCTION_8_6();
      sub_1BFA75428(v211, v212);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a22 = v200;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v214 = *(v200 + 16);
        sub_1BFA2DC10();
        v200 = a22;
      }

      v216 = *(v200 + 16);
      v215 = *(v200 + 24);
      if (v216 >= v215 >> 1)
      {
        OUTLINED_FUNCTION_114_0(v215);
        sub_1BFA2DC10();
        v200 = a22;
      }

      ++v197;
      v217 = *(v34 + 64);
      *(v200 + 16) = v216 + 1;
      OUTLINED_FUNCTION_8_6();
      sub_1BFA75428(v218, v219);
    }
  }

  __break(1u);
LABEL_42:
  OUTLINED_FUNCTION_5();
LABEL_18:
  v112 = *(v34 + 40);
  OUTLINED_FUNCTION_126_0(*(v34 + 312), qword_1EDCC8B70);

  v113 = sub_1BFAAF668();
  v114 = sub_1BFAAFB88();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = *(v34 + 288);
    v117 = *(v34 + 104);
    v116 = *(v34 + 112);
    v118 = *(v34 + 40);
    v119 = OUTLINED_FUNCTION_51_0();
    v120 = swift_slowAlloc();
    a22 = v120;
    *v119 = 136315138;
    sub_1BFAAEA98();
    OUTLINED_FUNCTION_71();
    v121 = sub_1BFAAF8B8();
    v123 = sub_1BF9F88A8(v121, v122, &a22);

    *(v119 + 4) = v123;
    _os_log_impl(&dword_1BF9F6000, v113, v114, "Unsupported assistantTurnState: %s, return empty suggestion list", v119, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v120);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  v124 = *(v34 + 280);
  v125 = *(v34 + 240);
  OUTLINED_FUNCTION_6_10();
  sub_1BFA75648(v126, v127);
  a22 = MEMORY[0x1E69E7CC0];
  sub_1BFA2E554(&a22);
  v128 = *(v34 + 280);
  v129 = *(v34 + 264);
  v130 = *(v34 + 232);
  v131 = *(v34 + 240);
  v132 = *(v34 + 208);
  (*(*(v34 + 184) + 8))(*(v34 + 200), *(v34 + 176));
  sub_1BFA755F8();
  *v130 = a22;
  sub_1BF9F93E8(v131 + 8, (v130 + 8));
  v133 = v132[6];
  v134 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_14(v134);
  (*(v135 + 16))(&v130[v133], v131 + v133);
  *&v130[v132[7]] = *(v131 + v132[7]);
  sub_1BFA17B2C(v131 + v132[8], &v130[v132[8]], &qword_1EBDFB670, &qword_1BFAB1CD0);
  sub_1BFA755F8();
  OUTLINED_FUNCTION_10_8();
  v136 = OUTLINED_FUNCTION_96();
  sub_1BFA75428(v136, v137);
  v138 = 0;
  v139 = nullsub_1;
LABEL_23:
  v157 = v139;
  v158 = *(v34 + 264);
  v159 = *(v34 + 16);
  OUTLINED_FUNCTION_10_8();
  sub_1BFA75428(v160, v159);
  v161 = type metadata accessor for AssistantEngineSuggestions(0);
  v162 = (v159 + v161[5]);
  *v162 = sub_1BFA757D0;
  v162[1] = v238;
  v163 = (v159 + v161[6]);
  *v163 = sub_1BFA75964;
  v163[1] = v241;
  v164 = (v159 + v161[7]);
  *v164 = v157;
  v164[1] = v138;
  OUTLINED_FUNCTION_149();
  v237 = v165;
  v239 = v166;
  v242 = v167;
  v244 = *(v34 + 136);
  v246 = *(v34 + 128);
  v248 = *(v34 + 120);
  v250 = *(v34 + 112);
  v253 = *(v34 + 96);
  v256 = *(v34 + 88);
  v258 = *(v34 + 72);
  v260 = *(v34 + 64);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_172();

  return v169(v168, v169, v170, v171, v172, v173, v174, v175, v234, v235, v237, v239, v242, v244, v246, v248, v250, v253, v256, v258, v260, a22, a23, a24, a25, a26);
}

uint64_t sub_1BFA6B4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SiriSuggestions.SuggestionList();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  v14 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v26 - v18;
  v20 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  sub_1BFA75648(a3, v14);
  v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a2;
  sub_1BFA75428(v14, v23 + v21);
  *(v23 + v22) = a1;
  v24 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v24 = a4;
  v24[1] = a5;

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA6B6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6D0, &qword_1BFAB1440) - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6D8, &qword_1BFAB1450) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v11 = sub_1BFAAF138();
  v8[19] = v11;
  v12 = *(v11 - 8);
  v8[20] = v12;
  v13 = *(v12 + 64) + 15;
  v8[21] = swift_task_alloc();
  v14 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  v8[22] = v14;
  v15 = *(v14 - 8);
  v8[23] = v15;
  v16 = *(v15 + 64) + 15;
  v8[24] = swift_task_alloc();
  v17 = sub_1BFAAEFD8();
  v8[25] = v17;
  v18 = *(v17 - 8);
  v8[26] = v18;
  v19 = *(v18 + 64) + 15;
  v8[27] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD78, &unk_1BFAB4A28);
  v8[28] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v8[29] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0) - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50) - 8) + 64) + 15;
  v8[33] = swift_task_alloc();
  v24 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v8[34] = v24;
  v25 = *(v24 - 8);
  v8[35] = v25;
  v26 = *(v25 + 64) + 15;
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v27 = type metadata accessor for SiriSuggestions.SuggestionList();
  v8[38] = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  v8[39] = swift_task_alloc();
  v29 = sub_1BFAAEEF8();
  v8[40] = v29;
  v30 = *(v29 - 8);
  v8[41] = v30;
  v31 = *(v30 + 64) + 15;
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v32 = sub_1BFAAE3F8();
  v8[44] = v32;
  v33 = *(v32 - 8);
  v8[45] = v33;
  v34 = *(v33 + 64) + 15;
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA6BAE0, 0, 0);
}

uint64_t sub_1BFA6BAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_80();
  v17 = *(v16 + 384);
  v19 = *(v16 + 352);
  v18 = *(v16 + 360);
  v20 = *(v16 + 304);
  v22 = *(v16 + 104);
  v21 = *(v16 + 112);
  sub_1BF9F93E8(*(v16 + 96) + 64, v16 + 16);
  v23 = *(v16 + 48);
  v24 = __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
  v25 = *(v20 + 24);
  *(v16 + 520) = v25;
  v26 = *(v18 + 16);
  *(v16 + 392) = v26;
  *(v16 + 400) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v26(v17, v22 + v25, v19);
  v27 = *(v21 + 16);
  *(v16 + 408) = v27;
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    a9 = v24;
    a10 = v23;
    v29 = *(v16 + 280);
    v60 = *(v16 + 272);
    v30 = *(v16 + 112);
    OUTLINED_FUNCTION_187();
    v28 = a13;
    OUTLINED_FUNCTION_112_0();
    v32 = v30 + v31;
    v33 = *(v29 + 72);
    do
    {
      v34 = *(v16 + 296);
      OUTLINED_FUNCTION_3_8();
      sub_1BFA75648(v32, v34);
      v35 = v34 + *(v60 + 48);
      sub_1BFAAF1D8();
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_2_10();
      sub_1BFA755F8();
      OUTLINED_FUNCTION_196();
      if (v37)
      {
        v39 = OUTLINED_FUNCTION_114_0(v36);
        sub_1BFA2DC58(v39, v34, 1);
        v28 = a13;
      }

      OUTLINED_FUNCTION_175();
    }

    while (!v38);
  }

  *(v16 + 416) = v28;
  v40 = *(v16 + 344);
  v41 = *(v16 + 320);
  v42 = *(v16 + 328);
  *(v16 + 528) = 0;
  *(v16 + 524) = *MEMORY[0x1E69D3050];
  v43 = *(v42 + 104);
  *(v16 + 424) = v43;
  *(v16 + 432) = (v42 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v43(v40);
  v44 = *(v23 + 96);
  OUTLINED_FUNCTION_44();
  v61 = v45 + *v45;
  v47 = *(v46 + 4);
  v48 = swift_task_alloc();
  *(v16 + 440) = v48;
  *v48 = v16;
  v48[1] = sub_1BFA6BD34;
  v49 = *(v16 + 344);
  OUTLINED_FUNCTION_53(*(v16 + 384));
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_12_3();

  return v56(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, v23 + 96, v61, a13, a14, a15, a16);
}

uint64_t sub_1BFA6BD34()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v5 = v4[55];
  v6 = v4[52];
  v7 = v4[48];
  v8 = v4[45];
  v9 = v4[44];
  v10 = v4[43];
  v11 = v4[41];
  v12 = v4[40];
  v13 = *v0;
  OUTLINED_FUNCTION_8();
  *v14 = v13;

  v2[56] = *(v11 + 8);
  v2[57] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15 = OUTLINED_FUNCTION_146();
  v16(v15);
  v2[58] = *(v8 + 8);
  v2[59] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17 = OUTLINED_FUNCTION_60_1();
  v18(v17);
  v19 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1BFA6BEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_80();
  __swift_destroy_boxed_opaque_existential_2Tm((v16 + 16));
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v17 = *(v16 + 312);
  v19 = *(v16 + 104);
  v18 = *(v16 + 112);
  v20 = sub_1BFAAF688();
  v21 = __swift_project_value_buffer(v20, qword_1EDCC8B70);
  *(v16 + 480) = v21;
  OUTLINED_FUNCTION_6_10();
  v22 = OUTLINED_FUNCTION_119_0();
  sub_1BFA75648(v22, v23);

  v24 = sub_1BFAAF668();
  v25 = sub_1BFAAFB68();
  if (OUTLINED_FUNCTION_82_1(v25))
  {
    v26 = *(v16 + 408);
    v27 = *(v16 + 352);
    v29 = *(v16 + 304);
    v28 = *(v16 + 312);
    v30 = *(v16 + 112);
    OUTLINED_FUNCTION_185();
    a13 = OUTLINED_FUNCTION_32();
    *v21 = 134218242;
    *(v21 + 4) = v26;

    *(v21 + 12) = 2080;
    v31 = *(v29 + 24);
    OUTLINED_FUNCTION_4_9();
    sub_1BF9FD8E4(v32, v33);
    sub_1BFAAFEE8();
    OUTLINED_FUNCTION_1_7();
    sub_1BFA755F8();
    v34 = OUTLINED_FUNCTION_213();
    v37 = sub_1BF9F88A8(v34, v35, v36);

    *(v21 + 14) = v37;
    OUTLINED_FUNCTION_27_6();
    _os_log_impl(v38, v39, v40, v41, v42, 0x16u);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {
    v43 = *(v16 + 312);
    v44 = *(v16 + 112);

    OUTLINED_FUNCTION_1_7();
    sub_1BFA755F8();
  }

  v46 = *(v16 + 424);
  v45 = *(v16 + 432);
  v47 = *(v16 + 524);
  v69 = *(v16 + 520);
  v48 = *(v16 + 336);
  v49 = *(v16 + 320);
  v50 = *(v16 + 96);
  v51 = *(v16 + 104);
  v52 = v50[6];
  __swift_project_boxed_opaque_existential_1(v50 + 2, v50[5]);
  v46(v48, v47, v49);
  v53 = *(OUTLINED_FUNCTION_39(*(v52 + 16)) + 56);
  OUTLINED_FUNCTION_30();
  v68 = v54 + *v54;
  v56 = *(v55 + 4);
  v57 = swift_task_alloc();
  *(v16 + 488) = v57;
  *v57 = v16;
  v57[1] = sub_1BFA6C1C4;
  v58 = *(v16 + 336);
  OUTLINED_FUNCTION_53(*(v16 + 112));
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_12_3();

  return v64(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, v68, v69, a13, a14, a15, a16);
}

uint64_t sub_1BFA6C1C4()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = v4[61];
  v6 = v4[57];
  v7 = v4[56];
  v8 = v4[42];
  v9 = v4[40];
  v10 = *v1;
  OUTLINED_FUNCTION_8();
  *v11 = v10;
  *(v12 + 496) = v0;

  v13 = OUTLINED_FUNCTION_46();
  v7(v13);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1BFA6C31C()
{
  v2 = *(v0 + 352);
  v3 = *(v0 + 264);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  sub_1BFAAE388();
  OUTLINED_FUNCTION_24_2(v3);
  if (v37)
  {
    v6 = *(v0 + 480);
    v7 = *(v0 + 128);
    sub_1BF9FDD5C(*(v0 + 264), &qword_1EBDFB570, &qword_1BFAB1F50);

    v8 = sub_1BFAAF668();
    sub_1BFAAFB88();
    OUTLINED_FUNCTION_53_0();
    if (os_log_type_enabled(v8, v3))
    {
      v10 = *(v0 + 120);
      v9 = *(v0 + 128);
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_81_1();
      *v1 = 136315138;
      v11 = OUTLINED_FUNCTION_148();
      *(v1 + 4) = sub_1BF9F88A8(v11, v12, v13);
      OUTLINED_FUNCTION_92_1();
      _os_log_impl(v14, v15, v16, v17, v1, 0xCu);
      OUTLINED_FUNCTION_179();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    goto LABEL_15;
  }

  v18 = *(v0 + 256);
  v19 = *(v0 + 248);
  v21 = *(v0 + 224);
  v20 = *(v0 + 232);
  v22 = *(v0 + 200);
  v23 = *(v0 + 208);
  v24 = *(v0 + 96);
  v163 = *(*(v0 + 360) + 32);
  v163(*(v0 + 376), *(v0 + 264), *(v0 + 352));
  sub_1BFAAEA98();
  v25 = *MEMORY[0x1E69D3108];
  v26 = *(v23 + 104);
  v27 = OUTLINED_FUNCTION_211();
  v28(v27);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v22);
  v32 = *(v21 + 48);
  v33 = OUTLINED_FUNCTION_60_1();
  sub_1BFA17B2C(v33, v34, &qword_1EBDFB640, &qword_1BFAB11D0);
  OUTLINED_FUNCTION_227();
  v35 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_9_2(v35, v36, v22);
  if (v37)
  {
    v38 = *(v0 + 248);
    v39 = *(v0 + 256);
    v40 = *(v0 + 200);
    OUTLINED_FUNCTION_111_0();
    sub_1BF9FDD5C(v41, v42, v43);
    OUTLINED_FUNCTION_111_0();
    sub_1BF9FDD5C(v44, v45, v46);
    v47 = OUTLINED_FUNCTION_198();
    OUTLINED_FUNCTION_9_2(v47, v48, v40);
    if (!v37)
    {
      goto LABEL_13;
    }

    sub_1BF9FDD5C(*(v0 + 232), &qword_1EBDFB640, &qword_1BFAB11D0);
  }

  else
  {
    v49 = *(v0 + 200);
    sub_1BFA17B2C(*(v0 + 232), *(v0 + 240), &qword_1EBDFB640, &qword_1BFAB11D0);
    v50 = OUTLINED_FUNCTION_198();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, v51, v49);
    v54 = *(v0 + 248);
    v53 = *(v0 + 256);
    v55 = *(v0 + 240);
    if (EnumTagSinglePayload == 1)
    {
      v56 = *(v0 + 200);
      v57 = *(v0 + 208);
      v58 = *(v0 + 248);
      OUTLINED_FUNCTION_145();
      sub_1BF9FDD5C(v59, v60, v61);
      OUTLINED_FUNCTION_145();
      sub_1BF9FDD5C(v62, v63, v64);
      v65 = *(v57 + 8);
      v66 = OUTLINED_FUNCTION_119_0();
      v67(v66);
LABEL_13:
      sub_1BF9FDD5C(*(v0 + 232), &qword_1EBDFBD78, &unk_1BFAB4A28);
LABEL_14:
      v68 = *(v0 + 472);
      (*(v0 + 464))(*(v0 + 376), *(v0 + 352));
LABEL_15:
      OUTLINED_FUNCTION_44_3();
      v169 = *(v0 + 232);
      v171 = *(v0 + 216);
      v173 = *(v0 + 192);
      v174 = *(v0 + 168);
      v176 = *(v0 + 144);
      v178 = *(v0 + 136);

      OUTLINED_FUNCTION_85();

      return v69();
    }

    v179 = *(v0 + 232);
    v72 = *(v0 + 208);
    v71 = *(v0 + 216);
    v73 = *(v0 + 200);
    v74 = OUTLINED_FUNCTION_174();
    v75(v74);
    OUTLINED_FUNCTION_15_4();
    sub_1BF9FD8E4(v76, v77);
    OUTLINED_FUNCTION_181();
    sub_1BFAAF848();
    v78 = OUTLINED_FUNCTION_217();
    v22(v78);
    v79 = OUTLINED_FUNCTION_71();
    sub_1BF9FDD5C(v79, v80, &qword_1BFAB11D0);
    OUTLINED_FUNCTION_147();
    sub_1BF9FDD5C(v81, v82, v83);
    v84 = OUTLINED_FUNCTION_119_0();
    v22(v84);
    OUTLINED_FUNCTION_147();
    sub_1BF9FDD5C(v85, v86, v87);
    if ((v20 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v88 = *(v0 + 408);
  sub_1BF9F93E8(*(v0 + 96) + 64, v0 + 56);
  v89 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  *(v0 + 529) = 0;
  v90 = MEMORY[0x1E69E7CC0];
  if (v88)
  {
    v155 = v89;
    v91 = *(v0 + 280);
    v180 = *(v0 + 272);
    v182 = MEMORY[0x1E69E7CC0];
    v161 = *(v0 + 184);
    v162 = *(v0 + 192);
    v92 = *(v0 + 176);
    v158 = *(v0 + 168);
    v93 = *(v0 + 160);
    v94 = *(v0 + 112);
    sub_1BFA2DCD0(0, *(v0 + 408), 0);
    v95 = 0;
    v90 = v182;
    OUTLINED_FUNCTION_112_0();
    v160 = *(v91 + 72);
    v164 = (v93 + 32);
    v157 = *MEMORY[0x1E69D31A0];
    v156 = (v93 + 104);
    v159 = *MEMORY[0x1E69CE2B8];
    do
    {
      v96 = *(v0 + 288);
      v98 = *(v0 + 144);
      v97 = *(v0 + 152);
      OUTLINED_FUNCTION_3_8();
      sub_1BFA75648(v99, v96);
      v100 = v96 + v180[6];
      v101 = *(v100 + 24);
      v170 = *(v100 + 16);
      v102 = *(type metadata accessor for SiriSuggestions.SuggestionPresentation(0) + 28);
      v172 = v101;

      sub_1BFAAF1F8();
      v103 = OUTLINED_FUNCTION_137();
      v104 = *(v0 + 144);
      v175 = v95;
      v177 = v90;
      if (v103 == 1)
      {
        OUTLINED_FUNCTION_224();
        *v105 = v106;
        OUTLINED_FUNCTION_223();
        *(v107 + 8) = v108;
        (*v156)();
        OUTLINED_FUNCTION_24_2(v104);
        if (!v37)
        {
          sub_1BF9FDD5C(*(v0 + 144), &qword_1EBDFB6D8, &qword_1BFAB1450);
        }
      }

      else
      {
        (*v164)(*(v0 + 168), v104, *(v0 + 152));
      }

      v109 = *(v0 + 400);
      v110 = *(v0 + 136);
      (*(v0 + 392))(*(v0 + 368), *(v0 + 288), *(v0 + 352));
      v111 = v180[12];
      sub_1BFAAF188();
      v112 = sub_1BFAAECC8();
      if (OUTLINED_FUNCTION_137() == 1)
      {
        sub_1BF9FDD5C(*(v0 + 136), &qword_1EBDFB6D0, &qword_1BFAB1440);
        v167 = 0;
        v168 = 0;
      }

      else
      {
        v113 = sub_1BFAAECA8();
        v167 = v114;
        v168 = v113;
        OUTLINED_FUNCTION_54(v112);
        v116 = *(v115 + 8);
        v117 = OUTLINED_FUNCTION_93();
        v118(v117);
      }

      v119 = *(v0 + 368);
      v166 = *(v0 + 352);
      v120 = *(v0 + 288);
      v121 = *(v0 + 192);
      v122 = *(v0 + 168);
      v123 = *(v0 + 152);
      v165 = sub_1BFAAF1D8();
      v125 = v124;
      v126 = v92[10];
      v127 = sub_1BFAAF398();
      OUTLINED_FUNCTION_14(v127);
      (*(v128 + 104))(&v121[v126], v159);
      v129 = v92[11];
      sub_1BFAAF758();
      OUTLINED_FUNCTION_86_2();
      __swift_storeEnumTagSinglePayload(v130, v131, v132, v133);
      v134 = v180[16];
      v135 = v92[13];
      v136 = sub_1BFAAEB28();
      OUTLINED_FUNCTION_14(v136);
      (*(v137 + 16))(&v121[v135], v120 + v134);
      *v121 = v170;
      v162[1] = v172;
      v162[2] = v170;
      v162[3] = v172;
      (*v164)(&v121[v92[6]], v122, v123);
      v163(&v121[v92[7]], v119, v166);
      v138 = &v121[v92[8]];
      *v138 = v168;
      v138[1] = v167;
      v139 = &v121[v92[9]];
      *v139 = v165;
      v139[1] = v125;
      v140 = &v121[v92[12]];
      *v140 = 0;
      *(v140 + 1) = 0;

      OUTLINED_FUNCTION_2_10();
      sub_1BFA755F8();
      v90 = v177;
      v142 = *(v177 + 16);
      v141 = *(v177 + 24);
      if (v142 >= v141 >> 1)
      {
        v149 = OUTLINED_FUNCTION_114_0(v141);
        sub_1BFA2DCD0(v149, v142 + 1, 1);
        v90 = v177;
      }

      v143 = *(v0 + 408);
      v144 = *(v0 + 192);
      v95 = v175 + 1;
      *(v90 + 16) = v142 + 1;
      v145 = *(v161 + 80);
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_89_2(v90 + v146);
      sub_1BFA75428(v147, v148);
    }

    while (v175 + 1 != v143);
    v89 = v155;
  }

  *(v0 + 504) = v90;
  v150 = *(v89 + 104);
  OUTLINED_FUNCTION_44();
  v181 = (v151 + *v151);
  v153 = *(v152 + 4);
  v154 = swift_task_alloc();
  *(v0 + 512) = v154;
  *v154 = v0;
  v154[1] = sub_1BFA6CC78;
  OUTLINED_FUNCTION_53(*(v0 + 376));
  OUTLINED_FUNCTION_209();

  return v181();
}

uint64_t sub_1BFA6CC78()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 512);
  v3 = *(v1 + 504);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BFA6CD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_214();
  v21 = *(v20 + 472);
  (*(v20 + 464))(*(v20 + 376), *(v20 + 352));
  __swift_destroy_boxed_opaque_existential_2Tm((v20 + 56));
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_135_0();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_90();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1BFA6CE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_214();
  v21 = *(v20 + 480);
  v22 = *(v20 + 496);
  v23 = sub_1BFAAF668();
  sub_1BFAAFB88();

  v24 = OUTLINED_FUNCTION_194();
  v25 = *(v20 + 496);
  if (v24)
  {
    v26 = OUTLINED_FUNCTION_51_0();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    OUTLINED_FUNCTION_39_3();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    sub_1BF9FDD5C(v27, &qword_1EBDFBA28, &qword_1BFAB28C0);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_135_0();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_90();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1BFA6D034@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6D0, &qword_1BFAB1440);
  v4 = OUTLINED_FUNCTION_60_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v72 - v8;
  v10 = sub_1BFAAE3F8();
  v11 = OUTLINED_FUNCTION_2_3(v10);
  v79 = v12;
  v80 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11, v15);
  OUTLINED_FUNCTION_2();
  v78 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6D8, &qword_1BFAB1450);
  v19 = OUTLINED_FUNCTION_60_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v72 - v23;
  v25 = sub_1BFAAF138();
  v26 = OUTLINED_FUNCTION_2_3(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26, v31);
  OUTLINED_FUNCTION_2();
  v34 = (v33 - v32);
  v35 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v36 = v35[6];
  v81 = v1;
  v37 = v1 + v36;
  v38 = *(v37 + 24);
  v77 = *(v37 + 16);
  v39 = *(type metadata accessor for SiriSuggestions.SuggestionPresentation(0) + 28);

  sub_1BFAAF1F8();
  OUTLINED_FUNCTION_9_2(v24, 1, v25);
  if (v40)
  {
    OUTLINED_FUNCTION_224();
    OUTLINED_FUNCTION_223();
    *v34 = v41;
    v34[1] = v42;
    (*(v28 + 104))(v34, *MEMORY[0x1E69D31A0], v25);
    OUTLINED_FUNCTION_9_2(v24, 1, v25);
    if (!v40)
    {
      sub_1BF9FDD5C(v24, &qword_1EBDFB6D8, &qword_1BFAB1450);
    }
  }

  else
  {
    (*(v28 + 32))(v34, v24, v25);
  }

  (*(v79 + 16))(v78, v81, v80);
  v43 = v35[12];
  sub_1BFAAF188();
  v44 = sub_1BFAAECC8();
  OUTLINED_FUNCTION_9_2(v9, 1, v44);
  if (v40)
  {
    sub_1BF9FDD5C(v9, &qword_1EBDFB6D0, &qword_1BFAB1440);
    v75 = 0;
    v76 = 0;
  }

  else
  {
    v45 = sub_1BFAAECA8();
    v75 = v46;
    v76 = v45;
    OUTLINED_FUNCTION_54(v44);
    (*(v47 + 8))(v9, v44);
  }

  v48 = v81;
  v49 = sub_1BFAAF1D8();
  v73 = v50;
  v74 = v49;
  v51 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  v52 = v51[10];
  v53 = *MEMORY[0x1E69CE2B8];
  v54 = sub_1BFAAF398();
  OUTLINED_FUNCTION_14(v54);
  (*(v55 + 104))(&a1[v52], v53);
  v56 = v51[11];
  sub_1BFAAF758();
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  v61 = v35[16];
  v62 = v51[13];
  v63 = sub_1BFAAEB28();
  OUTLINED_FUNCTION_14(v63);
  (*(v64 + 16))(&a1[v62], v48 + v61);
  v65 = v77;
  *a1 = v77;
  *(a1 + 1) = v38;
  *(a1 + 2) = v65;
  *(a1 + 3) = v38;
  (*(v28 + 32))(&a1[v51[6]], v34, v25);
  (*(v79 + 32))(&a1[v51[7]], v78, v80);
  v66 = &a1[v51[8]];
  v67 = v75;
  *v66 = v76;
  v66[1] = v67;
  v68 = &a1[v51[9]];
  v69 = v73;
  *v68 = v74;
  v68[1] = v69;
  v70 = &a1[v51[12]];
  *v70 = 0;
  *(v70 + 1) = 0;
}

uint64_t sub_1BFA6D480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v8 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = type metadata accessor for SiriSuggestions.SuggestionList();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v15);
  v16 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v29 - v20;
  v22 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  sub_1BFA75648(a3, v16);
  sub_1BFA75648(a1, &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v24 = (v14 + *(v9 + 80) + v23) & ~*(v9 + 80);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a2;
  sub_1BFA75428(v16, v25 + v23);
  sub_1BFA75428(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = v30;
  *v26 = v29;
  v26[1] = v27;

  sub_1BFA0B100();
}

uint64_t sub_1BFA6D730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v8[7] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  v11 = sub_1BFAAEFD8();
  v8[9] = v11;
  v12 = *(v11 - 8);
  v8[10] = v12;
  v13 = *(v12 + 64) + 15;
  v8[11] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD78, &unk_1BFAB4A28);
  v8[12] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0) - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50) - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v18 = sub_1BFAAE3F8();
  v8[18] = v18;
  v19 = *(v18 - 8);
  v8[19] = v19;
  v20 = *(v19 + 64) + 15;
  v8[20] = swift_task_alloc();
  v21 = sub_1BFAAEEF8();
  v8[21] = v21;
  v22 = *(v21 - 8);
  v8[22] = v22;
  v23 = *(v22 + 64) + 15;
  v8[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA6D9A4, 0, 0);
}

uint64_t sub_1BFA6D9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_80();
  v19 = *(v17 + 176);
  v18 = *(v17 + 184);
  v20 = *(v17 + 168);
  v21 = *(v17 + 56);
  v22 = *(v17 + 32);
  v46 = *(v17 + 24);
  v45 = OUTLINED_FUNCTION_229();
  v23 = *(type metadata accessor for SiriSuggestions.SuggestionList() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB748, &unk_1BFAB1510);
  v24 = swift_allocObject();
  *(v17 + 192) = v24;
  *(v24 + 16) = xmmword_1BFAB08E0;
  *(v17 + 240) = *(v21 + 48);
  v25 = sub_1BFAAF1D8();
  *(v17 + 244) = 1;
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  (*(v19 + 104))(v18, *MEMORY[0x1E69D3050], v20);
  v27 = *(v16 + 96);
  OUTLINED_FUNCTION_30();
  v44 = v28 + *v28;
  v30 = *(v29 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v17 + 200) = v31;
  *v31 = v32;
  v31[1] = sub_1BFA6DB5C;
  v33 = *(v17 + 184);
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_12_3();

  return v40(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, v44, v45, v46, a14, a15, a16);
}

uint64_t sub_1BFA6DB5C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_42();
  v2 = v1[25];
  v3 = v1[24];
  v4 = v1[23];
  v5 = v1[22];
  v6 = v1[21];
  v7 = *v0;
  OUTLINED_FUNCTION_8();
  *v8 = v7;

  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_46();
  v11(v10);
  v12 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BFA6DCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  v16 = *(v14 + 136);
  v17 = *(v14 + 144);
  v18 = *(v14 + 40);
  v19 = *(v14 + 48);
  sub_1BFAAE388();
  OUTLINED_FUNCTION_24_2(v16);
  if (v53)
  {
    sub_1BF9FDD5C(*(v14 + 136), &qword_1EBDFB570, &qword_1BFAB1F50);
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v20 = *(v14 + 48);
    v21 = sub_1BFAAF688();
    __swift_project_value_buffer(v21, qword_1EDCC8B70);
    OUTLINED_FUNCTION_125_0();

    v22 = sub_1BFAAF668();
    sub_1BFAAFB88();
    OUTLINED_FUNCTION_53_0();
    if (os_log_type_enabled(v22, v16))
    {
      v24 = *(v14 + 40);
      v23 = *(v14 + 48);
      OUTLINED_FUNCTION_51_0();
      a11 = OUTLINED_FUNCTION_81_1();
      *v15 = 136315138;
      v25 = OUTLINED_FUNCTION_148();
      *(v15 + 4) = sub_1BF9F88A8(v25, v26, v27);
      OUTLINED_FUNCTION_92_1();
      _os_log_impl(v28, v29, v30, v31, v15, 0xCu);
      OUTLINED_FUNCTION_179();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

LABEL_30:
    OUTLINED_FUNCTION_69_2();

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_61();

    return v151(v150, v151, v152, v153, v154, v155, v156, v157, a9, a10, a11, a12, a13, a14);
  }

  v33 = *(v14 + 120);
  v32 = *(v14 + 128);
  v35 = *(v14 + 96);
  v34 = *(v14 + 104);
  v36 = *(v14 + 72);
  v37 = *(v14 + 80);
  v38 = *(v14 + 16);
  (*(*(v14 + 152) + 32))(*(v14 + 160), *(v14 + 136), *(v14 + 144));
  sub_1BFAAEA98();
  v39 = *MEMORY[0x1E69D3108];
  v41 = *(v37 + 104);
  v40 = (v37 + 104);
  v42 = OUTLINED_FUNCTION_211();
  v43(v42);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v36);
  v47 = *(v35 + 48);
  v48 = &qword_1BFAB11D0;
  v49 = OUTLINED_FUNCTION_60_1();
  sub_1BFA17B2C(v49, v50, &qword_1EBDFB640, &qword_1BFAB11D0);
  OUTLINED_FUNCTION_227();
  v51 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_9_2(v51, v52, v36);
  if (v53)
  {
    v54 = *(v14 + 120);
    v55 = *(v14 + 128);
    v56 = *(v14 + 72);
    v36 = &qword_1BFAB11D0;
    OUTLINED_FUNCTION_111_0();
    sub_1BF9FDD5C(v57, v58, v59);
    OUTLINED_FUNCTION_111_0();
    sub_1BF9FDD5C(v60, v61, v62);
    v63 = OUTLINED_FUNCTION_198();
    OUTLINED_FUNCTION_9_2(v63, v64, v56);
    if (!v53)
    {
      goto LABEL_15;
    }

    sub_1BF9FDD5C(*(v14 + 104), &qword_1EBDFB640, &qword_1BFAB11D0);
  }

  else
  {
    v65 = *(v14 + 72);
    sub_1BFA17B2C(*(v14 + 104), *(v14 + 112), &qword_1EBDFB640, &qword_1BFAB11D0);
    v66 = OUTLINED_FUNCTION_198();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v66, v67, v65);
    v48 = *(v14 + 120);
    v69 = *(v14 + 128);
    v56 = *(v14 + 112);
    if (EnumTagSinglePayload == 1)
    {
      v70 = *(v14 + 72);
      v71 = *(v14 + 80);
      v34 = &qword_1EBDFB640;
      v36 = &qword_1BFAB11D0;
      v72 = *(v14 + 120);
      OUTLINED_FUNCTION_145();
      sub_1BF9FDD5C(v73, v74, v75);
      OUTLINED_FUNCTION_145();
      sub_1BF9FDD5C(v76, v77, v78);
      v79 = *(v71 + 8);
      v80 = OUTLINED_FUNCTION_119_0();
      v81(v80);
LABEL_15:
      sub_1BF9FDD5C(*(v14 + 104), &qword_1EBDFBD78, &unk_1BFAB4A28);
LABEL_16:
      if (OUTLINED_FUNCTION_104_0())
      {
        v82 = *(v14 + 240);
        v83 = *(v14 + 32);
        OUTLINED_FUNCTION_16_5(*(v14 + 16));
        v84 = OUTLINED_FUNCTION_144(*(v56 + 16));
        OUTLINED_FUNCTION_28_4(v84);
        v158 = v85 + *v85;
        v87 = *(v86 + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_33();
        *(v14 + 224) = v88;
        *v88 = v89;
        OUTLINED_FUNCTION_68_4(v88);
        OUTLINED_FUNCTION_61();

        return v94(v90, v91, v92, v93, v94, v95, v96, v97, a9, v158, a11, a12, a13, a14);
      }

      if (qword_1EDCC8BC0 != -1)
      {
        OUTLINED_FUNCTION_5();
      }

      v99 = OUTLINED_FUNCTION_191();
      v100 = __swift_project_value_buffer(v99, qword_1EDCC8B70);
      OUTLINED_FUNCTION_3_8();
      v101 = OUTLINED_FUNCTION_96();
      sub_1BFA75648(v101, v102);
      v103 = v100;
      v104 = sub_1BFAAF668();
      v105 = sub_1BFAAFB68();
      OUTLINED_FUNCTION_136_0(v105);
      OUTLINED_FUNCTION_166();
      if (v106)
      {
        v107 = *(v14 + 56);
        OUTLINED_FUNCTION_51_0();
        a10 = v36;
        a11 = OUTLINED_FUNCTION_81_1();
        OUTLINED_FUNCTION_115_0(4.8149e-34);
        OUTLINED_FUNCTION_2_10();
        v108 = sub_1BFA755F8();
        OUTLINED_FUNCTION_157(v108, v109);
        OUTLINED_FUNCTION_234();
        *(v36 + 4) = v48;
        OUTLINED_FUNCTION_74_1(&dword_1BF9F6000, v110, v111, "Suggestion: %s tapped");
        __swift_destroy_boxed_opaque_existential_2Tm(a11);
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
      }

      else
      {

        OUTLINED_FUNCTION_2_10();
        sub_1BFA755F8();
      }

      (*(v103 + 8))(v36, v34);
      goto LABEL_30;
    }

    a10 = *(v14 + 104);
    v113 = *(v14 + 80);
    v112 = *(v14 + 88);
    v114 = *(v14 + 72);
    v115 = OUTLINED_FUNCTION_174();
    v116(v115);
    OUTLINED_FUNCTION_15_4();
    sub_1BF9FD8E4(v117, v118);
    OUTLINED_FUNCTION_181();
    sub_1BFAAF848();
    v119 = OUTLINED_FUNCTION_217();
    (v36)(v119);
    v40 = &qword_1EBDFB640;
    v120 = OUTLINED_FUNCTION_71();
    sub_1BF9FDD5C(v120, v121, &qword_1BFAB11D0);
    OUTLINED_FUNCTION_147();
    sub_1BF9FDD5C(v122, v123, v124);
    v125 = OUTLINED_FUNCTION_119_0();
    (v36)(v125);
    OUTLINED_FUNCTION_147();
    sub_1BF9FDD5C(v126, v127, v128);
    if ((v34 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v129 = *(v14 + 32);
  OUTLINED_FUNCTION_229();
  *(v14 + 245) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB960, &qword_1BFAB4FB0);
  v130 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  OUTLINED_FUNCTION_15(v130);
  v132 = *(v131 + 72);
  v134 = *(v133 + 80);
  OUTLINED_FUNCTION_124_0();
  v135 = swift_allocObject();
  *(v14 + 208) = v135;
  *(v135 + 16) = xmmword_1BFAB08E0;
  sub_1BFA6D034(v40 + v135);
  v136 = *(v56 + 104);
  OUTLINED_FUNCTION_15_0();
  v159 = v137 + *v137;
  v139 = *(v138 + 4);
  v140 = swift_task_alloc();
  *(v14 + 216) = v140;
  *v140 = v14;
  v140[1] = sub_1BFA6E3E0;
  OUTLINED_FUNCTION_53(*(v14 + 160));
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_61();

  return v147(v141, v142, v143, v144, v145, v146, v147, v148, a9, v159, a11, a12, a13, a14);
}

uint64_t sub_1BFA6E3E0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 216);
  v3 = *(v1 + 208);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BFA6E4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  if (OUTLINED_FUNCTION_104_0())
  {
    v19 = *(v16 + 240);
    v20 = *(v16 + 32);
    OUTLINED_FUNCTION_16_5(*(v16 + 16));
    v21 = OUTLINED_FUNCTION_144(*(v15 + 16));
    OUTLINED_FUNCTION_28_4(v21);
    v57 = v22 + *v22;
    v24 = *(v23 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    *(v16 + 224) = v25;
    *v25 = v26;
    OUTLINED_FUNCTION_68_4(v25);
    OUTLINED_FUNCTION_61();

    return v31(v27, v28, v29, v30, v31, v32, v33, v34, a9, v57, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v36 = OUTLINED_FUNCTION_191();
    v37 = __swift_project_value_buffer(v36, qword_1EDCC8B70);
    OUTLINED_FUNCTION_3_8();
    v38 = OUTLINED_FUNCTION_96();
    sub_1BFA75648(v38, v39);
    v40 = v37;
    v41 = sub_1BFAAF668();
    v42 = sub_1BFAAFB68();
    OUTLINED_FUNCTION_136_0(v42);
    OUTLINED_FUNCTION_166();
    if (v43)
    {
      v44 = *(v16 + 56);
      OUTLINED_FUNCTION_51_0();
      a10 = v17;
      a11 = OUTLINED_FUNCTION_81_1();
      OUTLINED_FUNCTION_115_0(4.8149e-34);
      OUTLINED_FUNCTION_2_10();
      v45 = sub_1BFA755F8();
      OUTLINED_FUNCTION_157(v45, v46);
      OUTLINED_FUNCTION_234();
      *(v17 + 4) = v18;
      OUTLINED_FUNCTION_74_1(&dword_1BF9F6000, v47, v48, "Suggestion: %s tapped");
      __swift_destroy_boxed_opaque_existential_2Tm(a11);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    else
    {

      OUTLINED_FUNCTION_2_10();
      sub_1BFA755F8();
    }

    (*(v40 + 8))(v17, v14);
    OUTLINED_FUNCTION_69_2();

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_61();

    return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1BFA6E74C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA6E844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v18 = OUTLINED_FUNCTION_191();
  v19 = __swift_project_value_buffer(v18, qword_1EDCC8B70);
  OUTLINED_FUNCTION_3_8();
  v20 = OUTLINED_FUNCTION_96();
  sub_1BFA75648(v20, v21);
  v22 = v19;
  v23 = sub_1BFAAF668();
  v24 = sub_1BFAAFB68();
  OUTLINED_FUNCTION_136_0(v24);
  OUTLINED_FUNCTION_166();
  if (v25)
  {
    v26 = *(v15 + 56);
    OUTLINED_FUNCTION_51_0();
    a10 = v16;
    a11 = OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_115_0(4.8149e-34);
    OUTLINED_FUNCTION_2_10();
    v27 = sub_1BFA755F8();
    OUTLINED_FUNCTION_157(v27, v28);
    OUTLINED_FUNCTION_234();
    *(v16 + 4) = v17;
    OUTLINED_FUNCTION_74_1(&dword_1BF9F6000, v29, v30, "Suggestion: %s tapped");
    __swift_destroy_boxed_opaque_existential_2Tm(a11);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {

    OUTLINED_FUNCTION_2_10();
    sub_1BFA755F8();
  }

  (*(v22 + 8))(v16, v14);
  OUTLINED_FUNCTION_69_2();

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_61();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BFA6E9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  v13 = v12[23];
  v14 = v12[17];
  v16 = v12[15];
  v15 = v12[16];
  v18 = v12[13];
  v17 = v12[14];
  v19 = v12[11];
  v20 = v12[8];
  (*(v12[19] + 8))(v12[20], v12[18]);

  OUTLINED_FUNCTION_85();
  v21 = v12[29];
  OUTLINED_FUNCTION_25_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1BFA6EAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SiriSuggestions.SuggestionList();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v19 - v13;
  v15 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  sub_1BFA75648(a3, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a2;
  sub_1BFA75428(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA6EC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v10 = sub_1BFAAEEF8();
  v6[13] = v10;
  v11 = *(v10 - 8);
  v6[14] = v11;
  v12 = *(v11 + 64) + 15;
  v6[15] = swift_task_alloc();
  v13 = sub_1BFAAE3F8();
  v6[16] = v13;
  v14 = *(v13 - 8);
  v6[17] = v14;
  v15 = *(v14 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA6EE08, 0, 0);
}

uint64_t sub_1BFA6EE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_80();
  v17 = *(v16 + 136);
  v18 = *(v16 + 144);
  v19 = *(v16 + 128);
  v21 = *(v16 + 64);
  v20 = *(v16 + 72);
  sub_1BF9F93E8(*(v16 + 56) + 64, v16 + 16);
  v22 = *(v16 + 48);
  v23 = __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
  v24 = type metadata accessor for SiriSuggestions.SuggestionList();
  (*(v17 + 16))(v18, v21 + *(v24 + 24), v19);
  v25 = *(v20 + 16);
  *(v16 + 152) = v25;
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    a9 = v23;
    a10 = v22;
    v27 = *(v16 + 88);
    v54 = *(v16 + 80);
    v28 = *(v16 + 72);
    OUTLINED_FUNCTION_187();
    v26 = a13;
    OUTLINED_FUNCTION_112_0();
    v30 = v28 + v29;
    v31 = *(v27 + 72);
    do
    {
      v32 = *(v16 + 96);
      OUTLINED_FUNCTION_3_8();
      sub_1BFA75648(v30, v32);
      v33 = v32 + *(v54 + 48);
      sub_1BFAAF1D8();
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_2_10();
      sub_1BFA755F8();
      OUTLINED_FUNCTION_196();
      if (v35)
      {
        v37 = OUTLINED_FUNCTION_114_0(v34);
        sub_1BFA2DC58(v37, v32, 1);
        v26 = a13;
      }

      OUTLINED_FUNCTION_175();
    }

    while (!v36);
  }

  *(v16 + 160) = v26;
  *(v16 + 176) = 2;
  (*(*(v16 + 112) + 104))(*(v16 + 120), *MEMORY[0x1E69D3050], *(v16 + 104));
  v38 = *(v22 + 96);
  OUTLINED_FUNCTION_44();
  v55 = v39 + *v39;
  v41 = *(v40 + 4);
  v42 = swift_task_alloc();
  *(v16 + 168) = v42;
  *v42 = v16;
  v42[1] = sub_1BFA6F048;
  v43 = *(v16 + 120);
  OUTLINED_FUNCTION_53(*(v16 + 144));
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_12_3();

  return v50(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, v22 + 96, v55, a13, a14, a15, a16);
}

uint64_t sub_1BFA6F048()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_42();
  v2 = v1[21];
  v3 = v1[20];
  v4 = v1[18];
  v5 = v1[17];
  v6 = v1[16];
  v7 = v1[15];
  v8 = v1[14];
  v9 = v1[13];
  v10 = *v0;
  OUTLINED_FUNCTION_8();
  *v11 = v10;

  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = *(v5 + 8);
  v16 = OUTLINED_FUNCTION_46();
  v17(v16);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1BFA6F1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, NSObject *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_162();
  __swift_destroy_boxed_opaque_existential_2Tm(v18 + 2);
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v21 = v18[9];
  v22 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v22, qword_1EDCC8B70);

  v23 = sub_1BFAAF668();
  v24 = sub_1BFAAFB68();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v18[19];
    OUTLINED_FUNCTION_51_0();
    v26 = OUTLINED_FUNCTION_32();
    v27 = v26;
    a14 = v26;
    *v21 = 136315138;
    v28 = MEMORY[0x1E69E7CC0];
    if (v25)
    {
      a9 = v26;
      a10 = v21;
      HIDWORD(a11) = v24;
      a12 = v23;
      v29 = v18[11];
      a13 = v18[10];
      v30 = v18[9];
      v63 = MEMORY[0x1E69E7CC0];
      sub_1BFA2DC58(0, v18[19], 0);
      v31 = 0;
      v28 = v63;
      OUTLINED_FUNCTION_112_0();
      v33 = v30 + v32;
      v34 = *(v29 + 72);
      do
      {
        v35 = v18[12];
        OUTLINED_FUNCTION_3_8();
        sub_1BFA75648(v33, v35);
        v36 = v35 + *(a13 + 48);
        sub_1BFAAF1D8();
        OUTLINED_FUNCTION_206();
        OUTLINED_FUNCTION_2_10();
        sub_1BFA755F8();
        a15 = v28;
        v38 = *(v28 + 16);
        v37 = *(v28 + 24);
        if (v38 >= v37 >> 1)
        {
          v41 = OUTLINED_FUNCTION_114_0(v37);
          sub_1BFA2DC58(v41, v38 + 1, 1);
        }

        v39 = v18[19];
        ++v31;
        *(v28 + 16) = v38 + 1;
        v40 = v28 + 16 * v38;
        *(v40 + 32) = v19;
        *(v40 + 40) = v20;
        v33 += v34;
      }

      while (v31 != v39);
      v23 = a12;
      v27 = a9;
      v21 = a10;
    }

    MEMORY[0x1BFB60C30](v28, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_221();

    v42 = OUTLINED_FUNCTION_41_0();
    v45 = sub_1BF9F88A8(v42, v43, v44);

    *(v21 + 4) = v45;
    OUTLINED_FUNCTION_27_6();
    _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v27);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  v51 = v18[18];
  v52 = v18[15];
  v53 = v18[12];

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_47_0();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t SiriSuggestionsFacade.typingSessionEnded(reason:requestId:)()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  v5 = sub_1BFAAF688();
  *(v0 + 32) = v5;
  OUTLINED_FUNCTION_15(v5);
  *(v0 + 40) = v6;
  v8 = *(v7 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_100();
  *(v0 + 56) = *v2;
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA6F504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_24_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_72();
  a18 = v20;
  v23 = *(v20 + 48);
  v24 = *(v20 + 24);
  sub_1BFAAF4B8();

  v25 = sub_1BFAAF668();
  sub_1BFAAFB78();
  OUTLINED_FUNCTION_208();

  if (OUTLINED_FUNCTION_194())
  {
    v26 = *(v20 + 56);
    v28 = *(v20 + 16);
    v27 = *(v20 + 24);
    v29 = OUTLINED_FUNCTION_185();
    a9 = OUTLINED_FUNCTION_193();
    *v29 = 136315394;
    *(v29 + 4) = sub_1BF9F88A8(v28, v27, &a9);
    *(v29 + 12) = 2080;
    v30 = 0xE700000000000000;
    v31 = 0x7373696D736964;
    switch(v26)
    {
      case 1:
        v30 = 0xED00007061546E6FLL;
        v31 = 0x6974736567677573;
        break;
      case 2:
        v30 = 0xEA00000000006564;
        v31 = 0x6F4D686374697773;
        break;
      case 3:
        v30 = 0xE600000000000000;
        v31 = 0x74696D627573;
        break;
      default:
        break;
    }

    v39 = *(v20 + 40);
    v38 = *(v20 + 48);
    v40 = *(v20 + 32);
    v41 = sub_1BF9F88A8(v31, v30, &a9);

    *(v29 + 14) = v41;
    OUTLINED_FUNCTION_212();
    _os_log_impl(v42, v43, v44, v45, v46, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();

    v47 = *(v39 + 8);
    v48 = OUTLINED_FUNCTION_146();
    v49(v48);
  }

  else
  {
    v33 = *(v20 + 40);
    v32 = *(v20 + 48);
    v34 = *(v20 + 32);

    v35 = *(v33 + 8);
    v36 = OUTLINED_FUNCTION_46();
    v37(v36);
  }

  v50 = *(v20 + 48);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_25_1();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
}

uint64_t SiriSuggestionsFacade.getAutoCompleteSuggestions(query:requestId:)()
{
  OUTLINED_FUNCTION_51();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1BF9FDE28;

  return SiriSuggestionsFacade.getAutoCompleteSuggestions(query:typingSessionId:deviceLocked:)();
}

uint64_t SiriSuggestionsFacade.getAutoCompleteSuggestions(query:typingSessionId:deviceLocked:)()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 24) = v2;
  *v2 = v3;
  v2[1] = sub_1BFA6F89C;
  OUTLINED_FUNCTION_138();

  return SiriSuggestionsFacade.getAutoCompleteSuggestionsOrError(query:typingSessionId:deviceLocked:)();
}

uint64_t sub_1BFA6F89C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 32) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_85();

    return v12();
  }
}

uint64_t sub_1BFA6F9B0()
{
  OUTLINED_FUNCTION_58();
  if (qword_1EBDFB4F0 != -1)
  {
    OUTLINED_FUNCTION_109_0();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = qword_1EBDFBD28;
  v7 = xmmword_1EBDFBD08;

  v6 = xmmword_1EBDFBD18;

  *v2 = v7;
  *(v2 + 16) = v6;
  *(v2 + 32) = v3;
  OUTLINED_FUNCTION_85();

  return v4();
}

uint64_t SiriSuggestionsFacade.getAutoCompleteSuggestionsOrError(query:typingSessionId:deviceLocked:)()
{
  OUTLINED_FUNCTION_40();
  *(v1 + 384) = v2;
  *(v1 + 64) = v3;
  *(v1 + 72) = v0;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  v8 = sub_1BFAAF458();
  *(v1 + 80) = v8;
  OUTLINED_FUNCTION_15(v8);
  *(v1 + 88) = v9;
  v11 = *(v10 + 64);
  *(v1 + 96) = OUTLINED_FUNCTION_100();
  v12 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  *(v1 + 104) = v12;
  OUTLINED_FUNCTION_15(v12);
  *(v1 + 112) = v13;
  v15 = *(v14 + 64);
  *(v1 + 120) = OUTLINED_FUNCTION_109();
  *(v1 + 128) = swift_task_alloc();
  v16 = sub_1BFAAF498();
  *(v1 + 136) = v16;
  OUTLINED_FUNCTION_15(v16);
  *(v1 + 144) = v17;
  v19 = *(v18 + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_109();
  *(v1 + 160) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  OUTLINED_FUNCTION_60_0(v20);
  v22 = *(v21 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_100();
  v23 = sub_1BFAAE3F8();
  *(v1 + 176) = v23;
  OUTLINED_FUNCTION_15(v23);
  *(v1 + 184) = v24;
  *(v1 + 192) = *(v25 + 64);
  *(v1 + 200) = OUTLINED_FUNCTION_109();
  *(v1 + 208) = swift_task_alloc();
  v26 = sub_1BFAAE208();
  *(v1 + 216) = v26;
  OUTLINED_FUNCTION_15(v26);
  *(v1 + 224) = v27;
  v29 = *(v28 + 64);
  *(v1 + 232) = OUTLINED_FUNCTION_100();
  v30 = sub_1BFAAE378();
  *(v1 + 240) = v30;
  OUTLINED_FUNCTION_15(v30);
  *(v1 + 248) = v31;
  v33 = *(v32 + 64);
  *(v1 + 256) = OUTLINED_FUNCTION_100();
  v34 = sub_1BFAAF648();
  *(v1 + 264) = v34;
  OUTLINED_FUNCTION_15(v34);
  *(v1 + 272) = v35;
  v37 = *(v36 + 64);
  *(v1 + 280) = OUTLINED_FUNCTION_100();
  v38 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v38, v39, v40);
}

uint64_t sub_1BFA6FD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_61_0();
  a22 = v24;
  a23 = v25;
  OUTLINED_FUNCTION_80();
  a21 = v23;
  v26 = *(v23 + 280);
  v28 = *(v23 + 248);
  v27 = *(v23 + 256);
  v29 = *(v23 + 240);
  v30 = sub_1BFAAF258();
  sub_1BFAAF238();

  sub_1BFAAF388();
  v31 = sub_1BFAAF258();
  OUTLINED_FUNCTION_111_0();
  sub_1BFAAF268();

  sub_1BFAAE368();
  sub_1BFAAE358();
  *(v23 + 288) = v32;
  *(v23 + 296) = *(v28 + 8);
  *(v23 + 304) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33 = OUTLINED_FUNCTION_46();
  v34(v33);
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v35 = *(v23 + 64);
  v36 = *(v23 + 48);
  v37 = sub_1BFAAF688();
  *(v23 + 312) = v37;
  __swift_project_value_buffer(v37, qword_1EDCC8B70);

  v38 = sub_1BFAAF668();
  sub_1BFAAFB78();

  if (OUTLINED_FUNCTION_194())
  {
    v39 = *(v23 + 56);
    v36 = *(v23 + 64);
    v41 = *(v23 + 40);
    v40 = *(v23 + 48);
    v42 = OUTLINED_FUNCTION_185();
    a12 = OUTLINED_FUNCTION_193();
    *v42 = 136315394;
    *(v42 + 4) = sub_1BF9F88A8(v41, v40, &a12);
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_1BF9F88A8(v39, v36, &a12);
    OUTLINED_FUNCTION_39_3();
    _os_log_impl(v43, v44, v45, v46, v47, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  if (*(v23 + 384) == 1)
  {
    v48 = sub_1BFAAF668();
    v49 = sub_1BFAAFB78();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 67109120;
      *(v50 + 4) = 1;
      _os_log_impl(&dword_1BF9F6000, v48, v49, "Not returning any suggestions as Device is locked: %{BOOL}d", v50, 8u);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    v51 = *(v23 + 280);
    v52 = *(v23 + 32);

    *v52 = MEMORY[0x1E69E7CC0];
    v52[1] = nullsub_1;
    v52[2] = 0;
    v52[3] = nullsub_1;
    v52[4] = 0;
LABEL_20:
    sub_1BFAAF388();
    v79 = sub_1BFAAF258();
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_228();

    v80 = OUTLINED_FUNCTION_96_0();
    v81(v80);

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_12_3();

    return v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, *(&a11 + 1), a12, a13, a14, a15);
  }

  v54 = *(v23 + 224);
  v53 = *(v23 + 232);
  v55 = *(v23 + 216);
  v56 = *(v23 + 48);
  *(v23 + 16) = *(v23 + 40);
  *(v23 + 24) = v56;
  sub_1BFAAE1F8();
  sub_1BF9F86D0();
  sub_1BFAAFBB8();
  OUTLINED_FUNCTION_221();
  v57 = *(v54 + 8);
  v58 = OUTLINED_FUNCTION_120_0();
  v59(v58);

  v60 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v60 = (v23 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v60)
  {
    v69 = sub_1BFAAF668();
    sub_1BFAAFB78();
    v70 = OUTLINED_FUNCTION_72_2();
    if (os_log_type_enabled(v70, v71))
    {
      OUTLINED_FUNCTION_2_9();
      v72 = swift_slowAlloc();
      OUTLINED_FUNCTION_29(v72);
      OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v73, v74, "Not returning any suggestions as query is empty");
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    if (qword_1EBDFB4F0 != -1)
    {
      OUTLINED_FUNCTION_109_0();
    }

    v75 = *(v23 + 280);
    v76 = *(v23 + 32);
    v77 = qword_1EBDFBD28;
    v78 = xmmword_1EBDFBD18;
    a11 = xmmword_1EBDFBD18;
    *v76 = xmmword_1EBDFBD08;
    *(v76 + 16) = v78;
    *(v76 + 32) = v77;

    goto LABEL_20;
  }

  v61 = *(v23 + 168);
  v62 = *(v23 + 176);
  v63 = *(v23 + 56);
  v64 = *(v23 + 64);
  sub_1BFAAE388();
  if (OUTLINED_FUNCTION_83_2() == 1)
  {
    v65 = *(v23 + 168);
    v66 = *(v23 + 176);
    v67 = *(v23 + 208);
    sub_1BFAAE3E8();
    OUTLINED_FUNCTION_24_2(v65);
    if (!v68)
    {
      sub_1BF9FDD5C(*(v23 + 168), &qword_1EBDFB570, &qword_1BFAB1F50);
    }
  }

  else
  {
    (*(*(v23 + 184) + 32))(*(v23 + 208), *(v23 + 168), *(v23 + 176));
  }

  v91 = *(v23 + 200);
  v93 = *(v23 + 184);
  v92 = *(v23 + 192);
  v118 = v92;
  *&a11 = *(v23 + 208);
  v94 = *(v23 + 176);
  v95 = *(v23 + 72);
  v96 = *(v93 + 16);
  v96(v91);
  v97 = (*(v93 + 80) + 24) & ~*(v93 + 80);
  v98 = swift_allocObject();
  *(v23 + 320) = v98;
  *(v98 + 16) = v95;
  v99 = *(v93 + 32);
  v99(v98 + v97, v91, v94);
  (v96)(v91, a11, v94);
  v100 = swift_allocObject();
  *(v23 + 328) = v100;
  *(v100 + 16) = v95;
  v99(v100 + v97, v91, v94);
  v101 = v95[27];
  __swift_project_boxed_opaque_existential_1(v95 + 23, v95[26]);
  v102 = *(MEMORY[0x1E69CE288] + 4);
  swift_retain_n();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v23 + 336) = v103;
  *v103 = v104;
  v103[1] = sub_1BFA703A0;
  v105 = *(v23 + 160);
  v106 = *(v23 + 56);
  v107 = *(v23 + 64);
  v108 = *(v23 + 40);
  v109 = *(v23 + 48);
  OUTLINED_FUNCTION_12_3();

  return MEMORY[0x1EEE38560](v110, v111, v112, v113, v114, v115, v116, v117, a9, v118, a11, *(&a11 + 1), a12, a13, a14, a15);
}

uint64_t sub_1BFA703A0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 344) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA70498()
{
  OUTLINED_FUNCTION_177();
  v98 = v0;
  v1 = v0[20];
  v87 = sub_1BFAAF488();
  result = sub_1BFA751D0(v87);
  v86 = v0;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v3 = 0;
    v4 = v0[13];
    v83 = v0[14];
    v84 = v0[16];
    v5 = MEMORY[0x1E69E7CC0];
    v85 = result;
    do
    {
      v94 = v5;
      if ((v87 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB60E90](v3, v87);
      }

      else
      {
        v6 = *(v87 + 8 * v3 + 32);
      }

      v7 = v0[16];
      v93 = v0[15];
      v8 = sub_1BFAAF408();
      v90 = v9;
      v91 = v8;
      v10 = sub_1BFAAF3A8();
      v88 = v11;
      v89 = v10;
      v12 = v7 + v4[6];
      sub_1BFAAF438();
      v13 = v7 + v4[7];
      sub_1BFAAF3D8();
      v14 = sub_1BFAAF428();
      v16 = v15;
      v17 = sub_1BFAAF3F8();
      v19 = v18;
      v20 = v7 + v4[10];
      sub_1BFAAF418();
      v21 = v7 + v4[11];
      sub_1BFAAF3C8();
      v22 = sub_1BFAAF3E8();
      v24 = v23;
      v25 = v7 + v4[13];
      sub_1BFAAF3B8();
      *v7 = v91;
      v84[1] = v90;
      v84[2] = v89;
      v84[3] = v88;
      v26 = (v7 + v4[8]);
      *v26 = v14;
      v26[1] = v16;
      v27 = (v7 + v4[9]);
      *v27 = v17;
      v27[1] = v19;
      v28 = (v7 + v4[12]);
      *v28 = v22;
      v28[1] = v24;
      OUTLINED_FUNCTION_94_0();
      sub_1BFA75648(v7, v93);
      v5 = v94;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BFA1F798(0, *(v94 + 16) + 1, 1, v94);
        v5 = v36;
      }

      v30 = *(v5 + 16);
      v29 = *(v5 + 24);
      v0 = v86;
      if (v30 >= v29 >> 1)
      {
        v37 = OUTLINED_FUNCTION_114_0(v29);
        sub_1BFA1F798(v37, v30 + 1, 1, v5);
        v5 = v38;
      }

      ++v3;
      v31 = v86[15];
      v32 = v86[16];

      sub_1BFA755F8();
      *(v5 + 16) = v30 + 1;
      v33 = *(v83 + 80);
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_89_2(v5 + v34);
      sub_1BFA75428(v31, v35);
    }

    while (v85 != v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v0[44] = v5;
  v40 = v0[37];
  v39 = v0[38];
  v41 = *(v0 + 36);
  v42 = v0[32];
  v43 = v0[30];

  sub_1BFAAE368();
  sub_1BFAAE358();
  v45 = v44;
  v40(v42, v43);
  if (qword_1EBDFB518 != -1)
  {
    swift_once();
  }

  v47 = v0[19];
  v46 = v0[20];
  v48 = v0[17];
  v49 = v0[18];
  v50 = v0[6];
  __swift_project_value_buffer(v0[39], qword_1EBDFC288);
  (*(v49 + 16))(v47, v46, v48);

  v51 = sub_1BFAAF668();
  v52 = sub_1BFAAFB78();

  v53 = os_log_type_enabled(v51, v52);
  v54 = v0[18];
  v55 = v0[19];
  v56 = v0[17];
  if (v53)
  {
    v58 = v0[11];
    v57 = v0[12];
    v92 = v0[10];
    v95 = v52;
    v59 = v0[6];
    v60 = v5;
    v61 = v86[5];
    v62 = swift_slowAlloc();
    v97 = OUTLINED_FUNCTION_193();
    *v62 = 136315906;
    *(v62 + 4) = sub_1BF9F88A8(v61, v59, &v97);
    *(v62 + 12) = 2048;
    *(v62 + 14) = *(v60 + 16);
    *(v62 + 22) = 2080;
    sub_1BFAAF478();
    v63 = sub_1BFAAF448();
    v65 = v64;
    (*(v58 + 8))(v57, v92);
    v68 = *(v54 + 8);
    v66 = v54 + 8;
    v67 = v68;
    v69 = OUTLINED_FUNCTION_34_2();
    v68(v69);
    v70 = sub_1BF9F88A8(v63, v65, &v97);
    v0 = v86;

    *(v62 + 24) = v70;
    *(v62 + 32) = 2048;
    *(v62 + 34) = v45 - v41;

    _os_log_impl(&dword_1BF9F6000, v51, v95, "%s,%ld,%s,%f", v62, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {

    v71 = *(v54 + 8);
    v66 = v54 + 8;
    v67 = v71;
    v72 = OUTLINED_FUNCTION_34_2();
    v71(v72);
  }

  v0[45] = v66;
  v0[46] = v67;
  v73 = v0[9];
  v74 = v73[11];
  v75 = v73[12];
  OUTLINED_FUNCTION_16_1(v73 + 8);
  v76 = *(v75 + 32);
  OUTLINED_FUNCTION_44();
  v96 = (v77 + *v77);
  v79 = *(v78 + 4);
  v80 = swift_task_alloc();
  v0[47] = v80;
  *v80 = v0;
  v80[1] = sub_1BFA70A4C;
  v81 = v0[5];
  v82 = v0[6];
  OUTLINED_FUNCTION_53(v0[26]);
  OUTLINED_FUNCTION_209();

  return v96();
}

uint64_t sub_1BFA70A4C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 376);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA70B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  v15 = *(v14 + 360);
  v16 = *(v14 + 352);
  v18 = *(v14 + 320);
  v17 = *(v14 + 328);
  v19 = *(v14 + 280);
  v20 = *(v14 + 208);
  v21 = *(v14 + 176);
  v22 = *(v14 + 184);
  v23 = *(v14 + 32);
  (*(v14 + 368))(*(v14 + 160), *(v14 + 136));
  v24 = *(v22 + 8);
  v25 = OUTLINED_FUNCTION_46();
  v26(v25);
  *v23 = v16;
  v23[1] = sub_1BFA75A2C;
  v23[2] = v18;
  v23[3] = sub_1BFA75B44;
  v23[4] = v17;
  sub_1BFAAF388();
  v27 = sub_1BFAAF258();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_228();

  v28 = OUTLINED_FUNCTION_96_0();
  v29(v28);

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_61();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BFA70C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_214();
  v21 = v20[40];
  v22 = v20[41];
  v24 = v20[34];
  v23 = v20[35];
  v25 = v20[32];
  v26 = v20[33];
  v27 = v20[26];
  v44 = v20[29];
  v45 = v20[25];
  v28 = v20[22];
  v29 = v20[23];
  v46 = v20[21];
  v47 = v20[20];
  v48 = v20[19];
  v49 = v20[16];
  v50 = v20[15];
  v51 = v20[12];

  (*(v29 + 8))(v27, v28);
  sub_1BFAAF388();
  v30 = sub_1BFAAF258();
  OUTLINED_FUNCTION_46();
  sub_1BFAAF248();

  v31 = *(v24 + 8);
  v32 = OUTLINED_FUNCTION_164();
  v33(v32);

  OUTLINED_FUNCTION_85();
  v34 = v20[43];
  OUTLINED_FUNCTION_90();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44, v45, v46, v47, v48, v49, v50, v51, a18, a19, a20);
}

uint64_t sub_1BFA70DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = sub_1BFAAE3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v12);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v24 - v17;
  v19 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  sub_1BFA75648(a1, v13);
  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v20 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v21 = (v11 + *(v6 + 80) + v20) & ~*(v6 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v25;
  sub_1BFA75428(v13, &v22[v20]);
  (*(v6 + 32))(&v22[v21], &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA71070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(type metadata accessor for SiriAutoCompleteSuggestion(0) - 8);
  v6[5] = v7;
  v8 = *(v7 + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA7113C, 0, 0);
}

uint64_t sub_1BFA7113C()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[26];
  v4 = v1[27];
  OUTLINED_FUNCTION_16_1(v1 + 23);
  v5 = *v2;
  v6 = v2[1];
  v7 = *(MEMORY[0x1E69CE290] + 4);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_45(v8);
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE38568](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1BFA711EC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA712D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v11 = *(v9 + 40);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v14 = v12[12];
  __swift_project_boxed_opaque_existential_1(v12 + 8, v12[11]);
  *(v9 + 88) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB960, &qword_1BFAB4FB0);
  v15 = *(v11 + 72);
  v16 = *(v11 + 80);
  OUTLINED_FUNCTION_124_0();
  v17 = swift_allocObject();
  *(v9 + 72) = v17;
  *(v17 + 16) = xmmword_1BFAB08E0;
  OUTLINED_FUNCTION_94_0();
  sub_1BFA75648(v13, v18 + v10);
  v19 = swift_task_alloc();
  *(v9 + 80) = v19;
  *v19 = v9;
  v19[1] = sub_1BFA713E8;
  OUTLINED_FUNCTION_53(*(v9 + 32));
  OUTLINED_FUNCTION_138();

  return sub_1BFA2FFF0(v20, v21, v22, v23, v24, v25, v26, v27, a9);
}

uint64_t sub_1BFA713E8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BFA714E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v13 = v12[6];
  v14 = v12[7];
  v15 = v12[3];
  v16 = sub_1BFAAF688();
  __swift_project_value_buffer(v16, qword_1EDCC8B70);
  sub_1BFA75648(v15, v14);
  v17 = OUTLINED_FUNCTION_60_1();
  sub_1BFA75648(v17, v18);
  v19 = sub_1BFAAF668();
  sub_1BFAAFB78();
  v20 = OUTLINED_FUNCTION_72_2();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v12[6];
  v24 = v12[7];
  if (v22)
  {
    v25 = OUTLINED_FUNCTION_185();
    a9 = OUTLINED_FUNCTION_193();
    *v25 = 136315394;
    v26 = *v24;
    v27 = v24[1];

    sub_1BFA755F8();
    v28 = OUTLINED_FUNCTION_34_2();
    v31 = sub_1BF9F88A8(v28, v29, v30);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    v32 = *(v23 + 16);
    v33 = *(v23 + 24);

    sub_1BFA755F8();
    v34 = OUTLINED_FUNCTION_71();
    v37 = sub_1BF9F88A8(v34, v35, v36);

    *(v25 + 14) = v37;
    OUTLINED_FUNCTION_212();
    _os_log_impl(v38, v39, v40, v41, v42, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {

    sub_1BFA755F8();
    sub_1BFA755F8();
  }

  v44 = v12[6];
  v43 = v12[7];

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_25_1();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
}

uint64_t sub_1BFA71710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BFAAE3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v19 - v13;
  v15 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a2;
  (*(v7 + 32))(&v17[v16], &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *&v17[(v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8] = a1;

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA718F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BFA71914, 0, 0);
}

uint64_t sub_1BFA71914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_43();
  v10 = *(v9 + 16);
  v12 = v10[11];
  v11 = v10[12];
  __swift_project_boxed_opaque_existential_1(v10 + 8, v12);
  *(v9 + 48) = 0;
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_156(v13);
  *v14 = v15;
  v14[1] = sub_1BFA719D4;
  v16 = *(v9 + 32);
  v17 = OUTLINED_FUNCTION_53(*(v9 + 24));

  return sub_1BFA2FFF0(v17, v9 + 48, v18, v12, v11, v19, v20, v21, a9);
}

uint64_t sub_1BFA719D4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA71AB8()
{
  OUTLINED_FUNCTION_43();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v1 = *(v0 + 32);
  v2 = sub_1BFAAF688();
  __swift_project_value_buffer(v2, qword_1EDCC8B70);

  v3 = sub_1BFAAF668();
  sub_1BFAAFB68();
  v4 = OUTLINED_FUNCTION_72_2();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_51_0();
    *v8 = 134217984;
    *(v8 + 4) = *(v7 + 16);

    OUTLINED_FUNCTION_92_1();
    _os_log_impl(v9, v10, v11, v12, v8, 0xCu);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {
    v13 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_85();

  return v14();
}

uint64_t SiriAutoCompleteSuggestion.init(displayText:invocationText:iconInfo:uuidIdentifier:appBundleId:loggingIdentifier:source:toolInvocation:zkwGenerationId:suggestionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v21 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  v22 = v21[6];
  v23 = sub_1BFAAF138();
  OUTLINED_FUNCTION_14(v23);
  (*(v24 + 32))(&a9[v22], a5);
  v25 = v21[7];
  v26 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_14(v26);
  (*(v27 + 32))(&a9[v25], a6);
  v28 = &a9[v21[8]];
  *v28 = a7;
  *(v28 + 1) = a8;
  v29 = &a9[v21[9]];
  *v29 = a10;
  *(v29 + 1) = a11;
  v30 = v21[10];
  v31 = sub_1BFAAF398();
  OUTLINED_FUNCTION_14(v31);
  (*(v32 + 32))(&a9[v30], a12);
  sub_1BFA17BBC(a13, &a9[v21[11]], &qword_1EBDFBBA8, &qword_1BFAB3CC0);
  v33 = &a9[v21[12]];
  *v33 = a14;
  *(v33 + 1) = a15;
  v34 = v21[13];
  v35 = sub_1BFAAEB28();
  OUTLINED_FUNCTION_14(v35);
  v37 = *(v36 + 32);

  return v37(&a9[v34], a16);
}

uint64_t SiriSuggestionsFacade.emitRequestLink(turnId:generationId:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA71DA8()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 32);
  v2 = v1[11];
  v3 = v1[12];
  OUTLINED_FUNCTION_16_1(v1 + 8);
  v4 = *(v3 + 48);
  OUTLINED_FUNCTION_30();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_156(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_22_4(v9);

  return v12(v11);
}

uint64_t SiriSuggestionsFacade.emitRequestLink(turnId:typingSessionId:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA71EC0()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 32);
  v2 = v1[11];
  v3 = v1[12];
  OUTLINED_FUNCTION_16_1(v1 + 8);
  v4 = *(v3 + 48);
  OUTLINED_FUNCTION_30();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_156(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_22_4(v9);

  return v12(v11);
}

uint64_t SiriSuggestionsFacade.getSuggestionsForIntent(intentToSuggest:entities:expectedDeliveryVehicle:timeoutSeconds:)()
{
  OUTLINED_FUNCTION_40();
  v1[6] = v0;
  v1[5] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_1BFAAEB18();
  OUTLINED_FUNCTION_60_0(v6);
  v8 = *(v7 + 64);
  v1[7] = OUTLINED_FUNCTION_100();
  v9 = sub_1BFAAEB68();
  v1[8] = v9;
  OUTLINED_FUNCTION_15(v9);
  v1[9] = v10;
  v12 = *(v11 + 64);
  v1[10] = OUTLINED_FUNCTION_100();
  v13 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1BFA72090()
{
  OUTLINED_FUNCTION_51();
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[2];
  v6 = v0[3];
  sub_1BFAAEB78();

  OUTLINED_FUNCTION_67();
  sub_1BFAAEB38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6C8, &qword_1BFAB1420);
  v7 = *(v2 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  v0[11] = v9;
  *(v9 + 16) = xmmword_1BFAB08E0;
  (*(v2 + 16))(v9 + v8, v1, v3);
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_1BFA721C0;
  v11 = v0[6];
  v12 = v0[5];
  v13 = v0[4];

  return SiriSuggestionsFacade.getSuggestionsForIntents(intentQueries:expectedDeliveryVehicle:timeoutSeconds:)();
}

uint64_t sub_1BFA721C0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 96);
  v5 = *(v3 + 88);
  v6 = *v0;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v9 + 104) = v8;

  v10 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA722C0()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);

  OUTLINED_FUNCTION_24_0();
  v3 = v0[13];

  return v2(v3);
}

uint64_t SiriSuggestionsFacade.getSuggestionsForIntents(intentQueries:expectedDeliveryVehicle:timeoutSeconds:)()
{
  OUTLINED_FUNCTION_40();
  v1[6] = v0;
  v1[5] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD48, &qword_1BFAB49C0);
  OUTLINED_FUNCTION_15(v5);
  v1[7] = v6;
  v1[8] = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_100();
  v8 = sub_1BFAAEAE8();
  v1[10] = v8;
  OUTLINED_FUNCTION_15(v8);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_100();
  v12 = sub_1BFAAEB18();
  v1[13] = v12;
  OUTLINED_FUNCTION_15(v12);
  v1[14] = v13;
  v15 = *(v14 + 64);
  v1[15] = OUTLINED_FUNCTION_100();
  v16 = sub_1BFAAEB68();
  v1[16] = v16;
  OUTLINED_FUNCTION_15(v16);
  v1[17] = v17;
  v19 = *(v18 + 64);
  v1[18] = OUTLINED_FUNCTION_100();
  v20 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1BFA724E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, NSObject *a12, uint64_t *a13, void (**a14)(uint64_t *, uint64_t), void (**a15)(uint64_t, uint64_t), uint64_t a16, void (*a17)(void, uint64_t, void), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_225();
  a31 = v35;
  a32 = v36;
  a30 = v33;
  v37 = v33;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v38 = v33[3];
  v39 = sub_1BFAAF688();
  v33[19] = OUTLINED_FUNCTION_126_0(v39, qword_1EDCC8B70);

  v40 = sub_1BFAAF668();
  sub_1BFAAFB78();
  OUTLINED_FUNCTION_53_0();
  if (os_log_type_enabled(v40, v32))
  {
    v41 = v37[3];
    OUTLINED_FUNCTION_51_0();
    v42 = OUTLINED_FUNCTION_32();
    a20 = v42;
    *v34 = 136315138;
    v43 = v41[2];
    v44 = MEMORY[0x1E69E7CC0];
    if (v43)
    {
      a9 = v42;
      a10 = v34;
      HIDWORD(a11) = v32;
      a12 = v40;
      v45 = v37[17];
      v46 = v37[14];
      v47 = v37[11];
      v86 = v37;
      v48 = v37[3];
      a21 = MEMORY[0x1E69E7CC0];
      sub_1BFA2DC58(0, v43, 0);
      v44 = a21;
      v49 = *(v45 + 16);
      v45 += 16;
      v50 = *(v45 + 64);
      OUTLINED_FUNCTION_12_1();
      v52 = v48 + v51;
      a16 = *(v45 + 56);
      a17 = v53;
      a14 = (v47 + 8);
      a15 = (v46 + 8);
      a18 = v45;
      a13 = (v45 - 8);
      do
      {
        v54 = v86[15];
        v55 = v86[12];
        v56 = v86[13];
        v57 = v86[10];
        a17(v86[18], v52, v86[16]);
        sub_1BFAAEB48();
        sub_1BFAAEAF8();
        (*a15)(v54, v56);
        v41 = v55;
        v58 = sub_1BFAAEAD8();
        v60 = v59;
        (*a14)(v55, v57);
        v61 = *a13;
        v62 = OUTLINED_FUNCTION_120_0();
        v63(v62);
        a21 = v44;
        v65 = *(v44 + 16);
        v64 = *(v44 + 24);
        v38 = v65 + 1;
        if (v65 >= v64 >> 1)
        {
          v67 = OUTLINED_FUNCTION_114_0(v64);
          v41 = &a21;
          sub_1BFA2DC58(v67, v65 + 1, 1);
          v44 = a21;
        }

        *(v44 + 16) = v38;
        v66 = v44 + 16 * v65;
        *(v66 + 32) = v58;
        *(v66 + 40) = v60;
        v52 += a16;
        --v43;
      }

      while (v43);
      v37 = v86;
      v40 = a12;
      LOBYTE(v32) = BYTE4(a11);
      v34 = a10;
    }

    MEMORY[0x1BFB60C30](v44, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_192();
    sub_1BF9F88A8(v41, v38, &a20);
    OUTLINED_FUNCTION_125_0();

    *(v34 + 4) = v41;
    _os_log_impl(&dword_1BF9F6000, v40, v32, "[getSuggestionsForIntents] Fetching suggestions for: %s", v34, 0xCu);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  v68 = v37[9];
  v69 = v37[6];
  v70 = v37[7];
  v71 = v37[3];
  sub_1BFA17B2C(v37[4], v68, &qword_1EBDFBD48, &qword_1BFAB49C0);
  v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v73 = swift_allocObject();
  v37[20] = v73;
  *(v73 + 16) = v69;
  *(v73 + 24) = v71;
  sub_1BFA17BBC(v68, v73 + v72, &qword_1EBDFBD48, &qword_1BFAB49C0);
  v74 = *(MEMORY[0x1E69D3548] + 4);

  v75 = swift_task_alloc();
  v37[21] = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB910, &unk_1BFAB1CE0);
  *v75 = v37;
  v75[1] = sub_1BFA728A4;
  v76 = v37[5];
  OUTLINED_FUNCTION_170();

  return MEMORY[0x1EEE40F70](v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1BFA728A4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (!v0)
  {
    v9 = *(v3 + 160);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA729A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, NSObject *a13, uint64_t a14, uint64_t *a15, void (**a16)(uint64_t *, uint64_t), NSObject *a17, uint64_t a18, void (*a19)(uint64_t, uint64_t, uint64_t), uint64_t a20, void *a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_226();
  a33 = v35;
  a34 = v36;
  OUTLINED_FUNCTION_177();
  a32 = v34;
  v37 = v34[19];
  v39 = v34[2];
  v38 = v34[3];

  v40 = sub_1BFAAF668();
  v41 = sub_1BFAAFB78();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = v34[3];
    v43 = OUTLINED_FUNCTION_185();
    v44 = swift_slowAlloc();
    a22 = v44;
    *v43 = 134218242;
    *(v43 + 4) = *(v39 + 16);

    *(v43 + 12) = 2080;
    v45 = v42[2];
    v46 = MEMORY[0x1E69E7CC0];
    if (v45)
    {
      a10 = v44;
      a11 = v43;
      HIDWORD(a12) = v41;
      a13 = v40;
      a14 = v39;
      OUTLINED_FUNCTION_205();
      a23 = v47;
      sub_1BFA2DC58(0, v45, 0);
      v49 = *(v41 + 16);
      v48 = v41 + 16;
      v50 = *(v48 + 64);
      OUTLINED_FUNCTION_12_1();
      v52 = v39 + v51;
      a18 = *(v48 + 56);
      a19 = v53;
      a16 = (v38 + 8);
      a17 = v40 + 1;
      a20 = v48;
      a21 = v34;
      a15 = (v48 - 8);
      do
      {
        v54 = v34[18];
        v56 = v34[15];
        v55 = v34[16];
        v57 = v34[12];
        v58 = v34[13];
        v59 = v34[10];
        v60 = v46;
        a19(v54, v52, v55);
        sub_1BFAAEB48();
        sub_1BFAAEAF8();
        (a17->isa)(v56, v58);
        v42 = v57;
        v61 = sub_1BFAAEAD8();
        v63 = v62;
        (*a16)(v57, v59);
        v64 = *a15;
        v65 = OUTLINED_FUNCTION_60_1();
        v66(v65);
        v46 = v60;
        a23 = v60;
        v68 = *(v60 + 16);
        v67 = *(v60 + 24);
        v38 = v68 + 1;
        if (v68 >= v67 >> 1)
        {
          v70 = OUTLINED_FUNCTION_114_0(v67);
          v42 = &a23;
          sub_1BFA2DC58(v70, v68 + 1, 1);
          v46 = a23;
        }

        *(v46 + 16) = v38;
        v69 = v46 + 16 * v68;
        *(v69 + 32) = v61;
        *(v69 + 40) = v63;
        v52 += a18;
        --v45;
        v34 = a21;
      }

      while (v45);
      v40 = a13;
      LOBYTE(v41) = BYTE4(a12);
      v44 = a10;
      v43 = a11;
    }

    MEMORY[0x1BFB60C30](v46, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_192();
    sub_1BF9F88A8(v42, v38, &a22);
    OUTLINED_FUNCTION_125_0();

    *(v43 + 14) = v42;
    _os_log_impl(&dword_1BF9F6000, v40, v41, "[getSuggestionsForIntent] Returning %ld suggestions for %s", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_2Tm(v44);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_231();

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_172();

  return v73(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1BFA72CA0()
{
  OUTLINED_FUNCTION_177();
  v61 = v0;
  v3 = v0[19];
  v2 = v0[20];

  v4 = sub_1BFAAF668();
  sub_1BFAAFB78();
  v5 = OUTLINED_FUNCTION_72_2();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[22];
  if (v7)
  {
    v9 = v0[5];
    v10 = OUTLINED_FUNCTION_51_0();
    *v10 = 134217984;
    *(v10 + 4) = v9;
    OUTLINED_FUNCTION_39_3();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  v16 = v0[19];
  v17 = v0[3];

  v18 = MEMORY[0x1E69E7CC0];

  v19 = sub_1BFAAF668();
  v20 = sub_1BFAAFB78();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[3];
    OUTLINED_FUNCTION_185();
    v59 = OUTLINED_FUNCTION_81_1();
    *v1 = 134218242;
    *(v1 + 4) = *(v18 + 16);

    *(v1 + 12) = 2080;
    v22 = v21[2];
    if (v22)
    {
      v50 = v1;
      v51 = v20;
      v52 = v19;
      OUTLINED_FUNCTION_205();
      v60 = v18;
      sub_1BFA2DC58(0, v22, 0);
      v23 = v18;
      v25 = *(v1 + 16);
      v24 = v1 + 16;
      v26 = *(v24 + 64);
      OUTLINED_FUNCTION_12_1();
      v28 = v20 + v27;
      v56 = *(v24 + 56);
      v57 = v29;
      v54 = (v17 + 8);
      v55 = v19 + 1;
      v58 = v0;
      v53 = (v24 - 8);
      do
      {
        v30 = v0[18];
        v32 = v0[15];
        v31 = v0[16];
        v33 = v0[12];
        v34 = v0[13];
        v35 = v0[10];
        v57(v30, v28, v31);
        sub_1BFAAEB48();
        sub_1BFAAEAF8();
        (v55->isa)(v32, v34);
        v21 = v33;
        v36 = sub_1BFAAEAD8();
        v38 = v37;
        (*v54)(v33, v35);
        v39 = *v53;
        v40 = OUTLINED_FUNCTION_60_1();
        v41(v40);
        v60 = v23;
        v43 = *(v23 + 16);
        v42 = *(v23 + 24);
        v17 = v43 + 1;
        if (v43 >= v42 >> 1)
        {
          v45 = OUTLINED_FUNCTION_114_0(v42);
          v21 = &v60;
          sub_1BFA2DC58(v45, v43 + 1, 1);
          v23 = v60;
        }

        *(v23 + 16) = v17;
        v44 = v23 + 16 * v43;
        *(v44 + 32) = v36;
        *(v44 + 40) = v38;
        v28 += v56;
        --v22;
        v0 = v58;
      }

      while (v22);
      v46 = v23;
      v19 = v52;
      LOBYTE(v20) = v51;
      v1 = v50;
    }

    else
    {
      v46 = v18;
    }

    MEMORY[0x1BFB60C30](v46, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_192();
    sub_1BF9F88A8(v21, v17, &v59);
    OUTLINED_FUNCTION_125_0();

    *(v1 + 14) = v21;
    _os_log_impl(&dword_1BF9F6000, v19, v20, "[getSuggestionsForIntent] Returning %ld suggestions for %s", v1, 0x16u);
    OUTLINED_FUNCTION_179();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_231();

  OUTLINED_FUNCTION_24_0();
  v48 = MEMORY[0x1E69E7CC0];

  return v47(v48);
}

uint64_t sub_1BFA73028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD48, &qword_1BFAB49C0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_1BFAAEEF8();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = *(*(type metadata accessor for SiriSuggestions.SuggestionList() - 8) + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA73150, 0, 0);
}

uint64_t sub_1BFA73150()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_16_5(*(v1 + 24));
  v2 = *(*(*(v0 + 24) + 24) + 8);
  OUTLINED_FUNCTION_30();
  v10 = (v3 + *v3);
  v5 = *(v4 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v1 + 88) = v6;
  *v6 = v7;
  v6[1] = sub_1BFA73260;
  v8 = *(v1 + 80);
  OUTLINED_FUNCTION_200();

  return v10();
}

uint64_t sub_1BFA73260()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA73344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v11 = *(v10 + 56);
  sub_1BFA17B2C(*(v10 + 40), *(v10 + 48), &qword_1EBDFBD48, &qword_1BFAB49C0);
  v12 = OUTLINED_FUNCTION_83_2();
  v13 = *(v10 + 80);
  if (v12 == 1)
  {
    sub_1BF9FDD5C(*(v10 + 48), &qword_1EBDFBD48, &qword_1BFAB49C0);
    v14 = SiriSuggestions.SuggestionList.suggestions.getter();
    OUTLINED_FUNCTION_1_7();
    sub_1BFA755F8();
  }

  else
  {
    v16 = *(v10 + 64);
    v15 = *(v10 + 72);
    v17 = *(v10 + 48);
    v18 = *(v10 + 56);
    v19 = *(v16 + 32);
    v20 = OUTLINED_FUNCTION_211();
    v21(v20);
    v22 = SiriSuggestions.SuggestionList.suggestions.getter();
    v23 = swift_task_alloc();
    *(v23 + 16) = v15;
    v14 = sub_1BFA2C3EC(sub_1BFA7677C, v23, v22);

    OUTLINED_FUNCTION_1_7();
    sub_1BFA755F8();
    v24 = *(v16 + 8);
    v25 = OUTLINED_FUNCTION_67();
    v26(v25);
  }

  v28 = *(v10 + 72);
  v27 = *(v10 + 80);
  v29 = *(v10 + 48);
  **(v10 + 16) = v14;

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_138();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t SiriSuggestionsFacade.getConversationStarters(requestId:deviceState:)()
{
  OUTLINED_FUNCTION_40();
  v0[17] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  OUTLINED_FUNCTION_60_0(v2);
  v4 = *(v3 + 64);
  v0[18] = OUTLINED_FUNCTION_100();
  v5 = sub_1BFAAE3F8();
  v0[19] = v5;
  OUTLINED_FUNCTION_15(v5);
  v0[20] = v6;
  v8 = *(v7 + 64);
  v0[21] = OUTLINED_FUNCTION_109();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t SiriSuggestionsFacade.getConversationContinuers(requestId:deviceState:)()
{
  OUTLINED_FUNCTION_40();
  v0[17] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  OUTLINED_FUNCTION_60_0(v2);
  v4 = *(v3 + 64);
  v0[18] = OUTLINED_FUNCTION_100();
  v5 = sub_1BFAAE3F8();
  v0[19] = v5;
  OUTLINED_FUNCTION_15(v5);
  v0[20] = v6;
  v8 = *(v7 + 64);
  v0[21] = OUTLINED_FUNCTION_109();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t SiriSuggestionsFacade.logShown(for:deliveryVehicle:generationId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA739B0()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_16_5(*(v1 + 40));
  v2 = *(OUTLINED_FUNCTION_39(*(v0 + 16)) + 56);
  OUTLINED_FUNCTION_30();
  v10 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v1 + 48) = v6;
  *v6 = v1;
  v6[1] = sub_1BFA4C9C8;
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  OUTLINED_FUNCTION_53(*(v1 + 16));
  OUTLINED_FUNCTION_216();

  return v10();
}

uint64_t SiriSuggestionsFacade.getNextSuggestions(requestId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA73ADC()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_16_5(*(v1 + 40));
  v2 = *(OUTLINED_FUNCTION_144(*(v0 + 24)) + 8);
  OUTLINED_FUNCTION_30();
  v12 = (v3 + *v3);
  v5 = *(v4 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v1 + 48) = v6;
  *v6 = v7;
  v6[1] = sub_1BFA4C9C8;
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 16);
  OUTLINED_FUNCTION_216();

  return v12();
}

uint64_t SiriSuggestionsFacade.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA73C0C()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_16_5(*(v2 + 56));
  v3 = *(OUTLINED_FUNCTION_144(*(v1 + 24)) + 16);
  OUTLINED_FUNCTION_30();
  v15 = (v4 + *v4);
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v2 + 64) = v7;
  *v7 = v8;
  v7[1] = sub_1BFA5071C;
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);
  v13 = *(v2 + 16);

  return v15(v13, v11, v12, v9, v10, v0, v1);
}

uint64_t SiriSuggestionsFacade.submitAsync(for:propertyKey:propertyValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = v4;
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 72) = *a1;
  *(v5 + 33) = *(a1 + 16);
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA73D50()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 33);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = v4[5];
  v6 = v4[6];
  OUTLINED_FUNCTION_16_1(v4 + 2);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v7 = *(*(v6 + 16) + 8);
  v8 = *(v7 + 32);
  OUTLINED_FUNCTION_30();
  v17 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = sub_1BFA73EA0;
  v13 = *(v0 + 48);
  v14 = *(v0 + 56);
  v15 = *(v0 + 40);

  return v17(v0 + 16, v15, v13, v14, v5, v7);
}

uint64_t sub_1BFA73EA0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_85();

    return v12();
  }
}

uint64_t SiriSuggestionsFacade.submitAsync(for:propertyKey:propertyValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA73FD0()
{
  OUTLINED_FUNCTION_72();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = v1[5];
  v4 = v1[6];
  OUTLINED_FUNCTION_16_1(v1 + 2);
  v5 = *(v2 + 40);
  v20 = *(v2 + 24);
  v6 = *(v2 + 24);
  v7 = OUTLINED_FUNCTION_120_0();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  *(v0 + 40) = v20;
  *(v0 + 56) = v5;
  __swift_allocate_boxed_opaque_existential_1Tm_0((v0 + 16));
  OUTLINED_FUNCTION_54(v6);
  (*(v9 + 16))();
  v10 = *(OUTLINED_FUNCTION_39(*(v4 + 16)) + 24);
  OUTLINED_FUNCTION_30();
  v21 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  v14[1] = sub_1BFA108C4;
  v15 = *(v0 + 80);
  v16 = *(v0 + 88);
  v17 = *(v0 + 72);
  v18 = OUTLINED_FUNCTION_53(*(v0 + 64));

  return v21(v18);
}

uint64_t sub_1BFA74174()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_16_5(*(v1 + 16));
  v2 = *(OUTLINED_FUNCTION_144(*(v0 + 24)) + 24);
  OUTLINED_FUNCTION_30();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_45(v6);
  v7 = OUTLINED_FUNCTION_46();

  return v9(v7);
}

uint64_t sub_1BFA7427C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF9FDF08;

  return SiriSuggestionsFacade.getNextSuggestions(requestId:)(a1, a2, a3);
}

uint64_t sub_1BFA74330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1BF9FDF08;

  return SiriSuggestionsFacade.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1BFA743FC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return SiriSuggestionsFacade.refreshService()();
}

uint64_t sub_1BFA7448C()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_41(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_45(v3);
  OUTLINED_FUNCTION_112();

  return SiriSuggestionsFacade.submitAsync(for:propertyKey:propertyValue:)(v5, v6, v7, v8);
}

uint64_t sub_1BFA74538()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return SiriSuggestionsFacade.flush(for:)();
}

uint64_t sub_1BFA745E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF9FDF08;

  return SiriSuggestionsFacade.logShown(for:deliveryVehicle:generationId:)(a1, a2, a3);
}

uint64_t sub_1BFA74690()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return SiriSuggestionsFacade.warmup()();
}

uint64_t sub_1BFA74720()
{
  OUTLINED_FUNCTION_43();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_41(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_45(v3);
  v5 = OUTLINED_FUNCTION_60_1();

  return SiriSuggestionsFacade.submitEngagement(for:with:)(v5, v6);
}

uint64_t SuggestionErrors.hashValue.getter()
{
  v1 = *v0;
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](v1);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA7484C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD70, &qword_1BFAB4A08);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v11 - v4;
  v6 = type metadata accessor for InAppSuggestions(0);
  __swift_allocate_value_buffer(v6, qword_1EBDFBD30);
  v7 = __swift_project_value_buffer(v6, qword_1EBDFBD30);
  type metadata accessor for SiriSuggestions.SuggestionList();
  sub_1BFAAFB18();
  result = (*(v1 + 32))(v7, v5, v0);
  v9 = (v7 + *(v6 + 20));
  *v9 = nullsub_1;
  v9[1] = 0;
  v10 = (v7 + *(v6 + 24));
  *v10 = &unk_1BFAB5048;
  v10[1] = 0;
  return result;
}

uint64_t sub_1BFA749C4()
{
  OUTLINED_FUNCTION_43();
  sub_1BFA770B4();
  swift_allocError();
  *v0 = 2;
  swift_willThrow();
  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t InAppSuggestions.suggestionsStream.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD70, &qword_1BFAB4A08);
  OUTLINED_FUNCTION_0(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_96();

  return v4(v3);
}

uint64_t sub_1BFA74B34(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_54_3(*(v1 + 20));

  return OUTLINED_FUNCTION_96();
}

uint64_t sub_1BFA74BDC(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_54_3(*(v1 + 24));

  return OUTLINED_FUNCTION_96();
}

uint64_t AssistantEngineSuggestions.renderedCallback.getter()
{
  v0 = type metadata accessor for AssistantEngineSuggestions(0);
  OUTLINED_FUNCTION_54_3(*(v0 + 28));

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriAutoCompleteSuggestion.displayText.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriAutoCompleteSuggestion.invocationText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriAutoCompleteSuggestion.iconInfo.getter()
{
  v0 = *(OUTLINED_FUNCTION_195() + 24);
  v1 = sub_1BFAAF138();
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_107_0();

  return v5(v4);
}

uint64_t SiriAutoCompleteSuggestion.uuidIdentifier.getter()
{
  v0 = *(OUTLINED_FUNCTION_195() + 28);
  v1 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_107_0();

  return v5(v4);
}

uint64_t SiriAutoCompleteSuggestion.appBundleId.getter()
{
  v0 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  OUTLINED_FUNCTION_54_3(*(v0 + 32));

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriAutoCompleteSuggestion.loggingIdentifier.getter()
{
  v0 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  OUTLINED_FUNCTION_54_3(*(v0 + 36));

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriAutoCompleteSuggestion.source.getter()
{
  v0 = *(OUTLINED_FUNCTION_195() + 40);
  v1 = sub_1BFAAF398();
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_107_0();

  return v5(v4);
}

uint64_t SiriAutoCompleteSuggestion.zkwGenerationId.getter()
{
  v0 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  OUTLINED_FUNCTION_54_3(*(v0 + 48));

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriAutoCompleteSuggestion.suggestionType.getter()
{
  v0 = *(OUTLINED_FUNCTION_195() + 52);
  v1 = sub_1BFAAEB28();
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_107_0();

  return v5(v4);
}

uint64_t SiriAutoCompleteSuggestionList.tappedCallback.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriAutoCompleteSuggestionList.exposureCallback.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_96();
}

id HintsSuggestionsUI.snippet.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *HintsSuggestionsUI.aceView.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t SuggestionExecutionContextData.dialogPhase.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_96();
}

uint64_t SuggestionExecutionContextData.patternId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_96();
}

void sub_1BFA75028(void *a1, void *a2, uint64_t a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1BFA7507C()
{
  OUTLINED_FUNCTION_66();
  v1 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_15(v1);
  v4 = *(v3 + 64) + ((*(v2 + 80) + 80) & ~*(v2 + 80));
  OUTLINED_FUNCTION_167();
  v5 &= 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = v0[3];
  v30 = v0[2];
  v8 = v0[9];
  v10 = *(v0 + v9);
  v11 = *(v0 + v6);
  v13 = *(v0 + v5);
  v12 = *(v0 + v5 + 8);
  v14 = *(v0 + v7);
  v15 = *(v0 + v7 + 8);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_77(v16);
  *v17 = v18;
  v17[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_61();

  return sub_1BFA61F80(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_1BFA751D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1BFAAFD18();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1BFA75220()
{
  v1 = sub_1BFAAED58();
  OUTLINED_FUNCTION_15(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_15(v6);
  v9 = *(v0 + ((*(v8 + 64) + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = OUTLINED_FUNCTION_60_1();

  return sub_1BFA66620(v10, v11, v12, v13, v14);
}

uint64_t sub_1BFA7531C()
{
  OUTLINED_FUNCTION_43();
  v1 = sub_1BFAAED58();
  OUTLINED_FUNCTION_60_0(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41(v5);
  *v6 = v7;
  v6[1] = sub_1BF9FDF08;

  return sub_1BFA67528(v4, v0 + v3);
}

uint64_t sub_1BFA75428(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_184();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_96();
  v9(v8);
  return a2;
}

uint64_t sub_1BFA7547C()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for InAppSuggestions(v0);
  OUTLINED_FUNCTION_15(v1);
  v4 = ((*(v2 + 80) + 16) & ~*(v2 + 80)) + *(v3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD48, &qword_1BFAB49C0);
  OUTLINED_FUNCTION_15(v5);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_1BFAAED58();
  OUTLINED_FUNCTION_60_0(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_77(v13);
  *v14 = v15;
  v14[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_112();

  return sub_1BFA6913C(v16, v17, v18, v19);
}

uint64_t sub_1BFA755F8()
{
  v1 = OUTLINED_FUNCTION_101_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1BFA75648(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_184();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_96();
  v9(v8);
  return a2;
}

uint64_t sub_1BFA7569C()
{
  v1 = type metadata accessor for InAppSuggestions(0);
  OUTLINED_FUNCTION_15(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_15(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v11);
  v13 = v0 + ((v8 + v10 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_1BFA69F18(v0 + v3, v0 + v8, v13);
}

uint64_t sub_1BFA757D0()
{
  OUTLINED_FUNCTION_101_0();
  v0 = type metadata accessor for SiriSuggestions.SuggestionList();
  OUTLINED_FUNCTION_15(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  v7 = OUTLINED_FUNCTION_128_0(v5);

  return sub_1BFA6B4BC(v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_34Tm()
{
  v4 = type metadata accessor for SiriSuggestions.SuggestionList();
  OUTLINED_FUNCTION_60(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);

  OUTLINED_FUNCTION_159();
  v10 = OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_1(v10);
  (*(v11 + 8))(v3 + v2);
  v12 = OUTLINED_FUNCTION_235();
  if (!OUTLINED_FUNCTION_100_0(v12))
  {
    OUTLINED_FUNCTION_54(v0);
    v14 = *(v13 + 8);
    v15 = OUTLINED_FUNCTION_207();
    v16(v15);
  }

  v17 = *(v1 + ((v8 + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  v18 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v18, v19, v20);
}

uint64_t sub_1BFA75964()
{
  OUTLINED_FUNCTION_101_0();
  v0 = type metadata accessor for SiriSuggestions.SuggestionList();
  OUTLINED_FUNCTION_15(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  v7 = OUTLINED_FUNCTION_128_0(v5);

  return sub_1BFA6D480(v7, v8, v9, v10, v11);
}

uint64_t sub_1BFA75A2C()
{
  OUTLINED_FUNCTION_101_0();
  v0 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_183();

  return sub_1BFA70DDC(v3, v4, v5);
}

uint64_t objectdestroy_18Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_2_3(v2);
  v4 = v3;
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);

  (*(v4 + 8))(v1 + v5, v2);
  v9 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1BFA75B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_101_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_60_0(v5);
  v7 = *(v6 + 80);
  v8 = OUTLINED_FUNCTION_183();

  return a3(v8);
}

uint64_t sub_1BFA75BE4()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD48, &qword_1BFAB49C0);
  OUTLINED_FUNCTION_60_0(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_112();

  return sub_1BFA73028(v9, v10, v11, v12);
}

unint64_t sub_1BFA75CC8()
{
  result = qword_1EBDFBD80;
  if (!qword_1EBDFBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBD80);
  }

  return result;
}

unint64_t sub_1BFA75D20()
{
  result = qword_1EBDFBD88;
  if (!qword_1EBDFBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBD88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypingSessionEndReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BFA75E58()
{
  result = sub_1BFAAEAC8();
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

_BYTE *storeEnumTagSinglePayload for SuggestionErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1BFA76024()
{
  sub_1BFA760A8();
  if (v0 <= 0x3F)
  {
    sub_1BFA76124();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BFA760A8()
{
  if (!qword_1EDCC6FC8)
  {
    type metadata accessor for SiriSuggestions.SuggestionList();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
    v0 = sub_1BFAAFB28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCC6FC8);
    }
  }
}

unint64_t sub_1BFA76124()
{
  result = qword_1EDCC6FB8;
  if (!qword_1EDCC6FB8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDCC6FB8);
  }

  return result;
}

unint64_t sub_1BFA761BC()
{
  result = type metadata accessor for SiriSuggestions.Suggestion(319);
  if (v1 <= 0x3F)
  {
    result = sub_1BFA76124();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_92Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_101_0();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_18(v8);
  if (*(v10 + 84) != a2)
  {
    return OUTLINED_FUNCTION_84_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v9);
}

uint64_t __swift_store_extra_inhabitant_index_93Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_184();
  v10 = v9(v8);
  result = OUTLINED_FUNCTION_18(v10);
  if (*(v12 + 84) == a3)
  {
    v13 = OUTLINED_FUNCTION_210();

    return __swift_storeEnumTagSinglePayload(v13, a2, a2, v14);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1BFA763A4()
{
  result = type metadata accessor for SiriSuggestions.SuggestionList();
  if (v1 <= 0x3F)
  {
    result = sub_1BFA76124();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BFA76458()
{
  v0 = sub_1BFAAF138();
  if (v1 <= 0x3F)
  {
    v0 = sub_1BFAAE3F8();
    if (v2 <= 0x3F)
    {
      sub_1BFA20EF4();
      v0 = v3;
      if (v4 <= 0x3F)
      {
        v5 = sub_1BFAAF398();
        if (v6 > 0x3F)
        {
          return v5;
        }

        sub_1BFA76574();
        if (v7 > 0x3F)
        {
          return v5;
        }

        else
        {
          v0 = sub_1BFAAEB28();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

void sub_1BFA76574()
{
  if (!qword_1EDCC84F0)
  {
    sub_1BFAAF758();
    v0 = sub_1BFAAFBA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCC84F0);
    }
  }
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

uint64_t sub_1BFA765E0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BFA76620(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BFA7668C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BFA766CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_1BFA76720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1BFA7679C()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_101_0();
  v2 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_15(v2);
  v5 = *(v4 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80));
  OUTLINED_FUNCTION_122_0();
  v7 = *(v0 + v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_138();

  return sub_1BFA718F0(v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1BFA76894()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v1 = OUTLINED_FUNCTION_55_3();
  v2 = type metadata accessor for SiriAutoCompleteSuggestion(v1);
  OUTLINED_FUNCTION_15(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v0[2];
  v11 = v0[3];
  v12 = v0[4];
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_77(v13);
  *v14 = v15;
  v14[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_138();

  return sub_1BFA71070(v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1BFA769BC()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_101_0();
  v2 = type metadata accessor for SiriSuggestions.SuggestionList();
  OUTLINED_FUNCTION_15(v2);
  v5 = *(v4 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80));
  OUTLINED_FUNCTION_122_0();
  v7 = *(v0 + v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1BF9FDE28;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_138();

  return sub_1BFA6EC8C(v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1BFA76AB4()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for SiriSuggestions.SuggestionList();
  OUTLINED_FUNCTION_15(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_15(v6);
  v9 = *(v8 + 64) + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80));
  OUTLINED_FUNCTION_122_0();
  v11 = (v0 + v10);
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_77(v14);
  *v15 = v16;
  v15[1] = sub_1BF9FDE28;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_25_1();

  return sub_1BFA6D730(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1BFA76C04()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for SiriSuggestions.SuggestionList();
  OUTLINED_FUNCTION_15(v1);
  v4 = *(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80));
  OUTLINED_FUNCTION_167();
  v5 &= 0xFFFFFFFFFFFFFFF8;
  v6 = v0[2];
  v7 = v0[3];
  v9 = *(v0 + v8);
  v10 = v0[4];
  v11 = *(v0 + v5);
  v12 = *(v0 + v5 + 8);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_77(v13);
  *v14 = v15;
  v14[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_25_1();

  return sub_1BFA6B6B8(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1BFA76D14()
{
  OUTLINED_FUNCTION_58();
  v1 = OUTLINED_FUNCTION_55_3();
  v2 = type metadata accessor for SiriSuggestions.Suggestion(v1);
  OUTLINED_FUNCTION_15(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1BFAAED58();
  OUTLINED_FUNCTION_15(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v12);
  v14 = (v9 + v11 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = v0[2];
  v16 = v0[3];
  v17 = v0[4];
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_77(v18);
  *v19 = v20;
  v19[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();

  return sub_1BFA66E2C(v21, v22, v23, v17, v24, v25, v26);
}

uint64_t sub_1BFA76EA0()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_55_3();
  v1 = sub_1BFAAED58();
  OUTLINED_FUNCTION_15(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  OUTLINED_FUNCTION_15(v5);
  v8 = (*(v7 + 64) + ((v4 + *(v6 + 80) + 8) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v9);
  v11 = (v8 + *(v10 + 80) + 40) & ~*(v10 + 80);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = *(v0 + v4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_77(v15);
  *v16 = v17;
  v16[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_25_1();

  return sub_1BFA652FC(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1BFA77044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BFA770B4()
{
  result = qword_1EBDFBDB0;
  if (!qword_1EBDFBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBDB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_5()
{
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v8 = v0[61];
  v7 = v0[62];
  v9 = v0[59];
  v11 = v0[56];
  v12 = v0[55];
  v13 = v0[54];
  v14 = v0[52];

  return sub_1BFAAF258();
}

uint64_t OUTLINED_FUNCTION_44_3()
{
  v2 = v0[47];
  result = v0[48];
  v3 = v0[46];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[39];
  v7 = v0[36];
  v8 = v0[37];
  v10 = v0[32];
  v9 = v0[33];
  v11 = v0[30];
  v12 = v0[31];
  return result;
}

uint64_t OUTLINED_FUNCTION_52_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __clz(v2) | (a2 << 6);
  v6 = (*(a1 + 48) + 16 * v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(a1 + 56) + 48 * v5;

  return sub_1BFA27F7C(v9, v3 + 32);
}

void OUTLINED_FUNCTION_53_4()
{
  v1 = (*(v0 + 288) + *(*(v0 + 256) + 24));
  v2 = v1[1];
  v3 = *v1 + **v1;
}

uint64_t OUTLINED_FUNCTION_54_3@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  return v2[1];
}

uint64_t OUTLINED_FUNCTION_63_3()
{
  *(v2 + 80) = v0;
  *(v2 + 88) = v1;
  sub_1BFA17D30((v2 + 32), (v2 + 96));
  v4 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
}

uint64_t OUTLINED_FUNCTION_67_3(uint64_t a1)
{
  *(a1 + 8) = sub_1BFA65C38;
  v2 = v1[22];
  result = v1[19];
  v4 = v1[20];
  return result;
}

void OUTLINED_FUNCTION_74_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_81_1()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_82_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_83_2()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_100_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_103_0()
{
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[61];
  v8 = v0[62];
  v9 = v0[59];
  v11 = v0[56];
  v12 = v0[55];
  v13 = v0[54];
  v14 = v0[52];

  return sub_1BFAAF258();
}

uint64_t OUTLINED_FUNCTION_104_0()
{
  v2 = (*(v0 + 32) + *(*(v0 + 56) + 20));
  v3 = *v2;
  v4 = v2[1];

  return sub_1BFAAF968();
}

uint64_t OUTLINED_FUNCTION_105_0()
{

  return sub_1BFA755F8();
}

uint64_t OUTLINED_FUNCTION_106_0()
{
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[22];
  v8 = v0[18];
  v7 = v0[19];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[14];
  v13 = v0[11];
  v14 = v0[9];
}

uint64_t OUTLINED_FUNCTION_109_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_113_0(uint64_t a1)
{
  v3 = *(v1 + 368);
  v4 = *(a1 + 32);
  *(v1 + 696) = v4;
  v5 = -1;
  if (-(-1 << v4) < 64)
  {
    v5 = ~(-1 << -(-1 << v4));
  }

  v6 = v5 & *(a1 + 64);
}

uint64_t OUTLINED_FUNCTION_115_0(float a1)
{
  *v1 = a1;
  v5 = (v2 + *(v3 + 20));
  v6 = *v5;
  v7 = v5[1];
}

uint64_t OUTLINED_FUNCTION_118_0()
{

  return sub_1BFAAF248();
}

void OUTLINED_FUNCTION_122_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_128_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v3 + 16);
  v5 = (v3 + ((v1 + a1 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  return v2;
}

uint64_t OUTLINED_FUNCTION_135_0()
{
  v3 = v0[29];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[18];
  v8 = v0[17];
}

BOOL OUTLINED_FUNCTION_136_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_137()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_149()
{
  v2 = v0[34];
  result = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[20];
  v11 = v0[21];
  v13 = v0[18];
  v12 = v0[19];
  return result;
}

void OUTLINED_FUNCTION_153(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_154()
{
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[57];
  v5 = v0[45];

  return sub_1BFAAF688();
}

uint64_t OUTLINED_FUNCTION_155()
{
  v2 = v0[63];
  v3 = v0[57];
  v4 = v0[58];
  v5 = v0[45];

  return sub_1BFAAF688();
}

uint64_t OUTLINED_FUNCTION_157(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1BF9F88A8(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_159()
{
  v3 = *(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_160()
{
  __swift_destroy_boxed_opaque_existential_2Tm(v1);
  v2 = *(v0 + 32);

  return sub_1BFAAE3F8();
}

void OUTLINED_FUNCTION_166()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[8];
}

uint64_t OUTLINED_FUNCTION_169@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  a6 = v8;
  a7 = a2;
  a3 = a1;

  return SiriSuggestionsFacade.__allocating_init(clientProvider:flagProvider:)(&a8, &a3);
}

uint64_t OUTLINED_FUNCTION_185()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_186()
{

  return sub_1BFAAFEE8();
}

char *OUTLINED_FUNCTION_187()
{

  return sub_1BFA2DC58(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_destroy_boxed_opaque_existential_2Tm((v10 + 56));
  *v11 = a10;
  sub_1BF9FA474((v10 + 96), (v11 + 1));

  return type metadata accessor for SiriSuggestions.SuggestionList();
}

BOOL OUTLINED_FUNCTION_189(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_190()
{

  return sub_1BFAAF248();
}

uint64_t OUTLINED_FUNCTION_191()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);

  return sub_1BFAAF688();
}

uint64_t OUTLINED_FUNCTION_192()
{
}

uint64_t OUTLINED_FUNCTION_193()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_194()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_195()
{

  return type metadata accessor for SiriAutoCompleteSuggestion(0);
}

void OUTLINED_FUNCTION_205()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[3];
}

uint64_t OUTLINED_FUNCTION_227()
{

  return sub_1BFA17B2C(v2, v0 + v4, v1, v3);
}

uint64_t OUTLINED_FUNCTION_228()
{

  return sub_1BFAAF248();
}

void *OUTLINED_FUNCTION_229()
{
  v2 = *(v0 + 16);
  v3 = v2[12];
  v4 = v2[11];

  return __swift_project_boxed_opaque_existential_1(v2 + 8, v4);
}

uint64_t OUTLINED_FUNCTION_231()
{
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[9];
}

uint64_t OUTLINED_FUNCTION_234()
{
}

uint64_t OUTLINED_FUNCTION_235()
{
  v2 = *(v0 + 40);

  return sub_1BFAAED08();
}

uint64_t OUTLINED_FUNCTION_237@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t PresentationContext.init(displayAllSuggestions:invocationType:requestId:dialogContextId:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v12 = type metadata accessor for PresentationContext();
  v13 = v12[6];
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  *a6 = a1;
  v18 = v12[5];
  v19 = sub_1BFAAEEA8();
  OUTLINED_FUNCTION_0(v19);
  (*(v20 + 32))(&a6[v18], a2);
  result = sub_1BFA77044(a3, &a6[v13]);
  v22 = &a6[v12[7]];
  *v22 = a4;
  v22[1] = a5;
  a6[v12[8]] = 0;
  return result;
}

uint64_t type metadata accessor for PresentationContext()
{
  result = qword_1EDCC75D8;
  if (!qword_1EDCC75D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PresentationContext.invocationType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PresentationContext() + 20);
  v4 = sub_1BFAAEEA8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t PresentationContext.requestId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PresentationContext() + 24);

  return sub_1BFA77EC0(v3, a1);
}

uint64_t sub_1BFA77EC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PresentationContext.requestId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PresentationContext() + 24);

  return sub_1BFA77044(a1, v3);
}

uint64_t PresentationContext.dialogContextId.getter()
{
  v1 = (v0 + *(type metadata accessor for PresentationContext() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PresentationContext.invokedBefore.setter(char a1)
{
  result = type metadata accessor for PresentationContext();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t PresentationContext.init(from:requestId:invokedBefore:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v8 = *a1;
  v9 = type metadata accessor for PresentationContext();
  v10 = v9[5];
  v11 = sub_1BFAAEEA8();
  OUTLINED_FUNCTION_0(v11);
  (*(v12 + 16))(&a4[v10], &a1[v10]);
  v13 = &a1[v9[7]];
  v15 = *v13;
  v14 = v13[1];

  sub_1BFA7825C(a1);
  v16 = v9[6];
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  *a4 = v8;
  result = sub_1BFA77044(a2, &a4[v16]);
  v22 = &a4[v9[7]];
  *v22 = v15;
  v22[1] = v14;
  a4[v9[8]] = a3;
  return result;
}

uint64_t PresentationContext.init(displayAllSuggestions:invocationType:requestId:dialogContextId:invokedBefore:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, _BYTE *a7@<X8>)
{
  v14 = type metadata accessor for PresentationContext();
  v15 = v14[6];
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  *a7 = a1;
  v20 = v14[5];
  v21 = sub_1BFAAEEA8();
  OUTLINED_FUNCTION_0(v21);
  (*(v22 + 32))(&a7[v20], a2);
  result = sub_1BFA77044(a3, &a7[v15]);
  v24 = &a7[v14[7]];
  *v24 = a4;
  v24[1] = a5;
  a7[v14[8]] = a6;
  return result;
}

uint64_t sub_1BFA7825C(uint64_t a1)
{
  v2 = type metadata accessor for PresentationContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PresentationContext.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1BFAAE3F8();
  v5 = OUTLINED_FUNCTION_2_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5, v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50) - 8) + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDB8, &qword_1BFAB5058);
  OUTLINED_FUNCTION_0(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v43 - v24;
  if (*a1 != *a2)
  {
    goto LABEL_12;
  }

  v26 = type metadata accessor for PresentationContext();
  v27 = v26[5];
  if ((sub_1BFAAEE98() & 1) == 0)
  {
    goto LABEL_12;
  }

  v28 = v26[6];
  v29 = *(v19 + 48);
  sub_1BFA77EC0(&a1[v28], v25);
  sub_1BFA77EC0(&a2[v28], &v25[v29]);
  OUTLINED_FUNCTION_24_2(v25);
  if (!v30)
  {
    sub_1BFA77EC0(v25, v18);
    OUTLINED_FUNCTION_24_2(&v25[v29]);
    if (!v30)
    {
      (*(v7 + 32))(v13, &v25[v29], v4);
      OUTLINED_FUNCTION_0_11();
      sub_1BFA79078(v33, v34);
      v35 = sub_1BFAAF848();
      v36 = *(v7 + 8);
      v36(v13, v4);
      v36(v18, v4);
      sub_1BF9FAB40(v25, &qword_1EBDFB570, &qword_1BFAB1F50);
      if ((v35 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    (*(v7 + 8))(v18, v4);
LABEL_11:
    sub_1BF9FAB40(v25, &qword_1EBDFBDB8, &qword_1BFAB5058);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_24_2(&v25[v29]);
  if (!v30)
  {
    goto LABEL_11;
  }

  sub_1BF9FAB40(v25, &qword_1EBDFB570, &qword_1BFAB1F50);
LABEL_15:
  v37 = v26[7];
  v38 = &a1[v37];
  v39 = *&a1[v37 + 8];
  v40 = &a2[v37];
  v41 = *(v40 + 1);
  if (v39)
  {
    if (v41)
    {
      v42 = *v38 == *v40 && v39 == v41;
      if (v42 || (sub_1BFAAFF08() & 1) != 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v41)
  {
LABEL_24:
    v31 = a1[v26[8]] ^ a2[v26[8]] ^ 1;
    return v31 & 1;
  }

LABEL_12:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1BFA785C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001BFAB97C0 == a2;
  if (v3 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x697461636F766E69 && a2 == 0xEE00657079546E6FLL;
    if (v6 || (sub_1BFAAFF08() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
      if (v7 || (sub_1BFAAFF08() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F43676F6C616964 && a2 == 0xEF6449747865746ELL;
        if (v8 || (sub_1BFAAFF08() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4264656B6F766E69 && a2 == 0xED000065726F6665)
        {

          return 4;
        }

        else
        {
          v10 = sub_1BFAAFF08();

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

unint64_t sub_1BFA78790(char a1)
{
  result = 0x697461636F766E69;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x4974736575716572;
      break;
    case 3:
      result = 0x6F43676F6C616964;
      break;
    case 4:
      result = 0x4264656B6F766E69;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1BFA78860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA785C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA78888@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA2D518();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA788B0(uint64_t a1)
{
  v2 = sub_1BFA78B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA788EC(uint64_t a1)
{
  v2 = sub_1BFA78B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PresentationContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDC8, &qword_1BFAB5060);
  OUTLINED_FUNCTION_2_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BFA78B70();
  sub_1BFAB0008();
  v15 = *v3;
  v28[15] = 0;
  OUTLINED_FUNCTION_7_7();
  sub_1BFAAFE88();
  if (!v2)
  {
    v16 = type metadata accessor for PresentationContext();
    v17 = v16[5];
    v28[14] = 1;
    sub_1BFAAEEA8();
    OUTLINED_FUNCTION_3_9();
    sub_1BFA79078(v18, v19);
    OUTLINED_FUNCTION_7_7();
    sub_1BFAAFEB8();
    v20 = v16[6];
    v28[13] = 2;
    sub_1BFAAE3F8();
    OUTLINED_FUNCTION_0_11();
    sub_1BFA79078(v21, v22);
    OUTLINED_FUNCTION_7_7();
    sub_1BFAAFE68();
    v23 = &v3[v16[7]];
    v24 = *v23;
    v25 = *(v23 + 1);
    v28[12] = 3;
    OUTLINED_FUNCTION_7_7();
    sub_1BFAAFE38();
    v26 = v3[v16[8]];
    v28[11] = 4;
    OUTLINED_FUNCTION_7_7();
    sub_1BFAAFE88();
  }

  return (*(v7 + 8))(v13, v5);
}

unint64_t sub_1BFA78B70()
{
  result = qword_1EBDFBDD0;
  if (!qword_1EBDFBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBDD0);
  }

  return result;
}

uint64_t PresentationContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50) - 8) + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v52 - v6;
  v57 = sub_1BFAAEEA8();
  v8 = OUTLINED_FUNCTION_2_3(v57);
  v55 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8, v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDE0, &qword_1BFAB5068);
  OUTLINED_FUNCTION_2_3(v56);
  v54 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v19, v20);
  v21 = type metadata accessor for PresentationContext();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  OUTLINED_FUNCTION_2();
  v28 = (v27 - v26);
  v59 = v29;
  v30 = *(v29 + 24);
  v31 = sub_1BFAAE3F8();
  v61 = v30;
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  v36 = a1[3];
  v35 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1BFA78B70();
  v37 = v58;
  sub_1BFAAFFF8();
  if (v37)
  {
    v38 = v61;
    __swift_destroy_boxed_opaque_existential_2Tm(v60);
    return sub_1BF9FAB40(&v28[v38], &qword_1EBDFB570, &qword_1BFAB1F50);
  }

  else
  {
    v66 = 0;
    OUTLINED_FUNCTION_8_7();
    *v28 = sub_1BFAAFDD8() & 1;
    v65 = 1;
    OUTLINED_FUNCTION_3_9();
    sub_1BFA79078(v39, v40);
    v41 = v57;
    OUTLINED_FUNCTION_8_7();
    sub_1BFAAFE08();
    v42 = v59;
    (*(v55 + 32))(&v28[*(v59 + 20)], v15, v41);
    v64 = 2;
    OUTLINED_FUNCTION_0_11();
    sub_1BFA79078(v43, v44);
    OUTLINED_FUNCTION_8_7();
    sub_1BFAAFDB8();
    sub_1BFA77044(v7, &v28[v61]);
    v63 = 3;
    OUTLINED_FUNCTION_8_7();
    v45 = sub_1BFAAFD88();
    v46 = &v28[*(v42 + 28)];
    *v46 = v45;
    v46[1] = v47;
    v62 = 4;
    OUTLINED_FUNCTION_8_7();
    v48 = sub_1BFAAFDD8();
    v49 = OUTLINED_FUNCTION_4_10();
    v50(v49);
    v28[*(v42 + 32)] = v48 & 1;
    sub_1BFA790C0(v28, v53);
    __swift_destroy_boxed_opaque_existential_2Tm(v60);
    return sub_1BFA7825C(v28);
  }
}

uint64_t sub_1BFA79078(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BFA790C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BFA79180()
{
  sub_1BFAAEEA8();
  if (v0 <= 0x3F)
  {
    sub_1BFA7922C();
    if (v1 <= 0x3F)
    {
      sub_1BFA20EF4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BFA7922C()
{
  if (!qword_1EDCC7798)
  {
    sub_1BFAAE3F8();
    v0 = sub_1BFAAFBA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCC7798);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PresentationContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BFA79364()
{
  result = qword_1EBDFBDF0;
  if (!qword_1EBDFBDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBDF0);
  }

  return result;
}

unint64_t sub_1BFA793BC()
{
  result = qword_1EBDFBDF8;
  if (!qword_1EBDFBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBDF8);
  }

  return result;
}

unint64_t sub_1BFA79414()
{
  result = qword_1EBDFBE00;
  if (!qword_1EBDFBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBE00);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_10()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 128);
  return result;
}

uint64_t sub_1BFA794C4(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v3 = sub_1BFAAE888();
  OUTLINED_FUNCTION_22();
  v70 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_2();
  v65 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8D8, &qword_1BFAB1A40);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v62[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB698, &qword_1BFAB1A50);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v62[-v26];
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v68 = &v62[-v30];
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v62[-v33];
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v38 = &v62[-v37];
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = &v62[-v40];
  v69 = v42;
  v67 = a1;
  if (a1)
  {
    sub_1BFAAF4F8();
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  OUTLINED_FUNCTION_6_11(v41, v43);
  sub_1BFAAE878();
  OUTLINED_FUNCTION_6_11(v38, 0);
  v66 = v11;
  v44 = *(v11 + 48);
  sub_1BFA7A474(v41, v19);
  sub_1BFA7A474(v38, &v19[v44]);
  OUTLINED_FUNCTION_2_11(v19);
  if (v46)
  {
    sub_1BFA20F44(v38, &qword_1EBDFB698, &qword_1BFAB1A50);
    sub_1BFA20F44(v41, &qword_1EBDFB698, &qword_1BFAB1A50);
    OUTLINED_FUNCTION_2_11(&v19[v44]);
    if (v46)
    {
      v45 = v19;
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  sub_1BFA7A474(v19, v34);
  OUTLINED_FUNCTION_2_11(&v19[v44]);
  if (v46)
  {
    sub_1BFA20F44(v38, &qword_1EBDFB698, &qword_1BFAB1A50);
    sub_1BFA20F44(v41, &qword_1EBDFB698, &qword_1BFAB1A50);
    (*(v70 + 8))(v34, v3);
LABEL_12:
    sub_1BFA20F44(v19, &qword_1EBDFB8D8, &qword_1BFAB1A40);
    goto LABEL_13;
  }

  v50 = v65;
  v64 = v16;
  v51 = v70;
  (*(v70 + 32))(v65, &v19[v44], v3);
  sub_1BFA7A4E4();
  v63 = sub_1BFAAF848();
  v52 = v51;
  v16 = v64;
  v53 = *(v52 + 8);
  v53(v50, v3);
  sub_1BFA20F44(v38, &qword_1EBDFB698, &qword_1BFAB1A50);
  sub_1BFA20F44(v41, &qword_1EBDFB698, &qword_1BFAB1A50);
  v53(v34, v3);
  sub_1BFA20F44(v19, &qword_1EBDFB698, &qword_1BFAB1A50);
  if (v63)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (v67)
  {
    v47 = v68;
    sub_1BFAAF4F8();
    v48 = 0;
  }

  else
  {
    v48 = 1;
    v47 = v68;
  }

  v49 = v69;
  OUTLINED_FUNCTION_6_11(v47, v48);
  sub_1BFAAE858();
  OUTLINED_FUNCTION_6_11(v27, 0);
  v54 = *(v66 + 48);
  sub_1BFA7A474(v47, v16);
  sub_1BFA7A474(v27, &v16[v54]);
  OUTLINED_FUNCTION_2_11(v16);
  if (v46)
  {
    OUTLINED_FUNCTION_5_7(v27);
    OUTLINED_FUNCTION_5_7(v47);
    OUTLINED_FUNCTION_2_11(&v16[v54]);
    if (!v46)
    {
      goto LABEL_28;
    }

    v45 = v16;
LABEL_23:
    sub_1BFA20F44(v45, &qword_1EBDFB698, &qword_1BFAB1A50);
LABEL_24:
    v55 = 1;
    goto LABEL_29;
  }

  sub_1BFA7A474(v16, v49);
  OUTLINED_FUNCTION_2_11(&v16[v54]);
  if (!v56)
  {
    v57 = v16;
    v64 = v16;
    v58 = v65;
    v59 = v70;
    (*(v70 + 32))(v65, &v57[v54], v3);
    sub_1BFA7A4E4();
    v55 = sub_1BFAAF848();
    v60 = *(v59 + 8);
    v60(v58, v3);
    sub_1BFA20F44(v27, &qword_1EBDFB698, &qword_1BFAB1A50);
    sub_1BFA20F44(v47, &qword_1EBDFB698, &qword_1BFAB1A50);
    v60(v49, v3);
    sub_1BFA20F44(v64, &qword_1EBDFB698, &qword_1BFAB1A50);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_5_7(v27);
  OUTLINED_FUNCTION_5_7(v47);
  (*(v70 + 8))(v49, v3);
LABEL_28:
  sub_1BFA20F44(v16, &qword_1EBDFB8D8, &qword_1BFAB1A40);
  v55 = 0;
LABEL_29:
  if (v71)
  {
    v55 |= sub_1BFAAE8A8();
  }

  return v55 & 1;
}

BOOL sub_1BFA79AF0(uint64_t a1, unint64_t a2)
{
  if (qword_1EBDFB500 != -1)
  {
    swift_once();
  }

  v4 = sub_1BFA7A0E8(a1, a2, qword_1EBDFBE08);
  if (v4)
  {
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v5 = sub_1BFAAF688();
    __swift_project_value_buffer(v5, qword_1EDCC77C8);

    v6 = sub_1BFAAF668();
    v7 = sub_1BFAAFB78();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      if (a2)
      {
        v10 = a2;
      }

      else
      {
        a1 = 0;
        v10 = 0xE000000000000000;
      }

      v11 = sub_1BF9F88A8(a1, v10, &v13);

      *(v8 + 4) = v11;
      _os_log_impl(&dword_1BF9F6000, v6, v7, "Current Siri execution's patternId %s is not qualified for spoken announcement", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v9);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_94();
    }
  }

  return (v4 & 1) == 0;
}

uint64_t sub_1BFA79C98(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    v6 = *(a1 + 8);
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v9 = qword_1EDCC6AD0;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_1BFA7A0E8(v8, v7, qword_1EDCC6AD8);
    if (v10)
    {
      if (qword_1EDCC77C0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v11 = sub_1BFAAF688();
      __swift_project_value_buffer(v11, qword_1EDCC77C8);

      v12 = sub_1BFAAF668();
      v13 = sub_1BFAAFB78();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19 = v15;
        *v14 = 136315138;
        if (v7)
        {
          v16 = v8;
        }

        else
        {
          v16 = 0;
        }

        if (!v7)
        {
          v7 = 0xE000000000000000;
        }

        v17 = sub_1BF9F88A8(v16, v7, &v19);

        *(v14 + 4) = v17;
        _os_log_impl(&dword_1BF9F6000, v12, v13, "Current Siri execution's patternId %s is not qualified for cross domain hint or announcement", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_2Tm(v15);
        OUTLINED_FUNCTION_94();
        OUTLINED_FUNCTION_94();

        goto LABEL_21;
      }
    }

LABEL_21:
    v5 = v10 ^ 1;
    return v5 & 1;
  }

  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1BFAAF688();
  __swift_project_value_buffer(v1, qword_1EDCC77C8);
  v2 = sub_1BFAAF668();
  v3 = sub_1BFAAFB78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BF9F6000, v2, v3, "Current Siri execution has additional commands to be run after the Siri response. Not returning announcement or cross domain hint", v4, 2u);
    OUTLINED_FUNCTION_94();
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t sub_1BFA79F0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v34 = a5;
  v22 = result;
  v20 = a6[1];
  v21 = *a6;
  v33 = *(a6 + 16);
  v8 = a6[4];
  v19 = a6[3];
  v9 = *(v6 + 16);
  v10 = v9 + 32;
  v11 = -*(v9 + 16);
  v12 = -1;
  while (1)
  {
    if (v11 + v12 == -1)
    {
      return 0;
    }

    if (++v12 >= *(v9 + 16))
    {
      break;
    }

    sub_1BF9F94C4(v10, v30);
    v13 = v31;
    v14 = v32;
    v15 = __swift_project_boxed_opaque_existential_1(v30, v31);
    v26[0] = v21;
    v26[1] = v20;
    v27 = v33;
    v28 = v19;
    v29 = v8;
    v16 = (*(v14 + 8))(v22, a2, a3, a4, v34 & 1, v26, v13, v14);
    if (v7)
    {
      __swift_destroy_boxed_opaque_existential_2Tm(v30);
      return v15;
    }

    v15 = v16;
    v18 = v17;
    v10 += 40;
    result = __swift_destroy_boxed_opaque_existential_2Tm(v30);
    if (v18)
    {
      return v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BFA7A064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v8 = *v6;
  result = sub_1BFA79F0C(a1, a2, a3, a4, a5, a6);
  if (v7)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1BFA7A098()
{
  result = sub_1BFA7A2E4(&unk_1F3F07AD8);
  qword_1EDCC6AD8 = result;
  return result;
}

uint64_t sub_1BFA7A0C0()
{
  result = sub_1BFA7A2E4(&unk_1F3F07B38);
  qword_1EBDFBE08 = result;
  return result;
}

uint64_t sub_1BFA7A0E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8E8, &qword_1BFAB1A58);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v27 - v9;
  if (a2)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  v28 = v11;
  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 56);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  while (v15)
  {
    v19 = v18;
LABEL_16:
    v20 = (*(a3 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v15)))));
    v21 = *v20;
    v22 = v20[1];
    v15 &= v15 - 1;
    v31 = v28;
    v32 = v12;
    v29 = v21;
    v30 = v22;
    v23 = sub_1BFAAE428();
    v24 = 1;
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v23);
    sub_1BF9F86D0();

    sub_1BFAAFBC8();
    v26 = v25;
    sub_1BFA20F44(v10, &qword_1EBDFB8E8, &qword_1BFAB1A58);

    if ((v26 & 1) == 0)
    {
LABEL_19:

      return v24;
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      v24 = 0;
      goto LABEL_19;
    }

    v15 = *(a3 + 56 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BFA7A2E4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE10, &qword_1BFAB52C0);
  result = sub_1BFAAFC28();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_1BFAAFF98();

    sub_1BFAAF908();
    result = sub_1BFAAFFE8();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_1BFAAFF08() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1BFA7A474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB698, &qword_1BFAB1A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BFA7A4E4()
{
  result = qword_1EDCC6F70;
  if (!qword_1EDCC6F70)
  {
    sub_1BFAAE888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6F70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_11(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_1BFA7A554(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_41(v6);
  *v7 = v8;
  v7[1] = sub_1BF9FDF08;

  return sub_1BFA7A60C(a1, a2);
}

uint64_t sub_1BFA7A60C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(type metadata accessor for PresentationContext() - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE20, &qword_1BFAB52D8) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA7A70C, 0, 0);
}

uint64_t sub_1BFA7A70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v12 = v10[7];
  v11 = v10[8];
  v14 = v10[5];
  v13 = v10[6];
  v16 = v10[3];
  v15 = v10[4];
  v17 = v10[2];
  v10[9] = SiriSuggestions.SuggestionList.suggestions.getter();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE28, &qword_1BFAB52E0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v18);
  OUTLINED_FUNCTION_4_11();
  sub_1BFA7C6D0(v16, v12, v19);
  v20 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v21 = swift_allocObject();
  v10[10] = v21;
  *(v21 + 16) = v15;
  sub_1BFA7B6FC(v12, v21 + v20);
  v22 = *(MEMORY[0x1E69D3018] + 4);

  v23 = swift_task_alloc();
  v10[11] = v23;
  type metadata accessor for SiriSuggestions.Suggestion(0);
  *v23 = v10;
  v23[1] = sub_1BFA7A874;
  v24 = v10[8];
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE40720](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_1BFA7A874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v12 = *v11;
  v13 = *v11;
  OUTLINED_FUNCTION_8();
  *v14 = v13;
  v15 = v12[11];
  *v14 = *v11;
  v13[12] = v10;

  v16 = v12[10];
  v17 = v12[9];
  v18 = v12[8];
  if (v10)
  {
    sub_1BFA7B890(v18);

    OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

  else
  {
    v23 = v13[7];

    sub_1BFA7B890(v18);

    OUTLINED_FUNCTION_19_5();
    OUTLINED_FUNCTION_138();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }
}

uint64_t sub_1BFA7AA24()
{
  OUTLINED_FUNCTION_40();
  v2 = v0[7];
  v1 = v0[8];

  OUTLINED_FUNCTION_85();
  v4 = v0[12];

  return v3();
}

uint64_t SuggestionDispatcher.dispatch(suggestions:presentationContext:)()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v1[5] = v4;
  v1[6] = v0;
  v1[3] = v5;
  v1[4] = v2;
  v1[2] = v6;
  v7 = *(type metadata accessor for PresentationContext() - 8);
  v1[7] = v7;
  v1[8] = *(v7 + 64);
  v1[9] = swift_task_alloc();
  v8 = *(v3 - 8);
  v1[10] = v8;
  v1[11] = *(v8 + 64);
  v1[12] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE20, &qword_1BFAB52D8) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA7ABE4, 0, 0);
}

uint64_t sub_1BFA7ABE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 96);
  v12 = *(v10 + 104);
  v13 = *(v10 + 80);
  v14 = *(v10 + 72);
  v33 = *(v10 + 88);
  v34 = *(v10 + 64);
  v15 = *(v10 + 48);
  v16 = *(v10 + 56);
  v17 = *(v10 + 16);
  v18 = *(v10 + 24);
  v35 = *(v10 + 32);
  v19 = SiriSuggestions.SuggestionList.suggestions.getter();
  *(v10 + 112) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE28, &qword_1BFAB52E0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v20);
  (*(v13 + 16))(v11, v15, v35);
  OUTLINED_FUNCTION_4_11();
  sub_1BFA7C6D0(v18, v14, v21);
  v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v23 = (v33 + *(v16 + 80) + v22) & ~*(v16 + 80);
  v24 = swift_allocObject();
  *(v10 + 120) = v24;
  *(v24 + 16) = v35;
  (*(v13 + 32))(v24 + v22, v11, v35);
  sub_1BFA7B6FC(v14, v24 + v23);
  v25 = *(MEMORY[0x1E69D3018] + 4);
  v26 = swift_task_alloc();
  *(v10 + 128) = v26;
  v27 = type metadata accessor for SiriSuggestions.Suggestion(0);
  *v26 = v10;
  v26[1] = sub_1BFA7ADD0;
  v30 = *(v10 + 104);
  v31 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE40720](v19, v30, &unk_1BFAB52F0, v24, v27, v31, v28, v29, a9, a10);
}

uint64_t sub_1BFA7ADD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v12 = *v11;
  v13 = *v11;
  OUTLINED_FUNCTION_8();
  *v14 = v13;
  v15 = v12[16];
  *v14 = *v11;
  v13[17] = v10;

  v16 = v12[15];
  v17 = v12[14];
  v18 = v12[13];
  if (v10)
  {
    sub_1BFA7B890(v18);

    OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

  else
  {
    v23 = v13[12];
    v24 = v13[9];

    sub_1BFA7B890(v18);

    OUTLINED_FUNCTION_19_5();
    OUTLINED_FUNCTION_138();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }
}

uint64_t sub_1BFA7AF8C()
{
  OUTLINED_FUNCTION_40();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];

  OUTLINED_FUNCTION_85();
  v5 = v0[17];

  return v4();
}

uint64_t static SuggestionsDispatchers.chain(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = &unk_1F3F0A7D0;
  a2[4] = &off_1F3F0A7F8;
  *a2 = a1;
}

uint64_t sub_1BFA7B030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA7B0C8, 0, 0);
}

uint64_t sub_1BFA7B0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_141();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_58();
  a16 = v18;
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4();
  }

  v22 = v18[6];
  v23 = v18[2];
  v24 = sub_1BFAAF688();
  __swift_project_value_buffer(v24, qword_1EDCC7478);
  OUTLINED_FUNCTION_3_10();
  v25 = sub_1BFAAF668();
  LOBYTE(v23) = sub_1BFAAFB78();
  v26 = OUTLINED_FUNCTION_48(v23);
  v27 = v18[6];
  if (v26)
  {
    v28 = v18[5];
    v29 = OUTLINED_FUNCTION_51_0();
    v30 = OUTLINED_FUNCTION_31_4();
    a9 = v30;
    OUTLINED_FUNCTION_18_9(4.8149e-34);
    sub_1BFA1C9FC(v27);
    v31 = sub_1BF9F88A8(v28, v19, &a9);

    *(v29 + 4) = v31;
    OUTLINED_FUNCTION_28_0(&dword_1BF9F6000, v32, v33, "dispatching %s");
    __swift_destroy_boxed_opaque_existential_2Tm(v30);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {

    sub_1BFA1C9FC(v27);
  }

  v34 = swift_task_alloc();
  v18[7] = v34;
  *v34 = v18;
  v34[1] = sub_1BFA7B248;
  OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_138();

  return ACECommandSuggestionDispatcher.dispatch(suggestion:presentationContext:)(v35);
}

uint64_t sub_1BFA7B248()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;

  OUTLINED_FUNCTION_24_0();
  if (!v0)
  {
    v7 = &unk_1F3F07DD8;
  }

  return v8(v7);
}

uint64_t sub_1BFA7B350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA7B3EC, 0, 0);
}

uint64_t sub_1BFA7B3EC()
{
  v24 = v0;
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4();
  }

  v2 = v0[8];
  v3 = v0[2];
  v4 = sub_1BFAAF688();
  __swift_project_value_buffer(v4, qword_1EDCC7478);
  OUTLINED_FUNCTION_3_10();
  v5 = sub_1BFAAF668();
  v6 = sub_1BFAAFB78();
  v7 = OUTLINED_FUNCTION_48(v6);
  v8 = v0[8];
  if (v7)
  {
    v9 = v0[7];
    v10 = OUTLINED_FUNCTION_51_0();
    v11 = OUTLINED_FUNCTION_31_4();
    v23 = v11;
    OUTLINED_FUNCTION_18_9(4.8149e-34);
    sub_1BFA1C9FC(v8);
    v12 = sub_1BF9F88A8(v9, v1, &v23);

    *(v10 + 4) = v12;
    OUTLINED_FUNCTION_28_0(&dword_1BF9F6000, v13, v14, "dispatching %s");
    __swift_destroy_boxed_opaque_existential_2Tm(v11);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {

    sub_1BFA1C9FC(v8);
  }

  v21 = (v0[6] + 16);
  v22 = (*v21 + **v21);
  v15 = (*v21)[1];
  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_1BFA7B5F4;
  v17 = v0[5];
  v18 = v0[6];
  v19 = OUTLINED_FUNCTION_23_5();

  return v22(v19);
}

uint64_t sub_1BFA7B5F4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;

  OUTLINED_FUNCTION_24_0();
  if (!v0)
  {
    v7 = &unk_1F3F07DF8;
  }

  return v8(v7);
}

uint64_t sub_1BFA7B6FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFA7B760(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_24_7();
  v7 = *(v6 + 64);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = *(type metadata accessor for PresentationContext() - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_41(v11);
  *v12 = v13;
  v12[1] = sub_1BFA7C730;

  return sub_1BFA7B350(a1, v1 + v8, v1 + v10, v3, v4);
}

uint64_t sub_1BFA7B890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE20, &qword_1BFAB52D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of SuggestionsDispatcher.dispatch(suggestions:presentationContext:)()
{
  OUTLINED_FUNCTION_58();
  v4 = *(OUTLINED_FUNCTION_34(v0, v1, v2, v3) + 8);
  OUTLINED_FUNCTION_30();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_41(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_19(v9);

  return v12(v11);
}

uint64_t dispatch thunk of SuggestionDispatcher.dispatch(suggestion:presentationContext:)()
{
  OUTLINED_FUNCTION_58();
  v4 = *(OUTLINED_FUNCTION_34(v0, v1, v2, v3) + 16);
  OUTLINED_FUNCTION_30();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_41(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_19(v9);

  return v12(v11);
}

_BYTE *storeEnumTagSinglePayload for SuggestionsDispatchers(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BFA7BBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA7BBCC, 0, 0);
}

void sub_1BFA7BBCC()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  v0[17] = v2;
  if (v2)
  {
    v0[18] = 0;
    sub_1BF9F94C4(v1 + 32, (v0 + 2));
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v3 = sub_1BFAAF688();
    __swift_project_value_buffer(v3, qword_1EDCC7478);
    sub_1BF9F94C4((v0 + 2), (v0 + 7));
    v4 = sub_1BFAAF668();
    v5 = sub_1BFAAFB78();
    if (OUTLINED_FUNCTION_48(v5))
    {
      v6 = OUTLINED_FUNCTION_51_0();
      v7 = OUTLINED_FUNCTION_31_4();
      v27 = v7;
      v8 = OUTLINED_FUNCTION_21_6(4.8149e-34);
      v9 = v0[11];
      v0[12] = v8;
      v0[13] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE30, &qword_1BFAB5410);
      v10 = sub_1BFAAF8B8();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_2Tm(v0 + 7);
      v13 = sub_1BF9F88A8(v10, v12, &v27);

      *(v6 + 4) = v13;
      OUTLINED_FUNCTION_26_5(&dword_1BF9F6000, v14, v15, "Dispatching to %s in chain");
      __swift_destroy_boxed_opaque_existential_2Tm(v7);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_94();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_2Tm(v0 + 7);
    }

    v18 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v19 = *(v18 + 8);
    OUTLINED_FUNCTION_30();
    v26 = v20 + *v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    v0[19] = v23;
    *v23 = v0;
    OUTLINED_FUNCTION_2_12(v23);
    OUTLINED_FUNCTION_25_6();

    __asm { BRAA            X4, X16 }
  }

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_25_6();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1BFA7BE30()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = *(v2 + 152);
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 160) = v0;

  if (v0)
  {
    v7 = sub_1BFA7C1B4;
  }

  else
  {
    v7 = sub_1BFA7BF34;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1BFA7BF34()
{
  v1 = v0[17];
  v2 = v0[18] + 1;
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 2);
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_25_6();

    __asm { BRAA            X1, X16 }
  }

  v5 = v0[18];
  v0[18] = v5 + 1;
  sub_1BF9F94C4(v0[16] + 40 * v5 + 72, (v0 + 2));
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4();
  }

  v6 = sub_1BFAAF688();
  __swift_project_value_buffer(v6, qword_1EDCC7478);
  sub_1BF9F94C4((v0 + 2), (v0 + 7));
  v7 = sub_1BFAAF668();
  v8 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_48(v8))
  {
    v9 = OUTLINED_FUNCTION_51_0();
    v10 = OUTLINED_FUNCTION_31_4();
    v28 = v10;
    v11 = OUTLINED_FUNCTION_21_6(4.8149e-34);
    v12 = v0[11];
    v0[12] = v11;
    v0[13] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE30, &qword_1BFAB5410);
    v13 = sub_1BFAAF8B8();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_2Tm(v0 + 7);
    v16 = sub_1BF9F88A8(v13, v15, &v28);

    *(v9 + 4) = v16;
    OUTLINED_FUNCTION_26_5(&dword_1BF9F6000, v17, v18, "Dispatching to %s in chain");
    __swift_destroy_boxed_opaque_existential_2Tm(v10);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_2Tm(v0 + 7);
  }

  v19 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v20 = *(v19 + 8);
  OUTLINED_FUNCTION_30();
  v27 = v21 + *v21;
  v23 = *(v22 + 4);
  v24 = swift_task_alloc();
  v0[19] = v24;
  *v24 = v0;
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_25_6();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_1BFA7C1B4()
{
  OUTLINED_FUNCTION_40();
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));
  OUTLINED_FUNCTION_85();
  v2 = *(v0 + 160);

  return v1();
}

uint64_t sub_1BFA7C210(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF9FDE28;

  return sub_1BFA7BBA8(a1, a2, v6);
}

uint64_t sub_1BFA7C2E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return sub_1BFA7C2BC();
}

uint64_t sub_1BFA7C36C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BFA7C418;

  return sub_1BFA7B030(a1, v6, a3);
}

uint64_t sub_1BFA7C418()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;

  OUTLINED_FUNCTION_24_0();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1BFA7C504(uint64_t a1)
{
  v3 = *(type metadata accessor for PresentationContext() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41(v5);
  *v6 = v7;
  v6[1] = sub_1BFA7C5E8;

  return sub_1BFA7C36C(a1, (v1 + 16), v1 + v4);
}

uint64_t sub_1BFA7C5E8()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_8();
  *v6 = v5;

  OUTLINED_FUNCTION_24_0();

  return v7(v2);
}

uint64_t sub_1BFA7C6D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return sub_1BFA7C6D0(v0, v1, type metadata accessor for SiriSuggestions.Suggestion);
}

uint64_t OUTLINED_FUNCTION_21_6(float a1)
{
  *v1 = a1;
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));

  return swift_getDynamicType();
}

uint64_t FeatureType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6169646E496E6170;
  }

  else
  {
    result = 0x737567616DLL;
  }

  *v0;
  return result;
}

void *sub_1BFA7C804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v10 = sub_1BFAAE428();
  v11 = OUTLINED_FUNCTION_2_3(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v11, v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v50 - v21;
  v23 = *a3;
  sub_1BFAAE7A8();
  if (!sub_1BFAAE778())
  {

    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v29 = sub_1BFAAF688();
    v30 = OUTLINED_FUNCTION_56(v29, qword_1EDCC7478);
    v31 = sub_1BFAAFB88();
    if (os_log_type_enabled(v30, v31))
    {
      *OUTLINED_FUNCTION_44_0() = 0;
      OUTLINED_FUNCTION_49_0(&dword_1BF9F6000, v32, v33, "Unable to get the current Siri locale to fetch correct cached FeatureAnnouncement dialogs");
      OUTLINED_FUNCTION_94();
    }

    goto LABEL_15;
  }

  v65 = a1;
  sub_1BFAAE768();
  OUTLINED_FUNCTION_45_3();

  sub_1BFAAE898();

  (*(v13 + 32))(v22, v19, v10);
  v24 = sub_1BFAAE418();
  sub_1BFA7D288(v23 | 0xFFFFFF80, &unk_1F3F09360, v24, v25, __src);

  memcpy(__dst, __src, sizeof(__dst));
  v26 = __dst[1];
  if (!__dst[1])
  {

    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v34 = sub_1BFAAF688();
    v35 = OUTLINED_FUNCTION_56(v34, qword_1EDCC7478);
    v36 = sub_1BFAAFB88();
    if (os_log_type_enabled(v35, v36))
    {
      *OUTLINED_FUNCTION_44_0() = 0;
      OUTLINED_FUNCTION_49_0(&dword_1BF9F6000, v37, v38, "Unable to retrieve cached announcement dialog data");
      OUTLINED_FUNCTION_94();
    }

    v39 = OUTLINED_FUNCTION_25_7();
    v40(v39);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_2Tm(a4);
    sub_1BFA87E58(__src);
    return memcpy(a5, __src, 0x88uLL);
  }

  v62 = a2;
  v63 = a4;
  v64 = a5;
  v61 = __dst[0];
  v60 = __dst[2];
  v58 = __dst[4];
  v27 = __dst[5];
  v57 = __dst[6];
  v28 = __dst[7];
  v56 = __dst[8];
  v59 = __dst[3];
  v55 = __dst[9];
  if (v23)
  {
  }

  else
  {
    v52 = __dst[10];
    v53 = __dst[11];
    v42 = __dst[12];
    v51 = __dst[13];
    v54 = sub_1BFAAFF08();

    if ((v54 & 1) == 0)
    {
      v48 = OUTLINED_FUNCTION_25_7();
      v49(v48);
      v44 = v53;

      v43 = v51;

      sub_1BFA20F44(__dst, &qword_1EBDFC050, qword_1BFAB6B38);
      v47 = v52;
      goto LABEL_19;
    }
  }

  v42 = 0xD00000000000001FLL;
  sub_1BFA20F44(__dst, &qword_1EBDFC050, qword_1BFAB6B38);
  v43 = 0x80000001BFAB9C40;
  v44 = 0x80000001BFAB9C60;
  v45 = OUTLINED_FUNCTION_25_7();
  v46(v45);
  v47 = 0xD000000000000026;
LABEL_19:
  *__src = v65;
  *&__src[8] = v62;
  __src[16] = v23;
  *&__src[24] = v42;
  *&__src[32] = v43;
  *&__src[40] = v61;
  *&__src[48] = v26;
  *&__src[56] = v60;
  *&__src[64] = v59;
  *&__src[72] = v58;
  *&__src[80] = v27;
  *&__src[88] = v57;
  *&__src[96] = v28;
  *&__src[104] = v56;
  *&__src[112] = v55;
  *&__src[120] = v47;
  *&__src[128] = v44;
  nullsub_1(__src);
  memcpy(v64, __src, 0x88uLL);
  return __swift_destroy_boxed_opaque_existential_2Tm(v63);
}

id sub_1BFA7CD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v8 = sub_1BFAAE3F8();
  v9 = OUTLINED_FUNCTION_2_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v61, v4, sizeof(v61));
  memcpy(v60, v4, 0xE1uLL);
  sub_1BFA87E04();
  v17 = sub_1BFAAE448();
  if (v18 >> 60 == 15)
  {
    goto LABEL_4;
  }

  if (sub_1BFA7D220(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_4_5();
    sub_1BFA1B9DC(v19, v20);
LABEL_4:
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v21 = sub_1BFAAF688();
    v22 = OUTLINED_FUNCTION_56(v21, qword_1EDCC7478);
    v23 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_48(v23))
    {
      v24 = OUTLINED_FUNCTION_44_0();
      *v24 = 0;
      _os_log_impl(&dword_1BF9F6000, v22, v23, "ResponseFactory: SnippetPluginModel has no Data. Unable to build ACEView.", v24, 2u);
      OUTLINED_FUNCTION_94();
    }

    return 0;
  }

  v56 = a2;
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4();
  }

  v55[1] = a1;
  v26 = sub_1BFAAF688();
  v27 = OUTLINED_FUNCTION_56(v26, qword_1EDCC7478);
  v28 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_48(v28))
  {
    v29 = OUTLINED_FUNCTION_44_0();
    *v29 = 0;
    _os_log_impl(&dword_1BF9F6000, v27, v28, "Suggestion ResponseFactory: Building snippet for Response", v29, 2u);
    OUTLINED_FUNCTION_94();
  }

  v30 = [objc_allocWithZone(MEMORY[0x1E69C7B88]) init];
  sub_1BFAAE3E8();
  v31 = sub_1BFAAE398();
  v33 = v32;
  (*(v11 + 8))(v16, v8);
  sub_1BFA531AC(v31, v33, v30);
  v25 = v30;
  sub_1BFA861F0(a3, v57, v25);
  swift_beginAccess();
  v35 = qword_1EBDFBE38;
  v34 = off_1EBDFBE40;

  sub_1BFA86248(v35, v34, v25);
  if (v56)
  {
    v36 = sub_1BFAAF858();
  }

  else
  {
    v36 = 0;
  }

  [v25 setCorrespondingSessionID_];

  v37 = OUTLINED_FUNCTION_4_5();
  sub_1BFA862AC(v37, v38, v25);
  memcpy(v60, v61, 0xE1uLL);
  v39 = sub_1BFA2B568(v60);
  v40 = sub_1BFA074AC(v60);
  v41 = v40;
  switch(v39)
  {
    case 1:
    case 3:

      goto LABEL_26;
    case 2:
      v46 = *MEMORY[0x1E69C7C40];
      v47 = sub_1BFAAF868();
      sub_1BFA53268(v47, v48, v25);

      if (*(v41 + 16))
      {
        v49 = 0x6169646E496E6170;
      }

      else
      {
        v49 = 0x737567616DLL;
      }

      if (*(v41 + 16))
      {
        v50 = 0xE800000000000000;
      }

      else
      {
        v50 = 0xE500000000000000;
      }

      v58 = 0xD000000000000014;
      v59 = 0x80000001BFAB8DE0;
      MEMORY[0x1BFB60B80](v49, v50);

      v51 = sub_1BFAAF858();

      break;
    default:
      v42 = *(v40 + 32);
      v43 = *MEMORY[0x1E69C7C50];
      v44 = sub_1BFAAF868();
      sub_1BFA53268(v44, v45, v25);

LABEL_26:
      v51 = sub_1BFAAF858();
      break;
  }

  [v25 setResponseViewId_];
  v52 = OUTLINED_FUNCTION_4_5();
  sub_1BFA1B9DC(v52, v53);

  return v25;
}

BOOL sub_1BFA7D220(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1BFA7D288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  memset(v15, 0, sizeof(v15));
  if (qword_1EDCC6710 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDCC6718;

  sub_1BFA7D53C(v10, v15, a1, a2, a3, a4, sub_1BFA8E9C8);
  sub_1BFA87E60(v15, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA30, &unk_1BFAB5450);
  if (swift_dynamicCast())
  {
    memcpy(a5, __src, 0x70uLL);
  }

  else
  {
    memset(__src, 0, sizeof(__src));
    memset(v12, 0, sizeof(v12));
    sub_1BFA20F44(v12, &qword_1EBDFC050, qword_1BFAB6B38);
    *a5 = 0u;
    a5[1] = 0u;
    a5[2] = 0u;
    a5[3] = 0u;
    a5[4] = 0u;
    a5[5] = 0u;
    a5[6] = 0u;
  }

  return sub_1BFA20F44(v15, &qword_1EBDFBA30, &unk_1BFAB5450);
}

uint64_t sub_1BFA7D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v14, 0, sizeof(v14));
  if (qword_1EDCC6710 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDCC6718;

  sub_1BFA7D53C(v8, v14, a1, a2, a3, a4, sub_1BFA8E9C8);
  sub_1BFA87E60(v14, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA30, &unk_1BFAB5450);
  if (swift_dynamicCast())
  {
    v10 = v12;
  }

  else
  {
    v10 = 0;
  }

  sub_1BFA20F44(v14, &qword_1EBDFBA30, &unk_1BFAB5450);
  return v10;
}

uint64_t sub_1BFA7D53C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  [a1 lock];
  if (qword_1EDCC6700 != -1)
  {
    swift_once();
  }

  v14 = a7(a3, a4, a5, a6);
  v16 = v15;
  swift_beginAccess();
  sub_1BFA2351C(v14, v16, off_1EDCC6708, v18);
  swift_endAccess();

  sub_1BFA87ED0(v18, a2);
  [a1 unlock];
}

uint64_t sub_1BFA7D65C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_1BFAAE428();
  v5 = OUTLINED_FUNCTION_2_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v5, v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v35 - v15;
  sub_1BFAAE7A8();
  if (sub_1BFAAE778())
  {
    sub_1BFAAE768();

    sub_1BFAAE898();

    (*(v7 + 32))(v16, v13, v4);
    v17 = sub_1BFAAE418();
    v19 = sub_1BFA7D410(0, &unk_1F3F093F8, v17, v18);
    v21 = v20;

    if (v21)
    {
      v22 = OUTLINED_FUNCTION_25_7();
      v23(v22);
      *a2 = v19;
      a2[1] = v21;
      return __swift_destroy_boxed_opaque_existential_2Tm(a1);
    }

    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v29 = sub_1BFAAF688();
    v30 = OUTLINED_FUNCTION_56(v29, qword_1EDCC7478);
    v31 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_48(v31))
    {
      v32 = OUTLINED_FUNCTION_44_0();
      *v32 = 0;
      _os_log_impl(&dword_1BF9F6000, v30, v31, "Unable to retrieve cached CrossDomain dialog data", v32, 2u);
      OUTLINED_FUNCTION_94();
    }

    v33 = OUTLINED_FUNCTION_25_7();
    v34(v33);
  }

  else
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v25 = sub_1BFAAF688();
    v26 = OUTLINED_FUNCTION_56(v25, qword_1EDCC7478);
    v27 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_48(v27))
    {
      v28 = OUTLINED_FUNCTION_44_0();
      *v28 = 0;
      _os_log_impl(&dword_1BF9F6000, v26, v27, "Unable to get the current Siri locale to fetch correct cached CrossDomainHint dialogs", v28, 2u);
      OUTLINED_FUNCTION_94();
    }
  }

  result = __swift_destroy_boxed_opaque_existential_2Tm(a1);
  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t SiriHelpSuggestion.suggestionId.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriHelpSuggestion.iconData.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriHelpSuggestion.iconData.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.iconSymbolTintName.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.iconSymbolTintRGBA.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.iconAppBundleId.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.displayText.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriHelpSuggestion.displayText.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.formattedDisplayText.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriHelpSuggestion.formattedDisplayText.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.iconSymbol.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriHelpSuggestion.iconSymbol.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 128);

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.description.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriHelpSuggestion.description.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 144);

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.directInvocation.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriHelpSuggestion.directInvocation.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 160);

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

void *SiriHelpSuggestion.toDictionary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[1];
  v10 = *(v8 + 16);
  v11 = v8[3];
  v12 = v8[4];
  v13 = v8[6];
  v14 = v8[8];
  v322 = v8[5];
  v334 = v8[7];
  v346 = v8[10];
  v358 = *(v8 + 11);
  v286 = v8[9];
  v298 = v8[15];
  v310 = v8[17];
  v381 = v8[16];
  v393 = v8[18];
  v405 = v8[19];
  v417 = v8[20];
  if (v9)
  {
    v15 = *v8;
    v445 = MEMORY[0x1E69E6158];
    *&v443 = v15;
    *(&v443 + 1) = v9;
    OUTLINED_FUNCTION_56_3(a1, a2, a3, a4, a5, a6, a7, a8, v274, v286, v298, v310, v322, v334, v346, v358, *(&v358 + 1), v381, v393, v405, v417, v429, v442[0]);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_9();
    v17 = sub_1BFA26704(v16, 0x6974736567677573);
    v25 = v429;
  }

  else
  {
    OUTLINED_FUNCTION_55_4();
    sub_1BFA20F44(&v443, &qword_1EBDFBA30, &unk_1BFAB5450);
    v25 = MEMORY[0x1E69E7CC8];
    sub_1BFA01764(0x6974736567677573, 0xEC00000064496E6FLL);
    if (v26)
    {
      OUTLINED_FUNCTION_45_3();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_67_4();
      v27 = *(v25 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      OUTLINED_FUNCTION_27_7();
      v28 = sub_1BFAAFCD8();
      v36 = OUTLINED_FUNCTION_17_5(v28, v29, v30, v31, v32, v33, v34, v35, v274, v286, v298, v310, v322, v334, v346, v358, *(&v358 + 1), v381, v393, v405, v417, v429);
      OUTLINED_FUNCTION_34_6(v36, v37, v38, v39, v40, v41, v42, v43, v275, v287, v299, v311, v323, v335, v347, v359, v370, v382, v394, v406, v418, v430, v442[0]);
      sub_1BFAAFCF8();
    }

    else
    {
      OUTLINED_FUNCTION_46_4();
    }

    v17 = sub_1BFA20F44(v442, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  if (v10 == 2)
  {
    sub_1BFA01764(0x6E6F6349776F6873, 0xE800000000000000);
    if (v44)
    {
      OUTLINED_FUNCTION_45_3();
      swift_isUniquelyReferenced_nonNull_native();
      *&v442[0] = v25;
      v45 = *(v25 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      sub_1BFAAFCD8();
      v25 = *&v442[0];
      v46 = *(*(*&v442[0] + 48) - 0x1909CB68890978C8);

      sub_1BFA27FE0((*(v25 + 56) - 0x321396D11212F1A0), &v443);
      sub_1BFAAFCF8();
    }

    else
    {
      OUTLINED_FUNCTION_55_4();
    }

    v48 = sub_1BFA20F44(&v443, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  else
  {
    v445 = MEMORY[0x1E69E6370];
    LOBYTE(v443) = v10 & 1;
    OUTLINED_FUNCTION_56_3(v17, v18, v19, v20, v21, v22, v23, v24, v274, v286, v298, v310, v322, v334, v346, v358, *(&v358 + 1), v381, v393, v405, v417, v429, v442[0]);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_9();
    v48 = sub_1BFA26704(v47, 0x6E6F6349776F6873);
    v25 = v429;
  }

  if (v12)
  {
    v445 = MEMORY[0x1E69E6158];
    *&v443 = v11;
    *(&v443 + 1) = v12;
    OUTLINED_FUNCTION_56_3(v48, v49, v50, v51, v52, v53, v54, v55, v274, v286, v298, v310, v322, v334, v346, v358, *(&v358 + 1), v381, v393, v405, v417, v429, v442[0]);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_9();
    v57 = sub_1BFA26704(v56, 0x617461446E6F6369);
    v25 = v429;
    v65 = v346;
  }

  else
  {
    OUTLINED_FUNCTION_55_4();
    sub_1BFA20F44(&v443, &qword_1EBDFBA30, &unk_1BFAB5450);
    sub_1BFA01764(0x617461446E6F6369, 0xE800000000000000);
    if (v66)
    {
      OUTLINED_FUNCTION_45_3();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_67_4();
      v67 = *(v25 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      OUTLINED_FUNCTION_27_7();
      v68 = sub_1BFAAFCD8();
      v76 = OUTLINED_FUNCTION_17_5(v68, v69, v70, v71, v72, v73, v74, v75, v274, v286, v298, v310, v322, v334, v346, v358, *(&v358 + 1), v381, v393, v405, v417, v429);
      OUTLINED_FUNCTION_34_6(v76, v77, v78, v79, v80, v81, v82, v83, v276, v288, v300, v312, v324, v336, v348, v360, v371, v383, v395, v407, v419, v431, v442[0]);
      OUTLINED_FUNCTION_43_3();
    }

    else
    {
      OUTLINED_FUNCTION_46_4();
    }

    v65 = v346;
    v57 = sub_1BFA20F44(v442, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  v84 = v322;
  if (v13)
  {
    v85 = MEMORY[0x1E69E6158];
    v86 = v13;
  }

  else
  {
    OUTLINED_FUNCTION_42_2();
    v444 = 0;
  }

  *&v443 = v84;
  *(&v443 + 1) = v86;
  v445 = v85;
  if (v13)
  {
    OUTLINED_FUNCTION_56_3(v57, v58, v59, v60, v61, v62, v63, v64, v274, v286, v298, v310, v322, v334, v346, v358, *(&v358 + 1), v381, v393, v405, v417, v429, v442[0]);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_37_3();
    v95 = OUTLINED_FUNCTION_62_1(v87, v88, v89, v90, v91, v92, v93, v94, v277, v289, v301, v313, v325, v337, v349, v361, v372, v384, v396, v408, v420, v432, v442[0]);
    v96 = sub_1BFA26704(v95, 0xD000000000000012);
    v25 = v429;
    v104 = MEMORY[0x1E69E6158];
  }

  else
  {

    sub_1BFA20F44(&v443, &qword_1EBDFBA30, &unk_1BFAB5450);
    sub_1BFA01764(0xD000000000000012, 0x80000001BFAB98C0);
    if (v105)
    {
      OUTLINED_FUNCTION_45_3();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_67_4();
      v106 = *(v25 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      OUTLINED_FUNCTION_27_7();
      v107 = sub_1BFAAFCD8();
      v115 = OUTLINED_FUNCTION_17_5(v107, v108, v109, v110, v111, v112, v113, v114, v274, v286, v298, v310, v322, v334, v346, v358, *(&v358 + 1), v381, v393, v405, v417, v429);
      OUTLINED_FUNCTION_34_6(v115, v116, v117, v118, v119, v120, v121, v122, v278, v290, v302, v314, v326, v338, v350, v362, v373, v385, v397, v409, v421, v433, v442[0]);
      OUTLINED_FUNCTION_43_3();
    }

    else
    {
      OUTLINED_FUNCTION_46_4();
    }

    v104 = MEMORY[0x1E69E6158];
    v96 = sub_1BFA20F44(v442, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  v123 = v334;
  if (v14)
  {
    v124 = MEMORY[0x1E69E6158];
    v125 = v14;
  }

  else
  {
    OUTLINED_FUNCTION_42_2();
    v444 = 0;
  }

  *&v443 = v123;
  *(&v443 + 1) = v125;
  v445 = v124;
  if (v14)
  {
    OUTLINED_FUNCTION_56_3(v96, v97, v98, v99, v100, v101, v102, v103, v274, v286, v298, v310, v322, v334, v346, v358, *(&v358 + 1), v381, v393, v405, v417, v429, v442[0]);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_37_3();
    v134 = OUTLINED_FUNCTION_62_1(v126, v127, v128, v129, v130, v131, v132, v133, v279, v291, v303, v315, v327, v339, v351, v363, v374, v386, v398, v410, v422, v434, v442[0]);
    v135 = sub_1BFA26704(v134, 0xD000000000000012);
    v25 = v429;
    v143 = v393;
  }

  else
  {

    sub_1BFA20F44(&v443, &qword_1EBDFBA30, &unk_1BFAB5450);
    sub_1BFA01764(0xD000000000000012, 0x80000001BFAB98E0);
    if (v144)
    {
      OUTLINED_FUNCTION_45_3();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_67_4();
      v145 = *(v25 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      OUTLINED_FUNCTION_27_7();
      v146 = sub_1BFAAFCD8();
      v154 = OUTLINED_FUNCTION_17_5(v146, v147, v148, v149, v150, v151, v152, v153, v274, v286, v298, v310, v322, v334, v346, v358, *(&v358 + 1), v381, v393, v405, v417, v429);
      OUTLINED_FUNCTION_34_6(v154, v155, v156, v157, v158, v159, v160, v161, v280, v292, v304, v316, v328, v340, v352, v364, v375, v387, v399, v411, v423, v435, v442[0]);
      OUTLINED_FUNCTION_43_3();
    }

    else
    {
      OUTLINED_FUNCTION_46_4();
    }

    v143 = v393;
    v135 = sub_1BFA20F44(v442, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  if (v65)
  {
    v445 = v104;
    *&v443 = v286;
    *(&v443 + 1) = v65;
    OUTLINED_FUNCTION_56_3(v135, v136, v137, v138, v139, v140, v141, v142, v274, v286, v298, v310, v322, v334, v346, v358, *(&v358 + 1), v381, v393, v405, v417, v429, v442[0]);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_9();
    v163 = sub_1BFA26704(v162, 0x427070416E6F6369);
    v171 = v381;
  }

  else
  {
    OUTLINED_FUNCTION_55_4();
    sub_1BFA20F44(&v443, &qword_1EBDFBA30, &unk_1BFAB5450);
    sub_1BFA01764(0x427070416E6F6369, 0xEF6449656C646E75);
    if (v172)
    {
      OUTLINED_FUNCTION_45_3();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_67_4();
      v173 = *(v25 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      OUTLINED_FUNCTION_27_7();
      v174 = sub_1BFAAFCD8();
      v182 = OUTLINED_FUNCTION_17_5(v174, v175, v176, v177, v178, v179, v180, v181, v274, v286, v298, v310, v322, v334, v346, v358, *(&v358 + 1), v381, v393, v405, v417, v429);
      OUTLINED_FUNCTION_34_6(v182, v183, v184, v185, v186, v187, v188, v189, v281, v293, v305, v317, v329, v341, v353, v365, v376, v388, v400, v412, v424, v436, v442[0]);
      OUTLINED_FUNCTION_43_3();
    }

    else
    {
      OUTLINED_FUNCTION_46_4();
    }

    v171 = v381;
    v163 = sub_1BFA20F44(v442, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  v445 = v104;
  v443 = v358;
  OUTLINED_FUNCTION_56_3(v163, v164, v165, v166, v167, v168, v169, v170, v274, v286, v298, v310, v322, v334, v346, v358, *(&v358 + 1), v381, v393, v405, v417, v429, v442[0]);

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_37_3();
  v190 = sub_1BFA26704(v442, 0x5479616C70736964);
  v198 = v437;
  if (v171)
  {
    v445 = v104;
    *&v443 = v306;
    *(&v443 + 1) = v171;
    OUTLINED_FUNCTION_56_3(v190, v191, v192, v193, v194, v195, v196, v197, v282, v294, v306, v318, v330, v342, v354, v366, v377, v389, v401, v413, v425, v437, v442[0]);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_9();
    v200 = sub_1BFA26704(v199, 0x626D79536E6F6369);
    v198 = v437;
  }

  else
  {
    OUTLINED_FUNCTION_55_4();
    sub_1BFA20F44(&v443, &qword_1EBDFBA30, &unk_1BFAB5450);
    sub_1BFA01764(0x626D79536E6F6369, 0xEA00000000006C6FLL);
    if (v208)
    {
      OUTLINED_FUNCTION_45_3();
      swift_isUniquelyReferenced_nonNull_native();
      v209 = *(v437 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      v210 = OUTLINED_FUNCTION_89_3();
      v218 = OUTLINED_FUNCTION_17_5(v210, v211, v212, v213, v214, v215, v216, v217, v282, v294, v306, v318, v330, v342, v354, v366, v377, v389, v401, v413, v425, v437);
      OUTLINED_FUNCTION_34_6(v218, v219, v220, v221, v222, v223, v224, v225, v283, v295, v307, v319, v331, v343, v355, v367, v378, v390, v402, v414, v426, v438, v442[0]);
      OUTLINED_FUNCTION_43_3();
    }

    else
    {
      OUTLINED_FUNCTION_46_4();
    }

    v200 = sub_1BFA20F44(v442, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  if (v143)
  {
    v445 = v104;
    *&v443 = v318;
    *(&v443 + 1) = v143;
    OUTLINED_FUNCTION_56_3(v200, v201, v202, v203, v204, v205, v206, v207, v282, v294, v306, v318, v330, v342, v354, v366, v377, v389, v401, v413, v425, v437, v442[0]);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_9();
    v227 = sub_1BFA26704(v226, 0x7470697263736564);
    v235 = v425;
    v198 = v437;
  }

  else
  {
    OUTLINED_FUNCTION_55_4();
    sub_1BFA20F44(&v443, &qword_1EBDFBA30, &unk_1BFAB5450);
    v236 = OUTLINED_FUNCTION_4_5();
    sub_1BFA01764(v236, v237);
    if (v238)
    {
      OUTLINED_FUNCTION_45_3();
      swift_isUniquelyReferenced_nonNull_native();
      v239 = v198[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      v240 = OUTLINED_FUNCTION_89_3();
      v248 = OUTLINED_FUNCTION_17_5(v240, v241, v242, v243, v244, v245, v246, v247, v282, v294, v306, v318, v330, v342, v354, v366, v377, v389, v401, v413, v425, v198);
      OUTLINED_FUNCTION_34_6(v248, v249, v250, v251, v252, v253, v254, v255, v284, v296, v308, v320, v332, v344, v356, v368, v379, v391, v403, v415, v427, v439, v442[0]);
      OUTLINED_FUNCTION_43_3();
    }

    else
    {
      OUTLINED_FUNCTION_46_4();
    }

    v235 = v425;
    v227 = sub_1BFA20F44(v442, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  v256 = v413;
  if (v235)
  {
    v257 = MEMORY[0x1E69E6158];
    v258 = v235;
  }

  else
  {
    OUTLINED_FUNCTION_42_2();
    v444 = 0;
  }

  *&v443 = v256;
  *(&v443 + 1) = v258;
  v445 = v257;
  if (v235)
  {
    OUTLINED_FUNCTION_56_3(v227, v228, v229, v230, v231, v232, v233, v234, v282, v294, v306, v318, v330, v342, v354, v366, v377, v389, v401, v413, v425, v437, v442[0]);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_37_3();
    v266 = OUTLINED_FUNCTION_62_1(v259, 0xD000000000000010, v260, v261, v262, v263, v264, v265, v285, v297, v309, v321, v333, v345, v357, v369, v380, v392, v404, v416, v428, v440, v442[0]);
    sub_1BFA26704(v266, v267);
    return v441;
  }

  else
  {

    sub_1BFA20F44(&v443, &qword_1EBDFBA30, &unk_1BFAB5450);
    v268 = sub_1BFA01764(0xD000000000000010, 0x80000001BFAB9900);
    if (v269)
    {
      v270 = v268;
      swift_isUniquelyReferenced_nonNull_native();
      v271 = v198[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      sub_1BFAAFCD8();
      v272 = *(v198[6] + 16 * v270 + 8);

      sub_1BFA27FE0((v198[7] + 32 * v270), v442);
      OUTLINED_FUNCTION_96();
      sub_1BFAAFCF8();
    }

    else
    {
      OUTLINED_FUNCTION_46_4();
    }

    sub_1BFA20F44(v442, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  return v198;
}

void __swiftcall SiriHelpSuggestion.init(displayText:)(SiriSuggestionsAPI::SiriHelpSuggestion *__return_ptr retstr, Swift::String displayText)
{
  retstr->suggestionId.value._countAndFlagsBits = 0;
  retstr->suggestionId.value._object = 0;
  retstr->showIcon.value = 2;
  retstr->iconData = 0u;
  retstr->iconSymbolTintName = 0u;
  retstr->iconSymbolTintRGBA = 0u;
  retstr->iconAppBundleId = 0u;
  retstr->formattedDisplayText = 0u;
  retstr->iconSymbol = 0u;
  retstr->description = 0u;
  retstr->directInvocation = 0u;
  retstr->displayText = displayText;
}

uint64_t sub_1BFA7E840(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974736567677573 && a2 == 0xEC00000064496E6FLL;
  if (v4 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6349776F6873 && a2 == 0xE800000000000000;
    if (v6 || (sub_1BFAAFF08() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x617461446E6F6369 && a2 == 0xE800000000000000;
      if (v7 || (sub_1BFAAFF08() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001BFAB98C0 == a2;
        if (v8 || (sub_1BFAAFF08() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001BFAB98E0 == a2;
          if (v9 || (sub_1BFAAFF08() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x427070416E6F6369 && a2 == 0xEF6449656C646E75;
            if (v10 || (sub_1BFAAFF08() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x5479616C70736964 && a2 == 0xEB00000000747865;
              if (v11 || (sub_1BFAAFF08() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x80000001BFAB9A20 == a2;
                if (v12 || (sub_1BFAAFF08() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x626D79536E6F6369 && a2 == 0xEA00000000006C6FLL;
                  if (v13 || (sub_1BFAAFF08() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
                    if (v14 || (sub_1BFAAFF08() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000010 && 0x80000001BFAB9900 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1BFAAFF08();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1BFA7EBBC(char a1)
{
  result = 0x6974736567677573;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6349776F6873;
      break;
    case 2:
      result = 0x617461446E6F6369;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x427070416E6F6369;
      break;
    case 6:
      result = 0x5479616C70736964;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x626D79536E6F6369;
      break;
    case 9:
      result = 0x7470697263736564;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA7ED28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA7E840(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA7ED50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA7EBB4();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA7ED78(uint64_t a1)
{
  v2 = sub_1BFA859D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA7EDB4(uint64_t a1)
{
  v2 = sub_1BFA859D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriHelpSuggestion.encode(to:)()
{
  OUTLINED_FUNCTION_52_5();
  v28 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE58, &qword_1BFAB5460);
  OUTLINED_FUNCTION_2_3(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v26 - v11;
  v14 = *v0;
  v13 = v0[1];
  v27 = *(v0 + 16);
  v15 = v0[3];
  v26[16] = v0[4];
  v26[17] = v15;
  v16 = v0[5];
  v26[14] = v0[6];
  v26[15] = v16;
  v17 = v0[7];
  v26[12] = v0[8];
  v26[13] = v17;
  v18 = v0[10];
  v26[10] = v0[9];
  v26[11] = v18;
  v19 = v0[12];
  v26[8] = v0[11];
  v26[9] = v19;
  v20 = v0[14];
  v26[6] = v0[13];
  v26[7] = v20;
  v21 = v0[16];
  v26[4] = v0[15];
  v26[5] = v21;
  v22 = v0[18];
  v26[2] = v0[17];
  v26[3] = v22;
  v23 = v0[20];
  v26[0] = v0[19];
  v26[1] = v23;
  v24 = v3[4];
  OUTLINED_FUNCTION_83_1(v3, v3[3]);
  sub_1BFA859D0();
  sub_1BFAB0008();
  v25 = v28;
  sub_1BFAAFE38();
  if (!v25)
  {
    sub_1BFAAFE48();
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE38();
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE38();
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE38();
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE38();
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE78();
    OUTLINED_FUNCTION_30_5(7);
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE38();
    v31 = 8;
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE38();
    v30 = 9;
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE38();
    v29 = 10;
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE38();
  }

  (*(v6 + 8))(v12, v4);
  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_51_3();
}

void SiriHelpSuggestion.init(from:)()
{
  OUTLINED_FUNCTION_52_5();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE68, &qword_1BFAB5468);
  OUTLINED_FUNCTION_2_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_61_3();
  v12 = v2[4];
  v47 = v2;
  OUTLINED_FUNCTION_83_1(v2, v2[3]);
  sub_1BFA859D0();
  sub_1BFAAFFF8();
  if (v0)
  {
    OUTLINED_FUNCTION_12_10();
    __swift_destroy_boxed_opaque_existential_2Tm(v2);

    if (v2)
    {
    }
  }

  else
  {
    v13 = v7;
    v14 = v4;
    LOBYTE(v52[0]) = 0;
    v15 = sub_1BFAAFD88();
    v45 = v16;
    OUTLINED_FUNCTION_3_11(1);
    v72 = sub_1BFAAFD98();
    OUTLINED_FUNCTION_3_11(2);
    v43 = sub_1BFAAFD88();
    v44 = v17;
    OUTLINED_FUNCTION_3_11(3);
    v41 = sub_1BFAAFD88();
    v42 = v18;
    OUTLINED_FUNCTION_3_11(4);
    v39 = sub_1BFAAFD88();
    v40 = v19;
    OUTLINED_FUNCTION_3_11(5);
    v37 = sub_1BFAAFD88();
    v38 = v20;
    OUTLINED_FUNCTION_3_11(6);
    v36 = sub_1BFAAFDC8();
    v46 = v21;
    OUTLINED_FUNCTION_3_11(7);
    v35 = sub_1BFAAFD88();
    v48 = v22;
    OUTLINED_FUNCTION_3_11(8);
    v34 = sub_1BFAAFD88();
    v50 = v23;
    OUTLINED_FUNCTION_3_11(9);
    v24 = sub_1BFAAFD88();
    v49 = v25;
    v26 = v24;
    v27 = sub_1BFAAFD88();
    v33 = v28;
    v29 = v27;
    v30 = *(v13 + 8);
    v31 = OUTLINED_FUNCTION_32_6();
    v32(v31);
    v51[0] = v15;
    v51[1] = v45;
    LOBYTE(v51[2]) = v72;
    v51[3] = v43;
    v51[4] = v44;
    v51[5] = v41;
    v51[6] = v42;
    v51[7] = v39;
    v51[8] = v40;
    v51[9] = v37;
    v51[10] = v38;
    v51[11] = v36;
    v51[12] = v46;
    v51[13] = v35;
    v51[14] = v48;
    v51[15] = v34;
    v51[16] = v50;
    v51[17] = v26;
    v51[18] = v49;
    v51[19] = v29;
    v51[20] = v33;
    memcpy(v14, v51, 0xA8uLL);
    sub_1BFA85A24(v51, v52);
    __swift_destroy_boxed_opaque_existential_2Tm(v47);
    v52[0] = v15;
    v52[1] = v45;
    v53 = v72;
    v54 = v43;
    v55 = v44;
    v56 = v41;
    v57 = v42;
    v58 = v39;
    v59 = v40;
    v60 = v37;
    v61 = v38;
    v62 = v36;
    v63 = v46;
    v64 = v35;
    v65 = v48;
    v66 = v34;
    v67 = v50;
    v68 = v26;
    v69 = v49;
    v70 = v29;
    v71 = v33;
    sub_1BFA85A5C(v52);
  }

  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_51_3();
}

uint64_t SiriHelpPatternParameters.speakSuggestions.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SiriHelpPatternParameters.suggestions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SiriHelpPatternParameters.otherSuggestions.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t SiriHelpPatternParameters.appBundleId.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t SiriHelpPatternParameters.moreSuggestionsDirectInvocation.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t SiriHelpPatternParameters.learnMorePunchout.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t SiriHelpPatternParameters.appName.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t SiriHelpPatternParameters.expectedAppName.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

double SiriHelpPatternParameters.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  strcpy((a1 + 40), "com.apple.siri");
  *(a1 + 55) = -18;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return result;
}

uint64_t SiriHelpPatternParameters.asDictionary.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = *(v8 + 2);
  v12 = *(v8 + 3);
  HIDWORD(v185) = v8[32];
  v195 = *(v8 + 5);
  v205 = *(v8 + 6);
  v225 = *(v8 + 7);
  v235 = *(v8 + 8);
  v245 = *(v8 + 9);
  v255 = *(v8 + 10);
  v13 = *(v8 + 11);
  v215 = *(v8 + 12);
  HIDWORD(v275) = v8[105];
  LODWORD(v285) = v8[106];
  HIDWORD(v285) = v8[107];
  *&__dst[24] = MEMORY[0x1E69E6370];
  __dst[0] = v9;
  OUTLINED_FUNCTION_53_5(a1, a2, a3, a4, a5, a6, a7, a8, v185, v195, v205, v215, v225, v235, v245, v255, v265, v275, v285, v295, *__dst);

  v14 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  v306 = v14;
  sub_1BFA26704(&v307, 0xD000000000000015);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB560, &qword_1BFAB5470);
  v23 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v24 = v10;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  *&__dst[24] = v15;
  *__dst = v24;
  OUTLINED_FUNCTION_53_5(v15, v16, v17, v18, v19, v20, v21, v22, v186, v196, v206, v216, v226, v236, v246, v256, v266, v276, v286, v296, *__dst);
  swift_isUniquelyReferenced_nonNull_native();
  v306 = v14;
  OUTLINED_FUNCTION_66_3();
  sub_1BFA26704(v25, 0xD000000000000010);
  v26 = *(v11 + 16);
  v267 = v26;
  if (v26)
  {
    *&v307 = v23;
    sub_1BFA2DD28(0, v26, 0);
    v23 = v307;
    v27 = (v11 + 32);
    v28 = v26;
    do
    {
      v29 = memcpy(__dst, v27, sizeof(__dst));
      v37 = SiriHelpSuggestion.toDictionary()(v29, v30, v31, v32, v33, v34, v35, v36);
      *&v307 = v23;
      v39 = *(v23 + 16);
      v38 = *(v23 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1BFA2DD28((v38 > 1), v39 + 1, 1);
        v23 = v307;
      }

      *(v23 + 16) = v39 + 1;
      *(v23 + 8 * v39 + 32) = v37;
      v27 += 168;
      --v28;
    }

    while (v28);
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE70, &unk_1BFAB5478);
  *&__dst[24] = v40;
  *__dst = v23;
  OUTLINED_FUNCTION_53_5(v40, v41, v42, v43, v44, v45, v46, v47, v187, v197, v207, v217, v227, v237, v247, v257, v267, v277, v287, v297, *__dst);
  swift_isUniquelyReferenced_nonNull_native();
  v306 = v14;
  v48 = sub_1BFA26704(&v307, 0x6974736567677573);
  v56 = v306;
  v57 = *(v12 + 16);
  v58 = MEMORY[0x1E69E7CC0];
  if (v57)
  {
    *&v307 = MEMORY[0x1E69E7CC0];
    sub_1BFA2DD28(0, v57, 0);
    v58 = v307;
    v59 = (v12 + 32);
    do
    {
      v60 = memcpy(__dst, v59, sizeof(__dst));
      v48 = SiriHelpSuggestion.toDictionary()(v60, v61, v62, v63, v64, v65, v66, v67);
      v68 = v48;
      *&v307 = v58;
      v70 = *(v58 + 16);
      v69 = *(v58 + 24);
      if (v70 >= v69 >> 1)
      {
        v48 = sub_1BFA2DD28((v69 > 1), v70 + 1, 1);
        v58 = v307;
      }

      *(v58 + 16) = v70 + 1;
      *(v58 + 8 * v70 + 32) = v68;
      v59 += 168;
      --v57;
    }

    while (v57);
  }

  *&__dst[24] = v40;
  *__dst = v58;
  OUTLINED_FUNCTION_53_5(v48, v49, v50, v51, v52, v53, v54, v55, v188, v198, v208, v218, v228, v238, v248, v258, v268, v278, v288, v298, *__dst);
  swift_isUniquelyReferenced_nonNull_native();
  v306 = v56;
  OUTLINED_FUNCTION_66_3();
  v72 = sub_1BFA26704(v71, 0xD000000000000010);
  v73 = MEMORY[0x1E69E6370];
  *&__dst[24] = MEMORY[0x1E69E6370];
  __dst[0] = BYTE4(v189);
  OUTLINED_FUNCTION_53_5(v72, v74, v75, v76, v77, v78, v79, v80, v189, v199, v209, v219, v229, v239, v249, v259, v269, v279, v289, v299, *__dst);
  swift_isUniquelyReferenced_nonNull_native();
  v81 = OUTLINED_FUNCTION_63_4();
  v82 = sub_1BFA26704(v81, 0xD000000000000019);
  v83 = v306;
  *&__dst[24] = MEMORY[0x1E69E6158];
  *__dst = v200;
  *&__dst[8] = v210;
  OUTLINED_FUNCTION_53_5(v82, v84, v85, v86, v87, v88, v89, v90, v190, v200, v210, v220, v230, v240, v250, v260, v270, v280, v290, v300, *__dst);

  swift_isUniquelyReferenced_nonNull_native();
  v306 = v83;
  v91 = sub_1BFA26704(&v307, 0x6C646E7542707061);
  v99 = v306;
  v100 = v221;
  if (v13)
  {
    v306 = v13;
    sub_1BFAAE9A8();
    sub_1BFA85A8C();

    v101 = sub_1BFAAE9E8();
    *&__dst[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB958, &unk_1BFAB1EE0);
    *__dst = v101;
    OUTLINED_FUNCTION_53_5(*&__dst[24], v102, v103, v104, v105, v106, v107, v108, v191, v201, v211, v221, v231, v241, v251, v261, v271, v281, v291, v301, *__dst);
    swift_isUniquelyReferenced_nonNull_native();
    v301 = v99;
    sub_1BFA26704(&v307, 0x656D614E707061);
  }

  if (v100)
  {
    v306 = v100;
    sub_1BFAAE9A8();
    sub_1BFA85A8C();

    v109 = sub_1BFAAE9E8();
    *&__dst[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB958, &unk_1BFAB1EE0);
    *__dst = v109;
    OUTLINED_FUNCTION_53_5(*&__dst[24], v110, v111, v112, v113, v114, v115, v116, v191, v201, v211, v221, v231, v241, v251, v261, v271, v281, v291, v301, *__dst);
    swift_isUniquelyReferenced_nonNull_native();
    v301 = v99;
    sub_1BFA26704(&v307, 0x6465746365707865);
  }

  v117 = v231;
  if (v241)
  {
    v118 = MEMORY[0x1E69E6158];
    v119 = v241;
  }

  else
  {
    OUTLINED_FUNCTION_42_2();
    *&__dst[16] = 0;
  }

  *__dst = v117;
  *&__dst[8] = v119;
  *&__dst[24] = v118;
  if (v241)
  {
    OUTLINED_FUNCTION_53_5(v91, v92, v93, v94, v95, v96, v97, v98, v191, v201, v211, v221, v231, v241, v251, v261, v271, v281, v291, v301, *__dst);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_66_3();
    v122 = sub_1BFA26704(v120, v121);
    v99 = v306;
    v130 = v251;
    v131 = v261;
    if (v261)
    {
LABEL_23:
      v132 = MEMORY[0x1E69E6158];
      v133 = v131;
      goto LABEL_29;
    }
  }

  else
  {

    sub_1BFA20F44(__dst, &qword_1EBDFBA30, &unk_1BFAB5450);
    v134 = sub_1BFA01764(0xD00000000000001FLL, 0x80000001BFAB9980);
    if (v135)
    {
      v136 = v134;
      swift_isUniquelyReferenced_nonNull_native();
      v306 = v99;
      v137 = *(v99 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      OUTLINED_FUNCTION_88_2();
      OUTLINED_FUNCTION_87_1();
      sub_1BFA27FE0((*(v99 + 56) + 32 * v136), &v307);
      sub_1BFAAFCF8();
    }

    else
    {
      v307 = 0u;
      v308 = 0u;
    }

    v130 = v251;
    v131 = v261;
    v122 = sub_1BFA20F44(&v307, &qword_1EBDFBA30, &unk_1BFAB5450);
    if (v261)
    {
      goto LABEL_23;
    }
  }

  v130 = 0;
  v133 = 0;
  v132 = 0;
  *&__dst[16] = 0;
LABEL_29:
  *__dst = v130;
  *&__dst[8] = v133;
  *&__dst[24] = v132;
  if (v131)
  {
    OUTLINED_FUNCTION_53_5(v122, v123, v124, v125, v126, v127, v128, v129, v191, v201, v211, v221, v231, v241, v251, v261, v271, v281, v291, v301, *__dst);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_66_3();
    v140 = sub_1BFA26704(v138, v139);
    v149 = v291;
    v148 = BYTE4(v291);
    v150 = BYTE4(v281);
  }

  else
  {

    sub_1BFA20F44(__dst, &qword_1EBDFBA30, &unk_1BFAB5450);
    v151 = sub_1BFA01764(0xD000000000000011, 0x80000001BFAB99A0);
    if (v152)
    {
      v153 = v151;
      swift_isUniquelyReferenced_nonNull_native();
      v306 = v99;
      v154 = *(v99 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      OUTLINED_FUNCTION_88_2();
      OUTLINED_FUNCTION_87_1();
      sub_1BFA27FE0((*(v99 + 56) + 32 * v153), &v307);
      sub_1BFAAFCF8();
    }

    else
    {
      v307 = 0u;
      v308 = 0u;
    }

    v149 = v291;
    v148 = BYTE4(v291);
    v150 = BYTE4(v281);
    v140 = sub_1BFA20F44(&v307, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  *&__dst[24] = v73;
  __dst[0] = v150;
  OUTLINED_FUNCTION_53_5(v140, v141, v142, v143, v144, v145, v146, v147, v191, v201, v211, v221, v231, v241, v251, v261, v271, v281, v291, v301, *__dst);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_66_3();
  v157 = sub_1BFA26704(v155, v156);
  *&__dst[24] = MEMORY[0x1E69E6530];
  *__dst = v272;
  OUTLINED_FUNCTION_53_5(v157, v158, v159, v160, v161, v162, v163, v164, v192, v202, v212, v222, v232, v242, v252, v262, v272, v282, v292, v302, *__dst);
  swift_isUniquelyReferenced_nonNull_native();
  v165 = OUTLINED_FUNCTION_63_4();
  v166 = sub_1BFA26704(v165, 0xD000000000000013);
  v167 = v306;
  *&__dst[24] = v73;
  __dst[0] = v149;
  OUTLINED_FUNCTION_53_5(v166, v168, v169, v170, v171, v172, v173, v174, v193, v203, v213, v223, v233, v243, v253, v263, v273, v283, v293, v303, *__dst);
  swift_isUniquelyReferenced_nonNull_native();
  v306 = v167;
  v175 = sub_1BFA26704(&v307, 0x61626C6C61467369);
  *&__dst[24] = v73;
  __dst[0] = v148;
  OUTLINED_FUNCTION_53_5(v175, v176, v177, v178, v179, v180, v181, v182, v194, v204, v214, v224, v234, v244, v254, v264, v274, v284, v294, v304, *__dst);
  swift_isUniquelyReferenced_nonNull_native();
  v183 = OUTLINED_FUNCTION_63_4();
  sub_1BFA26704(v183, 0xD000000000000012);
  return v306;
}