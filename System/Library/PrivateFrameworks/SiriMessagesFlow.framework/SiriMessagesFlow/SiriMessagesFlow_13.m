uint64_t sub_267CA25A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_267EF9A68();
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
    result = sub_267C705A8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_267EF5C28();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_267C7C8D0(&qword_28022A3D0, &qword_28022A3C8, &unk_267F00A90);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A3C8, &unk_267F00A90);
          v9 = sub_267C74030(v12, i, a3);
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

uint64_t sub_267CA2714(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_267EF9A68();
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
    result = sub_267C705A8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A458, &qword_267F00B10);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_267C7C8D0(&qword_28022A468, &qword_28022A460, &qword_267F00B18);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A460, &qword_267F00B18);
          v9 = sub_267C73F78(v12, i, a3);
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

uint64_t sub_267CA2894(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_267EF9A68();
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
    result = sub_267C705A8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_267C7C8D0(&qword_28022A448, &qword_28022A440, &qword_267F02630);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A440, &qword_267F02630);
          v9 = sub_267C73FD8(v12, i, a3);
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

uint64_t sub_267CA2A18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_267EF9A68();
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
    result = sub_267C705A8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A400, &qword_267F08350);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_267C7C8D0(&qword_28022A410, &qword_28022A408, &qword_267F00AD0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A408, &qword_267F00AD0);
          v9 = sub_267C740EC(v12, i, a3);
          v11 = *v10;
          swift_unknownObjectRetain();
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

uint64_t sub_267CA2DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_267EF2E08();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A290, &qword_267F00A00) - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v12 = sub_267EF2E38();
  v7[15] = v12;
  v13 = *(v12 - 8);
  v7[16] = v13;
  v14 = *(v13 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267CA2F44, 0, 0);
}

void sub_267CA2F44()
{
  if (qword_280228818 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v2 = *(v0 + 24);
    v3 = sub_267EF8A08();
    v4 = __swift_project_value_buffer(v3, qword_280240FB0);

    v5 = sub_267EF89F8();
    v6 = sub_267EF95D8();

    v237 = v0;
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 16);
      v8 = *(v0 + 24);
      OUTLINED_FUNCTION_48();
      v238 = OUTLINED_FUNCTION_5_4();
      *v1 = 136315138;
      sub_267BA9F38(0, &qword_28022A0B8, 0x277CBEAF8);

      v9 = OUTLINED_FUNCTION_61_0();
      v11 = sub_267BF952C(v9, v10);
      v12 = [v11 languageCode];

      v13 = sub_267EF9028();
      v15 = v14;

      v16 = sub_267BA33E8(v13, v15, &v238);

      *(v1 + 4) = v16;
      _os_log_impl(&dword_267B93000, v5, v6, "#TTSUtil NSLocale(localeIdentifier: language).languageCode: %s", v1, 0xCu);
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_32_0();
    }

    v17 = *(v0 + 24);

    v231 = v4;
    v18 = sub_267EF89F8();
    v19 = sub_267EF95D8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 24);
      v21 = *(v0 + 16);
      v22 = OUTLINED_FUNCTION_48();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      sub_267BA9F38(0, &qword_28022A0B8, 0x277CBEAF8);

      v24 = sub_267BF952C(v21, v20);
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_267B93000, v18, v19, "#TTSUtil %@", v22, 0xCu);
      sub_267CA5BF4(v23, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_45_2();
      OUTLINED_FUNCTION_29_1();
    }

    v25 = *(v0 + 152);
    v0 = *(v0 + 128);
    v26 = v237[10];
    v27 = v237[3];
    v28 = v237[2];

    sub_267EF2D38();
    v221 = objc_opt_self();
    v29 = [v221 availableLanguages];
    v30 = sub_267EF94B8();

    v31 = 0;
    v32 = v30 + 56;
    v229 = v30;
    v33 = -1;
    v34 = -1 << *(v30 + 32);
    if (-v34 < 64)
    {
      v33 = ~(-1 << -v34);
    }

    v35 = v33 & *(v30 + 56);
    v36 = (63 - v34) >> 6;
    v37 = (v26 + 8);
    v1 = v237;
    v235 = v37;
    v236 = (v0 + 8);
    v223 = MEMORY[0x277D84F90];
    *&v225 = v36;
    v226 = v30 + 56;
    while (1)
    {
      if (v35)
      {
        goto LABEL_14;
      }

LABEL_10:
      v38 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v38 >= v36)
      {

        v102 = sub_267EF89F8();
        v103 = sub_267EF95D8();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = OUTLINED_FUNCTION_48();
          v105 = OUTLINED_FUNCTION_52();
          v238 = v105;
          *v104 = 136315138;
          v106 = v223;

          MEMORY[0x26D608FD0](v107, MEMORY[0x277D837D0]);

          v108 = OUTLINED_FUNCTION_63();
          v111 = sub_267BA33E8(v108, v109, v110);

          *(v104 + 4) = v111;
          v1 = v237;
          OUTLINED_FUNCTION_45();
          _os_log_impl(v112, v113, v114, v115, v104, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v105);
          OUTLINED_FUNCTION_29_1();
          OUTLINED_FUNCTION_32_0();
        }

        else
        {

          v106 = v223;
        }

        v1[20] = v106;
        if (v106[2] == 1)
        {
          v116 = v1[19];
          v117 = v1[15];
          v119 = v1[7];
          v118 = v1[8];
          v120 = v106[4];
          v121 = v106[5];

          v122 = v120;
          v1 = v237;
          sub_267C9EC04(v122, v121, v119, v118);

          v123 = *v236;
          v124 = OUTLINED_FUNCTION_26_0();
          v125(v124);
          goto LABEL_65;
        }

        v126 = objc_opt_self();
        v127 = [v126 preferredLanguages];
        if (!v127)
        {
          sub_267EF92F8();
          v127 = sub_267EF92D8();
        }

        v128 = v1[4];
        v129 = sub_267EF92F8();
        if (v128)
        {
          v130 = v1[4];
        }

        else
        {
          v131 = [v221 availableLanguages];
          v132 = sub_267EF94B8();

          sub_267C903B4(v132);
          v133 = sub_267EF92D8();

          v134 = [v126 matchedLanguagesFromAvailableLanguages:v133 forPreferredLanguages:v127];

          v130 = sub_267EF92F8();
          v127 = v134;
        }

        v135 = sub_267EF89F8();
        v136 = sub_267EF95D8();

        v227 = v130;
        if (os_log_type_enabled(v135, v136))
        {
          v137 = OUTLINED_FUNCTION_35_0();
          v238 = OUTLINED_FUNCTION_83_3();
          *v137 = 136315394;
          v138 = MEMORY[0x277D837D0];
          MEMORY[0x26D608FD0](v129, MEMORY[0x277D837D0]);

          v139 = OUTLINED_FUNCTION_65_2();
          v142 = sub_267BA33E8(v139, v140, v141);

          *(v137 + 4) = v142;
          *(v137 + 12) = 2080;
          v143 = MEMORY[0x26D608FD0](v130, v138);
          sub_267BA33E8(v143, v144, &v238);
          OUTLINED_FUNCTION_98_1();

          *(v137 + 14) = v142;
          OUTLINED_FUNCTION_64_4();
          _os_log_impl(v145, v146, v147, v148, v149, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_11_11();
          OUTLINED_FUNCTION_45_2();
        }

        else
        {
        }

        v1 = v237;
        v150 = v237[2];
        v151 = v237[3];
        sub_267BA9F38(0, &qword_28022A0B8, 0x277CBEAF8);

        v152 = OUTLINED_FUNCTION_61_0();
        v233 = sub_267BF952C(v152, v153);
        v237[21] = v233;
        v230 = *(v130 + 16);
        if (v230)
        {
          v0 = 0;
          v155 = (v130 + 40);
          *&v154 = 136315394;
          v225 = v154;
          while (1)
          {
            if (v0 >= *(v130 + 16))
            {
              goto LABEL_73;
            }

            v156 = *(v155 - 1);
            v157 = *v155;
            swift_bridgeObjectRetain_n();
            v158 = v233;
            v159 = sub_267EF89F8();
            v160 = sub_267EF95D8();

            v235 = v158;
            if (OUTLINED_FUNCTION_81_4())
            {
              v161 = OUTLINED_FUNCTION_35_0();
              v228 = OUTLINED_FUNCTION_83_3();
              v238 = v228;
              *v161 = v225;
              *(v161 + 4) = sub_267BA33E8(v156, v157, &v238);
              *(v161 + 12) = 2080;
              v162 = [v158 languageIdentifier];
              v163 = sub_267EF9028();
              v165 = v164;

              v1 = v237;
              v166 = sub_267BA33E8(v163, v165, &v238);
              v130 = v227;

              *(v161 + 14) = v166;
              _os_log_impl(&dword_267B93000, v159, v160, "#TTSUtil locale %s | localeOfText %s", v161, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_32_0();
              OUTLINED_FUNCTION_32_0();
            }

            v167 = v1[17];
            v150 = v1[15];

            sub_267EF2D38();
            v168 = sub_267EF2D98();
            v169 = *v236;
            v170 = OUTLINED_FUNCTION_66();
            v169(v170);
            LOBYTE(v150) = v235;
            LODWORD(v167) = [v235 isEquivalentTo_];

            if (v167)
            {
              break;
            }

            ++v0;

            v155 += 2;
            if (v230 == v0)
            {
              goto LABEL_60;
            }
          }

          v194 = v1[19];
          v195 = v1[15];
          v196 = v1[8];
          v197 = v237[7];

          v198 = OUTLINED_FUNCTION_86();
          v199 = v197;
          v1 = v237;
          sub_267C9EC04(v198, v200, v199, v196);

          (v169)(v194, v195);
LABEL_65:
        }

        else
        {
LABEL_60:

          v171 = sub_267EF89F8();
          sub_267EF95D8();
          OUTLINED_FUNCTION_64();
          if (os_log_type_enabled(v171, v172))
          {
            v173 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v173);
            OUTLINED_FUNCTION_48_3(&dword_267B93000, v171, v150, "#TTSUtil no regional language found based on keyboards");
            OUTLINED_FUNCTION_32_0();
          }

          v174 = v1[6];
          v176 = v1[2];
          v175 = v1[3];

          v238 = v176;
          v239 = v175;
          v240 = 1;

          sub_267C5DD80(&v238, v177, v178, v179, v180, v181, v182, v183, v221, v223, v225);
          v185 = v184;
          sub_267C5E97C(v238, v239, v240);
          if (!v185)
          {
            OUTLINED_FUNCTION_10(&unk_267F00A08);
            v212 = swift_task_alloc();
            v1[22] = v212;
            *v212 = v1;
            v212[1] = sub_267CA3DE8;
            v213 = v1[7];
            v214 = v1[8];
            v216 = v1[5];
            v215 = v1[6];
            v218 = v1[2];
            v217 = v1[3];
            OUTLINED_FUNCTION_63_1();

            __asm { BR              X6 }
          }

          OUTLINED_FUNCTION_31_9(v1[19], v186, v187, v188, v189, v190, v191, v192, v222, v224, v225, *(&v225 + 1), v227, v228, v230, v231, v233, v235, v236);
          v193();
        }

        v202 = v1[18];
        v201 = v1[19];
        v203 = v1[17];
        v204 = v1;
        v207 = v1 + 13;
        v206 = v1[13];
        v205 = v207[1];
        v209 = v204[11];
        v208 = v204[12];

        OUTLINED_FUNCTION_4_3();
        OUTLINED_FUNCTION_63_1();

        __asm { BRAA            X2, X16 }
      }

      v35 = *(v32 + 8 * v38);
      ++v31;
      if (!v35)
      {
        goto LABEL_10;
      }

      v31 = v38;
LABEL_14:
      v39 = v1[18];
      v40 = v1[19];
      v41 = v1[14];
      v42 = v1[12];
      v43 = v1[9];
      v44 = (*(v229 + 48) + ((v31 << 10) | (16 * __clz(__rbit64(v35)))));
      v45 = *v44;
      v46 = v44[1];
      swift_bridgeObjectRetain_n();
      v228 = v45;
      sub_267EF2D38();
      sub_267EF2E18();
      sub_267EF2DF8();
      v0 = *v235;
      (*v235)(v42, v43);
      v47 = sub_267EF2D68();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v47);
      v49 = v1[14];
      v232 = v46;
      if (EnumTagSinglePayload == 1)
      {
        sub_267CA5BF4(v49, &unk_28022A290, &qword_267F00A00);
        v50 = 0;
        v51 = 0;
      }

      else
      {
        v50 = sub_267EF2D58();
        v51 = v52;
        OUTLINED_FUNCTION_5_0(v47);
        (*(v53 + 8))(v49, v47);
      }

      v35 &= v35 - 1;
      v54 = v1[18];
      v55 = v1[13];
      v56 = v1[11];
      v57 = v237[9];
      sub_267EF2E18();
      sub_267EF2DF8();
      v58 = v57;
      v1 = v237;
      (v0)(v56, v58);
      v59 = __swift_getEnumTagSinglePayload(v55, 1, v47);
      v60 = v237[13];
      if (v59 == 1)
      {
        sub_267CA5BF4(v237[13], &unk_28022A290, &qword_267F00A00);
        v32 = v226;
        if (v51)
        {
          goto LABEL_30;
        }

LABEL_32:
        v79 = v228;
        v80 = v232;
        v81 = sub_267EF8FF8();
        v82 = AFGryphonAssetsExistForLanguage();

        if (!v82)
        {
          goto LABEL_33;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_106_0(isUniquelyReferenced_nonNull_native, v85, v86, v223);
          v223 = v93;
        }

        v0 = *(v223 + 16);
        if (v0 >= *(v223 + 24) >> 1)
        {
          sub_267BF4EE8();
          OUTLINED_FUNCTION_31_9(v237[18], v95, v96, v97, v98, v99, v100, v101, v221, v94, v225, *(&v225 + 1), v226, v228, v229, v231, v232, v235, v236);
        }

        else
        {
          OUTLINED_FUNCTION_31_9(v237[18], v85, v86, v223, v87, v88, v89, v90, v221, v223, v225, *(&v225 + 1), v226, v228, v229, v231, v232, v235, v236);
        }

        v91();
        v36 = v225;
        *(v223 + 16) = v0 + 1;
        v92 = v223 + 16 * v0;
        *(v92 + 32) = v79;
        *(v92 + 40) = v80;
      }

      else
      {
        v61 = sub_267EF2D58();
        v63 = v62;
        OUTLINED_FUNCTION_5_0(v47);
        (*(v64 + 8))(v60, v47);
        if (v51)
        {
          v32 = v226;
          if (!v63)
          {
            goto LABEL_30;
          }

          if (v50 == v61 && v51 == v63)
          {

            goto LABEL_32;
          }

          v66 = sub_267EF9EA8();

          if (v66)
          {
            goto LABEL_32;
          }

LABEL_33:
          OUTLINED_FUNCTION_31_9(v237[18], v67, v68, v69, v70, v71, v72, v73, v221, v223, v225, *(&v225 + 1), v226, v228, v229, v231, v232, v235, v236);
          v83();

          v36 = v225;
        }

        else
        {
          v32 = v226;
          if (!v63)
          {
            goto LABEL_32;
          }

LABEL_30:
          v74 = v237[18];
          v75 = v237[15];

          v76 = *v236;
          v77 = OUTLINED_FUNCTION_66();
          v78(v77);
          v36 = v225;
        }
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    OUTLINED_FUNCTION_0();
  }
}

uint64_t sub_267CA3DE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 176);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267CA3ED0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_26_0();
  v7(v6);

  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 136);
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  v14 = *(v0 + 88);
  v13 = *(v0 + 96);

  OUTLINED_FUNCTION_4_3();

  return v15(0);
}

uint64_t sub_267CA3FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v6 = sub_267EF2E38();
  v4[20] = v6;
  v7 = *(v6 - 8);
  v4[21] = v7;
  v8 = *(v7 + 64) + 15;
  v4[22] = swift_task_alloc();
  v9 = sub_267EF2D28();
  v4[23] = v9;
  v10 = *(v9 - 8);
  v4[24] = v10;
  v11 = *(v10 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267CA4108, 0, 0);
}

uint64_t sub_267CA4108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v18 = v15[16];
  v19 = sub_267EF8A08();
  v15[26] = OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);

  v75 = v14;
  v20 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    v22 = v15[15];
    v21 = v15[16];
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_88_1();
    *(v16 + 4) = OUTLINED_FUNCTION_27_7(4.8149e-34, v23, v24);
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_82_2(v25, v26, v27, v28);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_11_11();
    OUTLINED_FUNCTION_45_2();
  }

  v29 = v15[24];
  v30 = v15[25];
  v32 = v15[22];
  v31 = v15[23];
  v33 = v15[20];
  v34 = v15[21];
  v36 = v15[15];
  v35 = v15[16];
  sub_267EF2D18();
  v15[27] = sub_267EF2CE8();
  v15[28] = v37;
  (*(v29 + 8))(v30, v31);
  v38 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v15[29] = v38;
  sub_267EF2DE8();
  OUTLINED_FUNCTION_86();
  v39 = sub_267EF2D88();
  v41 = v40;
  v15[30] = v39;
  v15[31] = v40;
  v42 = *(v34 + 8);
  v43 = OUTLINED_FUNCTION_63();
  v44(v43);
  if (v41)
  {
    OUTLINED_FUNCTION_97_4();
    v45 = OUTLINED_FUNCTION_52_4();
    v15[32] = v45;
    OUTLINED_FUNCTION_72_3(v45);
    OUTLINED_FUNCTION_10(&dword_267F00A10);
    v76 = v46;
    v47 = swift_task_alloc();
    v15[33] = v47;
    *v47 = v15;
    v47[1] = sub_267CA43F0;
    OUTLINED_FUNCTION_64_3();

    return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, v76, a11, a12, a13, a14);
  }

  else
  {
    v57 = v15[16];

    v58 = sub_267EF89F8();
    sub_267EF95E8();

    if (OUTLINED_FUNCTION_116_0())
    {
      v60 = v15[15];
      v59 = v15[16];
      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_88_1();
      *(v33 + 4) = OUTLINED_FUNCTION_27_7(4.8149e-34, v61, v62);
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_82_2(v63, v64, v65, v66);
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_45_2();
    }

    OUTLINED_FUNCTION_50_8();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_64_3();

    return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, v75, a11, a12, a13, a14);
  }
}

uint64_t sub_267CA43F0()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v2[33];
  v6 = *v1;
  OUTLINED_FUNCTION_9_1();
  *v7 = v6;
  v3[34] = v8;
  v3[35] = v9;
  v3[36] = v0;

  v10 = v2[32];
  if (v0)
  {
    v11 = v3[31];
    v12 = v3[28];
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267CA4538()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_97_4();
  v1 = OUTLINED_FUNCTION_52_4();
  *(v0 + 296) = v1;
  OUTLINED_FUNCTION_71_3(v1);
  OUTLINED_FUNCTION_10(&dword_267F00A10);
  v5 = v2;
  v3 = swift_task_alloc();
  *(v0 + 304) = v3;
  *v3 = v0;
  v3[1] = sub_267CA4610;

  return v5(sub_267CA5F68, v1);
}

uint64_t sub_267CA4610()
{
  OUTLINED_FUNCTION_92_0();
  v5 = v3;
  OUTLINED_FUNCTION_5();
  *v6 = v3;
  v7 = v3[38];
  *v6 = *v2;
  v3[39] = v1;

  v8 = v3[37];
  if (v1)
  {
    v9 = v5[35];
    v10 = v5[31];
    v11 = v5[28];
  }

  else
  {
    v5[40] = v0;
    v5[41] = v4;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267CA476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v16 = *(v12 + 288);
  v17 = *(v12 + 208);
  v18 = v16;
  v19 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    v20 = *(v12 + 232);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_29_9(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v21 = OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_112_2(v21, v22, v23);
    OUTLINED_FUNCTION_79();
    *(v13 + 4) = v15;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_50_8();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_267CA4894()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[35];
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[29];
  v35 = v0[16];
  v36 = v0[19];
  v33 = v0[34];
  v34 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v7 = OUTLINED_FUNCTION_9_14();
  *(v7 + 16) = xmmword_267EFC020;
  *(v7 + 56) = MEMORY[0x277D837D0];
  v8 = sub_267BFBEB4();
  OUTLINED_FUNCTION_104_2(v8);
  sub_267EF9058();

  v9 = sub_267EF8FF8();

  [v6 setBody_];

  v10 = OUTLINED_FUNCTION_9_14();
  *(v10 + 16) = xmmword_267EFC020;
  v11 = OUTLINED_FUNCTION_103_2(v10, MEMORY[0x277D837D0]);
  v13 = v12;

  OUTLINED_FUNCTION_26_0();
  sub_267EF8FF8();
  OUTLINED_FUNCTION_91_3();

  [v6 setTitle_];

  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_78_4();
  MEMORY[0x26D608E60](v34, v35);
  OUTLINED_FUNCTION_101_2();

  sub_267EF2BA8();
  v14 = OUTLINED_FUNCTION_98_1();
  v15 = 0;
  if (__swift_getEnumTagSinglePayload(v14, 1, v13) != 1)
  {
    v16 = v0[19];
    v15 = sub_267EF2AF8();
    OUTLINED_FUNCTION_5_0(v13);
    v18 = *(v17 + 8);
    v19 = OUTLINED_FUNCTION_26_0();
    v20(v19);
  }

  v22 = v0[28];
  v21 = v0[29];
  v23 = v0[27];
  v25 = v0[17];
  v24 = v0[18];
  v27 = v0[15];
  v26 = v0[16];
  [v21 setDefaultActionURL_];

  sub_267BA9F38(0, &qword_28022A2E8, 0x277CE1FC0);
  v28 = v21;
  v29 = sub_267CA06E0(v23, v22, v28, 0);
  sub_267BEB520(v25, (v0 + 2));
  v30 = swift_allocObject();
  memcpy(v30 + 2, v0 + 2, 0x60uLL);
  v30[14] = v27;
  v30[15] = v26;

  sub_267CA0FD8(v29, sub_267CA5A1C, v30);

  OUTLINED_FUNCTION_50_8();

  OUTLINED_FUNCTION_17();

  return v31();
}

uint64_t sub_267CA4B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v16 = *(v12 + 312);
  v17 = *(v12 + 208);
  v18 = v16;
  v19 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    v20 = *(v12 + 232);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_29_9(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v21 = OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_112_2(v21, v22, v23);
    OUTLINED_FUNCTION_79();
    *(v13 + 4) = v15;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_50_8();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_267CA4CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a3;
  v8[18] = a4;
  v8[15] = a1;
  v8[16] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0) - 8) + 64) + 15;
  v8[21] = swift_task_alloc();
  v10 = sub_267EF2E38();
  v8[22] = v10;
  v11 = *(v10 - 8);
  v8[23] = v11;
  v12 = *(v11 + 64) + 15;
  v8[24] = swift_task_alloc();
  v13 = sub_267EF2D28();
  v8[25] = v13;
  v14 = *(v13 - 8);
  v8[26] = v14;
  v15 = *(v14 + 64) + 15;
  v8[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267CA4E10, 0, 0);
}

uint64_t sub_267CA4E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v18 = v15[16];
  v19 = sub_267EF8A08();
  v15[28] = OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);

  v75 = v14;
  v20 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    v22 = v15[15];
    v21 = v15[16];
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_88_1();
    *(v16 + 4) = OUTLINED_FUNCTION_27_7(4.8149e-34, v23, v24);
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_82_2(v25, v26, v27, v28);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_11_11();
    OUTLINED_FUNCTION_45_2();
  }

  v29 = v15[26];
  v30 = v15[27];
  v32 = v15[24];
  v31 = v15[25];
  v33 = v15[22];
  v34 = v15[23];
  v36 = v15[15];
  v35 = v15[16];
  sub_267EF2D18();
  v15[29] = sub_267EF2CE8();
  v15[30] = v37;
  (*(v29 + 8))(v30, v31);
  v38 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v15[31] = v38;
  sub_267EF2DE8();
  OUTLINED_FUNCTION_86();
  v39 = sub_267EF2D88();
  v41 = v40;
  v15[32] = v39;
  v15[33] = v40;
  v42 = *(v34 + 8);
  v43 = OUTLINED_FUNCTION_63();
  v44(v43);
  if (v41)
  {
    OUTLINED_FUNCTION_97_4();
    v45 = OUTLINED_FUNCTION_52_4();
    v15[34] = v45;
    OUTLINED_FUNCTION_72_3(v45);
    OUTLINED_FUNCTION_10(&dword_267F00A10);
    v76 = v46;
    v47 = swift_task_alloc();
    v15[35] = v47;
    *v47 = v15;
    v47[1] = sub_267CA50F8;
    OUTLINED_FUNCTION_64_3();

    return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, v76, a11, a12, a13, a14);
  }

  else
  {
    v57 = v15[16];

    v58 = sub_267EF89F8();
    sub_267EF95E8();

    if (OUTLINED_FUNCTION_116_0())
    {
      v60 = v15[15];
      v59 = v15[16];
      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_88_1();
      *(v33 + 4) = OUTLINED_FUNCTION_27_7(4.8149e-34, v61, v62);
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_82_2(v63, v64, v65, v66);
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_45_2();
    }

    OUTLINED_FUNCTION_49_6();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_64_3();

    return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, v75, a11, a12, a13, a14);
  }
}

uint64_t sub_267CA50F8()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v2[35];
  v6 = *v1;
  OUTLINED_FUNCTION_9_1();
  *v7 = v6;
  v3[36] = v8;
  v3[37] = v9;
  v3[38] = v0;

  v10 = v2[34];
  if (v0)
  {
    v11 = v3[33];
    v12 = v3[30];
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267CA5240()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_97_4();
  v1 = OUTLINED_FUNCTION_52_4();
  *(v0 + 312) = v1;
  OUTLINED_FUNCTION_71_3(v1);
  OUTLINED_FUNCTION_10(&dword_267F00A10);
  v5 = v2;
  v3 = swift_task_alloc();
  *(v0 + 320) = v3;
  *v3 = v0;
  v3[1] = sub_267CA5318;

  return v5(sub_267CA5F68, v1);
}

uint64_t sub_267CA5318()
{
  OUTLINED_FUNCTION_92_0();
  v5 = v3;
  OUTLINED_FUNCTION_5();
  *v6 = v3;
  v7 = v3[40];
  *v6 = *v2;
  v3[41] = v1;

  v8 = v3[39];
  if (v1)
  {
    v9 = v5[37];
    v10 = v5[33];
    v11 = v5[30];
  }

  else
  {
    v5[42] = v0;
    v5[43] = v4;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267CA5474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v16 = *(v12 + 304);
  v17 = *(v12 + 224);
  v18 = v16;
  v19 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    v20 = *(v12 + 248);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_29_9(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v21 = OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_112_2(v21, v22, v23);
    OUTLINED_FUNCTION_79();
    *(v13 + 4) = v15;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_49_6();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_267CA559C()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[37];
  v4 = v0[32];
  v5 = v0[33];
  v6 = v0[31];
  v38 = v0[16];
  v39 = v0[21];
  v36 = v0[36];
  v37 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v7 = OUTLINED_FUNCTION_9_14();
  *(v7 + 16) = xmmword_267EFC020;
  *(v7 + 56) = MEMORY[0x277D837D0];
  v8 = sub_267BFBEB4();
  OUTLINED_FUNCTION_104_2(v8);
  sub_267EF9058();

  v9 = sub_267EF8FF8();

  [v6 setBody_];

  v10 = OUTLINED_FUNCTION_9_14();
  *(v10 + 16) = xmmword_267EFC020;
  v11 = OUTLINED_FUNCTION_103_2(v10, MEMORY[0x277D837D0]);
  v13 = v12;

  OUTLINED_FUNCTION_26_0();
  sub_267EF8FF8();
  OUTLINED_FUNCTION_91_3();

  [v6 setTitle_];

  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_78_4();
  MEMORY[0x26D608E60](v37, v38);
  OUTLINED_FUNCTION_101_2();

  sub_267EF2BA8();
  v14 = OUTLINED_FUNCTION_98_1();
  v15 = 0;
  if (__swift_getEnumTagSinglePayload(v14, 1, v13) != 1)
  {
    v16 = v0[21];
    v15 = sub_267EF2AF8();
    OUTLINED_FUNCTION_5_0(v13);
    v18 = *(v17 + 8);
    v19 = OUTLINED_FUNCTION_26_0();
    v20(v19);
  }

  v21 = v0[31];
  v22 = v0[29];
  v23 = v0[20];
  v40 = v0[19];
  v25 = v0[17];
  v24 = v0[18];
  v26 = v0[15];
  v27 = v0[16];
  [v21 setDefaultActionURL_];

  sub_267BA9F38(0, &qword_28022A2E8, 0x277CE1FC0);
  v28 = v21;
  v29 = OUTLINED_FUNCTION_86();
  v31 = sub_267CA06E0(v29, v30, v28, 0);
  sub_267BEB520(v25, (v0 + 2));
  v32 = swift_allocObject();
  memcpy(v32 + 2, v0 + 2, 0x60uLL);
  v32[14] = v26;
  v32[15] = v27;
  v33 = *(v23 + 48);

  v33(v31, sub_267CA5F6C, v32, v40, v23);

  OUTLINED_FUNCTION_49_6();

  OUTLINED_FUNCTION_17();

  return v34();
}

uint64_t sub_267CA58B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v16 = *(v12 + 328);
  v17 = *(v12 + 224);
  v18 = v16;
  v19 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    v20 = *(v12 + 248);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_29_9(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v21 = OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_112_2(v21, v22, v23);
    OUTLINED_FUNCTION_79();
    *(v13 + 4) = v15;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_49_6();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_267CA59D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_267CA1D38() & 1;
}

uint64_t sub_267CA5A70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2F0, &qword_267F00A18);
  OUTLINED_FUNCTION_18(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_18_11();

  return sub_267CA2DA0(v3);
}

void sub_267CA5ADC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_267CA5AFC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_267C9FF08(a1, a2);
}

uint64_t objectdestroy_21Tm()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  v1 = v0[13];

  v2 = v0[15];

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_267CA5BF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = OUTLINED_FUNCTION_76_4(a1, a2, a3);
  OUTLINED_FUNCTION_5_0(v4);
  (*(v5 + 8))(v3);
  return v3;
}

uint64_t sub_267CA5CB4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_76_4(a1, a2, a3);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 80);
  v7 = OUTLINED_FUNCTION_18_11();

  return a4(v7);
}

uint64_t objectdestroy_29Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_5_0(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

void sub_267CA5E68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A478, &unk_267F00B30);
  OUTLINED_FUNCTION_18(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_18_11();

  sub_267CA128C(v3);
}

uint64_t getEnumTagSinglePayload for TTSUtil(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TTSUtil(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267CA5F80()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF48A8();
  v1[6] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CA6048()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_0((v0[4] + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(v0[4] + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_267CA6118;
  v5 = v0[3];

  return sub_267CC50A8();
}

uint64_t sub_267CA6118()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  *v4 = *v1;
  v3[10] = v8;

  if (v0)
  {
    v9 = v3[8];
    v10 = v3[5];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_267CA6264()
{
  OUTLINED_FUNCTION_53();
  v30 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[10];
  v2 = sub_267EF8A08();
  v0[11] = OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  LOBYTE(v1) = sub_267EF95D8();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315138;
    v8 = [v5 patternId];
    v9 = sub_267EF9028();
    v11 = v10;

    v12 = sub_267BA33E8(v9, v11, &v29);

    *(v6 + 4) = v12;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  v18 = v0[8];
  v19 = v0[5];
  sub_267EF3C88();
  OUTLINED_FUNCTION_11_18();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  v20 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v20);
  v0[12] = sub_267EF4188();
  v21 = *(MEMORY[0x277D5BD48] + 4);
  v28 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[13] = v22;
  *v22 = v23;
  v22[1] = sub_267CA648C;
  v24 = v0[10];
  v25 = v0[8];
  v26 = v0[2];

  return v28(v26, v24, v25);
}

uint64_t sub_267CA648C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *(v4 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v9 + 112) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267CA65A4()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[11];
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
    v10 = v0[10];
  }

  else
  {
    v10 = v2;
    v2 = v0[10];
  }

  v12 = v0[7];
  v11 = v0[8];
  v14 = v0[5];
  v13 = v0[6];

  v15 = *(v12 + 8);
  v16 = OUTLINED_FUNCTION_26_0();
  v17(v16);

  OUTLINED_FUNCTION_17();

  return v18();
}

uint64_t sub_267CA668C()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_66();
  v6(v5);
  v7 = *(v0 + 112);
  v8 = *(v0 + 64);
  v9 = *(v0 + 40);

  OUTLINED_FUNCTION_17();

  return v10();
}

uint64_t sub_267CA6720()
{
  if ((sub_267EF96E8() & 1) == 0)
  {
    return 0;
  }

  v1 = *(v0 + 56);
  return sub_267D60D34() & 1;
}

uint64_t sub_267CA6760(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v3 = OUTLINED_FUNCTION_18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_60();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = sub_267EF2BA8();
  v13 = OUTLINED_FUNCTION_58(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v20 = v19 - v18;
  v21 = sub_267E76140(a1);
  if (v21)
  {
    v22 = v21;
    v51 = v8;
    v52 = v20;
    v53 = v15;
    v54 = v11;
    v55 = v12;
    v23 = MEMORY[0x277D84F90];
    v56 = MEMORY[0x277D84F90];
    v24 = sub_267BAF0DC(v21);
    v25 = 0;
    while (v24 != v25)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x26D609870](v25, v22);
      }

      else
      {
        if (v25 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v26 = *(v22 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v29 = [v26 audioMessageFile];

      ++v25;
      if (v29)
      {
        MEMORY[0x26D608F90]();
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v23 = v56;
        v25 = v28;
      }
    }

    if (!sub_267BAF0DC(v23))
    {

      v11 = v54;
      v12 = v55;
      goto LABEL_19;
    }

    sub_267BBD0EC(0, (v23 & 0xC000000000000001) == 0, v23);
    v11 = v54;
    if ((v23 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x26D609870](0, v23);
    }

    else
    {
      v30 = *(v23 + 32);
    }

    v31 = v30;
    v33 = v52;
    v32 = v53;
    v34 = v51;

    v35 = [v31 fileURL];

    v36 = v55;
    if (v35)
    {
      sub_267EF2B48();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    __swift_storeEnumTagSinglePayload(v34, v37, 1, v36);
    sub_267C26704(v34, v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v36) != 1)
    {
      (*(v32 + 32))(v33, v11, v36);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v47 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v47, qword_280240FB0);
      v48 = sub_267EF89F8();
      v49 = sub_267EF95D8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = OUTLINED_FUNCTION_32();
        *v50 = 0;
        _os_log_impl(&dword_267B93000, v48, v49, "#SendMessageBaseFlowStrategy generating SAUISayIt for audio message", v50, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v44 = sub_267E0C910();
      (*(v32 + 8))(v33, v36);
      return v44;
    }
  }

  else
  {
LABEL_19:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  }

  sub_267BF9988(v11, &qword_280229E20, &unk_267EFDCC0);
  if (qword_280228818 != -1)
  {
LABEL_34:
    OUTLINED_FUNCTION_0();
  }

  v38 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);
  v39 = sub_267EF89F8();
  v40 = sub_267EF95E8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v41);
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v42, v43, "#SendMessageBaseFlowStrategy no attachment for audio message, this is not expected");
    OUTLINED_FUNCTION_26();
  }

  sub_267C266B0();
  v44 = swift_allocError();
  *v45 = 0xD000000000000021;
  v45[1] = 0x8000000267F14890;
  return v44;
}

uint64_t sub_267CA6C14()
{
  OUTLINED_FUNCTION_12();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v1[9] = v3;
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[10] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF83E8();
  v1[11] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[12] = v7;
  v9 = *(v8 + 64);
  v1[13] = OUTLINED_FUNCTION_2();
  v10 = sub_267EF8178();
  v1[14] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[15] = v11;
  v13 = *(v12 + 64);
  v1[16] = OUTLINED_FUNCTION_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v14);
  v16 = *(v15 + 64);
  v1[17] = OUTLINED_FUNCTION_2();
  v17 = sub_267EF2BA8();
  v1[18] = v17;
  OUTLINED_FUNCTION_30_0(v17);
  v1[19] = v18;
  v20 = *(v19 + 64);
  v1[20] = OUTLINED_FUNCTION_2();
  v21 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v21);
  v23 = *(v22 + 64);
  v1[21] = OUTLINED_FUNCTION_2();
  v24 = sub_267EF48A8();
  v1[22] = v24;
  OUTLINED_FUNCTION_30_0(v24);
  v1[23] = v25;
  v27 = *(v26 + 64);
  v1[24] = OUTLINED_FUNCTION_2();
  v28 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_267CA6E18()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v1, qword_280240FB0);
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

  v10 = *(v0 + 64);

  v11 = *(v10 + 56);
  if (*(v11 + 210) == 1)
  {
    v12 = *(v11 + 280);
  }

  else
  {
    v12 = 0;
  }

  *(v0 + 264) = v12;
  v13 = *(*(v0 + 64) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple);
  v14 = swift_task_alloc();
  *(v0 + 200) = v14;
  *v14 = v0;
  v14[1] = sub_267CA6F54;

  return sub_267E9B6AC(v12);
}

uint64_t sub_267CA6F54()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 200);
  *v4 = *v1;
  v3[26] = v7;

  if (v0)
  {
    v8 = v3[24];
    v10 = v3[20];
    v9 = v3[21];
    v12 = v3[16];
    v11 = v3[17];
    v13 = v3[13];
    v14 = v3[10];

    OUTLINED_FUNCTION_17();

    return v15();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v17, v18, v19);
  }
}

uint64_t sub_267CA70E4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 264);
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);
  sub_267EF3CD8();
  OUTLINED_FUNCTION_11_18();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  v5 = [v1 catId];
  sub_267EF9028();

  OUTLINED_FUNCTION_37_1();
  sub_267EF47D8();
  if (v2 == 1)
  {
    v6 = *(v0 + 136);
    v7 = *(v0 + 144);
    sub_267EF2B88();
    result = __swift_getEnumTagSinglePayload(v6, 1, v7);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v9 = *(v0 + 152);
      v10 = *(v0 + 160);
      v11 = *(v0 + 144);
      v37 = *(v0 + 128);
      v38 = *(v0 + 120);
      v12 = *(v0 + 104);
      v39 = *(v0 + 112);
      v41 = *(v0 + 208);
      v14 = *(v0 + 88);
      v13 = *(v0 + 96);
      v16 = *(v0 + 72);
      v15 = *(v0 + 80);
      v17 = *(v0 + 64);
      (*(v9 + 32))(v10, *(v0 + 136), v11);
      (*(v9 + 16))(v12, v10, v11);
      (*(v13 + 104))(v12, *MEMORY[0x277D5D6E0], v14);
      v18 = *(v17 + 112);
      sub_267C7FE68();
      sub_267EFA028();
      sub_267BF9988(v15, &qword_2802295B8, &qword_267EFDCB0);
      sub_267EF83F8();
      (*(v38 + 104))(v37, *MEMORY[0x277D5D358], v39);
      v19 = sub_267EF4198();
      OUTLINED_FUNCTION_97(v19);
      *(v0 + 216) = sub_267EF4188();
      *(v0 + 40) = v39;
      *(v0 + 48) = sub_267CAA178(qword_280229338, MEMORY[0x277D5D3A0]);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      (*(v38 + 16))(boxed_opaque_existential_0, v37, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v21 = swift_allocObject();
      *(v0 + 224) = v21;
      *(v21 + 16) = xmmword_267EFCA40;
      *(v21 + 32) = v41;
      v22 = *(MEMORY[0x277D5BD40] + 4);
      v40 = (*MEMORY[0x277D5BD40] + MEMORY[0x277D5BD40]);
      v23 = v41;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 232) = v24;
      *v24 = v25;
      v24[1] = sub_267CA7524;
      v26 = *(v0 + 192);
      v27 = *(v0 + 56);

      return v40(v27, v0 + 16, v21, v26);
    }
  }

  else
  {
    v28 = *(v0 + 208);
    v29 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v29);
    *(v0 + 240) = sub_267EF4188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v30 = swift_allocObject();
    *(v0 + 248) = v30;
    *(v30 + 16) = xmmword_267EFCA40;
    *(v30 + 32) = v28;
    v31 = *(MEMORY[0x277D5BD50] + 4);
    v42 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
    v32 = v28;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 256) = v33;
    *v33 = v34;
    v33[1] = sub_267CA773C;
    v35 = *(v0 + 192);
    v36 = *(v0 + 56);

    return v42(v36, v30, v35);
  }

  return result;
}

uint64_t sub_267CA7524()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = v4[29];
  v6 = v4[28];
  v7 = v4[27];
  v8 = *v0;
  OUTLINED_FUNCTION_5();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267CA764C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v14 = *(v12 + 184);
  v13 = *(v12 + 192);
  v15 = *(v12 + 176);
  v17 = *(v12 + 152);
  v16 = *(v12 + 160);
  v18 = *(v12 + 144);
  v20 = *(v12 + 120);
  v19 = *(v12 + 128);
  v21 = *(v12 + 112);

  (*(v20 + 8))(v19, v21);
  v22 = *(v17 + 8);
  v23 = OUTLINED_FUNCTION_37_1();
  v24(v23);
  v25 = *(v14 + 8);
  v26 = OUTLINED_FUNCTION_66();
  v27(v26);
  OUTLINED_FUNCTION_36_9();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_267CA773C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1[32];
  v3 = v1[31];
  v4 = v1[30];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267CA7858()
{
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_66();
  v6(v5);
  OUTLINED_FUNCTION_36_9();

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_267CA7914()
{
  v1 = v0;
  v2 = sub_267EF2E98();
  v3 = OUTLINED_FUNCTION_58(v2);
  v64 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v10 = sub_267EF2778();
  v11 = OUTLINED_FUNCTION_58(v10);
  v63 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_0();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v19 = OUTLINED_FUNCTION_18(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v58 - v22;
  v24 = sub_267EF2CC8();
  v25 = OUTLINED_FUNCTION_58(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_60();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v58 - v34;
  if (*(*(v1 + 56) + 208) != 1)
  {
    return 0;
  }

  v62 = v10;
  v60 = xmmword_267F00B80;
  v65 = xmmword_267F00B80;
  v66 = 0;
  v61 = OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore;
  sub_267C5C400(&v65, v23);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_267BF9988(v23, &qword_28022BD90, &unk_267EFCDD0);
    return 1;
  }

  (*(v27 + 32))(v35, v23, v24);
  sub_267EF2E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294F8, &qword_267F038D0);
  v37 = sub_267EF2E88();
  OUTLINED_FUNCTION_58(v37);
  v58 = v2;
  v39 = v38;
  v41 = *(v40 + 72);
  v42 = *(v38 + 80);
  v59 = v1;
  v43 = (v42 + 32) & ~v42;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_267EFC020;
  (*(v39 + 104))(v44 + v43, *MEMORY[0x277CC9968], v37);
  sub_267E6EAA0();
  sub_267EF2CB8();
  sub_267EF2E48();

  v45 = *(v27 + 8);
  v45(v32, v24);
  (*(v64 + 8))(v9, v58);
  v65 = v60;
  v66 = 0;
  sub_267C5DD80(&v65, v46, v47, v48, v49, v50, v51, v52, v58, v59, v60);
  v54 = v53;
  v55 = sub_267EF2758();
  LOBYTE(v39) = v56;
  (*(v63 + 8))(v17, v62);
  v45(v35, v24);
  result = 0;
  if ((v39 & 1) == 0 && v55 >= 1 && v54 <= 3)
  {
    return 1;
  }

  return result;
}

uint64_t sub_267CA7D2C()
{
  v0 = sub_267EF2CC8();
  v1 = OUTLINED_FUNCTION_58(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_0();
  v8 = v7 - v6;
  v10 = xmmword_267F00B80;
  v11 = 0;
  sub_267EF2CB8();
  sub_267C5BD60(&v10, v8);
  return (*(v3 + 8))(v8, v0);
}

uint64_t sub_267CA7E0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267CA7E34()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[2];
  if (sub_267EF9728())
  {
    v2 = (v0[3] + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder);
    v3 = v2[4];
    __swift_project_boxed_opaque_existential_0(v2, v2[3]);
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_267CA7F30;
    v5 = OUTLINED_FUNCTION_66();

    return sub_267CB8088(v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_4_3();
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_267CA7F30()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  *(v1 + 40) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_267CA801C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  sub_267BAF0DC(*(v13 + 40));
  OUTLINED_FUNCTION_33_4();
  v37 = MEMORY[0x277D84F90];
  while (v12 != v14)
  {
    if (v15)
    {
      MEMORY[0x26D609870](v14, *(v13 + 40));
    }

    else
    {
      if (v14 >= *(v16 + 16))
      {
        goto LABEL_18;
      }

      v18 = *(v17 + 8 * v14);
    }

    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v20 = sub_267EF7C18();
    v22 = v21;

    ++v14;
    if (v22)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v37 + 16);
        OUTLINED_FUNCTION_4_7();
        sub_267BF4EE8();
        v37 = v26;
      }

      v23 = *(v37 + 16);
      if (v23 >= *(v37 + 24) >> 1)
      {
        sub_267BF4EE8();
        v37 = v27;
      }

      *(v37 + 16) = v23 + 1;
      v24 = v37 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v22;
      v14 = v19;
    }
  }

  v28 = *(v13 + 40);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40();

  v31(v29, v30, v31, v32, v33, v34, v35, v36, v37, a10, a11, a12);
}

uint64_t sub_267CA8174(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267CA81A0()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[13];
  if ((sub_267EF9728() & 1) == 0)
  {
    goto LABEL_7;
  }

  v2 = v0[14];
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_26_0();
  v6(v5);
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_26_0();
  v8 = sub_267EF3BE8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v8)
  {
    goto LABEL_7;
  }

  v0[10] = &type metadata for Features;
  v0[11] = sub_267BAFCAC();
  *(v0 + 56) = 7;
  v9 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  if (v9)
  {
    v10 = (v0[14] + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder);
    v11 = v10[4];
    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    v12 = swift_task_alloc();
    v0[15] = v12;
    *v12 = v0;
    v12[1] = sub_267CA8348;
    v13 = OUTLINED_FUNCTION_66();

    return sub_267CB8088(v13, v14);
  }

  else
  {
LABEL_7:
    v16 = v0[12];
    v17 = sub_267EF82A8();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    OUTLINED_FUNCTION_17();

    return v18();
  }
}

uint64_t sub_267CA8348()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 120);
  *v2 = *v0;
  *(v1 + 128) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_267CA8434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v41 = v13;
  sub_267BAF0DC(*(v13 + 128));
  OUTLINED_FUNCTION_33_4();
  v18 = MEMORY[0x277D84F90];
  while (v12 != v14)
  {
    if (v15)
    {
      MEMORY[0x26D609870](v14, *(v41 + 128));
    }

    else
    {
      if (v14 >= *(v16 + 16))
      {
        goto LABEL_18;
      }

      v19 = *(v17 + 8 * v14);
    }

    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v21 = sub_267EF7C18();
    v23 = v22;

    ++v14;
    if (v23)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = *(v18 + 16);
        OUTLINED_FUNCTION_4_7();
        sub_267BF4EE8();
        v18 = v27;
      }

      v24 = *(v18 + 16);
      if (v24 >= *(v18 + 24) >> 1)
      {
        sub_267BF4EE8();
        v18 = v28;
      }

      *(v18 + 16) = v24 + 1;
      v25 = v18 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v23;
      v14 = v20;
    }
  }

  v29 = *(v41 + 128);
  v30 = *(v41 + 96);

  sub_267EF8298();
  v31 = *(v41 + 96);
  v32 = sub_267EF82A8();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v32);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  v34(v33, v34, v35, v36, v37, v38, v39, v40, v41, a10, a11, a12);
}

uint64_t sub_267CA85BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v4 = OUTLINED_FUNCTION_18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_60();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - v11;
  v13 = sub_267EF2BA8();
  v14 = OUTLINED_FUNCTION_58(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v58 = (v20 - v19);
  v21 = sub_267E76140(a1);
  if (!v21)
  {
    if (qword_280228818 != -1)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v22 = v21;
  v56 = v1;
  v23 = sub_267BAF0DC(v21);
  v24 = 0;
  v60 = v22 & 0xFFFFFFFFFFFFFF8;
  v61 = v22 & 0xC000000000000001;
  v55 = v16;
  v57 = (v16 + 32);
  v59 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v23 == v24)
    {

      v40 = *(v56 + 56);
      v41 = *(v40 + 145);
      v42 = *(v40 + 168);
      swift_beginAccess();
      v43 = *(v40 + 152);
      v44 = *(v40 + 160);
      v45 = *(v40 + 176);
      v46 = *(v40 + 184);
      v47 = sub_267EF8388();
      OUTLINED_FUNCTION_97(v47);

      return sub_267EF8378();
    }

    if (v61)
    {
      v25 = MEMORY[0x26D609870](v24, v22);
    }

    else
    {
      if (v24 >= *(v60 + 16))
      {
        goto LABEL_27;
      }

      v25 = *(v22 + 8 * v24 + 32);
    }

    v26 = v25;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    v27 = [v25 file];
    if (!v27)
    {

      __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
      goto LABEL_14;
    }

    v28 = v27;
    v29 = [v27 fileURL];

    if (v29)
    {
      sub_267EF2B48();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    __swift_storeEnumTagSinglePayload(v9, v30, 1, v13);
    v31 = OUTLINED_FUNCTION_26_0();
    sub_267C26704(v31, v32);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
LABEL_14:
      sub_267BF9988(v12, &qword_280229E20, &unk_267EFDCC0);
      ++v24;
    }

    else
    {
      v33 = *v57;
      (*v57)(v58, v12, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = *(v59 + 16);
        OUTLINED_FUNCTION_4_7();
        sub_267C70BD8();
        v59 = v38;
      }

      v34 = *(v59 + 16);
      if (v34 >= *(v59 + 24) >> 1)
      {
        sub_267C70BD8();
        v59 = v39;
      }

      v35 = v58;
      v36 = v59;
      *(v59 + 16) = v34 + 1;
      v33(v36 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v34, v35, v13);
      ++v24;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  OUTLINED_FUNCTION_0();
LABEL_23:
  v49 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v49, qword_280240FB0);
  v50 = sub_267EF89F8();
  v51 = sub_267EF95D8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v52);
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v53, v54, "#SendMessageBaseFlowStrategy makePhotoSharingInfo: Could not extract photo URLs from intent");
    OUTLINED_FUNCTION_26();
  }

  return 0;
}

uint64_t sub_267CA89E8()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_267EF43D8();
  v1[10] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[11] = v4;
  v6 = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF2D28();
  v1[13] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[14] = v8;
  v10 = *(v9 + 64);
  v1[15] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CA8AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12[9] + 56);
  v14 = *(v13 + 296);
  if (v14)
  {
    v16 = v12[14];
    v15 = v12[15];
    v17 = v12[13];
    v18 = v12[8];
    v19 = *(v13 + 288);
    v20 = objc_allocWithZone(MEMORY[0x277D47B48]);

    v21 = [v20 init];
    v12[16] = v21;
    sub_267EF2D18();
    v22 = sub_267EF2CE8();
    v24 = v23;
    (*(v16 + 8))(v15, v17);
    sub_267E7F030(v22, v24, v21);
    sub_267D9976C(v19, v14, v21);

    v25 = v18[4];
    v26 = v18[5];
    v27 = v18[6];
    __swift_project_boxed_opaque_existential_0(v18, v18[3]);
    v28 = sub_267EF8408();
    v47 = v12[9];
    sub_267D997C4(v28, v48, v21);
    v49 = v47[6];
    __swift_project_boxed_opaque_existential_0(v47 + 2, v47[5]);
    v50 = *(v49 + 24);
    v51 = OUTLINED_FUNCTION_37_1();
    v52(v51);
    v53 = v12[6];
    __swift_project_boxed_opaque_existential_0(v12 + 2, v12[5]);
    v54 = *(MEMORY[0x277D5BFB8] + 4);
    v55 = swift_task_alloc();
    v12[17] = v55;
    sub_267BA9F38(0, &qword_28022A4C8, 0x277D47218);
    *v55 = v12;
    v55[1] = sub_267CA8D98;
    OUTLINED_FUNCTION_40();

    return MEMORY[0x2821BB6A0](v56);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v29 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);
    v30 = sub_267EF89F8();
    v31 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v31))
    {
      v32 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v32);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_39_7();

    OUTLINED_FUNCTION_4_24();
    OUTLINED_FUNCTION_40();

    return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
  }
}

uint64_t sub_267CA8D98()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v5 = v4;
  v7 = *(v6 + 136);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v10 + 144) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CA8E9C()
{
  OUTLINED_FUNCTION_12();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_39_7();

  OUTLINED_FUNCTION_4_3();

  return v1(1);
}

uint64_t sub_267CA8F10()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 56) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if (!swift_dynamicCast())
  {

LABEL_9:
    v26 = *(v0 + 144);
    v27 = *(v0 + 120);
    v28 = *(v0 + 96);

    v29 = OUTLINED_FUNCTION_4_24();
    goto LABEL_12;
  }

  if ((*(*(v0 + 88) + 88))(*(v0 + 96), *(v0 + 80)) != *MEMORY[0x277D5BE80])
  {
    v21 = *(v0 + 88);
    v20 = *(v0 + 96);
    v22 = *(v0 + 80);

    v23 = *(v21 + 8);
    v24 = OUTLINED_FUNCTION_66();
    v25(v24);
    goto LABEL_9;
  }

  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);

  v8 = *(v6 + 96);
  v9 = OUTLINED_FUNCTION_66();
  v10(v9);
  v11 = *v5;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v12 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v12, qword_280240FB0);
  v13 = v11;
  v14 = sub_267EF89F8();
  v15 = sub_267EF95D8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_267B93000, v14, v15, "#SendMessageBaseFlowStrategy received %@, snippet is no longer available", v16, 0xCu);
    sub_267BF9988(v17, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    v13 = *(v0 + 128);
    v19 = v14;
    v14 = v18;
  }

  else
  {
    v19 = *(v0 + 128);
  }

  OUTLINED_FUNCTION_39_7();

  v29 = OUTLINED_FUNCTION_4_24();
LABEL_12:

  return v30(v29);
}

uint64_t sub_267CA9190()
{
  OUTLINED_FUNCTION_12();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = sub_267EF8448();
  v1[12] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[13] = v5;
  v7 = *(v6 + 64);
  v1[14] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF3F28();
  v1[15] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[16] = v9;
  v11 = *(v10 + 64);
  v1[17] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF4228();
  v1[18] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[19] = v13;
  v15 = *(v14 + 64);
  v1[20] = OUTLINED_FUNCTION_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A4B0, &unk_267F00CC0);
  OUTLINED_FUNCTION_18(v16);
  v18 = *(v17 + 64);
  v1[21] = OUTLINED_FUNCTION_2();
  v19 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_267CA92FC()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  sub_267EF7958();

  v4 = sub_267E80518(v3);
  *(v0 + 176) = v4;
  if (*(*(v1 + 56) + 97) == 1)
  {
    v5 = v4;
    v6 = *(*(v0 + 88) + 104);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 184) = v7;
    *v7 = v8;
    v7[1] = sub_267CA94CC;
    v9 = *(v0 + 160);

    return sub_267E4A0C4(v9, v5);
  }

  else
  {
    v12 = *(v0 + 104);
    v11 = *(v0 + 112);
    v13 = *(v0 + 96);
    v14 = *(v0 + 80);
    sub_267EF8438();
    v15 = MEMORY[0x277D5D798];
    *(v0 + 40) = v13;
    *(v0 + 48) = v15;
    v16 = MEMORY[0x277D5D7A0];
    *(v0 + 56) = sub_267CAA178(&qword_28022A4B8, MEMORY[0x277D5D7A0]);
    OUTLINED_FUNCTION_13_16();
    *(v0 + 64) = sub_267CAA178(v17, v16);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
    (*(v12 + 16))(boxed_opaque_existential_0, v11, v13);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 200) = v19;
    *v19 = v20;
    OUTLINED_FUNCTION_7_20(v19);

    return sub_267CA89E8();
  }
}

uint64_t sub_267CA94CC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CA95C8()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = sub_267EF4218();
  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_66();
  v8(v7);
  sub_267C8EFF0(v5, v2);

  v9 = sub_267EF4378();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    sub_267BF9988(*(v0 + 168), &qword_28022A4B0, &unk_267F00CC0);
  }

  else
  {
    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v12 = *(v0 + 120);
    sub_267EF4368();
    v13 = *(*(v9 - 8) + 8);
    v14 = OUTLINED_FUNCTION_66();
    v15(v14);
    sub_267EF3F18();
    v16 = *(v11 + 8);
    v17 = OUTLINED_FUNCTION_37_1();
    v18(v17);
  }

  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v21 = *(v0 + 96);
  v22 = *(v0 + 80);
  sub_267EF8438();
  v23 = MEMORY[0x277D5D798];
  *(v0 + 40) = v21;
  *(v0 + 48) = v23;
  v24 = MEMORY[0x277D5D7A0];
  *(v0 + 56) = sub_267CAA178(&qword_28022A4B8, MEMORY[0x277D5D7A0]);
  OUTLINED_FUNCTION_13_16();
  *(v0 + 64) = sub_267CAA178(v25, v24);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  (*(v20 + 16))(boxed_opaque_existential_0, v19, v21);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 200) = v27;
  *v27 = v28;
  OUTLINED_FUNCTION_7_20(v27);

  return sub_267CA89E8();
}

uint64_t sub_267CA97D0()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v8 = *(v7 + 200);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v5 + 208) = v0;

  if (!v0)
  {
    *(v5 + 216) = v3 & 1;
    __swift_destroy_boxed_opaque_existential_0((v5 + 16));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CA98EC()
{
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);

  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_4_3();
  v9 = *(v0 + 216);

  return v8(v9);
}

uint64_t sub_267CA99A4()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[22];

  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v6 = v0[14];

  v7 = OUTLINED_FUNCTION_4_24();

  return v8(v7);
}

uint64_t sub_267CA9A30()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[22];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_66();
  v7(v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v8 = v0[26];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[17];
  v12 = v0[14];

  v13 = OUTLINED_FUNCTION_4_24();

  return v14(v13);
}

uint64_t sub_267CA9AE0()
{
  OUTLINED_FUNCTION_12();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v0[4] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CA9B64()
{
  OUTLINED_FUNCTION_56();
  v1 = [*(v0 + 24) code];
  v2 = 1;
  if (*MEMORY[0x277CD4570] == v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v1 == 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  if (v4 != 2)
  {
    v5 = *(v0 + 32);
    sub_267EF90F8();

    v2 = 0;
  }

  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v6, v2, 1, v8);
  v9 = OUTLINED_FUNCTION_26_0();
  sub_267BD3DDC(v9, v10);

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_267CA9C74()
{
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v2 = v0[13];

  v3 = v0[14];

  v4 = v0[15];

  v5 = OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  OUTLINED_FUNCTION_0_9(v6);
  (*(v7 + 8))(v0 + v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns));
  v8 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver));
  sub_267B9EF14(v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder));
  return __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider));
}

uint64_t sub_267CA9DD8()
{
  sub_267B9DCC8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SendMessageBaseFlowStrategy()
{
  result = qword_28022A4A0;
  if (!qword_28022A4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267CA9E84()
{
  sub_267C6A728();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267CA9F64()
{
  OUTLINED_FUNCTION_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;

  return sub_267CA6C14();
}

uint64_t sub_267CA9FF4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267CA9F64();
}

uint64_t sub_267CAA090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for SendMessageBaseFlowStrategy();
  *v15 = v7;
  v15[1] = sub_267BBD07C;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_267CAA178(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267CAA1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v72 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  OUTLINED_FUNCTION_23();
  v70 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v69 = &v64 - v10;
  v11 = sub_267EF7B88();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_0_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v64 - v18;
  v65 = a2;
  sub_267B9AFEC(a2 + 16, &v83);
  v82 = 0;
  v80 = 0u;
  v81 = 0u;

  v21 = sub_267CABA9C(v20, &v83, &v80);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v5);
  v22 = type metadata accessor for SiriKitFlowFactoryImpl();
  v23 = swift_allocObject();
  v24 = qword_2802286F0;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  type metadata accessor for SendMessageCATs();
  sub_267EF7B68();
  v67 = sub_267EF78E8();
  v84 = v22;
  v85 = &off_2878CFE90;
  *&v83 = v23;
  v25 = type metadata accessor for FollowupOfferFlow(0);
  v68 = OUTLINED_FUNCTION_27_4(v25);
  v26 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v83, v22);
  v66 = &v64;
  OUTLINED_FUNCTION_23();
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_0_0();
  v32 = (v31 - v30);
  (*(v33 + 16))(v31 - v30);
  v34 = *v32;
  *(&v81 + 1) = v22;
  v82 = &off_2878CFE90;
  *&v80 = v34;
  *(v26 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackResponseProvider) = 0;
  *(v26 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackState) = 0;
  v35 = (v26 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v26 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_strategy);
  *v36 = v21;
  v36[1] = &off_2878D7888;
  *(v26 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversation) = a1;
  v37 = v65;
  *(v26 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager) = v65;
  sub_267C2FB6C(v19, v17, &qword_2802299A8, &unk_267F00CF0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v5);
  v39 = a1;
  v40 = v37;
  v41 = v17;
  v71 = v21;
  if (EnumTagSinglePayload == 1)
  {
    v42 = type metadata accessor for EmptyReferenceResolver();
    v43 = v39;
    v44 = swift_allocObject();
    v78 = v42;
    v79 = sub_267CABCF0(&qword_2802299B8, type metadata accessor for EmptyReferenceResolver);
    *&v77 = v44;
    v76[3] = sub_267EF68A8();
    v76[4] = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v76);

    sub_267EF6898();
    sub_267B9AFEC(v37 + 16, v75);
    sub_267B9AFEC(v76, v74);
    sub_267B9AFEC(&v77, v73);
    v45 = swift_allocObject();
    sub_267B9A5E8(v75, v45 + 16);
    sub_267B9A5E8(v74, v45 + 56);
    sub_267B9A5E8(v73, v45 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
    v46 = v69;
    v47 = v17;
    sub_267EF7058();
    v48 = v46;
    sub_267B9F98C(v19, &qword_2802299A8, &unk_267F00CF0);
    __swift_destroy_boxed_opaque_existential_0(v76);
    __swift_destroy_boxed_opaque_existential_0(&v77);
    v49 = __swift_getEnumTagSinglePayload(v47, 1, v5);
    v50 = v43;
    v51 = v40;
    v52 = v70;
    if (v49 != 1)
    {
      sub_267B9F98C(v47, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {

    sub_267B9F98C(v19, &qword_2802299A8, &unk_267F00CF0);
    v48 = v69;
    v52 = v70;
    (*(v70 + 32))(v69, v41, v5);
    v50 = v39;
    v51 = v40;
  }

  (*(v52 + 32))(v26 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_transformer, v48, v5);
  sub_267B9A5E8(&v80, v26 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_siriKitFlowFactory);
  type metadata accessor for FollowupOfferFlow.State(0);
  swift_storeEnumTagMultiPayload();
  *(v26 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_sendMessageCATs) = v67;
  sub_267B9AFEC(v51 + 16, &v77);
  sub_267B9A5E8(&v77, v26 + 16);
  __swift_destroy_boxed_opaque_existential_0(&v83);
  type metadata accessor for OfferContinueReadingReturnGroup();
  v53 = swift_allocObject();
  *(v53 + 16) = v50;
  *(v53 + 24) = v51;
  *&v83 = v26;
  *&v80 = v53;
  v54 = sub_267EF33F8();
  OUTLINED_FUNCTION_27_4(v54);
  swift_allocObject();
  sub_267CABCF0(&qword_2802299C0, type metadata accessor for FollowupOfferFlow);
  sub_267CABCF0(&qword_28022A4E8, type metadata accessor for OfferContinueReadingReturnGroup);

  v55 = sub_267EF33E8();

  v56 = v72;
  *v72 = v55;
  v57 = *MEMORY[0x277D5B898];
  v58 = sub_267EF3758();
  OUTLINED_FUNCTION_22(v58);
  (*(v59 + 104))(v56, v57);
  v60 = *MEMORY[0x277D5BF50];
  v61 = sub_267EF4548();
  OUTLINED_FUNCTION_22(v61);
  return (*(v62 + 104))(v56, v60);
}

uint64_t sub_267CAA984@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EF8428();
  OUTLINED_FUNCTION_23();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v11 = sub_267EF4BE8();
  OUTLINED_FUNCTION_23();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v103 - v20;
  sub_267DE1640();
  v23 = sub_267C8F198(v22);

  if (!v23)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v28 = sub_267EF8A08();
    __swift_project_value_buffer(v28, qword_280240FB0);
    v29 = sub_267EF89F8();
    v30 = sub_267EF95E8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_267B93000, v29, v30, "#CallSenderActionGroup No sender in conversation", v31, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v32 = sub_267EF4548();
    v33 = a1;
    v34 = 1;
    v35 = 1;

    return __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  }

  v109 = v21;
  v108 = v11;
  v107 = a1;
  v24 = [v23 personHandle];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 type];

    v27 = v26 == 2;
  }

  else
  {
    v27 = 0;
  }

  v106 = v13;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v37 = sub_267EF8A08();
  v38 = __swift_project_value_buffer(v37, qword_280240FB0);
  v39 = v23;
  v103[1] = v38;
  v40 = sub_267EF89F8();
  v41 = sub_267EF95D8();

  v42 = os_log_type_enabled(v40, v41);
  v103[0] = v19;
  v104 = v2;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = OUTLINED_FUNCTION_52();
    v111 = v44;
    *v43 = 136315394;
    v110 = [v39 personHandle];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A4D8, &unk_267F00CE0);
    v45 = sub_267EF9098();
    v47 = sub_267BA33E8(v45, v46, &v111);

    *(v43 + 4) = v47;
    *(v43 + 12) = 1024;
    *(v43 + 14) = v27;
    _os_log_impl(&dword_267B93000, v40, v41, "#CallSenderActionGroup Using telephony for handle %s: %{BOOL}d", v43, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v44);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  if (v27)
  {
    v48 = 1;
  }

  else
  {
    v48 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_267EFCA40;
  *(v49 + 32) = v39;
  objc_allocWithZone(MEMORY[0x277CD41A8]);
  v50 = v39;
  v51 = sub_267CAB90C(0, 0, 0, 1, v48, v49, 0, 1);
  v52 = sub_267DEC238([v51 backingStore]);
  if (v53 >> 60 != 15)
  {
    v54 = v52;
    v55 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BF0, &qword_267F01650);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267EFCE30;
    *(inited + 32) = 0x6449707061;
    *(inited + 40) = 0xE500000000000000;
    v57 = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD000000000000015;
    *(inited + 56) = 0x8000000267F14970;
    *(inited + 72) = v57;
    strcpy((inited + 80), "intentTypeName");
    *(inited + 95) = -18;
    v58 = [v51 typeName];
    v105 = v51;

    v59 = sub_267EF9028();
    v61 = v60;

    *(inited + 96) = v59;
    *(inited + 104) = v61;
    *(inited + 120) = v57;
    *(inited + 128) = 0x6144746E65746E69;
    *(inited + 168) = MEMORY[0x277CC9318];
    *(inited + 136) = 0xEA00000000006174;
    *(inited + 144) = v54;
    *(inited + 152) = v55;
    v103[2] = v54;
    sub_267CAB9F0(v54, v55);
    sub_267EF8F28();
    v62 = v104;
    (*(v4 + 104))(v10, *MEMORY[0x277D5D710], v104);
    sub_267EF8418();
    (*(v4 + 8))(v10, v62);

    v63 = v109;
    sub_267EF4BB8();
    v64 = sub_267EF3808();
    if (v64)
    {
      v65 = v64;

      v66 = sub_267EF89F8();
      v67 = sub_267EF95D8();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = OUTLINED_FUNCTION_52();
        v111 = v69;
        *v68 = 136315138;
        v70 = sub_267EF8F08();
        v72 = v71;

        v73 = sub_267BA33E8(v70, v72, &v111);

        *(v68 + 4) = v73;
        _os_log_impl(&dword_267B93000, v66, v67, "#CallSenderActionGroup Transitioning to a Phone flow with %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        OUTLINED_FUNCTION_40_0();
        v63 = v109;
        OUTLINED_FUNCTION_32_0();
      }

      else
      {
      }

      v88 = v107;
      v89 = v105;
      v111 = v65;
      v90 = sub_267EF33F8();
      OUTLINED_FUNCTION_27_4(v90);
      swift_allocObject();
      sub_267EF33D8();
      sub_267CABA48();
      v91 = sub_267EF33E8();
      OUTLINED_FUNCTION_8_19();

      (*(v106 + 8))(v63, v108);
      *v88 = v91;
      v92 = *MEMORY[0x277D5B898];
      v93 = sub_267EF3758();
      OUTLINED_FUNCTION_22(v93);
      (*(v94 + 104))(v88, v92);
      v95 = *MEMORY[0x277D5BF50];
      v96 = sub_267EF4548();
      OUTLINED_FUNCTION_22(v96);
      (*(v97 + 104))(v88, v95, v96);
      v33 = v88;
      v34 = 0;
      v35 = 1;
      v32 = v96;
    }

    else
    {
      v104 = v50;

      v74 = v106;
      v75 = v103[0];
      v76 = v108;
      (*(v106 + 16))(v103[0], v63, v108);
      v77 = sub_267EF89F8();
      v78 = sub_267EF95E8();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = OUTLINED_FUNCTION_52();
        v111 = v80;
        *v79 = 136315138;
        v81 = sub_267EF4BC8();
        v83 = v82;
        v84 = *(v74 + 8);
        v85 = v75;
        v86 = v108;
        v84(v85, v108);
        v87 = sub_267BA33E8(v81, v83, &v111);

        *(v79 + 4) = v87;
        _os_log_impl(&dword_267B93000, v77, v78, "#CallSenderActionGroup Phone flow not found for direct invocation %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_32_0();

        OUTLINED_FUNCTION_8_19();
        v84(v109, v86);
      }

      else
      {

        OUTLINED_FUNCTION_8_19();
        v98 = *(v74 + 8);
        v98(v75, v76);
        v98(v63, v76);
      }

      sub_267EF4548();
      v33 = OUTLINED_FUNCTION_55();
    }

    return __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  }

  v99 = sub_267EF89F8();
  v100 = sub_267EF95E8();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = OUTLINED_FUNCTION_52();
    v111 = v102;
    *v101 = 136315138;
    *(v101 + 4) = sub_267BA33E8(0xD00000000000003CLL, 0x8000000267F14900, &v111);
    _os_log_impl(&dword_267B93000, v99, v100, "Fatal error: %s", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v102);
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_32_0();
  }

  result = sub_267EF9C98();
  __break(1u);
  return result;
}

uint64_t sub_267CAB4D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_267EF7B88();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_0_0();
  v6 = a1[5];
  v7 = a1[6];
  __swift_project_boxed_opaque_existential_0(a1 + 2, v6);
  (*(v7 + 8))(v32, v6, v7);
  __swift_project_boxed_opaque_existential_0(v32, v32[3]);
  v8 = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0(v32);
  if (v8)
  {
    sub_267B9AFEC((a1 + 2), v33);
    ConversationEventStore.init()(v32);
    v9 = [objc_opt_self() sharedPreferences];
    if (qword_2802286F0 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    type metadata accessor for SearchForMessagesCATs();
    sub_267EF7B68();
    v10 = sub_267EF78E8();
    type metadata accessor for AnnounceCarPlayEnableTipsFlow();
    v11 = swift_allocObject();
    v31[3] = sub_267BA9F38(0, &unk_28022A3B0, 0x277CEF368);
    v31[4] = &off_2878CF050;
    v31[0] = v9;
    sub_267BEB520(v32, v11 + 72);
    *(v11 + 176) = sub_267C33B2C;
    *(v11 + 184) = 0;
    sub_267B9AFEC(v31, v11 + 192);
    *(v11 + 168) = v10;
    sub_267C4BE60();
    v12 = swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    sub_267B9EF14(v32);
    __swift_destroy_boxed_opaque_existential_0(v31);
    *(v11 + 56) = v12;
    *(v11 + 64) = 1;
    sub_267B9A5E8(v33, v11 + 16);
    v32[0] = v11;
    sub_267CABCF0(&qword_28022A4E0, type metadata accessor for AnnounceCarPlayEnableTipsFlow);
    v32[0] = sub_267EF36E8();
    v14 = sub_267EF33F8();
    OUTLINED_FUNCTION_27_4(v14);
    swift_allocObject();
    sub_267EF33D8();
    sub_267CABA48();
    v15 = sub_267EF33E8();

    *a2 = v15;
    v16 = *MEMORY[0x277D5B898];
    v17 = sub_267EF3758();
    OUTLINED_FUNCTION_22(v17);
    (*(v18 + 104))(a2, v16);
    v19 = *MEMORY[0x277D5BF50];
    v20 = sub_267EF4548();
    OUTLINED_FUNCTION_22(v20);
    (*(v21 + 104))(a2, v19, v20);
    v22 = a2;
    v23 = 0;
    v24 = 1;
    v25 = v20;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v26 = sub_267EF8A08();
    __swift_project_value_buffer(v26, qword_280240FB0);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_267B93000, v27, v28, "#makeAnnounceCarPlayEnableTipTransition Skipping tip reading since we're not in CarPlay", v29, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    sub_267EF4548();
    v22 = OUTLINED_FUNCTION_55();
  }

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

uint64_t sub_267CAB8C8()
{
  sub_267EF4548();
  v0 = OUTLINED_FUNCTION_55();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

id sub_267CAB90C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (a6)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v17 = sub_267EF92D8();
  }

  else
  {
    v17 = 0;
  }

  v18 = [v9 initWithCallRecordFilter:a1 callRecordToCallBack:a2 audioRoute:a3 destinationType:a4 preferredCallProvider:a5 contacts:v17 ttyType:a7 callCapability:a8];

  return v18;
}

uint64_t sub_267CAB9F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_267CABA48()
{
  result = qword_28022A4D0;
  if (!qword_28022A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A4D0);
  }

  return result;
}

uint64_t sub_267CABA9C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v26[3] = &type metadata for MessagesFeatureFlagsImpl;
  v26[4] = off_2878D1228;
  v25[3] = &type metadata for CATProvider;
  v25[4] = &off_2878CE7A0;
  OfferFlowStrategy = type metadata accessor for ContinueToReadOfferFlowStrategy();
  v7 = *(OfferFlowStrategy + 48);
  v8 = *(OfferFlowStrategy + 52);
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v26, &type metadata for MessagesFeatureFlagsImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v25, &type metadata for CATProvider);
  v23 = &type metadata for MessagesFeatureFlagsImpl;
  v24 = off_2878D1228;
  v21[3] = &type metadata for CATProvider;
  v21[4] = &off_2878CE7A0;
  v10 = OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_confirmedResponse;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
  __swift_storeEnumTagSinglePayload(v9 + v10, 5, 9, v11);
  *(v9 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_isSpokenMessageFollowup) = 0;
  *(v9 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_nextConversation) = a1;
  sub_267B9AFEC(v21, v9 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_catProvider);
  sub_267C2FB6C(a3, &v16, &qword_2802299B0, &unk_267F00D00);
  if (v17)
  {
    sub_267B9F98C(a3, &qword_2802299B0, &unk_267F00D00);
    __swift_destroy_boxed_opaque_existential_0(v21);
    sub_267B9A5E8(&v16, &v18);
  }

  else
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    __swift_project_boxed_opaque_existential_0(a2, v12);
    (*(v13 + 8))(&v18, v12, v13);
    v14 = sub_267BFA8F4(&v18);
    __swift_destroy_boxed_opaque_existential_0(&v18);
    v19 = type metadata accessor for SearchForMessagesCATPatternsExecutor(0);
    v20 = &off_2878D3460;
    *&v18 = v14;
    sub_267B9F98C(a3, &qword_2802299B0, &unk_267F00D00);
    __swift_destroy_boxed_opaque_existential_0(v21);
    if (v17)
    {
      sub_267B9F98C(&v16, &qword_2802299B0, &unk_267F00D00);
    }
  }

  sub_267B9A5E8(&v18, v9 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_searchForMessagesPatterns);
  sub_267B9A5E8(&v22, v9 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_featureFlags);
  sub_267B9A5E8(a2, v9 + 16);
  __swift_destroy_boxed_opaque_existential_0(v25);
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v9;
}

uint64_t sub_267CABCF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_267CABD48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v197 = a5;
  v206 = a1;
  *&v216 = sub_267EF6A08();
  v8 = OUTLINED_FUNCTION_58(v216);
  v217 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v14 = v13 - v12;
  v15 = sub_267EF6A88();
  v16 = OUTLINED_FUNCTION_58(v15);
  v204 = v17;
  v205 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  v203 = v21 - v20;
  OUTLINED_FUNCTION_26_2();
  v200 = sub_267EF6B88();
  v22 = OUTLINED_FUNCTION_58(v200);
  v199 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_0();
  v202 = v27 - v26;
  OUTLINED_FUNCTION_26_2();
  v28 = sub_267EF6B38();
  v29 = OUTLINED_FUNCTION_18(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_0_0();
  v198 = v33 - v32;
  OUTLINED_FUNCTION_26_2();
  v34 = sub_267EF2E38();
  v35 = OUTLINED_FUNCTION_18(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_0_0();
  v211 = v39 - v38;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v40 = OUTLINED_FUNCTION_22(v191);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6();
  v196 = v43;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v44);
  v188 = &v186 - v45;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v46);
  v48 = &v186 - v47;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v49);
  v215 = &v186 - v50;
  OUTLINED_FUNCTION_26_2();
  v190 = sub_267EF6B18();
  v51 = OUTLINED_FUNCTION_58(v190);
  v189 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_0_0();
  v213 = v56 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  v58 = OUTLINED_FUNCTION_18(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6();
  v209 = v61;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v62);
  v64 = &v186 - v63;
  if (qword_280228818 != -1)
  {
LABEL_81:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v65 = sub_267EF8A08();
  v66 = __swift_project_value_buffer(v65, qword_280240FB0);
  v67 = sub_267EF89F8();
  sub_267EF95D8();
  v68 = OUTLINED_FUNCTION_28();
  v70 = os_log_type_enabled(v68, v69);
  v210 = a3;
  if (v70)
  {
    OUTLINED_FUNCTION_14_0();
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_267B93000, v67, v66, "#ShareSheetProvider: In getShareRecipient", v71, 2u);
    a3 = v210;
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  v72 = a3 == 0xD000000000000014 && 0x8000000267F12580 == a4;
  if (v72 || (sub_267EF9EA8() & 1) != 0)
  {
    sub_267EF6C08();
  }

  else
  {
    sub_267EF6C18();
  }

  sub_267EF6C28();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  v77 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_267EF2D28();
  v78 = v215;
  OUTLINED_FUNCTION_78();
  v193 = v79;
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v79);
  v194 = OUTLINED_FUNCTION_28_3();
  v192 = sub_267BA9F38(0, &qword_28022A568, 0x277CD3D30);
  v83 = sub_267EF6FF8();
  v208 = sub_267EF6FC8();
  v84 = v78;
  v85 = v48;
  sub_267C2FB6C(v84, v48, &qword_280229430, &qword_267EFD2C0);

  v86 = sub_267EF89F8();
  v87 = sub_267EF95D8();

  v88 = os_log_type_enabled(v86, v87);
  v214 = v66;
  v212 = v64;
  v187 = a2;
  v201 = a4;
  v195 = v83;
  if (v88)
  {
    v89 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v219 = v186;
    *v89 = 136315394;
    v218[0] = v210;
    v218[1] = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v90 = sub_267EF9098();
    v92 = sub_267BA33E8(v90, v91, &v219);

    *(v89 + 4) = v92;
    *(v89 + 12) = 2080;
    sub_267C2FB6C(v85, v188, &qword_280229430, &qword_267EFD2C0);
    v93 = sub_267EF9098();
    v94 = v87;
    v96 = v95;
    sub_267B9F98C(v85, &qword_280229430, &qword_267EFD2C0);
    v97 = sub_267BA33E8(v93, v96, &v219);

    *(v89 + 14) = v97;
    _os_log_impl(&dword_267B93000, v86, v94, "#SiriKitContactResolving CRR config creation with appIdentifier:%s, crrCommsAppSelectionJointId:%s", v89, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  else
  {

    sub_267B9F98C(v85, &qword_280229430, &qword_267EFD2C0);
  }

  v98 = v193;
  if (v208 && (sub_267EF6F98(), v99 = sub_267EF37B8(), v101 = v100, , v101))
  {
    v191 = v99;
  }

  else
  {

    v191 = 0;
  }

  v102 = v201;
  v103 = v210;
  v218[0] = v192;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229438, &unk_267F01FB0);
  v210 = sub_267EF9098();
  v192 = v104;
  v105 = v197[4];
  __swift_project_boxed_opaque_existential_0(v197, v197[3]);
  sub_267EF3B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  OUTLINED_FUNCTION_65_3();
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_267EFC020;
  *(v106 + 32) = v103;
  *(v106 + 40) = v102;
  sub_267C2FB6C(v212, v209, &qword_280229428, &unk_267F00E50);
  v107 = v196;
  sub_267C2FB6C(v215, v196, &qword_280229430, &qword_267EFD2C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v107, 1, v98);

  if (EnumTagSinglePayload == 1)
  {
    sub_267B9F98C(v107, &qword_280229430, &qword_267EFD2C0);
  }

  else
  {
    sub_267EF2CE8();
    OUTLINED_FUNCTION_5_0(v98);
    (*(v109 + 8))(v107, v98);
  }

  sub_267EF6B28();
  (*(v199 + 104))(v202, *MEMORY[0x277D56148], v200);
  (*(v204 + 104))(v203, *MEMORY[0x277D560D0], v205);
  sub_267EF6AF8();

  sub_267B9F98C(v215, &qword_280229430, &qword_267EFD2C0);
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    sub_267EF8678();
  }

  sub_267EF6B08();
  v110 = sub_267DD9798();
  if (!sub_267BAF0DC(v110))
  {

    v124 = sub_267EF89F8();
    sub_267EF95E8();
    v125 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v125, v126))
    {
      OUTLINED_FUNCTION_14_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_45_1();
      _os_log_impl(v127, v128, v129, v130, v131, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v132 = OUTLINED_FUNCTION_13_17();
    v133(v132);
    v134 = v212;
    goto LABEL_37;
  }

  v111 = sub_267BAF0DC(v110);
  if (v111)
  {
    v112 = v111;
    v218[0] = MEMORY[0x277D84F90];
    sub_267C72284();
    if (v112 < 0)
    {
      __break(1u);
      goto LABEL_83;
    }

    v113 = 0;
    v215 = v110 & 0xC000000000000001;
    v114 = v218[0];
    v115 = v110;
    do
    {
      if (v215)
      {
        MEMORY[0x26D609870](v113, v110);
      }

      else
      {
        v116 = *(v110 + 8 * v113 + 32);
      }

      sub_267EF5B68();

      v218[0] = v114;
      v117 = v14;
      v119 = *(v114 + 16);
      v118 = *(v114 + 24);
      if (v119 >= v118 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v118);
        sub_267C72284();
        v114 = v218[0];
      }

      ++v113;
      *(v114 + 16) = v119 + 1;
      OUTLINED_FUNCTION_49_7();
      (*(v122 + 32))(v120 + v121 * v119, v117, v216);
      v14 = v117;
      v110 = v115;
    }

    while (v112 != v113);

    v123 = v207;
  }

  else
  {

    v114 = MEMORY[0x277D84F90];
    v123 = v207;
  }

  a2 = v212;
  if (!*(v114 + 16))
  {

LABEL_48:
    v153 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

  __swift_project_boxed_opaque_existential_0(v187, v187[3]);
  v135 = v123;
  v136 = sub_267EF6888();
  if (v123)
  {

    v137 = v123;
    v138 = sub_267EF89F8();
    v139 = sub_267EF95E8();

    if (os_log_type_enabled(v138, v139))
    {
      OUTLINED_FUNCTION_21_0();
      v140 = a2;
      v141 = swift_slowAlloc();
      OUTLINED_FUNCTION_48_7();
      v142 = swift_slowAlloc();
      v218[0] = v142;
      *v141 = 136315138;
      v219 = v135;
      v143 = v135;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v144 = sub_267EF9098();
      v146 = sub_267BA33E8(v144, v145, v218);

      *(v141 + 4) = v146;
      OUTLINED_FUNCTION_45_1();
      _os_log_impl(v147, v148, v149, v150, v151, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v142);
      v152 = OUTLINED_FUNCTION_8_20();
      MEMORY[0x26D60A7B0](v152);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      a2 = v140;
    }

    else
    {
    }

    v207 = 0;
    goto LABEL_48;
  }

  v153 = v136;

  if (sub_267BAF0DC(v153) <= 0)
  {

    v176 = sub_267EF89F8();
    sub_267EF95D8();
    v177 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v177, v178))
    {
      OUTLINED_FUNCTION_14_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_45_1();
      _os_log_impl(v179, v180, v181, v182, v183, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v184 = OUTLINED_FUNCTION_13_17();
    v185(v184);
    v134 = a2;
LABEL_37:
    sub_267B9F98C(v134, &qword_280229428, &unk_267F00E50);
    return;
  }

  v207 = 0;
LABEL_49:
  v218[0] = MEMORY[0x277D84F90];
  v154 = sub_267BAF0DC(v153);
  if (!v154)
  {
LABEL_76:

    v174 = OUTLINED_FUNCTION_13_17();
    v175(v174);
    sub_267B9F98C(a2, &qword_280229428, &unk_267F00E50);
    return;
  }

  a3 = v154;
  if (v154 >= 1)
  {
    a4 = 0;
    v14 = v153 & 0xC000000000000001;
    *&v155 = 138412290;
    v216 = v155;
    v217 = v153 & 0xC000000000000001;
    while (1)
    {
      if (v14)
      {
        v156 = MEMORY[0x26D609870](a4, v153);
      }

      else
      {
        v156 = *(v153 + 8 * a4 + 32);
      }

      v48 = v156;
      v157 = sub_267CB2B90(v156);
      if (!v157)
      {
        goto LABEL_68;
      }

      v158 = v157;
      v64 = (v157 & 0xFFFFFFFFFFFFFF8);
      if (v157 >> 62)
      {
        if (!sub_267EF9A68())
        {
LABEL_67:

LABEL_68:
          v168 = v48;
          v169 = sub_267EF89F8();
          a2 = sub_267EF95D8();

          if (os_log_type_enabled(v169, a2))
          {
            OUTLINED_FUNCTION_21_0();
            v170 = swift_slowAlloc();
            v171 = swift_slowAlloc();
            OUTLINED_FUNCTION_51_5(v171);
            _os_log_impl(&dword_267B93000, v169, a2, "#ShareSheetProvider: Could not find SiriMatches. Using %@ contact.", v170, 0xCu);
            sub_267B9F98C(v14, &unk_280229E30, &unk_267EFC270);
            v14 = v217;
            OUTLINED_FUNCTION_11_19();
            MEMORY[0x26D60A7B0]();
            OUTLINED_FUNCTION_11_19();
            MEMORY[0x26D60A7B0]();
          }

          v172 = v168;
          MEMORY[0x26D608F90]();
          OUTLINED_FUNCTION_54_6();
          if (v167)
          {
            OUTLINED_FUNCTION_8_2(v173);
            sub_267EF9328();
          }

          sub_267EF9368();
          goto LABEL_73;
        }
      }

      else if (!*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      if ((v158 & 0xC000000000000001) != 0)
      {
        v159 = MEMORY[0x26D609870](0, v158);
      }

      else
      {
        if (!*(v64 + 2))
        {
          __break(1u);
          goto LABEL_81;
        }

        v159 = *(v158 + 32);
      }

      v160 = v159;

      v161 = v160;
      v162 = sub_267EF89F8();
      a2 = sub_267EF95D8();

      if (os_log_type_enabled(v162, a2))
      {
        OUTLINED_FUNCTION_21_0();
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        OUTLINED_FUNCTION_51_5(v164);
        _os_log_impl(&dword_267B93000, v162, a2, "#ShareSheetProvider: found siriMatch %@. Using it.", v163, 0xCu);
        sub_267B9F98C(v14, &unk_280229E30, &unk_267EFC270);
        v14 = v217;
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v165 = v161;
      MEMORY[0x26D608F90]();
      OUTLINED_FUNCTION_54_6();
      if (v167)
      {
        OUTLINED_FUNCTION_8_2(v166);
        sub_267EF9328();
      }

      sub_267EF9368();

LABEL_73:
      ++a4;

      if (a3 == a4)
      {
        a2 = v212;
        goto LABEL_76;
      }
    }
  }

LABEL_83:
  __break(1u);
}

uint64_t sub_267CACE24()
{
  OUTLINED_FUNCTION_12();
  v1[67] = v0;
  v1[66] = v2;
  v1[65] = v3;
  v1[64] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A540, &qword_267F00E20);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  v1[68] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF8B98();
  v1[69] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[70] = v9;
  v11 = *(v10 + 64);
  v1[71] = OUTLINED_FUNCTION_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E28, &qword_267EFF990);
  OUTLINED_FUNCTION_18(v12);
  v14 = *(v13 + 64);
  v1[72] = OUTLINED_FUNCTION_50();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v15 = sub_267EF8D48();
  v1[76] = v15;
  OUTLINED_FUNCTION_30_0(v15);
  v1[77] = v16;
  v18 = *(v17 + 64);
  v1[78] = OUTLINED_FUNCTION_50();
  v1[79] = swift_task_alloc();
  v19 = sub_267EF8B78();
  v1[80] = v19;
  OUTLINED_FUNCTION_30_0(v19);
  v1[81] = v20;
  v22 = *(v21 + 64);
  v1[82] = OUTLINED_FUNCTION_2();
  v23 = sub_267EF8C28();
  v1[83] = v23;
  OUTLINED_FUNCTION_30_0(v23);
  v1[84] = v24;
  v26 = *(v25 + 64);
  v1[85] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_267CAD044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = v14[65];
  v16 = v15[4];
  __swift_project_boxed_opaque_existential_0(v15, v15[3]);
  v17 = *(v16 + 368);
  v18 = OUTLINED_FUNCTION_26_0();
  v20 = v19(v18);
  v14[86] = v20;
  v14[87] = v21;
  if (!v21)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v29 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);
    v30 = sub_267EF89F8();
    v31 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_10_2(v31))
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_14_0();
    v32 = swift_slowAlloc();
    OUTLINED_FUNCTION_42(v32);
    v35 = "#ShareSheetProvider presentShareSheet. No appId found. This requires the user to mention the app";
    goto LABEL_13;
  }

  v22 = v21;
  v23 = v14[64];
  if (!v23)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v36 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v36, qword_280240FB0);
    v30 = sub_267EF89F8();
    v37 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_10_2(v37))
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_14_0();
    v38 = swift_slowAlloc();
    OUTLINED_FUNCTION_42(v38);
    v35 = "#ShareSheetProvider presentShareSheet. No attachment!";
LABEL_13:
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v33, v34, v35);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
LABEL_14:

    goto LABEL_23;
  }

  v24 = v20;
  sub_267B9AFEC(v14[65], (v14 + 2));
  v25 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229210, &qword_267EFCB98);
  type metadata accessor for SmsNLv4Intent();
  if (swift_dynamicCast())
  {
    v26 = v14[66];
    v27 = v14[62];
    v14[88] = v27;
    v14[10] = sub_267EF68A8();
    v14[11] = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v14 + 7);
    sub_267EF6898();
    sub_267CABD48(v27, v14 + 7, v24, v22, v26);
    v14[89] = v28;
    v48 = v14[85];
    __swift_destroy_boxed_opaque_existential_0(v14 + 7);
    sub_267EF8C18();
    v49 = *(MEMORY[0x277D727A0] + 4);
    v50 = swift_task_alloc();
    v14[90] = v50;
    *v50 = v14;
    v50[1] = sub_267CAD548;
    v51 = v14[85];
    OUTLINED_FUNCTION_64_3();

    return MEMORY[0x2821DADB0](v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v39 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v39, qword_280240FB0);
  v40 = sub_267EF89F8();
  v41 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_5_2(v41))
  {
    OUTLINED_FUNCTION_14_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v42, v43, v44, v45, v46, 2u);
    v47 = OUTLINED_FUNCTION_8_20();
    MEMORY[0x26D60A7B0](v47);
  }

LABEL_23:
  OUTLINED_FUNCTION_1_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64_3();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267CAD548()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 720);
  *v4 = *v1;
  v3[91] = v7;
  v3[92] = v0;

  if (v0)
  {
    v8 = v3[89];
    v9 = v3[87];
    v10 = OUTLINED_FUNCTION_59_6();
    v11(v10);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_59_6();
    v13(v12);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267CAD694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v15 = v12[92];
  sub_267EF8BF8();
  sub_267EF8BE8();
  if (v15)
  {
    v16 = v12[91];
    OUTLINED_FUNCTION_66_4();
    swift_unknownObjectRelease();

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v19 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);
    v20 = v15;
    v21 = sub_267EF89F8();
    v22 = sub_267EF95E8();

    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_21_0();
      swift_slowAlloc();
      v23 = OUTLINED_FUNCTION_40_2();
      *v13 = 138412290;
      v24 = v15;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_98_0(v25);
      OUTLINED_FUNCTION_67_1(&dword_267B93000, v26, v27, "#ShareSheetProvider Failed to present Share Sheet with error: %@");
      sub_267B9F98C(v23, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      v28 = OUTLINED_FUNCTION_8_20();
      MEMORY[0x26D60A7B0](v28);
    }

    else
    {
    }

    OUTLINED_FUNCTION_1_30();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_40();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
  }

  else
  {
    v17 = v12[82];
    OUTLINED_FUNCTION_57_5();
    sub_267EF8C08();
    v18 = v12[91];
    v38 = v12[64];

    v12[93] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A548, &qword_267F00E28);
    v12[94] = sub_267EF8F28();
    v12[95] = swift_getOpaqueTypeConformance2();
    swift_unknownObjectRetain();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v12[96] = v39;
    *v39 = v40;
    v39[1] = sub_267CAD98C;
    v41 = v12[91];
    v42 = v12[75];
    OUTLINED_FUNCTION_40();

    return sub_267CAF670();
  }
}

uint64_t sub_267CAD98C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 768);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[97] = v0;

  if (v0)
  {
    v9 = v3[94];
    v10 = v3[91];
    v11 = v3[89];
    v12 = v3[87];

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = v3[91];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267CADAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = *(v22 + 608);
  v26 = *(v22 + 600);
  if (__swift_getEnumTagSinglePayload(v26, 1, v25) == 1)
  {
    v27 = *(v22 + 752);
    v28 = *(v22 + 712);
    v29 = *(v22 + 696);

    sub_267B9F98C(v26, &qword_280229E28, &qword_267EFF990);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v30 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v30, qword_280240FB0);
    v31 = sub_267EF89F8();
    v32 = sub_267EF95E8();
    v33 = OUTLINED_FUNCTION_5_2(v32);
    v34 = *(v22 + 728);
    v35 = *(v22 + 704);
    v36 = *(v22 + 656);
    v37 = *(v22 + 648);
    v38 = *(v22 + 640);
    v39 = *(v22 + 512);
    if (v33)
    {
      OUTLINED_FUNCTION_14_0();
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_267B93000, v31, v32, "#ShareSheetProvider Cannot fetch content from attachment", v40, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();

      swift_unknownObjectRelease();
    }

    else
    {
      v64 = *(v22 + 728);
      swift_unknownObjectRelease();
    }

    v65 = *(v37 + 8);
    v66 = OUTLINED_FUNCTION_26_0();
    v67(v66);
    OUTLINED_FUNCTION_1_30();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_64_3();

    return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v41 = *(v22 + 752);
    v99 = *(v22 + 704);
    v42 = *(v22 + 632);
    v43 = *(v22 + 616);
    v44 = *(v22 + 592);
    v45 = *(v43 + 32);
    *(v22 + 784) = v45;
    *(v22 + 792) = (v43 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v45(v42, v26, v25);
    v46 = MEMORY[0x277D72A70];
    *(v22 + 120) = v25;
    *(v22 + 128) = v46;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v22 + 96));
    v48 = *(v43 + 16);
    *(v22 + 800) = v48;
    *(v22 + 808) = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v48(boxed_opaque_existential_0, v42, v25);
    sub_267B9A5E8((v22 + 96), v22 + 136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a11 = v41;
    v50 = *(v22 + 160);
    v51 = __swift_mutable_project_boxed_opaque_existential_1(v22 + 136, v50);
    OUTLINED_FUNCTION_23();
    v53 = v52;
    v55 = *(v54 + 64);
    v56 = OUTLINED_FUNCTION_2();
    (*(v53 + 16))(v56, v51, v50);
    sub_267CB2C00(v56, 0x746E65746E6F63, 0xE700000000000000, isUniquelyReferenced_nonNull_native, &a11);
    __swift_destroy_boxed_opaque_existential_0((v22 + 136));

    v57 = a11;
    sub_267CAF2F8(v44);
    if (__swift_getEnumTagSinglePayload(v44, 1, v25) == 1)
    {
      sub_267B9F98C(*(v22 + 592), &qword_280229E28, &qword_267EFF990);
      v58 = sub_267BA9948();
      if (v59)
      {
        v60 = v58;
        v61 = *(v22 + 744);
        swift_isUniquelyReferenced_nonNull_native();
        a11 = v57;
        v62 = *(v57 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A560, &unk_267F00E40);
        sub_267EF9C68();
        v57 = a11;
        v63 = *(*(a11 + 48) + 16 * v60 + 8);

        sub_267B9A5E8((*(v57 + 56) + 40 * v60), v22 + 216);
        sub_267EF9C88();
      }

      else
      {
        *(v22 + 248) = 0;
        *(v22 + 232) = 0u;
        *(v22 + 216) = 0u;
      }

      sub_267B9F98C(v22 + 216, &qword_28022A550, &qword_267F00E30);
    }

    else
    {
      v77 = *(v22 + 608);
      v78 = *(v22 + 592);
      *(v22 + 200) = v77;
      v79 = MEMORY[0x277D72A70];
      *(v22 + 208) = MEMORY[0x277D72A70];
      v80 = __swift_allocate_boxed_opaque_existential_0((v22 + 176));
      v45(v80, v78, v77);
      sub_267B9A5E8((v22 + 176), v22 + 456);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      a11 = v57;
      v82 = *(v22 + 480);
      v83 = __swift_mutable_project_boxed_opaque_existential_1(v22 + 456, v82);
      OUTLINED_FUNCTION_23();
      v85 = v84;
      v87 = *(v86 + 64);
      v88 = OUTLINED_FUNCTION_2();
      (*(v85 + 16))(v88, v83, v82);
      sub_267CB2E24(v88, 1701080941, 0xE400000000000000, v81, &a11, v77, v79);
      __swift_destroy_boxed_opaque_existential_0((v22 + 456));

      v57 = a11;
    }

    *(v22 + 816) = v57;
    v89 = *(v22 + 728);
    v90 = *(v22 + 696);
    swift_unknownObjectRetain();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v22 + 824) = v91;
    *v91 = v92;
    v91[1] = sub_267CAE098;
    v93 = *(v22 + 760);
    v94 = *(v22 + 728);
    v95 = *(v22 + 688);
    v96 = *(v22 + 656);
    v97 = *(v22 + 584);
    OUTLINED_FUNCTION_64_3();

    return sub_267CB0B6C();
  }
}

uint64_t sub_267CAE098()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 824);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[104] = v0;

  if (v0)
  {
    v9 = v3[102];
    v10 = v3[91];
    v11 = v3[89];
    v12 = v3[87];

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = v3[91];
    v14 = v3[87];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267CAE1E0()
{
  v91 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 584);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 816);
    v4 = *(v0 + 712);

    sub_267B9F98C(v2, &qword_280229E28, &qword_267EFF990);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v5 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95E8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 728);
    v10 = *(v0 + 704);
    v11 = *(v0 + 656);
    v12 = *(v0 + 648);
    v13 = *(v0 + 632);
    v87 = v13;
    v88 = *(v0 + 640);
    v14 = *(v0 + 616);
    v15 = *(v0 + 608);
    v16 = *(v0 + 512);
    if (v8)
    {
      OUTLINED_FUNCTION_14_0();
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_267B93000, v6, v7, "#ShareSheetProvider Cannot fetch content from attachment", v17, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v14 + 8))(v87, v15);
    (*(v12 + 8))(v11, v88);
LABEL_23:
    OUTLINED_FUNCTION_1_30();

    OUTLINED_FUNCTION_1();

    return v85();
  }

  v18 = *(v0 + 816);
  v19 = *(v0 + 808);
  v20 = *(v0 + 800);
  v21 = *(v0 + 792);
  v22 = *(v0 + 712);
  v23 = *(v0 + 624);
  v24 = *(v0 + 576);
  (*(v0 + 784))(v23, v2, v1);
  v25 = MEMORY[0x277D72A70];
  *(v0 + 280) = v1;
  *(v0 + 288) = v25;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
  v20(boxed_opaque_existential_0, v23, v1);
  sub_267B9A5E8((v0 + 256), v0 + 296);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90[0] = v18;
  v28 = *(v0 + 320);
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 296, v28);
  OUTLINED_FUNCTION_23();
  v31 = v30;
  v33 = *(v32 + 64);
  v34 = OUTLINED_FUNCTION_2();
  (*(v31 + 16))(v34, v29, v28);
  sub_267CB2C00(v34, 0x6172546572616873, 0xEE0074726F70736ELL, isUniquelyReferenced_nonNull_native, v90);
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));

  v35 = v90[0];
  sub_267CB23EC(v22, v24);

  if (__swift_getEnumTagSinglePayload(v24, 1, v1) == 1)
  {
    sub_267B9F98C(*(v0 + 576), &qword_280229E28, &qword_267EFF990);
    v36 = sub_267BA9948();
    if (v37)
    {
      v38 = v36;
      v39 = *(v0 + 744);
      swift_isUniquelyReferenced_nonNull_native();
      v90[0] = v35;
      v40 = *(v35 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A560, &unk_267F00E40);
      sub_267EF9C68();
      v41 = v90[0];
      v42 = *(*(v90[0] + 48) + 16 * v38 + 8);

      sub_267B9A5E8((*(v41 + 56) + 40 * v38), v0 + 376);
      sub_267EF9C88();
    }

    else
    {
      *(v0 + 408) = 0;
      *(v0 + 376) = 0u;
      *(v0 + 392) = 0u;
    }

    sub_267B9F98C(v0 + 376, &qword_28022A550, &qword_267F00E30);
  }

  else
  {
    v43 = *(v0 + 792);
    v44 = *(v0 + 784);
    v45 = *(v0 + 608);
    v46 = *(v0 + 576);
    *(v0 + 360) = v45;
    *(v0 + 368) = v25;
    v47 = __swift_allocate_boxed_opaque_existential_0((v0 + 336));
    v44(v47, v46, v45);
    sub_267B9A5E8((v0 + 336), v0 + 416);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v90[0] = v35;
    v49 = *(v0 + 440);
    v50 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 416, v49);
    OUTLINED_FUNCTION_23();
    v52 = v51;
    v54 = *(v53 + 64);
    v55 = OUTLINED_FUNCTION_2();
    (*(v52 + 16))(v55, v50, v49);
    sub_267CB2E24(v55, 0x6E65697069636572, 0xEA00000000007374, v48, v90, v45, v25);
    __swift_destroy_boxed_opaque_existential_0((v0 + 416));
  }

  v56 = *(v0 + 832);
  v57 = *(v0 + 568);
  OUTLINED_FUNCTION_57_5();
  sub_267EF8B88();
  if (v56)
  {
    v58 = *(v0 + 728);
    v59 = *(v0 + 704);
    v89 = *(v0 + 656);
    v60 = *(v0 + 648);
    v61 = *(v0 + 640);
    v62 = *(v0 + 632);
    v63 = *(v0 + 624);
    v64 = *(v0 + 616);
    v65 = *(v0 + 608);
    v66 = *(v0 + 512);

    swift_unknownObjectRelease();

    v67 = *(v64 + 8);
    v67(v63, v65);
    v67(v62, v65);
    (*(v60 + 8))(v89, v61);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v68 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v68, qword_280240FB0);
    v69 = v56;
    v70 = sub_267EF89F8();
    v71 = sub_267EF95E8();

    if (os_log_type_enabled(v70, v71))
    {
      OUTLINED_FUNCTION_21_0();
      swift_slowAlloc();
      v72 = OUTLINED_FUNCTION_40_2();
      *v61 = 138412290;
      v73 = v56;
      v74 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_98_0(v74);
      OUTLINED_FUNCTION_67_1(&dword_267B93000, v75, v76, "#ShareSheetProvider Failed to present Share Sheet with error: %@");
      sub_267B9F98C(v72, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      v77 = OUTLINED_FUNCTION_8_20();
      MEMORY[0x26D60A7B0](v77);
    }

    else
    {
    }

    goto LABEL_23;
  }

  v78 = *(MEMORY[0x277D72568] + 4);
  v79 = swift_task_alloc();
  *(v0 + 840) = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A558, &qword_267F00E38);
  *v79 = v0;
  v79[1] = sub_267CAE9AC;
  v81 = *(v0 + 760);
  v82 = *(v0 + 728);
  v83 = *(v0 + 568);
  v84 = *(v0 + 544);

  return MEMORY[0x2821DAAB0](v84, v83, v80, v81);
}

uint64_t sub_267CAE9AC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 840);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 848) = v0;

  if (!v0)
  {
    sub_267B9F98C(*(v3 + 544), &qword_28022A540, &qword_267F00E20);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CAEAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_20_8();
  swift_unknownObjectRelease();

  v18 = OUTLINED_FUNCTION_31_10();
  v19(v18);
  v20 = *(v14 + 8);
  v21 = OUTLINED_FUNCTION_63();
  v20(v21);
  (v20)(a9, v16);
  (*(v17 + 8))(a11, a10);
  OUTLINED_FUNCTION_1_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64_3();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267CAEBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = v12[88];
  v14 = v12[64];

  v15 = v12[92];
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v16 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
  v17 = v15;
  v18 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_21_0();
    swift_slowAlloc();
    v19 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v20 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v20);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    sub_267B9F98C(v19, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
    v26 = OUTLINED_FUNCTION_8_20();
    MEMORY[0x26D60A7B0](v26);
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_267CAED5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = v12[91];
  v14 = v12[88];
  v15 = v12[82];
  v16 = v12[81];
  v17 = v12[80];
  v18 = v12[64];

  swift_unknownObjectRelease();

  v19 = *(v16 + 8);
  v20 = OUTLINED_FUNCTION_26_0();
  v21(v20);
  v22 = v12[97];
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v23 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v23, qword_280240FB0);
  v24 = v22;
  v25 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_21_0();
    swift_slowAlloc();
    v26 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v27 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v27);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    sub_267B9F98C(v26, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
    v33 = OUTLINED_FUNCTION_8_20();
    MEMORY[0x26D60A7B0](v33);
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_267CAEF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = v12[91];
  v14 = v12[88];
  v15 = v12[82];
  v16 = v12[81];
  v17 = v12[80];
  v18 = v12[79];
  v19 = v12[77];
  v20 = v12[76];
  v21 = v12[64];

  swift_unknownObjectRelease();

  (*(v19 + 8))(v18, v20);
  v22 = *(v16 + 8);
  v23 = OUTLINED_FUNCTION_26_0();
  v24(v23);
  v25 = v12[104];
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v26 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);
  v27 = v25;
  v28 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_21_0();
    swift_slowAlloc();
    v29 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v30 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v30);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    sub_267B9F98C(v29, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
    v36 = OUTLINED_FUNCTION_8_20();
    MEMORY[0x26D60A7B0](v36);
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_267CAF110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_20_8();
  swift_unknownObjectRelease();

  v19 = OUTLINED_FUNCTION_31_10();
  v20(v19);
  v21 = *(v14 + 8);
  v22 = OUTLINED_FUNCTION_63();
  v21(v22);
  (v21)(a9, v17);
  (*(v18 + 8))(a11, a10);
  v23 = *(v15 + 848);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v24 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v24, qword_280240FB0);
  v25 = v23;
  v26 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_21_0();
    swift_slowAlloc();
    v27 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v28 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v28);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    sub_267B9F98C(v27, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
    v34 = OUTLINED_FUNCTION_8_20();
    MEMORY[0x26D60A7B0](v34);
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64_3();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267CAF2F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A538, &qword_267F00E18);
  v3 = OUTLINED_FUNCTION_18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = sub_267EF8D78();
  v7 = OUTLINED_FUNCTION_58(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v14 = (v13 - v12);
  sub_267DDB09C();
  if (v15)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v16 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
    v17 = sub_267EF89F8();
    v18 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v18))
    {
      OUTLINED_FUNCTION_14_0();
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_267B93000, v17, v18, "#ShareSheetProvider user requested to share by collaborating", v19, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    sub_267EF8C78();
    v20 = swift_allocBox();
    OUTLINED_FUNCTION_65_3();
    v21 = swift_allocObject();
    v21[2] = 0xD000000000000026;
    v21[3] = 0x8000000267F149C0;
    v21[4] = 0x746E496572616853;
    v21[5] = 0xEF65646F4D746E65;
    *v14 = v21;
    (*(v9 + 104))(v14, *MEMORY[0x277D72D28], v6);
    sub_267EF8DF8();
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    sub_267EF8C68();
    *a1 = v20;
    v26 = *MEMORY[0x277D729E8];
    v27 = sub_267EF8D48();
    OUTLINED_FUNCTION_22(v27);
    (*(v28 + 104))(a1, v26, v27);
    OUTLINED_FUNCTION_9();
    return __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v33 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);
    v34 = sub_267EF89F8();
    v35 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v35))
    {
      OUTLINED_FUNCTION_14_0();
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_267B93000, v34, v35, "#ShareSheetProvider getMode: user did not request to collaborate", v36, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    sub_267EF8D48();
    OUTLINED_FUNCTION_78();

    return __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  }
}

uint64_t sub_267CAF670()
{
  OUTLINED_FUNCTION_12();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_267EF8D28();
  v0[6] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v0[7] = v6;
  v8 = *(v7 + 64);
  v0[8] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF8CE8();
  v0[9] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v0[10] = v10;
  v12 = *(v11 + 64);
  v0[11] = OUTLINED_FUNCTION_50();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A528, &qword_267F00E00);
  OUTLINED_FUNCTION_18(v13);
  v15 = *(v14 + 64);
  v0[14] = OUTLINED_FUNCTION_2();
  v16 = sub_267EF8D38();
  v0[15] = v16;
  OUTLINED_FUNCTION_30_0(v16);
  v0[16] = v17;
  v19 = *(v18 + 64);
  v0[17] = OUTLINED_FUNCTION_2();
  v20 = sub_267EF8D78();
  v0[18] = v20;
  OUTLINED_FUNCTION_30_0(v20);
  v0[19] = v21;
  v23 = *(v22 + 64);
  v0[20] = OUTLINED_FUNCTION_2();
  v24 = sub_267EF8D48();
  v0[21] = v24;
  OUTLINED_FUNCTION_30_0(v24);
  v0[22] = v25;
  v27 = *(v26 + 64);
  v0[23] = OUTLINED_FUNCTION_50();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_267CAF8A8()
{
  v2 = *(v1 + 24);
  v3 = sub_267D13FC8();
  if (!v3)
  {
LABEL_14:
    v42 = [*(v1 + 24) file];
    if (v42)
    {
      v43 = *(v1 + 176);
      v45 = *(v1 + 152);
      v44 = *(v1 + 160);
      v74 = *(v1 + 144);
      v46 = *(v1 + 80);
      v47 = *(v1 + 88);
      v75 = *(v1 + 72);
      v48 = *(v1 + 48);
      v78 = *(v1 + 56);
      v83 = *(v1 + 168);
      v84 = *(v1 + 16);
      v81 = v42;
      sub_267EF8CC8();
      sub_267EF8C58();
      v79 = swift_allocBox();
      v49 = sub_267EF8D68();
      v50 = swift_allocBox();
      v51 = *MEMORY[0x277D72CC0];
      OUTLINED_FUNCTION_5_0(v49);
      (*(v52 + 104))();
      *v44 = v50;
      (*(v45 + 104))(v44, *MEMORY[0x277D72D50], v74);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BD0, &qword_267EFF078);
      v53 = *(v43 + 72);
      v54 = *(v43 + 80);
      OUTLINED_FUNCTION_56_6();
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_267EFC020;
      v56 = swift_allocBox();
      v58 = v57;
      (*(v46 + 16))(v57, v47, v75);
      (*(v78 + 104))(v58, *MEMORY[0x277D72998], v48);
      *(v55 + v0) = v56;
      v59 = *(v43 + 104);
      v60 = v55 + v0;
      v61 = v83;
      v59(v60, *MEMORY[0x277D72A58], v83);
      sub_267EF8C48();

      (*(v46 + 8))(v47, v75);
      *v84 = v79;
      v59(v84, *MEMORY[0x277D729E0], v83);
      v62 = v84;
      v63 = 0;
    }

    else
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v64 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v64, qword_280240FB0);
      v65 = sub_267EF89F8();
      v66 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_10_2(v66))
      {
        OUTLINED_FUNCTION_14_0();
        v67 = swift_slowAlloc();
        OUTLINED_FUNCTION_42(v67);
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v68, v69, "#ShareSheetProvider Could not get type or instance identifier from attachment for entity");
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v61 = *(v1 + 168);
      v70 = *(v1 + 16);

      v62 = v70;
      v63 = 1;
    }

    __swift_storeEnumTagSinglePayload(v62, v63, 1, v61);
    OUTLINED_FUNCTION_42_8();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_46_0();

    __asm { BRAA            X1, X16 }
  }

  v4 = v3;
  v5 = *(v1 + 24);
  v6 = [v3 typeIdentifier];

  v7 = sub_267EF9028();
  v9 = v8;

  v10 = sub_267D13FC8();
  if (!v10)
  {
    v0 = v9;
LABEL_13:

    goto LABEL_14;
  }

  v11 = v10;
  v12 = *(v1 + 24);
  v13 = [v10 instanceIdentifier];

  sub_267EF9028();
  v0 = v14;

  v15 = sub_267D140B4();
  if (!v16)
  {

    goto LABEL_13;
  }

  v17 = v16;
  v77 = v15;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v80 = v7;
  v82 = v9;
  v18 = sub_267EF8A08();
  *(v1 + 208) = __swift_project_value_buffer(v18, qword_280240FB0);
  v19 = sub_267EF89F8();
  v20 = sub_267EF95D8();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_14_0();
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_267B93000, v19, v20, "#ShareSheetProvider fetching the content file from onscreen appEntity", v21, 2u);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  v22 = *(v1 + 200);
  v24 = *(v1 + 168);
  v23 = *(v1 + 176);
  v25 = *(v1 + 152);
  v26 = *(v1 + 160);
  v27 = *(v1 + 144);
  v76 = *(v1 + 32);

  sub_267EF8C98();
  v28 = swift_allocBox();
  OUTLINED_FUNCTION_65_3();
  v29 = swift_allocObject();
  v29[2] = v77;
  v29[3] = v17;
  v29[4] = v80;
  v29[5] = v82;
  *v26 = v29;
  v30 = *MEMORY[0x277D72D28];
  v31 = *(v25 + 104);
  *(v1 + 216) = v31;
  *(v1 + 224) = (v25 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v31(v26, v30, v27);
  sub_267EF8F28();
  sub_267EF8C88();
  *v22 = v28;
  v32 = *MEMORY[0x277D72A38];
  v33 = *(v23 + 104);
  *(v1 + 232) = v33;
  *(v1 + 240) = (v23 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v33(v22, v32, v24);
  *(v1 + 248) = swift_getObjectType();
  v34 = *(MEMORY[0x277D72510] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 256) = v35;
  *v35 = v36;
  v35[1] = sub_267CAFED0;
  v37 = *(v1 + 200);
  v38 = *(v1 + 136);
  v40 = *(v1 + 32);
  v39 = *(v1 + 40);
  OUTLINED_FUNCTION_46_0();

  return MEMORY[0x2821DAA50]();
}

uint64_t sub_267CAFED0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 264) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CAFFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v16 = *(v14 + 216);
  v15 = *(v14 + 224);
  v17 = *(v14 + 144);
  v18 = *(v14 + 112);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A518, &qword_267F00DE8);
  v64 = swift_allocBox();
  v21 = v20;
  v22 = *(v19 + 48);
  v23 = sub_267EF8D68();
  *(v14 + 272) = v23;
  v24 = swift_allocBox();
  *(v14 + 312) = *MEMORY[0x277D72CC0];
  OUTLINED_FUNCTION_5_0(v23);
  v26 = *(v25 + 104);
  *(v14 + 280) = v26;
  *(v14 + 288) = (v25 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v26();
  *v21 = v24;
  *(v14 + 316) = *MEMORY[0x277D72D50];
  v16(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A530, &qword_267F00E08);
  v27 = sub_267EF8DB8();
  OUTLINED_FUNCTION_58(v27);
  v29 = v28;
  v31 = *(v30 + 72);
  v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_267EFC020;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AE90, &qword_267F00E10);
  v34 = sub_267EF8818();
  OUTLINED_FUNCTION_30_0(v34);
  v36 = *(v35 + 72);
  v38 = *(v37 + 80);
  OUTLINED_FUNCTION_56_6();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_267EFC020;
  sub_267EF87B8();
  *(v33 + v32) = v39;
  (*(v29 + 104))(v33 + v32, *MEMORY[0x277D72E68], v27);
  *(v21 + v22) = v33;
  *v18 = v64;
  v40 = *MEMORY[0x277D72AB8];
  v41 = sub_267EF8D58();
  OUTLINED_FUNCTION_22(v41);
  (*(v42 + 104))(v18, v40, v41);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v41);
  v46 = *(MEMORY[0x277D72530] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v14 + 296) = v47;
  *v47 = v48;
  v47[1] = sub_267CB02B8;
  v49 = *(v14 + 248);
  v50 = *(v14 + 192);
  v51 = *(v14 + 136);
  v52 = *(v14 + 112);
  v54 = *(v14 + 32);
  v53 = *(v14 + 40);
  OUTLINED_FUNCTION_64_3();

  return MEMORY[0x2821DAA70](v55, v56, v57, v58, v59, v60, v61, v62, 1, 2, v64, a12, a13, a14);
}

uint64_t sub_267CB02B8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *(v4 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v9 + 304) = v0;

  sub_267B9F98C(v6, &qword_28022A528, &qword_267F00E00);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267CB03E0()
{
  v106 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  (*(v3 + 16))(v1, *(v0 + 192), v2);
  v4 = (*(v3 + 88))(v1, v2);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  if (v4 == *MEMORY[0x277D72A58])
  {
    v8 = v4;
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);
    v11 = *(v0 + 48);
    (*(v5 + 96))(*(v0 + 184), v7);
    v12 = *v6;
    v13 = swift_projectBox();
    (*(v9 + 16))(v10, v13, v11);
    v14 = *(v9 + 88);
    v15 = OUTLINED_FUNCTION_37_1();
    v17 = v16(v15);
    if (v17 == *MEMORY[0x277D72998])
    {
      v102 = v17;
      v103 = v8;
      v18 = *(v0 + 208);
      v20 = *(v0 + 96);
      v19 = *(v0 + 104);
      v22 = *(v0 + 72);
      v21 = *(v0 + 80);
      v23 = *(v0 + 64);
      (*(*(v0 + 56) + 96))(v23, *(v0 + 48));
      (*(v21 + 32))(v19, v23, v22);

      v104 = *(v21 + 16);
      v104(v20, v19, v22);
      v24 = sub_267EF89F8();
      v25 = sub_267EF95D8();
      v26 = OUTLINED_FUNCTION_5_2(v25);
      v27 = *(v0 + 96);
      if (v26)
      {
        v28 = *(v0 + 80);
        v29 = *(v0 + 88);
        v30 = *(v0 + 72);
        OUTLINED_FUNCTION_21_0();
        v31 = swift_slowAlloc();
        OUTLINED_FUNCTION_48_7();
        v32 = swift_slowAlloc();
        v105 = v32;
        *v31 = 136315138;
        v104(v29, v27, v30);
        v33 = sub_267EF9098();
        v35 = v34;
        v36 = OUTLINED_FUNCTION_50_9();
        v37(v36, v30);
        v38 = sub_267BA33E8(v33, v35, &v105);

        *(v31 + 4) = v38;
        _os_log_impl(&dword_267B93000, v24, v25, "#ShareSheetProvider coerced attachment to value %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      else
      {
        v63 = *(v0 + 72);
        v62 = *(v0 + 80);

        v64 = OUTLINED_FUNCTION_50_9();
        v65(v64, v63);
      }

      v88 = *(v0 + 316);
      v66 = *(v0 + 280);
      v67 = *(v0 + 312);
      v68 = *(v0 + 272);
      v92 = *(v0 + 232);
      v93 = *(v0 + 240);
      v86 = *(v0 + 224);
      v87 = *(v0 + 288);
      v85 = *(v0 + 216);
      v69 = *(v0 + 176);
      v91 = *(v0 + 168);
      v70 = *(v0 + 160);
      v71 = *(v0 + 144);
      v95 = *(v0 + 128);
      v96 = *(v0 + 192);
      v97 = *(v0 + 120);
      v98 = *(v0 + 136);
      v89 = *(v0 + 72);
      v90 = *(v0 + 104);
      v72 = *(v0 + 48);
      v73 = *(v0 + 56);
      v99 = *(v0 + 16);
      v100 = *(v0 + 200);
      sub_267EF8C58();
      v94 = swift_allocBox();
      v74 = swift_allocBox();
      v66(v75, v67, v68);
      *v70 = v74;
      v85(v70, v88, v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BD0, &qword_267EFF078);
      v76 = *(v69 + 72);
      v77 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_267EFC020;
      v79 = swift_allocBox();
      v81 = v80;
      v104(v80, v90, v89);
      (*(v73 + 104))(v81, v102, v72);
      *(v78 + v77) = v79;
      v92(v78 + v77, v103, v91);
      sub_267EF8C48();
      v101(v90, v89);
      v82 = *(v69 + 8);
      v82(v96, v91);
      (*(v95 + 8))(v98, v97);
      v82(v100, v91);
      *v99 = v94;
      v92(v99, *MEMORY[0x277D729E0], v91);
      OUTLINED_FUNCTION_9();
      v61 = v91;
      goto LABEL_12;
    }

    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  }

  else
  {
    (*(v5 + 8))(*(v0 + 184), v7);
  }

  v39 = *(v0 + 208);
  v40 = sub_267EF89F8();
  v41 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_10_2(v41))
  {
    OUTLINED_FUNCTION_14_0();
    v42 = swift_slowAlloc();
    OUTLINED_FUNCTION_42(v42);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v43, v44, "#ShareSheetProvider Failed to cast as primitve file value");
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  v46 = *(v0 + 192);
  v45 = *(v0 + 200);
  v47 = *(v0 + 168);
  v48 = *(v0 + 176);
  v50 = *(v0 + 128);
  v49 = *(v0 + 136);
  v51 = *(v0 + 120);
  v52 = *(v0 + 16);

  v53 = *(v48 + 8);
  v54 = OUTLINED_FUNCTION_37_1();
  v53(v54);
  v55 = *(v50 + 8);
  v56 = OUTLINED_FUNCTION_63();
  v57(v56);
  (v53)(v45, v47);
  OUTLINED_FUNCTION_78();
  v61 = v47;
LABEL_12:
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  OUTLINED_FUNCTION_42_8();

  OUTLINED_FUNCTION_1();

  return v83();
}

uint64_t sub_267CB09D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 264);
  v16 = OUTLINED_FUNCTION_26_12();
  v17(v16);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267CB0A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  (*(v14[16] + 8))(v14[17], v14[15]);
  v15 = v14[38];
  v16 = OUTLINED_FUNCTION_26_12();
  v17(v16);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267CB0B6C()
{
  OUTLINED_FUNCTION_12();
  v0[12] = v1;
  v0[13] = v2;
  v0[10] = v3;
  v0[11] = v4;
  v0[8] = v5;
  v0[9] = v6;
  v0[7] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E28, &qword_267EFF990);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  v0[14] = OUTLINED_FUNCTION_2();
  v11 = sub_267EF8C98();
  v0[15] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v0[16] = v12;
  v14 = *(v13 + 64);
  v0[17] = OUTLINED_FUNCTION_50();
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A4F0, &qword_267F00DC0);
  OUTLINED_FUNCTION_18(v15);
  v17 = *(v16 + 64);
  v0[20] = OUTLINED_FUNCTION_2();
  v18 = sub_267EF8B98();
  v0[21] = v18;
  OUTLINED_FUNCTION_30_0(v18);
  v0[22] = v19;
  v21 = *(v20 + 64);
  v0[23] = OUTLINED_FUNCTION_2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A4F8, &qword_267F00DC8);
  OUTLINED_FUNCTION_18(v22);
  v24 = *(v23 + 64);
  v0[24] = OUTLINED_FUNCTION_2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A500, &qword_267F00DD0);
  OUTLINED_FUNCTION_18(v25);
  v27 = *(v26 + 64);
  v0[25] = OUTLINED_FUNCTION_2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A508, &qword_267F00DD8);
  v0[26] = v28;
  OUTLINED_FUNCTION_30_0(v28);
  v0[27] = v29;
  v31 = *(v30 + 64);
  v0[28] = OUTLINED_FUNCTION_2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A510, &qword_267F00DE0);
  OUTLINED_FUNCTION_18(v32);
  v34 = *(v33 + 64);
  v0[29] = OUTLINED_FUNCTION_2();
  v35 = sub_267EF8D98();
  v0[30] = v35;
  OUTLINED_FUNCTION_30_0(v35);
  v0[31] = v36;
  v38 = *(v37 + 64);
  v0[32] = OUTLINED_FUNCTION_2();
  v39 = sub_267EF8DA8();
  v0[33] = v39;
  OUTLINED_FUNCTION_30_0(v39);
  v0[34] = v40;
  v42 = *(v41 + 64);
  v0[35] = OUTLINED_FUNCTION_2();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A518, &qword_267F00DE8);
  v0[36] = v43;
  OUTLINED_FUNCTION_18(v43);
  v45 = *(v44 + 64);
  v0[37] = OUTLINED_FUNCTION_2();
  v46 = sub_267EF8D58();
  v0[38] = v46;
  OUTLINED_FUNCTION_30_0(v46);
  v0[39] = v47;
  v49 = *(v48 + 64);
  v0[40] = OUTLINED_FUNCTION_2();
  v50 = sub_267EF8DE8();
  v0[41] = v50;
  OUTLINED_FUNCTION_30_0(v50);
  v0[42] = v51;
  v53 = *(v52 + 64);
  v0[43] = OUTLINED_FUNCTION_50();
  v0[44] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v54, v55, v56);
}

uint64_t sub_267CB0F24()
{
  v1 = v0[42];
  v2 = v0[8];
  v3 = sub_267EF8B68();
  v4 = 0;
  v5 = *(v3 + 16);
  v168 = (v1 + 8);
  while (1)
  {
    if (v5 == v4)
    {

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v16 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
      v17 = sub_267EF89F8();
      v18 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_10_2(v18))
      {
        OUTLINED_FUNCTION_14_0();
        v19 = swift_slowAlloc();
        OUTLINED_FUNCTION_42(v19);
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v20, v21, "#ShareSheetProvider Could not find parameter App on ShareIntent");
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v22 = v0[7];

LABEL_24:
      sub_267EF8D48();
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
      OUTLINED_FUNCTION_7_21();
      v157 = v0[20];
      v159 = v0[19];
      v161 = v0[18];
      v164 = v0[17];
      v169 = v0[14];

      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_46_0();

      __asm { BRAA            X1, X16 }
    }

    if (v4 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    (*(v1 + 16))(v0[43], v3 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v4, v0[41]);
    if (sub_267EF8DC8() == 0x6172546572616873 && v6 == 0xEE0074726F70736ELL)
    {
      break;
    }

    v8 = sub_267EF9EA8();

    if (v8)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_55_5(v0[43], v0[41], v9, v10, v11, v12, v13, v14, v153, v154, v155, v156, v158, v160, v163, v168);
    v15();
    ++v4;
  }

LABEL_16:
  v24 = v0[43];
  v23 = v0[44];
  v25 = v0[41];
  v26 = v0[42];
  v28 = v0[39];
  v27 = v0[40];
  v29 = v0[38];

  v30 = (*(v26 + 32))(v23, v24, v25);
  MEMORY[0x26D608AA0](v30);
  v31 = *(v28 + 88);
  v32 = OUTLINED_FUNCTION_63();
  v34 = v33(v32);
  v35 = v0[39];
  v36 = v0[40];
  v37 = v0[38];
  if (v34 != *MEMORY[0x277D72AB8])
  {
    (*(v35 + 8))(v0[40], v37);
    goto LABEL_20;
  }

  v39 = v0[36];
  v38 = v0[37];
  v40 = v0[29];
  (*(v35 + 96))(v0[40], v37);
  v41 = *v36;
  v42 = swift_projectBox();
  sub_267C2FB6C(v42, v38, &qword_28022A518, &qword_267F00DE8);
  v43 = *(v38 + *(v39 + 48));
  v44 = sub_267EF8D78();
  OUTLINED_FUNCTION_22(v44);
  (*(v45 + 8))(v38);

  sub_267C8F25C(v43, v40);

  v46 = sub_267EF8DB8();
  if (__swift_getEnumTagSinglePayload(v40, 1, v46) == 1)
  {
    sub_267B9F98C(v0[29], &qword_28022A510, &qword_267F00DE0);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_23();
  v72 = v71;
  if ((*(v73 + 88))() != *MEMORY[0x277D72FA0])
  {
    (*(v72 + 8))(v0[29], v46);
LABEL_20:
    if (qword_280228818 == -1)
    {
LABEL_21:
      v47 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v47, qword_280240FB0);
      v48 = sub_267EF89F8();
      v49 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_10_2(v49))
      {
        OUTLINED_FUNCTION_14_0();
        v50 = swift_slowAlloc();
        OUTLINED_FUNCTION_42(v50);
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v51, v52, "#ShareSheetProvider getTransport: Could not query App on ShareIntent");
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v53 = v0[44];
      v54 = v0[41];
      v55 = v0[7];

      OUTLINED_FUNCTION_55_5(v56, v57, v58, v59, v60, v61, v62, v63, v153, v154, v155, v156, v158, v160, v163, v168);
      v64(v53, v54);
      goto LABEL_24;
    }

LABEL_39:
    OUTLINED_FUNCTION_0_10();
    swift_once();
    goto LABEL_21;
  }

  v75 = v0[34];
  v74 = v0[35];
  v77 = v0[32];
  v76 = v0[33];
  v78 = v0[31];
  v165 = v0[30];
  v79 = v0[29];
  v80 = v0[24];
  (*(v72 + 96))(v79, v46);
  v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A520, &unk_267F00DF0) + 48);
  (*(v75 + 32))(v74, v79, v76);
  (*(v78 + 32))(v77, v79 + v81, v165);
  sub_267EF8D88();
  v82 = sub_267EF8E18();
  if (__swift_getEnumTagSinglePayload(v80, 1, v82) == 1)
  {
    v83 = v0[25];
    v84 = v0[26];
    sub_267B9F98C(v0[24], &qword_28022A4F8, &qword_267F00DC8);
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v84);
    sub_267C03720(v83);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v88 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v88, qword_280240FB0);
    v89 = sub_267EF89F8();
    v90 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v90))
    {
      OUTLINED_FUNCTION_14_0();
      v91 = swift_slowAlloc();
      OUTLINED_FUNCTION_42(v91);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v92, v93, "#ShareSheetProvider Could not create predicate to query App on ShareIntent");
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v166 = v0[44];
    v94 = v0[41];
    v96 = v0[34];
    v95 = v0[35];
    v98 = v0[32];
    v97 = v0[33];
    v100 = v0[30];
    v99 = v0[31];
    v101 = v0[7];

    v102 = OUTLINED_FUNCTION_31_10();
    v103(v102);
    v104 = *(v96 + 8);
    v105 = OUTLINED_FUNCTION_63();
    v106(v105);
    (*v168)(v166, v94);
    goto LABEL_24;
  }

  v162 = v0[25];
  v167 = v0[24];
  v107 = v0[12];
  v108 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BD0, &qword_267EFF078);
  v109 = sub_267EF8D48();
  v0[45] = v109;
  OUTLINED_FUNCTION_58(v109);
  v111 = v110;
  v0[46] = v110;
  v113 = *(v112 + 72);
  v114 = (*(v110 + 80) + 32) & ~*(v110 + 80);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_267EFC020;
  v116 = sub_267EF8D28();
  v117 = swift_allocBox();
  *v118 = v107;
  v118[1] = v108;
  v119 = *MEMORY[0x277D729B8];
  OUTLINED_FUNCTION_5_0(v116);
  (*(v120 + 104))();
  *(v115 + v114) = v117;
  v121 = *MEMORY[0x277D72A58];
  v122 = *(v111 + 104);
  v0[47] = v122;
  v0[48] = (v111 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v122(v115 + v114, v121, v109);

  sub_267EF8E08();
  v124 = v0[27];
  v123 = v0[28];
  v126 = v0[25];
  v125 = v0[26];
  v128 = v0[23];
  v127 = v0[24];
  v129 = v0[11];

  OUTLINED_FUNCTION_5_0(v82);
  (*(v130 + 8))(v127, v82);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v125);
  (*(v124 + 32))(v123, v126, v125);

  sub_267EF8B88();
  v135 = v0[27];
  v134 = v0[28];
  v136 = v0[26];
  v137 = v0[20];
  v138 = v0[9];
  swift_getObjectType();
  v0[5] = v136;
  v0[6] = swift_getOpaqueTypeConformance2();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  (*(v135 + 16))(boxed_opaque_existential_0, v134, v136);
  sub_267EF8E28();
  sub_267EF8E38();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v140, v141, v142, v143);
  v144 = *(MEMORY[0x277D72550] + 4);
  v145 = swift_task_alloc();
  v0[49] = v145;
  *v145 = v0;
  v145[1] = sub_267CB1A74;
  v146 = v0[35];
  v147 = v0[23];
  v148 = v0[20];
  v150 = v0[9];
  v149 = v0[10];
  OUTLINED_FUNCTION_46_0();

  return MEMORY[0x2821DAA90]();
}

uint64_t sub_267CB1A74(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v7 = *(v4 + 392);
  *v6 = *v2;
  *(v5 + 400) = v1;

  v8 = *(v4 + 160);
  if (!v1)
  {
    *(v5 + 408) = a1;
  }

  sub_267B9F98C(v8, &qword_28022A4F0, &qword_267F00DC0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CB1BD0()
{
  v105 = v0;
  v1 = v0[45];
  v2 = v0[14];
  sub_267C8F274(v0[51], v2);

  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_267B9F98C(v0[14], &qword_280229E28, &qword_267EFF990);
LABEL_9:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v35 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v35, qword_280240FB0);
    v36 = sub_267EF89F8();
    v37 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v37))
    {
      OUTLINED_FUNCTION_14_0();
      v38 = swift_slowAlloc();
      OUTLINED_FUNCTION_42(v38);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v39, v40, "#ShareSheetProvider Could not transport entity on ShareIntent");
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v99 = v0[44];
    v102 = v0[45];
    v41 = v0[42];
    v96 = v0[41];
    v42 = v0[34];
    v86 = v0[32];
    v88 = v0[33];
    v43 = v0[31];
    loga = v0[30];
    v44 = v0[27];
    v45 = v0[28];
    v46 = v0[26];
    v47 = v36;
    v48 = v0[22];
    v49 = v0[23];
    v50 = v0[21];
    v90 = v0[7];
    v93 = v0[35];

    v51 = *(v48 + 8);
    v52 = OUTLINED_FUNCTION_37_1();
    v53(v52);
    (*(v44 + 8))(v45, v46);
    (*(v43 + 8))(v86, loga);
    (*(v42 + 8))(v93, v88);
    (*(v41 + 8))(v99, v96);
    OUTLINED_FUNCTION_78();
    v57 = v102;
    goto LABEL_16;
  }

  v3 = (*(v0[46] + 88))(v0[14], v0[45]);
  v4 = v0[45];
  v5 = v0[46];
  if (v3 != *MEMORY[0x277D72A38])
  {
    (*(v5 + 8))(v0[14], v4);
    goto LABEL_9;
  }

  v101 = v3;
  v6 = v0[19];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[14];
  (*(v5 + 96))(v9, v4);
  v10 = *v9;
  v11 = swift_projectBox();
  v12 = *(v8 + 16);
  v12(v6, v11, v7);

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[15];
  v16 = sub_267EF8A08();
  __swift_project_value_buffer(v16, qword_280240FB0);
  v12(v14, v13, v15);
  v17 = sub_267EF89F8();
  v18 = sub_267EF95D8();
  log = v17;
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[41];
  v80 = v0[42];
  v21 = v0[34];
  v95 = v0[33];
  v98 = v0[35];
  v89 = v0[32];
  v92 = v0[31];
  v85 = v0[27];
  v87 = v0[30];
  v81 = v0[26];
  v82 = v0[28];
  v22 = v12;
  v23 = v0[21];
  v24 = v0[22];
  v78 = v23;
  v79 = v0[23];
  v25 = v0[18];
  if (v19)
  {
    v77 = v0[44];
    v27 = v0[16];
    v26 = v0[17];
    v74 = v18;
    v28 = v0[15];
    OUTLINED_FUNCTION_21_0();
    v76 = v20;
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_48_7();
    v75 = v21;
    v30 = swift_slowAlloc();
    v104 = v30;
    *v29 = 136315138;
    v22(v26, v25, v28);
    v31 = sub_267EF9098();
    v33 = v32;
    (*(v27 + 8))(v25, v28);
    v34 = sub_267BA33E8(v31, v33, &v104);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_267B93000, log, v74, "#ShareSheetProvider Entity value is %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();

    (*(v24 + 8))(v79, v78);
    (*(v85 + 8))(v82, v81);
    (*(v92 + 8))(v89, v87);
    (*(v75 + 8))(v98, v95);
    (*(v80 + 8))(v77, v76);
  }

  else
  {
    v58 = v0[15];
    v59 = v0[16];

    (*(v59 + 8))(v25, v58);
    (*(v24 + 8))(v79, v78);
    (*(v85 + 8))(v82, v81);
    (*(v92 + 8))(v89, v87);
    (*(v21 + 8))(v98, v95);
    v60 = *(v80 + 8);
    v61 = OUTLINED_FUNCTION_63();
    v62(v61);
  }

  v64 = v0[47];
  v63 = v0[48];
  v65 = v0[45];
  v66 = v0[19];
  v67 = v0[15];
  v68 = v0[16];
  v69 = v0[7];
  v70 = swift_allocBox();
  (*(v68 + 32))(v71, v66, v67);
  *v69 = v70;
  v64(v69, v101, v65);
  OUTLINED_FUNCTION_9();
  v57 = v65;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  OUTLINED_FUNCTION_7_21();
  v91 = v0[20];
  v94 = v0[19];
  v97 = v0[18];
  v100 = v0[17];
  v103 = v0[14];

  OUTLINED_FUNCTION_1();

  return v72();
}

uint64_t sub_267CB222C()
{
  v1 = v0[42];
  v33 = v0[41];
  v35 = v0[44];
  v2 = v0[34];
  v31 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[26];
  (*(v0[22] + 8))(v0[23], v0[21]);
  v10 = OUTLINED_FUNCTION_31_10();
  v11(v10);
  v12 = *(v5 + 8);
  v13 = OUTLINED_FUNCTION_63();
  v14(v13);
  (*(v2 + 8))(v31, v3);
  (*(v1 + 8))(v35, v33);
  v36 = v0[50];
  v16 = v0[43];
  v15 = v0[44];
  v17 = v0[40];
  v18 = v0[37];
  v19 = v0[35];
  v20 = v0[32];
  v21 = v0[28];
  v22 = v0[29];
  v24 = v0[24];
  v23 = v0[25];
  v27 = v0[23];
  v28 = v0[20];
  v29 = v0[19];
  v30 = v0[18];
  v32 = v0[17];
  v34 = v0[14];

  OUTLINED_FUNCTION_17();

  return v25();
}

uint64_t sub_267CB23EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_267EF8D78();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v12 = (v11 - v10);
  v13 = sub_267EF8D48();
  v14 = OUTLINED_FUNCTION_58(v13);
  v104 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v20 = (v19 - v18);
  v21 = sub_267EF8D18();
  v22 = OUTLINED_FUNCTION_58(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6();
  v93 = v27;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v28);
  v103 = &v87 - v29;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v30);
  v110 = &v87 - v31;
  v105 = a1;
  if (sub_267BAF0DC(a1) >= 1)
  {
    v32 = sub_267BAF0DC(v105);
    v90 = a2;
    v89 = v4;
    v88 = v7;
    v87 = v12;
    if (!v32)
    {
LABEL_25:
      sub_267EF8C58();
      v77 = swift_allocBox();
      v78 = sub_267EF8D68();
      v79 = swift_allocBox();
      v80 = *MEMORY[0x277D72CD8];
      OUTLINED_FUNCTION_5_0(v78);
      (*(v81 + 104))();
      v82 = v87;
      *v87 = v79;
      (*(v88 + 13))(v82, *MEMORY[0x277D72D50], v89);
      sub_267EF8C48();
      v83 = v90;
      *v90 = v77;
      (*(v104 + 104))(v83, *MEMORY[0x277D729E0], v13);
      OUTLINED_FUNCTION_9();
      return __swift_storeEnumTagSinglePayload(v84, v85, v86, v13);
    }

    if (v32 >= 1)
    {
      v34 = 0;
      v100 = (v24 + 16);
      v101 = v105 & 0xC000000000000001;
      v108 = (v24 + 8);
      v99 = *MEMORY[0x277D729B0];
      v98 = *MEMORY[0x277D72A58];
      v96 = v104 + 32;
      v97 = (v104 + 104);
      v35 = MEMORY[0x277D84F90];
      *&v33 = 138412546;
      v91 = v33;
      v36 = v103;
      v92 = v13;
      v102 = v32;
      do
      {
        if (v101)
        {
          v37 = MEMORY[0x26D609870](v34, v105);
        }

        else
        {
          v37 = *(v105 + 8 * v34 + 32);
        }

        v38 = v110;
        v107 = v34;
        v39 = v37;
        sub_267EF8CF8();
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v40 = sub_267EF8A08();
        __swift_project_value_buffer(v40, qword_280240FB0);
        v109 = *v100;
        v109(v36, v38, v21);
        v41 = v39;
        v42 = sub_267EF89F8();
        v43 = sub_267EF95D8();

        v44 = OUTLINED_FUNCTION_99();
        v106 = v41;
        if (v44)
        {
          swift_slowAlloc();
          v45 = OUTLINED_FUNCTION_40_2();
          v94 = v45;
          OUTLINED_FUNCTION_48_7();
          v95 = swift_slowAlloc();
          v111 = v95;
          *v13 = v91;
          *(v13 + 4) = v41;
          *v45 = v41;
          *(v13 + 12) = 2080;
          v109(v93, v36, v21);
          v46 = v41;
          v47 = sub_267EF9098();
          v49 = v48;
          v50 = *v108;
          (*v108)(v103, v21);
          v51 = sub_267BA33E8(v47, v49, &v111);
          v52 = v103;

          *(v13 + 14) = v51;
          _os_log_impl(&dword_267B93000, v42, v43, "#ShareSheetProvider converting INPerson: %@ to IntentPerson: %s", v13, 0x16u);
          sub_267B9F98C(v94, &unk_280229E30, &unk_267EFC270);
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();
          __swift_destroy_boxed_opaque_existential_0(v95);
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();
          v13 = v92;
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();
        }

        else
        {

          v52 = v36;
          v53 = v36;
          v50 = *v108;
          (*v108)(v53, v21);
        }

        v54 = sub_267EF8D28();
        v55 = swift_allocBox();
        v57 = v56;
        v109(v56, v110, v21);
        OUTLINED_FUNCTION_5_0(v54);
        (*(v58 + 104))(v57, v99, v54);
        *v20 = v55;
        (*v97)(v20, v98, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = *(v35 + 16);
          sub_267C71778();
          v35 = v66;
        }

        v59 = v107;
        v61 = *(v35 + 16);
        v60 = *(v35 + 24);
        if (v61 >= v60 >> 1)
        {
          OUTLINED_FUNCTION_8_2(v60);
          sub_267C71778();
          v35 = v67;
        }

        v34 = v59 + 1;

        v50(v110, v21);
        *(v35 + 16) = v61 + 1;
        OUTLINED_FUNCTION_49_7();
        (*(v64 + 32))(v62 + v63 * v61, v20, v13);
        v36 = v52;
      }

      while (v102 != v34);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (qword_280228818 != -1)
  {
LABEL_27:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v68 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v68, qword_280240FB0);
  v69 = sub_267EF89F8();
  sub_267EF95D8();
  v70 = OUTLINED_FUNCTION_28();
  if (os_log_type_enabled(v70, v71))
  {
    OUTLINED_FUNCTION_14_0();
    v72 = swift_slowAlloc();
    OUTLINED_FUNCTION_42(v72);
    _os_log_impl(&dword_267B93000, v69, v24, "#ShareSheetProvider getRecipients: empty persons list. Not returning recipients", v7, 2u);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  OUTLINED_FUNCTION_78();

  return __swift_storeEnumTagSinglePayload(v73, v74, v75, v13);
}

uint64_t sub_267CB2B90(void *a1)
{
  v1 = [a1 siriMatches];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267CB2C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_267EF8D48();
  v30 = v9;
  v31 = MEMORY[0x277D72A70];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
  (*(*(v9 - 8) + 32))(boxed_opaque_existential_0, a1, v9);
  v11 = *a5;
  v12 = sub_267BA9948();
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A560, &unk_267F00E40);
  if ((sub_267EF9C68() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *a5;
  v17 = sub_267BA9948();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_10:
    result = sub_267EF9F28();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *a5;
  if (v15)
  {
    v20 = (v19[7] + 40 * v14);
    __swift_destroy_boxed_opaque_existential_0(v20);
    return sub_267B9A5E8(&v29, v20);
  }

  else
  {
    v22 = v30;
    v23 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
    v24 = *(*(v22 - 8) + 64);
    MEMORY[0x28223BE20](v23);
    v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v26);
    sub_267CB304C(v14, a2, a3, v26, v19);
    __swift_destroy_boxed_opaque_existential_0(&v29);
  }
}

uint64_t sub_267CB2E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a1, a6);
  v14 = *a5;
  v15 = sub_267BA9948();
  if (__OFADD__(v14[2], (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v15;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A560, &unk_267F00E40);
  if ((sub_267EF9C68() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = *a5;
  v20 = sub_267BA9948();
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_10:
    result = sub_267EF9F28();
    __break(1u);
    return result;
  }

  v17 = v20;
LABEL_5:
  v22 = *a5;
  if (v18)
  {
    v23 = (v22[7] + 40 * v17);
    __swift_destroy_boxed_opaque_existential_0(v23);
    return sub_267B9A5E8(&v32, v23);
  }

  else
  {
    v25 = v33;
    v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
    v27 = *(*(v25 - 8) + 64);
    MEMORY[0x28223BE20](v26);
    v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29);
    sub_267CB3134(v17, a2, a3, v29, v22, a6, a7);
    __swift_destroy_boxed_opaque_existential_0(&v32);
  }
}

uint64_t sub_267CB304C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_267EF8D48();
  v18 = v10;
  v19 = MEMORY[0x277D72A70];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  (*(*(v10 - 8) + 32))(boxed_opaque_existential_0, a4, v10);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a5[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  result = sub_267B9A5E8(&v17, a5[7] + 40 * a1);
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_267CB3134(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_267B9A5E8(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_267CB3274(uint64_t a1)
{
  v3 = *(MEMORY[0x277D55BF0] + 4);
  v7 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_267BCE5E4;
  v5 = MEMORY[0x277D84F90];

  return v7(a1, 0xD000000000000018, 0x8000000267F14A40, v5);
}

uint64_t sub_267CB3370(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_267EFC020;
  *(v2 + 32) = 0x736D657469;
  *(v2 + 40) = 0xE500000000000000;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A580, &unk_267F00E90);
  *(v2 + 48) = a1;

  sub_267EF78C8();
}

uint64_t sub_267CB345C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_267CB34AC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StaticAction.debugDescription.getter();
}

uint64_t sub_267CB3560(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FunctionAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267CB3600(uint64_t a1)
{
  v2 = sub_267EF3868();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v11 = sub_267EF4C08();
  v12 = OUTLINED_FUNCTION_58(v11);
  v46 = v13;
  v47 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v45 = v17 - v16;
  v18 = sub_267EF4BA8();
  v19 = OUTLINED_FUNCTION_58(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_0();
  v26 = v25 - v24;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v27 = sub_267EF8A08();
  __swift_project_value_buffer(v27, qword_280240FB0);
  (*(v21 + 16))(v26, a1, v18);
  v28 = sub_267EF89F8();
  v29 = sub_267EF95C8();
  if (os_log_type_enabled(v28, v29))
  {
    v43 = v10;
    v30 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v48 = v42;
    *v30 = 136315138;
    sub_267CB61D8(&qword_28022AF50, MEMORY[0x277D5C118]);
    v31 = sub_267EF9E58();
    v32 = v5;
    v33 = v2;
    v35 = v34;
    (*(v21 + 8))(v26, v18);
    v36 = sub_267BA33E8(v31, v35, &v48);
    v2 = v33;
    v5 = v32;

    *(v30 + 4) = v36;
    _os_log_impl(&dword_267B93000, v28, v29, "MessagesTCC# received input: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_32_0();
    v10 = v43;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v21 + 8))(v26, v18);
  }

  sub_267EF4B88();
  sub_267EBF390(v10);
  (*(v46 + 8))(v45, v47);
  v37 = (*(v5 + 88))(v10, v2);
  if (v37 == *MEMORY[0x277D5B970])
  {
    return sub_267EF3E48();
  }

  if (v37 == *MEMORY[0x277D5B978])
  {
    *(v44 + 224) = 1;
    return sub_267EF3E58();
  }

  if (v37 == *MEMORY[0x277D5B968])
  {
    *(v44 + 224) = 0;
    return sub_267EF3E58();
  }

  v39 = sub_267EF89F8();
  v40 = sub_267EF95D8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_267B93000, v39, v40, "MessagesTCC# no confirmation, ignoring", v41, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF3E68();
  return (*(v5 + 8))(v10, v2);
}

uint64_t sub_267CB3A80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v2 = OUTLINED_FUNCTION_18(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = *(v0 + 224);
  v8 = sub_267EF44F8();
  v9 = MEMORY[0x277D5BED8];
  if (!v7)
  {
    v9 = MEMORY[0x277D5BED0];
  }

  (*(*(v8 - 8) + 104))(v6, *v9, v8);
  sub_267EF44F8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  return sub_267EF4B58();
}

uint64_t sub_267CB3B78()
{
  OUTLINED_FUNCTION_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BBD07C;

  return sub_267CB46D8();
}

uint64_t sub_267CB3C08()
{
  OUTLINED_FUNCTION_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;

  return sub_267CB46D8();
}

uint64_t sub_267CB3C98()
{
  OUTLINED_FUNCTION_12();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v5 = sub_267EF53D8();
  v1[21] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[22] = v6;
  v8 = *(v7 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v9 = sub_267EF5218();
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  v1[26] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF5318();
  v1[27] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[28] = v13;
  v15 = *(v14 + 64);
  v1[29] = OUTLINED_FUNCTION_2();
  v16 = sub_267EF4158();
  v1[30] = v16;
  OUTLINED_FUNCTION_30_0(v16);
  v1[31] = v17;
  v19 = *(v18 + 64);
  v1[32] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_267CB3E1C()
{
  v110 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = *MEMORY[0x277D47C00];
  v4 = sub_267EF9028();
  v6 = v5;
  sub_267C7A584();
  v8 = v7;
  v9 = v2[5];
  v10 = v2[6];
  OUTLINED_FUNCTION_32_9(v2 + 2);
  v11 = OUTLINED_FUNCTION_4_1();
  v12(v11);
  v107 = MEMORY[0x277D84F90];
  v13 = [objc_allocWithZone(MEMORY[0x277D47128]) init];
  sub_267CB6180(v4, v6, v13);

  v14 = v13;
  v15 = MEMORY[0x26D608F90]();
  OUTLINED_FUNCTION_30_12(v15, v16, v17, v18, v19, v20, v21, v22, v88, buf, v94, v97, v100, v103, v105, v107);
  if (v23)
  {
    OUTLINED_FUNCTION_26_13();
  }

  sub_267EF9368();
  if (v8)
  {
    sub_267D4C16C();
    v24 = MEMORY[0x26D608F90]();
    OUTLINED_FUNCTION_30_12(v24, v25, v26, v27, v28, v29, v30, v31, v89, bufa, v95, v98, v101, v104, v106, v108);
    if (v23)
    {
      OUTLINED_FUNCTION_26_13();
    }

    sub_267EF9368();
  }

  v32 = v0[32];
  sub_267B9AFEC((v0 + 2), (v0 + 7));
  sub_267EF4148();
  v33 = v0[11];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_12_0();
  sub_267EF3B98();
  sub_267EF4128();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_267EF4098();
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  v34 = v0[32];
  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_267EFC020;
  if (qword_2802288C8 != -1)
  {
    swift_once();
  }

  v36 = v0[32];
  v37 = v0[29];
  v38 = v0[25];
  v39 = v0[26];
  *(v35 + 32) = sub_267BC9500();
  *(v35 + 40) = v40;
  v41 = MEMORY[0x277D84F90];
  sub_267C9B650(MEMORY[0x277D84F90]);
  sub_267EF4118();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_267EFCE30;
  *(v42 + 32) = sub_267BB90E4(0);
  *(v42 + 40) = v43;
  *(v42 + 48) = sub_267BB90E4(1);
  *(v42 + 56) = v44;
  *(v42 + 64) = sub_267BB90E4(2);
  *(v42 + 72) = v45;
  sub_267C9B650(v41);
  sub_267EF4108();
  sub_267EF40F8();
  sub_267EF40C8();
  sub_267EF4138();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_267EF5308();
  sub_267EF5208();
  sub_267EF52E8();
  sub_267DFE0D0(v37, v46, v47, v48, v49, v50, v51, v52, v89, bufa, v95, v108, 1, 2, v106, v108, v42, v109[1], v109[2], v109[3]);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v53 = v0[24];
  v54 = v0[25];
  v55 = v0[21];
  v56 = v0[22];
  v57 = sub_267EF8A08();
  __swift_project_value_buffer(v57, qword_280240FB0);
  v58 = *(v56 + 16);
  v58(v53, v54, v55);
  v59 = sub_267EF89F8();
  v60 = sub_267EF95D8();
  v61 = os_log_type_enabled(v59, v60);
  v62 = v0[24];
  if (v61)
  {
    v63 = v0[22];
    v64 = v0[23];
    v65 = v0[21];
    bufb = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v109[0] = v96;
    *bufb = 136315138;
    v58(v64, v62, v65);
    sub_267EF5458();
    v90 = v60;
    v0[15] = v65;
    v0[16] = sub_267CB61D8(&qword_28022BAF0, MEMORY[0x277D5DC70]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    v58(boxed_opaque_existential_0, v64, v65);
    v67 = sub_267EF5448();
    v99 = v58;
    v69 = v68;
    v70 = *(v63 + 8);
    v70(v64, v65);
    v70(v62, v65);
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    v71 = sub_267BA33E8(v67, v69, v109);
    v58 = v99;

    *(bufb + 4) = v71;
    _os_log_impl(&dword_267B93000, v59, v90, "MessagesTCC# submitting system dialog act: %s", bufb, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v96);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v72 = v0[21];
    v73 = v0[22];

    v70 = *(v73 + 8);
    v70(v62, v72);
  }

  v0[33] = v70;
  v74 = v0[32];
  v75 = v0[25];
  v76 = v0[21];
  v77 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v78 = *(v77 + 72);
  v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v102;
  v58(v80 + v79, v75, v76);
  sub_267EF4088();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[34] = v81;
  *v81 = v82;
  v81[1] = sub_267CB444C;
  v83 = v0[32];
  v84 = v0[20];
  v85 = v0[17];
  v86 = v0[18];

  return sub_267CB4A88();
}

uint64_t sub_267CB444C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 280) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CB4548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v16 = OUTLINED_FUNCTION_7_22();
  v17(v16);
  v18 = *(v14 + 8);
  v19 = OUTLINED_FUNCTION_37_1();
  v20(v19);
  (*(v15 + 8))(v13, v12);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_267CB4610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v17 = OUTLINED_FUNCTION_7_22();
  v18(v17);
  v19 = *(v15 + 8);
  v20 = OUTLINED_FUNCTION_37_1();
  v21(v20);
  (*(v16 + 8))(v13, v12);

  OUTLINED_FUNCTION_17();
  v22 = *(v14 + 280);
  OUTLINED_FUNCTION_40();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_267CB46D8()
{
  OUTLINED_FUNCTION_12();
  v1[17] = v2;
  v1[18] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[19] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4228();
  v1[20] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[21] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_2();
  v1[22] = v10;
  v11 = *(MEMORY[0x277D5BDA8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[23] = v12;
  *v12 = v13;
  v12[1] = sub_267CB47E8;

  return MEMORY[0x2821BB3B0](v10);
}

uint64_t sub_267CB47E8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CB48E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v14 = *(v12 + 168);
  v13 = *(v12 + 176);
  v15 = *(v12 + 152);
  v16 = *(v12 + 160);
  v17 = *(v12 + 136);
  v18 = *(v12 + 144);
  v19 = v18[5];
  v20 = v18[6];
  OUTLINED_FUNCTION_32_9(v18 + 2);
  v21 = OUTLINED_FUNCTION_4_1();
  v22(v21);
  v23 = v18[5];
  v24 = v18[6];
  OUTLINED_FUNCTION_32_9(v18 + 2);
  v25 = OUTLINED_FUNCTION_4_1();
  v26(v25);
  v27 = *(v12 + 88);
  __swift_project_boxed_opaque_existential_0((v12 + 56), *(v12 + 80));
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v28 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v28);
  v29 = sub_267EF4CC8();
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0;
  *(v12 + 96) = 0u;
  v30 = MEMORY[0x277D5C1D8];
  v17[3] = v29;
  v17[4] = v30;
  __swift_allocate_boxed_opaque_existential_0(v17);
  sub_267EF3F48();
  sub_267B9FF34(v12 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v15, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v12 + 16));
  v31 = *(v14 + 8);
  v32 = OUTLINED_FUNCTION_37_1();
  v33(v32);
  __swift_destroy_boxed_opaque_existential_0((v12 + 56));

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v12 + 96, a10, a11, a12);
}

uint64_t sub_267CB4A88()
{
  OUTLINED_FUNCTION_12();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  v1[26] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF48A8();
  v1[27] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[28] = v9;
  v11 = *(v10 + 64);
  v1[29] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF8178();
  v1[30] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[31] = v13;
  v15 = *(v14 + 64);
  v1[32] = OUTLINED_FUNCTION_2();
  v16 = sub_267EF2E38();
  v1[33] = v16;
  OUTLINED_FUNCTION_30_0(v16);
  v1[34] = v17;
  v19 = *(v18 + 64);
  v1[35] = OUTLINED_FUNCTION_2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A618, &unk_267F011D0);
  OUTLINED_FUNCTION_18(v20);
  v22 = *(v21 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_267CB4C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = v12[37];
  v15 = v12[34];
  v14 = v12[35];
  v16 = v12[33];
  v17 = v12[25];
  v18 = v12[23];
  v19 = sub_267EF7C58();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v19);
  v20 = sub_267EF4628();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();

  sub_267EF4618();
  v23 = v17[6];
  __swift_project_boxed_opaque_existential_0(v17 + 2, v17[5]);
  v24 = *(v23 + 8);
  v25 = OUTLINED_FUNCTION_12_0();
  v26(v25);
  v27 = v12[6];
  __swift_project_boxed_opaque_existential_0(v12 + 2, v12[5]);
  OUTLINED_FUNCTION_12_0();
  sub_267EF3B68();
  sub_267EF4608();
  v29 = v28;

  v30 = *(v15 + 8);
  v31 = OUTLINED_FUNCTION_37_1();
  v32(v31);
  __swift_destroy_boxed_opaque_existential_0(v12 + 2);
  if (v29)
  {
    v34 = v12[36];
    v33 = v12[37];
    v35 = v12[23];
    sub_267BE84FC();
    sub_267EF7C48();
    sub_267B9FF34(v33, &qword_28022A618, &unk_267F011D0);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v19);
    sub_267CB6110(v34, v33);
  }

  v36 = v17[5];
  v37 = v17[6];
  __swift_project_boxed_opaque_existential_0(v17 + 2, v36);
  (*(v37 + 8))(v36, v37);
  v38 = v12[11];
  __swift_project_boxed_opaque_existential_0(v12 + 7, v12[10]);
  v39 = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0(v12 + 7);
  if (v39)
  {
    v40 = *(MEMORY[0x277D5BC78] + 4);
    v41 = swift_task_alloc();
    v12[38] = v41;
    *v41 = v12;
    v41[1] = sub_267CB4F30;
    v42 = v12[37];
    OUTLINED_FUNCTION_40();

    return MEMORY[0x2821BAE00](v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
  }

  else
  {
    v51 = v12[32];
    v52 = v12[25];
    v53 = v52[7];
    OUTLINED_FUNCTION_22_0();
    sub_267DA18D4();

    __swift_project_boxed_opaque_existential_0(v52 + 18, v52[21]);
    v54 = v52[6];
    __swift_project_boxed_opaque_existential_0(v52 + 2, v52[5]);
    v55 = OUTLINED_FUNCTION_16_11();
    v56(v55);
    v12[42] = sub_267EF8F28();
    v57 = *(MEMORY[0x277D5BC58] + 4);
    v58 = swift_task_alloc();
    v12[43] = v58;
    *v58 = v12;
    OUTLINED_FUNCTION_3_23(v58);
    OUTLINED_FUNCTION_40();

    return MEMORY[0x2821BADD0](v59);
  }
}

uint64_t sub_267CB4F30()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_15_0();
  *v8 = v7;
  v10 = *(v9 + 304);
  v11 = *v1;
  OUTLINED_FUNCTION_5();
  *v12 = v11;
  v7[39] = v0;

  if (!v0)
  {
    v7[40] = v3;
    v7[41] = v5;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267CB504C()
{
  OUTLINED_FUNCTION_62();
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[32];
  v4 = v0[25];
  v5 = v4[7];
  sub_267DA18D4();

  __swift_project_boxed_opaque_existential_0(v4 + 18, v4[21]);
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v4[5]);
  v7 = OUTLINED_FUNCTION_16_11();
  v8(v7);
  v0[42] = sub_267EF8F28();
  v9 = *(MEMORY[0x277D5BC58] + 4);
  v10 = swift_task_alloc();
  v0[43] = v10;
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_3_23(v10);

  return MEMORY[0x2821BADD0](v11);
}

uint64_t sub_267CB514C()
{
  OUTLINED_FUNCTION_62();
  sub_267B9FF34(*(v0 + 296), &qword_28022A618, &unk_267F011D0);
  v1 = *(v0 + 312);
  OUTLINED_FUNCTION_27_8();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CB51F4()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 344);
  v7 = *(v5 + 336);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v3 + 352) = v10;
  *(v3 + 360) = v0;

  sub_267B9FF34(v3 + 96, &qword_28022A620, &qword_267F08EC0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CB5334()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[44];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[24];
  sub_267EF3C98();
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  sub_267EF47A8();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);
  v7 = sub_267EF89F8();
  v8 = sub_267EF95C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_267B93000, v7, v8, "MessagesTCC# returning an output to prompt for TCC", v9, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v10 = v0[44];
  v12 = v0[31];
  v11 = v0[32];
  v13 = v0[30];

  v14 = sub_267EF4198();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[46] = sub_267EF4188();
  v0[20] = v13;
  v0[21] = sub_267CB61D8(qword_280229338, MEMORY[0x277D5D3A0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
  (*(v12 + 16))(boxed_opaque_existential_0, v11, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v18 = swift_allocObject();
  v0[47] = v18;
  *(v18 + 16) = xmmword_267EFCA40;
  *(v18 + 32) = v10;
  v19 = *(MEMORY[0x277D5BD40] + 4);
  v26 = (*MEMORY[0x277D5BD40] + MEMORY[0x277D5BD40]);
  v20 = v10;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[48] = v21;
  *v21 = v22;
  v21[1] = sub_267CB5670;
  v23 = v0[29];
  v24 = v0[22];

  return v26(v24, v0 + 17, v18, v23);
}

uint64_t sub_267CB55AC()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[37];
  (*(v0[31] + 8))(v0[32], v0[30]);
  sub_267B9FF34(v1, &qword_28022A618, &unk_267F011D0);
  v2 = v0[45];
  OUTLINED_FUNCTION_27_8();

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267CB5670()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = v4[48];
  v6 = v4[47];
  v7 = v4[46];
  v8 = *v0;
  OUTLINED_FUNCTION_5();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267CB57A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 288);
  v14 = *(v12 + 296);
  v15 = *(v12 + 280);
  v17 = *(v12 + 248);
  v16 = *(v12 + 256);
  v19 = *(v12 + 232);
  v18 = *(v12 + 240);
  v20 = *(v12 + 216);
  v21 = *(v12 + 224);
  v31 = *(v12 + 208);

  (*(v21 + 8))(v19, v20);
  (*(v17 + 8))(v16, v18);
  sub_267B9FF34(v14, &qword_28022A618, &unk_267F011D0);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, a10, a11, a12);
}

uint64_t sub_267CB5898(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_267EF4158();
  (*(*(v9 - 8) + 16))(v8, a2, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  sub_267EF4818();
  sub_267EF47F8();
  sub_267EF4858();
  v10 = [a3 catId];
  sub_267EF9028();

  return sub_267EF47D8();
}

uint64_t sub_267CB59C4()
{
  v1 = *(v0 + 56);

  return OUTLINED_FUNCTION_29_10();
}

uint64_t sub_267CB5A24()
{
  v2 = *v0;
  sub_267CB3A80();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_267CB5A8C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267CB3B78();
}

uint64_t sub_267CB5B28()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267CB3C08();
}

uint64_t sub_267CB5BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B740] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a5 + 136);
  v16 = type metadata accessor for MessagesTCCAcceptanceFlowStrategy();
  *v14 = v6;
  v14[1] = sub_267BBD07C;

  return MEMORY[0x2821BA180](a1, a2, a3, a4, v16, a6);
}

uint64_t sub_267CB5CAC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267CB3C98();
}

uint64_t sub_267CB5D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B600] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 136);
  v14 = type metadata accessor for MessagesTCCAcceptanceFlowStrategy();
  *v12 = v5;
  v12[1] = sub_267BBD07C;

  return MEMORY[0x2821B9FE0](a1, a2, a3, v14, a5);
}

uint64_t sub_267CB5E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B610] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 136);
  v14 = type metadata accessor for MessagesTCCAcceptanceFlowStrategy();
  *v12 = v5;
  v12[1] = sub_267BBD07C;

  return MEMORY[0x2821B9FF0](a1, a2, a3, v14, a5);
}

uint64_t sub_267CB5F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B608] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 136);
  v14 = type metadata accessor for MessagesTCCAcceptanceFlowStrategy();
  *v12 = v5;
  v12[1] = sub_267BBD07C;

  return MEMORY[0x2821B9FE8](a1, a2, a3, v14, a5);
}

uint64_t sub_267CB6000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B618] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 136);
  v14 = type metadata accessor for MessagesTCCAcceptanceFlowStrategy();
  *v12 = v5;
  v12[1] = sub_267BBD07C;

  return MEMORY[0x2821B9FF8](a1, a2, a3, v14, a5);
}

uint64_t sub_267CB6110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A618, &unk_267F011D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_267CB6180(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();
  [a3 setReason_];
}

uint64_t sub_267CB61D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267CB6220(uint64_t a1)
{
  v2 = sub_267EF4C08();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v54 = v9 - v8;
  v10 = sub_267EF4BA8();
  v11 = OUTLINED_FUNCTION_58(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_0();
  v18 = v17 - v16;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v19 = sub_267EF8A08();
  __swift_project_value_buffer(v19, qword_280240FB0);
  (*(v13 + 16))(v18, a1, v10);
  v20 = sub_267EF89F8();
  v21 = sub_267EF95C8();
  if (os_log_type_enabled(v20, v21))
  {
    v53 = v5;
    v22 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v57[0] = v52;
    *v22 = 136315138;
    sub_267CB78BC(&qword_28022AF50, MEMORY[0x277D5C118]);
    v23 = sub_267EF9E58();
    v25 = v24;
    (*(v13 + 8))(v18, v10);
    v26 = sub_267BA33E8(v23, v25, v57);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_267B93000, v20, v21, "#SearchForMessagesRCHFlowStrategy received input: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    OUTLINED_FUNCTION_32_0();
    v5 = v53;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v13 + 8))(v18, v10);
  }

  sub_267EF4B88();
  v27 = sub_267E57DFC(v54, &v55);
  (*(v5 + 8))(v54, v2, v27);
  if (v56)
  {
    sub_267B9A5E8(&v55, v57);
    OUTLINED_FUNCTION_13_1();
    v28 = v2[48];
    v29 = OUTLINED_FUNCTION_38_0();
    if (v30(v29) == 2)
    {
      v31 = sub_267EF89F8();
      v32 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v32))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v33, v34, "#SearchForMessagesRCHFlowStrategy prompt is cancelled");
        OUTLINED_FUNCTION_32_0();
      }

      sub_267EF3E48();
      return __swift_destroy_boxed_opaque_existential_0(v57);
    }

    v40 = v58;
    v41 = v59;
    __swift_project_boxed_opaque_existential_0(v57, v58);
    if (sub_267E583B0(v40, v41))
    {
      if (sub_267DD3D30())
      {
        sub_267EF3E58();

        return __swift_destroy_boxed_opaque_existential_0(v57);
      }
    }

    OUTLINED_FUNCTION_13_1();
    v42 = v2[36];
    v43 = OUTLINED_FUNCTION_38_0();
    if ((v44(v43) & 1) != 0 && (OUTLINED_FUNCTION_13_1(), v45 = v2[27], v46 = OUTLINED_FUNCTION_38_0(), (v47(v46) & 1) == 0))
    {
      v48 = sub_267EF89F8();
      v49 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v49))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v50, v51, "#SearchForMessagesRCHFlowStrategy unrelated request, ignoring");
        OUTLINED_FUNCTION_32_0();
      }

      sub_267EF3E68();
    }

    else
    {
      sub_267EF3E58();
    }

    return __swift_destroy_boxed_opaque_existential_0(v57);
  }

  sub_267B9FF34(&v55, &unk_28022BBF0, &unk_267F01C60);
  v35 = sub_267EF89F8();
  v36 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_36(v36))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v37, v38, "#SearchForMessagesRCHFlowStrategy unexpected input, ignoring");
    OUTLINED_FUNCTION_32_0();
  }

  return sub_267EF3E68();
}

uint64_t sub_267CB6704(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CB6718()
{
  v38 = v0;
  sub_267E57DFC(v0[7], v0 + 2);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v3 = *(v2 + 360);
    v4 = OUTLINED_FUNCTION_38_0();
    v6 = v5(v4);
    v1 = v7;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    sub_267B9FF34((v0 + 2), &unk_28022BBF0, &unk_267F01C60);
    v6 = 0;
  }

  v8 = v0[7];
  v9 = (v0[8] + OBJC_IVAR____TtC16SiriMessagesFlow32SearchForMessagesRCHFlowStrategy_appName);
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  v11 = sub_267EF7068();
  v11(&v37, v8);

  v12 = v37;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v13 = sub_267EF8A08();
  __swift_project_value_buffer(v13, qword_280240FB0);
  v14 = v12;
  v15 = sub_267EF89F8();
  v16 = sub_267EF95D8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_267B93000, v15, v16, "#SearchForMessagesRCHFlowStrategy transformed parse to: %@", v17, 0xCu);
    sub_267B9FF34(v18, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  sub_267DA798C(v14);
  if (v20)
  {
    v21 = v20;
    v22 = sub_267DE87C0();
    sub_267DE88AC(v22, v23);
    v24 = v21;
    v25 = sub_267EF89F8();
    v26 = sub_267EF95D8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v21;
      v29 = v24;
      _os_log_impl(&dword_267B93000, v25, v26, "#SearchForMessagesRCHFlowStrategy reforming intent to: %@", v27, 0xCu);
      sub_267B9FF34(v28, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v30 = 1;
    v31 = v14;
  }

  else
  {
    v31 = sub_267EF89F8();
    v32 = sub_267EF95D8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_32();
      *v33 = 0;
      _os_log_impl(&dword_267B93000, v31, v32, "#SearchForMessagesRCHFlowStrategy intent not reformed", v33, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v30 = 0;
    v24 = v14;
  }

  v34 = v0[8];

  *(*(v34 + OBJC_IVAR____TtC16SiriMessagesFlow32SearchForMessagesRCHFlowStrategy_searchForMessagesState) + 16) = v30;
  v35 = v0[1];

  return v35(v24);
}

uint64_t sub_267CB6B04()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow32SearchForMessagesRCHFlowStrategy_searchForMessagesState);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow32SearchForMessagesRCHFlowStrategy_appName + 8);
}

uint64_t *sub_267CB6B48()
{
  v0 = sub_267C4779C();
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow32SearchForMessagesRCHFlowStrategy_searchForMessagesState);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow32SearchForMessagesRCHFlowStrategy_appName + 8);

  return v0;
}

uint64_t sub_267CB6B94()
{
  v0 = *sub_267CB6B48();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchForMessagesRCHFlowStrategy()
{
  result = qword_28022A630;
  if (!qword_28022A630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267CB6CA4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BD5D40;

  return sub_267CB6704(a1);
}

uint64_t sub_267CB6D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5BF48] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_267CB6E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SearchForMessagesRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_267CB6EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return (sub_267CB6FB4)(a1, a2, a3);
}

uint64_t sub_267CB6FB4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_267CB6FD4, 0, 0);
}

uint64_t sub_267CB6FD4()
{
  v1 = (v0[3] + OBJC_IVAR____TtC16SiriMessagesFlow32SearchForMessagesRCHFlowStrategy_appName);
  v2 = *v1;
  v0[4] = v1[1];
  v3 = *(MEMORY[0x277D5C040] + 4);

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_9_20(v4);

  return MEMORY[0x2821BB9F8](v5);
}

uint64_t sub_267CB7090()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *(v2 + 40);
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_267CB7904, 0, 0);
  }

  else
  {
    v7 = *(v3 + 32);

    OUTLINED_FUNCTION_17();

    return v8();
  }
}

uint64_t sub_267CB71B8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CB71CC()
{
  v1 = (v0[3] + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_appName);
  v2 = *v1;
  v0[4] = v1[1];
  v3 = *(MEMORY[0x277D5C040] + 4);

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_9_20(v4);

  return MEMORY[0x2821BB9F8](v5);
}

uint64_t sub_267CB728C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *(v2 + 40);
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_267CB73B4, 0, 0);
  }

  else
  {
    v7 = *(v3 + 32);

    OUTLINED_FUNCTION_17();

    return v8();
  }
}

uint64_t sub_267CB73B4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_17();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_267CB7410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SearchForMessagesRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_267CB74E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SearchForMessagesRCHFlowStrategy();
  *v13 = v6;
  v13[1] = sub_267BAEBEC;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_267CB75C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SearchForMessagesRCHFlowStrategy();
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_267CB76A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5C0D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SearchForMessagesRCHFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BA83C4;

  return MEMORY[0x2821BBB48](a1, a2, v10, a4);
}

uint64_t sub_267CB7840(uint64_t a1)
{
  result = sub_267CB78BC(&qword_28022A658, type metadata accessor for SearchForMessagesRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267CB78BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow6ErrorsO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_267CB7920(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267CB7978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_267CB79C8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

double sub_267CB79F8@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299D0, &unk_267F09690);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v37 - v4;
  v6 = sub_267EF51F8();
  v7 = OUTLINED_FUNCTION_58(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_267EF5318();
  v15 = OUTLINED_FUNCTION_58(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267EF4C48();
  v22 = sub_267EF51B8();
  (*(v9 + 8))(v13, v6);
  sub_267C8EFA8(v22, v5);

  if (__swift_getEnumTagSinglePayload(v5, 1, v14) == 1)
  {
    sub_267B9FF34(v5, &qword_2802299D0, &unk_267F09690);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v23 = sub_267EF8A08();
    __swift_project_value_buffer(v23, qword_280240FB0);
    v24 = sub_267EF89F8();
    v25 = sub_267EF95E8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_267B93000, v24, v25, "#USOParse did not have any userDialogActs", v26, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_14;
  }

  (*(v17 + 32))(v21, v5, v14);
  v27 = sub_267EF5478();
  if (sub_267BAF0DC(v27))
  {
    sub_267BBD0EC(0, (v27 & 0xC000000000000001) == 0, v27);
    if ((v27 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D609870](0, v27);
    }

    else
    {
      v28 = *(v27 + 32);
    }

    sub_267EF5CF8();

    if (v39)
    {
      (*(v17 + 8))(v21, v14);

      sub_267BA7F4C(&v38, a1);
      return result;
    }

    sub_267B9FF34(&v38, &qword_28022AEF0, &qword_267EFCDE0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v34 = sub_267EF8A08();
    __swift_project_value_buffer(v34, qword_280240FB0);
    v31 = sub_267EF89F8();
    v35 = sub_267EF95E8();
    if (!os_log_type_enabled(v31, v35))
    {

      goto LABEL_13;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_267B93000, v31, v35, "#USOParse UsoTask_CodegenConverter did not return a converted task", v36, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v30 = sub_267EF8A08();
    __swift_project_value_buffer(v30, qword_280240FB0);
    v31 = sub_267EF89F8();
    v32 = sub_267EF95D8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_267B93000, v31, v32, "#USOParse UserDialogAct does not contain any user stated tasks", v33, 2u);
      OUTLINED_FUNCTION_32_0();
    }
  }

LABEL_13:
  (*(v17 + 8))(v21, v14);
LABEL_14:
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t type metadata accessor for SendMessageAppSelectionService()
{
  result = qword_28022A678;
  if (!qword_28022A678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267CB8088(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_267CB80AC, 0, 0);
}

uint64_t sub_267CB80AC()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = OUTLINED_FUNCTION_10_1(&unk_267F004A8);
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_267CB8178;

  return v5(sub_267CBA09C, v2);
}

uint64_t sub_267CB8178()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 48);
  v5 = *(v3 + 40);
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  v8 = *(v6 + 8);

  return v8(v2);
}

uint64_t sub_267CB8280(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_267EF68D8();
  OUTLINED_FUNCTION_23();
  v92 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v90 = v14 - v13;
  v15 = sub_267EF2E38();
  OUTLINED_FUNCTION_23();
  v91 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_0();
  v22 = v21 - v20;
  *(v3 + qword_28022A668) = a2;
  *(v3 + qword_28022A670) = a3;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v23);

  if (sub_267DBF838(v23, v24))
  {
    v85 = a3 & 1;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v87 = v15;
    v89 = v4;
    v25 = sub_267EF8A08();
    __swift_project_value_buffer(v25, qword_280240FB0);
    v26 = sub_267EF89F8();
    v27 = sub_267EF95D8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_267B93000, v26, v27, "#SendMessageAppSelectionService - initializing for SeAS", v28, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A690, &unk_267F01528);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_267F01440;
    v30 = type metadata accessor for AttachmentsAppResolver();
    v31 = swift_allocObject();
    *(v29 + 56) = v30;
    *(v29 + 64) = sub_267CBA1F0(&qword_28022A6A0, 255, type metadata accessor for AttachmentsAppResolver);
    *(v29 + 32) = v31;
    v32 = type metadata accessor for GroupAppResolver();
    v33 = swift_allocObject();
    *(v33 + 16) = a2;
    *(v29 + 96) = v32;
    *(v29 + 104) = sub_267CBA1F0(&qword_28022A6A8, 255, type metadata accessor for GroupAppResolver);
    *(v29 + 72) = v33;
    v34 = a1[3];
    v35 = a1[4];
    v88 = a1;
    __swift_project_boxed_opaque_existential_0(a1, v34);
    swift_retain_n();
    v84 = v22;
    sub_267EF3B68();
    v36 = v90;
    sub_267EF68C8();
    v37 = [objc_opt_self() sharedAnalytics];
    v38 = [v37 defaultMessageStream];

    v104 = sub_267CBA1AC();
    v105 = &off_2878D94D8;
    *&v103 = v38;
    v39 = sub_267EF8988();
    v40 = [objc_allocWithZone(v39) init];
    v101 = v8;
    v102 = &off_2878D5A00;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v100);
    v42 = v92;
    (*(v92 + 16))(boxed_opaque_existential_0, v90, v8);
    v99[3] = v39;
    v99[4] = &off_2878D5A10;
    v99[0] = v40;
    v43 = type metadata accessor for CoreMLAppResolver();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    v46 = swift_allocObject();
    v86 = a2;
    __swift_mutable_project_boxed_opaque_existential_1(v100, v101);
    v83 = &v83;
    OUTLINED_FUNCTION_23();
    v48 = *(v47 + 64);
    MEMORY[0x28223BE20](v49);
    OUTLINED_FUNCTION_0_0();
    v52 = v51 - v50;
    (*(v53 + 16))(v51 - v50);
    __swift_mutable_project_boxed_opaque_existential_1(v99, v39);
    OUTLINED_FUNCTION_23();
    v55 = *(v54 + 64);
    MEMORY[0x28223BE20](v56);
    OUTLINED_FUNCTION_0_0();
    v59 = (v58 - v57);
    (*(v60 + 16))(v58 - v57);
    v61 = *v59;
    v97 = v8;
    v98 = &off_2878D5A00;
    v62 = __swift_allocate_boxed_opaque_existential_0(&v96);
    (*(v42 + 32))(v62, v52, v8);
    v95 = &off_2878D5A10;
    v94 = v39;
    *&v93 = v61;
    v63 = v86;
    (*(v42 + 8))(v36, v8);
    *(v46 + 56) = v63;
    (*(v91 + 32))(v46 + OBJC_IVAR____TtC16SiriMessagesFlow17CoreMLAppResolver_siriLocale, v84, v87);
    sub_267B9A5E8(&v96, v46 + 16);
    sub_267B9A5E8(&v103, v46 + 64);
    sub_267B9A5E8(&v93, v46 + 104);
    *(v46 + 144) = v85;
    __swift_destroy_boxed_opaque_existential_0(v99);
    __swift_destroy_boxed_opaque_existential_0(v100);
    *(v29 + 136) = v43;
    *(v29 + 144) = sub_267CBA1F0(&qword_28022A6B8, 255, type metadata accessor for CoreMLAppResolver);
    *(v29 + 112) = v46;
    v64 = sub_267EF7BF8();
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    swift_allocObject();
    v67 = sub_267EF7BE8();
    v68 = MEMORY[0x277D55378];
    *(v29 + 176) = v64;
    *(v29 + 184) = v68;
    *(v29 + 152) = v67;
    if (qword_280228730 != -1)
    {
      swift_once();
    }

    v69 = qword_280240A10;
    v104 = type metadata accessor for EligibleAppFinder();
    v105 = sub_267CBA1F0(&qword_28022A688, v70, type metadata accessor for EligibleAppFinder);
    *&v103 = v69;

    v71 = sub_267EF7CD8();

    a1 = v88;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v72 = sub_267EF8A08();
    __swift_project_value_buffer(v72, qword_280240FB0);
    v73 = sub_267EF89F8();
    v74 = sub_267EF95D8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_267B93000, v73, v74, "#SendMessageAppSelectionService - initializing for always selecting the first-party app, because this type of device doesn't support SeAS.", v75, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A690, &unk_267F01528);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_267EFC020;
    v77 = sub_267EF7BF8();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    v80 = sub_267EF7BE8();
    v81 = MEMORY[0x277D55378];
    *(v76 + 56) = v77;
    *(v76 + 64) = v81;
    *(v76 + 32) = v80;
    v104 = &type metadata for MessagesAppFinder;
    v105 = sub_267CBA158();
    v71 = sub_267EF7CD8();
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v71;
}

uint64_t sub_267CB8B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a3;
  v9[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A6C0, &qword_267F01568);
  v10 = sub_267EF7D68();

  v10(a1, a2, sub_267CBA450, v9);
}

uint64_t sub_267CB8C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A390, &qword_267F00A70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = sub_267EF7D48();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  sub_267CBA45C(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_267CBA4CC(v9);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v15, v17, v10);
    if ((*(v11 + 88))(v15, v10) == *MEMORY[0x277D55428])
    {
      (*(v11 + 96))(v15, v10);
      v18 = *v15;
      v19 = *(a2 + qword_28022A668);
      v20 = sub_267BE84FC();

      (*(v11 + 8))(v17, v10);
      *(v19 + 208) = (v20 & 1) == 0;
    }

    else
    {
      v21 = *(v11 + 8);
      v21(v17, v10);
      v21(v15, v10);
    }
  }

  return a3(a1);
}

uint64_t sub_267CB8F58()
{
  v0 = *(sub_267EF7CE8() + qword_28022A668);

  return swift_deallocClassInstance();
}

uint64_t sub_267CB8FB0()
{
  type metadata accessor for EligibleAppFinder();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  qword_280240A10 = result;
  return result;
}

uint64_t sub_267CB8FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  swift_beginAccess();
  v12 = *(v4 + 16);

  v13 = sub_267C8ED84(a1, a2, v12);

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    sub_267CB93A4(a1, a2);
    v14 = v15;
    swift_beginAccess();
    swift_retain_n();
    v16 = *(v5 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v5 + 16);
    sub_267E86DF4();
    *(v5 + 16) = v21;
    swift_endAccess();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = sub_267EF93F8();
  OUTLINED_FUNCTION_11_20(v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = sub_267CBA36C;
  v19[5] = v17;
  v19[6] = &unk_267F01550;
  v19[7] = v14;

  OUTLINED_FUNCTION_9_21();
  sub_267E8FA18();
}

uint64_t sub_267CB91FC(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D857E0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A120, &qword_267F004B0);
  *v6 = v2;
  v6[1] = sub_267CB92C0;

  return MEMORY[0x282200460](a1, a2, v7);
}

uint64_t sub_267CB92C0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

void sub_267CB93A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_267EF93F8();
  OUTLINED_FUNCTION_11_20(v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v7[5] = a2;

  OUTLINED_FUNCTION_9_21();
  sub_267E8FC80();
}

uint64_t sub_267CB9470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  v6 = sub_267EF7C78();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = sub_267EF7C68();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = sub_267EF7C98();
  v5[12] = v12;
  v13 = *(v12 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267CB95EC, 0, 0);
}

uint64_t sub_267CB95EC()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_267EF6C48();
  sub_267CB9E14(v1, v2);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v3 = v0[5];
  v4 = sub_267EF8A08();
  v0[15] = __swift_project_value_buffer(v4, qword_280240FB0);

  v5 = sub_267EF89F8();
  v6 = sub_267EF95D8();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[4];
    v7 = v0[5];
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *(v9 + 4) = OUTLINED_FUNCTION_13_18(4.8149e-34, v26, v10);
    OUTLINED_FUNCTION_12_12(&dword_267B93000, v11, v12, "#EligibleAppFinder fetching apps for %s");
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v13 = v0[14];
  v14 = v0[10];
  v15 = v0[11];
  v17 = v0[8];
  v16 = v0[9];
  v18 = v0[6];
  v19 = v0[7];
  v21 = v0[4];
  v20 = v0[5];
  *v15 = &unk_2878CB6C8;
  (*(v14 + 104))(v15, *MEMORY[0x277D55398], v16);
  (*(v19 + 104))(v17, *MEMORY[0x277D553A0], v18);

  sub_267EF7C88();
  sub_267EF7CB8();
  v0[16] = sub_267EF7CA8();
  v22 = OUTLINED_FUNCTION_10_1(MEMORY[0x277D553A8]);
  v0[17] = v22;
  *v22 = v0;
  v22[1] = sub_267CB9830;
  v23 = v0[14];

  return v25(v23);
}

uint64_t sub_267CB9830()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v7 + 144) = v6;

  return MEMORY[0x2822009F8](sub_267CB9940, 0, 0);
}

uint64_t sub_267CB9940()
{
  v50 = v0;
  v1 = *(v0 + 144);
  v49 = MEMORY[0x277D84F90];
  v2 = sub_267BAF0DC(v1);
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D609870](i, *(v0 + 144));
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v4 = *(v1 + 32 + 8 * i);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      swift_once();
      goto LABEL_18;
    }

    if (sub_267BB6154(*(v0 + 32), *(v0 + 40)))
    {
      sub_267EF9BD8();
      v5 = v49[2];
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    else
    {
    }
  }

  v6 = *(v0 + 144);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);

  v2 = v49;
  *(v0 + 16) = v49;
  if (v8 != 0xD000000000000013 || 0x8000000267F0F820 != v7)
  {
    v10 = *(v0 + 32);
    v11 = *(v0 + 40);
    if ((sub_267EF9EA8() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (qword_2802287B8 != -1)
  {
    goto LABEL_52;
  }

LABEL_18:
  __swift_project_boxed_opaque_existential_0(qword_280240E58, qword_280240E70);
  v12 = sub_267DE2E8C();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = sub_267BAF0DC(v2);
    for (j = 0; v16 != j; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D609870](j, v2);
      }

      else
      {
        if (j >= *(v2 + 16))
        {
          goto LABEL_51;
        }

        v18 = *(v2 + 8 * j + 32);
      }

      if (__OFADD__(j, 1))
      {
        goto LABEL_50;
      }

      v19 = sub_267EF7C18();
      if (v20)
      {
        if (v19 == v14 && v20 == v15)
        {

LABEL_41:

          goto LABEL_42;
        }

        v22 = sub_267EF9EA8();

        if (v22)
        {
          goto LABEL_41;
        }
      }

      else
      {
      }
    }

    v23 = *(v0 + 120);

    v24 = sub_267EF89F8();
    v25 = sub_267EF95D8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49 = v27;
      *(v26 + 4) = OUTLINED_FUNCTION_13_18(4.8149e-34, v27, v28);
      OUTLINED_FUNCTION_12_12(&dword_267B93000, v29, v30, "#EligibleAppFinder adding default messaging app: %s");
      __swift_destroy_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF7C38();
    sub_267EF7C08();
    MEMORY[0x26D608F90]();
    if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_267EF9328();
    }

    sub_267EF9368();
    v2 = *(v0 + 16);
  }

LABEL_42:
  v31 = *(v0 + 120);
  v32 = *(v0 + 40);

  v33 = sub_267EF89F8();
  v34 = sub_267EF95D8();

  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 104);
  v37 = *(v0 + 112);
  v38 = *(v0 + 96);
  if (v35)
  {
    v48 = *(v0 + 112);
    v40 = *(v0 + 32);
    v39 = *(v0 + 40);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_267BA33E8(v40, v39, &v49);
    _os_log_impl(&dword_267B93000, v33, v34, "#EligibleAppFinder retrieved apps for %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    (*(v36 + 8))(v48, v38);
  }

  else
  {

    (*(v36 + 8))(v37, v38);
  }

  v43 = *(v0 + 112);
  v44 = *(v0 + 88);
  v45 = *(v0 + 64);
  **(v0 + 24) = v2;

  v46 = *(v0 + 8);

  return v46();
}