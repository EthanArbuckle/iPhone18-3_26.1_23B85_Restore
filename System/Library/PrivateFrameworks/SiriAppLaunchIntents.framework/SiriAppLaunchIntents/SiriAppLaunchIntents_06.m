uint64_t sub_26613E87C()
{
  v0 = sub_26618BDF0();
  v6 = OUTLINED_FUNCTION_65_3(v0, v1, &qword_28005C0A8, qword_26618FAE0, v2, v3, v4, v5, v46, v48);
  if (v54)
  {
    OUTLINED_FUNCTION_61_1(v6, v7, &qword_28005C0A8, qword_26618FAE0, v8, v9);
    sub_26618BE00();
    if (OUTLINED_FUNCTION_46_3() || (v10 = sub_26618BDE0(), OUTLINED_FUNCTION_5_12(v10, v11, v12, v13, v14, v15, v16, v17, v47, v49), OUTLINED_FUNCTION_46_3()) || (v18 = sub_26618BE80(), OUTLINED_FUNCTION_5_12(v18, v19, v20, v21, v22, v23, v24, v25, v47, v50), OUTLINED_FUNCTION_46_3()))
    {
      OUTLINED_FUNCTION_48_3();
      OUTLINED_FUNCTION_37_3();
      sub_26618BED0();
      goto LABEL_6;
    }

    v30 = sub_26618BFA0();
    OUTLINED_FUNCTION_5_12(v30, v31, v32, v33, v34, v35, v36, v37, v47, v51);
    if (OUTLINED_FUNCTION_46_3())
    {
      OUTLINED_FUNCTION_48_3();
      v38 = sub_26618C060();

      if (!v38)
      {
LABEL_16:
        sub_2660BF79C(v55, &qword_28005C0A8, qword_26618FAE0);

LABEL_17:
        sub_26618BF30();
        OUTLINED_FUNCTION_26_6();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
        goto LABEL_18;
      }

      if (!sub_2661046B8(v38))
      {

        sub_2660BF79C(v55, &qword_28005C0A8, qword_26618FAE0);
        goto LABEL_17;
      }

      v39 = OUTLINED_FUNCTION_67_0();
      sub_2661046C8(v39);
      if ((v38 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26677C150](0, v38);
      }

      else
      {
        v40 = *(v38 + 32);
      }

      sub_26618BCF0();
LABEL_6:

      if (v47)
      {
        sub_26618BD10();
        OUTLINED_FUNCTION_63_3();
        sub_26618BF20();

        sub_2660BF79C(v55, &qword_28005C0A8, qword_26618FAE0);
LABEL_18:
        __swift_destroy_boxed_opaque_existential_1(v52);
        return sub_2660BF79C(v53, &qword_28005C0A8, qword_26618FAE0);
      }

      goto LABEL_16;
    }

    sub_2660BF79C(v55, &qword_28005C0A8, qword_26618FAE0);
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  else
  {
    sub_2660BF79C(v55, &qword_28005C0A8, qword_26618FAE0);
  }

  sub_26618BF30();
  OUTLINED_FUNCTION_26_6();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  return sub_2660BF79C(v53, &qword_28005C0A8, qword_26618FAE0);
}

uint64_t sub_26613EAFC()
{
  v0 = OUTLINED_FUNCTION_80_0();
  v6 = OUTLINED_FUNCTION_65_3(v0, v1, &qword_28005C0A8, qword_26618FAE0, v2, v3, v4, v5, v16, v18);
  if (v21)
  {
    OUTLINED_FUNCTION_61_1(v6, v7, &qword_28005C0A8, qword_26618FAE0, v8, v9);
    sub_26618BF80();
    if (OUTLINED_FUNCTION_6_13())
    {

      OUTLINED_FUNCTION_68_1();
      sub_26618BED0();

      if (v17)
      {
        v10 = sub_26618BD80();

        if (v10)
        {

          OUTLINED_FUNCTION_68_1();
          sub_26618BED0();
LABEL_11:
          sub_26618BD70();
          v13 = v12;

          sub_2660BF79C(v22, &qword_28005C0A8, qword_26618FAE0);
          if (!v13)
          {
            v14 = 1;
            goto LABEL_18;
          }

LABEL_14:
          v14 = 0;
LABEL_18:
          __swift_destroy_boxed_opaque_existential_1(v19);
          goto LABEL_19;
        }
      }

      goto LABEL_13;
    }

    sub_26618BE40();
    if (OUTLINED_FUNCTION_4_16())
    {

      OUTLINED_FUNCTION_68_1();
      sub_26618BAF0();

      if (v17)
      {
        v11 = sub_26618BD80();

        if (v11)
        {

          OUTLINED_FUNCTION_68_1();
          sub_26618BAF0();
          goto LABEL_11;
        }
      }

LABEL_13:

      sub_2660BF79C(v22, &qword_28005C0A8, qword_26618FAE0);
      goto LABEL_14;
    }

    sub_2660BF79C(v22, &qword_28005C0A8, qword_26618FAE0);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_2660BF79C(v22, &qword_28005C0A8, qword_26618FAE0);
  }

  v14 = 0;
LABEL_19:
  sub_2660BF79C(v20, &qword_28005C0A8, qword_26618FAE0);
  return v14;
}

void sub_26613ED1C()
{
  v243 = sub_26618BBC0();
  v246 = *(v243 - 8);
  v0 = *(v246 + 64);
  v1 = MEMORY[0x28223BE20](v243);
  v228 = &v226 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v242 = &v226 - v4;
  MEMORY[0x28223BE20](v3);
  v257 = &v226 - v5;
  v249 = sub_26618C110();
  v231 = *(v249 - 8);
  v6 = *(v231 + 64);
  MEMORY[0x28223BE20](v249);
  v248 = &v226 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6E8, &qword_266192DA0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v253 = &v226 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v269 = &v226 - v12;
  v13 = sub_26618BBE0();
  v270 = *(v13 - 8);
  v14 = *(v270 + 64);
  MEMORY[0x28223BE20](v13);
  v251 = &v226 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6F0, &qword_266192DA8);
  v16 = *(*(v262 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v262);
  v235 = &v226 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v226 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6F8, &qword_266192DB0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v237 = &v226 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v240 = &v226 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v239 = &v226 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v245 = &v226 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v226 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v226 - v34;
  v36 = sub_26618BC20();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v227 = &v226 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v233 = &v226 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v238 = &v226 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v229 = &v226 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v241 = &v226 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v256 = &v226 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v230 = &v226 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v252 = &v226 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v247 = &v226 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v234 = &v226 - v58;
  MEMORY[0x28223BE20](v57);
  v60 = &v226 - v59;
  v61 = sub_26618BD40();
  v264 = MEMORY[0x277D84F90];
  if (v61)
  {
    v62 = v61;
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
  }

  v263 = *(v62 + 16);
  v271 = v37 + 16;
  v261 = *MEMORY[0x277D5E488];
  v260 = (v270 + 104);
  v250 = (v270 + 32);
  v254 = (v270 + 8);
  v236 = (v37 + 32);
  v267 = v36;
  v268 = v37;
  v63 = v37 + 8;
  v64 = 0;
  v270 = v63;
  v255 = v62;
  v265 = v13;
  v244 = v60;
  while (v263 != v64)
  {
    if (v64 >= *(v62 + 16))
    {
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
      return;
    }

    v259 = (*(v268 + 80) + 32) & ~*(v268 + 80);
    v65 = *(v268 + 72);
    v266 = v64;
    v258 = v65;
    (*(v268 + 16))(v60, v62 + v259 + v65 * v64, v36);
    sub_26618BC00();
    (*v260)(v33, v261, v13);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v13);
    v66 = *(v262 + 48);
    sub_266142534(v35, v20, &qword_28005C6F8, &qword_266192DB0);
    sub_266142534(v33, &v20[v66], &qword_28005C6F8, &qword_266192DB0);
    if (__swift_getEnumTagSinglePayload(v20, 1, v13) == 1)
    {
      sub_2660BF79C(v33, &qword_28005C6F8, &qword_266192DB0);
      sub_2660BF79C(v35, &qword_28005C6F8, &qword_266192DB0);
      if (__swift_getEnumTagSinglePayload(&v20[v66], 1, v13) == 1)
      {
        sub_2660BF79C(v20, &qword_28005C6F8, &qword_266192DB0);
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v67 = v245;
    sub_266142534(v20, v245, &qword_28005C6F8, &qword_266192DB0);
    if (__swift_getEnumTagSinglePayload(&v20[v66], 1, v13) == 1)
    {
      sub_2660BF79C(v33, &qword_28005C6F8, &qword_266192DB0);
      sub_2660BF79C(v35, &qword_28005C6F8, &qword_266192DB0);
      (*v254)(v67, v13);
      v60 = v244;
LABEL_14:
      sub_2660BF79C(v20, &qword_28005C6F0, &qword_266192DA8);
LABEL_15:
      v232 = *v236;
      v232(v234, v60, v36);
      v72 = v264;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v274 = v72;
      v74 = v266;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = *(v72 + 16);
        sub_26612A4C8();
        v72 = v274;
      }

      v76 = v259;
      v77 = *(v72 + 16);
      v78 = v77 + 1;
      if (v77 >= *(v72 + 24) >> 1)
      {
        v264 = v77 + 1;
        v259 = v77;
        sub_26612A4C8();
        v78 = v264;
        v77 = v259;
        v72 = v274;
      }

      v64 = v74 + 1;
      *(v72 + 16) = v78;
      v264 = v72;
      v232((v72 + v76 + v77 * v258), v234, v36);
    }

    else
    {
      v68 = v251;
      (*v250)(v251, &v20[v66], v13);
      sub_266142A78(&qword_28005C700, MEMORY[0x277D5E490]);
      v69 = sub_26618C890();
      v70 = *v254;
      v71 = v68;
      v62 = v255;
      (*v254)(v71, v265);
      sub_2660BF79C(v33, &qword_28005C6F8, &qword_266192DB0);
      sub_2660BF79C(v35, &qword_28005C6F8, &qword_266192DB0);
      v70(v67, v265);
      v13 = v265;
      v36 = v267;
      sub_2660BF79C(v20, &qword_28005C6F8, &qword_266192DB0);
      v60 = v244;
      if ((v69 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_12:
      (*v270)(v60, v36);
      v64 = v266 + 1;
    }
  }

  v79 = 0;
  v80 = v264;
  v81 = *(v264 + 16);
  v266 = (v231 + 8);
  v259 = MEMORY[0x277D84F90];
  v82 = v247;
  while (v81 != v79)
  {
    if (v79 >= *(v80 + 16))
    {
      goto LABEL_152;
    }

    v83 = v36;
    v84 = (*(v268 + 80) + 32) & ~*(v268 + 80);
    v85 = *(v268 + 72);
    (*(v268 + 16))(v82, v80 + v84 + v85 * v79, v83);
    sub_26618BC10();
    v86 = v269;
    v87 = sub_26618C120();
    if (__swift_getEnumTagSinglePayload(v86, 1, v87) == 1)
    {
      (*v270)(v82, v83);
      sub_2660BF79C(v86, &qword_28005C6E8, &qword_266192DA0);
      v36 = v83;
      v80 = v264;
      goto LABEL_27;
    }

    v88 = v248;
    sub_26618C100();
    v89 = sub_26618C0F0();
    (*v266)(v88, v249);
    (*(*(v87 - 8) + 8))(v86, v87);
    if (v89)
    {
      v90 = *v236;
      v82 = v247;
      (*v236)(v230, v247, v267);
      v91 = v259;
      v92 = swift_isUniquelyReferenced_nonNull_native();
      v274 = v91;
      v258 = v90;
      if ((v92 & 1) == 0)
      {
        v93 = *(v91 + 16);
        sub_26612A4C8();
        v91 = v274;
      }

      v94 = *(v91 + 16);
      v95 = v94 + 1;
      if (v94 >= *(v91 + 24) >> 1)
      {
        sub_26612A4C8();
        v95 = v94 + 1;
        v91 = v274;
      }

      ++v79;
      *(v91 + 16) = v95;
      v259 = v91;
      v96 = v91 + v84 + v94 * v85;
      v36 = v267;
      v258(v96, v230, v267);
      v80 = v264;
    }

    else
    {
      v82 = v247;
      v36 = v267;
      (*v270)(v247, v267);
      v80 = v264;
LABEL_27:
      ++v79;
    }
  }

  v97 = *(v259 + 16);
  if (v97)
  {
    v98 = v259 + ((*(v268 + 80) + 32) & ~*(v268 + 80));
    v269 = *(v268 + 72);
    v99 = *(v268 + 16);
    v100 = MEMORY[0x277D84F90];
    do
    {
      v101 = v252;
      v102 = v267;
      v99(v252, v98, v267);
      v103 = sub_26618BBD0();
      v105 = v104;
      (*v270)(v101, v102);
      if (v105)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = *(v100 + 16);
          sub_266129600();
          v100 = v109;
        }

        v106 = *(v100 + 16);
        if (v106 >= *(v100 + 24) >> 1)
        {
          sub_266129600();
          v100 = v110;
        }

        *(v100 + 16) = v106 + 1;
        v107 = v100 + 16 * v106;
        *(v107 + 32) = v103;
        *(v107 + 40) = v105;
      }

      v98 += v269;
      --v97;
    }

    while (v97);

    v36 = v267;
  }

  else
  {

    v100 = MEMORY[0x277D84F90];
  }

  v111 = v235;
  v112 = v255;
  if (*(v100 + 16))
  {

LABEL_124:
    v193 = v100;
    goto LABEL_125;
  }

  v113 = 0;
  v252 = MEMORY[0x277D84F90];
  v114 = v240;
  v115 = v239;
  while (v263 != v113)
  {
    if (v113 >= *(v112 + 16))
    {
      goto LABEL_153;
    }

    v269 = (*(v268 + 80) + 32) & ~*(v268 + 80);
    v259 = *(v268 + 72);
    (*(v268 + 16))(v256, v112 + v269 + v259 * v113, v36);
    sub_26618BC00();
    (*v260)(v114, v261, v13);
    __swift_storeEnumTagSinglePayload(v114, 0, 1, v13);
    v116 = *(v262 + 48);
    sub_266142534(v115, v111, &qword_28005C6F8, &qword_266192DB0);
    sub_266142534(v114, v111 + v116, &qword_28005C6F8, &qword_266192DB0);
    if (__swift_getEnumTagSinglePayload(v111, 1, v13) == 1)
    {
      sub_2660BF79C(v114, &qword_28005C6F8, &qword_266192DB0);
      sub_2660BF79C(v115, &qword_28005C6F8, &qword_266192DB0);
      if (__swift_getEnumTagSinglePayload(v111 + v116, 1, v13) != 1)
      {
        goto LABEL_54;
      }

      sub_2660BF79C(v111, &qword_28005C6F8, &qword_266192DB0);
    }

    else
    {
      v117 = v237;
      sub_266142534(v111, v237, &qword_28005C6F8, &qword_266192DB0);
      if (__swift_getEnumTagSinglePayload(v111 + v116, 1, v13) == 1)
      {
        v114 = v240;
        sub_2660BF79C(v240, &qword_28005C6F8, &qword_266192DB0);
        v115 = v239;
        sub_2660BF79C(v239, &qword_28005C6F8, &qword_266192DB0);
        (*v254)(v117, v13);
        v112 = v255;
LABEL_54:
        sub_2660BF79C(v111, &qword_28005C6F0, &qword_266192DA8);
LABEL_56:
        (*v270)(v256, v36);
        ++v113;
        continue;
      }

      v118 = (v111 + v116);
      v119 = v251;
      (*v250)(v251, v118, v13);
      sub_266142A78(&qword_28005C700, MEMORY[0x277D5E490]);
      LODWORD(v258) = sub_26618C890();
      v120 = *v254;
      v121 = v119;
      v111 = v235;
      (*v254)(v121, v265);
      v114 = v240;
      sub_2660BF79C(v240, &qword_28005C6F8, &qword_266192DB0);
      v115 = v239;
      sub_2660BF79C(v239, &qword_28005C6F8, &qword_266192DB0);
      v120(v117, v265);
      v13 = v265;
      v36 = v267;
      sub_2660BF79C(v111, &qword_28005C6F8, &qword_266192DB0);
      v112 = v255;
      if ((v258 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v258 = *v236;
    v258(v229, v256, v36);
    v122 = v252;
    v123 = swift_isUniquelyReferenced_nonNull_native();
    v274 = v122;
    if ((v123 & 1) == 0)
    {
      v124 = *(v122 + 2);
      sub_26612A4C8();
      v122 = v274;
    }

    v125 = v269;
    v126 = *(v122 + 2);
    v127 = v126 + 1;
    if (v126 >= *(v122 + 3) >> 1)
    {
      v269 = v126 + 1;
      sub_26612A4C8();
      v127 = v269;
      v122 = v274;
    }

    ++v113;
    *(v122 + 2) = v127;
    v252 = v122;
    v128 = &v122[v125 + v126 * v259];
    v36 = v267;
    v258(v128, v229, v267);
  }

  v129 = *(v252 + 2);
  if (v129)
  {
    v130 = &v252[(*(v268 + 80) + 32) & ~*(v268 + 80)];
    v131 = *(v268 + 72);
    v132 = *(v268 + 16);
    v133 = MEMORY[0x277D84F90];
    do
    {
      v134 = v241;
      v132(v241, v130, v36);
      v135 = sub_26618BBF0();
      (*v270)(v134, v36);
      v136 = *(v135 + 16);
      v137 = *(v133 + 16);
      v138 = v137 + v136;
      if (__OFADD__(v137, v136))
      {
        goto LABEL_155;
      }

      v139 = swift_isUniquelyReferenced_nonNull_native();
      if (!v139 || v138 > *(v133 + 24) >> 1)
      {
        if (v137 <= v138)
        {
          v140 = v137 + v136;
        }

        else
        {
          v140 = v137;
        }

        sub_2661296CC(v139, v140, 1, v133);
        v133 = v141;
      }

      v36 = v267;
      v142 = v243;
      if (*(v135 + 16))
      {
        if ((*(v133 + 24) >> 1) - *(v133 + 16) < v136)
        {
          goto LABEL_157;
        }

        v143 = (*(v246 + 80) + 32) & ~*(v246 + 80);
        v144 = *(v246 + 72);
        swift_arrayInitWithCopy();

        v145 = v253;
        if (v136)
        {
          v146 = *(v133 + 16);
          v147 = __OFADD__(v146, v136);
          v148 = v146 + v136;
          if (v147)
          {
            goto LABEL_159;
          }

          *(v133 + 16) = v148;
        }
      }

      else
      {

        v145 = v253;
        if (v136)
        {
          goto LABEL_156;
        }
      }

      v130 += v131;
      --v129;
    }

    while (v129);
  }

  else
  {

    v133 = MEMORY[0x277D84F90];
    v145 = v253;
    v142 = v243;
  }

  v149 = 0;
  v150 = *(v133 + 16);
  v269 = v246 + 16;
  v263 = (v246 + 32);
  v151 = (v246 + 8);
  v265 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v150 != v149)
    {
      if (v149 >= *(v133 + 16))
      {
        goto LABEL_154;
      }

      v152 = (*(v246 + 80) + 32) & ~*(v246 + 80);
      v153 = *(v246 + 72);
      (*(v246 + 16))(v257, v133 + v152 + v153 * v149, v142);
      if (sub_26618BBB0() == 0x656D614E707061 && v154 == 0xE700000000000000)
      {
      }

      else
      {
        v156 = sub_26618D000();

        if ((v156 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      v157 = sub_26618BBA0();
      if (v158 && (v274 = v157, v275 = v158, v272 = 46, v273 = 0xE100000000000000, sub_2660CCD6C(), v159 = sub_26618CC60(), , (v159 & 1) != 0))
      {
        v160 = *v263;
        (*v263)(v228, v257, v142);
        v161 = v265;
        v162 = swift_isUniquelyReferenced_nonNull_native();
        v276 = v161;
        v262 = v160;
        if ((v162 & 1) == 0)
        {
          v163 = *(v161 + 16);
          sub_26612A470();
          v161 = v276;
        }

        v164 = *(v161 + 16);
        v165 = v164 + 1;
        if (v164 >= *(v161 + 24) >> 1)
        {
          v265 = v164 + 1;
          sub_26612A470();
          v165 = v265;
          v161 = v276;
        }

        ++v149;
        *(v161 + 16) = v165;
        v265 = v161;
        (v262)(v161 + v152 + v164 * v153, v228, v142);
      }

      else
      {
LABEL_92:
        (*v151)(v257, v142);
        ++v149;
      }

      v145 = v253;
      v36 = v267;
      continue;
    }

    break;
  }

  v166 = *(v265 + 16);
  if (v166)
  {
    v167 = v265 + ((*(v246 + 80) + 32) & ~*(v246 + 80));
    v168 = *(v246 + 72);
    v169 = *(v246 + 16);
    v170 = MEMORY[0x277D84F90];
    do
    {
      v171 = v242;
      v169(v242, v167, v142);
      v172 = sub_26618BBA0();
      v174 = v173;
      (*v151)(v171, v142);
      if (v174)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v177 = v170[2];
          sub_266129600();
          v170 = v178;
        }

        v175 = v170[2];
        if (v175 >= v170[3] >> 1)
        {
          sub_266129600();
          v170 = v179;
        }

        v170[2] = v175 + 1;
        v176 = &v170[2 * v175];
        v176[4] = v172;
        v176[5] = v174;
        v142 = v243;
      }

      v167 += v168;
      --v166;
    }

    while (v166);

    v145 = v253;
    v36 = v267;
  }

  else
  {

    v170 = MEMORY[0x277D84F90];
  }

  v180 = v170[2];
  if (v180)
  {
    v274 = MEMORY[0x277D84F90];
    sub_26612A450();
    v100 = v274;
    v181 = v170 + 5;
    do
    {
      v182 = *(v181 - 1);
      v183 = *v181;
      v184 = qword_28005BC78;

      if (v184 != -1)
      {
        swift_once();
      }

      v185 = off_28005C6B8;
      if (*(off_28005C6B8 + 2))
      {
        v186 = sub_266129F20(v182, v183);
        if (v187)
        {
          v188 = (v185[7] + 16 * v186);
          v182 = *v188;
          v189 = v188[1];

          v183 = v189;
        }
      }

      v274 = v100;
      v190 = *(v100 + 16);
      if (v190 >= *(v100 + 24) >> 1)
      {
        sub_26612A450();
        v100 = v274;
      }

      *(v100 + 16) = v190 + 1;
      v191 = v100 + 16 * v190;
      *(v191 + 32) = v182;
      *(v191 + 40) = v183;
      v181 += 2;
      --v180;
    }

    while (v180);

    v145 = v253;
    v36 = v267;
  }

  else
  {

    v100 = MEMORY[0x277D84F90];
  }

  v192 = v264;
  if (*(v100 + 16))
  {

    goto LABEL_124;
  }

  v195 = 0;
  v196 = *(v192 + 16);
  v269 = MEMORY[0x277D84F90];
  while (v196 != v195)
  {
    if (v195 >= *(v264 + 16))
    {
      goto LABEL_158;
    }

    v197 = (*(v268 + 80) + 32) & ~*(v268 + 80);
    v198 = v36;
    v199 = *(v268 + 72);
    v200 = v238;
    (*(v268 + 16))(v238, v264 + v197 + v199 * v195, v198);
    sub_26618BC10();
    v201 = v145;
    v202 = sub_26618C120();
    if (__swift_getEnumTagSinglePayload(v201, 1, v202) == 1)
    {
      (*v270)(v200, v198);
      sub_2660BF79C(v201, &qword_28005C6E8, &qword_266192DA0);
      v145 = v201;
      v36 = v198;
LABEL_133:
      ++v195;
      continue;
    }

    v203 = v248;
    sub_26618C100();
    v204 = sub_26618C0F0();
    (*v266)(v203, v249);
    (*(*(v202 - 8) + 8))(v201, v202);
    if (v204)
    {
      v36 = v267;
      (*v270)(v238, v267);
      v145 = v253;
      goto LABEL_133;
    }

    v205 = *v236;
    (*v236)(v227, v238, v267);
    v206 = v269;
    v207 = swift_isUniquelyReferenced_nonNull_native();
    v274 = v206;
    if ((v207 & 1) == 0)
    {
      v208 = *(v206 + 16);
      sub_26612A4C8();
      v206 = v274;
    }

    v209 = *(v206 + 16);
    if (v209 >= *(v206 + 24) >> 1)
    {
      sub_26612A4C8();
      v206 = v274;
    }

    ++v195;
    *(v206 + 16) = v209 + 1;
    v269 = v206;
    v210 = v206 + v197 + v209 * v199;
    v36 = v267;
    v205(v210, v227, v267);
    v145 = v253;
  }

  v211 = *(v269 + 16);
  if (v211)
  {
    v212 = v269 + ((*(v268 + 80) + 32) & ~*(v268 + 80));
    v213 = *(v268 + 72);
    v214 = *(v268 + 16);
    v215 = MEMORY[0x277D84F90];
    do
    {
      v216 = v233;
      v217 = v267;
      v214(v233, v212, v267);
      v218 = sub_26618BBD0();
      v220 = v219;
      (*v270)(v216, v217);
      if (v220)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v223 = *(v215 + 16);
          sub_266129600();
          v215 = v224;
        }

        v221 = *(v215 + 16);
        if (v221 >= *(v215 + 24) >> 1)
        {
          sub_266129600();
          v215 = v225;
        }

        *(v215 + 16) = v221 + 1;
        v222 = v215 + 16 * v221;
        *(v222 + 32) = v218;
        *(v222 + 40) = v220;
      }

      v212 += v213;
      --v211;
    }

    while (v211);
  }

  else
  {

    v215 = MEMORY[0x277D84F90];
  }

  v193 = v215;
LABEL_125:
  v194 = sub_26613C2C0(v193);
  sub_266139E0C(v194);
}

void *sub_2661409CC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C518, &qword_266192350);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_266140AE8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_266140BB8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C630, &qword_266192358);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

size_t sub_266140C64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_266140D60(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_266192D90;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_266140DC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26618D090();
  sub_26618C910();
  v9 = sub_26618D0C0();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_26618D000() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_2661417D4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_266140F10(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_26618CCE0();

    if (v9)
    {

      sub_26618C4F0();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = sub_26618CCD0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_266141114(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_26614152C(v18 + 1);
        }

        v19 = v8;
        sub_266141750(v19, v17);

        *v3 = v17;
LABEL_16:
        *a1 = v19;
        return 1;
      }
    }
  }

  else
  {
    sub_26618C4F0();
    v11 = *(v6 + 40);
    v12 = sub_26618CB90();
    v13 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v14 = v12 & v13;
      if (((*(v6 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
      {
        v20 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *v3;
        v19 = a2;
        sub_26614193C(v19, v14, isUniquelyReferenced_nonNull_native);
        *v3 = v25;
        goto LABEL_16;
      }

      v15 = *(*(v6 + 48) + 8 * v14);
      v16 = sub_26618CBA0();

      if (v16)
      {
        break;
      }

      v12 = v14 + 1;
    }

    v22 = *(*(v6 + 48) + 8 * v14);
    *a1 = v22;
    v23 = v22;
    return 0;
  }

  return result;
}

uint64_t sub_266141114(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C750, &qword_266192DF0);
    v2 = sub_26618CD50();
    v16 = v2;
    sub_26618CCC0();
    while (1)
    {
      if (!sub_26618CCF0())
      {

        return v2;
      }

      sub_26618C4F0();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_26614152C(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      result = sub_26618CB90();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2661412D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C538, &unk_2661921B0);
  result = sub_26618CD40();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_266140D60(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_26618D090();
    sub_26618C910();
    result = sub_26618D0C0();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26614152C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C750, &qword_266192DF0);
  result = sub_26618CD40();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_266140D60(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_26618CB90();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_266141750(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_26618CB90();
  v5 = -1 << *(a2 + 32);
  result = sub_26618CCB0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2661417D4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2661412D0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_266141D2C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_26618D090();
      sub_26618C910();
      result = sub_26618D0C0();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_26618D000() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_266141A84();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_26618D020();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_26614193C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26614152C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_266141F60(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_26618CB90();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_26618C4F0();
        v15 = *(*(v12 + 48) + 8 * a2);
        v16 = sub_26618CBA0();

        if (v16)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_266141BDC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_26618D020();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_266141A84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C538, &unk_2661921B0);
  v2 = *v0;
  v3 = sub_26618CD30();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_266141BDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C750, &qword_266192DF0);
  v2 = *v0;
  v3 = sub_26618CD30();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_266141D2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C538, &unk_2661921B0);
  result = sub_26618CD40();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_26618D090();

        sub_26618C910();
        result = sub_26618D0C0();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_266141F60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C750, &qword_266192DF0);
  result = sub_26618CD40();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_26618CB90();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_266142170()
{
  OUTLINED_FUNCTION_57_2();
  if (v2)
  {
    v5 = sub_26618CCD0();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      OUTLINED_FUNCTION_19_7();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_2661046B8(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        sub_26618C4F0();
        OUTLINED_FUNCTION_78();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v23 = v6;
        sub_266142B04(&qword_28005C690, &qword_28005C688, &qword_266192AB8);
        do
        {
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C688, &qword_266192AB8);
          v15 = OUTLINED_FUNCTION_55_3(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24[0]);
          v18 = sub_2660DD51C(v15, v16, v17);
          v20 = *v19;
          (v18)(v24, 0);
          OUTLINED_FUNCTION_69_1();
        }

        while (!v21);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_2661422A4()
{
  OUTLINED_FUNCTION_57_2();
  if (v2)
  {
    v5 = sub_26618CCD0();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      OUTLINED_FUNCTION_19_7();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_2661046B8(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        sub_266142AC0();
        OUTLINED_FUNCTION_78();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v23 = v6;
        sub_266142B04(&qword_28005C770, &qword_28005C768, &unk_266192E00);
        do
        {
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C768, &unk_266192E00);
          v15 = OUTLINED_FUNCTION_55_3(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24[0]);
          v18 = sub_2660DD590(v15, v16, v17);
          v20 = *v19;
          (v18)(v24, 0);
          OUTLINED_FUNCTION_69_1();
        }

        while (!v21);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2661423D8(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_266142534(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_16(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_19_7();
  v9(v8);
  return a2;
}

void sub_266142590(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_26618CCC0();
    sub_26618C4F0();
    OUTLINED_FUNCTION_24_5();
    sub_266142A78(v8, v9);
    sub_26618CA60();
    v4 = v27;
    v10 = v28;
    v11 = v29;
    v12 = v30;
    v13 = v31;
    if (!a2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 0;
    v20 = -1 << *(a4 + 32);
    v10 = a4 + 56;
    v21 = *(a4 + 56);
    OUTLINED_FUNCTION_60_3();
    v13 = v22 & v23;
    if (!a2)
    {
      goto LABEL_23;
    }
  }

  if (!a3)
  {
LABEL_23:
    *a1 = v4;
    a1[1] = v10;
    a1[2] = v11;
    a1[3] = v12;
    a1[4] = v13;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v24 = v11;
    v25 = a1;
    v14 = 0;
    v15 = (v11 + 64) >> 6;
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!sub_26618CCF0() || (sub_26618C4F0(), swift_dynamicCast(), (v19 = v26) == 0))
        {
LABEL_22:
          v11 = v24;
          a1 = v25;
          goto LABEL_23;
        }
      }

      else
      {
        if (!v13)
        {
          while (1)
          {
            v17 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v17 >= v15)
            {
              v13 = 0;
              goto LABEL_22;
            }

            v13 = *(v10 + 8 * v17);
            ++v12;
            if (v13)
            {
              v12 = v17;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v18 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v19 = *(*(v4 + 48) + ((v12 << 9) | (8 * v18)));
        if (!v19)
        {
          goto LABEL_22;
        }
      }

      *a2++ = v19;
      ++v14;
      if (v16 == a3)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_266142778(unint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    v8 = sub_26618CE50();
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v4 = v8 | 0x8000000000000000;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_20:
    v13 = 0;
LABEL_24:
    *a1 = v4;
    a1[1] = v9;
    a1[2] = v10;
    a1[3] = v13;
    a1[4] = v11;
    return;
  }

  v19 = -1 << *(a4 + 32);
  v9 = a4 + 64;
  v20 = *(a4 + 64);
  OUTLINED_FUNCTION_60_3();
  v11 = v21 & v22;
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (!a3)
  {
    v13 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v23 = v10;
    v12 = 0;
    v13 = 0;
    v14 = (v10 + 64) >> 6;
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        if (!sub_26618CE70() || (sub_26618C4F0(), swift_dynamicCast(), (v18 = v24) == 0))
        {
LABEL_22:
          v10 = v23;
          goto LABEL_24;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v16 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if (v16 >= v14)
            {
              v11 = 0;
              goto LABEL_22;
            }

            v11 = *(v9 + 8 * v16);
            ++v13;
            if (v11)
            {
              v13 = v16;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v17 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v18 = *(*(v4 + 48) + ((v13 << 9) | (8 * v17)));
        if (!v18)
        {
          goto LABEL_22;
        }
      }

      *a2++ = v18;
      ++v12;
      if (v15 == a3)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_266142928()
{
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_7_1();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(v3 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(v3 + 56) + 8 * v16);
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      v11[2] = v19;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_266142A78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266142AC0()
{
  result = qword_28005C760;
  if (!qword_28005C760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005C760);
  }

  return result;
}

uint64_t sub_266142B04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_4_16()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_13()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_10_10()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_14_12(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
  v4 = *(v2 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_3()
{

  return sub_26618C890();
}

unint64_t OUTLINED_FUNCTION_30_6(uint64_t a1, uint64_t a2)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = a2;
  *(v2 - 128) = 46;
  *(v2 - 120) = 0xE100000000000000;

  return sub_2660CCD6C();
}

void OUTLINED_FUNCTION_33_2()
{
  v1 = *(v0 - 264);
  v2 = *(v0 - 272);
  v3 = *(v0 - 280);
  v4 = *(v0 - 288);
}

uint64_t OUTLINED_FUNCTION_38_3()
{

  return sub_266142534(v3, v4 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_39_2()
{

  return sub_266142534(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return sub_26618D000();
}

void OUTLINED_FUNCTION_41_4()
{
  v1 = *(v0 - 360);
  v2 = *(v0 - 368);
  v3 = *(v0 - 376);
}

uint64_t OUTLINED_FUNCTION_43_2()
{

  return sub_2660BF79C(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_46_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_48_3()
{
}

uint64_t OUTLINED_FUNCTION_49_2(uint64_t a1)
{

  return sub_2660BF79C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_50_3(uint64_t a1)
{

  return sub_2660BF79C(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_61_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  return sub_266142534(va1, va, a3, a4);
}

uint64_t OUTLINED_FUNCTION_62_3()
{
  v2 = *(v0 - 192);
}

uint64_t OUTLINED_FUNCTION_63_3()
{
}

uint64_t OUTLINED_FUNCTION_64_2(uint64_t a1)
{

  return sub_2660BF79C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_65_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_266142534(v10 - 64, va, a3, a4);
}

void OUTLINED_FUNCTION_66_2()
{
  *(v1 - 112) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_78()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_79_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_80_0()
{

  return sub_26618BDF0();
}

uint64_t OUTLINED_FUNCTION_81_0(uint64_t a1, uint64_t a2)
{

  return sub_266142534(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_82_0()
{
}

void sub_26614313C()
{
  v0 = sub_266143284();
  v1 = sub_2661046B8(v0);
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v1 == v2)
    {

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26677C150](v2, v0);
    }

    else
    {
      if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v4 = *(v0 + 8 * v2 + 32);
    }

    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v6 = sub_2661433B8();
    v8 = v7;

    ++v2;
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v3 + 16);
        sub_266129600();
        v3 = v12;
      }

      v9 = *(v3 + 16);
      if (v9 >= *(v3 + 24) >> 1)
      {
        sub_266129600();
        v3 = v13;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v8;
      v2 = v5;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_266143284()
{
  sub_26618BDF0();
  sub_2661440C0(v5, v3, &qword_28005C0A8, qword_26618FAE0);
  if (!v4)
  {
    goto LABEL_7;
  }

  sub_2661440C0(v3, v2, &qword_28005C0A8, qword_26618FAE0);
  sub_26618BDD0();
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_7:
    sub_2660C8040(v5, &qword_28005C0A8, qword_26618FAE0);
    v0 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  v0 = sub_26618BEC0();

  if (!v0)
  {
    v0 = MEMORY[0x277D84F90];
  }

  sub_2660C8040(v5, &qword_28005C0A8, qword_26618FAE0);
  __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_8:
  sub_2660C8040(v3, &qword_28005C0A8, qword_26618FAE0);
  return v0;
}

uint64_t sub_2661433B8()
{
  sub_26618BCF0();
  if (!v4)
  {
    return 0;
  }

  v0 = sub_26618BB00();

  if (!v0)
  {
    return 0;
  }

  if (!sub_2661046B8(v0))
  {

    return 0;
  }

  sub_2661046C8(0);
  if ((v0 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26677C150](0, v0);
  }

  else
  {
    v1 = *(v0 + 32);
  }

  sub_26618BCF0();

  return v3;
}

uint64_t sub_266143474()
{
  v0 = sub_26618C6B0();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6E0, &qword_266192E10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v45 - v10;
  v12 = sub_26618BC90();
  v13 = OUTLINED_FUNCTION_2_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v54 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - v20;
  sub_26618BCF0();
  v49 = v3;
  v50 = v0;
  v48 = v7;
  v52 = v11;
  if (!v57 || (v22 = sub_26618BD50(), , !v22))
  {

    v22 = MEMORY[0x277D84F90];
  }

  v23 = 0;
  v24 = *(v22 + 16);
  v55 = v15 + 16;
  v56 = v24;
  v25 = (v15 + 8);
  v53 = (v15 + 32);
  v26 = MEMORY[0x277D84F90];
  while (v56 != v23)
  {
    if (v23 >= *(v22 + 16))
    {
      __break(1u);
LABEL_21:
      swift_once();
      goto LABEL_16;
    }

    v27 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v28 = *(v15 + 72);
    (*(v15 + 16))(v21, v22 + v27 + v28 * v23, v12);
    if (sub_266143BF0(v21))
    {
      v51 = *v53;
      v51(v54, v21, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = *(v26 + 16);
        sub_26612A3F8();
        v26 = v57;
      }

      v31 = *(v26 + 16);
      v32 = v31 + 1;
      if (v31 >= *(v26 + 24) >> 1)
      {
        v46 = *(v26 + 16);
        v47 = v31 + 1;
        sub_26612A3F8();
        v31 = v46;
        v32 = v47;
        v26 = v57;
      }

      ++v23;
      *(v26 + 16) = v32;
      v51((v26 + v27 + v31 * v28), v54, v12);
    }

    else
    {
      (*v25)(v21, v12);
      ++v23;
    }
  }

  v33 = v52;
  sub_266139C88(v26, v52);

  if (__swift_getEnumTagSinglePayload(v33, 1, v12) != 1)
  {
    v42 = sub_26618BC70();
    v44 = v43;
    (*v25)(v33, v12);

    return sub_266143974(v42, v44);
  }

  sub_2660C8040(v33, &qword_28005C6E0, &qword_266192E10);
  if (qword_2814B2C38 != -1)
  {
    goto LABEL_21;
  }

LABEL_16:
  v34 = v50;
  v35 = __swift_project_value_buffer(v50, qword_2814B4A80);
  v37 = v48;
  v36 = v49;
  (*(v49 + 16))(v48, v35, v34);
  v38 = sub_26618C690();
  v39 = sub_26618CA90();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2660B7000, v38, v39, "UsoTask.getDeviceType() did not find any device type referenced in request", v40, 2u);
    MEMORY[0x26677CC30](v40, -1, -1);
  }

  (*(v36 + 8))(v37, v34);
  return 0;
}

uint64_t sub_266143974(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76745F656C707061 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_1_13() & 1) != 0)
  {

    return 1;
  }

  else
  {
    v6 = a1 == 0x79616C705F726163 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_1_13() & 1) != 0)
    {

      return 2;
    }

    else
    {
      sub_2660CCD6C();
      if (OUTLINED_FUNCTION_0_15())
      {

        return 3;
      }

      else if (OUTLINED_FUNCTION_0_15())
      {

        return 4;
      }

      else if (OUTLINED_FUNCTION_0_15())
      {

        return 5;
      }

      else if (OUTLINED_FUNCTION_0_15())
      {

        return 6;
      }

      else if (OUTLINED_FUNCTION_0_15() & 1) != 0 || (a1 == 0x706F7470616CLL ? (v7 = a2 == 0xE600000000000000) : (v7 = 0), v7 || (sub_26618D000()))
      {

        return 7;
      }

      else
      {
        v8 = a1 == 0x705F6E6F69736976 && a2 == 0xEA00000000006F72;
        if (v8 || (OUTLINED_FUNCTION_1_13() & 1) != 0)
        {

          return 8;
        }

        else
        {
          v9 = OUTLINED_FUNCTION_0_15();

          if (v9)
          {
            return 9;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

uint64_t sub_266143BF0(uint64_t a1)
{
  v2 = sub_26618BC40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C778, &qword_266192E18);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C780, qword_266192E20);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v35 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v31[-v18];
  v34 = a1;
  sub_26618BC50();
  v20 = v3;
  (*(v3 + 104))(v17, *MEMORY[0x277D5E4B8], v2);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v2);
  v21 = *(v7 + 56);
  sub_2661440C0(v19, v10, &qword_28005C780, qword_266192E20);
  sub_2661440C0(v17, &v10[v21], &qword_28005C780, qword_266192E20);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    sub_2660C8040(v17, &qword_28005C780, qword_266192E20);
    sub_2660C8040(v19, &qword_28005C780, qword_266192E20);
    if (__swift_getEnumTagSinglePayload(&v10[v21], 1, v2) == 1)
    {
      sub_2660C8040(v10, &qword_28005C780, qword_266192E20);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v22 = v35;
  sub_2661440C0(v10, v35, &qword_28005C780, qword_266192E20);
  if (__swift_getEnumTagSinglePayload(&v10[v21], 1, v2) == 1)
  {
    sub_2660C8040(v17, &qword_28005C780, qword_266192E20);
    sub_2660C8040(v19, &qword_28005C780, qword_266192E20);
    (*(v20 + 8))(v22, v2);
LABEL_6:
    sub_2660C8040(v10, &qword_28005C778, &qword_266192E18);
LABEL_14:
    v29 = 0;
    return v29 & 1;
  }

  v23 = v33;
  (*(v20 + 32))(v33, &v10[v21], v2);
  sub_266144068();
  v32 = sub_26618C890();
  v24 = v22;
  v25 = *(v20 + 8);
  v25(v23, v2);
  sub_2660C8040(v17, &qword_28005C780, qword_266192E20);
  sub_2660C8040(v19, &qword_28005C780, qword_266192E20);
  v25(v24, v2);
  sub_2660C8040(v10, &qword_28005C780, qword_266192E20);
  if ((v32 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v26 = sub_26618BC80();
  if (!v27)
  {
    goto LABEL_14;
  }

  if (v26 == 0x7250726577736E61 && v27 == 0xED0000746375646FLL)
  {

    v29 = 1;
  }

  else
  {
    v29 = sub_26618D000();
  }

  return v29 & 1;
}

unint64_t sub_266144068()
{
  result = qword_28005C788;
  if (!qword_28005C788)
  {
    sub_26618BC40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C788);
  }

  return result;
}

uint64_t sub_2661440C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s20UserEntityDeviceTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s20UserEntityDeviceTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266144290()
{
  result = qword_28005C790;
  if (!qword_28005C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C790);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_15()
{

  return sub_26618CC60();
}

uint64_t OUTLINED_FUNCTION_1_13()
{

  return sub_26618D000();
}

uint64_t sub_266144324()
{
  sub_26618BDF0();
  sub_2660D74A8(v8, v6);
  if (!v7)
  {
    goto LABEL_12;
  }

  sub_2660D74A8(v6, v5);
  sub_26618BEB0();
  if (OUTLINED_FUNCTION_6_13())
  {

    sub_26618BED0();
    goto LABEL_6;
  }

  sub_26618BF70();
  if (!OUTLINED_FUNCTION_6_13())
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
LABEL_12:
    sub_26614446C(v8);
    v2 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_26618BAF0();
LABEL_6:

  if (v4 && (v0 = sub_26618BD20(), , v0))
  {
    sub_26613C958();
    v2 = v1;
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  sub_26614446C(v8);
  __swift_destroy_boxed_opaque_existential_1(v5);
LABEL_13:
  sub_26614446C(v6);
  return v2;
}

uint64_t sub_26614446C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0A8, qword_26618FAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2661444D4()
{
  sub_26618BDF0();
  if (!v4)
  {
    goto LABEL_6;
  }

  sub_2660D74A8(v3, v2);
  sub_26618BEB0();
  if (!OUTLINED_FUNCTION_6_13())
  {
    sub_26618BF70();
    if (!OUTLINED_FUNCTION_6_13())
    {
      __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_6:
      v0 = 0;
      goto LABEL_7;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  v0 = 1;
LABEL_7:
  sub_26614446C(v3);
  return v0;
}

void sub_266144578()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C220, &qword_266190D70);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  if (qword_2814B3D40 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLaunchIntent();
  v7 = _s11ApplicationVMa(0);
  sub_2661449F0(&qword_2814B3D28, type metadata accessor for AppLaunchIntent);
  OUTLINED_FUNCTION_0_16();
  sub_2661449F0(v8, v9);
  OUTLINED_FUNCTION_1_14();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_266144988(v6);
  }

  else
  {
    if (qword_2814B3D88 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_16();
    sub_2661449F0(v10, v11);
    OUTLINED_FUNCTION_2_18();
    sub_26618BDA0();
    v13 = v20;
    v12 = v21;
    sub_266144A38(v6);
    if (v12)
    {
      sub_26614E608(v13, v12, v19);
    }
  }

  OUTLINED_FUNCTION_1_14();
  if (__swift_getEnumTagSinglePayload(v4, 1, v7) == 1)
  {
    sub_266144988(v4);
  }

  else
  {
    if (qword_2814B3D90 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_16();
    sub_2661449F0(v14, v15);
    OUTLINED_FUNCTION_2_18();
    sub_26618BDA0();
    v16 = v20;
    v17 = v21;
    sub_266144A38(v4);
    if (v17)
    {
      sub_26614E5FC(v16, v17, v19);
    }
  }
}

void sub_26614484C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = sub_26618C8A0();
  }

  else
  {
    v9 = 0;
  }

  [v6 setName_];

  if (a4)
  {
    a4 = sub_26618C8A0();
  }

  [v6 setAppId_];

  if (a6)
  {
    v10 = sub_26618C8A0();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [v6 setSceneId_];
}

id sub_26614492C()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_26618C8A0();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  return v3;
}

uint64_t sub_266144988(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C220, &qword_266190D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2661449F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266144A38(uint64_t a1)
{
  v2 = _s11ApplicationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return sub_26618BD90();
}

uint64_t sub_266144AE8()
{
  v1 = sub_26618B8E0();
  v2 = OUTLINED_FUNCTION_2_2(v1);
  v54 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_16(v6, v51);
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - v8;
  v10 = sub_26618C6B0();
  v11 = OUTLINED_FUNCTION_2_2(v10);
  v55 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v51 - v20;
  v22 = sub_26618B980();
  v23 = OUTLINED_FUNCTION_2_2(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_4();
  v30 = v29 - v28;
  v31 = sub_26618B8B0();
  sub_266139C58(v31, v21);

  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_2661189FC(v21);
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    __swift_project_value_buffer(v10, qword_2814B4A80);
    v32 = v55;
    OUTLINED_FUNCTION_7_15();
    v33(v17);
    v34 = *(v54 + 16);
    v34(v9, v0, v1);
    v35 = sub_26618C690();
    v36 = sub_26618CAB0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v56 = v52;
      *v37 = 136315138;
      HIDWORD(v51) = v36;
      v38 = v53;
      v34(v53, v9, v1);
      OUTLINED_FUNCTION_4_17();
      v41 = sub_266145908(v38, v39, v40, MEMORY[0x277D5DB08]);
      v43 = v42;
      v44 = OUTLINED_FUNCTION_5_13();
      v45(v44);
      v46 = sub_266103A98(v41, v43, &v56);

      *(v37 + 4) = v46;
      _os_log_impl(&dword_2660B7000, v35, BYTE4(v51), "No user dialog act found in userParse %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v55 + 8))(v17, v10);
    }

    else
    {

      v48 = OUTLINED_FUNCTION_5_13();
      v49(v48);
      (*(v32 + 8))(v17, v10);
    }

    return 0;
  }

  else
  {
    (*(v25 + 32))(v30, v21, v22);
    v47 = sub_266144F30();
    (*(v25 + 8))(v30, v22);
  }

  return v47;
}

uint64_t sub_266144F30()
{
  v0 = sub_26618B980();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_16(v4, v37);
  MEMORY[0x28223BE20](v5);
  v6 = sub_26618C6B0();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v38 = v8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v7);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = sub_26618BAA0();
  if (sub_2661046B8(v17))
  {
    sub_2661046C8(0);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x26677C150](0, v17);
    }

    else
    {
      v18 = *(v17 + 32);
    }

    v19 = v38;

    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    __swift_project_value_buffer(v6, qword_2814B4A80);
    OUTLINED_FUNCTION_7_15();
    v20(v16);

    v21 = sub_26618C690();
    v22 = v6;
    v23 = sub_26618CAA0();

    if (os_log_type_enabled(v21, v23))
    {
      v24 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v24 = 136315394;
      v25 = sub_26618C0C0();
      v27 = sub_266103A98(v25, v26, v39);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v28 = sub_26618C0B0();
      v30 = sub_266103A98(v28, v29, v39);

      *(v24 + 14) = v30;
      _os_log_impl(&dword_2660B7000, v21, v23, "NLv4 AppLaunch Parse: Input is entity=%s verb=%s", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();
    }

    (*(v19 + 8))(v16, v22);
  }

  else
  {

    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v31 = __swift_project_value_buffer(v6, qword_2814B4A80);
    v32 = v38;
    (*(v38 + 16))(v14, v31, v6);
    v33 = sub_26618C690();
    v34 = sub_26618CAB0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2660B7000, v33, v34, "NLv4 AppLaunch Parse: No tasks in input", v35, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    (*(v32 + 8))(v14, v6);
    return 0;
  }

  return v18;
}

uint64_t sub_266145588(uint64_t a1)
{
  v2 = sub_26618B800();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  v11 = sub_26618B840();
  v12 = OUTLINED_FUNCTION_2_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_7_15();
  v20(v10, a1, v2);
  if ((*(v5 + 88))(v10, v2) == *MEMORY[0x277D5C160])
  {
    (*(v5 + 96))(v10, v2);
    (*(v14 + 32))(v19, v10, v11);
    strcpy(v33, ".uso parse: ");
    BYTE5(v33[1]) = 0;
    HIWORD(v33[1]) = -5120;
    sub_26618BA90();
    v31 = sub_26618B8E0();
    v32 = sub_266145A44(&qword_28005C798, MEMORY[0x277D5DB08]);
    __swift_allocate_boxed_opaque_existential_0(&v29);
    sub_26618B820();
    v21 = sub_26618BA80();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    MEMORY[0x26677BCF0](v21, v23);

    v29 = v33[0];
    v30 = v33[1];
    v24 = sub_26618C960();
    (*(v5 + 8))(a1, v2);
    v25 = OUTLINED_FUNCTION_5_13();
    v26(v25);
  }

  else
  {
    v27 = *(v5 + 8);
    v27(v10, v2);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_26618CE30();
    v24 = sub_26618C960();
    v27(a1, v2);
  }

  return v24;
}

uint64_t sub_266145908(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v7 = a2(0);
  v11[3] = v7;
  v11[4] = sub_266145A44(a3, a4);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(v7 - 8) + 32))(boxed_opaque_existential_0, a1, v7);
  sub_26618BA90();
  sub_26618BA80();
  v9 = sub_26618C960();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t sub_266145A44(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_266145AE0()
{
  if ([v0 appReference] != 2)
  {
    return 0;
  }

  v1 = [v0 application];
  if (v1)
  {
    sub_26610410C(v1);
    if (v2)
    {

      return 0;
    }
  }

  v4 = sub_2661040AC(v0);
  if (!v4)
  {
    return 1;
  }

  v5 = sub_2661046B8(v4);

  return v5 == 0;
}

uint64_t sub_266145B78()
{
  v0 = sub_26618CEC0();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266145BC4(char a1)
{
  result = 1852141679;
  switch(a1)
  {
    case 1:
      result = 0x736972616D6D7573;
      break;
    case 2:
      result = 0x65736F6C63;
      break;
    case 3:
      result = 1953068401;
      break;
    case 4:
      result = 0x627265566F6ELL;
      break;
    case 5:
      result = 0x64616F6C66666FLL;
      break;
    case 6:
      result = 0x6C6C6174736E69;
      break;
    case 7:
      result = 0x6C6174736E696E75;
      break;
    case 8:
      result = 0x6574656C6564;
      break;
    case 9:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266145CC4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_266157F78();
}

uint64_t sub_266145CE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266145B78();
  *a2 = result;
  return result;
}

uint64_t sub_266145D18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266145BC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AppLaunchUsoConstants.verb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266145E24()
{
  result = qword_28005C7A8;
  if (!qword_28005C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C7A8);
  }

  return result;
}

uint64_t sub_266145ED8()
{
  v0 = _s23ApplicationOntologyNodeCMa(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_266145FFC();
  qword_2814B4AF8 = result;
  return result;
}

uint64_t sub_266145F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_26618BB50();
  *a4 = result;
  return result;
}

uint64_t sub_266145FFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B8, &qword_266192FF8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26618E250;
  if (qword_2814B3D98 != -1)
  {
    swift_once();
  }

  v1 = qword_2814B4B28;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  *(v0 + 56) = v2;
  v3 = sub_2661461D8();
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_2814B3D88;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2814B4B18;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  v6 = qword_2814B3D90;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2814B4B20;
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  *(v0 + 112) = v7;

  return MEMORY[0x2821C0790](7368801, 0xE300000000000000, 0, v0);
}

uint64_t sub_2661461A0()
{
  v0 = sub_26618BAE0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

unint64_t sub_2661461D8()
{
  result = qword_2814B47E8;
  if (!qword_2814B47E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C7B0, &qword_266192FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B47E8);
  }

  return result;
}

uint64_t sub_266146284()
{
  result = sub_26618BDB0();
  if (v1 <= 0x3F)
  {
    result = sub_26618BAD0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_266146308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26618BDB0();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  *(a3 + *(_s11ApplicationVMa(0) + 20)) = a2;
}

uint64_t sub_266146398@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26618BDB0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_266146410(uint64_t a1)
{
  v2 = sub_266146504(&qword_2814B3E80);

  return MEMORY[0x2821C1928](a1, v2);
}

uint64_t sub_266146478(uint64_t a1)
{
  v2 = sub_266146504(&qword_2814B3E80);

  return MEMORY[0x2821C1920](a1, v2);
}

uint64_t sub_266146504(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s11ApplicationVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266146548()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7C0, qword_266193A00);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26618BB50();
  qword_2814B4B48 = result;
  return result;
}

uint64_t sub_2661465B4()
{
  v0 = sub_26618CEC0();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26614660C(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 6647407;
      break;
    case 2:
      result = 7105633;
      break;
    case 3:
      result = 2037277037;
      break;
    case 4:
      result = 6645876;
      break;
    case 5:
      result = 0x6573656874;
      break;
    case 6:
      result = 29801;
      break;
    case 7:
      result = 1936287860;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2661466BC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_266157AD0();
}

uint64_t sub_2661466E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2661465B4();
  *a2 = result;
  return result;
}

uint64_t sub_266146710@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26614660C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s12AppReferenceOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s12AppReferenceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2661468A4()
{
  result = qword_2814B3EA8;
  if (!qword_2814B3EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3EA8);
  }

  return result;
}

uint64_t sub_266146908(uint64_t a1, uint64_t a2)
{
  v4 = sub_266146A94();
  v5 = sub_266146AE8();
  v6 = sub_266146B3C();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_266146980()
{
  result = qword_28005C7C8;
  if (!qword_28005C7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C7D0, &qword_2661930C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C7C8);
  }

  return result;
}

unint64_t sub_2661469E8()
{
  result = qword_28005C7D8;
  if (!qword_28005C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C7D8);
  }

  return result;
}

unint64_t sub_266146A40()
{
  result = qword_2814B3EA0;
  if (!qword_2814B3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3EA0);
  }

  return result;
}

unint64_t sub_266146A94()
{
  result = qword_28005C7E0;
  if (!qword_28005C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C7E0);
  }

  return result;
}

unint64_t sub_266146AE8()
{
  result = qword_28005C7E8;
  if (!qword_28005C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C7E8);
  }

  return result;
}

unint64_t sub_266146B3C()
{
  result = qword_28005C7F0;
  if (!qword_28005C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C7F0);
  }

  return result;
}

uint64_t sub_266146B90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7F8, &unk_2661939F0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26618BB50();
  qword_2814B4AE8 = result;
  return result;
}

uint64_t sub_266146BF4()
{
  v0 = sub_26618CEC0();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266146C4C(char a1)
{
  result = 1852141679;
  switch(a1)
  {
    case 1:
      result = 0x65736F6C63;
      break;
    case 2:
      result = 0x6C6C6174736E69;
      break;
    case 3:
      result = 0x64616F6C66666FLL;
      break;
    case 4:
      result = 0x6C6174736E696E75;
      break;
    case 5:
      result = 2036427888;
      break;
    case 6:
      result = 0x686372616573;
      break;
    case 7:
      v3 = 1633972341;
      goto LABEL_8;
    case 8:
      result = 0x537070416E65706FLL;
      break;
    case 9:
      v3 = 1634038371;
LABEL_8:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 10:
      result = 0x6170206863746566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266146D64(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_266157C5C();
}

uint64_t sub_266146D88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266146BF4();
  *a2 = result;
  return result;
}

unint64_t sub_266146DB8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_266146C4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s7AppVerbOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7AppVerbOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266146F4C()
{
  result = qword_2814B3EC8;
  if (!qword_2814B3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3EC8);
  }

  return result;
}

uint64_t sub_266146FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26614713C();
  v5 = sub_266147190();
  v6 = sub_2661471E4();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_266147028()
{
  result = qword_28005C800;
  if (!qword_28005C800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C808, &qword_266193200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C800);
  }

  return result;
}

unint64_t sub_266147090()
{
  result = qword_2814B3ED8;
  if (!qword_2814B3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3ED8);
  }

  return result;
}

unint64_t sub_2661470E8()
{
  result = qword_2814B3EC0;
  if (!qword_2814B3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3EC0);
  }

  return result;
}

unint64_t sub_26614713C()
{
  result = qword_2814B3ED0;
  if (!qword_2814B3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3ED0);
  }

  return result;
}

unint64_t sub_266147190()
{
  result = qword_2814B3EB0;
  if (!qword_2814B3EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3EB0);
  }

  return result;
}

unint64_t sub_2661471E4()
{
  result = qword_2814B3EB8;
  if (!qword_2814B3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3EB8);
  }

  return result;
}

uint64_t sub_266147238()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C810, &unk_266193310);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26618BB50();
  qword_2814B4B40 = result;
  return result;
}

uint64_t sub_2661472A8()
{
  v0 = sub_26618CEC0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266147300(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

uint64_t sub_266147364@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2661472A8();
  *a2 = result;
  return result;
}

uint64_t sub_266147394@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266147300(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *_s22ConfirmationStateValueOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2661474A0()
{
  result = qword_2814B3DA8;
  if (!qword_2814B3DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3DA8);
  }

  return result;
}

uint64_t sub_266147504(uint64_t a1, uint64_t a2)
{
  v4 = sub_266147690();
  v5 = sub_2661476E4();
  v6 = sub_266147738();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_26614757C()
{
  result = qword_28005C818;
  if (!qword_28005C818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C820, &qword_266193368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C818);
  }

  return result;
}

unint64_t sub_2661475E4()
{
  result = qword_28005C828;
  if (!qword_28005C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C828);
  }

  return result;
}

unint64_t sub_26614763C()
{
  result = qword_2814B3DA0;
  if (!qword_2814B3DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3DA0);
  }

  return result;
}

unint64_t sub_266147690()
{
  result = qword_28005C830;
  if (!qword_28005C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C830);
  }

  return result;
}

unint64_t sub_2661476E4()
{
  result = qword_28005C838;
  if (!qword_28005C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C838);
  }

  return result;
}

unint64_t sub_266147738()
{
  result = qword_28005C840;
  if (!qword_28005C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C840);
  }

  return result;
}

BOOL sub_26614778C()
{
  if (qword_2814B3DB8 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLaunchIntent();
  sub_2660C98B4();
  sub_26618BDA0();
  if (v2)
  {

    return 1;
  }

  else
  {
    if (qword_2814B3D38 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_1_15();
    if (qword_2814B3DD0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_1_15();
    if (qword_2814B3DB0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_1_15();
    return v1 != 2;
  }
}

uint64_t sub_2661478FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  OUTLINED_FUNCTION_41_0(v0);
  OUTLINED_FUNCTION_0_17();
  result = OUTLINED_FUNCTION_3_17();
  qword_2814B4B00 = result;
  return result;
}

uint64_t sub_266147950()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  OUTLINED_FUNCTION_41_0(v0);
  OUTLINED_FUNCTION_0_17();
  result = OUTLINED_FUNCTION_3_17();
  qword_2814B4B38 = result;
  return result;
}

uint64_t sub_2661479A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  OUTLINED_FUNCTION_41_0(v0);
  OUTLINED_FUNCTION_0_17();
  result = OUTLINED_FUNCTION_3_17();
  qword_2814B4B50 = result;
  return result;
}

uint64_t sub_2661479F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  OUTLINED_FUNCTION_41_0(v0);
  OUTLINED_FUNCTION_0_17();
  result = OUTLINED_FUNCTION_3_17();
  qword_2814B4AF0 = result;
  return result;
}

uint64_t sub_266147A4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C848, &qword_266193470);
  OUTLINED_FUNCTION_41_0(v0);
  OUTLINED_FUNCTION_0_17();
  result = OUTLINED_FUNCTION_3_17();
  qword_2814B4B30 = result;
  return result;
}

_BYTE *_s10DeviceTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266147B80()
{
  result = qword_2814B3E98;
  if (!qword_2814B3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3E98);
  }

  return result;
}

uint64_t sub_266147BD4()
{
  v0 = sub_26618CEC0();

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

uint64_t sub_266147C34(char a1)
{
  if (a1)
  {
    return 0x69736976656C6574;
  }

  else
  {
    return 0x76745F656C707061;
  }
}

uint64_t sub_266147C94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266147BD4();
  *a2 = result;
  return result;
}

uint64_t sub_266147CC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266147C34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266147D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_266147E8C();
  v5 = sub_266147EE0();
  v6 = sub_266147F34();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_266147D78()
{
  result = qword_28005C850;
  if (!qword_28005C850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C858, &qword_2661934B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C850);
  }

  return result;
}

unint64_t sub_266147DE0()
{
  result = qword_28005C860;
  if (!qword_28005C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C860);
  }

  return result;
}

unint64_t sub_266147E38()
{
  result = qword_2814B3E90;
  if (!qword_2814B3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3E90);
  }

  return result;
}

unint64_t sub_266147E8C()
{
  result = qword_28005C868;
  if (!qword_28005C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C868);
  }

  return result;
}

unint64_t sub_266147EE0()
{
  result = qword_28005C870;
  if (!qword_28005C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C870);
  }

  return result;
}

unint64_t sub_266147F34()
{
  result = qword_28005C878;
  if (!qword_28005C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C878);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_15()
{

  return sub_26618BDA0();
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return sub_26618BB50();
}

uint64_t sub_266147FC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26618BB50();
  qword_2814B4B70 = result;
  return result;
}

uint64_t sub_266148030()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C880, &qword_2661935C0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26618BB50();
  qword_2814B4B78 = result;
  return result;
}

_BYTE *_s15InAppSearchVerbOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_266148150()
{
  result = qword_2814B3F08;
  if (!qword_2814B3F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3F08);
  }

  return result;
}

BOOL sub_2661481A4()
{
  v0 = sub_26618CEC0();

  return v0 != 0;
}

BOOL sub_266148218@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2661481A4();
  *a2 = result;
  return result;
}

uint64_t sub_266148274(uint64_t a1, uint64_t a2)
{
  v4 = sub_266148400();
  v5 = sub_266148454();
  v6 = sub_2661484A8();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_2661482EC()
{
  result = qword_28005C888;
  if (!qword_28005C888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C890, &qword_266193608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C888);
  }

  return result;
}

unint64_t sub_266148354()
{
  result = qword_28005C898;
  if (!qword_28005C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C898);
  }

  return result;
}

unint64_t sub_2661483AC()
{
  result = qword_2814B3F00;
  if (!qword_2814B3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3F00);
  }

  return result;
}

unint64_t sub_266148400()
{
  result = qword_28005C8A0;
  if (!qword_28005C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C8A0);
  }

  return result;
}

unint64_t sub_266148454()
{
  result = qword_28005C8A8;
  if (!qword_28005C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C8A8);
  }

  return result;
}

unint64_t sub_2661484A8()
{
  result = qword_28005C8B0;
  if (!qword_28005C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C8B0);
  }

  return result;
}

uint64_t sub_2661484FC()
{
  sub_26618B430();
  OUTLINED_FUNCTION_21_11();
  sub_26618B410();
  sub_26618B420();
  sub_26618B3E0();
  sub_26614B998();
  return sub_26618B3C0();
}

void sub_266148554()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v116 = v2;
  v3 = sub_26618C6B0();
  v4 = OUTLINED_FUNCTION_2_2(v3);
  v120 = v5;
  v121 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_1();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v110 - v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_16();
  v117 = v15;
  OUTLINED_FUNCTION_18_2();
  v123 = sub_26618BA20();
  v16 = OUTLINED_FUNCTION_2_2(v123);
  v125 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_1();
  v112 = v20 - v21;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v22);
  v118 = &v110 - v23;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_16();
  v124 = v25;
  OUTLINED_FUNCTION_18_2();
  v127 = sub_26618B280();
  v26 = OUTLINED_FUNCTION_2_2(v127);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4_6();
  v128 = v31;
  OUTLINED_FUNCTION_18_2();
  v32 = sub_26618B700();
  v33 = OUTLINED_FUNCTION_2_2(v32);
  v114 = v34;
  v115 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_6();
  v122 = v37;
  v131[0] = MEMORY[0x277D84F90];
  v38 = sub_2661046B8(v1);
  v39 = 0;
  v40 = 0;
  v41 = v1 & 0xC000000000000001;
  v42 = v1;
  v43 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v38 != v39)
  {
    if (v41)
    {
      v44 = MEMORY[0x26677C150](v39, v42);
    }

    else
    {
      if (v39 >= *(v43 + 16))
      {
        goto LABEL_35;
      }

      v44 = *(v42 + 8 * v39 + 32);
    }

    v45 = v44;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v130 = v44;
    sub_26614AF9C(&v130, &v129);

    sub_266167094(v129);
    ++v39;
  }

  v40 = v131[0];
  if (qword_2814B3DC8 == -1)
  {
    goto LABEL_10;
  }

LABEL_36:
  OUTLINED_FUNCTION_5_14();
LABEL_10:
  sub_26618BB60();
  sub_26618B6E0();
  v46 = sub_2661046B8(v42);
  v113 = v14;
  v119 = v10;
  if (v46)
  {
    v47 = v46;
    v131[0] = MEMORY[0x277D84F90];
    sub_26612A520();
    if (v47 < 0)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v111 = v40;
    v48 = 0;
    v49 = v131[0];
    v126 = (v28 + 32);
    do
    {
      if (v41)
      {
        v50 = MEMORY[0x26677C150](v48, v42);
      }

      else
      {
        v50 = *(v42 + 8 * v48 + 32);
      }

      v51 = v50;
      sub_266136804();
      if (qword_2814B3D48 != -1)
      {
        swift_once();
      }

      sub_26618BB60();
      v52 = v128;
      sub_26618B250();

      v131[0] = v49;
      v10 = *(v49 + 16);
      v53 = *(v49 + 24);
      if (v10 >= v53 >> 1)
      {
        OUTLINED_FUNCTION_38_2(v53);
        sub_26612A520();
        v52 = v128;
        v49 = v131[0];
      }

      ++v48;
      *(v49 + 16) = v10 + 1;
      (*(v28 + 32))(v49 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v10, v52, v127);
    }

    while (v47 != v48);
    v40 = v111;
  }

  v54 = v122;
  v55 = sub_26618B6F0();

  (*(v114 + 8))(v54, v115);
  v131[0] = v40;
  sub_266167094(v55);
  v56 = v131[0];
  v57 = v124;
  v58 = sub_26614B42C(v124, v42);
  sub_26614A74C();

  sub_26618B3A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8D0, &qword_2661937B0);
  OUTLINED_FUNCTION_19_9();
  v61 = v60 & ~v59;
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_26618E190;
  v63 = v57;
  v64 = v123;
  v115 = *(v10 + 16);
  v115(v62 + v61, v63, v123);
  sub_26618B3C0();

  v128 = v58;
  sub_26618B390();
  v65 = v121;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v66 = __swift_project_value_buffer(v65, qword_2814B4A98);
  v67 = v120;
  v68 = v120 + 16;
  v69 = v117;
  v126 = *(v120 + 16);
  v127 = v66;
  v126(v117);

  v70 = sub_26618C690();
  v71 = sub_26618CAA0();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = OUTLINED_FUNCTION_49_0();
    v73 = OUTLINED_FUNCTION_45_1();
    v131[0] = v73;
    *v72 = 136315138;
    v74 = sub_2660FFFD4(v56);
    v76 = v75;

    v77 = v74;
    v65 = v121;
    v78 = sub_266103A98(v77, v76, v131);

    *(v72 + 4) = v78;
    _os_log_impl(&dword_2660B7000, v70, v71, "DisplayHints for device disambiguation: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    v64 = v123;
    OUTLINED_FUNCTION_7_2();
    v67 = v120;
    OUTLINED_FUNCTION_7_2();
  }

  else
  {
  }

  v122 = *(v67 + 8);
  v122(v69, v65);
  v79 = v113;
  v117 = v68;
  (v126)(v113, v127, v65);
  v80 = v118;
  v81 = v115;
  v115(v118, v124, v64);
  v82 = sub_26618C690();
  v83 = sub_26618CAA0();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = OUTLINED_FUNCTION_49_0();
    v85 = OUTLINED_FUNCTION_45_1();
    v131[0] = v85;
    *v84 = 136315138;
    v86 = v112;
    v81(v112, v80, v64);
    v87 = sub_2661459FC(v86);
    v88 = v64;
    v89 = v87;
    v91 = v90;
    v92 = *(v125 + 8);
    v92(v80, v88);
    v93 = sub_266103A98(v89, v91, v131);
    v65 = v121;

    *(v84 + 4) = v93;
    OUTLINED_FUNCTION_20_12(&dword_2660B7000, v94, v95, "Sending systemDialogActs: %s");
    __swift_destroy_boxed_opaque_existential_1(v85);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  else
  {

    v92 = *(v125 + 8);
    v92(v80, v64);
  }

  v96 = v79;
  v97 = v122;
  v122(v96, v65);
  v98 = v119;
  (v126)(v119, v127, v65);

  v99 = sub_26618C690();
  v100 = sub_26618CAA0();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = OUTLINED_FUNCTION_49_0();
    v102 = OUTLINED_FUNCTION_45_1();
    v131[0] = v102;
    *v101 = 136315138;
    v103 = sub_2660FFFEC(v128);
    v127 = v92;
    v104 = v103;
    v106 = v105;

    v107 = sub_266103A98(v104, v106, v131);

    *(v101 + 4) = v107;
    OUTLINED_FUNCTION_22_7(&dword_2660B7000, v108, v109, "Donating rrEntitities: %s");
    __swift_destroy_boxed_opaque_existential_1(v102);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v97(v119, v65);
    v127(v124, v123);
  }

  else
  {

    v97(v98, v65);
    v92(v124, v123);
  }

  OUTLINED_FUNCTION_7_1();
}

void sub_266148EFC()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_26618AA00();
  v5 = OUTLINED_FUNCTION_2_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 16);
  if (v12)
  {
    v26 = v3;
    v29 = MEMORY[0x277D84F90];
    sub_26618CE00();
    type metadata accessor for Application();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = *(v7 + 16);
    v14 = v7 + 16;
    v27 = v15;
    v28 = ObjCClassFromMetadata;
    v16 = v1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v27(v11, v16, v4);
      v19 = objc_allocWithZone(v28);
      v20 = sub_2661038FC(0, 0);
      v21 = sub_26618A9F0();
      sub_266124AC0(v21, v22, v20, &selRef_setAppId_);
      v23 = sub_26618A9D0();
      sub_266124AC0(v23, v24, v20, &selRef_setName_);
      (*v18)(v11, v4);
      sub_26618CDE0();
      v25 = *(v29 + 16);
      sub_26618CE10();
      sub_26618CE20();
      sub_26618CDF0();
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  sub_26618B430();
  sub_26614AC6C();

  sub_26618B390();
  OUTLINED_FUNCTION_7_1();
}

void sub_2661490E0()
{
  OUTLINED_FUNCTION_6_0();
  v138 = v0;
  v2 = v1;
  v135 = v3;
  v4 = sub_26618C6B0();
  v143 = OUTLINED_FUNCTION_2_2(v4);
  v144 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_24_1();
  v133 = v8 - v9;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v10);
  v140 = &v133 - v11;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v133 - v13;
  v134 = sub_26618B440();
  v15 = OUTLINED_FUNCTION_2_2(v134);
  v139 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_6();
  v142 = v19;
  OUTLINED_FUNCTION_18_2();
  v148 = sub_26618B280();
  v20 = OUTLINED_FUNCTION_2_2(v148);
  v150 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_6();
  v149 = v24;
  OUTLINED_FUNCTION_18_2();
  v137 = sub_26618B700();
  v25 = OUTLINED_FUNCTION_2_2(v137);
  v136 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_6();
  v141 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8D8, &qword_2661937B8);
  OUTLINED_FUNCTION_3_0(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v33);
  v35 = &v133 - v34;
  v36 = sub_26618B220();
  v37 = OUTLINED_FUNCTION_2_2(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_24_1();
  v151 = (v42 - v43);
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_16();
  v146 = v45;
  v46 = sub_2661046B8(v2);
  v47 = 0;
  v153 = v2 & 0xC000000000000001;
  v154 = v2;
  v48 = v2 & 0xFFFFFFFFFFFFFF8;
  v49 = v46;
  v147 = v39;
  v50 = (v39 + 32);
  v152 = MEMORY[0x277D84F90];
  v145 = v48;
  while (v49 != v47)
  {
    if (v153)
    {
      v51 = MEMORY[0x26677C150](v47, v154);
    }

    else
    {
      if (v47 >= *(v48 + 16))
      {
        goto LABEL_45;
      }

      v51 = v154[v47 + 4];
    }

    v52 = v51;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v156[0] = v51;
    sub_26614A24C(v156, v35);

    if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
    {
      sub_2660C8040(v35, &qword_28005C8D8, &qword_2661937B8);
    }

    else
    {
      v53 = v49;
      v54 = v14;
      v55 = *v50;
      v56 = v146;
      (*v50)(v146, v35, v36);
      v55(v151, v56, v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v65 = OUTLINED_FUNCTION_17_10(isUniquelyReferenced_nonNull_native, v58, v59, v152);
        sub_266129840(v65, v66, v67, v68);
        v152 = v69;
      }

      v61 = v152[2];
      v60 = v152[3];
      if (v61 >= v60 >> 1)
      {
        v70 = OUTLINED_FUNCTION_38_2(v60);
        sub_266129840(v70, v61 + 1, 1, v152);
        v152 = v71;
      }

      v152[2] = v61 + 1;
      OUTLINED_FUNCTION_9_13();
      (v55)(v63 + v62 + *(v64 + 72) * v61);
      v14 = v54;
      v49 = v53;
      v48 = v145;
    }

    ++v47;
  }

  if (qword_2814B3DC8 == -1)
  {
    goto LABEL_17;
  }

LABEL_46:
  OUTLINED_FUNCTION_5_14();
LABEL_17:
  sub_26618BB60();
  sub_26618B6E0();
  v72 = sub_2661046B8(v154);
  v73 = v143;
  v74 = v144;
  if (v72)
  {
    v75 = v72;
    v156[0] = MEMORY[0x277D84F90];
    sub_26612A520();
    if (v75 < 0)
    {
      __break(1u);
      return;
    }

    v151 = v14;
    v76 = 0;
    v77 = v156[0];
    do
    {
      if (v153)
      {
        v78 = MEMORY[0x26677C150](v76, v154);
      }

      else
      {
        v78 = v154[v76 + 4];
      }

      v79 = v78;
      sub_2660C9D30(v78);
      if (qword_2814B3D90 != -1)
      {
        swift_once();
      }

      sub_26618BB60();
      v80 = v149;
      sub_26618B250();

      v156[0] = v77;
      v82 = v77[2];
      v81 = v77[3];
      if (v82 >= v81 >> 1)
      {
        OUTLINED_FUNCTION_38_2(v81);
        sub_26612A520();
        v80 = v149;
        v77 = v156[0];
      }

      ++v76;
      v77[2] = v82 + 1;
      OUTLINED_FUNCTION_9_13();
      (*(v84 + 32))(v77 + v83 + *(v84 + 72) * v82, v80, v148);
    }

    while (v75 != v76);
    v73 = v143;
    v74 = v144;
    v14 = v151;
  }

  v85 = v141;
  v86 = sub_26618B6F0();

  (*(v136 + 8))(v85, v137);
  v156[0] = v152;
  sub_266167094(v86);
  v87 = v156[0];
  sub_26614A74C();

  sub_26618B3A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8D0, &qword_2661937B0);
  v88 = *(sub_26618BA20() - 8);
  v89 = *(v88 + 72);
  v90 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_26618E190;
  sub_26614A7C0(v154, v138 & 1, v91 + v90);
  sub_26618B3C0();
  sub_26614AC6C();
  sub_26618B390();
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v92 = __swift_project_value_buffer(v73, qword_2814B4A98);
  v93 = *(v74 + 16);
  v153 = v92;
  v154 = v93;
  (v93)(v14);

  v94 = sub_26618C690();
  v95 = sub_26618CAA0();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = OUTLINED_FUNCTION_49_0();
    v97 = OUTLINED_FUNCTION_45_1();
    v156[0] = v97;
    *v96 = 136315138;
    v98 = v14;
    v99 = sub_2660FFFD4(v87);
    v101 = v100;

    v102 = sub_266103A98(v99, v101, v156);

    *(v96 + 4) = v102;
    _os_log_impl(&dword_2660B7000, v94, v95, "DisplayHints for app disambiguation: %s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v97);
    v73 = v143;
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v103 = *(v74 + 8);
    v103(v98, v73);
  }

  else
  {

    v103 = *(v74 + 8);
    v103(v14, v73);
  }

  v104 = v140;
  v105 = v153;
  (v154)(v140, v153, v73);
  v106 = sub_26618C690();
  v107 = sub_26618CAA0();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = OUTLINED_FUNCTION_49_0();
    v109 = OUTLINED_FUNCTION_45_1();
    v155 = v109;
    *v108 = 136315138;
    v110 = v142;
    swift_beginAccess();
    v111 = sub_26618B3B0();
    swift_endAccess();
    v156[0] = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8E0, &unk_2661937C0);
    v112 = sub_26618C8D0();
    v114 = sub_266103A98(v112, v113, &v155);

    *(v108 + 4) = v114;
    _os_log_impl(&dword_2660B7000, v106, v107, "Sending systemDialogActs: %s", v108, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v109);
    v73 = v143;
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v103(v140, v73);
  }

  else
  {

    v103(v104, v73);
    v110 = v142;
  }

  swift_beginAccess();
  v115 = sub_26618B380();
  if (v115)
  {
    v116 = v115;
    swift_endAccess();
    v117 = v133;
    (v154)(v133, v105, v73);
    v118 = v117;
    v105 = sub_26618C690();
    v119 = sub_26618CAA0();
    if (os_log_type_enabled(v105, v119))
    {
      v120 = OUTLINED_FUNCTION_49_0();
      v121 = OUTLINED_FUNCTION_45_1();
      v156[0] = v121;
      *v120 = 136315138;
      v122 = v73;
      v123 = sub_2660FFFEC(v116);
      v125 = v124;

      v126 = sub_266103A98(v123, v125, v156);

      *(v120 + 4) = v126;
      OUTLINED_FUNCTION_20_12(&dword_2660B7000, v127, v128, "Donating rrEntitities: %s");
      __swift_destroy_boxed_opaque_existential_1(v121);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      v129 = v118;
      v130 = v122;
    }

    else
    {

      v129 = v117;
      v130 = v73;
    }

    v103(v129, v130);
    v131 = OUTLINED_FUNCTION_14_13();
    v110 = v142;
  }

  else
  {
    swift_endAccess();
    v131 = OUTLINED_FUNCTION_14_13();
  }

  v132 = v139;
  (*(v139 + 16))(v131, v110, v105);
  (*(v132 + 8))(v110, v105);
  OUTLINED_FUNCTION_7_1();
}

void sub_266149C64()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v71 = v2;
  v3 = sub_26618C6B0();
  v4 = OUTLINED_FUNCTION_2_2(v3);
  v67 = v5;
  v68 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_6();
  v66 = v8;
  OUTLINED_FUNCTION_18_2();
  v9 = sub_26618BA20();
  v10 = OUTLINED_FUNCTION_2_2(v9);
  v64 = v11;
  v65 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_6();
  v62 = v14;
  OUTLINED_FUNCTION_18_2();
  v63 = sub_26618B9B0();
  v15 = OUTLINED_FUNCTION_2_2(v63);
  v61 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24_1();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_16();
  v60 = v23;
  OUTLINED_FUNCTION_18_2();
  v70 = sub_26618B8A0();
  v24 = OUTLINED_FUNCTION_2_2(v70);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_24_1();
  v31 = v29 - v30;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v59 - v34;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_16();
  v69 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8C8, &qword_2661937A8);
  OUTLINED_FUNCTION_3_0(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v40);
  v42 = &v59 - v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_26618F7E0;
  *(v43 + 32) = v1;
  v44 = sub_26618BD60();
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v44);

  MEMORY[0x26677B0A0](v43, v42);

  sub_2660C8040(v42, &qword_28005C8C8, &qword_2661937A8);
  sub_26618BAB0();
  v45 = v69;
  v46 = v70;
  (*(v26 + 32))(v69, v35, v70);
  v47 = v60;
  sub_26618B9A0();
  (*(v26 + 16))(v31, v45, v46);
  sub_26618B990();
  v48 = v62;
  sub_26618BA10();
  v49 = v61;
  v50 = v63;
  (*(v61 + 16))(v21, v47, v63);
  sub_26618BA00();
  v51 = v71;
  sub_26618B430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8D0, &qword_2661937B0);
  OUTLINED_FUNCTION_19_9();
  v54 = v53 & ~v52;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_26618E190;
  v56 = v55 + v54;
  v57 = v65;
  (*(v21 + 16))(v56, v48, v65);
  sub_26618B3C0();
  OUTLINED_FUNCTION_21_11();

  (*(v21 + 8))(v48, v57);
  (*(v49 + 8))(v47, v50);
  (*(v26 + 8))(v69, v70);
  v58 = sub_26618B440();
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v58);
  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_26614A24C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_26618C6B0();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8B8, qword_266193710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v45 - v9;
  v11 = sub_26618B280();
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = *a1;
  sub_2660C9D30(v21);
  if (v22)
  {
    sub_2660C9D24(v21);
    if (v23)
    {
      v48 = v23;
      if (qword_2814B3D90 != -1)
      {
        swift_once();
      }

      sub_26618BB60();
      sub_26618B250();
      if (qword_2814B3D88 != -1)
      {
        swift_once();
      }

      sub_26618BB60();
      sub_26618B250();
      v24 = v46;
      v25 = *(v46 + 16);
      v25(v10, v20, v11);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
      v25(v15, v18, v11);
      v26 = v49;
      sub_26618B200();
      v27 = *(v24 + 8);
      v27(v18, v11);
      v27(v20, v11);
      v28 = 0;
      goto LABEL_15;
    }
  }

  if (qword_2814B2C40 != -1)
  {
    swift_once();
  }

  v29 = v48;
  v30 = __swift_project_value_buffer(v48, qword_2814B4A98);
  v31 = v47;
  (*(v47 + 16))(v6, v30, v29);
  v32 = v21;
  v33 = sub_26618C690();
  v34 = sub_26618CAA0();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = v36;
    *v35 = 136315138;
    v37 = v32;
    v38 = [v37 description];
    v39 = sub_26618C8B0();
    v41 = v40;

    v42 = sub_266103A98(v39, v41, &v50);

    *(v35 + 4) = v42;
    _os_log_impl(&dword_2660B7000, v33, v34, "Unable to add app to display hints: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x26677CC30](v36, -1, -1);
    MEMORY[0x26677CC30](v35, -1, -1);

    (*(v47 + 8))(v6, v48);
  }

  else
  {

    (*(v31 + 8))(v6, v29);
  }

  v28 = 1;
  v26 = v49;
LABEL_15:
  v43 = sub_26618B220();
  return __swift_storeEnumTagSinglePayload(v26, v28, 1, v43);
}

uint64_t sub_26614A74C()
{
  sub_26618B430();
  sub_26618B400();
  sub_26618B3E0();
  sub_26618B3D0();
  sub_26618B3F0();
  sub_26618B420();
  return sub_26618B410();
}

id sub_26614A7C0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v3) = a2;
  v34 = a3;
  v5 = sub_26618BA40();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - v10;
  v12 = sub_26618B980();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v41 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v37 = &v32 - v17;
  result = sub_2661046B8(a1);
  v19 = result;
  v20 = 0;
  v42 = a1 & 0xFFFFFFFFFFFFFF8;
  v43 = a1 & 0xC000000000000001;
  v38 = v13;
  v21 = (v13 + 32);
  v22 = MEMORY[0x277D84F90];
  v40 = v3;
  v39 = a1;
  while (1)
  {
    if (v19 == v20)
    {
      MEMORY[0x28223BE20](result);
      *(&v32 - 2) = v22;
      sub_26614E614(&qword_28005C8E8, MEMORY[0x277D5DD08]);
      v29 = v33;
      v30 = v36;
      sub_26618C3F0();

      v31 = sub_26618BA20();
      MEMORY[0x28223BE20](v31);
      *(&v32 - 2) = v29;
      sub_26614E614(&qword_28005C7A0, MEMORY[0x277D5DC70]);
      sub_26618C3F0();
      return (*(v35 + 8))(v29, v30);
    }

    if (v43)
    {
      result = MEMORY[0x26677C150](v20, a1);
    }

    else
    {
      if (v20 >= *(v42 + 16))
      {
        goto LABEL_18;
      }

      result = *(a1 + 8 * v20 + 32);
    }

    v23 = result;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    v44 = result;
    sub_26614C940(&v44, v3 & 1, v11);

    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      result = sub_2660C8040(v11, &qword_28005BF28, &qword_26618F960);
    }

    else
    {
      v3 = *v21;
      v24 = v37;
      (*v21)(v37, v11, v12);
      v3(v41, v24, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26612970C(0, *(v22 + 16) + 1, 1, v22);
        v22 = v27;
      }

      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_26612970C(v25 > 1, v26 + 1, 1, v22);
        v22 = v28;
      }

      *(v22 + 16) = v26 + 1;
      result = (v3)(v22 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v26, v41, v12);
      LOBYTE(v3) = v40;
      a1 = v39;
    }

    ++v20;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_26614AC6C()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0C0, &qword_26618FAD8);
  OUTLINED_FUNCTION_3_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - v6;
  v57 = sub_26618C7A0();
  v8 = OUTLINED_FUNCTION_2_2(v57);
  v55 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_1();
  v54 = (v12 - v13);
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_16();
  v53 = v15;
  OUTLINED_FUNCTION_18_2();
  v16 = sub_26618A5F0();
  v17 = OUTLINED_FUNCTION_2_2(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26618A5E0();
  v24 = sub_26618A5D0();
  v26 = v25;
  (*(v19 + 8))(v23, v16);
  v27 = sub_2661046B8(v1);
  v28 = 0;
  v29 = v1 & 0xC000000000000001;
  v30 = v1;
  v31 = v1 & 0xFFFFFFFFFFFFFF8;
  v52 = (v55 + 32);
  v56 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v27 == v28)
    {

      OUTLINED_FUNCTION_7_1();
      return;
    }

    if (v29)
    {
      v32 = MEMORY[0x26677C150](v28, v30);
    }

    else
    {
      if (v28 >= *(v31 + 16))
      {
        goto LABEL_17;
      }

      v32 = *(v30 + 8 * v28 + 32);
    }

    v33 = v32;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    sub_26614C10C(v28, v32, v24, v26, v7);

    if (__swift_getEnumTagSinglePayload(v7, 1, v57) == 1)
    {
      sub_2660C8040(v7, &qword_28005C0C0, &qword_26618FAD8);
      ++v28;
    }

    else
    {
      v34 = *v52;
      (*v52)(v53, v7, v57);
      v51 = v34;
      v34(v54, v53, v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = OUTLINED_FUNCTION_17_10(isUniquelyReferenced_nonNull_native, v36, v37, v56);
        sub_266129B70(v43, v44, v45, v46);
        v56 = v47;
      }

      v39 = *(v56 + 16);
      v38 = *(v56 + 24);
      if (v39 >= v38 >> 1)
      {
        v48 = OUTLINED_FUNCTION_38_2(v38);
        sub_266129B70(v48, v39 + 1, 1, v56);
        v56 = v49;
      }

      *(v56 + 16) = v39 + 1;
      OUTLINED_FUNCTION_9_13();
      v51(v41 + v40 + *(v42 + 72) * v39, v54, v57);
      ++v28;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_26614AF9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v40 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8B8, qword_266193710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = v33 - v7;
  v8 = sub_26618B280();
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v36 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v33 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v33 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v33 - v18;
  v20 = *a1;
  sub_266136804();
  if (qword_2814B3D48 != -1)
  {
    swift_once();
  }

  sub_26618BB60();
  sub_26618B250();
  sub_26618C4C0();
  if (v21)
  {
    v22 = qword_2814B3DB8;

    if (v22 != -1)
    {
      swift_once();
    }

    v35 = v3;
    sub_26618BB60();
    v38 = v17;
    sub_26618B250();
    if (qword_2814B3DD0 != -1)
    {
      swift_once();
    }

    sub_26618BB60();
    v34 = v14;
    sub_26618B250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C738, &qword_266192DE0);
    v23 = *(sub_26618B220() - 8);
    v33[1] = *(v23 + 72);
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_26618E180;
    v26 = v39;
    v27 = *(v39 + 16);
    v28 = v37;
    v33[0] = v19;
    v27(v37, v19, v8);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v8);
    v29 = v36;
    v27(v36, v38, v8);
    sub_26618B200();
    v27(v28, v19, v8);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v8);
    v30 = v34;
    v27(v29, v34, v8);
    sub_26618B200();
    v31 = *(v26 + 8);
    v31(v30, v8);
    v31(v38, v8);
    result = (v31)(v33[0], v8);
  }

  else
  {
    result = (*(v39 + 8))(v19, v8);
    v25 = MEMORY[0x277D84F90];
  }

  *v40 = v25;
  return result;
}

id sub_26614B42C(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v3 = sub_26618BA40();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v42 - v8;
  v53 = sub_26618B980();
  v51 = *(v53 - 8);
  v10 = *(v51 + 64);
  v11 = MEMORY[0x28223BE20](v53);
  v50 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v42 - v13;
  v14 = sub_26618A5F0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  sub_26618A5E0();
  v19 = sub_26618A5D0();
  v21 = v20;
  (*(v15 + 8))(v18, v14);
  result = sub_2661046B8(a2);
  v23 = result;
  v24 = 0;
  v25 = a2 & 0xC000000000000001;
  v26 = a2;
  v27 = a2 & 0xFFFFFFFFFFFFFF8;
  v48 = (v51 + 32);
  while (1)
  {
    if (v23 == v24)
    {

      MEMORY[0x28223BE20](v37);
      *(&v42 - 2) = v52;
      sub_26614E614(&qword_28005C8E8, MEMORY[0x277D5DD08]);
      v38 = v44;
      v39 = v47;
      sub_26618C3F0();

      v40 = sub_26618BA20();
      MEMORY[0x28223BE20](v40);
      *(&v42 - 2) = v38;
      sub_26614E614(&qword_28005C7A0, MEMORY[0x277D5DC70]);
      sub_26618C3F0();
      v41 = v54;
      (*(v46 + 8))(v38, v39);
      return v41;
    }

    if (v25)
    {
      result = MEMORY[0x26677C150](v24, v26);
    }

    else
    {
      if (v24 >= *(v27 + 16))
      {
        goto LABEL_17;
      }

      result = *(v26 + 8 * v24 + 32);
    }

    v28 = result;
    v29 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    sub_26614D3D0(v24, result, v19, v21, &v54, v9);

    if (__swift_getEnumTagSinglePayload(v9, 1, v53) == 1)
    {
      result = sub_2660C8040(v9, &qword_28005BF28, &qword_26618F960);
      ++v24;
    }

    else
    {
      v30 = *v48;
      (*v48)(v49, v9, v53);
      v43 = v30;
      v30(v50, v49, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26612970C(0, *(v52 + 16) + 1, 1, v52);
        v52 = v35;
      }

      v32 = *(v52 + 16);
      v31 = *(v52 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_26612970C(v31 > 1, v32 + 1, 1, v52);
        v52 = v36;
      }

      v33 = v51;
      v34 = v52;
      *(v52 + 16) = v32 + 1;
      result = (v43)(v34 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v32, v50, v53);
      v24 = v29;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26614B998()
{
  v0 = sub_26618C6B0();
  v53 = *(v0 - 8);
  v54 = v0;
  v1 = *(v53 + 64);
  MEMORY[0x28223BE20](v0);
  v52 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26618BA20();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_26618B910();
  v49 = *(v56 - 8);
  v6 = *(v49 + 64);
  v7 = MEMORY[0x28223BE20](v56);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v44 - v9;
  v55 = sub_26618B980();
  v47 = *(v55 - 8);
  v10 = *(v47 + 64);
  v11 = MEMORY[0x28223BE20](v55);
  v44 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  v15 = sub_26618B8A0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_26618BA70();
  v57 = *(v17 - 8);
  v58 = v17;
  v18 = *(v57 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8C8, &qword_2661937A8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v44 - v26;
  v28 = sub_26618C000();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_26618BFF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_26618F7E0;
  *(v32 + 32) = v31;
  v33 = sub_26618BD60();
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v33);

  v34 = MEMORY[0x26677B0A0](v32, v27);

  sub_2660C8040(v27, &qword_28005C8C8, &qword_2661937A8);
  sub_26618BA60();
  sub_26618BAB0();
  sub_26618BA50();
  sub_26618B970();
  (*(v57 + 16))(v21, v23, v58);
  sub_26618B960();
  v35 = v46;
  sub_26618B900();
  v36 = v47;
  (*(v47 + 16))(v44, v14, v55);
  sub_26618B8F0();
  v54 = v34;
  v37 = v48;
  sub_26618BA10();
  v38 = v49;
  (*(v49 + 16))(v45, v35, v56);
  sub_26618B9F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8D0, &qword_2661937B0);
  v39 = v50;
  v40 = *(v50 + 72);
  v41 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_26618E190;
  (*(v39 + 32))(v42 + v41, v37, v51);

  (*(v38 + 8))(v35, v56);
  (*(v36 + 8))(v14, v55);
  (*(v57 + 8))(v23, v58);
  return v42;
}

uint64_t sub_26614C10C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60[2] = a3;
  v61 = a1;
  v62 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8C0, &qword_2661937A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v60 - v9;
  v11 = sub_26618C6B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v60 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v60 - v20;
  sub_2660C9D24(a2);
  if (!v22)
  {
    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v11, qword_2814B4A98);
    (*(v12 + 16))(v16, v28, v11);
    v29 = a2;
    v30 = sub_26618C690();
    v31 = sub_26618CAA0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v61 = v12;
      v34 = v33;
      v63 = v33;
      *v32 = 136315138;
      v35 = v29;
      v36 = [v35 description];
      v37 = sub_26618C8B0();
      v39 = v38;

      v40 = sub_266103A98(v37, v39, &v63);

      *(v32 + 4) = v40;
      _os_log_impl(&dword_2660B7000, v30, v31, "Unable to extract app name for rrEntity creation from: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x26677CC30](v34, -1, -1);
      MEMORY[0x26677CC30](v32, -1, -1);

      (*(v61 + 8))(v16, v11);
    }

    else
    {

      (*(v12 + 8))(v16, v11);
    }

    goto LABEL_21;
  }

  v60[1] = a4;
  sub_2660C9D30(a2);
  if (!v23)
  {

    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v11, qword_2814B4A98);
    (*(v12 + 16))(v19, v41, v11);
    v42 = a2;
    v43 = sub_26618C690();
    v44 = sub_26618CAA0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v61 = v12;
      v47 = v46;
      v63 = v46;
      *v45 = 136315138;
      v48 = v42;
      v49 = [v48 description];
      v50 = sub_26618C8B0();
      v52 = v51;

      v53 = sub_266103A98(v50, v52, &v63);

      *(v45 + 4) = v53;
      _os_log_impl(&dword_2660B7000, v43, v44, "Unable to extract app id for rrEntity creation from: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x26677CC30](v47, -1, -1);
      MEMORY[0x26677CC30](v45, -1, -1);

      (*(v61 + 8))(v19, v11);
    }

    else
    {

      (*(v12 + 8))(v19, v11);
    }

    goto LABEL_21;
  }

  v24 = sub_26614C7D0();

  if (!MEMORY[0x26677B1D0](v24))
  {

    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v54 = __swift_project_value_buffer(v11, qword_2814B4A98);
    (*(v12 + 16))(v21, v54, v11);
    v55 = sub_26618C690();
    v56 = sub_26618CAB0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2660B7000, v55, v56, "Error converting common app entity builder to common app entity", v57, 2u);
      MEMORY[0x26677CC30](v57, -1, -1);
    }

    else
    {
    }

    (*(v12 + 8))(v21, v11);
LABEL_21:
    v27 = 1;
    v26 = v62;
    goto LABEL_22;
  }

  v25 = sub_26618C730();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v25);

  v26 = v62;
  sub_26618C760();

  sub_26618C720();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v25);
  sub_26618C780();

  v27 = 0;
LABEL_22:
  v58 = sub_26618C7A0();
  return __swift_storeEnumTagSinglePayload(v26, v27, 1, v58);
}

uint64_t sub_26614C7D0()
{
  v0 = sub_26618BC90();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_26618BC60();
  v5 = sub_26618BF10();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_26618BF00();
  sub_26618BEF0();
  if (sub_26618BEE0())
  {
    sub_26618BB70();
  }

  (*(v1 + 8))(v4, v0);
  return v8;
}

uint64_t sub_26614C940@<X0>(void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v101 = a3;
  v102 = sub_26618C6B0();
  v5 = *(v102 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v102);
  v99 = (&v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v92 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v92 - v12;
  v14 = sub_26618B9E0();
  v97 = *(v14 - 8);
  v98 = v14;
  v15 = *(v97 + 64);
  MEMORY[0x28223BE20](v14);
  v95 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_26618B8A0();
  v94 = *(v96 - 8);
  v17 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8C8, &qword_2661937A8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v92 - v22;
  v24 = *a1;
  sub_2660C9D24(v24);
  if (v25)
  {
    sub_2660C9D30(v24);
    if (v26)
    {
      v27 = sub_26614C7D0();

      if (a2)
      {
        v28 = sub_26618C020();
        v29 = *(v28 + 48);
        v30 = *(v28 + 52);
        swift_allocObject();
        v31 = sub_26618C010();
      }

      else
      {
        v62 = sub_26618C000();
        v63 = *(v62 + 48);
        v64 = *(v62 + 52);
        swift_allocObject();
        v31 = sub_26618BFF0();
      }

      v65 = v31;
      v66 = v5;

      sub_26618C050();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_26618F7E0;
      *(v67 + 32) = v65;
      v68 = sub_26618BD60();
      __swift_storeEnumTagSinglePayload(v23, 1, 1, v68);
      v69 = MEMORY[0x26677B0A0](v67, v23);

      sub_2660C8040(v23, &qword_28005C8C8, &qword_2661937A8);
      v70 = v100;
      v71 = sub_26618BAB0();
      v72 = v102;
      if (!v70)
      {
        v93 = v27;
        MEMORY[0x28223BE20](v71);
        *(&v92 - 2) = v19;
        sub_26614E614(&qword_28005C8F0, MEMORY[0x277D5DC20]);
        v86 = v95;
        v87 = v98;
        sub_26618C3F0();
        v100 = v65;
        v88 = sub_26618B980();
        MEMORY[0x28223BE20](v88);
        *(&v92 - 2) = v86;
        sub_26614E614(&qword_28005BF30, MEMORY[0x277D5DB80]);
        v89 = v101;
        sub_26618C3F0();

        __swift_storeEnumTagSinglePayload(v89, 0, 1, v88);
        (*(v97 + 8))(v86, v87);
        return (*(v94 + 8))(v19, v96);
      }

      v98 = v69;
      if (qword_2814B2C40 != -1)
      {
        swift_once();
      }

      v73 = __swift_project_value_buffer(v72, qword_2814B4A98);
      v74 = v99;
      (*(v66 + 16))(v99, v73, v72);
      v75 = v70;
      v76 = sub_26618C690();
      v77 = sub_26618CAB0();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v100 = v65;
        v79 = v78;
        v80 = swift_slowAlloc();
        v93 = v27;
        v81 = v80;
        v104 = v80;
        *v79 = 136315138;
        v103 = v70;
        v82 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
        v83 = sub_26618C8D0();
        v85 = sub_266103A98(v83, v84, &v104);

        *(v79 + 4) = v85;
        _os_log_impl(&dword_2660B7000, v76, v77, "Error building system dialog act for disambiguation: %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        MEMORY[0x26677CC30](v81, -1, -1);
        MEMORY[0x26677CC30](v79, -1, -1);

        (*(v66 + 8))(v99, v72);
      }

      else
      {

        (*(v66 + 8))(v74, v72);
      }
    }

    else
    {

      if (qword_2814B2C40 != -1)
      {
        swift_once();
      }

      v47 = v102;
      v48 = __swift_project_value_buffer(v102, qword_2814B4A98);
      v49 = v5;
      (*(v5 + 16))(v13, v48, v47);
      v50 = v24;
      v51 = sub_26618C690();
      v52 = sub_26618CAA0();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v104 = v99;
        *v53 = 136315138;
        v54 = v50;
        v55 = [v54 description];
        v56 = sub_26618C8B0();
        v57 = v49;
        v59 = v58;

        v60 = sub_266103A98(v56, v59, &v104);

        *(v53 + 4) = v60;
        _os_log_impl(&dword_2660B7000, v51, v52, "Unable to extract app id for SDA creation from: %s", v53, 0xCu);
        v61 = v99;
        __swift_destroy_boxed_opaque_existential_1(v99);
        MEMORY[0x26677CC30](v61, -1, -1);
        MEMORY[0x26677CC30](v53, -1, -1);

        (*(v57 + 8))(v13, v102);
      }

      else
      {

        (*(v49 + 8))(v13, v47);
      }
    }
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v32 = v102;
    v33 = __swift_project_value_buffer(v102, qword_2814B4A98);
    v34 = v5;
    (*(v5 + 16))(v11, v33, v32);
    v35 = v24;
    v36 = sub_26618C690();
    v37 = sub_26618CAA0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v104 = v99;
      *v38 = 136315138;
      v39 = v35;
      v40 = [v39 description];
      v41 = sub_26618C8B0();
      v42 = v34;
      v44 = v43;

      v45 = sub_266103A98(v41, v44, &v104);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_2660B7000, v36, v37, "Unable to extract app name for SDA creation from: %s", v38, 0xCu);
      v46 = v99;
      __swift_destroy_boxed_opaque_existential_1(v99);
      MEMORY[0x26677CC30](v46, -1, -1);
      MEMORY[0x26677CC30](v38, -1, -1);

      (*(v42 + 8))(v11, v102);
    }

    else
    {

      (*(v34 + 8))(v11, v32);
    }
  }

  v91 = sub_26618B980();
  return __swift_storeEnumTagSinglePayload(v101, 1, 1, v91);
}

uint64_t sub_26614D3D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v101 = a4;
  v102 = a5;
  v99 = a3;
  v100 = a1;
  v109 = a6;
  v7 = sub_26618B9E0();
  v93 = *(v7 - 8);
  v94 = v7;
  v8 = *(v93 + 64);
  MEMORY[0x28223BE20](v7);
  v91 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_26618B8A0();
  v90 = *(v92 - 8);
  v10 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v105 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8C8, &qword_2661937A8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v89 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8C0, &qword_2661937A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v89 - v18;
  v108 = sub_26618C7A0();
  v103 = *(v108 - 8);
  v20 = *(v103 + 64);
  MEMORY[0x28223BE20](v108);
  v104 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_26618C6B0();
  v22 = *(v110 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v110);
  v98 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v89 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v89 - v29;
  v31 = sub_26618BC90();
  v106 = *(v31 - 8);
  v107 = v31;
  v32 = *(v106 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26618C4C0();
  if (v35)
  {
    v97 = v22;
    sub_266136804();
    sub_26618BC60();
    v36 = sub_26618BE30();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v39 = sub_26618BE20();
    v96 = v34;
    sub_26618BB70();
    v40 = sub_26618BB20();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    v43 = sub_26618BB10();
    v95 = v39;
    v111 = v39;
    v44 = v43;
    sub_26618BD00();
    v45 = MEMORY[0x26677B1D0](v44);
    if (v45)
    {
      v46 = v45;
      sub_266136804();
      v47 = sub_26618C730();
      __swift_storeEnumTagSinglePayload(v19, 1, 1, v47);

      v48 = v46;
      v49 = v104;
      v89 = v48;
      sub_26618C760();

      sub_26618C720();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v47);
      sub_26618C780();
      v50 = v102;
      sub_2661294D4();
      v51 = *(*v50 + 16);
      sub_266129590();
      v52 = *v50;
      *(v52 + 16) = v51 + 1;
      v53 = v103;
      (*(v103 + 16))(v52 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v51, v49, v108);
      v54 = sub_26618C0A0();
      v55 = *(v54 + 48);
      v56 = *(v54 + 52);
      swift_allocObject();
      v57 = sub_26618C090();
      v111 = v44;

      sub_26618BCA0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_26618F7E0;
      *(v58 + 32) = v57;
      v59 = sub_26618BD60();
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v59);
      v60 = MEMORY[0x26677B0A0](v58, v15);

      sub_2660C8040(v15, &qword_28005C8C8, &qword_2661937A8);
      v61 = sub_26618BAB0();
      v102 = v60;
      MEMORY[0x28223BE20](v61);
      sub_26614E614(&qword_28005C8F0, MEMORY[0x277D5DC20]);
      v110 = v44;
      v83 = v91;
      v84 = v94;
      sub_26618C3F0();
      v85 = sub_26618B980();
      MEMORY[0x28223BE20](v85);
      sub_26614E614(&qword_28005BF30, MEMORY[0x277D5DB80]);
      v86 = v109;
      sub_26618C3F0();

      (*(v53 + 8))(v49, v108);
      (*(v106 + 8))(v96, v107);
      __swift_storeEnumTagSinglePayload(v86, 0, 1, v85);
      (*(v93 + 8))(v83, v84);
      return (*(v90 + 8))(v105, v92);
    }

    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v76 = v110;
    v77 = __swift_project_value_buffer(v110, qword_2814B4A98);
    (*(v97 + 16))(v30, v77, v76);
    v78 = sub_26618C690();
    v79 = sub_26618CAB0();
    v80 = os_log_type_enabled(v78, v79);
    v81 = v96;
    if (v80)
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_2660B7000, v78, v79, "Error converting UsoEntityBuilder to UsoEntity", v82, 2u);
      MEMORY[0x26677CC30](v82, -1, -1);
    }

    (*(v97 + 8))(v30, v76);
    (*(v106 + 8))(v81, v107);
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v62 = v110;
    v63 = __swift_project_value_buffer(v110, qword_2814B4A98);
    (*(v22 + 16))(v28, v63, v62);
    v64 = a2;
    v65 = v22;
    v66 = sub_26618C690();
    v67 = sub_26618CAA0();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v111 = v69;
      *v68 = 136315138;
      v70 = v64;
      v71 = [v70 description];
      v72 = sub_26618C8B0();
      v74 = v73;

      v75 = sub_266103A98(v72, v74, &v111);

      *(v68 + 4) = v75;
      _os_log_impl(&dword_2660B7000, v66, v67, "Unable to extract device name from: %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v69);
      MEMORY[0x26677CC30](v69, -1, -1);
      MEMORY[0x26677CC30](v68, -1, -1);

      (*(v65 + 8))(v28, v110);
    }

    else
    {

      (*(v65 + 8))(v28, v62);
    }
  }

  v88 = sub_26618B980();
  return __swift_storeEnumTagSinglePayload(v109, 1, 1, v88);
}

uint64_t sub_26614E164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(char *))
{
  v6 = a3(0);
  OUTLINED_FUNCTION_2_2(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  (*(v12 + 16))(v14 - v10, a2);
  return a4(v11);
}

unint64_t DisplayHint.description.getter()
{
  v0 = 0x3E6C696E3CLL;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8B8, qword_266193710);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_1();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_26618CD80();

  v18 = 0xD000000000000012;
  v19 = 0x8000000266199D30;
  sub_26618B210();
  v11 = sub_26618B280();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2660C8040(v10, &qword_28005C8B8, qword_266193710);
    v12 = 0xE500000000000000;
    v13 = 0x3E6C696E3CLL;
  }

  else
  {
    v13 = SemanticValue.description.getter();
    v12 = v14;
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  MEMORY[0x26677BCF0](v13, v12);

  MEMORY[0x26677BCF0](0x79616C706964202CLL, 0xEA0000000000203ALL);
  sub_26618B1F0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    sub_2660C8040(v7, &qword_28005C8B8, qword_266193710);
    v15 = 0xE500000000000000;
  }

  else
  {
    v0 = SemanticValue.description.getter();
    v15 = v16;
    (*(*(v11 - 8) + 8))(v7, v11);
  }

  MEMORY[0x26677BCF0](v0, v15);

  MEMORY[0x26677BCF0](32032, 0xE200000000000000);
  return v18;
}

uint64_t SemanticValue.description.getter()
{
  sub_26618CD80();
  MEMORY[0x26677BCF0](0xD000000000000019, 0x8000000266199D50);
  v0 = sub_26618B260();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v0 = 0x3E6C696E3CLL;
    v2 = 0xE500000000000000;
  }

  MEMORY[0x26677BCF0](v0, v2);

  MEMORY[0x26677BCF0](0x6C6562616C202C22, 0xEB0000000022203ALL);
  v3 = sub_26618B240();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0x3E6C696E3CLL;
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26677BCF0](v3, v5);

  MEMORY[0x26677BCF0](0x4365646F6E202C22, 0xEF22203A7373616CLL);
  v6 = sub_26618B270();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 0x3E6C696E3CLL;
    v8 = 0xE500000000000000;
  }

  MEMORY[0x26677BCF0](v6, v8);

  MEMORY[0x26677BCF0](8200226, 0xE300000000000000);
  return 0;
}

uint64_t sub_26614E614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_5_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_13()
{
  result = *(v0 - 288);
  v2 = *(v0 - 296);
  return result;
}

void OUTLINED_FUNCTION_19_9()
{
  v1 = *(v0 - 152);
  v2 = *(v1 + 72);
  v3 = *(v1 + 80) + 32;
}

void OUTLINED_FUNCTION_20_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21_11()
{

  return sub_26618B400();
}

void OUTLINED_FUNCTION_22_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_26614E894()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C220, &qword_266190D70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  if (qword_2814B3DC8 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLaunchIntent();
  sub_26614FBB8(&qword_2814B3D28, type metadata accessor for AppLaunchIntent);
  sub_26618BDA0();
  if (!sub_26614F494(v11[0], &unk_2877C9B58))
  {
    return 0;
  }

  if (qword_2814B3D40 != -1)
  {
    swift_once();
  }

  v4 = _s11ApplicationVMa(0);
  OUTLINED_FUNCTION_0_18();
  sub_26614FBB8(v5, v6);
  sub_26618BD90();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
  {
    if (qword_2814B3D88 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_18();
    sub_26614FBB8(v7, v8);
    sub_26618BDA0();
    v9 = v12;
    sub_266144A38(v3);
    if (!v9)
    {
      return 1;
    }

    return 0;
  }

  sub_266144988(v3);
  return 1;
}

uint64_t sub_26614EAF8()
{
  if (qword_2814B3E88 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26614EB54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8F8, &qword_266193808);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26618BB50();
  qword_2814B4B60 = result;
  return result;
}

uint64_t type metadata accessor for AppLaunchIntent()
{
  result = qword_2814B3CE0;
  if (!qword_2814B3CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26614EC04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26618BB50();
  qword_2814B4B58 = result;
  return result;
}

uint64_t sub_26614EC70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B8, &qword_266192FF8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2661937D0;
  if (qword_2814B3D30 != -1)
  {
    swift_once();
  }

  v1 = qword_2814B4AE8;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7F8, &unk_2661939F0);
  *(v0 + 64) = sub_2660DB13C(&qword_2814B4808, &qword_28005C7F8, &unk_2661939F0);
  *(v0 + 32) = v1;
  v2 = qword_2814B3D40;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_2814B4AF8;
  v4 = _s23ApplicationOntologyNodeCMa(0);
  v5 = MEMORY[0x277D5E210];
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 72) = v3;
  v6 = qword_2814B3EF8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2814B4B78;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C880, &qword_2661935C0);
  *(v0 + 144) = sub_2660DB13C(&qword_2814B4818, &qword_28005C880, &qword_2661935C0);
  *(v0 + 112) = v7;
  v8 = qword_2814B3EF0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_2814B4B70;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  *(v0 + 176) = v10;
  v11 = sub_2660DB13C(&qword_2814B47E8, &qword_28005C7B0, &qword_266192FF0);
  *(v0 + 184) = v11;
  *(v0 + 152) = v9;
  v12 = qword_2814B3DE0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_2814B4B60;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8F8, &qword_266193808);
  *(v0 + 224) = sub_2660DB13C(&qword_2814B4810, &qword_28005C8F8, &qword_266193808);
  *(v0 + 192) = v13;
  v14 = qword_2814B3DC8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_2814B4B48;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7C0, qword_266193A00);
  *(v0 + 264) = sub_2660DB13C(&qword_2814B4800, &qword_28005C7C0, qword_266193A00);
  *(v0 + 232) = v15;
  v16 = qword_2814B3D48;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_2814B4B00;
  *(v0 + 296) = v10;
  *(v0 + 304) = v11;
  *(v0 + 272) = v17;
  v18 = qword_2814B3DB8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_2814B4B38;
  *(v0 + 336) = v10;
  *(v0 + 344) = v11;
  *(v0 + 312) = v19;
  v20 = qword_2814B3D38;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_2814B4AF0;
  *(v0 + 376) = v10;
  *(v0 + 384) = v11;
  *(v0 + 352) = v21;
  v22 = qword_2814B3DD0;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_2814B4B50;
  *(v0 + 416) = v10;
  *(v0 + 424) = v11;
  *(v0 + 392) = v23;
  v24 = qword_2814B3DB0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_2814B4B30;
  *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C848, &qword_266193470);
  *(v0 + 464) = sub_2660DB13C(&qword_2814B47F8, &qword_28005C848, &qword_266193470);
  *(v0 + 432) = v25;
  v26 = qword_2814B3DC0;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_2814B4B40;
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C810, &unk_266193310);
  *(v0 + 504) = sub_2660DB13C(&qword_2814B47F0, &qword_28005C810, &unk_266193310);
  *(v0 + 472) = v27;
  v28 = qword_2814B3DD8;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_2814B4B58;
  *(v0 + 536) = v10;
  *(v0 + 544) = v11;
  *(v0 + 512) = v29;
  v30 = sub_26618BB40();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();

  result = sub_26618BB30();
  qword_2814B4B68 = result;
  return result;
}

uint64_t sub_26614F2BC()
{
  v0 = sub_26618CEC0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26614F314(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 7368801;
      break;
    case 2:
      result = 0x7265646C6F66;
      break;
    case 3:
      result = 0x6E696874656D6F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26614F390(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_266157E54();
}

uint64_t sub_26614F3B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26614F2BC();
  *a2 = result;
  return result;
}

uint64_t sub_26614F3E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26614F314(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26614F420(uint64_t a1, uint64_t a2)
{
  v4 = sub_26614FC00();
  v5 = sub_26614FC54();
  v6 = sub_26614FCA8();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

BOOL sub_26614F494(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (v3)
  {
    if (*v4 == 8)
    {
      if (a1 == 8)
      {
        return v3 != 0;
      }
    }

    else
    {
      v5 = 0xE700000000000000;
      v6 = 0x6E776F6E6B6E75;
      switch(*v4)
      {
        case 1:
          v6 = 6647407;
          v5 = 0xE300000000000000;
          break;
        case 2:
          v5 = 0xE300000000000000;
          v6 = 7105633;
          break;
        case 3:
          v5 = 0xE400000000000000;
          v6 = 2037277037;
          break;
        case 4:
          v5 = 0xE300000000000000;
          v6 = 6645876;
          break;
        case 5:
          v5 = 0xE500000000000000;
          v6 = 0x6573656874;
          break;
        case 6:
          v5 = 0xE200000000000000;
          v6 = 29801;
          break;
        case 7:
          v5 = 0xE400000000000000;
          v6 = 1936287860;
          break;
        default:
          break;
      }

      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
      switch(a1)
      {
        case 0:
          break;
        case 1:
          v8 = 6647407;
          v7 = 0xE300000000000000;
          break;
        case 2:
          v7 = 0xE300000000000000;
          v8 = 7105633;
          break;
        case 3:
          v7 = 0xE400000000000000;
          v8 = 2037277037;
          break;
        case 4:
          v7 = 0xE300000000000000;
          v8 = 6645876;
          break;
        case 5:
          v7 = 0xE500000000000000;
          v8 = 0x6573656874;
          break;
        case 6:
          v7 = 0xE200000000000000;
          v8 = 29801;
          break;
        case 7:
          v7 = 0xE400000000000000;
          v8 = 1936287860;
          break;
        default:
          goto LABEL_27;
      }

      if (v6 == v8 && v5 == v7)
      {

        return v3 != 0;
      }

      v10 = sub_26618D000();

      if (v10)
      {
        return v3 != 0;
      }
    }

LABEL_27:
    ++v4;
    --v3;
  }

  return v3 != 0;
}

_BYTE *storeEnumTagSinglePayload for AppLaunchIntent.AppNoun(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26614F79C()
{
  result = sub_26618C0E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26614F808@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26618C0E0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26614F888(uint64_t a1)
{
  v2 = sub_26614FBB8(&qword_2814B3D20, type metadata accessor for AppLaunchIntent);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_26614F904(uint64_t a1)
{
  v2 = sub_26614FBB8(&qword_2814B3D20, type metadata accessor for AppLaunchIntent);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_26614F970(uint64_t a1)
{
  v2 = sub_26614FBB8(&qword_2814B3D20, type metadata accessor for AppLaunchIntent);

  return MEMORY[0x2821C0C70](a1, v2);
}

unint64_t sub_26614FA70()
{
  result = qword_2814B3EE8;
  if (!qword_2814B3EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3EE8);
  }

  return result;
}

unint64_t sub_26614FB0C()
{
  result = qword_28005C910;
  if (!qword_28005C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C910);
  }

  return result;
}

unint64_t sub_26614FB64()
{
  result = qword_2814B3EE0;
  if (!qword_2814B3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3EE0);
  }

  return result;
}

uint64_t sub_26614FBB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26614FC00()
{
  result = qword_28005C918;
  if (!qword_28005C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C918);
  }

  return result;
}

unint64_t sub_26614FC54()
{
  result = qword_28005C920;
  if (!qword_28005C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C920);
  }

  return result;
}

unint64_t sub_26614FCA8()
{
  result = qword_28005C928;
  if (!qword_28005C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C928);
  }

  return result;
}

uint64_t sub_26614FD14()
{
  v0 = sub_26618C6B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() ams_sharedAccountStore];
  v6 = [v5 ams_activeiCloudAccount];
  if (v6 && (v7 = sub_266150000(v6), v8))
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v11 = [v5 ams_activeiTunesAccount];
    if (v11)
    {
      v9 = sub_266150000(v11);
      v10 = v12;
    }

    else
    {

      v9 = 0;
      v10 = 0;
    }
  }

  v13 = qword_2814B2C38;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v0, qword_2814B4A80);
  (*(v1 + 16))(v4, v14, v0);
  v15 = sub_26618C690();
  v16 = sub_26618CAA0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315138;
    v25 = v0;
    v20 = v9;
    if (v10)
    {
      v21 = v10;
    }

    else
    {
      v9 = 7104878;
      v21 = 0xE300000000000000;
    }

    v22 = sub_266103A98(v9, v21, &v27);

    *(v18 + 4) = v22;
    v9 = v20;
    _os_log_impl(&dword_2660B7000, v15, v16, "AccountProvider.getSpeakingUserDSID() returned:%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x26677CC30](v19, -1, -1);
    MEMORY[0x26677CC30](v18, -1, -1);

    (*(v1 + 8))(v4, v25);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
  }

  return v9;
}

uint64_t sub_266150000(void *a1)
{
  v2 = [a1 ams_altDSID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26618C8B0();

  return v3;
}

uint64_t sub_266150080(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2661500C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266150124(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = (a3 + 40);
  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    while (1)
    {
      v7 = *v5;
      v23[0] = *(v5 - 1);
      v23[1] = v7;

      a1(&v19, v23);
      if (v3)
      {
        break;
      }

      v8 = v20;
      if (v20)
      {
        v9 = v19;
        v10 = v21;
        v24 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = *(v6 + 16);
          sub_266129A8C();
          v6 = v15;
        }

        v11 = *(v6 + 16);
        if (v11 >= *(v6 + 24) >> 1)
        {
          sub_266129A8C();
          v6 = v16;
        }

        *(v6 + 16) = v11 + 1;
        v12 = (v6 + 32 * v11);
        v12[4] = v9;
        v12[5] = v8;
        v13 = v24;
        v12[6] = v10;
        v12[7] = v13;
      }

      v5 += 2;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

void sub_266150268(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v12 = MEMORY[0x277D84F90];
  v5 = sub_2661046B8(a3);
  for (i = 0; v5 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26677C150](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(a3 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v11 = v7;
    a1(&v10, &v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      MEMORY[0x26677BD40]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26618C9D0();
      }

      sub_26618C9F0();
    }
  }
}

uint64_t sub_2661503BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  v6 = sub_26618C6B0();
  v5[34] = v6;
  v7 = *(v6 - 8);
  v5[35] = v7;
  v8 = *(v7 + 64) + 15;
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26615049C, 0, 0);
}

uint64_t sub_26615049C()
{
  v1 = v0[32];
  if (v1)
  {
    v2 = v0[33];
    v3 = v0[31];
    v4 = v2[3];
    v5 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v4);
    v6 = (*(v5 + 16))(v3, v1, v2[10], v4, v5);
    if (v6)
    {
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_26618F7E0;
      *(v8 + 32) = v7;
LABEL_13:
      v45 = v0[37];
      v44 = v0[38];
      v46 = v0[36];

      OUTLINED_FUNCTION_54();

      return v47(v8);
    }
  }

  v9 = v0[30];
  if (!v9)
  {
    if (qword_2814B2C48 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v30 = v0[37];
    v31 = v0[34];
    v32 = v0[35];
    v33 = __swift_project_value_buffer(v31, qword_2814B4AB0);
    (*(v32 + 16))(v30, v33, v31);
    v34 = sub_26618C690();
    v35 = sub_26618CAA0();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[37];
    v38 = v0[34];
    v39 = v0[35];
    if (v36)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2660B7000, v34, v35, "App name is nil, will not proceed into corespotlight search", v40, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    v41 = *(v39 + 8);
    v42 = OUTLINED_FUNCTION_12_1();
    v43(v42);
    v8 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v0[33];
  v11 = v0[29];
  v49 = [objc_allocWithZone(MEMORY[0x277D47180]) init];
  v0[39] = v49;
  v0[2] = v11;
  v0[3] = v9;
  sub_2660CCD6C();
  v0[4] = sub_26618CC40();
  v0[5] = v12;
  v0[6] = 92;
  v0[7] = 0xE100000000000000;
  v0[8] = 23644;
  v0[9] = 0xE200000000000000;
  v13 = OUTLINED_FUNCTION_0_19();
  v15 = v14;

  v0[10] = v13;
  v0[11] = v15;
  v0[12] = 34;
  v0[13] = 0xE100000000000000;
  v0[14] = 8796;
  v0[15] = 0xE200000000000000;
  v16 = OUTLINED_FUNCTION_0_19();
  v18 = v17;

  v0[16] = v16;
  v0[17] = v18;
  v0[18] = 39;
  v0[19] = 0xE100000000000000;
  v0[20] = 10076;
  v0[21] = 0xE200000000000000;
  v19 = OUTLINED_FUNCTION_0_19();
  v21 = v20;

  v0[22] = v19;
  v0[23] = v21;
  v0[24] = 42;
  v0[25] = 0xE100000000000000;
  v0[26] = 10844;
  v0[27] = 0xE200000000000000;
  v22 = OUTLINED_FUNCTION_0_19();
  v24 = v23;

  MEMORY[0x26677BCF0](42, 0xE100000000000000);

  sub_2661513C8(v22, v24, v49);
  v25 = v10[8];
  v26 = v10[9];
  __swift_project_boxed_opaque_existential_1(v10 + 5, v25);
  v27 = *(MEMORY[0x277D5BFB8] + 4);
  v28 = swift_task_alloc();
  v0[40] = v28;
  v29 = sub_2660CD344(0, &qword_2814B2C08, 0x277D47188);
  *v28 = v0;
  v28[1] = sub_2661508F4;

  return MEMORY[0x2821BB6A0](v49, v25, v29, v26);
}

uint64_t sub_2661508F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 320);
  v7 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v5 = sub_266150D1C;
  }

  else
  {
    v5 = sub_266150A08;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_266150A08()
{
  v46 = v0;
  v1 = sub_26615142C(*(v0 + 328));
  if (!v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = sub_2661046B8(v1);

  if (!v2)
  {
    if (qword_2814B2C48 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v12 = *(v0 + 304);
    v13 = *(v0 + 312);
    v14 = *(v0 + 272);
    v15 = *(v0 + 280);
    v16 = *(v0 + 240);
    v17 = __swift_project_value_buffer(v14, qword_2814B4AB0);
    (*(v15 + 16))(v12, v17, v14);

    v18 = v13;
    v19 = sub_26618C690();
    v20 = sub_26618CAB0();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 312);
    if (v21)
    {
      v24 = *(v0 + 232);
      v23 = *(v0 + 240);
      v25 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_266103A98(v24, v23, v45);
      *(v25 + 12) = 2080;
      v26 = sub_2660C9D48(v22, &selRef_applicationName);
      v28 = v27;

      if (!v28)
      {
LABEL_17:
        __break(1u);
        return;
      }

      v29 = *(v0 + 304);
      v30 = *(v0 + 272);
      v31 = *(v0 + 280);
      v32 = sub_266103A98(v26, v28, v45);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_2660B7000, v19, v20, "Unable to find any apps for %s based on %s", v25, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v31 + 8))(v29, v30);
    }

    else
    {
      v33 = *(v0 + 304);
      v34 = *(v0 + 272);
      v35 = *(v0 + 280);

      v36 = *(v35 + 8);
      v37 = OUTLINED_FUNCTION_12_1();
      v38(v37);
    }

    v39 = *(v0 + 312);

    v11 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v3 = sub_26615142C(*(v0 + 328));
  if (!v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3;
  v6 = *(v0 + 328);
  v5 = *(v0 + 336);
  v7 = *(v0 + 312);
  v8 = *(v0 + 264);
  v44 = *(v0 + 232);
  v9 = swift_task_alloc();
  *(v9 + 16) = v44;
  *(v9 + 32) = v8;
  sub_266150268(sub_26615149C, v9, v4);
  v11 = v10;

LABEL_12:
  v41 = *(v0 + 296);
  v40 = *(v0 + 304);
  v42 = *(v0 + 288);

  OUTLINED_FUNCTION_54();

  v43(v11);
}

uint64_t sub_266150D1C()
{
  v36 = v0;
  if (qword_2814B2C48 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = *(v0 + 336);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = __swift_project_value_buffer(v4, qword_2814B4AB0);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_26618C690();
  v8 = sub_26618CAB0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 336);
    v11 = *(v0 + 280);
    v10 = *(v0 + 288);
    v12 = *(v0 + 272);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35 = v14;
    *v13 = 136315138;
    *(v0 + 224) = v9;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v16 = sub_26618C8D0();
    v18 = sub_266103A98(v16, v17, &v35);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2660B7000, v7, v8, "AppsSearcher.searchApps AceCommand failed: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v19 = *(v11 + 8);
    v20 = OUTLINED_FUNCTION_12_1();
    v21(v20);
  }

  else
  {
    v23 = *(v0 + 280);
    v22 = *(v0 + 288);
    v24 = *(v0 + 272);

    v25 = *(v23 + 8);
    v26 = OUTLINED_FUNCTION_12_1();
    v27(v26);
  }

  v28 = *(v0 + 336);

  v30 = *(v0 + 296);
  v29 = *(v0 + 304);
  v31 = *(v0 + 288);

  OUTLINED_FUNCTION_54();
  v33 = MEMORY[0x277D84F90];

  return v32(v33);
}

uint64_t sub_266150F50@<X0>(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = sub_26618C6B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_2660C9D48(v16, &selRef_bundleId);
  if (v17)
  {

    sub_2660C5864(a4, v32);
    v18 = v32[4];
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    result = sub_2660C9D48(v16, &selRef_bundleId);
    if (v20)
    {
      v21 = *(a4 + 80);
      v22 = (*(v18 + 16))(result);

      *a5 = v22;
      return __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_2814B2C48 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v11, qword_2814B4AB0);
    (*(v12 + 16))(v15, v23, v11);

    v24 = sub_26618C690();
    v25 = sub_26618CAB0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v31 = a5;
      v27 = v26;
      v28 = swift_slowAlloc();
      v32[6] = v5;
      v29 = v28;
      v32[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_266103A98(a2, a3, v32);
      _os_log_impl(&dword_2660B7000, v24, v25, "Unable to find bundleId for: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x26677CC30](v29, -1, -1);
      v30 = v27;
      a5 = v31;
      MEMORY[0x26677CC30](v30, -1, -1);
    }

    result = (*(v12 + 8))(v15, v11);
    *a5 = 0;
  }

  return result;
}

uint64_t sub_266151210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2661512CC;

  return sub_2661503BC(a1, a2, a3, a4);
}

uint64_t sub_2661512CC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  OUTLINED_FUNCTION_54();
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

void sub_2661513C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();

  [a3 setApplicationName_];
}

uint64_t sub_26615142C(void *a1)
{
  v1 = [a1 foundApps];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2660CD344(0, &qword_2814B2C00, 0x277D47970);
  v3 = sub_26618C9B0();

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return sub_26618CC00();
}

uint64_t get_enum_tag_for_layout_string_20SiriAppLaunchIntents13AppsResolving_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26615150C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_26615154C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}