uint64_t HomeAutomationEntityProviding.hasHomeAutomationNodes.getter(uint64_t a1, uint64_t a2)
{
  v3 = *((*(a2 + 8))() + 16);

  if (v3)
  {
    return 1;
  }

  v4 = *(a2 + 16);
  v5 = OUTLINED_FUNCTION_15();
  v6(v5);
  if (!v7)
  {
    v8 = *(a2 + 24);
    v9 = OUTLINED_FUNCTION_15();
    v11 = *(v10(v9) + 16);

    if (v11)
    {
      return 1;
    }

    v12 = *(a2 + 32);
    v13 = OUTLINED_FUNCTION_15();
    v15 = *(v14(v13) + 16);

    if (v15)
    {
      return 1;
    }

    v16 = *(a2 + 40);
    v17 = OUTLINED_FUNCTION_15();
    v19 = *(v18(v17) + 16);

    if (v19)
    {
      return 1;
    }

    v20 = *(a2 + 48);
    v21 = OUTLINED_FUNCTION_15();
    v23 = *(v22(v21) + 16);

    if (v23)
    {
      return 1;
    }

    v24 = *(a2 + 56);
    v25 = OUTLINED_FUNCTION_15();
    v27 = *(v26(v25) + 16);

    if (v27)
    {
      return 1;
    }

    v28 = *(a2 + 64);
    v29 = OUTLINED_FUNCTION_15();
    v30(v29);
    if (v44 != 5)
    {
      return 1;
    }

    v31 = *(a2 + 80);
    v32 = OUTLINED_FUNCTION_15();
    v33(v32);
    if (v43 != 12)
    {
      return 1;
    }

    v34 = *(a2 + 88);
    v35 = OUTLINED_FUNCTION_15();
    v36(v35);
    if (v42 != 20)
    {
      return 1;
    }

    v37 = *(a2 + 72);
    v38 = OUTLINED_FUNCTION_15();
    v39(v38);
    if (!v40)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t HomeAutomationEntityProviding.extractEntities()(uint64_t a1, unint64_t a2)
{
  v206 = sub_268C15A1C();
  v205 = *(v206 - 8);
  v7 = *(v205 + 64);
  MEMORY[0x28223BE20](v206);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v10);
  v204 = &v200 - v11;
  v214 = MEMORY[0x277D84F90];
  v12 = *(a2 + 80);
  v13 = OUTLINED_FUNCTION_13();
  v14(v13);
  v203 = LOBYTE(__dst[0]);
  i = *(a2 + 8);
  v16 = OUTLINED_FUNCTION_13();
  v17 = *(i(v16) + 16);

  v209 = v2;
  v208 = a2;
  v207 = a1;
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_13();
    v19 = i(v18);
    OUTLINED_FUNCTION_8(v19);
    v20 = MEMORY[0x277D84F90];
    a2 = 104;
    v21.n128_u64[0] = 85199877;
    OUTLINED_FUNCTION_29(v21);
    while (v4 != v3)
    {
      OUTLINED_FUNCTION_37();
      if (v22)
      {
        goto LABEL_103;
      }

      OUTLINED_FUNCTION_48();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v20 + 2);
        v26 = OUTLINED_FUNCTION_7();
        v20 = sub_268BB307C(v26, v27, v28, v20);
      }

      OUTLINED_FUNCTION_20();
      if (v22)
      {
        v29 = OUTLINED_FUNCTION_5(v23);
        v20 = sub_268BB307C(v29, v30, v31, v20);
      }

      OUTLINED_FUNCTION_47();
      *(v24 + 32) = a1;
      *(v24 + 40) = i;
      *(v24 + 48) = 0u;
      *(v24 + 64) = 0u;
      *(v24 + 80) = 0u;
      *(v24 + 96) = 0u;
      *(v24 + 112) = 0u;
      OUTLINED_FUNCTION_6(v24);
    }

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_0();
  }

  i = *(a2 + 24);
  v32 = OUTLINED_FUNCTION_13();
  v33 = *(i(v32) + 16);

  if (v33)
  {
    v34 = OUTLINED_FUNCTION_13();
    v35 = i(v34);
    OUTLINED_FUNCTION_8(v35);
    v36 = MEMORY[0x277D84F90];
    a2 = 104;
    v37.n128_u64[0] = 85199877;
    OUTLINED_FUNCTION_29(v37);
    while (v4 != v3)
    {
      OUTLINED_FUNCTION_37();
      if (v22)
      {
        goto LABEL_104;
      }

      OUTLINED_FUNCTION_48();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = *(v36 + 2);
        v41 = OUTLINED_FUNCTION_7();
        v36 = sub_268BB307C(v41, v42, v43, v36);
      }

      OUTLINED_FUNCTION_20();
      if (v22)
      {
        v44 = OUTLINED_FUNCTION_5(v38);
        v36 = sub_268BB307C(v44, v45, v46, v36);
      }

      OUTLINED_FUNCTION_47();
      *(v39 + 32) = 0;
      *(v39 + 40) = 0;
      *(v39 + 48) = a1;
      *(v39 + 56) = i;
      *(v39 + 64) = 0u;
      *(v39 + 80) = 0u;
      *(v39 + 96) = 0u;
      *(v39 + 112) = 0u;
      OUTLINED_FUNCTION_6(v39);
    }

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_0();
  }

  i = *(a2 + 32);
  v47 = OUTLINED_FUNCTION_13();
  v48 = *(i(v47) + 16);

  if (v48)
  {
    v49 = OUTLINED_FUNCTION_13();
    v50 = i(v49);
    OUTLINED_FUNCTION_8(v50);
    v51 = MEMORY[0x277D84F90];
    a2 = 104;
    v52.n128_u64[0] = 85199877;
    OUTLINED_FUNCTION_29(v52);
    while (v4 != v3)
    {
      OUTLINED_FUNCTION_37();
      if (v22)
      {
        goto LABEL_105;
      }

      OUTLINED_FUNCTION_48();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = *(v51 + 2);
        v56 = OUTLINED_FUNCTION_7();
        v51 = sub_268BB307C(v56, v57, v58, v51);
      }

      OUTLINED_FUNCTION_20();
      if (v22)
      {
        v59 = OUTLINED_FUNCTION_5(v53);
        v51 = sub_268BB307C(v59, v60, v61, v51);
      }

      OUTLINED_FUNCTION_47();
      *(v54 + 32) = 0u;
      *(v54 + 48) = 0u;
      *(v54 + 64) = 0u;
      *(v54 + 80) = a1;
      *(v54 + 88) = i;
      *(v54 + 96) = 0u;
      *(v54 + 112) = 0u;
      OUTLINED_FUNCTION_6(v54);
    }

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_0();
  }

  i = *(a2 + 40);
  v62 = OUTLINED_FUNCTION_13();
  v63 = *(i(v62) + 16);

  if (v63)
  {
    v64 = OUTLINED_FUNCTION_13();
    v65 = i(v64);
    OUTLINED_FUNCTION_8(v65);
    v66 = MEMORY[0x277D84F90];
    a2 = 104;
    v67.n128_u64[0] = 85199877;
    OUTLINED_FUNCTION_29(v67);
    while (v4 != v3)
    {
      OUTLINED_FUNCTION_37();
      if (v22)
      {
        goto LABEL_106;
      }

      OUTLINED_FUNCTION_48();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = *(v66 + 2);
        v72 = OUTLINED_FUNCTION_7();
        v66 = sub_268BB307C(v72, v73, v74, v66);
      }

      OUTLINED_FUNCTION_20();
      if (v22)
      {
        v75 = OUTLINED_FUNCTION_5(v68);
        v66 = sub_268BB307C(v75, v76, v77, v66);
      }

      OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_12(v69);
      v70[12] = a1;
      v70[13] = i;
      v70[14] = 0;
      v70[15] = 0;
      OUTLINED_FUNCTION_6(v70);
    }

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_0();
  }

  i = *(a2 + 48);
  v78 = OUTLINED_FUNCTION_13();
  v79 = *(i(v78) + 16);

  if (v79)
  {
    v80 = OUTLINED_FUNCTION_13();
    v81 = i(v80);
    v82 = 0;
    v83 = *(v81 + 16);
    v84 = MEMORY[0x277D84F90];
    v85 = (v81 + 40);
    v86.n128_u64[0] = 336332032;
    OUTLINED_FUNCTION_29(v86);
    while (v83 != v82)
    {
      if (v82 >= *(v81 + 16))
      {
        goto LABEL_107;
      }

      v87 = *(v85 - 1);
      i = *v85;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = *(v84 + 2);
        v92 = OUTLINED_FUNCTION_7();
        v84 = sub_268BB307C(v92, v93, v94, v84);
      }

      a2 = *(v84 + 2);
      v88 = *(v84 + 3);
      if (a2 >= v88 >> 1)
      {
        v95 = OUTLINED_FUNCTION_5(v88);
        v84 = sub_268BB307C(v95, v96, v97, v84);
      }

      *(v84 + 2) = a2 + 1;
      *&v89 = OUTLINED_FUNCTION_12(&v84[104 * a2]);
      *(v90 + 96) = v89;
      *(v90 + 112) = v87;
      *(v90 + 120) = i;
      *(v90 + 128) = v210;
      *(v90 + 132) = 5;
      v85 += 2;
      ++v82;
    }

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_0();
  }

  v99 = (a2 + 88);
  v98 = *(a2 + 88);
  v100 = OUTLINED_FUNCTION_13();
  v210 = v101;
  (v101)(v100);
  v102 = LOBYTE(__dst[0]);
  if (LOBYTE(__dst[0]) != 20)
  {
    OUTLINED_FUNCTION_2();
    if ((sub_268BB1A84(v102, 3, v103) & 1) == 0)
    {
      v104 = v214;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v189 = *(v104 + 2);
        v190 = OUTLINED_FUNCTION_7();
        v104 = sub_268BB307C(v190, v191, v192, v104);
      }

      v106 = *(v104 + 2);
      v105 = *(v104 + 3);
      if (v106 >= v105 >> 1)
      {
        v193 = OUTLINED_FUNCTION_5(v105);
        v104 = sub_268BB307C(v193, v194, v195, v104);
      }

      *(v104 + 2) = v106 + 1;
      v107.n128_f64[0] = OUTLINED_FUNCTION_12(&v104[104 * v106]);
      OUTLINED_FUNCTION_45(v108, v107);
      *(v109 + 131) = v102;
      *(v109 + 132) = 5;
      v214 = v104;
    }
  }

  v110 = *(a2 + 96);
  v111 = OUTLINED_FUNCTION_13();
  v112(v111);
  v113 = __dst[0];
  if (LOBYTE(__dst[0]) != 5)
  {
    v114 = v214;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v185 = *(v114 + 2);
      v186 = OUTLINED_FUNCTION_7();
      v114 = sub_268BB307C(v186, v187, v188, v114);
    }

    v116 = *(v114 + 2);
    v115 = *(v114 + 3);
    if (v116 >= v115 >> 1)
    {
      v114 = sub_268BB307C((v115 > 1), v116 + 1, 1, v114);
    }

    *(v114 + 2) = v116 + 1;
    v117.n128_f64[0] = OUTLINED_FUNCTION_12(&v114[104 * v116]);
    OUTLINED_FUNCTION_45(v118, v117);
    *(v119 + 131) = 20;
    *(v119 + 132) = v113;
    v214 = v114;
  }

  v120 = OUTLINED_FUNCTION_13();
  v122 = sub_268BB0778(v120, v121);
  sub_268BB02A0(v122);
  v123 = v214;
  v124 = *(v214 + 2);

  v125 = 0;
  v126 = MEMORY[0x277D84F90];
LABEL_65:
  for (i = (104 * v125 + 32); ; i = (i + 104))
  {
    if (v124 == v125)
    {

      v130 = *(v126 + 16);

      if (v130)
      {
        MEMORY[0x28223BE20](v131);
        v132 = v208;
        *(&v200 - 4) = v207;
        *(&v200 - 3) = v132;
        *(&v200 - 16) = v203;
        *(&v200 - 1) = v209;

        i = sub_268BB22EC(sub_268BB45B4, (&v200 - 6), v123);

        if (qword_2802CDBE0 != -1)
        {
          goto LABEL_108;
        }

        goto LABEL_77;
      }

      if (qword_2802CDBE0 != -1)
      {
        OUTLINED_FUNCTION_18();
      }

      v204 = v99;
      v144 = v206;
      v145 = __swift_project_value_buffer(v206, qword_2802D2F10);
      v146 = *(v205 + 16);
      v146(v202, v145, v144);
      v147 = sub_268C159FC();
      v148 = sub_268C15DFC();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        *v149 = 0;
        _os_log_impl(&dword_268BAD000, v147, v148, "Skipping adding filters and and determining if we need to create separate queries for the filters", v149, 2u);
        OUTLINED_FUNCTION_30();
      }

      v150 = v206;
      v205 = *(v205 + 8);
      (v205)(v202, v206);
      v151 = v207;
      v152 = v208;
      if (HomeAutomationEntityProviding.hasCommonFilters.getter(v207, v208))
      {
        (*(v152 + 64))(__dst, v151, v152);
        v153 = __dst[0];
        v210(__dst, v151, v152);
        v154 = LOBYTE(__dst[0]);
        v155 = 20;
        if (LOBYTE(__dst[0]) != 20)
        {
          OUTLINED_FUNCTION_2();
          if (sub_268BB1A84(v154, 3, v156))
          {
            v155 = v154;
          }

          else
          {
            v155 = 20;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v196 = *(v123 + 2);
          v197 = OUTLINED_FUNCTION_7();
          v123 = sub_268BB307C(v197, v198, v199, v123);
        }

        v158 = *(v123 + 2);
        v157 = *(v123 + 3);
        if (v158 >= v157 >> 1)
        {
          v123 = sub_268BB307C((v157 > 1), v158 + 1, 1, v123);
        }

        *(v123 + 2) = v158 + 1;
        *&v159 = OUTLINED_FUNCTION_12(&v123[104 * v158]);
        *(v160 + 96) = v159;
        *(v160 + 112) = v159;
        *(v160 + 128) = 0;
        *(v160 + 129) = v153;
        *(v160 + 130) = v203;
        *(v160 + 131) = v155;
        *(v160 + 132) = 5;
        v214 = v123;
        v161 = v201;
        v150 = v206;
        v146(v201, v145, v206);
        v162 = sub_268C159FC();
        v163 = sub_268C15DFC();
        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          v165 = v161;
          v166 = swift_slowAlloc();
          __dst[0] = v166;
          *v164 = 136315138;

          v168 = MEMORY[0x26D6272E0](v167, &type metadata for HomeAutomationEntityQuery);
          v170 = v169;

          v171 = sub_268BB3D28(v168, v170, __dst);

          *(v164 + 4) = v171;
          _os_log_impl(&dword_268BAD000, v162, v163, "Common filters applied to extracted entities, returning entities: %s", v164, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v166);
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_30();

          v172 = v165;
LABEL_99:
          (v205)(v172, v150);
          goto LABEL_100;
        }
      }

      else
      {
        v161 = v200;
        v146(v200, v145, v150);
        v162 = sub_268C159FC();
        v174 = sub_268C15DFC();
        if (os_log_type_enabled(v162, v174))
        {
          v175 = v161;
          v176 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          __dst[0] = v177;
          *v176 = 136315138;

          v179 = MEMORY[0x26D6272E0](v178, &type metadata for HomeAutomationEntityQuery);
          v181 = v180;

          v182 = sub_268BB3D28(v179, v181, __dst);

          *(v176 + 4) = v182;
          _os_log_impl(&dword_268BAD000, v162, v174, "No common filters found, returning entities: %s", v176, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v177);
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_30();

          (v205)(v175, v150);
LABEL_100:

          v173 = sub_268BB0B2C(v183);
          swift_bridgeObjectRelease_n();
          return v173;
        }
      }

      v172 = v161;
      goto LABEL_99;
    }

    if (v125 >= *(v123 + 2))
    {
      break;
    }

    memcpy(__dst, i + v123, 0x65uLL);
    if (BYTE4(__dst[12]) == 5)
    {
      sub_268BB3190(__dst, v211);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v213 = v126;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268BB4594(0, *(v126 + 16) + 1, 1);
        v126 = v213;
      }

      v129 = *(v126 + 16);
      v128 = *(v126 + 24);
      if (v129 >= v128 >> 1)
      {
        sub_268BB4594((v128 > 1), v129 + 1, 1);
        v126 = v213;
      }

      ++v125;
      *(v126 + 16) = v129 + 1;
      memcpy((v126 + 104 * v129 + 32), __dst, 0x65uLL);
      goto LABEL_65;
    }

    ++v125;
  }

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
  OUTLINED_FUNCTION_18();
LABEL_77:
  v133 = v206;
  v134 = __swift_project_value_buffer(v206, qword_2802D2F10);
  v135 = v205;
  v136 = v204;
  (*(v205 + 16))(v204, v134, v133);

  v137 = sub_268C159FC();
  v138 = sub_268C15DCC();

  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    __dst[0] = v140;
    *v139 = 136315138;
    v141 = MEMORY[0x26D6272E0](i, &type metadata for HomeAutomationEntityQuery);
    v143 = sub_268BB3D28(v141, v142, __dst);

    *(v139 + 4) = v143;
    _os_log_impl(&dword_268BAD000, v137, v138, "HomeAutomation entities created from intent: %s", v139, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v140);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v135 + 8))(v204, v133);
  }

  else
  {

    (*(v135 + 8))(v136, v133);
  }

  v173 = sub_268BB0B2C(i);

  return v173;
}

uint64_t sub_268BB00D0(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_268BB4320();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_268BB01BC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_268BB42A8(v4);
  OUTLINED_FUNCTION_25();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_19(v3 + v7);
  memcpy(v9, v10, v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_24();
  if (!v5)
  {
    *(v3 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_268BB02A0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_268BB43B4(result, 1, sub_268BB307C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_268BB0378(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_268BB43B4(v4, 1, sub_268BB2DB4);
  OUTLINED_FUNCTION_25();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_19(v3 + 16 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_24();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_268BB0420(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_268BB43B4(v4, 1, sub_268BB3460);
  OUTLINED_FUNCTION_25();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_19(v3 + 120 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_24();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_268BB04CC(uint64_t a1)
{
  OUTLINED_FUNCTION_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_23();
  sub_268BB4468(v6, 1, v7, v8, v9, type metadata accessor for Device);
  OUTLINED_FUNCTION_25();
  if (!v10)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_39();
  v11 = *(type metadata accessor for Device() - 8);
  if (v4 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_24();
  if (!v5)
  {
    *(v3 + 16) = v14;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_268BB05D0(uint64_t a1)
{
  OUTLINED_FUNCTION_1(a1);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_268BB4500();
  OUTLINED_FUNCTION_25();
  if (!v5)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9();
  if (v7 != v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_19(v3 + 8 * v6);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_24();
  if (!v4)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_268BB0664(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_1(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_268BB4468(v5, 1, &qword_2802CDCC0, &qword_268C17088, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
  OUTLINED_FUNCTION_25();
  if (!v7)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_39();
  v8 = *(sub_268C1528C() - 8);
  if (v4 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_24();
  if (!v6)
  {
    *(v3 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

char *sub_268BB0778(uint64_t a1, uint64_t a2)
{
  v4 = sub_268C15A1C();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(a2 + 56))(a1, a2);
  v8 = 0;
  v9 = *(v7 + 16);
  v10 = (v7 + 48);
  v11 = MEMORY[0x277D84F90];
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    v12 = *(v10 - 1);
    v13 = *v10;
    v35[0] = *(v10 - 16);
    v36 = v12;
    v37 = v13;
    sub_268BB2610(v35, __src);

    if (__src[1] == 1)
    {
      memcpy(v33, __src, 0x65uLL);
      sub_268BB5C48(v33);
    }

    else
    {
      memcpy(v33, __src, 0x65uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_268BB307C(0, *(v11 + 2) + 1, 1, v11);
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      if (v15 >= v14 >> 1)
      {
        v11 = sub_268BB307C((v14 > 1), v15 + 1, 1, v11);
      }

      memcpy(v32, v33, sizeof(v32));
      *(v11 + 2) = v15 + 1;
      memcpy(&v11[104 * v15 + 32], v32, 0x65uLL);
    }

    v10 += 3;
    ++v8;
  }

  if (qword_2802CDBE0 == -1)
  {
    goto LABEL_13;
  }

LABEL_18:
  swift_once();
LABEL_13:
  v16 = v30;
  v17 = __swift_project_value_buffer(v30, qword_2802D2F10);
  v18 = v29;
  v19 = v31;
  (*(v29 + 16))(v31, v17, v16);

  v20 = sub_268C159FC();
  v21 = sub_268C15DCC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    __src[0] = v23;
    *v22 = 136315138;
    v24 = MEMORY[0x26D6272E0](v11, &type metadata for HomeAutomationEntityQuery);
    v26 = sub_268BB3D28(v24, v25, __src);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_268BAD000, v20, v21, "From entities: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x26D628010](v23, -1, -1);
    MEMORY[0x26D628010](v22, -1, -1);

    (*(v18 + 8))(v31, v16);
  }

  else
  {

    (*(v18 + 8))(v19, v16);
  }

  return v11;
}

uint64_t sub_268BB0B2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_268BB4574(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x65uLL);
      sub_268BB3190(__dst, &v8);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_268BB4574((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for HomeAutomationEntityQuery;
      v10 = &protocol witness table for HomeAutomationEntityQuery;
      *&v8 = swift_allocObject();
      memcpy((v8 + 16), __dst, 0x65uLL);
      *(v2 + 16) = v6 + 1;
      sub_268BB5BDC(&v8, v2 + 40 * v6 + 32);
      v4 += 104;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t HomeAutomationEntityProviding.hasCommonFilters.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 64))(&v15);
  if (v15 == 5 && (v3 = *(a2 + 80), v4 = OUTLINED_FUNCTION_15(), v5(v4), v14 == 12))
  {
    v6 = *(a2 + 88);
    v7 = OUTLINED_FUNCTION_15();
    v8(v7);
    if (v13 == 20)
    {
      v9 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2();
      v9 = sub_268BB1A84(v11, 3, v12);
    }
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_268BB0D34(char a1, char a2)
{
  v3 = 6647407;
  v4 = 0xE300000000000000;
  switch(a1)
  {
    case 1:
      v3 = 6645876;
      break;
    case 2:
      v4 = 0xE400000000000000;
      v3 = 2037277037;
      break;
    case 3:
      v4 = 0xE800000000000000;
      v3 = 0x6574696E69666564;
      break;
    case 4:
      v3 = 0x696E696665646E69;
      v4 = 0xEA00000000006574;
      break;
    default:
      break;
  }

  v5 = 6647407;
  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v5 = 6645876;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v5 = 2037277037;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = 0x6574696E69666564;
      break;
    case 4:
      v5 = 0x696E696665646E69;
      v6 = 0xEA00000000006574;
      break;
    default:
      break;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_14();
  }

  return v8 & 1;
}

uint64_t sub_268BB0ED4(unsigned __int8 a1, char a2)
{
  v2 = 0x746C7561666564;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746C7561666564;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 6841459;
      break;
    case 2:
      v3 = 0xE200000000000000;
      v5 = 25443;
      break;
    case 3:
      v3 = 0xE200000000000000;
      v5 = 25697;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 6841459;
      break;
    case 2:
      v6 = 0xE200000000000000;
      v2 = 25443;
      break;
    case 3:
      v6 = 0xE200000000000000;
      v2 = 25697;
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
    v8 = OUTLINED_FUNCTION_14();
  }

  return v8 & 1;
}

uint64_t sub_268BB0FF4(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000079;
  v3 = 0x726F737365636361;
  v4 = a1;
  v5 = 0x726F737365636361;
  v6 = 0xE900000000000079;
  switch(v4)
  {
    case 1:
      v6 = 0xE400000000000000;
      v5 = 1836019570;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v5 = 1701995880;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1701736314;
      break;
    case 4:
      OUTLINED_FUNCTION_41();
      v6 = v7 | 2;
      break;
    case 5:
      OUTLINED_FUNCTION_41();
      v6 = v8 + 3573;
      break;
    case 6:
      v5 = 0x7954656369766564;
      v6 = 0xEA00000000006570;
      break;
    case 7:
      v6 = 0xE500000000000000;
      v5 = 0x6C61636F6CLL;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1836019570;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1701995880;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1701736314;
      break;
    case 4:
      OUTLINED_FUNCTION_41();
      v2 = v9 | 2;
      break;
    case 5:
      OUTLINED_FUNCTION_41();
      v2 = v10 + 3573;
      break;
    case 6:
      v3 = 0x7954656369766564;
      v2 = 0xEA00000000006570;
      break;
    case 7:
      v2 = 0xE500000000000000;
      v3 = 0x6C61636F6CLL;
      break;
    case 8:
      v2 = 0xE700000000000000;
      OUTLINED_FUNCTION_46();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_33();
  }

  return v12 & 1;
}

uint64_t sub_268BB125C(unsigned __int8 a1, char a2)
{
  v2 = 6647407;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6647407;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1752461154;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1701670771;
      break;
    case 3:
      v5 = 7105633;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x747065637865;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1752461154;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1701670771;
      break;
    case 3:
      v2 = 7105633;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x747065637865;
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
    v8 = OUTLINED_FUNCTION_14();
  }

  return v8 & 1;
}

uint64_t sub_268BB13B0(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000056545F45;
  v3 = 0x4D414E5F4D4F4F52;
  v4 = a1;
  v5 = 0x4D414E5F4D4F4F52;
  v6 = 0xEC00000056545F45;
  switch(v4)
  {
    case 1:
      v7 = "LOCATION_IN_HERE";
      goto LABEL_9;
    case 2:
      v6 = 0x8000000268C1B6E0;
      v5 = 0xD000000000000020;
      break;
    case 3:
      v6 = 0x8000000268C1B710;
      v5 = 0xD00000000000001FLL;
      break;
    case 4:
      v7 = "LOCATION_ROOM_AND_N_OTHER_ROOMS";
LABEL_9:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD000000000000013;
      break;
    case 5:
      v6 = 0x8000000268C1B750;
      v5 = 0xD000000000000014;
      break;
    case 6:
      break;
    case 7:
      v6 = 0x8000000268C1B780;
      v5 = 0xD000000000000011;
      break;
    case 8:
      v5 = 0x4E414C5F4F545541;
      v6 = 0xED00004547415547;
      break;
    case 9:
      v5 = 0x5254535F4D4F4F52;
      v6 = 0xEC00000053474E49;
      break;
    case 10:
      v5 = 0x504F54535F414857;
      v6 = 0xEE005344524F575FLL;
      break;
    default:
      v6 = 0x8000000268C1B6A0;
      v5 = 0xD000000000000010;
      break;
  }

  switch(a2)
  {
    case 1:
      v8 = "LOCATION_IN_HERE";
      goto LABEL_21;
    case 2:
      v2 = 0x8000000268C1B6E0;
      v3 = 0xD000000000000020;
      break;
    case 3:
      v2 = 0x8000000268C1B710;
      v3 = 0xD00000000000001FLL;
      break;
    case 4:
      v8 = "LOCATION_ROOM_AND_N_OTHER_ROOMS";
LABEL_21:
      v2 = v8 | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
    case 5:
      v2 = 0x8000000268C1B750;
      v3 = 0xD000000000000014;
      break;
    case 6:
      break;
    case 7:
      v2 = 0x8000000268C1B780;
      v3 = 0xD000000000000011;
      break;
    case 8:
      v3 = 0x4E414C5F4F545541;
      v2 = 0xED00004547415547;
      break;
    case 9:
      v3 = 0x5254535F4D4F4F52;
      v2 = 0xEC00000053474E49;
      break;
    case 10:
      v3 = 0x504F54535F414857;
      v2 = 0xEE005344524F575FLL;
      break;
    default:
      v2 = 0x8000000268C1B6A0;
      v3 = 0xD000000000000010;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_33();
  }

  return v10 & 1;
}

uint64_t sub_268BB16A8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x4F49445541;
  }

  else
  {
    v3 = 0x454C544954425553;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x4F49445541;
  }

  else
  {
    v5 = 0x454C544954425553;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_14();
  }

  return v8 & 1;
}

uint64_t sub_268BB1738(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 6779760;
  }

  else
  {
    v3 = 0x74694B656D6F68;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (a2)
  {
    v5 = 6779760;
  }

  else
  {
    v5 = 0x74694B656D6F68;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_14();
  }

  return v8 & 1;
}

uint64_t sub_268BB17C4(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007373;
  v3 = 0x6572676F72506E69;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0x64656873696E6966;
    }

    if (v4 == 1)
    {
      v6 = 0x8000000268C1B3A0;
    }

    else
    {
      v6 = 0xEE0064656C696146;
    }
  }

  else
  {
    v5 = 0x6572676F72506E69;
    v6 = 0xEA00000000007373;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x64656873696E6966;
    }

    if (a2 == 1)
    {
      v2 = 0x8000000268C1B3A0;
    }

    else
    {
      v2 = 0xEE0064656C696146;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_33();
  }

  return v8 & 1;
}

uint64_t sub_268BB18D0()
{
  OUTLINED_FUNCTION_46();
  v3 = 0xE700000000000000;
  v5 = v4;
  v6 = v1;
  switch(v5)
  {
    case 1:
      v7 = "homeAutomationRoom";
      goto LABEL_5;
    case 2:
      v3 = 0x8000000268C1B530;
      v6 = v2 + 5;
      break;
    case 3:
      v3 = 0x8000000268C1B550;
      v6 = v2 + 3;
      break;
    case 4:
      v3 = 0x8000000268C1B570;
      v6 = v2 + 8;
      break;
    case 5:
      break;
    default:
      v7 = "th";
LABEL_5:
      v3 = v7 | 0x8000000000000000;
      v6 = 0xD000000000000012;
      break;
  }

  v8 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v9 = "homeAutomationRoom";
      goto LABEL_12;
    case 2:
      v8 = 0x8000000268C1B530;
      v1 = v2 + 5;
      break;
    case 3:
      v8 = 0x8000000268C1B550;
      v1 = v2 + 3;
      break;
    case 4:
      v8 = 0x8000000268C1B570;
      v1 = v2 + 8;
      break;
    case 5:
      break;
    default:
      v9 = "th";
LABEL_12:
      v8 = v9 | 0x8000000000000000;
      v1 = 0xD000000000000012;
      break;
  }

  if (v6 == v1 && v3 == v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_14();
  }

  return v11 & 1;
}

uint64_t sub_268BB1A84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_14();
  }

  return v9 & 1;
}

uint64_t sub_268BB1B18(unsigned __int8 a1, char a2)
{
  v2 = 0x726F727265;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x726F727265;
  switch(v4)
  {
    case 1:
      v5 = 0x4449646D63;
      break;
    case 2:
      v5 = 0x6150726579616C70;
      v3 = 0xEA00000000006874;
      break;
    case 3:
      v5 = 0x6D617473656D6974;
      v3 = 0xE900000000000070;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x4449646D63;
      break;
    case 2:
      v2 = 0x6150726579616C70;
      v6 = 0xEA00000000006874;
      break;
    case 3:
      v2 = 0x6D617473656D6974;
      v6 = 0xE900000000000070;
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
    v8 = OUTLINED_FUNCTION_14();
  }

  return v8 & 1;
}

uint64_t sub_268BB1C74(unsigned __int8 a1, char a2)
{
  v2 = 0x656C626173756170;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x656C626173756170;
  switch(v4)
  {
    case 1:
      v5 = 0x6C62616D75736572;
      v3 = 0xE900000000000065;
      break;
    case 2:
      v5 = 0x6E6F436F65646976;
      v3 = 0xED0000736C6F7274;
      break;
    case 3:
      v5 = 0x6F43656D756C6F76;
      v3 = 0xEE00736C6F72746ELL;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 7958113;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6C62616D75736572;
      v6 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0x6E6F436F65646976;
      v6 = 0xED0000736C6F7274;
      break;
    case 3:
      v2 = 0x6F43656D756C6F76;
      v6 = 0xEE00736C6F72746ELL;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 7958113;
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
    v8 = OUTLINED_FUNCTION_14();
  }

  return v8 & 1;
}

void *sub_268BB1E34@<X0>(const void *a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v42 = a5;
  v9 = sub_268C15A1C();
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  memcpy(__dst, a1, 0x65uLL);
  if (__dst[100] == 5)
  {
    memcpy(v43, a1, sizeof(v43));
    v16 = __dst[97];
    v17 = __dst[98];
    if (a2 != 12)
    {
      v17 = a2;
    }

    v39 = v17;
    v40 = *&__dst[99];
    v18 = *(a4 + 64);
    sub_268BB3190(__dst, v45);
    v18(v45, a3, a4);
    if (LOBYTE(v45[0]) == 5)
    {
      v19 = v16;
    }

    else
    {
      v19 = v45[0];
    }

    (*(a4 + 88))(v45, a3, a4);
    if (LOBYTE(v45[0]) != 20 && (sub_268BB1A84(LOBYTE(v45[0]), 3, PlaceHint.rawValue.getter) & 1) != 0)
    {
      if (qword_2802CDBE0 != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v9, qword_2802D2F10);
      v21 = v41;
      (*(v41 + 16))(v15, v20, v9);
      v22 = sub_268C159FC();
      v23 = sub_268C15DFC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_268BAD000, v22, v23, "User asked to play/control everywhere in <room>. Applying deviceQuantifier .all to query", v24, 2u);
        MEMORY[0x26D628010](v24, -1, -1);
      }

      (*(v21 + 8))(v15, v9);
      v19 = 3;
    }

    v25 = v42;
    result = memcpy(v42, v43, 0x61uLL);
    v25[97] = v19;
    v27 = v40;
    v25[98] = v39;
    *(v25 + 99) = v27;
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v9, qword_2802D2F10);
    v29 = v41;
    (*(v41 + 16))(v13, v28, v9);
    sub_268BB3190(__dst, v45);
    v30 = sub_268C159FC();
    v31 = sub_268C15DFC();
    sub_268BB5BF4(__dst);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47 = v33;
      *v32 = 136315138;
      memcpy(v44, __dst, sizeof(v44));
      sub_268BB3190(__dst, v45);
      v34 = HomeAutomationEntityQuery.description.getter();
      v36 = v35;
      memcpy(v45, v44, 0x65uLL);
      sub_268BB5BF4(v45);
      v37 = sub_268BB3D28(v34, v36, &v47);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_268BAD000, v30, v31, "HomeAutomationEntityQuery: %s does not support filters. Skipping", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x26D628010](v33, -1, -1);
      MEMORY[0x26D628010](v32, -1, -1);

      (*(v41 + 8))(v13, v9);
    }

    else
    {

      (*(v29 + 8))(v13, v9);
    }

    memcpy(v42, __dst, 0x65uLL);
    return sub_268BB3190(__dst, v45);
  }

  return result;
}

uint64_t sub_268BB22EC(void (*a1)(void *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_268BB4594(0, v5, 0);
  v6 = v18;
  for (i = (a3 + 32); ; i += 104)
  {
    memcpy(__dst, i, 0x65uLL);
    memcpy(__src, i, 0x65uLL);
    sub_268BB3190(__dst, v14);
    a1(v16, __src);
    if (v4)
    {
      break;
    }

    v4 = 0;
    memcpy(v13, __src, 0x65uLL);
    sub_268BB5BF4(v13);
    memcpy(v14, v16, 0x65uLL);
    v18 = v6;
    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_268BB4594((v10 > 1), v11 + 1, 1);
      v6 = v18;
    }

    *(v6 + 16) = v11 + 1;
    memcpy((v6 + 104 * v11 + 32), v14, 0x65uLL);
    if (!--v5)
    {
      return v6;
    }
  }

  memcpy(v14, __src, 0x65uLL);
  sub_268BB5BF4(v14);

  __break(1u);
  return result;
}

void sub_268BB2470(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v6 = type metadata accessor for Device();
  v7 = OUTLINED_FUNCTION_28(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 16);
  if (v14)
  {
    v25 = MEMORY[0x277D84F90];
    sub_268BB4A60(0, v14, 0);
    v15 = v25;
    for (i = (a3 + 32); ; ++i)
    {
      v24 = *i;
      v17 = v24;
      v22(&v24);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v25 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_268BB4A60(v18 > 1, v19 + 1, 1);
        v15 = v25;
      }

      *(v15 + 16) = v19 + 1;
      sub_268BB52D0(v13, v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19);
      if (!--v14)
      {
        return;
      }
    }

    v20 = v24;

    __break(1u);
  }
}

double sub_268BB2610@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  switch(v2)
  {
    case 1:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = v4;
      *(a2 + 24) = v3;
      v5 = 0uLL;
      goto LABEL_7;
    case 2:
      v5 = 0uLL;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      *(a2 + 48) = v4;
      *(a2 + 56) = v3;
      goto LABEL_8;
    case 3:
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 64) = v4;
      *(a2 + 72) = v3;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      goto LABEL_9;
    case 4:
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      *(a2 + 80) = v4;
      *(a2 + 88) = v3;
      goto LABEL_9;
    case 5:
      result = 0.0;
      *a2 = xmmword_268C16D40;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 93) = 0;
      return result;
    default:
      *a2 = v4;
      *(a2 + 8) = v3;
      v5 = 0uLL;
      *(a2 + 16) = 0u;
LABEL_7:
      *(a2 + 32) = v5;
      *(a2 + 48) = v5;
LABEL_8:
      *(a2 + 64) = v5;
      *(a2 + 80) = v5;
LABEL_9:
      *(a2 + 96) = 336332033;
      *(a2 + 100) = 5;

      return result;
  }
}

uint64_t HomeAutomationEntityProviding.namedEntities.getter(uint64_t a1, uint64_t a2)
{
  v21 = MEMORY[0x277D84F90];
  v3 = (*(a2 + 8))();
  sub_268BB0378(v3);
  v4 = *(a2 + 32);
  v5 = OUTLINED_FUNCTION_17();
  v7 = v6(v5);
  sub_268BB0378(v7);
  v8 = *(a2 + 24);
  v9 = OUTLINED_FUNCTION_17();
  v11 = v10(v9);
  sub_268BB0378(v11);
  v12 = *(a2 + 40);
  v13 = OUTLINED_FUNCTION_17();
  v15 = v14(v13);
  sub_268BB0378(v15);
  v16 = *(a2 + 48);
  v17 = OUTLINED_FUNCTION_17();
  v19 = v18(v17);
  sub_268BB0378(v19);
  return v21;
}

uint64_t sub_268BB27EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_268BB2844(uint64_t a1)
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

BOOL sub_268BB2898(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_268BB28F4(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_35(a1);
}

uint64_t sub_268BB2914(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_268BB2950(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_268BB29B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268BB28CC();
  *a1 = result;
  return result;
}

uint64_t sub_268BB29E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268BB28DC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_268BB2A18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268BD9888(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_268BB2A48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268BB28EC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_268BB2A80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_268BB2914(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268BB2AB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_268BB2950(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268BB2B00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268BB2988(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_268BB2B78()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_268C1596C();
}

uint64_t sub_268BB2BC4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_268C1595C();
}

uint64_t sub_268BB2C1C()
{
  sub_268C1624C();
  v1 = *v0;
  swift_getWitnessTable();
  sub_268C1595C();
  return sub_268C1626C();
}

uint64_t sub_268BB2C84@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_268BB2CB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_268C1594C();
}

uint64_t sub_268BB2D28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268BB2844(a1);
  *a2 = result;
  return result;
}

void *sub_268BB2D50@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_268BB2D68(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_268BB2DB4()
{
  OUTLINED_FUNCTION_21();
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_11(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
    v9 = OUTLINED_FUNCTION_31();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_44();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_43();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_268BB2E84()
{
  OUTLINED_FUNCTION_21();
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_11(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDA0, &qword_268C17148);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 24);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_43();
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v2] <= v11)
    {
      memmove(v11, v12, 24 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_268BB2FB4()
{
  OUTLINED_FUNCTION_21();
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_11(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v2;
    v11[3] = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = OUTLINED_FUNCTION_43();
  if (v1)
  {
    if (v11 != v0 || &v14[v2] <= v13)
    {
      memmove(v13, v14, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v13, v14, v2);
  }
}

char *sub_268BB307C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDD0, &qword_268C17170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[104 * v8] <= v12)
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_268BB3244()
{
  OUTLINED_FUNCTION_21();
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_11(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD80, &qword_268C17128);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 64);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_43();
  if (v1)
  {
    if (v9 != v0 || &v12[64 * v2] <= v11)
    {
      memmove(v11, v12, v2 << 6);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_268BB3364(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_4();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_16();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_268BB3AE8(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_268BB3BDC(a4 + v18, v15, v16 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_268BB3460(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD48, &qword_268C170F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[120 * v8] <= v12)
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_268BB35EC()
{
  OUTLINED_FUNCTION_21();
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_26(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE590, &qword_268C170B0);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v3;
    v9[3] = 2 * ((v10 - 32) / 40);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[5 * v3 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_40();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
    OUTLINED_FUNCTION_40();
    swift_arrayInitWithCopy();
  }
}

void sub_268BB3714(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_4();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_16();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 2);
  if (v8 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = OUTLINED_FUNCTION_31();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_10();
    *(v13 + 2) = v11;
    *(v13 + 3) = v14;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || &v16[8 * v11] <= v15)
    {
      memmove(v15, v16, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_268BB37F4()
{
  OUTLINED_FUNCTION_21();
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_26(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDA8, &qword_268C17150);
    v9 = OUTLINED_FUNCTION_31();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_10();
    *(v9 + 2) = v3;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

void sub_268BB38C0()
{
  OUTLINED_FUNCTION_21();
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_26(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD00, &qword_268C170C8);
    v9 = OUTLINED_FUNCTION_31();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_10();
    *(v9 + 2) = v3;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

void sub_268BB398C()
{
  OUTLINED_FUNCTION_21();
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_11(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD08, &qword_268C170D0);
    v9 = OUTLINED_FUNCTION_31();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_10();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[v2 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_40();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD10, &qword_268C170D8);
    OUTLINED_FUNCTION_40();
    swift_arrayInitWithCopy();
  }
}

void *sub_268BB3A80(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
  v4 = OUTLINED_FUNCTION_31();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_44();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_268BB3AE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_28(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
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

uint64_t sub_268BB3BDC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_38();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_38();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

uint64_t sub_268BB3CCC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_268BB3D28(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_268BB3D28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_268BB3DEC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_268BB5B20(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_268BB3DEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_268BB3EEC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_268C1609C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_268BB3EEC(uint64_t a1, unint64_t a2)
{
  v4 = sub_268BB3F38(a1, a2);
  sub_268BB4050(&unk_287974428);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_268BB3F38(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_268C15C7C())
  {
    result = sub_268BB4134(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_268C1605C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_268C1609C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_268BB4050(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_268BB41A4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_268BB4134(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDC8, &qword_268C17168);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_268BB41A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDC8, &qword_268C17168);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_268BB4298(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_268BB42A8(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v5 = *(v3 + 16);
    }

    sub_268BB2FB4();
    *v1 = v6;
  }
}

uint64_t sub_268BB4320()
{
  OUTLINED_FUNCTION_42();
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v0;
  if (result)
  {
    if ((v0 & 0x8000000000000000) == 0 && (v0 & 0x4000000000000000) == 0)
    {
      v4 = v0 & 0xFFFFFFFFFFFFFF8;
      if (v2 <= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_268C1613C();
    goto LABEL_11;
  }

  if (v0 < 0 || (v0 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v4 = v0 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v5 = *(v4 + 16);
LABEL_11:
  result = sub_268C1608C();
  *v1 = result;
  return result;
}

uint64_t sub_268BB43B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_268BB4468(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), uint64_t (*a6)(void))
{
  v13 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v13;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v13 + 24) >> 1)
  {
    if (*(v13 + 16) <= a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = *(v13 + 16);
    }

    sub_268BB3364(isUniquelyReferenced_nonNull_native, v15, a2 & 1, v13, a3, a4, a5, a6);
    *v6 = v16;
  }
}

void sub_268BB4500()
{
  OUTLINED_FUNCTION_42();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v0;
  if (!isUniquelyReferenced_nonNull_native || v3 > *(v0 + 24) >> 1)
  {
    if (*(v0 + 16) <= v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = *(v0 + 16);
    }

    sub_268BB3714(isUniquelyReferenced_nonNull_native, v5, v2 & 1, v0, &unk_2802CDCE0, &qword_268C18780);
    *v1 = v6;
  }
}

void *sub_268BB4574(void *a1, int64_t a2, char a3)
{
  result = sub_268BB4B50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268BB4594(char *a1, int64_t a2, char a3)
{
  result = sub_268BB4C88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_268BB4784(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 56))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_268BB47D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_268BB48D8(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_268BB4A40(char *a1, int64_t a2, char a3)
{
  result = sub_268BB4D9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268BB4AB8(char *a1, int64_t a2, char a3)
{
  result = sub_268BB4EE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_268BB4AD8(void *a1, int64_t a2, char a3)
{
  result = sub_268BB4FF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_268BB4B50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD50, &unk_268C17100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD58, "ȡ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_268BB4C88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDD0, &qword_268C17170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[104 * v8] <= v12)
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_268BB4D9C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCB0, &qword_268C17078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *sub_268BB4EE8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_268BB4FF0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE590, &qword_268C170B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_268BB5124(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_4();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_16();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_28(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(a7(0) - 8);
  if (a1)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    sub_268BB3BDC(a4 + v26, v15, v22 + v26, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_268BB52D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268BB5334(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_268C1613C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_268BC4EF4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD68, &qword_268C17118);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268BB5ACC(&qword_2802CDD78, &qword_2802CDD70, &qword_268C17120);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD70, &qword_268C17120);
          v9 = sub_268BC4BA0(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268BB54B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_268C1613C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_268BC4EF4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_268C153EC();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268BB5ACC(&qword_2802CDDB8, &qword_2802CDDB0, &qword_268C17158);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDB0, &qword_268C17158);
          v9 = sub_268BC4BA0(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268BB5628(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_268C1613C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_268BC4EF4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_268C1579C();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268BB5ACC(&qword_2802CDD30, &qword_2802CDD28, &qword_268C170E8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD28, &qword_268C170E8);
          v9 = sub_268BC4BA0(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268BB579C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_268C1613C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_268BC4EF4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_268C1575C();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268BB5ACC(&qword_2802CDD20, &qword_2802CDD18, &qword_268C170E0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD18, &qword_268C170E0);
          v9 = sub_268BC4BA0(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268BB5910(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_268C1613C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_268BC4EF4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_268C153BC();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268BB5ACC(&qword_2802CDD40, &qword_2802CDD38, &qword_268C170F0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD38, &qword_268C170F0);
          v9 = sub_268BC4BF4(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_268BB5ACC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_268BB5B20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_268BB5B7C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 117, 7);
}

uint64_t sub_268BB5BDC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_268BB5C48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDD8, &qword_268C17178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_268BB5CD8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void OUTLINED_FUNCTION_0()
{
  v1 = *(v0 - 344);
  v2 = *(v0 - 352);
  v3 = *(v0 - 360);
}

__n128 OUTLINED_FUNCTION_6@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 128) = 0;
  result = *(v1 - 336);
  *(a1 + 129) = result.n128_u32[0];
  return result;
}

void OUTLINED_FUNCTION_11(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

double OUTLINED_FUNCTION_12@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_14()
{

  return sub_268C1618C();
}

uint64_t OUTLINED_FUNCTION_18()
{

  return swift_once();
}

void OUTLINED_FUNCTION_26(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_30()
{

  JUMPOUT(0x26D628010);
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_268C1618C();
}

uint64_t OUTLINED_FUNCTION_36()
{

  return sub_268BB02A0(v0);
}

void OUTLINED_FUNCTION_45(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 96) = a2;
  *(a1 + 112) = a2;
  *(a1 + 128) = 0;
  *(a1 + 129) = 3077;
}

uint64_t OUTLINED_FUNCTION_48()
{
  v3 = *(v0 - 1);
  v2 = *v0;
}

id sub_268BB60C8()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D279C8]) init];
    v4 = *(v0 + 80);
    *(v0 + 80) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *sub_268BB6134(__int128 *a1)
{
  v1[7] = [objc_allocWithZone(MEMORY[0x277D27838]) init];
  type metadata accessor for AudioRouteProvider();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F98];
  v1[8] = v3;
  v1[9] = v4;
  v1[10] = 0;
  sub_268BB5BDC(a1, (v1 + 2));
  return v1;
}

void sub_268BB61B4()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v29 = v5;
  v30 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268C15A1C();
  v11 = OUTLINED_FUNCTION_3_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_0();
  v18 = v17 - v16;
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v19 = __swift_project_value_buffer(v10, qword_2802D2ED8);
  (*(v13 + 16))(v18, v19, v10);
  v20 = sub_268C159FC();
  v21 = sub_268C15DFC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_23_0();
    *v22 = 0;
    _os_log_impl(&dword_268BAD000, v20, v21, "PlaybackControlsCommandProvider#send Start", v22, 2u);
    OUTLINED_FUNCTION_30();
  }

  (*(v13 + 8))(v18, v10);
  v23 = mach_absolute_time();
  v24 = static MRCommandIDHelper.ensureMRCommandIDInOptions(options:)(v7);
  v25 = [objc_allocWithZone(MEMORY[0x277D27828]) init];
  v26 = sub_268C15B4C();
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  *(v27 + 24) = v9;
  *(v27 + 32) = v1;
  *(v27 + 40) = v24;
  *(v27 + 48) = v29;
  *(v27 + 56) = v3;
  v31[4] = sub_268BB98E8;
  v31[5] = v27;
  OUTLINED_FUNCTION_9_0();
  v31[1] = 1107296256;
  v31[2] = sub_268BB9BEC;
  v31[3] = &block_descriptor_56;
  v28 = _Block_copy(v31);

  [v25 sendCommandWithResult:v9 toDestination:v30 withOptions:v26 completion:v28];
  _Block_release(v28);

  OUTLINED_FUNCTION_32_0();
}

void sub_268BB643C(id a1, uint64_t a2, int a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = mach_absolute_time();
  v12 = v11 >= a2;
  v13 = v11 - a2;
  if (v12)
  {
    if (qword_2802CDBC0 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_4:
  v14 = *&qword_2802D2F08;
  if (qword_2802CDB70 != -1)
  {
    swift_once();
  }

  v15 = v14 * v13;
  v16 = __swift_project_value_buffer(v6, qword_2802D2ED8);
  (*(v7 + 16))(v10, v16, v6);
  v17 = sub_268C159FC();
  v18 = sub_268C15DEC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v23 = a1;
    v20 = v19;
    *v19 = 67109376;
    *(v19 + 4) = a3;
    *(v19 + 8) = 2048;
    *(v19 + 10) = v15;
    _os_log_impl(&dword_268BAD000, v17, v18, "PlaybackControlsCommandProvider#send End, MRMediaRemoteCommand: %u took %f seconds to complete", v19, 0x12u);
    a1 = v23;
    MEMORY[0x26D628010](v20, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  if (v15 >= 1.0 && (a3 & 0xFFFFFFFA) == 0)
  {
    v24 = a3;
    sub_268BB98FC();
    sub_268C15F9C();
    sub_268BB8DDC();
  }

  if (a1)
  {
    v22 = [a1 commandResult];
    a1 = [a1 error];
  }

  else
  {
    v22 = 0;
  }

  sub_268BB676C();
}

void sub_268BB676C()
{
  OUTLINED_FUNCTION_31_0();
  v209 = v0;
  v2 = v1;
  v213 = v3;
  v5 = v4;
  v204 = v6;
  v7 = sub_268C15A1C();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v216 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_27();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v194 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v20);
  v214 = v194 - v21;
  if (v5)
  {
    v22 = [v5 error];
    v23 = [v5 handlerReturnStatuses];
    sub_268BB9B44(0, &qword_2802CDF30, 0x277CCABB0);
    v217 = sub_268C15D0C();
  }

  else
  {
    v217 = 0;
    v22 = 0;
  }

  v198 = static MRErrorEncoder.getStatusCode(commandResult:)(v5);
  v205 = v24;
  v25 = 0xE700000000000000;
  v215 = v7;
  if (v5)
  {
    v26 = [v5 playerPath];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 description];

      v202 = sub_268C15BFC();
      v207 = v29;

      v7 = v215;
    }

    else
    {
      v207 = 0xE700000000000000;
      v202 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v202 = 0x6E776F6E6B6E75;
    v207 = 0xE700000000000000;
  }

  v194[2] = v16;
  v201 = sub_268BB9100();
  v208 = v30;
  v31 = static MRCommandIDHelper.getMRCommandIDFromOptions(options:)(v213);
  if (v32)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0x6E776F6E6B6E75;
  }

  v200 = v33;
  if (v32)
  {
    v25 = v32;
  }

  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v34 = __swift_project_value_buffer(v7, qword_2802D2ED8);
  v35 = v216;
  v36 = *(v216 + 16);
  v37 = v214;
  v211 = v34;
  v212 = v36;
  v213 = v216 + 16;
  v36(v214);
  v38 = v22;

  v39 = sub_268C159FC();
  v40 = sub_268C15DDC();

  v41 = os_log_type_enabled(v39, v40);
  v210 = v22;
  v206 = v2;
  if (!v41)
  {

    v47 = *(v35 + 8);
    v48 = v7;
    v47(v37, v7);
    if (!v22)
    {
      goto LABEL_35;
    }

LABEL_20:
    v203 = v47;
    v49 = v22;
    v50 = sub_268C1523C();

    v51 = [v50 code];
    v52 = 0x8000000000000020;
    if (v51 != 10)
    {
      v52 = 0x8000000000000000;
    }

    v196 = v52;
    static MRErrorEncoder.commandResultErrorWrapper(commandResult:error:)(v5, v22, &v220);
    v54 = v221;
    v53 = v222;
    v55 = HIBYTE(v222) & 0xF;
    if ((v222 & 0x2000000000000000) == 0)
    {
      v55 = v221 & 0xFFFFFFFFFFFFLL;
    }

    v214 = v50;
    if (v55)
    {
      v56 = static MRErrorEncoder.generateCommandEncoding(commandResult:)(v5);
      v220 = v56;
      v221 = v57;
      v58 = HIBYTE(v57) & 0xF;
      if ((v57 & 0x2000000000000000) == 0)
      {
        v58 = v56 & 0xFFFFFFFFFFFFLL;
      }

      if (v58)
      {
        MEMORY[0x26D627230](47, 0xE100000000000000);
        v56 = v220;
        v59 = v221;
      }

      else
      {
        v59 = v57;
      }

      v218 = v56;
      v219 = v59;

      MEMORY[0x26D627230](v198, v205);

      OUTLINED_FUNCTION_26_0();
      MEMORY[0x26D627230](47, 0xE100000000000000);

      v81 = v218;
      v80 = v219;
      v218 = v204;
      v63 = sub_268C1616C();
      v83 = v82;
      v218 = v81;
      v219 = v80;

      MEMORY[0x26D627230](v63, v83);

      OUTLINED_FUNCTION_26_0();
      MEMORY[0x26D627230](47, 0xE100000000000000);

      OUTLINED_FUNCTION_26_0();
      MEMORY[0x26D627230](v54, v53);

      v60 = v218;
      v61 = v219;
      v84 = v199;
      OUTLINED_FUNCTION_29_0();
      v85();

      v86 = v84;
      v87 = sub_268C159FC();
      v88 = sub_268C15DEC();
      if (OUTLINED_FUNCTION_12_0(v88))
      {
        v89 = swift_slowAlloc();
        v90 = v60;
        v91 = swift_slowAlloc();
        v218 = v91;
        *v89 = 136315138;
        v92 = sub_268BB3D28(v90, v61, &v218);
        v205 = v54;
        v93 = v25;
        v94 = v84;
        v95 = v92;

        *(v89 + 4) = v95;
        _os_log_impl(&dword_268BAD000, v87, v86, "PlaybackControlsCommandProviding#handleSendCommandResult: %s", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v91);
        v60 = v90;
        OUTLINED_FUNCTION_30();
        v63 = v215;
        OUTLINED_FUNCTION_30();

        OUTLINED_FUNCTION_19_0();
        v96 = v94;
        v25 = v93;
        v54 = v205;
      }

      else
      {

        OUTLINED_FUNCTION_19_0();
        v96 = v84;
      }

      v203(v96, v63);
      v218 = MEMORY[0x277D84F90];
      type metadata accessor for TailspinHelper();
      v97 = static TailspinHelper.doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin(tailspinList:)(&v218);
      v64 = v206;
      if (v97)
      {

        v63 = v215;
        static TailspinHelper.generateTailSpinIfPolicyAndErrorAllow(tailspinList:errorDescription:suiteName:)();
      }

      v62 = v196;
      v65 = &off_279C44000;

      v50 = v214;
    }

    else
    {

      v60 = 0;
      v61 = 0xE000000000000000;
      v62 = v196;
      v63 = v48;
      v64 = v206;
      v65 = &off_279C44000;
    }

    if ([v50 v65[217]] == 17)
    {
      v98 = v60;

      v99 = v197;
      OUTLINED_FUNCTION_13_0();
      v100();
      v101 = sub_268C159FC();
      v102 = sub_268C15DEC();
      if (OUTLINED_FUNCTION_12_0(v102))
      {
        v103 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_16_0(v103);
        OUTLINED_FUNCTION_7_0(&dword_268BAD000, v104, v105, "PlaybackControlsCommandProviding#handleSendCommandResult timed out waiting for can be NowPlaying");
        OUTLINED_FUNCTION_11_0();
      }

      OUTLINED_FUNCTION_19_0();
      v203(v99, v63);
      v106 = HIBYTE(v61) & 0xF;
      if ((v61 & 0x2000000000000000) == 0)
      {
        v106 = v98 & 0xFFFFFFFFFFFFLL;
      }

      if (v106)
      {
        OUTLINED_FUNCTION_17_0();
        v107 = swift_allocObject();
        v107[2] = v98;
        v107[3] = v61;
        v107[4] = v200;
        v107[5] = v25;
        v108 = v207;
        v107[6] = v202;
        v107[7] = v108;
        OUTLINED_FUNCTION_20_0();
        *(v109 + 80) = v110;
        v111 = v109 | 0x4000000000000000;
        v112 = v208;
        *(v109 + 64) = v201;
        *(v109 + 72) = v112;
        v113 = v214;
      }

      else
      {

        v113 = v214;
        v111 = 0x8000000000000038;
      }

      v220 = v111;
      goto LABEL_79;
    }

    if ([v50 v65[217]] == 18)
    {

      OUTLINED_FUNCTION_13_0();
      v114();
      v115 = sub_268C159FC();
      v116 = sub_268C15DEC();
      if (OUTLINED_FUNCTION_12_0(v116))
      {
        v117 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_16_0(v117);
        OUTLINED_FUNCTION_7_0(&dword_268BAD000, v118, v119, "PlaybackControlsCommandProviding#handleSendCommandResult no NowPlaying App");
        OUTLINED_FUNCTION_11_0();
      }

      v120 = OUTLINED_FUNCTION_6_0();
      v121(v120);
      OUTLINED_FUNCTION_4_0();
      if (!v122)
      {

        OUTLINED_FUNCTION_20_0();
        v144 = v143 + 16;
LABEL_78:
        v113 = v214;
        v220 = v144;
LABEL_79:
        OUTLINED_FUNCTION_27_0();
LABEL_80:
        v159 = OUTLINED_FUNCTION_28_0();
        v64(v159);
        sub_268BB99A4(v62);

LABEL_81:
        goto LABEL_82;
      }

      OUTLINED_FUNCTION_17_0();
      v123 = swift_allocObject();
      v124 = OUTLINED_FUNCTION_24_0(v123);
      v124[4] = *(v125 - 256);
      v124[5] = v25;
      OUTLINED_FUNCTION_2_0(v124);
      OUTLINED_FUNCTION_20_0();
      v128 = v127 + 16;
LABEL_77:
      v144 = v126 | 0x4000000000000000;
      *(v126 + 80) = v128;
      goto LABEL_78;
    }

    if (!v204)
    {
      v145 = v54 == 0xD000000000000031 && 0x8000000268C1B970 == v53;
      if (v145 || (sub_268C1618C() & 1) != 0)
      {

        OUTLINED_FUNCTION_13_0();
        v146();
        v147 = sub_268C159FC();
        v148 = sub_268C15DEC();
        if (OUTLINED_FUNCTION_12_0(v148))
        {
          v149 = OUTLINED_FUNCTION_23_0();
          OUTLINED_FUNCTION_16_0(v149);
          OUTLINED_FUNCTION_7_0(&dword_268BAD000, v150, v151, "PlaybackControlsCommandProviding#handleSendCommandResult no content of any kind to resume");
          OUTLINED_FUNCTION_11_0();
        }

        v152 = OUTLINED_FUNCTION_6_0();
        v153(v152);
        OUTLINED_FUNCTION_4_0();
        if (!v154)
        {

          OUTLINED_FUNCTION_20_0();
          v144 = v192 + 24;
          goto LABEL_78;
        }

        OUTLINED_FUNCTION_17_0();
        v155 = swift_allocObject();
        v156 = OUTLINED_FUNCTION_24_0(v155);
        v156[4] = *(v157 - 256);
        v156[5] = v25;
        OUTLINED_FUNCTION_2_0(v156);
        OUTLINED_FUNCTION_20_0();
        v128 = v158 + 24;
        goto LABEL_77;
      }
    }

    v129 = sub_268BB9270(v204);

    if (v129)
    {

      OUTLINED_FUNCTION_13_0();
      v130();
      v131 = sub_268C159FC();
      v132 = sub_268C15DEC();
      v133 = OUTLINED_FUNCTION_12_0(v132);
      v134 = v203;
      if (v133)
      {
        v135 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_16_0(v135);
        OUTLINED_FUNCTION_7_0(&dword_268BAD000, v136, v137, "PlaybackControlsCommandProviding#handleSendCommandResult no network connection to allow resume");
        OUTLINED_FUNCTION_11_0();
      }

      OUTLINED_FUNCTION_19_0();
      v134(v194[3], v63);
      OUTLINED_FUNCTION_4_0();
      if (!v138)
      {

        OUTLINED_FUNCTION_20_0();
        v144 = v183 + 32;
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_17_0();
      v139 = swift_allocObject();
      v140 = OUTLINED_FUNCTION_24_0(v139);
      v140[4] = *(v141 - 256);
      v140[5] = v25;
      OUTLINED_FUNCTION_2_0(v140);
      OUTLINED_FUNCTION_20_0();
      v128 = v142 + 32;
      goto LABEL_77;
    }

    v220 = v62;
    v160 = PlaybackControllingError.description.getter();
    v162 = v161;
    v218 = 0x8000000000000000;
    v164 = v160 == PlaybackControllingError.description.getter() && v162 == v163;
    v195 = v25;
    if (v164)
    {
    }

    else
    {
      v165 = sub_268C1618C();

      if ((v165 & 1) == 0)
      {

LABEL_92:
        OUTLINED_FUNCTION_29_0();
        v167();
        v113 = v214;
        v168 = sub_268C159FC();
        v169 = sub_268C15DEC();

        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          *v170 = 138543362;
          *(v170 + 4) = v113;
          *v171 = v113;
          v172 = v113;
          _os_log_impl(&dword_268BAD000, v168, v169, "Send command failed with error: %{public}@", v170, 0xCu);
          sub_268BB99FC(v171);
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_30();
        }

        v173 = OUTLINED_FUNCTION_6_0();
        v174(v173);
        OUTLINED_FUNCTION_4_0();
        if (v175)
        {
          OUTLINED_FUNCTION_17_0();
          v176 = swift_allocObject();
          v177 = OUTLINED_FUNCTION_24_0(v176);
          v179 = *(v178 - 256);
          v180 = v195;
          v177[4] = v179;
          v177[5] = v180;
          v181 = OUTLINED_FUNCTION_2_0(v177);
          v182 = v181 | 0x4000000000000000;
          *(v181 + 80) = v62;
        }

        else
        {

          v182 = v62;
        }

        v220 = v182;
        OUTLINED_FUNCTION_27_0();
        sub_268BB99C0(v62);
        goto LABEL_80;
      }
    }

    sub_268BB92EC(v217, &v220);

    v166 = v220;
    if ((~v220 & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_4_0();
      if (v184)
      {
        OUTLINED_FUNCTION_17_0();
        v185 = swift_allocObject();
        v186 = OUTLINED_FUNCTION_24_0(v185);
        v188 = *(v187 - 256);
        v189 = v195;
        v186[4] = v188;
        v186[5] = v189;
        v190 = OUTLINED_FUNCTION_2_0(v186);
        v191 = v190 | 0x4000000000000000;
        *(v190 + 80) = v166;
      }

      else
      {

        v191 = v166;
      }

      v220 = v191;
      OUTLINED_FUNCTION_27_0();
      sub_268BB99C0(v166);
      v193 = OUTLINED_FUNCTION_28_0();
      v64(v193);
      sub_268BB99DC(v166);
      sub_268BB99A4(v62);

      goto LABEL_81;
    }

    goto LABEL_92;
  }

  v195 = v25;
  v42 = 7104878;
  v43 = swift_slowAlloc();
  v220 = swift_slowAlloc();
  *v43 = 136446466;
  if (v22)
  {
    swift_getErrorValue();
    v44 = sub_268C161DC();
    v46 = v45;
  }

  else
  {
    v46 = 0xE300000000000000;
    v44 = 7104878;
  }

  v66 = sub_268BB3D28(v44, v46, &v220);

  *(v43 + 4) = v66;
  *(v43 + 12) = 2082;
  v67 = v217;
  if (v217)
  {
    v68 = sub_268BB9B44(0, &qword_2802CDF30, 0x277CCABB0);
    v42 = MEMORY[0x26D6272E0](v67, v68);
    v70 = v69;
  }

  else
  {
    v70 = 0xE300000000000000;
  }

  v71 = sub_268BB3D28(v42, v70, &v220);

  *(v43 + 14) = v71;
  _os_log_impl(&dword_268BAD000, v39, v40, "Handling send command results with errors: %{public}s, and statuses: %{public}s", v43, 0x16u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_30();

  v47 = *(v216 + 8);
  v48 = v215;
  (v47)(v214);
  v22 = v210;
  v25 = v195;
  if (v210)
  {
    goto LABEL_20;
  }

LABEL_35:

  sub_268BB92EC(v217, &v220);

  v72 = v220;
  if ((~v220 & 0xF000000000000007) != 0)
  {

    v220 = v72;
    OUTLINED_FUNCTION_27_0();
    sub_268BB99C0(v72);
    v79 = OUTLINED_FUNCTION_28_0();
    v206(v79);
    sub_268BB99DC(v72);
LABEL_82:
    sub_268BB99F0(v220, v221);
    goto LABEL_83;
  }

  v73 = v203;
  v212(v203, v211, v48);
  v74 = sub_268C159FC();
  v75 = sub_268C15DCC();
  if (OUTLINED_FUNCTION_12_0(v75))
  {
    *OUTLINED_FUNCTION_23_0() = 0;
    OUTLINED_FUNCTION_7_0(&dword_268BAD000, v76, v77, "The command was successful");
    OUTLINED_FUNCTION_30();
  }

  v47(v73, v48);
  v220 = 0;
  LOBYTE(v221) = 0;
  v78 = OUTLINED_FUNCTION_28_0();
  v206(v78);

LABEL_83:
  OUTLINED_FUNCTION_32_0();
}

void sub_268BB787C(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = [objc_allocWithZone(MEMORY[0x277D27858]) init];
  v11 = sub_268C15B4C();
  if (a3)
  {
    a3 = sub_268C15BEC();
  }

  OUTLINED_FUNCTION_22_0();
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v14[4] = sub_268BB9878;
  v14[5] = v12;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_18_0();
  v14[2] = sub_268BB79C4;
  v14[3] = &block_descriptor_50;
  v13 = _Block_copy(v14);

  [v10 pauseDevicesByUID:v11 withRefId:a3 audioRoutingInfo:a4 & 0x1010101 completion:v13];
  _Block_release(v13);
}

uint64_t sub_268BB79C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_268C15BFC();
  v5 = v4;

  v2(v3, v5);
}

void sub_268BB7A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 56);
  v7 = sub_268C15CFC();
  OUTLINED_FUNCTION_22_0();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_268BB9850;
  v10[5] = v8;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_18_0();
  v10[2] = sub_268BB7B14;
  v10[3] = &block_descriptor_44;
  v9 = _Block_copy(v10);

  [v6 discoverRemoteControlEndpointsMatchingUIDs:v7 completion:v9];
  _Block_release(v9);
}

uint64_t sub_268BB7B14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_268C15D0C();
  v4 = sub_268C15D0C();

  v2(v3, v4);
}

void sub_268BB7BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_268C15BEC();
  v8 = sub_268C15CFC();
  v9 = sub_268C15BEC();
  v12[4] = a4;
  v12[5] = a5;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8_0();
  v12[2] = v10;
  v12[3] = &block_descriptor;
  v11 = _Block_copy(v12);

  MRAVEndpointAddOutputDevicesToGroupFromSource();
  _Block_release(v11);
}

void sub_268BB7C90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_268BB7CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = sub_268C15BEC();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_268C15CFC();
  v9 = sub_268C15BEC();
  v12[4] = a4;
  v12[5] = a5;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8_0();
  v12[2] = v10;
  v12[3] = &block_descriptor_98;
  v11 = _Block_copy(v12);

  MRAVEndpointMoveOutputGroupToDevicesFromSource();
  _Block_release(v11);
}

void sub_268BB7E20(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = [objc_allocWithZone(MEMORY[0x277D27880]) init];
  v12 = sub_268C15CFC();
  v16[4] = a3;
  v16[5] = a4;
  OUTLINED_FUNCTION_0_0();
  v16[1] = 1107296256;
  OUTLINED_FUNCTION_10_0();
  v16[2] = v13;
  v16[3] = a5;
  v14 = _Block_copy(v16);

  *&v15 = a1;
  [v11 *a6];
  _Block_release(v14);
}

void sub_268BB7F08()
{
  OUTLINED_FUNCTION_30_0();
  v5 = v4;
  v7 = v6;
  v8 = sub_268C15A1C();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_22_0();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = v0;
  if (v1)
  {

    v18 = v1;
    if (v7)
    {
      v19 = sub_268C15BEC();
    }

    else
    {
      v19 = 0;
    }

    v35 = sub_268BB9B3C;
    v36 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    OUTLINED_FUNCTION_10_0();
    v33 = v28;
    v34 = &block_descriptor_86;
    v29 = _Block_copy(&aBlock);

    LODWORD(v30) = v5;
    [v1 setOutputDeviceVolume:v19 outputDevice:v3 queue:v29 completion:{v30, aBlock, v32}];
    _Block_release(v29);
  }

  else
  {
    v20 = qword_2802CDB70;

    if (v20 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    __swift_project_value_buffer(v8, qword_2802D2ED8);
    OUTLINED_FUNCTION_14_0();
    v21(v16);
    v22 = sub_268C159FC();
    v23 = sub_268C15DEC();
    if (OUTLINED_FUNCTION_34_0(v23))
    {
      *OUTLINED_FUNCTION_23_0() = 0;
      OUTLINED_FUNCTION_33_0(&dword_268BAD000, v24, v25, "PlaybackControlsCommandProvider#setDeviceVolume endpoint is nil");
      OUTLINED_FUNCTION_30();
    }

    (*(v11 + 8))(v16, v8);
    sub_268BB9AE8();
    v26 = swift_allocError();
    *v27 = 0;
    sub_268BD33FC();
  }
}

void sub_268BB81BC()
{
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_30_0();
  v5 = v4;
  v6 = sub_268C15A1C();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_22_0();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v0;
  if (v1)
  {

    v16 = v1;
    if (v5)
    {
      v17 = sub_268C15BEC();
    }

    else
    {
      v17 = 0;
    }

    v27[4] = sub_268BB9AE0;
    v27[5] = v15;
    OUTLINED_FUNCTION_9_0();
    v27[1] = 1107296256;
    v27[2] = sub_268BB8448;
    v27[3] = &block_descriptor_80;
    v26 = _Block_copy(v27);

    [v1 outputDeviceVolume:v17 queue:v3 completion:v26];
    _Block_release(v26);
  }

  else
  {
    v18 = qword_2802CDB70;

    if (v18 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    __swift_project_value_buffer(v6, qword_2802D2ED8);
    OUTLINED_FUNCTION_14_0();
    v19(v14);
    v20 = sub_268C159FC();
    v21 = sub_268C15DEC();
    if (OUTLINED_FUNCTION_34_0(v21))
    {
      *OUTLINED_FUNCTION_23_0() = 0;
      OUTLINED_FUNCTION_33_0(&dword_268BAD000, v22, v23, "PlaybackControlsCommandProvider#getDeviceVolume endpoint is nil");
      OUTLINED_FUNCTION_30();
    }

    (*(v9 + 8))(v14, v6);
    sub_268BB9AE8();
    v24 = swift_allocError();
    *v25 = 0;
    sub_268BD43B8();
  }

  OUTLINED_FUNCTION_32_0();
}

void sub_268BB8448(uint64_t a1, void *a2, float a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

void sub_268BB84C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_18_0();
  v4[2] = sub_268BB8558;
  v4[3] = &block_descriptor_74;
  v3 = _Block_copy(v4);

  MRMediaRemoteGetMediaPlaybackVolume();
  _Block_release(v3);
}

uint64_t sub_268BB8558(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v5, a2);
}

uint64_t sub_268BB85AC(void *a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    v3 = [a1 languageOptionGroups];
    sub_268BB9B44(0, &qword_2802CDF48, 0x277D278D0);
    v4 = sub_268C15D0C();
  }

  else
  {
    v4 = 0;
  }

  a2(v4);
}

uint64_t sub_268BB8648(void *a1, uint64_t (*a2)(__int128 *))
{
  if (a1)
  {
    [a1 duration];
    v3 = v8;
    v4 = v9;
    v5 = v10;
    v6 = v11;
  }

  else
  {
    v3 = 0uLL;
    v6 = 2;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  return a2(&v8);
}

void sub_268BB86C0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  if (sub_268C1535C())
  {
    a3(0);
  }

  else
  {
    v8 = objc_opt_self();
    v9 = sub_268C15BEC();
    OUTLINED_FUNCTION_22_0();
    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
    v12[4] = sub_268BB9AB8;
    v12[5] = v10;
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_18_0();
    v12[2] = sub_268BB87F8;
    v12[3] = &block_descriptor_71;
    v11 = _Block_copy(v12);

    [v8 shouldUseQuickControlsToDisplayPlatterForRouteIdentifier:v9 completion:v11];
    _Block_release(v11);
  }
}

uint64_t sub_268BB87F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_268BB884C()
{
  v1 = v0;
  v2 = sub_268C15A1C();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_0();
  v10 = v9 - v8;
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (sub_268C1535C())
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v12 = __swift_project_value_buffer(v2, qword_2802D2ED8);
    (*(v5 + 16))(v10, v12, v2);
    v13 = sub_268C159FC();
    v14 = sub_268C15DDC();
    if (OUTLINED_FUNCTION_34_0(v14))
    {
      v15 = OUTLINED_FUNCTION_23_0();
      *v15 = 0;
      _os_log_impl(&dword_268BAD000, v13, v14, "PlaybackControlsCommandProvider#acquireSnippetAssertion skipped on xrOS", v15, 2u);
      OUTLINED_FUNCTION_30();
    }

    (*(v5 + 8))(v10, v2);
    return 0;
  }

  else
  {
    v17 = [objc_opt_self() quickControlsControllerWithDelegate_];
    v18 = [v17 acquireQuickControlsAssertion];
    v16 = sub_268C15BFC();
    v20 = v19;

    swift_beginAccess();
    swift_unknownObjectRetain();
    v21 = v1[9];
    swift_isUniquelyReferenced_nonNull_native();
    v23 = v1[9];
    sub_268BEF2AC(v17, v16, v20);
    v1[9] = v23;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v16;
}

void sub_268BB8A94()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_268C15A1C();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - v14;
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (sub_268C1535C())
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    __swift_project_value_buffer(v5, qword_2802D2ED8);
    OUTLINED_FUNCTION_14_0();
    v17(v15);
    v18 = sub_268C159FC();
    v19 = sub_268C15DDC();
    if (OUTLINED_FUNCTION_34_0(v19))
    {
      v20 = OUTLINED_FUNCTION_23_0();
      *v20 = 0;
      _os_log_impl(&dword_268BAD000, v18, v19, "PlaybackControlsCommandProvider#releaseSnippetAssertion skipped on xrOS", v20, 2u);
      OUTLINED_FUNCTION_30();
    }

    (*(v8 + 8))(v15, v5);
  }

  else
  {
    swift_beginAccess();
    v21 = v0[9];

    v22 = sub_268C0F354(v4, v2, v21);

    if (v22)
    {
      [v22 releaseQuickControlsAssertion];
      swift_beginAccess();
      sub_268BB971C(v4, v2);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_2802CDB70 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      __swift_project_value_buffer(v5, qword_2802D2ED8);
      OUTLINED_FUNCTION_14_0();
      v23(v13);

      v24 = sub_268C159FC();
      v25 = sub_268C15DEC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_268BB3D28(v4, v2, v28);
        _os_log_impl(&dword_268BAD000, v24, v25, "PlaybackControlsCommandProvider#releaseSnippetAssertion Expected to find controller for sessionID: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();
      }

      (*(v8 + 8))(v13, v5);
    }
  }

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BB8DDC()
{
  v0 = sub_268C1593C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268C1592C();
  sub_268C1591C();
}

uint64_t sub_268BB8EAC(char a1)
{
  v2 = sub_268C15A1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2802D2F10);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_268C159FC();
  v9 = sub_268C15DFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_268BAD000, v8, v9, "PlaybackControlsCommandProvider#generateABCSnapshot ABC result: %{BOOL}d", v10, 8u);
    MEMORY[0x26D628010](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t PlaybackControlsCommandProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return v0;
}

uint64_t PlaybackControlsCommandProvider.__deallocating_deinit()
{
  PlaybackControlsCommandProvider.deinit();
  OUTLINED_FUNCTION_17_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_268BB9100()
{
  v0 = sub_268C152DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268C152AC();
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v6 = sub_268C15BEC();
  [v5 setDateFormat_];

  v7 = sub_268C1529C();
  v8 = [v5 stringFromDate_];

  v9 = sub_268C15BFC();
  (*(v1 + 8))(v4, v0);
  return v9;
}

uint64_t sub_268BB9270(int a1)
{
  if (a1)
  {
    v1 = 0;
  }

  else
  {
    sub_268BB9A64();
    v1 = sub_268C15F7C();
  }

  return v1 & 1;
}

void sub_268BB92EC(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  if (a1)
  {
    if (sub_268BC4EF4(a1) && ((sub_268BC4F00(0, (a1 & 0xC000000000000001) == 0, a1), (a1 & 0xC000000000000001) != 0) ? (v12 = MEMORY[0x26D627640](0, a1)) : (v12 = *(a1 + 32)), v13 = v12, v14 = [v12 integerValue], v13, !v14))
    {
      v26 = 0xF000000000000007;
    }

    else
    {
      if (qword_2802CDB70 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v4, qword_2802D2ED8);
      (*(v5 + 16))(v9, v15, v4);

      v16 = sub_268C159FC();
      v17 = sub_268C15DEC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v31 = a2;
        v19 = v18;
        v20 = swift_slowAlloc();
        v32 = v20;
        *v19 = 136446210;
        v21 = sub_268BB9B44(0, &qword_2802CDF30, 0x277CCABB0);
        v22 = MEMORY[0x26D6272E0](a1, v21);
        v24 = sub_268BB3D28(v22, v23, &v32);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_268BAD000, v16, v17, "Send command failed with non 0 status code. statusCodes: %{public}s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x26D628010](v20, -1, -1);
        v25 = v19;
        a2 = v31;
        MEMORY[0x26D628010](v25, -1, -1);
      }

      (*(v5 + 8))(v9, v4);
      sub_268BF9214(a1, &v32);
      v26 = v32;
    }
  }

  else
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v4, qword_2802D2ED8);
    (*(v5 + 16))(v11, v27, v4);
    v28 = sub_268C159FC();
    v29 = sub_268C15DEC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_268BAD000, v28, v29, "No status codes returned from MR for send command. Send command failed", v30, 2u);
      MEMORY[0x26D628010](v30, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    v26 = 0x8000000000000000;
  }

  *a2 = v26;
}

uint64_t sub_268BB96A8@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_268BB971C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_268BD99A0(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v9 = *(*v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF10, &qword_268C17288);
  sub_268C1610C();
  v10 = *(*(v13 + 48) + 16 * v7 + 8);

  v11 = *(*(v13 + 56) + 8 * v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF18, &unk_268C17290);
  sub_268C1611C();
  *v3 = v13;
  return v11;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268BB981C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_268BB9850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_268BB9878()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_268BB98A0()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void sub_268BB98E8(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  sub_268BB643C(a1, *(v1 + 16), *(v1 + 24));
}

unint64_t sub_268BB98FC()
{
  result = qword_2802CDF20;
  if (!qword_2802CDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CDF20);
  }

  return result;
}

uint64_t sub_268BB9950()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  sub_268BB99A4(v0[10]);
  OUTLINED_FUNCTION_17_0();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

unint64_t sub_268BB99A4(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_268BB99C0(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_268BB99DC(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_268BB99A4(result);
  }

  return result;
}

unint64_t sub_268BB99F0(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_268BB99A4(result);
  }

  return result;
}

uint64_t sub_268BB99FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF28, &unk_268C17900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268BB9A64()
{
  result = qword_2802CDF38;
  if (!qword_2802CDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CDF38);
  }

  return result;
}

uint64_t sub_268BB9AB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_268BB9AE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_268BD43B8();
}

unint64_t sub_268BB9AE8()
{
  result = qword_2802CDF40;
  if (!qword_2802CDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CDF40);
  }

  return result;
}

void sub_268BB9B3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_268BD33FC();
}

uint64_t sub_268BB9B44(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_2_0(void *result)
{
  v2 = *(v1 - 248);
  result[6] = *(v1 - 288);
  result[7] = v2;
  v3 = *(v1 - 240);
  result[8] = *(v1 - 296);
  result[9] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_0()
{
  v2 = *(v1 - 176) + 8;
  result = v0;
  v4 = *(v1 - 280);
  return result;
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_11_0()
{

  JUMPOUT(0x26D628010);
}

BOOL OUTLINED_FUNCTION_12_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_13_0()
{
  v1 = *(v0 - 216);
  v2 = *(v0 - 208);
  v3 = *(v0 - 200);
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_0()
{
  v2 = *(v0 - 120);
  *(v0 - 128) = *(v0 - 128);
  *(v0 - 120) = v2;
}

uint64_t OUTLINED_FUNCTION_28_0()
{
  result = v0 - 112;
  v2 = *(v0 - 232);
  return result;
}

void OUTLINED_FUNCTION_29_0()
{
  v1 = *(v0 - 216);
  v2 = *(v0 - 208);
  v3 = *(v0 - 184);
  v4 = *(v0 - 200);
}

void OUTLINED_FUNCTION_33_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_34_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t UsoIdentifierBuilder.init(semantic:homeAutomationEntityType:encodedSpanInfo:interpretationGroup:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = v7;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 44) = BYTE4(a6) & 1;
  return result;
}

void UsoIdentifierBuilder.build()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF50, &qword_268C172D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_13_1();
  v4 = sub_268C155DC();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  v32 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v31 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v30 = &v30 - v11;
  v13 = v0[1];
  v14 = *(v0 + 16);
  v15 = v0[3];
  v16 = v0[4];
  v17 = *(v0 + 10);
  v18 = *(v0 + 44);
  v34 = *v0;
  v12 = v34;
  v35 = v13;
  OUTLINED_FUNCTION_19_1();
  sub_268BBA140();
  v33 = v19;
  v34 = v12;
  v35 = v13;
  OUTLINED_FUNCTION_19_1();
  v20 = v4;
  sub_268BBAADC(v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    sub_268BBAE88(v1);
  }

  else
  {
    v21 = v32;
    v22 = *(v32 + 32);
    v23 = v30;
    v22(v30, v1, v20);
    v24 = v31;
    (*(v21 + 16))(v31, v23, v20);
    v25 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_268BB31EC(0, *(v25 + 16) + 1, 1, v25);
      v25 = v28;
    }

    v27 = *(v25 + 16);
    v26 = *(v25 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_268BB31EC(v26 > 1, v27 + 1, 1, v25);
      v25 = v29;
    }

    (*(v21 + 8))(v23, v20);
    *(v25 + 16) = v27 + 1;
    v22((v25 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v27), v24, v20);
  }

  OUTLINED_FUNCTION_32_0();
}

void sub_268BBA140()
{
  v1 = sub_268C15A1C();
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v171 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF58, &qword_268C17338);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9 - 8);
  v170 = &v157[-v11];
  v12 = sub_268C1570C();
  v13 = OUTLINED_FUNCTION_3_0(v12);
  v167 = v14;
  v168 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_0();
  v17 = sub_268C156EC();
  v18 = OUTLINED_FUNCTION_3_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_1();
  v23 = sub_268C1561C();
  v24 = OUTLINED_FUNCTION_3_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15_0();
  v31 = v30 - v29;
  v32 = sub_268C155DC();
  v33 = OUTLINED_FUNCTION_3_0(v32);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v36);
  v39 = &v157[-v38];
  v41 = *v0;
  v40 = v0[1];
  v42 = *(v0 + 10);
  v43 = *(v0 + 44);
  switch(*(v0 + 16))
  {
    case 0:
      v44 = *(v0 + 10);
      v171 = v39;
      v45 = *MEMORY[0x277D5E690];
      v46 = OUTLINED_FUNCTION_7_1();
      v47(v46);

      sub_268C156DC();
      v48 = *(v20 + 8);
      v49 = OUTLINED_FUNCTION_11_1();
      v50(v49);
      v51 = "homeAutomationPlaceHint";
      v52 = sub_268C1553C();
      OUTLINED_FUNCTION_14_1(v52);
      v181 = v20 + 8;
      v180 = v26;
      OUTLINED_FUNCTION_6_1();
      goto LABEL_7;
    case 2:
      v166 = *(v0 + 10);
      v171 = v39;
      v163 = v40;
      v164 = v37;
      v93 = *MEMORY[0x277D5E528];
      v94 = OUTLINED_FUNCTION_10_1();
      v95(v94);
      v96 = sub_268C1560C();
      v98 = OUTLINED_FUNCTION_17_1(v96, v97);
      v99(v98);
      v100 = *MEMORY[0x277D5E690];
      v159 = *(v20 + 104);
      v101 = OUTLINED_FUNCTION_12_1();
      v102(v101);
      v103 = sub_268C156DC();
      v105 = OUTLINED_FUNCTION_9_1(v103, v104);
      v106(v105);
      v107 = *MEMORY[0x277D5E6E8];
      v108 = OUTLINED_FUNCTION_8_1();
      v109(v108);
      v110 = sub_268C156FC();
      v112 = OUTLINED_FUNCTION_5_0(v110, v111);
      v113(v112);
      v158 = sub_268C1553C();
      v114 = OUTLINED_FUNCTION_3_1();
      __swift_storeEnumTagSinglePayload(v114, v115, v116, v117);
      v179 = 1;
      OUTLINED_FUNCTION_16_1();
      v178 = v118;
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_4_1();
      v119 = *MEMORY[0x277D5E6B0];
      v120 = OUTLINED_FUNCTION_12_1();
      v159(v120);

      v121 = sub_268C156DC();
      v160 = v122;
      v161 = v121;
      v123 = OUTLINED_FUNCTION_11_1();
      v162(v123);
      v124 = *MEMORY[0x277D5E6E0];
      v125 = OUTLINED_FUNCTION_18_1();
      v126(v125);
      sub_268C156FC();
      v127 = OUTLINED_FUNCTION_15_1();
      v128(v127);
      v129 = OUTLINED_FUNCTION_3_1();
      __swift_storeEnumTagSinglePayload(v129, v130, v131, v158);
      v177 = 1;
      OUTLINED_FUNCTION_16_1();
      v176 = v132;
      goto LABEL_5;
    case 3:
      v166 = *(v0 + 10);
      v171 = v39;
      v163 = v40;
      v164 = v37;
      v53 = *MEMORY[0x277D5E558];
      v54 = OUTLINED_FUNCTION_10_1();
      v55(v54);
      v56 = sub_268C1560C();
      v58 = OUTLINED_FUNCTION_17_1(v56, v57);
      v59(v58);
      v60 = *MEMORY[0x277D5E690];
      v159 = *(v20 + 104);
      v61 = OUTLINED_FUNCTION_12_1();
      v62(v61);
      v63 = sub_268C156DC();
      v65 = OUTLINED_FUNCTION_9_1(v63, v64);
      v66(v65);
      v67 = *MEMORY[0x277D5E6E8];
      v68 = OUTLINED_FUNCTION_8_1();
      v69(v68);
      v70 = sub_268C156FC();
      v72 = OUTLINED_FUNCTION_5_0(v70, v71);
      v73(v72);
      v158 = sub_268C1553C();
      v74 = OUTLINED_FUNCTION_3_1();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
      v175 = 1;
      OUTLINED_FUNCTION_16_1();
      v174 = v78;
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_4_1();
      v79 = *MEMORY[0x277D5E6B0];
      v80 = OUTLINED_FUNCTION_12_1();
      v159(v80);

      v81 = sub_268C156DC();
      v160 = v82;
      v161 = v81;
      v83 = OUTLINED_FUNCTION_11_1();
      v162(v83);
      v84 = *MEMORY[0x277D5E6E0];
      v85 = OUTLINED_FUNCTION_18_1();
      v86(v85);
      sub_268C156FC();
      v87 = OUTLINED_FUNCTION_15_1();
      v88(v87);
      v89 = OUTLINED_FUNCTION_3_1();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v158);
      v173 = 1;
      OUTLINED_FUNCTION_16_1();
      v172 = v92;
LABEL_5:
      OUTLINED_FUNCTION_1_1();
      v133 = v164;
      sub_268C1559C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDC0, &qword_268C17160);
      v134 = v165;
      v135 = *(v165 + 72);
      v136 = (*(v165 + 80) + 32) & ~*(v165 + 80);
      v137 = swift_allocObject();
      *(v137 + 16) = xmmword_268C172C0;
      v138 = v137 + v136;
      v139 = v171;
      v140 = v169;
      (*(v134 + 16))(v138, v171, v169);
      (*(v134 + 32))(v138 + v135, v133, v140);
      (*(v134 + 8))(v139, v140);
      break;
    case 7:
      v141 = *(v0 + 10);
      v171 = v39;
      v142 = *MEMORY[0x277D5E690];
      v143 = OUTLINED_FUNCTION_7_1();
      v144(v143);

      sub_268C156DC();
      v145 = *(v20 + 8);
      v146 = OUTLINED_FUNCTION_11_1();
      v147(v146);
      v51 = "v16@?0@NSError8";
      v148 = sub_268C1553C();
      OUTLINED_FUNCTION_14_1(v148);
      v183 = v20 + 8;
      v182 = v26;
      OUTLINED_FUNCTION_6_1();
LABEL_7:
      sub_268C1559C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDC0, &qword_268C17160);
      v149 = *(v31 + 72);
      v150 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v151 = swift_allocObject();
      *(v151 + 16) = xmmword_268C172B0;
      (*(v31 + 32))(v151 + v150, v51, v169);
      break;
    default:
      if (qword_2802CDBE0 != -1)
      {
        swift_once();
      }

      v152 = __swift_project_value_buffer(v1, qword_2802D2F10);
      v153 = v171;
      (*(v171 + 2))(v8, v152, v1);
      v154 = sub_268C159FC();
      v155 = sub_268C15DEC();
      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        *v156 = 0;
        _os_log_impl(&dword_268BAD000, v154, v155, "Unexpected parameter while generating usoIdentifiers", v156, 2u);
        MEMORY[0x26D628010](v156, -1, -1);
      }

      v153[1](v8, v1);
      break;
  }

  OUTLINED_FUNCTION_32_0();
}

void sub_268BBAADC(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF58, &qword_268C17338);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_268C1570C();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_1();
  v13 = sub_268C156EC();
  v14 = OUTLINED_FUNCTION_3_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_0();
  v21 = v20 - v19;
  if (*(v3 + 32))
  {
    v32 = *(v3 + 44);
    v33 = *(v3 + 40);
    v34 = *(v3 + 24);
    (*(v16 + 104))(v21, *MEMORY[0x277D5E6A8], v13);

    sub_268C156DC();
    (*(v16 + 8))(v21, v13);
    (*(v10 + 104))(v2, *MEMORY[0x277D5E6C0], v7);
    sub_268C156FC();
    (*(v10 + 8))(v2, v7);
    sub_268C1553C();
    v22 = OUTLINED_FUNCTION_3_1();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    sub_268C1559C();
    v26 = sub_268C155DC();
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v26);
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    sub_268C155DC();
    OUTLINED_FUNCTION_32_0();

    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  }
}

uint64_t sub_268BBADEC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_268BBAE88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF50, &qword_268C172D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268BBAF08(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_268BBAF50(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_268C15D2C();
  }

  return result;
}

__n128 __swift_memcpy45_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_268BBAF90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 45))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_268BBAFD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_1()
{
  v2 = *(v0 - 144);
  v4 = *(v0 - 248);
  v3 = *(v0 - 240);
  v5 = *(v0 - 280);
  v6 = *(v0 - 288);
  v7 = *(v0 - 296);
  v8 = *(v0 - 304);

  return sub_268C1559C();
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2)
{
  *(v4 - 296) = a1;
  *(v4 - 304) = a2;
  *(v4 - 184) = *(v2 + 8);
  return v3;
}

uint64_t OUTLINED_FUNCTION_7_1()
{
  v5 = *(v2 + 104);
  *(v4 - 168) = v0;
  *(v4 - 160) = v1;
  return v3;
}

uint64_t OUTLINED_FUNCTION_8_1()
{
  *(v1 - 264) = *(*(v1 - 184) + 104);
  result = v0;
  v3 = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1, uint64_t a2)
{
  *(v4 - 280) = a1;
  *(v4 - 288) = a2;
  *(v4 - 232) = *(v2 + 8);
  return v3;
}

uint64_t OUTLINED_FUNCTION_10_1()
{
  v7 = *(v5 + 104);
  *(v6 - 168) = v0;
  *(v6 - 160) = v2;
  result = v4;
  *(v6 - 208) = v3;
  *(v6 - 196) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t a1)
{
  v4 = *(v1 - 152);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_15_1()
{
  result = v0;
  v3 = *(v1 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t a1, uint64_t a2)
{
  *(v4 - 248) = a2;
  *(v4 - 240) = a1;
  v5 = *(v3 + 8);
  return v2;
}

uint64_t OUTLINED_FUNCTION_18_1()
{
  result = v0;
  v3 = *(v1 - 264);
  return result;
}

void OUTLINED_FUNCTION_19_1()
{
  *(v5 - 112) = v4;
  *(v5 - 104) = v1;
  *(v5 - 96) = v2;
  *(v5 - 88) = v3;
  *(v5 - 84) = v0;
}

uint64_t FuzzyMatchType.description.getter()
{
  v1 = *(v0 + 4);
  v2 = *v0;
  sub_268C1606C();
  MEMORY[0x26D627230](0xD000000000000020, 0x8000000268C1BAA0);
  sub_268BBB31C(v2);
  MEMORY[0x26D627230](0x53686374616D202CLL, 0xEE00203A65726F63);
  sub_268C15DAC();
  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_268BBB31C(char a1)
{
  v2 = 0xED0000686374614DLL;
  v3 = 0x746365667265702ELL;
  switch(a1)
  {
    case 1:
      v3 = 0x6C6169747261702ELL;
      break;
    case 2:
      v2 = 0x8000000268C1BAD0;
      v3 = 0xD000000000000011;
      break;
    case 3:
      v2 = 0xEB00000000686374;
      v3 = 0x614D7361696C612ELL;
      break;
    default:
      break;
  }

  MEMORY[0x26D627230](v3, v2);
}

uint64_t sub_268BBB3F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_268C158BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_268C158CC();
  sub_268C158AC();
  v8 = sub_268C1587C();
  v9 = *(v3 + 8);
  result = v9(v6, v2);
  if (v8 & 1) != 0 || (sub_268C1588C(), v11 = sub_268C1587C(), result = v9(v6, v2), (v11))
  {
    v12 = 1;
  }

  else
  {
    sub_268C1589C();
    v13 = sub_268C1587C();
    result = v9(v6, v2);
    if (v13)
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }
  }

  *a1 = v12;
  v14 = *&v7;
  if ((v7 & 0x100000000) != 0)
  {
    v14 = 0.0;
  }

  *(a1 + 4) = v14;
  return result;
}

BOOL static FuzzyMatchType.< infix(_:_:)(float *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 == v2)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return 4 - v2 < (4 - v3);
  }
}

BOOL sub_268BBB5EC(unsigned __int8 a1, unsigned __int8 a2, float a3, float a4)
{
  if (a1 == a2)
  {
    return a4 >= a3;
  }

  else
  {
    return 4 - a2 >= 4 - a1;
  }
}

BOOL sub_268BBB62C(unsigned __int8 a1, unsigned __int8 a2, float a3, float a4)
{
  if (a2 == a1)
  {
    return a3 >= a4;
  }

  else
  {
    return 4 - a1 >= 4 - a2;
  }
}

BOOL sub_268BBB66C(unsigned __int8 a1, unsigned __int8 a2, float a3, float a4)
{
  if (a1 == a2)
  {
    return a4 < a3;
  }

  else
  {
    return 4 - a2 < 4 - a1;
  }
}

unint64_t SpanMatchAccuracy.description.getter()
{
  result = 0x746365667265702ELL;
  switch(*v0)
  {
    case 1:
      result = 0x6C6169747261702ELL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x614D7361696C612ELL;
      break;
    default:
      return result;
  }

  return result;
}

SiriPlaybackControlSupport::SpanMatchAccuracy_optional __swiftcall SpanMatchAccuracy.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 5)
  {
    v2 = 4;
  }

  else
  {
    v2 = 4 - rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_268BBB784@<X0>(uint64_t *a1@<X8>)
{
  result = SpanMatchAccuracy.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_268BBB7B0()
{
  result = qword_2802CDF60;
  if (!qword_2802CDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CDF60);
  }

  return result;
}

unint64_t sub_268BBB808()
{
  result = qword_2802CDF68;
  if (!qword_2802CDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CDF68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FuzzyMatchType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && a1[8])
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for FuzzyMatchType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpanMatchAccuracy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SpanMatchAccuracy(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268BBBA58);
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

uint64_t sub_268BBBAA4(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x26D627820](4 - a1);
  return sub_268C1626C();
}

uint64_t sub_268BBBB00(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x26D627820](a1 + 1000);
  return sub_268C1626C();
}

uint64_t sub_268BBBB60(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x26D627820](a1);
  return sub_268C1626C();
}

uint64_t sub_268BBBCA4(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x26D627820](a1);
  return sub_268C1626C();
}

uint64_t sub_268BBBD10()
{
  OUTLINED_FUNCTION_21_0();
  sub_268C15C3C();
  return sub_268C1626C();
}

uint64_t sub_268BBBD70(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_21_0();
  a2(v5, a1);
  return sub_268C1626C();
}

uint64_t sub_268BBBDB8()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_22_1();
  return sub_268C1626C();
}

uint64_t sub_268BBBDF4()
{
  sub_268C15C3C();
}

uint64_t sub_268BBBF30()
{
  sub_268C15C3C();
}

uint64_t sub_268BBBFD8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 8:
      OUTLINED_FUNCTION_18_2();
      break;
    default:
      break;
  }

  sub_268C15C3C();
}

uint64_t sub_268BBC170()
{
  sub_268C15C3C();
}

uint64_t sub_268BBC22C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 4:
      OUTLINED_FUNCTION_9_2();
      break;
    case 6:
    case 8:
    case 9:
    case 10:
      break;
    default:
      OUTLINED_FUNCTION_8_2();
      break;
  }

  sub_268C15C3C();
}

uint64_t sub_268BBC3F0()
{
  sub_268C15C3C();
}

uint64_t sub_268BBC458()
{
  sub_268C15C3C();
}

uint64_t sub_268BBC4BC()
{
  sub_268C15C3C();
}

uint64_t sub_268BBC55C()
{
  OUTLINED_FUNCTION_18_2();
  switch(v0)
  {
    case 5:
      break;
    default:
      OUTLINED_FUNCTION_9_2();
      break;
  }

  sub_268C15C3C();
}

uint64_t sub_268BBC670(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_268C15C3C();
}

uint64_t sub_268BBC6D4()
{
  sub_268C15C3C();
}

uint64_t sub_268BBC798()
{
  sub_268C15C3C();
}

uint64_t sub_268BBC8AC()
{
  sub_268C1624C();
  OUTLINED_FUNCTION_22_1();
  return sub_268C1626C();
}

uint64_t sub_268BBC94C()
{
  sub_268C1624C();
  sub_268C15C3C();

  return sub_268C1626C();
}

uint64_t sub_268BBCA00()
{
  sub_268C1624C();
  sub_268C15C3C();

  return sub_268C1626C();
}

uint64_t sub_268BBCA78()
{
  sub_268C1624C();
  sub_268C15C3C();

  return sub_268C1626C();
}

uint64_t sub_268BBCB40(uint64_t a1, uint64_t a2)
{
  sub_268C1624C();
  MEMORY[0x26D627820](a2);
  return sub_268C1626C();
}

uint64_t sub_268BBCB98()
{
  sub_268C1624C();
  sub_268C15C3C();
  return sub_268C1626C();
}

uint64_t sub_268BBCBE4(uint64_t a1, unsigned __int8 a2)
{
  sub_268C1624C();
  MEMORY[0x26D627820](4 - a2);
  return sub_268C1626C();
}

uint64_t sub_268BBCC5C(uint64_t a1, unsigned __int8 a2)
{
  sub_268C1624C();
  MEMORY[0x26D627820](a2);
  return sub_268C1626C();
}

uint64_t sub_268BBCCA0(uint64_t a1, unsigned __int8 a2)
{
  sub_268C1624C();
  MEMORY[0x26D627820](a2 + 1000);
  return sub_268C1626C();
}

uint64_t sub_268BBCD00(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_268C1624C();
  a3(v4);
  sub_268C15C3C();

  return sub_268C1626C();
}

uint64_t sub_268BBCD84(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_268C1624C();
  a3(v6, a2);
  return sub_268C1626C();
}

void sub_268BBCDD0()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v2 = sub_268C15A1C();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v56 = v4;
  v57 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_2();
  v55 = v7;
  OUTLINED_FUNCTION_10_2();
  v8 = sub_268C159EC();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  v53 = v10;
  v54 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_2();
  v52 = v13;
  OUTLINED_FUNCTION_10_2();
  v14 = sub_268C15E4C();
  v15 = OUTLINED_FUNCTION_3_0(v14);
  v49 = v16;
  v50 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_2();
  v48 = v19;
  OUTLINED_FUNCTION_10_2();
  v20 = sub_268C15E1C();
  v21 = OUTLINED_FUNCTION_25_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_0();
  v24 = sub_268C15AAC();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_15_0();
  *&v0[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeManagerRefreshTimeout] = 0x4014000000000000;
  v51 = OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_hmHomeManagerOptions;
  *&v0[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_hmHomeManagerOptions] = 1860;
  v26 = &v0[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeData];
  v27 = MEMORY[0x277D84F90];
  *v26 = 0;
  *(v26 + 1) = 0;
  *(v26 + 3) = v27;
  *(v26 + 4) = v27;
  *(v26 + 2) = 0;
  v47 = OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_readyGroup;
  *&v0[v47] = dispatch_group_create();
  v28 = OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homekitInitSignpostID;
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  qword_2802D2EB8;
  sub_268C159DC();
  sub_268C159DC();
  v46 = OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_loadQueue;
  sub_268BB9B44(0, &qword_2802CE068, 0x277D85C78);
  sub_268C15A8C();
  v59 = v27;
  sub_268BC1148(&qword_2802CE070, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE078, &unk_268C177B0);
  sub_268BC1190(&unk_2802CE080, &qword_2802CE078, &unk_268C177B0);
  sub_268C15FCC();
  (*(v49 + 104))(v48, *MEMORY[0x277D85260], v50);
  v29 = sub_268C15E8C();
  *&v0[v46] = v29;
  v30 = *&v0[v47];
  type metadata accessor for HomeManager.DataSourceTracker();
  OUTLINED_FUNCTION_19_2();
  v31 = swift_allocObject();
  sub_268BBFEB4(v29, v30, 0);
  *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeKitTracker] = v31;
  v32 = *&v1[v46];
  v33 = *&v1[v47];
  OUTLINED_FUNCTION_19_2();
  v34 = swift_allocObject();
  sub_268BBFEB4(v32, v33, 1);
  *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_mediaGroupTracker] = v34;
  v35 = *&v1[v51];
  if ((v35 & 0x8000) == 0)
  {
    *&v1[v51] = v35 | 0x8000;
  }

  v36 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  sub_268BC11E4(0xD000000000000010, 0x8000000268C1BD90, v36);
  [v36 setMaxConcurrentOperationCount_];
  [v36 setUnderlyingQueue_];
  v37 = [objc_allocWithZone(MEMORY[0x277CD1C60]) initWithOptions:*&v1[v51] cachePolicy:2];
  [v37 setDelegateQueue_];
  sub_268C15EAC();
  (*(v53 + 16))(v52, &v1[v28], v54);
  sub_268C159CC();
  (*(v53 + 8))(v52, v54);
  if (qword_2802CDB68 != -1)
  {
    OUTLINED_FUNCTION_3_2();
  }

  __swift_project_value_buffer(v57, qword_2802D2EC0);
  OUTLINED_FUNCTION_11_2();
  v38(v55);
  v39 = sub_268C159FC();
  v40 = sub_268C15DCC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_23_0();
    *v41 = 0;
    _os_log_impl(&dword_268BAD000, v39, v40, "Initializing HomeManager", v41, 2u);
    OUTLINED_FUNCTION_30();
  }

  (*(v56 + 8))(v55, v57);
  v42 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
  *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_hmHomeManager] = v42;
  v58.receiver = v1;
  v58.super_class = type metadata accessor for HomeManager();
  v43 = objc_msgSendSuper2(&v58, sel_init);
  v44 = *&v43[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_hmHomeManager];
  v45 = v43;
  [v44 setDelegate_];
  sub_268BBD464();

  OUTLINED_FUNCTION_32_0();
}

void sub_268BBD464()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_268C15A5C();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  v89 = v6;
  v90 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  v87 = v9;
  OUTLINED_FUNCTION_10_2();
  v88 = sub_268C15AAC();
  v10 = OUTLINED_FUNCTION_3_0(v88);
  v86 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_2();
  v85 = v14;
  OUTLINED_FUNCTION_10_2();
  v15 = sub_268C15A1C();
  v16 = OUTLINED_FUNCTION_3_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17_2();
  v23 = (v21 - v22);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v80 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v80 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v80 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v80 - v34;
  if (sub_268BBFBE8())
  {
    if (qword_2802CDB68 != -1)
    {
      OUTLINED_FUNCTION_3_2();
    }

    __swift_project_value_buffer(v15, qword_2802D2EC0);
    OUTLINED_FUNCTION_11_2();
    v36(v35);
    v37 = sub_268C159FC();
    v38 = sub_268C15DCC();
    if (os_log_type_enabled(v37, v38))
    {
      *OUTLINED_FUNCTION_23_0() = 0;
      OUTLINED_FUNCTION_23_1(&dword_268BAD000, v39, v38, "HomeManager manager already initialized, skipping warm up");
      OUTLINED_FUNCTION_30();
    }

    v40 = *(v18 + 8);
    v41 = v35;
LABEL_7:
    v42 = v15;
    goto LABEL_16;
  }

  v84 = v23;
  if ((v3 & 1) == 0)
  {
    if (sub_268BBFB68())
    {
      if (qword_2802CDB68 != -1)
      {
        OUTLINED_FUNCTION_3_2();
      }

      __swift_project_value_buffer(v15, qword_2802D2EC0);
      OUTLINED_FUNCTION_11_2();
      v63(v33);
      v64 = sub_268C159FC();
      v65 = sub_268C15DCC();
      if (OUTLINED_FUNCTION_13_2(v65))
      {
        *OUTLINED_FUNCTION_23_0() = 0;
        OUTLINED_FUNCTION_27_1(&dword_268BAD000, v66, v67, "HomeManager manager initialization already in progress.");
        OUTLINED_FUNCTION_30();
      }

      v40 = *(v18 + 8);
      v41 = v33;
      goto LABEL_7;
    }

    if ((sub_268BBFB68() & 1) == 0 && (sub_268BBFBE8() & 1) == 0)
    {
      LODWORD(v83) = v3;
      if (qword_2802CDB68 != -1)
      {
        OUTLINED_FUNCTION_3_2();
      }

      __swift_project_value_buffer(v15, qword_2802D2EC0);
      OUTLINED_FUNCTION_11_2();
      v68(v30);
      v69 = sub_268C159FC();
      v70 = sub_268C15DCC();
      if (OUTLINED_FUNCTION_13_2(v70))
      {
        *OUTLINED_FUNCTION_23_0() = 0;
        OUTLINED_FUNCTION_23_1(&dword_268BAD000, v71, &unk_2802D2000, "Previous HomeManager initialization failed. Reinitializing...");
        OUTLINED_FUNCTION_30();
      }

      (*(v18 + 8))(v30, v15);
      v72 = OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_loadQueue;
      v82 = *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_loadQueue];
      v73 = *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_readyGroup];
      type metadata accessor for HomeManager.DataSourceTracker();
      OUTLINED_FUNCTION_19_2();
      v74 = swift_allocObject();
      v75 = v73;
      sub_268BBFEB4(v82, v75, 0);
      v76 = *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeKitTracker];
      *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeKitTracker] = v74;

      v77 = *&v1[v72];
      OUTLINED_FUNCTION_19_2();
      v78 = swift_allocObject();
      sub_268BBFEB4(v77, v75, 1);
      v79 = *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_mediaGroupTracker];
      *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_mediaGroupTracker] = v78;

      LOBYTE(v3) = v83;
    }
  }

  if (qword_2802CDB68 != -1)
  {
    OUTLINED_FUNCTION_3_2();
  }

  v43 = __swift_project_value_buffer(v15, qword_2802D2EC0);
  v81 = *(v18 + 16);
  v82 = v43;
  v81(v27);
  v44 = sub_268C159FC();
  v45 = sub_268C15DCC();
  if (OUTLINED_FUNCTION_13_2(v45))
  {
    *OUTLINED_FUNCTION_23_0() = 0;
    OUTLINED_FUNCTION_23_1(&dword_268BAD000, v46, &unk_2802D2000, "HomeManager Warming up");
    OUTLINED_FUNCTION_30();
  }

  v83 = *(v18 + 8);
  v83(v27, v15);
  sub_268BBDEC4();
  v47 = *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_loadQueue];
  v48 = swift_allocObject();
  *(v48 + 16) = v3 & 1;
  *(v48 + 24) = v1;
  v92[4] = sub_268BC113C;
  v92[5] = v48;
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(COERCE_DOUBLE(1107296256));
  v92[2] = v49;
  v92[3] = &block_descriptor_77;
  v50 = _Block_copy(v92);
  v51 = v47;
  v52 = v1;
  v53 = v85;
  sub_268C15A6C();
  v91 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v54, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  OUTLINED_FUNCTION_24_1();
  v56 = v87;
  v57 = v90;
  sub_268C15FCC();
  MEMORY[0x26D627440](0, v53, v56, v50);
  _Block_release(v50);

  (*(v89 + 8))(v56, v57);
  (*(v86 + 8))(v53, v88);

  v58 = v84;
  (v81)(v84, v82, v15);
  v59 = sub_268C159FC();
  v60 = sub_268C15DCC();
  if (OUTLINED_FUNCTION_13_2(v60))
  {
    *OUTLINED_FUNCTION_23_0() = 0;
    OUTLINED_FUNCTION_27_1(&dword_268BAD000, v61, v62, "Waiting on HomeKit and Media Group results before querying devices.");
    OUTLINED_FUNCTION_30();
  }

  v41 = v58;
  v42 = v15;
  v40 = v83;
LABEL_16:
  v40(v41, v42);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BBDBB8(char a1, uint64_t a2)
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  if (qword_2802CDB68 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_2802D2EC0);
  v13 = v5[2];
  v13(v11, v12, v4);
  v14 = sub_268C159FC();
  v15 = sub_268C15DCC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v13;
    v17 = v9;
    v18 = a1;
    v19 = a2;
    v20 = v16;
    *v16 = 0;
    _os_log_impl(&dword_268BAD000, v14, v15, "Beginning HomeKit data fetch", v16, 2u);
    v21 = v20;
    a2 = v19;
    a1 = v18;
    v9 = v17;
    v13 = v31;
    MEMORY[0x26D628010](v21, -1, -1);
  }

  v22 = v5[1];
  v22(v11, v4);
  if ((a1 & 1) == 0)
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v4, qword_2802D2F10);
    v13(v9, v23, v4);
    v24 = sub_268C159FC();
    v25 = sub_268C15DFC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_268BAD000, v24, v25, "Force refreshing home manager", v26, 2u);
      MEMORY[0x26D628010](v26, -1, -1);
    }

    v22(v9, v4);
    v27 = *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_hmHomeManager);
    sub_268BBEF7C();
  }

  v28 = *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_mediaGroupTracker);

  sub_268BBFEE4();
}

void sub_268BBDEC4()
{
  OUTLINED_FUNCTION_31_0();
  v45 = v1;
  v47 = sub_268C15A5C();
  v2 = OUTLINED_FUNCTION_3_0(v47);
  v50 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15_0();
  v8 = v7 - v6;
  v9 = sub_268C15AAC();
  v10 = OUTLINED_FUNCTION_3_0(v9);
  v48 = v11;
  v49 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  v16 = v15 - v14;
  v17 = sub_268C15A3C();
  v18 = OUTLINED_FUNCTION_3_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_0();
  v25 = (v24 - v23);
  v26 = sub_268C15ADC();
  v46 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17_2();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v44 - v33;
  sub_268C15ABC();
  *v25 = v45;
  (*(v20 + 104))(v25, *MEMORY[0x277D85188], v17);
  MEMORY[0x26D6270F0](v31, v25);
  (*(v20 + 8))(v25, v17);
  v45 = *(v27 + 8);
  v45(v31, v26);
  v35 = *&v0[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_loadQueue];
  OUTLINED_FUNCTION_26_1();
  v36 = swift_allocObject();
  *(v36 + 16) = v0;
  v52[4] = sub_268BC1040;
  v52[5] = v36;
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(COERCE_DOUBLE(1107296256));
  v52[2] = v37;
  v52[3] = &block_descriptor_65;
  v38 = _Block_copy(v52);
  v39 = v35;
  v40 = v0;
  sub_268C15A6C();
  v51 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v41, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  OUTLINED_FUNCTION_24_1();
  v43 = v47;
  sub_268C15FCC();
  MEMORY[0x26D6273F0](v34, v16, v8, v38);
  _Block_release(v38);

  (*(v50 + 8))(v8, v43);
  (*(v48 + 8))(v16, v49);
  v45(v34, v46);

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BBE2A0(char *a1)
{
  v2 = sub_268C15A1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_268BBFB68();
  if (result)
  {
    v8 = OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeKitTracker;
    v9 = *&a1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeKitTracker];

    sub_268BBFEE4();

    v10 = OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_mediaGroupTracker;
    v11 = *&a1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_mediaGroupTracker];

    sub_268BBFEE4();

    if (qword_2802CDB68 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v2, qword_2802D2EC0);
    (*(v3 + 16))(v6, v12, v2);
    v13 = a1;
    v14 = sub_268C159FC();
    v15 = sub_268C15DEC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v24 = v13;
      v17 = v10;
      v18 = v16;
      *v16 = 67109376;
      v19 = *&a1[v8];

      v20 = sub_268BC04A8();

      v18[1] = v20 & 1;
      *(v18 + 4) = 1024;
      v21 = *&a1[v17];

      v22 = sub_268BC04A8();

      *(v18 + 10) = v22 & 1;

      _os_log_impl(&dword_268BAD000, v14, v15, "HomeManager initialization timed out.  HomeKit success: %{BOOL}d  MediaGroups success: %{BOOL}d", v18, 0xEu);
      MEMORY[0x26D628010](v18, -1, -1);
    }

    else
    {

      v14 = v13;
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_268BBE518()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_268C15A5C();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v57 = v7;
  v58 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_2();
  v55 = v10;
  OUTLINED_FUNCTION_10_2();
  v56 = sub_268C15AAC();
  v11 = OUTLINED_FUNCTION_3_0(v56);
  v54 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_2();
  v53 = v15;
  OUTLINED_FUNCTION_10_2();
  v16 = sub_268C15A1C();
  v17 = OUTLINED_FUNCTION_3_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_0();
  v24 = v23 - v22;
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v25 = __swift_project_value_buffer(v16, qword_2802D2F10);
  (*(v19 + 16))(v24, v25, v16);
  v26 = v0;
  v27 = sub_268C159FC();
  v28 = sub_268C15DFC();

  if (os_log_type_enabled(v27, v28))
  {
    v51 = v4;
    v29 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    *v29 = 136315650;
    v30 = *&v26[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeKitTracker];

    v52 = v2;
    v31 = sub_268BBFC68();
    v33 = v32;

    v34 = sub_268BB3D28(v31, v33, v59);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = *&v26[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_mediaGroupTracker];

    v36 = sub_268BBFC68();
    v38 = v37;

    v39 = sub_268BB3D28(v36, v38, v59);

    *(v29 + 14) = v39;
    *(v29 + 22) = 2080;
    v40 = sub_268C1628C();
    v42 = sub_268BB3D28(v40, v41, v59);

    *(v29 + 24) = v42;
    v2 = v52;
    _os_log_impl(&dword_268BAD000, v27, v28, "Waiting for HomeManager to be ready in order to read home data. HomeKit init status: %s, media group init status: %s. Object: %s", v29, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    v4 = v51;
    OUTLINED_FUNCTION_30();
  }

  (*(v19 + 8))(v24, v16);
  v43 = *&v26[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_readyGroup];
  v44 = *&v26[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_loadQueue];
  v45 = swift_allocObject();
  v45[2] = v26;
  v45[3] = v4;
  v45[4] = v2;
  v59[4] = sub_268BC1088;
  v59[5] = v45;
  OUTLINED_FUNCTION_9_0();
  v59[1] = 1107296256;
  v59[2] = sub_268BC5554;
  v59[3] = &block_descriptor_71_0;
  v46 = _Block_copy(v59);
  v47 = v26;
  v48 = v44;

  sub_268C15A6C();
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v49, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  OUTLINED_FUNCTION_24_1();
  sub_268C15FCC();
  sub_268C15E0C();
  _Block_release(v46);

  (*(v57 + 8))(v55, v58);
  (*(v54 + 8))(v53, v56);

  OUTLINED_FUNCTION_32_0();
}

void sub_268BBEA08(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v59 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - v11;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_2802D2F10);
  v58 = *(v7 + 16);
  v58(v12, v13, v6);
  v14 = a1;
  v15 = sub_268C159FC();
  v16 = sub_268C15DFC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v56 = a3;
    v18 = v17;
    v54 = swift_slowAlloc();
    *&v61 = v54;
    *v18 = 136315650;
    v19 = *&v14[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeKitTracker];

    v20 = sub_268BBFC68();
    v55 = v7;
    v21 = v20;
    v57 = a2;
    v23 = v22;

    v24 = sub_268BB3D28(v21, v23, &v61);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    v25 = *&v14[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_mediaGroupTracker];

    v26 = sub_268BBFC68();
    v28 = v27;

    v29 = sub_268BB3D28(v26, v28, &v61);
    a2 = v57;

    *(v18 + 14) = v29;
    *(v18 + 22) = 2080;
    v60 = v14;
    v30 = sub_268C1628C();
    v32 = sub_268BB3D28(v30, v31, &v61);

    *(v18 + 24) = v32;
    _os_log_impl(&dword_268BAD000, v15, v16, "HomeManager is ready. HomeKit init status: %s, media group init status: %s. Object: %s", v18, 0x20u);
    v33 = v54;
    swift_arrayDestroy();
    MEMORY[0x26D628010](v33, -1, -1);
    MEMORY[0x26D628010](v18, -1, -1);

    v34 = v55;
  }

  else
  {

    v34 = v7;
  }

  v35 = *(v34 + 8);
  v35(v12, v6);
  v36 = *&v14[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_mediaGroupTracker];

  v37 = sub_268BC04A8();

  if ((v37 & 1) == 0)
  {
    if (qword_2802CDB68 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v6, qword_2802D2EC0);
    v58(v59, v38, v6);
    v39 = sub_268C159FC();
    v40 = sub_268C15DEC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_268BAD000, v39, v40, "Returning homeData without media groups.", v41, 2u);
      MEMORY[0x26D628010](v41, -1, -1);
    }

    v35(v59, v6);
  }

  v42 = *&v14[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeKitTracker];

  v43 = sub_268BC04A8();

  if (v43)
  {
    v44 = &v14[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeData];
    swift_beginAccess();
    v45 = *v44;
    v46 = *(v44 + 1);
    v47 = *(v44 + 2);
    v48 = *(v44 + 3);
    v49 = *(v44 + 4);
    *&v61 = v45;
    *(&v61 + 1) = v46;
    *&v62 = v47;
    *(&v62 + 1) = v48;
    v63 = v49;
    v64 = 0;
    v50 = v47;

    v51 = v45;
    v52 = v46;
    a2(&v61);
    sub_268BC1094(v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64);
  }

  else
  {
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    v64 = 1;
    a2(&v61);
  }
}

void sub_268BBEF7C()
{
  OUTLINED_FUNCTION_31_0();
  v44 = v0;
  v1 = sub_268C152DC();
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v42 = v3;
  v43 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17_2();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v41 = sub_268C159EC();
  v12 = OUTLINED_FUNCTION_3_0(v41);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_0();
  v19 = v18 - v17;
  v20 = sub_268C15A1C();
  v21 = OUTLINED_FUNCTION_3_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_0();
  v28 = v27 - v26;
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v29 = __swift_project_value_buffer(v20, qword_2802D2F10);
  (*(v23 + 16))(v28, v29, v20);
  v30 = sub_268C159FC();
  v31 = sub_268C15DFC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_23_0();
    *v32 = 0;
    _os_log_impl(&dword_268BAD000, v30, v31, "Refreshing HMManager Data", v32, 2u);
    OUTLINED_FUNCTION_30();
  }

  (*(v23 + 8))(v28, v20);
  sub_268C15EAC();
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  v33 = v44;
  v34 = v41;
  (*(v14 + 16))(v19, v44 + OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homekitRefreshSignpostID, v41);
  sub_268C159CC();
  (*(v14 + 8))(v19, v34);
  v35 = *(v33 + OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_hmHomeManager);
  sub_268C152CC();
  sub_268C152BC();
  v36 = v43;
  v37 = *(v42 + 8);
  v37(v8, v43);
  v38 = sub_268C1529C();
  v37(v11, v36);
  OUTLINED_FUNCTION_26_1();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45[4] = sub_268BC1004;
  v45[5] = v39;
  OUTLINED_FUNCTION_9_0();
  v45[1] = 1107296256;
  v45[2] = sub_268BFB7BC;
  v45[3] = &block_descriptor_59;
  v40 = _Block_copy(v45);

  [v35 _refreshBeforeDate_completionHandler_];
  _Block_release(v40);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_32_0();
}

void sub_268BBF378(void *a1)
{
  v2 = sub_268C15A1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = sub_268C159EC();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v46 = v9;
    v47 = v7;
    v48 = a1;
    v49 = v3;
    v50 = v2;
    sub_268C15E9C();
    if (qword_2802CDB60 != -1)
    {
      swift_once();
    }

    v17 = v11[2];
    v17(v14, v16 + OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homekitInitSignpostID, v10);
    sub_268C159BC();
    v18 = v11[1];
    v18(v14, v10);
    sub_268C15E9C();
    v51 = v16;
    v17(v14, v16 + OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homekitRefreshSignpostID, v10);
    sub_268C159BC();
    v18(v14, v10);
    v19 = v48;
    if (v48)
    {
      v20 = v48;
      v22 = v49;
      v21 = v50;
      if (qword_2802CDB68 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v21, qword_2802D2EC0);
      v24 = v47;
      (*(v22 + 16))(v47, v23, v21);
      v25 = v19;
      v26 = sub_268C159FC();
      v27 = sub_268C15DEC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v52 = v29;
        *v28 = 136446210;
        swift_getErrorValue();
        v30 = sub_268C161DC();
        v32 = sub_268BB3D28(v30, v31, &v52);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_268BAD000, v26, v27, "HomeKit initialization failed: %{public}s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x26D628010](v29, -1, -1);
        MEMORY[0x26D628010](v28, -1, -1);
      }

      (*(v22 + 8))(v24, v21);
      v33 = v51;
      v34 = *&v51[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeKitTracker];

      sub_268BBFEE4();
    }

    else
    {
      v36 = v49;
      v35 = v50;
      if (qword_2802CDB68 != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v35, qword_2802D2EC0);
      v38 = v46;
      (*(v36 + 16))(v46, v37, v35);
      v39 = sub_268C159FC();
      v40 = sub_268C15DCC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_268BAD000, v39, v40, "HomeKit initialization complete.", v41, 2u);
        MEMORY[0x26D628010](v41, -1, -1);
      }

      (*(v36 + 8))(v38, v35);
      v42 = v51;
      v43 = *&v51[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_hmHomeManager];
      swift_beginAccess();
      v44 = v43;
      sub_268BBF978();
      swift_endAccess();

      v45 = *&v42[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeKitTracker];

      sub_268BBFEE4();
    }
  }
}

void sub_268BBF978()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v3 = [v1 currentAccessory];

  *v0 = v3;
  v4 = [v2 currentAccessory];
  v5 = [v4 room];

  *(v0 + 8) = v5;
  v6 = [v2 currentHome];

  *(v0 + 16) = v6;
  v7 = [v2 homes];
  sub_268BB9B44(0, &qword_2802CE060, 0x277CD1A60);
  v8 = sub_268C15D0C();

  v9 = sub_268BC4EF4(v8);
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v9 == v10)
    {

      v18 = *(v0 + 24);

      *(v0 + 24) = v11;
      OUTLINED_FUNCTION_32_0();
      return;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x26D627640](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_268BB3228(0, *(v11 + 16) + 1, 1, v11);
      v11 = v16;
    }

    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_268BB3228(v14 > 1, v15 + 1, 1, v11);
      v11 = v17;
    }

    *(v11 + 16) = v15 + 1;
    *(v11 + 8 * v15 + 32) = v13;
    ++v10;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_268BBFB68()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeKitTracker);

  v3 = sub_268BC03FC();

  if (v3)
  {
    return 1;
  }

  v5 = *(v1 + OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_mediaGroupTracker);

  v6 = sub_268BC03FC();

  return v6 & 1;
}

uint64_t sub_268BBFBE8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeKitTracker);

  v3 = sub_268BC04A8();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_mediaGroupTracker);

  v5 = sub_268BC04A8();

  return v5 & 1;
}

uint64_t sub_268BBFC68()
{
  sub_268C1606C();
  MEMORY[0x26D627230](0xD000000000000026, 0x8000000268C1BC80);
  if (*(v0 + 33))
  {
    v1 = 6779760;
  }

  else
  {
    v1 = 0x74694B656D6F68;
  }

  if (*(v0 + 33))
  {
    v2 = 0xE300000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  MEMORY[0x26D627230](v1, v2);

  MEMORY[0x26D627230](0xD000000000000014, 0x8000000268C1BCB0);
  v3 = 0x8000000268C1B3A0;
  v4 = 0x64656873696E6966;
  if (*(v0 + 32) == 1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xEE0064656C696146;
  }

  if (*(v0 + 32))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6572676F72506E69;
  }

  if (*(v0 + 32))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000007373;
  }

  MEMORY[0x26D627230](v5, v6);

  MEMORY[0x26D627230](0x7463656A624F202CLL, 0xEA0000000000203ALL);
  v7 = sub_268C1628C();
  MEMORY[0x26D627230](v7);

  MEMORY[0x26D627230](46, 0xE100000000000000);
  return 0;
}

uint64_t sub_268BBFE18(char a1)
{
  if (a1)
  {
    return 6779760;
  }

  else
  {
    return 0x74694B656D6F68;
  }
}

uint64_t sub_268BBFE48(char a1)
{
  if (!a1)
  {
    return 0x6572676F72506E69;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x64656873696E6966;
}

uint64_t sub_268BBFEB4(uint64_t a1, dispatch_group_t group, char a3)
{
  *(v3 + 32) = 0;
  *(v3 + 33) = a3 & 1;
  *(v3 + 16) = a1;
  *(v3 + 24) = group;
  dispatch_group_enter(group);
  return v3;
}

void sub_268BBFEE4()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_268C15A5C();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  v45 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  v43 = v9;
  OUTLINED_FUNCTION_10_2();
  v44 = sub_268C15AAC();
  v10 = OUTLINED_FUNCTION_3_0(v44);
  v42 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_2();
  v41 = v14;
  OUTLINED_FUNCTION_10_2();
  v15 = sub_268C15A1C();
  v16 = OUTLINED_FUNCTION_3_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_0();
  v23 = v22 - v21;
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v24 = __swift_project_value_buffer(v15, qword_2802D2F10);
  (*(v18 + 16))(v23, v24, v15);

  v25 = sub_268C159FC();
  v26 = sub_268C15DFC();

  if (os_log_type_enabled(v25, v26))
  {
    v40 = v4;
    v27 = swift_slowAlloc();
    v39 = v15;
    v28 = swift_slowAlloc();
    v46[0] = v28;
    *v27 = 67109378;
    *(v27 + 4) = v3 & 1;
    *(v27 + 8) = 2080;
    v29 = sub_268BBFC68();
    v31 = v3;
    v32 = sub_268BB3D28(v29, v30, v46);

    *(v27 + 10) = v32;
    v3 = v31;
    v1 = v0;
    _os_log_impl(&dword_268BAD000, v25, v26, "DataSourceTracker#complete success: %{BOOL}d current state: %s", v27, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_30();
    v4 = v40;
    OUTLINED_FUNCTION_30();

    (*(v18 + 8))(v23, v39);
  }

  else
  {

    (*(v18 + 8))(v23, v15);
  }

  v33 = *(v1 + 16);
  v34 = swift_allocObject();
  *(v34 + 16) = v1;
  *(v34 + 24) = v3 & 1;
  v46[4] = sub_268BC0FAC;
  v46[5] = v34;
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(COERCE_DOUBLE(1107296256));
  v46[2] = v35;
  v46[3] = &block_descriptor_0;
  v36 = _Block_copy(v46);

  sub_268C15A6C();
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  OUTLINED_FUNCTION_24_1();
  sub_268C15FCC();
  MEMORY[0x26D627440](0, v41, v43, v36);
  _Block_release(v36);
  (*(v45 + 8))(v43, v4);
  (*(v42 + 8))(v41, v44);

  OUTLINED_FUNCTION_32_0();
}

void sub_268BC0310(uint64_t a1, char a2)
{
  if (*(a1 + 32))
  {
    v4 = sub_268C1618C();

    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  else
  {
  }

  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  *(a1 + 32) = v5;
  v6 = *(a1 + 24);

  dispatch_group_leave(v6);
}

uint64_t sub_268BC03FC()
{
  if (*(v0 + 32))
  {
    v1 = sub_268C1618C();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t sub_268BC04A8()
{
  if (*(v0 + 32) && *(v0 + 32) == 1)
  {
    OUTLINED_FUNCTION_9_2();
    v1 = 1;
  }

  else
  {
    v1 = sub_268C1618C();
  }

  return v1 & 1;
}

uint64_t sub_268BC0558()
{
  v0 = sub_268C1615C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268BC05A4()
{
  v0 = sub_268C1615C();

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

uint64_t sub_268BC061C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268BC0558();
  *a2 = result;
  return result;
}

uint64_t sub_268BC064C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268BBFE48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268BC069C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268BC05A4();
  *a2 = result;
  return result;
}

uint64_t sub_268BC06CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268BBFE18(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268BC0720()
{
  sub_268BC06F8();
  OUTLINED_FUNCTION_19_2();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id sub_268BC07B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HomeManager()
{
  result = qword_2802CE010;
  if (!qword_2802CE010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268BC0950()
{
  result = sub_268C159EC();
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

uint64_t getEnumTagSinglePayload for HomeManager.DataSourceTracker.Caller(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HomeManager.DataSourceTracker.Caller(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268BC0B98);
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

uint64_t getEnumTagSinglePayload for HomeManager.DataSourceTracker.DataLoadState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HomeManager.DataSourceTracker.DataLoadState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268BC0D30);
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