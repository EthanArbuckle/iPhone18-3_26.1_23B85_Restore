uint64_t sub_1C723F8A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C7033844(a1, &v6 - v3);
  return sub_1C723F988(v4);
}

uint64_t sub_1C723F938@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_lastRefreshDate;
  OUTLINED_FUNCTION_5();
  return sub_1C7033844(v1 + v3, a1);
}

uint64_t sub_1C723F988(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_lastRefreshDate;
  swift_beginAccess();
  sub_1C717E2C4(a1, v1 + v3);
  return swift_endAccess();
}

double sub_1C723FA48@<D0>(_OWORD *a1@<X8>)
{
  sub_1C723FAC4(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C723FA84(__int128 *a1)
{
  v2 = *a1;
  sub_1C75504FC();
  return sub_1C723FB18(&v2);
}

uint64_t sub_1C723FAC4@<X0>(_OWORD *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_overnightSuggestionStatistics;
  OUTLINED_FUNCTION_5();
  *a1 = *(v1 + v3);
  return sub_1C75504FC();
}

uint64_t sub_1C723FB18(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_overnightSuggestionStatistics);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t PromptSuggestionStatistics.__allocating_init(photoLibrary:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PromptSuggestionStatistics.init(photoLibrary:)(a1);
  return v2;
}

uint64_t PromptSuggestionStatistics.init(photoLibrary:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_lastRefreshDate;
  v5 = sub_1C754DF6C();
  __swift_storeEnumTagSinglePayload(v2 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_uiSuggestionStatistics;
  type metadata accessor for UIPromptSuggestionSourceStatistics();
  v7 = swift_allocObject();
  sub_1C7241CF0();
  *(v2 + v6) = v7;
  v8 = (v2 + OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_overnightSuggestionStatistics);
  *v8 = 0;
  v8[1] = 0;
  *(v2 + OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_photoLibrary) = a1;
  return v2;
}

id sub_1C723FCC0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36[-1] - v3;
  v5 = sub_1C754DF6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_78();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36[-1] - v11;
  v13 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_lastRefreshDate;
  OUTLINED_FUNCTION_5();
  sub_1C7033844(v1 + v13, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C70D7CB8(v4);
    v14 = MEMORY[0x1E69E7CC8];
    goto LABEL_9;
  }

  (*(v6 + 32))(v12, v4, v5);
  sub_1C754DF3C();
  sub_1C754DEAC();
  v16 = v15;
  v17 = *(v6 + 8);
  result = v17(v9, v5);
  v19 = v16 / 86400.0;
  if (v16 / 86400.0 < 7.0)
  {
    if (COERCE_UNSIGNED_INT64(fabs(v16 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -9.22337204e18)
    {
      if (v19 < 9.22337204e18)
      {
        v36[0] = v19;
        v37[0] = sub_1C7551D8C();
        v37[1] = v20;
        MEMORY[0x1CCA5CD70](0x6761207379616420, 0xE90000000000006FLL);
        goto LABEL_8;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_8:
  sub_1C755065C();

  v21 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  v37[0] = v21;
  sub_1C6FC7E40();
  v17(v12, v5);
  v14 = v37[0];
LABEL_9:
  v22 = *(v1 + 16);
  if (v22)
  {
    v23 = v22;
    v24 = sub_1C754DBDC();
    result = [v24 domain];
    if (result)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v37[0] = v14;
      sub_1C6FC7E40();
      v25 = v37[0];
      [v24 code];
      sub_1C755104C();
      swift_isUniquelyReferenced_nonNull_native();
      v37[0] = v25;
      sub_1C6FC7E40();

      v14 = v37[0];
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    return result;
  }

LABEL_12:
  v26 = sub_1C72404B8();
  swift_isUniquelyReferenced_nonNull_native();
  v37[0] = v14;
  OUTLINED_FUNCTION_15_47();
  sub_1C7241D3C(v26, v27, 0, v28, v37);
  v29 = v37[0];
  v30 = (v1 + OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_overnightSuggestionStatistics);
  OUTLINED_FUNCTION_5();
  if (*v30)
  {
    v31 = v30[1];
    v36[0] = *v30;
    v36[1] = v31;
    v32 = sub_1C710F3F4();
    swift_isUniquelyReferenced_nonNull_native();
    v36[0] = v29;
    OUTLINED_FUNCTION_15_47();
    sub_1C7241D3C(v32, v33, 0, v34, v36);
    return v36[0];
  }

  return v29;
}

unint64_t sub_1C7240124()
{
  sub_1C755180C();

  v0 = sub_1C72415BC();
  MEMORY[0x1CCA5CD70](v0);

  return 0xD000000000000013;
}

uint64_t PromptSuggestionStatistics.deinit()
{
  sub_1C70D7CB8(v0 + OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_lastRefreshDate);

  return v0;
}

uint64_t PromptSuggestionStatistics.__deallocating_deinit()
{
  PromptSuggestionStatistics.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C72402E4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_1C724032C@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for PromptSuggestion(0);
  v4 = OUTLINED_FUNCTION_18(v3);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 104);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    sub_1C716E96C();
    v18 = v29;
    v19 = v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(v6 + 72);
    do
    {
      sub_1C71592A8(v19, v15);
      v21 = v15[16];
      sub_1C715930C(v15);
      v29 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_15(v22);
        sub_1C716E96C();
        v18 = v29;
      }

      *(v18 + 16) = v23 + 1;
      *(v18 + v23 + 32) = v21;
      v19 += v20;
      --v17;
    }

    while (v17);
  }

  sub_1C706F130(v18, v7, v8, v9, v10, v11, v12, v13, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  static PromptSuggestion.Composition.compositionFromSources(sources:)(&v28);

  *a1 = v28;
  return result;
}

uint64_t sub_1C72404B8()
{
  LOBYTE(v9) = 1;
  sub_1C724057C(&v9);
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v2;
  sub_1C7241D3C(v1, sub_1C7241FE4, 0, isUniquelyReferenced_nonNull_native, &v9);
  v4 = v9;
  LOBYTE(v9) = 2;
  sub_1C724057C(&v9);
  v6 = v5;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v9 = v4;
  sub_1C7241D3C(v6, sub_1C7241FE4, 0, v7, &v9);
  return v9;
}

void sub_1C724057C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PromptSuggestion(0);
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_78();
  v193 = v8 - v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_130();
  v192 = v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_130();
  v194 = v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_130();
  v206 = v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_130();
  v195 = v17;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_130();
  v209 = v19;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_130();
  v196 = v21;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_130();
  v210 = v23;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_130();
  v197 = v25;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_130();
  v211 = v27;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_130();
  v198 = v29;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_130();
  v212 = v31;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_130();
  v199 = v33;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_130();
  v213 = v35;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_130();
  v200 = v37;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_130();
  v214 = v39;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_130();
  v201 = v41;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_130();
  v215 = v43;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_130();
  v202 = v45;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_130();
  v204 = v47;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_130();
  v203 = v49;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v189 - v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_130();
  v205 = v54;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v189 - v56;
  v58 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755F050;
  OUTLINED_FUNCTION_25_26();
  sub_1C755180C();
  OUTLINED_FUNCTION_18_30();
  v216 = v58;
  sub_1C73E6820(v58);
  MEMORY[0x1CCA5CD70](0xD000000000000019, 0x80000001C75A5F50);
  v60 = v220;
  *(inited + 32) = v219;
  *(inited + 40) = v60;
  v207 = v2;
  v208 = inited;
  v61 = *(v2 + 16);
  v62 = *(v61 + 16);
  sub_1C75504FC();
  v63 = 0;
  v64 = MEMORY[0x1E69E7CC0];
  while (v62 != v63)
  {
    if (v63 >= *(v61 + 16))
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
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
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_12_46();
    v66 = OUTLINED_FUNCTION_29_26(v65);
    sub_1C71592A8(v66, v57);
    if (v57[16] == v216)
    {
      sub_1C7159368(v57, v205);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v219 = v64;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_13_49();
        OUTLINED_FUNCTION_20_40();
        v64 = v219;
      }

      v69 = *(v64 + 16);
      v68 = *(v64 + 24);
      v70 = v69 + 1;
      if (v69 >= v68 >> 1)
      {
        OUTLINED_FUNCTION_15(v68);
        v190 = v71;
        v191 = v72;
        sub_1C716D568();
        v69 = v190;
        v70 = v191;
        v64 = v219;
      }

      ++v63;
      *(v64 + 16) = v70;
      sub_1C7159368(v205, v64 + v2 + v69 * v58);
    }

    else
    {
      sub_1C715930C(v57);
      ++v63;
    }
  }

  v73 = sub_1C755104C();
  v74 = v208;
  v208[6] = v73;
  OUTLINED_FUNCTION_25_26();
  sub_1C755180C();
  OUTLINED_FUNCTION_18_30();
  sub_1C73E6820(v216);
  OUTLINED_FUNCTION_5_56();
  MEMORY[0x1CCA5CD70](v75 - 4, v76 | 0x8000000000000000);
  v77 = v220;
  v74[7] = v219;
  v74[8] = v77;
  v78 = *(v207 + 24);
  v79 = *(v78 + 16);
  sub_1C75504FC();
  v80 = 0;
  v81 = MEMORY[0x1E69E7CC0];
  while (v79 != v80)
  {
    if (v80 >= *(v78 + 16))
    {
      goto LABEL_125;
    }

    OUTLINED_FUNCTION_12_46();
    v83 = OUTLINED_FUNCTION_29_26(v82);
    sub_1C71592A8(v83, v52);
    if (v52[16] == v216)
    {
      sub_1C7159368(v52, v203);
      v84 = swift_isUniquelyReferenced_nonNull_native();
      v219 = v81;
      if ((v84 & 1) == 0)
      {
        OUTLINED_FUNCTION_13_49();
        OUTLINED_FUNCTION_20_40();
        v81 = v219;
      }

      v86 = *(v81 + 16);
      v85 = *(v81 + 24);
      v87 = v86 + 1;
      if (v86 >= v85 >> 1)
      {
        OUTLINED_FUNCTION_15(v85);
        v205 = v88;
        sub_1C716D568();
        v87 = v205;
        v81 = v219;
      }

      ++v80;
      *(v81 + 16) = v87;
      sub_1C7159368(v203, v74 + v81 + v86 * v58);
    }

    else
    {
      sub_1C715930C(v52);
      ++v80;
    }
  }

  v89 = sub_1C755104C();
  v90 = v208;
  v208[9] = v89;
  OUTLINED_FUNCTION_25_26();
  sub_1C755180C();
  OUTLINED_FUNCTION_18_30();
  v91 = v216;
  sub_1C73E6820(v216);
  OUTLINED_FUNCTION_5_56();
  MEMORY[0x1CCA5CD70](v92 - 3, v93 | 0x8000000000000000);
  v94 = v220;
  v90[10] = v219;
  v90[11] = v94;
  v95 = v207;
  OUTLINED_FUNCTION_5();
  v96 = *(v95 + 32);
  v97 = *(v96 + 16);
  sub_1C75504FC();
  v98 = 0;
  v99 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v100 = v204;
  while (v97 != v98)
  {
    if (v98 >= *(v96 + 16))
    {
      goto LABEL_126;
    }

    OUTLINED_FUNCTION_12_46();
    v103 = v102 & ~v101;
    v58 = *(v7 + 72);
    sub_1C71592A8(v96 + v103 + v58 * v98, v100);
    if (*(v100 + 16) == v91)
    {
      sub_1C7159368(v100, v202);
      v104 = swift_isUniquelyReferenced_nonNull_native();
      v217 = v99;
      if ((v104 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
        v99 = v217;
      }

      v105 = *(v99 + 16);
      if (v105 >= *(v99 + 24) >> 1)
      {
        OUTLINED_FUNCTION_3_72();
        v99 = v217;
      }

      ++v98;
      *(v99 + 16) = v105 + 1;
      sub_1C7159368(v202, v99 + v103 + v105 * v58);
      v91 = v216;
      goto LABEL_22;
    }

    sub_1C715930C(v100);
    ++v98;
  }

  v106 = sub_1C755104C();
  v107 = v208;
  v208[12] = v106;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_5_56();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70]();
  v108 = v218;
  v107[13] = v217;
  v107[14] = v108;
  v109 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_14_42();
  v110 = 0;
  v205 = v109;
LABEL_33:
  v111 = v206;
  while (v96 != v110)
  {
    OUTLINED_FUNCTION_16_36();
    if (v112)
    {
      goto LABEL_127;
    }

    v113 = OUTLINED_FUNCTION_0_113();
    sub_1C71592A8(v113, v215);
    v114 = OUTLINED_FUNCTION_7_50();
    if (v115)
    {
      sub_1C7159368(v114, v201);
      v116 = v205;
      v117 = swift_isUniquelyReferenced_nonNull_native();
      v217 = v116;
      if ((v117 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
        v116 = v217;
      }

      OUTLINED_FUNCTION_8_51();
      if (v112)
      {
        OUTLINED_FUNCTION_3_72();
        v116 = v217;
      }

      ++v110;
      *(v116 + 16) = v91;
      v205 = v116;
      sub_1C7159368(v201, v116 + v58 + v111 * v100);
      v91 = v216;
      goto LABEL_33;
    }

    sub_1C715930C(v114);
    ++v110;
  }

  v118 = sub_1C755104C();
  v119 = v208;
  v208[15] = v118;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_5_56();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70]();
  v120 = v218;
  v119[16] = v217;
  v119[17] = v120;
  OUTLINED_FUNCTION_14_42();
  OUTLINED_FUNCTION_21_38();
  while (v96 != v110)
  {
    OUTLINED_FUNCTION_16_36();
    if (v112)
    {
      goto LABEL_128;
    }

    v121 = OUTLINED_FUNCTION_0_113();
    v122 = v214;
    sub_1C71592A8(v121, v214);
    v123 = OUTLINED_FUNCTION_7_50();
    if (v115)
    {
      sub_1C7159368(v123, v200);
      v124 = OUTLINED_FUNCTION_27_29();
      v217 = v122;
      if ((v124 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
      }

      OUTLINED_FUNCTION_8_51();
      if (v112)
      {
        OUTLINED_FUNCTION_3_72();
      }

      OUTLINED_FUNCTION_1_85();
      sub_1C7159368(v200, v125);
      OUTLINED_FUNCTION_19_41();
    }

    else
    {
      sub_1C715930C(v123);
      ++v110;
    }
  }

  OUTLINED_FUNCTION_26_30();
  v126 = sub_1C755104C();
  v127 = v208;
  v208[18] = v126;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_5_56();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70]();
  v128 = v218;
  v127[19] = v217;
  v127[20] = v128;
  OUTLINED_FUNCTION_14_42();
  OUTLINED_FUNCTION_21_38();
  while (v96 != v110)
  {
    OUTLINED_FUNCTION_16_36();
    if (v112)
    {
      goto LABEL_129;
    }

    v129 = OUTLINED_FUNCTION_0_113();
    v130 = v213;
    sub_1C71592A8(v129, v213);
    v131 = OUTLINED_FUNCTION_7_50();
    if (v115)
    {
      sub_1C7159368(v131, v199);
      v132 = OUTLINED_FUNCTION_27_29();
      v217 = v130;
      if ((v132 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
      }

      OUTLINED_FUNCTION_8_51();
      if (v112)
      {
        OUTLINED_FUNCTION_3_72();
      }

      OUTLINED_FUNCTION_1_85();
      sub_1C7159368(v199, v133);
      OUTLINED_FUNCTION_19_41();
    }

    else
    {
      sub_1C715930C(v131);
      ++v110;
    }
  }

  OUTLINED_FUNCTION_26_30();
  v134 = sub_1C755104C();
  v135 = v208;
  v208[21] = v134;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_5_56();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70]();
  v136 = v218;
  v135[22] = v217;
  v135[23] = v136;
  OUTLINED_FUNCTION_14_42();
  OUTLINED_FUNCTION_21_38();
  while (v96 != v110)
  {
    OUTLINED_FUNCTION_16_36();
    if (v112)
    {
      goto LABEL_130;
    }

    v137 = OUTLINED_FUNCTION_0_113();
    v138 = v212;
    sub_1C71592A8(v137, v212);
    v139 = OUTLINED_FUNCTION_7_50();
    if (v115)
    {
      sub_1C7159368(v139, v198);
      v140 = OUTLINED_FUNCTION_27_29();
      v217 = v138;
      if ((v140 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
      }

      OUTLINED_FUNCTION_8_51();
      if (v112)
      {
        OUTLINED_FUNCTION_3_72();
      }

      OUTLINED_FUNCTION_1_85();
      sub_1C7159368(v198, v141);
      OUTLINED_FUNCTION_19_41();
    }

    else
    {
      sub_1C715930C(v139);
      ++v110;
    }
  }

  OUTLINED_FUNCTION_26_30();
  v142 = sub_1C755104C();
  v143 = v208;
  v208[24] = v142;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_5_56();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70]();
  v144 = v218;
  v143[25] = v217;
  v143[26] = v144;
  OUTLINED_FUNCTION_14_42();
  OUTLINED_FUNCTION_21_38();
  while (v96 != v110)
  {
    OUTLINED_FUNCTION_16_36();
    if (v112)
    {
      goto LABEL_131;
    }

    v145 = OUTLINED_FUNCTION_0_113();
    v146 = v211;
    sub_1C71592A8(v145, v211);
    v147 = OUTLINED_FUNCTION_7_50();
    if (v115)
    {
      sub_1C7159368(v147, v197);
      v148 = OUTLINED_FUNCTION_27_29();
      v217 = v146;
      if ((v148 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
      }

      OUTLINED_FUNCTION_8_51();
      if (v112)
      {
        OUTLINED_FUNCTION_3_72();
      }

      OUTLINED_FUNCTION_1_85();
      sub_1C7159368(v197, v149);
      OUTLINED_FUNCTION_19_41();
    }

    else
    {
      sub_1C715930C(v147);
      ++v110;
    }
  }

  OUTLINED_FUNCTION_26_30();
  v150 = sub_1C755104C();
  v151 = v208;
  v208[27] = v150;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_5_56();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70]();
  v152 = v218;
  v151[28] = v217;
  v151[29] = v152;
  OUTLINED_FUNCTION_14_42();
  OUTLINED_FUNCTION_21_38();
  while (v96 != v110)
  {
    OUTLINED_FUNCTION_16_36();
    if (v112)
    {
      goto LABEL_132;
    }

    v153 = OUTLINED_FUNCTION_0_113();
    v154 = v210;
    sub_1C71592A8(v153, v210);
    v155 = OUTLINED_FUNCTION_7_50();
    if (v115)
    {
      sub_1C7159368(v155, v196);
      v156 = OUTLINED_FUNCTION_27_29();
      v217 = v154;
      if ((v156 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
      }

      OUTLINED_FUNCTION_8_51();
      if (v112)
      {
        OUTLINED_FUNCTION_3_72();
      }

      OUTLINED_FUNCTION_1_85();
      sub_1C7159368(v196, v157);
      OUTLINED_FUNCTION_19_41();
    }

    else
    {
      sub_1C715930C(v155);
      ++v110;
    }
  }

  OUTLINED_FUNCTION_26_30();
  v158 = sub_1C755104C();
  v159 = v208;
  v208[30] = v158;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_5_56();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70]();
  v160 = v218;
  v159[31] = v217;
  v159[32] = v160;
  OUTLINED_FUNCTION_14_42();
  OUTLINED_FUNCTION_21_38();
  while (v96 != v110)
  {
    OUTLINED_FUNCTION_16_36();
    if (v112)
    {
      goto LABEL_133;
    }

    v161 = OUTLINED_FUNCTION_0_113();
    v162 = v209;
    sub_1C71592A8(v161, v209);
    v163 = OUTLINED_FUNCTION_7_50();
    if (v115)
    {
      sub_1C7159368(v163, v195);
      v164 = OUTLINED_FUNCTION_27_29();
      v217 = v162;
      if ((v164 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
      }

      OUTLINED_FUNCTION_8_51();
      if (v112)
      {
        OUTLINED_FUNCTION_3_72();
      }

      OUTLINED_FUNCTION_1_85();
      sub_1C7159368(v195, v165);
      OUTLINED_FUNCTION_19_41();
    }

    else
    {
      sub_1C715930C(v163);
      ++v110;
    }
  }

  OUTLINED_FUNCTION_26_30();
  v166 = sub_1C755104C();
  v167 = v208;
  v208[33] = v166;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70](0xD00000000000001BLL);
  v168 = v218;
  v167[34] = v217;
  v167[35] = v168;
  v169 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_14_42();
  v170 = 0;
  while (v96 != v170)
  {
    OUTLINED_FUNCTION_16_36();
    if (v112)
    {
      goto LABEL_134;
    }

    v171 = OUTLINED_FUNCTION_0_113();
    sub_1C71592A8(v171, v111);
    if (*(v111 + 16) == v91)
    {
      sub_1C7159368(v111, v194);
      v172 = swift_isUniquelyReferenced_nonNull_native();
      v217 = v169;
      if ((v172 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
        v169 = v217;
      }

      OUTLINED_FUNCTION_8_51();
      if (v112)
      {
        OUTLINED_FUNCTION_3_72();
        v169 = v217;
      }

      ++v170;
      *(v169 + 16) = v91;
      sub_1C7159368(v194, v169 + v58 + v111 * v100);
      OUTLINED_FUNCTION_19_41();
    }

    else
    {
      sub_1C715930C(v111);
      ++v170;
    }
  }

  v173 = sub_1C755104C();
  v174 = v208;
  v208[36] = v173;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70](0xD00000000000001BLL);
  v175 = v218;
  v174[37] = v217;
  v174[38] = v175;
  v176 = *(v207 + 104);
  v177 = MEMORY[0x1E69E7CC0];
  v217 = MEMORY[0x1E69E7CC0];
  v178 = *(v176 + 16);
  sub_1C75504FC();
  v179 = 0;
  v180 = v192;
  while (v178 != v179)
  {
    OUTLINED_FUNCTION_16_36();
    if (v112)
    {
      goto LABEL_135;
    }

    v181 = OUTLINED_FUNCTION_0_113();
    sub_1C71592A8(v181, v180);
    v182 = OUTLINED_FUNCTION_7_50();
    if (v115)
    {
      sub_1C7159368(v182, v193);
      v183 = swift_isUniquelyReferenced_nonNull_native();
      v217 = v177;
      if ((v183 & 1) == 0)
      {
        OUTLINED_FUNCTION_20_40();
        v180 = v192;
        v177 = v217;
      }

      v185 = *(v177 + 16);
      v184 = *(v177 + 24);
      v186 = v185 + 1;
      if (v185 >= v184 >> 1)
      {
        OUTLINED_FUNCTION_15(v184);
        v188 = v187;
        sub_1C716D568();
        v186 = v188;
        v180 = v192;
        v177 = v217;
      }

      ++v179;
      *(v177 + 16) = v186;
      sub_1C7159368(v193, v177 + v58 + v185 * v100);
    }

    else
    {
      sub_1C715930C(v182);
      ++v179;
    }
  }

  v208[39] = sub_1C755104C();
  sub_1C6F65BE8(0, &qword_1EDD108E0);
  sub_1C75504DC();
  sub_1C70C0278();
}

uint64_t sub_1C72415BC()
{
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000027, 0x80000001C75A5CA0);
  v7 = 1;
  sub_1C724057C(&v7);
  sub_1C6F65BE8(0, &qword_1EDD10100);
  v0 = sub_1C75504BC();
  v2 = v1;

  MEMORY[0x1CCA5CD70](v0, v2);

  MEMORY[0x1CCA5CD70](0xD000000000000028, 0x80000001C75A5CD0);
  v7 = 2;
  sub_1C724057C(&v7);
  v3 = sub_1C75504BC();
  v5 = v4;

  MEMORY[0x1CCA5CD70](v3, v5);

  return v8;
}

void sub_1C7241730(uint64_t a1)
{
  v3 = type metadata accessor for PromptSuggestion(0);
  v4 = OUTLINED_FUNCTION_18(v3);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_78();
  v76 = v7 - v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_130();
  v80 = v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_130();
  v79 = v12;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_130();
  v78 = v17;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v74 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_130();
  v77 = v22;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74 - v24;
  v81 = v1;
  v1[2] = a1;

  v26 = *(a1 + 16);
  sub_1C75504FC();
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  while (v26 != v27)
  {
    OUTLINED_FUNCTION_12_46();
    v31 = v30 & ~v29;
    v32 = *(v6 + 72);
    sub_1C71592A8(a1 + v31 + v32 * v27, v25);
    if (v25[17] >= 2u)
    {
      sub_1C7159368(v25, v77);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_13_49();
        OUTLINED_FUNCTION_20_40();
        v28 = v83;
      }

      v35 = *(v28 + 16);
      v34 = *(v28 + 24);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        OUTLINED_FUNCTION_15(v34);
        v74 = v37;
        v75 = v38;
        sub_1C716D568();
        v35 = v74;
        v36 = v75;
        v28 = v83;
      }

      ++v27;
      *(v28 + 16) = v36;
      sub_1C7159368(v77, v28 + v31 + v35 * v32);
    }

    else
    {
      sub_1C715930C(v25);
      ++v27;
    }
  }

  v81[3] = v28;

  v39 = 0;
  v40 = MEMORY[0x1E69E7CC0];
  while (v26 != v39)
  {
    OUTLINED_FUNCTION_12_46();
    v43 = v42 & ~v41;
    v44 = *(v6 + 72);
    sub_1C71592A8(a1 + v43 + v44 * v39, v20);
    if (v20[56] == 1)
    {
      sub_1C7159368(v20, v78);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v83 = v40;
      if ((v45 & 1) == 0)
      {
        OUTLINED_FUNCTION_13_49();
        OUTLINED_FUNCTION_20_40();
        v40 = v83;
      }

      v47 = *(v40 + 16);
      v46 = *(v40 + 24);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_15(v46);
        v77 = v49;
        sub_1C716D568();
        v48 = v77;
        v40 = v83;
      }

      ++v39;
      *(v40 + 16) = v48;
      sub_1C7159368(v78, v40 + v43 + v47 * v44);
    }

    else
    {
      sub_1C715930C(v20);
      ++v39;
    }
  }

  v50 = v81;
  swift_beginAccess();
  v50[4] = v40;

  v51 = 0;
  v52 = MEMORY[0x1E69E7CC0];
  while (v26 != v51)
  {
    OUTLINED_FUNCTION_12_46();
    v55 = v54 & ~v53;
    v56 = *(v6 + 72);
    sub_1C71592A8(a1 + v55 + v56 * v51, v15);
    if (v15[56])
    {
      sub_1C715930C(v15);
      ++v51;
    }

    else
    {
      sub_1C7159368(v15, v79);
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v82 = v52;
      if ((v57 & 1) == 0)
      {
        OUTLINED_FUNCTION_13_49();
        OUTLINED_FUNCTION_20_40();
        v52 = v82;
      }

      v59 = *(v52 + 16);
      v58 = *(v52 + 24);
      if (v59 >= v58 >> 1)
      {
        OUTLINED_FUNCTION_15(v58);
        sub_1C716D568();
        v52 = v82;
      }

      ++v51;
      *(v52 + 16) = v59 + 1;
      sub_1C7159368(v79, v52 + v55 + v59 * v56);
    }
  }

  v60 = v81;
  v81[5] = v52;

  v61 = v60[4];
  v62 = *(v61 + 16);
  sub_1C75504FC();
  v63 = 0;
  v64 = MEMORY[0x1E69E7CC0];
LABEL_29:
  v65 = v80;
  while (1)
  {
    if (v62 == v63)
    {

      v81[6] = v64;

      return;
    }

    OUTLINED_FUNCTION_16_36();
    if (v66)
    {
      break;
    }

    OUTLINED_FUNCTION_12_46();
    v69 = v68 & ~v67;
    v70 = *(v6 + 72);
    sub_1C71592A8(v61 + v69 + v70 * v63, v65);
    if (*(v65 + 17) <= 1u)
    {
      sub_1C7159368(v65, v76);
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v82 = v64;
      if ((v71 & 1) == 0)
      {
        OUTLINED_FUNCTION_13_49();
        OUTLINED_FUNCTION_20_40();
        v64 = v82;
      }

      v73 = *(v64 + 16);
      v72 = *(v64 + 24);
      if (v73 >= v72 >> 1)
      {
        OUTLINED_FUNCTION_15(v72);
        sub_1C716D568();
        v64 = v82;
      }

      ++v63;
      *(v64 + 16) = v73 + 1;
      sub_1C7159368(v76, v64 + v69 + v73 * v70);
      goto LABEL_29;
    }

    sub_1C715930C(v65);
    ++v63;
  }

  __break(1u);
}

uint64_t UIPromptSuggestionSourceStatistics.deinit()
{

  return v0;
}

uint64_t UIPromptSuggestionSourceStatistics.__deallocating_deinit()
{
  UIPromptSuggestionSourceStatistics.deinit();

  return swift_deallocClassInstance();
}

void *sub_1C7241CF0()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = v2;
  v0[4] = v2;
  v0[5] = v2;
  v0[6] = v2;
  v0[7] = v2;
  v0[8] = v2;
  v0[9] = v2;
  v0[10] = v2;
  v0[11] = v2;
  v0[12] = v2;
  v0[13] = v2;
  return result;
}

uint64_t sub_1C7241D3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v45 = a5;
  sub_1C6F78034(v44);
  v6 = v44[1];
  v7 = v44[3];
  v8 = v44[4];
  v37 = v44[5];
  v38 = v44[0];
  v9 = (v44[2] + 64) >> 6;
  sub_1C75504FC();

  v36 = v6;
  if (v8)
  {
    while (1)
    {
      v39 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v38 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v38 + 56) + 8 * v12);
      v43[0] = *v13;
      v43[1] = v14;
      v43[2] = v15;
      sub_1C75504FC();
      v16 = v15;
      v37(&v40, v43);

      v17 = v40;
      v18 = v41;
      v19 = v42;
      v20 = *v45;
      v22 = sub_1C6F78124(v40, v41);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v25 = v21;
      if (v20[3] >= v23 + v24)
      {
        if ((v39 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
          sub_1C7551A3C();
        }
      }

      else
      {
        sub_1C7354B70();
        v26 = sub_1C6F78124(v17, v18);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_24;
        }

        v22 = v26;
      }

      v8 &= v8 - 1;
      v28 = *v45;
      if (v25)
      {

        v29 = v28[7];
        v30 = *(v29 + 8 * v22);
        *(v29 + 8 * v22) = v19;
      }

      else
      {
        v28[(v22 >> 6) + 8] |= 1 << v22;
        v31 = (v28[6] + 16 * v22);
        *v31 = v17;
        v31[1] = v18;
        *(v28[7] + 8 * v22) = v19;
        v32 = v28[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_23;
        }

        v28[2] = v34;
      }

      a4 = 1;
      v7 = v10;
      v6 = v36;
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
        sub_1C6F61E88();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v39 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C7241FE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C73D9228(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t type metadata accessor for PromptSuggestionStatistics()
{
  result = qword_1EDD090A8;
  if (!qword_1EDD090A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C724207C()
{
  sub_1C6F5FB48();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PersonalTrait.description.getter()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75A60F0);
  MEMORY[0x1CCA5CD70](*v0, v0[1]);
  MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
  v1 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v1);

  MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75A6110);
  v2 = type metadata accessor for PersonalTrait();
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](0x206C6562614C202CLL, 0xEE00203A65707974);
  v3 = PersonalTrait.LabelType.description.getter();
  MEMORY[0x1CCA5CD70](v3);

  MEMORY[0x1CCA5CD70](0x3A65726F6353202CLL, 0xE900000000000020);
  sub_1C7550F5C();
  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75A6130);
  v4 = MEMORY[0x1CCA5D090](*(v0 + *(v2 + 40)), MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v4);

  return 0;
}

PhotosIntelligence::PersonalTrait::Source_optional __swiftcall PersonalTrait.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalTrait.Source.rawValue.getter()
{
  v1 = 0x7972617262696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6C65646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7247746E656D6F6DLL;
  }
}

uint64_t sub_1C7242654@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalTrait.Source.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PersonalTrait.LabelType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  switch(*(v0 + 16))
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_22_40();
      v8 = v6;
      MEMORY[0x1CCA5CD70](v1, v2);
      goto LABEL_8;
    case 3:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      v4 = "library understanding generative theme via on-demand processing (version: ";
      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      v4 = "library understanding generative theme via overnight processing (version: ";
LABEL_5:
      MEMORY[0x1CCA5CD70](0xD00000000000004ALL, (v4 - 32) | 0x8000000000000000);
      goto LABEL_6;
    default:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_22_40();
      v8 = v3 - 1;
LABEL_6:
      v5 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v5);

LABEL_8:
      MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
      return v8;
  }
}

BOOL static PersonalTrait.LabelType.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_22;
      }

      if (v2 != v5 || v3 != v6)
      {
        OUTLINED_FUNCTION_90();
        v17 = sub_1C7551DBC();
        v31 = OUTLINED_FUNCTION_64();
        sub_1C7244FF8(v31, v32, 1u);
        v33 = OUTLINED_FUNCTION_1_86();
        sub_1C7244FF8(v33, v34, v35);
        v36 = OUTLINED_FUNCTION_1_86();
        sub_1C7080C10(v36, v37, v38);
        v24 = OUTLINED_FUNCTION_64();
        v26 = 1;
        goto LABEL_21;
      }

      v29 = 1;
      v52 = OUTLINED_FUNCTION_1_86();
      sub_1C7244FF8(v52, v53, v54);
      v55 = OUTLINED_FUNCTION_1_86();
      sub_1C7244FF8(v55, v56, v57);
      v58 = OUTLINED_FUNCTION_1_86();
      sub_1C7080C10(v58, v59, v60);
      v61 = OUTLINED_FUNCTION_1_86();
      sub_1C7080C10(v61, v62, v63);
      return v29;
    case 2u:
      if (v7 != 2)
      {
LABEL_22:
        sub_1C75504FC();
LABEL_23:
        v40 = OUTLINED_FUNCTION_64();
        sub_1C7244FF8(v40, v41, v7);
        v42 = OUTLINED_FUNCTION_90();
        sub_1C7080C10(v42, v43, v4);
        v44 = OUTLINED_FUNCTION_64();
        sub_1C7080C10(v44, v45, v7);
        return 0;
      }

      v15 = *a1;
      if (v2 == v5 && v3 == v6)
      {
        sub_1C7244FF8(v15, v3, 2u);
        v46 = OUTLINED_FUNCTION_90();
        sub_1C7244FF8(v46, v47, 2u);
        v48 = OUTLINED_FUNCTION_90();
        sub_1C7080C10(v48, v49, 2u);
        v50 = OUTLINED_FUNCTION_90();
        sub_1C7080C10(v50, v51, 2u);
        return 1;
      }

      v17 = sub_1C7551DBC();
      v18 = OUTLINED_FUNCTION_64();
      sub_1C7244FF8(v18, v19, 2u);
      v20 = OUTLINED_FUNCTION_90();
      sub_1C7244FF8(v20, v21, 2u);
      v22 = OUTLINED_FUNCTION_90();
      sub_1C7080C10(v22, v23, 2u);
      v24 = OUTLINED_FUNCTION_64();
      v26 = 2;
LABEL_21:
      sub_1C7080C10(v24, v25, v26);
      return v17 & 1;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_23;
      }

      v27 = OUTLINED_FUNCTION_90();
      sub_1C7080C10(v27, v28, 3u);
      v10 = OUTLINED_FUNCTION_64();
      v12 = 3;
      goto LABEL_14;
    case 4u:
      if (v7 != 4)
      {
        goto LABEL_23;
      }

      v13 = OUTLINED_FUNCTION_90();
      sub_1C7080C10(v13, v14, 4u);
      v10 = OUTLINED_FUNCTION_64();
      v12 = 4;
      goto LABEL_14;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_23;
      }

      v8 = OUTLINED_FUNCTION_90();
      sub_1C7080C10(v8, v9, 0);
      v10 = OUTLINED_FUNCTION_64();
      v12 = 0;
LABEL_14:
      sub_1C7080C10(v10, v11, v12);
      return v2 == v5;
  }
}

uint64_t sub_1C7242AC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x62614C656E656373 && a2 == 0xEA00000000006C65;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C75A6250 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001C75A6270 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000023 && 0x80000001C75A6290 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000002CLL && 0x80000001C75A62C0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

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

unint64_t sub_1C7242C78(char a1)
{
  result = 0x62614C656E656373;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000023;
      break;
    case 4:
      result = 0xD00000000000002CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7242D28(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4B796164696C6F68 && a2 == 0xEA00000000007965)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C7242DDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C7242E54(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4B676E696E61656DLL && a2 == 0xEA00000000007965)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C7242EF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656449656E656373 && a2 == 0xEF7265696669746ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C7242F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7242AC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7242FC4(uint64_t a1)
{
  v2 = sub_1C7245014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7243000(uint64_t a1)
{
  v2 = sub_1C7245014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7243040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7242D28(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C724306C(uint64_t a1)
{
  v2 = sub_1C7245110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72430A8(uint64_t a1)
{
  v2 = sub_1C7245110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C72430E8(uint64_t a1)
{
  v2 = sub_1C72450BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7243124(uint64_t a1)
{
  v2 = sub_1C72450BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7243160(uint64_t a1)
{
  v2 = sub_1C7245068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C724319C(uint64_t a1)
{
  v2 = sub_1C7245068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C72431DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7242E54(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C7243208(uint64_t a1)
{
  v2 = sub_1C7245164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7243244(uint64_t a1)
{
  v2 = sub_1C7245164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7243284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7242EF0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C72432B0(uint64_t a1)
{
  v2 = sub_1C72451B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72432EC(uint64_t a1)
{
  v2 = sub_1C72451B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonalTrait.LabelType.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v55 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2199C0);
  OUTLINED_FUNCTION_3_0();
  v49 = v5;
  v50 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_36();
  v48 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2199C8);
  OUTLINED_FUNCTION_3_0();
  v46 = v9;
  v47 = v8;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_36();
  v45 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2199D0);
  OUTLINED_FUNCTION_3_0();
  v43 = v13;
  v44 = v12;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_36();
  v42 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2199D8);
  OUTLINED_FUNCTION_3_0();
  v40 = v17;
  v41 = v16;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2199E0);
  OUTLINED_FUNCTION_3_0();
  v39[1] = v22;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v39 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2199E8);
  OUTLINED_FUNCTION_3_0();
  v53 = v27;
  v54 = v26;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v39 - v29;
  v31 = *v0;
  v51 = v0[1];
  v52 = v31;
  v32 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C7245014();
  sub_1C755200C();
  switch(v32)
  {
    case 1:
      sub_1C7245164();
      OUTLINED_FUNCTION_6_60();
      v38 = v41;
      sub_1C7551CCC();
      (*(v40 + 8))(v20, v38);
      goto LABEL_8;
    case 2:
      sub_1C7245110();
      v35 = v42;
      OUTLINED_FUNCTION_6_60();
      v36 = v44;
      sub_1C7551CCC();
      v37 = v43;
      goto LABEL_6;
    case 3:
      sub_1C72450BC();
      v35 = v45;
      OUTLINED_FUNCTION_6_60();
      v36 = v47;
      sub_1C7551D0C();
      v37 = v46;
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_183();
      sub_1C7245068();
      v35 = v48;
      OUTLINED_FUNCTION_6_60();
      v36 = v50;
      sub_1C7551D0C();
      v37 = v49;
LABEL_6:
      (*(v37 + 8))(v35, v36);
LABEL_8:
      (*(v53 + 8))(v30, v21);
      break;
    default:
      sub_1C72451B8();
      v33 = v54;
      sub_1C7551C6C();
      sub_1C7551D5C();
      OUTLINED_FUNCTION_7_51();
      v34(v25, v21);
      (*(v53 + 8))(v30, v33);
      break;
  }

  OUTLINED_FUNCTION_125();
}

uint64_t PersonalTrait.LabelType.hash(into:)()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      v4 = 1;
      goto LABEL_9;
    case 2:
      v4 = 2;
LABEL_9:
      MEMORY[0x1CCA5E460](v4);

      return sub_1C75505AC();
    case 3:
      v3 = 3;
      goto LABEL_6;
    case 4:
      v3 = 4;
LABEL_6:
      MEMORY[0x1CCA5E460](v3);
      result = MEMORY[0x1CCA5E460](v1);
      break;
    default:
      MEMORY[0x1CCA5E460](0);
      result = MEMORY[0x1CCA5E4A0](v1);
      break;
  }

  return result;
}

uint64_t PersonalTrait.LabelType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1C7551F3C();
  switch(v2)
  {
    case 1:
      v4 = 1;
      goto LABEL_8;
    case 2:
      v4 = 2;
LABEL_8:
      MEMORY[0x1CCA5E460](v4);
      sub_1C75505AC();
      return sub_1C7551FAC();
    case 3:
      v3 = 3;
      goto LABEL_6;
    case 4:
      v3 = 4;
LABEL_6:
      MEMORY[0x1CCA5E460](v3);
      MEMORY[0x1CCA5E460](v1);
      break;
    default:
      MEMORY[0x1CCA5E460](0);
      MEMORY[0x1CCA5E4A0](v1);
      break;
  }

  return sub_1C7551FAC();
}

void PersonalTrait.LabelType.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v94 = v0;
  v2 = v1;
  v92 = v3;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219A08);
  OUTLINED_FUNCTION_3_0();
  v88 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_36();
  v91 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219A10);
  OUTLINED_FUNCTION_3_0();
  v86 = v8;
  v87 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_36();
  v90 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219A18);
  OUTLINED_FUNCTION_3_0();
  v83 = v12;
  v84 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_36();
  v89 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219A20);
  OUTLINED_FUNCTION_3_0();
  v81 = v16;
  v82 = v15;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219A28);
  OUTLINED_FUNCTION_3_0();
  v80 = v21;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v74 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219A30);
  OUTLINED_FUNCTION_3_0();
  v27 = v26;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v74 - v29;
  v31 = v2[3];
  v93 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v31);
  sub_1C7245014();
  v32 = v94;
  sub_1C7551FFC();
  if (v32)
  {
    goto LABEL_9;
  }

  v76 = v20;
  v77 = v24;
  v78 = v19;
  v79 = v27;
  v33 = v92;
  v94 = v30;
  v34 = sub_1C7551C5C();
  sub_1C6FD80E0(v34, 0);
  if (v36 == v37 >> 1)
  {
LABEL_8:
    v47 = sub_1C75518EC();
    swift_allocError();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v49 = &type metadata for PersonalTrait.LabelType;
    v50 = v94;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_7_51();
    v51(v50, v25);
LABEL_9:
    v38 = v93;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_125();
    return;
  }

  if (v36 < (v37 >> 1))
  {
    v38 = v25;
    v75 = *(v35 + v36);
    sub_1C6FD80C8(v36 + 1);
    v40 = v39;
    v42 = v41;
    swift_unknownObjectRelease();
    if (v40 == v42 >> 1)
    {
      v43 = v38;
      v44 = v33;
      switch(v75)
      {
        case 1:
          sub_1C7245164();
          v55 = v94;
          sub_1C7551B4C();
          OUTLINED_FUNCTION_21_39();
          v58 = sub_1C7551BBC();
          OUTLINED_FUNCTION_18_31(v58);
          v60 = v69;
          swift_unknownObjectRelease();
          v70 = OUTLINED_FUNCTION_19_42();
          v71(v70);
          OUTLINED_FUNCTION_7_51();
          v72(v55, v38);
          goto LABEL_17;
        case 2:
          sub_1C7245110();
          OUTLINED_FUNCTION_15_48();
          v54 = v94;
          sub_1C7551B4C();
          v56 = sub_1C7551BBC();
          OUTLINED_FUNCTION_18_31(v56);
          v60 = v59;
          swift_unknownObjectRelease();
          v61 = OUTLINED_FUNCTION_20_41();
          v62(v61);
          OUTLINED_FUNCTION_7_51();
          v63(v54, v43);
          v38 = v93;
          goto LABEL_17;
        case 3:
          sub_1C72450BC();
          OUTLINED_FUNCTION_15_48();
          sub_1C7551B4C();
          OUTLINED_FUNCTION_21_39();
          OUTLINED_FUNCTION_17_46();
          v57 = sub_1C7551BFC();
          OUTLINED_FUNCTION_18_31(v57);
          v53 = v79;
          swift_unknownObjectRelease();
          goto LABEL_15;
        case 4:
          OUTLINED_FUNCTION_183();
          sub_1C7245068();
          sub_1C7551B4C();
          OUTLINED_FUNCTION_21_39();
          OUTLINED_FUNCTION_17_46();
          v52 = sub_1C7551BFC();
          OUTLINED_FUNCTION_18_31(v52);
          v53 = v79;
          swift_unknownObjectRelease();
LABEL_15:
          v64 = OUTLINED_FUNCTION_11_44();
          v65(v64);
          (*(v53 + 8))(v94, v38);
          goto LABEL_16;
        default:
          sub_1C72451B8();
          OUTLINED_FUNCTION_15_48();
          v45 = v94;
          sub_1C7551B4C();
          OUTLINED_FUNCTION_21_39();
          OUTLINED_FUNCTION_17_46();
          v46 = sub_1C7551C4C();
          OUTLINED_FUNCTION_18_31(v46);
          swift_unknownObjectRelease();
          v66 = OUTLINED_FUNCTION_11_44();
          v67(v66);
          OUTLINED_FUNCTION_7_51();
          v68(v45, v38);
LABEL_16:
          v60 = 0;
LABEL_17:
          v73 = v75;
          *v44 = v74;
          *(v44 + 8) = v60;
          *(v44 + 16) = v73;
          break;
      }

      goto LABEL_10;
    }

    v25 = v38;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C7244270()
{
  sub_1C7551F3C();
  PersonalTrait.LabelType.hash(into:)();
  return sub_1C7551FAC();
}

uint64_t PersonalTrait.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonalTrait() + 24);
  v4 = sub_1C754DFFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PersonalTrait.labelType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PersonalTrait() + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_1C7244FF8(v4, v5, v6);
}

uint64_t PersonalTrait.associatedPersonUUIDs.getter()
{
  type metadata accessor for PersonalTrait();

  return sub_1C75504FC();
}

uint64_t PersonalTrait.init(title:assetUUIDs:source:labelType:score:associatedPersonUUIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>)
{
  v11 = *a4;
  v12 = *a5;
  v13 = a5[1];
  v14 = *(a5 + 16);
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  v15 = type metadata accessor for PersonalTrait();
  *(a7 + v15[7]) = v11;
  v16 = a7 + v15[8];
  *v16 = v12;
  *(v16 + 1) = v13;
  v16[16] = v14;
  *(a7 + v15[9]) = a8;
  *(a7 + v15[10]) = a6;
  return sub_1C754DFEC();
}

PhotosIntelligence::PersonalTrait::CodingKeys_optional __swiftcall PersonalTrait.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PhotosIntelligence::PersonalTrait::CodingKeys_optional __swiftcall PersonalTrait.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = PersonalTrait.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1C7244558()
{
  result = 0x656C746974;
  switch(*v0)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0x65726F6373;
      break;
    case 4:
      result = 0x7079546C6562616CLL;
      break;
    case 5:
      result = 0x4955557465737361;
      break;
    case 6:
      result = 0x756F437465737361;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7244660@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalTrait.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C7244694(uint64_t a1)
{
  v2 = sub_1C724520C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72446D0(uint64_t a1)
{
  v2 = sub_1C724520C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonalTrait.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219A38);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C724520C();
  sub_1C755200C();
  LOBYTE(v23) = 0;
  OUTLINED_FUNCTION_442();
  sub_1C7551CCC();
  if (!v1)
  {
    v11 = type metadata accessor for PersonalTrait();
    LOBYTE(v23) = 1;
    sub_1C754DFFC();
    OUTLINED_FUNCTION_5_57();
    sub_1C724571C(v12, v13);
    OUTLINED_FUNCTION_442();
    sub_1C7551D2C();
    LOBYTE(v23) = *(v2 + v11[7]);
    sub_1C7245260();
    OUTLINED_FUNCTION_8_52();
    OUTLINED_FUNCTION_442();
    sub_1C7551D2C();
    LOBYTE(v23) = 3;
    OUTLINED_FUNCTION_442();
    sub_1C7551CEC();
    v14 = v2 + v11[8];
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v23 = *v14;
    v24 = v15;
    v25 = v16;
    OUTLINED_FUNCTION_183();
    sub_1C7244FF8(v17, v18, v19);
    sub_1C72452B4();
    OUTLINED_FUNCTION_8_52();
    OUTLINED_FUNCTION_442();
    sub_1C7551D2C();
    sub_1C7080C10(v23, v24, v25);
    v20 = *(v2 + 16);
    LOBYTE(v23) = 6;
    OUTLINED_FUNCTION_442();
    sub_1C7551D0C();
    v23 = v20;
    sub_1C75504FC();
    sub_1C70401E8();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C6FF60E4(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_8_52();
    v22 = v21;
    OUTLINED_FUNCTION_442();
    sub_1C7551D2C();

    v23 = *(v2 + v11[10]);
    OUTLINED_FUNCTION_8_52();
    OUTLINED_FUNCTION_442();
    sub_1C7551D2C();
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_125();
}

void PersonalTrait.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v23 = v3;
  sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v24 = v5;
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219A40);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v26 = type metadata accessor for PersonalTrait();
  MEMORY[0x1EEE9AC00](v26);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v2[3];
  v27 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v11);
  sub_1C724520C();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    LOBYTE(v28) = 0;
    OUTLINED_FUNCTION_13_50();
    *v10 = sub_1C7551BBC();
    v10[1] = v12;
    LOBYTE(v28) = 1;
    OUTLINED_FUNCTION_5_57();
    sub_1C724571C(v13, v14);
    v15 = v25;
    OUTLINED_FUNCTION_13_50();
    sub_1C7551C1C();
    v16 = v26;
    (*(v24 + 32))(v10 + *(v26 + 24), v7, v15);
    sub_1C7245308();
    OUTLINED_FUNCTION_23_31();
    OUTLINED_FUNCTION_13_50();
    sub_1C7551C1C();
    *(v10 + v16[7]) = v28;
    LOBYTE(v28) = 3;
    OUTLINED_FUNCTION_13_50();
    sub_1C7551BDC();
    *(v10 + v16[9]) = v17;
    OUTLINED_FUNCTION_183();
    sub_1C724535C();
    OUTLINED_FUNCTION_23_31();
    OUTLINED_FUNCTION_13_50();
    sub_1C7551C1C();
    v18 = v29;
    v19 = v10 + v16[8];
    *v19 = v28;
    v19[16] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C6FF60E4(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_23_31();
    OUTLINED_FUNCTION_13_50();
    sub_1C7551C1C();
    v10[2] = v28;
    OUTLINED_FUNCTION_23_31();
    OUTLINED_FUNCTION_13_50();
    sub_1C7551C1C();
    v20 = OUTLINED_FUNCTION_10_53();
    v21(v20);
    *(v10 + *(v26 + 40)) = v28;
    sub_1C72453B0(v10, v23);
    __swift_destroy_boxed_opaque_existential_1(v27);
    sub_1C7245414(v10);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t type metadata accessor for PersonalTrait()
{
  result = qword_1EDD0F528;
  if (!qword_1EDD0F528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7244FF8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
    return sub_1C75504FC();
  }

  return result;
}

unint64_t sub_1C7245014()
{
  result = qword_1EDD0F578;
  if (!qword_1EDD0F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F578);
  }

  return result;
}

unint64_t sub_1C7245068()
{
  result = qword_1EC2199F0;
  if (!qword_1EC2199F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2199F0);
  }

  return result;
}

unint64_t sub_1C72450BC()
{
  result = qword_1EC2199F8;
  if (!qword_1EC2199F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2199F8);
  }

  return result;
}

unint64_t sub_1C7245110()
{
  result = qword_1EC219A00;
  if (!qword_1EC219A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219A00);
  }

  return result;
}

unint64_t sub_1C7245164()
{
  result = qword_1EDD0F550;
  if (!qword_1EDD0F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F550);
  }

  return result;
}

unint64_t sub_1C72451B8()
{
  result = qword_1EDD0F590;
  if (!qword_1EDD0F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F590);
  }

  return result;
}

unint64_t sub_1C724520C()
{
  result = qword_1EDD0F5B8;
  if (!qword_1EDD0F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F5B8);
  }

  return result;
}

unint64_t sub_1C7245260()
{
  result = qword_1EDD0F5A0;
  if (!qword_1EDD0F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F5A0);
  }

  return result;
}

unint64_t sub_1C72452B4()
{
  result = qword_1EDD0F538;
  if (!qword_1EDD0F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F538);
  }

  return result;
}

unint64_t sub_1C7245308()
{
  result = qword_1EDD0C0A0;
  if (!qword_1EDD0C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C0A0);
  }

  return result;
}

unint64_t sub_1C724535C()
{
  result = qword_1EDD0C090;
  if (!qword_1EDD0C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C090);
  }

  return result;
}

uint64_t sub_1C72453B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTrait();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7245414(uint64_t a1)
{
  v2 = type metadata accessor for PersonalTrait();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C7245474()
{
  result = qword_1EC219A48;
  if (!qword_1EC219A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219A48);
  }

  return result;
}

unint64_t sub_1C72454CC()
{
  result = qword_1EDD0C098;
  if (!qword_1EDD0C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C098);
  }

  return result;
}

unint64_t sub_1C7245524()
{
  result = qword_1EC219A50;
  if (!qword_1EC219A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219A50);
  }

  return result;
}

unint64_t sub_1C724557C()
{
  result = qword_1EDD0F5A8;
  if (!qword_1EDD0F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F5A8);
  }

  return result;
}

unint64_t sub_1C72455D4()
{
  result = qword_1EDD0F5B0;
  if (!qword_1EDD0F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F5B0);
  }

  return result;
}

uint64_t sub_1C7245628(void *a1)
{
  a1[1] = sub_1C724571C(&qword_1EDD0C080, type metadata accessor for PersonalTrait);
  a1[2] = sub_1C724571C(&qword_1EDD0C088, type metadata accessor for PersonalTrait);
  result = sub_1C724571C(&qword_1EDD0C078, type metadata accessor for PersonalTrait);
  a1[3] = result;
  return result;
}

uint64_t sub_1C724571C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C724578C()
{
  sub_1C704303C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = sub_1C754DFFC();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for PersonalTrait.Source(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C7245940(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C7245980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalTrait.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonalTrait.LabelType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C7245BCC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C7245C7C()
{
  result = qword_1EC219A58;
  if (!qword_1EC219A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219A58);
  }

  return result;
}

unint64_t sub_1C7245CD4()
{
  result = qword_1EC219A60;
  if (!qword_1EC219A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219A60);
  }

  return result;
}

unint64_t sub_1C7245D2C()
{
  result = qword_1EC219A68;
  if (!qword_1EC219A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219A68);
  }

  return result;
}

unint64_t sub_1C7245D84()
{
  result = qword_1EC219A70;
  if (!qword_1EC219A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219A70);
  }

  return result;
}

unint64_t sub_1C7245DDC()
{
  result = qword_1EC219A78;
  if (!qword_1EC219A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219A78);
  }

  return result;
}

unint64_t sub_1C7245E34()
{
  result = qword_1EC219A80;
  if (!qword_1EC219A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219A80);
  }

  return result;
}

unint64_t sub_1C7245E8C()
{
  result = qword_1EDD0F580;
  if (!qword_1EDD0F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F580);
  }

  return result;
}

unint64_t sub_1C7245EE4()
{
  result = qword_1EDD0F588;
  if (!qword_1EDD0F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F588);
  }

  return result;
}

unint64_t sub_1C7245F3C()
{
  result = qword_1EDD0F540;
  if (!qword_1EDD0F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F540);
  }

  return result;
}

unint64_t sub_1C7245F94()
{
  result = qword_1EDD0F548;
  if (!qword_1EDD0F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F548);
  }

  return result;
}

unint64_t sub_1C7245FEC()
{
  result = qword_1EDD0F558;
  if (!qword_1EDD0F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F558);
  }

  return result;
}

unint64_t sub_1C7246044()
{
  result = qword_1EDD0F560;
  if (!qword_1EDD0F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F560);
  }

  return result;
}

unint64_t sub_1C724609C()
{
  result = qword_1EC219A88;
  if (!qword_1EC219A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219A88);
  }

  return result;
}

unint64_t sub_1C72460F4()
{
  result = qword_1EC219A90;
  if (!qword_1EC219A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219A90);
  }

  return result;
}

unint64_t sub_1C724614C()
{
  result = qword_1EC219A98;
  if (!qword_1EC219A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219A98);
  }

  return result;
}

unint64_t sub_1C72461A4()
{
  result = qword_1EC219AA0;
  if (!qword_1EC219AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219AA0);
  }

  return result;
}

unint64_t sub_1C72461FC()
{
  result = qword_1EDD0F568;
  if (!qword_1EDD0F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F568);
  }

  return result;
}

unint64_t sub_1C7246254()
{
  result = qword_1EDD0F570;
  if (!qword_1EDD0F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F570);
  }

  return result;
}

unint64_t sub_1C72462A8()
{
  result = qword_1EDD0F598;
  if (!qword_1EDD0F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F598);
  }

  return result;
}

void sub_1C7246318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v15[2] = MEMORY[0x1E69E7CC0];
  v9 = sub_1C6FB6304();
  v10 = 0;
  v14 = v9;
  while (1)
  {
    if (v9 == v10)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1CCA5DDD0](v10, a1);
    }

    else
    {
      if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v11 = *(a1 + 8 * v10 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v15[0] = v11;
    v13 = sub_1C724D104(v15, a2, a3, a4);
    if (v4)
    {

      return;
    }

    if (v13)
    {
      sub_1C755192C();
      sub_1C755196C();
      v9 = v14;
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }

    ++v10;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1C72464D4(uint64_t a1, id *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v42 = MEMORY[0x1E69E7CC0];
  v4 = sub_1C6FB6304();
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = &selRef_addingKeyAssetForObject_toAssets_options_;
  v35 = v4;
  v36 = a1;
  v33 = a1 & 0xFFFFFFFFFFFFFF8;
  v34 = a1 & 0xC000000000000001;
  v37 = a2;
  while (1)
  {
    if (v4 == v5)
    {

      return v42;
    }

    if (v6)
    {
      v9 = MEMORY[0x1CCA5DDD0](v5, a1);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_26;
      }

      v9 = *(a1 + 8 * v5 + 32);
    }

    v10 = v9;
    if (__OFADD__(v5, 1))
    {
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

    v41 = 0;
    if (![v9 v8[486]])
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      a2 = v37;
      goto LABEL_22;
    }

    v11 = v41;
    v12 = sub_1C70CAC04(v10);
    if (!v13)
    {
      goto LABEL_29;
    }

    v14 = v12;
    v15 = v13;
    v38 = v10;
    if (v11)
    {
      v39 = sub_1C755068C();
      v40 = v16;
    }

    else
    {
      v39 = 0x6E776F6E6B6E75;
      v40 = 0xE700000000000000;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v17 = a2;
    v41 = *a2;
    v18 = v41;
    v19 = sub_1C6F78124(v14, v15);
    if (__OFADD__(v18[2], (v20 & 1) == 0))
    {
      goto LABEL_27;
    }

    v21 = v19;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328);
    if (sub_1C7551A2C())
    {
      break;
    }

LABEL_17:
    v25 = v41;
    if (v22)
    {
      v26 = (*(v41 + 7) + 16 * v21);
      *v26 = v39;
      v26[1] = v40;
    }

    else
    {
      *(v41 + (v21 >> 6) + 8) |= 1 << v21;
      v27 = (v25[6] + 16 * v21);
      *v27 = v14;
      v27[1] = v15;
      v28 = (v25[7] + 16 * v21);
      *v28 = v39;
      v28[1] = v40;
      v29 = v25[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_28;
      }

      v25[2] = v31;
      sub_1C75504FC();
    }

    a2 = v17;
    *v17 = v25;

    v4 = v35;
    a1 = v36;
    v7 = v33;
    v6 = v34;
    v8 = &selRef_addingKeyAssetForObject_toAssets_options_;
LABEL_22:
    ++v5;
  }

  v23 = sub_1C6F78124(v14, v15);
  if ((v22 & 1) == (v24 & 1))
  {
    v21 = v23;
    goto LABEL_17;
  }

  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C7246808(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a4;
  v7 = a2;
  v8 = result;
  v9 = 0;
  v10 = *(result + 16);
  v11 = MEMORY[0x1E69E7CC0];
  for (i = 32; ; i += 80)
  {
    if (v10 == v9)
    {

LABEL_15:

      return v11;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    memcpy(__dst, (v8 + i), sizeof(__dst));
    memcpy(__src, (v8 + i), 0x50uLL);
    sub_1C7251350(__dst, v18);
    v13 = sub_1C724CE64(__src, v7, a3, v5);
    if (v4)
    {
      memcpy(v18, __src, sizeof(v18));
      sub_1C72513AC(v18);

      goto LABEL_15;
    }

    if (v13)
    {
      memcpy(v18, __src, sizeof(v18));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716E9B0();
        v11 = v21;
      }

      v15 = *(v11 + 16);
      if (v15 >= *(v11 + 24) >> 1)
      {
        sub_1C716E9B0();
        v11 = v21;
      }

      *(v11 + 16) = v15 + 1;
      result = memcpy((v11 + 80 * v15 + 32), v18, 0x50uLL);
      v5 = a4;
      v7 = a2;
    }

    else
    {
      memcpy(v18, __src, sizeof(v18));
      result = sub_1C72513AC(v18);
    }

    ++v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C72469D8(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  v7 = result + 32;
  v26 = MEMORY[0x1E69E7CC0];
  v27 = result;
  while (1)
  {
    if (v5 == v6)
    {

      return v26;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    result = memcpy(__dst, (v7 + 80 * v5++), 0x50uLL);
    if (*(v3 + 16))
    {
      v8 = __dst[1];
      v9 = __dst[2];
      sub_1C7251350(__dst, v30);
      v10 = sub_1C6F78124(v8, v9);
      if (v11)
      {
        v12 = (*(v3 + 56) + 16 * v10);
        v14 = *v12;
        v13 = v12[1];
        v15 = *a3;
        if (*(*a3 + 16))
        {
          v16 = v6;
          sub_1C7551F3C();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75505AC();
          v17 = sub_1C7551FAC();
          v18 = ~(-1 << *(v15 + 32));
          while (1)
          {
            v19 = v17 & v18;
            if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
            {
              break;
            }

            v20 = (*(v15 + 48) + 16 * v19);
            if (*v20 != v14 || v20[1] != v13)
            {
              v22 = sub_1C7551DBC();
              v17 = v19 + 1;
              if ((v22 & 1) == 0)
              {
                continue;
              }
            }

            v6 = v16;
            v4 = v27;
            v3 = a2;
            goto LABEL_15;
          }

          v6 = v16;
          v4 = v27;
        }

        else
        {
          sub_1C75504FC();
        }

        sub_1C70F082C(v30, v14, v13);

        v23 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C716E9B0();
          v23 = v32;
        }

        v3 = a2;
        v25 = *(v23 + 16);
        if (v25 >= *(v23 + 24) >> 1)
        {
          sub_1C716E9B0();
          v23 = v32;
        }

        *(v23 + 16) = v25 + 1;
        v26 = v23;
        result = memcpy((v23 + 80 * v25 + 32), __dst, 0x50uLL);
      }

      else
      {
LABEL_15:
        result = sub_1C72513AC(__dst);
      }
    }
  }

  __break(1u);
  return result;
}

void __swiftcall FreeformStoryKeyAssetElector.Configuration.init(minimumNumberOfAssetsInChapterForKeyAssetGeneration:curationScoreRandomizationWeight:curationScoreQuantum:aestheticScoreRandomizationWeight:aestheticScoreQuantum:personScoreRandomizationWeight:personScoreQuantum:)(PhotosIntelligence::FreeformStoryKeyAssetElector::Configuration *__return_ptr retstr, Swift::Int minimumNumberOfAssetsInChapterForKeyAssetGeneration, Swift::Double curationScoreRandomizationWeight, Swift::Double curationScoreQuantum, Swift::Double aestheticScoreRandomizationWeight, Swift::Double aestheticScoreQuantum, Swift::Double personScoreRandomizationWeight, Swift::Double personScoreQuantum)
{
  retstr->minimumNumberOfAssetsInChapterForKeyAssetGeneration = minimumNumberOfAssetsInChapterForKeyAssetGeneration;
  retstr->curationScoreRandomizationWeight = curationScoreRandomizationWeight;
  retstr->curationScoreQuantum = curationScoreQuantum;
  retstr->aestheticScoreRandomizationWeight = aestheticScoreRandomizationWeight;
  retstr->aestheticScoreQuantum = aestheticScoreQuantum;
  retstr->personScoreRandomizationWeight = personScoreRandomizationWeight;
  retstr->personScoreQuantum = personScoreQuantum;
}

uint64_t FreeformStoryKeyAssetElector.__allocating_init(configuration:storyPhotoLibraryContext:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  FreeformStoryKeyAssetElector.init(configuration:storyPhotoLibraryContext:)(a1, a2);
  return v4;
}

void *sub_1C7246CB8@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char **a6@<X8>)
{
  v174 = a1;
  v175 = a3;
  v172 = a6;
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3_0();
  v178 = v10;
  v179 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v177 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v163 - v13;
  v15 = type metadata accessor for StoryGenerationSession(0);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_0();
  v173 = v17 - v16;
  v182 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14_0();
  v23 = v22 - v21;
  memcpy(v190, a2, 0x130uLL);
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_1C754F1CC();
  v24 = v181;
  sub_1C754F2CC();
  if (v24)
  {
    OUTLINED_FUNCTION_70(a4, a4[3]);
    OUTLINED_FUNCTION_505();
    sub_1C754F1AC();
    (*(v19 + 8))(v23, v182);
    return (*(v178 + 8))(a5, v179);
  }

  v180 = 0;
  v181 = v14;
  v165 = v15;
  v176 = a5;
  v26 = a4[3];
  v167 = a4;
  OUTLINED_FUNCTION_70(a4, v26);
  sub_1C754F15C();
  v27 = v175;
  v28 = *(v174 + 16);
  v29 = (v174 + 32);
  v30 = v28;
  v31 = (v174 + 32);
  v174 = v19;
  v32 = v173;
  if (v28)
  {
    while (1)
    {
      memcpy(v185, v31, 0x68uLL);
      memcpy(v186, v31, 0x68uLL);
      if (!LOBYTE(v185[2]))
      {
        break;
      }

      v31 += 104;
      if (!--v30)
      {
        goto LABEL_6;
      }
    }

    sub_1C6FC061C(v185, v187);
    memcpy(v188, v186, sizeof(v188));
  }

  else
  {
LABEL_6:
    memset(v188, 0, sizeof(v188));
  }

  memcpy(v186, v190, sizeof(v186));
  v33 = sub_1C724A82C(v186, v189);
  memcpy(v186, v190, sizeof(v186));
  sub_1C72505C8(v27, v32);
  type metadata accessor for FreeformStoryKeyAssetElector.Context();
  v34 = swift_allocObject();
  sub_1C6FDE884(v190, v185);
  FreeformStoryKeyAssetElector.Context.init(from:storySession:)(v186, v32);
  v35 = v188[1];
  v36 = &unk_1EDD28000;
  v173 = v34;
  v168 = v23;
  if (v188[1])
  {
    v171 = v28;
    v37 = v188[0];
    v187[0] = v188[0];
    v187[1] = v188[1];
    memcpy(&v187[2], &v188[2], 0x58uLL);
    memcpy(v185, v188, 0x68uLL);
    sub_1C6FC061C(v185, v184);
    v38 = v181;
    sub_1C754F2BC();
    v39 = v180;
    sub_1C724AF58(v187, v33, v34, v189, v38, v40, v41, v42, v163, *(&v163 + 1), v164, v165, v166, v167, v168, v169, v170, v171, v172, v173);
    v180 = v39;
    if (v39)
    {
      OUTLINED_FUNCTION_362();
      sub_1C6FB5FC8(v43, v44);

      __swift_destroy_boxed_opaque_existential_1(v189);
      OUTLINED_FUNCTION_362();
      sub_1C6FB5FC8(v45, v46);
      OUTLINED_FUNCTION_70(v167, v167[3]);
      v47 = v168;
      sub_1C754F1AC();
      (*(v174 + 8))(v47, v182);
      return (*(v178 + 8))(v176, v179);
    }

    v48 = &unk_1C755E000;
    v49 = &unk_1C7569000;
    v169 = v37;
    v170 = v33;
    v80 = v183[0];
    if (v183[0])
    {
      v81 = v183[2];

      v82 = v80;
      sub_1C75504FC();
      v83 = sub_1C754FEEC();
      v84 = sub_1C75511BC();
      v85 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v85, v86))
      {
        v191 = v81;
        OUTLINED_FUNCTION_13_3();
        v87 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v178 = swift_slowAlloc();
        v187[0] = v178;
        v179 = v87;
        *v87 = 136315138;
        v181 = v82;
        v88 = sub_1C70CAC04(v82);
        if (!v89)
        {
          result = sub_1C7250680(v80);
          __break(1u);
          return result;
        }

        v90 = v88;
        v91 = v89;
        v81 = v191;
        sub_1C7250680(v80);
        v92 = sub_1C6F765A4(v90, v91, v187);

        v93 = v179;
        *(v179 + 1) = v92;
        _os_log_impl(&dword_1C6F5C000, v83, v84, "Key asset from key chapter: '%s'", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v178);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        v82 = v181;
      }

      else
      {

        OUTLINED_FUNCTION_95_1();
        sub_1C7250680(v136);
      }

      v104 = v82;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C6FB5FC8(v188, &qword_1EC217EF8);
      v114 = v81;
      sub_1C7250680(v80);
      LODWORD(v181) = 0;
      v61 = v182;
      v135 = v180;
      v23 = v168;
      goto LABEL_73;
    }

    sub_1C6FB5FC8(v188, &qword_1EC217EF8);
    v23 = v168;
    v28 = v171;
    v36 = &unk_1EDD28000;
  }

  else
  {
    v48 = &unk_1C755E000;
    v49 = &unk_1C7569000;
    v170 = v33;
  }

  v171 = v36[327];
  v50 = sub_1C754FEEC();
  sub_1C75511BC();
  v51 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v51, v52))
  {
    OUTLINED_FUNCTION_96_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_18_32(&dword_1C6F5C000, v53, v54, "No key asset from key chapter, trying other chapters in order");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v56 = v188[1];
  if (!v188[1])
  {
    v57 = 0;
    v56 = 0xE000000000000000;
    if (v28)
    {
      goto LABEL_17;
    }

LABEL_37:

    v61 = v182;
    v63 = v173;
LABEL_38:
    v94 = sub_1C754FEEC();
    sub_1C75511BC();
    v95 = OUTLINED_FUNCTION_72();
    v97 = os_log_type_enabled(v95, v96);
    v98 = v170;
    if (v97)
    {
      OUTLINED_FUNCTION_96_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18_32(&dword_1C6F5C000, v99, v100, "Couldn't find a key asset from any chapter, attempting to find a key asset from retrievedAssets or storytellingAssets");
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v101 = sub_1C75504FC();
    v102 = sub_1C71CD85C(v101);
    *&v185[3] = 0;
    BYTE8(v185[3]) = 6;
    memset(&v185[4], 0, 40);
    strcpy(v185, "EligibleAssets");
    HIBYTE(v185[0]) = -18;
    *&v185[1] = 45;
    *(&v185[1] + 1) = 0xE100000000000000;
    v185[2] = v102;
    v103 = sub_1C71CD85C(v98);
    FreeformStoryKeyAssetElector.keyAsset(from:context:isLastResortCase:diagnostics:)(v103, v63, 1, v185);

    v104 = v187[0];
    v105 = v187[2];
    if (v187[0])
    {
      v106 = v187[0];
      sub_1C75504FC();
      v107 = sub_1C754FEEC();
      v108 = sub_1C75511BC();
      v109 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v109, v110))
      {
        OUTLINED_FUNCTION_96_0();
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&dword_1C6F5C000, v107, v108, "Found key asset from eligibleAssets.", v111, 2u);
        v61 = v182;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v112 = v106;
      sub_1C75504FC();
      OUTLINED_FUNCTION_95_1();
      sub_1C7250680(v113);
      LODWORD(v181) = 2;
      v114 = v105;
    }

    else
    {
      v114 = 0;
      LODWORD(v181) = 0;
    }

    v115 = *(v175 + *(v165 + 24));
    if (v115)
    {
      sub_1C716A8EC(0xD00000000000001BLL, 0x80000001C75A6660, v115, v185);
    }

    OUTLINED_FUNCTION_95_1();
    sub_1C7250680(v116);
    memcpy(v187, v185, sizeof(v187));
    sub_1C7250650(v187);
    if (v104)
    {
      v169 = 0;
      goto LABEL_58;
    }

    v117 = OUTLINED_FUNCTION_19_43();
    v118 = sub_1C755119C();
    v119 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v119, v120))
    {
      OUTLINED_FUNCTION_96_0();
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_1C6F5C000, v117, v118, "Failed to elect a key asset, choosing from safe storytelling assets as last resort", v121, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C703FD7C();
    v184[5] = 0;
    v184[6] = 0;
    LOBYTE(v184[7]) = 6;
    memset(&v184[8], 0, 40);
    v184[0] = 0xD000000000000012;
    v184[1] = 0x80000001C75A6620;
    v184[2] = 45;
    v184[3] = 0xE100000000000000;
    v184[4] = v122;
    v123 = sub_1C75504FC();
    v124 = sub_1C71CD85C(v123);
    FreeformStoryKeyAssetElector.keyAsset(from:context:isLastResortCase:diagnostics:)(v124, v173, 1, v184);

    v104 = v183[0];
    v125 = v183[2];
    if (v183[0])
    {
      v177 = v183[0];
      sub_1C75504FC();
      v126 = sub_1C754FEEC();
      v127 = sub_1C75511BC();
      v128 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v128, v129))
      {
        OUTLINED_FUNCTION_96_0();
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&dword_1C6F5C000, v126, v127, "Found key asset from storytellingAssets.", v130, 2u);
        v61 = v182;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C6FE0E14(0, v114, 0, 0, v181);

      v131 = v177;
      sub_1C75504FC();
      OUTLINED_FUNCTION_95_1();
      sub_1C7250680(v132);
      LODWORD(v181) = 2;
      v133 = 1;
      v114 = v125;
      v23 = v168;
      if (!v115)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v133 = 0;
      if (!v115)
      {
        goto LABEL_56;
      }
    }

    sub_1C716A8EC(0xD00000000000001FLL, 0x80000001C75A6640, v115, v184);
LABEL_56:
    OUTLINED_FUNCTION_95_1();
    sub_1C7250680(v134);
    memcpy(v183, v184, sizeof(v183));
    sub_1C7250650(v183);
    if (!v104)
    {
      v137 = v133;
      v138 = OUTLINED_FUNCTION_19_43();
      sub_1C755119C();
      v139 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v139, v140))
      {
        OUTLINED_FUNCTION_96_0();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_18_32(&dword_1C6F5C000, v141, v142, "Failed to elect a key asset using storytelling assets last resort!");
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        sub_1C6FE0E14(0, v114, v137, 0, v181);
        sub_1C6FB5FC8(v188, &qword_1EC217EF8);
      }

      else
      {

        sub_1C6FB5FC8(v188, &qword_1EC217EF8);
      }

      v158 = v174;
      v159 = v167;
      v160 = v172;
      v162 = v178;
      v161 = v179;
      __swift_destroy_boxed_opaque_existential_1(v189);
      *(v160 + 32) = 0;
      *v160 = 0u;
      *(v160 + 1) = 0u;
      OUTLINED_FUNCTION_70(v159, v159[3]);
      OUTLINED_FUNCTION_505();
      sub_1C754F1AC();
      (*(v158 + 8))(v23, v61);
      return (*(v162 + 8))(v176, v161);
    }

    v169 = v133;
LABEL_58:
    v35 = 0;
    v135 = v180;
    goto LABEL_73;
  }

  v57 = v188[0];
  sub_1C75504FC();
  if (!v28)
  {
    goto LABEL_37;
  }

LABEL_17:
  v181 = v57;
  v58 = v28 - 1;
  v59 = v48[346];
  v60 = v49[166];
  *&v55 = 136315138;
  v163 = v55;
  v61 = v182;
  v63 = v173;
  v62 = v174;
  v166 = v56;
  while (1)
  {
    memcpy(v185, v29, 0x68uLL);
    v35 = *(&v185[0] + 1);
    v64 = *&v185[0];
    v65 = *&v185[0] == v181 && *(&v185[0] + 1) == v56;
    if (v65 || (sub_1C7551DBC() & 1) != 0)
    {
      v66 = v59;
      if (!v58)
      {
        goto LABEL_35;
      }

      goto LABEL_30;
    }

    v67 = v61;
    v169 = v64;
    v66 = (v59 + v60) * 0.5;
    memcpy(v187, v185, sizeof(v187));
    sub_1C6FC061C(v185, v184);
    v68 = v177;
    sub_1C754F2BC();
    v69 = v180;
    sub_1C724AF58(v187, v170, v63, v189, v68, v70, v71, v72, v163, *(&v163 + 1), v164, v165, v166, v167, v168, v169, v170, v171, v172, v173);
    v180 = v69;
    if (v69)
    {
      __swift_destroy_boxed_opaque_existential_1(v189);

      sub_1C6FB5FC8(v188, &qword_1EC217EF8);

      sub_1C70552E0(v185);
      OUTLINED_FUNCTION_70(v167, v167[3]);
      v143 = v168;
      sub_1C754F1AC();
      (*(v62 + 8))(v143, v67);
      return (*(v178 + 8))(v176, v179);
    }

    v73 = v185[1];
    v74 = v183[0];
    if (v183[0])
    {
      break;
    }

    sub_1C6FC061C(v185, v187);
    v75 = OUTLINED_FUNCTION_19_43();
    v76 = sub_1C75511BC();
    sub_1C70552E0(v185);
    if (os_log_type_enabled(v75, v76))
    {
      OUTLINED_FUNCTION_13_3();
      v77 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v78 = swift_slowAlloc();
      v187[0] = v78;
      *v77 = v163;
      sub_1C75504FC();
      v79 = sub_1C6F765A4(v73, *(&v73 + 1), v187);

      *(v77 + 4) = v79;
      _os_log_impl(&dword_1C6F5C000, v75, v76, "No key asset from chapter '%s'", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C70552E0(v185);
    v61 = v182;
    v63 = v173;
    v62 = v174;
    v56 = v166;
    if (!v58)
    {
LABEL_35:

      v23 = v168;
      goto LABEL_38;
    }

LABEL_30:
    --v58;
    v29 += 104;
    v59 = v66;
  }

  v179 = *&v185[1];
  v144 = v183[1];
  v145 = v183[2];

  sub_1C6FC061C(v185, v187);
  OUTLINED_FUNCTION_95_1();
  sub_1C72512CC(v146);
  v147 = OUTLINED_FUNCTION_19_43();
  v148 = sub_1C75511BC();
  sub_1C70552E0(v185);
  v181 = v144;
  OUTLINED_FUNCTION_95_1();
  sub_1C7250680(v149);
  if (os_log_type_enabled(v147, v148))
  {
    OUTLINED_FUNCTION_11_3();
    v150 = swift_slowAlloc();
    OUTLINED_FUNCTION_40_25();
    v187[0] = swift_slowAlloc();
    *v150 = 136315394;
    sub_1C75504FC();
    v151 = sub_1C6F765A4(v179, *(&v73 + 1), v187);
    v191 = v145;
    v152 = v151;

    *(v150 + 4) = v152;
    *(v150 + 12) = 2080;
    v153 = sub_1C70CAC04(v74);
    if (v154)
    {
      v155 = v154;
    }

    else
    {
      v153 = 1701736302;
      v155 = 0xE400000000000000;
    }

    v156 = sub_1C6F765A4(v153, v155, v187);
    v145 = v191;

    *(v150 + 14) = v156;
    _os_log_impl(&dword_1C6F5C000, v147, v148, "Key asset from chapter '%s': '%s'", v150, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v135 = v180;
  v23 = v168;
  v104 = v74;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C70552E0(v185);
  v114 = v145;
  sub_1C7250680(v74);

  LODWORD(v181) = 1;
  v61 = v182;
LABEL_73:
  sub_1C754F2EC();
  if (v135)
  {
    sub_1C6FB5FC8(v188, &qword_1EC217EF8);

    sub_1C6FE0E78(v169, v35, v181);
    __swift_destroy_boxed_opaque_existential_1(v189);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v189);
    sub_1C6FB5FC8(v188, &qword_1EC217EF8);

    v157 = v172;
    *v172 = v104;
    v157[1] = v114;
    v157[2] = v169;
    v157[3] = v35;
    *(v157 + 32) = v181;
  }

  OUTLINED_FUNCTION_70(v167, v167[3]);
  OUTLINED_FUNCTION_505();
  sub_1C754F1AC();
  return (*(v174 + 8))(v23, v61);
}

uint64_t FreeformStoryKeyAssetElector.Context.__allocating_init(from:storySession:)(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_31();
  v4 = swift_allocObject();
  FreeformStoryKeyAssetElector.Context.init(from:storySession:)(a1, a2);
  return v4;
}

uint64_t FreeformStoryKeyAssetElector.Context.init(from:storySession:)(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x130uLL);
  *(v2 + 56) = 0;
  *(v2 + 64) = MEMORY[0x1E69E7CC8];
  v4 = type metadata accessor for StoryGenerationSession(0);
  v5 = *(a2 + *(v4 + 20));
  *(v2 + 16) = v5;
  v47 = a2;
  v46 = v2;
  *(v2 + 24) = *(a2 + *(v4 + 24));
  v6 = __dst[27];
  v7 = __dst[28];
  v49 = __dst[35];
  v8 = *(__dst[27] + 16);
  v9 = v5;

  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  result = sub_1C75504FC();
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v13 = 72 * v11 + 32;
  while (v8 != v11)
  {
    if (v11 >= *(v6 + 16))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    result = memcpy(__srca, (v6 + v13), 0x41uLL);
    if ((__srca[3] & 1) == 0 && !__srca[2])
    {
      sub_1C7025F3C(__srca, v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_21_40();
        sub_1C716D97C();
        v12 = v52;
      }

      v16 = v12[2];
      v15 = v12[3];
      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_20_42(v15);
        sub_1C716D97C();
        v12 = v52;
      }

      ++v11;
      v12[2] = v16 + 1;
      result = memcpy(&v12[9 * v16 + 4], __srca, 0x41uLL);
      goto LABEL_2;
    }

    v13 += 72;
    ++v11;
  }

  v17 = v12[2];
  v48 = v7;
  if (v17)
  {
    OUTLINED_FUNCTION_35_17();
    v18 = __srca[0];
    v19 = v12 + 9;
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      __srca[0] = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      sub_1C75504FC();
      if (v23 >= v22 >> 1)
      {
        sub_1C6F7ED9C();
        v18 = __srca[0];
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += 9;
      --v17;
    }

    while (v17);

    v7 = v48;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  v25 = 0;
  v26 = *(v7 + 16);
  v27 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v28 = 72 * v25 + 32;
  while (v26 != v25)
  {
    if (v25 >= *(v7 + 16))
    {
      goto LABEL_41;
    }

    result = memcpy(__srca, (v7 + v28), 0x42uLL);
    if ((__srca[3] & 1) == 0 && !__srca[2])
    {
      sub_1C7025FF8(__srca, v50);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v52 = v27;
      if ((v29 & 1) == 0)
      {
        OUTLINED_FUNCTION_21_40();
        sub_1C716D940();
        v27 = v52;
      }

      v31 = v27[2];
      v30 = v27[3];
      if (v31 >= v30 >> 1)
      {
        OUTLINED_FUNCTION_20_42(v30);
        sub_1C716D940();
        v27 = v52;
      }

      ++v25;
      v27[2] = v31 + 1;
      result = memcpy(&v27[9 * v31 + 4], __srca, 0x42uLL);
      goto LABEL_21;
    }

    v28 += 72;
    ++v25;
  }

  v32 = v27[2];
  if (v32)
  {
    OUTLINED_FUNCTION_35_17();
    v33 = __srca[0];
    v34 = v27 + 9;
    do
    {
      v36 = *(v34 - 1);
      v35 = *v34;
      __srca[0] = v33;
      v38 = *(v33 + 16);
      v37 = *(v33 + 24);
      sub_1C75504FC();
      if (v38 >= v37 >> 1)
      {
        sub_1C6F7ED9C();
        v33 = __srca[0];
      }

      *(v33 + 16) = v38 + 1;
      v39 = v33 + 16 * v38;
      *(v39 + 32) = v36;
      *(v39 + 40) = v35;
      v34 += 9;
      --v32;
    }

    while (v32);

    v40 = v46;
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
    v40 = v46;
  }

  __srca[0] = v18;
  sub_1C6FD2568(v33);
  v41 = sub_1C706D154(__srca[0]);
  sub_1C724E958(v47);
  v42 = __dst[13];
  v43 = __dst[14];
  v44 = BYTE1(__dst[14]);
  *(v40 + 32) = v41;
  *(v40 + 40) = v42;
  *(v40 + 48) = v43;
  *(v40 + 49) = v44;
  sub_1C75504FC();
  sub_1C6FE0DC0(__dst);
  v45 = *(v49 + 16);

  *(v40 + 50) = v45 != 0;
  return v40;
}

uint64_t FreeformStoryKeyAssetElector.Context.__allocating_init(curationContext:diagnosticContext:queryCharacterUUIDs:sensitiveFlags:isTrip:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  OUTLINED_FUNCTION_26_31();
  v10 = swift_allocObject();
  FreeformStoryKeyAssetElector.Context.init(curationContext:diagnosticContext:queryCharacterUUIDs:sensitiveFlags:isTrip:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t FreeformStoryKeyAssetElector.Context.init(curationContext:diagnosticContext:queryCharacterUUIDs:sensitiveFlags:isTrip:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  v8 = *(a4 + 9);
  *(v5 + 56) = 0;
  *(v5 + 64) = MEMORY[0x1E69E7CC8];
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = v6;
  *(v5 + 48) = v7;
  *(v5 + 49) = v8;
  *(v5 + 50) = a5;
  return v5;
}

uint64_t sub_1C7248430(void *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((v3 + 56));
  sub_1C7248498(a1, (v3 + 64), a2, a3, &v8);
  os_unfair_lock_unlock((v3 + 56));
  return v8;
}

void *sub_1C7248498@<X0>(id a1@<X1>, uint64_t *a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = &selRef_mergedPersonIdentifiers;
  result = sub_1C6FE1434([a1 version], *a2);
  if (result)
  {
    v11 = result;
LABEL_29:
    *a5 = v11;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C755BAB0;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  sub_1C75504FC();
  v13 = sub_1C7550B3C();

  v14 = [a1 confidenceThresholdBySceneIdentifierForSceneNames:v13 withThresholdType:1];

  sub_1C6F65BE8(0, &qword_1EDD108E0);
  sub_1C7080178(&qword_1EDD0CD00, &qword_1EDD108E0);
  v15 = sub_1C75504AC();

  v45 = a5;
  v44 = a2;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = sub_1C7551A7C() | 0x8000000000000000;
  }

  else
  {
    v20 = -1 << *(v15 + 32);
    v17 = ~v20;
    v16 = v15 + 64;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v18 = v22 & *(v15 + 64);
    v19 = v15;
  }

  sub_1C75504FC();
  v23 = 0;
  v24 = (v17 + 64) >> 6;
  v11 = MEMORY[0x1E69E7CC8];
  v47 = v19;
  v48 = v16;
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v25 = v23;
  v26 = v18;
  v27 = v23;
  if (v18)
  {
LABEL_14:
    v49 = (v26 - 1) & v26;
    v28 = (v27 << 9) | (8 * __clz(__rbit64(v26)));
    v29 = *(*(v19 + 56) + v28);
    v30 = *(*(v19 + 48) + v28);
    v31 = v29;
    if (!v30)
    {
LABEL_28:
      sub_1C6F61E88();

      [a1 v9[439]];
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v51 = *v44;
      result = sub_1C6FC93A0();
      *v44 = v51;
      a5 = v45;
      goto LABEL_29;
    }

    while (1)
    {
      v32 = [v30 unsignedIntegerValue];
      [v31 doubleValue];
      v34 = v33;
      swift_isUniquelyReferenced_nonNull_native();
      v50 = v11;
      v35 = sub_1C6FCABD0(v32);
      if (__OFADD__(v11[2], (v36 & 1) == 0))
      {
        break;
      }

      v37 = v35;
      v38 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B80);
      if (sub_1C7551A2C())
      {
        v39 = sub_1C6FCABD0(v32);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_33;
        }

        v37 = v39;
      }

      if (v38)
      {
        *(v11[7] + 8 * v37) = v34;
      }

      else
      {
        v11[(v37 >> 6) + 8] |= 1 << v37;
        *(v11[6] + 8 * v37) = v32;
        *(v11[7] + 8 * v37) = v34;

        v41 = v11[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_32;
        }

        v11[2] = v43;
      }

      v23 = v27;
      v16 = v48;
      v18 = v49;
      v9 = &selRef_mergedPersonIdentifiers;
      v24 = (v17 + 64) >> 6;
      v19 = v47;
      if ((v47 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_16:
      if (sub_1C7551A9C())
      {
        swift_dynamicCast();
        v30 = v50;
        swift_dynamicCast();
        v31 = v50;
        v27 = v23;
        v49 = v18;
        if (v50)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  else
  {
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        goto LABEL_28;
      }

      v26 = *(v16 + 8 * v27);
      ++v25;
      if (v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t FreeformStoryKeyAssetElector.Context.deinit()
{

  sub_1C6FB5FC8(v0 + 64, &qword_1EC219AA8);
  return v0;
}

uint64_t FreeformStoryKeyAssetElector.Context.__deallocating_deinit()
{
  FreeformStoryKeyAssetElector.Context.deinit();
  OUTLINED_FUNCTION_26_31();

  return swift_deallocClassInstance();
}

unint64_t FreeformStoryKeyAssetElector.AssessedResult.Assessment.description.getter()
{
  result = 0x74636566726550;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x706F724320776F4CLL;
      break;
    case 5:
      result = 0x736552207473614CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7248A88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74636566726570 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001C75A6520 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F73726550776F6CLL && a2 == 0xEE0065726F63536ELL;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x696E6F6349776F6CLL && a2 == 0xEE0065726F635363;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x53706F7243776F6CLL && a2 == 0xEC00000065726F63;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6F7365527473616CLL && a2 == 0xEA00000000007472)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C7551DBC();

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

unint64_t sub_1C7248C94(char a1)
{
  result = 0x74636566726570;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x6F73726550776F6CLL;
      break;
    case 3:
      result = 0x696E6F6349776F6CLL;
      break;
    case 4:
      result = 0x53706F7243776F6CLL;
      break;
    case 5:
      result = 0x6F7365527473616CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7248D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7248A88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7248DA4(uint64_t a1)
{
  v2 = sub_1C724E9B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7248DE0(uint64_t a1)
{
  v2 = sub_1C724E9B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7248E1C(uint64_t a1)
{
  v2 = sub_1C724EA08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7248E58(uint64_t a1)
{
  v2 = sub_1C724EA08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7248E94(uint64_t a1)
{
  v2 = sub_1C724EA5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7248ED0(uint64_t a1)
{
  v2 = sub_1C724EA5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7248F0C(uint64_t a1)
{
  v2 = sub_1C724EAB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7248F48(uint64_t a1)
{
  v2 = sub_1C724EAB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7248F84(uint64_t a1)
{
  v2 = sub_1C724EB04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7248FC0(uint64_t a1)
{
  v2 = sub_1C724EB04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7248FFC(uint64_t a1)
{
  v2 = sub_1C724EB58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7249038(uint64_t a1)
{
  v2 = sub_1C724EB58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7249074(uint64_t a1)
{
  v2 = sub_1C724EBAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72490B0(uint64_t a1)
{
  v2 = sub_1C724EBAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStoryKeyAssetElector.AssessedResult.Assessment.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219AB0);
  OUTLINED_FUNCTION_3_0();
  v51 = v4;
  v52 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_36();
  v50 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219AB8);
  OUTLINED_FUNCTION_3_0();
  v48 = v8;
  v49 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_36();
  v47 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219AC0);
  OUTLINED_FUNCTION_3_0();
  v45 = v12;
  v46 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_36();
  v44 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219AC8);
  OUTLINED_FUNCTION_3_0();
  v42 = v16;
  v43 = v15;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_36();
  v41 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219AD0);
  OUTLINED_FUNCTION_3_0();
  v39 = v20;
  v40 = v19;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219AD8);
  OUTLINED_FUNCTION_3_0();
  v37 = v25;
  v38 = v24;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v37 - v27;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219AE0);
  OUTLINED_FUNCTION_3_0();
  v30 = v29;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v37 - v32;
  v34 = *v0;
  OUTLINED_FUNCTION_70(v2, v2[3]);
  sub_1C724E9B4();
  sub_1C755200C();
  switch(v34)
  {
    case 1:
      sub_1C724EB58();
      v34 = v53;
      sub_1C7551C6C();
      (*(v39 + 8))(v23, v40);
      goto LABEL_9;
    case 2:
      sub_1C724EB04();
      v28 = v41;
      OUTLINED_FUNCTION_9_0();
      v36 = v42;
      v35 = v43;
      goto LABEL_8;
    case 3:
      sub_1C724EAB0();
      v28 = v44;
      OUTLINED_FUNCTION_9_0();
      v36 = v45;
      v35 = v46;
      goto LABEL_8;
    case 4:
      sub_1C724EA5C();
      v28 = v47;
      OUTLINED_FUNCTION_9_0();
      v36 = v48;
      v35 = v49;
      goto LABEL_8;
    case 5:
      sub_1C724EA08();
      v28 = v50;
      OUTLINED_FUNCTION_9_0();
      v36 = v51;
      v35 = v52;
      goto LABEL_8;
    default:
      sub_1C724EBAC();
      OUTLINED_FUNCTION_9_0();
      v36 = v37;
      v35 = v38;
LABEL_8:
      (*(v36 + 8))(v28, v35);
LABEL_9:
      (*(v30 + 8))(v33, v34);
      OUTLINED_FUNCTION_125();
      return;
  }
}

uint64_t FreeformStoryKeyAssetElector.AssessedResult.Assessment.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void FreeformStoryKeyAssetElector.AssessedResult.Assessment.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v84 = v0;
  v2 = v1;
  v80 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B08);
  OUTLINED_FUNCTION_3_0();
  v76 = v4;
  v77 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_36();
  v78 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B10);
  OUTLINED_FUNCTION_3_0();
  v74 = v8;
  v75 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_36();
  v83 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B18);
  OUTLINED_FUNCTION_3_0();
  v72 = v13;
  v73 = v12;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_36();
  v79 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B20);
  OUTLINED_FUNCTION_3_0();
  v70 = v17;
  v71 = v16;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_36();
  v82 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B28);
  OUTLINED_FUNCTION_3_0();
  v68 = v21;
  v69 = v20;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v62 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B30);
  OUTLINED_FUNCTION_3_0();
  v67 = v26;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v62 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B38);
  OUTLINED_FUNCTION_3_0();
  v81 = v31;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v62 - v33;
  OUTLINED_FUNCTION_70(v2, v2[3]);
  sub_1C724E9B4();
  v35 = v84;
  sub_1C7551FFC();
  v84 = v35;
  if (v35)
  {
LABEL_12:
    v58 = v2;
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v58);
    OUTLINED_FUNCTION_125();
    return;
  }

  v63 = v29;
  v62 = v25;
  v64 = v24;
  v65 = v2;
  v36 = v82;
  v37 = v83;
  v38 = v81;
  v66 = v34;
  v39 = sub_1C7551C5C();
  sub_1C6FD80E0(v39, 0);
  v43 = v30;
  if (v41 == v42 >> 1)
  {
    v44 = v38;
LABEL_10:
    v53 = sub_1C75518EC();
    v54 = swift_allocError();
    v56 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v56 = &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment;
    v57 = v66;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v53 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v53);
    v84 = v54;
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v57, v43);
LABEL_11:
    v2 = v65;
    goto LABEL_12;
  }

  if (v41 < (v42 >> 1))
  {
    v45 = *(v40 + v41);
    sub_1C6FD80C8(v41 + 1);
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    if (v47 == v49 >> 1)
    {
      v50 = v80;
      v51 = v66;
      switch(v45)
      {
        case 1:
          sub_1C724EB58();
          v36 = v64;
          OUTLINED_FUNCTION_16_28();
          v84 = 0;
          swift_unknownObjectRelease();
          v61 = v68;
          v60 = v69;
          goto LABEL_25;
        case 2:
          sub_1C724EB04();
          OUTLINED_FUNCTION_16_28();
          v84 = 0;
          swift_unknownObjectRelease();
          v61 = v70;
          v60 = v71;
          goto LABEL_25;
        case 3:
          sub_1C724EAB0();
          v36 = v79;
          OUTLINED_FUNCTION_16_28();
          v84 = 0;
          swift_unknownObjectRelease();
          v61 = v72;
          v60 = v73;
          goto LABEL_25;
        case 4:
          sub_1C724EA5C();
          v59 = v84;
          sub_1C7551B4C();
          v84 = v59;
          if (v59)
          {
            (*(v38 + 8))(v51, v30);
            swift_unknownObjectRelease();
            goto LABEL_11;
          }

          swift_unknownObjectRelease();
          (*(v75 + 8))(v37, v74);
LABEL_26:
          (*(v38 + 8))(v51, v30);
          *v50 = v45;
          v58 = v65;
          break;
        case 5:
          sub_1C724EA08();
          v36 = v78;
          OUTLINED_FUNCTION_16_28();
          v84 = 0;
          swift_unknownObjectRelease();
          v60 = v76;
          v61 = v77;
LABEL_25:
          (*(v61 + 8))(v36, v60);
          goto LABEL_26;
        default:
          sub_1C724EBAC();
          v52 = v63;
          OUTLINED_FUNCTION_16_28();
          v84 = 0;
          swift_unknownObjectRelease();
          (*(v67 + 8))(v52, v62);
          goto LABEL_26;
      }

      goto LABEL_13;
    }

    v44 = v38;
    v43 = v30;
    goto LABEL_10;
  }

  __break(1u);
}

double FreeformStoryKeyAssetElector.Diagnostics.init(chapterTitle:similarityScoreRange:assetUUIDs:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 56) = 6;
  result = 0.0;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1C7249DE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5472657470616863 && a2 == 0xEC000000656C7469;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001C75A6540 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4955557465737361 && a2 == 0xEA00000000007344;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746573734179656BLL && a2 == 0xEC00000044495555;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C75A6560 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001C75A6580 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000001C75A3400 == a2;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001C75A65A0 == a2;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x80000001C75A65C0 == a2;
                  if (v13 || (sub_1C7551DBC() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD00000000000001ELL && 0x80000001C75A65E0 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1C7551DBC();

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

unint64_t sub_1C724A0FC(char a1)
{
  result = 0x5472657470616863;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x4955557465737361;
      break;
    case 3:
      result = 0x746573734179656BLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C724A264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7249DE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C724A28C(uint64_t a1)
{
  v2 = sub_1C7250448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C724A2C8(uint64_t a1)
{
  v2 = sub_1C7250448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStoryKeyAssetElector.Diagnostics.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v26 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B40);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7;
  v9 = *(v0 + 16);
  v24 = *(v0 + 24);
  v25 = v9;
  v10 = *(v0 + 32);
  v22 = *(v0 + 40);
  v23 = v10;
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  v11 = *(v0 + 64);
  v19[2] = *(v0 + 72);
  v19[3] = v11;
  v12 = *(v0 + 80);
  v19[0] = *(v0 + 88);
  v19[1] = v12;
  v13 = *(v0 + 96);
  v14 = v3[3];
  v15 = v3;
  v17 = v16;
  OUTLINED_FUNCTION_70(v15, v14);
  sub_1C7250448();
  sub_1C755200C();
  v18 = v26;
  sub_1C7551CCC();
  if (!v18)
  {
    v26 = v13;
    sub_1C7551CCC();
    v27 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C6FC18BC();
    OUTLINED_FUNCTION_5_49();
    OUTLINED_FUNCTION_25_27();
    sub_1C7551D2C();
    sub_1C7551C7C();
    v27 = 4;
    sub_1C725049C();
    OUTLINED_FUNCTION_5_49();
    sub_1C7551CBC();
    v27 = 5;
    OUTLINED_FUNCTION_5_49();
    OUTLINED_FUNCTION_25_27();
    sub_1C7551CBC();
    v27 = 6;
    OUTLINED_FUNCTION_5_49();
    OUTLINED_FUNCTION_25_27();
    sub_1C7551CBC();
    v27 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B48);
    sub_1C72504F0();
    OUTLINED_FUNCTION_5_49();
    sub_1C7551CBC();
    v27 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
    sub_1C6FB5CAC();
    OUTLINED_FUNCTION_5_49();
    sub_1C7551CBC();
    v27 = 9;
    OUTLINED_FUNCTION_5_49();
    sub_1C7551CBC();
  }

  (*(v5 + 8))(v8, v17);
  OUTLINED_FUNCTION_125();
}

__n128 FreeformStoryKeyAssetElector.Result.init(keyAsset:alternateKeyAssets:keyAssetSource:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u8[0];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1C724A698()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD28A20);
  __swift_project_value_buffer(v0, qword_1EDD28A20);
  return sub_1C754FEFC();
}

uint64_t FreeformStoryKeyAssetElector.init(configuration:storyPhotoLibraryContext:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v15 = *(a1 + 3);
  v16 = *(a1 + 1);
  v4 = a1[5];
  v5 = a1[6];
  v6 = *a2;
  v7 = *(a2 + 4);
  v8 = a2[2];
  v9 = OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_logger;
  if (qword_1EDD08988 != -1)
  {
    OUTLINED_FUNCTION_9_56();
  }

  v10 = sub_1C754FF1C();
  v11 = __swift_project_value_buffer(v10, qword_1EDD28A20);
  (*(*(v10 - 8) + 16))(v2 + v9, v11, v10);
  v12 = v2 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_configuration;
  *v12 = v3;
  *(v12 + 24) = v15;
  *(v12 + 8) = v16;
  *(v12 + 40) = v4;
  *(v12 + 48) = v5;
  v13 = v2 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_storyPhotoLibraryContext;
  *v13 = v6;
  *(v13 + 8) = v7;
  *(v13 + 16) = v8;
  return v2;
}

unint64_t sub_1C724A82C(void *a1, void *a2)
{
  v4 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  v11 = a1[21];
  v71 = a1[24];
  v12 = a1[26];
  v13 = a2[3];
  v75 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v74 = v10;
  sub_1C754F1CC();
  if (qword_1EDD0E038 != -1)
  {
    swift_once();
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v15 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
  MEMORY[0x1EEE9AC00](v15);
  *(&v68 - 2) = v16;
  sub_1C75504FC();
  v17 = 0;
  v18 = sub_1C706CC1C(sub_1C7055510, (&v68 - 4), v12);
  v19 = *(v18 + 2);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v72 = v6;
    v73 = v11;
    v70 = v4;
    v78[0] = MEMORY[0x1E69E7CC0];
    sub_1C716D5B0(0, v19, 0);
    v21 = v78[0];
    v17 = v18;
    v22 = (v18 + 136);
    v23 = v19;
    do
    {
      v25 = *v22;
      v22 += 15;
      v24 = v25;
      if (v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = v20;
      }

      v78[0] = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      sub_1C75504FC();
      if (v28 >= v27 >> 1)
      {
        sub_1C716D5B0((v27 > 1), v28 + 1, 1);
        v21 = v78[0];
      }

      *(v21 + 16) = v28 + 1;
      *(v21 + 8 * v28 + 32) = v26;
      --v23;
    }

    while (v23);
    v4 = v70;
    v6 = v72;
    v11 = v73;
    v18 = v17;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v29 = sub_1C7027A88(v21);

  if (!v29)
  {
    v41 = *(v11 + 16);

    if (v41)
    {
      swift_bridgeObjectRetain_n();
      v42 = OUTLINED_FUNCTION_45_21();
      v43 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_7_0(v43))
      {
        goto LABEL_38;
      }
    }

    else
    {
      v11 = v71;
      swift_bridgeObjectRetain_n();
      v42 = OUTLINED_FUNCTION_45_21();
      v49 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_7_0(v49))
      {
LABEL_38:
        OUTLINED_FUNCTION_13_3();
        v50 = swift_slowAlloc();
        OUTLINED_FUNCTION_43_22(v50, 3.852e-34);
        OUTLINED_FUNCTION_17();
        _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        goto LABEL_45;
      }
    }

    goto LABEL_45;
  }

  v72 = v18;
  v30 = sub_1C754FEEC();
  v31 = sub_1C75511BC();
  v32 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v32, v33))
  {
    OUTLINED_FUNCTION_96_0();
    v34 = swift_slowAlloc();
    v17 = v11;
    *v34 = 0;
    _os_log_impl(&dword_1C6F5C000, v30, v31, "Explicit location(s) from the prompt, restricting eligible assets to these locations", v34, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  if (*(v11 + 16))
  {
    sub_1C75504FC();
    sub_1C7069A44();
    v11 = v35;

    sub_1C75504FC();
    v36 = OUTLINED_FUNCTION_45_21();
    v37 = sub_1C75511BC();

    if (os_log_type_enabled(v36, v37))
    {
      LODWORD(v76) = v37;
      OUTLINED_FUNCTION_11_3();
      v38 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v70 = swift_slowAlloc();
      v78[0] = v70;
      OUTLINED_FUNCTION_44_20(3.8521e-34);
      v71 = v38;
      *(v38 + 12) = 2080;
      if (v19)
      {
        OUTLINED_FUNCTION_17_47();
        v39 = v77;
        do
        {
          OUTLINED_FUNCTION_32_23();
          if (v11 >= v30 >> 1)
          {
            OUTLINED_FUNCTION_33_23();
            v39 = v77;
          }

          OUTLINED_FUNCTION_28_24();
        }

        while (!v40);

        v6 = v17;
        v11 = v73;
        v36 = v69;
      }

      else
      {

        v39 = MEMORY[0x1E69E7CC0];
      }

      v77 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C703328C();
      v56 = OUTLINED_FUNCTION_37_23();
      v58 = v57;

      v59 = sub_1C6F765A4(v56, v58, v78);

      v60 = v71;
      *(v71 + 14) = v59;
      v61 = "Trying to find a key asset in %ld retrieved assets restricted to %s";
LABEL_44:
      _os_log_impl(&dword_1C6F5C000, v36, v76, v61, v60, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v70);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      goto LABEL_45;
    }
  }

  else
  {
    v44 = v71;
    sub_1C75504FC();
    sub_1C7069A44();
    v11 = v45;

    sub_1C75504FC();

    v36 = OUTLINED_FUNCTION_45_21();
    v46 = sub_1C75511BC();

    if (os_log_type_enabled(v36, v46))
    {
      LODWORD(v76) = v46;
      OUTLINED_FUNCTION_11_3();
      v47 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v70 = swift_slowAlloc();
      v78[0] = v70;
      OUTLINED_FUNCTION_44_20(3.8521e-34);
      v71 = v47;
      *(v47 + 12) = 2080;
      if (v19)
      {
        OUTLINED_FUNCTION_17_47();
        v48 = v77;
        do
        {
          OUTLINED_FUNCTION_32_23();
          if (v11 >= v44 >> 1)
          {
            OUTLINED_FUNCTION_33_23();
            v48 = v77;
          }

          OUTLINED_FUNCTION_28_24();
        }

        while (!v40);

        v6 = v17;
        v11 = v73;
        v36 = v69;
      }

      else
      {

        v48 = MEMORY[0x1E69E7CC0];
      }

      v77 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C703328C();
      v62 = OUTLINED_FUNCTION_37_23();
      v64 = v63;

      v65 = sub_1C6F765A4(v62, v64, v78);

      v60 = v71;
      *(v71 + 14) = v65;
      v61 = "No retrieved assets, trying to find a key asset in %ld storytelling assets restricted to %s";
      goto LABEL_44;
    }
  }

LABEL_45:
  __swift_project_boxed_opaque_existential_1(v75, v75[3]);
  v66 = v74;
  sub_1C754F1AC();
  (*(v6 + 1))(v66, v4);
  return v11;
}

void sub_1C724AF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v49 = v27;
  v48 = v28;
  v30 = v29;
  v52 = v31;
  v32 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_14_0();
  v38 = v37 - v36;
  v47 = *(v30 + 2);
  v46 = *(v30 + 3);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  if (v20)
  {
    OUTLINED_FUNCTION_70(v26, v26[3]);
    OUTLINED_FUNCTION_16_38();
    sub_1C754F1AC();
    (*(v34 + 8))(v38, v32);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v39 + 8))(v24);
  }

  else
  {
    v45 = v34;
    v40 = *(v49 + 24);
    v41 = MEMORY[0x1E69E7CC0];
    if (!v40)
    {
      v41 = 0;
    }

    a10 = v41;
    v53 = *v30;
    v54 = v47;
    v55 = v46;
    memcpy(v56, v30 + 2, sizeof(v56));
    sub_1C724B37C(&v53, v48, v49, &a10, &v57);
    v42 = v57;
    v50 = v58;
    v51 = v59;
    *&v53 = v47;
    *(&v53 + 1) = v46;
    v57 = 32;
    v58 = 0xE100000000000000;
    sub_1C6FB5E8C();
    v43 = sub_1C755155C();
    if (v40)
    {
      *&v53 = 0x746573734179654BLL;
      *(&v53 + 1) = 0xE90000000000002DLL;
      MEMORY[0x1CCA5CD70](v43, v44);

      MEMORY[0x1CCA5CD70](1819113518, 0xE400000000000000);
      sub_1C7161E8C(v53, *(&v53 + 1), v40, &a10);
    }

    sub_1C754F2EC();
    *v52 = v42;
    v52[1] = v50;
    v52[2] = v51;

    OUTLINED_FUNCTION_70(v26, v26[3]);
    OUTLINED_FUNCTION_16_38();
    sub_1C754F1AC();
    (*(v45 + 8))(v38, v32);
  }

  OUTLINED_FUNCTION_125();
}

void FreeformStoryKeyAssetElector.keyAsset(from:context:isLastResortCase:diagnostics:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *v4;
  v8 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_362();
  sub_1C724BE20(v9, v10, v11, a4, a3, v7, v12);

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_1C724B37C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v10 = 0;
  v11 = 0;
  v63 = a1[3];
  v64 = a1[2];
  v12 = a1[5];
  v61 = *(*(a3 + 32) + 16);
  v68 = v12;
  v69 = *(v12 + 16);
  v13 = (v12 + 64);
  v14 = MEMORY[0x1E69E7CC8];
  while (v69 != v10)
  {
    if (v10 >= *(v68 + 16))
    {
      __break(1u);
LABEL_31:
      v40 = 0xEE0065726F635320;
      v41 = 0x706F724320776F4CLL;
      goto LABEL_36;
    }

    ++v10;
    v5 = *(v13 - 1);
    v7 = *v13;
    v6 = v14;
    v15 = *(v13 - 2);
    sub_1C75504FC();
    sub_1C75504FC();
    v16 = v15;
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    v17 = sub_1C724FD38(v5, a2);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __dst[0] = v6;
    sub_1C72501A4(v17, sub_1C725130C, 0, isUniquelyReferenced_nonNull_native, __dst);

    v14 = __dst[0];
    v13 += 5;
  }

  if (v14[2].isa < *(v67 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_configuration))
  {

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return result;
  }

  v20 = &unk_1F469E2C8;
  if (v61)
  {
    v20 = &unk_1F469E288;
  }

  v21 = *v20;
  if (!v21)
  {
    goto LABEL_21;
  }

  if (v61)
  {
    v22 = &unk_1F469E298;
  }

  else
  {
    v22 = &unk_1F469E2D8;
  }

  v23 = v21 & ~(v21 >> 63);
  v24 = v21 - 1;
  v25 = 100000.0;
  if (!v23)
  {
LABEL_20:
    __break(1u);
LABEL_21:

LABEL_22:

LABEL_23:
    v7 = 0;
    v31 = 0;
    v5 = 0;
LABEL_24:
    *a5 = v7;
    a5[1] = v31;
    a5[2] = v5;
    return result;
  }

  while (1)
  {
    v8 = *v22;
    if (*v22 > v25)
    {
      __break(1u);
      goto LABEL_57;
    }

    sub_1C724BAA4(v71, __src, v14, v64, v63, a3, *v22, v25);
    v7 = v71[0];
    v70 = v71[1];
    v26 = v71[2];
    memcpy(__dst, __src, 0x68uLL);
    if (*a4)
    {
      sub_1C716A0C0(__dst, __src);
      sub_1C6FB089C();
      v27 = v14;
      v28 = *(*a4 + 16);
      sub_1C6FB1128();
      v29 = *a4;
      *(v29 + 16) = v28 + 1;
      v30 = v29 + 104 * v28;
      v14 = v27;
      memcpy((v30 + 32), __dst, 0x68uLL);
      *a4 = v29;
    }

    if (v7)
    {
      break;
    }

    sub_1C7250650(__dst);
    if (!v24)
    {
      goto LABEL_21;
    }

    --v23;
    --v24;
    ++v22;
    v25 = v8;
    if (!v23)
    {
      goto LABEL_20;
    }
  }

  v68 = v14;
  LOBYTE(v13) = v70;
  v5 = v26;
  sub_1C72512CC(v7);
  v6 = v7;
  sub_1C75504FC();
  v32 = sub_1C754FEEC();
  LOBYTE(v10) = sub_1C75511BC();
  v14 = v32;
  if (!os_log_type_enabled(v32, v10))
  {

    v42 = OUTLINED_FUNCTION_505();
    sub_1C7250680(v42);
    v43 = OUTLINED_FUNCTION_505();
    sub_1C7250680(v43);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_98();
  v11 = swift_slowAlloc();
  OUTLINED_FUNCTION_40_25();
  __src[0] = swift_slowAlloc();
  *v11 = 134218498;
  *(v11 + 4) = v8;
  *(v11 + 12) = 2080;
  v33 = sub_1C70CAC04(v6);
  if (!v34)
  {
    goto LABEL_58;
  }

  v35 = v33;
  v36 = v34;
  OUTLINED_FUNCTION_16_38();
  sub_1C7250680(v37);
  OUTLINED_FUNCTION_16_38();
  sub_1C7250680(v38);
  v39 = sub_1C6F765A4(v35, v36, __src);

  *(v11 + 14) = v39;
  *(v11 + 22) = 2080;
  v40 = 0xE700000000000000;
  v41 = 0x74636566726550;
  LOBYTE(v13) = v70;
  switch(v70)
  {
    case 1:
      v40 = 0x80000001C75A63E0;
      v41 = 0xD000000000000016;
      break;
    case 2:
      v41 = 0xD000000000000010;
      v44 = "Low Person Score";
      goto LABEL_34;
    case 3:
      v41 = 0xD000000000000010;
      v44 = "Low Iconic Score";
LABEL_34:
      v40 = (v44 - 32) | 0x8000000000000000;
      break;
    case 4:
      goto LABEL_31;
    case 5:
      v40 = 0xEB0000000074726FLL;
      v41 = 0x736552207473614CLL;
      break;
    default:
      break;
  }

LABEL_36:
  v45 = sub_1C6F765A4(v41, v40, __src);

  *(v11 + 24) = v45;
  _os_log_impl(&dword_1C6F5C000, v14, v10, "Found a matching key asset for threshold %f: %s with assessment %s", v11, 0x20u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_235();
  MEMORY[0x1CCA5F8E0]();
  OUTLINED_FUNCTION_235();
  MEMORY[0x1CCA5F8E0]();

LABEL_37:
  if (v13 - 1 >= 4)
  {
    if (!v13)
    {

      sub_1C7250650(__dst);

      v31 = 0;
      goto LABEL_24;
    }

    goto LABEL_44;
  }

  if (v8 <= 0.0)
  {
LABEL_44:

    sub_1C7250650(__dst);
    v53 = OUTLINED_FUNCTION_505();
    result = sub_1C7250680(v53);
    goto LABEL_23;
  }

  result = sub_1C70CAC04(v6);
  if (v46)
  {
    v47 = result;
    v48 = v46;

    sub_1C7250650(__dst);
    v49 = COERCE_DOUBLE(sub_1C6FE0FE8(v47, v48, v68));
    v51 = v50;

    if (v51)
    {
      v52 = OUTLINED_FUNCTION_505();
      sub_1C7250680(v52);
      goto LABEL_22;
    }

    if (v8 + -0.05 <= v49 + 0.0001)
    {
      sub_1C724BAA4(v72, v71, v68, v64, v63, a3, v8 + -0.05, v49 + 0.0001);

      v54 = v72[0];
      v55 = v72[1];
      v56 = v72[2];
      memcpy(__src, v71, sizeof(__src));
      if (*a4)
      {
        sub_1C6FB089C();
        v57 = *(*a4 + 16);
        sub_1C6FB1128();
        sub_1C7250680(v7);
        v58 = *a4;
        *(v58 + 16) = v57 + 1;
        result = memcpy((v58 + 104 * v57 + 32), __src, 0x68uLL);
        *a4 = v58;
      }

      else
      {
        sub_1C7250650(__src);
        result = sub_1C7250680(v7);
      }

      if (v54)
      {
        v31 = v55;
      }

      else
      {
        v31 = 0;
      }

      if (v54)
      {
        v5 = v56;
      }

      else
      {
        v5 = 0;
      }

      v7 = v54;
      goto LABEL_24;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    OUTLINED_FUNCTION_16_38();
    sub_1C7250680(v59);
    OUTLINED_FUNCTION_16_38();
    result = sub_1C7250680(v60);
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C724BAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v14 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 64);
  v18 = (v15 + 63) >> 6;
  sub_1C75504FC();
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  while (v17)
  {
LABEL_9:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v19 << 6);
    v24 = *(*(a3 + 56) + 8 * v23);
    if (v24 >= a7 && v24 < a8)
    {
      v25 = (*(a3 + 48) + 16 * v23);
      v37 = *v25;
      v38 = v25[1];
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v20 = v29;
      }

      v26 = *(v20 + 16);
      v27 = v26 + 1;
      if (v26 >= *(v20 + 24) >> 1)
      {
        v36 = v26 + 1;
        v30 = *(v20 + 16);
        sub_1C6FB1814();
        v27 = v36;
        v26 = v30;
        v20 = v31;
      }

      *(v20 + 16) = v27;
      v28 = v20 + 16 * v26;
      *(v28 + 32) = v37;
      *(v28 + 40) = v38;
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      v32 = sub_1C731938C();
      v34 = v33;
      *&v41 = v20;
      sub_1C75504FC();
      sub_1C70401E8();
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 56) = 6;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      *a2 = a4;
      *(a2 + 8) = a5;
      *(a2 + 16) = v32;
      *(a2 + 24) = v34;
      *(a2 + 32) = v20;
      sub_1C75504FC();
      FreeformStoryKeyAssetElector.keyAsset(from:context:isLastResortCase:diagnostics:)(v20, a6, 0, a2);

      *a1 = v41;
      *(a1 + 16) = v42;
      return result;
    }

    v17 = *(v14 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C724BCE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C757B6D0;
  *(v0 + 32) = sub_1C755068C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1C755068C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1C755068C();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1C755068C();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_1C755068C();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_1C755068C();
  *(v0 + 120) = v6;
  result = sub_1C755068C();
  *(v0 + 128) = result;
  *(v0 + 136) = v8;
  qword_1EDD08A48 = v0;
  return result;
}

uint64_t static FreeformStoryKeyAssetElector.fetchPropertySetsForKeyAsset.getter()
{
  if (qword_1EDD08A40 != -1)
  {
    swift_once();
  }

  return sub_1C75504FC();
}

void sub_1C724BE20(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v8 = v7;
  LODWORD(v141) = a5;
  v15 = sub_1C754DFFC();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v144 = a4;
    v143 = a7;
    v142 = a2;
    v18 = *&a2[OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_storyPhotoLibraryContext + 8];
    v19 = *&a2[OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_storyPhotoLibraryContext + 16];
    v20 = *&a2[OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_storyPhotoLibraryContext];

    v21 = [v20 librarySpecificFetchOptions];
    [v21 setSharingFilter_];
    v140 = v19;

    if (qword_1EDD08A40 != -1)
    {
      goto LABEL_97;
    }

LABEL_3:
    v22 = sub_1C7550B3C();
    [v21 setFetchPropertySets_];

    v23 = objc_opt_self();
    v24 = v21;
    v25 = sub_1C6FCA158(a1, v21, v23);

    if (v25)
    {
      v136 = v24;
      v26 = *(a3 + 16);
      v139 = v25;
      v27 = [v23 clsAllAssetsFromFetchResult:v25 prefetchOptions:31 curationContext:v26];
      sub_1C6F65BE8(0, &qword_1EDD0FA70);
      v28 = sub_1C7550B5C();

      v152 = MEMORY[0x1E69E7CC8];
      v29 = sub_1C724CD28(v28, a3, &v152);

      v30 = sub_1C75504FC();
      v138 = v29;
      v31 = sub_1C72464D4(v30, &v152);
      sub_1C754DFEC();
      v150 = &type metadata for Random.Arc4Random;
      v151 = sub_1C7054F1C();
      Random.Arc4Random.init(seed:)(v17, v149);
      v32 = FreeformStoryKeyAssetElector.stochatizedAssets(from:in:randomizer:)(v31, a3, v149);

      v133 = *(a3 + 32);
      v135 = *(v133 + 16);
      v33 = v135 != 0;
      v17 = *(a3 + 50);
      __dst[0] = v32;
      sub_1C75504FC();
      v134 = v17;
      sub_1C724E8CC(__dst, v33, v17, a6);
      v137 = v8;
      if (v8)
      {

        __break(1u);
      }

      else
      {

        v34 = 0;
        a6 = __dst[0];
        v148 = MEMORY[0x1E69E7CD0];
        a3 = *(__dst[0] + 16);
        v21 = (__dst[0] + 48);
        a1 = MEMORY[0x1E69E7CC0];
        while (a3 != v34)
        {
          if (v34 >= *(a6 + 16))
          {
            __break(1u);
LABEL_97:
            swift_once();
            goto LABEL_3;
          }

          v35 = *(v21 - 1);
          v8 = *v21;
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            a1 = v37;
          }

          v17 = *(a1 + 16);
          v23 = (v17 + 1);
          if (v17 >= *(a1 + 24) >> 1)
          {
            sub_1C6FB1814();
            a1 = v38;
          }

          *(a1 + 16) = v23;
          v36 = a1 + 16 * v17;
          *(v36 + 32) = v35;
          *(v36 + 40) = v8;
          v21 += 10;
          ++v34;
        }

        sub_1C706D154(a1);
        StoryGenerationCache.momentUUIDByAssetUUID(for:)();
        v40 = v39;

        sub_1C75504FC();

        v42 = v137;
        v43 = sub_1C7246808(v41, v40, &v148, &v152);
        v44 = v144;
        *(v144 + 80) = a6;

        *(v44 + 88) = v40;
        sub_1C75504FC();

        v45 = v152;
        *(v44 + 96) = v152;
        sub_1C75504FC();

        if (*(v43 + 16))
        {

          if (*(v43 + 16))
          {
            memcpy(__dst, (v43 + 32), sizeof(__dst));
            v140 = v42;
            if (v135 && (LOBYTE(__dst[7]) != 1 || *&__dst[5] <= (*(v133 + 16) - 1)))
            {
              LODWORD(v23) = 2;
            }

            else
            {
              v46 = v134;
              if (__dst[6] >= 1)
              {
                v46 = 0;
              }

              if (v46)
              {
                LODWORD(v23) = 3;
              }

              else
              {
                LODWORD(v23) = *(a6 + 16) < *&v142[OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_configuration];
              }
            }

            v142 = v45;
            sub_1C7251350(__dst, v146);
            sub_1C70CE540(1, v43);
            v58 = v57;
            v60 = v59;
            if ((v59 & 1) == 0)
            {
LABEL_31:
              sub_1C739CD40();
              v62 = v61;
              goto LABEL_38;
            }

            sub_1C7551DEC();
            swift_unknownObjectRetain_n();
            v63 = swift_dynamicCastClass();
            if (!v63)
            {
              swift_unknownObjectRelease();
              v63 = MEMORY[0x1E69E7CC0];
            }

            v64 = *(v63 + 16);

            if (!__OFSUB__(v60 >> 1, v58))
            {
              if (v64 == (v60 >> 1) - v58)
              {
                v62 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (!v62)
                {
                  v62 = MEMORY[0x1E69E7CC0];
LABEL_38:
                  swift_unknownObjectRelease();
                }

                v65 = __dst[2];
                *(v44 + 40) = __dst[1];
                *(v44 + 48) = v65;
                sub_1C75504FC();

                *(v44 + 56) = v23;
                v66 = *(v62 + 16);
                v67 = MEMORY[0x1E69E7CC0];
                LODWORD(v141) = v23;
                v138 = v62;
                if (v66)
                {
                  v146[0] = MEMORY[0x1E69E7CC0];
                  sub_1C6F7ED9C();
                  v68 = v146[0];
                  v69 = (v62 + 48);
                  v70 = v66;
                  do
                  {
                    v72 = *(v69 - 1);
                    v71 = *v69;
                    v146[0] = v68;
                    v74 = *(v68 + 16);
                    v73 = *(v68 + 24);
                    sub_1C75504FC();
                    if (v74 >= v73 >> 1)
                    {
                      sub_1C6F7ED9C();
                      v68 = v146[0];
                    }

                    *(v68 + 16) = v74 + 1;
                    v75 = v68 + 16 * v74;
                    *(v75 + 32) = v72;
                    *(v75 + 40) = v71;
                    v69 += 10;
                    --v70;
                  }

                  while (v70);
                  v44 = v144;
                  LODWORD(v23) = v141;
                  v67 = MEMORY[0x1E69E7CC0];
                }

                else
                {
                  v68 = MEMORY[0x1E69E7CC0];
                }

                *(v44 + 64) = v68;

                v76 = *(a6 + 16);
                if (v76)
                {
                  v146[0] = v67;
                  sub_1C6F7ED9C();
                  v77 = v146[0];
                  v78 = (a6 + 48);
                  do
                  {
                    v80 = *(v78 - 1);
                    v79 = *v78;
                    v146[0] = v77;
                    v82 = *(v77 + 16);
                    v81 = *(v77 + 24);
                    sub_1C75504FC();
                    if (v82 >= v81 >> 1)
                    {
                      sub_1C6F7ED9C();
                      v77 = v146[0];
                    }

                    *(v77 + 16) = v82 + 1;
                    v83 = v77 + 16 * v82;
                    *(v83 + 32) = v80;
                    *(v83 + 40) = v79;
                    v78 += 10;
                    --v76;
                  }

                  while (v76);

                  LODWORD(v23) = v141;
                  v67 = MEMORY[0x1E69E7CC0];
                }

                else
                {

                  v77 = MEMORY[0x1E69E7CC0];
                }

                v84 = __dst[0];
                *(v144 + 72) = v77;

                v85 = v136;
                v86 = v138;
                if (v66)
                {
                  v146[0] = v67;
                  v87 = v84;
                  sub_1C755195C();
                  v88 = 32;
                  do
                  {
                    v89 = *(v86 + v88);
                    sub_1C755192C();
                    sub_1C755196C();
                    sub_1C755197C();
                    sub_1C755193C();
                    v88 += 80;
                    --v66;
                  }

                  while (v66);

                  sub_1C72513AC(__dst);
                  v90 = v146[0];
                }

                else
                {
                  v91 = v84;

                  sub_1C72513AC(__dst);
                  v90 = MEMORY[0x1E69E7CC0];
                }

                v92 = v143;
                *v143 = v84;
                v92[1] = v23;
                v92[2] = v90;
LABEL_95:

                __swift_destroy_boxed_opaque_existential_1(v149);

                return;
              }

LABEL_100:
              swift_unknownObjectRelease();
              goto LABEL_31;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_100;
        }

        v145 = MEMORY[0x1E69E7CD0];

        v49 = sub_1C72469D8(v48, v40, &v145);
        v50 = v143;
        if (*(v49 + 16))
        {
          v140 = v42;

          if (*(v49 + 16))
          {
            v142 = v45;
            memcpy(__dst, (v49 + 32), sizeof(__dst));
            sub_1C7251350(__dst, v146);
            sub_1C70CE540(1, v49);
            v52 = v51;
            v54 = v53;
            if ((v53 & 1) == 0)
            {
              goto LABEL_27;
            }

            sub_1C7551DEC();
            swift_unknownObjectRetain_n();
            v103 = swift_dynamicCastClass();
            if (!v103)
            {
              swift_unknownObjectRelease();
              v103 = MEMORY[0x1E69E7CC0];
            }

            v104 = *(v103 + 16);

            if (!__OFSUB__(v54 >> 1, v52))
            {
              if (v104 == (v54 >> 1) - v52)
              {
                v56 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (!v56)
                {
                  v56 = MEMORY[0x1E69E7CC0];
                  goto LABEL_72;
                }

                goto LABEL_73;
              }

LABEL_103:
              swift_unknownObjectRelease();
LABEL_27:
              sub_1C739CD40();
              v56 = v55;
LABEL_72:
              swift_unknownObjectRelease();
LABEL_73:
              v105 = __dst[2];
              *(v44 + 40) = __dst[1];
              *(v44 + 48) = v105;
              sub_1C75504FC();

              *(v44 + 56) = 4;
              v106 = *(v56 + 16);
              v107 = MEMORY[0x1E69E7CC0];
              v141 = v56;
              if (v106)
              {
                v146[0] = MEMORY[0x1E69E7CC0];
                sub_1C6F7ED9C();
                v108 = v146[0];
                v109 = (v56 + 48);
                v110 = v106;
                do
                {
                  v112 = *(v109 - 1);
                  v111 = *v109;
                  v146[0] = v108;
                  v114 = *(v108 + 16);
                  v113 = *(v108 + 24);
                  sub_1C75504FC();
                  if (v114 >= v113 >> 1)
                  {
                    sub_1C6F7ED9C();
                    v108 = v146[0];
                  }

                  *(v108 + 16) = v114 + 1;
                  v115 = v108 + 16 * v114;
                  *(v115 + 32) = v112;
                  *(v115 + 40) = v111;
                  v109 += 10;
                  --v110;
                }

                while (v110);
                v44 = v144;
                v107 = MEMORY[0x1E69E7CC0];
              }

              else
              {
                v108 = MEMORY[0x1E69E7CC0];
              }

              *(v44 + 64) = v108;

              v116 = *(a6 + 16);
              if (v116)
              {
                v146[0] = v107;
                sub_1C6F7ED9C();
                v117 = v146[0];
                v118 = (a6 + 48);
                do
                {
                  v120 = *(v118 - 1);
                  v119 = *v118;
                  v146[0] = v117;
                  v122 = *(v117 + 16);
                  v121 = *(v117 + 24);
                  sub_1C75504FC();
                  if (v122 >= v121 >> 1)
                  {
                    sub_1C6F7ED9C();
                    v117 = v146[0];
                  }

                  *(v117 + 16) = v122 + 1;
                  v123 = v117 + 16 * v122;
                  *(v123 + 32) = v120;
                  *(v123 + 40) = v119;
                  v118 += 10;
                  --v116;
                }

                while (v116);

                v107 = MEMORY[0x1E69E7CC0];
              }

              else
              {

                v117 = MEMORY[0x1E69E7CC0];
              }

              v124 = __dst[0];
              *(v144 + 72) = v117;

              v125 = v136;
              v126 = v141;
              if (v106)
              {
                v146[0] = v107;
                v127 = v124;
                sub_1C755195C();
                v128 = 32;
                do
                {
                  v129 = *(v126 + v128);
                  sub_1C755192C();
                  sub_1C755196C();
                  sub_1C755197C();
                  sub_1C755193C();
                  v128 += 80;
                  --v106;
                }

                while (v106);

                sub_1C72513AC(__dst);
                v130 = v146[0];
              }

              else
              {
                v131 = v124;

                sub_1C72513AC(__dst);
                v130 = MEMORY[0x1E69E7CC0];
              }

              v132 = v143;
              *v143 = v124;
              v132[1] = 4;
              v132[2] = v130;

              goto LABEL_95;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_103;
        }

        *(v44 + 96) = v45;
        sub_1C75504FC();

        v93 = v139;
        v94 = v138;
        if ((v141 & 1) != 0 && sub_1C6FB6304())
        {
          sub_1C6FB6330(0, (v94 & 0xC000000000000001) == 0, v94);
          v95 = v136;
          if ((v94 & 0xC000000000000001) != 0)
          {
            v96 = MEMORY[0x1CCA5DDD0](0, v94);
          }

          else
          {
            v96 = *(v94 + 32);
          }

          v97 = v96;

          v98 = v97;
          *(v44 + 40) = sub_1C6FCA214(v98);
          *(v44 + 48) = v99;

          *(v44 + 56) = 5;
          v100 = sub_1C754FEEC();
          v101 = sub_1C75511BC();
          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            *v102 = 0;
            _os_log_impl(&dword_1C6F5C000, v100, v101, "Last resort case - returning top candidate key asset that is safe, might not meet other key asset criteria!", v102, 2u);
            MEMORY[0x1CCA5F8E0](v102, -1, -1);
          }

          *v50 = v98;
          v50[1] = 5;
          v50[2] = MEMORY[0x1E69E7CC0];

          __swift_destroy_boxed_opaque_existential_1(v149);
        }

        else
        {

          *v50 = 0;
          v50[1] = 0;
          v50[2] = 0;

          __swift_destroy_boxed_opaque_existential_1(v149);
        }
      }
    }

    else
    {

      v47 = v143;
      *v143 = 0;
      v47[1] = 0;
      v47[2] = 0;
    }
  }

  else
  {
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
  }
}

uint64_t sub_1C724CD28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 40);
  if (*(v4 + 16))
  {
    sub_1C75504FC();

    v7 = sub_1C75504FC();
    sub_1C7246318(v7, v4, a2, a3);
    return v8;
  }

  else
  {
    sub_1C75504FC();
  }

  return a1;
}

uint64_t sub_1C724CDE0(void *__src, const void *a2, char a3, char a4)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v8, a2, sizeof(v8));
  return static FreeformStoryKeyAssetElector.compare(_:to:hasQueryCharacters:prioritizeIconic:)(__dst, v8, a3, a4) & 1;
}

uint64_t sub_1C724CE64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 72);
  if (v5 < 0.5 || *(a1 + 64) < 0.5)
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1C755180C();
    if (v5 >= 0.5)
    {
      MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75A6680);
    }

    else
    {
      MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75A66A0);
    }

    sub_1C7550F5C();
    goto LABEL_13;
  }

  v8 = sub_1C6FE0F8C(*(a1 + 8), *(a1 + 16), a2);
  if (!v9)
  {
LABEL_13:
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *a4;
    sub_1C6FC80A4();
    result = 0;
    *a4 = v19;
    return result;
  }

  v10 = v8;
  v11 = v9;
  v12 = *a3;
  sub_1C75504FC();
  v13 = sub_1C7009C30(v10, v11, v12);

  if (v13)
  {
    sub_1C755180C();

    v19 = 0x20746E656D6F6DLL;
    v20 = 0xE700000000000000;
    v14 = sub_1C7033D84(8);
    v15 = MEMORY[0x1CCA5CC40](v14);
    v17 = v16;

    MEMORY[0x1CCA5CD70](v15, v17);

    MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75A66F0);
    goto LABEL_13;
  }

  sub_1C70F082C(&v19, v10, v11);

  return 1;
}

uint64_t sub_1C724D104(void **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a1;
  v8 = (a2 + 40);
  v9 = *(a2 + 16) + 1;
  while (--v9)
  {
    v10 = v8 + 2;
    v11 = *(v8 - 1);
    v12 = *v8;
    sub_1C75504FC();
    v13 = sub_1C724D294(v7, a3, v11, v12);

    v8 = v10;
    if (v13)
    {
      return v9 != 0;
    }
  }

  result = sub_1C70CAC04(v7);
  if (v15)
  {
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000026, 0x80000001C75A6710);
    v16 = MEMORY[0x1CCA5D090](a2, MEMORY[0x1E69E6158]);
    MEMORY[0x1CCA5CD70](v16);

    MEMORY[0x1CCA5CD70](0x6572702065726120, 0xEC000000746E6573);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *a4;
    sub_1C6FC80A4();
    *a4 = v17;

    return v9 != 0;
  }

  __break(1u);
  return result;
}

BOOL sub_1C724D294(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 curationModel];
  v8 = [v7 sceneModel];

  if (!v8)
  {
    if (qword_1EDD08988 == -1)
    {
LABEL_5:
      v20 = sub_1C754FF1C();
      __swift_project_value_buffer(v20, qword_1EDD28A20);
      v21 = sub_1C754FEEC();
      v22 = sub_1C755119C();
      if (OUTLINED_FUNCTION_7_0(v22))
      {
        OUTLINED_FUNCTION_96_0();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_17();
        _os_log_impl(v23, v24, v25, v26, v27, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0](v28, v29);
      }

      return 0;
    }

LABEL_29:
    OUTLINED_FUNCTION_9_56();
    goto LABEL_5;
  }

  v47 = v8;
  v9 = sub_1C7248430(v8, a3, a4);
  v10 = [a1 clsSceneClassifications];
  OUTLINED_FUNCTION_362();
  sub_1C6F65BE8(v11, v12);
  OUTLINED_FUNCTION_362();
  sub_1C7080178(v13, v14);
  v15 = sub_1C7550F8C();

  if ((v15 & 0xC000000000000001) != 0)
  {
    sub_1C755165C();
    sub_1C7550FEC();
    v15 = v49;
    v16 = v50;
    v17 = v51;
    v18 = v52;
    v19 = v53;
  }

  else
  {
    v18 = 0;
    v30 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v17 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v19 = v32 & *(v15 + 56);
  }

  v46 = v17;
  v33 = (v17 + 64) >> 6;
  if (v15 < 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v34 = v18;
  v35 = v19;
  v36 = v18;
  if (!v19)
  {
    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v36 >= v33)
      {
        goto LABEL_25;
      }

      v35 = *(v16 + 8 * v36);
      ++v34;
      if (v35)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_17:
  v37 = (v35 - 1) & v35;
  v38 = *(*(v15 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
  if (!v38)
  {
LABEL_25:
    OUTLINED_FUNCTION_34_23();

    return 0;
  }

  while (1)
  {
    v39 = [v38 extendedSceneIdentifier];
    if (*(v9 + 16))
    {
      v40 = sub_1C6FCABD0(v39);
      if (v41)
      {
        break;
      }
    }

    v18 = v36;
    v19 = v37;
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    if (sub_1C75516FC())
    {
      swift_dynamicCast();
      v38 = v48;
      v36 = v18;
      v37 = v19;
      if (v48)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  v43 = *(*(v9 + 56) + 8 * v40);

  [v38 confidence];
  v45 = v44;

  OUTLINED_FUNCTION_34_23();
  return v43 <= v45;
}

id FreeformStoryKeyAssetElector.keyAssetForLastResort(from:storyElements:storySession:)(unint64_t a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for StoryGenerationSession(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  memcpy(v20, a2, sizeof(v20));
  memcpy(v19, a2, sizeof(v19));
  sub_1C72505C8(a3, v10);
  type metadata accessor for FreeformStoryKeyAssetElector.Context();
  inited = swift_initStackObject();
  sub_1C6FDE884(v20, v18);
  FreeformStoryKeyAssetElector.Context.init(from:storySession:)(v19, v10);
  *&v18[3] = 0;
  BYTE8(v18[3]) = 6;
  memset(&v18[4], 0, 40);
  *&v18[0] = 0x6F7365527473614CLL;
  *(&v18[0] + 1) = 0xEA00000000007472;
  *&v18[1] = 45;
  *(&v18[1] + 1) = 0xE100000000000000;
  v18[2] = a1;
  v12 = sub_1C75504FC();
  FreeformStoryKeyAssetElector.keyAsset(from:context:isLastResortCase:diagnostics:)(v12, inited, 1, v18);
  v13 = v17[0];
  v14 = *(a3 + *(v7 + 32));
  if (v14)
  {
    sub_1C716A8EC(0xD000000000000017, 0x80000001C75A6400, v14, v18);
  }

  if (v17[0])
  {
    v15 = v17[0];
    sub_1C7250680(v17[0]);
  }

  memcpy(v17, v18, sizeof(v17));
  sub_1C7250650(v17);
  return v13;
}

uint64_t static FreeformStoryKeyAssetElector.Action.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1C7551DBC();
}

void sub_1C724D82C()
{
  OUTLINED_FUNCTION_124();
  v55 = v3;
  i = v4;
  v7 = *(v6 + 8);
  v59 = *v6;
  v57 = *(v6 + 24);
  v58 = *(v6 + 16);
  v56 = *(v6 + 32);
  v8 = sub_1C6FB6304();
  v9 = 0;
  v68 = v7 & 0xC000000000000001;
  v65 = v7 & 0xFFFFFFFFFFFFFF8;
  v63 = (v7 + 32);
  v61 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v10 = &selRef_mergedPersonIdentifiers;
  while (v8 != v9)
  {
    if (v68)
    {
      v11 = MEMORY[0x1CCA5DDD0](v9, v7);
    }

    else
    {
      if (v9 >= *(v65 + 16))
      {
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v0 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
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
      goto LABEL_57;
    }

    v2 = v11;
    v12 = [v2 uuid];
    if (v12)
    {
      v13 = v12;
      v14 = v7;
      v15 = sub_1C755068C();
      v17 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v61 = v20;
      }

      v1 = *(v61 + 16);
      v18 = *(v61 + 24);
      v2 = v1 + 1;
      if (v1 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_41_23(v18);
        sub_1C6FB1814();
        v61 = v21;
      }

      *(v61 + 16) = v2;
      v19 = v61 + 16 * v1;
      *(v19 + 32) = v15;
      *(v19 + 40) = v17;
      v9 = v0;
      v7 = v14;
      goto LABEL_2;
    }

    ++v9;
  }

  v62 = v8;
  v54 = v7;
  v0 = 0;
  v22 = *(i + 16);
  v23 = i + 32;
  v1 = MEMORY[0x1E69E7CC8];
LABEL_17:
  v7 = v23 + (v0 << 7);
  for (i = v0; v22 != i; ++i)
  {
    if (i >= v22)
    {
      goto LABEL_52;
    }

    memcpy(v67, v7, 0x80uLL);
    v0 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_53;
    }

    if ((v67[14] & 1) == 0)
    {
      v9 = v67[13];
      sub_1C6FB7BB8(v67, v66);
      sub_1C6FBC70C(v9);
      v24 = [v9 fetchedObjects];
      if (v24)
      {
        v2 = v24;
        v52 = v23;
        v53 = v1;
        sub_1C6F65BE8(0, &qword_1EDD0FA70);
        i = sub_1C7550B5C();

        v25 = sub_1C6FB6304();
        v7 = 0;
        v64 = i & 0xC000000000000001;
        v60 = MEMORY[0x1E69E7CC0];
        while (v25 != v7)
        {
          if (v64)
          {
            v26 = MEMORY[0x1CCA5DDD0](v7, i);
          }

          else
          {
            if (v7 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v26 = *(i + 8 * v7 + 32);
          }

          v1 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_54;
          }

          v2 = v26;
          v27 = [v2 v10[434]];
          if (v27)
          {
            v28 = v27;
            v29 = sub_1C755068C();
            v51 = v30;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB1814();
              v60 = v34;
            }

            v32 = *(v60 + 16);
            v31 = *(v60 + 24);
            v2 = v32 + 1;
            if (v32 >= v31 >> 1)
            {
              OUTLINED_FUNCTION_41_23(v31);
              sub_1C6FB1814();
              v60 = v35;
            }

            *(v60 + 16) = v2;
            v33 = v60 + 16 * v32;
            *(v33 + 32) = v29;
            *(v33 + 40) = v51;
            v7 = v1;
            v10 = &selRef_mergedPersonIdentifiers;
          }

          else
          {

            ++v7;
            v10 = &selRef_mergedPersonIdentifiers;
          }
        }

        v2 = v67[1];
        sub_1C706D154(v60);
        swift_isUniquelyReferenced_nonNull_native();
        v66[0] = v53;
        v10 = &selRef_mergedPersonIdentifiers;
        OUTLINED_FUNCTION_16_38();
        sub_1C6FC7D38();
        sub_1C6FBC718(v9);
        sub_1C6FBC664(v67);
        v1 = v66[0];
        v23 = v52;
        goto LABEL_17;
      }

      sub_1C6FBC664(v67);
      sub_1C6FBC718(v9);
    }

    v7 += 128;
  }

  v9 = v59;
  v36 = sub_1C70CAC04(v9);
  if (!v37)
  {
    goto LABEL_56;
  }

  v38 = v36;
  v39 = v37;
  v67[0] = v58;
  v67[1] = v57;
  LOBYTE(v67[2]) = v56;
  sub_1C70CE970(v58, v57, v56);
  i = FreeformStoryKeyAssetElector.finalKeyAsset(from:keyAssetSource:alternateKeyAssetUUIDs:curatedAssetUUIDsByChapterID:)(v66, v38, v39, v67, v61, v1);
  v7 = v40;

  sub_1C6FE0E78(v67[0], v67[1], v67[2]);
  v0 = v66[0];
  v64 = v66[1];
  sub_1C75504FC();
  v41 = sub_1C70CAC04(v9);
  v2 = v42;
  v1 = v62;
  if (v42)
  {
    if (i == v41 && v42 == v7)
    {

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v44 = sub_1C7551DBC();

      if ((v44 & 1) == 0)
      {
        v2 = 0;
        goto LABEL_58;
      }
    }
  }

  else
  {

    v10 = v9;
LABEL_57:
    while (1)
    {

LABEL_58:
      if (v2 == v1)
      {
        break;
      }

      if (v68)
      {
        v45 = MEMORY[0x1CCA5DDD0](v2, v54);
      }

      else
      {
        if (v2 >= *(v65 + 16))
        {
          goto LABEL_76;
        }

        v45 = *&v63[8 * v2];
      }

      v10 = v45;
      if (__OFADD__(v2++, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
        return;
      }

      v47 = sub_1C70CAC04(v45);
      if (v48)
      {
        if (v47 == i && v48 == v7)
        {

          goto LABEL_73;
        }

        v50 = sub_1C7551DBC();

        if (v50)
        {

          goto LABEL_73;
        }

        v1 = v62;
      }
    }
  }

LABEL_73:
  *v55 = v0;
  v55[1] = v64;
  OUTLINED_FUNCTION_125();
}

uint64_t FreeformStoryKeyAssetElector.finalKeyAsset(from:keyAssetSource:alternateKeyAssetUUIDs:curatedAssetUUIDsByChapterID:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = *(a4 + 16);
  sub_1C710D474(a6);
  if (!v14)
  {
    *a1 = 0;
    a1[1] = 0;
    sub_1C75504FC();
    return OUTLINED_FUNCTION_282();
  }

  v15 = v13;
  v16 = v14;
  v125 = a1;

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  if (v12 <= 1)
  {
    sub_1C70CE970(v10, v11, v12);
    v18 = sub_1C6FE3768(v10, v11, a6);
    v19 = v10;
    if (v18)
    {
      v20 = v18;
      v124 = v19;

      sub_1C75504FC();
      v16 = v11;
      goto LABEL_8;
    }

    sub_1C6FE0E78(v10, v11, v12);
  }

  v20 = sub_1C724E708(v17);
  sub_1C75504FC();
  v124 = v15;
LABEL_8:
  v21 = OUTLINED_FUNCTION_282();
  v23 = sub_1C7009C30(v21, v22, v20);

  if (v23)
  {

    sub_1C75504FC();
    v24 = sub_1C754FEEC();
    v25 = sub_1C75511BC();

    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_13_3();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v27 = swift_slowAlloc();
      v127[0] = v27;
      *v26 = 136315138;
      v28 = OUTLINED_FUNCTION_282();
      *(v26 + 4) = sub_1C6F765A4(v28, v29, v30);
      OUTLINED_FUNCTION_17();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C75504FC();

    *v125 = 0;
    v125[1] = 0;
  }

  else
  {
    v122 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    sub_1C75504FC();
    v37 = sub_1C706D154(inited);
    v38 = sub_1C75504FC();
    sub_1C70739AC(v38, v37);
    StoryGenerationCache.momentUUIDByAssetUUID(for:)();
    v40 = v39;

    StoryGenerationCache.momentUUIDByAssetUUID(for:)();
    v42 = sub_1C706D87C(v41);
    v43 = OUTLINED_FUNCTION_282();
    v45 = sub_1C6FE0F8C(v43, v44, v40);
    if (v46)
    {
      if (sub_1C7009C30(v45, v46, v42))
      {

        sub_1C75504FC();
        sub_1C75504FC();
        v47 = sub_1C754FEEC();
        v48 = sub_1C75511BC();

        if (os_log_type_enabled(v47, v48))
        {
          OUTLINED_FUNCTION_11_3();
          v49 = swift_slowAlloc();
          OUTLINED_FUNCTION_40_25();
          v127[0] = swift_slowAlloc();
          *v49 = 136315394;
          *(v49 + 4) = sub_1C6F765A4(a2, a3, v127);
          *(v49 + 12) = 2080;
          v50 = OUTLINED_FUNCTION_505();
          v53 = sub_1C6F765A4(v50, v51, v52);

          *(v49 + 14) = v53;
          v54 = v125;
          _os_log_impl(&dword_1C6F5C000, v47, v48, "Key asset %s is in moment %s, which is represented in relevant curated assets", v49, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        else
        {

          v54 = v125;
        }

        sub_1C75504FC();

        *v54 = v124;
        v54[1] = v16;
        return OUTLINED_FUNCTION_282();
      }
    }

    v119 = *(a5 + 16);
    if (v119)
    {
      v55 = 0;
      v56 = a5 + 32;
      v121 = v42 + 56;
      v123 = v42;
      v118 = a5 + 32;
      while (1)
      {
        v57 = (v56 + 16 * v55);
        v59 = *v57;
        v58 = v57[1];
        if (*(v20 + 16))
        {
          sub_1C7551F3C();
          sub_1C75504FC();
          sub_1C75505AC();
          v60 = sub_1C7551FAC();
          v61 = ~(-1 << *(v20 + 32));
          while (1)
          {
            v62 = v60 & v61;
            if (((*(v20 + 56 + (((v60 & v61) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v60 & v61)) & 1) == 0)
            {
              break;
            }

            v63 = (*(v20 + 48) + 16 * v62);
            if (*v63 != v59 || v63[1] != v58)
            {
              v65 = sub_1C7551DBC();
              v60 = v62 + 1;
              if ((v65 & 1) == 0)
              {
                continue;
              }
            }

            sub_1C75504FC();
            v75 = sub_1C754FEEC();
            v76 = sub_1C75511BC();

            if (os_log_type_enabled(v75, v76))
            {
              OUTLINED_FUNCTION_13_3();
              v77 = swift_slowAlloc();
              OUTLINED_FUNCTION_98();
              v78 = swift_slowAlloc();
              v127[0] = v78;
              *(v77 + 4) = OUTLINED_FUNCTION_42_23(4.8149e-34, v78, v79, v80, v81, v82, v83, v84, v85, v115, v116, v117, v118, v119, v120);
              OUTLINED_FUNCTION_17();
              _os_log_impl(v86, v87, v88, v89, v90, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v78);
              OUTLINED_FUNCTION_235();
              MEMORY[0x1CCA5F8E0]();
              OUTLINED_FUNCTION_235();
              MEMORY[0x1CCA5F8E0]();
            }

            *v125 = 0;
            v125[1] = 0;
            return OUTLINED_FUNCTION_282();
          }
        }

        else
        {
          sub_1C75504FC();
        }

        if (*(v40 + 16))
        {
          v66 = sub_1C6F78124(v59, v58);
          if (v67)
          {
            if (*(v123 + 16))
            {
              break;
            }
          }
        }

LABEL_40:
        ++v55;

        v56 = v118;
        if (v55 == v119)
        {
          goto LABEL_47;
        }
      }

      v117 = v40;
      v68 = (*(v40 + 56) + 16 * v66);
      v69 = v68[1];
      v116 = *v68;
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      v70 = sub_1C7551FAC();
      v120 = ~(-1 << *(v123 + 32));
      do
      {
        v71 = v70 & v120;
        if (((*(v121 + (((v70 & v120) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v70 & v120)) & 1) == 0)
        {

          v40 = v117;
          goto LABEL_40;
        }

        v72 = (*(v123 + 48) + 16 * v71);
        if (*v72 == v116 && v72[1] == v69)
        {
          break;
        }

        v74 = sub_1C7551DBC();
        v70 = v71 + 1;
      }

      while ((v74 & 1) == 0);
      v98 = v116;

      sub_1C75504FC();
      sub_1C75504FC();
      v99 = sub_1C754FEEC();
      v100 = sub_1C75511BC();

      if (os_log_type_enabled(v99, v100))
      {
        OUTLINED_FUNCTION_11_3();
        v101 = swift_slowAlloc();
        OUTLINED_FUNCTION_40_25();
        v127[0] = swift_slowAlloc();
        *(v101 + 4) = OUTLINED_FUNCTION_42_23(4.8151e-34, v127[0], v102, v103, v104, v105, v106, v107, v108, v115, v116, v117, v118, v119, v120);
        *(v101 + 12) = 2080;
        v109 = sub_1C6F765A4(v98, v69, v127);

        *(v101 + 14) = v109;
        OUTLINED_FUNCTION_17();
        _os_log_impl(v110, v111, v112, v113, v114, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

      *v125 = v124;
      v125[1] = v122;
    }

    else
    {
LABEL_47:

      v91 = sub_1C724E708(v17);
      v92 = OUTLINED_FUNCTION_282();
      v94 = sub_1C7009C30(v92, v93, v91);

      if (v94)
      {

        v95 = 0;
        v96 = 0;
      }

      else
      {
        v96 = v122;
        v95 = v124;
      }

      sub_1C75504FC();

      *v125 = v95;
      v125[1] = v96;
    }
  }

  return OUTLINED_FUNCTION_282();
}

uint64_t sub_1C724E708(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v4 = sub_1C75504FC();
    v5 = sub_1C71CD938(v4);
    v6 = sub_1C7069D48(v5);

    if (v6)
    {
      v3 = v6;
    }

    else
    {
      v3 = MEMORY[0x1E69E7CD0];
    }

    swift_beginAccess();
    *v2 = v3;
    sub_1C75504FC();
  }

  sub_1C75504FC();
  return v3;
}

uint64_t FreeformStoryKeyAssetElector.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_storyPhotoLibraryContext);

  return v0;
}

uint64_t FreeformStoryKeyAssetElector.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_storyPhotoLibraryContext);

  return swift_deallocClassInstance();
}

uint64_t sub_1C724E8CC(uint64_t *a1, char a2, char a3, uint64_t a4)
{
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422E64();
    v8 = v9;
  }

  v10 = *(v8 + 16);
  v12[0] = v8 + 32;
  v12[1] = v10;
  result = sub_1C724EC00(v12, a2 & 1, a3 & 1, a4);
  *a1 = v8;
  return result;
}

uint64_t sub_1C724E958(uint64_t a1)
{
  v2 = type metadata accessor for StoryGenerationSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C724E9B4()
{
  result = qword_1EDD08A18;
  if (!qword_1EDD08A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08A18);
  }

  return result;
}

unint64_t sub_1C724EA08()
{
  result = qword_1EC219AE8;
  if (!qword_1EC219AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219AE8);
  }

  return result;
}

unint64_t sub_1C724EA5C()
{
  result = qword_1EC219AF0;
  if (!qword_1EC219AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219AF0);
  }

  return result;
}

unint64_t sub_1C724EAB0()
{
  result = qword_1EC219AF8;
  if (!qword_1EC219AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219AF8);
  }

  return result;
}

unint64_t sub_1C724EB04()
{
  result = qword_1EC219B00;
  if (!qword_1EC219B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219B00);
  }

  return result;
}

unint64_t sub_1C724EB58()
{
  result = qword_1EDD089A8;
  if (!qword_1EDD089A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD089A8);
  }

  return result;
}

unint64_t sub_1C724EBAC()
{
  result = qword_1EDD08A00;
  if (!qword_1EDD08A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08A00);
  }

  return result;
}

uint64_t sub_1C724EC00(uint64_t *a1, char a2, char a3, uint64_t a4)
{
  v8 = a1[1];
  result = sub_1C7551D7C();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v12 = sub_1C7550BBC();
        *(v12 + 16) = v11;
      }

      v13[0] = (v12 + 32);
      v13[1] = v11;
      sub_1C724EF0C(v13, v14, a1, v10, a2 & 1, a3 & 1, a4);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return sub_1C724ED20(0, v8, 1, a1, a2 & 1, a3 & 1);
  }

  return result;
}

uint64_t sub_1C724ED20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, char a6)
{
  if (a3 != a2)
  {
    v9 = *a4;
    v10 = (*a4 + 80 * a3);
    v11 = result - a3 + 1;
    while (2)
    {
      v24 = a3;
      v15 = v11;
      v16 = v10;
      while (1)
      {
        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v21, v10, sizeof(v21));
        memcpy(v23, v10 - 80, 0x50uLL);
        memcpy(__src, v10 - 80, sizeof(__src));
        v12 = sub_1C724CDE0(v21, __src, a5 & 1, a6 & 1);
        if (v6)
        {
          memcpy(v18, __src, sizeof(v18));
          sub_1C7251350(__dst, v19);
          sub_1C7251350(v23, v19);
          sub_1C72513AC(v18);
          memcpy(v19, v21, sizeof(v19));
          return sub_1C72513AC(v19);
        }

        v13 = v12;
        memcpy(v18, __src, sizeof(v18));
        sub_1C7251350(__dst, v17);
        sub_1C7251350(v23, v17);
        sub_1C72513AC(v18);
        memcpy(v19, v21, sizeof(v19));
        result = sub_1C72513AC(v19);
        if ((v13 & 1) == 0)
        {
          break;
        }

        if (!v9)
        {
          __break(1u);
          return result;
        }

        memcpy(v17, v10, sizeof(v17));
        memcpy(v10, v10 - 80, 0x50uLL);
        result = memcpy(v10 - 80, v17, 0x50uLL);
        if (!v11)
        {
          break;
        }

        ++v11;
        v10 -= 80;
      }

      a3 = v24 + 1;
      v10 = v16 + 80;
      v11 = v15 - 1;
      if (v24 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C724EF0C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  v8 = v7;
  v113 = MEMORY[0x1E69E7CC0];
  v10 = a3[1];
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v13 = v11;
      v14 = v11 + 1;
      if (v11 + 1 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *a3;
      v96 = v11;
      v16 = v11 + 1;
      memcpy(__dst, (*a3 + 80 * v14), sizeof(__dst));
      memcpy(v110, (v15 + 80 * v14), sizeof(v110));
      memcpy(v112, (v15 + 80 * v13), 0x50uLL);
      memcpy(__src, (v15 + 80 * v13), sizeof(__src));
      v17 = sub_1C724CDE0(v110, __src, a5 & 1, a6 & 1);
      if (v8)
      {
LABEL_97:
        memcpy(v107, __src, sizeof(v107));
        sub_1C7251350(__dst, v108);
        sub_1C7251350(v112, v108);
        sub_1C72513AC(v107);
        memcpy(v108, v110, sizeof(v108));
        sub_1C72513AC(v108);
        goto LABEL_98;
      }

      v18 = v17;
      v93 = v12;
      memcpy(v107, __src, sizeof(v107));
      sub_1C7251350(__dst, v106);
      sub_1C7251350(v112, v106);
      sub_1C72513AC(v107);
      memcpy(v108, v110, sizeof(v108));
      sub_1C72513AC(v108);
      v19 = v15 + 80 * v13;
      v20 = 80 * v13;
      v21 = (v19 + 160);
      v22 = v13 + 2;
      v23 = v16;
      while (1)
      {
        v24 = v23;
        v25 = v22;
        if (v23 + 1 >= v10)
        {
          break;
        }

        memcpy(v105, v21, sizeof(v105));
        memcpy(v104, v21, sizeof(v104));
        memcpy(v106, v21 - 80, sizeof(v106));
        memcpy(v103, v21 - 80, sizeof(v103));
        v26 = sub_1C724CDE0(v104, v103, a5 & 1, a6 & 1);
        memcpy(v101, v103, sizeof(v101));
        sub_1C7251350(v105, v102);
        sub_1C7251350(v106, v102);
        sub_1C72513AC(v101);
        memcpy(v102, v104, sizeof(v102));
        sub_1C72513AC(v102);
        v21 += 80;
        v23 = v24 + 1;
        v22 = v25 + 1;
        if ((v18 ^ v26))
        {
          if (v18)
          {
            goto LABEL_9;
          }

LABEL_22:
          v12 = v93;
          v14 = v23;
LABEL_23:
          v13 = v96;
          goto LABEL_24;
        }
      }

      v23 = v10;
      if ((v18 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_9:
      if (v23 < v96)
      {
        break;
      }

      v14 = v23;
      v27 = v96 <= v24;
      v12 = v93;
      v13 = v96;
      if (v27)
      {
        if (v10 >= v25)
        {
          v28 = v25;
        }

        else
        {
          v28 = v10;
        }

        v29 = 80 * v28 - 80;
        v30 = v96;
        v31 = v23;
        do
        {
          if (v30 != --v31)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            memcpy(v106, (v32 + v20), sizeof(v106));
            memmove((v32 + v20), (v32 + v29), 0x50uLL);
            memcpy((v32 + v29), v106, 0x50uLL);
          }

          ++v30;
          v29 -= 80;
          v20 += 80;
        }

        while (v30 < v31);
        goto LABEL_23;
      }

LABEL_24:
      v33 = a3[1];
      if (v14 < v33)
      {
        if (__OFSUB__(v14, v13))
        {
          goto LABEL_117;
        }

        if (v14 - v13 < a4)
        {
          if (__OFADD__(v13, a4))
          {
            goto LABEL_118;
          }

          if (v13 + a4 >= v33)
          {
            v34 = a3[1];
          }

          else
          {
            v34 = v13 + a4;
          }

          if (v34 < v13)
          {
LABEL_119:
            __break(1u);
            break;
          }

          if (v14 != v34)
          {
            v78 = *a3;
            v79 = *a3 + 80 * v14;
            v98 = v13;
            v80 = v13 - v14 + 1;
            v88 = v34;
            do
            {
              v81 = v14;
              v92 = v80;
              v82 = v79;
              for (i = v79; ; i -= 80)
              {
                memcpy(__dst, i, sizeof(__dst));
                memcpy(v110, i, sizeof(v110));
                memcpy(v112, i - 80, 0x50uLL);
                memcpy(__src, i - 80, sizeof(__src));
                v84 = sub_1C724CDE0(v110, __src, a5 & 1, a6 & 1);
                if (v8)
                {
                  goto LABEL_97;
                }

                v85 = v84;
                memcpy(v107, __src, sizeof(v107));
                sub_1C7251350(__dst, v106);
                sub_1C7251350(v112, v106);
                sub_1C72513AC(v107);
                memcpy(v108, v110, sizeof(v108));
                sub_1C72513AC(v108);
                if ((v85 & 1) == 0)
                {
                  break;
                }

                if (!v78)
                {
                  goto LABEL_122;
                }

                memcpy(v106, i, sizeof(v106));
                memcpy(i, i - 80, 0x50uLL);
                memcpy(i - 80, v106, 0x50uLL);
                if (!v80)
                {
                  break;
                }

                ++v80;
              }

              v14 = v81 + 1;
              v79 = v82 + 80;
              v80 = v92 - 1;
            }

            while (v81 + 1 != v88);
            v14 = v88;
            v13 = v98;
          }
        }
      }

      if (v14 < v13)
      {
        goto LABEL_116;
      }

      v91 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v12 = v86;
      }

      v35 = v12[2];
      v36 = v35 + 1;
      if (v35 >= v12[3] >> 1)
      {
        sub_1C6FB17EC();
        v12 = v87;
      }

      v12[2] = v36;
      v37 = v12 + 4;
      v38 = &v12[2 * v35 + 4];
      *v38 = v13;
      v38[1] = v91;
      v113 = v12;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_124;
      }

      if (v35)
      {
        while (1)
        {
          v39 = v36 - 1;
          v40 = &v37[2 * v36 - 2];
          v41 = &v12[2 * v36];
          if (v36 >= 4)
          {
            break;
          }

          if (v36 == 3)
          {
            v42 = v12[4];
            v43 = v12[5];
            v52 = __OFSUB__(v43, v42);
            v44 = v43 - v42;
            v45 = v52;
LABEL_53:
            if (v45)
            {
              goto LABEL_106;
            }

            v57 = *v41;
            v56 = v41[1];
            v58 = __OFSUB__(v56, v57);
            v59 = v56 - v57;
            v60 = v58;
            if (v58)
            {
              goto LABEL_109;
            }

            v61 = v40[1];
            v62 = v61 - *v40;
            if (__OFSUB__(v61, *v40))
            {
              goto LABEL_112;
            }

            if (__OFADD__(v59, v62))
            {
              goto LABEL_114;
            }

            if (v59 + v62 >= v44)
            {
              if (v44 < v62)
              {
                v39 = v36 - 2;
              }

              goto LABEL_75;
            }

            goto LABEL_68;
          }

          if (v36 < 2)
          {
            goto LABEL_108;
          }

          v64 = *v41;
          v63 = v41[1];
          v52 = __OFSUB__(v63, v64);
          v59 = v63 - v64;
          v60 = v52;
LABEL_68:
          if (v60)
          {
            goto LABEL_111;
          }

          v66 = *v40;
          v65 = v40[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_113;
          }

          if (v67 < v59)
          {
            goto LABEL_82;
          }

LABEL_75:
          if (v39 - 1 >= v36)
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_119;
          }

          if (!*a3)
          {
            goto LABEL_121;
          }

          v71 = &v37[2 * v39 - 2];
          v72 = *v71;
          v97 = v39;
          v73 = &v37[2 * v39];
          v74 = v73[1];
          sub_1C724F91C((*a3 + 80 * *v71), (*a3 + 80 * *v73), (*a3 + 80 * v74), v94, a5 & 1, a6 & 1);
          if (v8)
          {
            v113 = v12;
            goto LABEL_98;
          }

          if (v74 < v72)
          {
            goto LABEL_101;
          }

          v75 = a7;
          v76 = v12;
          v77 = v12[2];
          if (v97 > v77)
          {
            goto LABEL_102;
          }

          *v71 = v72;
          v71[1] = v74;
          if (v97 >= v77)
          {
            goto LABEL_103;
          }

          v36 = v77 - 1;
          memmove(v73, v73 + 2, 16 * (v77 - 1 - v97));
          v76[2] = v77 - 1;
          v27 = v77 > 2;
          v12 = v76;
          a7 = v75;
          v8 = 0;
          if (!v27)
          {
LABEL_82:
            v113 = v12;
            goto LABEL_83;
          }
        }

        v46 = &v37[2 * v36];
        v47 = *(v46 - 8);
        v48 = *(v46 - 7);
        v52 = __OFSUB__(v48, v47);
        v49 = v48 - v47;
        if (v52)
        {
          goto LABEL_104;
        }

        v51 = *(v46 - 6);
        v50 = *(v46 - 5);
        v52 = __OFSUB__(v50, v51);
        v44 = v50 - v51;
        v45 = v52;
        if (v52)
        {
          goto LABEL_105;
        }

        v53 = v41[1];
        v54 = v53 - *v41;
        if (__OFSUB__(v53, *v41))
        {
          goto LABEL_107;
        }

        v52 = __OFADD__(v44, v54);
        v55 = v44 + v54;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v55 >= v49)
        {
          v69 = *v40;
          v68 = v40[1];
          v52 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v52)
          {
            goto LABEL_115;
          }

          if (v44 < v70)
          {
            v39 = v36 - 2;
          }

          goto LABEL_75;
        }

        goto LABEL_53;
      }

LABEL_83:
      v10 = a3[1];
      v11 = v91;
      if (v91 >= v10)
      {
        goto LABEL_94;
      }
    }

    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

LABEL_94:
  if (!*a1)
  {
LABEL_125:
    __break(1u);
    return;
  }

  sub_1C724F7CC(&v113, *a1, a3, a5 & 1, a6 & 1);
LABEL_98:
}

uint64_t sub_1C724F7CC(uint64_t *a1, char *a2, void *a3, char a4, char a5)
{
  v6 = a1;
  v19 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v19 = result;
  }

  v14 = v6;
  *v6 = v19;
  v8 = (v19 + 16);
  for (i = *(v19 + 16); ; *v8 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v14 = v19;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v10 = (v19 + 16 * i);
    v11 = *v10;
    v12 = &v8[2 * i];
    v6 = v12[1];
    sub_1C724F91C((*a3 + 80 * *v10), (*a3 + 80 * *v12), (*a3 + 80 * v6), a2, a4 & 1, a5 & 1);
    if (v5)
    {
      goto LABEL_10;
    }

    if (v6 < v11)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v8)
    {
      goto LABEL_12;
    }

    *v10 = v11;
    v10[1] = v6;
    v13 = *v8 - i;
    if (*v8 < i)
    {
      goto LABEL_13;
    }

    i = *v8 - 1;
    result = memmove(v12, v12 + 2, 16 * v13);
  }

  *v14 = v19;
  __break(1u);
  return result;
}

uint64_t sub_1C724F91C(char *a1, char *a2, char *a3, char *a4, int a5, int a6)
{
  v43 = a5;
  v44 = a6;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = (a2 - a1) / 80;
  v12 = (a3 - a2) / 80;
  if (v11 < v12)
  {
    sub_1C741E45C(a1, (a2 - a1) / 80, a4);
    v13 = &v7[80 * v11];
    while (1)
    {
      if (v7 >= v13 || v9 >= v8)
      {
        v9 = v10;
        goto LABEL_39;
      }

      memcpy(__dst, v9, sizeof(__dst));
      memmove(v40, v9, 0x50uLL);
      memcpy(v42, v7, 0x50uLL);
      memmove(__src, v7, 0x50uLL);
      v15 = sub_1C724CDE0(v40, __src, v43 & 1, v44 & 1);
      if (v6)
      {
        memcpy(v37, __src, sizeof(v37));
        sub_1C7251350(__dst, v36);
        sub_1C7251350(v42, v36);
        sub_1C72513AC(v37);
        memcpy(v38, v40, sizeof(v38));
        sub_1C72513AC(v38);
        v28 = (v13 - v7) / 80;
        v29 = v10 < v7 || v10 >= &v7[80 * v28];
        if (v29 || v10 != v7)
        {
          v30 = 80 * v28;
          v31 = v10;
          goto LABEL_53;
        }

        return 1;
      }

      v16 = v15;
      memcpy(v37, __src, sizeof(v37));
      sub_1C7251350(__dst, v38);
      sub_1C7251350(v42, v38);
      sub_1C72513AC(v37);
      memcpy(v38, v40, sizeof(v38));
      sub_1C72513AC(v38);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = v9;
      v18 = v10 == v9;
      v9 += 80;
      if (!v18)
      {
        goto LABEL_13;
      }

LABEL_14:
      v10 += 80;
    }

    v17 = v7;
    v18 = v10 == v7;
    v7 += 80;
    if (v18)
    {
      goto LABEL_14;
    }

LABEL_13:
    memmove(v10, v17, 0x50uLL);
    goto LABEL_14;
  }

  sub_1C741E45C(a2, (a3 - a2) / 80, a4);
  v13 = &v7[80 * v12];
LABEL_16:
  v35 = v9 - 80;
  v8 -= 80;
  for (i = v13 - v7; ; i -= 80)
  {
    if (v13 <= v7 || v9 <= a1)
    {
LABEL_39:
      v26 = (v13 - v7) / 80;
      v27 = &v7[80 * v26];
      goto LABEL_47;
    }

    memcpy(__dst, v13 - 80, sizeof(__dst));
    memmove(v40, v13 - 80, 0x50uLL);
    memcpy(v42, v35, 0x50uLL);
    memcpy(__src, v35, sizeof(__src));
    v21 = sub_1C724CDE0(v40, __src, v43 & 1, v44 & 1);
    if (v6)
    {
      break;
    }

    v22 = v21;
    memcpy(v37, __src, sizeof(v37));
    sub_1C7251350(__dst, v36);
    sub_1C7251350(v42, v36);
    sub_1C72513AC(v37);
    memcpy(v38, v40, sizeof(v38));
    sub_1C72513AC(v38);
    v23 = v8 + 80;
    if (v22)
    {
      v25 = v23 < v9 || v8 >= v9;
      if (!v25 && v23 == v9)
      {
        v9 -= 80;
      }

      else
      {
        v9 -= 80;
        memmove(v8, v35, 0x50uLL);
      }

      goto LABEL_16;
    }

    v24 = v23 < v13 || v8 >= v13;
    if (v24 || v13 != v23)
    {
      memmove(v8, v13 - 80, 0x50uLL);
    }

    v8 -= 80;
    v13 -= 80;
  }

  memcpy(v37, __src, sizeof(v37));
  sub_1C7251350(__dst, v36);
  sub_1C7251350(v42, v36);
  sub_1C72513AC(v37);
  memcpy(v38, v40, sizeof(v38));
  sub_1C72513AC(v38);
  v26 = i / 80;
  v27 = &v7[80 * (i / 80)];
LABEL_47:
  v32 = v9 < v7 || v9 >= v27;
  if (v32 || v9 != v7)
  {
    v30 = 80 * v26;
    v31 = v9;
LABEL_53:
    memmove(v31, v7, v30);
  }

  return 1;
}

uint64_t sub_1C724FD38(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      sub_1C75504FC();
      v4 = sub_1C7250104(v12, v7, v4, a2);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v7, v9);
  sub_1C75504FC();
  v10 = sub_1C724FEFC(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C724FEFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = a4 + 56;
LABEL_5:
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    if (*(a4 + 16))
    {
      v31 = v10;
      v32 = v5;
      v29 = v13 | (v6 << 6);
      v16 = (*(a3 + 48) + 16 * v29);
      v18 = *v16;
      v17 = v16[1];
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      v19 = sub_1C7551FAC();
      v20 = ~(-1 << *(a4 + 32));
      do
      {
        v21 = v19 & v20;
        if (((*(v12 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {

          v5 = v32;
          v10 = v31;
          goto LABEL_5;
        }

        v22 = (*(a4 + 48) + 16 * v21);
        if (*v22 == v18 && v22[1] == v17)
        {
          break;
        }

        v24 = sub_1C7551DBC();
        v19 = v21 + 1;
      }

      while ((v24 & 1) == 0);

      *(v28 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v5 = v32 + 1;
      v10 = v31;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      sub_1C7483DE0(v28, a2, v5);
      v26 = v25;

      return v26;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_1C7250104(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    swift_bridgeObjectRetain_n();
    v8 = sub_1C724FEFC(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1C72501A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v43 = a5;
  sub_1C6F78034(v42);
  v6 = v42[1];
  v7 = v42[3];
  v8 = v42[4];
  v35 = v42[5];
  v36 = v42[0];
  v9 = (v42[2] + 64) >> 6;
  sub_1C75504FC();

  if (v8)
  {
    while (1)
    {
      v37 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v36 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v36 + 56) + 8 * v12);
      v41[0] = *v13;
      v41[1] = v14;
      v41[2] = v15;
      sub_1C75504FC();
      v35(&v38, v41);

      v16 = v38;
      v17 = v39;
      v18 = v40;
      v19 = *v43;
      v21 = sub_1C6F78124(v38, v39);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v24 = v20;
      if (v19[3] >= v22 + v23)
      {
        if ((v37 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DE0);
          sub_1C7551A3C();
        }
      }

      else
      {
        sub_1C7354094();
        v25 = sub_1C6F78124(v16, v17);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_27;
        }

        v21 = v25;
      }

      v8 &= v8 - 1;
      v27 = *v43;
      if (v24)
      {
        v28 = *(v27[7] + 8 * v21);

        if (v28 > v18)
        {
          v29 = v28;
        }

        else
        {
          v29 = v18;
        }

        *(v27[7] + 8 * v21) = v29;
      }

      else
      {
        v27[(v21 >> 6) + 8] |= 1 << v21;
        v30 = (v27[6] + 16 * v21);
        *v30 = v16;
        v30[1] = v17;
        *(v27[7] + 8 * v21) = v18;
        v31 = v27[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_26;
        }

        v27[2] = v33;
      }

      a4 = 1;
      v7 = v10;
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
        sub_1C6F61E88();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v37 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}