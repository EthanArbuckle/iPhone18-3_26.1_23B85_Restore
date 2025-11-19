uint64_t sub_1CA3C4C0C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_2_2();
  *v6 = v5;
  v8 = *(v7 + 1720);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  v5[216] = v0;

  if (v0)
  {
    v11 = v5[204];

    OUTLINED_FUNCTION_146_1();
    v14 = sub_1CA3C5B2C;
  }

  else
  {
    v5[217] = v3;
    OUTLINED_FUNCTION_146_1();
    v14 = sub_1CA3C4D20;
  }

  return MEMORY[0x1EEE6DFA0](v14, v12, v13);
}

uint64_t sub_1CA3C4D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = OUTLINED_FUNCTION_237();
  v14(v13);
  v15 = *(v12 + 1736);
  v16 = *(v12 + 1728);
  v17 = *(v12 + 1632);
  v18 = *(v12 + 1624);
  v218 = *(v12 + 1592);
  v19 = *(v12 + 896);
  v20 = *(v12 + 888);
  v21 = *(v12 + 872);
  v22 = *(v12 + 864);
  *(v12 + 472) = v15;
  sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
  v23 = v15;
  sub_1CA949968();
  (*(v21 + 16))(v20, v19, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v12 + 1592);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_54:
    isa = v25[2].isa;
    OUTLINED_FUNCTION_160();
    sub_1CA2E54F4();
    v25 = v209;
  }

  v27 = v25[2].isa;
  v26 = v25[3].isa;
  v215 = v16;
  v219 = (v27 + 1);
  v28 = v23;
  if (v27 >= v26 >> 1)
  {
    OUTLINED_FUNCTION_64(v26);
    OUTLINED_FUNCTION_160();
    sub_1CA2E54F4();
    v25 = v210;
  }

  v29 = *(v12 + 1088);
  v30 = *(v12 + 1080);
  v31 = *(v12 + 1008);
  v32 = *(v12 + 896);
  v213 = *(v12 + 1112);
  v214 = *(v12 + 888);
  v33 = *(v12 + 872);
  v23 = *(v12 + 864);

  (*(v33 + 8))(v32, v23);
  sub_1CA27080C(v31, &qword_1EC444D00, &qword_1CA988B80);
  v34 = *(v29 + 8);
  v16 = (v29 + 8);
  v34(v213, v30);
  v25[2].isa = v219;
  (*(v33 + 32))(v25 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27, v214, v23);
  OUTLINED_FUNCTION_240();
  *(v12 + 1592) = v25;
  v36 = v215;
  while (1)
  {
    *(v12 + 1600) = v36;
    v216 = v36;
    if (!v35)
    {
      while (!__OFADD__(v31, 1))
      {
        OUTLINED_FUNCTION_47_6();
        if (v39 == v40)
        {
          v25 = *(v12 + 1128);
          v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D20, &qword_1CA985B78);
          OUTLINED_FUNCTION_48_4(v132);
          goto LABEL_13;
        }

        ++v31;
        if (*(*(v12 + 1584) + 8 * v38 + 64))
        {
          v31 = v38;
          goto LABEL_12;
        }
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v37 = *(v12 + 1584);
LABEL_12:
    v25 = *(v12 + 1128);
    v41 = *(v12 + 1120);
    v42 = *(v12 + 1088);
    v43 = *(v12 + 1080);
    OUTLINED_FUNCTION_186_1();
    v219 = (v45 & v44);
    v47 = v46 | (v31 << 6);
    v49 = *(v48 + 48);
    v50 = *(v48 + 56);
    v51 = (v49 + 16 * v47);
    v53 = *v51;
    v52 = v51[1];
    OUTLINED_FUNCTION_238(v47);
    v54(v41);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D20, &qword_1CA985B78);
    v56 = *(v55 + 48);
    v25->isa = v53;
    v25[1].isa = v52;
    (*(v42 + 32))(v25 + v56, v41, v43);
    v57 = OUTLINED_FUNCTION_67();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v55);
    sub_1CA94C218();
    v133 = v219;
LABEL_13:
    *(v12 + 1616) = v31;
    *(v12 + 1608) = v133;
    v23 = *(v12 + 1136);
    sub_1CA3D3520(*(v12 + 1128), v23);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D20, &qword_1CA985B78);
    OUTLINED_FUNCTION_49(v23, 1, v60);
    if (v71)
    {
      break;
    }

    v61 = OUTLINED_FUNCTION_21_10();
    v16 = *(v62 + 8);
    *(v12 + 1632) = v16;
    (*(v63 + 32))(v61, v62 + *(v60 + 48));
    v64 = sub_1CA94A1A8();
    v65 = 0;
    v66 = *(v64 + 16);
    while (1)
    {
      if (v66 == v65)
      {

        v75 = 1;
        goto LABEL_26;
      }

      if (v65 >= *(v64 + 16))
      {
        __break(1u);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_15_7();
      v68 = OUTLINED_FUNCTION_185_1(v67);
      v69(v68);
      sub_1CA94B228();
      OUTLINED_FUNCTION_206_1();
      v71 = v71 && v70 == v16;
      if (v71)
      {
        break;
      }

      v72 = sub_1CA94D7F8();

      if (v72)
      {
        goto LABEL_25;
      }

      v73 = OUTLINED_FUNCTION_39_4();
      v74(v73);
      ++v65;
    }

LABEL_25:

    v76 = OUTLINED_FUNCTION_25_7();
    v77(v76);
    v75 = 0;
LABEL_26:
    v78 = *(v12 + 2032);
    v79 = *(v12 + 1112);
    v80 = *(v12 + 1104);
    v81 = *(v12 + 1088);
    v82 = *(v12 + 1080);
    __swift_storeEnumTagSinglePayload(*(v12 + 1008), v75, 1, *(v12 + 984));
    v83 = OUTLINED_FUNCTION_22_9(v81);
    v84(v83);
    v86 = *(v81 + 88);
    v85 = (v81 + 88);
    v87 = OUTLINED_FUNCTION_107_0();
    if (v88(v87) == v78)
    {
      v172 = OUTLINED_FUNCTION_11_13();
      v173(v172);
      v174 = *(v82 + 32);
      v175 = OUTLINED_FUNCTION_13_0();
      v176(v175);
      v177 = swift_task_alloc();
      v178 = OUTLINED_FUNCTION_161_0(v177);
      *v178 = v179;
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_23_0();

      return TypedValueTransformer.transform(input:with:)();
    }

    OUTLINED_FUNCTION_184_0();
    v89 = *(v12 + 1080);
    if (v90 == v91)
    {
      v92 = *(v12 + 976);
      v93 = *(v12 + 968);
      v94 = *(v12 + 960);
      v85 = *(v12 + 488);
      v95 = *(v66 + 96);
      v96 = OUTLINED_FUNCTION_3_3();
      v97(v96);
      (*(v93 + 32))(v92, v79, v94);
      if (OUTLINED_FUNCTION_164_1([v85 variableSource]))
      {
        OUTLINED_FUNCTION_50_2();
        OUTLINED_FUNCTION_215(&qword_1EC444D00, &qword_1CA988B80, v181);
        v182 = qword_1EC442008;
        swift_unknownObjectRetain();
        if (v182 != -1)
        {
          OUTLINED_FUNCTION_12_0();
        }

        v183 = *(v12 + 952);
        v184 = qword_1EC442010;
        v183[3] = type metadata accessor for DatabaseContainerDefinitionProvider();
        v183[4] = &protocol witness table for DatabaseContainerDefinitionProvider;
        *v183 = v184;
        v183[5] = 0;
        v183[6] = v89;
        OUTLINED_FUNCTION_13_13();
        OUTLINED_FUNCTION_53_5();
        OUTLINED_FUNCTION_23_0();

        return MEMORY[0x1EEE6DFA0](v185, v186, v187);
      }

      OUTLINED_FUNCTION_129_1();

      type metadata accessor for WFRemoteAppIntentExecutionActionError(0);
      OUTLINED_FUNCTION_1_23();
      sub_1CA3D3590(&qword_1EC444C20, v98);
      v99 = OUTLINED_FUNCTION_52_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
      v100 = OUTLINED_FUNCTION_70_6();
      __swift_storeEnumTagSinglePayload(v100, 5, 8, v101);
      swift_willThrow();
      v102 = *(v94 + 8);
      v103 = OUTLINED_FUNCTION_107_0();
      v104(v103);
      sub_1CA27080C(v79, &qword_1EC444D00, &qword_1CA988B80);
    }

    else
    {
      v105 = *(v12 + 1008);

      type metadata accessor for WFRemoteAppIntentExecutionActionError(0);
      OUTLINED_FUNCTION_1_23();
      sub_1CA3D3590(&qword_1EC444C20, v106);
      v99 = OUTLINED_FUNCTION_52_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
      v107 = OUTLINED_FUNCTION_70_6();
      __swift_storeEnumTagSinglePayload(v107, 8, 8, v108);
      swift_willThrow();
      sub_1CA27080C(v105, &qword_1EC444D00, &qword_1CA988B80);
      v109 = *(v66 + 8);
      v110 = OUTLINED_FUNCTION_3_3();
      v111(v110);
    }

    OUTLINED_FUNCTION_51_4();
    v112 = *(v12 + 1096);
    v113 = *(v12 + 1080);
    sub_1CA949C58();
    (v85)(v112, v89, v113);
    v114 = v99;
    v115 = sub_1CA949F68();
    v116 = sub_1CA94CC18();

    os_log_type_enabled(v115, v116);
    v117 = *(v12 + 1408);
    OUTLINED_FUNCTION_183_0();
    v31 = *(v12 + 1112);
    v25 = *(v12 + 1096);
    v118 = *(v12 + 1088);
    v16 = *(v12 + 1080);
    if (v119)
    {
      v217 = *(v12 + 1112);
      v31 = OUTLINED_FUNCTION_30_2();
      v120 = OUTLINED_FUNCTION_29_4();
      *v31 = OUTLINED_FUNCTION_136_2(v120).n128_u32[0];
      sub_1CA94AF98();
      v212 = v116;
      v122 = v121;
      v123 = *(v118 + 8);
      v23 = (v118 + 8);
      v124 = OUTLINED_FUNCTION_52_0();
      v123(v124);
      v125 = OUTLINED_FUNCTION_104();
      sub_1CA26B54C(v125, v126, v127);
      OUTLINED_FUNCTION_139();

      *(v31 + 4) = v25;
      *(v31 + 12) = 2080;
      swift_getErrorValue();
      v128 = OUTLINED_FUNCTION_217_0();
      OUTLINED_FUNCTION_212_0(v128, v129);
      OUTLINED_FUNCTION_255();
      *(v31 + 14) = v122;
      v25 = v115;
      _os_log_impl(&dword_1CA256000, v115, v212, "WFRemoteAppIntentExecutionAction: Failed to convert typed value: (%s) to link value due to error: %s.", v31, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_26();

      (v85)[1](v117, v219);
      (v123)(v217, v16);
    }

    else
    {

      v130 = *(v118 + 8);
      v23 = (v118 + 8);
      v131 = OUTLINED_FUNCTION_52_0();
      v130(v131);
      (v85)[1](v117, v219);
      (v130)(v31, v16);
    }

    OUTLINED_FUNCTION_240();
  }

  v134 = *(v12 + 1584);
  v135 = *(v12 + 1272);
  v136 = *(v12 + 1040);
  v137 = *(v12 + 1016);
  v138 = *(v12 + 488);

  sub_1CA94B0F8();
  sub_1CA949778();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
  OUTLINED_FUNCTION_119();
  sub_1CA949758();
  v143 = sub_1CA3C09E4();
  if (v216)
  {
    OUTLINED_FUNCTION_96_3();
    v211 = v145;
    OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_38_6(v146);
    OUTLINED_FUNCTION_100_2();

    v147 = OUTLINED_FUNCTION_99_2();
    v148(v147);
    OUTLINED_FUNCTION_2_26();
    sub_1CA3D3628(v31, v149);
    v150 = OUTLINED_FUNCTION_200_1();
    v151(v150);
    v152 = OUTLINED_FUNCTION_199_1();
    v153(v152);
    v154 = OUTLINED_FUNCTION_205_1();
    v155(v154);

    OUTLINED_FUNCTION_76_2();
    v156 = v216;
    sub_1CA949F68();
    sub_1CA94CC18();
    OUTLINED_FUNCTION_228();
    if (OUTLINED_FUNCTION_216_0())
    {
      OUTLINED_FUNCTION_150_0();
      v157 = OUTLINED_FUNCTION_131();
      OUTLINED_FUNCTION_230(5.7779e-34);
      v158 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_106_2(v158);
      OUTLINED_FUNCTION_79_2(&dword_1CA256000, v159, v136, "WFRemoteAppIntentExecutionAction: Failed: %@");
      sub_1CA27080C(v157, &qword_1EC444AE0, &qword_1CA985B70);
      OUTLINED_FUNCTION_59_4();
      OUTLINED_FUNCTION_60();
    }

    OUTLINED_FUNCTION_95_2();
    v160 = OUTLINED_FUNCTION_65_3();
    v161(v160);
    v162 = sub_1CA948AC8();
    OUTLINED_FUNCTION_158_2(v162, sel_finishRunningWithError_);

    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_7_16();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_23_0();

    return v164(v163, v164, v165, v166, v167, v168, v169, v170, a9, a10, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_8_11(v143, v144);
    sub_1CA9498B8();
    *v31 = v138;
    *(v31 + 8) = v138;
    v189 = *MEMORY[0x1E698AE18];
    v190 = OUTLINED_FUNCTION_64_3();
    v191(v190);
    objc_opt_self();
    OUTLINED_FUNCTION_220();
    v192 = OUTLINED_FUNCTION_226([v31 defaultEnvironment], &qword_1EC444D28);
    OUTLINED_FUNCTION_124_2(v192, MEMORY[0x1E698AE78]);
    v193 = *MEMORY[0x1E698AE10];
    v194 = OUTLINED_FUNCTION_63_3();
    v195(v194);
    OUTLINED_FUNCTION_20_0();
    sub_1CA949898();
    v196 = *(MEMORY[0x1E698AE20] + 4);
    v197 = swift_task_alloc();
    v198 = OUTLINED_FUNCTION_160_1(v197);
    *v198 = v199;
    OUTLINED_FUNCTION_4_25(v198);
    OUTLINED_FUNCTION_23_0();

    return MEMORY[0x1EEDEBED0](v200, v201, v202, v203, v204, v205, v206, v207, a9, a10, a11, a12);
  }
}

uint64_t sub_1CA3C5B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v19 = v14[126];
  v20 = OUTLINED_FUNCTION_237();
  v21(v20);
  sub_1CA27080C(v19, &qword_1EC444D00, &qword_1CA988B80);
  v22 = v14[216];
  while (2)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_163_1();
    v23 = OUTLINED_FUNCTION_104_2();
    (v17)(v23);
    v24 = v22;
    v25 = sub_1CA949F68();
    sub_1CA94CC18();
    OUTLINED_FUNCTION_222();
    os_log_type_enabled(v25, v18);
    OUTLINED_FUNCTION_45_6();
    if (v26)
    {
      OUTLINED_FUNCTION_30_2();
      v27 = OUTLINED_FUNCTION_154_2();
      *v16 = OUTLINED_FUNCTION_136_2(v27).n128_u32[0];
      sub_1CA94AF98();
      v28 = OUTLINED_FUNCTION_46_5();
      (v18)(v28);
      OUTLINED_FUNCTION_219();
      OUTLINED_FUNCTION_139();

      OUTLINED_FUNCTION_111_2();
      v29 = OUTLINED_FUNCTION_217_0();
      OUTLINED_FUNCTION_212_0(v29, v30);
      OUTLINED_FUNCTION_255();
      OUTLINED_FUNCTION_191_1();
      _os_log_impl(&dword_1CA256000, v25, v31, "WFRemoteAppIntentExecutionAction: Failed to convert typed value: (%s) to link value due to error: %s.", v16, 0x16u);
      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_59_4();

      v32 = v22[1];
      ++v22;
      v32();
      v18();
    }

    else
    {

      v33 = *(v12 + 8);
      v12 += 8;
      v13 = v33;
      v34 = OUTLINED_FUNCTION_119();
      v33(v34);
      v35 = OUTLINED_FUNCTION_181_1();
      v36(v35);
      v37 = OUTLINED_FUNCTION_176_0();
      v33(v37);
    }

    OUTLINED_FUNCTION_127_1();
    v38 = &qword_1EC444D20;
    if (!v39)
    {
      while (!__OFADD__(v17, 1))
      {
        OUTLINED_FUNCTION_47_6();
        if (v41 == v42)
        {
          v94 = OUTLINED_FUNCTION_241();
          v95 = __swift_instantiateConcreteTypeFromMangledNameV2(v94, &qword_1CA985B78);
          OUTLINED_FUNCTION_48_4(v95);
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_134_2();
        if (v44)
        {
          v17 = v43;
          goto LABEL_12;
        }
      }

LABEL_48:
      __break(1u);
LABEL_49:
      OUTLINED_FUNCTION_12_0();
LABEL_41:
      v138 = v14[119];
      v139 = qword_1EC442010;
      v138[3] = type metadata accessor for DatabaseContainerDefinitionProvider();
      v138[4] = &protocol witness table for DatabaseContainerDefinitionProvider;
      *v138 = v139;
      v138[5] = 0;
      v138[6] = v12;
      OUTLINED_FUNCTION_13_13();
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_23_0();

      return MEMORY[0x1EEE6DFA0](v140, v141, v142);
    }

    v40 = v14[198];
LABEL_12:
    v45 = OUTLINED_FUNCTION_26_9(v40);
    v46(v45);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D20, &qword_1CA985B78);
    v48 = OUTLINED_FUNCTION_28_7(v47);
    v49(v48);
    v50 = OUTLINED_FUNCTION_67();
    v38 = &qword_1EC444D20;
    __swift_storeEnumTagSinglePayload(v50, v51, v52, &qword_1EC444D20);
    sub_1CA94C218();
    v96 = v164;
LABEL_13:
    OUTLINED_FUNCTION_85_2(v96);
    v53 = OUTLINED_FUNCTION_125();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(v53, v54);
    OUTLINED_FUNCTION_88_1(v55);
    if (v63)
    {
      OUTLINED_FUNCTION_84();
      sub_1CA94B0F8();
      v97 = OUTLINED_FUNCTION_177_0();
      OUTLINED_FUNCTION_49_3(v97);
      v98 = OUTLINED_FUNCTION_256();
      if (v13)
      {
        OUTLINED_FUNCTION_96_3();
        v163 = v100;
        OUTLINED_FUNCTION_9_14();
        OUTLINED_FUNCTION_38_6(v101);
        OUTLINED_FUNCTION_100_2();

        v102 = OUTLINED_FUNCTION_99_2();
        v103(v102);
        OUTLINED_FUNCTION_2_26();
        sub_1CA3D3628(&qword_1CA985B78, v104);
        v105 = OUTLINED_FUNCTION_200_1();
        v106(v105);
        v107 = OUTLINED_FUNCTION_199_1();
        v108(v107);
        v109 = OUTLINED_FUNCTION_205_1();
        v110(v109);

        OUTLINED_FUNCTION_76_2();
        v111 = v13;
        sub_1CA949F68();
        sub_1CA94CC18();
        OUTLINED_FUNCTION_228();
        if (OUTLINED_FUNCTION_216_0())
        {
          OUTLINED_FUNCTION_150_0();
          v112 = OUTLINED_FUNCTION_131();
          OUTLINED_FUNCTION_230(5.7779e-34);
          v113 = _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_106_2(v113);
          OUTLINED_FUNCTION_79_2(&dword_1CA256000, v114, v12, "WFRemoteAppIntentExecutionAction: Failed: %@");
          sub_1CA27080C(v112, &qword_1EC444AE0, &qword_1CA985B70);
          OUTLINED_FUNCTION_59_4();
          OUTLINED_FUNCTION_60();
        }

        OUTLINED_FUNCTION_95_2();
        v115 = OUTLINED_FUNCTION_65_3();
        v116(v115);
        v117 = sub_1CA948AC8();
        OUTLINED_FUNCTION_158_2(v117, sel_finishRunningWithError_);

        OUTLINED_FUNCTION_0_26();
        OUTLINED_FUNCTION_7_16();

        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_23_0();

        return v119(v118, v119, v120, v121, v122, v123, v124, v125, a9, a10, a11, a12);
      }

      else
      {
        OUTLINED_FUNCTION_8_11(v98, v99);
        sub_1CA9498B8();
        qword_1CA985B78 = v19;
        unk_1CA985B80 = &qword_1EC444D20;
        v144 = *MEMORY[0x1E698AE18];
        v145 = OUTLINED_FUNCTION_64_3();
        v146(v145);
        objc_opt_self();
        OUTLINED_FUNCTION_220();
        v147 = OUTLINED_FUNCTION_226([&qword_1CA985B78 defaultEnvironment], &qword_1EC444D28);
        OUTLINED_FUNCTION_124_2(v147, MEMORY[0x1E698AE78]);
        v148 = *MEMORY[0x1E698AE10];
        v149 = OUTLINED_FUNCTION_63_3();
        v150(v149);
        OUTLINED_FUNCTION_20_0();
        sub_1CA949898();
        v151 = *(MEMORY[0x1E698AE20] + 4);
        v152 = swift_task_alloc();
        v153 = OUTLINED_FUNCTION_160_1(v152);
        *v153 = v154;
        OUTLINED_FUNCTION_4_25(v153);
        OUTLINED_FUNCTION_23_0();

        return MEMORY[0x1EEDEBED0](v155, v156, v157, v158, v159, v160, v161, v162, a9, a10, a11, a12);
      }
    }

    else
    {
      OUTLINED_FUNCTION_21_10();
      OUTLINED_FUNCTION_101_2(v56);
      v57();
      v58 = sub_1CA94A1A8();
      OUTLINED_FUNCTION_195_1(v58);
      while (1)
      {
        if (v17 == v38)
        {

          goto LABEL_26;
        }

        if (v38 >= v13[2])
        {
          __break(1u);
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_15_7();
        v60 = OUTLINED_FUNCTION_131_2(v59);
        v61(v60);
        sub_1CA94B228();
        OUTLINED_FUNCTION_206_1();
        v63 = v63 && v62 == v22;
        if (v63)
        {
          break;
        }

        OUTLINED_FUNCTION_151_3();
        OUTLINED_FUNCTION_255();
        if (v15)
        {
          goto LABEL_25;
        }

        v64 = OUTLINED_FUNCTION_39_4();
        v65(v64);
        v38 = (v38 + 1);
      }

LABEL_25:

      v66 = OUTLINED_FUNCTION_25_7();
      v67(v66);
LABEL_26:
      OUTLINED_FUNCTION_130_1();
      v68 = v14[136];
      OUTLINED_FUNCTION_119_1(v69, v70);
      v71 = OUTLINED_FUNCTION_22_9(v68);
      v72(v71);
      v73 = *(v68 + 88);
      v16 = v68 + 88;
      v74 = OUTLINED_FUNCTION_20_0();
      if (v75(v74) != v15)
      {
        OUTLINED_FUNCTION_98_2();
        if (!v63)
        {
          v15 = v14[126];

          v13 = type metadata accessor for WFRemoteAppIntentExecutionActionError(0);
          OUTLINED_FUNCTION_1_23();
          sub_1CA3D3590(&qword_1EC444C20, v87);
          OUTLINED_FUNCTION_52_4();
          OUTLINED_FUNCTION_167_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
          v88 = OUTLINED_FUNCTION_70_6();
          OUTLINED_FUNCTION_168_1(v88, 8, v89, v90);
          sub_1CA27080C(v15, &qword_1EC444D00, &qword_1CA988B80);
          v91 = *(v17 + 8);
          v17 += 8;
          v92 = OUTLINED_FUNCTION_3_3();
          v93(v92);
          continue;
        }

        v76 = OUTLINED_FUNCTION_54_2();
        v77(v76);
        v78 = OUTLINED_FUNCTION_103_1();
        v79(v78);
        if (!OUTLINED_FUNCTION_164_1([v16 variableSource]))
        {
          OUTLINED_FUNCTION_129_1();

          v13 = type metadata accessor for WFRemoteAppIntentExecutionActionError(0);
          OUTLINED_FUNCTION_1_23();
          sub_1CA3D3590(&qword_1EC444C20, v80);
          OUTLINED_FUNCTION_52_4();
          OUTLINED_FUNCTION_167_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
          v81 = OUTLINED_FUNCTION_70_6();
          OUTLINED_FUNCTION_168_1(v81, 5, v82, v83);
          v84 = *(v16 + 8);
          v16 += 8;
          v85 = OUTLINED_FUNCTION_107_0();
          v86(v85);
          sub_1CA27080C(v19, &qword_1EC444D00, &qword_1CA988B80);
          continue;
        }

        OUTLINED_FUNCTION_50_2();
        OUTLINED_FUNCTION_215(&qword_1EC444D00, &qword_1CA988B80, v136);
        v137 = qword_1EC442008;
        swift_unknownObjectRetain();
        if (v137 == -1)
        {
          goto LABEL_41;
        }

        goto LABEL_49;
      }

      v127 = OUTLINED_FUNCTION_11_13();
      v128(v127);
      v129 = *(v15 + 32);
      v130 = OUTLINED_FUNCTION_13_0();
      v131(v130);
      v132 = swift_task_alloc();
      v133 = OUTLINED_FUNCTION_161_0(v132);
      *v133 = v134;
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_23_0();

      return TypedValueTransformer.transform(input:with:)();
    }
  }
}

uint64_t sub_1CA3C65A4()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_2_2();
  *v6 = v5;
  v8 = *(v7 + 1744);
  *v6 = *v1;
  v5[219] = v9;
  v5[220] = v0;

  if (v0)
  {
    v10 = v5[192];
    v11 = v5[107];
    v12 = v5[106];
    v13 = v5[105];
    v14 = v5[104];
    v15 = v5[103];
    v16 = v5[102];
    v17 = v5[101];
    v18 = v5[100];
    v19 = v5[99];

    v20 = *(v18 + 8);
    v21 = OUTLINED_FUNCTION_162();
    v22(v21);
    v23 = *(v15 + 8);
    v24 = OUTLINED_FUNCTION_70();
    v25(v24);
    v26 = *(v12 + 8);
    v27 = OUTLINED_FUNCTION_3_3();
  }

  else
  {
    v29 = v5[107];
    v30 = v5[106];
    v31 = v5[105];
    v32 = v5[104];
    v33 = v5[103];
    v34 = v5[102];
    v35 = v5[101];
    v36 = v5[100];
    v37 = v5[99];
    v5[221] = v3;
    (*(v36 + 8))(v35, v37);
    v38 = *(v33 + 8);
    v39 = OUTLINED_FUNCTION_126();
    v40(v39);
    v41 = *(v30 + 8);
    v27 = OUTLINED_FUNCTION_61();
  }

  v28(v27);
  __swift_destroy_boxed_opaque_existential_0(v5 + 39);
  OUTLINED_FUNCTION_146_1();
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6DFA0](v42, v43, v44);
}

uint64_t sub_1CA3C679C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39_1();
  v13 = v12[221];
  v14 = v12[219];
  v15 = v12[197];
  v16 = v12[89];
  v17 = v12[85];
  v18 = v12[84];
  ObjectType = swift_getObjectType();
  v12[222] = ObjectType;
  v12[223] = sub_1CA949D18();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v12[224] = sub_1CA9499C8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v28 = sub_1CA949808();
  OUTLINED_FUNCTION_123_2(v28, v29, v30, v31, v32, v33, v34, v35, v48, v49, v50);
  v36 = sub_1CA3D3590(&unk_1EC444D30, type metadata accessor for WFRemoteAppIntentExecutionDelegate);
  v12[225] = v36;
  v37 = *(v13 + 8);
  v12[226] = v37;
  v38 = *(MEMORY[0x1E698ADE8] + 4);

  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  v12[227] = v40;
  *v40 = v41;
  v40[1] = sub_1CA3C6914;
  v42 = v12[219];
  v43 = v12[197];
  v44 = v12[134];
  v45 = v12[94];
  v46 = v12[89];

  return MEMORY[0x1EEDEBDC8](v45, v44, v46, v43, v36, ObjectType, v37, v39, a9, a10, a11, a12);
}

uint64_t sub_1CA3C6914()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v5 = v2[227];
  *v4 = *v1;
  v3[228] = v0;

  v6 = v2[197];
  if (v0)
  {
    v7 = v3[192];
    v8 = OUTLINED_FUNCTION_232();
    v9(v8);

    OUTLINED_FUNCTION_146_1();
    v12 = sub_1CA3CC34C;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_232();
    v3[229] = v14;
    v3[230] = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v13);

    OUTLINED_FUNCTION_146_1();
    v12 = sub_1CA3C6A84;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1CA3C6A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = *(v12 + 1488);
  v14 = *(v12 + 1448);
  v15 = *(v12 + 752);
  v16 = *(v12 + 744);
  v17 = *(v12 + 728);
  v18 = *(v12 + 720);
  sub_1CA949C58();
  v19 = *(v17 + 16);
  v20 = OUTLINED_FUNCTION_104_2();
  v21(v20);
  v22 = sub_1CA949F68();
  v23 = sub_1CA94CC38();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v12 + 744);
  v26 = *(v12 + 720);
  if (v24)
  {
    v27 = *(v12 + 664);
    v28 = *(v12 + 632);
    v29 = *(v12 + 624);
    OUTLINED_FUNCTION_150_0();
    v30 = OUTLINED_FUNCTION_131();
    *v18 = 138412290;
    sub_1CA9497E8();
    sub_1CA949958();
    (*(v28 + 8))(v27, v29);
    v31 = *(v12 + 456);
    v32 = *(v12 + 744);
    v33 = *(v12 + 728);
    v34 = *(v12 + 720);
    *(v18 + 4) = v31;
    *v30 = v31;
    v35 = *(v33 + 8);
    v35(v32, v34);
    _os_log_impl(&dword_1CA256000, v22, v23, "WFRemoteAppIntentExecutionAction: Returned: %@", v18, 0xCu);
    sub_1CA27080C(v30, &qword_1EC444AE0, &qword_1CA985B70);
    OUTLINED_FUNCTION_59_4();
    OUTLINED_FUNCTION_60();
  }

  else
  {
    v36 = *(v12 + 728);

    v35 = *(v36 + 8);
    v37 = OUTLINED_FUNCTION_119();
    (v35)(v37);
  }

  v365 = v35;
  *(v12 + 1848) = v35;
  v38 = *(v12 + 1448);
  v39 = *(v12 + 1392);
  v40 = *(v12 + 752);
  v41 = *(v12 + 720);
  v42 = *(v12 + 656);
  v43 = *(v12 + 632);
  v44 = *(v12 + 624);
  v45 = *(*(v12 + 1400) + 8);
  *(v12 + 1856) = v45;
  v45(v38, v39);
  sub_1CA9497E8();
  sub_1CA949958();
  v46 = *(v43 + 8);
  *(v12 + 1864) = v46;
  *(v12 + 1872) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47 = OUTLINED_FUNCTION_69_0();
  v46(v47);
  v48 = *(v12 + 416);
  if (v48)
  {
    v370 = v46;
    v49 = [v48 valueType];
    v50 = sub_1CA3CD4BC();

    if (v50)
    {
      v51 = *(v12 + 1328);
      v52 = *(v12 + 1248);
      v53 = v48;
      sub_1CA94A1E8();
      v54 = type metadata accessor for WFRemoteAppValue();
      v55 = objc_allocWithZone(v54);
      v56 = OUTLINED_FUNCTION_104();
      v377[3] = v54;
      v377[0] = sub_1CA560484(v56, v57);
      v58 = sub_1CA469348(v377);
      if (v58)
      {
LABEL_7:
        v59 = *(v12 + 488);
        sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1CA9813B0;
        *(v60 + 32) = v58;
        v61 = v58;
        v62 = sub_1CA46934C();
        [v59 setOutput_];

        goto LABEL_16;
      }
    }

    else
    {
      v360 = v45;
      v348 = *(v12 + 1520);
      v63 = *(v12 + 1512);
      v64 = *(v12 + 1328);
      v65 = *(v12 + 1248);
      v66 = *(v12 + 1224);
      v67 = *(v12 + 1208);
      v354 = [v48 valueType];
      sub_1CA94A1E8();
      sub_1CA94B0F8();
      v68 = OUTLINED_FUNCTION_176_0();
      v63(v68);
      v349 = sub_1CA94C368();

      sub_1CA94A228();
      OUTLINED_FUNCTION_49(v67, 1, v66);
      if (v69)
      {
        sub_1CA27080C(*(v12 + 1208), &qword_1EC4445D0, &qword_1CA983080);
        v74 = 0;
      }

      else
      {
        v70 = *(v12 + 1520);
        v71 = *(v12 + 1512);
        v72 = *(v12 + 1224);
        v73 = *(v12 + 1208);
        sub_1CA94B0F8();
        v71(v73, v72);
        OUTLINED_FUNCTION_162();
        v74 = sub_1CA94C368();
      }

      v75 = *(v12 + 1520);
      v76 = *(v12 + 1512);
      v77 = *(v12 + 1328);
      v78 = *(v12 + 1240);
      v79 = *(v12 + 1224);
      sub_1CA94A1E8();
      sub_1CA94B1A8();
      v81 = v80;
      v76(v78, v79);
      if (v81)
      {
        v82 = sub_1CA94C368();
      }

      else
      {
        v82 = 0;
      }

      v45 = v360;
      v46 = v370;
      v58 = [v354 wf:v48 contentItemFromLinkValue:v349 appBundleIdentifier:v74 displayedBundleIdentifier:v82 teamIdentifier:objc_msgSend(*(v12 + 488) disclosureLevel:sel_outputDisclosureLevel)];

      if (v58)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_16:
  v83 = *(v12 + 1824);
  v84 = *(v12 + 1560);
  *(v12 + 1880) = sub_1CA94A128();
  if (v83)
  {
    v371 = v83;
    v85 = *(v12 + 1752);
    v86 = *(v12 + 1576);
    v301 = *(v12 + 1568);
    v87 = *(v12 + 1560);
    v88 = *(v12 + 1536);
    OUTLINED_FUNCTION_86_0();
    v333 = v89;
    OUTLINED_FUNCTION_113_1();
    v342 = v90;
    OUTLINED_FUNCTION_203_0();
    v91 = *(v12 + 1344);
    v355 = *(v12 + 1336);
    v361 = v92;
    OUTLINED_FUNCTION_93_2();
    v324 = v93;
    v329 = v94;
    OUTLINED_FUNCTION_78_1();
    v312 = v95;
    v318 = v96;
    v306 = *(v12 + 1160);
    v97 = *(v12 + 1056);
    v292 = *(v12 + 1048);
    v296 = *(v12 + 1072);
    v98 = *(v12 + 752);
    v99 = *(v12 + 728);
    v100 = *(v12 + 720);

    swift_unknownObjectRelease();

    v101 = OUTLINED_FUNCTION_3_3();
    v365(v101);
    v103 = *(v97 + 8);
    v102 = (v97 + 8);
    v103(v296, v292);
    OUTLINED_FUNCTION_2_26();
    sub_1CA3D3628(v306, v104);
    v333(v318, v312);
    v342(v329, v324);
    (*(v91 + 8))(v361, v355);
LABEL_18:
    OUTLINED_FUNCTION_76_2();
    v105 = v371;
    sub_1CA949F68();
    sub_1CA94CC18();
    OUTLINED_FUNCTION_253();
    if (OUTLINED_FUNCTION_197_1())
    {
      OUTLINED_FUNCTION_150_0();
      v106 = OUTLINED_FUNCTION_131();
      *v102 = 138412290;
      v107 = v371;
      v108 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_106_2(v108);
      OUTLINED_FUNCTION_57_3(&dword_1CA256000, v109, v110, "WFRemoteAppIntentExecutionAction: Failed: %@");
      sub_1CA27080C(v106, &qword_1EC444AE0, &qword_1CA985B70);
      OUTLINED_FUNCTION_59_4();
      OUTLINED_FUNCTION_60();
    }

    OUTLINED_FUNCTION_156_2();
    v111 = *(v100 + 8);
    v112 = OUTLINED_FUNCTION_69_0();
    v113(v112);
    v114 = sub_1CA948AC8();
    OUTLINED_FUNCTION_158_2(v114, sel_finishRunningWithError_);

    goto LABEL_21;
  }

  v363 = v45;
  v124 = *(v12 + 1048);
  v125 = *(v12 + 752);
  v126 = *(v12 + 720);
  v127 = *(v12 + 648);
  v128 = *(v12 + 624);
  v129 = *(v12 + 616);
  sub_1CA9497E8();
  sub_1CA949948();
  v130 = OUTLINED_FUNCTION_126();
  v46(v130);
  OUTLINED_FUNCTION_49(v129, 1, v124);
  if (v69)
  {
    v131 = *(v12 + 1536);
    v132 = *(v12 + 1464);
    v133 = *(v12 + 616);

    v134 = &unk_1EC444CD0;
    v135 = &unk_1CA985B28;
LABEL_27:
    sub_1CA27080C(v133, v134, v135);
    v136 = *(v12 + 1880);
    v320 = *(v12 + 1848);
    OUTLINED_FUNCTION_190_1();
    v308 = v137;
    v138 = *(v12 + 1560);
    OUTLINED_FUNCTION_86_0();
    v344 = v139;
    OUTLINED_FUNCTION_113_1();
    v357 = v140;
    OUTLINED_FUNCTION_193_0();
    v367 = v141;
    v373 = v142;
    OUTLINED_FUNCTION_20_10();
    v314 = *(v12 + 1160);
    OUTLINED_FUNCTION_192_1();
    v298 = v143;
    v303 = v144;
    [OUTLINED_FUNCTION_133_1() finishRunningWithError_];

    swift_unknownObjectRelease();

    v145 = OUTLINED_FUNCTION_126();
    v320(v145);
    v83[1](v303, v298);
    OUTLINED_FUNCTION_2_26();
    sub_1CA3D3628(v314, v146);
    v344(v328, v323);
    v357(v336, v332);
    (*(v133 + 8))(v373, v367);
LABEL_21:
    OUTLINED_FUNCTION_3_21();
    OUTLINED_FUNCTION_19_7();
    v276 = *(v12 + 784);
    v278 = *(v12 + 776);
    v280 = *(v12 + 752);
    v283 = *(v12 + 744);
    v286 = *(v12 + 736);
    v288 = *(v12 + 712);
    v293 = *(v12 + 704);
    v297 = *(v12 + 680);
    v302 = *(v12 + 672);
    v307 = *(v12 + 664);
    v313 = *(v12 + 656);
    v319 = *(v12 + 648);
    v325 = *(v12 + 640);
    v330 = *(v12 + 616);
    v334 = *(v12 + 608);
    v337 = *(v12 + 600);
    v343 = *(v12 + 592);
    v350 = *(v12 + 584);
    v356 = *(v12 + 560);
    v362 = *(v12 + 536);
    v366 = *(v12 + 512);
    v372 = *(v12 + 504);

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_23_0();

    return v116(v115, v116, v117, v118, v119, v120, v121, v122, a9, a10, a11, a12);
  }

  v147 = *(v12 + 1552);
  v148 = *(v12 + 1544);
  v149 = *(v12 + 1536);
  v150 = *(v12 + 1528);
  v338 = *(v12 + 1368);
  v151 = *(v12 + 1184);
  v152 = *(v12 + 1176);
  v153 = *(v12 + 1168);
  v154 = *(v12 + 584);
  v155 = *(v12 + 488);
  (*(*(v12 + 1056) + 32))(*(v12 + 1064), *(v12 + 616), *(v12 + 1048));
  *v151 = v150;
  v151[1] = v149;
  (*(v152 + 104))(v151, *MEMORY[0x1E69DB2E8], v153);
  sub_1CA94A3D8();
  v148(v151, v153);
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_1();
  v351 = swift_allocObject();
  *(v12 + 400) = 0;
  *(v12 + 408) = 0xE000000000000000;
  sub_1CA3C086C();
  OUTLINED_FUNCTION_86_0();
  v289 = v156;
  OUTLINED_FUNCTION_113_1();
  v284 = v157;
  v158 = *(v12 + 1368);
  v374 = *(v12 + 1360);
  v159 = *(v12 + 1344);
  v160 = *(v12 + 1336);
  v161 = *(v12 + 1312);
  v162 = *(v12 + 1280);
  v163 = *(v12 + 1248);
  v281 = *(v12 + 1224);
  v309 = *(v12 + 592);
  v315 = *(v12 + 584);
  v339 = *(v12 + 576);
  v164 = *(v12 + 560);
  v165 = *(v12 + 552);
  v299 = *(v12 + 1064);
  v304 = *(v12 + 544);
  v321 = *(v12 + 568);
  v326 = *(v12 + 488);
  sub_1CA94A2A8();
  v166 = *(v159 + 8);
  v159 += 8;
  *(v12 + 1888) = v166;
  *(v12 + 1896) = v159 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v167 = OUTLINED_FUNCTION_3_3();
  v328 = v168;
  v332 = v159;
  v168(v167);
  sub_1CA94A1E8();
  v284(v161, v162);
  sub_1CA94D578();
  v289(v163, v281);
  MEMORY[0x1CCAA1300](46, 0xE100000000000000);
  v169 = sub_1CA9497B8();
  MEMORY[0x1CCAA1300](v169);

  v170 = *(v12 + 408);
  *(v351 + 16) = *(v12 + 400);
  *(v351 + 24) = v170;
  *v164 = v351;
  LODWORD(v162) = *MEMORY[0x1E69DA9C0];
  (*(v165 + 104))(v164, *MEMORY[0x1E69DA9C0], v304);
  sub_1CA3D3590(&qword_1EC441D50, MEMORY[0x1E69DAAB8]);
  sub_1CA3D35D4(&qword_1EDB9F7C0, &unk_1EC444CC0, &unk_1CA9867F0);
  sub_1CA94A838();

  (*(v165 + 8))(v164, v304);
  v171 = *(v339 + 8);
  v336 = v339 + 8;
  v171(v315, v321);
  swift_getKeyPath();
  v345 = swift_allocBox();
  sub_1CA3C086C();
  OUTLINED_FUNCTION_113_1();
  v294 = v172;
  v173 = *(v12 + 1360);
  v174 = *(v12 + 1336);
  LODWORD(v304) = v162;
  v175 = *(v12 + 1312);
  v290 = *(v12 + 1280);
  v375 = *(v12 + 608);
  v310 = *(v12 + 600);
  v316 = *(v12 + 592);
  v323 = *(v12 + 568);
  v176 = *(v12 + 536);
  v177 = *(v12 + 528);
  v178 = *(v12 + 520);
  sub_1CA94A2A8();
  v179 = OUTLINED_FUNCTION_61();
  v328(v179);
  sub_1CA94A1E8();
  v294(v175, v290);
  *v176 = v345;
  (*(v177 + 104))(v176, v304, v178);
  sub_1CA3D35D4(&qword_1EC444358, &qword_1EC444348, &qword_1CA985B20);
  sub_1CA94A838();

  (*(v177 + 8))(v176, v178);
  OUTLINED_FUNCTION_243();
  v180();
  v181 = sub_1CA948E58();
  OUTLINED_FUNCTION_1_0(v181);
  v183 = v182;
  v185 = *(v184 + 64);
  OUTLINED_FUNCTION_45();
  sub_1CA948D98();
  OUTLINED_FUNCTION_70();
  sub_1CA94A6E8();
  v186 = *(v12 + 1280);
  v187 = *(v12 + 608);
  v83 = *(v12 + 600);
  v188 = *(v12 + 568);
  v189 = *(v183 + 8);
  v190 = OUTLINED_FUNCTION_126();
  v191(v190);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_243();
  v192();

  OUTLINED_FUNCTION_49(v187, 1, v186);
  if (v69)
  {
    v193 = *(v12 + 1464);
    v133 = *(v12 + 608);
    (*(*(v12 + 1056) + 8))(*(v12 + 1064), *(v12 + 1048));

    v134 = &qword_1EC4454B0;
    v135 = &unk_1CA983070;
    goto LABEL_27;
  }

  v194 = *(v12 + 1488);
  v195 = *(v12 + 1440);
  (*(*(v12 + 1288) + 32))(*(v12 + 1304), *(v12 + 608), *(v12 + 1280));
  sub_1CA949C58();
  v196 = sub_1CA949F68();
  sub_1CA94CC38();
  OUTLINED_FUNCTION_165_2();
  if (os_log_type_enabled(v196, v197))
  {
    v199 = OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_175_1(v199);
    OUTLINED_FUNCTION_118_1(&dword_1CA256000, v200, v201, "WFRemoteAppIntentExecutionAction: Execution result contains a follow-up invocation, asking client whether they want to run it.");
    OUTLINED_FUNCTION_105_2();
  }

  v202 = *(v12 + 1440);
  v203 = *(v12 + 1400);
  v204 = *(v12 + 1392);
  v205 = *(v12 + 1064);
  v206 = *(v12 + 904);

  v207 = OUTLINED_FUNCTION_20_0();
  v363(v207);
  v208 = MEMORY[0x1E69E7CC0];
  v209 = MEMORY[0x1E69E6168];
  OUTLINED_FUNCTION_69_0();
  v210 = sub_1CA94C1E8();
  sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
  OUTLINED_FUNCTION_69_0();
  v211 = sub_1CA94C1E8();
  v212 = sub_1CA9497A8();
  *(v12 + 1904) = v212;
  v213 = *(v212 + 16);
  *(v12 + 1912) = v213;
  if (!v213)
  {
LABEL_39:

    v368 = v211;
    v221 = OUTLINED_FUNCTION_128_0();
    v222(v221);
    sub_1CA2F54CC(v210);

    sub_1CA94A2E8();
    OUTLINED_FUNCTION_125();
    sub_1CA94A298();
    v231 = *(v12 + 1872);
    v232 = *(v12 + 1864);
    v376 = *(v12 + 1352);
    v352 = *(v12 + 1336);
    v346 = OUTLINED_FUNCTION_110_1();
    v364 = v233;
    v340 = sub_1CA9497B8();
    v358 = v234;
    OUTLINED_FUNCTION_221();
    sub_1CA949938();
    v235 = OUTLINED_FUNCTION_189_1();
    v232(v235);
    v236 = sub_1CA9489F8();
    OUTLINED_FUNCTION_257(v236);
    sub_1CA9489E8();
    OUTLINED_FUNCTION_34_8();
    sub_1CA3D3590(v237, v238);
    sub_1CA9489D8();
    OUTLINED_FUNCTION_153_2();
    v239 = objc_allocWithZone(MEMORY[0x1E69E0B00]);
    *(v12 + 1992) = OUTLINED_FUNCTION_214_0(v346, v364, v340, v358, v368);
    if (!v231)
    {
      v254 = *(v12 + 1464);

      v277 = *(v12 + 1992);
      OUTLINED_FUNCTION_198_1();
      v317 = v255;
      v322 = v256;
      OUTLINED_FUNCTION_174_1();
      v335 = v257;
      v275 = *(v12 + 1752);
      v282 = *(v12 + 1576);
      v295 = *(v12 + 1568);
      OUTLINED_FUNCTION_66_2();
      v359 = v258;
      v311 = *(v12 + 1504);
      v259 = *(v12 + 1496);
      v369 = *(v12 + 1384);
      v279 = *(v12 + 1352);
      v102 = *(v12 + 1336);
      v353 = *(v12 + 1328);
      v285 = *(v12 + 1304);
      v260 = *(v12 + 1280);
      OUTLINED_FUNCTION_78_1();
      v341 = v261;
      v347 = v262;
      OUTLINED_FUNCTION_120_2();
      v327 = v263;
      v331 = v264;
      v291 = *(v12 + 1064);
      v265 = *(v12 + 1056);
      v266 = *(v12 + 1048);
      v305 = *(v12 + 752);
      v287 = *(v12 + 728);
      v300 = *(v12 + 720);
      OUTLINED_FUNCTION_90_3();
      OUTLINED_FUNCTION_1_23();
      sub_1CA3D3590(v267, v268);
      OUTLINED_FUNCTION_23_10();
      swift_allocError();
      OUTLINED_FUNCTION_191();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
      v269 = OUTLINED_FUNCTION_70_6();
      OUTLINED_FUNCTION_159_2(v269, v270, v271, v272);
      v371 = 0;
      swift_willThrow();

      swift_unknownObjectRelease();

      v100 = v322;
      v317(v279, v102);
      v259(v285, v260);
      v273 = *(v265 + 8);
      v273(v291, v266);
      v335(v305, v300);
      v273(v327, v266);
      OUTLINED_FUNCTION_2_26();
      sub_1CA3D3628(v331, v274);
      v359(v347, v341);
      v259(v353, v260);
      v317(v369, v102);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_250();
    v240 = *(v12 + 1568);
    *(v12 + 16) = v241;
    v242 = OUTLINED_FUNCTION_40_4(v12 + 424);
    v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C30, &unk_1CA985A90);
    OUTLINED_FUNCTION_32_7(v243);
    OUTLINED_FUNCTION_31_8(COERCE_DOUBLE(1107296256));
    *(v12 + 160) = v244;
    *(v12 + 168) = &block_descriptor_48;
    *(v12 + 176) = v242;
    [v240 handleDialogRequest:v239 completionHandler:v12 + 144];
    OUTLINED_FUNCTION_23_0();

    return MEMORY[0x1EEE6DEC8](v225);
  }

  v214 = 0;
  v215 = *(v12 + 872);
  *(v12 + 2040) = *(v215 + 80);
  *(v12 + 1920) = *(v215 + 72);
  *(v12 + 1928) = *(v215 + 16);
  while (1)
  {
    *(v12 + 1952) = v210;
    *(v12 + 1944) = v214;
    *(v12 + 1936) = v210;
    v216 = OUTLINED_FUNCTION_30_8(v214);
    v217(v216);
    v218 = sub_1CA949988();
    OUTLINED_FUNCTION_188_1(v218);
    if (v209)
    {
      break;
    }

    OUTLINED_FUNCTION_182_1();
    v219();
    OUTLINED_FUNCTION_125_1();
    if (v69)
    {
      v220 = *(v12 + 1904);
      goto LABEL_39;
    }
  }

  sub_1CA949978();
  OUTLINED_FUNCTION_207_1();
  v209;
  swift_isUniquelyReferenced_nonNull_native();
  v223 = OUTLINED_FUNCTION_137_2();
  OUTLINED_FUNCTION_132_0(v223, v224);
  if (v227)
  {
    __break(1u);
LABEL_59:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v225);
  }

  v228 = v226;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444D40, &unk_1CA985BE0);
  if (OUTLINED_FUNCTION_157_2())
  {
    v229 = *(v12 + 432);
    OUTLINED_FUNCTION_68_3();
    sub_1CA271BF8();
    OUTLINED_FUNCTION_179_1();
    if (!v69)
    {
      OUTLINED_FUNCTION_23_0();

      return sub_1CA94D878();
    }
  }

  v246 = *(v12 + 432);
  *(v12 + 1968) = v246;
  if ((v228 & 1) == 0)
  {
    OUTLINED_FUNCTION_29_11(v246);
    if (!v227)
    {
      *(v247 + 16) = v248;
      goto LABEL_54;
    }

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_227(v246);

LABEL_54:
  OUTLINED_FUNCTION_218();
  sub_1CA94A1E8();
  v249 = v208 + *(v211 + 24);
  _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
  v250 = [objc_opt_self() defaultContext];
  OUTLINED_FUNCTION_62_0(v250);
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v12 + 1976) = v251;
  *v251 = v252;
  OUTLINED_FUNCTION_27_13(v251);
  OUTLINED_FUNCTION_23_0();

  return TypedValueTransformer.transform(input:with:)();
}

uint64_t sub_1CA3C87FC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v6 = *(v5 + 1976);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v3 + 1984) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_245();
    v11 = sub_1CA3C8900;
  }

  else
  {

    OUTLINED_FUNCTION_245();
    v11 = sub_1CA3C9680;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1CA3C8900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = v12[248];
  v14 = v12[245];
  v15 = v12[186];
  v16 = v12[179];
  sub_1CA949C58();
  v17 = v14;
  v18 = v13;
  v19 = sub_1CA949F68();
  v20 = sub_1CA94CC18();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v12[245];
    v152 = v12[179];
    v149 = v12[174];
    v163 = v12[110];
    v22 = v12[109];
    v158 = v12[232];
    v161 = v12[108];
    v155 = v12[63];
    v144 = v12[248];
    v146 = v12[175] + 8;
    v23 = OUTLINED_FUNCTION_30_2();
    v167 = OUTLINED_FUNCTION_29_4();
    *v23 = 136315394;
    v24 = [v21 debugDescription];
    v25 = sub_1CA94C3A8();
    v27 = v26;

    v28 = sub_1CA26B54C(v25, v27, &v167);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    v29 = v144;
    swift_getErrorValue();
    v31 = v12[44];
    v30 = v12[45];
    v32 = v12[46];
    v33 = sub_1CA94D8B8();
    v35 = OUTLINED_FUNCTION_212_0(v33, v34);

    *(v23 + 14) = v35;
    _os_log_impl(&dword_1CA256000, v19, v20, "WFRemoteAppIntentExecutionAction: Failed to convert link value: (%s) to typed value due to error: %s.", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_105_2();

    v158(v152, v149);
    OUTLINED_FUNCTION_6_21();
    sub_1CA3D3628(v155, v36);
    (*(v22 + 8))(v163, v161);
  }

  else
  {
    v37 = v12[248];
    v27 = v12[245];
    v38 = v12[232];
    v39 = v12[179];
    v40 = v19;
    v41 = v12[175];
    v42 = v12[174];
    v164 = v12[110];
    v43 = v12[109];
    v29 = v12[108];
    v44 = v12[63];

    v45 = OUTLINED_FUNCTION_69_0();
    v38(v45);
    OUTLINED_FUNCTION_6_21();
    sub_1CA3D3628(v44, v46);
    v47 = *(v43 + 8);
    v35 = v43 + 8;
    v47(v164, v29);
  }

  v48 = v12[244];
  v49 = v12[242];
  v50 = v12[246];
  while (1)
  {
    OUTLINED_FUNCTION_125_1();
    if (v52)
    {
      v165 = v50;
      v57 = v12[238];

      v58 = OUTLINED_FUNCTION_128_0();
      v59(v58);
      sub_1CA2F54CC(v48);

      sub_1CA94A2E8();
      OUTLINED_FUNCTION_125();
      sub_1CA94A298();
      v69 = v12[234];
      v70 = v12[233];
      v153 = v12[167];
      v156 = v12[169];
      v150 = OUTLINED_FUNCTION_110_1();
      v162 = v71;
      v147 = sub_1CA9497B8();
      v159 = v72;
      OUTLINED_FUNCTION_221();
      sub_1CA949938();
      v73 = OUTLINED_FUNCTION_189_1();
      v70(v73);
      v74 = sub_1CA9489F8();
      OUTLINED_FUNCTION_257(v74);
      sub_1CA9489E8();
      OUTLINED_FUNCTION_34_8();
      sub_1CA3D3590(v75, v76);
      sub_1CA9489D8();
      OUTLINED_FUNCTION_153_2();
      v103 = objc_allocWithZone(MEMORY[0x1E69E0B00]);
      v12[249] = OUTLINED_FUNCTION_214_0(v150, v162, v147, v159, v165);
      if (!v69)
      {
        v110 = v12[183];

        v132 = v12[249];
        OUTLINED_FUNCTION_198_1();
        v141 = v111;
        v142 = v112;
        OUTLINED_FUNCTION_174_1();
        v148 = v113;
        v131 = v12[219];
        v134 = v12[197];
        v137 = v12[196];
        OUTLINED_FUNCTION_66_2();
        v160 = v114;
        v140 = v12[188];
        v115 = v12[187];
        v166 = v12[173];
        v133 = v12[169];
        v116 = v12[167];
        OUTLINED_FUNCTION_234();
        v154 = v117;
        v157 = v118;
        v151 = v12[153];
        OUTLINED_FUNCTION_120_2();
        v143 = v119;
        v145 = v120;
        v136 = v12[133];
        OUTLINED_FUNCTION_246();
        v135 = v121;
        v138 = v12[90];
        v139 = v122;
        OUTLINED_FUNCTION_90_3();
        OUTLINED_FUNCTION_1_23();
        sub_1CA3D3590(v123, v124);
        OUTLINED_FUNCTION_23_10();
        swift_allocError();
        OUTLINED_FUNCTION_191();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
        v125 = OUTLINED_FUNCTION_70_6();
        OUTLINED_FUNCTION_159_2(v125, v126, v127, v128);
        swift_willThrow();

        swift_unknownObjectRelease();

        v141(v133, v116);
        v115(v135, v29);
        v129 = v27[1];
        v129(v136, v35);
        v148(v139, v138);
        v129(v143, v35);
        OUTLINED_FUNCTION_2_26();
        sub_1CA3D3628(v145, v130);
        v160(v154, v151);
        v115(v157, v29);
        v141(v166, v116);
        OUTLINED_FUNCTION_76_2();
        v77 = 0;
        sub_1CA949F68();
        sub_1CA94CC18();
        OUTLINED_FUNCTION_253();
        if (OUTLINED_FUNCTION_197_1())
        {
          OUTLINED_FUNCTION_150_0();
          v78 = OUTLINED_FUNCTION_131();
          *v116 = 138412290;
          v79 = 0;
          v80 = _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_106_2(v80);
          OUTLINED_FUNCTION_57_3(&dword_1CA256000, v81, v82, "WFRemoteAppIntentExecutionAction: Failed: %@");
          sub_1CA27080C(v78, &qword_1EC444AE0, &qword_1CA985B70);
          OUTLINED_FUNCTION_59_4();
          OUTLINED_FUNCTION_60();
        }

        OUTLINED_FUNCTION_156_2();
        v83 = *(v142 + 8);
        v84 = OUTLINED_FUNCTION_69_0();
        v85(v84);
        v86 = sub_1CA948AC8();
        OUTLINED_FUNCTION_158_2(v86, sel_finishRunningWithError_);

        OUTLINED_FUNCTION_0_26();
        OUTLINED_FUNCTION_72_1();

        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_23_0();

        return v88(v87, v88, v89, v90, v91, v92, v93, v94, a9, a10, a11, a12);
      }

      OUTLINED_FUNCTION_250();
      v104 = v12[196];
      v12[2] = v105;
      v106 = OUTLINED_FUNCTION_40_4((v12 + 53));
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C30, &unk_1CA985A90);
      OUTLINED_FUNCTION_32_7(v107);
      OUTLINED_FUNCTION_31_8(COERCE_DOUBLE(1107296256));
      v12[20] = v108;
      v12[21] = &block_descriptor_48;
      v12[22] = v106;
      [v104 handleDialogRequest:v103 completionHandler:v12 + 18];
      OUTLINED_FUNCTION_23_0();

      return MEMORY[0x1EEE6DEC8](v62);
    }

    v12[244] = v48;
    v12[243] = v51;
    v12[242] = v49;
    v53 = OUTLINED_FUNCTION_30_8(v51);
    v54(v53);
    v55 = sub_1CA949988();
    OUTLINED_FUNCTION_188_1(v55);
    if (v29)
    {
      break;
    }

    OUTLINED_FUNCTION_182_1();
    v56();
  }

  sub_1CA949978();
  OUTLINED_FUNCTION_207_1();
  v29;
  swift_isUniquelyReferenced_nonNull_native();
  v60 = OUTLINED_FUNCTION_137_2();
  OUTLINED_FUNCTION_132_0(v60, v61);
  if (v64)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v62);
  }

  v65 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444D40, &unk_1CA985BE0);
  if (OUTLINED_FUNCTION_157_2())
  {
    v66 = v12[54];
    OUTLINED_FUNCTION_68_3();
    sub_1CA271BF8();
    OUTLINED_FUNCTION_179_1();
    if (!v52)
    {
      OUTLINED_FUNCTION_23_0();

      return sub_1CA94D878();
    }
  }

  v95 = v12[54];
  v12[246] = v95;
  if (v65)
  {
    OUTLINED_FUNCTION_227(v95);

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_29_11(v95);
  if (v64)
  {
    goto LABEL_33;
  }

  *(v96 + 16) = v97;
LABEL_24:
  OUTLINED_FUNCTION_218();
  sub_1CA94A1E8();
  v98 = v49 + *(v50 + 24);
  _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
  v99 = [objc_opt_self() defaultContext];
  OUTLINED_FUNCTION_62_0(v99);
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  v12[247] = v100;
  *v100 = v101;
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_23_0();

  return TypedValueTransformer.transform(input:with:)();
}

uint64_t sub_1CA3C9680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = v12[242];
  v14 = v12[116];
  v15 = v12[115];
  v16 = v12[114];
  v17 = v12[113];
  v18 = v12[110];
  v19 = sub_1CA949978();
  v21 = v20;
  (*(v16 + 16))(v15, v14, v17);
  swift_isUniquelyReferenced_nonNull_native();
  v12[56] = v13;
  OUTLINED_FUNCTION_188();
  v22 = sub_1CA271BF8();
  if (__OFADD__(*(v13 + 16), (v23 & 1) == 0))
  {
    __break(1u);
    goto LABEL_40;
  }

  v24 = v22;
  v25 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444360, &qword_1CA983118);
  if (sub_1CA94D588())
  {
    v26 = v12[56];
    OUTLINED_FUNCTION_188();
    v27 = sub_1CA271BF8();
    if ((v25 & 1) != (v28 & 1))
    {
      goto LABEL_18;
    }

    v24 = v27;
  }

  v29 = v12[56];
  v30 = v12[115];
  v31 = v12[114];
  v32 = v12[113];
  if ((v25 & 1) == 0)
  {
    v29[(v24 >> 6) + 8] |= 1 << v24;
    v33 = (v29[6] + 16 * v24);
    *v33 = v19;
    v33[1] = v21;
    v22 = (*(v31 + 32))(v29[7] + *(v31 + 72) * v24, v30, v32);
    v34 = v29[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (!v35)
    {
      v29[2] = v36;
      goto LABEL_9;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v22);
  }

  (*(v31 + 40))(v29[7] + *(v31 + 72) * v24, v30, v32);

LABEL_9:
  v37 = v12[110];
  v38 = v12[109];
  v39 = v12[108];
  v40 = v12[63];
  (*(v12[114] + 8))(v12[116], v12[113]);
  OUTLINED_FUNCTION_6_21();
  sub_1CA3D3628(v40, v41);
  v42 = *(v38 + 8);
  v43 = OUTLINED_FUNCTION_52_0();
  v44(v43);
  v45 = v12[248];
  v46 = v12[246];
  while (1)
  {
    OUTLINED_FUNCTION_125_1();
    if (v48)
    {
      v189 = v46;
      v53 = v12[238];

      v54 = v12[173];
      v55 = v12[169];
      v56 = v12[162];
      v57 = v12[64];
      (*(v12[161] + 16))(v56, v12[163], v12[160]);
      v58 = sub_1CA2F54CC(v29);

      sub_1CA94A2E8();
      sub_1CA94A298();
      if (v45)
      {
        v185 = v12[237];
        v187 = v45;
        v59 = v12[236];
        OUTLINED_FUNCTION_174_1();
        v164 = v60;
        v61 = v12[219];
        v154 = v12[197];
        v158 = v12[196];
        v62 = v12[195];
        OUTLINED_FUNCTION_117_2();
        v172 = v63;
        v64 = v12[188];
        v65 = v12[187];
        OUTLINED_FUNCTION_92_1();
        v179 = v66;
        v182 = v67;
        v176 = v12[167];
        OUTLINED_FUNCTION_233();
        v168 = v68;
        v170 = v69;
        v166 = v12[153];
        OUTLINED_FUNCTION_120_2();
        v160 = v70;
        v162 = v71;
        OUTLINED_FUNCTION_231();
        v156 = v72;
        v150 = v12[91];
        v151 = v73;
        v153 = v12[90];

        swift_unknownObjectRelease();

        v74 = OUTLINED_FUNCTION_201();
        v65(v74);
        v75 = *(v56 + 8);
        v75(v151, v46);
        v164(v156, v153);
        v75(v160, v46);
        OUTLINED_FUNCTION_2_26();
        sub_1CA3D3628(v162, v76);
        v172(v168, v166);
        (v65)(v170, v12 + 53);
        v182(v179, v176);

LABEL_22:
        OUTLINED_FUNCTION_76_2();
        v91 = v187;
        sub_1CA949F68();
        sub_1CA94CC18();
        OUTLINED_FUNCTION_253();
        if (OUTLINED_FUNCTION_197_1())
        {
          OUTLINED_FUNCTION_150_0();
          v92 = OUTLINED_FUNCTION_131();
          *v46 = 138412290;
          v93 = v187;
          v94 = _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_106_2(v94);
          OUTLINED_FUNCTION_57_3(&dword_1CA256000, v95, v96, "WFRemoteAppIntentExecutionAction: Failed: %@");
          sub_1CA27080C(v92, &qword_1EC444AE0, &qword_1CA985B70);
          OUTLINED_FUNCTION_59_4();
          OUTLINED_FUNCTION_60();
        }

        OUTLINED_FUNCTION_156_2();
        v97 = *(v62 + 8);
        v98 = OUTLINED_FUNCTION_69_0();
        v99(v98);
        v100 = sub_1CA948AC8();
        OUTLINED_FUNCTION_158_2(v100, sel_finishRunningWithError_);

        OUTLINED_FUNCTION_3_21();
        OUTLINED_FUNCTION_19_7();
        v147 = v12[98];
        OUTLINED_FUNCTION_24_9();

        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_23_0();

        return v102(v101, v102, v103, v104, v105, v106, v107, v108, a9, a10, a11, a12);
      }

      v84 = v12[234];
      v46 = v12[233];
      v188 = v12[169];
      v180 = v12[167];
      v177 = OUTLINED_FUNCTION_110_1();
      v186 = v85;
      v174 = sub_1CA9497B8();
      v183 = v86;
      OUTLINED_FUNCTION_221();
      sub_1CA949938();
      v87 = OUTLINED_FUNCTION_189_1();
      (v46)(v87);
      v88 = sub_1CA9489F8();
      OUTLINED_FUNCTION_257(v88);
      sub_1CA9489E8();
      OUTLINED_FUNCTION_34_8();
      sub_1CA3D3590(v89, v90);
      sub_1CA9489D8();
      OUTLINED_FUNCTION_153_2();
      v117 = objc_allocWithZone(MEMORY[0x1E69E0B00]);
      v12[249] = OUTLINED_FUNCTION_214_0(v177, v186, v174, v183, v189);
      if (!v84)
      {
        v124 = v12[183];

        v148 = v12[249];
        OUTLINED_FUNCTION_198_1();
        v165 = v125;
        v167 = v126;
        OUTLINED_FUNCTION_174_1();
        v173 = v127;
        v146 = v12[219];
        v128 = v12[197];
        v157 = v12[196];
        v129 = v12[195];
        OUTLINED_FUNCTION_117_2();
        v184 = v130;
        v163 = v12[188];
        v131 = v12[187];
        OUTLINED_FUNCTION_202_1();
        OUTLINED_FUNCTION_234();
        v178 = v132;
        v181 = v133;
        v175 = v12[153];
        OUTLINED_FUNCTION_120_2();
        v169 = v134;
        v171 = v135;
        v155 = v12[133];
        OUTLINED_FUNCTION_246();
        v152 = v136;
        v159 = v12[90];
        v161 = v137;
        OUTLINED_FUNCTION_90_3();
        OUTLINED_FUNCTION_1_23();
        sub_1CA3D3590(v138, v139);
        OUTLINED_FUNCTION_23_10();
        swift_allocError();
        OUTLINED_FUNCTION_191();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
        v140 = OUTLINED_FUNCTION_70_6();
        OUTLINED_FUNCTION_159_2(v140, v141, v142, v143);
        v187 = 0;
        swift_willThrow();

        swift_unknownObjectRelease();

        v62 = v167;
        v165(v149, v46);
        v131(v152, v56);
        v144 = *(v58 + 8);
        v144(v155, v55);
        v173(v161, v159);
        v144(v169, v55);
        OUTLINED_FUNCTION_2_26();
        sub_1CA3D3628(v171, v145);
        v184(v178, v175);
        v131(v181, v56);
        v165(v189, v46);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_250();
      v118 = v12[196];
      v12[2] = v119;
      v120 = OUTLINED_FUNCTION_40_4((v12 + 53));
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C30, &unk_1CA985A90);
      OUTLINED_FUNCTION_32_7(v121);
      OUTLINED_FUNCTION_31_8(COERCE_DOUBLE(1107296256));
      v12[20] = v122;
      v12[21] = &block_descriptor_48;
      v12[22] = v120;
      [v118 handleDialogRequest:v117 completionHandler:v12 + 18];
      OUTLINED_FUNCTION_23_0();

      return MEMORY[0x1EEE6DEC8](v22);
    }

    v12[244] = v29;
    v12[243] = v47;
    v12[242] = v29;
    v49 = OUTLINED_FUNCTION_30_8(v47);
    v50(v49);
    v51 = sub_1CA949988();
    OUTLINED_FUNCTION_188_1(v51);
    if (v25)
    {
      break;
    }

    OUTLINED_FUNCTION_182_1();
    v52();
  }

  sub_1CA949978();
  OUTLINED_FUNCTION_207_1();
  v25;
  swift_isUniquelyReferenced_nonNull_native();
  v77 = OUTLINED_FUNCTION_137_2();
  OUTLINED_FUNCTION_132_0(v77, v78);
  if (v35)
  {
    goto LABEL_41;
  }

  v80 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444D40, &unk_1CA985BE0);
  if ((OUTLINED_FUNCTION_157_2() & 1) == 0 || (v81 = v12[54], OUTLINED_FUNCTION_68_3(), sub_1CA271BF8(), OUTLINED_FUNCTION_179_1(), v48))
  {
    v109 = v12[54];
    v12[246] = v109;
    if (v80)
    {
      OUTLINED_FUNCTION_227(v109);
    }

    else
    {
      OUTLINED_FUNCTION_29_11(v109);
      if (v35)
      {
        goto LABEL_42;
      }

      *(v110 + 16) = v111;
    }

    OUTLINED_FUNCTION_218();
    sub_1CA94A1E8();
    v112 = &v45[*(v46 + 24)];
    _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
    v113 = [objc_opt_self() defaultContext];
    OUTLINED_FUNCTION_62_0(v113);
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    v12[247] = v114;
    *v114 = v115;
    OUTLINED_FUNCTION_27_13();
    OUTLINED_FUNCTION_23_0();

    return TypedValueTransformer.transform(input:with:)();
  }

  else
  {
LABEL_18:
    OUTLINED_FUNCTION_23_0();

    return sub_1CA94D878();
  }
}

uint64_t sub_1CA3CA384()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 2000) = v4;
  v5 = v3[185];
  v6 = v3[184];
  if (v4)
  {
    v7 = sub_1CA3CC768;
  }

  else
  {
    v7 = sub_1CA3CA4A4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1CA3CA4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v14 = v12[196];
  v15 = v12[53];
  v12[251] = v15;

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = v12[186];
    v19 = v12[178];
    sub_1CA949C58();
    v20 = v15;
    v21 = sub_1CA949F68();
    v22 = sub_1CA94CC38();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = [v17 shouldRunFollowUpAction];

      _os_log_impl(&dword_1CA256000, v21, v22, "WFRemoteAppIntentExecutionAction: Client responded with follow-up action execution dialog response: %{BOOL}d.", v23, 8u);
      OUTLINED_FUNCTION_59_4();
    }

    else
    {

      v21 = v20;
    }

    v56 = v12[232];
    v57 = v12[178];
    v58 = v12[175];
    v59 = v12[174];

    v60 = OUTLINED_FUNCTION_70();
    v56(v60);
    if ([v17 shouldRunFollowUpAction])
    {
      v61 = v12[224];
      v62 = v12[223];
      v63 = v12[197];
      v64 = v12[88];
      v65 = v12[85];
      v66 = v12[84];
      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v71, v72, v73, v61);
      v74 = sub_1CA949808();
      OUTLINED_FUNCTION_123_2(v74, v75, v76, v77, v78, v79, v80, v81, v138, v139, v140);
      v82 = *(MEMORY[0x1E698ADE8] + 4);

      swift_task_alloc();
      OUTLINED_FUNCTION_77();
      v12[252] = v83;
      *v83 = v84;
      v83[1] = sub_1CA3CAE2C;
      v85 = v12[226];
      v86 = v12[225];
      v87 = v12[222];
      v88 = v12[219];
      v89 = v12[197];
      v90 = v12[133];
      v91 = v12[92];
      v92 = v12[88];
      OUTLINED_FUNCTION_23_0();

      return MEMORY[0x1EEDEBDC8](v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12);
    }

    v101 = v12[249];
    v102 = v12[237];
    v103 = v12[236];
    OUTLINED_FUNCTION_126_2();
    v213 = v104;
    v105 = v12[183];
    v106 = v12[169];
    v107 = v12[167];
    v108 = v12[163];
    v109 = v12[160];
    v212 = v12[133];
    v110 = v12[132];
    v111 = v12[131];

    v112 = OUTLINED_FUNCTION_52_0();
    v103(v112);
    v113 = OUTLINED_FUNCTION_70();
    v213(v113);
    (*(v110 + 8))(v212, v111);
    v114 = v12[235];
    v197 = v12[231];
    OUTLINED_FUNCTION_190_1();
    v194 = v115;
    v116 = v12[195];
    OUTLINED_FUNCTION_86_0();
    v207 = v117;
    OUTLINED_FUNCTION_113_1();
    v210 = v118;
    OUTLINED_FUNCTION_193_0();
    v214 = v119;
    v216 = v120;
    OUTLINED_FUNCTION_93_2();
    v203 = v121;
    v205 = v122;
    OUTLINED_FUNCTION_78_1();
    v199 = v123;
    v201 = v124;
    v196 = v12[145];
    OUTLINED_FUNCTION_192_1();
    v190 = v125;
    v192 = v126;
    [OUTLINED_FUNCTION_133_1() finishRunningWithError_];

    swift_unknownObjectRelease();

    v127 = OUTLINED_FUNCTION_126();
    v197(v127);
    (*(v107 + 8))(v192, v190);
    OUTLINED_FUNCTION_2_26();
    sub_1CA3D3628(v196, v128);
    v207(v201, v199);
    v210(v205, v203);
    (v20[1].isa)(v216, v214);
  }

  else
  {
    v24 = v12[183];

    v182 = v12[249];
    v25 = v12[237];
    v198 = v12[236];
    OUTLINED_FUNCTION_174_1();
    v204 = v26;
    v180 = v12[219];
    v27 = v12[197];
    v189 = v12[196];
    v28 = v12[195];
    OUTLINED_FUNCTION_117_2();
    v211 = v29;
    OUTLINED_FUNCTION_126_2();
    v195 = v30;
    OUTLINED_FUNCTION_202_1();
    v31 = v12[163];
    v32 = v12[160];
    v208 = v12[159];
    v209 = v12[166];
    v206 = v12[153];
    OUTLINED_FUNCTION_120_2();
    v200 = v33;
    v202 = v34;
    v35 = v12[132];
    v185 = v12[131];
    v186 = v36;
    v187 = v12[91];
    v188 = v12[133];
    v191 = v12[90];
    v193 = v12[94];
    OUTLINED_FUNCTION_90_3();
    OUTLINED_FUNCTION_1_23();
    sub_1CA3D3590(v37, v38);
    OUTLINED_FUNCTION_23_10();
    v39 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
    v40 = OUTLINED_FUNCTION_70_6();
    OUTLINED_FUNCTION_159_2(v40, v41, v42, v43);
    swift_willThrow();

    swift_unknownObjectRelease();

    v198(v184, v13);
    v195(v186, v32);
    v44 = *(v35 + 8);
    v44(v188, v185);
    v204(v193, v191);
    v44(v200, v185);
    OUTLINED_FUNCTION_2_26();
    sub_1CA3D3628(v202, v45);
    v211(v208, v206);
    v195(v209, v32);
    v198(v215, v13);
    OUTLINED_FUNCTION_76_2();
    v46 = v39;
    sub_1CA949F68();
    sub_1CA94CC18();
    OUTLINED_FUNCTION_253();
    if (OUTLINED_FUNCTION_197_1())
    {
      OUTLINED_FUNCTION_150_0();
      v47 = OUTLINED_FUNCTION_131();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v48 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_106_2(v48);
      OUTLINED_FUNCTION_57_3(&dword_1CA256000, v49, v50, "WFRemoteAppIntentExecutionAction: Failed: %@");
      sub_1CA27080C(v47, &qword_1EC444AE0, &qword_1CA985B70);
      OUTLINED_FUNCTION_59_4();
      OUTLINED_FUNCTION_60();
    }

    v51 = v12[177];
    OUTLINED_FUNCTION_97_2();
    v52 = v39[1];
    v53 = OUTLINED_FUNCTION_69_0();
    v54(v53);
    v55 = sub_1CA948AC8();
    OUTLINED_FUNCTION_158_2(v55, sel_finishRunningWithError_);
  }

  OUTLINED_FUNCTION_3_21();
  v141 = v12[166];
  v142 = v12[165];
  v143 = v12[164];
  v144 = v12[163];
  v145 = v12[162];
  v146 = v12[159];
  v147 = v12[158];
  v148 = v12[157];
  v149 = v12[156];
  v150 = v12[155];
  v151 = v12[152];
  v152 = v12[151];
  v153 = v12[150];
  v154 = v12[149];
  v155 = v12[148];
  v156 = v12[145];
  v157 = v12[144];
  v158 = v12[142];
  v159 = v12[141];
  v160 = v12[140];
  v161 = v12[139];
  v162 = v12[138];
  v163 = v12[137];
  v164 = v12[134];
  v165 = v12[133];
  v166 = v12[130];
  v167 = v12[127];
  v168 = v12[126];
  v169 = v12[125];
  v170 = v12[122];
  v171 = v12[119];
  v172 = v12[117];
  v173 = v12[116];
  v174 = v12[115];
  v175 = v12[112];
  v176 = v12[111];
  v177 = v12[110];
  v178 = v12[107];
  v179 = v12[104];
  v181 = v12[101];
  v183 = v12[98];
  OUTLINED_FUNCTION_24_9();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_0();

  return v130(v129, v130, v131, v132, v133, v134, v135, v136, a9, a10, a11, a12);
}

uint64_t sub_1CA3CAE2C()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v6 = *(v5 + 2016);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v3 + 2024) = v0;

  if (v0)
  {
    v9 = *(v3 + 1840);
    v10 = *(v3 + 1576);
    (*(v3 + 1832))(*(v3 + 704), *(v3 + 688));
  }

  else
  {
    v11 = *(v3 + 1848);
    v12 = *(v3 + 1840);
    v13 = *(v3 + 1832);
    v14 = *(v3 + 1576);
    v15 = *(v3 + 736);
    v16 = *(v3 + 728);
    v17 = *(v3 + 720);
    v18 = *(v3 + 704);
    v19 = *(v3 + 688);

    v20 = OUTLINED_FUNCTION_70();
    v13(v20);
    v21 = OUTLINED_FUNCTION_52_0();
    v11(v21);
  }

  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1CA3CAF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = v12[251];
  v14 = v12[249];
  v15 = v12[237];
  v16 = v12[236];
  OUTLINED_FUNCTION_126_2();
  v99 = v17;
  v18 = v12[183];
  v19 = v12[169];
  v20 = v12[167];
  v21 = v12[163];
  v22 = v12[160];
  v98 = v12[133];
  v23 = v12[132];
  v24 = v12[131];

  v25 = OUTLINED_FUNCTION_3_3();
  v16(v25);
  v26 = OUTLINED_FUNCTION_69_0();
  v99(v26);
  (*(v23 + 8))(v98, v24);
  v27 = v12[235];
  v94 = v12[231];
  OUTLINED_FUNCTION_190_1();
  v92 = v28;
  v29 = v12[195];
  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_193_0();
  v100 = v30;
  v101 = v31;
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_78_1();
  v95 = v32;
  v96 = v33;
  v93 = v12[145];
  OUTLINED_FUNCTION_192_1();
  v90 = v34;
  v91 = v35;
  [OUTLINED_FUNCTION_133_1() finishRunningWithError_];

  swift_unknownObjectRelease();

  v36 = OUTLINED_FUNCTION_126();
  v94(v36);
  (*(v21 + 8))(v91, v90);
  OUTLINED_FUNCTION_2_26();
  sub_1CA3D3628(v93, v37);
  v97(v96, v95);
  v38 = OUTLINED_FUNCTION_244();
  v39(v38);
  (*(v20 + 8))(v101, v100);
  OUTLINED_FUNCTION_3_21();
  v50 = v12[166];
  v51 = v12[165];
  v52 = v12[164];
  v53 = v12[163];
  v54 = v12[162];
  v55 = v12[159];
  v56 = v12[158];
  v57 = v12[157];
  v58 = v12[156];
  v59 = v12[155];
  v60 = v12[152];
  v61 = v12[151];
  v62 = v12[150];
  v63 = v12[149];
  v64 = v12[148];
  v65 = v12[145];
  v66 = v12[144];
  v67 = v12[142];
  v68 = v12[141];
  v69 = v12[140];
  v70 = v12[139];
  v71 = v12[138];
  v72 = v12[137];
  v73 = v12[134];
  v74 = v12[133];
  v75 = v12[130];
  v76 = v12[127];
  v77 = v12[126];
  v78 = v12[125];
  v79 = v12[122];
  v80 = v12[119];
  v81 = v12[117];
  v82 = v12[116];
  v83 = v12[115];
  v84 = v12[112];
  v85 = v12[111];
  v86 = v12[110];
  v87 = v12[107];
  v88 = v12[104];
  v89 = v12[101];
  v40 = v12[98];
  OUTLINED_FUNCTION_12_11(v12[97]);

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_1CA3CB498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v15 = *(v12 + 1656);
  v16 = *(v12 + 1008);
  v17 = *(v12 + 976);
  v18 = *(v12 + 968);
  v19 = *(v12 + 960);

  swift_unknownObjectRelease();
  v21 = *(v18 + 8);
  v20 = (v18 + 8);
  v22 = OUTLINED_FUNCTION_69_0();
  v23(v22);
  sub_1CA27080C(v16, &qword_1EC444D00, &qword_1CA988B80);
  v24 = *(v12 + 1696);
  while (2)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_163_1();
    v25 = OUTLINED_FUNCTION_104_2();
    (v13)(v25);
    v26 = v24;
    v27 = sub_1CA949F68();
    sub_1CA94CC18();
    OUTLINED_FUNCTION_222();
    os_log_type_enabled(v27, v14);
    OUTLINED_FUNCTION_45_6();
    if (v28)
    {
      OUTLINED_FUNCTION_30_2();
      v29 = OUTLINED_FUNCTION_154_2();
      *v20 = OUTLINED_FUNCTION_136_2(v29).n128_u32[0];
      sub_1CA94AF98();
      v30 = OUTLINED_FUNCTION_46_5();
      (v14)(v30);
      OUTLINED_FUNCTION_219();
      OUTLINED_FUNCTION_139();

      OUTLINED_FUNCTION_111_2();
      v31 = OUTLINED_FUNCTION_217_0();
      OUTLINED_FUNCTION_212_0(v31, v32);
      OUTLINED_FUNCTION_255();
      OUTLINED_FUNCTION_191_1();
      _os_log_impl(&dword_1CA256000, v27, v33, "WFRemoteAppIntentExecutionAction: Failed to convert typed value: (%s) to link value due to error: %s.", v20, 0x16u);
      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_59_4();

      v34 = v24[1];
      ++v24;
      v34();
      v14();
    }

    else
    {

      v35 = *(v16 + 8);
      v16 += 8;
      v17 = v35;
      v36 = OUTLINED_FUNCTION_119();
      v35(v36);
      v37 = OUTLINED_FUNCTION_181_1();
      v38(v37);
      v39 = OUTLINED_FUNCTION_176_0();
      v35(v39);
    }

    OUTLINED_FUNCTION_127_1();
    v40 = &qword_1EC444D20;
    if (!v41)
    {
      while (!__OFADD__(v13, 1))
      {
        OUTLINED_FUNCTION_47_6();
        if (v43 == v44)
        {
          v96 = OUTLINED_FUNCTION_241();
          v97 = __swift_instantiateConcreteTypeFromMangledNameV2(v96, &qword_1CA985B78);
          OUTLINED_FUNCTION_48_4(v97);
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_134_2();
        if (v46)
        {
          v13 = v45;
          goto LABEL_12;
        }
      }

LABEL_48:
      __break(1u);
LABEL_49:
      OUTLINED_FUNCTION_12_0();
LABEL_41:
      v140 = *(v12 + 952);
      v141 = qword_1EC442010;
      v140[3] = type metadata accessor for DatabaseContainerDefinitionProvider();
      v140[4] = &protocol witness table for DatabaseContainerDefinitionProvider;
      *v140 = v141;
      v140[5] = 0;
      v140[6] = v16;
      OUTLINED_FUNCTION_13_13();
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_23_0();

      return MEMORY[0x1EEE6DFA0](v142, v143, v144);
    }

    v42 = *(v12 + 1584);
LABEL_12:
    v47 = OUTLINED_FUNCTION_26_9(v42);
    v48(v47);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D20, &qword_1CA985B78);
    v50 = OUTLINED_FUNCTION_28_7(v49);
    v51(v50);
    v52 = OUTLINED_FUNCTION_67();
    v40 = &qword_1EC444D20;
    __swift_storeEnumTagSinglePayload(v52, v53, v54, &qword_1EC444D20);
    sub_1CA94C218();
    v98 = v166;
LABEL_13:
    OUTLINED_FUNCTION_85_2(v98);
    v55 = OUTLINED_FUNCTION_125();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(v55, v56);
    OUTLINED_FUNCTION_88_1(v57);
    if (v65)
    {
      OUTLINED_FUNCTION_84();
      sub_1CA94B0F8();
      v99 = OUTLINED_FUNCTION_177_0();
      OUTLINED_FUNCTION_49_3(v99);
      v100 = OUTLINED_FUNCTION_256();
      if (v17)
      {
        OUTLINED_FUNCTION_96_3();
        v165 = v102;
        OUTLINED_FUNCTION_9_14();
        OUTLINED_FUNCTION_38_6(v103);
        OUTLINED_FUNCTION_100_2();

        v104 = OUTLINED_FUNCTION_99_2();
        v105(v104);
        OUTLINED_FUNCTION_2_26();
        sub_1CA3D3628(&qword_1CA985B78, v106);
        v107 = OUTLINED_FUNCTION_200_1();
        v108(v107);
        v109 = OUTLINED_FUNCTION_199_1();
        v110(v109);
        v111 = OUTLINED_FUNCTION_205_1();
        v112(v111);

        OUTLINED_FUNCTION_76_2();
        v113 = v17;
        sub_1CA949F68();
        sub_1CA94CC18();
        OUTLINED_FUNCTION_228();
        if (OUTLINED_FUNCTION_216_0())
        {
          OUTLINED_FUNCTION_150_0();
          v114 = OUTLINED_FUNCTION_131();
          OUTLINED_FUNCTION_230(5.7779e-34);
          v115 = _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_106_2(v115);
          OUTLINED_FUNCTION_79_2(&dword_1CA256000, v116, v16, "WFRemoteAppIntentExecutionAction: Failed: %@");
          sub_1CA27080C(v114, &qword_1EC444AE0, &qword_1CA985B70);
          OUTLINED_FUNCTION_59_4();
          OUTLINED_FUNCTION_60();
        }

        OUTLINED_FUNCTION_95_2();
        v117 = OUTLINED_FUNCTION_65_3();
        v118(v117);
        v119 = sub_1CA948AC8();
        OUTLINED_FUNCTION_158_2(v119, sel_finishRunningWithError_);

        OUTLINED_FUNCTION_0_26();
        OUTLINED_FUNCTION_7_16();

        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_23_0();

        return v121(v120, v121, v122, v123, v124, v125, v126, v127, a9, a10, a11, a12);
      }

      else
      {
        OUTLINED_FUNCTION_8_11(v100, v101);
        sub_1CA9498B8();
        qword_1CA985B78 = v15;
        unk_1CA985B80 = &qword_1EC444D20;
        v146 = *MEMORY[0x1E698AE18];
        v147 = OUTLINED_FUNCTION_64_3();
        v148(v147);
        objc_opt_self();
        OUTLINED_FUNCTION_220();
        v149 = OUTLINED_FUNCTION_226([&qword_1CA985B78 defaultEnvironment], &qword_1EC444D28);
        OUTLINED_FUNCTION_124_2(v149, MEMORY[0x1E698AE78]);
        v150 = *MEMORY[0x1E698AE10];
        v151 = OUTLINED_FUNCTION_63_3();
        v152(v151);
        OUTLINED_FUNCTION_20_0();
        sub_1CA949898();
        v153 = *(MEMORY[0x1E698AE20] + 4);
        v154 = swift_task_alloc();
        v155 = OUTLINED_FUNCTION_160_1(v154);
        *v155 = v156;
        OUTLINED_FUNCTION_4_25(v155);
        OUTLINED_FUNCTION_23_0();

        return MEMORY[0x1EEDEBED0](v157, v158, v159, v160, v161, v162, v163, v164, a9, a10, a11, a12);
      }
    }

    else
    {
      OUTLINED_FUNCTION_21_10();
      OUTLINED_FUNCTION_101_2(v58);
      v59();
      v60 = sub_1CA94A1A8();
      OUTLINED_FUNCTION_195_1(v60);
      while (1)
      {
        if (v13 == v40)
        {

          goto LABEL_26;
        }

        if (v40 >= v17[2])
        {
          __break(1u);
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_15_7();
        v62 = OUTLINED_FUNCTION_131_2(v61);
        v63(v62);
        sub_1CA94B228();
        OUTLINED_FUNCTION_206_1();
        v65 = v65 && v64 == v24;
        if (v65)
        {
          break;
        }

        OUTLINED_FUNCTION_151_3();
        OUTLINED_FUNCTION_255();
        if (v19)
        {
          goto LABEL_25;
        }

        v66 = OUTLINED_FUNCTION_39_4();
        v67(v66);
        v40 = (v40 + 1);
      }

LABEL_25:

      v68 = OUTLINED_FUNCTION_25_7();
      v69(v68);
LABEL_26:
      OUTLINED_FUNCTION_130_1();
      v70 = *(v12 + 1088);
      OUTLINED_FUNCTION_119_1(v71, v72);
      v73 = OUTLINED_FUNCTION_22_9(v70);
      v74(v73);
      v75 = *(v70 + 88);
      v20 = (v70 + 88);
      v76 = OUTLINED_FUNCTION_20_0();
      if (v77(v76) != v19)
      {
        OUTLINED_FUNCTION_98_2();
        if (!v65)
        {
          v19 = *(v12 + 1008);

          v17 = type metadata accessor for WFRemoteAppIntentExecutionActionError(0);
          OUTLINED_FUNCTION_1_23();
          sub_1CA3D3590(&qword_1EC444C20, v89);
          OUTLINED_FUNCTION_52_4();
          OUTLINED_FUNCTION_167_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
          v90 = OUTLINED_FUNCTION_70_6();
          OUTLINED_FUNCTION_168_1(v90, 8, v91, v92);
          sub_1CA27080C(v19, &qword_1EC444D00, &qword_1CA988B80);
          v93 = *(v13 + 8);
          v13 += 8;
          v94 = OUTLINED_FUNCTION_3_3();
          v95(v94);
          continue;
        }

        v78 = OUTLINED_FUNCTION_54_2();
        v79(v78);
        v80 = OUTLINED_FUNCTION_103_1();
        v81(v80);
        if (!OUTLINED_FUNCTION_164_1([(uint8_t *)v20 variableSource]))
        {
          OUTLINED_FUNCTION_129_1();

          v17 = type metadata accessor for WFRemoteAppIntentExecutionActionError(0);
          OUTLINED_FUNCTION_1_23();
          sub_1CA3D3590(&qword_1EC444C20, v82);
          OUTLINED_FUNCTION_52_4();
          OUTLINED_FUNCTION_167_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
          v83 = OUTLINED_FUNCTION_70_6();
          OUTLINED_FUNCTION_168_1(v83, 5, v84, v85);
          v86 = *(v20 + 1);
          v20 += 8;
          v87 = OUTLINED_FUNCTION_107_0();
          v88(v87);
          sub_1CA27080C(v15, &qword_1EC444D00, &qword_1CA988B80);
          continue;
        }

        OUTLINED_FUNCTION_50_2();
        OUTLINED_FUNCTION_215(&qword_1EC444D00, &qword_1CA988B80, v138);
        v139 = qword_1EC442008;
        swift_unknownObjectRetain();
        if (v139 == -1)
        {
          goto LABEL_41;
        }

        goto LABEL_49;
      }

      v129 = OUTLINED_FUNCTION_11_13();
      v130(v129);
      v131 = *(v19 + 32);
      v132 = OUTLINED_FUNCTION_13_0();
      v133(v132);
      v134 = swift_task_alloc();
      v135 = OUTLINED_FUNCTION_161_0(v134);
      *v135 = v136;
      OUTLINED_FUNCTION_5_22(v135);
      OUTLINED_FUNCTION_23_0();

      return TypedValueTransformer.transform(input:with:)();
    }
  }
}

uint64_t sub_1CA3CBF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = v12[197];
  v14 = v12[196];
  v15 = v12[195];
  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_203_0();
  v16 = v12[168];
  v52 = v12[167];
  v53 = v17;
  OUTLINED_FUNCTION_93_2();
  v50 = v12[159];
  v18 = v12[153];
  v19 = v12[145];
  v20 = v12[134];
  v21 = v12[132];
  v22 = v12[131];

  v23 = *(v21 + 8);
  v24 = OUTLINED_FUNCTION_69_0();
  v25(v24);
  OUTLINED_FUNCTION_2_26();
  sub_1CA3D3628(v19, v26);
  v51(v50, v18);
  v27 = OUTLINED_FUNCTION_244();
  v28(v27);
  (*(v16 + 8))(v53, v52);
  v29 = v12[220];
  OUTLINED_FUNCTION_76_2();
  v30 = v29;
  sub_1CA949F68();
  sub_1CA94CC18();
  OUTLINED_FUNCTION_252();
  if (OUTLINED_FUNCTION_197_1())
  {
    OUTLINED_FUNCTION_150_0();
    v31 = OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_229(5.7779e-34);
    v32 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_106_2(v32);
    OUTLINED_FUNCTION_57_3(&dword_1CA256000, v33, v34, "WFRemoteAppIntentExecutionAction: Failed: %@");
    sub_1CA27080C(v31, &qword_1EC444AE0, &qword_1CA985B70);
    OUTLINED_FUNCTION_59_4();
    OUTLINED_FUNCTION_60();
  }

  v35 = v12[177];
  OUTLINED_FUNCTION_97_2();
  v36 = v14[1];
  v37 = OUTLINED_FUNCTION_69_0();
  v38(v37);
  v39 = sub_1CA948AC8();
  OUTLINED_FUNCTION_158_2(v39, sel_finishRunningWithError_);

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_12_11(v40);

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_1CA3CC34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = v12[219];
  v14 = v12[197];
  v15 = v12[196];
  v16 = v12[195];
  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_203_0();
  v17 = v12[168];
  v55 = v12[167];
  v56 = v18;
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_78_1();
  v52 = v19;
  v53 = v20;
  v21 = v12[145];
  v22 = v12[134];
  v23 = v12[132];
  v24 = v12[131];

  swift_unknownObjectRelease();

  v25 = *(v23 + 8);
  v26 = OUTLINED_FUNCTION_126();
  v27(v26);
  OUTLINED_FUNCTION_2_26();
  sub_1CA3D3628(v21, v28);
  v54(v53, v52);
  v29 = OUTLINED_FUNCTION_244();
  v30(v29);
  (*(v17 + 8))(v56, v55);
  v31 = v12[228];
  OUTLINED_FUNCTION_76_2();
  v32 = v31;
  sub_1CA949F68();
  sub_1CA94CC18();
  OUTLINED_FUNCTION_252();
  if (OUTLINED_FUNCTION_197_1())
  {
    OUTLINED_FUNCTION_150_0();
    v33 = OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_229(5.7779e-34);
    v34 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_106_2(v34);
    OUTLINED_FUNCTION_57_3(&dword_1CA256000, v35, v36, "WFRemoteAppIntentExecutionAction: Failed: %@");
    sub_1CA27080C(v33, &qword_1EC444AE0, &qword_1CA985B70);
    OUTLINED_FUNCTION_59_4();
    OUTLINED_FUNCTION_60();
  }

  v37 = v12[177];
  OUTLINED_FUNCTION_97_2();
  v38 = *(v24 + 8);
  v39 = OUTLINED_FUNCTION_69_0();
  v40(v39);
  v41 = sub_1CA948AC8();
  OUTLINED_FUNCTION_158_2(v41, sel_finishRunningWithError_);

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_12_11(v42);

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_0();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_1CA3CC768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = v12[250];
  v49 = v12[249];
  v62 = v12[237];
  v14 = v12[236];
  v15 = v12[235];
  v64 = v12[231];
  v16 = v12[219];
  v51 = v12[197];
  v17 = v12[196];
  v18 = v12[195];
  OUTLINED_FUNCTION_117_2();
  v59 = v12[188];
  v60 = v19;
  v58 = v12[187];
  OUTLINED_FUNCTION_92_1();
  v66 = v20;
  v21 = v12[169];
  v22 = v12[167];
  v65 = v12[166];
  v52 = v12[160];
  v53 = v12[163];
  OUTLINED_FUNCTION_78_1();
  v63 = v12[145];
  v61 = v12[134];
  v23 = v12[132];
  v24 = v12[131];
  v54 = v12[91];
  v55 = v12[133];
  v56 = v12[90];
  v57 = v12[94];

  swift_willThrow();

  swift_unknownObjectRelease();

  (v60)(v21, v22);
  v58(v53, v52);
  v25 = *(v23 + 8);
  v25(v55, v24);
  v64(v57, v56);
  v25(v61, v24);
  OUTLINED_FUNCTION_2_26();
  sub_1CA3D3628(v63, v26);
  v27 = OUTLINED_FUNCTION_244();
  v28(v27);
  v58(v65, v52);
  (v60)(v66, v22);

  v29 = v12[250];
  OUTLINED_FUNCTION_76_2();
  v30 = v29;
  sub_1CA949F68();
  sub_1CA94CC18();
  OUTLINED_FUNCTION_252();
  if (OUTLINED_FUNCTION_197_1())
  {
    OUTLINED_FUNCTION_150_0();
    v31 = OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_229(5.7779e-34);
    v32 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_106_2(v32);
    OUTLINED_FUNCTION_57_3(&dword_1CA256000, v33, v34, "WFRemoteAppIntentExecutionAction: Failed: %@");
    sub_1CA27080C(v31, &qword_1EC444AE0, &qword_1CA985B70);
    OUTLINED_FUNCTION_59_4();
    OUTLINED_FUNCTION_60();
  }

  v35 = v12[177];
  OUTLINED_FUNCTION_97_2();
  v36 = *(v60 + 8);
  v37 = OUTLINED_FUNCTION_69_0();
  v38(v37);
  v39 = sub_1CA948AC8();
  OUTLINED_FUNCTION_158_2(v39, sel_finishRunningWithError_);

  OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_19_7();
  v50 = v12[98];
  OUTLINED_FUNCTION_24_9();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_0();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_1CA3CCC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = v12[249];
  v65 = v12[237];
  v14 = v12[236];
  v15 = v12[235];
  v16 = v12[231];
  v17 = v12[219];
  v18 = v12[197];
  v58 = v12[196];
  v59 = v12[251];
  v19 = v12[195];
  OUTLINED_FUNCTION_86_0();
  v71 = v20;
  v62 = v12[188];
  v63 = v21;
  v61 = v12[187];
  OUTLINED_FUNCTION_92_1();
  v72 = v22;
  v23 = v12[169];
  v24 = v12[167];
  v69 = v25;
  v70 = v12[166];
  v53 = v12[160];
  v54 = v12[163];
  OUTLINED_FUNCTION_78_1();
  v67 = v26;
  v68 = v27;
  v66 = v12[145];
  v64 = v12[134];
  v28 = v12[132];
  v29 = v12[131];
  v60 = v12[94];
  v55 = v12[91];
  v56 = v12[133];
  v57 = v12[90];

  swift_unknownObjectRelease();

  v63(v23, v24);
  v61(v54, v53);
  v30 = *(v28 + 8);
  v30(v56, v29);
  v69(v60, v57);
  v30(v64, v29);
  OUTLINED_FUNCTION_2_26();
  sub_1CA3D3628(v66, v31);
  v71(v68, v67);
  v61(v70, v53);
  v63(v72, v24);
  v32 = v12[253];
  OUTLINED_FUNCTION_76_2();
  v33 = v32;
  sub_1CA949F68();
  sub_1CA94CC18();
  OUTLINED_FUNCTION_252();
  if (OUTLINED_FUNCTION_197_1())
  {
    OUTLINED_FUNCTION_150_0();
    v34 = OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_229(5.7779e-34);
    v35 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_106_2(v35);
    OUTLINED_FUNCTION_57_3(&dword_1CA256000, v36, v37, "WFRemoteAppIntentExecutionAction: Failed: %@");
    sub_1CA27080C(v34, &qword_1EC444AE0, &qword_1CA985B70);
    OUTLINED_FUNCTION_59_4();
    OUTLINED_FUNCTION_60();
  }

  v38 = v12[177];
  OUTLINED_FUNCTION_97_2();
  v39 = *(v62 + 8);
  v40 = OUTLINED_FUNCTION_69_0();
  v41(v40);
  v42 = sub_1CA948AC8();
  OUTLINED_FUNCTION_158_2(v42, sel_finishRunningWithError_);

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_12_11(v43);

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_0();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
}

id sub_1CA3CD15C()
{
  v1 = (v0 + OBJC_IVAR___WFToolInvocationOptions_locale);
  v2 = *(v0 + OBJC_IVAR___WFToolInvocationOptions_locale + 8);
  if (v2)
  {
    v3 = *v1;
    v4 = sub_1CA948E58();
    v26[3] = v26;
    v5 = *(v4 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x1EEE9AC00](v4);
    v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1CA94C218();
    v8 = sub_1CA948D38();
    v26[2] = v26;
    MEMORY[0x1EEE9AC00](v8);
    (*(v5 + 16))(v7, v7, v4);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D58, &unk_1CA985BF0);
    v26[1] = v26;
    v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v9 - 8);
    v12 = v26 - v11;
    v13 = sub_1CA948E28();
    v14 = *(v13 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x1EEE9AC00](v13);
    v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1CA948E48();
    sub_1CA948E18();
    (*(v14 + 8))(v17, v13);
    v18 = sub_1CA948D68();
    if (__swift_getEnumTagSinglePayload(v12, 1, v18) == 1)
    {
      sub_1CA27080C(v12, &qword_1EC444D58, &unk_1CA985BF0);
      v19 = 0;
      v20 = 0;
    }

    else
    {
      v19 = sub_1CA948D58();
      v20 = v21;
      (*(*(v18 - 8) + 8))(v12, v18);
    }

    v22 = objc_allocWithZone(MEMORY[0x1E696EA80]);
    v23 = sub_1CA3D31E8(v19, v20);
    v24 = *MEMORY[0x1E69E1068];
    objc_allocWithZone(MEMORY[0x1E69E0BE0]);
    v2 = sub_1CA3D324C(v7, v23, v24);
    (*(v5 + 8))(v7, v4);
  }

  return v2;
}

void *sub_1CA3CD4BC()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return type metadata accessor for WFRemoteAppEntityContentItem();
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return type metadata accessor for WFRemoteAppEntityContentItem();
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return type metadata accessor for WFRemoteAppEnumContentItem();
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v1 = [result memberValueType];
    v2 = sub_1CA3CD4BC();

    return v2;
  }

  return result;
}

uint64_t *sub_1CA3CD588(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1CA35FF80(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1CA35FF84(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CA3CD678()
{
  v2 = sub_1CA94AD08();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v60 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  v10 = sub_1CA94A288();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C90, &qword_1CA985B00);
  v20 = OUTLINED_FUNCTION_18_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_247();
  v23 = sub_1CA94A2F8();
  v24 = OUTLINED_FUNCTION_1_0(v23);
  v61 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6_0();
  v30 = v29 - v28;
  sub_1CA3C086C();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v23);
  (*(v61 + 32))(v30, v0, v23);
  v31 = sub_1CA94A2A8();
  MEMORY[0x1CCA9EFF0](v31);
  (*(v13 + 8))(v18, v10);
  sub_1CA94ACE8();
  (*(v60 + 8))(v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443AA0, &qword_1CA982780);
  v32 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_1_0(v32);
  v34 = v33;
  v36 = *(v35 + 72);
  v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1CA981310;
  v39 = sub_1CA94AD98();
  v40 = swift_allocBox();
  (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69DB048], v39);
  *(v38 + v37) = v40;
  (*(v34 + 104))(v38 + v37, *MEMORY[0x1E69DB0B0], v32);
  sub_1CA2E83F8();
  v42 = OUTLINED_FUNCTION_3_3();
  LOBYTE(v32) = sub_1CA6367D4(v42, v43);

  if (v32)
  {
    v44 = *(v61 + 8);
    v45 = OUTLINED_FUNCTION_104();
    v46(v45);
    return 0;
  }

  v47 = [v1 output];
  if (!v47)
  {
    v56 = *(v61 + 8);
    v57 = OUTLINED_FUNCTION_104();
    v58(v57);
    return 0;
  }

  v48 = objc_allocWithZone(WFActionOutputVariable);
  v49 = v1;
  swift_unknownObjectRetain();
  v50 = OUTLINED_FUNCTION_20_0();
  v52 = sub_1CA3D2B94(v50, v51, 0);
  v53 = *(v61 + 8);
  v54 = OUTLINED_FUNCTION_104();
  v55(v54);
  return v52;
}

uint64_t sub_1CA3CDB80()
{
  v1 = sub_1CA949F78();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  v10 = *MEMORY[0x1E69E1078];
  sub_1CA949C58();
  v11 = v0;
  v12 = sub_1CA949F68();
  v13 = sub_1CA94CC08();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_150_0();
    v15 = OUTLINED_FUNCTION_254();
    v22 = v15;
    *v14 = 136315138;
    v16 = [v11 identifier];
    v17 = sub_1CA94C3A8();
    v19 = v18;

    v20 = sub_1CA26B54C(v17, v19, &v22);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1CA256000, v12, v13, "WFRemoteAppIntentExecutionAction %s is not approved for public shortcuts drawer.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_59_4();
    OUTLINED_FUNCTION_60();
  }

  (*(v4 + 8))(v9, v1);
  return 0;
}

id sub_1CA3CDD2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1CA94C368();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v8 = sub_1CA94C1A8();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for WFRemoteAppIntentExecutionAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_1CA3CDEA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFRemoteAppIntentExecutionAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1CA3CDEFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFRemoteAppIntentExecutionAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA3CDF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC11WorkflowKit34WFRemoteAppIntentExecutionDelegate_toolInvocation;
  v8 = sub_1CA94A2F8();
  OUTLINED_FUNCTION_52(v8);
  (*(v9 + 32))(v3 + v7, a1);
  *(v3 + OBJC_IVAR____TtC11WorkflowKit34WFRemoteAppIntentExecutionDelegate_dialogTransformer) = a2;
  sub_1CA3D3680(a3, v3 + OBJC_IVAR____TtC11WorkflowKit34WFRemoteAppIntentExecutionDelegate_typedValueConversionContext);
  return v3;
}

uint64_t sub_1CA3CDFEC()
{
  OUTLINED_FUNCTION_0();
  v1[54] = v2;
  v1[55] = v0;
  v3 = sub_1CA94AC88();
  v1[56] = v3;
  OUTLINED_FUNCTION_12(v3);
  v1[57] = v4;
  v6 = *(v5 + 64);
  v1[58] = OUTLINED_FUNCTION_45();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C80, &qword_1CA983128);
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64);
  v1[59] = OUTLINED_FUNCTION_45();
  v10 = sub_1CA94AFA8();
  v1[60] = v10;
  OUTLINED_FUNCTION_12(v10);
  v1[61] = v11;
  v13 = *(v12 + 64) + 15;
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v14 = sub_1CA949F78();
  v1[64] = v14;
  OUTLINED_FUNCTION_12(v14);
  v1[65] = v15;
  v17 = *(v16 + 64);
  v1[66] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1CA3CE16C()
{
  v3 = *(v2 + 528);
  v4 = *MEMORY[0x1E69E10F8];
  sub_1CA949C58();
  v5 = sub_1CA949F68();
  sub_1CA94CC38();
  OUTLINED_FUNCTION_165_2();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_175_1(v7);
    _os_log_impl(&dword_1CA256000, v5, v0, "WFRemoteAppIntentExecutionAction: Action requested confirmation", v1, 2u);
    OUTLINED_FUNCTION_105_2();
  }

  v8 = *(v2 + 528);
  v9 = *(v2 + 520);
  v10 = *(v2 + 512);
  v12 = *(v2 + 472);
  v11 = *(v2 + 480);
  v13 = *(v2 + 432);
  v14 = *(v2 + 440);

  v15 = *(v9 + 8);
  v16 = OUTLINED_FUNCTION_69_0();
  v17(v16);
  v18 = sub_1CA94A2C8();
  MEMORY[0x1CCA9E540]();
  v19 = *(v2 + 176);
  __swift_project_boxed_opaque_existential_1((v2 + 144), *(v2 + 168));
  OUTLINED_FUNCTION_139();
  sub_1CA949A78();
  sub_1CA311928(v18, v12);

  OUTLINED_FUNCTION_49(v12, 1, v11);
  if (v20)
  {
    sub_1CA27080C(*(v2 + 472), &unk_1EC444C80, &qword_1CA983128);
    __swift_destroy_boxed_opaque_existential_0((v2 + 144));
    v21 = 0;
  }

  else
  {
    v24 = *(v2 + 496);
    v25 = *(v2 + 488);
    (*(v25 + 32))(*(v2 + 504), *(v2 + 472), *(v2 + 480));
    __swift_destroy_boxed_opaque_existential_0((v2 + 144));
    v26 = *(v25 + 16);
    v27 = OUTLINED_FUNCTION_13_0();
    v28(v27);
    v29 = *(v25 + 88);
    v30 = OUTLINED_FUNCTION_20_0();
    if (v31(v30) != *MEMORY[0x1E69DB120])
    {
      v49 = *(v2 + 504);
      v50 = *(*(v2 + 488) + 8);
      (v50)(*(v2 + 496), *(v2 + 480));
      OUTLINED_FUNCTION_73_3();
      OUTLINED_FUNCTION_1_23();
      sub_1CA3D3590(v51, v52);
      OUTLINED_FUNCTION_16_11();
      swift_allocError();
      OUTLINED_FUNCTION_1_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
      v53 = OUTLINED_FUNCTION_70_6();
      OUTLINED_FUNCTION_114_1(v53, 2, v54, v55);
      v56 = OUTLINED_FUNCTION_107_0();
      v50(v56);
      goto LABEL_22;
    }

    v33 = *(v2 + 456);
    v32 = *(v2 + 464);
    v34 = *(v2 + 448);
    v35 = *(v2 + 432);
    (*(*(v2 + 488) + 96))(*(v2 + 496), *(v2 + 480));
    v36 = *(v33 + 32);
    v37 = OUTLINED_FUNCTION_69_0();
    v39 = v38(v37);
    MEMORY[0x1CCA9E540](v39);
    v40 = *(v2 + 416);
    OUTLINED_FUNCTION_142_1((v2 + 384), *(v2 + 408));
    OUTLINED_FUNCTION_107_0();
    v91 = sub_1CA949A78();
    v42 = v41;
    v43 = sub_1CA94AC78();
    v44 = *(v2 + 480);
    v45 = *(v2 + 488);
    v92 = v44;
    v93 = *(v2 + 504);
    v46 = *(v2 + 456);
    v47 = *(v2 + 464);
    v48 = *(v2 + 448);
    v84 = v43;
    v85 = objc_allocWithZone(MEMORY[0x1E69E0C28]);
    v21 = sub_1CA3D2C40(v91, v42, v84);
    v86 = *(v46 + 8);
    v87 = OUTLINED_FUNCTION_125();
    v88(v87);
    (*(v45 + 8))(v93, v92);
    __swift_destroy_boxed_opaque_existential_0((v2 + 384));
    v89 = v21;
  }

  *(v2 + 536) = v21;
  v22 = *(v2 + 432);
  sub_1CA9496C8();
  sub_1CA2BDFE4(v2 + 184, v2 + 224, &qword_1EC444C40, &qword_1CA985AA8);
  if (*(v2 + 248))
  {
    sub_1CA27F268((v2 + 224), v2 + 304);
    sub_1CA25B3D0(0, &qword_1EC444C50, 0x1E69AD098);
    sub_1CA2C9578(v2 + 304, v2 + 344);
    v23 = sub_1CA3CEB84((v2 + 344));
    __swift_destroy_boxed_opaque_existential_0((v2 + 304));
    sub_1CA27080C(v2 + 184, &qword_1EC444C40, &qword_1CA985AA8);
  }

  else
  {
    sub_1CA27080C(v2 + 184, &qword_1EC444C40, &qword_1CA985AA8);
    v23 = 0;
  }

  *(v2 + 544) = v23;
  v57 = *(v2 + 432);
  sub_1CA9496D8();
  if (*(v2 + 288))
  {
    v58 = *(v2 + 296);
    OUTLINED_FUNCTION_142_1((v2 + 264), *(v2 + 288));
    OUTLINED_FUNCTION_70();
    sub_1CA949A98();
    __swift_destroy_boxed_opaque_existential_0((v2 + 264));
  }

  else
  {
    sub_1CA27080C(v2 + 264, &qword_1EC444C18, &qword_1CA985A80);
  }

  v59 = v23;
  v60 = sub_1CA3CEDF0();
  v61 = objc_allocWithZone(MEMORY[0x1E69E0BB0]);
  OUTLINED_FUNCTION_176_0();
  OUTLINED_FUNCTION_194_1();
  v68 = sub_1CA3D2CA4(v62, v63, v64, v65, v66, v67, 0, 0, 0, 0, v60, v21, 0, 0, 1);
  *(v2 + 552) = v68;
  if (v68)
  {
    v69 = v68;
    if (*(*(v2 + 440) + OBJC_IVAR____TtC11WorkflowKit34WFRemoteAppIntentExecutionDelegate_dialogTransformer))
    {
      *(v2 + 16) = v2;
      OUTLINED_FUNCTION_141_1(v2 + 424);
      *(v2 + 24) = sub_1CA3CE84C;
      OUTLINED_FUNCTION_213_0();
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C30, &unk_1CA985A90);
      OUTLINED_FUNCTION_1_15(v70);
      OUTLINED_FUNCTION_171_1(COERCE_DOUBLE(1107296256));
      OUTLINED_FUNCTION_10_11();
      OUTLINED_FUNCTION_225(v71, sel_handleDialogRequest_completionHandler_);

      return MEMORY[0x1EEE6DEC8](v2 + 16);
    }

    v77 = *(v2 + 544);
    v78 = *(v2 + 536);
    OUTLINED_FUNCTION_73_3();
    OUTLINED_FUNCTION_1_23();
    sub_1CA3D3590(v79, v80);
    OUTLINED_FUNCTION_16_11();
    swift_allocError();
    OUTLINED_FUNCTION_5_0();
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
    OUTLINED_FUNCTION_43_7(v81);
  }

  else
  {
    type metadata accessor for WFRemoteAppIntentExecutionActionError(0);
    OUTLINED_FUNCTION_1_23();
    sub_1CA3D3590(v72, v73);
    OUTLINED_FUNCTION_16_11();
    swift_allocError();
    OUTLINED_FUNCTION_1_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
    v74 = OUTLINED_FUNCTION_70_6();
    OUTLINED_FUNCTION_114_1(v74, 3, v75, v76);
  }

LABEL_22:
  OUTLINED_FUNCTION_223();

  v82 = OUTLINED_FUNCTION_44();

  return v83(v82);
}

uint64_t sub_1CA3CE84C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 560) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA3CE948()
{
  v1 = v0[53];
  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v0[69];
    v4 = v0[68];
    v5 = v0[67];
    v6 = v0[66];
    v8 = v0[62];
    v7 = v0[63];
    v9 = v0[59];
    v20 = v0[58];
    v10 = [v2 requestResponseCode];

    OUTLINED_FUNCTION_2_4();
    v12 = v10 == 1;
  }

  else
  {

    v13 = v0[69];
    v14 = v0[68];
    v15 = v0[67];
    OUTLINED_FUNCTION_73_3();
    OUTLINED_FUNCTION_1_23();
    sub_1CA3D3590(v16, v17);
    OUTLINED_FUNCTION_16_11();
    swift_allocError();
    OUTLINED_FUNCTION_5_0();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
    OUTLINED_FUNCTION_43_7(v18);

    OUTLINED_FUNCTION_223();

    v12 = OUTLINED_FUNCTION_44();
  }

  return v11(v12);
}

void sub_1CA3CEAE0()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  swift_willThrow();

  v5 = v0[70];
  OUTLINED_FUNCTION_223();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_9_2();

  __asm { BRAA            X2, X16 }
}

id sub_1CA3CEB84(uint64_t *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_1CA9498E8();
  v5 = v4;
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA949908();
  if (v5 >> 60 == 15)
  {
    if (v7)
    {
      v8 = sub_1CA94C368();
    }

    else
    {
      v8 = 0;
    }

    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1CA9498F8();
    if (v11)
    {
      v12 = sub_1CA94C368();
    }

    else
    {
      v12 = 0;
    }

    v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v17 = sub_1CA949928();
    v19 = v18;
    v20 = sub_1CA948BF8();
    sub_1CA266F2C(v17, v19);
    v21 = [v15 initWithContainerBundleIdentifier:v8 targetBundleIdentifier:v12 viewData:v20];
  }

  else
  {
    if (v7)
    {
      v9 = sub_1CA94C368();
    }

    else
    {
      v9 = 0;
    }

    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1CA9498F8();
    if (v14)
    {
      v8 = sub_1CA94C368();
    }

    else
    {
      v8 = 0;
    }

    v12 = sub_1CA948BF8();
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1CA949918();
    if (v23)
    {
      v20 = sub_1CA94C368();
    }

    else
    {
      v20 = 0;
    }

    v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContainerBundleIdentifier:v9 targetBundleIdentifier:v8 snippetModelData:v12 snippetModelBundleIdentifier:v20];
    sub_1CA39F318(v3, v5);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v21;
}

id sub_1CA3CEDF0()
{
  v0 = sub_1CA94A288();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  sub_1CA94A2A8();
  sub_1CA94A228();
  (*(v1 + 8))(v4, v0);
  v9 = sub_1CA94B1C8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1CA27080C(v8, &qword_1EC4445D0, &qword_1CA983080);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = sub_1CA94B138();
    v11 = v12;
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  v13 = objc_allocWithZone(MEMORY[0x1E69E0A98]);
  return sub_1CA3D30D8(v10, v11, 0);
}

uint64_t sub_1CA3CEFBC()
{
  OUTLINED_FUNCTION_0();
  v1[54] = v2;
  v1[55] = v0;
  v3 = sub_1CA949F78();
  v1[56] = v3;
  OUTLINED_FUNCTION_12(v3);
  v1[57] = v4;
  v6 = *(v5 + 64);
  v1[58] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA3CF064()
{
  v1 = *(v0 + 464);
  v2 = *MEMORY[0x1E69E10F8];
  sub_1CA949C58();
  v3 = sub_1CA949F68();
  sub_1CA94CC38();
  OUTLINED_FUNCTION_165_2();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_175_1(v5);
    OUTLINED_FUNCTION_118_1(&dword_1CA256000, v6, v7, "WFRemoteAppIntentExecutionAction: Action requested action confirmation");
    OUTLINED_FUNCTION_105_2();
  }

  v9 = *(v0 + 456);
  v8 = *(v0 + 464);
  v10 = *(v0 + 448);
  v11 = *(v0 + 432);

  v12 = *(v9 + 8);
  v13 = OUTLINED_FUNCTION_20_0();
  v14(v13);
  sub_1CA949738();
  sub_1CA2BDFE4(v0 + 144, v0 + 184, &qword_1EC444C40, &qword_1CA985AA8);
  if (*(v0 + 208))
  {
    sub_1CA27F268((v0 + 184), v0 + 344);
    sub_1CA25B3D0(0, &qword_1EC444C50, 0x1E69AD098);
    sub_1CA2C9578(v0 + 344, v0 + 384);
    v15 = sub_1CA3CEB84((v0 + 384));
    __swift_destroy_boxed_opaque_existential_0((v0 + 344));
    sub_1CA27080C(v0 + 144, &qword_1EC444C40, &qword_1CA985AA8);
  }

  else
  {
    sub_1CA27080C(v0 + 144, &qword_1EC444C40, &qword_1CA985AA8);
    v15 = 0;
  }

  *(v0 + 472) = v15;
  v16 = *(v0 + 432);
  sub_1CA949748();
  if (*(v0 + 248))
  {
    v17 = *(v0 + 256);
    OUTLINED_FUNCTION_142_1((v0 + 224), *(v0 + 248));
    OUTLINED_FUNCTION_69_0();
    sub_1CA949A98();
    __swift_destroy_boxed_opaque_existential_0((v0 + 224));
  }

  else
  {
    sub_1CA27080C(v0 + 224, &qword_1EC444C18, &qword_1CA985A80);
  }

  v18 = *(v0 + 432);
  sub_1CA949728();
  if (*(v0 + 288))
  {
    v19 = *(v0 + 296);
    OUTLINED_FUNCTION_142_1((v0 + 264), *(v0 + 288));
    OUTLINED_FUNCTION_126();
    v20 = sub_1CA949A58();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  }

  else
  {
    sub_1CA27080C(v0 + 264, &qword_1EC444C48, &qword_1CA985AB0);
    v20 = 0;
    v22 = 0;
  }

  v23 = *(v0 + 432);
  sub_1CA949728();
  if (*(v0 + 328))
  {
    v24 = *(v0 + 336);
    OUTLINED_FUNCTION_142_1((v0 + 304), *(v0 + 328));
    v25 = sub_1CA949A68();
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  }

  else
  {
    sub_1CA27080C(v0 + 304, &qword_1EC444C48, &qword_1CA985AB0);
    v25 = 0;
    v27 = 0;
  }

  v28 = *(v0 + 440) + OBJC_IVAR____TtC11WorkflowKit34WFRemoteAppIntentExecutionDelegate_toolInvocation;
  v29 = sub_1CA3CEDF0();
  objc_allocWithZone(MEMORY[0x1E69E0BB0]);
  v30 = v15;
  OUTLINED_FUNCTION_194_1();
  v37 = sub_1CA3D2CA4(v31, v32, v33, v34, v35, v36, v20, v22, v25, v27, v29, 0, 0, 0, 1);
  *(v0 + 480) = v37;
  if (!v37)
  {
    type metadata accessor for WFRemoteAppIntentExecutionActionError(0);
    OUTLINED_FUNCTION_1_23();
    sub_1CA3D3590(v43, v44);
    OUTLINED_FUNCTION_16_11();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
    v45 = OUTLINED_FUNCTION_121_1();
    __swift_storeEnumTagSinglePayload(v45, 3, 8, v46);
    swift_willThrow();
    goto LABEL_22;
  }

  v38 = v37;
  v39 = *(*(v0 + 440) + OBJC_IVAR____TtC11WorkflowKit34WFRemoteAppIntentExecutionDelegate_dialogTransformer);
  if (!v39)
  {
    v30 = *(v0 + 472);
    OUTLINED_FUNCTION_90_3();
    OUTLINED_FUNCTION_1_23();
    sub_1CA3D3590(v47, v48);
    OUTLINED_FUNCTION_23_10();
    swift_allocError();
    OUTLINED_FUNCTION_191();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
    v49 = OUTLINED_FUNCTION_70_6();
    OUTLINED_FUNCTION_159_2(v49, v50, v51, v52);
    swift_willThrow();

LABEL_22:
    v53 = *(v0 + 464);

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_53();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 16) = v0;
  OUTLINED_FUNCTION_141_1(v0 + 424);
  *(v0 + 24) = sub_1CA3CF534;
  swift_continuation_init();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C30, &unk_1CA985A90);
  OUTLINED_FUNCTION_18_14(v40);
  OUTLINED_FUNCTION_171_1(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_10_11();
  [v39 handleDialogRequest:v38 completionHandler:v0 + 80];
  OUTLINED_FUNCTION_53();

  return MEMORY[0x1EEE6DEC8](v41);
}

uint64_t sub_1CA3CF534()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 488) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1CA3CF630()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[53];
  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v4 = v0[59];
    v3 = v0[60];
    v5 = v0[58];
    [v2 requestResponseCode];

    OUTLINED_FUNCTION_2_4();
  }

  else
  {

    v6 = v0[59];
    v7 = v0[60];
    OUTLINED_FUNCTION_73_3();
    OUTLINED_FUNCTION_1_23();
    sub_1CA3D3590(v8, v9);
    OUTLINED_FUNCTION_16_11();
    swift_allocError();
    OUTLINED_FUNCTION_5_0();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
    OUTLINED_FUNCTION_43_7(v10);

    v11 = v0[58];

    OUTLINED_FUNCTION_44();
  }

  OUTLINED_FUNCTION_9_2();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1CA3CF750()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[59];
  swift_willThrow();

  v4 = v0[61];
  v5 = v0[58];

  v6 = OUTLINED_FUNCTION_44();

  return v7(v6);
}

uint64_t sub_1CA3CF7C8()
{
  OUTLINED_FUNCTION_0();
  v1[24] = v2;
  v1[25] = v0;
  v3 = sub_1CA949F78();
  v1[26] = v3;
  OUTLINED_FUNCTION_12(v3);
  v1[27] = v4;
  v6 = *(v5 + 64);
  v1[28] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA3CF870()
{
  v1 = v0[28];
  v2 = *MEMORY[0x1E69E10F8];
  sub_1CA949C58();
  v3 = sub_1CA949F68();
  sub_1CA94CC38();
  OUTLINED_FUNCTION_165_2();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_175_1(v5);
    OUTLINED_FUNCTION_118_1(&dword_1CA256000, v6, v7, "WFRemoteAppIntentExecutionAction: Action requested continue in app");
    OUTLINED_FUNCTION_105_2();
  }

  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[26];
  v11 = v0[24];

  v12 = *(v9 + 8);
  v13 = OUTLINED_FUNCTION_20_0();
  v14(v13);
  v15 = [objc_allocWithZone(MEMORY[0x1E69ACE18]) initWithType:0 destructive:0];
  v0[29] = v15;
  sub_1CA9496B8();
  if (v0[21])
  {
    v16 = v0[22];
    OUTLINED_FUNCTION_142_1(v0 + 18, v0[21]);
    OUTLINED_FUNCTION_20_0();
    sub_1CA949A98();
    OUTLINED_FUNCTION_191();
    __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  }

  else
  {
    sub_1CA27080C((v0 + 18), &qword_1EC444C18, &qword_1CA985A80);
  }

  v17 = [v15 acceptLabel];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 localizedStringForLocaleIdentifier_];

    v20 = sub_1CA94C3A8();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = [v15 denyLabel];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 localizedStringForLocaleIdentifier_];

    v26 = sub_1CA94C3A8();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = v0[25] + OBJC_IVAR____TtC11WorkflowKit34WFRemoteAppIntentExecutionDelegate_toolInvocation;
  v30 = sub_1CA3CEDF0();
  v31 = objc_allocWithZone(MEMORY[0x1E69E0BB0]);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_194_1();
  v38 = sub_1CA3D2CA4(v32, v33, v34, v35, v36, v37, v20, v22, v26, v28, v30, 0, 1, 0, 1);
  v0[30] = v38;
  if (v38 && (v39 = *(v0[25] + OBJC_IVAR____TtC11WorkflowKit34WFRemoteAppIntentExecutionDelegate_dialogTransformer)) != 0)
  {
    v0[2] = v0;
    OUTLINED_FUNCTION_141_1((v0 + 23));
    v0[3] = sub_1CA3CFC5C;
    v40 = swift_continuation_init();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C30, &unk_1CA985A90);
    OUTLINED_FUNCTION_18_14(v41);
    OUTLINED_FUNCTION_171_1(COERCE_DOUBLE(1107296256));
    v0[12] = sub_1CA3CD588;
    v0[13] = &block_descriptor_5;
    v0[14] = v40;
    [v39 handleDialogRequest:v38 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v42 = v0[29];
    OUTLINED_FUNCTION_90_3();
    OUTLINED_FUNCTION_1_23();
    sub_1CA3D3590(v43, v44);
    OUTLINED_FUNCTION_23_10();
    swift_allocError();
    OUTLINED_FUNCTION_191();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
    v45 = OUTLINED_FUNCTION_70_6();
    OUTLINED_FUNCTION_159_2(v45, v46, v47, v48);
    swift_willThrow();

    v49 = v0[28];

    v50 = OUTLINED_FUNCTION_44();

    return v51(v50);
  }
}

uint64_t sub_1CA3CFC5C()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 248) = v5;
  if (v5)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1CA3CFD64()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[30];
  v2 = v0[23];
  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v3 = swift_dynamicCastObjCClass();

  if (v3)
  {
    v5 = v0[29];
    v4 = v0[30];
    v6 = v0[28];
    [v3 requestResponseCode];

    OUTLINED_FUNCTION_2_4();
  }

  else
  {

    v7 = v0[29];
    v8 = v0[30];
    OUTLINED_FUNCTION_73_3();
    OUTLINED_FUNCTION_1_23();
    sub_1CA3D3590(v9, v10);
    OUTLINED_FUNCTION_16_11();
    swift_allocError();
    OUTLINED_FUNCTION_5_0();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
    OUTLINED_FUNCTION_43_7(v11);

    v12 = v0[28];

    OUTLINED_FUNCTION_44();
  }

  OUTLINED_FUNCTION_9_2();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1CA3CFE94()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  swift_willThrow();

  v4 = v0[31];
  v5 = v0[28];

  v6 = OUTLINED_FUNCTION_44();

  return v7(v6);
}

uint64_t sub_1CA3CFF0C()
{
  OUTLINED_FUNCTION_0();
  v1[60] = v2;
  v1[61] = v0;
  v3 = sub_1CA94AC88();
  v1[62] = v3;
  OUTLINED_FUNCTION_12(v3);
  v1[63] = v4;
  v6 = *(v5 + 64);
  v1[64] = OUTLINED_FUNCTION_45();
  v7 = sub_1CA94A288();
  v1[65] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[66] = v8;
  v10 = *(v9 + 64);
  v1[67] = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for LinkValueTransformContext(0);
  v1[68] = v11;
  OUTLINED_FUNCTION_18_0(v11);
  v13 = *(v12 + 64);
  v1[69] = OUTLINED_FUNCTION_45();
  v14 = sub_1CA949A48();
  v1[70] = v14;
  OUTLINED_FUNCTION_12(v14);
  v1[71] = v15;
  v17 = *(v16 + 64);
  v1[72] = OUTLINED_FUNCTION_45();
  v18 = sub_1CA949F78();
  v1[73] = v18;
  OUTLINED_FUNCTION_12(v18);
  v1[74] = v19;
  v21 = *(v20 + 64) + 15;
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1CA3D00DC()
{
  v1 = v0[77];
  v0[78] = *MEMORY[0x1E69E10F8];
  sub_1CA949C58();
  v2 = sub_1CA949F68();
  sub_1CA94CC38();
  OUTLINED_FUNCTION_165_2();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_175_1(v4);
    OUTLINED_FUNCTION_118_1(&dword_1CA256000, v5, v6, "WFRemoteAppIntentExecutionAction: Action requested disambiguation");
    OUTLINED_FUNCTION_105_2();
  }

  v7 = v0[77];
  v8 = v0[74];
  v9 = v0[73];
  v10 = v0[60];

  v0[79] = *(v8 + 8);
  v11 = OUTLINED_FUNCTION_20_0();
  v12(v11);
  v13 = MEMORY[0x1E69E7CC0];
  v0[58] = MEMORY[0x1E69E7CC0];
  v14 = sub_1CA9496F8();
  v0[80] = v14;
  v15 = *(v14 + 16);
  v0[81] = v15;
  if (v15)
  {
    v16 = 0;
    v0[82] = OBJC_IVAR____TtC11WorkflowKit34WFRemoteAppIntentExecutionDelegate_toolInvocation;
    while (1)
    {
      v0[86] = v13;
      v0[85] = v13;
      v0[84] = v13;
      v0[83] = v16;
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        return MEMORY[0x1EEE6DEC8](v14);
      }

      sub_1CA2C9578(v14 + 40 * v16 + 32, (v0 + 18));
      v17 = v0[22];
      OUTLINED_FUNCTION_142_1(v0 + 18, v0[21]);
      OUTLINED_FUNCTION_162();
      v18 = sub_1CA949A08();
      v0[87] = v18;
      if (v18)
      {
        break;
      }

      v19 = v0[78];
      v20 = v0[75];
      sub_1CA949C58();
      sub_1CA2C9578((v0 + 18), (v0 + 23));
      v21 = sub_1CA949F68();
      v22 = sub_1CA94CC18();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v0[79];
      v25 = v0[75];
      v26 = v0[74];
      v27 = v0[73];
      if (v23)
      {
        v28 = OUTLINED_FUNCTION_150_0();
        v89 = OUTLINED_FUNCTION_254();
        *v28 = 136315138;
        sub_1CA2C9578((v0 + 23), (v0 + 38));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C70, &qword_1CA985AE0);
        sub_1CA94C408();
        v88 = v24;
        v29 = v13;
        __swift_destroy_boxed_opaque_existential_0(v0 + 23);
        v30 = OUTLINED_FUNCTION_69_0();
        v33 = sub_1CA26B54C(v30, v31, v32);

        *(v28 + 4) = v33;
        v13 = v29;
        _os_log_impl(&dword_1CA256000, v21, v22, "Missing LNValue for: %s, skipping.", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v89);
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_26();

        v34 = OUTLINED_FUNCTION_162();
        v88(v34);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v0 + 23);
        v35 = OUTLINED_FUNCTION_162();
        v24(v35);
      }

      v36 = v0[81];
      v37 = v0[83] + 1;
      __swift_destroy_boxed_opaque_existential_0(v0 + 18);
      if (v37 == v36)
      {
        v44 = v0[80];
        goto LABEL_15;
      }

      v16 = v0[83] + 1;
      v14 = v0[80];
    }

    v38 = v18;
    v39 = v0[72];
    v40 = v0[22];
    __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
    OUTLINED_FUNCTION_69_0();
    sub_1CA9499F8();
    sub_1CA949A18();
    if (v0[46])
    {
      v41 = v0[47];
      OUTLINED_FUNCTION_142_1(v0 + 43, v0[46]);
      OUTLINED_FUNCTION_20_0();
      v42 = sub_1CA949A88();
      v43 = [v42 wf_image];

      __swift_destroy_boxed_opaque_existential_0(v0 + 43);
    }

    else
    {
      sub_1CA27080C((v0 + 43), &qword_1EC444C78, &qword_1CA985AE8);
      v43 = 0;
    }

    v0[88] = v43;
    v70 = v0[82];
    v71 = v0[69];
    v72 = v0[68];
    v73 = v0[67];
    v74 = v0[66];
    v75 = v0[65];
    v76 = v0[61];
    v77 = v38;
    sub_1CA94A2A8();
    v78 = v71 + v72[5];
    sub_1CA94A1E8();
    v79 = *(v74 + 8);
    v80 = OUTLINED_FUNCTION_69_0();
    v81(v80);
    v82 = v71 + v72[6];
    _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
    v83 = [objc_opt_self() defaultContext];
    *v71 = v77;
    *(v71 + v72[7]) = v83;
    *(v71 + v72[8]) = 0;
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    v0[89] = v84;
    *v84 = v85;
    OUTLINED_FUNCTION_91_2(v84);
    OUTLINED_FUNCTION_53();

    return TypedValueTransformer.transform(input:with:)();
  }

  else
  {
LABEL_15:

    v0[91] = v13;
    v45 = v0[60];
    v46 = v0[61] + OBJC_IVAR____TtC11WorkflowKit34WFRemoteAppIntentExecutionDelegate_toolInvocation;
    v47 = sub_1CA3CEDF0();
    sub_1CA949708();
    v48 = v0[31];
    if (v48)
    {
      v49 = v0[32];
      OUTLINED_FUNCTION_142_1(v0 + 28, v0[31]);
      OUTLINED_FUNCTION_69_0();
      v48 = sub_1CA949A98();
      v51 = v50;
      v52 = __swift_destroy_boxed_opaque_existential_0(v0 + 28);
    }

    else
    {
      v52 = sub_1CA27080C((v0 + 28), &qword_1EC444C18, &qword_1CA985A80);
      v51 = 0;
    }

    v53 = v0[60];
    v54 = v0[61];
    MEMORY[0x1CCA9E570](v52);
    v55 = v0[37];
    OUTLINED_FUNCTION_142_1(v0 + 33, v0[36]);
    OUTLINED_FUNCTION_126();
    v56 = sub_1CA949A78();
    v58 = v57;
    v59 = objc_allocWithZone(MEMORY[0x1E69E09C8]);
    v60 = sub_1CA3D2F84(MEMORY[0x1E69E7CC0], 0, 0, 0, v47, v48, v51, 0, v56, v58);
    v0[92] = v60;
    __swift_destroy_boxed_opaque_existential_0(v0 + 33);
    v61 = *(v54 + OBJC_IVAR____TtC11WorkflowKit34WFRemoteAppIntentExecutionDelegate_dialogTransformer);
    if (!v61)
    {

      v64 = v0[92];
      OUTLINED_FUNCTION_73_3();
      OUTLINED_FUNCTION_1_23();
      sub_1CA3D3590(v65, v66);
      OUTLINED_FUNCTION_16_11();
      swift_allocError();
      OUTLINED_FUNCTION_5_0();
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
      OUTLINED_FUNCTION_43_7(v67);

      OUTLINED_FUNCTION_33_8();

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_53();

      __asm { BRAA            X1, X16 }
    }

    v0[2] = v0;
    OUTLINED_FUNCTION_109_2((v0 + 59));
    swift_continuation_init();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C30, &unk_1CA985A90);
    OUTLINED_FUNCTION_18_14(v62);
    OUTLINED_FUNCTION_171_1(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_10_11();
    [v61 handleDialogRequest:v60 completionHandler:v0 + 10];
    OUTLINED_FUNCTION_53();

    return MEMORY[0x1EEE6DEC8](v14);
  }
}

uint64_t sub_1CA3D079C()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v5 = v2[89];
  *v4 = *v1;
  v3[90] = v0;

  v6 = v2[87];
  if (v0)
  {
    v7 = v3[86];
    v8 = v3[84];
    v9 = v3[80];
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA3D08E4()
{
  v151 = v0;
  v1 = v0[72];
  v2 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_45();
  sub_1CA948D18();
  v7 = sub_1CA948CC8();
  v9 = v8;
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_3_3();
  v12(v11);

  v13 = sub_1CA949A28();
  v15 = v14;
  v16 = sub_1CA949A38();
  v18 = v17;
  sub_1CA949A38();
  v20 = v19;
  if (v19)
  {
  }

  v21 = v0[90];
  v22 = v0[64];
  v23 = sub_1CA94AC78();
  if (v21)
  {
  }

  else
  {
    v49 = v23;
    v149 = v7;
    v50 = v0[88];
    objc_allocWithZone(MEMORY[0x1E69E0AA8]);
    v147 = v50;
    sub_1CA94C218();
    v51 = sub_1CA3D2E74(v13, v15, v16, v18, v7, v9, v50, 0, v20 == 0, v49, 0);
    if (v51)
    {
      v33 = v51;
      MEMORY[0x1CCAA1490]();
      v52 = *((v0[58] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v0[58] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v52 >> 1)
      {
LABEL_41:
        OUTLINED_FUNCTION_64(v52);
        sub_1CA94C698();
      }

      v53 = v0[84];
      OUTLINED_FUNCTION_20_0();
      sub_1CA94C6E8();
      v145 = v0[58];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v0[84];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v132 = *(v55 + 16);
        sub_1CA26DADC();
        v55 = v133;
      }

      v57 = *(v55 + 16);
      v56 = *(v55 + 24);
      v58 = v33;
      if (v57 >= v56 >> 1)
      {
        OUTLINED_FUNCTION_64(v56);
        sub_1CA26DADC();
        v142 = v134;
      }

      else
      {
        v142 = v55;
      }

      v139 = v0[72];
      v59 = v0[71];
      v60 = v0[70];
      v61 = v0[69];
      v63 = v0[63];
      v62 = v0[64];
      v64 = v0[62];

      (*(v63 + 8))(v62, v64);
      OUTLINED_FUNCTION_6_21();
      sub_1CA3D3628(v61, v65);
      v66 = *(v59 + 8);
      v33 = (v59 + 8);
      v66(v139, v60);
      v48 = v142;
      v47 = v145;
      *(v142 + 16) = v57 + 1;
      v67 = v142 + 16 * v57;
      *(v67 + 32) = v149;
      *(v67 + 40) = v9;
      v149 = v145;
      goto LABEL_16;
    }
  }

  v24 = v0[78];
  v25 = v0[76];

  sub_1CA949C58();
  sub_1CA2C9578((v0 + 18), (v0 + 48));
  v26 = sub_1CA949F68();
  v27 = sub_1CA94CC18();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[88];
  v148 = v0[79];
  v30 = v0[74];
  v141 = v0[73];
  v144 = v0[76];
  v31 = v0[72];
  v32 = v0[71];
  v33 = v0[70];
  v9 = v0[69];
  v34 = v0[63];
  v147 = v0[64];
  v140 = v0[62];
  if (v28)
  {
    v35 = OUTLINED_FUNCTION_150_0();
    v138 = v31;
    v36 = OUTLINED_FUNCTION_254();
    v150 = v36;
    *v35 = 136315138;
    sub_1CA2C9578((v0 + 48), (v0 + 53));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C70, &qword_1CA985AE0);
    sub_1CA94C408();
    v136 = v9;
    v137 = v33;
    v9 = v37;
    __swift_destroy_boxed_opaque_existential_0(v0 + 48);
    v38 = OUTLINED_FUNCTION_69_0();
    v33 = sub_1CA26B54C(v38, v39, v40);

    *(v35 + 4) = v33;
    _os_log_impl(&dword_1CA256000, v26, v27, "Failed to construct dialog item for: %s, skipping.", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_138();

    v148(v144, v141);
    (*(v34 + 8))(v147, v140);
    OUTLINED_FUNCTION_6_21();
    sub_1CA3D3628(v136, v41);
    (*(v32 + 8))(v138, v137);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 48);
    v148(v144, v141);
    (*(v34 + 8))(v147, v140);
    OUTLINED_FUNCTION_6_21();
    sub_1CA3D3628(v9, v42);
    v43 = *(v32 + 8);
    v44 = OUTLINED_FUNCTION_20_0();
    v46(v44, v45);
  }

  v149 = v0[86];
  v47 = v0[85];
  v48 = v0[84];
LABEL_16:
  v143 = v48;
  v146 = v47;
  while (1)
  {
    v68 = v0[81];
    v69 = v0[83] + 1;
    __swift_destroy_boxed_opaque_existential_0(v0 + 18);
    if (v69 == v68)
    {
      break;
    }

    v52 = v0[83] + 1;
    v0[86] = v149;
    v0[85] = v47;
    v0[84] = v48;
    v0[83] = v52;
    v70 = v0[80];
    if (v52 >= *(v70 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    sub_1CA2C9578(v70 + 40 * v52 + 32, (v0 + 18));
    v71 = v0[22];
    OUTLINED_FUNCTION_142_1(v0 + 18, v0[21]);
    OUTLINED_FUNCTION_70();
    v72 = sub_1CA949A08();
    v0[87] = v72;
    if (v72)
    {
      v94 = v72;
      v95 = v0[72];
      v96 = v0[22];
      __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
      OUTLINED_FUNCTION_69_0();
      sub_1CA9499F8();
      sub_1CA949A18();
      if (v0[46])
      {
        v97 = v0[47];
        OUTLINED_FUNCTION_142_1(v0 + 43, v0[46]);
        OUTLINED_FUNCTION_20_0();
        v98 = sub_1CA949A88();
        v99 = [v98 wf_image];

        __swift_destroy_boxed_opaque_existential_0(v0 + 43);
      }

      else
      {
        sub_1CA27080C((v0 + 43), &qword_1EC444C78, &qword_1CA985AE8);
        v99 = 0;
      }

      v0[88] = v99;
      v115 = v0[82];
      v116 = v0[69];
      v117 = v0[68];
      v118 = v0[67];
      v119 = v0[66];
      v120 = v0[65];
      v121 = v0[61];
      v122 = v94;
      sub_1CA94A2A8();
      v123 = v116 + v117[5];
      sub_1CA94A1E8();
      v124 = *(v119 + 8);
      v125 = OUTLINED_FUNCTION_69_0();
      v126(v125);
      v127 = v116 + v117[6];
      _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
      v128 = [objc_opt_self() defaultContext];
      *v116 = v122;
      *(v116 + v117[7]) = v128;
      *(v116 + v117[8]) = 0;
      swift_task_alloc();
      OUTLINED_FUNCTION_77();
      v0[89] = v129;
      *v129 = v130;
      OUTLINED_FUNCTION_91_2();
      OUTLINED_FUNCTION_251();

      return TypedValueTransformer.transform(input:with:)();
    }

    v73 = v0[78];
    v74 = v0[75];
    sub_1CA949C58();
    sub_1CA2C9578((v0 + 18), (v0 + 23));
    v75 = sub_1CA949F68();
    v9 = sub_1CA94CC18();
    v76 = os_log_type_enabled(v75, v9);
    v77 = v0[79];
    v78 = v0[75];
    v33 = v0[74];
    v79 = v0[73];
    if (v76)
    {
      v147 = v33 + 8;
      v80 = OUTLINED_FUNCTION_150_0();
      v81 = OUTLINED_FUNCTION_254();
      v150 = v81;
      *v80 = 136315138;
      sub_1CA2C9578((v0 + 23), (v0 + 38));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C70, &qword_1CA985AE0);
      v82 = sub_1CA94C408();
      v33 = v83;
      __swift_destroy_boxed_opaque_existential_0(v0 + 23);
      v84 = sub_1CA26B54C(v82, v33, &v150);

      *(v80 + 4) = v84;
      v48 = v143;
      _os_log_impl(&dword_1CA256000, v75, v9, "Missing LNValue for: %s, skipping.", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      v47 = v146;
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_59_4();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 23);
    }

    v77(v78, v79);
  }

  v85 = v0[80];

  v0[91] = v48;
  v86 = v0[60];
  v87 = v0[61] + OBJC_IVAR____TtC11WorkflowKit34WFRemoteAppIntentExecutionDelegate_toolInvocation;
  v88 = sub_1CA3CEDF0();
  sub_1CA949708();
  v89 = v0[31];
  if (v89)
  {
    v90 = v0[32];
    OUTLINED_FUNCTION_142_1(v0 + 28, v0[31]);
    OUTLINED_FUNCTION_68_3();
    v89 = sub_1CA949A98();
    v92 = v91;
    v93 = __swift_destroy_boxed_opaque_existential_0(v0 + 28);
  }

  else
  {
    v93 = sub_1CA27080C((v0 + 28), &qword_1EC444C18, &qword_1CA985A80);
    v92 = 0;
  }

  v101 = v0[60];
  v100 = v0[61];
  MEMORY[0x1CCA9E570](v93);
  v102 = v0[36];
  OUTLINED_FUNCTION_142_1(v0 + 33, v102);
  sub_1CA949A78();
  OUTLINED_FUNCTION_1_2();
  v103 = objc_allocWithZone(MEMORY[0x1E69E09C8]);
  v104 = sub_1CA3D2F84(v146, 0, 0, 0, v88, v89, v92, 0, v101, v102);
  v0[92] = v104;
  __swift_destroy_boxed_opaque_existential_0(v0 + 33);
  v105 = *(v100 + OBJC_IVAR____TtC11WorkflowKit34WFRemoteAppIntentExecutionDelegate_dialogTransformer);
  if (!v105)
  {

    v109 = v0[92];
    OUTLINED_FUNCTION_73_3();
    OUTLINED_FUNCTION_1_23();
    sub_1CA3D3590(v110, v111);
    OUTLINED_FUNCTION_16_11();
    swift_allocError();
    OUTLINED_FUNCTION_5_0();
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
    OUTLINED_FUNCTION_43_7(v112);

    OUTLINED_FUNCTION_33_8();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_251();

    __asm { BRAA            X1, X16 }
  }

  v0[2] = v0;
  OUTLINED_FUNCTION_109_2((v0 + 59));
  OUTLINED_FUNCTION_213_0();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C30, &unk_1CA985A90);
  OUTLINED_FUNCTION_18_14(v106);
  OUTLINED_FUNCTION_171_1(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_10_11();
  [v105 handleDialogRequest:v104 completionHandler:v0 + 10];
  OUTLINED_FUNCTION_251();

  return MEMORY[0x1EEE6DEC8](v107);
}

uint64_t sub_1CA3D1374()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);

  OUTLINED_FUNCTION_6_21();
  sub_1CA3D3628(v4, v5);
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_3_3();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  v9 = *(v0 + 720);
  OUTLINED_FUNCTION_33_8();

  OUTLINED_FUNCTION_5();

  return v10();
}

uint64_t sub_1CA3D1458()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 744) = v5;
  if (v5)
  {
    v6 = *(v2 + 728);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA3D1560()
{
  OUTLINED_FUNCTION_39_1();
  v1 = *(v0 + 472);
  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v28 = *(v0 + 728);

LABEL_13:

    goto LABEL_14;
  }

  v3 = v2;
  if (([v2 isCancelled] & 1) != 0 || (v4 = objc_msgSend(v3, sel_selectedItems), sub_1CA25B3D0(0, &qword_1EC444C68, 0x1E69E0AA8), OUTLINED_FUNCTION_188(), v5 = sub_1CA94C658(), v4, v6 = sub_1CA25B410(v5), , v6 != 1))
  {
    v27 = *(v0 + 728);

    goto LABEL_14;
  }

  v7 = [v3 selectedItems];
  v8 = sub_1CA94C658();

  if (!sub_1CA25B410(v8))
  {
    v34 = *(v0 + 728);

    goto LABEL_13;
  }

  sub_1CA275D70(0, (v8 & 0xC000000000000001) == 0, v8);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1CCAA22D0](0, v8);
  }

  else
  {
    v9 = *(v8 + 32);
  }

  v10 = v9;
  v11 = *(v0 + 728);

  v12 = [v10 identifier];
  sub_1CA94C3A8();

  v13 = OUTLINED_FUNCTION_126();
  v15 = sub_1CA58A568(v13, v14, v11);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    v18 = *(v0 + 616);
    v19 = *(v0 + 608);
    v20 = *(v0 + 600);
    v21 = *(v0 + 576);
    v22 = *(v0 + 552);
    v23 = *(v0 + 536);
    v24 = *(v0 + 512);

    OUTLINED_FUNCTION_2_4();

    return v25(v15);
  }

LABEL_14:
  v29 = *(v0 + 736);
  OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_1_23();
  sub_1CA3D3590(v30, v31);
  OUTLINED_FUNCTION_16_11();
  swift_allocError();
  OUTLINED_FUNCTION_5_0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
  OUTLINED_FUNCTION_43_7(v32);

  OUTLINED_FUNCTION_33_8();

  OUTLINED_FUNCTION_5();

  return v33();
}

uint64_t sub_1CA3D1894()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  swift_willThrow();

  v3 = *(v0 + 744);
  OUTLINED_FUNCTION_33_8();

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA3D1948(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1CA949F78();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v12 = *MEMORY[0x1E69E10F8];
  sub_1CA949C58();
  v13 = sub_1CA949F68();
  v14 = sub_1CA94CC38();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_124();
    *v15 = 0;
    _os_log_impl(&dword_1CA256000, v13, v14, "WFRemoteAppIntentExecutionAction: Action requested value", v15, 2u);
    OUTLINED_FUNCTION_26();
  }

  v16 = *(v9 + 8);
  v17 = OUTLINED_FUNCTION_61();
  v18(v17);
  v19 = a2[4];
  OUTLINED_FUNCTION_142_1(a2, a2[3]);
  OUTLINED_FUNCTION_70();
  v20 = sub_1CA949A78();
  v22 = v21;
  v23 = objc_allocWithZone(MEMORY[0x1E69E0A98]);
  OUTLINED_FUNCTION_90();
  v27 = sub_1CA3D30D8(v24, v25, v26);
  sub_1CA2BDFE4(a1, v40, &qword_1EC444C18, &qword_1CA985A80);
  v28 = v41;
  if (v41)
  {
    OUTLINED_FUNCTION_142_1(v40, v41);
    sub_1CA949A98();
    OUTLINED_FUNCTION_1_2();
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    sub_1CA27080C(v40, &qword_1EC444C18, &qword_1CA985A80);
    v23 = 0;
  }

  v29 = objc_allocWithZone(MEMORY[0x1E69E0DA8]);
  v30 = sub_1CA3D3148(v20, v22, v27, v23, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C58, &qword_1CA985AB8);
  v31 = sub_1CA9499B8();
  OUTLINED_FUNCTION_12(v31);
  v33 = *(v32 + 72);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1CA981310;
  OUTLINED_FUNCTION_11_1();
  v37 = swift_allocObject();
  *(v37 + 16) = v3;
  *(v37 + 24) = v30;

  v38 = v30;
  sub_1CA9499A8();

  return v36;
}

uint64_t sub_1CA3D1C30(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v4 = sub_1CA94AC88();
  v2[22] = v4;
  v5 = *(v4 - 8);
  v2[23] = v5;
  v6 = *(v5 + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA3D1D28, 0, 0);
}

uint64_t sub_1CA3D1D28()
{
  OUTLINED_FUNCTION_6();
  if (!*(v1[19] + OBJC_IVAR____TtC11WorkflowKit34WFRemoteAppIntentExecutionDelegate_dialogTransformer))
  {
    OUTLINED_FUNCTION_73_3();
    OUTLINED_FUNCTION_1_23();
    sub_1CA3D3590(v7, v8);
    OUTLINED_FUNCTION_16_11();
    swift_allocError();
    OUTLINED_FUNCTION_5_0();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
    OUTLINED_FUNCTION_114_1(v0, 3, v10, v9);
    OUTLINED_FUNCTION_224();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_9_2();

    __asm { BRAA            X1, X16 }
  }

  v2 = v1[20];
  v1[2] = v1;
  OUTLINED_FUNCTION_141_1((v1 + 18));
  v1[3] = sub_1CA3D1EB0;
  OUTLINED_FUNCTION_213_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C30, &unk_1CA985A90);
  OUTLINED_FUNCTION_1_15(v3);
  OUTLINED_FUNCTION_171_1(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_225(v4, sel_handleDialogRequest_completionHandler_);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v5);
}

uint64_t sub_1CA3D1EB0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA3D1FAC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[18];
  v0[26] = v1;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {

    goto LABEL_6;
  }

  v3 = [v2 encodedTypedValue];
  if (!v3)
  {
    v7 = v0[21];
    v6 = v0[22];

    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
    sub_1CA27080C(v7, &qword_1EC444C60, &qword_1CA9827D0);
LABEL_6:
    OUTLINED_FUNCTION_73_3();
    OUTLINED_FUNCTION_1_23();
    sub_1CA3D3590(v11, v12);
    OUTLINED_FUNCTION_16_11();
    swift_allocError();
    OUTLINED_FUNCTION_5_0();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
    OUTLINED_FUNCTION_114_1(v1, 3, v14, v13);
    OUTLINED_FUNCTION_224();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_9_2();

    __asm { BRAA            X1, X16 }
  }

  v4 = v3;
  v5 = v0[21];
  sub_1CA94CE48();

  v18 = v0[23];
  v17 = v0[24];
  v19 = v0[19];
  __swift_storeEnumTagSinglePayload(v0[21], 0, 1, v0[22]);
  v20 = *(v18 + 32);
  v21 = OUTLINED_FUNCTION_52_0();
  v22(v21);
  v23 = swift_task_alloc();
  v0[27] = v23;
  *v23 = v0;
  v23[1] = sub_1CA3D21C8;
  v24 = v0[24];
  OUTLINED_FUNCTION_9_2();

  return TypedValueTransformer.transform(input:with:)();
}

uint64_t sub_1CA3D21C8()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_2_2();
  *v6 = v5;
  v8 = *(v7 + 216);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  *(v5 + 224) = v0;

  if (!v0)
  {
    *(v5 + 232) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA3D22D4()
{
  OUTLINED_FUNCTION_14();
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);

  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  OUTLINED_FUNCTION_2_4();
  v9 = *(v0 + 232);

  return v8(v9);
}

uint64_t sub_1CA3D2368()
{
  OUTLINED_FUNCTION_6();
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_3_3();
  v6(v5);
  v7 = *(v0 + 224);
  OUTLINED_FUNCTION_224();

  OUTLINED_FUNCTION_5();

  return v8();
}

uint64_t sub_1CA3D2404()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[25];
  swift_willThrow();
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[21];
  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v5();
}

uint64_t sub_1CA3D248C()
{
  v1 = OBJC_IVAR____TtC11WorkflowKit34WFRemoteAppIntentExecutionDelegate_toolInvocation;
  v2 = sub_1CA94A2F8();
  OUTLINED_FUNCTION_52(v2);
  (*(v3 + 8))(v0 + v1);

  OUTLINED_FUNCTION_2_26();
  sub_1CA3D3628(v0 + v4, v5);
  return v0;
}

uint64_t sub_1CA3D2508()
{
  sub_1CA3D248C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1CA3D2588()
{
  result = sub_1CA94A2F8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for TypedValueConversionContext(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1CA3D265C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D3884;

  return sub_1CA3CDFEC();
}

uint64_t sub_1CA3D26F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D3888;

  return sub_1CA3CFF0C();
}

uint64_t sub_1CA3D2788()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D3884;

  return sub_1CA3CEFBC();
}

uint64_t sub_1CA3D281C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(MEMORY[0x1E698ADD8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA31555C;

  return MEMORY[0x1EEDEBD18](a1, v7, a3);
}

uint64_t sub_1CA3D28F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D2984;

  return sub_1CA3CF7C8();
}

uint64_t sub_1CA3D2984()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  OUTLINED_FUNCTION_2_4();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

id sub_1CA3D2A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = v8;
  v13 = sub_1CA94C368();

  v14 = sub_1CA94C368();

  sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
  v15 = sub_1CA94C1A8();

  v16 = sub_1CA948BF8();
  v17 = [v9 initWithBundleIdentifier:v13 actionIdentifier:v14 parameterValues:v15 showOutputActionOptions:a6 encodedToolInvocation:v16];

  sub_1CA266F2C(a7, a8);
  return v17;
}

id sub_1CA3D2B94(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    sub_1CA25B3D0(0, &unk_1EC444CA0, off_1E836F4B8);
    v7 = sub_1CA94C648();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithAction:a1 variableProvider:a2 aggrandizements:v7];

  swift_unknownObjectRelease();
  return v8;
}

id sub_1CA3D2C40(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CA94C368();

  v6 = [v3 initWithParameterKey:v5 parameterValue:a3];

  return v6;
}

id sub_1CA3D2CA4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, char a13, void *a14, __int16 a15)
{
  if (a2)
  {
    v25 = sub_1CA94C368();
  }

  else
  {
    v25 = 0;
  }

  if (a6 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_1CA948BF8();
    sub_1CA39F318(a5, a6);
  }

  if (a8)
  {
    v19 = sub_1CA94C368();
  }

  else
  {
    v19 = 0;
  }

  if (a10)
  {
    v20 = sub_1CA94C368();
  }

  else
  {
    v20 = 0;
  }

  LOWORD(v24) = a15 & 0x101;
  LOBYTE(v23) = a13 & 1;
  v21 = [v26 initWithTitle:v25 viewSnippet:a3 snippetAction:a4 encodedSnippetActionToolInvocation:v18 yesText:v19 noText:v20 attribution:a11 parameterInfo:a12 isContinueInAppRequest:v23 systemStyle:a14 showPrompt:v24 destructive:?];

  return v21;
}

id sub_1CA3D2E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, char a9, void *a10, uint64_t a11)
{
  v16 = sub_1CA94C368();

  if (a4)
  {
    v17 = sub_1CA94C368();
  }

  else
  {
    v17 = 0;
  }

  if (a6)
  {
    v18 = sub_1CA94C368();
  }

  else
  {
    v18 = 0;
  }

  v19 = [v11 initWithTitle:v16 subtitle:v17 identifier:v18 image:a7 selected:a8 & 1 hideSubtitle:a9 & 1 encodedTypedValue:a10 serializedPossibleState:a11];

  swift_unknownObjectRelease();
  return v19;
}

id sub_1CA3D2F84(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  sub_1CA25B3D0(0, &qword_1EC444C68, 0x1E69E0AA8);
  v17 = sub_1CA94C648();

  if (a4)
  {
    v18 = sub_1CA94C368();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a10)
    {
      goto LABEL_6;
    }

LABEL_8:
    v20 = 0;
    goto LABEL_9;
  }

  v19 = sub_1CA94C368();

  if (!a10)
  {
    goto LABEL_8;
  }

LABEL_6:
  v20 = sub_1CA94C368();

LABEL_9:
  v21 = [v11 initWithItems:v17 allowsMultipleSelection:a2 & 1 message:v18 attribution:a5 prompt:v19 done:a8 parameterKey:v20];

  return v21;
}

id sub_1CA3D30D8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1CA94C368();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithTitle:v5 icon:a3];

  return v6;
}

id sub_1CA3D3148(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1CA94C368();

  if (a5)
  {
    v9 = sub_1CA94C368();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithParameterKey:v8 attribution:a3 prompt:v9];

  return v10;
}

id sub_1CA3D31E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithLanguageCode_];

  return v4;
}

id sub_1CA3D324C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1CA948D88();
  v9 = [v4 initWithLocale:v8 stringLocalizer:a2 localizationUsage:a3];

  v10 = sub_1CA948E58();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

uint64_t sub_1CA3D32F8()
{
  OUTLINED_FUNCTION_0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1CA3D338C;

  return sub_1CA3D1C30(v2, v3);
}

uint64_t sub_1CA3D338C()
{
  OUTLINED_FUNCTION_0();
  v2 = v1;
  OUTLINED_FUNCTION_3();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_13();
  *v6 = v5;

  OUTLINED_FUNCTION_2_4();

  return v7(v2);
}

uint64_t sub_1CA3D3474()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1CA2DF78C;

  return sub_1CA3C0E54(v3, v4, v5, v6);
}

uint64_t sub_1CA3D3520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444D10, &qword_1CA985B68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA3D3590(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA3D35D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1CA3D3628(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1CA3D3680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypedValueConversionContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA3D370C()
{
  sub_1CA3D3764();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1CA3D3764()
{
  if (!qword_1EC444D70)
  {
    v0 = sub_1CA94A2F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC444D70);
    }
  }
}

uint64_t sub_1CA3D37F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_52(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_76_2()
{
  v2 = *(v0 + 1488);
  v3 = *(v0 + 1416);

  return sub_1CA949C58();
}

void OUTLINED_FUNCTION_79_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_85_2@<X0>(uint64_t a1@<X8>)
{
  v1[202] = v2;
  v1[201] = a1;
  v4 = v1[141];
  v5 = v1[142];

  return sub_1CA3D3520(v4, v5);
}

uint64_t OUTLINED_FUNCTION_106_2(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_111_2()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_114_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 8, a4);

  return swift_willThrow();
}

void OUTLINED_FUNCTION_118_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_119_1(uint64_t a1, uint64_t a2)
{
  v4 = v2[135];
  v5 = v2[126];
  v6 = v2[123];

  return __swift_storeEnumTagSinglePayload(v5, a2, 1, v6);
}

uint64_t OUTLINED_FUNCTION_123_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LOWORD(a11) = 0;

  return MEMORY[0x1EEDEBE40](0, 0, 0, 1, 2, v11, 0, 0, 0, 0, a11, v12);
}

void OUTLINED_FUNCTION_127_1()
{
  v1 = v0[202];
  v2 = v0[201];
  v0[200] = 0;
}

void OUTLINED_FUNCTION_129_1()
{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[120];
}

unint64_t OUTLINED_FUNCTION_137_2()
{
  *(v0 + 432) = v1;

  return sub_1CA271BF8();
}

uint64_t OUTLINED_FUNCTION_157_2()
{

  return sub_1CA94D588();
}

id OUTLINED_FUNCTION_158_2(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_159_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 7, 8, a4);
}

uint64_t OUTLINED_FUNCTION_163_1()
{
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);

  return sub_1CA949C58();
}

uint64_t OUTLINED_FUNCTION_164_1(uint64_t result)
{
  *(v1 + 1656) = result;
  v2 = *(v1 + 1008);
  return result;
}

uint64_t OUTLINED_FUNCTION_177_0()
{

  return sub_1CA949778();
}

void OUTLINED_FUNCTION_180_1()
{
  v1 = v0[169];
  v2 = v0[167];
  v3 = v0[166];
}

uint64_t OUTLINED_FUNCTION_181_1()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 104);
  return result;
}

void OUTLINED_FUNCTION_184_0()
{
  v1 = *(v0 + 2036);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1088);
}

void OUTLINED_FUNCTION_187_1()
{
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[94];
}

void OUTLINED_FUNCTION_190_1()
{
  v1 = v0[219];
  v2 = v0[197];
  v3 = v0[196];
}

void OUTLINED_FUNCTION_191_1()
{
  *(v1 + 14) = v0;
  v3 = *(v2 - 144);
  v4 = *(v2 - 144);
}

void OUTLINED_FUNCTION_192_1()
{
  v1 = v0[134];
  v2 = v0[132];
  v3 = v0[131];
}

void OUTLINED_FUNCTION_193_0()
{
  v1 = v0[173];
  v2 = v0[168];
  v3 = v0[167];
}

BOOL OUTLINED_FUNCTION_197_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_199_1()
{
  v2 = *(v0 - 184);
  result = *(v0 - 176);
  v4 = *(v0 - 136);
  v3 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_200_1()
{
  v2 = *(v0 - 200);
  result = *(v0 - 192);
  v4 = *(v0 - 152);
  v3 = *(v0 - 144);
  return result;
}

void OUTLINED_FUNCTION_202_1()
{
  *(v2 - 96) = v1[173];
  *(v2 - 256) = v1[169];
  *(v2 - 248) = v0;
  v3 = v1[167];
}

uint64_t OUTLINED_FUNCTION_203_0()
{
  result = *(v0 + 1464);
  v2 = *(v0 + 1384);
  return result;
}

uint64_t OUTLINED_FUNCTION_205_1()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 120);
  return *(v1 - 112);
}

uint64_t OUTLINED_FUNCTION_212_0(uint64_t a1, unint64_t a2)
{

  return sub_1CA26B54C(a1, a2, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_213_0()
{

  return swift_continuation_init();
}

id OUTLINED_FUNCTION_214_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1CA3D2A78(a1, a2, a3, a4, a5, v7, v5, v6);
}

uint64_t OUTLINED_FUNCTION_215@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1CA2BDFE4(v4, a3 + v3, a1, a2);
}

BOOL OUTLINED_FUNCTION_216_0()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_217_0()
{
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[49];

  return sub_1CA94D8B8();
}

id OUTLINED_FUNCTION_218()
{
  v3 = v1[166];
  v4 = v1[63];
  v5 = *(v1[62] + 20);

  return v0;
}

uint64_t OUTLINED_FUNCTION_219()
{

  return sub_1CA26B54C(v1, v0, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_220()
{

  return sub_1CA94C218();
}

uint64_t OUTLINED_FUNCTION_221()
{

  return sub_1CA9497E8();
}

void OUTLINED_FUNCTION_222()
{
}

uint64_t OUTLINED_FUNCTION_223()
{
  v2 = v0[66];
  v4 = v0[62];
  v3 = v0[63];
  v6 = v0[58];
  v5 = v0[59];
}

uint64_t OUTLINED_FUNCTION_224()
{
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);

  return swift_willThrow();
}

id OUTLINED_FUNCTION_225(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_226(uint64_t a1, unint64_t *a2)
{

  return sub_1CA25B3D0(0, a2, v2);
}

void OUTLINED_FUNCTION_227(uint64_t a1@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *(v4 + 8 * v2);
  *(v4 + 8 * v2) = v1;
}

void OUTLINED_FUNCTION_228()
{
}

id OUTLINED_FUNCTION_229(float a1)
{
  *v2 = a1;

  return v1;
}

id OUTLINED_FUNCTION_230(float a1)
{
  *v2 = a1;

  return v1;
}

void OUTLINED_FUNCTION_231()
{
  v1 = v0[133];
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[94];
}

uint64_t OUTLINED_FUNCTION_232()
{
  result = v0[89];
  v2 = v0[86];
  v3 = *(v0[87] + 8);
  return result;
}

void OUTLINED_FUNCTION_233()
{
  v1 = v0[166];
  v2 = v0[163];
  v3 = v0[160];
  v4 = v0[159];
}

void OUTLINED_FUNCTION_234()
{
  v1 = v0[166];
  v2 = v0[163];
  v3 = v0[160];
  v4 = v0[159];
}

uint64_t OUTLINED_FUNCTION_237()
{
  result = v0[117];
  v2 = v0[113];
  v3 = *(v0[114] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_244()
{
  v2 = *(v0 - 144);
  result = *(v0 - 136);
  v4 = *(v0 - 112);
  v3 = *(v0 - 104);
  return result;
}

void OUTLINED_FUNCTION_246()
{
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[94];
  v4 = v0[91];
}

void OUTLINED_FUNCTION_252()
{
}

void OUTLINED_FUNCTION_253()
{
}

uint64_t OUTLINED_FUNCTION_256()
{

  return sub_1CA3C09E4();
}

uint64_t OUTLINED_FUNCTION_257(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t WFParameterState.swiftParameterState<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for _SwiftParameterState();
  if (swift_dynamicCastClass())
  {
    sub_1CA3D5A28(a1);
  }

  OUTLINED_FUNCTION_11_14();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1CA3D4138@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v28 = a4;
  v29 = a1;
  v30 = a3;
  v26 = *(a2 - 8);
  v27 = a2;
  v7 = *(v26 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23);
  v24 = 1;
  if (__swift_getEnumTagSinglePayload(v21, 1, v12) != 1)
  {
    (*(v13 + 32))(v17, v21, v12);
    v29(v17, v10);
    (*(v13 + 8))(v17, v12);
    if (v5)
    {
      return (*(v26 + 32))(v28, v10, v27);
    }

    v24 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a5, v24, 1, v30);
}

uint64_t WFParameterState.process(context:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CA3D43D0, 0, 0);
}

uint64_t sub_1CA3D43D0()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  *v4 = v0;
  v4[1] = sub_1CA3D44DC;

  return MEMORY[0x1EEE6DE38](v0 + 16);
}

uint64_t sub_1CA3D44DC()
{
  OUTLINED_FUNCTION_0();
  v3 = *(*v1 + 56);
  v2 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v2;
  *(v2 + 64) = v0;

  if (v0)
  {
    v5 = sub_1CA3D45EC;
  }

  else
  {
    v6 = *(v2 + 48);

    v5 = sub_1CA32B76C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA3D45EC()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_5();
  v3 = *(v0 + 64);

  return v2();
}

id sub_1CA3D464C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_1CA2DB364();
}

uint64_t ProcessingUserInputRequiredError.prompt.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1CA94C218();
  return v1;
}

uint64_t ProcessingUserInputRequiredError.init(prompt:defaultState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_1CA3D46CC(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *(v5 + 16);
  v9(&v16 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = *(v5 + 32);
  v12(v11 + v10, v8, v4);
  v24 = sub_1CA32F628;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E060;
  v23 = &block_descriptor_6;
  v17 = _Block_copy(&aBlock);

  v9(v8, v16, v4);
  v13 = swift_allocObject();
  v12(v13 + v10, v8, v4);
  v24 = sub_1CA32F750;
  v25 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E0FC;
  v23 = &block_descriptor_27;
  v14 = _Block_copy(&aBlock);

  v15 = v17;
  [v18 processWithContext:v19 userInputRequiredHandler:v17 valueHandler:v14];
  _Block_release(v14);
  _Block_release(v15);
}

uint64_t sub_1CA3D4948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CA3D7EAC();
  swift_allocError();
  *v6 = a1;
  v6[1] = a2;
  v6[2] = a3;
  swift_unknownObjectRetain();
  sub_1CA94C218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  return sub_1CA94C7D8();
}

uint64_t sub_1CA3D49DC(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
    return sub_1CA94C7D8();
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
    return sub_1CA94C7E8();
  }
}

uint64_t ParameterState<>.init(serializedRepresentation:variableProvider:parameter:)@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v53[1] = *MEMORY[0x1E69E9840];
  sub_1CA949F78();
  OUTLINED_FUNCTION_4_12();
  v50 = v8;
  v51 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_4_12();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_0();
  v21 = v20 - v19;
  v53[0] = 0;
  v22 = [objc_opt_self() dataWithPropertyList:a1 format:200 options:0 error:v53];
  v23 = v53[0];
  if (v22)
  {
    v24 = sub_1CA948C08();
    v26 = v25;

    v27 = sub_1CA9489C8();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_1CA9489B8();
    sub_1CA9489A8();
    sub_1CA266F2C(v24, v26);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    (*(v15 + 32))(a4, v21, a3);
  }

  else
  {
    v30 = v23;
    v31 = sub_1CA948AD8();

    swift_willThrow();
    v32 = *MEMORY[0x1E69E10B0];
    sub_1CA949C58();
    v33 = v31;
    v34 = sub_1CA949F68();
    v35 = sub_1CA94CC18();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v53[0] = v38;
      *v36 = 136315394;
      swift_getMetatypeMetadata();
      v39 = sub_1CA94C408();
      v41 = sub_1CA26B54C(v39, v40, v53);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2112;
      v42 = v31;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v43;
      *v37 = v43;
      _os_log_impl(&dword_1CA256000, v34, v35, "Failed to deserialize parameter state %s from property list: %@", v36, 0x16u);
      sub_1CA2E9314(v37, &qword_1EC444AE0, &qword_1CA985B70);
      OUTLINED_FUNCTION_26();
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    (*(v50 + 8))(v13, v51);
  }

  OUTLINED_FUNCTION_11_14();
  result = __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ParameterState<>.serializedRepresentation.getter(uint64_t a1)
{
  v2 = v1;
  v59[4] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_12();
  v55 = v4;
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v52 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - v10;
  v12 = sub_1CA949F78();
  OUTLINED_FUNCTION_4_12();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_0();
  v56 = v19 - v18;
  v20 = sub_1CA9489F8();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1CA9489E8();
  v40 = sub_1CA9489D8();
  v42 = v41;

  v43 = objc_opt_self();
  v44 = sub_1CA948BF8();
  v58[0] = 0;
  v45 = [v43 propertyListWithData:v44 options:0 format:0 error:v58];

  v46 = v58[0];
  if (!v45)
  {
    v48 = v46;
    v53 = v14;
    v54 = v12;
    v49 = sub_1CA948AD8();

    swift_willThrow();
    sub_1CA266F2C(v40, v42);
    v23 = *MEMORY[0x1E69E10B0];
    v24 = v56;
    sub_1CA949C58();
    v25 = v55;
    v26 = *(v55 + 16);
    v26(v11, v2, a1);
    v27 = v49;
    v28 = sub_1CA949F68();
    v29 = sub_1CA94CC18();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v11;
      v31 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59[0] = v51;
      *v31 = 136315394;
      v26(v52, v30, a1);
      v32 = sub_1CA94C408();
      v34 = v33;
      (*(v25 + 8))(v30, a1);
      v35 = sub_1CA26B54C(v32, v34, v59);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2112;
      v36 = v49;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v37;
      v38 = v50;
      *v50 = v37;
      _os_log_impl(&dword_1CA256000, v28, v29, "Failed to serialize parameter state %s to property list: %@", v31, 0x16u);
      sub_1CA2E9314(v38, &qword_1EC444AE0, &qword_1CA985B70);
      OUTLINED_FUNCTION_26();
      __swift_destroy_boxed_opaque_existential_0(v51);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      (*(v53 + 8))(v56, v54);
    }

    else
    {

      (*(v25 + 8))(v11, a1);
      (*(v53 + 8))(v24, v54);
    }

    result = 0;
    goto LABEL_9;
  }

  sub_1CA94D258();
  swift_unknownObjectRelease();
  sub_1CA25B374(v59, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v59);
    sub_1CA266F2C(v40, v42);
    result = v57;
LABEL_9:
    v47 = *MEMORY[0x1E69E9840];
    return result;
  }

  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

id VariableSupportingParameterState.variable.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a2 + 8) + 32))();
  if (sub_1CA25B410(v2))
  {
    sub_1CA275D70(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1CCAA22D0](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
  }

  else
  {

    return 0;
  }

  return v4;
}

Swift::Void __swiftcall VariableSupportingParameterState.replace(variable:with:)(WFVariable_optional *variable, WFVariable_optional *with)
{
  if (with)
  {
    v5 = v3;
    v6 = v2;
    OUTLINED_FUNCTION_39(v2);
    v8 = *(v7 + 8);
    v10 = v9;
    v8(v4, v6);
    (*(v5 + 16))(v10, v6, v5);
  }
}

uint64_t sub_1CA3D5550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(0, a1);
  (*(v7 + 16))(v10, v4, a1);
  return a4(v10);
}

uint64_t WFAction.parameterState<A>(_:forKey:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  return sub_1CA3D56A0(a1, a2, type metadata accessor for _SwiftParameterState, a3);
}

{
  return sub_1CA3D56A0(a1, a2, type metadata accessor for _SwiftVariableParameterState, a3);
}

uint64_t sub_1CA3D56A0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, void (*a3)(void, uint64_t, uint64_t)@<X5>, uint64_t a4@<X8>)
{
  a3(0, a1, a2);
  v5 = WFAction.parameterState<A>(_:forKey:)();
  if (v5)
  {
    v6 = v5;
    sub_1CA3D5A28(a4);
  }

  OUTLINED_FUNCTION_11_14();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

id WFAction.setParameterState<A>(_:forKey:)()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1CA94D098();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  OUTLINED_FUNCTION_14_14(sub_1CA3D79C0, MEMORY[0x1E69E73E0], v2, v3, &v8);

  v4 = v8;
  v5 = sub_1CA94C368();
  v6 = [v1 setParameterState:v4 forKey:v5];
  swift_unknownObjectRelease();

  return v6;
}

uint64_t ParameterStateDataSource.getSwiftParameterState<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if ((*(a2 + 16))(a1, a2))
  {
    type metadata accessor for _SwiftParameterState();
    if (swift_dynamicCastClass())
    {
      sub_1CA3D5A28(a3);
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_11_14();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t ParameterStateDataSource.setSwiftParameterState<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1CA94D098();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  OUTLINED_FUNCTION_14_14(sub_1CA3D79EC, MEMORY[0x1E69E73E0], v4, v5, &v9);

  return (*(a4 + 24))(v9, a2, a4);
}

id sub_1CA3D5A9C(void *a1)
{
  v1 = a1;
  sub_1CA3D5B00(v1);

  sub_1CA3D7FFC();
  v2 = sub_1CA94C648();

  return v2;
}

uint64_t sub_1CA3D5B00(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  sub_1CA3D5A28(&v11 - v7);
  v9 = (*(*((v3 & v2) + 0x58) + 32))(v4);
  (*(v5 + 8))(v8, v4);
  return v9;
}

id sub_1CA3D5C14(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)], a1, v5);
  v7 = *((v4 & v3) + 0x58);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for _SwiftParameterState();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v6 + 8))(a1, v5);
  return v8;
}

id sub_1CA3D5D38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  v11 = sub_1CA94D098();
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = *(v27 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v29 = *(v10 - 8);
  v16 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v27 - v17;
  v19 = *((v9 & v8) + 0x58);
  v20 = *(v19 + 48);
  v30 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31 = a1;
  v32 = a2;
  v20(a1, a2, a3, v10, v19);
  if (__swift_getEnumTagSinglePayload(v15, 1, v10) == 1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v27 + 8))(v15, v28);
    type metadata accessor for _SwiftParameterState();
    v21 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x30);
    v22 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v24 = v29;
    (*(v29 + 32))(v18, v15, v10);
    (*(v24 + 16))(&v4[*((*MEMORY[0x1E69E7D40] & *v4) + 0x60)], v18, v10);
    v25 = type metadata accessor for _SwiftParameterState();
    v33.receiver = v4;
    v33.super_class = v25;
    v23 = objc_msgSendSuper2(&v33, sel_init);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v24 + 8))(v18, v10);
  }

  return v23;
}

id sub_1CA3D606C(void *a1)
{
  v1 = a1;
  v2 = sub_1CA3D60B0(v1);

  return v2;
}

uint64_t sub_1CA3D60B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  sub_1CA3D5A28(&v11 - v7);
  v9 = (*(*((v3 & v2) + 0x58) + 56))(v4);
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_1CA3D61C4@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x50) - 8) + 64);
  MEMORY[0x1EEE9AC00](ObjectType);
  v6 = &v8 - v5;
  sub_1CA3D5A28(&v8 - v5);
  result = (*(ObjectType + 136))(v6);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_1CA3D6284(void *a1)
{
  v1 = a1;
  sub_1CA3D61C4(v4);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2 = sub_1CA94D7D8();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2;
}

uint64_t sub_1CA3D62EC(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *((*MEMORY[0x1E69E7D40] & v2) + 0x50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v19 - v11;
  sub_1CA33C7B4(v10, v20);
  if (!v21)
  {
    sub_1CA2E9314(v20, &unk_1EC444650, &unk_1CA981C70);
    goto LABEL_5;
  }

  v13 = *(v3 + 88);
  type metadata accessor for _SwiftParameterState();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v16 = 0;
    return v16 & 1;
  }

  v14 = v19[1];
  sub_1CA3D5A28(v12);
  sub_1CA3D5A28(v9);
  v15 = *(*(v13 + 8) + 8);
  v16 = sub_1CA94C358();

  v17 = *(v5 + 8);
  v17(v9, v4);
  v17(v12, v4);
  return v16 & 1;
}

uint64_t sub_1CA3D64DC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1CA3D62EC(v8);

  sub_1CA2E9314(v8, &unk_1EC444650, &unk_1CA981C70);
  return v6 & 1;
}

uint64_t sub_1CA3D6564(void *a1)
{
  v1 = a1;
  v2 = sub_1CA3D6598(v1);

  return v2;
}

uint64_t sub_1CA3D6598(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  sub_1CA3D5A28(&v12 - v7);
  v9 = *(*((v3 & v2) + 0x58) + 8);
  v10 = sub_1CA94C2A8();
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1CA3D66A0()
{
  swift_getObjCClassMetadata();
  sub_1CA3D66D8();

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_1CA3D66D8()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1CA3D66F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = sub_1CA94C858();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v5;
  v16[5] = a1;
  v16[6] = a4;
  v16[7] = a5;
  v16[8] = a2;
  v16[9] = a3;
  v17 = v5;
  v18 = a1;

  sub_1CA30C708();
}

uint64_t sub_1CA3D6814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v16;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v9 = *a4;
  v10 = *MEMORY[0x1E69E7D40];
  v8[12] = *MEMORY[0x1E69E7D40] & *a4;
  v11 = *((v10 & v9) + 0x50);
  v8[13] = v11;
  v12 = *(v11 - 8);
  v8[14] = v12;
  v13 = *(v12 + 64) + 15;
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA3D6928, 0, 0);
}

uint64_t sub_1CA3D6928()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[12];
  v2 = v0[6];
  sub_1CA3D5A28(v0[15]);
  v3 = *(v1 + 88);
  OUTLINED_FUNCTION_12_12(v3);
  v12 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1CA3D6A48;
  v8 = v0[15];
  v9 = v0[13];
  v10 = v0[7];

  return v12(v10, v9, v3);
}

uint64_t sub_1CA3D6A48(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v7 = v4[16];
  *v6 = *v2;
  v5[17] = v1;

  v8 = v4[15];
  v9 = v4[14];
  v10 = v4[13];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);
    v11 = sub_1CA3D6C50;
  }

  else
  {
    v5[18] = a1;
    (*(v9 + 8))(v8, v10);
    v11 = sub_1CA3D6BC8;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1CA3D6BC8()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[18];
  v3 = v0[8];
  v2 = v0[9];
  v4 = swift_unknownObjectRetain();
  v3(v4, 0);
  swift_unknownObjectRelease_n();
  v5 = v0[15];

  OUTLINED_FUNCTION_5();

  return v6();
}

uint64_t sub_1CA3D6C50()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 136);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443898, &unk_1CA9855B0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 136);
  if (v3)
  {
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);

    v6(*(v0 + 16), *(v0 + 24), *(v0 + 32));

    swift_unknownObjectRelease();
    v7 = *(v0 + 40);
  }

  else
  {
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);

    v10 = v4;
    v9(0, v4);

    v7 = v4;
  }

  v11 = *(v0 + 120);

  OUTLINED_FUNCTION_5();

  return v12();
}

uint64_t sub_1CA3D6D6C(void *a1, int a2, void *a3, void *aBlock, const void *a5)
{
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(a5);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = a3;
  v13 = a1;
  sub_1CA3D66F4(v12, sub_1CA3D7FEC, v10, sub_1CA3D7FF4, v11);
}

void sub_1CA3D6E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a2 = sub_1CA94C368();
  }

  v5 = a2;
  (*(a4 + 16))(a4);
}

void sub_1CA3D6EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1CA948AC8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_1CA3D6F64(void *a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t))
{
  v4 = a1;
  sub_1CA3D6FD4(a3);

  v5 = sub_1CA94C368();

  return v5;
}

uint64_t sub_1CA3D6FD4(uint64_t (*a1)(char *, uint64_t))
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  OUTLINED_FUNCTION_39(v3);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1CA3D5A28(&v10 - v7);
  return a1(v8, v3);
}

id sub_1CA3D70C8()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _SwiftParameterState();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1CA3D719C(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v19 - v9;
  v13 = *(*((v12 & v11) + 0xB8) + 16);
  v14 = v8;
  v13();
  swift_getObjectType();
  (*(v3 + 16))(v7, v10, v2);
  v15 = sub_1CA3D563C(v7);

  (*(v3 + 8))(v10, v2);
  v16 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
  v17 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v15;
}

id sub_1CA3D7398(void *a1)
{
  v1 = a1;
  v2 = sub_1CA3D73DC(v1);

  return v2;
}

uint64_t sub_1CA3D73DC(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  sub_1CA3D5A28(&v11 - v7);
  v9 = (*(*((v3 & v2) + 0xB8) + 24))(v4);
  (*(v5 + 8))(v8, v4);
  return v9;
}

id sub_1CA3D74F0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](ObjectType);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  sub_1CA3D5A28(&v18 - v14);
  (*(*((v7 & v6) + 0xB8) + 32))(a1, a2, v8);
  (*(v9 + 16))(v13, v15, v8);
  v16 = sub_1CA3D563C(v13);
  (*(v9 + 8))(v15, v8);
  return v16;
}

id sub_1CA3D7680(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a1;
  v10 = sub_1CA3D74F0(a3, a4);

  return v10;
}

id sub_1CA3D7704(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, a1, v3);
  v8 = sub_1CA3D5C14(v7);
  (*(v4 + 8))(a1, v3);
  return v8;
}

uint64_t sub_1CA3D7828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t, void *))
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = a5;
  return a6(a3, a4, a5);
}

uint64_t sub_1CA3D78C0()
{
  v1 = OUTLINED_FUNCTION_0_27();

  return VariableSupportingParameterState.wfParameterState.getter(v0, v1);
}

id sub_1CA3D78FC()
{
  OUTLINED_FUNCTION_2_27();
  v2 = *(v0 + 44);
  return sub_1CA2DB540();
}

id sub_1CA3D7970()
{
  OUTLINED_FUNCTION_2_27();
  v2 = *(v0 + 48);
  return sub_1CA2DB400();
}

uint64_t sub_1CA3D7A18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1CA3D7A6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of ParameterState.process(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_12(a3);
  v12 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1CA3D7C28;

  return v12(a1, a2, a3);
}

uint64_t sub_1CA3D7C28()
{
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_13();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_1CA3D7DE0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1CA3D7EAC()
{
  result = qword_1EC444DE8;
  if (!qword_1EC444DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444DE8);
  }

  return result;
}

uint64_t sub_1CA3D7F00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1CA30A15C;

  return sub_1CA3D6814(a1, v4, v5, v6, v7, v8, v9, v11);
}

unint64_t sub_1CA3D7FFC()
{
  result = qword_1EC441AC0;
  if (!qword_1EC441AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC441AC0);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_20Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  OUTLINED_FUNCTION_39(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id sub_1CA3D8128()
{
  v108 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9B1210;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v112 = v12;
  v114 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v100 - v114;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v111 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v113 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v110 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v100 - v110;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v109 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v107 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v105 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v106 = &v100;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v100 - v114;
  sub_1CA948D98();
  v33 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v100 - v110;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v105, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v109;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v107;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v104 = xmmword_1CA981350;
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 0;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x6375646F72504657;
  *(v38 + 104) = 0xE900000000000074;
  *(v38 + 120) = MEMORY[0x1E69E6158];
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  *(v38 + 184) = 0xE500000000000000;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v107;
  *(v38 + 192) = &unk_1F49F8940;
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 200) = v41;
  *(inited + 224) = v42;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 1;
  *(inited + 264) = v39;
  *(inited + 272) = @"Name";
  v43 = @"InputPassthrough";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v47 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  v106 = &v100;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v100 - v114;
  sub_1CA948D98();
  v52 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v100 - v110;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v53);
  *(inited + 304) = v109;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v106 = swift_allocObject();
  *(v106 + 1) = xmmword_1CA9813B0;
  v105 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v55 = swift_initStackObject();
  *(v55 + 16) = v104;
  *(v55 + 32) = @"Class";
  *(v55 + 40) = 0xD000000000000019;
  *(v55 + 48) = 0x80000001CA99B030;
  v56 = MEMORY[0x1E69E6158];
  *(v55 + 64) = MEMORY[0x1E69E6158];
  *(v55 + 72) = @"Key";
  *(v55 + 80) = 0x6375646F72504657;
  *(v55 + 88) = 0xE900000000000074;
  *(v55 + 104) = v56;
  *(v55 + 112) = @"Label";
  v57 = @"Parameters";
  v58 = @"Class";
  v59 = @"Key";
  v60 = @"Label";
  v61 = sub_1CA94C438();
  v102 = v62;
  v103 = v61;
  v63 = sub_1CA94C438();
  v101 = v64;
  *&v104 = &v100;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v100 - v114;
  sub_1CA948D98();
  v66 = v111;
  v67 = [v111 bundleURL];
  v100 = &v100;
  MEMORY[0x1EEE9AC00](v67);
  v68 = v110;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 120) = sub_1CA2F9F14(v103, v102, v63, v101, 0, 0, v65, &v100 - v68);
  v70 = v109;
  *(v55 + 144) = v109;
  *(v55 + 152) = @"Placeholder";
  v71 = @"Placeholder";
  v72 = sub_1CA94C438();
  v102 = v73;
  v103 = v72;
  v74 = sub_1CA94C438();
  v101 = v75;
  *&v104 = &v100;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v100 - v114;
  sub_1CA948D98();
  v77 = [v66 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v79 = sub_1CA2F9F14(v103, v102, v74, v101, 0, 0, v76, &v100 - v68);
  *(v55 + 184) = v70;
  *(v55 + 160) = v79;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v80 = sub_1CA2F864C();
  v81 = v106;
  v106[4] = v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 320) = v81;
  *(inited + 344) = v82;
  *(inited + 352) = @"ParameterSummary";
  v83 = @"ParameterSummary";
  v84 = sub_1CA94C438();
  v86 = v85;
  v87 = sub_1CA94C438();
  v89 = v88;
  v109 = &v100;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v100 - v114;
  sub_1CA948D98();
  v91 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v84, v86, v87, v89, 0, 0, v90, &v100 - v68);
  v94 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v95 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 360) = v94;
  *(inited + 384) = v95;
  *(inited + 392) = @"RequiredResources";
  *(inited + 400) = &unk_1F49F8980;
  v96 = v107;
  *(inited + 424) = v107;
  *(inited + 432) = @"UserInterfaces";
  *(inited + 464) = v96;
  *(inited + 440) = &unk_1F49F89B0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v97 = @"RequiredResources";
  v98 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3D8E48()
{
  v86 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x6E6968746F4E4657;
  *(inited + 48) = 0xEF6E6F6974634167;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v91 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v92 = v12;
  v13 = &v81 - v91;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v88 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v90 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v87 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v81 - v87;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v89 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v85 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionResult";
  v22 = @"Description";
  v23 = @"DescriptionResult";
  v24 = sub_1CA94C438();
  v82 = v25;
  v83 = v24;
  v26 = sub_1CA94C438();
  v81 = v27;
  v84 = &v81;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v81 - v91;
  sub_1CA948D98();
  v29 = v88;
  v30 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v87;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v83, v82, v26, v81, 0, 0, v28, &v81 - v31);
  *(v21 + 64) = v89;
  *(v21 + 72) = @"DescriptionSummary";
  v33 = @"DescriptionSummary";
  v34 = sub_1CA94C438();
  v82 = v35;
  v83 = v34;
  v36 = sub_1CA94C438();
  v38 = v37;
  v84 = &v81;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v81 - v91;
  sub_1CA948D98();
  v40 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v83, v82, v36, v38, 0, 0, v39, &v81 - v31);
  *(v21 + 104) = v89;
  *(v21 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v43 = v85;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v43;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0x7261656C43;
  *(inited + 168) = 0xE500000000000000;
  v44 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  strcpy((inited + 200), "square.dashed");
  *(inited + 214) = -4864;
  *(inited + 224) = v44;
  *(inited + 232) = @"IconSymbolColor";
  *(inited + 240) = 0x6C6562614CLL;
  *(inited + 248) = 0xE500000000000000;
  *(inited + 264) = v44;
  *(inited + 272) = @"InputPassthrough";
  v45 = MEMORY[0x1E69E6370];
  *(inited + 280) = 0;
  *(inited + 304) = v45;
  *(inited + 312) = @"Name";
  v46 = @"IconColor";
  v47 = @"IconSymbol";
  v48 = @"IconSymbolColor";
  v49 = @"InputPassthrough";
  v50 = @"Name";
  v51 = sub_1CA94C438();
  v53 = v52;
  v54 = sub_1CA94C438();
  v56 = v55;
  v85 = &v81;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v81 - v91;
  sub_1CA948D98();
  v58 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v81 - v87;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v51, v53, v54, v56, 0, 0, v57, v59);
  *(inited + 344) = v89;
  *(inited + 352) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v61 = swift_initStackObject();
  *(v61 + 16) = xmmword_1CA9813C0;
  *(v61 + 32) = 0x75736F6C63736944;
  *(v61 + 40) = 0xEF6C6576654C6572;
  *(v61 + 48) = 0x63696C627550;
  *(v61 + 56) = 0xE600000000000000;
  *(v61 + 72) = MEMORY[0x1E69E6158];
  *(v61 + 80) = 0x656C7069746C754DLL;
  *(v61 + 88) = 0xE800000000000000;
  *(v61 + 96) = 0;
  *(v61 + 120) = MEMORY[0x1E69E6370];
  *(v61 + 128) = 0x7365707954;
  *(v61 + 136) = 0xE500000000000000;
  *(v61 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v61 + 144) = &unk_1F49F89E0;
  v62 = @"Output";
  v63 = sub_1CA94C1E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 360) = v63;
  *(inited + 384) = v64;
  *(inited + 392) = @"ParameterSummary";
  v65 = @"ParameterSummary";
  v66 = sub_1CA94C438();
  v68 = v67;
  v69 = sub_1CA94C438();
  v71 = v70;
  v89 = &v81;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v81 - v91;
  sub_1CA948D98();
  v73 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v81 - v87;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v76 = sub_1CA2F9F14(v66, v68, v69, v71, 0, 0, v72, v74);
  v77 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v78 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v77;
  *(inited + 424) = v78;
  *(inited + 432) = @"ResidentCompatible";
  *(inited + 464) = MEMORY[0x1E69E6370];
  *(inited + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  v79 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3D98D4()
{
  v142 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9B1510;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438();
  v7 = v6;
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v146 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v147 = v13;
  v14 = &v135 - v146;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v145 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v149 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v148 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v135 - v148;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v143 = v21;
  v144 = v2;
  v2[10] = v20;
  v2[13] = v21;
  v2[14] = @"Description";
  v141 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CA9813C0;
  *(v22 + 32) = @"DescriptionInput";
  v23 = @"Description";
  v24 = @"DescriptionInput";
  v25 = sub_1CA94C438();
  v138 = v26;
  *&v139 = v25;
  v27 = sub_1CA94C438();
  v137 = v28;
  v140 = &v135;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v135 - v146;
  sub_1CA948D98();
  v30 = v145;
  v31 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v135 - v148;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v22 + 40) = sub_1CA2F9F14(v139, v138, v27, v137, 0, 0, v29, v32);
  *(v22 + 64) = v143;
  *(v22 + 72) = @"DescriptionResult";
  v34 = @"DescriptionResult";
  v35 = sub_1CA94C438();
  v138 = v36;
  *&v139 = v35;
  v37 = sub_1CA94C438();
  v39 = v38;
  v140 = &v135;
  MEMORY[0x1EEE9AC00](v37);
  v40 = v146;
  sub_1CA948D98();
  v41 = [v30 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  v42 = v148;
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v22 + 80) = sub_1CA2F9F14(v139, v138, v37, v39, 0, 0, &v135 - v40, &v135 - v42);
  v44 = v143;
  *(v22 + 104) = v143;
  *(v22 + 112) = @"DescriptionSummary";
  v45 = @"DescriptionSummary";
  v46 = sub_1CA94C438();
  v138 = v47;
  *&v139 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  v140 = &v135;
  MEMORY[0x1EEE9AC00](v48);
  sub_1CA948D98();
  v51 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v139, v138, v48, v50, 0, 0, &v135 - v40, &v135 - v42);
  *(v22 + 144) = v44;
  *(v22 + 120) = v53;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v54 = v141;
  v55 = sub_1CA6B3784();
  v56 = v144;
  v144[15] = v55;
  v56[18] = v54;
  v56[19] = @"IconColor";
  v56[20] = 2036429383;
  v56[21] = 0xE400000000000000;
  v57 = MEMORY[0x1E69E6158];
  v56[23] = MEMORY[0x1E69E6158];
  v56[24] = @"IconSymbol";
  v56[25] = 0x746165706572;
  v56[26] = 0xE600000000000000;
  v56[28] = v57;
  v56[29] = @"Input";
  v58 = v56;
  *&v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_1CA981370;
  *(v59 + 32) = 0xD00000000000001DLL;
  *(v59 + 40) = 0x80000001CA9A3ED0;
  v60 = MEMORY[0x1E69E6370];
  *(v59 + 48) = 1;
  *(v59 + 72) = v60;
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = v60;
  strcpy((v59 + 128), "ParameterKey");
  *(v59 + 141) = 0;
  *(v59 + 142) = -5120;
  *(v59 + 144) = 0x7475706E494657;
  *(v59 + 152) = 0xE700000000000000;
  *(v59 + 168) = v57;
  *(v59 + 176) = 0x6465726975716552;
  *(v59 + 184) = 0xE800000000000000;
  *(v59 + 192) = 0;
  *(v59 + 216) = v60;
  *(v59 + 224) = 0x7365707954;
  *(v59 + 232) = 0xE500000000000000;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v59 + 264) = v141;
  *(v59 + 240) = &unk_1F49F8A10;
  v61 = @"IconColor";
  v62 = @"IconSymbol";
  v63 = @"Input";
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v140 = v65;
  v58[30] = v64;
  v58[33] = v65;
  v58[34] = @"Name";
  v66 = @"Name";
  v67 = sub_1CA94C438();
  v136 = v68;
  v137 = v67;
  v69 = sub_1CA94C438();
  v135 = v70;
  v138 = &v135;
  MEMORY[0x1EEE9AC00](v69);
  v71 = v146;
  sub_1CA948D98();
  v72 = v145;
  v73 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = v148;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v76 = sub_1CA2F9F14(v137, v136, v69, v135, 0, 0, &v135 - v71, &v135 - v74);
  v78 = v143;
  v77 = v144;
  v144[35] = v76;
  v77[38] = v78;
  v77[39] = @"Output";
  v79 = swift_allocObject();
  v139 = xmmword_1CA981350;
  *(v79 + 16) = xmmword_1CA981350;
  *(v79 + 32) = 0x75736F6C63736944;
  *(v79 + 40) = 0xEF6C6576654C6572;
  *(v79 + 48) = 0x63696C627550;
  *(v79 + 56) = 0xE600000000000000;
  *(v79 + 72) = MEMORY[0x1E69E6158];
  *(v79 + 80) = 0x656C7069746C754DLL;
  *(v79 + 88) = 0xE800000000000000;
  *(v79 + 96) = 1;
  *(v79 + 120) = MEMORY[0x1E69E6370];
  *(v79 + 128) = 0x614E74757074754FLL;
  *(v79 + 136) = 0xEA0000000000656DLL;
  v80 = @"Output";
  v81 = sub_1CA94C438();
  v136 = v82;
  v137 = v81;
  v135 = sub_1CA94C438();
  v84 = v83;
  v138 = &v135;
  MEMORY[0x1EEE9AC00](v135);
  sub_1CA948D98();
  v85 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 144) = sub_1CA2F9F14(v137, v136, v135, v84, 0, 0, &v135 - v71, &v135 - v74);
  *(v79 + 168) = v78;
  *(v79 + 176) = 0x7365707954;
  *(v79 + 216) = v141;
  *(v79 + 184) = 0xE500000000000000;
  *(v79 + 192) = &unk_1F49F8A40;
  v87 = MEMORY[0x1E69E6158];
  v88 = sub_1CA94C1E8();
  v89 = v144;
  v144[40] = v88;
  v89[43] = v140;
  v89[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_1CA9813B0;
  v140 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v90 = swift_allocObject();
  *(v90 + 16) = v139;
  *(v90 + 32) = @"Class";
  *(v90 + 40) = 0xD000000000000019;
  *(v90 + 48) = 0x80000001CA99B030;
  *(v90 + 64) = v87;
  *(v90 + 72) = @"Key";
  *(v90 + 80) = 0x7475706E494657;
  *(v90 + 88) = 0xE700000000000000;
  *(v90 + 104) = v87;
  *(v90 + 112) = @"Label";
  v91 = @"Parameters";
  v92 = @"Class";
  v93 = @"Key";
  v94 = @"Label";
  v95 = sub_1CA94C438();
  v137 = v96;
  v138 = v95;
  v97 = sub_1CA94C438();
  v136 = v98;
  *&v139 = &v135;
  MEMORY[0x1EEE9AC00](v97);
  v99 = v146;
  sub_1CA948D98();
  v100 = v145;
  v101 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v135 - v148;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 120) = sub_1CA2F9F14(v138, v137, v97, v136, 0, 0, &v135 - v99, v102);
  v104 = v143;
  *(v90 + 144) = v143;
  *(v90 + 152) = @"Placeholder";
  v105 = @"Placeholder";
  v106 = sub_1CA94C438();
  v137 = v107;
  v138 = v106;
  v136 = sub_1CA94C438();
  v109 = v108;
  *&v139 = &v135;
  MEMORY[0x1EEE9AC00](v136);
  sub_1CA948D98();
  v110 = [v100 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v135 - v148;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v138, v137, v136, v109, 0, 0, &v135 - v99, v111);
  *(v90 + 184) = v104;
  *(v90 + 160) = v113;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v114 = sub_1CA2F864C();
  v115 = v141;
  *(v141 + 32) = v114;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v117 = v144;
  v144[45] = v115;
  v117[48] = v116;
  v117[49] = @"ParameterSummary";
  v118 = @"ParameterSummary";
  v119 = sub_1CA94C438();
  v121 = v120;
  v122 = sub_1CA94C438();
  v124 = v123;
  v143 = &v135;
  MEMORY[0x1EEE9AC00](v122);
  v125 = &v135 - v146;
  sub_1CA948D98();
  v126 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v135 - v148;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v129 = sub_1CA2F9F14(v119, v121, v122, v124, 0, 0, v125, v127);
  v130 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v131 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v132 = v144;
  v144[50] = v130;
  v132[53] = v131;
  v132[54] = @"ResidentCompatible";
  v132[58] = MEMORY[0x1E69E6370];
  *(v132 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v133 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA3DA9E4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1CA94AC88();
  v2[4] = v3;
  OUTLINED_FUNCTION_12(v3);
  v2[5] = v4;
  v6 = *(v5 + 64);
  v2[6] = OUTLINED_FUNCTION_45();
  v7 = sub_1CA94B1C8();
  v2[7] = v7;
  OUTLINED_FUNCTION_12(v7);
  v2[8] = v8;
  v10 = *(v9 + 64);
  v2[9] = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for TypedValueConversionContext(0);
  v2[10] = v11;
  v12 = *(*(v11 - 8) + 64);
  v2[11] = OUTLINED_FUNCTION_45();
  v13 = sub_1CA94AD88();
  v2[12] = v13;
  OUTLINED_FUNCTION_12(v13);
  v2[13] = v14;
  v16 = *(v15 + 64);
  v2[14] = OUTLINED_FUNCTION_45();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0) - 8) + 64);
  v2[15] = OUTLINED_FUNCTION_45();
  v18 = sub_1CA94ADC8();
  v2[16] = v18;
  OUTLINED_FUNCTION_12(v18);
  v2[17] = v19;
  v21 = *(v20 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A60, &unk_1CA985F10) - 8) + 64);
  v2[21] = OUTLINED_FUNCTION_45();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DF0, &unk_1CA988BD0);
  v2[22] = v23;
  OUTLINED_FUNCTION_12(v23);
  v2[23] = v24;
  v26 = *(v25 + 64);
  v2[24] = OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6DFA0](sub_1CA3DAC78, 0, 0);
}

uint64_t sub_1CA3DAC78()
{
  v46 = v0;
  [**(v0 + 24) singleStateClass];
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1CA25B3D0(0, &qword_1EC446E10, off_1E836DFE0);
  if (swift_dynamicCastMetatype())
  {
    v3 = *(v0 + 168);
    v2 = *(v0 + 176);
    v4 = *(v0 + 16);
    sub_1CA94A948();
    if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
    {
      sub_1CA30F7DC(*(v0 + 168), &unk_1EC445A60, &unk_1CA985F10);
LABEL_18:
      v40 = 2;
      goto LABEL_19;
    }

    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      goto LABEL_18;
    }

    v15 = [v14 codableAttribute];
    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    v18 = *(v0 + 176);
    if (!v15)
    {
      (*(v17 + 8))(*(v0 + 192), *(v0 + 176));
      goto LABEL_18;
    }

    v19 = v15;
    v20 = *(v0 + 176);
    v21 = *(v0 + 192);
    v22 = sub_1CA94AD18();
    v45[3] = sub_1CA25B3D0(0, &unk_1EC444E00, 0x1E696E910);
    v45[0] = v22;
    v23 = objc_allocWithZone(WFCodableAttributeBackedSubstitutableState);
    sub_1CA3DBC74(v45, v19, 0);
    (*(v17 + 8))(v16, v18);
LABEL_13:
    OUTLINED_FUNCTION_0_28();
    v36 = *(v0 + 48);

    v37 = *(v0 + 8);
    OUTLINED_FUNCTION_68();

    __asm { BRAA            X2, X16 }
  }

  sub_1CA25B3D0(0, &qword_1EC446AB0, off_1E836E7F8);
  if (!swift_dynamicCastMetatype())
  {
    v24 = dynamic_cast_existential_1_conditional(ObjCClassMetadata);
    if (!v24)
    {
      v40 = 1;
LABEL_19:
      sub_1CA3DBA78();
      swift_allocError();
      *v41 = v40;
      swift_willThrow();
      OUTLINED_FUNCTION_0_28();
      v42 = *(v0 + 48);

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_68();

      __asm { BRAA            X1, X16 }
    }

    v26 = v24;
    v27 = v25;
    v29 = *(v0 + 40);
    v28 = *(v0 + 48);
    v30 = *(v0 + 32);
    v31 = *(v0 + 16);
    v32 = sub_1CA94A9A8();
    v33 = swift_allocBox();
    (*(*(v32 - 8) + 16))(v34, v31, v32);
    *v28 = v33;
    (*(v29 + 104))(v28, *MEMORY[0x1E69DAE58], v30);
    v35 = (*(v27 + 24))(v28, v26, v27);
    (*(v29 + 8))(v28, v30);
    nullsub_1(v35);
    goto LABEL_13;
  }

  v5 = *(v0 + 152);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  sub_1CA94A8B8();
  v8 = *(type metadata accessor for ParameterStateValueTransformContext(0) + 24);
  v9 = swift_task_alloc();
  *(v0 + 200) = v9;
  *v9 = v0;
  v9[1] = sub_1CA3DB13C;
  v10 = *(v0 + 152);
  v11 = *(v0 + 120);
  OUTLINED_FUNCTION_68();

  return sub_1CA4693D0();
}

uint64_t sub_1CA3DB13C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = v4[25];
  v6 = v4[19];
  v7 = v4[17];
  v8 = v4[16];
  v9 = *v1;
  OUTLINED_FUNCTION_1();
  *v10 = v9;
  v2[26] = v0;

  v11 = *(v7 + 8);
  v2[27] = v11;
  v2[28] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v6, v8);
  if (v0)
  {
    v12 = sub_1CA3DB9A4;
  }

  else
  {
    v12 = sub_1CA3DB2B8;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1CA3DB2B8()
{
  v1 = v0[15];
  v2 = v0[16];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1CA30F7DC(v1, &qword_1EC444368, &unk_1CA988BC0);
    goto LABEL_10;
  }

  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  (*(v5 + 32))(v3, v1, v2);
  (*(v5 + 16))(v4, v3, v2);
  if ((*(v5 + 88))(v4, v2) != *MEMORY[0x1E69DB088])
  {
    v28 = v0[27];
    v27 = v0[28];
    v29 = v0[18];
    v30 = v0[16];
    v28(v0[20], v30);
    v28(v29, v30);
LABEL_10:
    sub_1CA3DBA78();
    swift_allocError();
    *v31 = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_0_28();
    v34 = v0[6];

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_24();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[18];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];
  (*(v0[17] + 96))(v6, v0[16]);
  v14 = *v6;
  v15 = swift_projectBox();
  (*(v8 + 16))(v7, v15, v9);

  v16 = sub_1CA94AD68();
  MEMORY[0x1CCA9FFE0](v16);
  (*(v12 + 8))(v11, v13);
  if (qword_1EC4420F0 != -1)
  {
    swift_once();
  }

  v18 = v0[10];
  v17 = v0[11];
  v19 = qword_1EC4420F8;
  v20 = (v17 + v18[5]);
  v20[3] = type metadata accessor for DatabaseTypeDefinitionProvider();
  v20[4] = &protocol witness table for DatabaseTypeDefinitionProvider;
  *v20 = v19;
  v21 = objc_opt_self();

  *(v17 + v18[6]) = [v21 defaultContext];
  *(v17 + v18[7]) = 0;
  v22 = swift_task_alloc();
  v0[29] = v22;
  *v22 = v0;
  v22[1] = sub_1CA3DB614;
  v23 = v0[11];
  v24 = v0[2];
  OUTLINED_FUNCTION_24();

  return sub_1CA514FA4();
}

uint64_t sub_1CA3DB614(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  v7 = *(v6 + 232);
  v8 = *v2;
  OUTLINED_FUNCTION_1();
  *v9 = v8;
  *(v4 + 240) = v1;

  if (v1)
  {
    v10 = sub_1CA3DB894;
  }

  else
  {
    *(v4 + 248) = a1;
    v10 = sub_1CA3DB734;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

void sub_1CA3DB734()
{
  v1 = v0[31];
  v2 = v0[27];
  v14 = v0[28];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = [objc_allocWithZone(MEMORY[0x1E69ACEC8]) initWithValue:v1 indentationLevel:0];
  [objc_allocWithZone(WFLinkDynamicOptionSubstitutableState) initWithValue_];

  sub_1CA3DBD00(v8);
  (*(v5 + 8))(v6, v7);
  v2(v3, v4);
  OUTLINED_FUNCTION_0_28();
  v10 = v0[6];

  v11 = v0[1];
  OUTLINED_FUNCTION_24();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1CA3DB894()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[20];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  sub_1CA3DBD00(v0[11]);
  (*(v6 + 8))(v5, v7);
  v2(v3, v4);
  v11 = v0[30];
  OUTLINED_FUNCTION_0_28();
  v8 = v0[6];

  OUTLINED_FUNCTION_5();

  return v9();
}

uint64_t sub_1CA3DB9A4()
{
  v4 = *(v0 + 208);
  OUTLINED_FUNCTION_0_28();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_5();

  return v2();
}

unint64_t sub_1CA3DBA78()
{
  result = qword_1EC444DF8;
  if (!qword_1EC444DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444DF8);
  }

  return result;
}

uint64_t sub_1CA3DBACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1CA3DBB6C;

  return sub_1CA3DA9E4(a2, a3);
}

uint64_t sub_1CA3DBB6C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_1();
  *v9 = v8;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v10 = *(v8 + 8);

  return v10();
}

id sub_1CA3DBC74(uint64_t *a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = [v3 initWithValue:sub_1CA94D7D8() codableAttribute:a2 stringLocalizer:a3];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1CA3DBD00(uint64_t a1)
{
  v2 = type metadata accessor for TypedValueConversionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CA3DBD90()
{
  v232 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001CA9B16F0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v249 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v250 = v12;
  v13 = &v225 - v249;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v248 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v251 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v246 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v225 - v246;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v247 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v245 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v243 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v244 = &v225;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v225 - v249;
  sub_1CA948D98();
  v30 = inited;
  v31 = [v248 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v225 - v246;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v24, v243, v26, v28, 0, 0, v29, v32);
  *(v21 + 64) = v247;
  *(v21 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v35 = v245;
  *(v30 + 120) = sub_1CA6B3784();
  *(v30 + 144) = v35;
  *(v30 + 152) = @"InputPassthrough";
  *(v30 + 184) = MEMORY[0x1E69E6370];
  *(v30 + 160) = 1;
  v36 = @"InputPassthrough";
  v37 = sub_1CA94C368();
  v240 = v30;
  *(v30 + 192) = v37;
  *(v30 + 200) = 0xD000000000000029;
  *(v30 + 208) = 0x80000001CA9B17A0;
  *(v30 + 224) = MEMORY[0x1E69E6158];
  *(v30 + 232) = @"Name";
  v38 = @"Name";
  v39 = sub_1CA94C438();
  v41 = v40;
  v42 = sub_1CA94C438();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v225 - v249;
  sub_1CA948D98();
  v46 = [v248 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v225 - v246;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v49 = sub_1CA2F9F14(v39, v41, v42, v44, 0, 0, v45, v47);
  v50 = v240;
  v240[30] = v49;
  v50[33] = v247;
  v50[34] = @"Parameters";
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v241 = swift_allocObject();
  *(v241 + 16) = xmmword_1CA981560;
  v245 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  v239 = xmmword_1CA981400;
  *(v51 + 16) = xmmword_1CA981400;
  *(v51 + 32) = @"Class";
  *(v51 + 40) = 0xD00000000000001ALL;
  *(v51 + 48) = 0x80000001CA99B690;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 64) = MEMORY[0x1E69E6158];
  *(v51 + 72) = @"DefaultValue";
  v53 = @"Class";
  v54 = @"DefaultValue";
  v238 = v53;
  v230 = v54;
  v55 = @"Parameters";
  v56 = sub_1CA94C1E8();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(v51 + 80) = v56;
  *(v51 + 104) = v57;
  *(v51 + 112) = @"DisallowedVariableTypes";
  *(v51 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 120) = &unk_1F49F8AB0;
  v58 = @"DisallowedVariableTypes";
  *(v51 + 152) = sub_1CA94C368();
  *(v51 + 160) = 0xD000000000000013;
  *(v51 + 168) = 0x80000001CA9B1800;
  *(v51 + 184) = v52;
  *(v51 + 192) = @"Key";
  *(v51 + 200) = 0xD000000000000013;
  *(v51 + 208) = 0x80000001CA99B6D0;
  *(v51 + 224) = v52;
  *(v51 + 232) = @"Label";
  v59 = @"Key";
  v60 = @"Label";
  v61 = v59;
  v62 = v60;
  v235 = v61;
  v237 = v62;
  v242 = sub_1CA94C438();
  v236 = v63;
  v64 = sub_1CA94C438();
  v66 = v65;
  v243 = &v225;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v225 - v249;
  sub_1CA948D98();
  v68 = v248;
  v69 = [v248 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = v246;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v51 + 240) = sub_1CA2F9F14(v242, v236, v64, v66, 0, 0, v67, &v225 - v70);
  v72 = v247;
  *(v51 + 264) = v247;
  *(v51 + 272) = @"Prompt";
  v236 = @"Prompt";
  v242 = sub_1CA94C438();
  v234 = v73;
  v74 = sub_1CA94C438();
  v233 = v75;
  v243 = &v225;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v225 - v249;
  sub_1CA948D98();
  v77 = [v68 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v79 = sub_1CA2F9F14(v242, v234, v74, v233, 0, 0, v76, &v225 - v70);
  *(v51 + 304) = v72;
  *(v51 + 280) = v79;
  _s3__C3KeyVMa_0(0);
  v243 = v80;
  v242 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v241 + 32) = sub_1CA2F864C();
  v81 = swift_allocObject();
  *(v81 + 16) = v239;
  *(v81 + 32) = @"AllowsMultipleValues";
  *(v81 + 40) = 1;
  v82 = v238;
  *(v81 + 64) = MEMORY[0x1E69E6370];
  *(v81 + 72) = v82;
  *(v81 + 80) = 0xD00000000000001DLL;
  *(v81 + 88) = 0x80000001CA99EEC0;
  v83 = MEMORY[0x1E69E6158];
  *(v81 + 104) = MEMORY[0x1E69E6158];
  *(v81 + 112) = @"IntentSlotName";
  *(v81 + 120) = 0x6565796170;
  *(v81 + 128) = 0xE500000000000000;
  v84 = v235;
  *(v81 + 144) = v83;
  *(v81 + 152) = v84;
  *(v81 + 160) = 0xD000000000000017;
  *(v81 + 168) = 0x80000001CA9B1820;
  v85 = v237;
  *(v81 + 184) = v83;
  *(v81 + 192) = v85;
  v86 = @"IntentSlotName";
  v233 = v82;
  v234 = v84;
  v235 = v85;
  v237 = v86;
  v87 = @"AllowsMultipleValues";
  v88 = sub_1CA94C438();
  v228 = v89;
  v229 = v88;
  v90 = sub_1CA94C438();
  v92 = v91;
  v238 = &v225;
  MEMORY[0x1EEE9AC00](v90);
  v93 = v249;
  sub_1CA948D98();
  v94 = v248;
  v95 = [v248 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v225 - v246;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 200) = sub_1CA2F9F14(v229, v228, v90, v92, 0, 0, &v225 - v93, v96);
  *(v81 + 224) = v247;
  *(v81 + 232) = @"Placeholder";
  v238 = @"Placeholder";
  v98 = sub_1CA94C438();
  v227 = v99;
  v228 = v98;
  v100 = sub_1CA94C438();
  v226 = v101;
  v229 = &v225;
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v225 - v93;
  sub_1CA948D98();
  v103 = v94;
  v104 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  v105 = v246;
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 240) = sub_1CA2F9F14(v228, v227, v100, v226, 0, 0, v102, &v225 - v105);
  v107 = v247;
  v108 = v236;
  *(v81 + 264) = v247;
  *(v81 + 272) = v108;
  v236 = v108;
  v109 = sub_1CA94C438();
  v227 = v110;
  v228 = v109;
  v111 = sub_1CA94C438();
  v226 = v112;
  v229 = &v225;
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v225 - v249;
  sub_1CA948D98();
  v114 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v114);
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v228, v227, v111, v226, 0, 0, v113, &v225 - v105);
  *(v81 + 304) = v107;
  *(v81 + 280) = v116;
  sub_1CA94C1E8();
  *(v241 + 40) = sub_1CA2F864C();
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1CA981300;
  *(v117 + 32) = @"AllowsDecimalNumbers";
  *(v117 + 40) = 1;
  v118 = v233;
  *(v117 + 64) = MEMORY[0x1E69E6370];
  *(v117 + 72) = v118;
  *(v117 + 80) = 0xD000000000000020;
  *(v117 + 88) = 0x80000001CA9B1920;
  v119 = MEMORY[0x1E69E6158];
  v120 = v237;
  *(v117 + 104) = MEMORY[0x1E69E6158];
  *(v117 + 112) = v120;
  strcpy((v117 + 120), "currencyAmount");
  *(v117 + 135) = -18;
  v121 = v234;
  v122 = v235;
  *(v117 + 144) = v119;
  *(v117 + 152) = v121;
  *(v117 + 160) = 0xD000000000000013;
  *(v117 + 168) = 0x80000001CA9B1950;
  *(v117 + 184) = v119;
  *(v117 + 192) = v122;
  v233 = v118;
  v234 = v121;
  v235 = v122;
  v123 = @"AllowsDecimalNumbers";
  v124 = sub_1CA94C438();
  v227 = v125;
  v228 = v124;
  v126 = sub_1CA94C438();
  v226 = v127;
  v229 = &v225;
  MEMORY[0x1EEE9AC00](v126);
  v128 = v249;
  sub_1CA948D98();
  v129 = v248;
  v130 = [v248 bundleURL];
  v225 = &v225;
  MEMORY[0x1EEE9AC00](v130);
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v117 + 200) = sub_1CA2F9F14(v228, v227, v126, v226, 0, 0, &v225 - v128, &v225 - v105);
  v132 = v238;
  *(v117 + 224) = v247;
  *(v117 + 232) = v132;
  v133 = sub_1CA94C438();
  v227 = v134;
  v228 = v133;
  v135 = sub_1CA94C438();
  v226 = v136;
  v229 = &v225;
  MEMORY[0x1EEE9AC00](v135);
  sub_1CA948D98();
  v137 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948B68();

  v138 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v117 + 240) = sub_1CA2F9F14(v228, v227, v135, v226, 0, 0, &v225 - v128, &v225 - v105);
  v139 = v247;
  v140 = v236;
  *(v117 + 264) = v247;
  *(v117 + 272) = v140;
  v141 = sub_1CA94C438();
  v227 = v142;
  v228 = v141;
  v143 = sub_1CA94C438();
  v226 = v144;
  v229 = &v225;
  MEMORY[0x1EEE9AC00](v143);
  v145 = &v225 - v249;
  sub_1CA948D98();
  v146 = [v248 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v117 + 280) = sub_1CA2F9F14(v228, v227, v143, v226, 0, 0, v145, &v225 - v105);
  *(v117 + 304) = v139;
  *(v117 + 312) = @"TextAlignment";
  v148 = MEMORY[0x1E69E6158];
  *(v117 + 344) = MEMORY[0x1E69E6158];
  *(v117 + 320) = 0x7468676952;
  *(v117 + 328) = 0xE500000000000000;
  v149 = @"TextAlignment";
  sub_1CA94C1E8();
  v150 = sub_1CA2F864C();
  v151 = v241;
  *(v241 + 48) = v150;
  v152 = swift_initStackObject();
  *(v152 + 16) = xmmword_1CA981350;
  v229 = 0xD000000000000011;
  *(v152 + 32) = v233;
  *(v152 + 40) = 0xD000000000000011;
  *(v152 + 48) = 0x80000001CA99E620;
  v153 = v230;
  *(v152 + 64) = v148;
  *(v152 + 72) = v153;
  *(v152 + 80) = 0;
  v154 = v234;
  *(v152 + 104) = MEMORY[0x1E69E6370];
  *(v152 + 112) = v154;
  *(v152 + 120) = 0xD000000000000016;
  *(v152 + 128) = 0x80000001CA9B19F0;
  v155 = v235;
  *(v152 + 144) = v148;
  *(v152 + 152) = v155;
  v156 = sub_1CA94C438();
  v228 = v157;
  v158 = sub_1CA94C438();
  v160 = v159;
  v230 = &v225;
  MEMORY[0x1EEE9AC00](v158);
  v161 = &v225 - v249;
  sub_1CA948D98();
  v162 = [v248 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v225 - v246;
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v165 = sub_1CA2F9F14(v156, v228, v158, v160, 0, 0, v161, v163);
  *(v152 + 184) = v247;
  *(v152 + 160) = v165;
  sub_1CA94C1E8();
  *(v151 + 56) = sub_1CA2F864C();
  v166 = swift_allocObject();
  *(v166 + 16) = v239;
  *(v166 + 32) = v233;
  *(v166 + 40) = 0xD000000000000014;
  *(v166 + 48) = 0x80000001CA99B500;
  v167 = MEMORY[0x1E69E6158];
  v168 = v237;
  *(v166 + 64) = MEMORY[0x1E69E6158];
  *(v166 + 72) = v168;
  *(v166 + 80) = 1702129518;
  *(v166 + 88) = 0xE400000000000000;
  v169 = v234;
  *(v166 + 104) = v167;
  *(v166 + 112) = v169;
  *(v166 + 120) = v229;
  *(v166 + 128) = 0x80000001CA9B1A50;
  v170 = v235;
  *(v166 + 144) = v167;
  *(v166 + 152) = v170;
  v171 = sub_1CA94C438();
  *&v239 = v172;
  v173 = sub_1CA94C438();
  v175 = v174;
  v244 = &v225;
  MEMORY[0x1EEE9AC00](v173);
  v176 = &v225 - v249;
  sub_1CA948D98();
  v177 = [v248 bundleURL];
  MEMORY[0x1EEE9AC00](v177);
  v178 = &v225 - v246;
  sub_1CA948B68();

  v179 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 160) = sub_1CA2F9F14(v171, v239, v173, v175, 0, 0, v176, v178);
  v180 = v247;
  *(v166 + 184) = v247;
  *(v166 + 192) = @"Multiline";
  *(v166 + 200) = 1;
  v181 = v238;
  *(v166 + 224) = MEMORY[0x1E69E6370];
  *(v166 + 232) = v181;
  v182 = @"Multiline";
  v183 = sub_1CA94C438();
  v238 = v184;
  *&v239 = v183;
  v185 = sub_1CA94C438();
  v237 = v186;
  v244 = &v225;
  MEMORY[0x1EEE9AC00](v185);
  v187 = v249;
  sub_1CA948D98();
  v188 = v248;
  v189 = [v248 bundleURL];
  v235 = &v225;
  MEMORY[0x1EEE9AC00](v189);
  v190 = v246;
  sub_1CA948B68();

  v191 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 240) = sub_1CA2F9F14(v239, v238, v185, v237, 0, 0, &v225 - v187, &v225 - v190);
  v192 = v236;
  *(v166 + 264) = v180;
  *(v166 + 272) = v192;
  v193 = sub_1CA94C438();
  v238 = v194;
  *&v239 = v193;
  v195 = sub_1CA94C438();
  v197 = v196;
  v244 = &v225;
  MEMORY[0x1EEE9AC00](v195);
  sub_1CA948D98();
  v198 = [v188 bundleURL];
  MEMORY[0x1EEE9AC00](v198);
  sub_1CA948B68();

  v199 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v200 = sub_1CA2F9F14(v239, v238, v195, v197, 0, 0, &v225 - v187, &v225 - v190);
  *(v166 + 304) = v247;
  *(v166 + 280) = v200;
  sub_1CA94C1E8();
  v201 = sub_1CA2F864C();
  v202 = v241;
  *(v241 + 64) = v201;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v204 = v240;
  v240[35] = v202;
  v204[38] = v203;
  v204[39] = @"ParameterSummary";
  v205 = @"ParameterSummary";
  v206 = sub_1CA94C438();
  v208 = v207;
  v209 = sub_1CA94C438();
  v211 = v210;
  MEMORY[0x1EEE9AC00](v209);
  v212 = &v225 - v249;
  sub_1CA948D98();
  v213 = [v248 bundleURL];
  MEMORY[0x1EEE9AC00](v213);
  v214 = &v225 - v246;
  sub_1CA948B68();

  v215 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v216 = sub_1CA2F9F14(v206, v208, v209, v211, 0, 0, v212, v214);
  v217 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v218 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v219 = v240;
  v240[40] = v217;
  v219[43] = v218;
  v219[44] = @"RequiredResources";
  v220 = swift_allocObject();
  *(v220 + 16) = xmmword_1CA9813B0;
  v252 = 2;
  v253 = 1;
  v221 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v222 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v252);
  *(v220 + 32) = v223;
  v219[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v219[45] = v220;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3DD8E4()
{
  v270 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x70416E65704F4657;
  *(inited + 48) = 0xEF6E6F6974634170;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v282 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v283 = v12;
  v13 = &v264 - v282;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v284 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v285 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v281 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v264 - v281;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v279 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v280 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v277 = &v264;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v264 - v282;
  sub_1CA948D98();
  v31 = [v284 bundleURL];
  v278 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v264 - v281;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v33);
  *(v21 + 64) = v279;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v280;
  v37 = sub_1CA6B3784();
  v38 = v278;
  v278[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 0x6F6769646E49;
  v38[21] = 0xE600000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v38[28] = v39;
  v38[25] = 0xD000000000000010;
  v38[26] = 0x80000001CA9AC3B0;
  v40 = v38;
  v41 = @"IconColor";
  v42 = @"IconSymbol";
  v40[29] = sub_1CA94C368();
  v43 = MEMORY[0x1E69E6370];
  *(v40 + 240) = 1;
  v40[33] = v43;
  v40[34] = @"Name";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v47 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  v280 = &v264;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v264 - v282;
  sub_1CA948D98();
  v52 = v284;
  v53 = [v284 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v264 - v281;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v54);
  v57 = v279;
  v58 = v278;
  v278[35] = v56;
  v58[38] = v57;
  v58[39] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v59 = swift_initStackObject();
  v268 = xmmword_1CA981350;
  *(v59 + 16) = xmmword_1CA981350;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 0;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438();
  v277 = v62;
  v63 = sub_1CA94C438();
  v65 = v64;
  v280 = &v264;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v264 - v282;
  sub_1CA948D98();
  v67 = [v52 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v264 - v281;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v61, v277, v63, v65, 0, 0, v66, v68);
  *(v59 + 168) = v57;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 184) = 0xE500000000000000;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v59 + 216) = v269;
  *(v59 + 192) = &unk_1F49F8AF0;
  v70 = MEMORY[0x1E69E6158];
  v71 = sub_1CA94C1E8();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v73 = v278;
  v278[40] = v71;
  v73[43] = v72;
  v73[44] = @"Parameters";
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v277 = swift_allocObject();
  *(v277 + 1) = xmmword_1CA981470;
  v276 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1CA981370;
  *(v74 + 32) = @"AppSearchType";
  *(v74 + 40) = 0x7070416E65704FLL;
  *(v74 + 48) = 0xE700000000000000;
  *(v74 + 64) = v70;
  *(v74 + 72) = @"Class";
  *(v74 + 80) = 0xD000000000000014;
  *(v74 + 88) = 0x80000001CA99B070;
  *(v74 + 104) = v70;
  *(v74 + 112) = @"Key";
  strcpy((v74 + 120), "WFSelectedApp");
  *(v74 + 134) = -4864;
  *(v74 + 144) = v70;
  *(v74 + 152) = @"Label";
  v75 = @"Class";
  v76 = @"Key";
  v77 = @"Label";
  v78 = v75;
  v79 = v76;
  v80 = v77;
  v271 = v78;
  v274 = v79;
  v275 = v80;
  v81 = @"Parameters";
  v82 = @"AppSearchType";
  v83 = sub_1CA94C438();
  v85 = v84;
  v86 = sub_1CA94C438();
  v88 = v87;
  v273 = &v264;
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v264 - v282;
  sub_1CA948D98();
  v90 = [v284 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v264 - v281;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v83, v85, v86, v88, 0, 0, v89, v91);
  *(v74 + 184) = v279;
  *(v74 + 160) = v93;
  *(v74 + 192) = sub_1CA94C368();
  v94 = MEMORY[0x1E69E6370];
  *(v74 + 224) = MEMORY[0x1E69E6370];
  *(v74 + 200) = 1;
  _s3__C3KeyVMa_0(0);
  v273 = v95;
  v272 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v277[4] = sub_1CA2F864C();
  v96 = swift_initStackObject();
  *(v96 + 16) = v268;
  *(v96 + 32) = v271;
  *(v96 + 40) = 0xD000000000000014;
  *(v96 + 48) = 0x80000001CA99B500;
  v97 = MEMORY[0x1E69E6158];
  *(v96 + 64) = MEMORY[0x1E69E6158];
  *(v96 + 72) = @"Hidden";
  *(v96 + 80) = 1;
  v98 = v274;
  *(v96 + 104) = v94;
  *(v96 + 112) = v98;
  *(v96 + 120) = 0x6D614E7070414657;
  *(v96 + 128) = 0xE900000000000065;
  v99 = v275;
  *(v96 + 144) = v97;
  *(v96 + 152) = v99;
  v100 = @"Hidden";
  v101 = sub_1CA94C438();
  v103 = v102;
  v104 = sub_1CA94C438();
  v106 = v105;
  *&v268 = &v264;
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v264 - v282;
  sub_1CA948D98();
  v108 = [v284 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v264 - v281;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v101, v103, v104, v106, 0, 0, v107, v109);
  *(v96 + 184) = v279;
  *(v96 + 160) = v111;
  sub_1CA94C1E8();
  v277[5] = sub_1CA2F864C();
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_1CA981380;
  *(v112 + 32) = v271;
  *(v112 + 40) = 0xD000000000000016;
  *(v112 + 48) = 0x80000001CA99C4A0;
  v113 = MEMORY[0x1E69E6158];
  *(v112 + 64) = MEMORY[0x1E69E6158];
  *(v112 + 72) = @"DefaultValue";
  *(v112 + 80) = 0x726353206C6C7546;
  *(v112 + 88) = 0xEB000000006E6565;
  *(v112 + 104) = v113;
  *(v112 + 112) = @"RequiredResources";
  v114 = v112;
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_1CA9813B0;
  v286 = 1;
  v287 = 0;
  v116 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v117 = @"DefaultValue";
  v118 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v286);
  *(v115 + 32) = v119;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *&v268 = v114;
  v114[15] = v115;
  v114[18] = v120;
  v114[19] = @"Items";
  v280 = swift_allocObject();
  *(v280 + 1) = xmmword_1CA9858B0;
  v121 = @"Items";
  v122 = sub_1CA94C438();
  v266 = v123;
  v267 = v122;
  v124 = sub_1CA94C438();
  v265 = v125;
  v271 = &v264;
  MEMORY[0x1EEE9AC00](v124);
  v126 = v282;
  sub_1CA948D98();
  v127 = v284;
  v128 = [v284 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  v129 = &v264 - v281;
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v131 = sub_1CA2F9F14(v267, v266, v124, v265, 0, 0, &v264 - v126, v129);
  v132 = v280;
  v280[4] = v131;
  v133 = sub_1CA94C438();
  v266 = v134;
  v267 = v133;
  v265 = sub_1CA94C438();
  v136 = v135;
  v271 = &v264;
  MEMORY[0x1EEE9AC00](v265);
  sub_1CA948D98();
  v137 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  v138 = v281;
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v132[5] = sub_1CA2F9F14(v267, v266, v265, v136, 0, 0, &v264 - v126, &v264 - v138);
  v140 = sub_1CA94C438();
  v266 = v141;
  v267 = v140;
  v142 = sub_1CA94C438();
  v265 = v143;
  v271 = &v264;
  MEMORY[0x1EEE9AC00](v142);
  v144 = v282;
  sub_1CA948D98();
  v145 = v284;
  v146 = [v284 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v132[6] = sub_1CA2F9F14(v267, v266, v142, v265, 0, 0, &v264 - v144, &v264 - v138);
  v148 = sub_1CA94C438();
  v266 = v149;
  v267 = v148;
  v265 = sub_1CA94C438();
  v151 = v150;
  v271 = &v264;
  MEMORY[0x1EEE9AC00](v265);
  sub_1CA948D98();
  v152 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  v153 = v281;
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v155 = sub_1CA2F9F14(v267, v266, v265, v151, 0, 0, &v264 - v144, &v264 - v153);
  v156 = v280;
  v280[7] = v155;
  v157 = sub_1CA94C438();
  v266 = v158;
  v267 = v157;
  v159 = sub_1CA94C438();
  v265 = v160;
  v271 = &v264;
  MEMORY[0x1EEE9AC00](v159);
  v161 = v282;
  sub_1CA948D98();
  v162 = [v284 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  sub_1CA948B68();

  v163 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v156[8] = sub_1CA2F9F14(v267, v266, v159, v265, 0, 0, &v264 - v161, &v264 - v153);
  v164 = sub_1CA94C438();
  v266 = v165;
  v267 = v164;
  v166 = sub_1CA94C438();
  v265 = v167;
  v271 = &v264;
  MEMORY[0x1EEE9AC00](v166);
  v168 = &v264 - v161;
  sub_1CA948D98();
  v169 = v284;
  v170 = [v284 bundleURL];
  MEMORY[0x1EEE9AC00](v170);
  v171 = v153;
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v173 = sub_1CA2F9F14(v267, v266, v166, v265, 0, 0, v168, &v264 - v153);
  v174 = v280;
  v280[9] = v173;
  v175 = sub_1CA94C438();
  v266 = v176;
  v267 = v175;
  v177 = sub_1CA94C438();
  v265 = v178;
  v271 = &v264;
  MEMORY[0x1EEE9AC00](v177);
  v179 = v282;
  sub_1CA948D98();
  v180 = [v169 bundleURL];
  MEMORY[0x1EEE9AC00](v180);
  sub_1CA948B68();

  v181 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v174[10] = sub_1CA2F9F14(v267, v266, v177, v265, 0, 0, &v264 - v179, &v264 - v171);
  v182 = sub_1CA94C438();
  v266 = v183;
  v267 = v182;
  v184 = sub_1CA94C438();
  v265 = v185;
  v271 = &v264;
  MEMORY[0x1EEE9AC00](v184);
  v186 = &v264 - v179;
  sub_1CA948D98();
  v187 = v284;
  v188 = [v284 bundleURL];
  MEMORY[0x1EEE9AC00](v188);
  v189 = v281;
  sub_1CA948B68();

  v190 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v191 = sub_1CA2F9F14(v267, v266, v184, v265, 0, 0, v186, &v264 - v189);
  v192 = v280;
  v280[11] = v191;
  v193 = sub_1CA94C438();
  v266 = v194;
  v267 = v193;
  v195 = sub_1CA94C438();
  v265 = v196;
  v271 = &v264;
  MEMORY[0x1EEE9AC00](v195);
  v197 = v282;
  sub_1CA948D98();
  v198 = [v187 bundleURL];
  MEMORY[0x1EEE9AC00](v198);
  sub_1CA948B68();

  v199 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v192[12] = sub_1CA2F9F14(v267, v266, v195, v265, 0, 0, &v264 - v197, &v264 - v189);
  v200 = sub_1CA94C438();
  v266 = v201;
  v267 = v200;
  v202 = sub_1CA94C438();
  v265 = v203;
  v271 = &v264;
  MEMORY[0x1EEE9AC00](v202);
  v204 = v197;
  v205 = &v264 - v197;
  sub_1CA948D98();
  v206 = v284;
  v207 = [v284 bundleURL];
  v264 = &v264;
  MEMORY[0x1EEE9AC00](v207);
  v208 = v281;
  sub_1CA948B68();

  v209 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v210 = sub_1CA2F9F14(v267, v266, v202, v265, 0, 0, v205, &v264 - v208);
  v211 = v280;
  v280[13] = v210;
  v212 = sub_1CA94C438();
  v266 = v213;
  v267 = v212;
  v214 = sub_1CA94C438();
  v265 = v215;
  v271 = &v264;
  MEMORY[0x1EEE9AC00](v214);
  sub_1CA948D98();
  v216 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v216);
  sub_1CA948B68();

  v217 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v211[14] = sub_1CA2F9F14(v267, v266, v214, v265, 0, 0, &v264 - v204, &v264 - v208);
  v218 = sub_1CA94C438();
  v266 = v219;
  v267 = v218;
  v220 = sub_1CA94C438();
  v222 = v221;
  v271 = &v264;
  MEMORY[0x1EEE9AC00](v220);
  v223 = &v264 - v204;
  sub_1CA948D98();
  v224 = [v284 bundleURL];
  MEMORY[0x1EEE9AC00](v224);
  v225 = v281;
  sub_1CA948B68();

  v226 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v227 = sub_1CA2F9F14(v267, v266, v220, v222, 0, 0, v223, &v264 - v225);
  v228 = v280;
  v280[15] = v227;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v230 = v268;
  *(v268 + 160) = v228;
  v231 = v274;
  v230[23] = v229;
  v230[24] = v231;
  v230[25] = 0xD000000000000011;
  v230[26] = 0x80000001CA9B1E30;
  v232 = v275;
  v230[28] = MEMORY[0x1E69E6158];
  v230[29] = v232;
  v233 = sub_1CA94C438();
  v274 = v234;
  v275 = v233;
  v235 = sub_1CA94C438();
  v237 = v236;
  v280 = &v264;
  MEMORY[0x1EEE9AC00](v235);
  v238 = &v264 - v282;
  sub_1CA948D98();
  v239 = [v284 bundleURL];
  MEMORY[0x1EEE9AC00](v239);
  sub_1CA948B68();

  v240 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v241 = sub_1CA2F9F14(v275, v274, v235, v237, 0, 0, v238, &v264 - v225);
  v230[33] = v279;
  v230[30] = v241;
  sub_1CA94C1E8();
  v242 = sub_1CA2F864C();
  v243 = v277;
  v277[6] = v242;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v245 = v278;
  v278[45] = v243;
  v245[48] = v244;
  v245[49] = @"ParameterSummary";
  v246 = @"ParameterSummary";
  v247 = sub_1CA94C438();
  v249 = v248;
  v250 = sub_1CA94C438();
  v252 = v251;
  MEMORY[0x1EEE9AC00](v250);
  v253 = &v264 - v282;
  sub_1CA948D98();
  v254 = [v284 bundleURL];
  MEMORY[0x1EEE9AC00](v254);
  v255 = &v264 - v281;
  sub_1CA948B68();

  v256 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v257 = sub_1CA2F9F14(v247, v249, v250, v252, 0, 0, v253, v255);
  v258 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v259 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v260 = v278;
  v278[50] = v258;
  v260[53] = v259;
  v260[54] = @"RequiredResources";
  v260[55] = &unk_1F49F8B20;
  v260[58] = v269;
  v260[59] = @"RequiresUnlock";
  v260[63] = MEMORY[0x1E69E6370];
  *(v260 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v261 = @"RequiredResources";
  v262 = @"RequiresUnlock";
  sub_1CA94C1E8();
  return sub_1CA332510();
}