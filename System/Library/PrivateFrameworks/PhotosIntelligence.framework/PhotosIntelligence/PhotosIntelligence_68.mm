uint64_t static CompletionParser.parseCompletions<A>(from:eventRecorder:completionIterator:)()
{
  OUTLINED_FUNCTION_42();
  v1[32] = v2;
  v1[33] = v0;
  v1[30] = v3;
  v1[31] = v4;
  v1[28] = v5;
  v1[29] = v6;
  v1[27] = v7;
  v1[34] = *(v4 - 8);
  v1[35] = OUTLINED_FUNCTION_81_0();
  v1[36] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  OUTLINED_FUNCTION_76(v8);
  v1[37] = OUTLINED_FUNCTION_77();
  v9 = sub_1C754D84C();
  v1[38] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[39] = v10;
  v1[40] = OUTLINED_FUNCTION_77();
  v11 = type metadata accessor for LLMResponse.AsyncIterator(0);
  OUTLINED_FUNCTION_76(v11);
  v1[41] = OUTLINED_FUNCTION_77();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C220);
  OUTLINED_FUNCTION_76(v12);
  v1[42] = OUTLINED_FUNCTION_81_0();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v13 = sub_1C754DF6C();
  v1[47] = v13;
  OUTLINED_FUNCTION_18(v13);
  v1[48] = v14;
  v1[49] = OUTLINED_FUNCTION_81_0();
  v1[50] = swift_task_alloc();
  v15 = sub_1C754F38C();
  v1[51] = v15;
  OUTLINED_FUNCTION_18(v15);
  v1[52] = v16;
  v1[53] = OUTLINED_FUNCTION_81_0();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1C746D788()
{
  v1 = *(v0 + 408);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *(v0 + 224);
  *(v0 + 200) = MEMORY[0x1E69E7CC0];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_33_41();
  sub_1C754F1CC();
  sub_1C754DF5C();
  v4 = OUTLINED_FUNCTION_31_45();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v1);
  type metadata accessor for LLMResponse(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
  sub_1C7550DBC();
  swift_beginAccess();
  *(v0 + 448) = 0;
  *(v0 + 456) = v2;
  *(v0 + 480) = v2;
  *(v0 + 488) = v2;
  *(v0 + 464) = v2;
  *(v0 + 472) = v2;
  *(v0 + 528) = 0;
  v7 = swift_task_alloc();
  *(v0 + 496) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8);
  OUTLINED_FUNCTION_3_118();
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_9_89();

  return MEMORY[0x1EEE6DB98](v9);
}

uint64_t sub_1C746D8E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 504) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C746DA00()
{
  v204 = v0;
  v2 = *(v0 + 520);
  if (!v2)
  {
    v26 = *(v0 + 368);
    v27 = *(v0 + 336);
    sub_1C7471C8C(*(v0 + 328));
    sub_1C7471CE8(v26, v27);
    OUTLINED_FUNCTION_601(v27);
    if (v36)
    {
      sub_1C7030CDC(*(v0 + 336), &qword_1EC21C220);
      v28 = *(v0 + 448);
LABEL_68:
      if (qword_1EC214188 != -1)
      {
        OUTLINED_FUNCTION_0_191();
        swift_once();
      }

      v175 = sub_1C754FF1C();
      __swift_project_value_buffer(v175, qword_1EC21C208);
      v176 = sub_1C754FEEC();
      v177 = sub_1C755117C();
      if (os_log_type_enabled(v176, v177))
      {
        OUTLINED_FUNCTION_13_3();
        v178 = swift_slowAlloc();
        *v178 = 134217984;
        *(v178 + 4) = v28;
        _os_log_impl(&dword_1C6F5C000, v176, v177, "Total number of tokens: %ld", v178, 0xCu);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v179 = *(v0 + 440);
      v180 = *(v0 + 416);
      v181 = *(v0 + 400);
      v182 = *(v0 + 408);
      v183 = *(v0 + 384);
      v185 = *(v0 + 368);
      v184 = *(v0 + 376);
      OUTLINED_FUNCTION_36_38();

      sub_1C7030CDC(v185, &qword_1EC21C220);
      (*(v183 + 8))(v181, v184);
      (*(v180 + 8))(v179, v182);

      OUTLINED_FUNCTION_43();
      goto LABEL_73;
    }

    v43 = *(v0 + 480);
    v44 = *(v0 + 448);
    (*(*(v0 + 416) + 32))(*(v0 + 424), *(v0 + 336), *(v0 + 408));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1C755BAB0;
    *(v45 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    *(v45 + 32) = v43;
    sub_1C75504FC();
    sub_1C7551F0C();

    v46 = *(v43 + 16);
    v47 = __OFADD__(v44, v46);
    v48 = v44 + v46;
    if (v47)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_20_18();
      sub_1C6FB0600();
      v49 = *(*(v0 + 200) + 16);
      sub_1C6FB0EFC();
      v1 = *(v0 + 200);
      *(v1 + 16) = v49 + 1;
      v50 = v1 + 16 * v49;
      *(v50 + 32) = 125;
      *(v50 + 40) = 0xE100000000000000;
      *(v0 + 200) = v1;
      swift_endAccess();
      if (qword_1EC214188 == -1)
      {
LABEL_26:
        v51 = sub_1C754FF1C();
        __swift_project_value_buffer(v51, qword_1EC21C208);
        v52 = sub_1C754FEEC();
        v53 = sub_1C755117C();
        v201 = v48;
        if (OUTLINED_FUNCTION_128(v53))
        {
          v54 = OUTLINED_FUNCTION_23_1();
          OUTLINED_FUNCTION_98();
          v55 = swift_slowAlloc();
          v203[0] = v55;
          *v54 = 134218243;
          OUTLINED_FUNCTION_28_40(*(v1 + 16) - 1);
          v56 = sub_1C75504FC();
          MEMORY[0x1CCA5D090](v56, MEMORY[0x1E69E6158]);
          OUTLINED_FUNCTION_59();

          v57 = OUTLINED_FUNCTION_98_1();
          v60 = sub_1C6F765A4(v57, v58, v59);

          *(v54 + 14) = v60;
          _os_log_impl(&dword_1C6F5C000, v52, v53, "Making completion (%ld tokens): %{sensitive}s", v54, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v55);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        v61 = *(v0 + 504);
        v62 = *(v0 + 280);
        v64 = *(v0 + 248);
        v63 = *(v0 + 256);
        __swift_project_boxed_opaque_existential_1(*(v0 + 224), *(*(v0 + 224) + 24));
        OUTLINED_FUNCTION_17_18();
        sub_1C754F1AC();
        v65 = sub_1C75504FC();
        static CompletionParser.parseCompletion<A>(from:)(v65, v64, v63, v62);
        if (v61)
        {

          v66 = v61;
          v67 = sub_1C754FEEC();
          v68 = sub_1C755119C();

          if (os_log_type_enabled(v67, v68))
          {
            OUTLINED_FUNCTION_13_3();
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            *v69 = 138412290;
            v71 = v61;
            v72 = _swift_stdlib_bridgeErrorToNSError();
            *(v69 + 4) = v72;
            *v70 = v72;
            OUTLINED_FUNCTION_145();
            _os_log_impl(v73, v74, v75, v76, v69, 0xCu);
            sub_1C7030CDC(v70, &qword_1EC215190);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          else
          {
          }

          v173 = OUTLINED_FUNCTION_15_1();
          v174(v173);
        }

        else
        {
          v167 = *(v0 + 280);
          v168 = *(v0 + 232);

          v168(v167);
          v169 = OUTLINED_FUNCTION_15_1();
          v170(v169);
          v171 = OUTLINED_FUNCTION_94();
          v172(v171);
        }

        v28 = v201;
        goto LABEL_68;
      }
    }

    OUTLINED_FUNCTION_0_191();
    swift_once();
    goto LABEL_26;
  }

  if ((*(v0 + 528) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 224), *(*(v0 + 224) + 24));
    OUTLINED_FUNCTION_17_18();
    sub_1C754F1AC();
  }

  *(v0 + 152) = *(v0 + 512);
  *(v0 + 160) = v2;
  sub_1C754D7FC();
  sub_1C6FB5E8C();
  v3 = sub_1C755154C();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_98_1();
  v7(v6);
  if (sub_1C755092C())
  {
    v8 = *(v0 + 464);

    if (*(v8 + 16))
    {
      if (qword_1EC214188 != -1)
      {
        OUTLINED_FUNCTION_0_191();
        swift_once();
      }

      v9 = sub_1C754FF1C();
      __swift_project_value_buffer(v9, qword_1EC21C208);
      v10 = sub_1C754FEEC();
      v11 = sub_1C755117C();
      if (OUTLINED_FUNCTION_128(v11))
      {
        v12 = *(v0 + 464);
        v13 = OUTLINED_FUNCTION_23_1();
        OUTLINED_FUNCTION_98();
        v14 = swift_slowAlloc();
        v203[0] = v14;
        *v13 = 134218243;
        OUTLINED_FUNCTION_28_40(*(v12 + 16));
        v15 = sub_1C75504FC();
        MEMORY[0x1CCA5D090](v15, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_59();

        v16 = OUTLINED_FUNCTION_98_1();
        v19 = sub_1C6F765A4(v16, v17, v18);

        *(v13 + 14) = v19;
        OUTLINED_FUNCTION_145();
        _os_log_impl(v20, v21, v22, v23, v13, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v14);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        v24 = *(v0 + 456);
        v25 = v24;
LABEL_44:
        v105 = *(v0 + 360);
        sub_1C7471CE8(*(v0 + 368), v105);
        OUTLINED_FUNCTION_601(v105);
        if (!v36)
        {
          sub_1C7030CDC(*(v0 + 360), &qword_1EC21C220);
          v116 = v24;
LABEL_57:
          *(v0 + 480) = v25;
          *(v0 + 488) = v116;
          *(v0 + 472) = v24;
          *(v0 + 528) = 1;
          v121 = swift_task_alloc();
          *(v0 + 496) = v121;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8);
          OUTLINED_FUNCTION_3_118();
          *v121 = v122;
          v125 = OUTLINED_FUNCTION_9_89(v123, v124);

          return MEMORY[0x1EEE6DB98](v125);
        }

        v106 = *(v0 + 400);
        v107 = *(v0 + 408);
        v109 = *(v0 + 384);
        v108 = *(v0 + 392);
        v110 = *(v0 + 368);
        v111 = *(v0 + 376);
        v112 = *(v0 + 352);
        v113 = *(v0 + 224);
        sub_1C7030CDC(*(v0 + 360), &qword_1EC21C220);
        sub_1C754DF5C();
        (*(v109 + 8))(v106, v111);
        (*(v109 + 32))(v106, v108, v111);
        __swift_project_boxed_opaque_existential_1(v113, v113[3]);
        OUTLINED_FUNCTION_19_75();
        sub_1C7030CDC(v110, &qword_1EC21C220);
        __swift_storeEnumTagSinglePayload(v112, 0, 1, v107);
        sub_1C7471D58(v112, v110);
        v25 = &unk_1F46AAB68;
        *(v0 + 200) = &unk_1F46AAB68;

        goto LABEL_47;
      }
    }

    v25 = *(v0 + 480);
    v24 = *(v0 + 464);
    goto LABEL_44;
  }

  v29 = *(v0 + 296);
  *(v0 + 168) = v3;
  *(v0 + 176) = v5;
  *(v0 + 184) = 125;
  *(v0 + 192) = 0xE100000000000000;
  sub_1C754E15C();
  v30 = OUTLINED_FUNCTION_31_45();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  OUTLINED_FUNCTION_30_49();
  sub_1C755157C();
  v35 = v34;
  sub_1C7030CDC(v29, &qword_1EC214DF8);
  if (v35)
  {
    v36 = v3 == 23901 && v5 == 0xE200000000000000;
    if (v36)
    {
    }

    else
    {
      v37 = sub_1C7551DBC();

      if ((v37 & 1) == 0)
      {
        if (!*(*(v0 + 472) + 16))
        {

          v25 = *(v0 + 480);
          v116 = *(v0 + 488);
          v115 = *(v0 + 464);
          v24 = *(v0 + 472);
          v114 = *(v0 + 456);
          goto LABEL_56;
        }

        OUTLINED_FUNCTION_20_18();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *(v0 + 472);
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_21;
        }

        goto LABEL_82;
      }
    }

    OUTLINED_FUNCTION_20_18();
    v117 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v0 + 472);
    if ((v117 & 1) == 0)
    {
      OUTLINED_FUNCTION_52_5();
      sub_1C6FB1814();
      v24 = v195;
    }

    v119 = v24[2];
    v118 = v24[3];
    if (v119 >= v118 >> 1)
    {
      OUTLINED_FUNCTION_15_2(v118);
      sub_1C6FB1814();
      v24 = v196;
    }

    v24[2] = v119 + 1;
    v120 = &v24[2 * v119];
    v120[4] = 93;
    v120[5] = 0xE100000000000000;
    *(v0 + 200) = v24;
    goto LABEL_54;
  }

  v77 = sub_1C755098C();
  v79 = v78;
  v81 = v80;
  v83 = v82;

  v84 = MEMORY[0x1CCA5CC40](v77, v79, v81, v83);
  v86 = v85;

  OUTLINED_FUNCTION_20_18();
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v0 + 488);
  if ((v87 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_5();
    sub_1C6FB1814();
    v24 = v193;
  }

  v88 = v24[2];
  if (v88 >= v24[3] >> 1)
  {
    OUTLINED_FUNCTION_52_5();
    sub_1C6FB1814();
    v24 = v194;
  }

  v24[2] = v88 + 1;
  v89 = &v24[2 * v88];
  v89[4] = v84;
  v89[5] = v86;
  *(v0 + 200) = v24;
  swift_endAccess();
  if (qword_1EC214188 != -1)
  {
    OUTLINED_FUNCTION_0_191();
    swift_once();
  }

  v90 = sub_1C754FF1C();
  __swift_project_value_buffer(v90, qword_1EC21C208);
  v91 = sub_1C754FEEC();
  v92 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v92))
  {
    v93 = OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_98();
    v94 = swift_slowAlloc();
    v203[0] = v94;
    v95 = OUTLINED_FUNCTION_34_43(3.8521e-34);
    v96 = MEMORY[0x1CCA5D090](v95, MEMORY[0x1E69E6158]);
    v98 = v97;

    v99 = sub_1C6F765A4(v96, v98, v203);

    *(v93 + 14) = v99;
    _os_log_impl(&dword_1C6F5C000, v91, v92, "Making completion (%ld tokens): %{sensitive}s", v93, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v94);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v100, v101);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v102, v103);
  }

  v104 = *(v0 + 344);
  sub_1C7471CE8(*(v0 + 368), v104);
  OUTLINED_FUNCTION_601(v104);
  if (v36)
  {
    sub_1C7030CDC(*(v0 + 344), &qword_1EC21C220);
LABEL_55:
    v25 = v24;
    v116 = v24;
    v114 = v24;
    v115 = v24;
    goto LABEL_56;
  }

  v126 = *(v0 + 408);
  v127 = *(v0 + 368);
  v128 = *(v0 + 224);
  (*(*(v0 + 416) + 32))(*(v0 + 432), *(v0 + 344), v126);
  __swift_project_boxed_opaque_existential_1(v128, v128[3]);
  OUTLINED_FUNCTION_17_18();
  sub_1C754F1AC();
  sub_1C7030CDC(v127, &qword_1EC21C220);
  v129 = OUTLINED_FUNCTION_31_45();
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v126);
  sub_1C754DF1C();
  v133 = v132;
  v134 = sub_1C754FEEC();
  v135 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v135))
  {
    v137 = -v133;
    OUTLINED_FUNCTION_98();
    v138 = swift_slowAlloc();
    v203[0] = swift_slowAlloc();
    *v138 = 136315650;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v139 = swift_allocObject();
    *(v139 + 16) = xmmword_1C755BAB0;
    v140 = MEMORY[0x1E69E6438];
    *(v139 + 56) = MEMORY[0x1E69E63B0];
    *(v139 + 64) = v140;
    *(v139 + 32) = v137;
    v141 = sub_1C75506BC();
    v143 = sub_1C6F765A4(v141, v142, v203);

    *(v138 + 4) = v143;
    *(v138 + 12) = 2048;
    *(v138 + 14) = v24[2];
    *(v138 + 22) = 2080;
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_1C755BAB0;
    v145 = (v24[2] - 1) / v137;
    *(v144 + 56) = MEMORY[0x1E69E63B0];
    *(v144 + 64) = v140;
    *(v144 + 32) = v145;
    v146 = sub_1C75506BC();
    v148 = sub_1C6F765A4(v146, v147, v203);

    *(v138 + 24) = v148;
    _os_log_impl(&dword_1C6F5C000, v134, v135, "Receiving completion took %s seconds for %ld tokens, %s", v138, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v149, v150);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v151, v152);
  }

  v153 = *(v0 + 504);
  v154 = *(v0 + 288);
  v156 = *(v0 + 248);
  v155 = *(v0 + 256);
  v157 = sub_1C75504FC();
  static CompletionParser.parseCompletion<A>(from:)(v157, v156, v155, v154);
  if (!v153)
  {
    v186 = *(v0 + 448);
    v2 = *(v0 + 288);
    v187 = *(v0 + 232);

    v187(v2);
    v188 = v24[2];
    v189 = v186 + v188;
    if (!__OFADD__(v186, v188))
    {
      v190 = *(v0 + 432);
      v191 = *(v0 + 408);
      v192 = *(v0 + 416);
      (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 248));
      (*(v192 + 8))(v190, v191);
      v25 = MEMORY[0x1E69E7CC0];
      *(v0 + 200) = MEMORY[0x1E69E7CC0];

      *(v0 + 448) = v189;
LABEL_47:
      v24 = v25;
      v116 = v25;
      v114 = v25;
      v115 = v25;
LABEL_56:
      *(v0 + 456) = v114;
      *(v0 + 464) = v115;
      goto LABEL_57;
    }

    __break(1u);
LABEL_82:
    OUTLINED_FUNCTION_52_5();
    sub_1C6FB1814();
    v24 = v197;
LABEL_21:
    v40 = v24[2];
    v39 = v24[3];
    if (v40 >= v39 >> 1)
    {
      OUTLINED_FUNCTION_15_2(v39);
      sub_1C6FB1814();
      v24 = v198;
    }

    v41 = *(v0 + 512);
    v24[2] = v40 + 1;
    v42 = &v24[2 * v40];
    v42[4] = v41;
    v42[5] = v2;
    *(v0 + 200) = v24;
LABEL_54:
    swift_endAccess();
    goto LABEL_55;
  }

  v202 = *(v0 + 440);
  v159 = *(v0 + 408);
  v158 = *(v0 + 416);
  v200 = *(v0 + 400);
  v161 = *(v0 + 376);
  v160 = *(v0 + 384);
  v162 = *(v0 + 368);
  v163 = *(v0 + 328);

  v164 = *(v158 + 8);
  v165 = OUTLINED_FUNCTION_15_1();
  v164(v165);
  sub_1C7471C8C(v163);
  sub_1C7030CDC(v162, &qword_1EC21C220);
  (*(v160 + 8))(v200, v161);
  (v164)(v202, v159);

  OUTLINED_FUNCTION_36_38();

  OUTLINED_FUNCTION_43();
LABEL_73:

  return v166();
}

uint64_t sub_1C746EBC8()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 208) = *(v0 + 504);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  swift_willThrowTypedImpl();
  v1 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C746EC50()
{
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[52];
  v4 = v0[46];
  sub_1C7471C8C(v0[41]);
  sub_1C7030CDC(v4, &qword_1EC21C220);
  v5 = OUTLINED_FUNCTION_15_1();
  v6(v5);
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t static CompletionParser.parseCompletion<A>(from:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = type metadata accessor for LLMResponse.AsyncIterator(0);
  OUTLINED_FUNCTION_76(v7);
  v1[11] = OUTLINED_FUNCTION_77();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C220);
  OUTLINED_FUNCTION_76(v8);
  v1[12] = OUTLINED_FUNCTION_81_0();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v9 = sub_1C754F38C();
  v1[15] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[16] = v10;
  v1[17] = OUTLINED_FUNCTION_81_0();
  v1[18] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C746EEF8()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  OUTLINED_FUNCTION_33_41();
  sub_1C754F1CC();
  OUTLINED_FUNCTION_52_5();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for LLMResponse(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
  sub_1C7550DBC();
  *(v0 + 152) = MEMORY[0x1E69E7CC0];
  *(v0 + 192) = 0;
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8);
  OUTLINED_FUNCTION_3_118();
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_10_82();

  return MEMORY[0x1EEE6DB98](v7);
}

uint64_t sub_1C746F020()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C746F138()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    if ((*(v0 + 192) & 1) == 0)
    {
      v2 = *(v0 + 112);
      v3 = *(v0 + 104);
      v4 = *(v0 + 56);
      __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      OUTLINED_FUNCTION_17_18();
      sub_1C754F1AC();
      __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      OUTLINED_FUNCTION_19_75();
      sub_1C7030CDC(v2, &qword_1EC21C220);
      OUTLINED_FUNCTION_52_5();
      __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
      sub_1C7471D58(v3, v2);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v0 + 152);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_49_33();
      v10 = v51;
    }

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      OUTLINED_FUNCTION_15_2(v11);
      sub_1C6FB1814();
      v10 = v52;
    }

    v13 = *(v0 + 176);
    *(v10 + 16) = v12 + 1;
    v14 = v10 + 16 * v12;
    *(v14 + 32) = v13;
    *(v14 + 40) = v1;
    *(v0 + 152) = v10;
    *(v0 + 192) = 1;
    v15 = swift_task_alloc();
    *(v0 + 160) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8);
    OUTLINED_FUNCTION_3_118();
    *v15 = v16;
    v17 = OUTLINED_FUNCTION_10_82();

    return MEMORY[0x1EEE6DB98](v17);
  }

  else
  {
    sub_1C7471C8C(*(v0 + 88));
    if (qword_1EC214188 != -1)
    {
      OUTLINED_FUNCTION_0_191();
      swift_once();
    }

    v18 = sub_1C754FF1C();
    __swift_project_value_buffer(v18, qword_1EC21C208);
    v19 = sub_1C754FEEC();
    v20 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v20))
    {
      v21 = *(v0 + 152);
      v22 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_98();
      v54 = swift_slowAlloc();
      *v22 = 134218243;
      OUTLINED_FUNCTION_28_40(*(v21 + 16));
      v23 = sub_1C75504FC();
      MEMORY[0x1CCA5D090](v23, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_59();

      v24 = OUTLINED_FUNCTION_98_1();
      v27 = sub_1C6F765A4(v24, v25, v26);

      *(v22 + 14) = v27;
      OUTLINED_FUNCTION_145();
      _os_log_impl(v28, v29, v30, v31, v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v54);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v32 = *(v0 + 96);
    sub_1C7471CE8(*(v0 + 112), v32);
    OUTLINED_FUNCTION_601(v32);
    if (v33)
    {
      sub_1C7030CDC(*(v0 + 96), &qword_1EC21C220);
    }

    else
    {
      v34 = OUTLINED_FUNCTION_46_38();
      v35(v34);
      OUTLINED_FUNCTION_25_12();
      v36 = OUTLINED_FUNCTION_94();
      v37(v36);
    }

    v38 = *(v0 + 168);
    v39 = *(v0 + 64);
    v40 = *(v0 + 72);
    v41 = *(v0 + 40);
    v42 = sub_1C75504FC();
    static CompletionParser.parseCompletion<A>(from:)(v42, v39, v40, v41);
    if (v38)
    {

      v43 = *(v0 + 144);
      v44 = *(v0 + 128);
      v45 = *(v0 + 120);
      sub_1C7030CDC(*(v0 + 112), &qword_1EC21C220);
      (*(v44 + 8))(v43, v45);
    }

    else
    {
      v47 = *(v0 + 144);
      v48 = *(v0 + 120);
      v49 = *(v0 + 128);
      v50 = *(v0 + 112);

      sub_1C7030CDC(v50, &qword_1EC21C220);
      (*(v49 + 8))(v47, v48);
    }

    OUTLINED_FUNCTION_43();

    return v46();
  }
}

uint64_t sub_1C746F5DC()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 32) = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  swift_willThrowTypedImpl();
  v1 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C746F664()
{
  sub_1C7471C8C(v0[11]);
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[15];
  sub_1C7030CDC(v0[14], &qword_1EC21C220);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t static CompletionParser.parseCompletions<A>(from:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return OUTLINED_FUNCTION_0_67(sub_1C746F788);
}

uint64_t sub_1C746F788()
{
  v4 = *(v0 + 40);
  *(v0 + 16) = sub_1C7550BAC();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *(v1 + 16) = v4;
  *(v1 + 32) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1C746F87C;

  return static CompletionParser.parseCompletions<A>(from:eventRecorder:completionIterator:)();
}

uint64_t sub_1C746F87C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C746F99C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C746FA00(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_1C7550C3C();
  return sub_1C7550C0C();
}

uint64_t static CompletionParser.parseListOfStrings(from:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v0[16] = v1;
  v0[17] = v2;
  v3 = sub_1C754D84C();
  v0[18] = v3;
  OUTLINED_FUNCTION_18(v3);
  v0[19] = v4;
  v0[20] = OUTLINED_FUNCTION_81_0();
  v0[21] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BE8);
  OUTLINED_FUNCTION_76(v5);
  v0[22] = OUTLINED_FUNCTION_77();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BF0);
  v0[23] = v6;
  OUTLINED_FUNCTION_18(v6);
  v0[24] = v7;
  v0[25] = OUTLINED_FUNCTION_77();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BF8);
  v0[26] = v8;
  OUTLINED_FUNCTION_18(v8);
  v0[27] = v9;
  v0[28] = OUTLINED_FUNCTION_77();
  v10 = type metadata accessor for LLMResponse.AsyncIterator(0);
  OUTLINED_FUNCTION_76(v10);
  v0[29] = OUTLINED_FUNCTION_77();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C220);
  OUTLINED_FUNCTION_76(v11);
  v0[30] = OUTLINED_FUNCTION_81_0();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v12 = sub_1C754F38C();
  v0[33] = v12;
  OUTLINED_FUNCTION_18(v12);
  v0[34] = v13;
  v0[35] = OUTLINED_FUNCTION_81_0();
  v0[36] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C746FD14()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 136), *(*(v0 + 136) + 24));
  OUTLINED_FUNCTION_33_41();
  sub_1C754F1CC();
  OUTLINED_FUNCTION_52_5();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for LLMResponse(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
  sub_1C7550DBC();
  *(v0 + 296) = MEMORY[0x1E69E7CC0];
  *(v0 + 336) = 0;
  v5 = swift_task_alloc();
  *(v0 + 304) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8);
  OUTLINED_FUNCTION_3_118();
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_8_91();

  return MEMORY[0x1EEE6DB98](v7);
}

uint64_t sub_1C746FE3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C746FF54()
{
  v126 = v0;
  v1 = *(v0 + 328);
  if (!v1)
  {
    sub_1C7471C8C(*(v0 + 232));
    if (qword_1EC214188 != -1)
    {
      OUTLINED_FUNCTION_0_191();
      swift_once();
    }

    v19 = sub_1C754FF1C();
    __swift_project_value_buffer(v19, qword_1EC21C208);
    v20 = sub_1C754FEEC();
    v21 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v21))
    {
      v22 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_98();
      v23 = swift_slowAlloc();
      v125[0] = v23;
      v24 = OUTLINED_FUNCTION_34_43(3.8521e-34);
      MEMORY[0x1CCA5D090](v24, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_59();

      v25 = OUTLINED_FUNCTION_98_1();
      v28 = sub_1C6F765A4(v25, v26, v27);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_1C6F5C000, v20, v21, "Received (%ld tokens): %{sensitive}s", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v29 = *(v0 + 240);
    sub_1C7471CE8(*(v0 + 256), v29);
    OUTLINED_FUNCTION_601(v29);
    if (v30)
    {
      sub_1C7030CDC(*(v0 + 240), &qword_1EC21C220);
    }

    else
    {
      v31 = OUTLINED_FUNCTION_46_38();
      v32(v31);
      OUTLINED_FUNCTION_25_12();
      v33 = OUTLINED_FUNCTION_94();
      v34(v33);
    }

    *(v0 + 120) = *(v0 + 296);
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_0_118();
    sub_1C7099594(v35, &unk_1EC217A00);
    v36 = sub_1C75505FC();
    v38 = v37;

    sub_1C75504FC();
    v39 = sub_1C754FEEC();
    v40 = sub_1C755117C();

    if (os_log_type_enabled(v39, v40))
    {
      OUTLINED_FUNCTION_13_3();
      v41 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v42 = swift_slowAlloc();
      v125[0] = v42;
      *v41 = 136642819;
      *(v41 + 4) = sub_1C6F765A4(v36, v38, v125);
      OUTLINED_FUNCTION_113(&dword_1C6F5C000, v43, v44, "Parsing list of strings: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v46 = *(v0 + 176);
    v45 = *(v0 + 184);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C18);
    sub_1C7099594(&qword_1EDD0CB18, &qword_1EC216BF8);
    sub_1C754EE4C();
    sub_1C74717B4();
    if (__swift_getEnumTagSinglePayload(v46, 1, v45) == 1)
    {
      sub_1C7030CDC(*(v0 + 176), &qword_1EC216BE8);
      v48 = sub_1C754FEEC();
      v49 = sub_1C755119C();
      if (OUTLINED_FUNCTION_128(v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        OUTLINED_FUNCTION_145();
        _os_log_impl(v51, v52, v53, v54, v50, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v56 = *(v0 + 216);
      v55 = *(v0 + 224);
      v57 = *(v0 + 208);

      sub_1C7413570();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      *v58 = v36;
      v58[1] = v38;
      v58[2] = 0;
      v58[3] = 0;
      v58[4] = 0xC000000000000000;
      swift_willThrow();
      (*(v56 + 8))(v55, v57);
      OUTLINED_FUNCTION_43_38();
      sub_1C7030CDC(v47, &qword_1EC21C220);
      v48[1](v36, v56 + 8);

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_128_0();

      __asm { BRAA            X1, X16 }
    }

    v62 = *(v0 + 192);
    v61 = *(v0 + 200);
    v64 = *(v0 + 176);
    v63 = *(v0 + 184);

    (*(v62 + 32))(v61, v64, v63);
    swift_getKeyPath();
    sub_1C754EE7C();

    v65 = MEMORY[0x1CCA5CC40](*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
    v67 = v66;

    sub_1C75504FC();
    v68 = sub_1C754FEEC();
    LOBYTE(v62) = sub_1C755117C();

    if (os_log_type_enabled(v68, v62))
    {
      OUTLINED_FUNCTION_13_3();
      v69 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v70 = swift_slowAlloc();
      v125[0] = v70;
      *v69 = 136642819;
      *(v69 + 4) = sub_1C6F765A4(v65, v67, v125);
      OUTLINED_FUNCTION_113(&dword_1C6F5C000, v71, v72, "Regex match: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v70);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v73 = *(v0 + 168);
    sub_1C754D7DC();
    sub_1C754D81C();
    v74 = sub_1C7471998(v65, v67, v73);
    v76 = v75;
    sub_1C75504FC();
    v77 = sub_1C754FEEC();
    v78 = sub_1C755117C();

    if (os_log_type_enabled(v77, v78))
    {
      OUTLINED_FUNCTION_13_3();
      v79 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v80 = swift_slowAlloc();
      v125[0] = v80;
      *v79 = 136642819;
      sub_1C75504FC();
      v81 = sub_1C6F765A4(v74, v76, v125);

      *(v79 + 4) = v81;
      OUTLINED_FUNCTION_113(&dword_1C6F5C000, v82, v83, "Trimmed match: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v80);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    *(v0 + 64) = v74;
    *(v0 + 72) = v76;
    *(v0 + 80) = 44;
    *(v0 + 88) = 0xE100000000000000;
    sub_1C6FB5E8C();
    v84 = sub_1C755152C();
    v85 = *(v84 + 16);
    if (v85)
    {
      v86 = *(v0 + 152);
      v125[0] = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      v87 = v125[0];
      v88 = (v86 + 8);
      v89 = (v84 + 40);
      do
      {
        v90 = *(v0 + 160);
        v91 = *(v0 + 144);
        v92 = *v89;
        *(v0 + 96) = *(v89 - 1);
        *(v0 + 104) = v92;
        sub_1C75504FC();
        sub_1C754D7FC();
        v93 = sub_1C755154C();
        v95 = v94;
        (*v88)(v90, v91);

        v125[0] = v87;
        v96 = *(v87 + 16);
        if (v96 >= *(v87 + 24) >> 1)
        {
          sub_1C6F7ED9C();
          v87 = v125[0];
        }

        *(v87 + 16) = v96 + 1;
        v97 = v87 + 16 * v96;
        *(v97 + 32) = v93;
        *(v97 + 40) = v95;
        v89 += 2;
        --v85;
      }

      while (v85);
    }

    else
    {

      v87 = MEMORY[0x1E69E7CC0];
    }

    sub_1C75504FC();
    v98 = v87;
    v99 = sub_1C754FEEC();
    v100 = sub_1C755117C();

    v101 = os_log_type_enabled(v99, v100);
    v102 = *(v0 + 288);
    v104 = *(v0 + 264);
    v103 = *(v0 + 272);
    v105 = *(v0 + 256);
    v106 = *(v0 + 216);
    v124 = *(v0 + 224);
    v122 = *(v0 + 200);
    v123 = *(v0 + 208);
    v107 = *(v0 + 192);
    v121 = *(v0 + 184);
    if (v101)
    {
      OUTLINED_FUNCTION_13_3();
      v120 = v104;
      v108 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v119 = v102;
      v109 = swift_slowAlloc();
      v125[0] = v109;
      *v108 = 136642819;
      v110 = MEMORY[0x1CCA5D090](v98, MEMORY[0x1E69E6158]);
      v118 = v105;
      v112 = sub_1C6F765A4(v110, v111, v125);

      *(v108 + 4) = v112;
      _os_log_impl(&dword_1C6F5C000, v99, v100, "Result string array: %{sensitive}s", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v109);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      (*(v107 + 8))(v122, v121);
      (*(v106 + 8))(v124, v123);
      sub_1C7030CDC(v118, &qword_1EC21C220);
      (*(v103 + 8))(v119, v120);
    }

    else
    {

      (*(v107 + 8))(v122, v121);
      (*(v106 + 8))(v124, v123);
      sub_1C7030CDC(v105, &qword_1EC21C220);
      (*(v103 + 8))(v102, v104);
    }

    (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));

    OUTLINED_FUNCTION_128_0();

    __asm { BRAA            X2, X16 }
  }

  if ((*(v0 + 336) & 1) == 0)
  {
    v2 = *(v0 + 256);
    v3 = *(v0 + 248);
    v4 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    OUTLINED_FUNCTION_17_18();
    sub_1C754F1AC();
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    OUTLINED_FUNCTION_19_75();
    sub_1C7030CDC(v2, &qword_1EC21C220);
    OUTLINED_FUNCTION_52_5();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    sub_1C7471D58(v3, v2);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 296);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_49_33();
    v10 = v115;
  }

  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  if (v12 >= v11 >> 1)
  {
    OUTLINED_FUNCTION_15_2(v11);
    sub_1C6FB1814();
    v10 = v116;
  }

  v13 = *(v0 + 320);
  *(v10 + 16) = v12 + 1;
  v14 = v10 + 16 * v12;
  *(v14 + 32) = v13;
  *(v14 + 40) = v1;
  *(v0 + 296) = v10;
  *(v0 + 336) = 1;
  v15 = swift_task_alloc();
  *(v0 + 304) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8);
  OUTLINED_FUNCTION_3_118();
  *v15 = v16;
  OUTLINED_FUNCTION_8_91();
  OUTLINED_FUNCTION_128_0();

  return MEMORY[0x1EEE6DB98](v17);
}

uint64_t sub_1C7470BEC()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 112) = *(v0 + 312);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  swift_willThrowTypedImpl();
  v1 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C7470C74()
{
  sub_1C7471C8C(*(v1 + 232));
  OUTLINED_FUNCTION_43_38();
  sub_1C7030CDC(v4, &qword_1EC21C220);
  (*(v0 + 8))(v2, v3);

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C7470DA8@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C60);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v40 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BF8);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v45 = sub_1C754EDEC();
  v10 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C58);
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v33 = &v30 - v16;
  v49 = 91;
  v50 = 0xE100000000000000;
  v35 = sub_1C7099334();
  MEMORY[0x1CCA5AA40](v51, &v49, MEMORY[0x1E69E6158], v35);
  sub_1C754E55C();
  sub_1C74712E0(v6);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C18);
  sub_1C7099594(&qword_1EDD0CB20, &qword_1EC216C60);
  v31 = v9;
  v32 = v1;
  sub_1C754EDBC();
  v38 = *(v2 + 8);
  v39 = v2 + 8;
  v38(v6, v1);
  v18 = *(v10 + 8);
  v36 = v10 + 8;
  v37 = v18;
  v18(v12, v45);
  MEMORY[0x1CCA5AA90](v9, v17);
  v19 = sub_1C7099594(&qword_1EDD0CB50, &qword_1EC216C58);
  v20 = v33;
  v21 = v44;
  MEMORY[0x1CCA5AA40](v14, v44, v19);
  v22 = *(v46 + 8);
  v46 += 8;
  v34 = v22;
  v22(v14, v21);
  v47 = 93;
  v48 = 0xE100000000000000;
  MEMORY[0x1CCA5AA40](&v49, &v47, MEMORY[0x1E69E6158], v35);
  v47 = v51[0];
  v48 = v51[1];
  sub_1C754E53C();

  sub_1C754E55C();
  v23 = v40;
  v24 = v32;
  sub_1C754EDAC();
  v25 = v31;
  v26 = v20;
  v27 = v44;
  sub_1C754ED9C();
  v28 = v38;
  v38(v23, v24);
  v37(v12, v45);
  sub_1C746C854(v25, v49, v50, v43);

  (*(v41 + 8))(v25, v42);
  v28(v6, v24);
  return v34(v26, v27);
}

uint64_t sub_1C74712E0@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_1C754E56C();
  v38 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C60);
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v33 - v12;
  v39 = sub_1C754EDEC();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v33 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C68);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C80);
  v35 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v34 = &v33 - v21;
  v22 = sub_1C754EE2C();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v22);
  sub_1C754E55C();
  sub_1C754EDFC();
  v23 = sub_1C709953C();
  MEMORY[0x1CCA5AA40](v3, v1, v23);
  v24 = *(v38 + 8);
  v24(v3, v1);
  sub_1C754E53C();
  v24(v6, v1);
  sub_1C7099594(&qword_1EDD0CB20, &qword_1EC216C60);
  v25 = MEMORY[0x1E69E67B0];
  v26 = v36;
  v27 = v40;
  v28 = v33;
  sub_1C754EDCC();
  (*(v41 + 8))(v10, v27);
  (*(v37 + 8))(v28, v39);
  sub_1C7030CDC(v16, &qword_1EC216C68);
  MEMORY[0x1CCA5AAA0](v26, v25);
  v29 = sub_1C7099594(&qword_1EDD0CB48, &qword_1EC216C80);
  v30 = v34;
  MEMORY[0x1CCA5AA40](v19, v17, v29);
  v31 = *(v35 + 8);
  v31(v19, v17);
  sub_1C754E53C();
  return (v31)(v30, v17);
}

uint64_t sub_1C74717B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BF8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  sub_1C71CC484();
  sub_1C7099594(&qword_1EDD0CB18, &qword_1EC216BF8);
  sub_1C754EE1C();
  sub_1C754EE6C();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C7471998(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1C754D84C();
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v26 = 0xE000000000000000;
  v10 = HIBYTE(a2) & 0xF;
  v27 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22 = v10;
  if (v10)
  {
    v11 = 0;
    v21 = a2 & 0xFFFFFFFFFFFFFFLL;
    v19[1] = v3;
    v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v12 = (v7 + 16);
    v13 = (v7 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1C75517FC();
        v16 = v15;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v24[0] = v27;
          v24[1] = v21;
          if (*(v24 + v11) < 0)
          {
            switch(__clz(*(v24 + v11) ^ 0xFF))
            {
              case 0x1Au:
LABEL_19:
                v16 = 2;
                break;
              case 0x1Bu:
LABEL_20:
                v16 = 3;
                break;
              case 0x1Cu:
LABEL_21:
                v16 = 4;
                break;
              default:
                goto LABEL_13;
            }

            goto LABEL_14;
          }
        }

        else
        {
          v14 = v20;
          if ((v27 & 0x1000000000000000) == 0)
          {
            v14 = sub_1C75518FC();
          }

          if (*(v14 + v11) < 0)
          {
            switch(__clz(*(v14 + v11) ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_19;
              case 0x1Bu:
                goto LABEL_20;
              case 0x1Cu:
                goto LABEL_21;
              default:
                break;
            }
          }
        }

LABEL_13:
        v16 = 1;
      }

LABEL_14:
      (*v12)(v9, v23, v6);
      v17 = sub_1C754D82C();
      (*v13)(v9, v6);
      if (v17)
      {
        sub_1C755078C();
      }

      v11 += v16;
      if (v11 >= v22)
      {

        return v25;
      }
    }
  }

  return 0;
}

uint64_t sub_1C7471C8C(uint64_t a1)
{
  v2 = type metadata accessor for LLMResponse.AsyncIterator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C7471CE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7471D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7471E1C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 40))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*(a1 + 32) >> 57) >> 5) | (4 * ((*(a1 + 32) >> 57) & 0x18 | *(a1 + 32) & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C7471E70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t TitlingAdapterPromptGenerator.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC18PhotosIntelligence29TitlingAdapterPromptGenerator_logger;
  if (qword_1EC214190 != -1)
  {
    OUTLINED_FUNCTION_0_192();
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EC21C228);
  OUTLINED_FUNCTION_62_2();
  (*(v3 + 16))(v0 + v1);
  return v0;
}

uint64_t sub_1C7471FD8()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21C228);
  __swift_project_value_buffer(v0, qword_1EC21C228);
  return sub_1C754FEFC();
}

uint64_t TitlingAdapterPromptGenerator.init()()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence29TitlingAdapterPromptGenerator_logger;
  if (qword_1EC214190 != -1)
  {
    OUTLINED_FUNCTION_0_192();
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EC21C228);
  OUTLINED_FUNCTION_62_2();
  (*(v3 + 16))(v0 + v1);
  return v0;
}

uint64_t sub_1C74720EC(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 208);
  v5 = [*(a1 + 8) string];
  v6 = sub_1C755068C();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = sub_1C7472568(v4, a2, 0.5);
    v12 = sub_1C74722A8(v6, v8, v10, v11);
    if (!v16)
    {
      v2 = v12;
    }
  }

  else
  {

    v13 = sub_1C754FEEC();
    v2 = sub_1C75511AC();
    if (os_log_type_enabled(v13, v2))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C6F5C000, v13, v2, "Empty user prompt! Unexpected at this point!", v14, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C7472730();
    swift_allocError();
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1C74722A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C754FEEC();
  v8 = sub_1C75511BC();
  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_13_3();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1C6F765A4(0xD00000000000002BLL, 0x80000001C7594870, &v25);
    _os_log_impl(&dword_1C6F5C000, v7, v8, "Generate Prompt Bindings for Prompt Template V9: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v11 = sub_1C7473478();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAA0;
  *(inited + 32) = 0x7972657571;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 64) = 1701669236;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = v11;
  *(inited + 88) = v13;
  *(inited + 96) = 0x747865746E6F63;
  *(inited + 104) = 0xE700000000000000;
  *(inited + 112) = a3;
  *(inited + 120) = a4;
  sub_1C75504FC();
  sub_1C75504FC();
  v15 = sub_1C75504DC();
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  v17 = sub_1C75511BC();

  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_13_3();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136642819;
    v20 = sub_1C75504BC();
    v22 = sub_1C6F765A4(v20, v21, &v25);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "Prompt bindings for titling adapter: %{sensitive}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  return v15;
}

uint64_t sub_1C7472568(uint64_t a1, unint64_t *a2, double a3)
{
  sub_1C754D84C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v7 = sub_1C7472784(a1, a2);
  MEMORY[0x1CCA5CD70](v7);

  v8 = sub_1C74730DC(a3);
  if (v9)
  {
    MEMORY[0x1CCA5CD70](v8);
  }

  return 0;
}

unint64_t sub_1C7472730()
{
  result = qword_1EC21C248;
  if (!qword_1EC21C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C248);
  }

  return result;
}

uint64_t sub_1C7472784(uint64_t a1, unint64_t *a2)
{
  v38 = 0;
  v39 = 0xE000000000000000;
  v3 = sub_1C7472AD4(a1, a2);
  if (v4)
  {
    MEMORY[0x1CCA5CD70](v3);
  }

  if (qword_1EDD0E038 != -1)
  {
    swift_once();
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v6 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
  MEMORY[0x1EEE9AC00](v6);
  v28[2] = v7;
  sub_1C75504FC();
  v8 = sub_1C706CC1C(sub_1C7055510, v28, a1);
  v9 = *(v8 + 2);
  if (v9)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v10 = v36;
    v30 = "\n\nFull response:\n";
    v28[5] = v8;
    v11 = v8 + 144;
    v29 = xmmword_1C755BAB0;
    do
    {
      v35 = v9;
      v12 = *(v11 - 13);
      v13 = v10;
      v14 = *(v11 - 12);
      v15 = *(v11 - 11);
      v31 = *(v11 - 5);
      v32 = *(v11 - 4);
      v33 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v16 = swift_allocObject();
      *(v16 + 16) = v29;
      *(v16 + 56) = MEMORY[0x1E69E6158];
      *(v16 + 64) = sub_1C6F6D524();
      *(v16 + 32) = v14;
      *(v16 + 40) = v15;
      v10 = v13;
      sub_1C75504FC();
      swift_bridgeObjectRetain_n();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v17 = sub_1C75506BC();
      v34 = v18;

      v36 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_15(v19);
        sub_1C6F7ED9C();
        v10 = v36;
      }

      *(v10 + 16) = v20 + 1;
      v21 = v10 + 16 * v20;
      v22 = v34;
      v23 = v35;
      *(v21 + 32) = v17;
      *(v21 + 40) = v22;
      v11 += 120;
      v9 = v23 - 1;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  if (*(v10 + 16))
  {
    v24 = OUTLINED_FUNCTION_4_107(v10);
    v26 = v25;

    v36 = v24;
    v37 = v26;
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](46, 0xE100000000000000);

    MEMORY[0x1CCA5CD70](v36, v37);
  }

  return v38;
}

uint64_t sub_1C7472AD4(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (qword_1EDD0E058 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
    v6 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E060);
    MEMORY[0x1EEE9AC00](v6);
    v54[2] = v7;
    sub_1C75504FC();
    v8 = sub_1C706CC1C(sub_1C70A97B0, v54, a1);
    if (!*(v8 + 2))
    {
      break;
    }

    v9 = *(v3 + 16) + 1;
    while (--v9)
    {
      v10 = (v3 + 72);
      v11 = *(v3 + 85);
      v3 += 72;
      if (v11 == 1)
      {
        v12 = *v10;
        v55 = *(v10 - 1);
        v57 = v12;
        sub_1C75504FC();
        goto LABEL_8;
      }
    }

    v55 = 0;
    v57 = 0xE000000000000000;
LABEL_8:
    v13 = *(v4 + 16);
    a1 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      __dst[0] = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      a1 = __dst[0];
      v4 += 72;
      do
      {
        v14 = *(v4 - 8);
        v15 = *v4;
        __dst[0] = a1;
        v16 = *(a1 + 16);
        v17 = *(a1 + 24);
        sub_1C75504FC();
        if (v16 >= v17 >> 1)
        {
          sub_1C6F7ED9C();
          a1 = __dst[0];
        }

        *(a1 + 16) = v16 + 1;
        v18 = a1 + 16 * v16;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        v4 += 72;
        --v13;
      }

      while (v13);
    }

    v58 = sub_1C706D154(a1);
    v19 = 0;
    v20 = *(v8 + 2);
    v21 = 32;
    v60 = xmmword_1C755BAB0;
    v59 = MEMORY[0x1E69E7CC0];
    v56 = 32;
LABEL_14:
    v3 = v21 + 120 * v19;
    while (v20 != v19)
    {
      if (v19 >= *(v8 + 2))
      {
        __break(1u);
        goto LABEL_47;
      }

      memcpy(__dst, v8 + v3, 0x78uLL);
      v22 = __dst[2];
      v23 = __dst[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040);
      inited = swift_initStackObject();
      *(inited + 16) = v60;
      memcpy((inited + 32), __dst, 0x78uLL);
      sub_1C6FCA6E4(__dst, v61);
      sub_1C6FCA6E4(__dst, v61);
      sub_1C75504FC();
      static StoryGenerationUtilities.queryTokenPersonUUIDs(from:)();
      v26 = v25;
      swift_setDeallocating();
      sub_1C6FDC98C();
      a1 = sub_1C706D154(v26);
      v4 = *(a1 + 16);
      if (v4)
      {
        sub_1C72B8828();
        if (v27)
        {

          sub_1C6FDD548(__dst);
          v28 = 1;
        }

        else
        {
          if (v4 == 1)
          {
            v29 = sub_1C710D7C4(a1);
            v31 = v30;

            if (v31)
            {
              if (v29 == v55 && v31 == v57)
              {

                sub_1C6FDD548(__dst);
                v28 = 0;
              }

              else
              {
                v33 = sub_1C7551DBC();

                sub_1C6FDD548(__dst);
                if (v33)
                {
                  v28 = 0;
                }

                else
                {
                  v28 = 2;
                }
              }

              goto LABEL_32;
            }
          }

          else
          {
          }

          sub_1C6FDD548(__dst);
          v28 = 2;
        }

LABEL_32:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB3C90();
          v59 = v37;
        }

        v4 = *(v59 + 16);
        v34 = *(v59 + 24);
        a1 = v4 + 1;
        if (v4 >= v34 >> 1)
        {
          OUTLINED_FUNCTION_15(v34);
          sub_1C6FB3C90();
          v59 = v38;
        }

        ++v19;
        v35 = v59;
        *(v59 + 16) = a1;
        v36 = v35 + 24 * v4;
        *(v36 + 32) = v22;
        *(v36 + 40) = v23;
        *(v36 + 48) = v28;
        v21 = v56;
        goto LABEL_14;
      }

      sub_1C6FDD548(__dst);

      v3 += 120;
      ++v19;
    }

    v39 = v59;
    v40 = *(v59 + 16);
    if (!v40)
    {
      break;
    }

    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v3 = 0;
    a1 = __dst[0];
    v4 = v39 + 48;
    v57 = "%@ refers to a person/people";
    v58 = "%@ refers to a pet/pets";
    v56 = "%@ refers to a location";
    while (v3 < *(v39 + 16))
    {
      v41 = *(v4 - 16);
      v42 = *(v4 - 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v43 = swift_allocObject();
      *(v43 + 16) = v60;
      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = sub_1C6F6D524();
      *(v43 + 32) = v41;
      *(v43 + 40) = v42;
      swift_bridgeObjectRetain_n();
      v44 = sub_1C75506BC();
      v46 = v45;

      __dst[0] = a1;
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      if (v48 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_15(v47);
        sub_1C6F7ED9C();
        a1 = __dst[0];
      }

      ++v3;
      *(a1 + 16) = v48 + 1;
      v49 = a1 + 16 * v48;
      *(v49 + 32) = v44;
      *(v49 + 40) = v46;
      v4 += 24;
      v39 = v59;
      if (v40 == v3)
      {

        v50 = OUTLINED_FUNCTION_4_107(a1);
        v52 = v51;

        __dst[0] = v50;
        __dst[1] = v52;
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](46, 0xE100000000000000);

        return __dst[0];
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }

  return 0;
}

uint64_t sub_1C74730DC(double a1)
{
  v2 = objc_opt_self();
  if ([v2 useAllTraitsAboveThresholdInTitler])
  {
    [v2 minimumAssetOverlapForThresholdTitler];
    a1 = v3;
  }

  LOBYTE(v31) = 1;
  BYTE1(v31) = [v2 useStorytellerSelectedTraitsForTitler];
  BYTE2(v31) = [v2 useAllTraitsAboveThresholdInTitler];
  v32 = a1;
  v33 = 1;
  static TraitSelectionStrategy.sortedSelectedTraitTitles(from:traits:traitsSelectedByStoryteller:keyAssetUUID:options:)();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6 < 2)
  {

    v22 = sub_1C754FEEC();
    v23 = sub_1C75511BC();
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_13_3();
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v6;
      _os_log_impl(&dword_1C6F5C000, v22, v23, "Only %ld selected traits, not including traits in titler context", v24, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    return 0;
  }

  else
  {
    v7 = sub_1C754FEEC();
    v8 = sub_1C75511BC();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_13_3();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v9 = 136642819;
      v11 = MEMORY[0x1CCA5D090](v5, MEMORY[0x1E69E6158]);
      v13 = sub_1C6F765A4(v11, v12, &v31);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1C6F5C000, v7, v8, "Selected traits %{sensitive}s for titler context", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v30 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v14 = (v5 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v31 = 34;
      v32 = -1.7573882e159;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v15, v16);
      MEMORY[0x1CCA5CD70](34, 0xE100000000000000);

      v17 = v31;
      v18 = v32;
      v20 = *(v30 + 16);
      v19 = *(v30 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_15(v19);
        sub_1C6F7ED9C();
      }

      *(v30 + 16) = v20 + 1;
      v21 = v30 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v14 += 2;
      --v6;
    }

    while (v6);

    v25 = OUTLINED_FUNCTION_4_107(v30);
    v27 = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C755BAB0;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1C6F6D524();
    *(v28 + 32) = v25;
    *(v28 + 40) = v27;
    return sub_1C75506BC();
  }
}

uint64_t sub_1C7473478()
{
  v0 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  v7 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C754E03C();
  v15 = sub_1C754E09C();
  (*(v9 + 8))(v13, v7);
  [v14 setLocale_];

  sub_1C7069CE4(0x7979792045454545, 0xEF64642D4D4D2D79, v14);
  sub_1C754DF5C();
  v16 = sub_1C754DECC();
  (*(v2 + 8))(v6, v0);
  v17 = [v14 stringFromDate_];

  v18 = sub_1C755068C();
  return v18;
}

uint64_t TitlingAdapterPromptGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence29TitlingAdapterPromptGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_62_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t TitlingAdapterPromptGenerator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence29TitlingAdapterPromptGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_62_2();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TitlingAdapterPromptGenerator()
{
  result = qword_1EC21C250;
  if (!qword_1EC21C250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TitlingAdapterPromptGenerator.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C74739A0()
{
  result = qword_1EC21C260;
  if (!qword_1EC21C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C260);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TitlingAdapterPromptGenerator.CharacterAnnotationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7473AD4()
{
  result = qword_1EC21C268;
  if (!qword_1EC21C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C268);
  }

  return result;
}

uint64_t TraitCompletionProcessor.__allocating_init(with:storyAssetsFetcher:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  TraitCompletionProcessor.init(with:storyAssetsFetcher:)(a1, a2);
  return v4;
}

uint64_t TraitCompletionProcessor.traitAssetUUIDsByQuery(queries:fetcherType:options:eventRecorder:progressReporter:)(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 272) = a5;
  *(v6 + 280) = v5;
  *(v6 + 256) = a1;
  *(v6 + 264) = a4;
  *(v6 + 288) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3C0);
  OUTLINED_FUNCTION_15_3();
  *(v6 + 296) = v9;
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = sub_1C754F38C();
  OUTLINED_FUNCTION_15_3();
  *(v6 + 320) = v10;
  v11 = swift_task_alloc();
  *(v6 + 145) = *a2;
  v12 = *a3;
  *(v6 + 328) = v11;
  *(v6 + 336) = v12;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C7473CBC()
{
  v1 = *(v0 + 264);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v2 = *(v0 + 256);
  v3 = *(v2 + 16);
  *(v0 + 344) = v3;
  v4 = MEMORY[0x1E69E7CC0];
  v53 = v3;
  if (v3)
  {
    v54 = MEMORY[0x1E69E7CC0];
    sub_1C755195C();
    sub_1C70DF0F4();
    v5 = v2 + 40;
    do
    {
      sub_1C75504FC();
      OUTLINED_FUNCTION_82();
      sub_1C7073450();
      sub_1C755192C();
      sub_1C755196C();
      OUTLINED_FUNCTION_282();
      sub_1C755197C();
      sub_1C755193C();
      v5 += 16;
      --v3;
    }

    while (v3);
    v4 = v54;
  }

  *(v0 + 352) = v4;
  sub_1C75504FC();
  v6 = sub_1C754FEEC();
  v7 = sub_1C755117C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v6, v7, "Start query batch for traits with %ld", v8, 0xCu);
    OUTLINED_FUNCTION_79();
  }

  else
  {
  }

  *(v0 + 176) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(v0 + 184) = &off_1F46ACFD0;
  v9 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 integerValue];
  }

  else
  {
    v11 = 0;
  }

  v12 = v10 == 0;
  v13 = *(v0 + 336);
  v14 = *(v0 + 145);
  *(v0 + 152) = 1;
  *(v0 + 160) = v11;
  *(v0 + 168) = v12;
  v15 = objc_opt_self();
  v16 = [v15 globalTraitsMatchingEmbeddingSearchRetrievalLimit];
  sub_1C6FB5E28(v0 + 152, v0 + 32);
  *(v0 + 16) = v14;
  *(v0 + 24) = 1;
  *(v0 + 88) = 1;
  *(v0 + 96) = v13;
  *(v0 + 104) = vdupq_n_s64(0x64uLL);
  *(v0 + 120) = 1;
  *(v0 + 128) = 1;
  *(v0 + 136) = 700;
  *(v0 + 144) = 0;
  *(v0 + 72) = v16;
  *(v0 + 80) = 0;
  v17 = MEMORY[0x1E69E7CC8];
  *(v0 + 216) = 0;
  *(v0 + 224) = v17;
  sub_1C75504FC();
  LODWORD(v16) = [v15 usePhotoKitBatchSPIForRetrieval];
  v18 = sub_1C754FEEC();
  v19 = sub_1C75511BC();
  v20 = os_log_type_enabled(v18, v19);
  if (!v16)
  {
    if (v20)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1C6F5C000, v18, v19, "Use non-batch PhotoKit SPI for global traits retrieval", v38, 2u);
      MEMORY[0x1CCA5F8E0](v38, -1, -1);
    }

    v39 = sub_1C6FB6304();
    *(v0 + 384) = v39;
    if (!v39)
    {

      sub_1C754F2EC();
      OUTLINED_FUNCTION_28_41();
      __swift_destroy_boxed_opaque_existential_1(v0 + 152);
      OUTLINED_FUNCTION_2_129();
      v47 = OUTLINED_FUNCTION_4_108();
      v48(v47);

      OUTLINED_FUNCTION_10_83();
      OUTLINED_FUNCTION_21_62();

      __asm { BRAA            X2, X16 }
    }

    *(v0 + 392) = OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_storyAssetsFetcher;
    OUTLINED_FUNCTION_19_76();
    if (v40)
    {
      if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x1EEE2A6A0](v30, v31, v34, v35, v32, v36, v37, v33);
      }

      v41 = *(v31 + 32);
    }

    else
    {
      v41 = MEMORY[0x1CCA5DDD0](0);
    }

    *(v0 + 408) = v41;
    *(v0 + 416) = 1;
    OUTLINED_FUNCTION_18_66();
    sub_1C754F2DC();
    v42 = OUTLINED_FUNCTION_16_67();
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    OUTLINED_FUNCTION_15_3();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 424) = v43;
    *v43 = v44;
    OUTLINED_FUNCTION_0_193(v43);
    OUTLINED_FUNCTION_12_82();
    OUTLINED_FUNCTION_21_62();

    __asm { BRAA            X6, X16 }
  }

  if (v20)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1C6F5C000, v18, v19, "Use batch PhotoKit SPI for global traits retrieval", v21, 2u);
    OUTLINED_FUNCTION_79();
  }

  v22 = *(v0 + 304);
  v24 = *(v0 + 272);
  v23 = *(v0 + 280);
  v25 = *(v0 + 264);
  v52 = *(v0 + 256);

  v26 = *(v23 + OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_storyAssetsFetcher + 24);
  v27 = *(v23 + OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_storyAssetsFetcher + 32);
  __swift_project_boxed_opaque_existential_1((v23 + OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_storyAssetsFetcher), v26);
  (*(v27 + 24))(v4, v0 + 16, v25, v26, v27);

  v28 = v1[3];
  __swift_project_boxed_opaque_existential_1(v25, v28);
  v29 = swift_task_alloc();
  *(v0 + 360) = v29;
  v29[2] = v22;
  v29[3] = v24;
  v29[4] = v0 + 216;
  v29[5] = v53;
  v29[6] = v0 + 224;
  v29[7] = v23;
  v29[8] = v52;
  v30 = swift_task_alloc();
  *(v0 + 368) = v30;
  *v30 = v0;
  v30[1] = sub_1C747459C;
  v31 = "TraitCompletionProcessor.awaitSearchStreams";
  v32 = &unk_1C758D8C0;
  v33 = MEMORY[0x1E69E7CA8] + 8;
  v34 = 43;
  v35 = 2;
  v36 = v29;
  v37 = v28;

  return MEMORY[0x1EEE2A6A0](v30, v31, v34, v35, v32, v36, v37, v33);
}

uint64_t sub_1C747459C()
{
  *(*v1 + 376) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C74746CC()
{
  (*(v0[37] + 8))(v0[38], v0[36]);
  v1 = v0[47];
  sub_1C754F2EC();
  if (v1)
  {
    OUTLINED_FUNCTION_28_41();
    __swift_destroy_boxed_opaque_existential_1((v0 + 19));

    v2 = OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_0_22(v2, v3);
    sub_1C754F1AC();
    v4 = OUTLINED_FUNCTION_4_108();
    v5(v4);
    OUTLINED_FUNCTION_34_44();

    OUTLINED_FUNCTION_6_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_28_41();
    __swift_destroy_boxed_opaque_existential_1((v0 + 19));
    OUTLINED_FUNCTION_2_129();
    v8 = OUTLINED_FUNCTION_4_108();
    v9(v8);

    v10 = OUTLINED_FUNCTION_10_83();

    return v11(v10);
  }
}

uint64_t sub_1C747482C()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *(v4 + 432) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C7474930()
{
  v1 = *(v0 + 192);
  v76 = *(v0 + 200);
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v0 + 240) = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v3 = *(v0 + 240);
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      *(v0 + 240) = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      sub_1C75504FC();
      if (v8 >= v7 >> 1)
      {
        sub_1C6F7ED9C();
        v3 = *(v0 + 240);
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = [*(v0 + 408) string];
  v11 = sub_1C755068C();
  v13 = v12;

  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 248) = *(v0 + 224);
  sub_1C6F78124(v11, v13);
  OUTLINED_FUNCTION_31_1();
  if (__OFADD__(v16, v17))
  {
    goto LABEL_50;
  }

  v18 = v14;
  v19 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C270);
  if ((sub_1C7551A2C() & 1) == 0)
  {
LABEL_15:
    v23 = *(v0 + 248);
    if (v19)
    {
      v24 = OUTLINED_FUNCTION_9_90();
      *v25 = v3;
      *(v25 + 8) = 0;
      sub_1C6FDE438(v24, v26);
    }

    else
    {
      OUTLINED_FUNCTION_2_27(v23 + 8 * (v18 >> 6));
      v28 = (v27 + 16 * v18);
      *v28 = v11;
      v28[1] = v13;
      v29 = *(v23 + 56) + 16 * v18;
      *v29 = v3;
      *(v29 + 8) = 0;
      OUTLINED_FUNCTION_43_1();
      if (v31)
      {
LABEL_51:
        __break(1u);
        return;
      }

      *(v23 + 16) = v30;
      sub_1C75504FC();
    }

    v74 = v0 + 152;
    v75 = v0 + 16;
    v32 = *(v0 + 408);

    swift_unknownObjectRelease();
    *(v0 + 224) = v23;
    for (i = *(v0 + 432); ; i = 0)
    {
      v34 = *(v0 + 416);
      if (v34 == *(v0 + 384))
      {

        sub_1C754F2EC();
        v62 = *(v0 + 320);
        v61 = *(v0 + 328);
        v63 = *(v0 + 312);
        if (i)
        {
          v64 = *(v0 + 264);
          sub_1C70DF138(v75);
          __swift_destroy_boxed_opaque_existential_1(v74);

          OUTLINED_FUNCTION_0_22(v64, v64[3]);
          sub_1C754F1AC();
          (*(v62 + 8))(v61, v63);
          OUTLINED_FUNCTION_34_44();

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_94_1();

          __asm { BRAA            X1, X16 }
        }

        sub_1C70DF138(v75);
        __swift_destroy_boxed_opaque_existential_1(v74);
        OUTLINED_FUNCTION_2_129();
        (*(v62 + 8))(v61, v63);

        OUTLINED_FUNCTION_94_1();

        __asm { BRAA            X2, X16 }
      }

      OUTLINED_FUNCTION_19_76();
      if (v21)
      {
        if (v34 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v36 = *(v35 + 8 * v34 + 32);
      }

      else
      {
        v36 = MEMORY[0x1CCA5DDD0](v34);
      }

      *(v0 + 408) = v36;
      *(v0 + 416) = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_18_66();
      sub_1C754F2DC();
      if (!i)
      {
        v67 = OUTLINED_FUNCTION_16_67();
        __swift_project_boxed_opaque_existential_1(v67, v67[3]);
        OUTLINED_FUNCTION_15_3();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v0 + 424) = v68;
        *v68 = v69;
        OUTLINED_FUNCTION_0_193(v68);
        OUTLINED_FUNCTION_94_1();

        __asm { BRAA            X6, X16 }
      }

      v37 = [*(v0 + 408) string];
      v38 = sub_1C755068C();
      v40 = v39;

      v41 = i;
      v42 = *(v0 + 224);
      swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 232) = v42;
      sub_1C6F78124(v38, v40);
      OUTLINED_FUNCTION_31_1();
      if (__OFADD__(v45, v46))
      {
        goto LABEL_47;
      }

      v47 = v43;
      v48 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C270);
      if (sub_1C7551A2C())
      {
        v49 = sub_1C6F78124(v38, v40);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_11;
        }

        v47 = v49;
      }

      v51 = *(v0 + 408);
      if (v48)
      {

        v52 = *(v0 + 232);
        v53 = OUTLINED_FUNCTION_9_90();
        *v54 = i;
        *(v54 + 8) = 1;
        sub_1C6FDE438(v53, v55);
      }

      else
      {
        v52 = *(v0 + 232);
        OUTLINED_FUNCTION_2_27(v52 + 8 * (v47 >> 6));
        v57 = (v56 + 16 * v47);
        *v57 = v38;
        v57[1] = v40;
        v58 = *(v52 + 56) + 16 * v47;
        *v58 = i;
        *(v58 + 8) = v59;

        OUTLINED_FUNCTION_43_1();
        if (v31)
        {
          goto LABEL_48;
        }

        *(v52 + 16) = v60;
      }

      *(v0 + 224) = v52;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_1C6F78124(v11, v13);
  OUTLINED_FUNCTION_11_75();
  if (v21)
  {
    v18 = v20;
    goto LABEL_15;
  }

LABEL_11:
  OUTLINED_FUNCTION_94_1();

  sub_1C7551E4C();
}

uint64_t sub_1C7474F68()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  v8 = v0[33];
  v7 = v0[34];
  sub_1C70DF138((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1((v0 + 19));
  (*(v6 + 8))(v3, v5);

  OUTLINED_FUNCTION_0_22(v8, v8[3]);
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v4);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v9 + 8))(v7);

  v10 = v0[1];

  return v10();
}

void sub_1C7475090()
{
  v1 = *(v0 + 432);
  v2 = [*(v0 + 408) string];
  sub_1C755068C();

  v3 = v1;
  v4 = *(v0 + 224);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 232) = v4;
  v5 = OUTLINED_FUNCTION_282();
  sub_1C6F78124(v5, v6);
  OUTLINED_FUNCTION_31_1();
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_27;
  }

  v11 = v7;
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C270);
  if ((OUTLINED_FUNCTION_33_42() & 1) == 0)
  {
LABEL_6:
    v17 = *(v0 + 408);
    if (v12)
    {

      OUTLINED_FUNCTION_29_43();
    }

    else
    {
      v18 = *(v0 + 232);
      OUTLINED_FUNCTION_2_27(v18 + 8 * (v11 >> 6));
      OUTLINED_FUNCTION_20_60(v19);

      OUTLINED_FUNCTION_43_1();
      if (v21)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      *(v18 + 16) = v20;
    }

    OUTLINED_FUNCTION_31_46();
    if (v16)
    {

      sub_1C754F2EC();
      OUTLINED_FUNCTION_28_41();
      __swift_destroy_boxed_opaque_existential_1(v0 + 152);
      OUTLINED_FUNCTION_2_129();
      v30 = OUTLINED_FUNCTION_4_108();
      v31(v30);

      OUTLINED_FUNCTION_10_83();
      OUTLINED_FUNCTION_17_1();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_19_76();
    if (v16)
    {
      if (v17 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_29:
        __break(1u);
        return;
      }

      v23 = *(v22 + 8 * v17 + 32);
    }

    else
    {
      v23 = MEMORY[0x1CCA5DDD0](v17);
    }

    *(v0 + 408) = v23;
    *(v0 + 416) = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      OUTLINED_FUNCTION_18_66();
      sub_1C754F2DC();
      v24 = OUTLINED_FUNCTION_16_67();
      __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      OUTLINED_FUNCTION_15_3();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 424) = v25;
      *v25 = v26;
      OUTLINED_FUNCTION_0_193(v25);
      OUTLINED_FUNCTION_12_82();
      OUTLINED_FUNCTION_17_1();

      __asm { BRAA            X6, X16 }
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = OUTLINED_FUNCTION_282();
  sub_1C6F78124(v13, v14);
  OUTLINED_FUNCTION_11_75();
  if (v16)
  {
    v11 = v15;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_17_1();

  sub_1C7551E4C();
}

uint64_t TraitCompletionProcessor.init(with:storyAssetsFetcher:)(uint64_t a1, __int128 *a2)
{
  sub_1C754FEFC();
  *(v2 + OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_photoLibrary) = a1;
  sub_1C6FD80E4(a2, v2 + OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_storyAssetsFetcher);
  return v2;
}

uint64_t sub_1C74754F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[13] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178D8);
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C74755CC, 0, 0);
}

uint64_t sub_1C74755CC()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3C0);
  sub_1C7550DBC();
  v0[23] = OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_logger;
  v0[24] = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[25] = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_7_99(v1);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6D9C8](v3);
}

uint64_t sub_1C7475678()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7475764()
{
  v97 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  if (v2 == 255)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

    goto LABEL_15;
  }

  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v2)
  {
    v89 = *(v0 + 32);
    v93 = *(v0 + 40);
    v5 = v1;
    sub_1C75504FC();
    v6 = v4;
    v7 = sub_1C754FEEC();
    v8 = sub_1C755119C();

    v91 = v1;
    if (os_log_type_enabled(v7, v8))
    {
      v85 = *(v0 + 152);
      v9 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v96[0] = v95;
      *v9 = 136643331;
      v10 = [v5 string];
      sub_1C755068C();
      v87 = v8;

      v11 = OUTLINED_FUNCTION_82();
      v14 = sub_1C6F765A4(v11, v12, v13);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      v15 = MEMORY[0x1CCA5D090](v85, MEMORY[0x1E69E6158]);
      v17 = sub_1C6F765A4(v15, v16, v96);

      *(v9 + 14) = v17;
      *(v9 + 22) = 2080;
      swift_getErrorValue();
      v18 = sub_1C7551EAC();
      v20 = sub_1C6F765A4(v18, v19, v96);

      *(v9 + 24) = v20;
      _os_log_impl(&dword_1C6F5C000, v7, v87, "Error retrieving assets for query '%{sensitive}s' with queries %s, error: %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v95, -1, -1);
      OUTLINED_FUNCTION_79();
    }

    v21 = *(v0 + 136);
    v22 = [v5 string];
    v23 = sub_1C755068C();
    v25 = v24;

    v26 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 72) = *v21;
    *v21 = 0x8000000000000000;
    sub_1C6F78124(v23, v25);
    OUTLINED_FUNCTION_31_1();
    if (__OFADD__(v29, v30))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v31 = v27;
    v32 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C270);
    if (sub_1C7551A2C())
    {
      sub_1C6F78124(v23, v25);
      OUTLINED_FUNCTION_11_75();
      if (!v34)
      {
        goto LABEL_30;
      }

      v31 = v33;
    }

    v35 = *(v0 + 72);
    if (v32)
    {
      v36 = v35[7] + 16 * v31;
      v37 = *v36;
      v38 = *(v36 + 8);
      v39 = v4;
      *v36 = v4;
      *(v36 + 8) = 1;
      sub_1C6FDE438(v37, v38);
    }

    else
    {
      v35[(v31 >> 6) + 8] |= 1 << v31;
      v57 = (v35[6] + 16 * v31);
      *v57 = v23;
      v57[1] = v25;
      v58 = v35[7] + 16 * v31;
      v39 = v4;
      *v58 = v4;
      *(v58 + 8) = 1;
      OUTLINED_FUNCTION_43_1();
      if (v60)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v35[2] = v59;
    }

    v61 = *(v0 + 136);
    sub_1C710A128(v91, v39, v89, v93);
    *v61 = v35;

    v62 = *(v0 + 192);
LABEL_39:
    v81 = *(v0 + 120);
    if (!__OFADD__(*v81, 1))
    {
      ++*v81;
      *(v0 + 192) = v62;
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 200) = v82;
      *v82 = v83;
      OUTLINED_FUNCTION_7_99();
      OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_20_4();

      return MEMORY[0x1EEE6D9C8](v27);
    }

    __break(1u);
    goto LABEL_44;
  }

  v40 = *(v0 + 192);
  sub_1C754F2DC();
  if (v40)
  {
    v42 = *(v0 + 168);
    v41 = *(v0 + 176);
    v43 = *(v0 + 160);
    sub_1C710A128(v1, v4, v3, v2);
    (*(v42 + 8))(v41, v43);

    OUTLINED_FUNCTION_6_0();
LABEL_15:
    OUTLINED_FUNCTION_20_4();

    __asm { BRAA            X1, X16 }
  }

  v90 = v3;
  v94 = v2;
  v46 = [v4 string];
  v88 = sub_1C755068C();
  v48 = v47;

  v49 = v1[2];
  v50 = MEMORY[0x1E69E7CC0];
  v92 = v1;
  if (v49)
  {
    v86 = v48;
    *(v0 + 88) = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v50 = *(v0 + 88);
    v51 = v1 + 5;
    do
    {
      v52 = *(v51 - 1);
      v53 = *v51;
      *(v0 + 88) = v50;
      v55 = *(v50 + 16);
      v54 = *(v50 + 24);
      sub_1C75504FC();
      if (v55 >= v54 >> 1)
      {
        sub_1C6F7ED9C();
        v50 = *(v0 + 88);
      }

      *(v50 + 16) = v55 + 1;
      v56 = v50 + 16 * v55;
      *(v56 + 32) = v52;
      *(v56 + 40) = v53;
      v51 += 4;
      --v49;
    }

    while (v49);
    v48 = v86;
  }

  v63 = *(v0 + 136);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 96) = *v63;
  *v63 = 0x8000000000000000;
  sub_1C6F78124(v88, v48);
  OUTLINED_FUNCTION_31_1();
  if (__OFADD__(v65, v66))
  {
    goto LABEL_45;
  }

  v67 = v27;
  v68 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C270);
  if ((sub_1C7551A2C() & 1) == 0)
  {
LABEL_34:
    if (v68)
    {

      v73 = *(v0 + 96);
      v74 = OUTLINED_FUNCTION_9_90();
      *v75 = v50;
      *(v75 + 8) = 0;
      sub_1C6FDE438(v74, v76);
      sub_1C710A128(v92, v4, v90, v94);
    }

    else
    {
      v73 = *(v0 + 96);
      OUTLINED_FUNCTION_2_27(v73 + 8 * (v67 >> 6));
      v78 = (v77 + 16 * v67);
      *v78 = v88;
      v78[1] = v48;
      v79 = *(v73 + 56) + 16 * v67;
      *v79 = v50;
      *(v79 + 8) = 0;
      sub_1C710A128(v92, v4, v90, v94);
      OUTLINED_FUNCTION_43_1();
      if (v60)
      {
LABEL_47:
        __break(1u);
        return MEMORY[0x1EEE6D9C8](v27);
      }

      *(v73 + 16) = v80;
    }

    **(v0 + 136) = v73;

    v62 = 0;
    goto LABEL_39;
  }

  v69 = sub_1C6F78124(v88, v48);
  if ((v68 & 1) == (v70 & 1))
  {
    v67 = v69;
    goto LABEL_34;
  }

LABEL_30:
  OUTLINED_FUNCTION_20_4();

  return sub_1C7551E4C();
}

uint64_t TraitCompletionProcessor.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_storyAssetsFetcher);
  return v0;
}

uint64_t TraitCompletionProcessor.__deallocating_deinit()
{
  TraitCompletionProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C7475F0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v2 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_1C7475FE4;

  return sub_1C74754F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7475FE4()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t type metadata accessor for TraitCompletionProcessor()
{
  result = qword_1EDD0DBA0;
  if (!qword_1EDD0DBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7476120()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C74761F4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1C7476248(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C74762C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a3;
  v9 = a3[1];
  if ([objc_opt_self() useQueryAnnotationPromptBindingPersonAndPetNames])
  {
    v11 = sub_1C754FEEC();
    v12 = sub_1C75511BC();
    if (os_log_type_enabled(v11, v12))
    {
      v36 = a4;
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C6F5C000, v11, v12, "Construct prompt binding recipe using query matching", v13, 2u);
      v14 = v13;
      a4 = v36;
      MEMORY[0x1CCA5F8E0](v14, -1, -1);
    }

    v37 = sub_1C7476630();
    v38 = v10;
    v16 = v15;
    v39 = v9;
    v17 = sub_1C7476780(a1, a2, &v38, a4);
    v18 = a4;
    v19 = v17;
    v21 = v20;
    v38 = v10;
    v39 = v9;
    v22 = v16;
    v23 = sub_1C7476B50(a1, a2, &v38, v18);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v24 = sub_1C754FEEC();
    v25 = sub_1C75511BC();

    if (os_log_type_enabled(v24, v25))
    {
      buf = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43 = v35;
      *buf = 136642819;
      v38 = v37;
      v39 = v16;
      v40 = v19;
      v41 = v21;
      v42 = v23;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v33 = v25;
      v31 = PromptBindings.description.getter();
      log = v24;
      v27 = v26;

      v28 = sub_1C6F765A4(v31, v27, &v43);

      *(buf + 4) = v28;
      _os_log_impl(&dword_1C6F5C000, log, v33, "Prompt binding recipe = %{sensitive}s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1CCA5F8E0](v35, -1, -1);
      MEMORY[0x1CCA5F8E0](buf, -1, -1);
    }

    else
    {
    }

    result = v37;
  }

  else
  {
    result = sub_1C7476630();
    v22 = v30;
    v19 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
    v23 = MEMORY[0x1E69E7CC0];
  }

  *a5 = result;
  a5[1] = v22;
  a5[2] = v19;
  a5[3] = v21;
  a5[4] = v23;
  return result;
}

uint64_t sub_1C74765B4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C747716C(v6);
  return sub_1C755193C();
}

uint64_t sub_1C7476630()
{
  v0 = sub_1C754DF6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C7069CE4(0x2D4D4D2D79797979, 0xEA00000000006464, v4);
  sub_1C754DF5C();
  v5 = sub_1C754DECC();
  (*(v1 + 8))(v3, v0);
  v6 = [v4 stringFromDate_];

  v7 = sub_1C755068C();
  return v7;
}

uint64_t sub_1C7476780(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = static StoryGenerationUtilities.tokenize(_:)(a1, a2);
  sub_1C75504FC();
  v7 = sub_1C754FEEC();
  v8 = sub_1C75511BC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v39 = v10;
    *v9 = 136642819;
    v11 = MEMORY[0x1CCA5D090](v6, MEMORY[0x1E69E6158]);
    v13 = sub_1C6F765A4(v11, v12, &v39);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1C6F5C000, v7, v8, "The query terms = %{sensitive}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1CCA5F8E0](v10, -1, -1);
    MEMORY[0x1CCA5F8E0](v9, -1, -1);
  }

  v14 = 0;
  v37 = MEMORY[0x1E69E7CD0];
  v38 = MEMORY[0x1E69E7CD0];
  v15 = *(v6 + 16);
  v16 = (v6 + 40);
  while (v15 != v14)
  {
    if (v14 >= *(v6 + 16))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v18 = *(v16 - 1);
    v17 = *v16;
    sub_1C75504FC();
    v19 = objc_autoreleasePoolPush();
    sub_1C7476D68(v18, v17, a4);

    ++v14;
    objc_autoreleasePoolPop(v19);
    v16 += 2;
  }

  v20 = sub_1C75504FC();
  v21 = sub_1C71CD85C(v20);
  v22 = *(v37 + 16);
  v23 = *(v38 + 16);
  if (__OFADD__(v22, v23))
  {
    goto LABEL_28;
  }

  if (v5 >= v22 + v23)
  {
    v28 = sub_1C75504FC();
    v27 = sub_1C71CD85C(v28);
    goto LABEL_16;
  }

  v24 = __OFSUB__(v5, v22);
  v25 = v5 - v22;
  if (v24)
  {
    goto LABEL_29;
  }

  if (v23 >= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = *(v38 + 16);
  }

  if (v26 >= 1)
  {
    sub_1C75504FC();
    sub_1C7033E24(v26, v38);
    v27 = sub_1C739C320(&v39);
    v47 = v39;
    v48 = v40;
    sub_1C7030CDC(&v47, &qword_1EC21C278);
    v45 = v41;
    v46 = v42;
    sub_1C7030CDC(&v45, &qword_1EC21C278);
    v44 = v43;
    sub_1C7030CDC(&v44, &unk_1EC215BF0);
LABEL_16:

    return v27;
  }

  sub_1C7033F04(v5, v21);
  v31 = v30;
  v33 = v32;
  if ((v32 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v34 = swift_dynamicCastClass();
  if (!v34)
  {
    swift_unknownObjectRelease();
    v34 = MEMORY[0x1E69E7CC0];
  }

  v35 = *(v34 + 16);

  if (__OFSUB__(v33 >> 1, v31))
  {
    goto LABEL_30;
  }

  if (v35 != (v33 >> 1) - v31)
  {
LABEL_31:
    swift_unknownObjectRelease();
LABEL_19:
    sub_1C739C274();

    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v36 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  if (!v36)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C7476B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C754E2FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 8);
  if ([objc_opt_self() enableLocationPromptBinding])
  {
    v11 = objc_opt_self();
    v12 = [v11 allowedSearchIndexCategoriesForMemoriesLocationPromptBinding];
    sub_1C754E29C();

    v13 = sub_1C755065C();
    v14 = sub_1C754E28C();
    v15 = [v11 performLocationDisambiguationForFullQueryString:v13 allowedSearchIndexCategories:v14 maxNumberOfResults:v10 photoLibrary:a4];

    v16 = sub_1C7550B5C();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v17 = sub_1C754FEEC();
    v18 = sub_1C75511BC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C6F5C000, v17, v18, "The location prompt binding is disabled", v19, 2u);
      MEMORY[0x1CCA5F8E0](v19, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v16;
}

uint64_t sub_1C7476D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C755BAB0;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  sub_1C75504FC();
  v9 = sub_1C7550B3C();

  v10 = [v7 personEntitiesByLookupIdentifierForPersonNames:v9 photoLibrary:a3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C280);
  v11 = sub_1C75504AC();

  v12 = 0;
  v14 = v11 + 64;
  v13 = *(v11 + 64);
  v38 = v11;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v19 = &selRef_addingKeyAssetForObject_toAssets_options_;
  while (v17)
  {
    v20 = v12;
LABEL_9:
    v21 = *(*(v38 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v17)))));
    if ((v21 & 0xC000000000000001) != 0)
    {
      sub_1C75504FC();
      v22 = sub_1C75516BC();
      if (!v22)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v22 = *(v21 + 16);
      sub_1C75504FC();
      if (!v22)
      {
LABEL_14:
        v23 = MEMORY[0x1E69E7CC0];
        goto LABEL_18;
      }
    }

    if (v22 < 1)
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v23 = swift_allocObject();
      v24 = _swift_stdlib_malloc_size(v23);
      v23[2] = v22;
      v23[3] = (2 * ((v24 - 32) / 8)) | 1;
    }

    sub_1C75504FC();
    sub_1C70D2348(&v37, v23 + 4, v22, v21);
    v26 = v25;
    sub_1C6F61E88();
    if (v26 != v22)
    {
      goto LABEL_36;
    }

    v19 = &selRef_addingKeyAssetForObject_toAssets_options_;
LABEL_18:
    v37 = v23;
    sub_1C74765B4(&v37);
    if (v3)
    {
      goto LABEL_38;
    }

    v27 = v37;
    if (v37 < 0 || (v37 & 0x4000000000000000) != 0)
    {
      v28 = sub_1C75516BC();
    }

    else
    {
      v28 = *(v37 + 16);
    }

    v17 &= v17 - 1;
    if (v28)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1CCA5DDD0](0, v27);
      }

      else
      {
        if (!*(v27 + 16))
        {
          goto LABEL_37;
        }

        v29 = *(v27 + 32);
      }

      v30 = v29;

      if ([v30 v19[171]] == 1300 || objc_msgSend(v30, v19[171]) == 1330)
      {
        v31 = [v30 text];
        v32 = sub_1C755068C();
        v34 = v33;

        v35 = v32;
        v19 = &selRef_addingKeyAssetForObject_toAssets_options_;
        sub_1C70F082C(&v37, v35, v34);

        v12 = v20;
      }

      else
      {

        v12 = v20;
      }
    }

    else
    {

      v12 = v20;
    }
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v18)
    {
    }

    v17 = *(v14 + 8 * v20);
    ++v12;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:

  __break(1u);
  return result;
}

void sub_1C747716C(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D59C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C7477300(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C747724C(0, v3, 1, a1);
  }
}

char *sub_1C747724C(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = &result[-a3];
    while (2)
    {
      result = *(v6 + 8 * v4);
      v9 = v8;
      v10 = v7;
      do
      {
        result = [result compare_];
        if (result != 1)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v11 = *v10;
        result = v10[1];
        *v10 = result;
        v10[1] = v11;
        --v10;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 8;
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

void sub_1C7477300(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v95 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v82 = v8 + 16;
      v83 = *(v8 + 2);
      while (v83 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_130;
        }

        v84 = v8;
        v85 = &v8[16 * v83];
        v86 = *v85;
        v87 = &v82[2 * v83];
        v88 = *(v87 + 1);
        sub_1C74778B0((*a3 + 8 * *v85), (*a3 + 8 * *v87), (*a3 + 8 * v88), v95);
        if (v5)
        {
          break;
        }

        if (v88 < v86)
        {
          goto LABEL_118;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_119;
        }

        *v85 = v86;
        *(v85 + 1) = v88;
        v89 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_120;
        }

        v83 = *v82 - 1;
        sub_1C7423CF4(v87 + 16, v89, v87);
        *v82 = v83;
        v8 = v84;
      }

LABEL_102:

      return;
    }

LABEL_127:
    v8 = sub_1C7420830();
    goto LABEL_94;
  }

  v90 = a4;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = &selRef_clsSceneClassifications;
  while (1)
  {
    v10 = v7++;
    if (v7 < v6)
    {
      v11 = (*a3 + 8 * v10);
      v12 = 8 * v10;
      v14 = *v11;
      v13 = (v11 + 2);
      v15 = [*(*a3 + 8 * v7) v9[17]];
      v16 = v10;
      v17 = v15;
      v92 = v16;
      v18 = v16 + 2;
      while (1)
      {
        v19 = v18;
        if (++v7 >= v6)
        {
          break;
        }

        v20 = (v17 == 1) ^ ([*v13 compare_] != 1);
        ++v13;
        v18 = v19 + 1;
        if ((v20 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v7 = v6;
LABEL_9:
      if (v17 == 1)
      {
        v10 = v92;
        if (v7 < v92)
        {
          goto LABEL_124;
        }

        if (v92 >= v7)
        {
          v9 = &selRef_clsSceneClassifications;
        }

        else
        {
          if (v6 >= v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = v6;
          }

          v22 = 8 * v21 - 8;
          v23 = v7;
          v24 = v92;
          v9 = &selRef_clsSceneClassifications;
          do
          {
            if (v24 != --v23)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              v26 = *(v25 + v12);
              *(v25 + v12) = *(v25 + v22);
              *(v25 + v22) = v26;
            }

            ++v24;
            v22 -= 8;
            v12 += 8;
          }

          while (v24 < v23);
        }
      }

      else
      {
        v9 = &selRef_clsSceneClassifications;
        v10 = v92;
      }
    }

    v27 = a3[1];
    if (v7 < v27)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_123;
      }

      if (v7 - v10 < v90)
      {
        break;
      }
    }

LABEL_39:
    if (v7 < v10)
    {
      goto LABEL_122;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v8 = v80;
    }

    v37 = *(v8 + 2);
    v38 = v37 + 1;
    if (v37 >= *(v8 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v8 = v81;
    }

    *(v8 + 2) = v38;
    v39 = v8 + 32;
    v40 = &v8[16 * v37 + 32];
    *v40 = v10;
    *(v40 + 1) = v7;
    v95 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (v37)
    {
      v94 = v7;
      while (1)
      {
        v41 = v38 - 1;
        v42 = &v39[16 * v38 - 16];
        v43 = &v8[16 * v38];
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v44 = *(v8 + 4);
          v45 = *(v8 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_60:
          if (v47)
          {
            goto LABEL_109;
          }

          v59 = *v43;
          v58 = *(v43 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_112;
          }

          v63 = *(v42 + 1);
          v64 = v63 - *v42;
          if (__OFSUB__(v63, *v42))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v61, v64))
          {
            goto LABEL_117;
          }

          if (v61 + v64 >= v46)
          {
            if (v46 < v64)
            {
              v41 = v38 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v38 < 2)
        {
          goto LABEL_111;
        }

        v66 = *v43;
        v65 = *(v43 + 1);
        v54 = __OFSUB__(v65, v66);
        v61 = v65 - v66;
        v62 = v54;
LABEL_75:
        if (v62)
        {
          goto LABEL_114;
        }

        v68 = *v42;
        v67 = *(v42 + 1);
        v54 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v54)
        {
          goto LABEL_116;
        }

        if (v69 < v61)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v41 - 1 >= v38)
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v73 = &v39[16 * v41 - 16];
        v74 = *v73;
        v75 = v41;
        v76 = &v39[16 * v41];
        v77 = *(v76 + 1);
        sub_1C74778B0((*a3 + 8 * *v73), (*a3 + 8 * *v76), (*a3 + 8 * v77), v95);
        if (v5)
        {
          goto LABEL_102;
        }

        if (v77 < v74)
        {
          goto LABEL_104;
        }

        v5 = v8;
        v78 = *(v8 + 2);
        if (v75 > v78)
        {
          goto LABEL_105;
        }

        *v73 = v74;
        *(v73 + 1) = v77;
        if (v75 >= v78)
        {
          goto LABEL_106;
        }

        v38 = v78 - 1;
        sub_1C7423CF4(v76 + 16, v78 - 1 - v75, v76);
        *(v5 + 2) = v78 - 1;
        v79 = v78 > 2;
        v8 = v5;
        v5 = 0;
        v9 = &selRef_clsSceneClassifications;
        v7 = v94;
        if (!v79)
        {
          goto LABEL_89;
        }
      }

      v48 = &v39[16 * v38];
      v49 = *(v48 - 8);
      v50 = *(v48 - 7);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_107;
      }

      v53 = *(v48 - 6);
      v52 = *(v48 - 5);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_108;
      }

      v55 = *(v43 + 1);
      v56 = v55 - *v43;
      if (__OFSUB__(v55, *v43))
      {
        goto LABEL_110;
      }

      v54 = __OFADD__(v46, v56);
      v57 = v46 + v56;
      if (v54)
      {
        goto LABEL_113;
      }

      if (v57 >= v51)
      {
        v71 = *v42;
        v70 = *(v42 + 1);
        v54 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v54)
        {
          goto LABEL_121;
        }

        if (v46 < v72)
        {
          v41 = v38 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_92;
    }
  }

  v28 = (v10 + v90);
  if (__OFADD__(v10, v90))
  {
    goto LABEL_125;
  }

  if (v28 >= v27)
  {
    v28 = a3[1];
  }

  if (v28 < v10)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v7 == v28)
  {
    goto LABEL_39;
  }

  v29 = *a3;
  v30 = *a3 + 8 * v7 - 8;
  v93 = v10;
  v95 = v28;
  v31 = v10 - v7;
LABEL_32:
  v32 = *(v29 + 8 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if ([v32 v9[17]] != 1)
    {
LABEL_37:
      ++v7;
      v30 += 8;
      --v31;
      if (v7 == v95)
      {
        v7 = v95;
        v10 = v93;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v29)
    {
      break;
    }

    v35 = *v34;
    v32 = v34[1];
    *v34 = v32;
    v34[1] = v35;
    --v34;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

uint64_t sub_1C74778B0(id *a1, id *a2, id *a3, id *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1C7423CF8(a1);
    v10 = &a4[v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if ([*v6 compare_] != 1)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = a4;
    v13 = v7 == a4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1C7423CF8(a2);
  v10 = &a4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > a4 && v6 > v7; --v5)
  {
    v16 = [*(v10 - 1) compare_];
    v17 = v5 + 1;
    if (v16 == 1)
    {
      v13 = v17 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v17)
    {
      *v5 = *(v10 - 1);
    }

    --v10;
  }

LABEL_28:
  v18 = v10 - a4;
  if (v6 != a4 || v6 >= &a4[v18])
  {
    memmove(v6, a4, 8 * v18);
  }

  return 1;
}

uint64_t static LLMStoryRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1C708C6E4(*a1, *a2);
  if (v4)
  {
    v5 = *(a1 + 24);
    v11[0] = *(a1 + 8);
    v11[1] = v5;
    v12[0] = *(a1 + 40);
    *(v12 + 9) = *(a1 + 49);
    v6 = *(a2 + 24);
    v9[0] = *(a2 + 8);
    v9[1] = v6;
    v10[0] = *(a2 + 40);
    *(v10 + 9) = *(a2 + 49);
    v7 = static LLMSamplingParameters.== infix(_:_:)(v11, v9);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

double LLMStoryRequest.init(promptBindings:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LLMConfiguration(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LLMWrapperUtils();
  if (qword_1EDD0A988 != -1)
  {
    swift_once();
  }

  LOBYTE(v14) = byte_1EC218F88;
  static LLMWrapperUtils.storytellerModelType(for:)(&v17);
  type metadata accessor for LLMConfigurationProvider();
  if (qword_1EDD0BCA8 != -1)
  {
    swift_once();
  }

  v8 = sub_1C754FF1C();
  v9 = __swift_project_value_buffer(v8, qword_1EDD0BCB0);
  static LLMConfigurationProvider.configuration(for:logger:)(&v17, v9, v7);
  if (v2)
  {
  }

  else
  {
    v11 = &v7[*(v5 + 40)];
    v12 = *(v11 + 1);
    v14 = *v11;
    v15 = v12;
    *v16 = *(v11 + 2);
    *&v16[9] = *(v11 + 41);
    sub_1C706CB5C(v7);
    *a2 = a1;
    v13 = v15;
    *(a2 + 8) = v14;
    *(a2 + 24) = v13;
    *(a2 + 40) = *v16;
    result = *&v16[9];
    *(a2 + 49) = *&v16[9];
  }

  return result;
}

__n128 LLMStoryRequest.init(promptBindings:samplingParameters:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  v3 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  *(a3 + 40) = *(a2 + 32);
  result = *(a2 + 41);
  *(a3 + 49) = result;
  return result;
}

uint64_t sub_1C7477CA4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0BCB0);
  __swift_project_value_buffer(v0, qword_1EDD0BCB0);
  return sub_1C754FEFC();
}

unint64_t LLMStoryRequest.debugPrompt.getter()
{
  sub_1C755180C();

  v0 = sub_1C75504BC();
  MEMORY[0x1CCA5CD70](v0);

  return 0xD000000000000011;
}

uint64_t LLMStoryRequest.description.getter()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75B1AE0);
  v0 = sub_1C75504BC();
  MEMORY[0x1CCA5CD70](v0);

  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75AC5B0);
  sub_1C75519EC();
  return 0;
}

uint64_t sub_1C7477ED8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x694274706D6F7270 && a2 == 0xEE0073676E69646ELL;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C7597350 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C7477FB0(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x694274706D6F7270;
  }
}

uint64_t sub_1C7478000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7477ED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7478028(uint64_t a1)
{
  v2 = sub_1C7478558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7478064(uint64_t a1)
{
  v2 = sub_1C7478558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LLMStoryRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C288);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  v11 = *v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7478558();
  sub_1C75504FC();
  sub_1C755200C();
  *&v14[0] = v11;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
  sub_1C703195C(&qword_1EDD06C70);
  sub_1C7551D2C();

  if (!v2)
  {
    v12 = *(v3 + 3);
    v14[0] = *(v3 + 1);
    v14[1] = v12;
    v15[0] = *(v3 + 5);
    *(v15 + 9) = *(v3 + 49);
    v16 = 1;
    sub_1C6FB5D28();
    sub_1C7551D2C();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t LLMStoryRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C290);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7478558();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v5 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
  LOBYTE(v10[0]) = 0;
  sub_1C703195C(&qword_1EC216128);
  sub_1C7551C1C();
  v6 = v11;
  v15 = 1;
  sub_1C72BFBD0();
  sub_1C7551C1C();
  v7 = OUTLINED_FUNCTION_0_194();
  v8(v7);
  v19 = v16;
  v20 = v17;
  v21[0] = v18[0];
  *(v21 + 9) = *(v18 + 9);
  v10[0] = v6;
  *&v10[1] = v16;
  *&v10[3] = v17;
  *&v10[5] = v18[0];
  *(&v10[6] + 1) = *(v18 + 9);
  memcpy(v5, v10, 0x41uLL);
  sub_1C6FB52D4(v10, &v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v11 = v6;
  v12 = v19;
  v13 = v20;
  *v14 = v21[0];
  *&v14[9] = *(v21 + 9);
  return sub_1C6FB5330(&v11);
}

unint64_t sub_1C7478558()
{
  result = qword_1EDD0BCD8;
  if (!qword_1EDD0BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0BCD8);
  }

  return result;
}

uint64_t sub_1C74785AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1C74785EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMStoryRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7478730()
{
  result = qword_1EC21C298;
  if (!qword_1EC21C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C298);
  }

  return result;
}

unint64_t sub_1C7478788()
{
  result = qword_1EDD0BCC8;
  if (!qword_1EDD0BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0BCC8);
  }

  return result;
}

unint64_t sub_1C74787E0()
{
  result = qword_1EDD0BCD0;
  if (!qword_1EDD0BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0BCD0);
  }

  return result;
}

uint64_t sub_1C7478898(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = 0;
  v6 = *(a2 + 16);
  v7 = a2 + 40;
  v35 = a2 + 40;
LABEL_2:
  for (i = (v7 + 16 * v5); ; i += 2)
  {
    if (v6 == v5)
    {

      return a1;
    }

    if (v5 >= v6)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_27;
    }

    if (*(a3 + 16))
    {
      v11 = *(i - 1);
      v10 = *i;
      sub_1C75504FC();
      v12 = sub_1C6F78124(v11, v10);
      if (v13)
      {
        v14 = *(*(a3 + 56) + 40 * v12 + 34);
        if (v14 != 18)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v15 = sub_1C6FC2CD8();
          if (__OFADD__(a1[2], (v16 & 1) == 0))
          {
            goto LABEL_28;
          }

          v17 = v15;
          v34 = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B430);
          v18 = a1;
          if (sub_1C7551A2C())
          {
            v19 = sub_1C6FC2CD8();
            v7 = v35;
            if ((v34 & 1) != (v20 & 1))
            {
              goto LABEL_31;
            }

            v17 = v19;
            v18 = a1;
            if (v34)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v7 = v35;
            if (v34)
            {
LABEL_19:
              v24 = v18[7];
              v25 = *(v24 + 8 * v17);
              v22 = __OFADD__(v25, 1);
              v26 = v25 + 1;
              if (v22)
              {
                goto LABEL_29;
              }

              *(v24 + 8 * v17) = v26;
              v27 = *a4;
              sub_1C75504FC();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *a4 = v27;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1C6FB1814();
                v27 = v31;
                *a4 = v31;
              }

              v29 = *(v27 + 16);
              if (v29 >= *(v27 + 24) >> 1)
              {
                sub_1C6FB1814();
                v27 = v32;
                *a4 = v32;
              }

              *(v27 + 16) = v29 + 1;
              v30 = v27 + 16 * v29;
              *(v30 + 32) = v11;
              *(v30 + 40) = v10;

              v5 = v9;
              goto LABEL_2;
            }
          }

          v18[(v17 >> 6) + 8] |= 1 << v17;
          *(v18[6] + v17) = v14;
          *(v18[7] + 8 * v17) = 0;
          v21 = v18[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_30;
          }

          v18[2] = v23;
          goto LABEL_19;
        }
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C7478B28(uint64_t isUniquelyReferenced_nonNull_native)
{
  v1 = 0;
  v14 = isUniquelyReferenced_nonNull_native;
  v15 = *(isUniquelyReferenced_nonNull_native + 16);
  v2 = isUniquelyReferenced_nonNull_native + 40;
  v12 = isUniquelyReferenced_nonNull_native + 40;
  v13 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v2 + 16 * v1); ; i += 2)
  {
    if (v15 == v1)
    {

      return;
    }

    if (v1 >= *(v14 + 16))
    {
      break;
    }

    v4 = *(i - 1);
    v5 = *i;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    sub_1C75504FC();
    sub_1C75504FC();
    v6 = sub_1C70735F4();

    if (v6 || (MEMORY[0x1EEE9AC00](v7), sub_1C75504FC(), v8 = sub_1C70735F4(), , v8))
    {
      v9 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C();
        v9 = v13;
      }

      v10 = *(v9 + 16);
      if (v10 >= *(v9 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v9 = v13;
      }

      ++v1;
      *(v9 + 16) = v10 + 1;
      v13 = v9;
      v11 = v9 + 16 * v10;
      *(v11 + 32) = v4;
      *(v11 + 40) = v5;
      v2 = v12;
      goto LABEL_2;
    }

    ++v1;
  }

  __break(1u);
}

uint64_t AssetRichDescriptionsGenerator.init(storyPhotoLibraryContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = a1[2];
  sub_1C754FEFC();
  result = type metadata accessor for AssetRichDescriptionsGenerator();
  v7 = a2 + *(result + 20);
  *v7 = v3;
  *(v7 + 8) = v4;
  *(v7 + 16) = v5;
  return result;
}

uint64_t type metadata accessor for AssetRichDescriptionsGenerator()
{
  result = qword_1EDD07EC0;
  if (!qword_1EDD07EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetRichDescriptionsGenerator.assetRichDescriptionByAssetUUID(for:chapter:assetRichDescriptionOptions:eventRecorder:progressReporter:diagnosticContext:)(uint64_t a1, const void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 248) = a6;
  *(v7 + 256) = v6;
  *(v7 + 232) = a4;
  *(v7 + 240) = a5;
  *(v7 + 224) = a1;
  v10 = sub_1C754F2FC();
  *(v7 + 264) = v10;
  OUTLINED_FUNCTION_18(v10);
  *(v7 + 272) = v11;
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  v12 = sub_1C754F38C();
  *(v7 + 296) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v7 + 304) = v13;
  *(v7 + 312) = swift_task_alloc();
  memcpy((v7 + 16), a2, 0x68uLL);
  *(v7 + 374) = *a3;
  *(v7 + 375) = a3[1];
  *(v7 + 376) = a3[2];
  *(v7 + 377) = a3[3];
  *(v7 + 378) = a3[4];
  *(v7 + 379) = a3[5];
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C7478FA4()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 232), *(*(v0 + 232) + 24));
  OUTLINED_FUNCTION_71_2();
  sub_1C754F2CC();
  v1 = *(v0 + 256);
  type metadata accessor for AssetCurationUtilities();
  OUTLINED_FUNCTION_19_1();
  v2 = *(v1 + *(type metadata accessor for AssetRichDescriptionsGenerator() + 20));
  v3 = swift_task_alloc();
  *(v0 + 320) = v3;
  *v3 = v0;
  v3[1] = sub_1C747916C;
  v4 = *(v0 + 224);

  return static AssetCurationUtilities.generateCharacterSummaryByCharacterUUID(for:photoLibrary:)(v4, v2);
}

uint64_t sub_1C747916C()
{
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 328) = v4;
  *(v2 + 336) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7479278()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v20 = *(v0 + 378);
  v21[0] = *(v0 + 379);
  v1 = *(v0 + 377);
  v2 = *(v0 + 376);
  v3 = *(v0 + 375);
  v4 = *(v0 + 374);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 264);
  v8 = *(v0 + 272);
  sub_1C754F2BC();
  memcpy((v0 + 120), (v0 + 16), 0x68uLL);
  *(v0 + 368) = v4;
  *(v0 + 369) = v3;
  *(v0 + 370) = v2;
  *(v0 + 371) = v1;
  *(v0 + 372) = v20;
  *(v0 + 373) = v21[0];
  (*(v8 + 32))(v6, v5, v7);
  v9 = swift_task_alloc();
  *(v0 + 344) = v9;
  *v9 = v0;
  v9[1] = sub_1C74793B4;
  OUTLINED_FUNCTION_44();

  return AssetRichDescriptionsGenerator.generateAssetRichDescriptionResults(for:chapter:characterSummaryByCharacterUUID:userQueryCharacterUUIDs:options:eventRecorder:progressReporter:diagnosticContext:)(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1C74793B4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 352) = v4;
  *(v2 + 360) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C74794D0()
{
  v1 = v0[45];
  sub_1C754F2DC();
  result = v0[44];
  if (v1)
  {
    v3 = v0[34];
    v37 = v0[33];
    v4 = v0[29];
    v5 = v0[30];

    OUTLINED_FUNCTION_18_0(v4, v4[3]);
    sub_1C754F1AC();
    v6 = OUTLINED_FUNCTION_15_1();
    v7(v6);
    (*(v3 + 8))(v5, v37);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_94_1();

    __asm { BRAA            X1, X16 }
  }

  v34 = v0;
  v10 = 0;
  v36 = *(result + 16);
  v11 = MEMORY[0x1E69E7CC8];
  v12 = (result + 56);
  for (i = result; ; result = i)
  {
    if (v36 == v10)
    {

      sub_1C754F2EC();
      v29 = v34[38];
      v28 = v34[39];
      v30 = v34[37];
      __swift_project_boxed_opaque_existential_1(v34[29], *(v34[29] + 24));
      OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_42_17();
      sub_1C754F1AC();
      (*(v29 + 8))(v28, v30);

      OUTLINED_FUNCTION_94_1();

      __asm { BRAA            X2, X16 }
    }

    if (v10 >= *(result + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v38 = v10;
    v14 = *(v12 - 3);
    v13 = *(v12 - 2);
    v15 = *(v12 - 1);
    v16 = *v12;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    result = sub_1C6F78124(v14, v13);
    if (__OFADD__(v11[2], (v17 & 1) == 0))
    {
      goto LABEL_25;
    }

    v18 = result;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328);
    if (sub_1C7551A2C())
    {
      break;
    }

LABEL_12:
    if (v19)
    {

      v22 = (v11[7] + 16 * v18);
      *v22 = v15;
      v22[1] = v16;
    }

    else
    {
      v11[(v18 >> 6) + 8] |= 1 << v18;
      v23 = (v11[6] + 16 * v18);
      *v23 = v14;
      v23[1] = v13;
      v24 = (v11[7] + 16 * v18);
      *v24 = v15;
      v24[1] = v16;

      v25 = v11[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_26;
      }

      v11[2] = v27;
    }

    v12 += 4;
    v10 = v38 + 1;
  }

  v20 = sub_1C6F78124(v14, v13);
  if ((v19 & 1) == (v21 & 1))
  {
    v18 = v20;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_94_1();

  return sub_1C7551E4C();
}

uint64_t sub_1C747987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_32_42();
  (*(v14 + 8))(v12, v13);
  v15 = OUTLINED_FUNCTION_117_0();
  v16(v15);

  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1C7479928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_32_42();
  (*(v14 + 8))(v12, v13);
  v15 = OUTLINED_FUNCTION_117_0();
  v16(v15);

  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t AssetRichDescriptionsGenerator.generateAssetRichDescriptionResults(for:chapter:characterSummaryByCharacterUUID:userQueryCharacterUUIDs:options:eventRecorder:progressReporter:diagnosticContext:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 296) = a8;
  *(v9 + 304) = v8;
  *(v9 + 280) = a6;
  *(v9 + 288) = a7;
  *(v9 + 264) = a3;
  *(v9 + 272) = a4;
  *(v9 + 256) = a1;
  v12 = sub_1C754F2FC();
  *(v9 + 312) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v9 + 320) = v13;
  *(v9 + 328) = swift_task_alloc();
  *(v9 + 336) = swift_task_alloc();
  v14 = sub_1C754F38C();
  *(v9 + 344) = v14;
  OUTLINED_FUNCTION_18(v14);
  *(v9 + 352) = v15;
  *(v9 + 360) = swift_task_alloc();
  memcpy((v9 + 16), a2, 0x68uLL);
  *(v9 + 432) = *a5;
  *(v9 + 433) = a5[1];
  *(v9 + 434) = a5[2];
  *(v9 + 435) = a5[3];
  *(v9 + 436) = a5[4];
  *(v9 + 437) = a5[5];
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1C7479B44()
{
  v1 = *(v0 + 280);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_71_2();
  sub_1C754F2CC();
  v2 = *(*(v0 + 256) + 16);
  *(v0 + 368) = v2;
  if (!v2)
  {
    v22 = sub_1C754FEEC();
    v23 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C6F5C000, v22, v23, "No assetUUIDs!", v24, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v26 = *(v0 + 352);
    v25 = *(v0 + 360);
    v27 = *(v0 + 344);
    v28 = *(v0 + 320);
    v35 = *(v0 + 312);
    v30 = *(v0 + 280);
    v29 = *(v0 + 288);

    __swift_project_boxed_opaque_existential_1(v30, v1[3]);
    OUTLINED_FUNCTION_99_1();
    sub_1C754F1AC();
    (*(v26 + 8))(v25, v27);
    (*(v28 + 8))(v29, v35);

    OUTLINED_FUNCTION_129();

    __asm { BRAA            X2, X16 }
  }

  v3 = *(v0 + 336);
  v4 = *(v0 + 320);
  v33 = *(v0 + 312);
  v34 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = v5 + *(type metadata accessor for AssetRichDescriptionsGenerator() + 20);
  v7 = *v6;
  *(v0 + 376) = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  *(v0 + 384) = v9;
  sub_1C7047818();
  v10 = v7;

  v11 = sub_1C755146C();
  *(v0 + 392) = v11;
  sub_1C754F2BC();
  *(v0 + 224) = v11;
  *(v0 + 232) = v10;
  *(v0 + 240) = v8;
  *(v0 + 248) = v9;
  v12 = sub_1C75504FC();
  *(v0 + 400) = sub_1C71CD85C(v12);
  memcpy((v0 + 120), (v0 + 16), 0x68uLL);
  (*(v4 + 32))(v34, v3, v33);
  v13 = swift_task_alloc();
  *(v0 + 408) = v13;
  *v13 = v0;
  v13[1] = sub_1C7479F1C;
  OUTLINED_FUNCTION_129();

  return AssetRichDescriptionsDataSource.generateAssetSummaryInfos(for:characterUUIDs:chapter:eventRecorder:progressReporter:diagnosticContext:)(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C7479F1C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_40();
  *v7 = v6;
  *(v4 + 416) = v1;

  if (!v1)
  {
    *(v4 + 424) = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C747A048()
{
  OUTLINED_FUNCTION_115_0();
  AssetRichDescriptionsGenerator.generateAssetRichDescriptionResults(from:characterSummaryByCharacterUUID:userQueryCharacterUUIDs:options:)();
  v2 = v1;

  sub_1C75504FC();
  sub_1C75504FC();
  v3 = sub_1C754FEEC();
  v4 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v4))
  {
    v5 = *(v0 + 368);
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = *(v2 + 16);

    *(v6 + 12) = 2048;
    *(v6 + 14) = v5;

    _os_log_impl(&dword_1C6F5C000, v3, v4, "Generated %ld asset rich description results for %ld assets", v6, 0x16u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v7 = *(v0 + 416);
  sub_1C754F2EC();
  v8 = *(v0 + 376);
  v9 = *(v0 + 280);

  if (v7)
  {

    OUTLINED_FUNCTION_18_0(v9, v9[3]);
    sub_1C754F1AC();
    v10 = OUTLINED_FUNCTION_15_1();
    v11(v10);

    OUTLINED_FUNCTION_6_0();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_18_0(v9, v9[3]);
    sub_1C754F1AC();
    v14 = OUTLINED_FUNCTION_15_1();
    v15(v14);

    v16 = *(v0 + 8);

    return v16(v2);
  }
}

uint64_t sub_1C747A2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 376);
  v15 = *(v12 + 352);
  v14 = *(v12 + 360);
  v16 = *(v12 + 344);
  v17 = *(v12 + 320);
  v29 = *(v12 + 312);
  v19 = *(v12 + 280);
  v18 = *(v12 + 288);

  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_42_17();
  sub_1C754F1AC();
  (*(v15 + 8))(v14, v16);
  (*(v17 + 8))(v18, v29);

  OUTLINED_FUNCTION_44();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t sub_1C747A3D8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422BF4();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C747EAB0(v6, &qword_1EC2181B8, &unk_1C7570F90, sub_1C747F6C0, sub_1C747EBCC);
  *a1 = v2;
  return result;
}

uint64_t sub_1C747A47C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422EF0();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C747EAB0(v6, &qword_1EC218D08, &unk_1C7575F48, sub_1C7480454, sub_1C747F028);
  *a1 = v2;
  return result;
}

uint64_t sub_1C747A520(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422F08();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C747EAB0(v6, &qword_1EC218CF8, &unk_1C7575F38, sub_1C7480C84, sub_1C747F204);
  *a1 = v2;
  return result;
}

uint64_t sub_1C747A5C4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422F20();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C747EAB0(v6, &qword_1EC218D18, &unk_1C7575F58, sub_1C748116C, sub_1C747F27C);
  *a1 = v2;
  return result;
}

void AssetRichDescriptionsGenerator.generateAssetRichDescriptionResults(from:characterSummaryByCharacterUUID:userQueryCharacterUUIDs:options:)()
{
  OUTLINED_FUNCTION_33();
  v48 = v0;
  v49 = v1;
  v3 = v2;
  v47 = v4;
  v50 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219088);
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE98);
  v11 = OUTLINED_FUNCTION_76(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8);
  v15 = OUTLINED_FUNCTION_76(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = sub_1C754E01C();
  v19 = OUTLINED_FUNCTION_76(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_0();
  v20 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14_0();
  v26 = v25 - v24;
  LODWORD(v25) = *v3;
  v27 = v3[1];
  v28 = v3[2];
  v45 = v3[3];
  v46 = v25;
  LODWORD(v25) = v3[4];
  v43 = v3[5];
  v44 = v25;
  v59 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v29 = v59;
  sub_1C754E06C();
  v30 = sub_1C754E07C();
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v30);
  v31 = sub_1C754E0FC();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v31);
  sub_1C754E0DC();
  v32 = sub_1C754E0EC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v32);
  sub_1C754E00C();
  sub_1C754E02C();
  v33 = sub_1C754E09C();
  (*(v22 + 8))(v26, v20);
  [v29 setLocale_];

  v34 = v47;
  v42 = AssetRichDescriptionsGenerator.sortCharacterUUIDs(by:)(v47, v35, v36, v37, v38, v39, v40, v41);
  v51[2] = v48;
  v51[3] = v34;
  v51[4] = v42;
  v51[5] = v49;
  v52 = v46;
  v53 = v27;
  v54 = v28;
  v55 = v45;
  v56 = v44;
  v57 = v43;
  v58 = &v59;
  sub_1C7044E38(sub_1C7483124, v51, v50);
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_25_0();
}

uint64_t AssetRichDescriptionsGenerator.sortCharacterUUIDs(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C739C490(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, v27, v28);
  *&v23 = v8;
  sub_1C747A3D8(&v23);
  v9 = v23;
  v10 = *(v23 + 16);
  if (v10)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v11 = v27;
    v12 = v9 + 32;
    do
    {
      sub_1C712A774(v12, &v23, &qword_1EC2181B8);
      v20 = v24;
      v21 = v25;
      v22 = v26;
      v13 = v23;
      __swift_destroy_boxed_opaque_existential_1(&v20);
      v27 = v11;
      v14 = *(v11 + 16);
      if (v14 >= *(v11 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v11 = v27;
      }

      *(v11 + 16) = v14 + 1;
      *(v11 + 16 * v14 + 32) = v13;
      v12 += 56;
      --v10;
    }

    while (v10);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

double sub_1C747AB40@<D0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v29 = a5;
  v30 = WORD2(a5);
  v13 = type metadata accessor for AssetSummaryInfo(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1C747AD64(a1, a2, a3, a4, &v29, a6);
  if (v17)
  {
    v18 = a1[1];
    *a7 = *a1;
    a7[1] = v18;
    a7[2] = v16;
    a7[3] = v17;
    sub_1C75504FC();
  }

  else
  {
    sub_1C7485C70(a1, v15);
    v20 = sub_1C754FEEC();
    v21 = sub_1C755117C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      v24 = *v15;
      v25 = v15[1];
      sub_1C75504FC();
      sub_1C7485C18(v15, type metadata accessor for AssetSummaryInfo);
      v26 = sub_1C6F765A4(v24, v25, &v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1C6F5C000, v20, v21, "No asset rich description for %s!", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1CCA5F8E0](v23, -1, -1);
      MEMORY[0x1CCA5F8E0](v22, -1, -1);
    }

    else
    {

      sub_1C7485C18(v15, type metadata accessor for AssetSummaryInfo);
    }

    result = 0.0;
    *a7 = 0u;
    *(a7 + 1) = 0u;
  }

  return result;
}

uint64_t sub_1C747AD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v137 = a4;
  v138 = a6;
  v135 = a2;
  v136 = a3;
  v8 = type metadata accessor for AssetSummaryInfo(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v140 = &v129 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v139 = &v129 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B088);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v129 - v17;
  v19 = type metadata accessor for AssetDescriptionInfo(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a5;
  v23 = a5[1];
  v143 = a5[2];
  v144 = v22;
  v24 = a5[3];
  LODWORD(v20) = a5[4];
  v141 = v23;
  v142 = v20;
  v25 = a5[5];
  v26 = *(v9 + 32);
  v28 = v27;
  sub_1C712A774(a1 + v26, v18, &qword_1EC21B088);
  if (__swift_getEnumTagSinglePayload(v18, 1, v28) == 1)
  {
    sub_1C6FD7FC8(v18, &qword_1EC21B088);
    v29 = sub_1C754FEEC();
    v30 = sub_1C755119C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C6F5C000, v29, v30, "assetDescriptionInfo was nil", v31, 2u);
      MEMORY[0x1CCA5F8E0](v31, -1, -1);
    }

    return 0;
  }

  v134 = v25;
  sub_1C7485CC8(v18, v21);
  v32 = *(a1 + 24);
  if (!v32)
  {
    goto LABEL_16;
  }

  v33 = *(a1 + 16);
  v34 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v34 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {
LABEL_16:
    sub_1C7485C70(a1, v11);
    v59 = sub_1C754FEEC();
    v60 = sub_1C755119C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v145[0] = v62;
      *v61 = 136315138;
      v63 = *v11;
      v64 = v11[1];
      sub_1C75504FC();
      sub_1C7485C18(v11, type metadata accessor for AssetSummaryInfo);
      v65 = sub_1C6F765A4(v63, v64, v145);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_1C6F5C000, v59, v60, "No caption for %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x1CCA5F8E0](v62, -1, -1);
      MEMORY[0x1CCA5F8E0](v61, -1, -1);
    }

    else
    {

      sub_1C7485C18(v11, type metadata accessor for AssetSummaryInfo);
    }

    sub_1C7485C18(v21, type metadata accessor for AssetDescriptionInfo);
    return 0;
  }

  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v35 = swift_allocObject();
  v131 = xmmword_1C755BAB0;
  *(v35 + 16) = xmmword_1C755BAB0;
  v133 = v28;
  v36 = &v21[*(v28 + 44)];
  v38 = *v36;
  v37 = *(v36 + 1);
  *(v35 + 56) = MEMORY[0x1E69E6158];
  v130 = sub_1C6F6D524();
  *(v35 + 64) = v130;
  *(v35 + 32) = v38;
  *(v35 + 40) = v37;
  sub_1C75504FC();
  v39 = sub_1C75506BC();
  v41 = v40;
  sub_1C6FB1814();
  v43 = v42;
  v44 = *(v42 + 16);
  if (v44 >= *(v42 + 24) >> 1)
  {
    sub_1C6FB1814();
    v43 = v121;
  }

  *(v43 + 16) = v44 + 1;
  v45 = v43 + 16 * v44;
  *(v45 + 32) = v39;
  *(v45 + 40) = v41;
  if (v24)
  {
    LOBYTE(v145[0]) = v144;
    v46 = v141;
    BYTE1(v145[0]) = v141;
    BYTE2(v145[0]) = v143;
    BYTE3(v145[0]) = 1;
    BYTE4(v145[0]) = v142;
    BYTE5(v145[0]) = v134;
    AssetRichDescriptionsGenerator.characterInfoAsSentence(using:characterSummaryByCharacterUUID:sortedCharacterUUIDs:userQueryCharacterUUIDs:options:)();
    v48 = v47;
    v50 = v49;
    if (!v49)
    {
      goto LABEL_24;
    }

    v51 = v33;
    v52 = swift_allocObject();
    *(v52 + 16) = v131;
    v53 = v130;
    *(v52 + 56) = MEMORY[0x1E69E6158];
    *(v52 + 64) = v53;
    *(v52 + 32) = v48;
    *(v52 + 40) = v50;
    sub_1C75504FC();
    v54 = sub_1C75506BC();
    v56 = v55;
    v57 = *(v43 + 16);
    if (v57 >= *(v43 + 24) >> 1)
    {
      sub_1C6FB1814();
      v43 = v123;
    }

    *(v43 + 16) = v57 + 1;
    v58 = v43 + 16 * v57;
    *(v58 + 32) = v54;
    *(v58 + 40) = v56;
    v33 = v51;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  v46 = v141;
LABEL_24:
  v69 = v139;
  v68 = v140;
  if (v142)
  {
    v70 = static StoryGenerationUtilities.removeSpecialCharacters(from:)(v33, v32);
    v72 = v71;
    v73 = swift_allocObject();
    *(v73 + 16) = v131;
    v74 = v130;
    *(v73 + 56) = MEMORY[0x1E69E6158];
    *(v73 + 64) = v74;
    *(v73 + 32) = v70;
    *(v73 + 40) = v72;
    v75 = sub_1C75506BC();
    v77 = v76;
    if (v50)
    {

      v78 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v78 = v48 & 0xFFFFFFFFFFFFLL;
      }

      if (!v78)
      {
        v79 = *(v43 + 16);
        if (v79 >= *(v43 + 24) >> 1)
        {
          sub_1C6FB1814();
          v43 = v128;
        }

        *(v43 + 16) = v79 + 1;
        v80 = v43 + 16 * v79;
        *(v80 + 32) = 7301239;
        *(v80 + 40) = 0xE300000000000000;
      }
    }

    v81 = *(v43 + 16);
    if (v81 >= *(v43 + 24) >> 1)
    {
      sub_1C6FB1814();
      v43 = v122;
    }

    *(v43 + 16) = v81 + 1;
    v82 = v43 + 16 * v81;
    *(v82 + 32) = v75;
    *(v82 + 40) = v77;
  }

  else
  {
  }

  v83 = v133;
  if (!v143)
  {
    goto LABEL_49;
  }

  v84 = &v21[*(v133 + 28)];
  if ((v84[2] & 1) == 0)
  {
    v85 = *v84;
    if (v85 == 4)
    {
      v87 = *(v43 + 16);
      v86 = *(v43 + 24);
      v88 = v87 + 1;
      v89 = 0x6B726F77207461;
      goto LABEL_42;
    }

    if (v85 == 3)
    {
      v87 = *(v43 + 16);
      v86 = *(v43 + 24);
      v88 = v87 + 1;
      v89 = 0x656D6F68207461;
LABEL_42:
      if (v87 >= v86 >> 1)
      {
        sub_1C6FB1814();
        v43 = v127;
        v69 = v139;
        v68 = v140;
        v46 = v141;
      }

      *(v43 + 16) = v88;
      v90 = v43 + 16 * v87;
      *(v90 + 32) = v89;
      *(v90 + 40) = 0xE700000000000000;
      v83 = v133;
    }
  }

  v91 = &v21[*(v83 + 24)];
  v92 = *(v91 + 1);
  if (v92)
  {
    v93 = *v91;
    v94 = swift_allocObject();
    *(v94 + 16) = v131;
    v95 = v130;
    *(v94 + 56) = MEMORY[0x1E69E6158];
    *(v94 + 64) = v95;
    *(v94 + 32) = v93;
    *(v94 + 40) = v92;
    sub_1C75504FC();
    v96 = sub_1C75506BC();
    v98 = v97;
    v99 = *(v43 + 16);
    if (v99 >= *(v43 + 24) >> 1)
    {
      sub_1C6FB1814();
      v43 = v124;
    }

    *(v43 + 16) = v99 + 1;
    v100 = v43 + 16 * v99;
    *(v100 + 32) = v96;
    *(v100 + 40) = v98;
    v83 = v133;
  }

LABEL_49:
  sub_1C712A774(v21, v69, &unk_1EC219230);
  sub_1C712A774(&v21[*(v83 + 20)], v68, &unk_1EC218C70);
  if (v144)
  {
    static StoryGenerationUtilities.creationDateString(for:timeZone:dateFormatter:)();
    if (v102)
    {
      v103 = v101;
      v104 = v102;
      v105 = swift_allocObject();
      *(v105 + 16) = v131;
      v106 = v130;
      *(v105 + 56) = MEMORY[0x1E69E6158];
      *(v105 + 64) = v106;
      *(v105 + 32) = v103;
      *(v105 + 40) = v104;
      v107 = sub_1C75506BC();
      v109 = v108;
      v110 = *(v43 + 16);
      if (v110 >= *(v43 + 24) >> 1)
      {
        sub_1C6FB1814();
        v43 = v125;
      }

      *(v43 + 16) = v110 + 1;
      v111 = v43 + 16 * v110;
      *(v111 + 32) = v107;
      *(v111 + 40) = v109;
    }
  }

  if (v46)
  {
    static StoryGenerationUtilities.timeOfDayString(for:timeZone:dateFormatter:)();
    if (v113)
    {
      v114 = v112;
      v115 = v113;
      v116 = *(v43 + 16);
      if (v116 >= *(v43 + 24) >> 1)
      {
        sub_1C6FB1814();
        v43 = v126;
      }

      *(v43 + 16) = v116 + 1;
      v117 = v43 + 16 * v116;
      *(v117 + 32) = v114;
      *(v117 + 40) = v115;
    }
  }

  v145[0] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  v118 = sub_1C75505FC();
  v120 = v119;

  v145[0] = v118;
  v145[1] = v120;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](46, 0xE100000000000000);

  v66 = v145[0];
  sub_1C6FD7FC8(v68, &unk_1EC218C70);
  sub_1C6FD7FC8(v69, &unk_1EC219230);
  sub_1C7485C18(v21, type metadata accessor for AssetDescriptionInfo);
  return v66;
}

void AssetRichDescriptionsGenerator.characterInfoAsSentence(using:characterSummaryByCharacterUUID:sortedCharacterUUIDs:userQueryCharacterUUIDs:options:)()
{
  OUTLINED_FUNCTION_33();
  v78 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *(v7 + 5);
  v9 = type metadata accessor for AssetDescriptionInfo(0);
  v10 = *(v6 + *(v9 + 32));
  v82 = *(v6 + *(v9 + 36));
  v83[0] = v10;
  v11 = *(v10 + 16);
  v12 = *(v82 + 16);
  sub_1C75504FC();
  sub_1C75504FC();
  v13 = sub_1C754FEEC();
  v14 = sub_1C755118C();
  if (OUTLINED_FUNCTION_23_0(v14))
  {
    v15 = swift_slowAlloc();
    v79 = v2;
    *v15 = 134218240;
    *(v15 + 4) = v11;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v12;
    OUTLINED_FUNCTION_8();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v11 + v12 < 1)
  {
    v25 = sub_1C754FEEC();
    v26 = sub_1C755118C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C6F5C000, v25, v26, "No people and pets from which to get names.", v27, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    goto LABEL_25;
  }

  v77[1] = v11;
  v21 = sub_1C7483768(v4, v83, &v82);
  v22 = sub_1C75504FC();
  sub_1C7478B28(v22);
  v24 = v23;
  v79 = sub_1C747BFB4(v21);
  v77[0] = sub_1C747C2EC(v21);
  if (v8)
  {
    AssetRichDescriptionsGenerator.characterUUIDsToNameInAssetCurationARD(userQueryCharacterUUIDs:sortedCharacterUUIDs:maximumNumberOfNamedCharacters:)(v78, v24, 8);
  }

  else
  {

    v81 = v10;
    sub_1C75504FC();
    v28 = sub_1C75504FC();
    sub_1C6FD2568(v28);
    sub_1C706D154(v10);
  }

  v29 = sub_1C75504FC();
  sub_1C706D154(v29);
  sub_1C7069A44();
  v31 = sub_1C747C950(v30, v21, v8);
  v33 = v32;

  v34 = sub_1C75504FC();
  sub_1C706D154(v34);
  sub_1C7069A44();

  v35 = OUTLINED_FUNCTION_117_0();
  v37 = sub_1C747C950(v35, v36, v8);
  v39 = v38;

  sub_1C75504FC();
  v40 = sub_1C74831B0(v83, v33);
  if (*(v83[0] + 16) < v40)
  {
    goto LABEL_27;
  }

  sub_1C7159788(v40);

  sub_1C75504FC();
  v41 = sub_1C74831B0(&v82, v39);
  if (*(v82 + 16) < v41)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1C7159788(v41);

  v81 = v31;
  sub_1C75504FC();
  v42 = sub_1C75504FC();
  sub_1C6FD2568(v42);
  v43 = v31;
  sub_1C75504FC();
  sub_1C75504FC();
  v44 = sub_1C754FEEC();
  v45 = sub_1C755118C();
  v78 = v31;
  if (OUTLINED_FUNCTION_128(v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134218752;
    v47 = *(v31 + 16);

    *(v46 + 4) = v47;

    v43 = OS_LOG_TYPE_DEFAULT;
    *(v46 + 12) = 2048;
    v48 = *(v37 + 16);

    *(v46 + 14) = v48;

    *(v46 + 22) = 2048;
    OUTLINED_FUNCTION_5();
    *(v46 + 24) = *(v83[0] + 16);
    *(v46 + 32) = 2048;
    OUTLINED_FUNCTION_5();
    *(v46 + 34) = *(v82 + 16);
    _os_log_impl(&dword_1C6F5C000, v44, v45, "Identified %ld named people and %ld named pets in this asset, with %ld people remaining and %ld pets remaining.", v46, 0x2Au);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v49 = v79;
  OUTLINED_FUNCTION_5();
  v50 = v83[0];
  v80 = MEMORY[0x1E69E7CC0];
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C7478898(MEMORY[0x1E69E7CC8], v50, v79, &v80);

  v51 = v80;
  swift_beginAccess();
  sub_1C75504FC();
  v52 = sub_1C74833EC(v83, v51);
  if (*(v83[0] + 16) >= v52)
  {
    sub_1C7159788(v52);
    swift_endAccess();
    sub_1C75504FC();
    v53 = sub_1C754FEEC();
    v54 = sub_1C755118C();
    if (OUTLINED_FUNCTION_23_0(v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134218240;
      v56 = *(v51 + 16);

      *(v55 + 4) = v56;
      v49 = v79;

      *(v55 + 12) = 2048;
      *(v55 + 14) = *(v83[0] + 16);
      _os_log_impl(&dword_1C6F5C000, v53, v43, "Identified %ld people without names but with confirmed relationships in this asset, with %ld people remaining.", v55, 0x16u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v57 = v83[0];
    v58 = sub_1C75504FC();
    sub_1C747CC48(v58, v49);

    v59 = sub_1C754FEEC();
    v60 = sub_1C755118C();
    if (OUTLINED_FUNCTION_23_0(v60))
    {
      v61 = OUTLINED_FUNCTION_41_0();
      *v61 = 134217984;
      *(v61 + 4) = *(v57 + 16);
      OUTLINED_FUNCTION_8();
      _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v67 = OUTLINED_FUNCTION_5();
    v68 = v82;
    MEMORY[0x1EEE9AC00](v67);
    sub_1C75504FC();
    v69 = sub_1C6FDA040();

    v70 = sub_1C754FEEC();
    v71 = sub_1C755118C();
    if (OUTLINED_FUNCTION_23_0(v71))
    {
      v72 = OUTLINED_FUNCTION_41_0();
      *v72 = 134217984;
      *(v72 + 4) = *(v68 + 16);
      _os_log_impl(&dword_1C6F5C000, v70, v77, "Identified %ld remaining pets without names in this asset.", v72, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    OUTLINED_FUNCTION_42_17();
    sub_1C747CCF4(v73, v74, v75, v76, v69);

LABEL_25:
    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_25_0();
    return;
  }

LABEL_29:
  __break(1u);
  swift_endAccess();
  __break(1u);
}

uint64_t sub_1C747BFB4(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v44 = MEMORY[0x1E69E7CC8];
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
  result = sub_1C75504FC();
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
    sub_1C6FB5E28(*(a1 + 56) + 40 * v12, v42);
    *&v41 = v15;
    *(&v41 + 1) = v14;
    v37 = v41;
    v38 = v42[0];
    v39 = v42[1];
    v40 = v43;
    sub_1C6FB5E28(&v38, v30);
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219738);
    if (swift_dynamicCast())
    {
      if (*(&v34 + 1) == 1)
      {
        goto LABEL_17;
      }

      v27 = *(&v34 + 1);
      v45 = v36;
      v28 = v34;
      v29 = v35;
      v33 = v40;
      v32[0] = v38;
      v32[1] = v39;
      v31 = v37;
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1C7355628();
        v2 = v44;
      }

      v16 = v31;
      sub_1C7551F3C();
      sub_1C75505AC();
      result = sub_1C7551FAC();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v18) >> 6;
        while (++v20 != v23 || (v22 & 1) == 0)
        {
          v24 = v20 == v23;
          if (v20 == v23)
          {
            v20 = 0;
          }

          v22 |= v24;
          v25 = *(v17 + 8 * v20);
          if (v25 != -1)
          {
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v2 + 48) + 16 * v21) = v16;
      v26 = *(v2 + 56) + 40 * v21;
      *v26 = v28;
      *(v26 + 8) = v27;
      *(v26 + 16) = v29;
      *(v26 + 32) = v45;
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      v34 = xmmword_1C756A560;
      v36 = 0;
      v35 = 0uLL;
LABEL_17:
      sub_1C6FD7FC8(&v37, &qword_1EC2181B8);
      result = sub_1C73CB2E4(v34, *(&v34 + 1));
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

uint64_t sub_1C747C2EC(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v44 = MEMORY[0x1E69E7CC8];
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
  result = sub_1C75504FC();
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
    sub_1C6FB5E28(*(a1 + 56) + 40 * v12, v42);
    *&v41 = v15;
    *(&v41 + 1) = v14;
    v37 = v41;
    v38 = v42[0];
    v39 = v42[1];
    v40 = v43;
    sub_1C6FB5E28(&v38, v31);
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219738);
    if (swift_dynamicCast())
    {
      if (*(&v35 + 1) == 1)
      {
        goto LABEL_17;
      }

      v27 = *(&v35 + 1);
      v29 = v36[20];
      v28 = *&v36[16];
      v45 = v35;
      v30 = *v36;
      v34 = v40;
      v33[0] = v38;
      v33[1] = v39;
      v32 = v37;
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1C7355434();
        v2 = v44;
      }

      v16 = v32;
      sub_1C7551F3C();
      sub_1C75505AC();
      result = sub_1C7551FAC();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v18) >> 6;
        while (++v20 != v23 || (v22 & 1) == 0)
        {
          v24 = v20 == v23;
          if (v20 == v23)
          {
            v20 = 0;
          }

          v22 |= v24;
          v25 = *(v17 + 8 * v20);
          if (v25 != -1)
          {
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v2 + 48) + 16 * v21) = v16;
      v26 = *(v2 + 56) + 40 * v21;
      *v26 = v45;
      *(v26 + 8) = v27;
      *(v26 + 16) = v30;
      *(v26 + 36) = (v28 | (v29 << 32)) >> 32;
      *(v26 + 32) = v28;
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {
      v35 = xmmword_1C756A560;
      *v36 = 0;
      *&v36[8] = 0;
      *&v36[13] = 0;
LABEL_17:
      sub_1C6FD7FC8(&v37, &qword_1EC2181B8);
      result = sub_1C73CB2E4(v35, *(&v35 + 1));
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

void AssetRichDescriptionsGenerator.characterUUIDsToNameInAssetCurationARD(userQueryCharacterUUIDs:sortedCharacterUUIDs:maximumNumberOfNamedCharacters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (a3 <= v4)
  {
    v21 = sub_1C754FEEC();
    v22 = sub_1C755118C();
    if (OUTLINED_FUNCTION_128(v22))
    {
      v23 = OUTLINED_FUNCTION_41_0();
      *v23 = 134217984;
      *(v23 + 4) = v4;
      _os_log_impl(&dword_1C6F5C000, v21, v22, "Already enough characters mentioned in user's query: %ld", v23, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    OUTLINED_FUNCTION_59_28();

    sub_1C75504FC();
  }

  else
  {
    v36 = a3 - v4;
    v5 = 0;
    v6 = *(a2 + 16);
    v7 = a2 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    v37 = a2 + 32;
LABEL_3:
    while (1)
    {
      v9 = v5;
      if (v5 == v6)
      {
        break;
      }

      if (v5 >= v6)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      ++v5;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_36;
      }

      v10 = (v7 + 16 * v9);
      v12 = *v10;
      v11 = v10[1];
      if (*(a1 + 16))
      {
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_57_29();
        while (1)
        {
          v14 = v13 & v38;
          if (((*(a1 + 56 + (((v13 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v38)) & 1) == 0)
          {
            break;
          }

          v15 = (*(a1 + 48) + 16 * v14);
          if (*v15 != v12 || v15[1] != v11)
          {
            v17 = sub_1C7551DBC();
            v13 = v14 + 1;
            if ((v17 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_3;
        }
      }

      else
      {
        sub_1C75504FC();
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C();
        v8 = v39;
      }

      v19 = *(v8 + 16);
      if (v19 >= *(v8 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v8 = v39;
      }

      *(v8 + 16) = v19 + 1;
      v20 = v8 + 16 * v19;
      *(v20 + 32) = v12;
      *(v20 + 40) = v11;
      v7 = v37;
    }

    v25 = *(v8 + 16);
    if (v36 >= v25)
    {
      v27 = sub_1C754FEEC();
      v28 = sub_1C755118C();
      if (OUTLINED_FUNCTION_23_0(v28))
      {
        v29 = OUTLINED_FUNCTION_41_0();
        *v29 = 134217984;
        *(v29 + 4) = v25;
        OUTLINED_FUNCTION_8();
        _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C75504FC();
      OUTLINED_FUNCTION_59_28();

      sub_1C70739AC();
    }

    else
    {
      sub_1C7033F04(v36, v8);
      sub_1C75504FC();
      OUTLINED_FUNCTION_59_28();

      sub_1C70747A4();
    }
  }
}

uint64_t sub_1C747C950(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a1;
  v42 = MEMORY[0x1E69E7CD0];
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = sub_1C75504FC();
  v12 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v38 = v11;
  v37 = a3;
  while (v9)
  {
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = (*(v5 + 48) + ((v12 << 10) | (16 * v14)));
    v17 = *v15;
    v16 = v15[1];
    if (a3)
    {
      if (*(a2 + 16))
      {
        sub_1C75504FC();
        v18 = sub_1C6F78124(v17, v16);
        if (v19)
        {
          sub_1C6FB5E28(*(a2 + 56) + 40 * v18, &v39);
          v20 = v40;
          v21 = v41;
          __swift_project_boxed_opaque_existential_1(&v39, v40);
          v22 = (*(v21 + 24))(v20, v21);
          goto LABEL_16;
        }

LABEL_23:
      }
    }

    else if (*(a2 + 16))
    {
      sub_1C75504FC();
      v24 = sub_1C6F78124(v17, v16);
      if ((v25 & 1) == 0)
      {
        goto LABEL_23;
      }

      sub_1C6FB5E28(*(a2 + 56) + 40 * v24, &v39);
      v26 = v40;
      v27 = v41;
      __swift_project_boxed_opaque_existential_1(&v39, v40);
      v22 = (*(v27 + 16))(v26, v27);
LABEL_16:
      v28 = v22;
      v29 = v23;
      __swift_destroy_boxed_opaque_existential_1(&v39);
      if (!v29)
      {
        goto LABEL_21;
      }

      v30 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v30 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (!v30)
      {

LABEL_21:

        goto LABEL_22;
      }

      sub_1C70F082C(&v39, v17, v16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v36 = v33;
      }

      v31 = *(v36 + 16);
      if (v31 >= *(v36 + 24) >> 1)
      {
        sub_1C6FB1814();
        v36 = v34;
      }

      *(v36 + 16) = v31 + 1;
      v32 = v36 + 16 * v31;
      *(v32 + 32) = v28;
      *(v32 + 40) = v29;
LABEL_22:
      v5 = v38;
      a3 = v37;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      v39 = v36;
      sub_1C75504FC();
      sub_1C70401E8();

      return v39;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C747CC48(uint64_t a1, uint64_t a2)
{
  v8 = MEMORY[0x1E69E7CC8];
  v3 = *(a1 + 16);
  for (i = (a1 + 40); v3; --v3)
  {
    v5 = *i;
    v7[0] = *(i - 1);
    v7[1] = v5;
    sub_1C75504FC();
    sub_1C747DA74(&v8, v7, a2);

    i += 2;
  }

  return v8;
}

uint64_t sub_1C747CCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C747DFB0(a2, sub_1C74855A0, sub_1C739D304, sub_1C747A5C4, sub_1C71BBAD4);
  v8 = *(v7 + 16);
  v9 = &unk_1C755C000;
  if (v8)
  {
    v71 = a4;
    v72 = a5;
    v10 = (v7 + 40);
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v12 = *(v10 - 8);
      v84 = v11;
      v80 = *v10;
      v82 = v8;
      if (*v10 >= 2)
      {
        LOBYTE(v86) = *(v10 - 8);
        v13 = StoryPersonRelationshipType.pluralValue.getter();
        v15 = v13;
        v16 = v14;
        v78 = v13;
        v79 = v14;
        v17 = v13;
        v18 = v14;
        v19 = v13;
        v76 = v13;
        v77 = v14;
        v20 = v13;
        v21 = v14;
        v22 = v13;
        v23 = v13;
        v24 = v13;
        v25 = v14;
        v75 = v13;
        v26 = v13;
        v27 = v13;
        v28 = v13;
        v29 = v14;
        v30 = v13;
        v31 = v13;
        v32 = v13;
        v33 = v14;
        v34 = v14;
        v35 = v13;
        switch(v12)
        {
          case 1:
            goto LABEL_6;
          case 2:
            goto LABEL_13;
          case 3:
            goto LABEL_15;
          case 4:
            goto LABEL_10;
          case 5:
            goto LABEL_18;
          case 6:
            goto LABEL_20;
          case 7:
            goto LABEL_16;
          case 8:
            goto LABEL_22;
          case 9:
            goto LABEL_12;
          case 10:
            goto LABEL_21;
          case 11:
            goto LABEL_9;
          case 12:
            goto LABEL_11;
          case 13:
            goto LABEL_19;
          case 14:
            goto LABEL_8;
          case 15:
            goto LABEL_14;
          case 16:
            goto LABEL_7;
          case 17:
            goto LABEL_17;
          default:
            goto LABEL_23;
        }
      }

      v79 = 0x80000001C7596B70;
      v25 = 0x80000001C7596BD0;
      v22 = 0x726568746166;
      v75 = 0x726568746F6DLL;
      v76 = 0xD000000000000013;
      v77 = 0x80000001C7596BA0;
      v78 = 0xD000000000000015;
      v29 = 0xE300000000000000;
      v33 = 0xE200000000000000;
      v21 = 0xE600000000000000;
      v18 = 0xE800000000000000;
      v16 = 0xE500000000000000;
      v14 = 0xE700000000000000;
      v32 = 25965;
      v13 = 0x726568746F7262;
      v15 = 0x646C696863;
      v17 = 0x72656B726F776F63;
      v19 = 0x7265746867756164;
      v20 = 0x796C696D6166;
      v23 = 0x646E65697266;
      v24 = 0xD000000000000010;
      v26 = 0x746E65726170;
      v27 = 0x72656E74726170;
      v28 = 7237491;
      v30 = 0x726574736973;
      v31 = 7367030;
      v35 = 0x746E696175716361;
      v34 = 0xEC00000065636E61;
      switch(*(v10 - 8))
      {
        case 1:
LABEL_6:
          v34 = v14;
          v35 = v13;
          goto LABEL_23;
        case 2:
LABEL_13:
          v34 = v16;
          v35 = v15;
          goto LABEL_23;
        case 3:
LABEL_15:
          v35 = v78;
          v34 = v79;
          goto LABEL_23;
        case 4:
LABEL_10:
          v34 = v18;
          v35 = v17;
          goto LABEL_23;
        case 5:
LABEL_18:
          v34 = v18;
          v35 = v19;
          goto LABEL_23;
        case 6:
LABEL_20:
          v35 = v76;
          v34 = v77;
          goto LABEL_23;
        case 7:
LABEL_16:
          v34 = v21;
          v35 = v20;
          goto LABEL_23;
        case 8:
LABEL_22:
          v34 = v21;
          v35 = v22;
          goto LABEL_23;
        case 9:
LABEL_12:
          v34 = v21;
          v35 = v23;
          goto LABEL_23;
        case 0xA:
LABEL_21:
          v34 = v25;
          v35 = v24;
          goto LABEL_23;
        case 0xB:
LABEL_9:

          v35 = v32;
          v34 = v33;
          goto LABEL_24;
        case 0xC:
LABEL_11:
          v34 = v21;
          v35 = v75;
          goto LABEL_23;
        case 0xD:
LABEL_19:
          v34 = v21;
          v35 = v26;
          goto LABEL_23;
        case 0xE:
LABEL_8:
          v34 = v14;
          v35 = v27;
          goto LABEL_23;
        case 0xF:
LABEL_14:
          v34 = v29;
          v35 = v28;
          goto LABEL_23;
        case 0x10:
LABEL_7:
          v34 = v21;
          v35 = v30;
          goto LABEL_23;
        case 0x11:
LABEL_17:
          v34 = v29;
          v35 = v31;
          goto LABEL_23;
        default:
LABEL_23:
          v36 = sub_1C7551DBC();

          if (v36)
          {
LABEL_24:
            v11 = v84;
LABEL_27:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C6FB1814();
              v11 = v45;
            }

            v38 = *(v11 + 16);
            if (v38 >= *(v11 + 24) >> 1)
            {
              sub_1C6FB1814();
              v11 = v46;
            }

            *(v11 + 16) = v38 + 1;
            v39 = v11 + 16 * v38;
            *(v39 + 32) = v35;
            *(v39 + 40) = v34;
            goto LABEL_32;
          }

          v11 = v84;
          if (v80 >= 1)
          {
            v86 = sub_1C7551D8C();
            v87 = v37;
            MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
            MEMORY[0x1CCA5CD70](v35, v34);

            v35 = v86;
            v34 = v87;
            goto LABEL_27;
          }

          if (qword_1EC214268 != -1)
          {
            swift_once();
          }

          v40 = sub_1C754FF1C();
          __swift_project_value_buffer(v40, qword_1EC25B9C0);
          sub_1C75504FC();
          v41 = sub_1C754FEEC();
          v42 = sub_1C755119C();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v86 = v44;
            *v43 = 136315394;
            *(v43 + 4) = sub_1C6F765A4(v35, v34, &v86);
            *(v43 + 12) = 2048;
            *(v43 + 14) = v80;
            _os_log_impl(&dword_1C6F5C000, v41, v42, "Cannot generate a frequency string for character type %s with %ld characters.", v43, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v44);
            MEMORY[0x1CCA5F8E0](v44, -1, -1);
            MEMORY[0x1CCA5F8E0](v43, -1, -1);
          }

LABEL_32:
          v10 += 2;
          v8 = v82 - 1;
          if (v82 == 1)
          {
            v85 = v11;

            a5 = v72;
            v9 = &unk_1C755C000;
            a4 = v71;
            goto LABEL_40;
          }

          break;
      }
    }
  }

  v85 = MEMORY[0x1E69E7CC0];
LABEL_40:
  sub_1C747E058(a3, a4);
  v81 = v47;
  v48 = sub_1C747DFB0(a5, sub_1C7485388, sub_1C739D2C4, sub_1C747A520, sub_1C71BB9E8);
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = (v48 + 40);
    v51 = MEMORY[0x1E69E7CC0];
    v83 = v9[138];
    do
    {
      v52 = *v50;
      v53 = static StoryGenerationCharacterTypes.detectionTypeString(for:isPlural:)(*(v50 - 4), *v50 > 1);
      if (v54)
      {
        v55 = v53;
        v56 = v54;
        if (v52 < 1)
        {
          if (qword_1EC214268 != -1)
          {
            swift_once();
          }

          v62 = sub_1C754FF1C();
          __swift_project_value_buffer(v62, qword_1EC25B9C0);
          sub_1C75504FC();
          v63 = sub_1C754FEEC();
          v64 = sub_1C755119C();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v86 = v66;
            *v65 = v83;
            *(v65 + 4) = sub_1C6F765A4(v55, v56, &v86);
            *(v65 + 12) = 2048;
            *(v65 + 14) = v52;
            _os_log_impl(&dword_1C6F5C000, v63, v64, "Cannot generate a frequency string for character type %s with %ld characters.", v65, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v66);
            MEMORY[0x1CCA5F8E0](v66, -1, -1);
            MEMORY[0x1CCA5F8E0](v65, -1, -1);
          }
        }

        else
        {
          v86 = sub_1C7551D8C();
          v87 = v57;
          MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
          MEMORY[0x1CCA5CD70](v55, v56);

          v58 = v86;
          v59 = v87;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v51 = v67;
          }

          v60 = *(v51 + 16);
          if (v60 >= *(v51 + 24) >> 1)
          {
            sub_1C6FB1814();
            v51 = v68;
          }

          *(v51 + 16) = v60 + 1;
          v61 = v51 + 16 * v60;
          *(v61 + 32) = v58;
          *(v61 + 40) = v59;
        }
      }

      v50 += 2;
      --v49;
    }

    while (v49);
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

  v88 = a1;
  sub_1C75504FC();
  sub_1C6FD2568(v85);
  sub_1C6FD2568(v81);
  sub_1C6FD2568(v51);
  if (*(v88 + 16))
  {
    v69 = static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(v88, 1, 0);
  }

  else
  {

    return 0;
  }

  return v69;
}

uint64_t sub_1C747D73C(uint64_t a1, uint64_t a2)
{
  sub_1C712A774(a1, &v35, &qword_1EC2181B8);
  v4 = v35;
  v3 = v36;
  sub_1C6F699F8(v37, v38);
  sub_1C712A774(a2, &v35, &qword_1EC2181B8);
  v6 = v35;
  v5 = v36;
  sub_1C6F699F8(v37, v32);
  v7 = v39;
  v8 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v9 = (*(v8 + 40))(v7, v8) & 1;
  v10 = v33;
  v11 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  if (v9 == ((*(v11 + 40))(v10, v11) & 1))
  {
    v15 = v39;
    v16 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v17 = (*(v16 + 32))(v15, v16) & 1;
    v18 = v33;
    v19 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    if (v17 != ((*(v19 + 32))(v18, v19) & 1))
    {

      v20 = v39;
      v21 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v14 = (*(v21 + 32))(v20, v21);
      goto LABEL_5;
    }

    v24 = v39;
    v25 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v25 + 16))(v24, v25);
    v27 = v26;
    v28 = v33;
    v29 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    (*(v29 + 16))(v28, v29);
    v22 = v27 != 0;
    if (v27)
    {
      if (v30)
      {

LABEL_12:
        if (v4 == v6 && v3 == v5)
        {

          v22 = 0;
          goto LABEL_6;
        }

        v22 = sub_1C7551DBC();

LABEL_20:

        goto LABEL_6;
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_20;
  }

  v12 = v39;
  v13 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v14 = (*(v13 + 40))(v12, v13);
LABEL_5:
  v22 = v14;
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v22 & 1;
}

void sub_1C747DA74(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = sub_1C6F78124(*a2, a2[1]);
    if (v6)
    {
      v7 = *(*(a3 + 56) + 40 * v5 + 36);
      if (v7 == 2)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v24 = *a1;
        v33 = *a1;
        v25 = sub_1C6FC34F4(1);
        if (__OFADD__(*(v24 + 16), (v26 & 1) == 0))
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v27 = v25;
        v28 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2C0);
        if (sub_1C7551A2C())
        {
          v29 = sub_1C6FC34F4(1);
          if ((v28 & 1) != (v30 & 1))
          {
            goto LABEL_35;
          }

          v27 = v29;
        }

        *a1 = v33;
        if ((v28 & 1) == 0)
        {
          sub_1C6FC775C(v27, 1, 0, v33);
        }

        v15 = (*(v33 + 56) + 8 * v27);
        v16 = *v15 + 1;
        if (!__OFADD__(*v15, 1))
        {
          goto LABEL_21;
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v7 == 1)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v8 = *a1;
        v31 = *a1;
        v9 = sub_1C6FC34F4(2);
        if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v11 = v9;
        v12 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2C0);
        if (sub_1C7551A2C())
        {
          v13 = sub_1C6FC34F4(2);
          if ((v12 & 1) != (v14 & 1))
          {
            goto LABEL_35;
          }

          v11 = v13;
        }

        *a1 = v31;
        if ((v12 & 1) == 0)
        {
          sub_1C6FC775C(v11, 2, 0, v31);
        }

        v15 = (*(v31 + 56) + 8 * v11);
        v16 = *v15 + 1;
        if (!__OFADD__(*v15, 1))
        {
          goto LABEL_21;
        }

        __break(1u);
      }
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  v17 = *a1;
  v32 = *a1;
  v18 = sub_1C6FC34F4(0);
  if (__OFADD__(*(v17 + 16), (v19 & 1) == 0))
  {
    goto LABEL_31;
  }

  v20 = v18;
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2C0);
  if ((sub_1C7551A2C() & 1) == 0)
  {
    goto LABEL_18;
  }

  v22 = sub_1C6FC34F4(0);
  if ((v21 & 1) == (v23 & 1))
  {
    v20 = v22;
LABEL_18:
    *a1 = v32;
    if ((v21 & 1) == 0)
    {
      sub_1C6FC775C(v20, 0, 0, v32);
    }

    v15 = (*(v32 + 56) + 8 * v20);
    v16 = *v15 + 1;
    if (!__OFADD__(*v15, 1))
    {
LABEL_21:
      *v15 = v16;
      return;
    }

    goto LABEL_32;
  }

LABEL_35:
  sub_1C7551E4C();
  __break(1u);
}

void sub_1C747DD38(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = sub_1C6F78124(*a2, a2[1]);
    if (v6)
    {
      v7 = *(*(a3 + 56) + 40 * v5 + 34);
      if (v7 == 4)
      {
        goto LABEL_14;
      }

      if (v7 == 3)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v8 = *a1;
        v29 = *a1;
        v9 = sub_1C6FC3598(3u);
        if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
        {
          __break(1u);
          goto LABEL_27;
        }

        v11 = v9;
        v12 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2B8);
        if (sub_1C7551A2C())
        {
          v13 = sub_1C6FC3598(3u);
          if ((v12 & 1) != (v14 & 1))
          {
            goto LABEL_29;
          }

          v11 = v13;
        }

        *a1 = v29;
        if ((v12 & 1) == 0)
        {
          sub_1C6FC7798(v11, 3, 0, v29);
        }

        v15 = *(v29 + 56);
        v16 = *(v15 + 8 * v11);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (!v17)
        {
          goto LABEL_21;
        }

        __break(1u);
LABEL_14:
        swift_isUniquelyReferenced_nonNull_native();
        v19 = *a1;
        v30 = *a1;
        v20 = sub_1C6FC3598(4u);
        if (!__OFADD__(*(v19 + 16), (v21 & 1) == 0))
        {
          v11 = v20;
          v22 = v21;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2B8);
          if ((sub_1C7551A2C() & 1) == 0)
          {
            goto LABEL_18;
          }

          v23 = sub_1C6FC3598(4u);
          if ((v22 & 1) == (v24 & 1))
          {
            v11 = v23;
LABEL_18:
            *a1 = v30;
            if ((v22 & 1) == 0)
            {
              sub_1C6FC7798(v11, 4, 0, v30);
            }

            v15 = *(v30 + 56);
            v25 = *(v15 + 8 * v11);
            v17 = __OFADD__(v25, 1);
            v18 = v25 + 1;
            if (!v17)
            {
LABEL_21:
              *(v15 + 8 * v11) = v18;
              return;
            }

            goto LABEL_28;
          }

LABEL_29:
          type metadata accessor for PHDetectionType(0);
          sub_1C7551E4C();
          __break(1u);
          return;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v26 = sub_1C754FEEC();
      v27 = sub_1C755119C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1C6F5C000, v26, v27, "Received unexpected pet type.", v28, 2u);
        MEMORY[0x1CCA5F8E0](v28, -1, -1);
      }
    }
  }
}

uint64_t sub_1C747DFB0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t *), uint64_t (*a5)(uint64_t))
{
  sub_1C7483600(a1, a2);
  v8 = a3();

  v11 = v8;
  a4(&v11);
  v9 = a5(v11);

  return v9;
}

void sub_1C747E058(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6FE1680(0, a1);
  if ((v5 & 1) == 0 && v4 == a2 && (a2 <= 1 ? (v6 = 0x6E6F73726570) : (v6 = 0x656C706F6570), v7 = static StoryGenerationCharacterTypes.frequencyString(for:typeString:)(a2, v6, 0xE600000000000000), v9 = v8, , v9))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C755BAB0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
  }

  else
  {
    v11 = sub_1C747DFB0(a1, sub_1C7485100, sub_1C739D284, sub_1C747A47C, sub_1C71BB91C);
    v12 = 0;
    v43 = MEMORY[0x1E69E7CC0];
    v13 = *(v11 + 16);
    v14 = v11 + 40;
    v44 = v13;
LABEL_9:
    for (i = (v14 + 16 * v12); ; i += 2)
    {
      if (v13 == v12)
      {

        return;
      }

      if (v12 >= *(v11 + 16))
      {
        break;
      }

      v16 = *(i - 8);
      v17 = *i;
      if (*(i - 8))
      {
        if (v17 >= 2)
        {
          v33 = 0xE500000000000000;
          if (v16 == 2)
          {
            v33 = 0xE600000000000000;
          }

          v34 = 0x736569626162;
          if (v16 != 2)
          {
            v34 = 0x726568746FLL;
          }

          if (v16 == 1)
          {
            v21 = 0xE800000000000000;
          }

          else
          {
            v21 = v33;
          }

          if (v16 == 1)
          {
            v20 = 0x6E6572646C696863;
          }

          else
          {
            v20 = v34;
          }

LABEL_45:
          v45 = sub_1C7551D8C();
          v46 = v35;
          MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
          MEMORY[0x1CCA5CD70](v20, v21);

          v36 = v45;
          v37 = v46;
          v14 = v11 + 40;
          v38 = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v38 = v41;
          }

          v39 = *(v38 + 16);
          if (v39 >= *(v38 + 24) >> 1)
          {
            sub_1C6FB1814();
            v38 = v42;
          }

          ++v12;
          *(v38 + 16) = v39 + 1;
          v43 = v38;
          v40 = v38 + 16 * v39;
          *(v40 + 32) = v36;
          *(v40 + 40) = v37;
          v13 = v44;
          goto LABEL_9;
        }

        v18 = 2036490594;
        if (v16 != 2)
        {
          v18 = 0x726568746FLL;
        }

        v19 = 0xE400000000000000;
        if (v16 != 2)
        {
          v19 = 0xE500000000000000;
        }

        if (v16 == 1)
        {
          v20 = 0x646C696863;
        }

        else
        {
          v20 = v18;
        }

        if (v16 == 1)
        {
          v21 = 0xE500000000000000;
        }

        else
        {
          v21 = v19;
        }

        if (v17 == 1)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v17 <= 1)
        {
          v22 = 0x6E6F73726570;
        }

        else
        {
          v22 = 0x656C706F6570;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1C75604F0;
        v24 = MEMORY[0x1E69E6158];
        *(v23 + 56) = MEMORY[0x1E69E6158];
        v25 = sub_1C6F6D524();
        *(v23 + 32) = 0x726568746FLL;
        *(v23 + 40) = 0xE500000000000000;
        *(v23 + 96) = v24;
        *(v23 + 104) = v25;
        *(v23 + 64) = v25;
        *(v23 + 72) = v22;
        *(v23 + 80) = 0xE600000000000000;
        v20 = sub_1C75506BC();
        v21 = v26;
        if (v17 >= 1)
        {
          goto LABEL_45;
        }
      }

      if (qword_1EC214268 != -1)
      {
        swift_once();
      }

      v27 = sub_1C754FF1C();
      __swift_project_value_buffer(v27, qword_1EC25B9C0);
      sub_1C75504FC();
      v28 = sub_1C754FEEC();
      v29 = sub_1C755119C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v45 = v31;
        *v30 = 136315394;
        *(v30 + 4) = sub_1C6F765A4(v20, v21, &v45);
        *(v30 + 12) = 2048;
        *(v30 + 14) = v17;
        _os_log_impl(&dword_1C6F5C000, v28, v29, "Cannot generate a frequency string for character type %s with %ld characters.", v30, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x1CCA5F8E0](v31, -1, -1);
        v32 = v30;
        v13 = v44;
        MEMORY[0x1CCA5F8E0](v32, -1, -1);
      }

      ++v12;
    }

    __break(1u);
  }
}

uint64_t sub_1C747E528(unsigned __int8 a1, uint64_t a2, char a3)
{
  v4 = 0x6E6F73726570;
  v5 = 0xE600000000000000;
  v6 = a1;
  v7 = 0x6E6F73726570;
  switch(v6)
  {
    case 1:
      v5 = 0xE500000000000000;
      v7 = 0x646C696863;
      break;
    case 2:
      v5 = 0xE400000000000000;
      v7 = 2036490594;
      break;
    case 3:
      v5 = 0xE500000000000000;
      v7 = 0x726568746FLL;
      break;
    default:
      break;
  }

  v8 = 0xE600000000000000;
  switch(a3)
  {
    case 1:
      v8 = 0xE500000000000000;
      v4 = 0x646C696863;
      break;
    case 2:
      v8 = 0xE400000000000000;
      v4 = 2036490594;
      break;
    case 3:
      v8 = 0xE500000000000000;
      v4 = 0x726568746FLL;
      break;
    default:
      break;
  }

  if (v7 == v4 && v5 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1C7551DBC();
  }

  return v10 & 1;
}

uint64_t sub_1C747E65C()
{
  v0 = StoryPersonRelationshipType.rawValue.getter();
  v2 = v1;
  if (v0 == StoryPersonRelationshipType.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1C7551DBC();
  }

  return v5 & 1;
}

uint64_t sub_1C747E700(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  for (i = a1 + 40; ; i += 16)
  {
    if (v2 == v1)
    {
      v5 = 0;
      goto LABEL_7;
    }

    MEMORY[0x1EEE9AC00](a1);
    sub_1C75504FC();
    v4 = sub_1C70735F4();

    if (v4)
    {
      break;
    }

    ++v1;
  }

  v5 = v1;
LABEL_7:

  return v5;
}

uint64_t sub_1C747E80C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (v3 == v4)
    {
      v16 = 0;
      goto LABEL_15;
    }

    if (*(a2 + 16))
    {
      break;
    }

LABEL_13:
    ++v3;
  }

  v7 = (v5 + 16 * v3);
  v9 = *v7;
  v8 = v7[1];
  sub_1C7551F3C();
  sub_1C75504FC();
  sub_1C75505AC();
  v10 = sub_1C7551FAC();
  v11 = ~(-1 << *(a2 + 32));
  do
  {
    v12 = v10 & v11;
    if (((*(v6 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
    {

      goto LABEL_13;
    }

    v13 = (*(a2 + 48) + 16 * v12);
    if (*v13 == v9 && v13[1] == v8)
    {
      break;
    }

    v15 = sub_1C7551DBC();
    v10 = v12 + 1;
  }

  while ((v15 & 1) == 0);

  v16 = v3;
LABEL_15:

  return v16;
}

uint64_t sub_1C747E954(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C6FF7814();
  v6 = type metadata accessor for Hastings.Feature();
  sub_1C754F58C();
  sub_1C7485D20(&qword_1EC215238, MEMORY[0x1E69C1928]);
  sub_1C755059C();
  sub_1C7551FAC();
  v7 = sub_1C755163C();
  *(a3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
  result = sub_1C7485CC8(a1, a3[6] + *(*(v6 - 8) + 72) * v7);
  *(a3[7] + 8 * v7) = a2;
  ++a3[2];
  return result;
}

uint64_t sub_1C747EAB0(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a1 + 8);
  result = sub_1C7551D7C();
  if (result < v9)
  {
    if (v9 >= -1)
    {
      v11 = result;
      v12 = v9 / 2;
      if (v9 <= 1)
      {
        v13 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        v13 = sub_1C7550BBC();
        *(v13 + 16) = v12;
      }

      v14[0] = v13 + 32;
      v14[1] = v12;
      a4(v14, v15, a1, v11);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v9 < 0)
  {
    goto LABEL_12;
  }

  if (v9)
  {
    return a5(0, v9, 1, a1);
  }

  return result;
}

uint64_t sub_1C747EBCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v41 = *a4;
  v4 = *a4 + 56 * a3;
  v5 = result - a3;
  while (2)
  {
    v39 = v4;
    v40 = a3;
    v38 = v5;
    while (1)
    {
      sub_1C712A774(v4, v53, &qword_1EC2181B8);
      v6 = v4 - 56;
      sub_1C712A774(v4 - 56, v52, &qword_1EC2181B8);
      sub_1C712A774(v53, &v46, &qword_1EC2181B8);
      v7 = v47;
      v54 = v46;
      sub_1C6F699F8(v48, v49);
      sub_1C712A774(v52, &v46, &qword_1EC2181B8);
      v8 = v47;
      v42 = v46;
      sub_1C6F699F8(v48, v43);
      v9 = v50;
      v10 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      LODWORD(v9) = (*(v10 + 40))(v9, v10);
      v11 = v44;
      v12 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      if ((v9 ^ (*(v12 + 40))(v11, v12)))
      {

        v13 = v50;
        v14 = v51;
        __swift_project_boxed_opaque_existential_1(v49, v50);
        v15 = (*(v14 + 40))(v13, v14);
LABEL_8:
        v22 = v15;
        goto LABEL_22;
      }

      v16 = v50;
      v17 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      LODWORD(v16) = (*(v17 + 32))(v16, v17);
      v18 = v44;
      v19 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      if ((v16 ^ (*(v19 + 32))(v18, v19)))
      {

        v20 = v50;
        v21 = v51;
        __swift_project_boxed_opaque_existential_1(v49, v50);
        v15 = (*(v21 + 32))(v20, v21);
        goto LABEL_8;
      }

      v23 = v50;
      v24 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      (*(v24 + 16))(v23, v24);
      v26 = v25;
      v27 = v44;
      v28 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      (*(v28 + 16))(v27, v28);
      v22 = v26 != 0;
      if (v26)
      {
        if (v29)
        {

          goto LABEL_14;
        }

LABEL_20:

        goto LABEL_21;
      }

      if (v29)
      {

        goto LABEL_20;
      }

LABEL_14:
      if (v54 == v42 && v7 == v8)
      {
        break;
      }

      v22 = sub_1C7551DBC();

LABEL_21:

LABEL_22:
      __swift_destroy_boxed_opaque_existential_1(v43);
      __swift_destroy_boxed_opaque_existential_1(v49);
      sub_1C6FD7FC8(v52, &qword_1EC2181B8);
      result = sub_1C6FD7FC8(v53, &qword_1EC2181B8);
      if (v22)
      {
        if (!v41)
        {
          __break(1u);
          return result;
        }

        v31 = *(v4 + 48);
        v33 = *(v4 + 16);
        v32 = *(v4 + 32);
        v34 = *v4;
        v35 = *(v4 - 40);
        *v4 = *v6;
        *(v4 + 16) = v35;
        *(v4 + 32) = *(v4 - 24);
        *(v4 + 48) = *(v4 - 8);
        *v6 = v34;
        *(v4 - 40) = v33;
        *(v4 - 24) = v32;
        v4 -= 56;
        *(v6 + 48) = v31;
        if (!__CFADD__(v5++, 1))
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v49);
    sub_1C6FD7FC8(v52, &qword_1EC2181B8);
    result = sub_1C6FD7FC8(v53, &qword_1EC2181B8);
LABEL_26:
    a3 = v40 + 1;
    v4 = v39 + 56;
    v5 = v38 - 1;
    if (v40 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_1C747F028(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 16 * a3 - 16;
    v7 = result - a3;
    while (2)
    {
      v8 = *(v5 + 16 * v4);
      v18 = v7;
      v19 = v6;
      while (1)
      {
        v9 = 0xE600000000000000;
        v10 = 0x6E6F73726570;
        switch(v8)
        {
          case 1:
            v9 = 0xE500000000000000;
            v10 = 0x646C696863;
            break;
          case 2:
            v9 = 0xE400000000000000;
            v10 = 2036490594;
            break;
          case 3:
            v9 = 0xE500000000000000;
            v10 = 0x726568746FLL;
            break;
          default:
            break;
        }

        v11 = 0xE600000000000000;
        v12 = 0x6E6F73726570;
        switch(*v6)
        {
          case 1:
            v11 = 0xE500000000000000;
            v12 = 0x646C696863;
            break;
          case 2:
            v11 = 0xE400000000000000;
            v12 = 2036490594;
            break;
          case 3:
            v11 = 0xE500000000000000;
            v12 = 0x726568746FLL;
            break;
          default:
            break;
        }

        if (v10 == v12 && v9 == v11)
        {
          break;
        }

        v14 = sub_1C7551DBC();

        if (v14)
        {
          if (!v5)
          {
            __break(1u);
            return result;
          }

          v8 = *(v6 + 16);
          v15 = *(v6 + 24);
          *(v6 + 16) = *v6;
          *v6 = v8;
          *(v6 + 8) = v15;
          v6 -= 16;
          if (!__CFADD__(v7++, 1))
          {
            continue;
          }
        }

        goto LABEL_22;
      }

LABEL_22:
      ++v4;
      v6 = v19 + 16;
      v7 = v18 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C747F204(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 3);
        *(v9 + 1) = *v9;
        *v9 = v7;
        *(v9 + 1) = v10;
        v9 -= 8;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C747F27C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v25 = a3;
      v7 = *(v4 + 16 * a3);
      v23 = v6;
      v24 = v5;
      while (1)
      {
        v8 = 0xEC00000065636E61;
        v9 = 0x746E696175716361;
        switch(v7)
        {
          case 1:
            v8 = 0xE700000000000000;
            v10 = 0x6568746F7262;
            goto LABEL_8;
          case 2:
            v8 = 0xE500000000000000;
            v9 = 0x646C696863;
            break;
          case 3:
            v9 = 0xD000000000000015;
            v8 = 0x80000001C7596B70;
            break;
          case 4:
            v8 = 0xE800000000000000;
            v12 = 0x6B726F776F63;
            goto LABEL_19;
          case 5:
            v8 = 0xE800000000000000;
            v12 = 0x746867756164;
LABEL_19:
            v9 = v12 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
            break;
          case 6:
            v9 = 0xD000000000000013;
            v8 = 0x80000001C7596BA0;
            break;
          case 7:
            v8 = 0xE600000000000000;
            v9 = 0x796C696D6166;
            break;
          case 8:
            v8 = 0xE600000000000000;
            v11 = 1752457574;
            goto LABEL_24;
          case 9:
            v8 = 0xE600000000000000;
            v9 = 0x646E65697266;
            break;
          case 10:
            v9 = 0xD000000000000010;
            v8 = 0x80000001C7596BD0;
            break;
          case 11:
            v8 = 0xE200000000000000;
            v9 = 25965;
            break;
          case 12:
            v9 = 0x726568746F6DLL;
            v8 = 0xE600000000000000;
            break;
          case 13:
            v8 = 0xE600000000000000;
            v9 = 0x746E65726170;
            break;
          case 14:
            v8 = 0xE700000000000000;
            v10 = 0x656E74726170;
LABEL_8:
            v9 = v10 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
            break;
          case 15:
            v8 = 0xE300000000000000;
            v9 = 7237491;
            break;
          case 16:
            v8 = 0xE600000000000000;
            v11 = 1953720691;
LABEL_24:
            v9 = v11 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
            break;
          case 17:
            v8 = 0xE300000000000000;
            v9 = 7367030;
            break;
          default:
            break;
        }

        v13 = 0x746E696175716361;
        v14 = 0xEC00000065636E61;
        switch(*v5)
        {
          case 1:
            v14 = 0xE700000000000000;
            v15 = 0x6568746F7262;
            goto LABEL_29;
          case 2:
            v14 = 0xE500000000000000;
            v13 = 0x646C696863;
            break;
          case 3:
            v13 = 0xD000000000000015;
            v14 = 0x80000001C7596B70;
            break;
          case 4:
            v14 = 0xE800000000000000;
            v17 = 0x6B726F776F63;
            goto LABEL_40;
          case 5:
            v14 = 0xE800000000000000;
            v17 = 0x746867756164;
LABEL_40:
            v13 = v17 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
            break;
          case 6:
            v13 = 0xD000000000000013;
            v14 = 0x80000001C7596BA0;
            break;
          case 7:
            v14 = 0xE600000000000000;
            v13 = 0x796C696D6166;
            break;
          case 8:
            v14 = 0xE600000000000000;
            v16 = 1752457574;
            goto LABEL_45;
          case 9:
            v14 = 0xE600000000000000;
            v13 = 0x646E65697266;
            break;
          case 0xA:
            v13 = 0xD000000000000010;
            v14 = 0x80000001C7596BD0;
            break;
          case 0xB:
            v14 = 0xE200000000000000;
            v13 = 25965;
            break;
          case 0xC:
            v13 = 0x726568746F6DLL;
            v14 = 0xE600000000000000;
            break;
          case 0xD:
            v14 = 0xE600000000000000;
            v13 = 0x746E65726170;
            break;
          case 0xE:
            v14 = 0xE700000000000000;
            v15 = 0x656E74726170;
LABEL_29:
            v13 = v15 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
            break;
          case 0xF:
            v14 = 0xE300000000000000;
            v13 = 7237491;
            break;
          case 0x10:
            v14 = 0xE600000000000000;
            v16 = 1953720691;
LABEL_45:
            v13 = v16 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
            break;
          case 0x11:
            v14 = 0xE300000000000000;
            v13 = 7367030;
            break;
          default:
            break;
        }

        if (v9 == v13 && v8 == v14)
        {
          break;
        }

        v19 = sub_1C7551DBC();

        if (v19)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          v7 = *(v5 + 16);
          v20 = *(v5 + 24);
          *(v5 + 16) = *v5;
          *v5 = v7;
          *(v5 + 8) = v20;
          v5 -= 16;
          if (!__CFADD__(v6++, 1))
          {
            continue;
          }
        }

        goto LABEL_56;
      }

LABEL_56:
      a3 = v25 + 1;
      v5 = v24 + 16;
      v6 = v23 - 1;
      if (v25 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C747F6C0(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_130:
    v160 = *a1;
    if (!v160)
    {
      goto LABEL_172;
    }

    v4 = v143;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_132;
    }

    goto LABEL_166;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    v134 = v8;
    if (v6 >= v5)
    {
      goto LABEL_42;
    }

    v4 = *a3;
    sub_1C712A774(*a3 + 56 * v6, v159, &qword_1EC2181B8);
    sub_1C712A774(v4 + 56 * v8, v158, &qword_1EC2181B8);
    v145 = sub_1C747D73C(v159, v158);
    if (v143)
    {
      sub_1C6FD7FC8(v158, &qword_1EC2181B8);
      sub_1C6FD7FC8(v159, &qword_1EC2181B8);
LABEL_140:

      return;
    }

    v136 = v7;
    sub_1C6FD7FC8(v158, &qword_1EC2181B8);
    sub_1C6FD7FC8(v159, &qword_1EC2181B8);
    v138 = 56 * v8;
    v140 = v5;
    v9 = v4 + 56 * v8 + 112;
    v10 = v8 + 2;
    while (1)
    {
      v11 = v10;
      if (v6 + 1 >= v5)
      {
        break;
      }

      sub_1C712A774(v9, v159, &qword_1EC2181B8);
      sub_1C712A774(v9 - 56, v158, &qword_1EC2181B8);
      sub_1C712A774(v159, &v152, &qword_1EC2181B8);
      v160 = v152;
      v12 = v153;
      sub_1C6F699F8(v154, v155);
      sub_1C712A774(v158, &v152, &qword_1EC2181B8);
      v13 = v153;
      v147 = v152;
      sub_1C6F699F8(v154, v149);
      v14 = v156;
      v15 = v157;
      __swift_project_boxed_opaque_existential_1(v155, v156);
      LODWORD(v14) = (*(v15 + 40))(v14, v15);
      v16 = v150;
      v17 = v151;
      __swift_project_boxed_opaque_existential_1(v149, v150);
      if ((v14 ^ (*(v17 + 40))(v16, v17)))
      {

        v18 = v156;
        v19 = v157;
        __swift_project_boxed_opaque_existential_1(v155, v156);
        v20 = (*(v19 + 40))(v18, v19);
      }

      else
      {
        v21 = v156;
        v22 = v157;
        __swift_project_boxed_opaque_existential_1(v155, v156);
        LODWORD(v21) = (*(v22 + 32))(v21, v22);
        v23 = v150;
        v24 = v151;
        __swift_project_boxed_opaque_existential_1(v149, v150);
        if (((v21 ^ (*(v24 + 32))(v23, v24)) & 1) == 0)
        {
          v27 = v156;
          v28 = v157;
          __swift_project_boxed_opaque_existential_1(v155, v156);
          (*(v28 + 16))(v27, v28);
          v30 = v29;
          v31 = v150;
          v32 = v151;
          __swift_project_boxed_opaque_existential_1(v149, v150);
          (*(v32 + 16))(v31, v32);
          v4 = v30 != 0;
          if (v30)
          {
            if (v33)
            {

              v5 = v140;
              goto LABEL_17;
            }

            v5 = v140;
LABEL_24:
          }

          else
          {
            v5 = v140;
            if (v33)
            {

              goto LABEL_24;
            }

LABEL_17:
            if (v160 == v147 && v12 == v13)
            {

              v4 = 0;
            }

            else
            {
              v4 = sub_1C7551DBC();
            }
          }

          v8 = v134;
          goto LABEL_26;
        }

        v25 = v156;
        v26 = v157;
        __swift_project_boxed_opaque_existential_1(v155, v156);
        v20 = (*(v26 + 32))(v25, v26);
      }

      v4 = v20;
      v5 = v140;
LABEL_26:
      __swift_destroy_boxed_opaque_existential_1(v149);
      __swift_destroy_boxed_opaque_existential_1(v155);
      sub_1C6FD7FC8(v158, &qword_1EC2181B8);
      sub_1C6FD7FC8(v159, &qword_1EC2181B8);
      v9 += 56;
      ++v6;
      v10 = v11 + 1;
      if ((v145 ^ v4))
      {
        goto LABEL_29;
      }
    }

    v6 = v5;
LABEL_29:
    if ((v145 & 1) == 0)
    {
      v7 = v136;
      goto LABEL_42;
    }

    if (v6 < v8)
    {
      goto LABEL_165;
    }

    v7 = v136;
    if (v8 < v6)
    {
      if (v5 >= v11)
      {
        v35 = v11;
      }

      else
      {
        v35 = v5;
      }

      v36 = 56 * v35 - 56;
      v37 = v6;
      v38 = v8;
      v39 = v138;
      do
      {
        if (v38 != --v37)
        {
          v40 = *a3;
          if (!*a3)
          {
            goto LABEL_170;
          }

          v41 = v40 + v39;
          v42 = *(v40 + v39 + 48);
          v43 = v40 + v36;
          v45 = *(v41 + 16);
          v44 = *(v41 + 32);
          v46 = *v41;
          v48 = *(v43 + 16);
          v47 = *(v43 + 32);
          v49 = *v43;
          *(v41 + 48) = *(v43 + 48);
          *(v41 + 16) = v48;
          *(v41 + 32) = v47;
          *v41 = v49;
          *v43 = v46;
          *(v43 + 16) = v45;
          *(v43 + 32) = v44;
          *(v43 + 48) = v42;
        }

        ++v38;
        v36 -= 56;
        v39 += 56;
      }

      while (v38 < v37);
    }

LABEL_42:
    v50 = a3[1];
    if (v6 < v50)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_162;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_77:
    if (v6 < v8)
    {
      goto LABEL_161;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v7 = v123;
    }

    v4 = *(v7 + 2);
    v82 = v4 + 1;
    if (v4 >= *(v7 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v7 = v124;
    }

    *(v7 + 2) = v82;
    v83 = v7 + 32;
    v84 = &v7[16 * v4 + 32];
    *v84 = v8;
    *(v84 + 1) = v6;
    v160 = *a1;
    if (!v160)
    {
      goto LABEL_171;
    }

    if (v4)
    {
      while (1)
      {
        v85 = v82 - 1;
        v86 = &v83[16 * v82 - 16];
        v87 = &v7[16 * v82];
        if (v82 >= 4)
        {
          break;
        }

        if (v82 == 3)
        {
          v88 = *(v7 + 4);
          v89 = *(v7 + 5);
          v98 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          v91 = v98;
LABEL_97:
          if (v91)
          {
            goto LABEL_148;
          }

          v103 = *v87;
          v102 = *(v87 + 1);
          v104 = __OFSUB__(v102, v103);
          v105 = v102 - v103;
          v106 = v104;
          if (v104)
          {
            goto LABEL_151;
          }

          v107 = *(v86 + 1);
          v108 = v107 - *v86;
          if (__OFSUB__(v107, *v86))
          {
            goto LABEL_154;
          }

          if (__OFADD__(v105, v108))
          {
            goto LABEL_156;
          }

          if (v105 + v108 >= v90)
          {
            if (v90 < v108)
            {
              v85 = v82 - 2;
            }

            goto LABEL_119;
          }

          goto LABEL_112;
        }

        if (v82 < 2)
        {
          goto LABEL_150;
        }

        v110 = *v87;
        v109 = *(v87 + 1);
        v98 = __OFSUB__(v109, v110);
        v105 = v109 - v110;
        v106 = v98;
LABEL_112:
        if (v106)
        {
          goto LABEL_153;
        }

        v112 = *v86;
        v111 = *(v86 + 1);
        v98 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v98)
        {
          goto LABEL_155;
        }

        if (v113 < v105)
        {
          goto LABEL_126;
        }

LABEL_119:
        if (v85 - 1 >= v82)
        {
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*a3)
        {
          goto LABEL_168;
        }

        v117 = v6;
        v118 = v7;
        v119 = &v83[16 * v85 - 16];
        v120 = *v119;
        v4 = &v83[16 * v85];
        v121 = *(v4 + 8);
        sub_1C7481F74((*a3 + 56 * *v119), (*a3 + 56 * *v4), *a3 + 56 * v121, v160);
        if (v143)
        {
          goto LABEL_140;
        }

        if (v121 < v120)
        {
          goto LABEL_143;
        }

        v122 = *(v118 + 2);
        if (v85 > v122)
        {
          goto LABEL_144;
        }

        *v119 = v120;
        *(v119 + 1) = v121;
        if (v85 >= v122)
        {
          goto LABEL_145;
        }

        v82 = v122 - 1;
        sub_1C7423CF4((v4 + 16), v122 - 1 - v85, &v83[16 * v85]);
        v7 = v118;
        *(v118 + 2) = v122 - 1;
        v6 = v117;
        if (v122 <= 2)
        {
          goto LABEL_126;
        }
      }

      v92 = &v83[16 * v82];
      v93 = *(v92 - 8);
      v94 = *(v92 - 7);
      v98 = __OFSUB__(v94, v93);
      v95 = v94 - v93;
      if (v98)
      {
        goto LABEL_146;
      }

      v97 = *(v92 - 6);
      v96 = *(v92 - 5);
      v98 = __OFSUB__(v96, v97);
      v90 = v96 - v97;
      v91 = v98;
      if (v98)
      {
        goto LABEL_147;
      }

      v99 = *(v87 + 1);
      v100 = v99 - *v87;
      if (__OFSUB__(v99, *v87))
      {
        goto LABEL_149;
      }

      v98 = __OFADD__(v90, v100);
      v101 = v90 + v100;
      if (v98)
      {
        goto LABEL_152;
      }

      if (v101 >= v95)
      {
        v115 = *v86;
        v114 = *(v86 + 1);
        v98 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v98)
        {
          goto LABEL_160;
        }

        if (v90 < v116)
        {
          v85 = v82 - 2;
        }

        goto LABEL_119;
      }

      goto LABEL_97;
    }

LABEL_126:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_130;
    }
  }

  v51 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_163;
  }

  if (v51 >= v50)
  {
    v51 = a3[1];
  }

  if (v51 < v8)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    v7 = sub_1C7420830();
LABEL_132:
    v125 = (v7 + 16);
    for (i = *(v7 + 2); i >= 2; *v125 = i)
    {
      if (!*a3)
      {
        goto LABEL_169;
      }

      v127 = &v7[16 * i];
      v128 = *v127;
      v129 = &v125[2 * i];
      v130 = *(v129 + 1);
      sub_1C7481F74((*a3 + 56 * *v127), (*a3 + 56 * *v129), *a3 + 56 * v130, v160);
      if (v4)
      {
        break;
      }

      if (v130 < v128)
      {
        goto LABEL_157;
      }

      if (i - 2 >= *v125)
      {
        goto LABEL_158;
      }

      *v127 = v128;
      *(v127 + 1) = v130;
      v131 = *v125 - i;
      if (*v125 < i)
      {
        goto LABEL_159;
      }

      i = *v125 - 1;
      sub_1C7423CF4(v129 + 16, v131, v129);
    }

    goto LABEL_140;
  }

  if (v6 == v51)
  {
    goto LABEL_77;
  }

  v135 = v51;
  v137 = v7;
  v146 = *a3;
  v52 = *a3 + 56 * v6;
  v53 = v8 - v6;
  while (2)
  {
    v144 = v6;
    v139 = v53;
    v141 = v52;
LABEL_52:
    sub_1C712A774(v52, v159, &qword_1EC2181B8);
    v54 = v52 - 56;
    sub_1C712A774(v52 - 56, v158, &qword_1EC2181B8);
    sub_1C712A774(v159, &v152, &qword_1EC2181B8);
    v4 = v153;
    v160 = v152;
    sub_1C6F699F8(v154, v155);
    sub_1C712A774(v158, &v152, &qword_1EC2181B8);
    v55 = v153;
    v148 = v152;
    sub_1C6F699F8(v154, v149);
    v56 = v156;
    v57 = v157;
    __swift_project_boxed_opaque_existential_1(v155, v156);
    LODWORD(v56) = (*(v57 + 40))(v56, v57);
    v59 = v150;
    v58 = v151;
    __swift_project_boxed_opaque_existential_1(v149, v150);
    if ((v56 ^ (*(v58 + 40))(v59, v58)))
    {

      v4 = v156;
      v60 = v157;
      __swift_project_boxed_opaque_existential_1(v155, v156);
      v61 = (*(v60 + 40))(v4, v60);
      goto LABEL_56;
    }

    v62 = v156;
    v63 = v157;
    __swift_project_boxed_opaque_existential_1(v155, v156);
    LODWORD(v62) = (*(v63 + 32))(v62, v63);
    v64 = v150;
    v65 = v151;
    __swift_project_boxed_opaque_existential_1(v149, v150);
    if (((v62 ^ (*(v65 + 32))(v64, v65)) & 1) == 0)
    {
      v68 = v156;
      v69 = v157;
      __swift_project_boxed_opaque_existential_1(v155, v156);
      (*(v69 + 16))(v68, v69);
      v71 = v70;
      v72 = v150;
      v73 = v151;
      __swift_project_boxed_opaque_existential_1(v149, v150);
      (*(v73 + 16))(v72, v73);
      v67 = v71 != 0;
      if (v71)
      {
        if (v74)
        {

LABEL_62:
          if (v160 == v148 && v4 == v55)
          {

            __swift_destroy_boxed_opaque_existential_1(v149);
            __swift_destroy_boxed_opaque_existential_1(v155);
            sub_1C6FD7FC8(v158, &qword_1EC2181B8);
            sub_1C6FD7FC8(v159, &qword_1EC2181B8);
LABEL_74:
            v6 = v144 + 1;
            v52 = v141 + 56;
            v53 = v139 - 1;
            if (v144 + 1 == v135)
            {
              v6 = v135;
              v7 = v137;
              v8 = v134;
              goto LABEL_77;
            }

            continue;
          }

          v67 = sub_1C7551DBC();

          goto LABEL_69;
        }
      }

      else
      {
        if (!v74)
        {
          goto LABEL_62;
        }
      }

LABEL_69:

      goto LABEL_70;
    }

    break;
  }

  v4 = v156;
  v66 = v157;
  __swift_project_boxed_opaque_existential_1(v155, v156);
  v61 = (*(v66 + 32))(v4, v66);
LABEL_56:
  v67 = v61;
LABEL_70:
  __swift_destroy_boxed_opaque_existential_1(v149);
  __swift_destroy_boxed_opaque_existential_1(v155);
  sub_1C6FD7FC8(v158, &qword_1EC2181B8);
  sub_1C6FD7FC8(v159, &qword_1EC2181B8);
  if ((v67 & 1) == 0)
  {
    goto LABEL_74;
  }

  if (v146)
  {
    v76 = *(v52 + 48);
    v78 = *(v52 + 16);
    v77 = *(v52 + 32);
    v79 = *v52;
    v80 = *(v52 - 40);
    *v52 = *v54;
    *(v52 + 16) = v80;
    *(v52 + 32) = *(v52 - 24);
    *(v52 + 48) = *(v52 - 8);
    *v54 = v79;
    *(v52 - 40) = v78;
    *(v52 - 24) = v77;
    v52 -= 56;
    *(v54 + 48) = v76;
    if (__CFADD__(v53++, 1))
    {
      goto LABEL_74;
    }

    goto LABEL_52;
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
}