uint64_t sub_1DD3EC974@<X0>(void (*a1)(uint64_t *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v11 = a2;

    a1(&v11);
    if (v4)
    {

      __break(1u);
    }

    else
    {

      v8 = a3(0);
      return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
    }
  }

  else
  {
    v10 = a3(0);
    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v10);
  }

  return result;
}

void sub_1DD3ECA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v21;
  a20 = v22;
  a10 = v23;
  v25 = v24;
  v26 = type metadata accessor for Contact();
  v27 = OUTLINED_FUNCTION_7(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC268, &qword_1DD64CE00);
  OUTLINED_FUNCTION_3(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  OUTLINED_FUNCTION_77();
  sub_1DD3EB3D0(v39, v40, v41, v42);
  v43 = 1;
  OUTLINED_FUNCTION_8(v38, 1, v26);
  if (v44)
  {
    goto LABEL_4;
  }

  sub_1DD3FAE44(v38, v32);
  a10(v32);
  if (!v20)
  {
    OUTLINED_FUNCTION_37_5();
    sub_1DD3FA798(v32, v45);
    v43 = 0;
LABEL_4:
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
    __swift_storeEnumTagSinglePayload(v25, v43, 1, v46);
    OUTLINED_FUNCTION_86();
    return;
  }

  sub_1DD3FA798(v32, type metadata accessor for Contact);
  __break(1u);
}

uint64_t sub_1DD3ECBDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v6 >= v5)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v35 = MEMORY[0x1E69E7CC0];
  sub_1DD42B404(0, v7, 0);
  result = v35;
  v29 = a2;
  v31 = v6;
  v27 = v7;
  v28 = v5;
  v26 = a1;
  if (v7)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 32);
    while (v5)
    {
      if (!v6)
      {
        goto LABEL_26;
      }

      v11 = result;
      v33 = v9;
      v12 = *v9;
      v13 = *v10;

      v14 = a3(v12, v13);
      if (v34)
      {
      }

      v15 = v14;

      result = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1DD42B404((v16 > 1), v17 + 1, 1);
        result = v11;
      }

      --v6;
      *(result + 16) = v17 + 1;
      *(result + 8 * v17 + 32) = v15;
      --v5;
      ++v10;
      v9 = v33 + 1;
      if (!--v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_12:
    v18 = v27;
    v30 = v29 + 32;
    while (v28 != v18)
    {
      if (v18 >= v28)
      {
        goto LABEL_27;
      }

      if (__OFADD__(v18, 1))
      {
        goto LABEL_28;
      }

      if (v31 == v18)
      {
        return result;
      }

      if (v18 >= v31)
      {
        goto LABEL_29;
      }

      v19 = result;
      v20 = *(v26 + 32 + 8 * v18);
      v21 = *(v30 + 8 * v18);

      v22 = a3(v20, v21);
      if (v34)
      {
      }

      v23 = v22;

      result = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1DD42B404((v24 > 1), v25 + 1, 1);
        result = v19;
      }

      *(result + 16) = v25 + 1;
      *(result + 8 * v25 + 32) = v23;
      ++v18;
    }
  }

  return result;
}

uint64_t sub_1DD3ECE74(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a3 + 16);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = *(a3 + 16);
  }

  else
  {
    v10 = *(a4 + 16);
  }

  v37 = MEMORY[0x1E69E7CC0];
  sub_1DD42B404(0, v10, 0);
  result = v37;
  v30 = v9;
  v31 = v8;
  v28 = a4;
  v29 = v10;
  v27 = a3;
  if (v10)
  {
    v12 = (a3 + 32);
    v13 = (a4 + 32);
    v14 = v10;
    while (v8)
    {
      if (!v9)
      {
        goto LABEL_26;
      }

      v15 = result;
      v16 = *v13;
      v34 = *v12;
      v35 = v16;

      a1(&v36, &v34, &v33);
      if (v5)
      {
      }

      v17 = v36;
      result = v15;
      v37 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DD42B404((v18 > 1), v19 + 1, 1);
        result = v37;
      }

      --v9;
      *(result + 16) = v19 + 1;
      *(result + 8 * v19 + 32) = v17;
      --v8;
      ++v13;
      ++v12;
      --v14;
      v5 = 0;
      if (!v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_12:
    for (i = v29; v31 != i; i = v23 + 1)
    {
      if (i >= v31)
      {
        goto LABEL_27;
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_28;
      }

      if (v30 == i)
      {
        return result;
      }

      if (i >= v30)
      {
        goto LABEL_29;
      }

      v21 = result;
      v22 = *(v28 + 32 + 8 * i);
      v34 = *(v27 + 32 + 8 * i);
      v35 = v22;

      a1(&v36, &v34, &v33);
      if (v5)
      {
      }

      v5 = 0;
      v23 = i;

      v24 = v36;
      result = v21;
      v37 = v21;
      v25 = *(v21 + 16);
      v26 = *(result + 24);
      if (v25 >= v26 >> 1)
      {
        sub_1DD42B404((v26 > 1), v25 + 1, 1);
        result = v37;
      }

      *(result + 16) = v25 + 1;
      *(result + 8 * v25 + 32) = v24;
    }
  }

  return result;
}

void sub_1DD3ED110()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v184 = v4;
  v5 = type metadata accessor for ContactResolverCache();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v183 = v9;
  v10 = OUTLINED_FUNCTION_6_2();
  v192 = type metadata accessor for ContactResolverConfig(v10);
  v11 = OUTLINED_FUNCTION_7(v192);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v182 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1F8, &qword_1DD645948);
  OUTLINED_FUNCTION_3(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_7_3();
  v179 = v19;
  OUTLINED_FUNCTION_6_2();
  v180 = type metadata accessor for StringTokenizer();
  v20 = OUTLINED_FUNCTION_7(v180);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v181 = v23;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_0();
  v178 = v25;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_16_3();
  v190 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1F0, &qword_1DD645940);
  OUTLINED_FUNCTION_3(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_7_3();
  v193 = v32;
  OUTLINED_FUNCTION_6_2();
  v33 = sub_1DD63D168();
  v34 = OUTLINED_FUNCTION_0(v33);
  v196 = v35;
  v197 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_1();
  v177 = v38;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_0();
  v176 = v40;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v173 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1E0, &qword_1DD645930);
  OUTLINED_FUNCTION_3(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v173 - v48;
  v198 = type metadata accessor for CandidateContactGenerator(0);
  v50 = OUTLINED_FUNCTION_7(v198);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_2();
  v56 = v55 - v54;
  *(v55 - v54 + *(v53 + 56)) = 2;
  v57 = v3[1];
  if (v57)
  {
    v53 = sub_1DD58244C(v206);
    v57 = v206[0];
  }

  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_31_0();
  *(v58 - 16) = v3;
  sub_1DD3EC974(sub_1DD3FAD3C, v57, type metadata accessor for HypocorismGenerator, v49);

  sub_1DD3EB4B8(v49, v56, &qword_1ECCDC1E0, &qword_1DD645930);
  v59 = *(v3 + v5[11]);
  v191 = v5;
  v195 = v1;
  if (v59)
  {
    v60 = v59;
    v61 = [v60 contactRelations];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC248, &qword_1DD657600);
    v62 = sub_1DD640118();

    v63 = sub_1DD3CC020(v62);

    if (v63)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v64 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v64, qword_1EE16F068);
      v65 = sub_1DD63F9D8();
      v66 = sub_1DD640368();
      v67 = OUTLINED_FUNCTION_27_5();
      if (os_log_type_enabled(v67, v68))
      {
        OUTLINED_FUNCTION_28();
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_1DD38D000, v65, v66, "CandidateContactGenerator::init - meCard found in cache with valid contact relations set", v69, 2u);
        v1 = v195;
        v5 = v191;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      v70 = v198;
      v71 = v198[5];
      (*(v196 + 16))(v43, v1 + *(v192 + 32), v197);
      sub_1DD5146A4(v60, v43, (v56 + v71));
      v72 = type metadata accessor for MeCardContactGenerator();
      v73 = v56 + v71;
      v74 = 0;
      goto LABEL_16;
    }
  }

  v70 = v198;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v75 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v75, qword_1EE16F068);
  v76 = sub_1DD63F9D8();
  v77 = sub_1DD640368();
  v78 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v78, v79))
  {
    OUTLINED_FUNCTION_28();
    v80 = swift_slowAlloc();
    OUTLINED_FUNCTION_13_4(v80);
    _os_log_impl(&dword_1DD38D000, v76, v77, "CandidateContactGenerator::init - meCard not found in cache or did not have valid contact relations set", v70, 2u);
    v70 = v198;
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v81 = v70[5];
  v72 = type metadata accessor for MeCardContactGenerator();
  v73 = v56 + v81;
  v74 = 1;
LABEL_16:
  v82 = __swift_storeEnumTagSinglePayload(v73, v74, 1, v72);
  v83 = *v3;
  if (*v3)
  {
    v82 = sub_1DD58244C(v206);
    v83 = v206[0];
  }

  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_31_0();
  *(v84 - 16) = v1;
  *(v84 - 8) = v3;
  v85 = v193;
  sub_1DD3EC974(sub_1DD3FAD58, v83, type metadata accessor for RelationshipAliasGenerator, v193);

  sub_1DD3EB4B8(v85, v56 + v70[6], &qword_1ECCDC1F0, &qword_1DD645940);
  *(v56 + v70[8]) = *(v3 + v5[17]);
  v86 = (v3 + v5[16]);
  v87 = *v86;
  if (*v86)
  {
    v88 = v86[1];
    v89 = *v86;
  }

  else
  {
    v88 = 0;
  }

  v173 = v43;
  v90 = (v56 + v70[7]);
  *v90 = v87;
  v90[1] = v88;
  v188 = v5[8];
  sub_1DD3C2388(v3 + v188, v206);
  v193 = v5[15];
  v91 = v190;
  sub_1DD3FA93C(v3 + v193, v190);
  v92 = v5;
  v93 = *(v196 + 16);
  v185 = *(v192 + 32);
  v186 = v93;
  v94 = v176;
  v187 = v196 + 16;
  v93(v176, v195 + v185, v197);
  v175 = v3 + v92[7];
  v189 = v175[5];
  v95 = v56 + v70[9];
  sub_1DD3C2388(v206, v95);
  v192 = type metadata accessor for ContactsFrameworkMatcher();
  sub_1DD3FA93C(v91, v95 + *(v192 + 20));

  v96 = sub_1DD4F9BB8();
  v194 = v3;
  v97 = v56;
  if ((v96 & 1) == 0)
  {
    v98 = sub_1DD63D118();
    OUTLINED_FUNCTION_117(v98, v99);
    *&v200 = 24938;
    *(&v200 + 1) = 0xE200000000000000;
    sub_1DD3B52B8();
    sub_1DD3B530C();
    OUTLINED_FUNCTION_48_2();
    sub_1DD63FD48();
    OUTLINED_FUNCTION_105_0();
    v70 = v198;
    if ((v94 & 1) == 0)
    {
      v100 = sub_1DD63D118();
      OUTLINED_FUNCTION_117(v100, v101);
      *&v200 = 28523;
      *(&v200 + 1) = 0xE200000000000000;
      OUTLINED_FUNCTION_48_2();
      sub_1DD63FD48();
      OUTLINED_FUNCTION_105_0();
    }
  }

  v102 = v197;
  v103 = *(v196 + 8);
  v196 += 8;
  v176 = v103;
  v103(v94, v197);
  OUTLINED_FUNCTION_38_3();
  sub_1DD3FA798(v190, v104);
  __swift_destroy_boxed_opaque_existential_1(v206);
  v105 = v191;
  OUTLINED_FUNCTION_69_0();
  v106 = v194;
  v190 = *(v194 + v105[12]);
  v107 = v70[10];
  v174 = v97;
  v108 = v97 + v107;
  v109 = type metadata accessor for ThirdPartyContactMatcher(0);
  v110 = v193;
  sub_1DD3FA93C(v106 + v193, v108 + *(v109 + 20));
  v111 = v195;
  v112 = v185;
  v113 = v102;
  v114 = v186;
  v186(v108, v195 + v185, v113);
  *(v108 + *(type metadata accessor for SiriVocabularySearcher(0) + 20)) = v190;
  sub_1DD3C2388(v106 + v105[9], v206);
  v115 = v106 + v110;
  v116 = v174;
  v117 = v178;
  sub_1DD3FA93C(v115, v178);
  v118 = v177;
  v114(v177, v111 + v112, v197);
  v119 = v116 + v198[13];
  sub_1DD3C2388(v206, v119);
  sub_1DD3FA93C(v117, v119 + *(v192 + 20));
  v120 = v190;
  if (sub_1DD4F9BB8())
  {
    v121 = v194;
    v122 = v195;
  }

  else
  {
    v123 = sub_1DD63D118();
    OUTLINED_FUNCTION_117(v123, v124);
    *&v200 = 24938;
    *(&v200 + 1) = 0xE200000000000000;
    sub_1DD3B52B8();
    sub_1DD3B530C();
    OUTLINED_FUNCTION_48_2();
    sub_1DD63FD48();
    OUTLINED_FUNCTION_105_0();
    if ((v118 & 1) == 0)
    {
      v125 = sub_1DD63D118();
      OUTLINED_FUNCTION_117(v125, v126);
      *&v200 = 28523;
      *(&v200 + 1) = 0xE200000000000000;
      OUTLINED_FUNCTION_48_2();
      sub_1DD63FD48();
      OUTLINED_FUNCTION_105_0();
    }

    v121 = v194;
    v122 = v195;
  }

  v127 = v197;
  v176(v118, v197);
  OUTLINED_FUNCTION_38_3();
  sub_1DD3FA798(v117, v128);
  __swift_destroy_boxed_opaque_existential_1(v206);
  OUTLINED_FUNCTION_69_0();
  v129 = v175;
  v130 = v122;
  if (v175[2])
  {
    v131 = v173;
    v186(v173, v122 + v185, v127);
    OUTLINED_FUNCTION_5_14();
    v132 = v181;
    sub_1DD3FA93C(v121 + v193, v181);
    v133 = v179;
    sub_1DD4BE010(v131, v132, v179);
    v134 = 0;
    v135 = v191;
  }

  else
  {
    v134 = 1;
    v135 = v191;
    v132 = v181;
    v133 = v179;
  }

  Expander = type metadata accessor for EmojiQueryExpander();
  __swift_storeEnumTagSinglePayload(v133, v134, 1, Expander);
  sub_1DD3EB4B8(v133, v116 + v198[15], &qword_1ECCDC1F8, &qword_1DD645948);
  v137 = v116;
  if (v129[6] == 1)
  {
    v138 = v194;
    sub_1DD3C2388(v194 + v135[10], v206);
    sub_1DD3C2388(v138 + v188, &v206[5]);
  }

  else
  {
    memset(v206, 0, 80);
    v138 = v194;
  }

  v139 = v198;
  v197 = v198[22];
  memcpy((v137 + v198[11]), v206, 0x50uLL);
  v140 = v182;
  sub_1DD3FA93C(v130, v182);
  OUTLINED_FUNCTION_5_14();
  v196 = v141;
  v142 = v193;
  sub_1DD3FA93C(v138 + v193, v132);
  *(&v204 + 1) = v180;
  *&v205[0] = &off_1F58C2FE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v203);
  sub_1DD3FAE44(v132, boxed_opaque_existential_1);
  v144 = type metadata accessor for CandidateContactDeduplicator();
  v145 = *(v144 + 48);
  v146 = *(v144 + 52);
  v147 = swift_allocObject();
  sub_1DD3FAE44(v140, v147 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_config);
  sub_1DD3AA4A8(&v203, v147 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_tokenizer);
  *(v137 + v139[17]) = v147;
  v148 = v183;
  sub_1DD3FA93C(v138, v183);
  sub_1DD3FA93C(v130, v140);
  v149 = v140;
  v150 = v197;
  sub_1DD3EE2E0(v148, v149, v137 + v139[18]);
  sub_1DD3FA93C(v138 + v142, v137 + v139[12]);
  sub_1DD3FA84C(v138 + v135[25], v137 + v139[19]);
  *(v137 + v139[20]) = *(v138 + v135[26]);
  v151 = (v138 + v135[27]);
  v152 = v151[1];
  v203 = *v151;
  v204 = v152;
  v154 = *v151;
  v153 = v151[1];
  v205[0] = v151[2];
  *(v205 + 9) = *(v151 + 41);
  v155 = (v137 + v139[21]);
  v156 = v203;
  *v155 = v154;
  v155[1] = v153;
  v155[2] = v151[2];
  *(v155 + 41) = *(v151 + 41);
  v157 = *(v138 + v135[22]);
  *(v137 + v139[23]) = v157;
  v158 = *(v138 + v135[21]);
  v159 = v139[24];
  v160 = v137;
  *(v137 + v159) = v158;
  *(v137 + v150) = 0;
  if (v156 == 1)
  {
    if (v157 && v158)
    {
      type metadata accessor for E3Orchestrator();
      OUTLINED_FUNCTION_18_9();
      v161 = swift_allocObject();
      *(v161 + 16) = v157;
      *(v161 + 24) = v158;
      *(v137 + v150) = v161;
      swift_retain_n();
      swift_retain_n();
      sub_1DD3FAD78(&v203, &v200);
    }

    else
    {
      type metadata accessor for EuclidVectorDb();
      OUTLINED_FUNCTION_18_9();
      swift_allocObject();

      sub_1DD3FAD78(&v203, &v200);
      v162 = sub_1DD4B97D4();
      type metadata accessor for EuclidEmbeddingApi();
      OUTLINED_FUNCTION_57();
      swift_allocObject();
      v163 = sub_1DD4BA174();
      type metadata accessor for E3Orchestrator();
      OUTLINED_FUNCTION_18_9();
      v161 = swift_allocObject();
      *(v161 + 16) = v162;
      *(v161 + 24) = v163;
      *(v137 + v150) = v161;
    }
  }

  else
  {

    sub_1DD3FAD78(&v203, &v200);
    v161 = 0;
  }

  v164 = v137 + v198[16];
  OUTLINED_FUNCTION_5_14();
  v165 = v194;
  sub_1DD3FA93C(v194 + v193, v164);
  v166 = type metadata accessor for AsrE3CandidateExpander();
  sub_1DD3C2388(v165 + v188, v164 + v166[5]);
  v167 = v151[2];
  v201 = v151[1];
  v168 = v201;
  v202[0] = v167;
  *(v202 + 9) = *(v151 + 41);
  v169 = *(v202 + 9);
  v200 = *v151;
  v170 = v166[7];
  v171 = (v164 + v166[6]);
  *v171 = v200;
  v171[1] = v168;
  v171[2] = v167;
  *(v171 + 41) = v169;
  *(v164 + v170) = v161;
  sub_1DD3FA93C(v160, v184);
  sub_1DD3FAD78(&v200, &v199);

  OUTLINED_FUNCTION_39_2();
  sub_1DD3FA798(v195, v172);
  OUTLINED_FUNCTION_43_3();
  sub_1DD3FA798(v160, type metadata accessor for CandidateContactGenerator);
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD3EE01C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *(type metadata accessor for ContactResolverCache() + 60);
  v7 = type metadata accessor for HypocorismGenerator();
  sub_1DD3FA93C(a2 + v6, a3 + *(v7 + 20));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC260, &unk_1DD645B20);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  result = sub_1DD627AE8(v11);
  *a3 = result;
  return result;
}

uint64_t sub_1DD3EE0C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_1DD63D168();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = type metadata accessor for ContactResolverConfig(0);
  (*(v9 + 16))(v12, a2 + *(v14 + 32), v8);
  v15 = *(type metadata accessor for ContactResolverCache() + 60);
  v16 = type metadata accessor for RelationshipAliasGenerator();
  sub_1DD3FA93C(a3 + v15, a4 + *(v16 + 24));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC258, &qword_1DD645B18);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  *a4 = sub_1DD627AE8(v20);
  v26[4] = sub_1DD63D118();
  v26[5] = v21;
  v26[2] = 45;
  v26[3] = 0xE100000000000000;
  v26[0] = 95;
  v26[1] = 0xE100000000000000;
  sub_1DD3B7F10();
  sub_1DD640678();

  v22 = sub_1DD63FE58();
  v24 = v23;

  result = (*(v9 + 8))(v12, v8);
  a4[1] = v22;
  a4[2] = v24;
  return result;
}

uint64_t sub_1DD3EE2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = type metadata accessor for SiriRemembersContactSignalProvider();
  v5 = OUTLINED_FUNCTION_7(v50);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = sub_1DD63F308();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  OUTLINED_FUNCTION_6_2();
  v19 = type metadata accessor for ContactResolverCache();
  v20 = v19[15];
  OUTLINED_FUNCTION_5_14();
  sub_1DD3FA93C(a1 + v21, a3);
  v51 = a1;
  v22 = *(a1 + v19[11]);
  if (v22)
  {
    v23 = v22;
    v24 = [v23 identifier];
    v25 = sub_1DD63FDD8();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v47 = type metadata accessor for ContactSignalProviders(0);
  v49 = a3;
  v28 = (a3 + v47[5]);
  *v28 = v25;
  v28[1] = v27;
  v29 = *(v14 + 16);
  v29(v18, v51 + v19[6], v11);
  v44 = *a2;
  v45 = *(a2 + *(type metadata accessor for ContactResolverConfig(0) + 52));
  sub_1DD3EB3D0(v51 + v19[30], v52, &qword_1ECCDC250, &qword_1DD645B10);
  v30 = *(a2 + 16);
  v46 = *(a2 + 8);
  v31 = v10 + v50[7];
  *(v31 + 32) = 0;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  v29(v10, v18, v11);
  *(v10 + v50[5]) = v44;

  OUTLINED_FUNCTION_39_2();
  sub_1DD3FA798(a2, v32);
  (*(v14 + 8))(v18, v11);
  v33 = (v10 + v50[6]);
  if (v45 == 4)
  {
    v34 = xmmword_1DD6458E0;
  }

  else
  {
    if (v45 != 1)
    {
      *v33 = 0;
      v33[1] = 0;
      goto LABEL_10;
    }

    v34 = xmmword_1DD6458F0;
  }

  *v33 = v34;
LABEL_10:
  v35 = v30;
  v36 = v47[6];
  v37 = (v10 + v50[8]);
  sub_1DD3FADD4(v52, v31);
  *v37 = v46;
  v37[1] = v35;
  sub_1DD3FAE44(v10, v49 + v36);
  *(v49 + v47[7]) = *(v51 + v19[13]);
  v38 = (v51 + v19[28]);
  v39 = *v38;
  LOBYTE(v36) = v38[1];
  v40 = v38[2];
  v41 = *(v38 + 1);

  result = OUTLINED_FUNCTION_43_3();
  v43 = v49 + v47[8];
  *v43 = v39;
  *(v43 + 1) = v36;
  *(v43 + 2) = v40;
  *(v43 + 8) = v41;
  return result;
}

void sub_1DD3EE620()
{
  OUTLINED_FUNCTION_93();
  v811 = v1;
  v792 = v0;
  v772 = v2;
  v789 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1E8, &qword_1DD645938);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_3();
  v763 = v8;
  OUTLINED_FUNCTION_6_2();
  v762 = type metadata accessor for MeCardContactGenerator();
  v9 = OUTLINED_FUNCTION_0(v762);
  v748 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v765 = v739 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_3();
  v749 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16_3();
  v764 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16_3();
  v747 = v19;
  v750 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_16_3();
  v780 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1F0, &qword_1DD645940);
  OUTLINED_FUNCTION_3(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_7_3();
  v761 = v27;
  OUTLINED_FUNCTION_6_2();
  v769 = type metadata accessor for RelationshipAliasGenerator();
  v28 = OUTLINED_FUNCTION_7(v769);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1();
  v779 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1F8, &qword_1DD645948);
  OUTLINED_FUNCTION_3(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_7_3();
  v777 = v36;
  OUTLINED_FUNCTION_6_2();
  Expander = type metadata accessor for EmojiQueryExpander();
  v37 = OUTLINED_FUNCTION_7(Expander);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1();
  v778 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC200, &qword_1DD645998);
  v42 = OUTLINED_FUNCTION_3(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_1();
  v758 = v45;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_16_3();
  v773 = v47;
  v801 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v48 = OUTLINED_FUNCTION_0(v801);
  v802 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_1();
  v754 = v52;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_18_0();
  v746 = v54;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_18_0();
  v797 = v56;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_18_0();
  v753 = v58;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_18_0();
  v752 = v60;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_16_3();
  v799 = v62;
  OUTLINED_FUNCTION_6_2();
  v783 = sub_1DD63F9C8();
  v63 = OUTLINED_FUNCTION_0(v783);
  v786 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_2_1();
  v744 = v67;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_18_0();
  v760 = v69;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_16_3();
  v800 = v71;
  OUTLINED_FUNCTION_6_2();
  v72 = type metadata accessor for Signpost();
  v73 = OUTLINED_FUNCTION_7(v72);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_2_1();
  v740 = v76;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_18_0();
  v741 = v78;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_18_0();
  v775 = v80;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_18_0();
  v771 = v82;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_18_0();
  v770 = v84;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_18_0();
  v768 = v86;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_18_0();
  v767 = v88;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_18_0();
  v776 = v90;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v91);
  v93 = v739 - v92;
  if (qword_1EE166460 != -1)
  {
LABEL_290:
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v94 = qword_1EE16F0C0;
  v95 = v93 + *(v72 + 20);
  *v95 = "ContactResolver.CandidateContactGenerator.generate";
  *(v95 + 8) = 50;
  *(v95 + 16) = 2;
  v96 = v94;
  sub_1DD63F9B8();
  v787 = v72;
  *(v93 + *(v72 + 24)) = v96;
  v97 = v96;
  sub_1DD6404D8();
  v794 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v98 = swift_allocObject();
  v785 = xmmword_1DD643F90;
  *(v98 + 16) = xmmword_1DD643F90;
  v99 = sub_1DD6408F8();
  v101 = v100;
  *(v98 + 56) = MEMORY[0x1E69E6158];
  v795 = sub_1DD392BD8();
  *(v98 + 64) = v795;
  *(v98 + 32) = v99;
  *(v98 + 40) = v101;
  v738 = v98;
  v737 = 2;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_119();
  v759 = v93;
  sub_1DD63F998();

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v102 = sub_1DD63F9F8();
  v103 = __swift_project_value_buffer(v102, qword_1EE16F068);
  v104 = v772;

  v796 = v103;
  v105 = sub_1DD63F9D8();
  v106 = sub_1DD640368();
  v107 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = OUTLINED_FUNCTION_54();
    *v109 = 134217984;
    *(v109 + 4) = *(v104 + 16);

    _os_log_impl(&dword_1DD38D000, v105, v106, "generating matches from %ld queries", v109, 0xCu);
    v110 = OUTLINED_FUNCTION_15_10();
    MEMORY[0x1E12B3DA0](v110);
  }

  else
  {
  }

  v111 = v800;
  v112 = v97;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  OUTLINED_FUNCTION_23_5();
  v113 = swift_allocObject();
  *(v113 + 16) = v785;
  v114 = 2;
  v115 = sub_1DD6408F8();
  v116 = v795;
  *(v113 + 56) = MEMORY[0x1E69E6158];
  *(v113 + 64) = v116;
  *(v113 + 32) = v115;
  *(v113 + 40) = v117;
  v738 = v113;
  v737 = 2;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_80();
  sub_1DD63F998();

  sub_1DD3F336C(v789, v810);
  if (v811)
  {
    goto LABEL_292;
  }

  sub_1DD6404C8();
  OUTLINED_FUNCTION_80();
  sub_1DD63F9A8();
  v118 = *(v786 + 8);
  v786 += 8;
  v774 = v118;
  v118(v111, v783);
  v119 = *&v810[0];

  v120 = sub_1DD63F9D8();
  v121 = sub_1DD640368();

  v122 = os_log_type_enabled(v120, v121);
  v123 = &qword_1DD643000;
  v782 = v119;
  v788 = v112;
  if (v122)
  {
    v124 = OUTLINED_FUNCTION_54();
    v800 = OUTLINED_FUNCTION_62();
    *&v810[0] = v800;
    *v124 = 136315138;
    swift_getKeyPath();
    v125 = *(v119 + 16);
    if (v125)
    {
      v793 = v124;
      LODWORD(v798) = v121;
      *&v809[0] = MEMORY[0x1E69E7CC0];
      sub_1DD42B97C();
      v126 = *&v809[0];
      v127 = (v119 + 32);
      do
      {
        v806 = *v127;

        OUTLINED_FUNCTION_89();
        swift_getAtKeyPath();

        v128 = *&v803[0];
        *&v809[0] = v126;
        OUTLINED_FUNCTION_47_2();
        if (v130)
        {
          OUTLINED_FUNCTION_12_11(v129);
          OUTLINED_FUNCTION_57_2();
          sub_1DD42B97C();
          v126 = *&v809[0];
        }

        OUTLINED_FUNCTION_114();
        *(v131 + 32) = v128;
        ++v127;
        --v125;
      }

      while (v125);

      LOBYTE(v121) = v798;
      v124 = v793;
    }

    else
    {

      v126 = MEMORY[0x1E69E7CC0];
    }

    v114 = MEMORY[0x1E12B2430](v126, MEMORY[0x1E69E6530]);
    v134 = v133;

    v135 = OUTLINED_FUNCTION_87_0();
    v137 = sub_1DD39565C(v135, v134, v136);

    *(v124 + 4) = v137;
    _os_log_impl(&dword_1DD38D000, v120, v121, "queries after initial expanders: %s", v124, 0xCu);
    v123 = v800;
    __swift_destroy_boxed_opaque_existential_1(v800);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    v138 = OUTLINED_FUNCTION_10_2();
    MEMORY[0x1E12B3DA0](v138);

    v132 = v792;
    v111 = v788;
  }

  else
  {
    v111 = v112;

    v132 = v792;
  }

  OUTLINED_FUNCTION_57();
  v139 = swift_allocObject();
  v791 = v139;
  *(v139 + 16) = v782;
  v140 = (v139 + 16);
  OUTLINED_FUNCTION_57();
  v141 = swift_allocObject();
  v781 = v141;
  *(v141 + 16) = MEMORY[0x1E69E7CC0];
  v757 = (v141 + 16);
  v142 = type metadata accessor for CandidateContactGenerator(0);
  v143 = *(v132 + *(v142 + 32));
  v790 = v142;
  v793 = v140;
  if (v143)
  {
    OUTLINED_FUNCTION_85_0();
    v144 = v776;
    OUTLINED_FUNCTION_16_6(v776 + v145);
    v146 = v111;

    v798 = v143;

    sub_1DD63F9B8();
    *(v144 + *(v114 + 24)) = v146;
    v147 = v146;
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v148 = swift_allocObject();
    OUTLINED_FUNCTION_52_2(v148);
    v149 = sub_1DD6408F8();
    v150 = v795;
    v148[7] = MEMORY[0x1E69E6158];
    v148[8] = v150;
    v148[4] = v149;
    v148[5] = v151;
    OUTLINED_FUNCTION_97();
    OUTLINED_FUNCTION_9_8();
    v745 = v147;
    OUTLINED_FUNCTION_98();
    sub_1DD63F998();
    OUTLINED_FUNCTION_104_0();
    v152 = sub_1DD63F9D8();
    sub_1DD640368();
    v153 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v153, v154))
    {
      OUTLINED_FUNCTION_28();
      v155 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_4(v155);
      OUTLINED_FUNCTION_29_3();
      _os_log_impl(v156, v157, v158, v159, v160, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v161 = *v793;
    v162 = *(*v793 + 16);
    v163 = *v793 + 32;

    v164 = 0;
    v114 = MEMORY[0x1E69E7CC0];
    p_isa = &v773->isa;
    v756 = v161;
    v742 = v163;
    v743 = v162;
    while (v164 != v162)
    {
      sub_1DD408C00(v164, 1, v161);
      v166 = *(v163 + 8 * v164);
      v751 = v164;
      v755 = v164 + 1;
      v800 = *(v166 + 16);

      v167 = 0;
      v784 = v114;
      while (1)
      {
        v168 = v799;
        if (v800 == v167)
        {
          break;
        }

        if (v167 >= *(v166 + 16))
        {
          __break(1u);
          goto LABEL_220;
        }

        OUTLINED_FUNCTION_107();
        v114 = v170 & ~v169;
        v147 = *(v171 + 72);
        v111 = &qword_1ECCDBC18;
        sub_1DD3EB3D0(v166 + v114 + v147 * v167, v168, &qword_1ECCDBC18, &unk_1DD6459A0);
        sub_1DD53C3D8(v168, p_isa);
        sub_1DD390754(v168, &qword_1ECCDBC18, &unk_1DD6459A0);
        OUTLINED_FUNCTION_8(p_isa, 1, v801);
        if (v172)
        {
          sub_1DD390754(p_isa, &qword_1ECCDC200, &qword_1DD645998);
          ++v167;
        }

        else
        {
          OUTLINED_FUNCTION_77();
          sub_1DD3EB4B8(v173, v174, v175, v176);
          v177 = v753;
          OUTLINED_FUNCTION_77();
          sub_1DD3EB4B8(v178, v179, v180, v181);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v186 = *(v784 + 16);
            OUTLINED_FUNCTION_26_2();
            sub_1DD3BF7FC();
            v784 = v187;
          }

          v184 = *(v784 + 16);
          v183 = *(v784 + 24);
          v111 = v184 + 1;
          if (v184 >= v183 >> 1)
          {
            OUTLINED_FUNCTION_1_0(v183);
            sub_1DD3BF7FC();
            v784 = v188;
          }

          ++v167;
          v185 = v784;
          *(v784 + 16) = v111;
          sub_1DD3EB4B8(v177, v185 + v114 + v184 * v147, &qword_1ECCDBC18, &unk_1DD6459A0);
          p_isa = &v773->isa;
        }
      }

      v189 = v784;
      if (*(v784 + 16))
      {
        v190 = v793;
        sub_1DD58691C();
        sub_1DD587178(v751, *v190);
        sub_1DD607914(v189);
      }

      else
      {
      }

      v164 = v755;
      v161 = v756;
      v114 = MEMORY[0x1E69E7CC0];
      v163 = v742;
      v162 = v743;
    }

    v567 = v796;
    v568 = sub_1DD63F9D8();
    sub_1DD640368();
    OUTLINED_FUNCTION_115();
    if (os_log_type_enabled(v568, v569))
    {
      LODWORD(v799) = v567;
      v570 = v114;
      v571 = OUTLINED_FUNCTION_54();
      v784 = OUTLINED_FUNCTION_62();
      *&v810[0] = v784;
      v800 = v571;
      *v571 = 136315138;
      v572 = v793;
      OUTLINED_FUNCTION_113();
      swift_beginAccess();
      v573 = *v572;
      KeyPath = swift_getKeyPath();
      v574 = *(v573 + 16);
      if (v574)
      {
        v773 = v568;
        *&v809[0] = v570;

        v575 = v809;
        sub_1DD42A1D4(v574);
        OUTLINED_FUNCTION_72_1();
        do
        {
          v147 = *(&v568->isa + v573);
          v806 = v147;

          OUTLINED_FUNCTION_89();
          swift_getAtKeyPath();

          p_isa = *&v803[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v576 = *(v575 + 2);
            OUTLINED_FUNCTION_13_9();
            sub_1DD42B97C();
            v575 = *&v809[0];
          }

          OUTLINED_FUNCTION_46_0();
          if (v130)
          {
            OUTLINED_FUNCTION_12_11(v577);
            OUTLINED_FUNCTION_128();
            v575 = *&v809[0];
          }

          OUTLINED_FUNCTION_50_3();
          --v574;
          v192 = v777;
        }

        while (v574);

        OUTLINED_FUNCTION_118();
        v568 = v773;
      }

      else
      {

        v575 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_118();
        v192 = v777;
      }

      MEMORY[0x1E12B2430](v575, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_61_1();
      v618 = OUTLINED_FUNCTION_87_0();
      sub_1DD39565C(v618, v147, v619);
      OUTLINED_FUNCTION_59_0();

      v114 = v800;
      *(v800 + 4) = v575;
      OUTLINED_FUNCTION_91();
      _os_log_impl(v620, v568, v621, v622, v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v784);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();

      v123 = v790;
      v140 = v793;
    }

    else
    {

      KeyPath = v792;
      v140 = v793;
      v123 = v790;
      p_isa = v788;
      v192 = v777;
    }

    sub_1DD6404C8();
    v193 = v776;
    sub_1DD63F9A8();

    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v193, v194);
  }

  else
  {
    OUTLINED_FUNCTION_59_0();

    p_isa = v111;
    KeyPath = v132;
    v192 = v777;
  }

  sub_1DD3EB3D0(KeyPath + *(v123 + 15), v192, &qword_1ECCDC1F8, &qword_1DD645948);
  OUTLINED_FUNCTION_8(v192, 1, Expander);
  if (v172)
  {
    sub_1DD390754(v192, &qword_1ECCDC1F8, &qword_1DD645948);
  }

  else
  {
    sub_1DD3FAE44(v192, v778);
    OUTLINED_FUNCTION_85_0();
    v195 = v767;
    OUTLINED_FUNCTION_16_6(v767 + v196);
    v197 = p_isa;
    sub_1DD63F9B8();
    *(v195 + *(v114 + 24)) = v197;
    v198 = v197;
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v199 = swift_allocObject();
    OUTLINED_FUNCTION_52_2(v199);
    v200 = sub_1DD6408F8();
    v201 = v795;
    v199[7] = MEMORY[0x1E69E6158];
    v199[8] = v201;
    v199[4] = v200;
    v199[5] = v202;
    OUTLINED_FUNCTION_97();
    OUTLINED_FUNCTION_9_8();
    v800 = v198;
    OUTLINED_FUNCTION_62_1();
    sub_1DD63F998();
    OUTLINED_FUNCTION_104_0();
    v203 = sub_1DD63F9D8();
    v204 = sub_1DD640368();
    v205 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v205, v206))
    {
      OUTLINED_FUNCTION_28();
      v208 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_4(v208);
      OUTLINED_FUNCTION_29_3();
      _os_log_impl(v209, v210, v211, v212, v213, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v214 = OUTLINED_FUNCTION_100();
    v215 = v739;
    v114 = v791;
    v216 = v791[2];
    MEMORY[0x1EEE9AC00](v214);
    OUTLINED_FUNCTION_79_1();
    OUTLINED_FUNCTION_126(v217);
    v218 = OUTLINED_FUNCTION_56_3();
    sub_1DD604A9C(v218, v219, v220);
    OUTLINED_FUNCTION_68_0();
    v221 = *(v114 + 16);
    *(v114 + 16) = v204;

    v222 = v796;
    v223 = sub_1DD63F9D8();
    sub_1DD640368();
    OUTLINED_FUNCTION_115();
    if (os_log_type_enabled(v223, v224))
    {
      LODWORD(v799) = v222;
      OUTLINED_FUNCTION_54();
      v225 = OUTLINED_FUNCTION_60();
      *&v810[0] = v225;
      v739[0] = 136315138;
      v226 = *v140;
      v114 = swift_getKeyPath();
      v227 = *(v226 + 16);
      if (v227)
      {
        v777 = v225;
        v784 = v739;
        v798 = v223;
        *&v809[0] = MEMORY[0x1E69E7CC0];

        v228 = v809;
        sub_1DD42B97C();
        OUTLINED_FUNCTION_72_1();
        do
        {
          v195 = *(v739 + v226);
          v806 = v195;

          OUTLINED_FUNCTION_89();
          swift_getAtKeyPath();

          *&v809[0] = v228;
          OUTLINED_FUNCTION_46_0();
          if (v130)
          {
            OUTLINED_FUNCTION_12_11(v229);
            OUTLINED_FUNCTION_128();
            v228 = *&v809[0];
          }

          OUTLINED_FUNCTION_50_3();
          --v227;
        }

        while (v227);

        v223 = v798;
        v215 = v784;
        v225 = v777;
      }

      else
      {

        v228 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1E12B2430](v228, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_61_1();
      v230 = OUTLINED_FUNCTION_87_0();
      sub_1DD39565C(v230, v195, v231);
      OUTLINED_FUNCTION_59_0();

      *(v215 + 1) = v228;
      OUTLINED_FUNCTION_41_2(&dword_1DD38D000, "queries after EmojiQueryExpander: %s", v799);
      __swift_destroy_boxed_opaque_existential_1(v225);
      v232 = OUTLINED_FUNCTION_11_11();
      MEMORY[0x1E12B3DA0](v232);
      v233 = OUTLINED_FUNCTION_15_10();
      MEMORY[0x1E12B3DA0](v233);

      KeyPath = v792;
      v140 = v793;
      v123 = v790;
      p_isa = v788;
    }

    else
    {

      v123 = v790;
      KeyPath = v792;
    }

    sub_1DD6404C8();
    OUTLINED_FUNCTION_62_1();
    v234 = v767;
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v234, v235);
    sub_1DD3FA798(v778, type metadata accessor for EmojiQueryExpander);
  }

  v236 = sub_1DD553818(v789);
  if (sub_1DD553C54(*(KeyPath + *(v123 + 20)), v236))
  {
    LODWORD(v799) = v236;
    OUTLINED_FUNCTION_85_0();
    v237 = v768;
    OUTLINED_FUNCTION_16_6(v768 + v238);
    v240 = v239;
    sub_1DD63F9B8();
    *(v237 + *(v114 + 24)) = v240;
    v241 = v240;
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v242 = swift_allocObject();
    OUTLINED_FUNCTION_52_2(v242);
    v243 = sub_1DD6408F8();
    v244 = v795;
    v242[7] = MEMORY[0x1E69E6158];
    v242[8] = v244;
    v242[4] = v243;
    v242[5] = v245;
    v738 = v242;
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_62_1();
    sub_1DD63F998();
    OUTLINED_FUNCTION_73_0();

    v246 = v796;
    v247 = sub_1DD63F9D8();
    sub_1DD640368();
    OUTLINED_FUNCTION_115();
    v249 = os_log_type_enabled(v247, v248);
    v800 = v241;
    if (v249)
    {
      LODWORD(v784) = v246;
      v250 = OUTLINED_FUNCTION_54();
      v778 = OUTLINED_FUNCTION_62();
      *&v810[0] = v778;
      v798 = v250;
      LODWORD(v250->isa) = 136315138;
      OUTLINED_FUNCTION_113();
      swift_beginAccess();
      v251 = *v140;
      swift_getKeyPath();
      if (*(v251 + 16))
      {
        v777 = v247;
        *&v809[0] = MEMORY[0x1E69E7CC0];

        v252 = v809;
        sub_1DD42B97C();
        OUTLINED_FUNCTION_72_1();
        do
        {
          v806 = *(&v247->isa + v251);

          OUTLINED_FUNCTION_89();
          swift_getAtKeyPath();

          v253 = *&v803[0];
          *&v809[0] = v252;
          v255 = *(v252 + 2);
          v254 = *(v252 + 3);
          if (v255 >= v254 >> 1)
          {
            OUTLINED_FUNCTION_12_11(v254);
            OUTLINED_FUNCTION_57_2();
            sub_1DD42B97C();
            v252 = *&v809[0];
          }

          *(v252 + 2) = v255 + 1;
          *(v252 + v255 + 4) = v253;
          OUTLINED_FUNCTION_112();
        }

        while (!v172);

        KeyPath = v792;
        v140 = v793;
        v247 = v777;
      }

      else
      {

        v252 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1E12B2430](v252, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_19_8();

      v267 = OUTLINED_FUNCTION_36_0();
      sub_1DD39565C(v267, v268, v269);
      OUTLINED_FUNCTION_105_0();
      v270 = v798;
      *(&v798->isa + 4) = v252;
      _os_log_impl(&dword_1DD38D000, v247, v784, "queries before PLUSQueryExpander: %s", v270, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v778);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {
    }

    memset(v810, 0, 48);
    v271 = KeyPath + v790[19];
    if (v799 == 1)
    {
      sub_1DD3FA84C(v271, v809);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC220, &qword_1DD645A68);
      OUTLINED_FUNCTION_14();
      v272 = sub_1DD63F8B8();
      OUTLINED_FUNCTION_0(v272);
      v274 = v273;
      v276 = *(v275 + 72);
      v277 = OUTLINED_FUNCTION_82_0();
      v278 = sub_1DD3ADF44(v277, 1);
      v280 = v279;
      v281 = MEMORY[0x1E69D2798];
    }

    else
    {
      sub_1DD3FA84C(v271, v809);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC220, &qword_1DD645A68);
      OUTLINED_FUNCTION_14();
      v272 = sub_1DD63F8B8();
      OUTLINED_FUNCTION_0(v272);
      v274 = v282;
      v284 = *(v283 + 72);
      v285 = OUTLINED_FUNCTION_82_0();
      v278 = sub_1DD3ADF44(v285, 1);
      v280 = v286;
      v281 = MEMORY[0x1E69D27A0];
    }

    (*(v274 + 104))(v280, *v281, v272);
    if (*(v278 + 16))
    {
      sub_1DD56C10C();
      v288 = v287;
      sub_1DD390754(v810, &qword_1ECCDC228, &unk_1DD645A70);
    }

    else
    {
      sub_1DD390754(v810, &qword_1ECCDC228, &unk_1DD645A70);

      v288 = MEMORY[0x1E69E7CD0];
    }

    v810[0] = v809[0];
    v810[1] = v809[1];
    *&v810[2] = *&v809[2];
    *(&v810[2] + 1) = v288;
    sub_1DD3EB3D0(v810, v803, &qword_1ECCDC228, &unk_1DD645A70);
    if (*(&v804 + 1))
    {
      v809[0] = v803[0];
      v809[1] = v803[1];
      v809[2] = v804;
      v289 = OUTLINED_FUNCTION_100();
      v290 = *v140;
      MEMORY[0x1EEE9AC00](v289);
      OUTLINED_FUNCTION_126(&v736);
      v291 = OUTLINED_FUNCTION_56_3();
      sub_1DD604A9C(v291, v292, v293);
      OUTLINED_FUNCTION_68_0();
      v294 = *v140;
      *v140 = v272;

      sub_1DD3FA8CC(v809);
    }

    else
    {
      sub_1DD390754(v803, &qword_1ECCDC228, &unk_1DD645A70);
    }

    OUTLINED_FUNCTION_18_9();
    v295 = swift_allocObject();
    v296 = v791;
    *(v295 + 16) = sub_1DD3FAED0;
    *(v295 + 24) = v296;
    swift_retain_n();
    v114 = sub_1DD63F9D8();
    v297 = sub_1DD640368();
    OUTLINED_FUNCTION_35_2();
    v298 = swift_allocObject();
    *(v298 + 16) = 32;
    OUTLINED_FUNCTION_35_2();
    v299 = swift_allocObject();
    OUTLINED_FUNCTION_54_2(v299);
    OUTLINED_FUNCTION_18_9();
    v300 = swift_allocObject();
    *(v300 + 16) = sub_1DD3FAEA0;
    *(v300 + 24) = v295;
    OUTLINED_FUNCTION_18_9();
    v301 = swift_allocObject();
    *(v301 + 16) = sub_1DD3FAEA4;
    *(v301 + 24) = v300;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
    v302 = OUTLINED_FUNCTION_81_0();
    sub_1DD3AE030(v302, 3);
    *v303 = sub_1DD3FAEC8;
    v303[1] = v298;
    v303[2] = sub_1DD3FAEC8;
    v303[3] = v299;
    v303[4] = sub_1DD3FAE9C;
    v303[5] = v301;

    LODWORD(v799) = v297;
    if (os_log_type_enabled(v114, v297))
    {
      v798 = v114;
      v304 = KeyPath;
      v114 = OUTLINED_FUNCTION_54();
      v784 = OUTLINED_FUNCTION_62();
      *&v809[0] = v784;
      *v114 = 136315138;
      v140 = v793;
      OUTLINED_FUNCTION_113();
      swift_beginAccess();
      v305 = *v140;
      swift_getKeyPath();
      v306 = *(v305 + 16);
      if (v306)
      {
        v778 = v114;
        *&v803[0] = MEMORY[0x1E69E7CC0];

        sub_1DD42A1D4(v306);
        v307 = *&v803[0];
        do
        {
          v805 = *(v305 + 32);

          swift_getAtKeyPath();

          v308 = v806;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_36_2();
            OUTLINED_FUNCTION_26_2();
            sub_1DD42B97C();
            v307 = *&v803[0];
          }

          OUTLINED_FUNCTION_47_2();
          if (v130)
          {
            OUTLINED_FUNCTION_1_0(v309);
            OUTLINED_FUNCTION_57_2();
            sub_1DD42B97C();
            v307 = *&v803[0];
          }

          OUTLINED_FUNCTION_114();
          *(v310 + 32) = v308;
          OUTLINED_FUNCTION_112();
        }

        while (!v172);

        KeyPath = v792;
        v140 = v793;
        v266 = v761;
        v114 = v778;
      }

      else
      {

        v307 = MEMORY[0x1E69E7CC0];
        KeyPath = v304;
        v266 = v761;
      }

      MEMORY[0x1E12B2430](v307, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_19_8();

      v311 = OUTLINED_FUNCTION_36_0();
      sub_1DD39565C(v311, v312, v313);
      OUTLINED_FUNCTION_105_0();
      *(v114 + 4) = v307;
      OUTLINED_FUNCTION_91();
      v314 = v798;
      _os_log_impl(v315, v798, v316, v317, v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v784);
      v318 = OUTLINED_FUNCTION_10_2();
      MEMORY[0x1E12B3DA0](v318);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();

      v265 = v790;
    }

    else
    {

      v265 = v790;
      v266 = v761;
      v140 = v793;
    }

    sub_1DD6404C8();
    OUTLINED_FUNCTION_62_1();
    v319 = v768;
    sub_1DD63F9A8();
    sub_1DD390754(v810, &qword_1ECCDC228, &unk_1DD645A70);
    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v319, v320);
    p_isa = v788;
  }

  else
  {
    v256 = sub_1DD63F9D8();
    sub_1DD640358();
    v257 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v257, v258))
    {
      OUTLINED_FUNCTION_28();
      v259 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_4(v259);
      OUTLINED_FUNCTION_29_3();
      _os_log_impl(v260, v261, v262, v263, v264, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v265 = v790;
    v266 = v761;
  }

  sub_1DD3EB3D0(KeyPath + v265[6], v266, &qword_1ECCDC1F0, &qword_1DD645940);
  OUTLINED_FUNCTION_8(v266, 1, v769);
  if (v172)
  {
    sub_1DD390754(v266, &qword_1ECCDC1F0, &qword_1DD645940);
    v322 = v762;
    v321 = v763;
  }

  else
  {
    sub_1DD3FAE44(v266, v779);
    OUTLINED_FUNCTION_85_0();
    v323 = v770;
    OUTLINED_FUNCTION_16_6(v770 + v324);
    v325 = p_isa;
    sub_1DD63F9B8();
    *(v323 + *(v114 + 24)) = v325;
    v326 = v325;
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v327 = swift_allocObject();
    OUTLINED_FUNCTION_52_2(v327);
    v328 = sub_1DD6408F8();
    v329 = v795;
    v327[7] = MEMORY[0x1E69E6158];
    v327[8] = v329;
    v327[4] = v328;
    v327[5] = v330;
    OUTLINED_FUNCTION_97();
    OUTLINED_FUNCTION_9_8();
    v800 = v326;
    sub_1DD63F998();
    OUTLINED_FUNCTION_104_0();
    v331 = sub_1DD63F9D8();
    v332 = sub_1DD640368();
    v333 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v333, v334))
    {
      OUTLINED_FUNCTION_28();
      v336 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_4(v336);
      OUTLINED_FUNCTION_29_3();
      _os_log_impl(v337, v338, v339, v340, v341, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v342 = OUTLINED_FUNCTION_100();
    v343 = v791;
    v344 = v791[2];
    MEMORY[0x1EEE9AC00](v342);
    OUTLINED_FUNCTION_79_1();
    OUTLINED_FUNCTION_126(v345);
    v346 = OUTLINED_FUNCTION_56_3();
    sub_1DD604A9C(v346, v347, v348);
    OUTLINED_FUNCTION_68_0();
    v349 = v343[2];
    v343[2] = v332;

    OUTLINED_FUNCTION_18_9();
    v350 = swift_allocObject();
    *(v350 + 16) = sub_1DD3FA828;
    *(v350 + 24) = v343;
    swift_retain_n();
    v351 = sub_1DD63F9D8();
    v352 = sub_1DD640368();
    OUTLINED_FUNCTION_35_2();
    v353 = swift_allocObject();
    *(v353 + 16) = 32;
    OUTLINED_FUNCTION_35_2();
    v354 = swift_allocObject();
    OUTLINED_FUNCTION_54_2(v354);
    OUTLINED_FUNCTION_18_9();
    v355 = swift_allocObject();
    *(v355 + 16) = sub_1DD3FAEA0;
    *(v355 + 24) = v350;
    OUTLINED_FUNCTION_18_9();
    v356 = swift_allocObject();
    *(v356 + 16) = sub_1DD3FAEA4;
    *(v356 + 24) = v355;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
    v357 = OUTLINED_FUNCTION_81_0();
    sub_1DD3AE030(v357, 3);
    *v358 = sub_1DD3FAEC8;
    v358[1] = v353;
    v358[2] = sub_1DD3FAEC8;
    v358[3] = v354;
    v358[4] = sub_1DD3FAE9C;
    v358[5] = v356;

    LODWORD(v799) = v352;
    if (os_log_type_enabled(v351, v352))
    {
      v359 = v792;
      v360 = OUTLINED_FUNCTION_54();
      v798 = OUTLINED_FUNCTION_62();
      *&v810[0] = v798;
      *v360 = 136315138;
      v361 = *v140;
      swift_getKeyPath();
      v362 = *(v361 + 16);
      if (v362)
      {
        v784 = v360;
        *&v785 = v351;
        *&v809[0] = MEMORY[0x1E69E7CC0];

        v363 = v809;
        sub_1DD42A1D4(v362);
        OUTLINED_FUNCTION_72_1();
        do
        {
          v806 = *(&v351->isa + v361);

          OUTLINED_FUNCTION_89();
          swift_getAtKeyPath();

          v364 = *&v803[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v365 = *(v363 + 2);
            OUTLINED_FUNCTION_13_9();
            sub_1DD42B97C();
            v363 = *&v809[0];
          }

          OUTLINED_FUNCTION_47_2();
          if (v130)
          {
            OUTLINED_FUNCTION_12_11(v366);
            OUTLINED_FUNCTION_57_2();
            sub_1DD42B97C();
            v363 = *&v809[0];
          }

          OUTLINED_FUNCTION_114();
          *(v367 + 32) = v364;
          OUTLINED_FUNCTION_112();
        }

        while (!v172);

        KeyPath = v792;
        v360 = v784;
        v351 = v785;
      }

      else
      {

        v363 = MEMORY[0x1E69E7CC0];
        KeyPath = v359;
      }

      v368 = v798;
      MEMORY[0x1E12B2430](v363, MEMORY[0x1E69E6530]);
      v370 = v369;

      v371 = OUTLINED_FUNCTION_87_0();
      sub_1DD39565C(v371, v370, v372);
      OUTLINED_FUNCTION_105_0();
      *(v360 + 4) = v363;
      OUTLINED_FUNCTION_91();
      _os_log_impl(v373, v351, v374, v375, v360, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v368);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      v376 = OUTLINED_FUNCTION_10_2();
      MEMORY[0x1E12B3DA0](v376);

      v265 = v790;
      v322 = v762;
      v321 = v763;
    }

    else
    {

      v265 = v790;
      v322 = v762;
      v321 = v763;
      KeyPath = v792;
    }

    sub_1DD6404C8();
    v114 = v770;
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v114, v377);
    sub_1DD3FA798(v779, type metadata accessor for RelationshipAliasGenerator);
    p_isa = v788;
  }

  sub_1DD3EB3D0(KeyPath + v265[5], v321, &qword_1ECCDC1E8, &qword_1DD645938);
  OUTLINED_FUNCTION_8(v321, 1, v322);
  if (v172)
  {
    sub_1DD390754(v321, &qword_1ECCDC1E8, &qword_1DD645938);
  }

  else
  {
    v378 = v780;
    sub_1DD3FAE44(v321, v780);
    v379 = v787;
    v380 = v771;
    v381 = v771 + *(v787 + 20);
    *v381 = "ContactResolver.MeCardExpander";
    *(v381 + 8) = 30;
    *(v381 + 16) = 2;
    v382 = p_isa;
    sub_1DD63F9B8();
    *(v380 + *(v379 + 24)) = v382;
    v383 = v382;
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v384 = swift_allocObject();
    sub_1DD3AE030(v384, 1);
    v385 = sub_1DD6408F8();
    OUTLINED_FUNCTION_14_11(v385, v386);
    v737 = 2;
    OUTLINED_FUNCTION_22();
    v799 = v383;
    OUTLINED_FUNCTION_98();
    sub_1DD63F998();
    OUTLINED_FUNCTION_73_0();

    v387 = v747;
    sub_1DD3FA93C(v378, v747);
    sub_1DD3FA93C(v387, v764);
    v388 = (*(v748 + 80) + 16) & ~*(v748 + 80);
    v389 = swift_allocObject();
    sub_1DD3FAE44(v387, v389 + v388);
    OUTLINED_FUNCTION_18_9();
    v390 = swift_allocObject();
    *(v390 + 16) = sub_1DD3FA5F8;
    *(v390 + 24) = v389;
    v391 = v749;
    sub_1DD3FA93C(v378, v749);
    sub_1DD3FA93C(v391, v765);
    v392 = swift_allocObject();
    sub_1DD3FAE44(v391, v392 + v388);
    OUTLINED_FUNCTION_18_9();
    v393 = swift_allocObject();
    *(v393 + 16) = sub_1DD3FA700;
    *(v393 + 24) = v392;
    *&v785 = sub_1DD63F9D8();
    LODWORD(v800) = sub_1DD640368();
    OUTLINED_FUNCTION_35_2();
    v394 = swift_allocObject();
    *(v394 + 16) = 32;
    OUTLINED_FUNCTION_35_2();
    v395 = swift_allocObject();
    *(v395 + 16) = 8;
    OUTLINED_FUNCTION_18_9();
    v396 = swift_allocObject();
    *(v396 + 16) = sub_1DD3FA610;
    *(v396 + 24) = v390;
    OUTLINED_FUNCTION_18_9();
    v397 = swift_allocObject();
    *(v397 + 16) = sub_1DD3FAEA4;
    *(v397 + 24) = v396;
    OUTLINED_FUNCTION_35_2();
    v398 = swift_allocObject();
    *(v398 + 16) = 32;
    OUTLINED_FUNCTION_35_2();
    v399 = swift_allocObject();
    *(v399 + 16) = 8;
    OUTLINED_FUNCTION_18_9();
    v400 = swift_allocObject();
    *(v400 + 16) = sub_1DD3FAEA8;
    *(v400 + 24) = v393;
    OUTLINED_FUNCTION_18_9();
    v401 = swift_allocObject();
    *(v401 + 16) = sub_1DD3FAEA4;
    *(v401 + 24) = v400;
    v798 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
    v402 = swift_allocObject();
    sub_1DD3AE030(v402, 6);
    *v403 = sub_1DD3FAEC8;
    v403[1] = v394;
    v403[2] = sub_1DD3FAEC8;
    v403[3] = v395;
    v403[4] = sub_1DD3FAE9C;
    v403[5] = v397;
    v403[6] = sub_1DD3FAEC8;
    v403[7] = v398;
    v403[8] = sub_1DD3FAEC8;
    v403[9] = v399;
    v403[10] = sub_1DD3FAE9C;
    v403[11] = v401;

    v404 = v785;
    if (os_log_type_enabled(v785, v800))
    {
      v406 = swift_slowAlloc();
      *&v810[0] = swift_slowAlloc();
      *v406 = 136315394;
      v407 = v764;
      MEMORY[0x1E12B2430](*v764, &type metadata for MeCardContactGenerator.Relation);
      sub_1DD3FA798(v407, type metadata accessor for MeCardContactGenerator);
      v408 = OUTLINED_FUNCTION_111();
      v411 = sub_1DD39565C(v408, v409, v410);

      *(v406 + 4) = v411;
      *(v406 + 12) = 2080;
      v412 = v765;
      v413 = MEMORY[0x1E12B2430](*(v765 + 8), &type metadata for MeCardContactGenerator.Relation);
      v415 = v414;
      sub_1DD3FA798(v412, type metadata accessor for MeCardContactGenerator);
      v416 = sub_1DD39565C(v413, v415, v810);

      *(v406 + 14) = v416;
      _os_log_impl(&dword_1DD38D000, v404, v800, "running MeCardExpander. semanticRelations=%s customRelations=%s", v406, 0x16u);
      swift_arrayDestroy();
      v417 = OUTLINED_FUNCTION_11_11();
      MEMORY[0x1E12B3DA0](v417);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {

      sub_1DD3FA798(v765, type metadata accessor for MeCardContactGenerator);
      sub_1DD3FA798(v764, type metadata accessor for MeCardContactGenerator);
    }

    p_isa = v791;
    v418 = OUTLINED_FUNCTION_100();
    v419 = p_isa[2];
    MEMORY[0x1EEE9AC00](v418);
    OUTLINED_FUNCTION_79_1();
    OUTLINED_FUNCTION_126(v420);
    v421 = OUTLINED_FUNCTION_56_3();
    sub_1DD604A9C(v421, v422, v423);
    OUTLINED_FUNCTION_68_0();
    v424 = p_isa[2];
    p_isa[2] = 0;

    v425 = 32;
    OUTLINED_FUNCTION_18_9();
    v426 = swift_allocObject();
    *(v426 + 16) = sub_1DD3FAED0;
    *(v426 + 24) = p_isa;
    swift_retain_n();
    v427 = sub_1DD63F9D8();
    v428 = sub_1DD640368();
    OUTLINED_FUNCTION_35_2();
    v429 = swift_allocObject();
    *(v429 + 16) = 32;
    OUTLINED_FUNCTION_35_2();
    v114 = swift_allocObject();
    OUTLINED_FUNCTION_54_2(v114);
    OUTLINED_FUNCTION_18_9();
    v430 = swift_allocObject();
    *(v430 + 16) = sub_1DD3FAEA0;
    *(v430 + 24) = v426;
    OUTLINED_FUNCTION_18_9();
    v431 = swift_allocObject();
    *(v431 + 16) = sub_1DD3FAEA4;
    *(v431 + 24) = v430;
    v432 = OUTLINED_FUNCTION_81_0();
    sub_1DD3AE030(v432, 3);
    *v433 = sub_1DD3FAEC8;
    v433[1] = v429;
    v433[2] = sub_1DD3FAEC8;
    v433[3] = v114;
    v433[4] = sub_1DD3FAE9C;
    v433[5] = v431;

    LODWORD(v800) = v428;
    if (os_log_type_enabled(v427, v428))
    {
      v798 = v427;
      OUTLINED_FUNCTION_54();
      v434 = OUTLINED_FUNCTION_60();
      *&v810[0] = v434;
      MEMORY[0x20] = 136315138;
      v435 = *v793;
      KeyPath = swift_getKeyPath();
      v436 = *(v435 + 16);
      *&v785 = v434;
      if (v436)
      {
        v784 = 32;
        *&v809[0] = MEMORY[0x1E69E7CC0];

        v437 = v809;
        sub_1DD42A1D4(v436);
        OUTLINED_FUNCTION_72_1();
        do
        {
          v430 = *(v435 + 32);
          v808 = v430;

          swift_getAtKeyPath();

          p_isa = *&v803[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v438 = *(v437 + 2);
            OUTLINED_FUNCTION_13_9();
            sub_1DD42B97C();
            v437 = *&v809[0];
          }

          OUTLINED_FUNCTION_46_0();
          if (v130)
          {
            OUTLINED_FUNCTION_12_11(v439);
            OUTLINED_FUNCTION_128();
            v437 = *&v809[0];
          }

          OUTLINED_FUNCTION_50_3();
          --v436;
        }

        while (v436);

        OUTLINED_FUNCTION_118();
        v425 = v784;
      }

      else
      {

        v437 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_118();
      }

      MEMORY[0x1E12B2430](v437, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_61_1();
      v440 = OUTLINED_FUNCTION_87_0();
      sub_1DD39565C(v440, v430, v441);
      OUTLINED_FUNCTION_59_0();

      *(v425 + 4) = v437;
      v442 = v798;
      _os_log_impl(&dword_1DD38D000, v798, v800, "queries after MeCardExpander: %s", v425, 0xCu);
      v114 = v785;
      __swift_destroy_boxed_opaque_existential_1(v785);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      v443 = OUTLINED_FUNCTION_15_10();
      MEMORY[0x1E12B3DA0](v443);

      v265 = v790;
    }

    else
    {

      KeyPath = v792;
      v265 = v790;
      p_isa = v788;
    }

    sub_1DD6404C8();
    v444 = v771;
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v444, v445);
    sub_1DD3FA798(v780, type metadata accessor for MeCardContactGenerator);
  }

  v446 = (KeyPath + v265[7]);
  v447 = *v446;
  if (!*v446)
  {
    v503 = MEMORY[0x1E69E6158];
LABEL_160:
    v507 = p_isa;
    sub_1DD63F9B8();
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v508 = swift_allocObject();
    sub_1DD3AE030(v508, 1);
    v93 = v509;
    v510 = sub_1DD6408F8();
    v511 = v795;
    *(v93 + 24) = v503;
    *(v93 + 32) = v511;
    *v93 = v510;
    *(v93 + 8) = v512;
    OUTLINED_FUNCTION_97();
    v737 = 2;
    OUTLINED_FUNCTION_22();
    sub_1DD63F998();
    OUTLINED_FUNCTION_104_0();
    v513 = v792;
    sub_1DD3F4CFC(v781, v792, v789, v793);
    v811 = 0;
    sub_1DD6404C8();
    v111 = 2;
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_49_2();
    v514();
    sub_1DD3EB3D0(v513 + v790[11], v809, &qword_1ECCDC208, &unk_1DD6459B0);
    v802 = v507;
    if (*(&v809[1] + 1))
    {
      memcpy(v810, v809, 0x50uLL);
      v515 = v507;
      sub_1DD63F9B8();
      sub_1DD6404D8();
      OUTLINED_FUNCTION_23_5();
      v516 = swift_allocObject();
      v93 = sub_1DD3AE030(v516, 1);
      v517 = sub_1DD6408F8();
      OUTLINED_FUNCTION_14_11(v517, v518);
      v737 = 2;
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_75_0();
      sub_1DD63F998();
      OUTLINED_FUNCTION_73_0();

      v513 = v781;
      sub_1DD3F5198(v793, v781, v810);
      v811 = 0;
      sub_1DD6404C8();
      OUTLINED_FUNCTION_75_0();
      sub_1DD63F9A8();
      OUTLINED_FUNCTION_49_2();
      v519();
      sub_1DD3FA548(v810);
      v520 = v792;
    }

    else
    {
      sub_1DD390754(v809, &qword_1ECCDC208, &unk_1DD6459B0);
      v520 = v513;
    }

    v521 = v757;
    OUTLINED_FUNCTION_100();
    v522 = *v521;
    swift_getKeyPath();
    v72 = *(v522 + 16);

    v523 = 0;
    while (v72 != v523)
    {
      if (v523 >= *(v522 + 16))
      {
        __break(1u);
LABEL_289:
        __break(1u);
        goto LABEL_290;
      }

      OUTLINED_FUNCTION_101(v523);
      OUTLINED_FUNCTION_122();
      swift_getAtKeyPath();

      v523 = v513;
      if ((v808 & 1) == 0)
      {

        goto LABEL_168;
      }
    }

    v532 = sub_1DD63F9D8();
    sub_1DD640368();
    v533 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v533, v534))
    {
      OUTLINED_FUNCTION_28();
      v535 = swift_slowAlloc();
      OUTLINED_FUNCTION_84_0(v535);
      OUTLINED_FUNCTION_33_3();
      _os_log_impl(v536, v537, v538, v539, v540, v541);
      v542 = OUTLINED_FUNCTION_10_2();
      MEMORY[0x1E12B3DA0](v542);
    }

    v543 = *v757;

    OUTLINED_FUNCTION_70_0();
    sub_1DD3F5664();
    v811 = 0;

    OUTLINED_FUNCTION_76_0();
    v93 = 32;
    OUTLINED_FUNCTION_18_9();
    v544 = swift_allocObject();
    OUTLINED_FUNCTION_74_0(v544);
    v513 = sub_1DD63F9D8();
    v111 = sub_1DD640368();
    OUTLINED_FUNCTION_35_2();
    v545 = swift_allocObject();
    *(v545 + 16) = 32;
    OUTLINED_FUNCTION_35_2();
    v546 = swift_allocObject();
    OUTLINED_FUNCTION_45_1(v546);
    OUTLINED_FUNCTION_18_9();
    v547 = swift_allocObject();
    *(v547 + 16) = sub_1DD3FAEA0;
    *(v547 + 24) = v544;
    OUTLINED_FUNCTION_18_9();
    v548 = swift_allocObject();
    *(v548 + 16) = sub_1DD3FAEA4;
    *(v548 + 24) = v547;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
    v549 = OUTLINED_FUNCTION_81_0();
    sub_1DD3AE030(v549, 3);
    *v550 = sub_1DD3FAEC8;
    v550[1] = v545;
    v550[2] = sub_1DD3FAEC8;
    v550[3] = 32;
    v550[4] = sub_1DD3FAE9C;
    v550[5] = v548;

    LODWORD(v801) = v111;
    if (os_log_type_enabled(v513, v111))
    {
      OUTLINED_FUNCTION_54();
      v551 = OUTLINED_FUNCTION_60();
      *&v809[0] = v551;
      *v72 = 136315138;
      v111 = *v757;
      v93 = swift_getKeyPath();
      v552 = *(v111 + 16);
      if (v552)
      {
        v798 = v551;
        v799 = v72;
        v800 = v513;
        v808 = MEMORY[0x1E69E7CC0];

        sub_1DD42A1D4(v552);
        v553 = v808;
        do
        {
          v548 = *(v111 + 32);
          v807 = v548;

          OUTLINED_FUNCTION_120();
          swift_getAtKeyPath();

          if ((OUTLINED_FUNCTION_127() & 1) == 0)
          {
            OUTLINED_FUNCTION_36_2();
            OUTLINED_FUNCTION_26_2();
            sub_1DD42B97C();
            v553 = v808;
          }

          OUTLINED_FUNCTION_78_0();
          if (v130)
          {
            OUTLINED_FUNCTION_1_0(v554);
            OUTLINED_FUNCTION_90();
            sub_1DD42B97C();
            v553 = v808;
          }

          OUTLINED_FUNCTION_95();
        }

        while (!v172);

        v72 = v799;
        v513 = v800;
        v551 = v798;
      }

      else
      {

        v553 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1E12B2430](v553, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_61_1();
      sub_1DD39565C(v548, v93, v809);
      OUTLINED_FUNCTION_59_0();

      *(v72 + 4) = v553;
      OUTLINED_FUNCTION_41_2(&dword_1DD38D000, "matches after SearchByPartialName: %s", v801);
      __swift_destroy_boxed_opaque_existential_1(v551);
      v616 = OUTLINED_FUNCTION_11_11();
      MEMORY[0x1E12B3DA0](v616);
      v617 = OUTLINED_FUNCTION_15_10();
      MEMORY[0x1E12B3DA0](v617);

      v520 = v792;
    }

    else
    {
    }

LABEL_168:
    v524 = *v757;
    swift_getKeyPath();
    v72 = *(v524 + 16);

    v525 = 0;
    while (v72 != v525)
    {
      if (v525 >= *(v524 + 16))
      {
        goto LABEL_289;
      }

      OUTLINED_FUNCTION_101(v525);
      OUTLINED_FUNCTION_122();
      swift_getAtKeyPath();

      v525 = v513;
      if ((v808 & 1) == 0)
      {

        goto LABEL_173;
      }
    }

    v555 = sub_1DD63F9D8();
    sub_1DD640368();
    v556 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v556, v557))
    {
      OUTLINED_FUNCTION_28();
      v558 = swift_slowAlloc();
      OUTLINED_FUNCTION_84_0(v558);
      OUTLINED_FUNCTION_33_3();
      _os_log_impl(v559, v560, v561, v562, v563, v564);
      v565 = OUTLINED_FUNCTION_10_2();
      MEMORY[0x1E12B3DA0](v565);
    }

    v566 = *v757;

    OUTLINED_FUNCTION_70_0();
    sub_1DD3F5874();
    v811 = 0;

    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_18_9();
    v578 = swift_allocObject();
    OUTLINED_FUNCTION_74_0(v578);
    v457 = sub_1DD63F9D8();
    v111 = sub_1DD640368();
    OUTLINED_FUNCTION_35_2();
    v579 = swift_allocObject();
    *(v579 + 16) = 32;
    OUTLINED_FUNCTION_35_2();
    v580 = swift_allocObject();
    OUTLINED_FUNCTION_45_1(v580);
    OUTLINED_FUNCTION_18_9();
    v581 = swift_allocObject();
    *(v581 + 16) = sub_1DD3FAEA0;
    *(v581 + 24) = v578;
    OUTLINED_FUNCTION_18_9();
    v114 = swift_allocObject();
    *(v114 + 16) = sub_1DD3FAEA4;
    *(v114 + 24) = v581;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
    v582 = OUTLINED_FUNCTION_81_0();
    sub_1DD3AE030(v582, 3);
    *v583 = sub_1DD3FAEC8;
    v583[1] = v579;
    v583[2] = sub_1DD3FAEC8;
    v583[3] = 32;
    v583[4] = sub_1DD3FAE9C;
    v583[5] = v114;

    LODWORD(v801) = v111;
    if (!os_log_type_enabled(v457, v111))
    {

      goto LABEL_173;
    }

    OUTLINED_FUNCTION_54();
    v471 = OUTLINED_FUNCTION_60();
    *&v809[0] = v471;
    *v72 = 136315138;
    v111 = *v757;
    v147 = swift_getKeyPath();
    v584 = *(v111 + 16);
    if (!v584)
    {
      goto LABEL_241;
    }

    v798 = v471;
    v799 = v72;
    v800 = v457;
    v808 = MEMORY[0x1E69E7CC0];

    sub_1DD42A1D4(v584);
    v166 = v808;
    do
    {
      v114 = *(v111 + 32);
      v807 = v114;

      OUTLINED_FUNCTION_120();
      swift_getAtKeyPath();

      if ((OUTLINED_FUNCTION_127() & 1) == 0)
      {
        OUTLINED_FUNCTION_36_2();
        OUTLINED_FUNCTION_26_2();
        sub_1DD42B97C();
        v166 = v808;
      }

      OUTLINED_FUNCTION_78_0();
      if (v130)
      {
        OUTLINED_FUNCTION_1_0(v585);
        OUTLINED_FUNCTION_90();
        sub_1DD42B97C();
        v166 = v808;
      }

      OUTLINED_FUNCTION_95();
    }

    while (!v172);
LABEL_220:

    v72 = v799;
    v457 = v800;
    v471 = v798;
    goto LABEL_242;
  }

  v448 = v446[1];
  OUTLINED_FUNCTION_85_0();
  v449 = v775;
  OUTLINED_FUNCTION_16_6(v775 + v450);
  v452 = v451;
  v799 = v447;
  v800 = v448;
  sub_1DD3FA59C(v447);
  sub_1DD63F9B8();
  *(v449 + *(v114 + 24)) = v452;
  v114 = v452;
  sub_1DD6404D8();
  OUTLINED_FUNCTION_23_5();
  v453 = swift_allocObject();
  sub_1DD3AE030(v453, 1);
  OUTLINED_FUNCTION_19_8();
  v454 = sub_1DD6408F8();
  OUTLINED_FUNCTION_14_11(v454, v455);
  OUTLINED_FUNCTION_9_8();
  v784 = v114;
  OUTLINED_FUNCTION_98();
  sub_1DD63F998();
  OUTLINED_FUNCTION_73_0();

  v456 = sub_1DD63F9D8();
  v457 = sub_1DD640368();
  v458 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v458, v459))
  {
    OUTLINED_FUNCTION_28();
    v460 = swift_slowAlloc();
    OUTLINED_FUNCTION_84_0(v460);
    OUTLINED_FUNCTION_33_3();
    _os_log_impl(v461, v462, v463, v464, v465, v466);
    v467 = OUTLINED_FUNCTION_10_2();
    MEMORY[0x1E12B3DA0](v467);
  }

  v468 = v793;
  OUTLINED_FUNCTION_100();
  v469 = *v468;
  v470 = *(*v468 + 16);
  v471 = MEMORY[0x1E69E7CC0];
  v472 = v758;
  if (!v470)
  {
    v494 = MEMORY[0x1E69E7CC0];
    v586 = v793;
LABEL_159:
    *v586 = v494;

    v504 = MEMORY[0x1E69E6158];
    p_isa = v788;
    sub_1DD6404C8();
    v505 = v775;
    sub_1DD63F9A8();

    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v505, v506);
    v503 = v504;
    goto LABEL_160;
  }

  *&v810[0] = MEMORY[0x1E69E7CC0];

  sub_1DD42A1BC(v470);
  v473 = 0;
  v474 = v469 + 32;
  v778 = v470;
  v779 = v469;
  v777 = (v469 + 32);
LABEL_137:
  v475 = v473;
  v780 = (v473 + 1);
  sub_1DD408C00(v473, 1, v469);
  v147 = *(v474 + 8 * v475);
  v798 = *(v147 + 16);

  v72 = 0;
  *&v785 = v471;
  while (1)
  {
    v111 = v797;
    if (v798 == v72)
    {
      if (*(v785 + 16))
      {
        *&v809[0] = v147;
        sub_1DD607914(v785);
        v147 = *&v809[0];
      }

      else
      {
      }

      v471 = MEMORY[0x1E69E7CC0];
      v474 = v777;
      v494 = *&v810[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_36_2();
        v495 = OUTLINED_FUNCTION_26_2();
        sub_1DD42B95C(v495, v496, v497);
        v494 = *&v810[0];
      }

      v499 = *(v494 + 16);
      v498 = *(v494 + 24);
      v457 = (v499 + 1);
      if (v499 >= v498 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v498);
        OUTLINED_FUNCTION_106();
        sub_1DD42B95C(v500, v501, v502);
        v494 = *&v810[0];
      }

      *(v494 + 16) = v457;
      *(v494 + 8 * v499 + 32) = v147;
      v469 = v779;
      v473 = v780;
      if (v780 == v778)
      {

        v586 = v793;
        v587 = *v793;
        goto LABEL_159;
      }

      goto LABEL_137;
    }

    if (v72 >= *(v147 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_107();
    v114 = v477 & ~v476;
    v471 = *(v478 + 72);
    v457 = &qword_1ECCDBC18;
    sub_1DD3EB3D0(v147 + v114 + v471 * v72, v111, &qword_1ECCDBC18, &unk_1DD6459A0);
    sub_1DD5FD9DC(v111, v472);
    sub_1DD390754(v111, &qword_1ECCDBC18, &unk_1DD6459A0);
    OUTLINED_FUNCTION_8(v472, 1, v801);
    if (v172)
    {
      sub_1DD390754(v472, &qword_1ECCDC200, &qword_1DD645998);
      ++v72;
    }

    else
    {
      OUTLINED_FUNCTION_119();
      sub_1DD3EB4B8(v479, v480, v481, v482);
      OUTLINED_FUNCTION_119();
      sub_1DD3EB4B8(v483, v484, v485, v486);
      v487 = swift_isUniquelyReferenced_nonNull_native();
      if ((v487 & 1) == 0)
      {
        v491 = *(v785 + 16);
        OUTLINED_FUNCTION_26_2();
        sub_1DD3BF7FC();
        *&v785 = v492;
      }

      v489 = *(v785 + 16);
      v488 = *(v785 + 24);
      if (v489 >= v488 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v488);
        sub_1DD3BF7FC();
        *&v785 = v493;
      }

      ++v72;
      v490 = v785;
      *(v785 + 16) = v489 + 1;
      sub_1DD3EB4B8(v754, v490 + v114 + v489 * v471, &qword_1ECCDBC18, &unk_1DD6459A0);
      v472 = v758;
    }
  }

  __break(1u);
LABEL_241:

  v166 = MEMORY[0x1E69E7CC0];
LABEL_242:
  MEMORY[0x1E12B2430](v166, MEMORY[0x1E69E6530]);
  OUTLINED_FUNCTION_61_1();
  sub_1DD39565C(v114, v147, v809);
  OUTLINED_FUNCTION_59_0();

  *(v72 + 4) = v166;
  OUTLINED_FUNCTION_41_2(&dword_1DD38D000, "matches after SearchByHypocorism: %s", v801);
  __swift_destroy_boxed_opaque_existential_1(v471);
  v623 = OUTLINED_FUNCTION_11_11();
  MEMORY[0x1E12B3DA0](v623);
  v624 = OUTLINED_FUNCTION_15_10();
  MEMORY[0x1E12B3DA0](v624);

  v520 = v792;
LABEL_173:
  v526 = v790;
  v527 = type metadata accessor for ContactResolverConfig(0);
  if (*(v789 + v527[12]) == 1)
  {
    v528 = *v757;
    swift_getKeyPath();
    v529 = *(v528 + 16);

    v530 = 0;
    while (1)
    {
      if (v529 == v530)
      {

        goto LABEL_221;
      }

      if (v530 >= *(v528 + 16))
      {
        break;
      }

      v531 = (&v530->isa + 1);
      *&v809[0] = *(v528 + 8 * v530 + 32);

      OUTLINED_FUNCTION_122();
      swift_getAtKeyPath();

      v530 = v531;
      if ((v808 & 1) == 0)
      {

        if (*(v789 + v527[14]))
        {
          v615 = sub_1DD640CD8();

          if ((v615 & 1) == 0)
          {

LABEL_246:
            v526 = v790;
            goto LABEL_247;
          }

LABEL_222:
          v588 = sub_1DD63F9D8();
          sub_1DD640368();
          v589 = OUTLINED_FUNCTION_27_5();
          if (os_log_type_enabled(v589, v590))
          {
            OUTLINED_FUNCTION_28();
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_53_2();
            _os_log_impl(v591, v592, v593, v594, v595, v596);
            v597 = OUTLINED_FUNCTION_11_11();
            MEMORY[0x1E12B3DA0](v597);
          }

          v598 = *v757;

          OUTLINED_FUNCTION_111();
          sub_1DD3F5CA0();

          OUTLINED_FUNCTION_76_0();
          OUTLINED_FUNCTION_18_9();
          v599 = swift_allocObject();
          OUTLINED_FUNCTION_74_0(v599);
          v600 = sub_1DD63F9D8();
          v601 = sub_1DD640368();
          OUTLINED_FUNCTION_35_2();
          v602 = swift_allocObject();
          *(v602 + 16) = 32;
          OUTLINED_FUNCTION_35_2();
          v603 = swift_allocObject();
          OUTLINED_FUNCTION_45_1(v603);
          OUTLINED_FUNCTION_18_9();
          v604 = swift_allocObject();
          *(v604 + 16) = sub_1DD3FAEA0;
          *(v604 + 24) = v599;
          OUTLINED_FUNCTION_18_9();
          v605 = swift_allocObject();
          *(v605 + 16) = sub_1DD3FAEA4;
          *(v605 + 24) = v604;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
          v606 = OUTLINED_FUNCTION_81_0();
          sub_1DD3AE030(v606, 3);
          *v607 = sub_1DD3FAEC8;
          v607[1] = v602;
          v607[2] = sub_1DD3FAEC8;
          v607[3] = 32;
          v607[4] = sub_1DD3FAE9C;
          v607[5] = v605;

          if (os_log_type_enabled(v600, v601))
          {
            LODWORD(v800) = v601;
            OUTLINED_FUNCTION_54();
            v608 = OUTLINED_FUNCTION_60();
            *&v809[0] = v608;
            LODWORD(v529->isa) = 136315138;
            v609 = *v757;
            swift_getKeyPath();
            v610 = *(v609 + 16);
            if (v610)
            {
              v797 = v608;
              v798 = v529;
              v799 = v600;
              v801 = v527;
              v808 = MEMORY[0x1E69E7CC0];

              sub_1DD42A1D4(v610);
              v611 = 32;
              v612 = v808;
              do
              {
                v807 = *(v609 + v611);

                OUTLINED_FUNCTION_120();
                swift_getAtKeyPath();

                if ((OUTLINED_FUNCTION_127() & 1) == 0)
                {
                  OUTLINED_FUNCTION_36_2();
                  OUTLINED_FUNCTION_26_2();
                  sub_1DD42B97C();
                  v612 = v808;
                }

                OUTLINED_FUNCTION_47_2();
                if (v130)
                {
                  OUTLINED_FUNCTION_1_0(v613);
                  OUTLINED_FUNCTION_57_2();
                  sub_1DD42B97C();
                  v612 = v808;
                }

                OUTLINED_FUNCTION_114();
                *(v614 + 32) = v529;
                v611 += 8;
                --v610;
              }

              while (v610);

              v527 = v801;
              v529 = v798;
              v600 = v799;
              v608 = v797;
            }

            else
            {

              v612 = MEMORY[0x1E69E7CC0];
            }

            MEMORY[0x1E12B2430](v612, MEMORY[0x1E69E6530]);
            OUTLINED_FUNCTION_19_8();

            v625 = OUTLINED_FUNCTION_36_0();
            sub_1DD39565C(v625, v626, v627);
            OUTLINED_FUNCTION_105_0();
            *(&v529->isa + 4) = v612;
            OUTLINED_FUNCTION_41_2(&dword_1DD38D000, "matches after SearchByFoundInApps: %s", v800);
            __swift_destroy_boxed_opaque_existential_1(v608);
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
            v628 = OUTLINED_FUNCTION_15_10();
            MEMORY[0x1E12B3DA0](v628);
          }

          else
          {
          }

          v520 = v792;
          goto LABEL_246;
        }

LABEL_221:

        goto LABEL_222;
      }
    }

    __break(1u);
LABEL_292:

    sub_1DD6404C8();
    OUTLINED_FUNCTION_80();
    sub_1DD63F9A8();
    (*(v786 + 8))(v111, v783);
    __break(1u);
    return;
  }

LABEL_247:
  if (*(v520 + v526[21]) == 1)
  {
    v801 = v527;
    v629 = v787;
    v630 = v741;
    OUTLINED_FUNCTION_16_6(v741 + *(v787 + 20));
    v631 = v802;
    sub_1DD63F9B8();
    *(v630 + *(v629 + 24)) = v631;
    v632 = v631;
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v633 = swift_allocObject();
    sub_1DD3AE030(v633, 1);
    v635 = v634;
    v636 = sub_1DD6408F8();
    v637 = v795;
    v635[3] = MEMORY[0x1E69E6158];
    v635[4] = v637;
    *v635 = v636;
    v635[1] = v638;
    OUTLINED_FUNCTION_9_8();
    v800 = v632;
    OUTLINED_FUNCTION_119();
    sub_1DD63F998();

    v639 = sub_1DD63F9D8();
    sub_1DD640368();
    v640 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v640, v641))
    {
      OUTLINED_FUNCTION_28();
      v642 = swift_slowAlloc();
      OUTLINED_FUNCTION_84_0(v642);
      OUTLINED_FUNCTION_33_3();
      _os_log_impl(v643, v644, v645, v646, v647, v648);
      v649 = OUTLINED_FUNCTION_10_2();
      MEMORY[0x1E12B3DA0](v649);
    }

    v650 = v790[16];
    v651 = *v757;

    sub_1DD3C6CC8(v789, v772, v651);

    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_18_9();
    v654 = swift_allocObject();
    OUTLINED_FUNCTION_74_0(v654);
    v655 = sub_1DD63F9D8();
    v656 = sub_1DD640368();
    OUTLINED_FUNCTION_35_2();
    v657 = swift_allocObject();
    *(v657 + 16) = 32;
    OUTLINED_FUNCTION_35_2();
    v658 = swift_allocObject();
    OUTLINED_FUNCTION_54_2(v658);
    OUTLINED_FUNCTION_18_9();
    v659 = swift_allocObject();
    *(v659 + 16) = sub_1DD3FA504;
    *(v659 + 24) = v654;
    OUTLINED_FUNCTION_18_9();
    v660 = swift_allocObject();
    *(v660 + 16) = sub_1DD3FA514;
    *(v660 + 24) = v659;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
    v661 = OUTLINED_FUNCTION_81_0();
    sub_1DD3AE030(v661, 3);
    *v662 = sub_1DD3FA50C;
    v662[1] = v657;
    v662[2] = sub_1DD3FAEC8;
    v662[3] = v658;
    v662[4] = sub_1DD3FA51C;
    v662[5] = v660;

    if (os_log_type_enabled(v655, v656))
    {
      LODWORD(v799) = v656;
      v663 = OUTLINED_FUNCTION_54();
      v664 = OUTLINED_FUNCTION_62();
      *&v809[0] = v664;
      *v663 = 136315138;
      v665 = *v757;
      swift_getKeyPath();
      v666 = *(v665 + 16);
      if (v666)
      {
        v796 = v664;
        v797 = v663;
        v798 = v655;
        v808 = MEMORY[0x1E69E7CC0];

        sub_1DD42A1D4(v666);
        v667 = 32;
        v668 = v808;
        do
        {
          v669 = *(v665 + v667);
          v807 = v669;

          OUTLINED_FUNCTION_120();
          swift_getAtKeyPath();

          if ((OUTLINED_FUNCTION_127() & 1) == 0)
          {
            OUTLINED_FUNCTION_36_2();
            OUTLINED_FUNCTION_26_2();
            sub_1DD42B97C();
            v668 = v808;
          }

          OUTLINED_FUNCTION_46_0();
          if (v130)
          {
            OUTLINED_FUNCTION_1_0(v670);
            OUTLINED_FUNCTION_128();
            v668 = v808;
          }

          *(v668 + 16) = v669;
          *(v668 + 8 * v663 + 32) = v664;
          v667 += 8;
          --v666;
        }

        while (v666);

        v663 = v797;
        v655 = v798;
        v664 = v796;
      }

      else
      {

        v668 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1E12B2430](v668, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_19_8();

      v671 = OUTLINED_FUNCTION_36_0();
      sub_1DD39565C(v671, v672, v673);
      OUTLINED_FUNCTION_105_0();
      *(v663 + 4) = v668;
      OUTLINED_FUNCTION_91();
      _os_log_impl(v674, v655, v675, v676, v663, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v664);
      v677 = OUTLINED_FUNCTION_15_10();
      MEMORY[0x1E12B3DA0](v677);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {
    }

    v652 = v792;
    v653 = v802;
    v527 = v801;
    sub_1DD6404C8();
    v678 = v741;
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v678, v679);
    v526 = v790;
  }

  else
  {
    v652 = v520;
    v653 = v802;
  }

  v680 = v526[18];
  v681 = v757;
  v682 = *v757;

  v683 = v789;
  v684 = OUTLINED_FUNCTION_111();
  sub_1DD3F5FF4(v684, v685);
  OUTLINED_FUNCTION_59_0();

  v686 = *v681;
  *v681 = v652 + v680;

  sub_1DD3F6E14();
  v688 = v687;

  v689 = *v681;
  *v681 = v688;

  OUTLINED_FUNCTION_111();
  sub_1DD3F7210();
  OUTLINED_FUNCTION_59_0();

  v690 = *v681;
  *v681 = v652;

  v691 = v683 + v527[16];
  if (*v691)
  {
    v800 = *v691;
    v799 = *(v691 + 8);
    v692 = v787;
    v693 = v740;
    OUTLINED_FUNCTION_16_6(v740 + *(v787 + 20));
    v694 = v653;
    sub_1DD63F9B8();
    *(v693 + *(v692 + 24)) = v694;
    v695 = v694;
    v696 = sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v697 = swift_allocObject();
    sub_1DD3AE030(v697, 1);
    OUTLINED_FUNCTION_19_8();
    v698 = sub_1DD6408F8();
    OUTLINED_FUNCTION_14_11(v698, v699);
    OUTLINED_FUNCTION_9_8();
    v801 = v695;
    OUTLINED_FUNCTION_121();
    sub_1DD63F998();
    OUTLINED_FUNCTION_73_0();

    v700 = *v681;
    v701 = *(*v681 + 16);
    v702 = MEMORY[0x1E69E7CC0];
    if (v701)
    {
      *&v809[0] = MEMORY[0x1E69E7CC0];

      sub_1DD42A1A4(v701);
      v652 = 32;
      v703 = *&v809[0];
      do
      {
        v704 = *(v700 + v652);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v705 = *(v703 + 16);
          v706 = OUTLINED_FUNCTION_13_9();
          sub_1DD42B93C(v706, v707, v708);
          v703 = *&v809[0];
        }

        v710 = *(v703 + 16);
        v709 = *(v703 + 24);
        v696 = v710 + 1;
        if (v710 >= v709 >> 1)
        {
          OUTLINED_FUNCTION_12_11(v709);
          OUTLINED_FUNCTION_90();
          sub_1DD42B93C(v711, v712, v713);
          v703 = *&v809[0];
        }

        *(v703 + 16) = v696;
        *(v703 + 8 * v710 + 32) = v704;
        v652 += 8;
        --v701;
      }

      while (v701);

      v702 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v703 = MEMORY[0x1E69E7CC0];
    }

    *&v809[0] = v703;
    v715 = OUTLINED_FUNCTION_122();
    (v800)(v715);

    v716 = v808;
    v717 = *(v808 + 16);
    if (v717)
    {
      *&v809[0] = v702;
      v718 = v809;
      sub_1DD42A18C(v717);
      OUTLINED_FUNCTION_72_1();
      v714 = v781;
      do
      {
        v719 = *(v716 + v652);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v720 = *(v718 + 2);
          v721 = OUTLINED_FUNCTION_13_9();
          sub_1DD42B404(v721, v722, v723);
          v718 = *&v809[0];
        }

        OUTLINED_FUNCTION_78_0();
        if (v130)
        {
          OUTLINED_FUNCTION_12_11(v724);
          OUTLINED_FUNCTION_90();
          sub_1DD42B404(v725, v726, v727);
          v718 = *&v809[0];
        }

        *(v718 + 2) = v696;
        *(v718 + v702 + 4) = v719;
        OUTLINED_FUNCTION_112();
      }

      while (!v172);
    }

    else
    {

      v718 = MEMORY[0x1E69E7CC0];
      v714 = v781;
    }

    v728 = *v757;
    *v757 = v718;

    sub_1DD6404C8();
    v729 = v740;
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v729, v730);
    v652 = v792;
  }

  else
  {
    v714 = v781;
  }

  v731 = *(v652 + v790[17]);
  v732 = *(v714 + 16);

  sub_1DD3E831C(v733);

  sub_1DD6404C8();
  v734 = v759;
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_0_27();
  sub_1DD3FA798(v734, v735);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD3F336C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  Expander = type metadata accessor for StripDiacriticsQueryExpander();
  v5 = *(*(Expander - 8) + 64);
  MEMORY[0x1EEE9AC00](Expander - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v8 = sub_1DD63F9F8();
  __swift_project_value_buffer(v8, qword_1EE16F068);
  v9 = sub_1DD63F9D8();
  v10 = sub_1DD640368();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DD38D000, v9, v10, "running initial expanders", v11, 2u);
    MEMORY[0x1E12B3DA0](v11, -1, -1);
  }

  v12 = *(type metadata accessor for ContactResolverConfig(0) + 32);
  v13 = sub_1DD63D168();
  (*(*(v13 - 8) + 16))(v7, a1 + v12, v13);
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v17 = MEMORY[0x1EEE9AC00](v16);
  *(&v21 - 10) = v7;
  *(&v21 - 9) = sub_1DD5E9D00;
  *(&v21 - 8) = 0;
  *(&v21 - 7) = KeyPath;
  *(&v21 - 6) = sub_1DD5E9CFC;
  *(&v21 - 5) = 0;
  *(&v21 - 4) = v15;
  *(&v21 - 3) = sub_1DD5E9D04;
  *(&v21 - 2) = 0;
  *(&v21 - 1) = v17;
  sub_1DD604BFC();
  v19 = v18;

  *a2 = v19;
  return sub_1DD3FA798(v7, type metadata accessor for StripDiacriticsQueryExpander);
}

uint64_t sub_1DD3F35F4@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t (*a10)(void), uint64_t a11, uint64_t a12)
{
  v180 = a8;
  v181 = a7;
  v171 = a6;
  v183 = a5;
  v184 = a4;
  v173 = a3;
  v156 = a2;
  v190 = a1;
  v153 = a9;
  v178 = a12;
  v179 = a11;
  v168 = a10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC200, &qword_1DD645998);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v167 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v170 = &v150 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v161 = &v150 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v163 = &v150 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v150 - v22;
  Expander = type metadata accessor for StripDiacriticsQueryExpander();
  v25 = *(*(Expander - 8) + 64);
  MEMORY[0x1EEE9AC00](Expander - 8);
  v185 = &v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ContactResolver.SignalSet(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = &unk_1DD6459A0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v33 = *(v32 - 1);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v157 = &v150 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v150 = &v150 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v158 = &v150 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v151 = &v150 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v166 = &v150 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v159 = &v150 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v152 = &v150 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v169 = &v150 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v160 = &v150 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v154 = &v150 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v172 = &v150 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v162 = &v150 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v155 = &v150 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v174 = &v150 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v65 = (&v150 - v64);
  MEMORY[0x1EEE9AC00](v63);
  v67 = (&v150 - v66);
  memcpy(v188, v190, sizeof(v188));
  sub_1DD43038C(v30);
  memcpy(v189, v30 + 8, 0x108uLL);
  sub_1DD3C9478(v188, v187);
  sub_1DD3C9580(v189);
  memcpy(v30 + 8, v188, 0x108uLL);
  v190 = v32;
  sub_1DD3FA93C(v30, v67 + v32[9]);
  memcpy(v67, v188, 0x108uLL);
  sub_1DD3C9478(v188, v187);
  sub_1DD3FA798(v30, type metadata accessor for ContactResolver.SignalSet);
  sub_1DD5C1204(v67);
  v69 = v68;
  sub_1DD390754(v67, &qword_1ECCDBC18, &unk_1DD6459A0);
  v187[0] = v69;
  v182 = *(v69 + 16);
  v165 = v67 + 41;

  v71 = 0;
  v164 = MEMORY[0x1E69E7CC0];
  v177 = v69;
  while (v182 != v71)
  {
    if (v71 >= *(v69 + 16))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

    v176 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v72 = v69 + v176;
    v73 = v33;
    v175 = *(v33 + 72);
    sub_1DD3EB3D0(v72 + v175 * v71, v65, &qword_1ECCDBC18, v31);
    v74 = v65[6];
    v75 = v65[5] & 0xFFFFFFFFFFFFLL;
    if ((v74 & 0x2000000000000000) != 0)
    {
      v75 = HIBYTE(v74) & 0xF;
    }

    if (v75)
    {
      goto LABEL_10;
    }

    v76 = v65[16];
    v77 = v65[15] & 0xFFFFFFFFFFFFLL;
    if ((v76 & 0x2000000000000000) != 0)
    {
      v77 = HIBYTE(v76) & 0xF;
    }

    if (v77)
    {
LABEL_10:
      sub_1DD3EB3D0(v65, v67, &qword_1ECCDBC18, v31);
      v78 = v67[6];

      v67[5] = 0;
      v67[6] = 0xE000000000000000;
      v79 = v67[16];

      v67[15] = 0;
      v67[16] = 0xE000000000000000;
      v80 = v23;
      v81 = v190;
      *(v165 + v190[9]) = 1;
      sub_1DD3EB3D0(v67, v80, &qword_1ECCDBC18, v31);
      __swift_storeEnumTagSinglePayload(v80, 0, 1, v81);
      sub_1DD390754(v67, &qword_1ECCDBC18, v31);
    }

    else
    {
      v83 = v23;
      v80 = v23;
      v81 = v190;
      __swift_storeEnumTagSinglePayload(v83, 1, 1, v190);
    }

    v82 = v31;
    sub_1DD390754(v65, &qword_1ECCDBC18, v31);
    if (__swift_getEnumTagSinglePayload(v80, 1, v81) == 1)
    {
      result = sub_1DD390754(v80, &qword_1ECCDC200, &qword_1DD645998);
      ++v71;
      v23 = v80;
      v33 = v73;
      v69 = v177;
    }

    else
    {
      v84 = v155;
      sub_1DD3EB4B8(v80, v155, &qword_1ECCDBC18, v82);
      sub_1DD3EB4B8(v84, v162, &qword_1ECCDBC18, v82);
      v23 = v80;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = *(v164 + 16);
        sub_1DD3BF7FC();
        v164 = v89;
      }

      v85 = *(v164 + 16);
      v86 = v85 + 1;
      v31 = v82;
      if (v85 >= *(v164 + 24) >> 1)
      {
        sub_1DD3BF7FC();
        v86 = v85 + 1;
        v164 = v90;
      }

      v33 = v73;
      ++v71;
      v87 = v164;
      *(v164 + 16) = v86;
      result = sub_1DD3EB4B8(v162, v87 + v176 + v85 * v175, &qword_1ECCDBC18, v31);
      v69 = v177;
    }
  }

  sub_1DD607914(v164);
  v91 = v187[0];
  result = sub_1DD3FA93C(v156, v185);
  v92 = 0;
  v176 = MEMORY[0x1E69E7CC0];
  v177 = v91;
  v182 = *(v91 + 16);
  v93 = v163;
  v186 = v33;
  while (v182 != v92)
  {
    if (v92 >= *(v91 + 16))
    {
      goto LABEL_61;
    }

    v94 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v95 = *(v33 + 72);
    v96 = v174;
    sub_1DD3EB3D0(v91 + v94 + v95 * v92, v174, &qword_1ECCDBC18, &unk_1DD6459A0);
    sub_1DD5E9D08(v96, v93);
    sub_1DD390754(v96, &qword_1ECCDBC18, &unk_1DD6459A0);
    if (__swift_getEnumTagSinglePayload(v93, 1, v190) == 1)
    {
      result = sub_1DD390754(v93, &qword_1ECCDC200, &qword_1DD645998);
      ++v92;
      v91 = v177;
      v33 = v186;
    }

    else
    {
      v97 = v154;
      sub_1DD3EB4B8(v93, v154, &qword_1ECCDBC18, &unk_1DD6459A0);
      sub_1DD3EB4B8(v97, v160, &qword_1ECCDBC18, &unk_1DD6459A0);
      v98 = v176;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = *(v98 + 16);
        sub_1DD3BF7FC();
        v98 = v102;
      }

      v91 = v177;
      v99 = v95;
      v33 = v186;
      v100 = *(v98 + 16);
      if (v100 >= *(v98 + 24) >> 1)
      {
        sub_1DD3BF7FC();
        v98 = v103;
      }

      ++v92;
      *(v98 + 16) = v100 + 1;
      v176 = v98;
      result = sub_1DD3EB4B8(v160, v98 + v94 + v100 * v99, &qword_1ECCDBC18, &unk_1DD6459A0);
      v93 = v163;
    }
  }

  sub_1DD3FA798(v185, type metadata accessor for StripDiacriticsQueryExpander);
  sub_1DD607914(v176);
  v104 = v187[0];
  v185 = *(v187[0] + 16);

  v105 = 0;
  v177 = MEMORY[0x1E69E7CC0];
  v106 = v161;
  v182 = v104;
  while (v185 != v105)
  {
    if (v105 >= *(v104 + 16))
    {
      goto LABEL_62;
    }

    v107 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v108 = *(v33 + 72);
    v109 = v172;
    sub_1DD3EB3D0(v104 + v107 + v108 * v105, v172, &qword_1ECCDBC18, &unk_1DD6459A0);
    sub_1DD5E9970(v109, v173, v183, v106);
    sub_1DD390754(v109, &qword_1ECCDBC18, &unk_1DD6459A0);
    if (__swift_getEnumTagSinglePayload(v106, 1, v190) == 1)
    {
      result = sub_1DD390754(v106, &qword_1ECCDC200, &qword_1DD645998);
      ++v105;
      v104 = v182;
    }

    else
    {
      v110 = v106;
      v111 = v152;
      sub_1DD3EB4B8(v110, v152, &qword_1ECCDBC18, &unk_1DD6459A0);
      sub_1DD3EB4B8(v111, v159, &qword_1ECCDBC18, &unk_1DD6459A0);
      v112 = v177;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = *(v112 + 16);
        sub_1DD3BF7FC();
        v112 = v115;
      }

      v113 = *(v112 + 16);
      if (v113 >= *(v112 + 24) >> 1)
      {
        sub_1DD3BF7FC();
        v112 = v116;
      }

      ++v105;
      *(v112 + 16) = v113 + 1;
      v177 = v112;
      result = sub_1DD3EB4B8(v159, v112 + v107 + v113 * v108, &qword_1ECCDBC18, &unk_1DD6459A0);
      v106 = v161;
      v104 = v182;
    }
  }

  sub_1DD607914(v177);
  v117 = v187[0];
  v185 = *(v187[0] + 16);

  v118 = 0;
  v184 = MEMORY[0x1E69E7CC0];
  while (v185 != v118)
  {
    if (v118 >= *(v117 + 16))
    {
      goto LABEL_63;
    }

    v119 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v120 = v33;
    v121 = v117;
    v122 = *(v120 + 72);
    v123 = v117 + v119 + v122 * v118;
    v124 = v169;
    sub_1DD3EB3D0(v123, v169, &qword_1ECCDBC18, &unk_1DD6459A0);
    v125 = v170;
    sub_1DD5E9970(v124, v171, v180, v170);
    sub_1DD390754(v124, &qword_1ECCDBC18, &unk_1DD6459A0);
    if (__swift_getEnumTagSinglePayload(v125, 1, v190) == 1)
    {
      result = sub_1DD390754(v125, &qword_1ECCDC200, &qword_1DD645998);
      ++v118;
      v117 = v121;
      v33 = v186;
    }

    else
    {
      v183 = v122;
      v126 = v125;
      v127 = v151;
      sub_1DD3EB4B8(v126, v151, &qword_1ECCDBC18, &unk_1DD6459A0);
      sub_1DD3EB4B8(v127, v158, &qword_1ECCDBC18, &unk_1DD6459A0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v131 = *(v184 + 16);
        sub_1DD3BF7FC();
        v184 = v132;
      }

      v117 = v121;
      v128 = v183;
      v129 = *(v184 + 16);
      v33 = v186;
      if (v129 >= *(v184 + 24) >> 1)
      {
        sub_1DD3BF7FC();
        v184 = v133;
      }

      ++v118;
      v130 = v184;
      *(v184 + 16) = v129 + 1;
      result = sub_1DD3EB4B8(v158, v130 + v119 + v129 * v128, &qword_1ECCDBC18, &unk_1DD6459A0);
    }
  }

  sub_1DD607914(v184);
  v134 = v187[0];
  v185 = *(v187[0] + 16);

  v135 = 0;
  v184 = MEMORY[0x1E69E7CC0];
  while (v185 != v135)
  {
    if (v135 >= *(v134 + 16))
    {
      goto LABEL_64;
    }

    v136 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v137 = v134;
    v138 = *(v33 + 72);
    v139 = v134 + v136 + v138 * v135;
    v140 = v166;
    sub_1DD3EB3D0(v139, v166, &qword_1ECCDBC18, &unk_1DD6459A0);
    v141 = v167;
    sub_1DD5E9970(v140, v168, v178, v167);
    sub_1DD390754(v140, &qword_1ECCDBC18, &unk_1DD6459A0);
    if (__swift_getEnumTagSinglePayload(v141, 1, v190) == 1)
    {
      result = sub_1DD390754(v141, &qword_1ECCDC200, &qword_1DD645998);
      ++v135;
      v134 = v137;
      v33 = v186;
    }

    else
    {
      v183 = v138;
      v142 = v141;
      v143 = v150;
      sub_1DD3EB4B8(v142, v150, &qword_1ECCDBC18, &unk_1DD6459A0);
      sub_1DD3EB4B8(v143, v157, &qword_1ECCDBC18, &unk_1DD6459A0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v147 = *(v184 + 16);
        sub_1DD3BF7FC();
        v184 = v148;
      }

      v134 = v137;
      v144 = v183;
      v145 = *(v184 + 16);
      if (v145 >= *(v184 + 24) >> 1)
      {
        sub_1DD3BF7FC();
        v184 = v149;
      }

      ++v135;
      v146 = v184;
      *(v184 + 16) = v145 + 1;
      result = sub_1DD3EB4B8(v157, v146 + v136 + v145 * v144, &qword_1ECCDBC18, &unk_1DD6459A0);
      v33 = v186;
    }
  }

  result = sub_1DD607914(v184);
  *v153 = v187[0];
  return result;
}

uint64_t sub_1DD3F45A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v12 - v7;
  v9 = *a1;
  if (*(v9 + 16))
  {
    sub_1DD3EB3D0(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), &v12 - v7, &qword_1ECCDBC18, &unk_1DD6459A0);
    v10 = sub_1DD4BE138(v8);
    v13 = v9;

    sub_1DD607914(v10);
    result = sub_1DD390754(v8, &qword_1ECCDBC18, &unk_1DD6459A0);
    v9 = v13;
  }

  else
  {
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1DD3F46E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v27[2] = a2;
  v28 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC200, &qword_1DD645998);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v27 - v19;
  v21 = *a1;
  if (!*(v21 + 16))
  {
    goto LABEL_4;
  }

  v27[0] = a5;
  v27[1] = v5;
  v22 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  sub_1DD3EB3D0(v21 + v22, v27 - v19, &qword_1ECCDBC18, &unk_1DD6459A0);
  v23 = type metadata accessor for CandidateContactGenerator(0);
  sub_1DD554874(v20, *(a3 + *(v23 + 80)), v28, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1DD390754(v20, &qword_1ECCDBC18, &unk_1DD6459A0);
    sub_1DD390754(v12, &qword_1ECCDC200, &qword_1DD645998);
    a5 = v27[0];
LABEL_4:
    *a5 = v21;
  }

  sub_1DD3EB4B8(v12, v18, &qword_1ECCDBC18, &unk_1DD6459A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC30, &unk_1DD6575D0);
  v25 = *(v14 + 72);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DD643F90;
  sub_1DD3EB3D0(v18, v26 + v22, &qword_1ECCDBC18, &unk_1DD6459A0);
  v29 = v21;

  sub_1DD607914(v26);
  sub_1DD390754(v18, &qword_1ECCDBC18, &unk_1DD6459A0);
  result = sub_1DD390754(v20, &qword_1ECCDBC18, &unk_1DD6459A0);
  *v27[0] = v29;
  return result;
}

void sub_1DD3F499C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = a3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v28 = *(v26 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v27 = &v25 - v6;
  v7 = type metadata accessor for RelationshipAliasGenerator();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_1DD3FA93C(a2, v10);
  v12 = 0;
  v29 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v29 == v12)
    {
      sub_1DD3FA798(v10, type metadata accessor for RelationshipAliasGenerator);
      *v25 = v13;
      return;
    }

    if (v12 >= *(v11 + 16))
    {
      break;
    }

    v14 = v27;
    v15 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v16 = v11;
    v17 = *(v28 + 72);
    v30 = v12;
    sub_1DD3EB3D0(v11 + v15 + v17 * v12, v27, &qword_1ECCDBC18, &unk_1DD6459A0);
    v18 = sub_1DD57FAAC(v14);
    sub_1DD390754(v14, &qword_1ECCDBC18, &unk_1DD6459A0);
    v19 = *(v18 + 16);
    v20 = *(v13 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_17;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v20 + v19 > *(v13 + 24) >> 1)
    {
      sub_1DD3BF7FC();
      v13 = v21;
    }

    if (*(v18 + 16))
    {
      if ((*(v13 + 24) >> 1) - *(v13 + 16) < v19)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      v11 = v16;
      if (v19)
      {
        v22 = *(v13 + 16);
        v23 = __OFADD__(v22, v19);
        v24 = v22 + v19;
        if (v23)
        {
          goto LABEL_20;
        }

        *(v13 + 16) = v24;
      }
    }

    else
    {

      v11 = v16;
      if (v19)
      {
        goto LABEL_18;
      }
    }

    v12 = v30 + 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1DD3F4C68(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v6[2] = a2;
  sub_1DD582FA8(sub_1DD3FA994, v6, v4);
  *a3 = v5;
}

uint64_t sub_1DD3F4CB8(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
  return sub_1DD63FE38();
}

void sub_1DD3F4CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v8 = sub_1DD63F9F8();
  __swift_project_value_buffer(v8, qword_1EE16F068);
  v9 = sub_1DD63F9D8();
  v10 = sub_1DD640368();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DD38D000, v9, v10, "running FirstContactQuery", v11, 2u);
    MEMORY[0x1E12B3DA0](v11, -1, -1);
  }

  swift_beginAccess();
  v12 = *a4;

  v13 = sub_1DD3F5088(a3, v12);

  if (!v4)
  {
    swift_beginAccess();
    v14 = *(a1 + 16);
    *(a1 + 16) = v13;

    v15 = sub_1DD63F9D8();
    v16 = sub_1DD640368();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v17 = 136315138;
      swift_beginAccess();
      v18 = *(a1 + 16);
      swift_getKeyPath();
      v19 = *(v18 + 16);
      if (v19)
      {
        v27 = v16;
        v28 = v15;
        v32 = MEMORY[0x1E69E7CC0];

        sub_1DD42B97C();
        v20 = 32;
        v21 = v32;
        do
        {
          v30 = *(v18 + v20);

          swift_getAtKeyPath();

          v22 = *(v32 + 16);
          if (v22 >= *(v32 + 24) >> 1)
          {
            sub_1DD42B97C();
          }

          *(v32 + 16) = v22 + 1;
          *(v32 + 8 * v22 + 32) = v31;
          v20 += 8;
          --v19;
        }

        while (v19);

        v15 = v28;
        v16 = v27;
      }

      else
      {

        v21 = MEMORY[0x1E69E7CC0];
      }

      v23 = MEMORY[0x1E12B2430](v21, MEMORY[0x1E69E6530]);
      v25 = v24;

      v26 = sub_1DD39565C(v23, v25, &v33);

      *(v17 + 4) = v26;
      _os_log_impl(&dword_1DD38D000, v15, v16, "matches after FirstContactQuery: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E12B3DA0](v29, -1, -1);
      MEMORY[0x1E12B3DA0](v17, -1, -1);
    }
  }
}

uint64_t sub_1DD3F5088(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v6 = sub_1DD63F9F8();
  __swift_project_value_buffer(v6, qword_1EE16F068);
  v7 = sub_1DD63F9D8();
  sub_1DD640368();
  v8 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_28();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_53_2();
    _os_log_impl(v10, v11, v12, v13, v14, v15);
    v16 = OUTLINED_FUNCTION_11_11();
    MEMORY[0x1E12B3DA0](v16);
  }

  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31_0();
  *(v18 - 16) = a1;
  *(v18 - 8) = v3;
  return sub_1DD6051E4(sub_1DD3FAA34, v19, a2);
}

void sub_1DD3F5198(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *a1;
  v9 = *(*a1 + 16);

  swift_beginAccess();
  v10 = -v9;
  v11 = 4;
  v44 = a2;
  v46 = -v9;
  while (v10 + v11 != 4)
  {
    v12 = v11 - 4;
    if ((v11 - 4) >= *(v8 + 16))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v13 = *(a2 + 16);
    if (v12 >= *(v13 + 16))
    {
      goto LABEL_29;
    }

    if (!*(*(v13 + 8 * v11) + 16))
    {
      v14 = *(v8 + 8 * v11);
      v15 = qword_1EE165FB0;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = sub_1DD63F9F8();
      __swift_project_value_buffer(v16, qword_1EE16F068);
      v17 = sub_1DD63F9D8();
      v18 = sub_1DD640368();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = v8;
        v20 = a3;
        v21 = v4;
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = v12;
        _os_log_impl(&dword_1DD38D000, v17, v18, "running SRRSearchProvider for query %ld", v22, 0xCu);
        v23 = v22;
        v4 = v21;
        a3 = v20;
        v8 = v19;
        a2 = v44;
        MEMORY[0x1E12B3DA0](v23, -1, -1);
      }

      v24 = sub_1DD5CFA98(v14);

      if (v4)
      {

        return;
      }

      swift_beginAccess();
      v25 = *(a2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD586A30(v25);
        v25 = v28;
        *(a2 + 16) = v28;
      }

      if (v12 >= *(v25 + 16))
      {
        goto LABEL_30;
      }

      v27 = *(v25 + 8 * v11);
      *(v25 + 8 * v11) = v24;
      *(a2 + 16) = v25;
      swift_endAccess();

      v10 = v46;
    }

    ++v11;
  }

  if (qword_1EE165FB0 == -1)
  {
    goto LABEL_17;
  }

LABEL_31:
  swift_once();
LABEL_17:
  v29 = sub_1DD63F9F8();
  __swift_project_value_buffer(v29, qword_1EE16F068);

  v30 = sub_1DD63F9D8();
  v31 = sub_1DD640368();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v50 = v33;
    *v32 = 136315138;
    swift_beginAccess();
    v34 = *(a2 + 16);
    swift_getKeyPath();
    v35 = *(v34 + 16);
    if (v35)
    {
      v43 = v33;
      v45 = v31;
      v49 = MEMORY[0x1E69E7CC0];

      sub_1DD42B97C();
      v36 = 32;
      v37 = v49;
      do
      {
        v47 = *(v34 + v36);

        swift_getAtKeyPath();

        v38 = *(v49 + 16);
        if (v38 >= *(v49 + 24) >> 1)
        {
          sub_1DD42B97C();
        }

        *(v49 + 16) = v38 + 1;
        *(v49 + 8 * v38 + 32) = v48;
        v36 += 8;
        --v35;
      }

      while (v35);

      v31 = v45;
      v33 = v43;
    }

    else
    {

      v37 = MEMORY[0x1E69E7CC0];
    }

    v39 = MEMORY[0x1E12B2430](v37, MEMORY[0x1E69E6530]);
    v41 = v40;

    v42 = sub_1DD39565C(v39, v41, &v50);

    *(v32 + 4) = v42;
    _os_log_impl(&dword_1DD38D000, v30, v31, "matches after SRRSearchProvider: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1E12B3DA0](v33, -1, -1);
    MEMORY[0x1E12B3DA0](v32, -1, -1);
  }

  else
  {
  }
}

void sub_1DD3F5664()
{
  OUTLINED_FUNCTION_93();
  v21 = v1;
  v22 = v2;
  OUTLINED_FUNCTION_14();
  v3 = type metadata accessor for Signpost();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v10 = qword_1EE16F0C0;
  v11 = v9 + *(v3 + 20);
  *v11 = "ContactResolver.SearchByPartialName";
  *(v11 + 8) = 35;
  *(v11 + 16) = 2;
  v12 = v10;
  sub_1DD63F9B8();
  *(v9 + *(v3 + 24)) = v12;
  v12;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD643F90;
  v14 = sub_1DD6408F8();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1DD392BD8();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_55_2();
  sub_1DD63F998();

  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31_0();
  *(v18 - 16) = v0;
  *(v18 - 8) = v0;
  sub_1DD3ECE74(sub_1DD3FA9D0, v19, v21, v22);
  sub_1DD6404C8();
  OUTLINED_FUNCTION_55_2();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_0_27();
  sub_1DD3FA798(v9, v20);
  OUTLINED_FUNCTION_86();
}

void sub_1DD3F5874()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v39 = v2;
  v40 = v3;
  v38 = v4;
  v5 = type metadata accessor for Signpost();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1E0, &qword_1DD645930);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = type metadata accessor for HypocorismGenerator();
  v19 = OUTLINED_FUNCTION_7(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  sub_1DD3EB3D0(v1, v17, &qword_1ECCDC1E0, &qword_1DD645930);
  OUTLINED_FUNCTION_8(v17, 1, v18);
  if (v25)
  {
    sub_1DD390754(v17, &qword_1ECCDC1E0, &qword_1DD645930);
    type metadata accessor for InferenceError();
    swift_initStackObject();
    sub_1DD4DE96C(9, 0, 0xE000000000000000, 0xD000000000000094, 0x80000001DD66AB10, 0xD00000000000002BLL, 0x80000001DD66ABB0, 423, MEMORY[0x1E69E7CC0], 1);
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v26 = sub_1DD63F9F8();
    __swift_project_value_buffer(v26, qword_1EE16F0C8);
    sub_1DD4DEB78();
  }

  else
  {
    sub_1DD3FAE44(v17, v24);
    if (qword_1EE166460 != -1)
    {
      OUTLINED_FUNCTION_2_2();
      swift_once();
    }

    v27 = qword_1EE16F0C0;
    v28 = v11 + *(v5 + 20);
    *v28 = "ContactResolver.SearchByHypocorism";
    *(v28 + 8) = 34;
    *(v28 + 16) = 2;
    v29 = v27;
    sub_1DD63F9B8();
    *(v11 + *(v5 + 24)) = v29;
    v29;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    OUTLINED_FUNCTION_23_5();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1DD643F90;
    v31 = sub_1DD6408F8();
    v33 = v32;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1DD392BD8();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    OUTLINED_FUNCTION_97();
    LOBYTE(v38) = 2;
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_62_1();
    sub_1DD63F998();
    v34 = OUTLINED_FUNCTION_104_0();
    MEMORY[0x1EEE9AC00](v34);
    *(&v37 - 4) = v24;
    *(&v37 - 3) = v1;
    v36 = v38;
    sub_1DD3ECE74(sub_1DD3FAB54, (&v37 - 6), v39, v40);
    sub_1DD6404C8();
    OUTLINED_FUNCTION_62_1();
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v11, v35);
    OUTLINED_FUNCTION_44_1();
  }

  OUTLINED_FUNCTION_86();
}

void sub_1DD3F5CA0()
{
  OUTLINED_FUNCTION_93();
  v18 = v0;
  v19 = v1;
  v2 = type metadata accessor for Signpost();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v9 = qword_1EE16F0C0;
  v10 = v8 + *(v2 + 20);
  *v10 = "ContactResolver.SearchByFoundInApps";
  *(v10 + 8) = 35;
  *(v10 + 16) = 2;
  v11 = v9;
  sub_1DD63F9B8();
  *(v8 + *(v2 + 24)) = v11;
  v11;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DD643F90;
  v13 = sub_1DD6408F8();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1DD392BD8();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_55_2();
  sub_1DD63F998();

  MEMORY[0x1EEE9AC00](v16);
  sub_1DD3ECBDC(v18, v19, sub_1DD3FAB78);
  sub_1DD6404C8();
  OUTLINED_FUNCTION_55_2();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_0_27();
  sub_1DD3FA798(v8, v17);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD3F5EAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_getKeyPath();
  v5 = *(v4 + 16);
  if (v5)
  {
    v12 = MEMORY[0x1E69E7CC0];

    sub_1DD42B97C();
    v6 = 32;
    v7 = v12;
    do
    {
      v10 = *(v4 + v6);

      swift_getAtKeyPath();

      v8 = *(v12 + 16);
      if (v8 >= *(v12 + 24) >> 1)
      {
        OUTLINED_FUNCTION_90();
        sub_1DD42B97C();
      }

      *(v12 + 16) = v8 + 1;
      *(v12 + 8 * v8 + 32) = v11;
      v6 += 8;
      --v5;
    }

    while (v5);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1DD3F5FF4(_BYTE *a1, uint64_t a2)
{
  v136 = a2;
  v138 = a1;
  v132 = sub_1DD63D078();
  v2 = OUTLINED_FUNCTION_0(v132);
  v131 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v6);
  v124 = sub_1DD640478();
  v7 = OUTLINED_FUNCTION_0(v124);
  v123 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v11);
  v121 = sub_1DD640438();
  v12 = OUTLINED_FUNCTION_7(v121);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v15);
  v16 = sub_1DD63FBD8();
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v20);
  IsRecentSignalProvider = type metadata accessor for IsRecentSignalProvider();
  v22 = OUTLINED_FUNCTION_3(IsRecentSignalProvider);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v25);
  v137 = sub_1DD63F9C8();
  v26 = OUTLINED_FUNCTION_0(v137);
  v139 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_1();
  v126 = v30;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v32);
  v33 = type metadata accessor for Signpost();
  v34 = OUTLINED_FUNCTION_7(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_1();
  v128 = v37;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v120 - v39;
  if (qword_1EE166460 != -1)
  {
LABEL_29:
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v41 = qword_1EE16F0C0;
  v42 = v40 + v33[5];
  *v42 = "ContactResolver.AddSignalsToContacts";
  *(v42 + 8) = 36;
  *(v42 + 16) = 2;
  v43 = v41;
  sub_1DD63F9B8();
  v127 = v33;
  *(v40 + v33[6]) = v43;
  v44 = v43;
  v45 = sub_1DD6404D8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v47 = swift_allocObject();
  v141 = xmmword_1DD643F90;
  *(v47 + 16) = xmmword_1DD643F90;
  v48 = sub_1DD6408F8();
  v50 = v49;
  *(v47 + 56) = MEMORY[0x1E69E6158];
  v140 = sub_1DD392BD8();
  *(v47 + 64) = v140;
  *(v47 + 32) = v48;
  *(v47 + 40) = v50;
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_121();
  sub_1DD63F998();

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v129 = v40;
  v51 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v51, qword_1EE16F068);
  v52 = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_115();
  if (os_log_type_enabled(v52, v53))
  {
    OUTLINED_FUNCTION_28();
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_1DD38D000, v52, v45, "Attempting to add signals to contact candidates", v54, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v153 = v136;
  v134 = type metadata accessor for ContactResolverConfig(0);
  LOWORD(v147[0]) = *&v138[v134[15]];

  sub_1DD3F92D8();
  v55 = v44;
  v56 = v135;
  sub_1DD63F9B8();
  v57 = sub_1DD6404D8();
  v136 = v46;
  OUTLINED_FUNCTION_23_5();
  v58 = swift_allocObject();
  OUTLINED_FUNCTION_109(v58);
  v40 = 2;
  sub_1DD6408F8();
  OUTLINED_FUNCTION_110();
  v58[3].n128_u64[1] = v60;
  v58[4].n128_u64[0] = v59;
  v58[2].n128_u64[0] = v61;
  v58[2].n128_u64[1] = v62;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_75_0();
  sub_1DD63F998();

  sub_1DD583BB8(&v153);
  sub_1DD6404C8();
  OUTLINED_FUNCTION_75_0();
  sub_1DD63F9A8();
  v63 = *(v139 + 8);
  v139 += 8;
  v63(v56, v137);
  v64 = v153;
  v65 = *(v153 + 16);

  v66 = 0;
  v33 = 0;
  v67 = v64;
LABEL_7:
  v68 = v66;
  while (v65 != v68)
  {
    if (v68 >= *(v64 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v66 = v68 + 1;
    v69 = *(*(v64 + 32 + 8 * v68++) + 16);
    if (v69 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD586A30(v67);
        v67 = v76;
      }

      if (v66 - 1 >= *(v67 + 16))
      {
        __break(1u);
      }

      else
      {
        v133 = v33;
        v33 = v55;
        v70 = v63;
        v40 = v67 + 8 * v66;
        v57 = *(v40 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v40 + 24) = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DD586A18(v57);
          v57 = v77;
          *(v40 + 24) = v77;
        }

        if (*(v57 + 16))
        {
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
          v73 = OUTLINED_FUNCTION_3(v72);
          v75 = v57 + *(v73 + 44) + ((*(v74 + 80) + 32) & ~*(v74 + 80));
          *(v75 + *(type metadata accessor for ContactResolver.SignalSet(0) + 224)) = 1;
          *(v40 + 24) = v57;
          v63 = v70;
          v55 = v33;
          v33 = v133;
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_32;
    }
  }

  v153 = v67;
  v133 = type metadata accessor for ContactSignalProviders(0);
  v78 = (v142 + v133[5]);
  v79 = v78[1];
  v80 = v126;
  if (v79)
  {
    sub_1DD4E8388(&v153, *v78, v79);
  }

  v81 = v55;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  OUTLINED_FUNCTION_23_5();
  v82 = swift_allocObject();
  OUTLINED_FUNCTION_109(v82);
  sub_1DD6408F8();
  OUTLINED_FUNCTION_110();
  v82[3].n128_u64[1] = v84;
  v82[4].n128_u64[0] = v83;
  v82[2].n128_u64[0] = v85;
  v82[2].n128_u64[1] = v86;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_75_0();
  sub_1DD63F998();

  sub_1DD3F991C(v142, &v153);
  v57 = v80;
  if (v33)
  {
LABEL_32:

    sub_1DD6404C8();
    OUTLINED_FUNCTION_123();
    result = (v63)(v57, v137);
    __break(1u);
    return result;
  }

  sub_1DD6404C8();
  OUTLINED_FUNCTION_123();
  v87 = v137;
  v88 = v63;
  v63(v80, v137);
  v89 = v125;
  sub_1DD63D068();
  sub_1DD4E8AC0(&v153);
  sub_1DD3FA798(v89, type metadata accessor for IsRecentSignalProvider);
  v90 = v138;
  if (v138[v134[12]])
  {
    v91 = v81;
    v92 = v135;
    sub_1DD63F9B8();
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v93 = v87;
    v94 = swift_allocObject();
    OUTLINED_FUNCTION_109(v94);
    sub_1DD6408F8();
    OUTLINED_FUNCTION_110();
    v94[3].n128_u64[1] = v96;
    v94[4].n128_u64[0] = v95;
    v94[2].n128_u64[0] = v97;
    v94[2].n128_u64[1] = v98;
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_98();
    sub_1DD63F998();

    sub_1DD4E781C(&v153, *(v142 + v133[7]));
    sub_1DD6404C8();
    v90 = v138;
    OUTLINED_FUNCTION_98();
    sub_1DD63F9A8();
    v88(v92, v93);
  }

  LOBYTE(v147[0]) = *v90;
  if (sub_1DD450A6C())
  {
    v99 = v90[v134[21]];
    v100 = [objc_allocWithZone(MEMORY[0x1E69A4878]) init];
    v145 = sub_1DD39638C(0, &qword_1EE1601B8, 0x1E69A4878);
    v146 = &off_1F58B9698;
    v144[0] = v100;
    sub_1DD3C2388(v144, v147);
    sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
    sub_1DD63FBB8();
    v143 = MEMORY[0x1E69E7CC0];
    sub_1DD3FAC04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
    sub_1DD3FAC5C(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
    sub_1DD640718();
    (*(v123 + 104))(v122, *MEMORY[0x1E69E8090], v124);
    v148 = sub_1DD6404A8();
    __swift_destroy_boxed_opaque_existential_1(v144);
    v149 = v99;
    sub_1DD4E220C(&v153);
    sub_1DD3FACA4(v147);
  }

  v101 = (v142 + v133[8]);
  LODWORD(v142) = *v101;
  v102 = v101[1];
  LODWORD(v139) = v101[2];
  v103 = *(v101 + 1);
  v104 = v127;
  if (qword_1EE162EF8 != -1)
  {
    swift_once();
  }

  v105 = qword_1EE16EFD8;
  v145 = type metadata accessor for MegadomeClient();
  v146 = &off_1F58BB3C8;
  v144[0] = v105;
  v147[3] = &type metadata for ContactFeatures;
  v147[4] = sub_1DD3E6184();
  LOBYTE(v147[0]) = 7;

  v106 = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1(v147);
  v107 = v130;
  sub_1DD63D068();
  v108 = v128;
  v109 = v128 + v104[5];
  *v109 = "ContactResolver.MegadomeSignalProvider.init";
  *(v109 + 8) = 43;
  *(v109 + 16) = 2;
  v110 = v81;
  sub_1DD63F9B8();
  *(v108 + v104[6]) = v110;
  v111 = v110;
  sub_1DD6404D8();
  OUTLINED_FUNCTION_23_5();
  v112 = swift_allocObject();
  OUTLINED_FUNCTION_109(v112);
  sub_1DD6408F8();
  OUTLINED_FUNCTION_110();
  v112[3].n128_u64[1] = v114;
  v112[4].n128_u64[0] = v113;
  v112[2].n128_u64[0] = v115;
  v112[2].n128_u64[1] = v116;
  OUTLINED_FUNCTION_22();
  sub_1DD63F998();

  sub_1DD3C2388(v144, v147);
  LOBYTE(v148) = v106 & 1;
  v149 = v142;
  v150 = v102;
  v151 = v139;
  v152 = v103;
  sub_1DD5186BC();
  sub_1DD3FA798(v108, type metadata accessor for Signpost);
  (*(v131 + 8))(v107, v132);
  __swift_destroy_boxed_opaque_existential_1(v144);
  sub_1DD517A44(&v153);
  sub_1DD3FABB0(v147);
  v117 = v153;
  sub_1DD6404C8();
  v118 = v129;
  sub_1DD63F9A8();
  sub_1DD3FA798(v118, type metadata accessor for Signpost);
  return v117;
}

void sub_1DD3F6E14()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v51 = OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_1();
  v43 = v5;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_0();
  v49 = v7;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_3();
  v50 = v9;
  if (qword_1EE165FB0 != -1)
  {
LABEL_29:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v10 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v10, qword_1EE16F068);
  v11 = sub_1DD63F9D8();
  sub_1DD640368();
  v12 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_28();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_53_2();
    _os_log_impl(v14, v15, v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_11_11();
    MEMORY[0x1E12B3DA0](v20);
  }

  v21 = *(v1 + 16);
  if (v21)
  {
    v53 = MEMORY[0x1E69E7CC0];
    sub_1DD42B404(0, v21, 0);
    v22 = 0;
    v23 = v53;
    v44 = v21;
    v45 = v1 + 32;
    while (2)
    {
      v1 = *(v45 + 8 * v22);
      v47 = v22 + 1;
      v48 = v23;
      v52 = *(v1 + 16);

      v24 = 0;
      do
      {
        if (v52 == v24)
        {
          v37 = v1;
          v23 = v48;
          goto LABEL_23;
        }

        if (v24 >= *(v1 + 16))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_107();
        v27 = v26 & ~v25;
        v29 = *(v28 + 72);
        sub_1DD3EB3D0(v1 + v27 + v29 * v24++, v50, &qword_1ECCDBBE8, &qword_1DD644470);
        v30 = v50 + *(v51 + 36);
        v31 = type metadata accessor for ContactResolver.SignalSet(0);
        LOBYTE(v30) = *(v30 + *(v31 + 132) + 14);
        sub_1DD390754(v50, &qword_1ECCDBBE8, &qword_1DD644470);
      }

      while ((v30 & 1) != 0);
      v32 = 0;
      v46 = MEMORY[0x1E69E7CC0];
LABEL_11:
      v33 = v1 + v27 + v29 * v32;
      while (v52 != v32)
      {
        if (v32 >= *(v1 + 16))
        {
          goto LABEL_28;
        }

        sub_1DD3EB3D0(v33, v49, &qword_1ECCDBBE8, &qword_1DD644470);
        if ((*(v49 + *(v51 + 36) + *(v31 + 132) + 14) & 1) == 0)
        {
          sub_1DD3EB4B8(v49, v43, &qword_1ECCDBBE8, &qword_1DD644470);
          v34 = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_36_2();
            OUTLINED_FUNCTION_26_2();
            sub_1DD42B4F8();
            v34 = v46;
          }

          v36 = *(v34 + 16);
          v35 = *(v34 + 24);
          if (v36 >= v35 >> 1)
          {
            OUTLINED_FUNCTION_1_0(v35);
            OUTLINED_FUNCTION_57_2();
            sub_1DD42B4F8();
            v34 = v46;
          }

          ++v32;
          *(v34 + 16) = v36 + 1;
          v46 = v34;
          sub_1DD3EB4B8(v43, v34 + v27 + v36 * v29, &qword_1ECCDBBE8, &qword_1DD644470);
          goto LABEL_11;
        }

        sub_1DD390754(v49, &qword_1ECCDBBE8, &qword_1DD644470);
        v33 += v29;
        ++v32;
      }

      v23 = v48;
      v37 = v46;
LABEL_23:
      v54 = v23;
      v38 = *(v23 + 16);
      ++v22;
      if (v38 >= *(v23 + 24) >> 1)
      {
        v39 = v37;
        OUTLINED_FUNCTION_106();
        sub_1DD42B404(v40, v41, v42);
        v37 = v39;
        v23 = v54;
      }

      *(v23 + 16) = v38 + 1;
      *(v23 + 8 * v38 + 32) = v37;
      if (v47 != v44)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_17();
}

void sub_1DD3F7210()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = type metadata accessor for Signpost();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  if (*(v0 + *(type metadata accessor for ContactResolverConfig(0) + 56)) == 2)
  {
    if (qword_1EE166460 != -1)
    {
      OUTLINED_FUNCTION_2_2();
      swift_once();
    }

    v11 = qword_1EE16F0C0;
    v12 = v10 + *(v4 + 20);
    *v12 = "ContactResolver.SuggestedContactsFilter";
    *(v12 + 8) = 39;
    *(v12 + 16) = 2;
    v13 = v11;
    sub_1DD63F9B8();
    *(v10 + *(v4 + 24)) = v13;
    v13;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    OUTLINED_FUNCTION_23_5();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DD643F90;
    v15 = sub_1DD6408F8();
    v17 = v16;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1DD392BD8();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_121();
    sub_1DD63F998();
    OUTLINED_FUNCTION_73_0();

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v18 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v18, qword_1EE16F068);
    v19 = sub_1DD63F9D8();
    sub_1DD640368();
    v20 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_28();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_84_0(v22);
      OUTLINED_FUNCTION_33_3();
      _os_log_impl(v23, v24, v25, v26, v27, v28);
      v29 = OUTLINED_FUNCTION_10_2();
      MEMORY[0x1E12B3DA0](v29);
    }

    MEMORY[0x1EEE9AC00](v30);
    OUTLINED_FUNCTION_31_0();
    *(v31 - 16) = v1;
    sub_1DD6047F4(sub_1DD3FAB94, v32, v3);
    sub_1DD6404C8();
    OUTLINED_FUNCTION_121();
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v10, v33);
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD3F74C0@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v78 = a4;
  v79 = a3;
  v80 = a2;
  v8 = type metadata accessor for ContactResolver.SignalSet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v75 - v18;
  Expander = type metadata accessor for PartialNameQueryExpander();
  v21 = *(*(Expander - 8) + 64);
  MEMORY[0x1EEE9AC00](Expander - 8);
  v23 = a1[1];
  if (*(v23 + 16))
  {
    *a5 = v23;
  }

  else
  {
    v87 = v5;
    v88 = v19;
    v85 = v13;
    v75 = v17;
    v77 = a5;
    v25 = *a1;
    v26 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = &v80[*(type metadata accessor for CandidateContactGenerator(0) + 48)];
    v82 = v26;
    sub_1DD3FA93C(v27, v26);
    v28 = 0;
    v29 = MEMORY[0x1E69E7CC0];
    v86 = *(v25 + 16);
    v30 = v11;
    v83 = v11;
    v84 = v25;
    v81 = v12;
    while (1)
    {
      v31 = v88;
      if (v86 == v28)
      {
        break;
      }

      if (v28 >= *(v25 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v32 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v91 = *(v85 + 72);
      sub_1DD3EB3D0(v25 + v32 + v91 * v28, v88, &qword_1ECCDBC18, &unk_1DD6459A0);
      v33 = v31 + *(v12 + 36);
      if (*(v33 + 336))
      {
        v34 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1DD3FA93C(v33, v30);
        *(v30 + 335) = 1;
        memcpy(v89, v31, sizeof(v89));
        v90[3] = type metadata accessor for StringTokenizer();
        v90[4] = &off_1F58C2FE8;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
        sub_1DD3FA93C(v82, boxed_opaque_existential_1);
        v36 = v30;
        sub_1DD41E258();
        MEMORY[0x1EEE9AC00](v37);
        *(&v75 - 2) = v90;
        *(&v75 - 4) = 1;
        v38 = v87;
        sub_1DD582E38();
        v40 = v39;

        v41 = sub_1DD41859C(v40);
        __swift_destroy_boxed_opaque_existential_1(v90);
        v34 = sub_1DD3EC51C(v41, v30);
        v87 = v38;
        v31 = v88;

        v42 = v36;
        v12 = v81;
        sub_1DD3FA798(v42, type metadata accessor for ContactResolver.SignalSet);
      }

      sub_1DD390754(v31, &qword_1ECCDBC18, &unk_1DD6459A0);
      v43 = *(v34 + 16);
      v44 = *(v29 + 16);
      if (__OFADD__(v44, v43))
      {
        goto LABEL_34;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v44 + v43 > *(v29 + 24) >> 1)
      {
        sub_1DD3BF7FC();
        v29 = v45;
      }

      v25 = v84;
      if (*(v34 + 16))
      {
        if ((*(v29 + 24) >> 1) - *(v29 + 16) < v43)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        v30 = v83;
        if (v43)
        {
          v46 = *(v29 + 16);
          v47 = __OFADD__(v46, v43);
          v48 = v46 + v43;
          if (v47)
          {
            goto LABEL_37;
          }

          *(v29 + 16) = v48;
        }
      }

      else
      {

        v30 = v83;
        if (v43)
        {
          goto LABEL_35;
        }
      }

      ++v28;
    }

    sub_1DD3FA798(v82, type metadata accessor for PartialNameQueryExpander);
    if (qword_1EE165FB0 == -1)
    {
      goto LABEL_21;
    }

LABEL_38:
    swift_once();
LABEL_21:
    v49 = sub_1DD63F9F8();
    __swift_project_value_buffer(v49, qword_1EE16F068);

    v50 = sub_1DD63F9D8();
    v51 = sub_1DD640368();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v29;
    v54 = v87;
    v55 = v77;
    v56 = v80;
    if (v52)
    {
      v57 = swift_slowAlloc();
      *v57 = 134217984;
      *(v57 + 4) = *(v53 + 16);

      _os_log_impl(&dword_1DD38D000, v50, v51, "queries after PartialNameQueryExpander: %ld", v57, 0xCu);
      MEMORY[0x1E12B3DA0](v57, -1, -1);
    }

    else
    {
    }

    v58 = MEMORY[0x1E69E7CD0];
    v90[0] = MEMORY[0x1E69E7CD0];
    v59 = *(v53 + 16);
    v76 = v53;
    if (v59)
    {
      v60 = v53 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v61 = *(v85 + 72);
      v62 = v75;
      do
      {
        sub_1DD3EB3D0(v60, v62, &qword_1ECCDBC18, &unk_1DD6459A0);
        v63 = *(v62 + 56);
        v64 = *(v62 + 64);

        sub_1DD56CE00(v89, v63, v64);

        sub_1DD390754(v62, &qword_1ECCDBC18, &unk_1DD6459A0);
        v60 += v61;
        --v59;
      }

      while (v59);
      v58 = v90[0];
      v54 = v87;
      v55 = v77;
      v56 = v80;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC08, &unk_1DD645A80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD643F90;
    *(inited + 32) = v76;

    v66 = sub_1DD3F5088(v79, inited);
    if (v54)
    {

      swift_setDeallocating();
      result = sub_1DD46CBA0();
      *v78 = v54;
    }

    else
    {
      v67 = v66;
      swift_setDeallocating();
      sub_1DD46CBA0();
      if (*(v67 + 16))
      {
        v68 = *(v67 + 32);
      }

      MEMORY[0x1EEE9AC00](v69);
      *(&v75 - 2) = v56;
      *(&v75 - 1) = v58;
      sub_1DD3EBC30();
      v71 = v70;

      *v55 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC230, &unk_1DD64AEC0);
      v72 = swift_initStackObject();
      *(v72 + 16) = xmmword_1DD643F80;
      *(v72 + 32) = 0xD00000000000001DLL;
      *(v72 + 40) = 0x80000001DD66AAD0;
      v73 = *(v76 + 16);

      *(v72 + 48) = sub_1DD6402C8();
      *(v72 + 56) = 0xD00000000000001CLL;
      *(v72 + 64) = 0x80000001DD66AAF0;
      v74 = *(v71 + 16);

      *(v72 + 72) = sub_1DD6402C8();
      sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);
      sub_1DD63FC88();
      sub_1DD399F2C();
    }
  }

  return result;
}

uint64_t sub_1DD3F7D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Expander = type metadata accessor for PartialNameQueryExpander();
  v6 = *(*(Expander - 8) + 64);
  MEMORY[0x1EEE9AC00](Expander - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for CandidateContactGenerator(0);
  sub_1DD3FA93C(a2 + *(v9 + 48), v8);
  v18[3] = type metadata accessor for StringTokenizer();
  v18[4] = &off_1F58C2FE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  sub_1DD3FAE44(v8, boxed_opaque_existential_1);
  sub_1DD40FC64();
  v16 = v18;
  v17 = 1;
  sub_1DD582E38();
  v12 = v11;

  v13 = sub_1DD41859C(v12);
  __swift_destroy_boxed_opaque_existential_1(v18);
  LOBYTE(a3) = sub_1DD5839F8(a3, v13);

  return a3 & 1;
}

uint64_t sub_1DD3F7EB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a5;
  v66 = a4;
  v67 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v59 - v13;
  v15 = type metadata accessor for HypocorismGenerator();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DD63F9C8();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v24 = a1[1];
  if (*(v24 + 16))
  {
    if (qword_1EE165FB0 != -1)
    {
LABEL_38:
      swift_once();
    }

    v25 = sub_1DD63F9F8();
    __swift_project_value_buffer(v25, qword_1EE16F068);
    v26 = sub_1DD63F9D8();
    v27 = sub_1DD640368();
    v28 = a6;
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DD38D000, v26, v27, "Skipping hypocorism expander since matches are already present", v29, 2u);
      MEMORY[0x1E12B3DA0](v29, -1, -1);
    }

    *v28 = v24;
  }

  else
  {
    v69 = a2;
    v64 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v60 = v23;
    v71 = v14;
    v61 = v21;
    v72 = v11;
    v68 = v10;
    v59[0] = a6;
    v63 = v6;
    v70 = *a1;
    if (qword_1EE166460 != -1)
    {
      swift_once();
    }

    v31 = qword_1EE16F0C0;
    sub_1DD63F9B8();
    v24 = sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    a6 = swift_allocObject();
    v62 = xmmword_1DD643F90;
    *(a6 + 16) = xmmword_1DD643F90;
    v32 = sub_1DD6408F8();
    v34 = v33;
    *(a6 + 56) = MEMORY[0x1E69E6158];
    *(a6 + 64) = sub_1DD392BD8();
    *(a6 + 32) = v32;
    *(a6 + 40) = v34;
    v59[1] = v31;
    sub_1DD63F998();

    sub_1DD3FA93C(v69, v18);
    v35 = 0;
    v36 = v70;
    v69 = *(v70 + 16);
    v37 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v38 = v71;
      if (v69 == v35)
      {
        break;
      }

      if (v35 >= *(v36 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v24 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      sub_1DD3EB3D0(v36 + v24 + *(v72 + 72) * v35, v71, &qword_1ECCDBC18, &unk_1DD6459A0);
      v39 = sub_1DD4DC398(v38);
      sub_1DD390754(v38, &qword_1ECCDBC18, &unk_1DD6459A0);
      a6 = *(v39 + 16);
      v40 = *(v37 + 16);
      if (__OFADD__(v40, a6))
      {
        goto LABEL_34;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v40 + a6 > *(v37 + 24) >> 1)
      {
        sub_1DD3BF7FC();
        v37 = v41;
      }

      if (*(v39 + 16))
      {
        if ((*(v37 + 24) >> 1) - *(v37 + 16) < a6)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        if (a6)
        {
          v42 = *(v37 + 16);
          v43 = __OFADD__(v42, a6);
          v44 = v42 + a6;
          if (v43)
          {
            goto LABEL_37;
          }

          *(v37 + 16) = v44;
        }
      }

      else
      {

        if (a6)
        {
          goto LABEL_35;
        }
      }

      ++v35;
      v36 = v70;
    }

    sub_1DD3FA798(v18, type metadata accessor for HypocorismGenerator);
    sub_1DD6404C8();
    v45 = v64;
    sub_1DD63F9A8();
    (*(v60 + 8))(v45, v61);
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v46 = sub_1DD63F9F8();
    __swift_project_value_buffer(v46, qword_1EE16F068);

    v47 = sub_1DD63F9D8();
    v48 = sub_1DD640368();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v63;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = *(v37 + 16);

      _os_log_impl(&dword_1DD38D000, v47, v48, "queries after HypocorismNameExpander: %ld", v51, 0xCu);
      MEMORY[0x1E12B3DA0](v51, -1, -1);
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC08, &unk_1DD645A80);
    inited = swift_initStackObject();
    *(inited + 16) = v62;
    *(inited + 32) = v37;

    v53 = sub_1DD3F5088(v66, inited);
    if (v50)
    {

      swift_setDeallocating();
      result = sub_1DD46CBA0();
      *v65 = v50;
    }

    else
    {
      v54 = v53;
      swift_setDeallocating();
      sub_1DD46CBA0();
      if (*(v54 + 16))
      {
        v55 = *(v54 + 32);
      }

      else
      {
        v55 = MEMORY[0x1E69E7CC0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC230, &unk_1DD64AEC0);
      v56 = swift_initStackObject();
      *(v56 + 16) = xmmword_1DD643F80;
      *(v56 + 32) = 0xD00000000000001CLL;
      *(v56 + 40) = 0x80000001DD66AC70;
      v57 = *(v37 + 16);

      *(v56 + 48) = sub_1DD6402C8();
      *(v56 + 56) = 0xD00000000000001BLL;
      *(v56 + 64) = 0x80000001DD66AC90;
      v58 = *(v55 + 16);
      *(v56 + 72) = sub_1DD6402C8();
      sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);
      sub_1DD63FC88();
      sub_1DD399F2C();

      *v59[0] = v55;
    }
  }

  return result;
}

uint64_t sub_1DD3F86FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16))
  {
    v4 = a2;
  }

  else
  {
    v4 = a3 + *(type metadata accessor for CandidateContactGenerator(0) + 52);
    v6 = sub_1DD46D650(a1);
    if (!v3)
    {
      v4 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC230, &unk_1DD64AEC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD643F90;
      *(inited + 32) = 0xD000000000000016;
      *(inited + 40) = 0x80000001DD66AD20;
      v8 = *(v4 + 16);
      *(inited + 48) = sub_1DD6402C8();
      sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);
      sub_1DD63FC88();
      sub_1DD399F2C();
    }
  }

  return v4;
}

uint64_t sub_1DD3F8838@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v6 = *(a2 + *(type metadata accessor for CandidateContactGenerator(0) + 56));
  result = sub_1DD5EB3F8(v4);
  *a3 = result;
  return result;
}

uint64_t sub_1DD3F889C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v11 = type metadata accessor for ContactsFrameworkMatcher();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *a1;
  v61 = MEMORY[0x1E69E7CC0];
  v15 = type metadata accessor for ContactResolverConfig(0);
  if (*(a2 + v15[12]) == 1)
  {
    v16 = type metadata accessor for CandidateContactGenerator(0);
    sub_1DD3FA93C(a3 + *(v16 + 36), v14);
    if (!*(a2 + v15[14]))
    {
      sub_1DD3FA798(v14, type metadata accessor for ContactsFrameworkMatcher);
      sub_1DD3FA93C(a3 + *(v16 + 52), v14);
    }

    v17 = sub_1DD46D650(v54);
    if (v5)
    {
      result = sub_1DD3FA798(v14, type metadata accessor for ContactsFrameworkMatcher);
      *a4 = v5;
      return result;
    }

    v19 = v17;
    v61 = v17;
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v50 = a3;
    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16F068);
    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640368();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = *(v19 + 16);
      _os_log_impl(&dword_1DD38D000, v21, v22, "found %ld 1p candidates", v23, 0xCu);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
    }

    v52 = a5;
    v53 = 0;

    sub_1DD3FA798(v14, type metadata accessor for ContactsFrameworkMatcher);
  }

  else
  {
    v50 = a3;
    v52 = a5;
    v53 = v5;
  }

  v24 = 0;
  v25 = *(a2 + v15[11]);
  v26 = *(v25 + 16);
  v27 = v25 + 40;
  v55 = MEMORY[0x1E69E7CC0];
  v51 = v25 + 40;
LABEL_13:
  v28 = (v27 + 16 * v24);
  while (v26 != v24)
  {
    if (v24 >= *(v25 + 16))
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_26;
    }

    v29 = *(v28 - 1);
    v30 = *v28;
    v56 = v29;
    v57 = v30;
    v58 = 0x6C7070612E6D6F63;
    v59 = 0xEA00000000002E65;
    sub_1DD3B52B8();
    sub_1DD3B530C();

    if ((sub_1DD63FD48() & 1) == 0)
    {
      v31 = v55;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = *(v31 + 16);
        sub_1DD42A2D4();
        v31 = v60;
      }

      v34 = *(v31 + 16);
      if (v34 >= *(v31 + 24) >> 1)
      {
        sub_1DD42A2D4();
        v31 = v60;
      }

      ++v24;
      *(v31 + 16) = v34 + 1;
      v55 = v31;
      v35 = v31 + 16 * v34;
      *(v35 + 32) = v29;
      *(v35 + 40) = v30;
      v27 = v51;
      goto LABEL_13;
    }

    v28 += 2;
    ++v24;
  }

  if (*(v25 + 16) && !*(v55 + 16))
  {

    goto LABEL_32;
  }

  if (qword_1EE165FB0 != -1)
  {
    goto LABEL_34;
  }

LABEL_26:
  v36 = sub_1DD63F9F8();
  __swift_project_value_buffer(v36, qword_1EE16F068);
  v37 = sub_1DD63F9D8();
  v38 = sub_1DD640368();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v54;
  if (v39)
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1DD38D000, v37, v38, "Attempting search for 3p contacts", v41, 2u);
    MEMORY[0x1E12B3DA0](v41, -1, -1);
  }

  v42 = *(type metadata accessor for CandidateContactGenerator(0) + 40);
  v43 = sub_1DD41859C(v55);
  v44 = sub_1DD5F779C(v40, v43);

  v45 = sub_1DD63F9D8();
  v46 = sub_1DD640368();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134217984;
    *(v47 + 4) = *(v44 + 16);

    _os_log_impl(&dword_1DD38D000, v45, v46, "found %ld 3p candidates", v47, 0xCu);
    MEMORY[0x1E12B3DA0](v47, -1, -1);
  }

  else
  {
  }

LABEL_32:
  swift_beginAccess();
  sub_1DD60782C();
  swift_endAccess();

  sub_1DD3F8E68();
  v49 = v48;
  result = swift_bridgeObjectRelease_n();
  *v52 = v49;
  return result;
}

void sub_1DD3F8E68()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v44 - v8;
  v10 = *(v1 + 16);
  if (!v10 || (v11 = (*(v6 + 80) + 32) & ~*(v6 + 80), v12 = (v1 + *(v5 + 36) + v11), (v13 = v12[27]) == 0))
  {
LABEL_23:

    goto LABEL_25;
  }

  v52 = v12[27];
  v53 = v7;
  v14 = v12[25];
  v16 = v12[28];
  v15 = v12[29];
  v17 = v12[30];
  v50 = v12[26];
  v51 = v14;
  v55 = v14;
  v56 = v50;
  v57 = v13;
  v58 = v16;
  v59 = v15;
  v48 = v15;
  v60 = v17;
  v18 = *(v6 + 72);

  v49 = v16;

  v47 = v17;

  v19 = 0;
  v46 = v11;
  v20 = v1 + v11;
  v21 = MEMORY[0x1E69E7CC0];
  v45 = v1 + v11;
LABEL_4:
  v22 = v20 + v18 * v19;
  while (v10 != v19)
  {
    sub_1DD3EB3D0(v22, v9, &qword_1ECCDBBE8, &qword_1DD644470);
    if (sub_1DD3FA068(v9, &v55))
    {
      v23 = v53;
      sub_1DD3EB4B8(v9, v53, &qword_1ECCDBBE8, &qword_1DD644470);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v21;
      v44 = v1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = *(v21 + 16);
        OUTLINED_FUNCTION_26_2();
        sub_1DD42B4F8();
        v23 = v53;
        v21 = v54;
      }

      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v26);
        v30 = v29;
        sub_1DD42B4F8();
        v28 = v30;
        v23 = v53;
        v21 = v54;
      }

      ++v19;
      *(v21 + 16) = v28;
      sub_1DD3EB4B8(v23, v21 + v46 + v27 * v18, &qword_1ECCDBBE8, &qword_1DD644470);
      v1 = v44;
      v20 = v45;
      goto LABEL_4;
    }

    sub_1DD390754(v9, &qword_1ECCDBBE8, &qword_1DD644470);
    v22 += v18;
    ++v19;
  }

  sub_1DD3FAA54(v51, v50, v52);
  if (!*(v21 + 16))
  {

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v38 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v38, qword_1EE16F068);
    v39 = sub_1DD63F9D8();
    v40 = sub_1DD640368();
    v41 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_28();
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1DD38D000, v39, v40, "Filtered the candidate contacts down to none based on handles. Returning the original results.", v43, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    goto LABEL_23;
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v31 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v31, qword_1EE16F068);

  v32 = sub_1DD63F9D8();
  v33 = sub_1DD640368();
  v34 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134218240;
    *(v36 + 4) = v10;

    *(v36 + 12) = 2048;
    *(v36 + 14) = *(v21 + 16);

    _os_log_impl(&dword_1DD38D000, v32, v33, "Filtered the contacts from %ld candidates to %ld candidates by handles.", v36, 0x16u);
    v37 = OUTLINED_FUNCTION_15_10();
    MEMORY[0x1E12B3DA0](v37);
  }

  else
  {
  }

LABEL_25:
  OUTLINED_FUNCTION_17();
}

void sub_1DD3F92D8()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  OUTLINED_FUNCTION_51(v4);
  v88 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v73 - v9);
  v83 = type metadata accessor for Contact();
  v11 = OUTLINED_FUNCTION_7(v83);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v82 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  OUTLINED_FUNCTION_7(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_7_3();
  v78 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  v21 = OUTLINED_FUNCTION_3(v20);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = (&v73 - v27);
  v87 = *v1;
  v90 = v3;
  v29 = *v3;
  v30 = *(*v3 + 16);
  v74 = *v3 + 32;
  v75 = v30;
  v76 = v29;

  v34 = 0;
  v79 = v26;
  v80 = v15;
  v81 = v28;
LABEL_2:
  if (v34 == v75)
  {
LABEL_31:

    OUTLINED_FUNCTION_17();
    return;
  }

  if (v34 < *(v76 + 16))
  {
    v35 = *(v74 + 8 * v34);
    v91 = v34;
    v77 = v34 + 1;
    v85 = *(v35 + 16);

    v36 = 0;
    v84 = v35;
    while (1)
    {
      if (v36 == v85)
      {
        v37 = 1;
        v38 = v85;
      }

      else
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        if (v36 >= *(v35 + 16))
        {
          goto LABEL_36;
        }

        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
        OUTLINED_FUNCTION_51(v39);
        v40 = v36;
        v38 = v36 + 1;
        v43 = v35 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v42 + 72) * v40;
        v44 = *(v15 + 48);
        v45 = v78;
        *v78 = v40;
        sub_1DD3EB3D0(v43, v45 + v44, &qword_1ECCDBBE8, &qword_1DD644470);
        sub_1DD3EB4B8(v45, v26, &qword_1ECCDC238, &unk_1DD654E40);
        v37 = 0;
      }

      __swift_storeEnumTagSinglePayload(v26, v37, 1, v15);
      sub_1DD3EB4B8(v26, v28, &qword_1ECCDC240, &qword_1DD645AA0);
      if (__swift_getEnumTagSinglePayload(v28, 1, v15) == 1)
      {

        v34 = v77;
        goto LABEL_2;
      }

      v86 = v38;
      v46 = *v28;
      v47 = *(v15 + 48);
      v48 = v82;
      sub_1DD3FA93C(v28 + v47, v82);
      sub_1DD390754(v28 + v47, &qword_1ECCDBBE8, &qword_1DD644470);
      v49 = *(v48 + *(v83 + 80));

      OUTLINED_FUNCTION_37_5();
      sub_1DD3FA798(v48, v50);
      v51 = *(v49 + 16);
      if (v51)
      {
        break;
      }

      v53 = MEMORY[0x1E69E7CC0];
LABEL_20:
      v65 = *v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD586A30(v65);
        v65 = isUniquelyReferenced_nonNull_native;
      }

      if (v91 >= *(v65 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v66 = *(v65 + 32 + 8 * v91);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v65 + 32 + 8 * v91) = v66;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v46 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_1DD586A18(v66);
        v66 = isUniquelyReferenced_nonNull_native;
        *(v65 + 32 + 8 * v91) = isUniquelyReferenced_nonNull_native;
        if ((v46 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }
      }

      if (v46 >= *(v66 + 16))
      {
        goto LABEL_34;
      }

      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      v68 = OUTLINED_FUNCTION_51(v67);
      v71 = v66 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v70 + 72) * v46 + *(v68 + 44);
      v72 = *(v71 + 272);
      *(v71 + 272) = v53;

      *v90 = v65;
      v35 = v84;
      v36 = v86;
      v28 = v81;
    }

    v89 = v46;
    v95 = MEMORY[0x1E69E7CC0];
    sub_1DD42B5CC(0, v51, 0);
    v52 = 0;
    v53 = v95;
    v54 = 32;
    while (v52 < *(v49 + 16))
    {
      memcpy(v94, (v49 + v54), 0x4AuLL);
      memcpy(v93, (v49 + v54), 0x4AuLL);
      sub_1DD3C6A40(v94, v92);
      v55 = v10;
      sub_1DD3F9B98(v93, v87, v90, v91, v89, v10);
      memcpy(v92, v93, 0x4AuLL);
      sub_1DD3C6A9C(v92);
      v95 = v53;
      v57 = *(v53 + 16);
      v56 = *(v53 + 24);
      if (v57 >= v56 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v56);
        OUTLINED_FUNCTION_106();
        sub_1DD42B5CC(v62, v63, v64);
        v53 = v95;
      }

      *(v53 + 16) = v57 + 1;
      OUTLINED_FUNCTION_107();
      v61 = v53 + (v59 & ~v58) + *(v60 + 72) * v57;
      v10 = v55;
      sub_1DD3EB4B8(v55, v61, &qword_1ECCDBBD8, &unk_1DD645A90);
      if (v51 - 1 == v52)
      {

        v26 = v79;
        v15 = v80;
        v46 = v89;
        goto LABEL_20;
      }

      v54 += 80;
      ++v52;
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_37:
  __break(1u);
  memcpy(isUniquelyReferenced_nonNull_native, v32, v33);
  sub_1DD3C6A9C(v92);

  __break(1u);
}

void sub_1DD3F991C(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + *(type metadata accessor for ContactSignalProviders(0) + 24);
  sub_1DD5B652C(a2);
  if (v2)
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1DD63F9F8();
    __swift_project_value_buffer(v5, qword_1EE16F068);
    v6 = v2;
    v7 = sub_1DD63F9D8();
    v8 = sub_1DD640378();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136446210;
      v11 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
      v12 = sub_1DD63FE38();
      v14 = sub_1DD39565C(v12, v13, &v15);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1DD38D000, v7, v8, "SiriRemembersContactSignalProvider failed: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1E12B3DA0](v10, -1, -1);
      MEMORY[0x1E12B3DA0](v9, -1, -1);
    }

    type metadata accessor for InferenceError();
    swift_initStackObject();
    sub_1DD4DE96C(26, 0, 0xE000000000000000, 0xD000000000000094, 0x80000001DD66AB10, 0xD000000000000029, 0x80000001DD66AE80, 587, MEMORY[0x1E69E7CC0], 1);
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v5, qword_1EE16F0C8);
    sub_1DD4DEB78();
  }
}

void sub_1DD3F9B98(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for ContactResolver.HandleSignalSet(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, 0x4AuLL);
  *(v15 + 1) = 0;
  v16 = v12[9];
  v17 = sub_1DD63F148();
  __swift_storeEnumTagSinglePayload(&v15[v16], 1, 1, v17);
  v15[v12[10]] = 0;
  v18 = v12[12];
  v15[v18] = 0;
  v15[v12[13]] = 0;
  v15[v12[14]] = 0;
  *v15 = __dst[72];
  v19 = BYTE1(a2);
  if (a2 == 2)
  {
    v20 = 3;
  }

  else
  {
    v20 = BYTE1(a2);
  }

  v21 = __dst[16];
  if (__dst[16] != 3)
  {
    if (__dst[16] != v20)
    {
      goto LABEL_6;
    }

LABEL_16:
    v46 = v20;
    v15[v18] = 1;
    v22 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v22;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((a4 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1DD586A30(v22);
      v22 = v35;
      *a3 = v35;
      if ((a4 & 0x8000000000000000) == 0)
      {
LABEL_18:
        if (*(v22 + 16) > a4)
        {
          v44 = v21;
          v45 = a6;
          v21 = v22 + 32;
          a6 = *(v22 + 32 + 8 * a4);
          v27 = swift_isUniquelyReferenced_nonNull_native();
          *(v22 + 32 + 8 * a4) = a6;
          if (v27)
          {
            if ((a5 & 0x8000000000000000) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_31;
          }

LABEL_30:
          sub_1DD586A18(a6);
          a6 = v36;
          *(v21 + 8 * a4) = v36;
          if ((a5 & 0x8000000000000000) == 0)
          {
LABEL_21:
            if (a6[2] > a5)
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
              v43 = a3;
              a2 = v28;
              v29 = *(v28 - 8);
              v41 = (*(v29 + 80) + 32) & ~*(v29 + 80);
              v30 = *(v29 + 72);
              v42 = a5;
              a3 = (v30 * a5);
              a5 = a6 + v41 + *(v28 + 36) + v30 * a5;
              v31 = type metadata accessor for ContactResolver.SignalSet(0);
              *(a5 + *(v31 + 188)) = 1;
              *(v21 + 8 * a4) = a6;
              v32 = *v43;
              if (*(*v43 + 16) > a4)
              {
                v22 = v31;
                v21 = v32 + 32;
                a5 = *(v32 + 32 + 8 * a4);
                v33 = swift_isUniquelyReferenced_nonNull_native();
                *(v21 + 8 * a4) = a5;
                if (v33)
                {
LABEL_24:
                  a6 = v45;
                  if (*(a5 + 16) > v42)
                  {
                    *(a3 + a5 + v41 + *(a2 + 36) + *(v22 + 192)) = 1;
                    *(v21 + 8 * a4) = a5;
                    v19 = v46;
                    LODWORD(v21) = v44;
                    goto LABEL_26;
                  }

                  __break(1u);
                  goto LABEL_36;
                }

LABEL_34:
                sub_1DD586A18(a5);
                a5 = v37;
                *(v21 + 8 * a4) = v37;
                goto LABEL_24;
              }

LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v20 == 3)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (a2 != 2 && (a2 & 1) != 0)
  {
    goto LABEL_26;
  }

  v46 = v20;
  v15[v18] = 1;
  v22 = *a3;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v22;
  if (v23)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_36:
  sub_1DD586A30(v22);
  v22 = v38;
  *a3 = v38;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_10:
  if (*(v22 + 16) <= a4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  LODWORD(a2) = v21;
  v21 = a5;
  v22 += 32;
  a5 = *(v22 + 8 * a4);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 8 * a4) = a5;
  if (v24)
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_39:
  sub_1DD586A18(a5);
  a5 = v39;
  *(v22 + 8 * a4) = v39;
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

LABEL_13:
  if (*(a5 + 16) > v21)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
    v21 = a5 + ((*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80)) + *(*(v25 - 8) + 72) * v21 + *(v25 + 36);
    *(v21 + *(type metadata accessor for ContactResolver.SignalSet(0) + 192)) = 1;
    *(v22 + 8 * a4) = a5;
    v19 = v46;
    LODWORD(v21) = a2;
LABEL_26:
    v15[v12[11]] = v19 == v21;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
    sub_1DD3FAE44(v15, a6 + *(v34 + 36));
    memcpy(a6, __dst, 0x4AuLL);
    sub_1DD3C6A40(__dst, v47);
    return;
  }

LABEL_41:
  __break(1u);
}

uint64_t sub_1DD3FA068(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + *(type metadata accessor for Contact() + 80));
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = *MEMORY[0x1E69964B0];
  v46 = *MEMORY[0x1E69964B0] + 16;
  v7 = 32;
  while (v4 != v5)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    memcpy(__dst, (v3 + v7), 0x4AuLL);
    v8 = *a2;
    if (*a2 && v8 != LOBYTE(__dst[1]))
    {
      goto LABEL_32;
    }

    v9 = *(a2 + 4);
    v10 = *(a2 + 5);
    if (*a2)
    {
      if (v8 != 1)
      {
        sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);
        sub_1DD3C6A40(__dst, v42);
LABEL_15:

        v17 = sub_1DD40B8E0();
        v18 = sub_1DD415480(v17);
        if (v19)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }

        if (v19)
        {
          v16 = v19;
        }

        else
        {
          v16 = 0xE000000000000000;
        }

        goto LABEL_21;
      }

      sub_1DD3C6A40(__dst, v42);
      v11 = sub_1DD63FDA8();
      v12 = (*(v6 + 16))(v6, v11);
    }

    else
    {
      *&v41[0] = *(a2 + 4);
      *(&v41[0] + 1) = v10;
      v43 = 64;
      v44 = 0xE100000000000000;
      sub_1DD3C6A40(__dst, v42);
      sub_1DD3B7F10();
      if ((sub_1DD6406D8() & 1) == 0)
      {
        sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);
        goto LABEL_15;
      }

      v11 = sub_1DD63FDA8();
      v12 = (*(v6 + 16))(v6, v11);
    }

    v13 = v12;

    v14 = sub_1DD63FDD8();
    v16 = v15;

LABEL_21:
    v20 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v20 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v20 || (v14 == *(&__dst[3] + 1) ? (v21 = v16 == *&__dst[4]) : (v21 = 0), v21))
    {
    }

    else
    {
      v22 = sub_1DD640CD8();

      if ((v22 & 1) == 0)
      {
        sub_1DD3C6A9C(__dst);
        goto LABEL_32;
      }
    }

    memcpy(v42, __dst, 0x4AuLL);
    v23 = *(a2 + 1);
    v41[0] = *a2;
    v41[1] = v23;
    v41[2] = *(a2 + 2);
    sub_1DD412278();
    v25 = v24;
    sub_1DD3C6A9C(__dst);
    if (v25)
    {
      return 1;
    }

LABEL_32:
    v7 += 80;
    ++v5;
  }

  if (qword_1EE165FB0 == -1)
  {
    goto LABEL_34;
  }

LABEL_41:
  swift_once();
LABEL_34:
  v26 = sub_1DD63F9F8();
  __swift_project_value_buffer(v26, qword_1EE16F068);

  sub_1DD3FAAA4(a2, __dst);
  v27 = sub_1DD63F9D8();
  v28 = sub_1DD640368();
  sub_1DD3FAB00(a2);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v41[0] = v30;
    *v29 = 136315394;
    v31 = MEMORY[0x1E12B2430](v3, &type metadata for ContactHandle);
    v33 = v32;

    v34 = sub_1DD39565C(v31, v33, v41);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = *(a2 + 1);
    __dst[0] = *a2;
    __dst[1] = v35;
    __dst[2] = *(a2 + 2);
    sub_1DD3FAAA4(a2, v42);
    v36 = ContactHandleQuery.description.getter();
    v38 = v37;

    v39 = sub_1DD39565C(v36, v38, v41);

    *(v29 + 14) = v39;
    _os_log_impl(&dword_1DD38D000, v27, v28, "Nominating contact with %s for removal because it doesn't match the query for %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v30, -1, -1);
    MEMORY[0x1E12B3DA0](v29, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1DD3FA59C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_114Tm()
{
  v1 = (type metadata accessor for MeCardContactGenerator() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = v1[8];
  v8 = sub_1DD63D168();
  OUTLINED_FUNCTION_7(v8);
  (*(v9 + 8))(v0 + v3 + v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DD3FA718(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for MeCardContactGenerator();
  OUTLINED_FUNCTION_3(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_1DD3FA798(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD3FA93C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14();
  v5 = v4(v3);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_15_0();
  v9(v8);
  return a2;
}

uint64_t sub_1DD3FA994@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  result = sub_1DD5149D0(a1);
  *a2 = result;
  return result;
}

void sub_1DD3FA9F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  sub_1DD414C20();
}

uint64_t sub_1DD3FAA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1DD3FAC04()
{
  result = qword_1EE166488;
  if (!qword_1EE166488)
  {
    sub_1DD640438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE166488);
  }

  return result;
}

uint64_t sub_1DD3FAC5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DD3FADD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC250, &qword_1DD645B10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3FAE44(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14();
  v5 = v4(v3);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_15_0();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_14_11(uint64_t result, uint64_t a2)
{
  v5 = *(v3 + 464);
  v4[3] = v2;
  v4[4] = v5;
  *v4 = result;
  v4[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_41_2(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return sub_1DD3FA798(v0, type metadata accessor for ContactResolverCache);
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return sub_1DD3FA798(v0, type metadata accessor for HypocorismGenerator);
}

void OUTLINED_FUNCTION_49_2()
{
  v1 = v0[44];
  v2 = v0[49];
  v3 = v0[35];
}

uint64_t OUTLINED_FUNCTION_61_1()
{
}

uint64_t OUTLINED_FUNCTION_64_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(a14 + 16);

  return sub_1DD640998();
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return sub_1DD6409A8();
}

uint64_t OUTLINED_FUNCTION_68_0()
{
  *(v1 - 72) = v0;
}

uint64_t OUTLINED_FUNCTION_70_0()
{
  result = *(v0 + 416);
  v3 = *(v0 + 344);
  v4 = *(v1 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_74_0(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_76_0()
{
  v3 = *(v0 + 336);
  v4 = *(v3 + 16);
  *(v3 + 16) = v1;
}

uint64_t OUTLINED_FUNCTION_81_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_82_0()
{
  v2 = *(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_99@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_100()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_101@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 256) = *(v1 + 8 * a1 + 32);
}

uint64_t OUTLINED_FUNCTION_104_0()
{
}

uint64_t OUTLINED_FUNCTION_105_0()
{
}

__n128 OUTLINED_FUNCTION_109(__n128 *a1)
{
  result = *(v1 - 256);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_117(uint64_t result, uint64_t a2)
{
  *(v2 - 256) = result;
  *(v2 - 248) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_123()
{

  return sub_1DD63F9A8();
}

uint64_t OUTLINED_FUNCTION_126@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 16) = v1;
}

uint64_t OUTLINED_FUNCTION_127()
{
  v2 = *(v0 + 752);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_128()
{

  sub_1DD42B97C();
}

uint64_t sub_1DD3FB504(_BYTE *a1, uint64_t a2)
{
  v131 = a2;
  v124 = type metadata accessor for Signpost();
  v3 = OUTLINED_FUNCTION_7(v124);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v127 = v7 - v6;
  v128 = sub_1DD63D078();
  v8 = OUTLINED_FUNCTION_0(v128);
  v126 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14_2(v13 - v12);
  IsRecentSignalProvider = type metadata accessor for IsRecentSignalProvider();
  v14 = OUTLINED_FUNCTION_7(IsRecentSignalProvider);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14_2(v18 - v17);
  v118 = sub_1DD63F308();
  v19 = OUTLINED_FUNCTION_0(v118);
  v114 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14_2(v24 - v23);
  v120 = type metadata accessor for SiriRemembersContactSignalProvider();
  v25 = OUTLINED_FUNCTION_7(v120);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v129 = &v111 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_14_2(&v111 - v30);
  v31 = sub_1DD640478();
  v32 = OUTLINED_FUNCTION_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2();
  v39 = v38 - v37;
  v40 = sub_1DD640438();
  v41 = OUTLINED_FUNCTION_7(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2();
  v44 = sub_1DD63FBD8();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  OUTLINED_FUNCTION_2();
  LOBYTE(v136) = *a1;
  v46 = sub_1DD450A6C();
  v47 = MEMORY[0x1E69E7CC0];
  v130 = a1;
  if (v46)
  {
    LODWORD(v119) = a1[*(type metadata accessor for ContactResolverConfig(0) + 84)];
    v48 = [objc_allocWithZone(MEMORY[0x1E69A4878]) init];
    v134 = sub_1DD39638C(0, &qword_1EE1601B8, 0x1E69A4878);
    v135 = &off_1F58B9698;
    v133[0] = v48;
    sub_1DD3C2388(v133, &v136);
    v117 = sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
    sub_1DD63FBB8();
    v132 = v47;
    sub_1DD3FAC04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
    sub_1DD3FC2BC();
    sub_1DD640718();
    (*(v34 + 104))(v39, *MEMORY[0x1E69E8090], v31);
    v139 = sub_1DD6404A8();
    __swift_destroy_boxed_opaque_existential_1(v133);
    v140 = v119;
    sub_1DD3BFA3C();
    v47 = v49;
    if (*(v49 + 16) >= *(v49 + 24) >> 1)
    {
      OUTLINED_FUNCTION_2_14();
      v47 = v109;
    }

    v134 = &type metadata for IsFaceTimeableSignalProvider;
    v135 = &off_1F58B9870;
    v50 = swift_allocObject();
    v51 = OUTLINED_FUNCTION_6_13(v50);
    sub_1DD3FC320(v51, v52);
    v53 = OUTLINED_FUNCTION_7_10();
    sub_1DD3FACA4(v53);
    a1 = v130;
  }

  v119 = v47;
  v54 = type metadata accessor for ContactResolverCache();
  v55 = v114;
  v56 = a1;
  v57 = *(v114 + 16);
  v58 = v131;
  v59 = v115;
  v60 = v118;
  v57(v115, v131 + *(v54 + 24), v118);
  v61 = *v56;
  v116 = type metadata accessor for ContactResolverConfig(0);
  v112 = *&v56[*(v116 + 52)];
  v117 = v54;
  sub_1DD3FC02C(v58 + *(v54 + 120), &v136);
  v62 = *(v56 + 1);
  v63 = *(v56 + 2);
  v113 = v62;
  v64 = v120;
  v65 = v129;
  v66 = &v129[v120[7]];
  *(v66 + 32) = 0;
  *v66 = 0u;
  *(v66 + 16) = 0u;
  v57(v65, v59, v60);
  v65[v64[5]] = v61;
  v67 = *(v55 + 8);

  v67(v59, v60);
  v68 = &v65[v64[6]];
  if (v112 == 4)
  {
    v69 = xmmword_1DD6458E0;
    goto LABEL_9;
  }

  if (v112 == 1)
  {
    v69 = xmmword_1DD6458F0;
LABEL_9:
    *v68 = v69;
    goto LABEL_11;
  }

  *v68 = 0;
  *(v68 + 1) = 0;
LABEL_11:
  v70 = v129;
  v71 = v130;
  v72 = v125;
  v73 = v119;
  v74 = v117;
  v75 = v116;
  v76 = &v129[v64[8]];
  sub_1DD3FADD4(&v136, v66);
  *v76 = v113;
  *(v76 + 1) = v63;
  v77 = v121;
  sub_1DD3FC09C(v70, v121);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v104 = *(v73 + 16);
    sub_1DD3BFA3C();
    v73 = v105;
  }

  v78 = v123;
  if (*(v73 + 16) >= *(v73 + 24) >> 1)
  {
    OUTLINED_FUNCTION_2_14();
    v73 = v106;
  }

  v137 = v64;
  v138 = &off_1F58C0430;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v136);
  sub_1DD3FC1A8(v77, boxed_opaque_existential_1, type metadata accessor for SiriRemembersContactSignalProvider);
  OUTLINED_FUNCTION_5_15();
  sub_1DD3FC208(v77, type metadata accessor for SiriRemembersContactSignalProvider);
  sub_1DD63D068();
  if (*(v73 + 16) >= *(v73 + 24) >> 1)
  {
    OUTLINED_FUNCTION_2_14();
    v73 = v107;
  }

  v137 = IsRecentSignalProvider;
  v138 = &off_1F58B9A50;
  v80 = __swift_allocate_boxed_opaque_existential_1(&v136);
  sub_1DD3FC1A8(v78, v80, type metadata accessor for IsRecentSignalProvider);
  OUTLINED_FUNCTION_5_15();
  sub_1DD3FC208(v78, type metadata accessor for IsRecentSignalProvider);
  if (v71[*(v75 + 48)])
  {
    v81 = *(v131 + *(v74 + 52));
    v82 = *(v73 + 16);
    v83 = *(v73 + 24);

    if (v82 >= v83 >> 1)
    {
      sub_1DD3BFA3C();
      v73 = v110;
    }

    v137 = &type metadata for IsFavoriteSignalGenerator;
    v138 = &off_1F58B9928;
    *&v136 = v81;
    *(v73 + 16) = v82 + 1;
    sub_1DD3AA4A8(&v136, v73 + 40 * v82 + 32);
  }

  v84 = (v131 + *(v74 + 112));
  LODWORD(v129) = *v84;
  LODWORD(v125) = v84[1];
  LODWORD(v123) = v84[2];
  v85 = *(v84 + 1);
  if (qword_1EE162EF8 != -1)
  {
    swift_once();
  }

  v86 = qword_1EE16EFD8;
  v134 = type metadata accessor for MegadomeClient();
  v135 = &off_1F58BB3C8;
  v133[0] = v86;
  v137 = &type metadata for ContactFeatures;
  v138 = sub_1DD3E6184();
  LOBYTE(v136) = 7;

  LODWORD(IsRecentSignalProvider) = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1(&v136);
  sub_1DD63D068();
  v87 = v72;
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v88 = qword_1EE16F0C0;
  v89 = v124;
  v90 = v127;
  v91 = v127 + *(v124 + 20);
  *v91 = "ContactResolver.MegadomeSignalProvider.init";
  *(v91 + 8) = 43;
  *(v91 + 16) = 2;
  v92 = v88;
  sub_1DD63F9B8();
  *(v90 + *(v89 + 24)) = v92;
  v93 = v92;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1DD643F90;
  v95 = sub_1DD6408F8();
  v97 = v96;
  *(v94 + 56) = MEMORY[0x1E69E6158];
  *(v94 + 64) = sub_1DD392BD8();
  *(v94 + 32) = v95;
  *(v94 + 40) = v97;
  sub_1DD63F998();

  sub_1DD3C2388(v133, &v136);
  LOBYTE(v139) = IsRecentSignalProvider & 1;
  v140 = v129;
  v141 = v125;
  v142 = v123;
  v143 = v85;
  sub_1DD5186BC();
  sub_1DD3FC208(v90, type metadata accessor for Signpost);
  (*(v126 + 8))(v87, v128);
  __swift_destroy_boxed_opaque_existential_1(v133);
  if (*(v73 + 16) >= *(v73 + 24) >> 1)
  {
    OUTLINED_FUNCTION_2_14();
    v73 = v108;
  }

  v98 = v130;
  sub_1DD3FC208(v131, type metadata accessor for ContactResolverCache);
  sub_1DD3FC208(v98, type metadata accessor for ContactResolverConfig);
  v134 = &type metadata for MegadomeSignalProvider;
  v135 = &off_1F58BB460;
  v99 = swift_allocObject();
  v100 = OUTLINED_FUNCTION_6_13(v99);
  sub_1DD3FC260(v100, v101);
  v102 = OUTLINED_FUNCTION_7_10();
  sub_1DD3FABB0(v102);
  return v73;
}

uint64_t sub_1DD3FC02C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC250, &qword_1DD645B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3FC09C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriRemembersContactSignalProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3FC100(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v2 = *(a2 + 16);
  if (!v2)
  {
  }

  v3 = a2 + 32;

  do
  {
    sub_1DD3C2388(v3, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v5 + 8))(&v10, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v7);
    v3 += 40;
    --v2;
  }

  while (v2);
  return v10;
}

uint64_t sub_1DD3FC1A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD3FC208(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DD3FC2BC()
{
  result = qword_1EE166490;
  if (!qword_1EE166490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECCDF220, &unk_1DD656EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE166490);
  }

  return result;
}

SiriInference::Centroid __swiftcall Centroid.init(latitude:longitude:)(Swift::String latitude, Swift::String longitude)
{
  *v2 = latitude;
  v2[1] = longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

uint64_t Centroid.latitude.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Centroid.longitude.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t static Centroid.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DD640CD8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DD640CD8();
    }
  }

  return result;
}

uint64_t sub_1DD3FC48C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

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

uint64_t sub_1DD3FC55C(char a1)
{
  if (a1)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_1DD3FC5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD3FC48C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD3FC5C8(uint64_t a1)
{
  v2 = sub_1DD3FC7B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD3FC604(uint64_t a1)
{
  v2 = sub_1DD3FC7B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Centroid.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC270, &qword_1DD645B98);
  v5 = OUTLINED_FUNCTION_0(v4);
  v17 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v16[1] = v1[3];
  v16[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD3FC7B0();
  sub_1DD640EF8();
  v19 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v18 = 1;
    sub_1DD640C18();
  }

  return (*(v17 + 8))(v10, v4);
}

unint64_t sub_1DD3FC7B0()
{
  result = qword_1ECCDC278;
  if (!qword_1ECCDC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC278);
  }

  return result;
}

uint64_t Centroid.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC280, &qword_1DD645BA0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD3FC7B0();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v14 = sub_1DD640B28();
  v16 = v15;
  v24 = 1;
  v17 = sub_1DD640B28();
  v19 = v18;
  v20 = *(v8 + 8);
  v23 = v17;
  v20(v12, v5);
  *a2 = v14;
  a2[1] = v16;
  a2[2] = v23;
  a2[3] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for Centroid.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD3FCB1C()
{
  result = qword_1ECCDC288;
  if (!qword_1ECCDC288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC288);
  }

  return result;
}

unint64_t sub_1DD3FCB74()
{
  result = qword_1ECCDC290;
  if (!qword_1ECCDC290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC290);
  }

  return result;
}

unint64_t sub_1DD3FCBCC()
{
  result = qword_1ECCDC298;
  if (!qword_1ECCDC298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC298);
  }

  return result;
}

SiriInference::City::Prefix_optional __swiftcall City.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t City.Prefix.rawValue.getter()
{
  v1 = 28265;
  if (*v0 != 1)
  {
    v1 = 1918985582;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2037672291;
  }
}

SiriInference::City::Suffix_optional __swiftcall City.Suffix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t City.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t static City.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 3)
  {
    if (v4 != 3)
    {
      return 0;
    }
  }

  else if (v4 == 3 || (sub_1DD3B2D90(v2, v4) & 1) == 0)
  {
    return 0;
  }

  result = v5 == 3 && v3 == 3;
  if (v3 != 3 && v5 != 3)
  {

    return sub_1DD3B2D90(v3, v5);
  }

  return result;
}

uint64_t sub_1DD3FCFEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x786966667573 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701667182 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

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

uint64_t sub_1DD3FD0FC(char a1)
{
  if (!a1)
  {
    return 0x786966657270;
  }

  if (a1 == 1)
  {
    return 0x786966667573;
  }

  return 1701667182;
}

uint64_t sub_1DD3FD14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD3FCFEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD3FD174(uint64_t a1)
{
  v2 = sub_1DD3FD5D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD3FD1B0(uint64_t a1)
{
  v2 = sub_1DD3FD5D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t City.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC2A0, &qword_1DD645D78);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v16 - v10;
  v12 = *v1;
  v17 = v1[1];
  v13 = *(v1 + 1);
  v16[1] = *(v1 + 2);
  v16[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD3FD5D0();
  sub_1DD640EF8();
  v22 = v12;
  v21 = 0;
  sub_1DD3FD624();
  sub_1DD640C08();
  if (!v2)
  {
    v20 = v17;
    v19 = 1;
    sub_1DD3FD678();
    sub_1DD640C08();
    v18 = 2;
    sub_1DD640C18();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t City.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC2C0, &qword_1DD645D80);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD3FD5D0();
  sub_1DD640ED8();
  if (!v2)
  {
    v24 = 0;
    sub_1DD3FD6CC();
    OUTLINED_FUNCTION_2_15();
    v14 = v25;
    v22 = 1;
    sub_1DD3FD720();
    OUTLINED_FUNCTION_2_15();
    v20 = v23;
    v21 = 2;
    v16 = sub_1DD640B28();
    v18 = v17;
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    *(a2 + 1) = v20;
    *(a2 + 8) = v16;
    *(a2 + 16) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD3FD5D0()
{
  result = qword_1ECCDC2A8;
  if (!qword_1ECCDC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2A8);
  }

  return result;
}

unint64_t sub_1DD3FD624()
{
  result = qword_1ECCDC2B0;
  if (!qword_1ECCDC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2B0);
  }

  return result;
}

unint64_t sub_1DD3FD678()
{
  result = qword_1ECCDC2B8;
  if (!qword_1ECCDC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2B8);
  }

  return result;
}

unint64_t sub_1DD3FD6CC()
{
  result = qword_1ECCDC2C8;
  if (!qword_1ECCDC2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2C8);
  }

  return result;
}

unint64_t sub_1DD3FD720()
{
  result = qword_1ECCDC2D0;
  if (!qword_1ECCDC2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2D0);
  }

  return result;
}

unint64_t sub_1DD3FD778()
{
  result = qword_1ECCDC2D8;
  if (!qword_1ECCDC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2D8);
  }

  return result;
}

unint64_t sub_1DD3FD7D0()
{
  result = qword_1ECCDC2E0;
  if (!qword_1ECCDC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2E0);
  }

  return result;
}

uint64_t sub_1DD3FD824(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1DD3FD864(uint64_t result, int a2, int a3)
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

_BYTE *sub_1DD3FD8C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD3FD9A8()
{
  result = qword_1ECCDC2E8;
  if (!qword_1ECCDC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2E8);
  }

  return result;
}

unint64_t sub_1DD3FDA00()
{
  result = qword_1ECCDC2F0;
  if (!qword_1ECCDC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2F0);
  }

  return result;
}

unint64_t sub_1DD3FDA58()
{
  result = qword_1ECCDC2F8;
  if (!qword_1ECCDC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2F8);
  }

  return result;
}

unint64_t sub_1DD3FDAAC()
{
  result = qword_1ECCDC300;
  if (!qword_1ECCDC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC300);
  }

  return result;
}

unint64_t sub_1DD3FDB00()
{
  result = qword_1ECCDC308;
  if (!qword_1ECCDC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC308);
  }

  return result;
}

CLPlacemark __swiftcall CLPlacemark.withOverriddenName(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_16_7();
  v5 = sub_1DD400A78(v2);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1E69E6158];
    sub_1DD640848();
    v21 = v7;
    *&v20 = v4;
    *(&v20 + 1) = v3;
    sub_1DD400AE4(&v20, v19);

    swift_isUniquelyReferenced_nonNull_native();
    v18 = v6;
    sub_1DD3FFDC8(v19, v22);
    v8 = v6;
    sub_1DD400AF4(v22);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v1 location];

  v10 = [v1 region];
  v11 = sub_1DD400B48(v1);
  if (v11)
  {
    v12 = sub_1DD3FDCD4(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(MEMORY[0x1E695FC20]);
  sub_1DD3FE5F0(v9, v8, v10, v12);
  if (v14)
  {
    v16 = v14;

    v14 = v16;
  }

  else
  {
    __break(1u);
  }

  result._internal = v15;
  result.super.isa = v14;
  return result;
}

uint64_t sub_1DD3FDCD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_6_14();
    sub_1DD42B8DC(v4, v5, v6);
    v2 = v14;
    v7 = (a1 + 40);
    do
    {
      v11 = *(v7 - 1);
      v12 = *v7;

      swift_dynamicCast();
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1DD42B8DC(v8 > 1, v9 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v9 + 1;
      sub_1DD400AE4(&v13, (v2 + 32 * v9 + 32));
      v7 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DD3FDDCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_6_14();
    sub_1DD42BC4C(v4, v5, v6);
    v2 = v15;
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCDC3D0, &unk_1DD6461A0);
      swift_dynamicCast();
      v10 = *(v15 + 16);
      v9 = *(v15 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1DD42BC4C(v9 > 1, v10 + 1, 1);
      }

      *(v15 + 16) = v10 + 1;
      v11 = v15 + 16 * v10;
      *(v11 + 32) = v13;
      *(v11 + 40) = v14;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DD3FDEDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_6_14();
    sub_1DD42BE00(v4, v5, v6);
    v2 = v13;
    v7 = a1 + 32;
    do
    {
      sub_1DD3C2388(v7, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDC370, &qword_1DD6440B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE30, &qword_1DD649EE0);
      swift_dynamicCast();
      v13 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1DD42BE00(v8 > 1, v9 + 1, 1);
        v2 = v13;
      }

      *(v2 + 16) = v9 + 1;
      sub_1DD3AA4A8(&v12, v2 + 40 * v9 + 32);
      v7 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DD3FE00C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_6_14();
    sub_1DD42BE00(v4, v5, v6);
    v2 = v15;
    v7 = (a1 + 32);
    do
    {
      memcpy(__dst, v7, sizeof(__dst));
      sub_1DD3D23E0(__dst, &v11);
      v15 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1DD42BE00(v8 > 1, v9 + 1, 1);
        v2 = v15;
      }

      v12 = &unk_1F58B0918;
      v13 = sub_1DD3D0448();
      *&v11 = swift_allocObject();
      memcpy((v11 + 16), __dst, 0x58uLL);
      *(v2 + 16) = v9 + 1;
      sub_1DD3AA4A8(&v11, v2 + 40 * v9 + 32);
      v7 += 88;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DD3FE188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1DD42BE00(0, v3, 0);
    v4 = v23;
    v6 = (a1 + 80);
    do
    {
      v7 = *(v6 - 5);
      v8 = *(v6 - 4);
      v9 = *(v6 - 3);
      v10 = *(v6 - 1);
      v18 = *(v6 - 2);
      v19 = *(v6 - 6);
      v11 = *v6;
      v23 = v4;
      v12 = *(v4 + 16);
      v13 = *(v4 + 24);

      if (v12 >= v13 >> 1)
      {
        sub_1DD42BE00(v13 > 1, v12 + 1, 1);
        v4 = v23;
      }

      v6 += 7;
      v21 = a2;
      v22 = a3();
      v14 = swift_allocObject();
      *&v20 = v14;
      v14[2] = v19;
      v14[3] = v7;
      v14[4] = v8;
      v14[5] = v9;
      v14[6] = v18;
      v14[7] = v10;
      v14[8] = v11;
      *(v4 + 16) = v12 + 1;
      sub_1DD3AA4A8(&v20, v4 + 40 * v12 + 32);
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_1DD3FE2E8()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v2 = sub_1DD63D868();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 16);
  if (v10)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1DD42BE00(0, v10, 0);
    v11 = v24;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = v1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v20 = *(v12 + 56);
    do
    {
      v13(v9, v15, v2);
      v24 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1DD42BE00(v16 > 1, v17 + 1, 1);
      }

      v22 = v2;
      v23 = MEMORY[0x1E69D2C00];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
      v13(boxed_opaque_existential_1, v9, v2);
      v11 = v24;
      *(v24 + 16) = v17 + 1;
      sub_1DD3AA4A8(&v21, v11 + 40 * v17 + 32);
      (*(v12 - 8))(v9, v2);
      v15 += v20;
      --v10;
    }

    while (v10);
  }

  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD3FE498(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DD6407B8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    result = sub_1DD640988();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12B2C10](v4, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
          swift_unknownObjectRetain();
        }

        ++v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC380, &qword_1DD646178);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC388, &qword_1DD646180);
        swift_dynamicCast();
        sub_1DD640958();
        v6 = *(v7 + 16);
        sub_1DD640998();
        sub_1DD6409A8();
        sub_1DD640968();
      }

      while (v2 != v4);
      return v7;
    }
  }

  return result;
}

void sub_1DD3FE5F0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_1DD63FC48();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_1DD6400F8();

LABEL_6:
  [v5 initWithLocation:a1 addressDictionary:v9 region:a3 areasOfInterest:v10];

  OUTLINED_FUNCTION_25_1();
}

unint64_t sub_1DD3FE6CC(char a1)
{
  OUTLINED_FUNCTION_17_9();
  sub_1DD525218(a1);
  sub_1DD63FD28();

  v2 = sub_1DD640E78();

  return sub_1DD3FEEA8(a1, v2);
}

void sub_1DD3FE74C()
{
  OUTLINED_FUNCTION_4_14();
  sub_1DD63C758();
  sub_1DD400F74(&unk_1ECCDC3C0, MEMORY[0x1E695A238]);
  OUTLINED_FUNCTION_11_12();
  OUTLINED_FUNCTION_12_12();
}

void sub_1DD3FE7FC()
{
  OUTLINED_FUNCTION_4_14();
  sub_1DD63D2B8();
  sub_1DD400F74(&qword_1EE1637E0, MEMORY[0x1E6969AD0]);
  OUTLINED_FUNCTION_11_12();
  OUTLINED_FUNCTION_12_12();
}

unint64_t sub_1DD3FE8AC()
{
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_17_9();
  sub_1DD640E48();
  if (v0)
  {
    OUTLINED_FUNCTION_18_10();
    sub_1DD63FD28();
  }

  sub_1DD640E78();
  v1 = OUTLINED_FUNCTION_5_9();

  return sub_1DD3FF11C(v1, v2, v3);
}

unint64_t sub_1DD3FE928(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DD640828();

  return sub_1DD3FF1E8(a1, v5);
}

void sub_1DD3FE96C()
{
  OUTLINED_FUNCTION_23_6();
  v1 = *(v0 + 40);
  sub_1DD63FDD8();
  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD640E78();

  sub_1DD3FF2AC();
}

unint64_t sub_1DD3FE9F8(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_17_9();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1E12B3140](1);
      v6 = a1 & 1;
    }

    else
    {
      v6 = 2;
    }

    MEMORY[0x1E12B3140](v6);
  }

  else
  {
    MEMORY[0x1E12B3140](0);
    sub_1DD63FD28();
  }

  v7 = sub_1DD640E78();

  return sub_1DD3FF394(a1, a2, a3, v7);
}

unint64_t sub_1DD3FEAB4(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_17_9();
  MEMORY[0x1E12B3140](a1);
  v2 = sub_1DD640E78();
  return sub_1DD3FF5E8(a1, v2);
}

unint64_t sub_1DD3FEB14()
{
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_17_9();
  sub_1DD48E664(v3);
  v1 = sub_1DD640E78();

  return sub_1DD3FF648(v0, v1);
}

unint64_t sub_1DD3FEB74(unsigned int a1)
{
  v3 = MEMORY[0x1E12B3110](*(v1 + 40), a1, 4);

  return sub_1DD3FF70C(a1, v3);
}

void sub_1DD3FEBBC()
{
  OUTLINED_FUNCTION_4_14();
  sub_1DD63D818();
  sub_1DD400F74(&qword_1ECCDC330, MEMORY[0x1E69D2BE8]);
  OUTLINED_FUNCTION_11_12();
  OUTLINED_FUNCTION_12_12();
}

void sub_1DD3FEC6C()
{
  OUTLINED_FUNCTION_4_14();
  sub_1DD63D0F8();
  sub_1DD400F74(&qword_1EE163810, MEMORY[0x1E69695A8]);
  OUTLINED_FUNCTION_11_12();
  OUTLINED_FUNCTION_12_12();
}

unint64_t sub_1DD3FED1C()
{
  OUTLINED_FUNCTION_23_6();
  v2 = *(v0 + 40);
  memcpy(__dst, v1, sizeof(__dst));
  sub_1DD640E28();
  SportsItem.hash(into:)();
  v3 = sub_1DD640E78();

  return sub_1DD3FF76C(v1, v3);
}

unint64_t sub_1DD3FED98()
{
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_17_9();
  sub_1DD421DEC();
  v1 = sub_1DD640E78();

  return sub_1DD3FF868(v0, v1);
}

unint64_t sub_1DD3FEDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_9();
  sub_1DD63FD28();
  if (a4)
  {
    MEMORY[0x1E12B3140](1);
    OUTLINED_FUNCTION_18_10();
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  v8 = sub_1DD640E78();

  return sub_1DD3FF97C(a1, a2, a3, a4, v8);
}

unint64_t sub_1DD3FEEA8(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = sub_1DD525218(*(*(v2 + 48) + i));
    v8 = v7;
    if (v6 == sub_1DD525218(a1) && v8 == v9)
    {

      return i;
    }

    v11 = sub_1DD640CD8();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

void sub_1DD3FEFA0()
{
  OUTLINED_FUNCTION_18_4();
  v22 = v1;
  v23 = v2;
  v21 = v3;
  v5 = v4;
  v19 = v6;
  v8 = v7(0);
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v19 - v14;
  v24 = v0 + 64;
  v20 = v0;
  v16 = ~(-1 << *(v0 + 32));
  for (i = v5 & v16; ((1 << i) & *(v24 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v16)
  {
    (*(v11 + 16))(v15, *(v20 + 48) + *(v11 + 72) * i, v8);
    sub_1DD400F74(v21, v22);
    v18 = sub_1DD63FD98();
    (*(v11 + 8))(v15, v8);
    if (v18)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_17();
}

unint64_t sub_1DD3FF11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_1DD640CD8() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1DD3FF1E8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1DD400EF0(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1E12B2B40](v8, a1);
    sub_1DD400AF4(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

void sub_1DD3FF2AC()
{
  OUTLINED_FUNCTION_18_4();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = *(*(v0 + 48) + 8 * i);
    v5 = sub_1DD63FDD8();
    v7 = v6;
    if (v5 == sub_1DD63FDD8() && v7 == v8)
    {

      break;
    }

    v10 = sub_1DD640CD8();

    if (v10)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_17();
}

unint64_t sub_1DD3FF394(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v10 = ~v5;
  v12 = a3 == 2 && (a2 | a1) == 0;
  v28 = v12;
  while (1)
  {
    v13 = *(v4 + 48) + 24 * v6;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    if (*(v13 + 16))
    {
      if (v16 == 1)
      {
        if (a3 == 1)
        {
          sub_1DD400F60(v14, v15, 1);
          sub_1DD400F60(a1, a2, 1);
          if (((v14 ^ a1) & 1) == 0)
          {
            return v6;
          }

          goto LABEL_19;
        }
      }

      else if (v28)
      {
        sub_1DD400F60(v14, v15, 2);
        v24 = 0;
        v25 = 0;
        v26 = 2;
        goto LABEL_30;
      }

      v17 = a1;
      v18 = a2;
      v19 = a3;
      goto LABEL_18;
    }

    if (a3)
    {
      sub_1DD400F4C(a1, a2, a3);
      v17 = v14;
      v18 = v15;
      v19 = 0;
LABEL_18:
      sub_1DD400F4C(v17, v18, v19);
      sub_1DD400F60(v14, v15, v16);
      sub_1DD400F60(a1, a2, a3);
      goto LABEL_19;
    }

    if (v14 == a1 && v15 == a2)
    {
      break;
    }

    v21 = *v13;
    v22 = *(v13 + 8);
    v23 = sub_1DD640CD8();
    sub_1DD400F4C(a1, a2, 0);
    sub_1DD400F4C(v14, v15, 0);
    sub_1DD400F60(v14, v15, 0);
    sub_1DD400F60(a1, a2, 0);
    if (v23)
    {
      return v6;
    }

LABEL_19:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  sub_1DD400F4C(a1, a2, 0);
  sub_1DD400F4C(a1, a2, 0);
  sub_1DD400F60(a1, a2, 0);
  v24 = a1;
  v25 = a2;
  v26 = 0;
LABEL_30:
  sub_1DD400F60(v24, v25, v26);
  return v6;
}

unint64_t sub_1DD3FF5E8(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1DD3FF648(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 64;
  v6 = ~(-1 << *(v2 + 32));
  for (i = a2 & v6; ((1 << i) & *(v5 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    type metadata accessor for DateTimeConstraint();
    v8 = *(*(v3 + 48) + 8 * i);

    v10 = sub_1DD48E554(v9, a1);

    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1DD3FF70C(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1DD3FF76C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = (*(v2 + 48) + (i << 7));
    memcpy(v10, v6, sizeof(v10));
    memcpy(__srca, v6, sizeof(__srca));
    sub_1DD400BFC(v10, &v8);
    LOBYTE(v6) = static SportsItem.== infix(_:_:)(__srca, __dst);
    memcpy(v11, __srca, sizeof(v11));
    sub_1DD400C58(v11);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1DD3FF868(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *a1;
    v9 = *(v2 + 48);
    do
    {
      v10 = (v9 + 48 * v5);
      if (v8 == *v10)
      {
        v11 = *(v10 + 3);
        v12 = *(v10 + 4);
        v13 = *(v10 + 5);
        v14 = *(v10 + 1) == *(a1 + 1) && *(v10 + 2) == *(a1 + 2);
        if (v14 || (sub_1DD640CD8() & 1) != 0)
        {
          v15 = v11 == *(a1 + 3) && v12 == *(a1 + 4);
          if (v15 || (sub_1DD640CD8()) && v13 == *(a1 + 5))
          {
            break;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DD3FF97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v12 = ~v6;
    while (1)
    {
      v13 = (*(v5 + 48) + 32 * v7);
      v15 = v13[2];
      v14 = v13[3];
      v16 = *v13 == a1 && v13[1] == a2;
      if (!v16 && (sub_1DD640CD8() & 1) == 0)
      {
        goto LABEL_18;
      }

      if (!v14)
      {
        break;
      }

      if (!a4)
      {
        goto LABEL_17;
      }

      v17 = v15 == a3 && v14 == a4;
      if (v17 || (sub_1DD640CD8() & 1) != 0)
      {
        return v7;
      }

LABEL_18:
      v7 = (v7 + 1) & v12;
      if (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        return v7;
      }
    }

    if (!a4)
    {
      swift_bridgeObjectRelease_n();
      return v7;
    }

LABEL_17:

    goto LABEL_18;
  }

  return v7;
}

uint64_t sub_1DD3FFA9C()
{
  OUTLINED_FUNCTION_21_3();
  v2 = v1;
  OUTLINED_FUNCTION_2_16(v1, v3);
  v4 = sub_1DD3978DC();
  OUTLINED_FUNCTION_0_28(v4, v5);
  if (v8)
  {
    __break(1u);
LABEL_14:
    result = sub_1DD640D58();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDC360, &unk_1DD652300);
  OUTLINED_FUNCTION_1_19();
  if (sub_1DD640A08())
  {
    v11 = *v0;
    OUTLINED_FUNCTION_5_9();
    sub_1DD3978DC();
    OUTLINED_FUNCTION_15_11();
    if (!v13)
    {
      goto LABEL_14;
    }

    v9 = v12;
  }

  if (v10)
  {
    v14 = (*(*v0 + 56) + 40 * v9);
    v15 = *v14;
    v16 = v14[2];
    v14[4] = *(v2 + 32);
    v17 = *(v2 + 16);
    *v14 = *v2;
    *(v14 + 1) = v17;

    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    OUTLINED_FUNCTION_18_10();
    sub_1DD40058C(v20, v21, v22, v2, v23);
    OUTLINED_FUNCTION_25_1();
  }
}

uint64_t sub_1DD3FFBC0()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_1DD3978DC();
  OUTLINED_FUNCTION_0_28(v11, v12);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_1DD640D58();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC328, &qword_1DD6521F0);
  if (sub_1DD640A08())
  {
    v18 = *v1;
    sub_1DD3978DC();
    OUTLINED_FUNCTION_15_11();
    if (!v20)
    {
      goto LABEL_14;
    }

    v16 = v19;
  }

  v21 = *v1;
  if (v17)
  {
    v22 = (*(v21 + 56) + 16 * v16);
    v23 = v22[1];
    *v22 = v9;
    v22[1] = v7;
    OUTLINED_FUNCTION_17();
  }

  else
  {
    sub_1DD400614(v16, v5, v3, v9, v7, v21);
    OUTLINED_FUNCTION_17();
  }
}

void sub_1DD3FFCE8()
{
  OUTLINED_FUNCTION_21_3();
  v2 = v1;
  OUTLINED_FUNCTION_2_16(v1, v3);
  v4 = sub_1DD3978DC();
  OUTLINED_FUNCTION_0_28(v4, v5);
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_1DD640D58();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1B0, &unk_1DD643EE0);
  OUTLINED_FUNCTION_1_19();
  if (sub_1DD640A08())
  {
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_14_12();
    if (!v12)
    {
      goto LABEL_12;
    }

    v9 = v11;
  }

  if (v10)
  {
    *(*(*v0 + 56) + 8 * v9) = v2;
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7_11();
    sub_1DD400660(v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_25_1();
  }
}

_OWORD *sub_1DD3FFDC8(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1DD3FE928(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3B8, &qword_1DD646198);
  if ((sub_1DD640A08() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_1DD3FE928(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_1DD640D58();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = (v14[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v15);

    return sub_1DD400AE4(a1, v15);
  }

  else
  {
    sub_1DD400EF0(a2, v17);
    return sub_1DD40068C(v9, v17, a1, v14);
  }
}

uint64_t sub_1DD3FFF08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_2_16(a1, a2);
  v5 = sub_1DD3978DC();
  OUTLINED_FUNCTION_0_28(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1DD640D58();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF230, &unk_1DD65E210);
  OUTLINED_FUNCTION_1_19();
  if (sub_1DD640A08())
  {
    v12 = *v2;
    OUTLINED_FUNCTION_5_9();
    sub_1DD3978DC();
    OUTLINED_FUNCTION_15_11();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  if (v11)
  {
    v15 = *(*v3 + 56);
    v16 = *(sub_1DD63F438() - 8);
    v17 = *(v16 + 40);
    v18 = v15 + *(v16 + 72) * v10;
    OUTLINED_FUNCTION_25_1();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_18_10();
  sub_1DD400708(v21, v22, v23, a1, v24);
  OUTLINED_FUNCTION_25_1();
}