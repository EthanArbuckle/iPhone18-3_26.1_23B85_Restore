void sub_1DD58CBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v27 = v26;
  v28 = type metadata accessor for RunTimeDataRecord();
  v29 = OUTLINED_FUNCTION_7(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  v34 = v33 - v32;
  v55 = *v20;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v35 = sub_1DD63F9F8();
  __swift_project_value_buffer(v35, qword_1EE16F068);
  OUTLINED_FUNCTION_1_108();
  sub_1DD58FCE0(v27, v34, v36);
  v37 = sub_1DD63F9D8();
  v38 = sub_1DD640368();
  if (os_log_type_enabled(v37, v38))
  {
    OUTLINED_FUNCTION_54();
    v39 = OUTLINED_FUNCTION_13_44();
    a10 = v39;
    *v22 = 136315138;
    v40 = v34 + *(v28 + 20);
    v41 = *(v40 + 8);
    v42 = *(v40 + 16);

    OUTLINED_FUNCTION_15_42();
    v43 = sub_1DD39565C(v41, v42, &a10);

    *(v22 + 4) = v43;
    v25 = v21;
    OUTLINED_FUNCTION_30_18(&dword_1DD38D000, v37, v38, "saving contact runtime data. taskId=%s");
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_13_36();
  }

  else
  {

    OUTLINED_FUNCTION_15_42();
  }

  v44 = sub_1DD63286C();
  if (!v25)
  {
    v46 = v44;
    v47 = v45;
    sub_1DD58DF90(v44, v45, 30000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD6444F0;
    v49 = v27 + *(v28 + 20);
    v50 = MEMORY[0x1E69E6158];
    v52 = *(v49 + 8);
    v51 = *(v49 + 16);
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = &off_1F58C4E78;
    *(inited + 32) = v52;
    *(inited + 40) = v51;
    v53 = *(v28 + 28);

    v54 = sub_1DD4C1B10();
    *(inited + 96) = MEMORY[0x1E69E7360];
    *(inited + 104) = &off_1F58C4E70;
    *(inited + 72) = v54;
    *(inited + 136) = v50;
    *(inited + 144) = &off_1F58C4E78;
    *(inited + 112) = v46;
    *(inited + 120) = v47;
    sub_1DD4061B8(0xD00000000000004CLL, 0x80000001DD673A10, inited);

    swift_setDeallocating();
    sub_1DD46CB4C();
  }

  OUTLINED_FUNCTION_86();
}

void sub_1DD58CE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B8, &unk_1DD65DD40);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v173 - v26;
  v187 = type metadata accessor for RunTimeDataRecord();
  v28 = OUTLINED_FUNCTION_0(v187);
  v182 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v32);
  v184 = v173 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v201 = v173 - v36;
  v37 = sub_1DD63D078();
  v38 = OUTLINED_FUNCTION_0(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v43);
  v193 = v173 - v44;
  v194 = type metadata accessor for UnstitchedTask();
  v45 = OUTLINED_FUNCTION_0(v194);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_1_4();
  v52 = v50 - v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v54);
  v200 = (v173 - v55);
  v188 = *v20;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v56 = sub_1DD63F9F8();
  v192 = __swift_project_value_buffer(v56, qword_1EE16F068);
  v57 = sub_1DD63F9D8();
  v58 = sub_1DD640368();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_1DD38D000, v57, v58, "fetching unstitched tasks from runtime data DB", v59, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  v60 = MEMORY[0x1E69E7CC0];
  sub_1DD4061B8(0xD0000000000000B5, 0x80000001DD673CB0, MEMORY[0x1E69E7CC0]);
  if (v21)
  {
LABEL_55:
    OUTLINED_FUNCTION_86();
    return;
  }

  v176 = v52;
  v177 = v47;

  v195 = sub_1DD58B560(v178);
  v62 = v61;
  v189 = (v40 + 4);
  v175 = (v40 + 2);
  v174 = v40 + 5;
  *(&v63 + 1) = 0xE400000000000000;
  v185 = xmmword_1DD65DD10;
  *&v63 = 136315138;
  v186 = v63;
  v179 = v60;
  v202 = v60;
  v190 = v27;
  v191 = v37;
  v196 = v61;
  while (1)
  {
    sub_1DD5D2E58();
    v65 = v64;
    if (!v64)
    {
      break;
    }

    v66 = sub_1DD4CE934(0x64496B736174, 0xE600000000000000, v62, v65);
    v68 = v67;
    if (!v67)
    {

      sub_1DD4CF1AC();
      v169 = OUTLINED_FUNCTION_4_42();
      OUTLINED_FUNCTION_7_54(xmmword_1DD65DD30, v169, v170);

      OUTLINED_FUNCTION_32_19();
      OUTLINED_FUNCTION_19_33();

      goto LABEL_55;
    }

    v69 = v66;
    sub_1DD4CF054(0x5F64657461657263, 0xEA00000000007461, v62, v65, v201);
    if (__swift_getEnumTagSinglePayload(v201, 1, v37) == 1)
    {

      sub_1DD390754(v201, &qword_1ECCDEBC0, &qword_1DD6445A0);
      sub_1DD4CF1AC();
      v171 = OUTLINED_FUNCTION_4_42();
      OUTLINED_FUNCTION_7_54(xmmword_1DD65DD20, v171, v172);
      OUTLINED_FUNCTION_19_33();

      OUTLINED_FUNCTION_32_19();
      goto LABEL_55;
    }

    v199 = 0;
    v70 = *v189;
    v71 = v193;
    (*v189)(v193, v201, v37);
    v72 = v200;
    v197 = v69;
    v198 = v68;
    *v200 = v69;
    v72[1] = v68;
    v73 = v194;
    v74 = v72 + *(v194 + 20);
    v70(v74, v71, v37);
    v75 = *(v73 + 24);
    v62 = v196;
    *(v72 + v75) = MEMORY[0x1E69E7CC0];
    v76 = v190;
    v77 = sub_1DD63C7A8();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    sub_1DD63C798();
    v80 = OUTLINED_FUNCTION_25_21();
    v81 = v199;
    sub_1DD58DB80(v80, v82, v62, v65, v83);
    v84 = v81;
    if (v81)
    {

      goto LABEL_14;
    }

    if (__swift_getEnumTagSinglePayload(v76, 1, v187) == 1)
    {
      sub_1DD390754(v76, &qword_1ECCDC1B8, &unk_1DD65DD40);
      sub_1DD4CF1AC();
      v84 = OUTLINED_FUNCTION_4_42();
      OUTLINED_FUNCTION_7_54(v185, v84, v85);

LABEL_14:
      v86 = v84;
      v87 = sub_1DD63F9D8();
      v88 = sub_1DD640378();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = v84;
        v90 = OUTLINED_FUNCTION_54();
        v91 = OUTLINED_FUNCTION_62();
        a10 = v91;
        *v90 = v186;
        v203 = v89;
        v92 = v89;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
        v93 = sub_1DD63FE38();
        v95 = sub_1DD39565C(v93, v94, &a10);

        *(v90 + 4) = v95;
        v62 = v196;
        _os_log_impl(&dword_1DD38D000, v87, v88, "could not decode RunTimeDataRecord: %s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v91);
        OUTLINED_FUNCTION_0_1();
        v84 = v89;
        OUTLINED_FUNCTION_0_1();
      }

      v37 = v191;
      v96 = v198;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v151 = v202[2];
        OUTLINED_FUNCTION_12();
        sub_1DD3BE2A4();
        v202 = v152;
      }

      v98 = v202[2];
      v97 = v202[3];
      if (v98 >= v97 >> 1)
      {
        OUTLINED_FUNCTION_14_0(v97);
        sub_1DD3BE2A4();
        v202 = v153;
      }

      v99 = v202;
      v202[2] = v98 + 1;
      v100 = &v99[2 * v98];
      v100[4] = v197;
      v100[5] = v96;
      OUTLINED_FUNCTION_2_94();
      sub_1DD58FC88(v200, v101);
    }

    else
    {
      v199 = v74;

      OUTLINED_FUNCTION_1_108();
      sub_1DD58FD40(v76, v184, v102);
      sub_1DD3C0784();
      v104 = v103;
      v106 = *(v103 + 16);
      v105 = *(v103 + 24);
      v107 = v198;
      if (v106 >= v105 >> 1)
      {
        OUTLINED_FUNCTION_14_0(v105);
        sub_1DD3C0784();
        v104 = v154;
      }

      *(v104 + 16) = v106 + 1;
      OUTLINED_FUNCTION_18_3();
      v173[2] = v108;
      v109 = v104 + v108;
      v173[1] = *(v110 + 72);
      OUTLINED_FUNCTION_1_108();
      sub_1DD58FD40(v184, v111, v112);
      *(v200 + v75) = v104;
      v113 = v179[2];
      if (!v113)
      {
        goto LABEL_43;
      }

      v114 = (*(v177 + 80) + 32) & ~*(v177 + 80);
      v115 = *(v177 + 72);
      v116 = v115 * (v113 - 1);
      OUTLINED_FUNCTION_3_78();
      v118 = v183;
      sub_1DD58FCE0(v117 + v116, v183, v119);
      v120 = *v118 == v197 && v107 == v118[1];
      if (!v120 && (sub_1DD640CD8() & 1) == 0)
      {
        OUTLINED_FUNCTION_2_94();
        sub_1DD58FC88(v183, v140);
        v62 = v196;
LABEL_43:
        OUTLINED_FUNCTION_3_78();
        sub_1DD58FCE0(v200, v176, v141);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v155 = v179[2];
          OUTLINED_FUNCTION_12();
          sub_1DD3C06AC();
          v179 = v156;
        }

        v37 = v191;
        v142 = v179;
        v143 = v179[2];
        if (v143 >= v179[3] >> 1)
        {
          sub_1DD3C06AC();
          v142 = v157;
        }

        v142[2] = v143 + 1;
        OUTLINED_FUNCTION_18_3();
        v179 = v144;
        v147 = v144 + v145 + *(v146 + 72) * v143;
        OUTLINED_FUNCTION_3_78();
        sub_1DD58FD40(v176, v148, v149);
        goto LABEL_48;
      }

      v198 = v115;
      v121 = v183 + *(v194 + 20);
      OUTLINED_FUNCTION_4_79();
      sub_1DD58FDA0(&qword_1EE166638, v122);
      v123 = v199;
      v124 = v191;
      if (sub_1DD63FD68())
      {
        v125 = v121;
      }

      else
      {
        v125 = v123;
      }

      (*v175)(v181, v125, v124);
      OUTLINED_FUNCTION_19_33();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v158 = OUTLINED_FUNCTION_19_33();
        sub_1DD586B08(v158);
        v179 = v159;
      }

      if (v113 > v179[2])
      {
        goto LABEL_58;
      }

      v126 = v179 + v114;
      v127 = v179 + v114 + *(v194 + 20) + v116;
      v37 = v191;
      v128 = v179;
      (*v174)(v127, v181, v191);
      if (!*(v104 + 16))
      {
        goto LABEL_59;
      }

      v129 = v128[2];
      OUTLINED_FUNCTION_1_108();
      sub_1DD58FCE0(v109, v180, v130);
      v62 = v196;
      if (!v129)
      {
        goto LABEL_60;
      }

      v131 = v126 + (v129 - 1) * v198;
      v132 = *(v194 + 24);
      v133 = *(v131 + v132);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v131 + v132) = v133;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v160 = *(v133 + 16);
        OUTLINED_FUNCTION_12();
        sub_1DD3C0784();
        v133 = v161;
        *(v131 + v132) = v161;
      }

      v136 = *(v133 + 16);
      v135 = *(v133 + 24);
      if (v136 >= v135 >> 1)
      {
        OUTLINED_FUNCTION_14_0(v135);
        sub_1DD3C0784();
        v133 = v162;
        *(v131 + v132) = v162;
      }

      *(v133 + 16) = v136 + 1;
      OUTLINED_FUNCTION_1_108();
      sub_1DD58FD40(v180, v137, v138);
      OUTLINED_FUNCTION_2_94();
      sub_1DD58FC88(v183, v139);
LABEL_48:
      OUTLINED_FUNCTION_2_94();
      sub_1DD58FC88(v200, v150);
    }
  }

  v163 = 0;
  v164 = v202[2];
  v165 = v202 + 5;
  v166 = v188;
  while (1)
  {
    if (v164 == v163)
    {
      OUTLINED_FUNCTION_32_19();

      OUTLINED_FUNCTION_19_33();
      goto LABEL_55;
    }

    if (v163 >= v202[2])
    {
      break;
    }

    v168 = *(v165 - 1);
    v167 = *v165;
    a10 = v166;

    sub_1DD58E7D8();
    a10 = v166;
    sub_1DD58E684();

    v165 += 2;
    ++v163;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

unint64_t sub_1DD58DB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v35 = a5;
  v10 = sub_1DD63FE28();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1DD59B63C(a1, a2, a3);
  if (v16)
  {

    v18 = sub_1DD59402C(v17);
    sub_1DD4CF1AC();
    swift_allocError();
    *v19 = a1;
    *(v19 + 8) = a2;
    *(v19 + 16) = v18;
    *(v19 + 24) = 1;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (result >= *(a4 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1DD58FB78(a4 + 40 * result + 32, v34);
  sub_1DD58FB78(v34, v32);
  if (!v33)
  {
    sub_1DD390754(v32, &qword_1ECCDCF98, &qword_1DD6547F0);
LABEL_10:
    sub_1DD58FB78(v34, v32);
    if (v33)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
      if (swift_dynamicCast())
      {
        sub_1DD63FE18();
        v24 = sub_1DD63FDE8();
        v26 = v25;
        result = (*(v11 + 8))(v14, v10);
        if (v26 >> 60 != 15)
        {

          v22 = type metadata accessor for RunTimeDataRecord();
          sub_1DD58FDA0(&qword_1EE1623F8, type metadata accessor for RunTimeDataRecord);
          v23 = v35;
          sub_1DD63C788();
          sub_1DD390754(v34, &qword_1ECCDCF98, &qword_1DD6547F0);
          result = sub_1DD3AD77C(v24, v26);
          if (v5)
          {
            return result;
          }

          goto LABEL_14;
        }

LABEL_22:
        __break(1u);
        return result;
      }

      v30 = v34;
    }

    else
    {
      sub_1DD390754(v34, &qword_1ECCDCF98, &qword_1DD6547F0);
      v30 = v32;
    }

    sub_1DD390754(v30, &qword_1ECCDCF98, &qword_1DD6547F0);
    v29 = type metadata accessor for RunTimeDataRecord();
    v27 = v35;
    v28 = 1;
    return __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v20 = v31[0];
  v21 = v31[1];
  v22 = type metadata accessor for RunTimeDataRecord();
  sub_1DD58FDA0(&qword_1EE1623F8, type metadata accessor for RunTimeDataRecord);
  v23 = v35;
  sub_1DD63C788();
  sub_1DD390754(v34, &qword_1ECCDCF98, &qword_1DD6547F0);
  result = sub_1DD3AD790(v20, v21);
  if (v5)
  {
    return result;
  }

LABEL_14:
  v27 = v23;
  v28 = 0;
  v29 = v22;
  return __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
}

void sub_1DD58DF90(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = ceil(sub_1DD63FF08() / a3);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_8;
  }

  v3 = v8;
  if (v8 >= 10)
  {
    v9 = 10;
  }

  else
  {
    v9 = v8;
  }

  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD000000000000023, 0x80000001DD673A60);
  v10 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v10);

  MEMORY[0x1E12B2260](0xD000000000000018, 0x80000001DD673A90);
  v11 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v11);

  MEMORY[0x1E12B2260](0xD00000000000001BLL, 0x80000001DD673AB0);
  v52 = v9;
  v12 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v12);

  v5 = 0;
  v4 = 0xE000000000000000;
  if (qword_1EE165FB0 != -1)
  {
    goto LABEL_29;
  }

LABEL_8:
  v13 = sub_1DD63F9F8();
  __swift_project_value_buffer(v13, qword_1EE16F068);

  v14 = sub_1DD63F9D8();
  v15 = sub_1DD640368();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v53[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1DD39565C(v5, v4, v53);
    _os_log_impl(&dword_1DD38D000, v14, v15, "%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1E12B3DA0](v17, -1, -1);
    MEMORY[0x1E12B3DA0](v16, -1, -1);
  }

  if (v3 < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v18 = 0;
    v19 = 15;
    while (v52 != v18)
    {
      if (v52 - 1 == v18)
      {
        v34 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v34 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (4 * v34 >= v19 >> 14)
        {
          v35 = sub_1DD640058();
          v37 = v36;
          v39 = v38;
          v41 = v40;
          v53[0] = 0;
          v53[1] = 0xE000000000000000;
          sub_1DD6408D8();

          strcpy(v53, "RECORD_JSON[");
          BYTE5(v53[1]) = 0;
          HIWORD(v53[1]) = -5120;
          v42 = sub_1DD640CB8();
          MEMORY[0x1E12B2260](v42);

          MEMORY[0x1E12B2260](2112093, 0xE300000000000000);
          v43 = MEMORY[0x1E12B2190](v35, v37, v39, v41);
          v45 = v44;

          MEMORY[0x1E12B2260](v43, v45);

          v47 = v53[0];
          v46 = v53[1];

          v48 = sub_1DD63F9D8();
          v49 = sub_1DD640368();

          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v53[0] = v51;
            *v50 = 136315138;
            *(v50 + 4) = sub_1DD39565C(v47, v46, v53);
            _os_log_impl(&dword_1DD38D000, v48, v49, "%s", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v51);
            MEMORY[0x1E12B3DA0](v51, -1, -1);
            MEMORY[0x1E12B3DA0](v50, -1, -1);
          }

          return;
        }

        goto LABEL_31;
      }

      v20 = sub_1DD63FF38();
      if (v20 >> 14 < v19 >> 14)
      {
        __break(1u);
        goto LABEL_26;
      }

      v21 = v20;
      v22 = sub_1DD640058();
      v24 = v23;
      v26 = v25;
      v3 = v27;
      v53[0] = 0;
      v53[1] = 0xE000000000000000;
      sub_1DD6408D8();

      strcpy(v53, "RECORD_JSON[");
      BYTE5(v53[1]) = 0;
      HIWORD(v53[1]) = -5120;
      v28 = sub_1DD640CB8();
      MEMORY[0x1E12B2260](v28);

      MEMORY[0x1E12B2260](2112093, 0xE300000000000000);
      v29 = MEMORY[0x1E12B2190](v22, v24, v26, v3);
      v5 = v30;

      MEMORY[0x1E12B2260](v29, v5);

      v32 = v53[0];
      v31 = v53[1];

      v33 = sub_1DD63F9D8();
      v4 = sub_1DD640368();

      if (os_log_type_enabled(v33, v4))
      {
        v3 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v53[0] = v5;
        *v3 = 136315138;
        *(v3 + 4) = sub_1DD39565C(v32, v31, v53);
        _os_log_impl(&dword_1DD38D000, v33, v4, "%s", v3, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v5);
        MEMORY[0x1E12B3DA0](v5, -1, -1);
        MEMORY[0x1E12B3DA0](v3, -1, -1);
      }

      ++v18;
      v19 = v21;
    }
  }
}

uint64_t sub_1DD58E684()
{
  OUTLINED_FUNCTION_8_59();
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F068);
  OUTLINED_FUNCTION_31_21();

  v3 = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_36_15();
  if (OUTLINED_FUNCTION_35_15())
  {
    OUTLINED_FUNCTION_54();
    v4 = OUTLINED_FUNCTION_13_44();
    *(v1 + 4) = OUTLINED_FUNCTION_20_31(4.8149e-34, v4, v5, v6, v7, v8, v9, v10, v11, v4);
    OUTLINED_FUNCTION_14_39(&dword_1DD38D000, v12, v13, "deleting contact runtime data. taskId=%s");
    OUTLINED_FUNCTION_10_50();
    OUTLINED_FUNCTION_13_36();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  OUTLINED_FUNCTION_16_43(inited, MEMORY[0x1E69E6158]);

  OUTLINED_FUNCTION_21_30(47, 0x80000001DD673C80);
  if (!v0)
  {
  }

  swift_setDeallocating();
  return sub_1DD46CB4C();
}

uint64_t sub_1DD58E7D8()
{
  OUTLINED_FUNCTION_8_59();
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F068);
  OUTLINED_FUNCTION_31_21();

  v3 = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_36_15();
  if (OUTLINED_FUNCTION_35_15())
  {
    OUTLINED_FUNCTION_54();
    v4 = OUTLINED_FUNCTION_13_44();
    *(v1 + 4) = OUTLINED_FUNCTION_20_31(4.8149e-34, v4, v5, v6, v7, v8, v9, v10, v11, v4);
    OUTLINED_FUNCTION_14_39(&dword_1DD38D000, v12, v13, "marking contact runtime data as processed. taskId=%s");
    OUTLINED_FUNCTION_10_50();
    OUTLINED_FUNCTION_13_36();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  OUTLINED_FUNCTION_16_43(inited, MEMORY[0x1E69E6158]);

  OUTLINED_FUNCTION_21_30(106, 0x80000001DD673C10);
  if (!v0)
  {
  }

  swift_setDeallocating();
  return sub_1DD46CB4C();
}

void sub_1DD58E92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_1DD63D078();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2();
  v34 = v33 - v32;
  v54 = *v20;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v35 = sub_1DD63F9F8();
  __swift_project_value_buffer(v35, qword_1EE16F068);
  (*(v29 + 16))(v34, v25, v26);
  v36 = sub_1DD63F9D8();
  v37 = sub_1DD640368();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_54();
    v39 = OUTLINED_FUNCTION_62();
    a10 = v39;
    *v38 = 136315138;
    OUTLINED_FUNCTION_4_79();
    sub_1DD58FDA0(v40, v41);
    v42 = sub_1DD640CB8();
    v44 = v43;
    (*(v29 + 8))(v34, v26);
    v45 = sub_1DD39565C(v42, v44, &a10);

    *(v38 + 4) = v45;
    _os_log_impl(&dword_1DD38D000, v36, v37, "runtime data db deleting records older than %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    (*(v29 + 8))(v34, v26);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  v47 = sub_1DD4C1B10();
  v48 = MEMORY[0x1E69E7360];
  *(inited + 56) = MEMORY[0x1E69E7360];
  *(inited + 64) = &off_1F58C4E70;
  *(inited + 32) = v47;
  sub_1DD4061B8(0xD00000000000009BLL, 0x80000001DD6738E0, inited);
  if (v21)
  {
    swift_setDeallocating();
    sub_1DD46CB4C();
  }

  else
  {

    swift_setDeallocating();
    sub_1DD46CB4C();
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_1DD643F90;
    v50 = sub_1DD4C1B10();
    *(v49 + 56) = v48;
    *(v49 + 64) = &off_1F58C4E70;
    *(v49 + 32) = v50;
    sub_1DD4061B8(0xD000000000000033, 0x80000001DD673980, v49);

    swift_setDeallocating();
    sub_1DD46CB4C();
    v51 = sub_1DD63F9D8();
    v52 = sub_1DD640368();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1DD38D000, v51, v52, "runtime data db finished deleting records", v53, 2u);
      OUTLINED_FUNCTION_0_1();
    }
  }

  OUTLINED_FUNCTION_86();
}

void sub_1DD58ECF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_1DD63D078();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2();
  v33 = v32 - v31;
  v46 = *v20;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v34 = sub_1DD63F9F8();
  __swift_project_value_buffer(v34, qword_1EE16F068);
  (*(v28 + 16))(v33, v24, v25);
  v35 = sub_1DD63F9D8();
  v36 = sub_1DD640368();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_54();
    v45 = OUTLINED_FUNCTION_62();
    a10 = v45;
    *v37 = 136315138;
    OUTLINED_FUNCTION_4_79();
    sub_1DD58FDA0(v38, v39);
    v40 = sub_1DD640CB8();
    v42 = v41;
    (*(v28 + 8))(v33, v25);
    sub_1DD39565C(v40, v42, &a10);
    OUTLINED_FUNCTION_31_21();

    *(v37 + 4) = v40;
    _os_log_impl(&dword_1DD38D000, v35, v36, "fetching runtime data db taskIds older than %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    (*(v28 + 8))(v33, v25);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  v44 = sub_1DD4C1B10();
  *(inited + 56) = MEMORY[0x1E69E7360];
  *(inited + 64) = &off_1F58C4E70;
  *(inited + 32) = v44;
  sub_1DD5804E4(0xD00000000000004ALL, 0x80000001DD6739C0, inited);
  swift_setDeallocating();
  sub_1DD46CB4C();
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD58EFAC(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1DD63FE28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  sub_1DD63FE18();
  v12 = sub_1DD63FDE8();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  if (v14 >> 60 == 15)
  {
    type metadata accessor for InferenceError();
    swift_allocObject();
    v15 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000082, 0x80000001DD673B50, 0xD000000000000014, 0x80000001DD673DB0, 135, MEMORY[0x1E69E7CC0], 2);
    v16 = *(v15 + 32);
    *(v15 + 24) = 0;
    *(v15 + 32) = 0xE000000000000000;

    sub_1DD58FDA0(&qword_1EE1663F0, type metadata accessor for InferenceError);
    v17 = swift_allocError();
    *v18 = v15;
    result = swift_willThrow();
  }

  else
  {
    v20 = sub_1DD63C7A8();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_1DD63C798();
    type metadata accessor for RunTimeDataRecord();
    sub_1DD58FDA0(&qword_1EE1623F8, type metadata accessor for RunTimeDataRecord);
    sub_1DD63C788();
    v17 = v2;

    result = sub_1DD3AD77C(v12, v14);
    if (!v2)
    {
      return result;
    }
  }

  *a2 = v17;
  return result;
}

uint64_t sub_1DD58F25C(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1DD63FE28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  sub_1DD63FE18();
  v12 = sub_1DD63FDE8();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  if (v14 >> 60 == 15)
  {
    type metadata accessor for InferenceError();
    swift_allocObject();
    v15 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000082, 0x80000001DD673B50, 0xD000000000000025, 0x80000001DD673BE0, 158, MEMORY[0x1E69E7CC0], 2);
    v16 = *(v15 + 32);
    *(v15 + 24) = 0;
    *(v15 + 32) = 0xE000000000000000;

    sub_1DD58FDA0(&qword_1EE1663F0, type metadata accessor for InferenceError);
    v17 = swift_allocError();
    *v18 = v15;
    result = swift_willThrow();
  }

  else
  {
    v20 = sub_1DD63C7A8();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_1DD63C798();
    sub_1DD58FBE8();
    sub_1DD63C788();
    v17 = v2;

    result = sub_1DD3AD77C(v12, v14);
    if (!v2)
    {
      return result;
    }
  }

  *a2 = v17;
  return result;
}

uint64_t sub_1DD58F4D4(unint64_t a1)
{
  v4 = v2;
  v86 = *v1;
  if (a1 >> 62)
  {
    result = sub_1DD6407B8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    v85 = "findRecords(taskId:)";
    v7 = &selRef_setUnderlyingQueue_;
    v83 = xmmword_1DD643F80;
    v88 = result;
    do
    {
      v90 = v6;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E12B2C10](v6, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v10 = sub_1DD63F9F8();
      __swift_project_value_buffer(v10, qword_1EE16F068);
      v11 = v9;
      v12 = sub_1DD63F9D8();
      v13 = sub_1DD640368();

      if (os_log_type_enabled(v12, v13))
      {
        OUTLINED_FUNCTION_54();
        v14 = OUTLINED_FUNCTION_13_44();
        v23 = [v11 toJSON];
        v87 = v11;
        v24 = v23;
        v25 = v4;
        v26 = sub_1DD63FDD8();
        v28 = v27;

        v29 = v26;
        v4 = v25;
        v30 = sub_1DD39565C(v29, v28, &v91);

        *(inited + 4) = v30;
        v11 = v87;
        OUTLINED_FUNCTION_30_18(&dword_1DD38D000, v12, v13, "evaluationResults: %s");
        __swift_destroy_boxed_opaque_existential_1(v14);
        v7 = &selRef_setUnderlyingQueue_;
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_13_36();
      }

      v31 = v11;
      v32 = [v31 v7[414]];
      v33 = sub_1DD63FDD8();
      inited = v34;

      [v31 isSuccessfulTask];
      v35 = sub_1DD632BE0(v33);
      v37 = v4;
      if (v4)
      {

        v4 = 0;
        v45 = v31;
        v46 = sub_1DD63F9D8();
        v47 = sub_1DD640378();

        if (os_log_type_enabled(v46, v47))
        {
          OUTLINED_FUNCTION_54();
          v48 = OUTLINED_FUNCTION_13_44();
          v57 = [v45 v7[414]];
          v87 = 0;
          v58 = v57;
          v59 = sub_1DD63FDD8();
          v61 = v60;

          v62 = v59;
          v7 = &selRef_setUnderlyingQueue_;
          v63 = sub_1DD39565C(v62, v61, &v91);

          *(inited + 4) = v63;
          v4 = 0;
          OUTLINED_FUNCTION_30_18(&dword_1DD38D000, v46, v47, "Fail to log SiriTasksEvaluation runtime data. taskId=%s");
          __swift_destroy_boxed_opaque_existential_1(v48);
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_13_36();
        }

        else
        {
        }
      }

      else
      {
        v38 = v35;
        v39 = v36;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
        inited = swift_initStackObject();
        *(inited + 16) = v83;
        v40 = [v31 v7[414]];
        v41 = sub_1DD63FDD8();
        v43 = v42;

        v44 = MEMORY[0x1E69E6158];
        *(inited + 56) = MEMORY[0x1E69E6158];
        *(inited + 64) = &off_1F58C4E78;
        *(inited + 72) = v38;
        *(inited + 32) = v41;
        *(inited + 40) = v43;
        *(inited + 96) = v44;
        *(inited + 104) = &off_1F58C4E78;
        *(inited + 80) = v39;
        sub_1DD4061B8(0xD00000000000007CLL, v85 | 0x8000000000000000, inited);
        v4 = 0;

        swift_setDeallocating();
        sub_1DD46CB4C();
        v64 = v31;
        v65 = sub_1DD63F9D8();
        v66 = sub_1DD640368();

        if (os_log_type_enabled(v65, v66))
        {
          OUTLINED_FUNCTION_54();
          v67 = OUTLINED_FUNCTION_13_44();
          v76 = [v64 taskId];
          v87 = 0;
          v77 = v76;
          v78 = sub_1DD63FDD8();
          v80 = v79;

          v81 = v78;
          v7 = &selRef_setUnderlyingQueue_;
          v82 = sub_1DD39565C(v81, v80, &v91);

          *(inited + 4) = v82;
          v4 = 0;
          OUTLINED_FUNCTION_30_18(&dword_1DD38D000, v65, v66, "Logging SiriTasksEvaluation runtime data. taskId=%s");
          __swift_destroy_boxed_opaque_existential_1(v67);
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_13_36();
        }

        else
        {

          v7 = &selRef_setUnderlyingQueue_;
        }
      }

      v6 = v90 + 1;
      result = v88;
    }

    while (v88 != v90 + 1);
  }

  return result;
}

uint64_t sub_1DD58FA18()
{
  v0 = sub_1DD640AA8();

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

unint64_t sub_1DD58FA6C(char a1)
{
  if (a1)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1DD58FAC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD58FA18();
  *a2 = result;
  return result;
}

unint64_t sub_1DD58FAF8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DD58FA6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD58FB24()
{
  result = qword_1EE161760;
  if (!qword_1EE161760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE161760);
  }

  return result;
}

uint64_t sub_1DD58FB78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD58FBE8()
{
  result = qword_1EE163478;
  if (!qword_1EE163478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163478);
  }

  return result;
}

uint64_t type metadata accessor for UnstitchedTask()
{
  result = qword_1EE162E28;
  if (!qword_1EE162E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD58FC88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD58FCE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD58FD40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DD58FDA0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for RunTimeDataLoggerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1DD58FEEC()
{
  sub_1DD63D078();
  if (v0 <= 0x3F)
  {
    sub_1DD3E7EF0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1DD58FF90(uint64_t a1)
{
  result = sub_1DD58FB24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD58FFBC()
{
  result = qword_1ECCDF120;
  if (!qword_1ECCDF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF120);
  }

  return result;
}

void OUTLINED_FUNCTION_10_50()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1E12B3DA0);
}

uint64_t OUTLINED_FUNCTION_13_44()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_14_39(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

__n128 OUTLINED_FUNCTION_29_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  *(v16 - 72) = a1;
  result = a15;
  *v15 = a15.n128_u32[0];
  return result;
}

void OUTLINED_FUNCTION_30_18(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_32_19()
{
  v2 = *(v0 - 312);
}

BOOL OUTLINED_FUNCTION_35_15()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_36_15()
{
}

uint64_t type metadata accessor for RunTimeDataRecord()
{
  result = qword_1EE166028;
  if (!qword_1EE166028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD590194()
{
  type metadata accessor for PrivatizedContactResolverConfig(319);
  if (v0 <= 0x3F)
  {
    sub_1DD590240();
    if (v1 <= 0x3F)
    {
      sub_1DD63D078();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD590240()
{
  if (!qword_1EE163920)
  {
    type metadata accessor for ContactResolverRunTimeData(255);
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE163920);
    }
  }
}

uint64_t sub_1DD590298(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265766C6F736572 && a2 == 0xEC000000656D614ELL;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6769666E6F63 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x44656D69546E7572 && a2 == 0xEB00000000617461;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1702125924 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

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

uint64_t sub_1DD5903F4(char a1)
{
  result = 0x7265766C6F736572;
  switch(a1)
  {
    case 1:
      result = 0x6769666E6F63;
      break;
    case 2:
      result = 0x44656D69546E7572;
      break;
    case 3:
      result = 1702125924;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD59047C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF138, &qword_1DD65DF28);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v24[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD590C5C();
  sub_1DD640EF8();
  v14 = *v3;
  v15 = v3[1];
  v27 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v16 = type metadata accessor for RunTimeDataRecord();
    v17 = v16[5];
    v26 = 1;
    type metadata accessor for PrivatizedContactResolverConfig(0);
    OUTLINED_FUNCTION_0_127();
    sub_1DD590E08(v18, v19);
    OUTLINED_FUNCTION_4_80();
    v25 = *(v3 + v16[6]);
    v24[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF130, &qword_1DD65DF20);
    sub_1DD590D6C(&qword_1EE1602C0, &qword_1EE163E00);
    OUTLINED_FUNCTION_4_80();
    v20 = v16[7];
    v24[14] = 3;
    sub_1DD63D078();
    OUTLINED_FUNCTION_1_109();
    sub_1DD590E08(v21, v22);
    OUTLINED_FUNCTION_4_80();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1DD5906E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = sub_1DD63D078();
  v3 = OUTLINED_FUNCTION_0(v46);
  v44 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v47 = v8 - v7;
  v9 = type metadata accessor for PrivatizedContactResolverConfig(0);
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF128, &qword_1DD65DF18);
  v17 = OUTLINED_FUNCTION_0(v16);
  v48 = v18;
  v49 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = v43 - v21;
  v23 = type metadata accessor for RunTimeDataRecord();
  v24 = OUTLINED_FUNCTION_7(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v29 = (v28 - v27);
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD590C5C();
  v50 = v22;
  v31 = v51;
  sub_1DD640ED8();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v51 = a1;
  v56 = 0;
  *v29 = sub_1DD640B28();
  v29[1] = v32;
  v43[2] = v32;
  v55 = 1;
  OUTLINED_FUNCTION_0_127();
  sub_1DD590E08(v33, v34);
  sub_1DD640B78();
  sub_1DD45A994(v15, v29 + v23[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF130, &qword_1DD65DF20);
  v54 = 2;
  sub_1DD590D6C(&qword_1EE1602B8, &qword_1EE1613A0);
  v43[1] = 0;
  sub_1DD640B78();
  v35 = v51;
  *(v29 + v23[6]) = v52;
  v53 = 3;
  OUTLINED_FUNCTION_1_109();
  sub_1DD590E08(v36, v37);
  v38 = v46;
  v39 = v47;
  sub_1DD640B78();
  v40 = OUTLINED_FUNCTION_2_95();
  v41(v40);
  (*(v44 + 32))(v29 + v23[7], v39, v38);
  sub_1DD590CB0(v29, v45);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return sub_1DD590D14(v29, type metadata accessor for RunTimeDataRecord);
}

uint64_t sub_1DD590B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD590298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD590BB4(uint64_t a1)
{
  v2 = sub_1DD590C5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD590BF0(uint64_t a1)
{
  v2 = sub_1DD590C5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD590C5C()
{
  result = qword_1EE165508;
  if (!qword_1EE165508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165508);
  }

  return result;
}

uint64_t sub_1DD590CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunTimeDataRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD590D14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD590D6C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF130, &qword_1DD65DF20);
    sub_1DD590E08(a2, type metadata accessor for ContactResolverRunTimeData);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD590E08(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for RunTimeDataRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD590F30()
{
  result = qword_1ECCDF140;
  if (!qword_1ECCDF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF140);
  }

  return result;
}

unint64_t sub_1DD590F88()
{
  result = qword_1EE1654F8;
  if (!qword_1EE1654F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1654F8);
  }

  return result;
}

unint64_t sub_1DD590FE0()
{
  result = qword_1EE165500;
  if (!qword_1EE165500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165500);
  }

  return result;
}

uint64_t sub_1DD591040()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1DD6408F8();
  sub_1DD636E14(v2, v3, v0, ObjectType);
}

uint64_t sub_1DD5910C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v16[1] = a2;
  v19 = sub_1DD63F9C8();
  v2 = OUTLINED_FUNCTION_0(v19);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD643F90;
  v11 = sub_1DD6408F8();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1DD392BD8();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  OUTLINED_FUNCTION_5_1();
  sub_1DD63F998();

  v14 = v18;
  sub_1DD591310(v17);
  if (v14)
  {

    sub_1DD6404C8();
    OUTLINED_FUNCTION_5_1();
    sub_1DD63F9A8();
    result = (*(v4 + 8))(v8, v19);
    __break(1u);
  }

  else
  {
    sub_1DD6404C8();
    OUTLINED_FUNCTION_5_1();
    sub_1DD63F9A8();
    return (*(v4 + 8))(v8, v19);
  }

  return result;
}

void sub_1DD591310(uint64_t a1)
{
  sub_1DD591468();
  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDED50, &qword_1DD65C1A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001DD673E80;
  v6 = *(a1 + OBJC_IVAR____TtC13SiriInference17ScrubDodMLRecords_numDeletedRecords);
  *(inited + 48) = sub_1DD6402C8();
  sub_1DD5210EC();
  v7 = sub_1DD63FC88();
  sub_1DD4FC360(v7);
  v9 = v8;

  sub_1DD50DFDC(v4, v1 != 0, v9);

  sub_1DD39A630(v4, v1 != 0);
}

uint64_t sub_1DD591468()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v33 - v4;
  v6 = sub_1DD63D078();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v17 = sub_1DD63F9F8();
  v36 = __swift_project_value_buffer(v17, qword_1EE16F068);
  v18 = sub_1DD63F9D8();
  v19 = sub_1DD640368();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v6;
    v21 = v13;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DD38D000, v18, v19, "scrubbing des records", v22, 2u);
    v23 = v22;
    v13 = v21;
    v6 = v20;
    v1 = v0;
    MEMORY[0x1E12B3DA0](v23, -1, -1);
  }

  sub_1DD63CFE8();
  sub_1DD477B9C(v5);
  if (v1)
  {
    return (*(v9 + 8))(v16, v6);
  }

  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    (*(v9 + 8))(v16, v6);
    return sub_1DD4AF0C8(v5);
  }

  else
  {
    (*(v9 + 32))(v13, v5, v6);
    v25 = sub_1DD4AF680();
    sub_1DD4AFFD4(v13, v25);
    v26 = v37;
    v34 = OBJC_IVAR____TtC13SiriInference17ScrubDodMLRecords_numDeletedRecords;
    *&v37[OBJC_IVAR____TtC13SiriInference17ScrubDodMLRecords_numDeletedRecords] = v27;
    v35 = v26;
    v28 = sub_1DD63F9D8();
    LODWORD(v36) = sub_1DD640368();
    if (os_log_type_enabled(v28, v36))
    {
      v29 = swift_slowAlloc();
      v33 = v13;
      v30 = v29;
      *v29 = 134217984;
      *(v29 + 4) = *&v26[v34];

      _os_log_impl(&dword_1DD38D000, v28, v36, "scrubbed %ld DES records due to tombstone event", v30, 0xCu);
      v31 = v30;
      v13 = v33;
      MEMORY[0x1E12B3DA0](v31, -1, -1);
    }

    else
    {
    }

    v32 = *(v9 + 8);
    v32(v13, v6);
    return (v32)(v16, v6);
  }
}

id ScrubDodMLRecords.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScrubDodMLRecords.init()()
{
  *&v0[OBJC_IVAR____TtC13SiriInference17ScrubDodMLRecords_numDeletedRecords] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrubDodMLRecords();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *ScrubDodMLRecords.__allocating_init(activity:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13SiriInference17ScrubDodMLRecords_numDeletedRecords] = 0;
  return XPCActivityOperation.init(activity:)(a1);
}

id ScrubDodMLRecords.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrubDodMLRecords();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DD5919A8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v26[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v26 - v6);
  v8 = sub_1DD63CE68();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_4();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v26 - v18;
  if (qword_1EE166420 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v4, qword_1EE166408);
  swift_beginAccess();
  sub_1DD3CDD14(v20, v7, &qword_1ECCDCCA0, &qword_1DD64AED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26[5] = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    return swift_willThrowTypedImpl();
  }

  else
  {
    (*(v11 + 32))(v19, v7, v8);
    (*(v11 + 16))(v16, v19, v8);
    v22 = sub_1DD5CF3F4(v16, a1 & 1, &unk_1F58AAF08);
    if (v2)
    {
      v23 = *(v11 + 8);
      v23(v16, v8);
      return (v23)(v19, v8);
    }

    else
    {
      v24 = v22;
      v25 = *(v11 + 8);
      v25(v16, v8);
      result = (v25)(v19, v8);
      *v26[0] = v24;
    }
  }

  return result;
}

uint64_t sub_1DD591C60()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1DD6408F8();
  sub_1DD636E40(v2, v3, v0, ObjectType);
}

uint64_t sub_1DD591CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v16[1] = a2;
  v19 = sub_1DD63F9C8();
  v2 = OUTLINED_FUNCTION_0(v19);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD643F90;
  v11 = sub_1DD6408F8();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1DD392BD8();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  OUTLINED_FUNCTION_1_110();
  sub_1DD63F998();

  v14 = v18;
  sub_1DD591F30(v17);
  if (v14)
  {

    sub_1DD6404C8();
    OUTLINED_FUNCTION_1_110();
    sub_1DD63F9A8();
    result = (*(v4 + 8))(v8, v19);
    __break(1u);
  }

  else
  {
    sub_1DD6404C8();
    OUTLINED_FUNCTION_1_110();
    sub_1DD63F9A8();
    return (*(v4 + 8))(v8, v19);
  }

  return result;
}

void sub_1DD591F30(uint64_t a1)
{
  sub_1DD5920C0();
  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDED50, &qword_1DD65C1A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F80;
  strcpy((inited + 32), "expiredRecords");
  *(inited + 47) = -18;
  v6 = *(a1 + OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_expiredRecords);
  *(inited + 48) = sub_1DD6402C8();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x80000001DD673EE0;
  v7 = *(a1 + OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_tombstonedRecords);
  *(inited + 72) = sub_1DD6402C8();
  sub_1DD5210EC();
  v8 = sub_1DD63FC88();
  sub_1DD4FC360(v8);
  v10 = v9;

  sub_1DD50DFE8(v4, v1 != 0, v10);

  sub_1DD39A630(v4, v1 != 0);
}

void sub_1DD5920C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_1_4();
  v68 = (v4 - v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - v7;
  v9 = sub_1DD63D078();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v63 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - v22;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1DD63F9F8();
  v66 = __swift_project_value_buffer(v24, qword_1EE16F068);
  v25 = sub_1DD63F9D8();
  v26 = sub_1DD640368();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v65 = v23;
    v28 = v17;
    v29 = v20;
    v30 = v12;
    v31 = v9;
    v32 = v8;
    v33 = v27;
    *v27 = 0;
    _os_log_impl(&dword_1DD38D000, v25, v26, "scrubbing runtime data records", v27, 2u);
    v34 = v33;
    v8 = v32;
    v9 = v31;
    v12 = v30;
    v20 = v29;
    v17 = v28;
    v1 = v0;
    v23 = v65;
    MEMORY[0x1E12B3DA0](v34, -1, -1);
  }

  sub_1DD63CFE8();
  sub_1DD477B9C(v8);
  if (v1)
  {
    (*(v12 + 8))(v23, v9);
    return;
  }

  sub_1DD5919A8(0, &v70);
  v35 = v70;
  v36 = v68;
  sub_1DD3CDD14(v8, v68, &qword_1ECCDEBC0, &qword_1DD6445A0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v9);
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD63CF58();
    if (__swift_getEnumTagSinglePayload(v36, 1, v9) != 1)
    {
      sub_1DD4AF0C8(v36);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v36, v9);
  }

  sub_1DD5927BC();
  if (sub_1DD63FD78())
  {
    (*(v12 + 32))(v20, v17, v9);
  }

  else
  {
    (*(v12 + 8))(v17, v9);
    (*(v12 + 16))(v20, v23, v9);
  }

  sub_1DD58ECF0(v20, v38, v39, v40, v41, v42, v43, v44, v63, v64, v65, v66, v67, v68, v69, v35, v71, v72, v73, v74);
  sub_1DD58E92C(v20, v45, v46, v47, v48, v49, v50, v51, v63, v64, v65, v66, v67, v68, v69, v35, v71, v72, v73, v74);
  v68 = v8;
  v52 = sub_1DD63D028();
  v64 = v20;
  if (v52)
  {
    OUTLINED_FUNCTION_4_81(OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_expiredRecords);
    if (!v56)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_4_81(OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_tombstonedRecords);
  if (v56)
  {
    __break(1u);
    return;
  }

LABEL_20:
  *v53 = v54;
  v57 = v55;
  v58 = sub_1DD63F9D8();
  v59 = sub_1DD640368();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v67 = v35;
    v61 = v60;
    *v60 = 134218240;
    *(v60 + 4) = *&v57[OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_expiredRecords];

    *(v61 + 12) = 2048;
    *(v61 + 14) = *&v57[OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_tombstonedRecords];

    _os_log_impl(&dword_1DD38D000, v58, v59, "Scrubbed %ld expired records and %ld records due to tombstoned event", v61, 0x16u);
    MEMORY[0x1E12B3DA0](v61, -1, -1);
  }

  else
  {
  }

  v62 = *(v12 + 8);
  v62(v64, v9);
  sub_1DD4AF0C8(v68);
  v62(v23, v9);
}

id ScrubRuntimeDataRecords.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScrubRuntimeDataRecords.init()()
{
  *&v0[OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_expiredRecords] = 0;
  *&v0[OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_tombstonedRecords] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrubRuntimeDataRecords();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *ScrubRuntimeDataRecords.__allocating_init(activity:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_expiredRecords] = 0;
  *&v3[OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_tombstonedRecords] = 0;
  return XPCActivityOperation.init(activity:)(a1);
}

char *ScrubRuntimeDataRecords.init(activity:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_expiredRecords) = 0;
  *(v1 + OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_tombstonedRecords) = 0;
  return XPCActivityOperation.init(activity:)(a1);
}

id ScrubRuntimeDataRecords.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrubRuntimeDataRecords();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1DD5927BC()
{
  result = qword_1EE166638;
  if (!qword_1EE166638)
  {
    sub_1DD63D078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE166638);
  }

  return result;
}

uint64_t static SearchResultsAppRanker.rank(searchTerm:maxResults:excludeAppBundleIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 112) = a4;
  *(v6 + 120) = a6;
  *(v6 + 160) = a5;
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  *(v6 + 88) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF160, &qword_1DD65E118);
  *(v6 + 128) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF168, &qword_1DD65E120);
  *(v6 + 144) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD592908, 0, 0);
}

uint64_t sub_1DD592908()
{
  v1 = v0[18];
  v32 = v1;
  v33 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = *(v0 + 160);
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = swift_allocBox();
  v10 = v9;
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v1);
  v11 = sub_1DD5B1470(0, sub_1DD592BC0, 0);
  v12 = sub_1DD63FDA8();
  if (v4)
  {
    v13 = -1;
  }

  else
  {
    v13 = v5;
  }

  v14 = sub_1DD640258();
  v0[6] = sub_1DD592E94;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DD592E9C;
  v0[5] = &block_descriptor_15;
  v15 = _Block_copy(v0 + 2);
  v16 = v0[7];

  [v11 rankAppsForSearchTermWithSearchTerm:v12 maxResults:v13 excludeAppBundleIds:v14 completionHandler:v15];
  _Block_release(v15);

  swift_beginAccess();
  sub_1DD592FD8(v10, v33);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v32);
  v18 = v0[19];
  if (EnumTagSinglePayload == 1)
  {
    v20 = v0[17];
    v19 = v0[18];
    v21 = *(v19 + 48);
    *v18 = MEMORY[0x1E69E7CC0];
    sub_1DD63D0E8();
    swift_unknownObjectRelease();
    if (__swift_getEnumTagSinglePayload(v20, 1, v19) != 1)
    {
      sub_1DD593048(v0[17]);
    }
  }

  else
  {
    v22 = v0[17];
    swift_unknownObjectRelease();
    sub_1DD5930B0(v22, v18);
  }

  v23 = v0[19];
  v24 = v0[17];
  v25 = v0[11];
  v26 = *v23;
  v27 = *(v0[18] + 48);
  v28 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_7(v28);
  (*(v29 + 32))(v25, &v23[v27]);

  v30 = v0[1];

  return v30(v26);
}

void sub_1DD592BC0(void *a1)
{
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F0C8);
  v3 = a1;
  oslog = sub_1DD63F9D8();
  v4 = sub_1DD640378();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    v8 = sub_1DD63FE38();
    v10 = sub_1DD39565C(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DD38D000, oslog, v4, "SearchResultsAppRanker rank XPC error, %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E12B3DA0](v6, -1, -1);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DD592D64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF160, &qword_1DD65E118);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = swift_projectBox();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF168, &qword_1DD65E120);
  v10 = *(v9 + 48);
  *v7 = a1;
  v11 = sub_1DD63D0F8();
  (*(*(v11 - 8) + 16))(&v7[v10], a2, v11);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  swift_beginAccess();

  return sub_1DD59385C(v7, v8);
}

uint64_t sub_1DD592E9C(uint64_t a1)
{
  v2 = sub_1DD63D0F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = sub_1DD640118();
  sub_1DD63D0D8();

  v8(v9, v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD592FD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF160, &qword_1DD65E118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD593048(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF160, &qword_1DD65E118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD5930B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF168, &qword_1DD65E120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SearchResultsAppRanker.rank(searchTerm:maxResults:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF168, &qword_1DD65E120);
  v4[2] = v9;
  OUTLINED_FUNCTION_7(v9);
  v11 = *(v10 + 64) + 15;
  v4[3] = swift_task_alloc();
  v12 = swift_task_alloc();
  v4[4] = v12;
  v13 = *(v9 + 48);
  v14 = swift_task_alloc();
  v4[5] = v14;
  *v14 = v4;
  v14[1] = sub_1DD59323C;
  v15 = MEMORY[0x1E69E7CD0];

  return static SearchResultsAppRanker.rank(searchTerm:maxResults:excludeAppBundleIds:)(v12 + v13, a1, a2, a3, a4 & 1, v15);
}

uint64_t sub_1DD59323C(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD59333C, 0, 0);
}

uint64_t sub_1DD59333C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  *v2 = v0[6];
  sub_1DD5930B0(v2, v1);
  v4 = *v1;
  v5 = *(v3 + 48);
  v6 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_7(v6);
  (*(v7 + 8))(&v1[v5]);

  v8 = v0[1];

  return v8(v4);
}

void static SearchResultsAppRanker.appSelected(rankEventId:selectedAppBundleId:numberOfAppsShown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 1;

  v6 = sub_1DD5B1470(0, sub_1DD5937A8, v5);

  swift_beginAccess();
  v7 = *(v5 + 16);

  if (v7)
  {
    v8 = sub_1DD63D0B8();
    v9 = sub_1DD63FDA8();
    [v6 appSelectedForSearchTermWithRankEventId:v8 selectedAppBundleId:v9 numberOfAppsShown:a4];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void static SearchResultsAppRanker.appSelected(searchTerm:appBundleId:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;

  v1 = sub_1DD5B1470(0, sub_1DD5938CC, v0);

  swift_beginAccess();
  v2 = *(v0 + 16);

  if (v2)
  {
    v3 = sub_1DD63FDA8();
    [v1 appSelectedForSearchTermWithRankEventId:0 selectedAppBundleId:v3 numberOfAppsShown:-1];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1DD593610(void *a1, uint64_t a2)
{
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD63F9F8();
  __swift_project_value_buffer(v4, qword_1EE16F0C8);
  v5 = a1;
  v6 = sub_1DD63F9D8();
  v7 = sub_1DD640378();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    v11 = sub_1DD63FE38();
    v13 = sub_1DD39565C(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DD38D000, v6, v7, "SearchResultsAppRanker createXpc XPC error, %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12B3DA0](v9, -1, -1);
    MEMORY[0x1E12B3DA0](v8, -1, -1);
  }

  result = swift_beginAccess();
  *(a2 + 16) = 0;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchResultsAppRanker(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD59385C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF160, &qword_1DD65E118);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD5938D0(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC7C8(v6);
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_1DD599154(v10, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_1DD593954(uint64_t (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = sub_1DD63D078();
  v17 = *(v16 - 8);
  v18 = v17[8];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v42 - v23;
  v25 = a1(v22);
  sub_1DD63D068();
  sub_1DD63CF98();
  v47 = v17[1];
  v48 = v17 + 1;
  v47(v20, v16);
  v26 = v17[2];
  v49 = v24;
  v26(v15, v24, v16);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v16);
  v27 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v28 = sub_1DD5982F0(v15, v12, 0, 5000, 0);
  v46 = v25;
  v43 = v28;
  v29 = [v25 publisherWithOptions_];
  v30 = v29;
  if (a3)
  {
    v31 = swift_allocObject();
    *(v31 + 16) = a3;
    *(v31 + 24) = a4;
    v54 = sub_1DD59B4B0;
    v55 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_1DD3CF7E8;
    v53 = &block_descriptor_42;
    v32 = _Block_copy(&aBlock);
    sub_1DD4516B4(a3);

    v33 = [v30 filterWithIsIncluded_];
    sub_1DD39E698(a3);
    _Block_release(v32);
  }

  else
  {
    v33 = v29;
  }

  v34 = swift_allocObject();
  *(v34 + 16) = MEMORY[0x1E69E7CC0];
  v35 = swift_allocObject();
  v36 = v45;
  v35[2] = v44;
  v35[3] = v36;
  v35[4] = v34;
  v54 = sub_1DD59B448;
  v55 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1DD59B528;
  v53 = &block_descriptor_16;
  v37 = _Block_copy(&aBlock);
  v38 = v33;

  v54 = sub_1DD59B480;
  v55 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1DD59B528;
  v53 = &block_descriptor_36;
  v39 = _Block_copy(&aBlock);

  v40 = [v38 sinkWithCompletion:v37 receiveInput:v39];
  _Block_release(v39);
  _Block_release(v37);

  v47(v49, v16);
}

uint64_t sub_1DD593E20(void *a1, uint64_t (*a2)(void))
{
  v3 = [a1 eventBody];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = a2();

  return v5 & 1;
}

uint64_t sub_1DD593E84(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a4 + 16);

  a2(v7);
}

id sub_1DD593EEC(void *a1, uint64_t a2, void (*a3)(void))
{
  result = [a1 eventBody];
  if (result)
  {
    v6 = swift_beginAccess();
    MEMORY[0x1E12B23F0](v6);
    a3(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1DD640168();
    return swift_endAccess();
  }

  return result;
}

size_t sub_1DD593F94(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v1 = OUTLINED_FUNCTION_6_67();
  v3 = sub_1DD3C1724(v1, v2);
  v4 = sub_1DD63C868();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_4_82(v5, v8, v9, v10, v11, v12, v13, v14, v17, v18);
  sub_1DD5D4BA4();
  OUTLINED_FUNCTION_3_80();
  if (!v15)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1DD594058(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_6_67();
  sub_1DD3C163C();
  OUTLINED_FUNCTION_2_96();
  sub_1DD5D4EFC();
  OUTLINED_FUNCTION_3_80();
  if (!v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1DD594174(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v5 = OUTLINED_FUNCTION_6_67();
  v6(v5);
  OUTLINED_FUNCTION_2_96();
  a3();
  OUTLINED_FUNCTION_3_80();
  if (!v7)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1DD594220(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = sub_1DD59AF84(0, result, v4);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = a3(0);

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD5942BC(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1DD598C54(a1, sub_1DD59B2C8, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1DD594340(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF1C8, &qword_1DD65E1C8);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC8];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1D0, &unk_1DD65E1D0);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v3;
  *(v1 + 16) = a1;
  *(v1 + 24) = v5;
  return v1;
}

void sub_1DD5943D0()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_1DD59AE98((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1DD594424(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF180, &qword_1DD6464B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_1DD63D0F8();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = v9[8];
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_1DD3BDF4C();
  v15 = *(*(v14 + 16) + 16);
  sub_1DD3BE110(v15);
  v16 = *(v14 + 16);
  *(v16 + 16) = v15 + 1;
  v17 = v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v9[9] * v15;
  v18 = v8;
  v19 = v9[2];
  v20 = v24;
  v19(v17, v24, v18);
  *(v14 + 16) = v16;
  v19(v13, v20, v18);
  sub_1DD59AEB4(v20, v7);
  v21 = type metadata accessor for AppRankEvent(0);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v21);
  swift_beginAccess();
  sub_1DD402388(v7, v13);
  result = swift_endAccess();
  if (*(v25 + 16) < *(*(v14 + 16) + 16))
  {
    sub_1DD594694(v13);
    swift_beginAccess();
    sub_1DD598FFC(v7);
    sub_1DD59AF18(v7);
    swift_endAccess();
    return (v10[1])(v13, v18);
  }

  return result;
}

void sub_1DD594694(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  v7 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1DD558F40(*v1, &v9 - v5);
  v8 = sub_1DD63D0F8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    (*(*(v8 - 8) + 32))(a1, v6, v8);
    if (*(v7 + 16))
    {
      sub_1DD49C0BC(0, 1);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void *sub_1DD5947A4()
{
  type metadata accessor for SearchTermAppsRanker();
  result = sub_1DD5947D4();
  off_1ECCDF170 = result;
  return result;
}

uint64_t sub_1DD5947D4()
{
  v1 = v0;
  type metadata accessor for UserDefaultsAppRankerPersistentStorage();
  swift_allocObject();
  v2 = sub_1DD3B7F64();
  OUTLINED_FUNCTION_18_9();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  type metadata accessor for SearchTermAppsRanker();
  v5 = swift_allocObject();
  sub_1DD595EBC(sub_1DD59B348, v3, sub_1DD59B350, v4);
  return v5;
}

uint64_t static SearchTermAppsRanker.shared.getter()
{
  if (qword_1ECCDB108 != -1)
  {
    swift_once();
  }
}

void sub_1DD5948FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v165 = a4;
  v181 = a3;
  v174 = a1;
  v168 = sub_1DD63D868();
  v169 = *(v168 - 8);
  v5 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v167 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DD63D518();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE28, &qword_1DD644170);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DD644F40;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D2B88], v7);
  v13 = sub_1DD63D538();
  v14 = MEMORY[0x1E69D2B90];
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  __swift_allocate_boxed_opaque_existential_1((v12 + 32));
  sub_1DD63D528();
  v15 = sub_1DD63D7E8();
  v16 = MEMORY[0x1E69D2BC8];
  *(v12 + 96) = v15;
  *(v12 + 104) = v16;
  __swift_allocate_boxed_opaque_existential_1((v12 + 72));
  sub_1DD63D7D8();
  v17 = sub_1DD63D748();
  v18 = MEMORY[0x1E69D2BA8];
  *(v12 + 136) = v17;
  *(v12 + 144) = v18;
  __swift_allocate_boxed_opaque_existential_1((v12 + 112));
  sub_1DD63D738();
  v19 = sub_1DD63D768();
  v20 = MEMORY[0x1E69D2BB0];
  *(v12 + 176) = v19;
  *(v12 + 184) = v20;
  __swift_allocate_boxed_opaque_existential_1((v12 + 152));
  sub_1DD63D758();
  v21 = sub_1DD63D6D8();
  v22 = MEMORY[0x1E69D2BA0];
  *(v12 + 216) = v21;
  *(v12 + 224) = v22;
  __swift_allocate_boxed_opaque_existential_1((v12 + 192));
  sub_1DD63D6C8();
  *(v12 + 256) = &type metadata for MRNowPlayingStateSignal;
  *(v12 + 264) = sub_1DD59B374();
  *(v12 + 232) = 0x6979616C50776F4ELL;
  *(v12 + 240) = 0xEF6574617453676ELL;
  v164 = v12;
  sub_1DD596D38();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF1E8, &qword_1DD65E1E0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v182 = sub_1DD63D9B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF1F0, &qword_1DD65E1E8);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DD644F50;
  *(v26 + 32) = 0xD000000000000021;
  *(v26 + 40) = 0x80000001DD666C80;
  *(v26 + 48) = 0x405E000000000000;
  *(v26 + 56) = &unk_1F58B0898;
  *(v26 + 64) = &off_1F58B0960;
  *(v26 + 72) = 0xD000000000000022;
  *(v26 + 80) = 0x80000001DD666CB0;
  *(v26 + 88) = 0x4082C00000000000;
  *(v26 + 96) = &unk_1F58B0898;
  *(v26 + 104) = &off_1F58B0960;
  *(v26 + 112) = 0xD000000000000021;
  *(v26 + 120) = 0x80000001DD666CE0;
  *(v26 + 128) = 0x40AC200000000000;
  *(v26 + 136) = &unk_1F58B0898;
  *(v26 + 144) = &off_1F58B0960;
  *(v26 + 152) = 0xD000000000000021;
  *(v26 + 160) = 0x80000001DD666D10;
  *(v26 + 168) = 0x40D5180000000000;
  *(v26 + 176) = &unk_1F58B0898;
  *(v26 + 184) = &off_1F58B0960;
  *(v26 + 192) = 0xD000000000000021;
  *(v26 + 200) = 0x80000001DD666D40;
  *(v26 + 208) = 0x40F5180000000000;
  *(v26 + 216) = &unk_1F58B0898;
  *(v26 + 224) = &off_1F58B0960;
  *(v26 + 232) = 0xD000000000000021;
  *(v26 + 240) = 0x80000001DD666D70;
  *(v26 + 248) = 0x4122750000000000;
  *(v26 + 256) = &unk_1F58B0898;
  *(v26 + 264) = &off_1F58B0960;
  *(v26 + 272) = 0xD000000000000022;
  *(v26 + 280) = 0x80000001DD666DA0;
  *(v26 + 288) = 0x4142750000000000;
  *(v26 + 296) = &unk_1F58B0898;
  *(v26 + 304) = &off_1F58B0960;
  *(v26 + 312) = 0xD000000000000023;
  *(v26 + 320) = 0x80000001DD666DD0;
  *(v26 + 328) = 0x405E000000000000;
  *(v26 + 336) = &unk_1F58B0818;
  *(v26 + 344) = &off_1F58B0948;
  *(v26 + 352) = 0xD000000000000024;
  *(v26 + 360) = 0x80000001DD666E00;
  *(v26 + 368) = 0x4082C00000000000;
  *(v26 + 376) = &unk_1F58B0818;
  *(v26 + 384) = &off_1F58B0948;
  *(v26 + 392) = 0xD000000000000023;
  *(v26 + 400) = 0x80000001DD666E30;
  *(v26 + 408) = 0x40AC200000000000;
  *(v26 + 416) = &unk_1F58B0818;
  *(v26 + 424) = &off_1F58B0948;
  *(v26 + 432) = 0xD000000000000023;
  *(v26 + 440) = 0x80000001DD666E60;
  *(v26 + 448) = 0x40D5180000000000;
  *(v26 + 456) = &unk_1F58B0818;
  *(v26 + 464) = &off_1F58B0948;
  *(v26 + 472) = 0xD000000000000023;
  *(v26 + 480) = 0x80000001DD666E90;
  *(v26 + 488) = 0x40F5180000000000;
  *(v26 + 496) = &unk_1F58B0818;
  *(v26 + 504) = &off_1F58B0948;
  *(v26 + 512) = 0xD000000000000023;
  *(v26 + 520) = 0x80000001DD666EC0;
  *(v26 + 528) = 0x4122750000000000;
  *(v26 + 536) = &unk_1F58B0818;
  *(v26 + 544) = &off_1F58B0948;
  *(v26 + 552) = 0xD000000000000024;
  *(v26 + 560) = 0x80000001DD666EF0;
  *(v26 + 568) = 0x4142750000000000;
  *(v26 + 576) = &unk_1F58B0818;
  *(v26 + 584) = &off_1F58B0948;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF1F8, &qword_1DD65E1F0);
  v27 = sub_1DD63FC88();
  v28 = *(v27 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v190 = MEMORY[0x1E69E7CC0];
    sub_1DD42BFDC(0, v28, 0);
    v30 = v190;
    v33 = sub_1DD5FAA4C(v27);
    v34 = 0;
    v35 = v27 + 64;
    v170 = v31;
    v166 = v27 + 72;
    v36 = v181;
    v171 = v28;
    v172 = v27 + 64;
    v173 = v27;
    while ((v33 & 0x8000000000000000) == 0 && v33 < 1 << *(v27 + 32))
    {
      v37 = v33 >> 6;
      if ((*(v35 + 8 * (v33 >> 6)) & (1 << v33)) == 0)
      {
        goto LABEL_88;
      }

      if (*(v27 + 36) != v31)
      {
        goto LABEL_89;
      }

      v176 = v34;
      v177 = v31;
      LODWORD(v175) = v32;
      v38 = *(v27 + 56);
      v39 = (*(v27 + 48) + 16 * v33);
      v40 = v39[1];
      v178 = *v39;
      v41 = (v38 + 24 * v33);
      v42 = *v41;
      v179 = *(v41 + 1);
      v190 = v30;
      v44 = *(v30 + 16);
      v43 = *(v30 + 24);
      v180 = v44 + 1;

      v45 = v182;

      if (v44 >= v43 >> 1)
      {
        sub_1DD42BFDC(v43 > 1, v180, 1);
        v30 = v190;
      }

      *(v30 + 16) = v180;
      v180 = v30;
      v46 = v30 + 88 * v44;
      *(v46 + 32) = v178;
      *(v46 + 40) = v40;
      v27 = v173;
      v47 = v174;
      *(v46 + 48) = v36;
      *(v46 + 56) = v47;
      *(v46 + 64) = a2;
      *(v46 + 72) = v42;
      *(v46 + 80) = v179;
      *(v46 + 96) = sub_1DD59B50C;
      *(v46 + 104) = 0;
      *(v46 + 112) = v45;
      v48 = 1 << *(v27 + 32);
      if (v33 >= v48)
      {
        goto LABEL_90;
      }

      v35 = v172;
      v49 = *(v172 + 8 * v37);
      if ((v49 & (1 << v33)) == 0)
      {
        goto LABEL_91;
      }

      if (*(v27 + 36) != v177)
      {
        goto LABEL_92;
      }

      v50 = v49 & (-2 << (v33 & 0x3F));
      if (v50)
      {
        v48 = __clz(__rbit64(v50)) | v33 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v51 = v37 << 6;
        v52 = v37 + 1;
        v53 = (v166 + 8 * v37);
        while (v52 < (v48 + 63) >> 6)
        {
          v55 = *v53++;
          v54 = v55;
          v51 += 64;
          ++v52;
          if (v55)
          {
            sub_1DD3AA558(v33, v177, v175 & 1);
            v48 = __clz(__rbit64(v54)) + v51;
            goto LABEL_19;
          }
        }

        sub_1DD3AA558(v33, v177, v175 & 1);
LABEL_19:
        v36 = v181;
      }

      v32 = 0;
      v34 = v176 + 1;
      v33 = v48;
      v31 = v170;
      v30 = v180;
      if (v176 + 1 == v171)
      {

        v29 = MEMORY[0x1E69E7CC0];
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v180 = v30;
  v56 = sub_1DD63FC88();
  v57 = *(v56 + 16);
  if (v57)
  {
    v190 = v29;
    sub_1DD42BF90();
    v58 = v190;
    v61 = sub_1DD5FAA4C(v56);
    v62 = 0;
    *&v179 = v56 + 64;
    v172 = v59;
    v171 = v56 + 72;
    v63 = v181;
    v173 = v57;
    while ((v61 & 0x8000000000000000) == 0 && v61 < 1 << *(v56 + 32))
    {
      v64 = v61 >> 6;
      if ((*(v179 + 8 * (v61 >> 6)) & (1 << v61)) == 0)
      {
        goto LABEL_94;
      }

      if (*(v56 + 36) != v59)
      {
        goto LABEL_95;
      }

      v175 = v62;
      v176 = v59;
      LODWORD(v174) = v60;
      v65 = (*(v56 + 48) + 16 * v61);
      v66 = *v65;
      v67 = v65[1];
      v68 = v56;
      v69 = *(*(v56 + 56) + 8 * v61);
      v190 = v58;
      v70 = *(v58 + 16);
      v71 = *(v58 + 24);
      v177 = v66;
      v178 = v70 + 1;
      v72 = v63;

      v73 = v182;

      if (v70 >= v71 >> 1)
      {
        sub_1DD42BF90();
        v58 = v190;
      }

      v74 = v177;
      *(v58 + 16) = v178;
      v75 = (v58 + 56 * v70);
      v75[4] = v74;
      v75[5] = v67;
      v75[6] = v72;
      v75[7] = v69;
      v75[8] = sub_1DD59B50C;
      v75[9] = 0;
      v75[10] = v73;
      v76 = 1 << *(v68 + 32);
      if (v61 >= v76)
      {
        goto LABEL_96;
      }

      v77 = *(v179 + 8 * v64);
      if ((v77 & (1 << v61)) == 0)
      {
        goto LABEL_97;
      }

      v63 = v72;
      v56 = v68;
      if (*(v68 + 36) != v176)
      {
        goto LABEL_98;
      }

      v78 = v77 & (-2 << (v61 & 0x3F));
      if (v78)
      {
        v76 = __clz(__rbit64(v78)) | v61 & 0x7FFFFFFFFFFFFFC0;
        v79 = v173;
        v80 = v175;
      }

      else
      {
        v81 = v64 << 6;
        v82 = v64 + 1;
        v83 = (v171 + 8 * v64);
        v79 = v173;
        v80 = v175;
        while (v82 < (v76 + 63) >> 6)
        {
          v85 = *v83++;
          v84 = v85;
          v81 += 64;
          ++v82;
          if (v85)
          {
            sub_1DD3AA558(v61, v176, v174 & 1);
            v76 = __clz(__rbit64(v84)) + v81;
            goto LABEL_41;
          }
        }

        sub_1DD3AA558(v61, v176, v174 & 1);
LABEL_41:
        v63 = v181;
      }

      v60 = 0;
      v62 = v80 + 1;
      v61 = v76;
      v59 = v172;
      if (v62 == v79)
      {

        v29 = MEMORY[0x1E69E7CC0];
        goto LABEL_45;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v58 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v170 = v58;
  v86 = sub_1DD63FC88();
  v87 = *(v86 + 16);
  if (v87)
  {
    v190 = v29;
    sub_1DD42BF44();
    v29 = v190;
    v90 = sub_1DD5FAA4C(v86);
    v91 = 0;
    v92 = v86 + 64;
    v172 = v88;
    v171 = v86 + 72;
    v93 = v181;
    v173 = v87;
    v174 = v86 + 64;
    while ((v90 & 0x8000000000000000) == 0 && v90 < 1 << *(v86 + 32))
    {
      v94 = v90 >> 6;
      if ((*(v92 + 8 * (v90 >> 6)) & (1 << v90)) == 0)
      {
        goto LABEL_100;
      }

      if (*(v86 + 36) != v88)
      {
        goto LABEL_101;
      }

      v176 = v91;
      v177 = v88;
      LODWORD(v175) = v89;
      v95 = (*(v86 + 48) + 16 * v90);
      v96 = *v95;
      v97 = v95[1];
      v98 = *(*(v86 + 56) + 8 * v90);
      v190 = v29;
      v100 = *(v29 + 16);
      v99 = *(v29 + 24);
      v178 = v96;
      *&v179 = v100 + 1;

      v101 = v86;
      v102 = v182;

      if (v100 >= v99 >> 1)
      {
        sub_1DD42BF44();
        v29 = v190;
      }

      v103 = v178;
      *(v29 + 16) = v179;
      v104 = (v29 + 56 * v100);
      v104[4] = v103;
      v104[5] = v97;
      v104[6] = v93;
      v104[7] = v98;
      v104[8] = sub_1DD59B50C;
      v104[9] = 0;
      v104[10] = v102;
      v105 = 1 << *(v101 + 32);
      if (v90 >= v105)
      {
        goto LABEL_102;
      }

      v86 = v101;
      v92 = v174;
      v106 = *(v174 + 8 * v94);
      if ((v106 & (1 << v90)) == 0)
      {
        goto LABEL_103;
      }

      if (*(v86 + 36) != v177)
      {
        goto LABEL_104;
      }

      v107 = v106 & (-2 << (v90 & 0x3F));
      if (v107)
      {
        v105 = __clz(__rbit64(v107)) | v90 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v108 = v94 << 6;
        v109 = v94 + 1;
        v110 = (v171 + 8 * v94);
        while (v109 < (v105 + 63) >> 6)
        {
          v112 = *v110++;
          v111 = v112;
          v108 += 64;
          ++v109;
          if (v112)
          {
            sub_1DD3AA558(v90, v177, v175 & 1);
            v105 = __clz(__rbit64(v111)) + v108;
            goto LABEL_63;
          }
        }

        sub_1DD3AA558(v90, v177, v175 & 1);
LABEL_63:
        v93 = v181;
      }

      v89 = 0;
      v91 = v176 + 1;
      v90 = v105;
      v88 = v172;
      if (v176 + 1 == v173)
      {
        goto LABEL_65;
      }
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

LABEL_65:

  v166 = v29;
  sub_1DD596D38();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF200, qword_1DD65E1F8);
  v114 = *(v113 + 48);
  v115 = *(v113 + 52);
  swift_allocObject();
  v176 = sub_1DD63D9B8();
  v116 = sub_1DD63FC88();
  v117 = *(v116 + 16);
  if (v117)
  {
    v190 = MEMORY[0x1E69E7CC0];
    sub_1DD42BEEC(0, v117, 0);
    v118 = v190;
    v121 = sub_1DD5FAA4C(v116);
    v122 = 0;
    v123 = v116 + 64;
    v175 = v169 + 32;
    v172 = v119;
    v171 = v116 + 72;
    v173 = v117;
    v174 = v116 + 64;
    while ((v121 & 0x8000000000000000) == 0 && v121 < 1 << *(v116 + 32))
    {
      v124 = v121 >> 6;
      if ((*(v123 + 8 * (v121 >> 6)) & (1 << v121)) == 0)
      {
        goto LABEL_106;
      }

      if (*(v116 + 36) != v119)
      {
        goto LABEL_107;
      }

      v178 = v122;
      *&v179 = v119;
      LODWORD(v177) = v120;
      v125 = (*(v116 + 48) + 16 * v121);
      v126 = *v125;
      v127 = v125[1];
      v128 = *(*(v116 + 56) + 8 * v121);
      v129 = v116;

      v130 = v167;
      sub_1DD63D858();
      v190 = v118;
      v132 = *(v118 + 16);
      v131 = *(v118 + 24);
      if (v132 >= v131 >> 1)
      {
        sub_1DD42BEEC(v131 > 1, v132 + 1, 1);
        v118 = v190;
      }

      *(v118 + 16) = v132 + 1;
      (*(v169 + 32))(v118 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v132, v130, v168);
      v133 = 1 << *(v129 + 32);
      if (v121 >= v133)
      {
        goto LABEL_108;
      }

      v116 = v129;
      v123 = v174;
      v134 = *(v174 + 8 * v124);
      if ((v134 & (1 << v121)) == 0)
      {
        goto LABEL_109;
      }

      if (*(v116 + 36) != v179)
      {
        goto LABEL_110;
      }

      v135 = v134 & (-2 << (v121 & 0x3F));
      if (v135)
      {
        v133 = __clz(__rbit64(v135)) | v121 & 0x7FFFFFFFFFFFFFC0;
        v136 = v173;
        v137 = v178;
      }

      else
      {
        v138 = v124 << 6;
        v139 = v124 + 1;
        v140 = (v171 + 8 * v124);
        v136 = v173;
        v137 = v178;
        while (v139 < (v133 + 63) >> 6)
        {
          v142 = *v140++;
          v141 = v142;
          v138 += 64;
          ++v139;
          if (v142)
          {
            sub_1DD3AA558(v121, v179, v177 & 1);
            v133 = __clz(__rbit64(v141)) + v138;
            goto LABEL_83;
          }
        }

        sub_1DD3AA558(v121, v179, v177 & 1);
      }

LABEL_83:
      v120 = 0;
      v122 = v137 + 1;
      v121 = v133;
      v119 = v172;
      if (v122 == v136)
      {

        *&v179 = v118;
        goto LABEL_86;
      }
    }

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
    return;
  }

  *&v179 = MEMORY[0x1E69E7CC0];
LABEL_86:
  v143 = swift_allocObject();
  *(v143 + 16) = xmmword_1DD648240;
  *(v143 + 56) = &type metadata for AppIntentStringSearchScopesSignal;
  *(v143 + 64) = sub_1DD3B65D8();
  *(v143 + 32) = 0xD000000000000015;
  *(v143 + 40) = 0x80000001DD666BE0;
  v144 = v181;
  *(v143 + 48) = v181;
  *(v143 + 96) = &type metadata for LastForegroundAppSignal;
  v145 = sub_1DD4EEA90();
  *(v143 + 104) = v145;
  v146 = swift_allocObject();
  *(v143 + 72) = v146;
  *(v146 + 16) = 0xD000000000000019;
  *(v146 + 24) = 0x80000001DD666C00;
  v147 = v165;
  *(v146 + 32) = v144;
  *(v146 + 40) = v147;
  *(v146 + 48) = sub_1DD4EF4E0;
  *(v146 + 56) = 0;
  *(v146 + 64) = 0;
  *(v146 + 72) = sub_1DD4EE794;
  *(v146 + 80) = 0;
  *(v146 + 88) = 0;
  v148 = v176;
  *(v146 + 96) = v176;
  *(v143 + 136) = &type metadata for LastForegroundAppSignal;
  *(v143 + 144) = v145;
  v149 = swift_allocObject();
  *(v143 + 112) = v149;
  *(v149 + 16) = 0xD000000000000019;
  *(v149 + 24) = 0x80000001DD666C20;
  *(v149 + 32) = v144;
  *(v149 + 40) = v147;
  *(v149 + 48) = sub_1DD4EF4E0;
  *(v149 + 56) = 0;
  *(v149 + 64) = 0;
  *(v149 + 72) = sub_1DD4EE794;
  *(v149 + 80) = 0;
  *(v149 + 88) = 1;
  *(v149 + 96) = v148;
  *(v143 + 176) = &type metadata for LastForegroundAppSignal;
  *(v143 + 184) = v145;
  v150 = swift_allocObject();
  *(v143 + 152) = v150;
  v177 = 0xD00000000000001FLL;
  *(v150 + 16) = 0xD00000000000001FLL;
  *(v150 + 24) = 0x80000001DD666C40;
  *(v150 + 32) = v144;
  *(v150 + 40) = v147;
  *(v150 + 48) = sub_1DD4EF4E0;
  *(v150 + 56) = 0;
  *(v150 + 64) = 1;
  *(v150 + 72) = sub_1DD4EF4E4;
  *(v150 + 80) = 0;
  *(v150 + 88) = 0;
  *(v150 + 96) = v148;
  *(v143 + 216) = &type metadata for LastForegroundAppSignal;
  *(v143 + 224) = v145;
  v151 = swift_allocObject();
  *(v143 + 192) = v151;
  v178 = 0xD00000000000001DLL;
  *(v151 + 16) = 0xD00000000000001DLL;
  *(v151 + 24) = 0x80000001DD666C60;
  *(v151 + 32) = v144;
  *(v151 + 40) = v147;
  *(v151 + 48) = sub_1DD4EE79C;
  *(v151 + 56) = 0;
  *(v151 + 64) = 1;
  *(v151 + 72) = sub_1DD4EF4E4;
  *(v151 + 80) = 0;
  *(v151 + 88) = 0;
  *(v151 + 96) = v148;
  *(v143 + 256) = &type metadata for LastNowPlayingAppSignal;
  v152 = sub_1DD4EF880();
  *(v143 + 264) = v152;
  v153 = swift_allocObject();
  *(v143 + 232) = v153;
  *(v153 + 16) = 0xD000000000000019;
  *(v153 + 24) = 0x80000001DD666F20;
  *(v153 + 32) = v144;
  *(v153 + 40) = sub_1DD4F0110;
  *(v153 + 48) = 0;
  *(v153 + 56) = 0;
  *(v153 + 64) = sub_1DD4EE794;
  *(v153 + 72) = 0;
  *(v153 + 80) = 0;
  v154 = v182;
  *(v153 + 88) = v182;
  *(v143 + 296) = &type metadata for LastNowPlayingAppSignal;
  *(v143 + 304) = v152;
  v155 = swift_allocObject();
  *(v143 + 272) = v155;
  *(v155 + 16) = 0xD000000000000019;
  *(v155 + 24) = 0x80000001DD666F40;
  *(v155 + 32) = v144;
  *(v155 + 40) = sub_1DD4F0110;
  *(v155 + 48) = 0;
  *(v155 + 56) = 0;
  *(v155 + 57) = *v185;
  *(v155 + 60) = *&v185[3];
  *(v155 + 64) = sub_1DD4EE794;
  *(v155 + 72) = 0;
  *(v155 + 80) = 1;
  *(v155 + 81) = *v184;
  *(v155 + 84) = *&v184[3];
  *(v155 + 88) = v154;
  *(v143 + 336) = &type metadata for LastNowPlayingAppSignal;
  *(v143 + 344) = v152;
  v156 = swift_allocObject();
  *(v143 + 312) = v156;
  *(v156 + 16) = v177;
  *(v156 + 24) = 0x80000001DD666F60;
  *(v156 + 32) = v144;
  *(v156 + 40) = sub_1DD4F0110;
  *(v156 + 48) = 0;
  *(v156 + 56) = 1;
  *(v156 + 57) = *v187;
  *(v156 + 60) = *&v187[3];
  *(v156 + 64) = sub_1DD4F0114;
  *(v156 + 72) = 0;
  *(v156 + 80) = 0;
  *(v156 + 81) = *v186;
  *(v156 + 84) = *&v186[3];
  *(v156 + 88) = v154;
  *(v143 + 376) = &type metadata for LastNowPlayingAppSignal;
  *(v143 + 384) = v152;
  v157 = swift_allocObject();
  *(v143 + 352) = v157;
  *(v157 + 16) = v178;
  *(v157 + 24) = 0x80000001DD666F80;
  *(v157 + 32) = v144;
  *(v157 + 40) = sub_1DD4EF4E8;
  *(v157 + 48) = 0;
  *(v157 + 56) = 1;
  *(v157 + 57) = *v189;
  *(v157 + 60) = *&v189[3];
  *(v157 + 64) = sub_1DD4F0114;
  *(v157 + 72) = 0;
  *(v157 + 80) = 0;
  *(v157 + 81) = *v188;
  *(v157 + 84) = *&v188[3];
  *(v157 + 88) = v154;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v158 = sub_1DD3FE00C(v180);

  v183 = v143;
  sub_1DD607B20(v158);
  v159 = sub_1DD3FE138(v170);

  sub_1DD607B20(v159);
  v160 = sub_1DD3FE160(v166);

  sub_1DD607B20(v160);
  sub_1DD3FE2E8();
  v162 = v161;

  sub_1DD607B20(v162);
  v190 = v164;
  sub_1DD607B20(v183);
}

void *sub_1DD595EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF1C0, &qword_1DD65E1C0);
  OUTLINED_FUNCTION_18_9();
  swift_allocObject();
  v9 = sub_1DD594340(10);
  v4[5] = a4;
  v4[6] = v9;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  return v4;
}

uint64_t sub_1DD595F34()
{
  OUTLINED_FUNCTION_34_0();
  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  *(v1 + 232) = v3;
  *(v1 + 88) = v4;
  *(v1 + 96) = v5;
  *(v1 + 72) = v6;
  *(v1 + 80) = v7;
  v8 = type metadata accessor for AppRankEvent(0);
  *(v1 + 120) = v8;
  OUTLINED_FUNCTION_3(v8);
  v10 = *(v9 + 64) + 15;
  *(v1 + 128) = swift_task_alloc();
  v11 = sub_1DD63C7F8();
  *(v1 + 136) = v11;
  OUTLINED_FUNCTION_51(v11);
  *(v1 + 144) = v12;
  v14 = *(v13 + 64) + 15;
  *(v1 + 152) = swift_task_alloc();
  v15 = sub_1DD63D0F8();
  *(v1 + 160) = v15;
  OUTLINED_FUNCTION_51(v15);
  *(v1 + 168) = v16;
  v18 = *(v17 + 64) + 15;
  *(v1 + 176) = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_9_50();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1DD59606C()
{
  v62 = v0;
  v1 = v0[22];
  v3 = v0[13];
  v2 = v0[14];
  v4 = *(v2 + 24);
  (*(v2 + 16))();

  v5 = OUTLINED_FUNCTION_1_8();
  v7 = sub_1DD59A640(v5, v6);
  v0[23] = v7;
  sub_1DD63D0E8();
  if (v7[2] >= 2uLL)
  {
    v0[7] = v0[10];
    v28 = v0[18];
    v27 = v0[19];
    v29 = v0[17];
    v30 = v7;
    v31 = v0[14];
    v58 = v0[13];
    v0[8] = v0[11];
    sub_1DD63C7E8();
    sub_1DD3B7F10();
    v32 = sub_1DD640668();
    v34 = v33;
    v0[24] = v33;
    (*(v28 + 8))(v27, v29);
    v35 = *(v31 + 40);
    v36 = (*(v31 + 32))(v32, v34, v30, v58);
    v0[25] = v36;
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v37 = sub_1DD63F9F8();
    __swift_project_value_buffer(v37, qword_1EE16F0C8);

    v38 = sub_1DD63F9D8();
    v39 = sub_1DD640368();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v59;
      *v40 = 136315138;
      v41 = *(v36 + 16);
      v42 = MEMORY[0x1E69E7CC0];
      if (v41)
      {
        v55 = v40;
        v56 = v39;
        v57 = v38;
        v61 = MEMORY[0x1E69E7CC0];
        sub_1DD42A2D4();
        v42 = v61;
        v43 = v36 + 32;
        do
        {
          sub_1DD3C2388(v43, (v0 + 2));
          v44 = v0[6];
          __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
          v45 = sub_1DD63D938();
          v47 = v46;
          __swift_destroy_boxed_opaque_existential_1(v0 + 2);
          v61 = v42;
          v48 = *(v42 + 16);
          if (v48 >= *(v42 + 24) >> 1)
          {
            sub_1DD42A2D4();
            v42 = v61;
          }

          *(v42 + 16) = v48 + 1;
          v49 = v42 + 16 * v48;
          *(v49 + 32) = v45;
          *(v49 + 40) = v47;
          v43 += 40;
          --v41;
        }

        while (v41);
        v38 = v57;
        v39 = v56;
        v40 = v55;
      }

      v50 = MEMORY[0x1E12B2430](v42, MEMORY[0x1E69E6158]);
      v52 = v51;

      v53 = sub_1DD39565C(v50, v52, &v60);

      *(v40 + 4) = v53;
      _os_log_impl(&dword_1DD38D000, v38, v39, "SearchTermAppsRanker signals are %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v54 = swift_task_alloc();
    v0[26] = v54;
    *v54 = v0;
    v54[1] = sub_1DD5964E0;

    return sub_1DD5970C4();
  }

  else
  {
    v9 = v0[21];
    v8 = v0[22];
    v10 = v0[20];
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];
    v14 = v0[9];
    v15 = sub_1DD594058(v7);
    v16 = *(v13 + 48);
    v17 = *(v9 + 16);
    OUTLINED_FUNCTION_20_32();
    v18();
    v19 = v11 + v12[5];
    sub_1DD63D068();
    *(v11 + v12[6]) = v15;
    *(v11 + v12[7]) = 0;

    sub_1DD5943D0();
    sub_1DD59A960(v11);
    v20 = *(v9 + 32);
    OUTLINED_FUNCTION_20_32();
    v21();
    v22 = v0[22];
    v23 = v0[19];
    v24 = v0[16];

    v25 = v0[1];

    return v25(v15);
  }
}

uint64_t sub_1DD5964E0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_19_1();
  *v3 = v2;
  v5 = v4[26];
  v6 = v4[25];
  v7 = v4[24];
  v8 = v4[23];
  v9 = *v0;
  OUTLINED_FUNCTION_19_1();
  *v10 = v9;
  *(v13 + 216) = v11;
  *(v13 + 224) = v12;

  v14 = OUTLINED_FUNCTION_9_50();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1DD596630()
{
  v1 = *(v0 + 216);
  if ((*(v0 + 232) & 1) != 0 || (v2 = *(v0 + 96), v2 < 1) || *(v1 + 16) <= v2)
  {
    v11 = *(v0 + 224);
    v13 = *(v0 + 168);
    v12 = *(v0 + 176);
    v14 = *(v0 + 160);
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 72);
    v18 = *(*(v0 + 112) + 48);
    (*(v13 + 16))(v15, v12, v14);
    v19 = v15 + v16[5];
    sub_1DD63D068();
    *(v15 + v16[6]) = v1;
    *(v15 + v16[7]) = v11;

    sub_1DD5943D0();
    sub_1DD59A960(v15);
    (*(v13 + 32))(v17, v12, v14);
    v10 = *(v0 + 216);
    goto LABEL_15;
  }

  sub_1DD594220(v2, *(v0 + 216), sub_1DD4BF4BC);
  v4 = v3;
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1DD640D08();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v20 + 16);

  if (__OFSUB__(v6 >> 1, v4))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v21 != (v6 >> 1) - v4)
  {
LABEL_19:
    swift_unknownObjectRelease();
LABEL_5:
    v7 = OUTLINED_FUNCTION_1_8();
    sub_1DD598568(v7, v8, v4, v6);
    v10 = v9;
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v10 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v10)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

LABEL_14:
  v22 = *(v0 + 224);
  v23 = *(v0 + 168);
  v24 = *(v0 + 160);
  v26 = *(v0 + 120);
  v25 = *(v0 + 128);
  v27 = *(v0 + 72);
  v28 = *(*(v0 + 112) + 48);
  v29 = *(v23 + 16);
  OUTLINED_FUNCTION_20_32();
  v30();
  v31 = v25 + v26[5];
  sub_1DD63D068();
  *(v25 + v26[6]) = v10;
  *(v25 + v26[7]) = v22;

  sub_1DD5943D0();
  sub_1DD59A960(v25);
  v32 = *(v23 + 32);
  OUTLINED_FUNCTION_20_32();
  v33();
LABEL_15:
  v34 = *(v0 + 176);
  v35 = *(v0 + 152);
  v36 = *(v0 + 128);

  v37 = *(v0 + 8);

  return v37(v10);
}

uint64_t sub_1DD5968D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = sub_1DD63D078();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  v20 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v21 = [v20 NowPlaying];
  v33 = v21;
  swift_unknownObjectRelease();
  sub_1DD63D068();
  v34 = v18;
  sub_1DD63CF98();
  v35 = *(v12 + 8);
  v35(v15, v11);
  (*(v12 + 16))(v10, v18, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
  v22 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v23 = sub_1DD5982F0(v10, v7, 0, 5000, 0);
  v24 = [v21 publisherWithOptions_];
  v25 = swift_allocObject();
  *(v25 + 16) = MEMORY[0x1E69E7CC0];
  v26 = swift_allocObject();
  v26[2] = sub_1DD59B4F8;
  v26[3] = v19;
  v26[4] = v25;
  v40 = sub_1DD59B514;
  v41 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1DD59B528;
  v39 = &block_descriptor_54;
  v27 = _Block_copy(&aBlock);
  v28 = v24;

  v40 = sub_1DD59B480;
  v41 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1DD59B528;
  v39 = &block_descriptor_57;
  v29 = _Block_copy(&aBlock);

  v30 = [v28 sinkWithCompletion:v27 receiveInput:v29];
  _Block_release(v29);
  _Block_release(v27);

  v35(v34, v11);
}

uint64_t sub_1DD596D38()
{
  v14 = sub_1DD640478();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v4 = v3 - v2;
  v5 = sub_1DD640438();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v9 = sub_1DD63FBD8();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  sub_1DD406E2C();
  sub_1DD63FBA8();
  sub_1DD59B3C8(&qword_1EE166488, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3FAC5C(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD640718();
  (*(v0 + 104))(v4, *MEMORY[0x1E69E8090], v14);
  return sub_1DD6404A8();
}

uint64_t sub_1DD596F70(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1DD593954(sub_1DD597028, 0, sub_1DD59709C, 0, sub_1DD59B410, v4);
}

id sub_1DD597028()
{
  v0 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v1 = [v0 InFocus];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1DD5970C4()
{
  OUTLINED_FUNCTION_34_0();
  v0[9] = v1;
  v0[10] = v2;
  v3 = sub_1DD63D4F8();
  v0[11] = v3;
  OUTLINED_FUNCTION_51(v3);
  v0[12] = v4;
  v6 = *(v5 + 64) + 15;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9_50();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD597188()
{
  v2 = v0[9];
  v1 = v0[10];

  v0[16] = sub_1DD594058(v3);
  v4 = sub_1DD63D588();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  OUTLINED_FUNCTION_1_8();
  v0[17] = sub_1DD63D578();
  v7 = *(MEMORY[0x1E69D2B98] + 4);
  v10 = (*MEMORY[0x1E69D2B98] + MEMORY[0x1E69D2B98]);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_1DD597288;

  return v10(3, 0);
}

uint64_t sub_1DD597288()
{
  OUTLINED_FUNCTION_34_0();
  v2 = *v1;
  OUTLINED_FUNCTION_19_1();
  *v4 = v3;
  v6 = *(v5 + 144);
  *v4 = *v1;
  *(v3 + 152) = v7;
  *(v3 + 160) = v0;

  if (v0)
  {

    v8 = sub_1DD597EBC;
  }

  else
  {
    v8 = sub_1DD59739C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DD59739C()
{
  v154 = v0;
  v1 = v0;
  v2 = *(v0 + 152);
  v3 = qword_1EE166510;

  if (v3 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v4 = sub_1DD63F9F8();
    v5 = __swift_project_value_buffer(v4, qword_1EE16F0C8);

    v6 = sub_1DD63F9D8();
    v7 = sub_1DD640368();

    v131 = v5;
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v1 + 152);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v153[0] = v10;
      *v9 = 136315138;
      *(v1 + 16) = v8;
      *(v1 + 24) = sub_1DD598230;
      *(v1 + 32) = 0;
      *(v1 + 40) = sub_1DD59B30C;
      *(v1 + 48) = 0;
      *(v1 + 56) = sub_1DD59B318;
      *(v1 + 64) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF1A0, &qword_1DD65E1B8);
      sub_1DD3FAC5C(&qword_1ECCDF1A8, &qword_1ECCDF1A0, &qword_1DD65E1B8);
      sub_1DD3B7F10();
      v11 = sub_1DD640088();
      v13 = sub_1DD39565C(v11, v12, v153);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DD38D000, v6, v7, "SearchTermAppsRanker signals:\n%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v14 = sub_1DD63FC88();
    v15 = *(v14 + 16);
    v16 = MEMORY[0x1E69E7CC0];
    v147 = v1;
    if (!v15)
    {
      break;
    }

    v146 = *(v1 + 152);
    v17 = *(v1 + 96);
    v153[0] = MEMORY[0x1E69E7CC0];
    sub_1DD42BFFC(0, v15, 0);
    v152 = v153[0];
    v1 = sub_1DD5FAA4C(v14);
    v20 = 0;
    v21 = v14 + 64;
    v137 = v17 + 32;
    v138 = v17 + 16;
    v136 = v17 + 88;
    HIDWORD(v135) = *MEMORY[0x1E69D2B60];
    v132 = (v17 + 96);
    v133 = (v17 + 8);
    v143 = v18;
    v144 = v15;
    v139 = v17;
    v140 = v14 + 72;
    v134 = v14;
    v145 = v14 + 64;
    while (1)
    {
      if (v1 < 0 || v1 >= 1 << *(v14 + 32))
      {
        goto LABEL_69;
      }

      v22 = v1 >> 6;
      if ((*(v21 + 8 * (v1 >> 6)) & (1 << v1)) == 0)
      {
        goto LABEL_70;
      }

      if (*(v14 + 36) != v18)
      {
        goto LABEL_71;
      }

      v151 = v18;
      HIDWORD(v149) = v19;
      v150 = v20;
      v23 = (*(v14 + 48) + 16 * v1);
      v24 = v23[1];
      if (!*(v146 + 16))
      {
        v58 = v23[1];

        goto LABEL_29;
      }

      v142 = *(*(v14 + 56) + 8 * v1);
      v25 = v147[19];
      v26 = *v23;

      v27 = sub_1DD3978DC();
      if (v28)
      {
        break;
      }

LABEL_29:
      v39 = sub_1DD63FC88();
LABEL_30:

      v63 = v152;
      v153[0] = v152;
      v65 = *(v152 + 16);
      v64 = *(v152 + 24);
      if (v65 >= v64 >> 1)
      {
        v62 = sub_1DD42BFFC((v64 > 1), v65 + 1, 1);
        v63 = v153[0];
      }

      *(v63 + 16) = v65 + 1;
      *(v63 + 8 * v65 + 32) = v39;
      v66 = 1 << *(v14 + 32);
      if (v1 >= v66)
      {
        goto LABEL_72;
      }

      v21 = v145;
      v67 = *(v145 + 8 * v22);
      if ((v67 & (1 << v1)) == 0)
      {
        goto LABEL_73;
      }

      if (*(v14 + 36) != v151)
      {
        goto LABEL_74;
      }

      v68 = v67 & (-2 << (v1 & 0x3F));
      v152 = v63;
      if (v68)
      {
        OUTLINED_FUNCTION_12_40(v62, v151);
        v66 = __clz(__rbit64(v68)) | v1 & 0x7FFFFFFFFFFFFFC0;
        v69 = v150;
      }

      else
      {
        v70 = v22 << 6;
        v71 = (v140 + 8 * v22);
        v72 = v22 + 1;
        while (v72 < (v66 + 63) >> 6)
        {
          v74 = *v71++;
          v73 = v74;
          v70 += 64;
          ++v72;
          if (v74)
          {
            OUTLINED_FUNCTION_12_40(v62, v151);
            v66 = __clz(__rbit64(v73)) + v70;
            goto LABEL_42;
          }
        }

        OUTLINED_FUNCTION_12_40(v62, v151);
LABEL_42:
        v69 = v150;
      }

      v19 = 0;
      v20 = v69 + 1;
      v1 = v66;
      v18 = v143;
      if (v20 == v144)
      {
        v77 = v63;
        v1 = v147;
        goto LABEL_47;
      }
    }

    v141 = v24;
    v29 = v147[15];
    v30 = v147[13];
    v31 = v147[11];
    v32 = *(v139 + 16);
    v32(v147[14], *(v146 + 56) + *(v139 + 72) * v27, v31);
    v33 = *(v139 + 32);
    v34 = OUTLINED_FUNCTION_1_8();
    v35(v34);
    v32(v30, v29, v31);
    if ((*(v139 + 88))(v30, v31) != HIDWORD(v135))
    {
      v59 = v147[13];
      v60 = *v133;
      (*v133)(v147[15], v147[11]);
      v61 = OUTLINED_FUNCTION_1_8();
      v60(v61);
      v14 = v134;
      v16 = MEMORY[0x1E69E7CC0];
      goto LABEL_29;
    }

    v36 = v147[13];
    (*v132)(v36, v147[11]);
    v37 = *v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB58, &qword_1DD65E1B0);
    v38 = sub_1DD640A58();
    v39 = v38;
    v40 = 0;
    v41 = 1 << *(v37 + 32);
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v43 = v42 & *(v37 + 64);
    v44 = (v41 + 63) >> 6;
    v45 = v38 + 64;
    if (!v43)
    {
LABEL_18:
      v47 = v40;
      v16 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v40 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v40 >= v44)
        {
          v75 = v147[15];
          v76 = v147[11];

          (*v133)(v75, v76);
          v14 = v134;
          goto LABEL_30;
        }

        v48 = *(v37 + 64 + 8 * v40);
        ++v47;
        if (v48)
        {
          v46 = __clz(__rbit64(v48));
          v43 = (v48 - 1) & v48;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    while (1)
    {
      v46 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
LABEL_23:
      v49 = v46 | (v40 << 6);
      v50 = *(*(v37 + 56) + 8 * v49);
      v51 = v50 * v142;
      if ((v50 * v142) >> 64 != (v50 * v142) >> 63)
      {
        break;
      }

      v53 = *(*(v37 + 48) + 16 * v49);
      v52 = *(*(v37 + 48) + 16 * v49 + 8);
      *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v54 = (v39[6] + 16 * v49);
      *v54 = v53;
      v54[1] = v52;
      *(v39[7] + 8 * v49) = v51;
      v55 = v39[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_77;
      }

      v39[2] = v57;

      if (!v43)
      {
        goto LABEL_18;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    OUTLINED_FUNCTION_0_3();
    v130 = *(v1 + 152);
  }

  v77 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v78 = 0;
  v79 = *(v77 + 16);
  v80 = *(v1 + 160);
  v81 = MEMORY[0x1E69E7CC8];
  while (v79 != v78)
  {
    if (v78 >= *(v77 + 16))
    {
      goto LABEL_75;
    }

    v82 = v77;
    v83 = *(v77 + 8 * v78 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v153[0] = v81;
    sub_1DD5989AC(v83, sub_1DD59B2C8, 0, isUniquelyReferenced_nonNull_native, v153);
    if (v80)
    {
      goto LABEL_53;
    }

    ++v78;
    v81 = v153[0];
    v77 = v82;
  }

  v85 = *(v1 + 80);

  v86 = sub_1DD53D1F0(v85);
  v87 = sub_1DD3B80F8(v86);
  v88 = sub_1DD5942BC(v87, v81);
  sub_1DD5987BC(v88, sub_1DD3C18C4, sub_1DD5D53D0, sub_1DD59B510, v89, v90, v91, v92, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v149);
  v153[0] = v93;
  sub_1DD5938D0(v153, sub_1DD599468, sub_1DD599268);
  if (v80)
  {
LABEL_53:
  }

  v95 = *(v1 + 128);

  v96 = v153[0];

  v97 = sub_1DD63F9D8();
  v98 = sub_1DD640368();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v153[0] = v100;
    *v99 = 136315138;
    v101 = sub_1DD598878(v96);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF190, &qword_1DD649F58);
    v103 = MEMORY[0x1E12B2430](v101, v102);
    v104 = v96;
    v105 = v1;
    v107 = v106;

    v108 = sub_1DD39565C(v103, v107, v153);
    v1 = v105;
    v96 = v104;

    *(v99 + 4) = v108;
    _os_log_impl(&dword_1DD38D000, v97, v98, "SearchTermAppsRanker scores: %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v100);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  v109 = *(v96 + 16);
  if (v109)
  {
    v153[0] = v16;
    sub_1DD42A2D4();
    v110 = *(v96 + 16);
    v111 = v153[0];
    v112 = v110 - 1;
    v113 = (v96 + 16 + 24 * v110);
    while (v112 != -1)
    {
      if (v112 >= *(v96 + 16))
      {
        goto LABEL_79;
      }

      v115 = *(v113 - 1);
      v114 = *v113;
      v153[0] = v111;
      v116 = *(v111 + 16);
      v117 = *(v111 + 24);

      if (v116 >= v117 >> 1)
      {
        sub_1DD42A2D4();
        v111 = v153[0];
      }

      *(v111 + 16) = v116 + 1;
      v118 = v111 + 16 * v116;
      *(v118 + 32) = v115;
      *(v118 + 40) = v114;
      --v112;
      v113 -= 3;
      --v109;
      v1 = v148;
      if (!v109)
      {
        v119 = *(v148 + 152);
        v120 = *(v148 + 136);

        goto LABEL_65;
      }
    }

    goto LABEL_78;
  }

  v121 = *(v1 + 152);
  v122 = *(v1 + 136);

LABEL_65:
  v123 = *(v1 + 152);
  v125 = *(v1 + 112);
  v124 = *(v1 + 120);
  v126 = *(v1 + 104);

  v127 = *(v1 + 8);
  v128 = OUTLINED_FUNCTION_1_8();

  return v129(v128);
}

uint64_t sub_1DD597EBC()
{
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = sub_1DD63F9F8();
  __swift_project_value_buffer(v1, qword_1EE16F0C8);
  v2 = sub_1DD63F9D8();
  v3 = sub_1DD640378();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[17];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD38D000, v2, v3, "SearchTermAppsRanker signal gathering took too long", v6, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  v7 = v0[15];
  v8 = v0[16];
  v10 = v0[13];
  v9 = v0[14];

  v11 = v0[1];
  v12 = OUTLINED_FUNCTION_6_67();

  return v13(v12);
}

uint64_t sub_1DD598230@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAF8, &qword_1DD643E80);
  result = sub_1DD597FE4(v4, v5, a1 + *(v6 + 48));
  *a2 = result;
  a2[1] = v8;
  return result;
}

void *SearchTermAppsRanker.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t SearchTermAppsRanker.__deallocating_deinit()
{
  SearchTermAppsRanker.deinit();

  return swift_deallocClassInstance();
}

id sub_1DD5982F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_1DD63D078();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_1DD63CFA8();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1DD63CFA8();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

void sub_1DD59842C()
{
  OUTLINED_FUNCTION_22_29();
  if (*(v0 + 16))
  {
    v1 = v0;
    OUTLINED_FUNCTION_6_67();
    sub_1DD3C16BC();
    OUTLINED_FUNCTION_2_96();
    sub_1DD5D497C(v2, v3, v4, v1);
    OUTLINED_FUNCTION_11_46();
    OUTLINED_FUNCTION_24_21();
    if (!v5)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_21_31();
}

void sub_1DD598494(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD30, &unk_1DD649DE0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1DD598568(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1DD59870C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1DD6407B8();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1DD3C253C(v2, 0);

    v1 = sub_1DD5D5178(&v5, (v3 + 32), v2, v1);
    sub_1DD3AA5A4();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1DD5987BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_22_29();
  a25 = v26;
  a26 = v31;
  v32 = *(v27 + 16);
  if (v32)
  {
    v33 = v30;
    v34 = v29;
    v35 = v27;
    v36 = v28(*(v27 + 16), 0);
    v37 = v34(&a10, v36 + 32, v32, v35);
    v38 = a10;
    v39 = a11;
    v40 = a12;
    v41 = a13;
    v42 = a14;

    v33(v38, v39, v40, v41, v42);
    if (v37 != v32)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_21_31();
}

void *sub_1DD598878(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(a1 + 16);
  v4 = sub_1DD3C18C4();
  v5 = sub_1DD5D54AC(&v7, v4 + 4, v1, a1);

  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

void *sub_1DD59890C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v8 = sub_1DD59AC48(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1DD5989AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v58 = a5;
  sub_1DD4E75B8(v53);
  v7 = v53[1];
  v8 = v55;
  v9 = v56;
  v48 = v57;
  v49 = v53[0];
  v45 = v54;
  v10 = (v54 + 64) >> 6;

  v46 = a3;

  v47 = v7;
  if (v9)
  {
    while (1)
    {
      v50 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v49 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v49 + 56) + 8 * v13);
      v52[0] = *v14;
      v52[1] = v15;
      v52[2] = v16;

      v48(v51, v52);

      v17 = v51[0];
      v18 = v51[1];
      v19 = v51[2];
      v20 = *v58;
      v28 = sub_1DD3978DC();
      v29 = *(v20 + 16);
      v30 = (v21 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        break;
      }

      v32 = v21;
      if (*(v20 + 24) >= v31)
      {
        if ((v50 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1B0, &unk_1DD643EE0);
          sub_1DD640A18();
        }
      }

      else
      {
        v33 = v58;
        sub_1DD4E62AC(v31, v50 & 1, v22, v23, v24, v25, v26, v27, v44, v45, v46, SBYTE4(v46));
        v34 = *v33;
        v35 = sub_1DD3978DC();
        if ((v32 & 1) != (v36 & 1))
        {
          goto LABEL_26;
        }

        v28 = v35;
      }

      v9 &= v9 - 1;
      v37 = *v58;
      if (v32)
      {
        v38 = *(v37[7] + 8 * v28);

        if (__OFADD__(v38, v19))
        {
          goto LABEL_24;
        }

        *(v37[7] + 8 * v28) = v38 + v19;
      }

      else
      {
        v37[(v28 >> 6) + 8] |= 1 << v28;
        v39 = (v37[6] + 16 * v28);
        *v39 = v17;
        v39[1] = v18;
        *(v37[7] + 8 * v28) = v19;
        v40 = v37[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_25;
        }

        v37[2] = v42;
      }

      a4 = 1;
      v8 = v11;
      v7 = v47;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_1DD3AA5A4();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v50 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD598C54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v57 = a5;
  sub_1DD4E75B8(v52);
  v7 = v52[1];
  v8 = v54;
  v9 = v55;
  v46 = v56;
  v47 = v52[0];
  v44 = v53;
  v10 = (v53 + 64) >> 6;

  v45 = a3;

  if (v9)
  {
    while (1)
    {
      v49 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v47 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v47 + 56) + 8 * v13);
      v51[0] = *v14;
      v51[1] = v15;
      v51[2] = v16;

      v46(v50, v51);

      v17 = v50[0];
      v18 = v50[1];
      v48 = v50[2];
      v19 = *v57;
      v27 = sub_1DD3978DC();
      v28 = *(v19 + 16);
      v29 = (v20 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v20;
      if (*(v19 + 24) >= v30)
      {
        if ((v49 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1B0, &unk_1DD643EE0);
          sub_1DD640A18();
        }
      }

      else
      {
        v32 = v57;
        sub_1DD4E62AC(v30, v49 & 1, v21, v22, v23, v24, v25, v26, v43, v44, v45, SBYTE4(v45));
        v33 = *v32;
        v34 = sub_1DD3978DC();
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_24;
        }

        v27 = v34;
      }

      v9 &= v9 - 1;
      v36 = *v57;
      if (v31)
      {
        v37 = *(v36[7] + 8 * v27);

        *(v36[7] + 8 * v27) = v37;
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v38 = (v36[6] + 16 * v27);
        *v38 = v17;
        v38[1] = v18;
        *(v36[7] + 8 * v27) = v48;
        v39 = v36[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v36[2] = v41;
      }

      a4 = 1;
      v8 = v11;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_1DD3AA5A4();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v49 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD598EF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1DD3978DC();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_16_44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF230, &unk_1DD65E210);
    OUTLINED_FUNCTION_23_31();
    v9 = *(*(v18 + 48) + 16 * v7 + 8);

    v10 = *(v18 + 56);
    v11 = sub_1DD63F438();
    OUTLINED_FUNCTION_7(v11);
    (*(v12 + 32))(a1, v10 + *(v12 + 72) * v7, v11);
    sub_1DD640A28();
    v13 = OUTLINED_FUNCTION_14_40();
    v16 = v11;
  }

  else
  {
    sub_1DD63F438();
    v13 = OUTLINED_FUNCTION_46_1();
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_1DD598FFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_1DD3FEC6C();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_16_44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC390, &qword_1DD646188);
    OUTLINED_FUNCTION_23_31();
    v9 = *(v20 + 48);
    v10 = sub_1DD63D0F8();
    OUTLINED_FUNCTION_7(v10);
    (*(v11 + 8))(v9 + *(v11 + 72) * v7, v10);
    v12 = *(v20 + 56);
    v13 = type metadata accessor for AppRankEvent(0);
    OUTLINED_FUNCTION_7(v13);
    sub_1DD400D10(v12 + *(v14 + 72) * v7, a1);
    sub_1DD59B3C8(&qword_1EE163810, MEMORY[0x1E69695A8]);
    sub_1DD640A28();
    v15 = OUTLINED_FUNCTION_14_40();
    v18 = v13;
  }

  else
  {
    type metadata accessor for AppRankEvent(0);
    v15 = OUTLINED_FUNCTION_46_1();
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_1DD599154(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1DD640CA8();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF190, &qword_1DD649F58);
        v10 = sub_1DD640158();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1DD599268(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 24 * a3 - 24);
    v7 = result - a3;
    while (2)
    {
      v8 = *(v5 + 24 * v4 + 16);
      v9 = v7;
      v23 = v6;
      do
      {
        v10 = v6[2];
        v11 = v8 < v10;
        if (v8 == v10)
        {
          v13 = *v6;
          v12 = v6[1];
          v14 = v6[3];
          v15 = v6[4];

          v16 = MEMORY[0x1E12B2330](v14, v15);
          v17 = MEMORY[0x1E12B2330](v13, v12);

          v11 = v16 < v17;
        }

        if (!v11)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v18 = v6[4];
        v8 = v6[5];
        v20 = v6[2];
        v19 = v6[3];
        *(v6 + 3) = *v6;
        v6[5] = v20;
        *v6 = v19;
        v6[1] = v18;
        v6[2] = v8;
        v6 -= 3;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v23 + 3;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DD599390(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == v12[1])
        {
          break;
        }

        result = sub_1DD640CD8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = v12[4];
        v14 = v12[5];
        v15 = v12[2];
        result = v12[3];
        *(v12 + 3) = *v12;
        v12[5] = v15;
        *v12 = result;
        v12[1] = v10;
        v12[2] = v14;
        v12 -= 3;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
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

void sub_1DD599468(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v126 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v109 = v6 + 16;
      v110 = *(v6 + 2);
      while (v110 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_138;
        }

        v111 = v6;
        v112 = &v6[16 * v110];
        v113 = *v112;
        v6 = &v109[2 * v110];
        v114 = *(v6 + 1);
        sub_1DD59A1F4((*a3 + 24 * *v112), (*a3 + 24 * *v6), *a3 + 24 * v114, v126);
        if (v128)
        {
          break;
        }

        if (v114 < v113)
        {
          goto LABEL_126;
        }

        if (v110 - 2 >= *v109)
        {
          goto LABEL_127;
        }

        *v112 = v113;
        *(v112 + 1) = v114;
        v115 = *v109 - v110;
        if (*v109 < v110)
        {
          goto LABEL_128;
        }

        v128 = 0;
        v110 = *v109 - 1;
        sub_1DD4EC4E4(v6 + 16, v115, v6);
        *v109 = v110;
        v6 = v111;
      }

LABEL_109:

      return;
    }

LABEL_135:
    v6 = sub_1DD4EC2B8(v6);
    goto LABEL_101;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if ((v5 + 1) < v4)
    {
      v123 = v4;
      v9 = *a3;
      v10 = (*a3 + 24 * v8);
      v11 = v10[2];
      v12 = (*a3 + 24 * v7);
      v13 = v12[2];
      v14 = v11 < v13;
      if (v11 == v13)
      {
        v16 = *v12;
        v15 = v12[1];
        v17 = *v10;
        v18 = v10[1];

        v19 = MEMORY[0x1E12B2330](v17, v18);
        v20 = MEMORY[0x1E12B2330](v16, v15);

        v14 = v19 < v20;
      }

      v21 = v14;
      v118 = v6;
      v120 = v7;
      v22 = 0;
      v23 = v7 + 2;
      v116 = 24 * v7;
      v24 = (v9 + 24 * v7 + 64);
      v25 = v8;
      LODWORD(v126) = v21;
      do
      {
        v8 = v23;
        v6 = v25;
        v26 = v22;
        if (v23 >= v123)
        {
          break;
        }

        v27 = *(v24 - 3);
        v28 = *v24 < v27;
        if (*v24 == v27)
        {
          v30 = *(v24 - 5);
          v29 = *(v24 - 4);
          v31 = *(v24 - 2);
          v32 = *(v24 - 1);

          v33 = MEMORY[0x1E12B2330](v31, v32);
          v34 = MEMORY[0x1E12B2330](v30, v29);

          v21 = v126;
          v28 = v33 < v34;
        }

        v35 = v28;
        v23 = v8 + 1;
        v24 += 3;
        v25 = v6 + 1;
        v22 = v26 + 24;
      }

      while (v21 == v35);
      if (v21)
      {
        v7 = v120;
        if (v8 < v120)
        {
          goto LABEL_132;
        }

        if (v120 < v8)
        {
          v36 = 0;
          v37 = v120;
          do
          {
            if (v37 != v6)
            {
              if (!*a3)
              {
                goto LABEL_139;
              }

              v38 = *a3 + v116;
              v39 = (v38 + v36);
              v40 = v38 + v26;
              v41 = *v39;
              v42 = *(v39 + 2);
              v43 = *(v40 + 40);
              *v39 = *(v40 + 24);
              *(v39 + 2) = v43;
              *(v40 + 24) = v41;
              *(v40 + 40) = v42;
            }

            ++v37;
            v26 -= 24;
            v36 += 24;
            v14 = v37 < v6--;
          }

          while (v14);
        }

        v6 = v118;
      }

      else
      {
        v6 = v118;
        v7 = v120;
      }
    }

    v44 = a3[1];
    if (v8 < v44)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_131;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_46:
    if (v8 < v7)
    {
      goto LABEL_130;
    }

    v126 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v106 = *(v6 + 2);
      sub_1DD3BEB7C();
      v6 = v107;
    }

    v64 = *(v6 + 2);
    v65 = v64 + 1;
    v66 = v8;
    if (v64 >= *(v6 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v66 = v8;
      v6 = v108;
    }

    *(v6 + 2) = v65;
    v67 = v6 + 32;
    v68 = &v6[16 * v64 + 32];
    *v68 = v7;
    *(v68 + 1) = v66;
    v125 = *a1;
    if (!*a1)
    {
      goto LABEL_140;
    }

    if (v64)
    {
      while (1)
      {
        v69 = v65 - 1;
        v70 = &v67[16 * v65 - 16];
        v71 = &v6[16 * v65];
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v72 = *(v6 + 4);
          v73 = *(v6 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_66:
          if (v75)
          {
            goto LABEL_117;
          }

          v87 = *v71;
          v86 = *(v71 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_120;
          }

          v91 = *(v70 + 1);
          v92 = v91 - *v70;
          if (__OFSUB__(v91, *v70))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v89, v92))
          {
            goto LABEL_125;
          }

          if (v89 + v92 >= v74)
          {
            if (v74 < v92)
            {
              v69 = v65 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v65 < 2)
        {
          goto LABEL_119;
        }

        v94 = *v71;
        v93 = *(v71 + 1);
        v82 = __OFSUB__(v93, v94);
        v89 = v93 - v94;
        v90 = v82;
LABEL_81:
        if (v90)
        {
          goto LABEL_122;
        }

        v96 = *v70;
        v95 = *(v70 + 1);
        v82 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v82)
        {
          goto LABEL_124;
        }

        if (v97 < v89)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v69 - 1 >= v65)
        {
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
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        v101 = &v67[16 * v69 - 16];
        v102 = *v101;
        v103 = &v67[16 * v69];
        v104 = *(v103 + 1);
        sub_1DD59A1F4((*a3 + 24 * *v101), (*a3 + 24 * *v103), *a3 + 24 * v104, v125);
        if (v128)
        {
          goto LABEL_109;
        }

        if (v104 < v102)
        {
          goto LABEL_112;
        }

        v105 = v6;
        v6 = *(v6 + 2);
        if (v69 > v6)
        {
          goto LABEL_113;
        }

        *v101 = v102;
        *(v101 + 1) = v104;
        if (v69 >= v6)
        {
          goto LABEL_114;
        }

        v128 = 0;
        v65 = (v6 - 1);
        sub_1DD4EC4E4(v103 + 16, &v6[-v69 - 1], &v67[16 * v69]);
        *(v105 + 2) = v6 - 1;
        v14 = v6 > 2;
        v6 = v105;
        if (!v14)
        {
          goto LABEL_95;
        }
      }

      v76 = &v67[16 * v65];
      v77 = *(v76 - 8);
      v78 = *(v76 - 7);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_115;
      }

      v81 = *(v76 - 6);
      v80 = *(v76 - 5);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_116;
      }

      v83 = *(v71 + 1);
      v84 = v83 - *v71;
      if (__OFSUB__(v83, *v71))
      {
        goto LABEL_118;
      }

      v82 = __OFADD__(v74, v84);
      v85 = v74 + v84;
      if (v82)
      {
        goto LABEL_121;
      }

      if (v85 >= v79)
      {
        v99 = *v70;
        v98 = *(v70 + 1);
        v82 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v82)
        {
          goto LABEL_129;
        }

        if (v74 < v100)
        {
          v69 = v65 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v5 = v126;
    v4 = a3[1];
    if (v126 >= v4)
    {
      goto LABEL_99;
    }
  }

  v45 = &v7[a4];
  if (__OFADD__(v7, a4))
  {
    goto LABEL_133;
  }

  if (v45 >= v44)
  {
    v45 = a3[1];
  }

  if (v45 < v7)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v8 == v45)
  {
    goto LABEL_46;
  }

  v119 = v6;
  v121 = v7;
  v46 = *a3;
  v47 = *a3 + 24 * v8 - 24;
  v48 = v7 - v8;
  v124 = v45;
LABEL_36:
  v126 = v8;
  v49 = *(v46 + 24 * v8 + 16);
  v50 = v48;
  v51 = v47;
  while (1)
  {
    v52 = v51[2];
    v53 = v49 < v52;
    if (v49 == v52)
    {
      v55 = *v51;
      v54 = v51[1];
      v56 = v51[3];
      v57 = v51[4];

      v58 = MEMORY[0x1E12B2330](v56, v57);
      v59 = MEMORY[0x1E12B2330](v55, v54);

      v53 = v58 < v59;
    }

    if (!v53)
    {
LABEL_44:
      v8 = v126 + 1;
      v47 += 24;
      --v48;
      if (v126 + 1 == v124)
      {
        v8 = v124;
        v6 = v119;
        v7 = v121;
        goto LABEL_46;
      }

      goto LABEL_36;
    }

    if (!v46)
    {
      break;
    }

    v60 = v51[4];
    v49 = v51[5];
    v62 = v51[2];
    v61 = v51[3];
    *(v51 + 3) = *v51;
    v51[5] = v62;
    *v51 = v61;
    v51[1] = v60;
    v51[2] = v49;
    v51 -= 3;
    if (__CFADD__(v50++, 1))
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_1DD599B6C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1DD640CD8();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1DD640CD8()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = *(v25 + 2);
              v29 = *v26;
              *v25 = *(v26 - 1);
              *(v25 + 2) = v29;
              *(v26 - 1) = v27;
              *v26 = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
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
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == v39[1];
                if (v40 || (sub_1DD640CD8() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v37 = v39[4];
                v41 = v39[5];
                v42 = v39[2];
                v36 = v39[3];
                *(v39 + 3) = *v39;
                v39[5] = v42;
                *v39 = v36;
                v39[1] = v37;
                v39[2] = v41;
                v39 -= 3;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = v8[2];
        sub_1DD3BEB7C();
        v8 = v89;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1DD3BEB7C();
        v8 = v90;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v93 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_1DD59A478((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v93;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1DD59A0BC(&v97, *a1, a3);
LABEL_103:
}

uint64_t sub_1DD59A0BC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1DD59A478((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1DD59A1F4(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1DD3C2534(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v25 = v7;
        goto LABEL_33;
      }

      v12 = *(v6 + 2);
      v13 = *(v4 + 2);
      v14 = v12 < v13;
      if (v12 == v13)
      {
        v16 = *v4;
        v15 = *(v4 + 1);
        v17 = v7;
        v18 = *v6;
        v19 = *(v6 + 1);

        v20 = MEMORY[0x1E12B2330](v18, v19);
        v21 = MEMORY[0x1E12B2330](v16, v15);
        v7 = v17;

        v14 = v20 < v21;
      }

      if (!v14)
      {
        break;
      }

      v22 = v6;
      v23 = v7 == v6;
      v6 += 24;
      if (!v23)
      {
        goto LABEL_15;
      }

LABEL_16:
      v7 += 24;
    }

    v22 = v4;
    v23 = v7 == v4;
    v4 += 24;
    if (v23)
    {
      goto LABEL_16;
    }

LABEL_15:
    v24 = *v22;
    *(v7 + 2) = *(v22 + 2);
    *v7 = v24;
    goto LABEL_16;
  }

  sub_1DD3C2534(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_18:
  v25 = v6;
  v6 -= 24;
  v26 = v5;
  v43 = v6;
  while (v10 > v4 && v25 > v7)
  {
    v28 = *(v10 - 1);
    v29 = *(v25 - 1);
    if (v28 == v29)
    {
      v31 = *(v25 - 3);
      v30 = *(v25 - 2);
      v32 = v7;
      v33 = *(v10 - 3);
      v34 = *(v10 - 2);

      v35 = MEMORY[0x1E12B2330](v33, v34);
      v36 = MEMORY[0x1E12B2330](v31, v30);
      v7 = v32;
      v6 = v43;

      v5 = (v26 - 24);
      if (v35 < v36)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v5 = (v26 - 24);
      if (v28 < v29)
      {
LABEL_30:
        if (v26 != v25)
        {
          v39 = *v6;
          *(v5 + 16) = *(v6 + 2);
          *v5 = v39;
        }

        goto LABEL_18;
      }
    }

    v37 = v10 - 24;
    v23 = v10 == v26;
    v26 = v5;
    v10 -= 24;
    if (!v23)
    {
      v38 = *v37;
      *(v5 + 16) = *(v37 + 2);
      *v5 = v38;
      v26 = v5;
      v10 = v37;
    }
  }

LABEL_33:
  v40 = (v10 - v4) / 24;
  if (v25 != v4 || v25 >= &v4[24 * v40])
  {
    memmove(v25, v4, 24 * v40);
  }

  return 1;
}

uint64_t sub_1DD59A478(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1DD3C2534(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1DD640CD8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1DD3C2534(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_1DD640CD8() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

void *sub_1DD59A640(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v36 = v3;
    v34 = &v34;
    MEMORY[0x1EEE9AC00](v10);
    v35 = v8;
    v37 = (&v34 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v8, v37);
    v38 = 0;
    v39 = v5;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v3 = (v12 + 63) >> 6;
LABEL_6:
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_13:
      v18 = v15 | (v11 << 6);
      if (*(a2 + 16))
      {
        v40 = v15 | (v11 << 6);
        v41 = v14;
        v19 = (*(v5 + 48) + 16 * v18);
        v21 = *v19;
        v20 = v19[1];
        v22 = *(a2 + 40);
        sub_1DD640E28();

        sub_1DD63FD28();
        v23 = sub_1DD640E78();
        v9 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v24 = v23 & v9;
          if (((*(a2 + 56 + (((v23 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v9)) & 1) == 0)
          {
            break;
          }

          v25 = (*(a2 + 48) + 16 * v24);
          if (*v25 != v21 || v25[1] != v20)
          {
            v27 = sub_1DD640CD8();
            v23 = v24 + 1;
            if ((v27 & 1) == 0)
            {
              continue;
            }
          }

          v5 = v39;
          v14 = v41;
          goto LABEL_6;
        }

        v5 = v39;
        v18 = v40;
        v14 = v41;
      }

      *(v37 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
LABEL_26:
        sub_1DD515BB8(v37, v35, v38, v5);
        v30 = v29;
        goto LABEL_27;
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_26;
      }

      v17 = *(v8 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();

  v30 = sub_1DD59890C(v33, v8, v5, a2);

  MEMORY[0x1E12B3DA0](v33, -1, -1);
LABEL_27:
  swift_bridgeObjectRelease_n();
  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

uint64_t sub_1DD59A960(uint64_t a1)
{
  v2 = type metadata accessor for AppRankEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of SearchTermAppsRanker.rank(searchTerm:maxResults:excludeAppBundleIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v14 = *(*v6 + 112);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_1DD59AB54;

  return (v18)(a1, a2, a3, a4, a5 & 1, a6);
}

uint64_t sub_1DD59AB54()
{
  OUTLINED_FUNCTION_34_0();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_19_1();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_1DD59AC48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = result;
  v31 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = v12 | (v5 << 6);
    if (*(a4 + 16))
    {
      v34 = v9;
      v32 = v12 | (v5 << 6);
      v16 = (*(a3 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(a4 + 40);
      sub_1DD640E28();

      sub_1DD63FD28();
      v20 = sub_1DD640E78();
      v21 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v22 = v20 & v21;
        if (((*(v11 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          break;
        }

        v23 = (*(a4 + 48) + 16 * v22);
        if (*v23 != v18 || v23[1] != v17)
        {
          v25 = sub_1DD640CD8();
          v20 = v22 + 1;
          if ((v25 & 1) == 0)
          {
            continue;
          }
        }

        v9 = v34;
        goto LABEL_5;
      }

      v9 = v34;
      v15 = v32;
    }

    *(v30 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    if (__OFADD__(v31++, 1))
    {
      __break(1u);
LABEL_25:

      sub_1DD515BB8(v30, a2, v31, a3);
      v28 = v27;

      return v28;
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_25;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD59AE5C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD59AEB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRankEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD59AF18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF180, &qword_1DD6464B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD59AF84(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1DD59AFD0()
{
  v0 = sub_1DD3B56CC();
  v1 = sub_1DD3B7A58();
  if (*(v1 + 16))
  {
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v2 = sub_1DD63F9F8();
    __swift_project_value_buffer(v2, qword_1EE16F0C8);

    v3 = sub_1DD63F9D8();
    v4 = sub_1DD640368();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      v7 = MEMORY[0x1E12B2430](v1, MEMORY[0x1E69E6158]);
      v9 = sub_1DD39565C(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1DD38D000, v3, v4, "SearchTermAppsRanker adding in additionalSupportedApps %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1E12B3DA0](v6, -1, -1);
      MEMORY[0x1E12B3DA0](v5, -1, -1);
    }

    return sub_1DD608AE0(v1, v0);
  }

  else
  {
  }

  return v0;
}

uint64_t sub_1DD59B2C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD4E73C4(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_1DD59B318@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD59AE5C(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1DD59B374()
{
  result = qword_1ECCDF1E0;
  if (!qword_1ECCDF1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF1E0);
  }

  return result;
}

uint64_t sub_1DD59B3C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD59B410(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_11_46()
{
}

uint64_t OUTLINED_FUNCTION_12_40(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 - 132) & 1;

  return sub_1DD3AA558(v2, a2, v5);
}

uint64_t sub_1DD59B5F0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1DD400FBC();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_83(v2);
  return swift_unknownObjectRetain();
}

uint64_t sub_1DD59B63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1DD3978DC();
  if (v4)
  {
    return OUTLINED_FUNCTION_4_83(v3);
  }

  else
  {
    return 0;
  }
}

void *sub_1DD59B690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DD3978DC();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

void sub_1DD59B6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_78(a1, a2, a3);
  if (v5 && (v6 = v4, v7 = sub_1DD3978DC(), (v8 & 1) != 0))
  {
    v9 = *(v6 + 56) + 40 * v7;
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v14 = *(v9 + 32);
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  *v3 = v10;
  v3[1] = v11;
  v3[2] = v12;
  v3[3] = v13;
  v3[4] = v14;
}

uint64_t sub_1DD59B780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DD3978DC();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_1DD59B7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_78(a1, a2, a3);
  if (v5 && (v6 = v4, v7 = sub_1DD3978DC(), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCFC8, &qword_1DD64CD98);
    OUTLINED_FUNCTION_7(v11);
    sub_1DD3DD9B4(v10 + *(v12 + 72) * v9, v3, &qword_1ECCDCFC8, &qword_1DD64CD98);
    v13 = v3;
    v14 = 0;
    v15 = 1;
    v16 = v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCFC8, &qword_1DD64CD98);
    v13 = OUTLINED_FUNCTION_46_1();
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

double sub_1DD59B8A0@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_1DD400FBC(), (v4 & 1) != 0))
  {
    v5 = OUTLINED_FUNCTION_1_111(v3);

    sub_1DD395720(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1DD59B8FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v4 = sub_1DD3FE9F8(a1, a2, a3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_83(v4);
}

uint64_t sub_1DD59B948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1DD3978DC();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_83(v3);
}

double sub_1DD59B994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_78(a1, a2, a3);
  if (v4 && (v5 = sub_1DD3978DC(), (v6 & 1) != 0))
  {
    v7 = OUTLINED_FUNCTION_1_111(v5);

    sub_1DD395720(v7, v8);
  }

  else
  {
    result = 0.0;
    *v3 = 0u;
    v3[1] = 0u;
  }

  return result;
}

uint64_t sub_1DD59BA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_5_78(a1, a2, a3);
  if (v7 && (v8 = v6, v9 = sub_1DD3978DC(), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = a4(0);
    OUTLINED_FUNCTION_7(v13);
    (*(v14 + 16))(v4, v12 + *(v14 + 72) * v11, v13);
    v15 = v4;
    v16 = 0;
    v17 = 1;
    v18 = v13;
  }

  else
  {
    a4(0);
    v15 = OUTLINED_FUNCTION_46_1();
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

double sub_1DD59BADC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_1DD3FE928(a1), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_1_111(v4);

    sub_1DD395720(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1DD59BB38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (sub_1DD3FEC6C(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = type metadata accessor for AppRankEvent(0);
    sub_1DD59AEB4(v7 + *(*(v8 - 8) + 72) * v6, a2);
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = type metadata accessor for AppRankEvent(0);
    v9 = a2;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

void sub_1DD59BBE8(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = sub_1DD63D0F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 24);
  os_unfair_lock_lock((v12 + 24));
  sub_1DD43C214(*(*(v12 + 16) + 16), v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1DD390754(v6, &qword_1ECCDBAC8, &qword_1DD643E60);
    v13 = type metadata accessor for AppRankEvent(0);
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v13);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = *(v12 + 16);
    swift_beginAccess();
    v15 = *(v14 + 24);

    sub_1DD59BB38(v15, a1);

    (*(v8 + 8))(v11, v7);
  }

  os_unfair_lock_unlock((v12 + 24));
}

void *sub_1DD59BDD4()
{
  result = sub_1DD59BDF4();
  qword_1ECCDF240 = result;
  return result;
}

void *sub_1DD59BDF4()
{
  if (qword_1ECCDB108 != -1)
  {
    swift_once();
  }

  v0 = *(off_1ECCDF170 + 6);
  type metadata accessor for AppRankerSELFRecorder();

  v1 = sub_1DD3B83AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF248, &unk_1DD65E280);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DD643F80;
  *(v2 + 32) = sub_1DD59C81C;
  *(v2 + 40) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DD59BF18;
  *(v3 + 24) = 0;
  *(v2 + 48) = sub_1DD59C820;
  *(v2 + 56) = v3;
  type metadata accessor for SearchTermAppsRankerDataCollector();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = sub_1DD39A7E8;
  result[4] = 0;
  result[5] = v2;
  return result;
}

void sub_1DD59BF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD63FDA8();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v7[4] = sub_1DD59C828;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1DD59BFF8;
  v7[3] = &block_descriptor_17;
  v6 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

id sub_1DD59BFF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1DD395950();
    v5 = sub_1DD63FC48();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t static SearchTermAppsRankerDataCollector.shared.getter()
{
  if (qword_1ECCDB110 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DD59C0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v75 = a5;
  v73 = a2;
  v74 = a4;
  v76 = a3;
  v72 = type metadata accessor for AppRankSelectionEvent(0);
  v6 = OUTLINED_FUNCTION_7(v72);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v80 = type metadata accessor for AppRankEvent(0);
  v12 = OUTLINED_FUNCTION_7(v80);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v79 = v16 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v17 = OUTLINED_FUNCTION_7(v71);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v78 = &v70 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - v24;
  v26 = sub_1DD63D0F8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF180, &qword_1DD6464B0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v70 - v37;
  v77 = a1;
  sub_1DD3DD9B4(a1, v25, &qword_1ECCDBAC8, &qword_1DD643E60);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_1DD390754(v25, &qword_1ECCDBAC8, &qword_1DD643E60);
    v39 = v81;
    v40 = *(v81 + 16);
    sub_1DD59BBE8(v38);
  }

  else
  {
    (*(v27 + 32))(v31, v25, v26);
    v39 = v81;
    v41 = *(*(v81 + 16) + 24);
    os_unfair_lock_lock((v41 + 24));
    v42 = *(v41 + 16);
    swift_beginAccess();
    v43 = *(v42 + 24);

    os_unfair_lock_unlock((v41 + 24));
    sub_1DD59BB38(v43, v38);

    (*(v27 + 8))(v31, v26);
  }

  v44 = v38;
  sub_1DD3DD9B4(v38, v35, &unk_1ECCDF180, &qword_1DD6464B0);
  if (__swift_getEnumTagSinglePayload(v35, 1, v80) == 1)
  {
    sub_1DD390754(v35, &unk_1ECCDF180, &qword_1DD6464B0);
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v45 = sub_1DD63F9F8();
    __swift_project_value_buffer(v45, qword_1EE16F0C8);
    v46 = v78;
    sub_1DD3DD9B4(v77, v78, &qword_1ECCDBAC8, &qword_1DD643E60);
    v47 = sub_1DD63F9D8();
    v48 = sub_1DD640378();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v82 = v50;
      *v49 = 136315138;
      sub_1DD3DD9B4(v46, v70, &qword_1ECCDBAC8, &qword_1DD643E60);
      v51 = sub_1DD63FE38();
      v53 = v52;
      sub_1DD390754(v46, &qword_1ECCDBAC8, &qword_1DD643E60);
      v54 = sub_1DD39565C(v51, v53, &v82);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_1DD38D000, v47, v48, "SearchTermAppsRankerDataCollector could not find event for ID %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1E12B3DA0](v50, -1, -1);
      MEMORY[0x1E12B3DA0](v49, -1, -1);
    }

    else
    {

      sub_1DD390754(v46, &qword_1ECCDBAC8, &qword_1DD643E60);
    }
  }

  else
  {
    v55 = v79;
    sub_1DD400D10(v35, v79);
    v56 = sub_1DD59AEB4(v55, v11);
    v57 = *(v39 + 32);
    v58 = v72;
    v59 = v11 + *(v72 + 20);
    (*(v39 + 24))(v56);
    v60 = (v11 + *(v58 + 24));
    v61 = v74;
    v62 = v76;
    *v60 = v73;
    v60[1] = v62;
    v63 = v11 + *(v58 + 28);
    *v63 = v61;
    *(v63 + 8) = v75 & 1;
    v64 = *(v39 + 40);
    v65 = *(v64 + 16);
    if (v65)
    {

      v66 = (v64 + 40);
      do
      {
        v68 = *(v66 - 1);
        v67 = *v66;

        v68(v11);

        v66 += 2;
        --v65;
      }

      while (v65);
    }

    else
    {
    }

    sub_1DD59C760(v11, type metadata accessor for AppRankSelectionEvent);
    sub_1DD59C760(v55, type metadata accessor for AppRankEvent);
  }

  return sub_1DD390754(v44, &unk_1ECCDF180, &qword_1DD6464B0);
}

void *SearchTermAppsRankerDataCollector.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t SearchTermAppsRankerDataCollector.__deallocating_deinit()
{
  SearchTermAppsRankerDataCollector.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD59C760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD59C848(uint64_t a1)
{
  sub_1DD59D3F8(a1, &v5);
  if (v6)
  {
    sub_1DD3ADFD0(a1, &qword_1ECCDF250, &unk_1DD65E300);
    sub_1DD3AA4A8(&v5, &v7);
LABEL_3:
    sub_1DD3AA4A8(&v7, v1 + 16);
    return v1;
  }

  v8 = sub_1DD63EFC8();
  v9 = &off_1F58BF790;
  __swift_allocate_boxed_opaque_existential_1(&v7);
  sub_1DD63EFB8();
  if (!v2)
  {
    sub_1DD3ADFD0(a1, &qword_1ECCDF250, &unk_1DD65E300);
    if (v6)
    {
      sub_1DD3ADFD0(&v5, &qword_1ECCDF250, &unk_1DD65E300);
    }

    goto LABEL_3;
  }

  sub_1DD3ADFD0(a1, &qword_1ECCDF250, &unk_1DD65E300);
  __swift_deallocate_boxed_opaque_existential_1(&v7);
  if (v6)
  {
    sub_1DD3ADFD0(&v5, &qword_1ECCDF250, &unk_1DD65E300);
  }

  type metadata accessor for SeasAppMatcherRule();
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t sub_1DD59C970(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1DD63F318();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_1DD63F1F8();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD59CA90, 0, 0);
}

void sub_1DD59CA90()
{
  v1 = v0[8];
  sub_1DD3C2388(v0[9] + 16, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = 0;
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  v5 = (v3 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 != v2)
  {
    if (v2 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v8 = *(v5 - 1);
    v7 = *v5;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = v6[2];
      sub_1DD3BE2A4();
      v6 = v12;
    }

    v9 = v6[2];
    if (v9 >= v6[3] >> 1)
    {
      sub_1DD3BE2A4();
      v6 = v13;
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = v8;
    v10[5] = v7;
    v5 += 3;
    ++v2;
  }

  v14 = v0[8];
  sub_1DD59CDC0(v6, v0[15]);
  v15 = v0[15];
  v16 = v0[14];
  v22 = v0[13];
  v18 = v0[11];
  v17 = v0[12];
  v19 = v0[10];
  v20 = v0[7];

  sub_1DD63F1D8();
  sub_1DD59D21C(v17, v20);
  (*(v18 + 8))(v17, v19);
  (*(v16 + 8))(v15, v22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v21 = v0[1];

  v21();
}

uint64_t sub_1DD59CCF4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DD3B5438;

  return sub_1DD59C970(a1, a2);
}

uint64_t sub_1DD59CDC0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v31 - v7;
  v9 = sub_1DD63F318();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[2];
  if (v14 == 1)
  {
    if (qword_1EE162D98 != -1)
    {
      swift_once();
    }

    v32 = v9;
    v19 = sub_1DD63F9F8();
    __swift_project_value_buffer(v19, qword_1EE16EFB8);

    v20 = sub_1DD63F9D8();
    v21 = sub_1DD640368();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 136315138;
      v31[1] = v3;
      v24 = a1[4];
      v25 = a1[5];

      v26 = sub_1DD39565C(v24, v25, &v34);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1DD38D000, v20, v21, "SRAppMatcher#resolve has 1 candidate: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
      MEMORY[0x1E12B3DA0](v22, -1, -1);
    }

    v27 = a1[5];
    *v13 = a1[4];
    v13[1] = v27;
    (*(v10 + 104))(v13, *MEMORY[0x1E69D2A58], v32);

    return sub_1DD63F1E8();
  }

  if (!v14)
  {
    if (qword_1EE162D98 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD63F9F8();
    __swift_project_value_buffer(v15, qword_1EE16EFB8);
    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640368();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DD38D000, v16, v17, "SRAppMatcher#resolve has no candidates", v18, 2u);
      MEMORY[0x1E12B3DA0](v18, -1, -1);
    }

    goto LABEL_8;
  }

  v29 = sub_1DD63EFC8();
  (*(*(v29 - 8) + 16))(v8, v2, v29);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v29);
  v30 = CommsAppResolutionFeature.getBundleContactStats(appMatcher:bundleIds:groupBySiriDonation:)(v8, a1, 0);
  result = sub_1DD3ADFD0(v8, &qword_1ECCDBBC8, &qword_1DD643FC0);
  if (!v3)
  {
    if (v30)
    {
      if (*(v30 + 16))
      {
        sub_1DD63EF58();

        sub_1DD63EFA8();
      }
    }

LABEL_8:
    (*(v10 + 104))(v13, *MEMORY[0x1E69D2A40], v9);
    return sub_1DD63F1E8();
  }

  return result;
}

uint64_t sub_1DD59D21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD63F318();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v9, a1, v4, v7);
  result = (*(v5 + 88))(v9, v4);
  if (result == *MEMORY[0x1E69D2A58])
  {
    result = (*(v5 + 96))(v9, v4);
    v11 = v9[1];
    *a2 = *v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69D2A48])
  {
    result = (*(v5 + 96))(v9, v4);
    v12 = v9[1];
    *a2 = *v9;
    *(a2 + 8) = v12;
    v13 = 1;
LABEL_7:
    *(a2 + 16) = v13;
    return result;
  }

  if (result == *MEMORY[0x1E69D2A50])
  {
    result = (*(v5 + 96))(v9, v4);
    *a2 = *v9;
    *(a2 + 8) = 0;
    v13 = 2;
    goto LABEL_7;
  }

  v14 = *MEMORY[0x1E69D2A40];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  if (result != v14)
  {
    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_1DD59D3F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF250, &unk_1DD65E300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1E12B3DA0);
  }

  return result;
}

uint64_t SeasAppUsageRule.__allocating_init(appUsageProvider:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1DD59D50C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD59D530, 0, 0);
}

uint64_t sub_1DD59D530()
{
  v190 = v0;
  sub_1DD3C4F88(v0[3]);
  if (!v3)
  {
    v11 = v0[2];
    *v11 = 0;
    v11[1] = 0;
    goto LABEL_71;
  }

  v4 = v1;
  v5 = v2;

  if (__OFADD__(v4, v5))
  {
    goto LABEL_87;
  }

  if (v4 + v5 <= 1)
  {
    if (qword_1EE162D98 != -1)
    {
      goto LABEL_88;
    }

    goto LABEL_5;
  }

  v12 = 0;
  v183 = v0;
  v13 = *(v0[3] + 24);
  v14 = *(v13 + 16);
  v15 = (v13 + 40);
  v16 = MEMORY[0x1E69E7CC0];
  while (v14 != v12)
  {
    if (v12 >= *(v13 + 16))
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      OUTLINED_FUNCTION_0_4();
LABEL_5:
      v6 = sub_1DD63F9F8();
      __swift_project_value_buffer(v6, qword_1EE16EFB8);
      v7 = sub_1DD63F9D8();
      v8 = sub_1DD640368();
      if (os_log_type_enabled(v7, v8))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_35_0(&dword_1DD38D000, v9, v10, "#SeasAppUsageRule: current contact exists in fewer than 2 apps, skip app usage rule");
        OUTLINED_FUNCTION_0_1();
      }

LABEL_70:
      v149 = v0[2];

      *v149 = 0;
      v149[1] = 0;
LABEL_71:
      v144 = 3;
      goto LABEL_72;
    }

    v18 = *(v15 - 1);
    v17 = *v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = *(v16 + 16);
      sub_1DD3BE2A4();
      v16 = v22;
    }

    v19 = *(v16 + 16);
    if (v19 >= *(v16 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v16 = v23;
    }

    *(v16 + 16) = v19 + 1;
    v20 = v16 + 16 * v19;
    *(v20 + 32) = v18;
    *(v20 + 40) = v17;
    v15 += 3;
    ++v12;
  }

  v25 = sub_1DD59E4F0(v24, 7);

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v26 = sub_1DD63F9F8();
  __swift_project_value_buffer(v26, qword_1EE16EFB8);

  v27 = sub_1DD63F9D8();
  v28 = sub_1DD640368();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v189[0] = v30;
    *v29 = 136315138;
    v31 = MEMORY[0x1E12B2430](v16, MEMORY[0x1E69E6158]);
    v33 = v32;

    v34 = sub_1DD39565C(v31, v33, v189);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_1DD38D000, v27, v28, "#SeasAppUsageRule candidate apps: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
  }

  v35 = sub_1DD63F9D8();
  v36 = sub_1DD640368();

  if (os_log_type_enabled(v35, v36))
  {
    swift_slowAlloc();
    v37 = OUTLINED_FUNCTION_60();
    v189[0] = v37;
    *v28 = 134218242;
    *(v28 + 4) = 7;
    *(v28 + 6) = 2080;
    sub_1DD5210EC();
    v38 = sub_1DD63FC68();
    v40 = sub_1DD39565C(v38, v39, v189);

    *(v28 + 14) = v40;
    _os_log_impl(&dword_1DD38D000, v35, v36, "#SeasAppUsageRule app usage in last %ld days: %s", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_4_6();
  }

  v41 = -1;
  v42 = -1 << *(v25 + 32);
  if (-v42 < 64)
  {
    v41 = ~(-1 << -v42);
  }

  v43 = v41 & *(v25 + 64);
  if (v43)
  {
    v44 = 0;
    v45 = __clz(__rbit64(v43));
    v35 = ((v43 - 1) & v43);
    v46 = (63 - v42) >> 6;
    goto LABEL_31;
  }

  v47 = 0;
  v46 = (63 - v42) >> 6;
  do
  {
    if (v46 - 1 == v43)
    {

      v7 = sub_1DD63F9D8();
      v146 = sub_1DD640378();
      if (os_log_type_enabled(v7, v146))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_35_0(&dword_1DD38D000, v147, v148, "#SeasAppUsageRule can't find maxUsage app, this not expected");
        OUTLINED_FUNCTION_0_1();
      }

      goto LABEL_70;
    }

    v44 = v43 + 1;
    v48 = *(v25 + 8 * v43 + 72);
    v47 -= 64;
    ++v43;
  }

  while (!v48);
  OUTLINED_FUNCTION_4_84();
LABEL_31:
  v49 = (*(v25 + 48) + 16 * v45);
  v50 = v49[1];
  v184 = *v49;
  v0 = *(*(v25 + 56) + 8 * v45);

  v188 = v50;

  v51 = v0;
  while (1)
  {
    v52 = v44;
    if (!v35)
    {
      break;
    }

LABEL_36:
    OUTLINED_FUNCTION_88();
    v54 = v53 | (v44 << 6);
    v55 = *(v25 + 48) + 16 * v54;
    v0 = *v55;
    v28 = *(v55 + 8);
    v56 = *(*(v25 + 56) + 8 * v54);

    v57 = v56;
    [v51 doubleValue];
    v59 = v58;
    [v57 doubleValue];
    if (v59 < v60)
    {

      v51 = v57;
      v188 = v28;
      v184 = v0;
    }

    else
    {
    }
  }

  while (1)
  {
    v44 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_85;
    }

    if (v44 >= v46)
    {
      break;
    }

    v35 = *(v25 + 64 + 8 * v44);
    ++v52;
    if (v35)
    {
      goto LABEL_36;
    }
  }

  swift_bridgeObjectRetain_n();
  v182 = v51;
  v61 = sub_1DD59E5BC(v25, v184, v188, v182);

  v62 = -1 << *(v61 + 32);
  if (-v62 < 64)
  {
    v63 = ~(-1 << -v62);
  }

  else
  {
    v63 = -1;
  }

  v64 = v63 & *(v61 + 64);
  if (v64)
  {
    v65 = 0;
    v66 = __clz(__rbit64(v64));
    v35 = ((v64 - 1) & v64);
    v67 = (63 - v62) >> 6;
    goto LABEL_48;
  }

  v68 = 0;
  v67 = (63 - v62) >> 6;
  while (v67 - 1 != v64)
  {
    v65 = v64 + 1;
    v69 = *(v61 + 8 * v64 + 72);
    v68 -= 64;
    ++v64;
    if (v69)
    {
      OUTLINED_FUNCTION_4_84();
LABEL_48:
      v70 = (*(v61 + 48) + 16 * v66);
      v71 = *v70;
      v0 = *(*(v61 + 56) + 8 * v66);
      v185 = v70[1];

      v72 = v0;

LABEL_49:
      v73 = v65;
      v186 = v71;
      if (v35)
      {
        while (1)
        {
          v65 = v73;
LABEL_54:
          OUTLINED_FUNCTION_88();
          v75 = v74 | (v65 << 6);
          v76 = *(v61 + 48) + 16 * v75;
          v0 = *v76;
          v77 = *(v76 + 8);
          v78 = *(*(v61 + 56) + 8 * v75);

          v28 = v78;
          [v72 doubleValue];
          v80 = v79;
          [v28 doubleValue];
          if (v80 < v81)
          {

            v72 = v28;
            v185 = v77;
            v71 = v0;
            goto LABEL_49;
          }

          v73 = v65;
        }
      }

      do
      {
        v65 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_86;
        }

        if (v65 >= v67)
        {

          v82 = v182;
          v83 = v185;

          v84 = v72;
          v85 = sub_1DD63F9D8();
          v86 = sub_1DD640368();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = v71;
            v89 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v189[0] = v28;
            *v87 = 136315906;

            v90 = v84;
            v91 = sub_1DD39565C(v184, v188, v189);

            *(v87 + 4) = v91;
            *(v87 + 12) = 2112;
            *(v87 + 14) = v82;
            *v89 = v82;
            *(v87 + 22) = 2080;
            v92 = v82;

            v93 = sub_1DD39565C(v88, v185, v189);

            *(v87 + 24) = v93;
            v84 = v90;
            *(v87 + 32) = 2112;
            *(v87 + 34) = v90;
            v89[1] = v90;
            v94 = v90;
            _os_log_impl(&dword_1DD38D000, v85, v86, "#SeasAppUsageRule found maxUsage %s:%@ and secondMaxUsage: %s:%@", v87, 0x2Au);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF90, &qword_1DD6445B0);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_0_1();
            swift_arrayDestroy();
            OUTLINED_FUNCTION_4_6();
            v83 = v185;
            OUTLINED_FUNCTION_0_1();
          }

          [v84 doubleValue];
          v95 = v184;
          if (v96 == 0.0 || ([v82 doubleValue], v98 = v97, objc_msgSend(v84, sel_doubleValue), v98 / v99 >= 3.0))
          {

            v125 = v82;
            v126 = sub_1DD63F9D8();
            v127 = sub_1DD640368();

            if (os_log_type_enabled(v126, v127))
            {
              swift_slowAlloc();
              v128 = v84;
              v129 = OUTLINED_FUNCTION_60();
              v189[0] = v129;
              *v28 = 134218242;
              *(v28 + 4) = 0x4008000000000000;
              *(v28 + 6) = 2080;

              v138 = OUTLINED_FUNCTION_6_68(v130, v131, v132, v133, v134, v135, v136, v137);

              *(v28 + 14) = v138;
              OUTLINED_FUNCTION_1_112();
              _os_log_impl(v139, v140, v141, v142, v143, 0x16u);
              __swift_destroy_boxed_opaque_existential_1(v129);
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_4_6();
            }

            else
            {
            }

            v144 = 0;
            v0 = v183;
            v145 = v183[2];
            *v145 = v184;
            v145[1] = v188;
          }

          else
          {
            [v82 doubleValue];
            v101 = v100;
            [v84 doubleValue];
            if (v101 / v102 >= 2.0)
            {

              v160 = v82;
              v161 = sub_1DD63F9D8();
              v162 = sub_1DD640368();

              if (os_log_type_enabled(v161, v162))
              {
                swift_slowAlloc();
                v163 = v84;
                v164 = OUTLINED_FUNCTION_60();
                v189[0] = v164;
                *v28 = 134218498;
                *(v28 + 4) = 0x4008000000000000;
                *(v28 + 6) = 2048;
                *(v28 + 14) = 0x4000000000000000;
                *(v28 + 11) = 2080;

                v173 = OUTLINED_FUNCTION_6_68(v165, v166, v167, v168, v169, v170, v171, v172);

                *(v28 + 3) = v173;
                OUTLINED_FUNCTION_1_112();
                _os_log_impl(v174, v175, v176, v177, v178, 0x20u);
                __swift_destroy_boxed_opaque_existential_1(v164);
                OUTLINED_FUNCTION_0_1();
                OUTLINED_FUNCTION_4_6();
              }

              else
              {
              }

              v0 = v183;
              v181 = v183[2];
              *v181 = v184;
              v181[1] = v188;
              v144 = 1;
            }

            else
            {

              v103 = v82;

              v104 = v84;
              v105 = sub_1DD63F9D8();
              v106 = sub_1DD640368();

              if (os_log_type_enabled(v105, v106))
              {
                v187 = v103;
                v107 = swift_slowAlloc();
                v189[0] = swift_slowAlloc();
                *v107 = 134218498;
                *(v107 + 4) = 0x4000000000000000;
                *(v107 + 12) = 2080;

                v116 = OUTLINED_FUNCTION_6_68(v108, v109, v110, v111, v112, v113, v114, v115);

                *(v107 + 14) = v116;
                *(v107 + 22) = 2080;

                v117 = v186;
                v118 = sub_1DD39565C(v186, v83, v189);

                *(v107 + 24) = v118;
                v95 = v184;
                OUTLINED_FUNCTION_1_112();
                _os_log_impl(v119, v120, v121, v122, v123, 0x20u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_0_1();
                v103 = v187;
                OUTLINED_FUNCTION_0_1();

                v0 = v183;
                v124 = v188;
              }

              else
              {

                v0 = v183;
                v124 = v188;
                v117 = v186;
              }

              v179 = v0[2];
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
              v180 = swift_allocObject();
              *(v180 + 16) = xmmword_1DD643F80;
              *(v180 + 32) = v95;
              *(v180 + 40) = v124;
              *(v180 + 48) = v117;
              *(v180 + 56) = v83;

              *v179 = v180;
              v179[1] = 0;
              v144 = 2;
            }
          }

          goto LABEL_72;
        }

        v35 = *(v61 + 64 + 8 * v65);
        ++v73;
      }

      while (!v35);
      goto LABEL_54;
    }
  }

  v152 = sub_1DD63F9D8();
  v153 = sub_1DD640368();
  if (os_log_type_enabled(v152, v153))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_1_112();
    _os_log_impl(v154, v155, v156, v157, v158, 2u);
    OUTLINED_FUNCTION_4_6();
  }

  v0 = v183;
  v159 = v183[2];

  v144 = 0;
  *v159 = v184;
  v159[1] = v188;
LABEL_72:
  *(v0[2] + 16) = v144;
  v150 = v0[1];

  return v150();
}

uint64_t SeasAppUsageRule.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SeasAppUsageRule.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DD59E420(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DD3B5438;

  return sub_1DD59D50C(a1, a2);
}

uint64_t sub_1DD59E4F0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69BDBF0]) init];
  v4 = sub_1DD6400F8();
  v5 = [v3 relativeAppUsageProbabilitiesForCandidateBundleIds:v4 daysAgo:a2];

  sub_1DD5210EC();
  v6 = sub_1DD63FC58();

  return v6;
}

uint64_t sub_1DD59E5BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = a4;
  v13 = v12;
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v19 = swift_slowAlloc();

      v20 = v13;
      a2 = sub_1DD59EB30(v19, v11, a1, a2, a3, v20);
      MEMORY[0x1E12B3DA0](v19, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - ((8 * v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1DD57634C(0, v11, v14);

  v15 = v13;
  v16 = sub_1DD59E9CC(v14, v11, a1, a2, a3, v15);
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v16;
  }

LABEL_6:

  swift_bridgeObjectRelease_n();
  v17 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t dispatch thunk of SeasAppUsageRule.resolve(features:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 96);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DD3B5438;

  return v10(a1, a2);
}

uint64_t sub_1DD59E9CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v27 = result;
  v9 = 0;
  v10 = 0;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v10 << 6);
    v20 = (*(a3 + 48) + 16 * v19);
    result = *v20;
    if (*v20 != a4 || v20[1] != a5)
    {
      result = sub_1DD640CD8();
      if ((result & 1) == 0)
      {
        *(v27 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_19:
          sub_1DD621D9C(v27, a2, v9, a3);
          v24 = v23;

          return v24;
        }
      }
    }
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_19;
    }

    v18 = *(v11 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DD59EB30(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v12 = a6;
    v13 = sub_1DD59E9CC(v11, a2, a3, a4, a5, v12);

    swift_bridgeObjectRelease_n();

    return v13;
  }

  return result;
}

uint64_t sub_1DD59EC14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD59EC34, 0, 0);
}

uint64_t sub_1DD59EC34()
{
  v24 = v0;
  v1 = sub_1DD3C4F88(v0[3]);
  if (!v2)
  {
    goto LABEL_7;
  }

  v5 = v2;
  if (v4 > 0 || v3 != 1)
  {

LABEL_7:
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v7 = sub_1DD63F9F8();
    __swift_project_value_buffer(v7, qword_1EE16EFB8);
    v8 = sub_1DD63F9D8();
    v9 = sub_1DD640368();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DD38D000, v8, v9, "#SeasContactInSingleAppRule#resolve: noMatchFound", v10, 2u);
      MEMORY[0x1E12B3DA0](v10, -1, -1);
    }

    v11 = v0[2];

    *v11 = 0;
    v11[1] = 0;
    v12 = 3;
    goto LABEL_17;
  }

  v13 = v1;
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v14 = sub_1DD63F9F8();
  __swift_project_value_buffer(v14, qword_1EE16EFB8);

  v15 = sub_1DD63F9D8();
  v16 = sub_1DD640368();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136315138;

    v19 = sub_1DD39565C(v13, v5, &v23);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_1DD38D000, v15, v16, "#SeasContactInSingleAppRule#resolve: current contact only exists in one third party app %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E12B3DA0](v18, -1, -1);
    MEMORY[0x1E12B3DA0](v17, -1, -1);
  }

  v12 = 0;
  v20 = v0[2];
  *v20 = v13;
  v20[1] = v5;
LABEL_17:
  *(v0[2] + 16) = v12;
  v21 = v0[1];

  return v21();
}

uint64_t sub_1DD59EEDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD3B5438;

  return sub_1DD59EC14(a1, a2);
}

uint64_t dispatch thunk of SeasContactInSingleAppRule.resolve(features:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DD3B5438;

  return v10(a1, a2);
}

uint64_t *sub_1DD59F13C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  sub_1DD3C2388(a1, (v3 + 2));
  v3[7] = a2;
  v12 = sub_1DD63EFC8();
  if (__swift_getEnumTagSinglePayload(a3, 1, v12) != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v16 = v3 + OBJC_IVAR____TtC13SiriInference24SeASModelAppResolverRule_appMatcher;
    v17 = a3;
LABEL_6:
    sub_1DD5A0600(v17, v16);
    return v3;
  }

  sub_1DD63EFB8();
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_1DD3ADFD0(a3, &qword_1ECCDBBC8, &qword_1DD643FC0);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
    v16 = v3 + OBJC_IVAR____TtC13SiriInference24SeASModelAppResolverRule_appMatcher;
    v17 = v11;
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1DD3ADFD0(a3, &qword_1ECCDBBC8, &qword_1DD643FC0);
  __swift_destroy_boxed_opaque_existential_1(v3 + 2);
  v13 = v3[7];

  type metadata accessor for SeASModelAppResolverRule();
  v14 = *(*v3 + 48);
  v15 = *(*v3 + 52);
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_1DD59F308(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = sub_1DD63D078();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = sub_1DD63F148();
  v3[23] = v7;
  v8 = *(v7 - 8);
  v3[24] = v8;
  v9 = *(v8 + 64) + 15;
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD59F428, 0, 0);
}

uint64_t sub_1DD59F428()
{
  v123 = v0;
  v1 = 0;
  v2 = *(v0[18] + 24);
  v3 = *(v2 + 16);
  v4 = (v2 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v3 == v1)
    {
      v13 = *(v0[19] + 56);

      v3 = sub_1DD59E4F0(v14, 7);

      if (qword_1EE162D98 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_60;
    }

    if (v1 >= *(v2 + 16))
    {
      break;
    }

    v7 = *(v4 - 1);
    v6 = *v4;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = *(v5 + 16);
      sub_1DD3BE2A4();
      v5 = v11;
    }

    v8 = *(v5 + 16);
    if (v8 >= *(v5 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v5 = v12;
    }

    *(v5 + 16) = v8 + 1;
    v9 = v5 + 16 * v8;
    *(v9 + 32) = v7;
    *(v9 + 40) = v6;
    v4 += 3;
    ++v1;
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    OUTLINED_FUNCTION_0_4();
LABEL_10:
    v15 = sub_1DD63F9F8();
    __swift_project_value_buffer(v15, qword_1EE16EFB8);

    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640368();

    v121 = v0;
    v119 = v2;
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v122[0] = v19;
      *v18 = 136315138;
      v20 = MEMORY[0x1E12B2430](v5, MEMORY[0x1E69E6158]);
      v22 = sub_1DD39565C(v20, v21, v122);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1DD38D000, v16, v17, "SeASModelAppResolverRule#resolve candidate apps: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v23 = sub_1DD63F9D8();
    v24 = sub_1DD640368();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v122[0] = v26;
      *v25 = 134218242;
      *(v25 + 4) = 7;
      *(v25 + 12) = 2080;
      sub_1DD5210EC();
      v27 = sub_1DD63FC68();
      v29 = sub_1DD39565C(v27, v28, v122);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_1DD38D000, v23, v24, "SeASModelAppResolverRule#resolve app usage in last %ld days: %s", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v30 = v0;
    v31 = v0[18];
    v32 = CommsAppResolutionFeature.getBundleContactStats(appMatcher:bundleIds:groupBySiriDonation:)(v0[19] + OBJC_IVAR____TtC13SiriInference24SeASModelAppResolverRule_appMatcher, v5, 0);
    if (!v32)
    {

      v89 = sub_1DD63F9D8();
      v90 = sub_1DD640368();
      if (OUTLINED_FUNCTION_37(v90))
      {
        *OUTLINED_FUNCTION_9() = 0;
        v93 = "SeASModelAppResolverRule#resolve interaction stats is nil";
LABEL_48:
        OUTLINED_FUNCTION_11_47(&dword_1DD38D000, v91, v92, v93);
        OUTLINED_FUNCTION_0_1();
      }

LABEL_49:
      v95 = v30[17];

      *v95 = 0;
      *(v95 + 8) = 0;
      *(v95 + 16) = 3;
LABEL_54:
      v104 = v30[25];
      v105 = v30[22];

      v106 = v30[1];

      return v106();
    }

    v33 = sub_1DD63F9D8();
    v34 = sub_1DD640368();

    v107 = v3;
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v121[23];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v122[0] = v37;
      *v36 = 136315138;
      v38 = sub_1DD63FC68();
      v3 = sub_1DD39565C(v38, v39, v122);

      *(v36 + 4) = v3;
      _os_log_impl(&dword_1DD38D000, v33, v34, "SeASModelAppResolverRule#resolve interaction stats %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_0_1();
      v30 = v121;
      OUTLINED_FUNCTION_0_1();
    }

    v40 = v30[24];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB58, &qword_1DD65E1B0);
    v41 = sub_1DD640A58();
    v110 = v41;
    v42 = 0;
    v120 = v32;
    v44 = *(v32 + 64);
    v0 = (v32 + 64);
    v43 = v44;
    v45 = 1 << *(v0 - 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v2 = (v45 + 63) >> 6;
    v118 = v40;
    v112 = v41 + 64;
    v47 = v40;
    if ((v46 & v43) != 0)
    {
      break;
    }

LABEL_21:
    v50 = v42;
    while (1)
    {
      v42 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v42 >= v2)
      {
        v62 = v30[21];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB48, &qword_1DD643EC8);
        v63 = sub_1DD640A58();
        v2 = v63;
        v64 = 0;
        v65 = 1 << *(v120 + 32);
        v66 = -1;
        if (v65 < 64)
        {
          v66 = ~(-1 << v65);
        }

        v67 = v66 & *(v120 + 64);
        v68 = (v65 + 63) >> 6;
        v108 = v63 + 64;
        v109 = v63;
        while (v67)
        {
          OUTLINED_FUNCTION_10_51();
          v111 = v70;
LABEL_39:
          v73 = v69 | (v64 << 6);
          v3 = v121[25];
          v75 = v121[22];
          v74 = v121[23];
          v76 = (*(v120 + 48) + 16 * v73);
          v117 = *v76;
          v113 = v121[20];
          v115 = v76[1];
          (*(v118 + 16))(v3, *(v120 + 56) + *(v118 + 72) * v73, v74);

          sub_1DD63F108();
          sub_1DD63CFF8();
          v78 = v77;
          (*(v62 + 8))(v75, v113);
          v79 = log(fabs(v78));
          result = (*(v118 + 8))(v3, v74);
          *(v108 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
          v2 = v109;
          v80 = (v109[6] + 16 * v73);
          *v80 = v117;
          v80[1] = v115;
          *(v109[7] + 8 * v73) = v79;
          v81 = v109[2];
          v60 = __OFADD__(v81, 1);
          v82 = v81 + 1;
          if (v60)
          {
            goto LABEL_62;
          }

          v109[2] = v82;
          v67 = v111;
        }

        v71 = v64;
        while (1)
        {
          v64 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            goto LABEL_59;
          }

          if (v64 >= v68)
          {
            v30 = v121;
            v83 = v121[19];

            v84 = v83[5];
            v85 = v83[6];
            __swift_project_boxed_opaque_existential_1(v83 + 2, v84);
            sub_1DD3C56E8(v84, v85, (v121 + 7));
            if (v121[10])
            {
              sub_1DD3AA4A8((v121 + 7), (v121 + 2));
              v86 = sub_1DD59FEB4(v5, v119, v107, v110, v2);

              if (v86)
              {
                v87 = v121[5];
                v88 = v121[6];
                __swift_project_boxed_opaque_existential_1(v121 + 2, v87);
                (*(v88 + 16))(v86, v87, v88);
                v102 = v121[16];
                v101 = v121[17];
                v103 = v121[15];
                __swift_project_boxed_opaque_existential_1(v121 + 12, v103);
                (*(v102 + 24))(v5, v103, v102);

                __swift_destroy_boxed_opaque_existential_1(v121 + 12);
              }

              else
              {

                v96 = sub_1DD63F9D8();
                v97 = sub_1DD640368();
                if (OUTLINED_FUNCTION_37(v97))
                {
                  *OUTLINED_FUNCTION_9() = 0;
                  OUTLINED_FUNCTION_11_47(&dword_1DD38D000, v98, v99, "SeASModelAppResolverRule#resolve Unable to generate CoreML model feature input");
                  OUTLINED_FUNCTION_0_1();
                }

                v100 = v121[17];

                *v100 = 0;
                *(v100 + 8) = 0;
                *(v100 + 16) = 3;
              }

              __swift_destroy_boxed_opaque_existential_1(v121 + 2);
              goto LABEL_54;
            }

            sub_1DD3ADFD0((v121 + 7), &qword_1ECCDBF80, &unk_1DD657A00);
            v89 = sub_1DD63F9D8();
            v94 = sub_1DD640368();
            if (!OUTLINED_FUNCTION_37(v94))
            {
              goto LABEL_49;
            }

            *OUTLINED_FUNCTION_9() = 0;
            v93 = "SeASModelAppResolverRule#resolve Unable to get the CoreML model for prediction";
            goto LABEL_48;
          }

          ++v71;
          if (v0[v64])
          {
            OUTLINED_FUNCTION_9_51();
            v111 = v72;
            goto LABEL_39;
          }
        }
      }

      ++v50;
      if (v0[v42])
      {
        OUTLINED_FUNCTION_9_51();
        v114 = v51;
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    OUTLINED_FUNCTION_10_51();
    v114 = v49;
LABEL_26:
    v52 = v48 | (v42 << 6);
    v53 = v30[25];
    v3 = v30[23];
    v54 = (*(v120 + 48) + 16 * v52);
    v55 = v54[1];
    v116 = *v54;
    (*(v47 + 16))(v53, *(v120 + 56) + *(v47 + 72) * v52, v3);

    v56 = sub_1DD63F128();
    result = (*(v47 + 8))(v53, v3);
    *(v112 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
    v58 = (v110[6] + 16 * v52);
    *v58 = v116;
    v58[1] = v55;
    *(v110[7] + 8 * v52) = v56;
    v59 = v110[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      break;
    }

    v110[2] = v61;
    v30 = v121;
    if (!v114)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}