void ExtendedTokenCollection.excluding(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = OUTLINED_FUNCTION_424(v25);
  v27 = type metadata accessor for PartOfWeekExtendedToken(v26);
  v28 = OUTLINED_FUNCTION_18(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_140_1();
  v31 = OUTLINED_FUNCTION_119(v30);
  v32 = type metadata accessor for TimeExtendedToken(v31);
  v33 = OUTLINED_FUNCTION_18(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_118_1(v35, v36, v37, v38, v39, v40, v41, v42, v255);
  v43 = __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1C7009510();
  v45 = sub_1C706D154(v44);
  v46 = 0;
  v47 = *(v20 + 16);
  OUTLINED_FUNCTION_382(MEMORY[0x1E69E7CC0]);
LABEL_2:
  while (v46 != v47)
  {
    if (v46 >= *(v20 + 16))
    {
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
      return;
    }

    memcpy(v263, (v20 + 32 + 72 * v46++), 0x41uLL);
    v48 = *&v263[2];
    OUTLINED_FUNCTION_91_2();
    v270 = v49;
    v50 = OUTLINED_FUNCTION_81_3(0xE700000000000000);
    sub_1C7025F3C(v50, v51);
    v43 = &v270;
    v52 = OUTLINED_FUNCTION_216();
    MEMORY[0x1CCA5CD70](v52);
    OUTLINED_FUNCTION_460();
    if (v53)
    {
      OUTLINED_FUNCTION_252_0();
      OUTLINED_FUNCTION_227();
      v43 = &v264;
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        v55 = v54 & &v264;
        OUTLINED_FUNCTION_136();
        if (((v56 >> v55) & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_259(*(v45 + 48) + 16 * v55);
        v58 = v58 && v57 == v48;
        if (!v58)
        {
          OUTLINED_FUNCTION_179();
          v59 = sub_1C7551DBC();
          v54 = v55 + 1;
          if ((v59 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C7025F74(v263);
        goto LABEL_2;
      }
    }

    OUTLINED_FUNCTION_144_0(&v268);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_376();
    if ((v61 & 1) == 0)
    {
      OUTLINED_FUNCTION_33_7();
      sub_1C716D97C();
      v60 = v272;
    }

    v62 = v60[2];
    OUTLINED_FUNCTION_337();
    if (v65)
    {
      OUTLINED_FUNCTION_78_3(v63);
      OUTLINED_FUNCTION_116_0();
      sub_1C716D97C();
      v64 = v272;
    }

    v64[2] = v48;
    v66 = OUTLINED_FUNCTION_540(&v64[9 * v62]);
    memcpy(v66, v67, 0x41uLL);
  }

  v68 = 0;
  OUTLINED_FUNCTION_147_0();
  v70 = v69 + 32;
  v71 = *(v69 + 16);
LABEL_19:
  while (v68 != v71)
  {
    OUTLINED_FUNCTION_83_1();
    if (v65)
    {
      goto LABEL_175;
    }

    memcpy(v263, (v70 + 72 * v68++), 0x42uLL);
    v72 = *&v263[2];
    v270 = 980706640;
    v73 = OUTLINED_FUNCTION_81_3(0xE400000000000000);
    sub_1C7025FF8(v73, v74);
    v43 = &v270;
    v75 = OUTLINED_FUNCTION_216();
    MEMORY[0x1CCA5CD70](v75);
    OUTLINED_FUNCTION_460();
    if (v76)
    {
      OUTLINED_FUNCTION_252_0();
      OUTLINED_FUNCTION_227();
      v43 = &v264;
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        v78 = v77 & &v264;
        OUTLINED_FUNCTION_136();
        if (((v79 >> v78) & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_259(*(v45 + 48) + 16 * v78);
        if (!v58 || v80 != v72)
        {
          OUTLINED_FUNCTION_179();
          v82 = sub_1C7551DBC();
          v77 = v78 + 1;
          if ((v82 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C7026030(v263);
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_144_0(&v267);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_376();
    if ((v84 & 1) == 0)
    {
      OUTLINED_FUNCTION_33_7();
      sub_1C716D940();
      v83 = v272;
    }

    v85 = v83[2];
    OUTLINED_FUNCTION_337();
    if (v65)
    {
      OUTLINED_FUNCTION_78_3(v86);
      OUTLINED_FUNCTION_116_0();
      sub_1C716D940();
      v87 = v272;
    }

    v87[2] = v72;
    v88 = OUTLINED_FUNCTION_540(&v87[9 * v85]);
    memcpy(v88, v89, 0x42uLL);
  }

  v90 = 0;
  OUTLINED_FUNCTION_333();
  v92 = *(v91 + 16);
  v93 = v91 + 32;
  OUTLINED_FUNCTION_538(MEMORY[0x1E69E7CC0]);
  v94 = 56;
LABEL_36:
  while (v90 != v92)
  {
    OUTLINED_FUNCTION_114_1();
    if (v90 >= v95)
    {
      goto LABEL_176;
    }

    OUTLINED_FUNCTION_54_5((v93 + 56 * v90++));
    v96 = v263[1];
    OUTLINED_FUNCTION_36_5();
    v270 = v97;
    OUTLINED_FUNCTION_234();
    v99 = OUTLINED_FUNCTION_81_3(v98);
    sub_1C70260B4(v99, v100);
    v43 = &v270;
    v101 = OUTLINED_FUNCTION_216();
    MEMORY[0x1CCA5CD70](v101);
    OUTLINED_FUNCTION_460();
    if (v102)
    {
      OUTLINED_FUNCTION_252_0();
      OUTLINED_FUNCTION_227();
      v43 = &v264;
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_58_5();
        if ((v103 & 1) == 0)
        {
          break;
        }

        if (OUTLINED_FUNCTION_172() != *(&v96 + 1) || v104 != v96)
        {
          OUTLINED_FUNCTION_179();
          sub_1C7551DBC();
          OUTLINED_FUNCTION_443();
          if ((v106 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C70260EC(v263);
        goto LABEL_36;
      }
    }

    OUTLINED_FUNCTION_117_2(&v266);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v272 = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_33_7();
      sub_1C716DD2C();
      v43 = v272;
    }

    OUTLINED_FUNCTION_102_3();
    if (v65)
    {
      OUTLINED_FUNCTION_78_3(v108);
      OUTLINED_FUNCTION_116_0();
      sub_1C716DD2C();
      v43 = v272;
    }

    v43[2] = v96;
    v109 = OUTLINED_FUNCTION_121_2();
    OUTLINED_FUNCTION_47_8(v110, v109, v111, v112);
  }

  v113 = 0;
  OUTLINED_FUNCTION_151();
  OUTLINED_FUNCTION_302(v114 + 32);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_330(v115);
LABEL_53:
  while (1)
  {
    OUTLINED_FUNCTION_266();
    if (v113 == v116)
    {
      break;
    }

    OUTLINED_FUNCTION_114_1();
    if (v113 >= v117)
    {
      goto LABEL_177;
    }

    v118 = (v257 + 40 * v113);
    v94 = *v118;
    v119 = v118[1];
    OUTLINED_FUNCTION_122_1(v118);
    v121 = *(v120 + 32);
    ++v113;
    v264 = 0;
    v265 = 0xE000000000000000;
    sub_1C75504FC();
    sub_1C75504FC();
    v43 = &v264;
    sub_1C755180C();

    OUTLINED_FUNCTION_370();
    v122 = OUTLINED_FUNCTION_35_0();
    MEMORY[0x1CCA5CD70](v122);
    v123 = v265;
    if (*(v45 + 16))
    {
      v124 = v264;
      OUTLINED_FUNCTION_338();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        v92 = v125 & &v264;
        OUTLINED_FUNCTION_136();
        if (((v126 >> v92) & 1) == 0)
        {
          break;
        }

        v127 = (*(v45 + 48) + 16 * v92);
        if (*v127 != v124 || v127[1] != v123)
        {
          v129 = sub_1C7551DBC();
          v125 = v92 + 1;
          if ((v129 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_53;
      }
    }

    OUTLINED_FUNCTION_117_2(&v265);
    v130 = swift_isUniquelyReferenced_nonNull_native();
    *&v263[0] = &v264;
    if ((v130 & 1) == 0)
    {
      OUTLINED_FUNCTION_32_6();
      sub_1C716DCF0();
      OUTLINED_FUNCTION_231_0();
    }

    v92 = v266;
    if (v266 >= v267 >> 1)
    {
      OUTLINED_FUNCTION_63_5(v267);
      OUTLINED_FUNCTION_321();
      sub_1C716DCF0();
      OUTLINED_FUNCTION_231_0();
    }

    v266 = v92 + 1;
    OUTLINED_FUNCTION_535(&v265);
    v132 = &v264 + v92 * v131;
    *(v132 + 4) = v94;
    *(v132 + 5) = v119;
    OUTLINED_FUNCTION_433(v132);
    OUTLINED_FUNCTION_293(v133);
    OUTLINED_FUNCTION_432(v134);
    *(v135 + 64) = v121;
  }

  v136 = 0;
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_302(MEMORY[0x1E69E7CC0]);
LABEL_70:
  while (v136 != v94)
  {
    OUTLINED_FUNCTION_114_1();
    if (v136 >= v137)
    {
      goto LABEL_178;
    }

    OUTLINED_FUNCTION_54_5((v92 + 56 * v136++));
    v138 = v263[1];
    OUTLINED_FUNCTION_36_5();
    v270 = v139;
    OUTLINED_FUNCTION_234();
    v141 = OUTLINED_FUNCTION_81_3(v140);
    sub_1C70260B4(v141, v142);
    v43 = &v270;
    v143 = OUTLINED_FUNCTION_216();
    MEMORY[0x1CCA5CD70](v143);
    OUTLINED_FUNCTION_460();
    if (v144)
    {
      OUTLINED_FUNCTION_252_0();
      OUTLINED_FUNCTION_227();
      v43 = &v264;
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_58_5();
        if ((v145 & 1) == 0)
        {
          break;
        }

        if (OUTLINED_FUNCTION_172() != *(&v138 + 1) || v146 != v138)
        {
          OUTLINED_FUNCTION_179();
          sub_1C7551DBC();
          OUTLINED_FUNCTION_443();
          if ((v148 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C70260EC(v263);
        goto LABEL_70;
      }
    }

    OUTLINED_FUNCTION_117_2(&v273);
    v149 = swift_isUniquelyReferenced_nonNull_native();
    v272 = v43;
    if ((v149 & 1) == 0)
    {
      OUTLINED_FUNCTION_33_7();
      sub_1C716DD2C();
      v43 = v272;
    }

    OUTLINED_FUNCTION_102_3();
    if (v65)
    {
      OUTLINED_FUNCTION_78_3(v150);
      OUTLINED_FUNCTION_116_0();
      sub_1C716DD2C();
      v43 = v272;
    }

    v43[2] = v138;
    v151 = OUTLINED_FUNCTION_121_2();
    OUTLINED_FUNCTION_47_8(v152, v151, v153, v154);
  }

  v155 = 0;
  OUTLINED_FUNCTION_346();
  v157 = *(v156 + 16);
  while (v155 != v157)
  {
    OUTLINED_FUNCTION_529();
    if (v65)
    {
      goto LABEL_179;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_403();
    OUTLINED_FUNCTION_182();
    sub_1C702659C();
    ++v155;
    OUTLINED_FUNCTION_366();
    v158 = *v43;
    v159 = v43[1];
    v43 = &v264;
    MEMORY[0x1CCA5CD70](v158, v159);
    v160 = v265;
    if (*(v45 + 16))
    {
      OUTLINED_FUNCTION_338();
      OUTLINED_FUNCTION_227();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_89_3();
        if ((v161 & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_259(*(v45 + 48) + 896);
        if (!v58 || v162 != v160)
        {
          OUTLINED_FUNCTION_179();
          sub_1C7551DBC();
          OUTLINED_FUNCTION_537();
          if ((v164 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_3_12();
        sub_1C70265F0();
        goto LABEL_103;
      }
    }

    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_402(&a16);
    sub_1C70267FC();
    OUTLINED_FUNCTION_117_2(&a9);
    v165 = swift_isUniquelyReferenced_nonNull_native();
    *&v263[0] = &v264;
    if ((v165 & 1) == 0)
    {
      OUTLINED_FUNCTION_32_6();
      sub_1C716DCA8();
      OUTLINED_FUNCTION_231_0();
    }

    OUTLINED_FUNCTION_102_3();
    if (v65)
    {
      OUTLINED_FUNCTION_63_5(v166);
      OUTLINED_FUNCTION_116_0();
      sub_1C716DCA8();
      OUTLINED_FUNCTION_231_0();
    }

    v266 = v160;
    OUTLINED_FUNCTION_1_19();
    sub_1C70267FC();
LABEL_103:
    OUTLINED_FUNCTION_346();
  }

  v167 = 0;
  OUTLINED_FUNCTION_377(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_52_6(&v271);
LABEL_105:
  while (1)
  {
    OUTLINED_FUNCTION_151();
    if (v167 == v168)
    {
      break;
    }

    OUTLINED_FUNCTION_114_1();
    if (v167 >= v169)
    {
      goto LABEL_180;
    }

    OUTLINED_FUNCTION_266();
    v171 = (v170 + 56 * v167);
    v155 = *v171;
    v172 = v171[1];
    OUTLINED_FUNCTION_122_1(v171);
    v174 = *(v173 + 32);
    v175 = *(v173 + 40);
    v258 = *(v173 + 48);
    ++v167;
    OUTLINED_FUNCTION_93_2();
    OUTLINED_FUNCTION_474(v176);
    sub_1C75504FC();
    sub_1C75504FC();
    v261 = v155;
    v177 = OUTLINED_FUNCTION_457();
    MEMORY[0x1CCA5CD70](v177);
    v178 = v265;
    if (*(v45 + 16))
    {
      OUTLINED_FUNCTION_338();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_5();
      v155 = ~v180;
      while (1)
      {
        v181 = v179 & v155;
        OUTLINED_FUNCTION_136();
        if (((v182 >> v181) & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_298(*(v45 + 48) + 16 * v181);
        if (!v58 || v183 != v178)
        {
          v185 = OUTLINED_FUNCTION_598();
          v179 = v181 + 1;
          if ((v185 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_105;
      }
    }

    OUTLINED_FUNCTION_144_0(&v274);
    v186 = swift_isUniquelyReferenced_nonNull_native();
    *&v263[0] = v155;
    if ((v186 & 1) == 0)
    {
      OUTLINED_FUNCTION_32_6();
      sub_1C716DC6C();
      v155 = *&v263[0];
    }

    v187 = *(v155 + 16);
    OUTLINED_FUNCTION_236();
    if (v65)
    {
      OUTLINED_FUNCTION_28_4(v188);
      sub_1C716DC6C();
      OUTLINED_FUNCTION_287();
    }

    OUTLINED_FUNCTION_541();
    v191 = v190 + v187 * v189;
    *(v191 + 32) = v261;
    *(v191 + 40) = v172;
    OUTLINED_FUNCTION_433(v191);
    OUTLINED_FUNCTION_293(v192);
    *(v193 + 64) = v174;
    *(v193 + 72) = v175;
    *(v193 + 80) = v258;
  }

  v194 = 0;
  v195 = *(v256 + 16);
  OUTLINED_FUNCTION_330(MEMORY[0x1E69E7CC0]);
  while (v194 != v195)
  {
    if (v194 >= *(v196 + 16))
    {
      goto LABEL_181;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_197();
    ++v194;
    OUTLINED_FUNCTION_281();
    v197 = v265;
    if (*(v45 + 16))
    {
      OUTLINED_FUNCTION_338();
      OUTLINED_FUNCTION_227();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_5();
      v155 = ~v199;
      while (1)
      {
        v200 = v198 & v155;
        OUTLINED_FUNCTION_136();
        if (((v201 >> v200) & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_259(*(v45 + 48) + 16 * v200);
        if (!v58 || v202 != v197)
        {
          OUTLINED_FUNCTION_179();
          v204 = sub_1C7551DBC();
          v198 = v200 + 1;
          if ((v204 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_2_11();
        OUTLINED_FUNCTION_325();
        sub_1C70265F0();
        goto LABEL_138;
      }
    }

    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_325();
    sub_1C70267FC();
    OUTLINED_FUNCTION_144_0(&v272);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_406();
    if ((v205 & 1) == 0)
    {
      OUTLINED_FUNCTION_32_6();
      sub_1C716DC24();
      OUTLINED_FUNCTION_287();
    }

    OUTLINED_FUNCTION_123_1();
    if (v65)
    {
      OUTLINED_FUNCTION_28_4(v206);
      sub_1C716DC24();
      OUTLINED_FUNCTION_287();
    }

    *(v207 + 16) = v155;
    OUTLINED_FUNCTION_0_15();
    sub_1C70267FC();
LABEL_138:
    v196 = v256;
  }

  v208 = 0;
  OUTLINED_FUNCTION_306();
  v210 = *(v209 + 16);
  v211 = v209 + 32;
LABEL_140:
  while (v208 != v210)
  {
    OUTLINED_FUNCTION_114_1();
    if (v208 >= v212)
    {
      goto LABEL_182;
    }

    OUTLINED_FUNCTION_361(v211 + (v208++ << 6));
    v214 = *(&v263[2] + 1);
    v213 = *&v263[2];
    OUTLINED_FUNCTION_169();
    v270 = v215;
    v271 = 0xE500000000000000;
    sub_1C7026698(v263, &v264);
    v216 = OUTLINED_FUNCTION_173();
    MEMORY[0x1CCA5CD70](v216);
    OUTLINED_FUNCTION_460();
    if (v217)
    {
      OUTLINED_FUNCTION_252_0();
      OUTLINED_FUNCTION_227();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_5();
      v213 = ~v219;
      while (1)
      {
        v220 = v218 & v213;
        OUTLINED_FUNCTION_136();
        if (((v221 >> v220) & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_259(*(v45 + 48) + 16 * v220);
        if (!v58 || v222 != v214)
        {
          OUTLINED_FUNCTION_179();
          v224 = sub_1C7551DBC();
          v218 = v220 + 1;
          if ((v224 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C70266D0(v263);
        goto LABEL_140;
      }
    }

    OUTLINED_FUNCTION_144_0(&v271);
    v225 = swift_isUniquelyReferenced_nonNull_native();
    v272 = v213;
    if ((v225 & 1) == 0)
    {
      OUTLINED_FUNCTION_33_7();
      sub_1C716DBE8();
      v213 = v272;
    }

    OUTLINED_FUNCTION_236();
    if (v65)
    {
      OUTLINED_FUNCTION_40_11(v226);
      sub_1C716DBE8();
      v227 = v272;
    }

    v227[2] = v213;
    v228 = OUTLINED_FUNCTION_121_2();
    OUTLINED_FUNCTION_233(v229, v228, v230, v231, v263[3]);
  }

  v232 = 0;
  v233 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_52_6(&v269);
LABEL_157:
  while (1)
  {
    OUTLINED_FUNCTION_151();
    if (v232 == v234)
    {
      break;
    }

    OUTLINED_FUNCTION_83_1();
    if (v65)
    {
      goto LABEL_183;
    }

    OUTLINED_FUNCTION_266();
    v236 = (v235 + 40 * v232);
    v237 = *v236;
    v238 = v236[1];
    OUTLINED_FUNCTION_559(v236);
    v259 = *(v239 + 26);
    v240 = *(v239 + 32);
    ++v232;
    OUTLINED_FUNCTION_170();
    OUTLINED_FUNCTION_591(v241);
    sub_1C75504FC();
    v262 = v237;
    MEMORY[0x1CCA5CD70](v237, v238);
    v242 = v265;
    if (*(v45 + 16))
    {
      v237 = v264;
      OUTLINED_FUNCTION_338();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        v244 = v243 & &v264;
        OUTLINED_FUNCTION_136();
        if (((v245 >> v244) & 1) == 0)
        {
          break;
        }

        v246 = (*(v45 + 48) + 16 * v244);
        if (*v246 != v237 || v246[1] != v242)
        {
          OUTLINED_FUNCTION_179();
          v248 = sub_1C7551DBC();
          v243 = v244 + 1;
          if ((v248 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_157;
      }
    }

    v249 = swift_isUniquelyReferenced_nonNull_native();
    *&v263[0] = v233;
    if ((v249 & 1) == 0)
    {
      OUTLINED_FUNCTION_32_6();
      sub_1C716DBAC();
      OUTLINED_FUNCTION_231_0();
    }

    v250 = *(v233 + 16);
    OUTLINED_FUNCTION_236();
    if (v65)
    {
      OUTLINED_FUNCTION_28_4(v251);
      sub_1C716DBAC();
      OUTLINED_FUNCTION_231_0();
    }

    *(v233 + 16) = v237;
    v252 = (v233 + 40 * v250);
    v252[4] = v262;
    v252[5] = v238;
    v252[6] = v260;
    OUTLINED_FUNCTION_293(v252);
    OUTLINED_FUNCTION_432(v253);
    *(v254 + 58) = v259;
    *(v254 + 64) = v240;
  }

  OUTLINED_FUNCTION_128_2();
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C700BC18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = OUTLINED_FUNCTION_15_1();
  result = v4(v3);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void sub_1C700BC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v26;
  a20 = v27;
  v156 = v20;
  v29 = v28;
  v31 = OUTLINED_FUNCTION_424(v30);
  v32 = type metadata accessor for PartOfWeekExtendedToken(v31);
  v33 = OUTLINED_FUNCTION_18(v32);
  v165 = v34;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v151 - v37;
  v39 = type metadata accessor for TimeExtendedToken(0);
  v40 = OUTLINED_FUNCTION_18(v39);
  v166 = v41;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_512();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_367();
  OUTLINED_FUNCTION_319(v44);
  OUTLINED_FUNCTION_515(v45);
  v159 = v46;
  v167 = v47;
  v48 = v29[9];
  v157 = v29[8];
  OUTLINED_FUNCTION_377(v48);
  v49 = *(v23 + 16);
  OUTLINED_FUNCTION_494(MEMORY[0x1E69E7CC0]);
LABEL_2:
  OUTLINED_FUNCTION_556();
  while (v49 != v22)
  {
    if (v22 >= *(v23 + 16))
    {
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
      return;
    }

    v50 = OUTLINED_FUNCTION_434();
    memcpy(v50, v51, 0x41uLL);
    if ((v170.n128_u8[8] & 1) == 0)
    {
      v52 = OUTLINED_FUNCTION_232();
      sub_1C7025F3C(v52, v53);
      OUTLINED_FUNCTION_117_2(&a15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716D97C();
      }

      v55 = v29[2];
      v54 = v29[3];
      v56 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        OUTLINED_FUNCTION_49_6(v54);
        OUTLINED_FUNCTION_94_4(&a15);
        OUTLINED_FUNCTION_374();
        sub_1C716D97C();
        OUTLINED_FUNCTION_373();
      }

      ++v22;
      v29[2] = v56;
      OUTLINED_FUNCTION_301(&a15);
      v59 = OUTLINED_FUNCTION_539(v29 + v58 * v57);
      memcpy(v59, v60, 0x41uLL);
      OUTLINED_FUNCTION_509();
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_523();
  }

  v61 = 0;
  v62 = *(v24 + 16);
  v162 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_374();
LABEL_13:
  OUTLINED_FUNCTION_556();
  OUTLINED_FUNCTION_292();
  while (v62 != v61)
  {
    if (v61 >= *(v24 + 16))
    {
      goto LABEL_106;
    }

    v63 = OUTLINED_FUNCTION_434();
    memcpy(v63, v64, 0x42uLL);
    if ((v170.n128_u8[8] & 1) == 0)
    {
      v65 = OUTLINED_FUNCTION_232();
      sub_1C7025FF8(v65, v66);
      OUTLINED_FUNCTION_117_2(&a14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716D940();
      }

      OUTLINED_FUNCTION_412();
      if (v69)
      {
        OUTLINED_FUNCTION_49_6(v67);
        OUTLINED_FUNCTION_104_1(&a14);
        sub_1C716D940();
        OUTLINED_FUNCTION_509();
      }

      ++v61;
      v29[2] = v68;
      OUTLINED_FUNCTION_301(&a14);
      v71 = OUTLINED_FUNCTION_539(v29 + v49 * v70);
      memcpy(v71, v72, 0x42uLL);
      OUTLINED_FUNCTION_373();
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_523();
  }

  v73 = 0;
  v74 = *(v25 + 16);
  v75 = MEMORY[0x1E69E7CC0];
  v76 = 56;
LABEL_24:
  v77 = v25 + 32 + v73 * v76;
  while (v74 != v73)
  {
    if (v73 >= *(v25 + 16))
    {
      goto LABEL_107;
    }

    OUTLINED_FUNCTION_53_6(v77);
    if ((v78 & 1) == 0)
    {
      v79 = OUTLINED_FUNCTION_232();
      sub_1C70260B4(v79, v80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716DD2C();
      }

      OUTLINED_FUNCTION_412();
      if (v69)
      {
        OUTLINED_FUNCTION_49_6(v81);
        OUTLINED_FUNCTION_104_1(&a13);
        sub_1C716DD2C();
        OUTLINED_FUNCTION_373();
        v83 = 56;
      }

      ++v73;
      *(v75 + 16) = v82;
      OUTLINED_FUNCTION_44_7(v75 + v49 * v83);
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_571();
  }

  v152 = v75;
  v84 = 0;
  OUTLINED_FUNCTION_368();
  v161 = MEMORY[0x1E69E7CC0];
LABEL_35:
  v86 = v168;
  while (v74 != v84)
  {
    if (v84 >= v85[1].n128_u64[0])
    {
      goto LABEL_108;
    }

    ++v84;
    OUTLINED_FUNCTION_280();
    if ((v88 & 1) == 0)
    {
      v89 = v87[1];
      OUTLINED_FUNCTION_452(*v87);
      LODWORD(v155) = v90;
      v154 = *(v91 + 32);
      sub_1C75504FC();
      v49 = v89;
      sub_1C75504FC();
      OUTLINED_FUNCTION_117_2(&a13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v169.n128_u64[0] = v86;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_43_6();
        sub_1C716DCF0();
        v86 = v169.n128_u64[0];
      }

      v93 = v86[1].n128_u64[0];
      v94 = v93 + 1;
      if (v93 >= v86[1].n128_u64[1] >> 1)
      {
        OUTLINED_FUNCTION_94_4(&a13);
        sub_1C716DCF0();
        OUTLINED_FUNCTION_331();
        v86 = v169.n128_u64[0];
      }

      v86[1].n128_u64[0] = v94;
      v161 = v86;
      v95 = v86 + 40 * v93;
      *(v95 + 32) = v153;
      *(v95 + 40) = v89;
      OUTLINED_FUNCTION_168(v95);
      OUTLINED_FUNCTION_451(v96);
      *(v97 + 64) = v154;
      OUTLINED_FUNCTION_292();
      v85 = v160;
      goto LABEL_35;
    }
  }

  v98 = 0;
  v99 = *(v49 + 16);
  v100 = v49 + 32;
  v160 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v101 = v100 + 56 * v98;
  while (v99 != v98)
  {
    if (v98 >= *(v49 + 16))
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_53_6(v101);
    if ((v102 & 1) == 0)
    {
      v103 = OUTLINED_FUNCTION_232();
      sub_1C70260B4(v103, v104);
      OUTLINED_FUNCTION_117_2(&a12);
      v173 = v86;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716DD2C();
      }

      v49 = v86[1].n128_u64[0];
      OUTLINED_FUNCTION_450();
      v86 = v168;
      if (v69)
      {
        OUTLINED_FUNCTION_49_6(v105);
        OUTLINED_FUNCTION_94_4(&a12);
        sub_1C716DD2C();
        v107 = v160;
        v86 = v168;
        v106 = v173;
      }

      ++v98;
      v106[1].n128_u64[0] = v107;
      v160 = v106;
      OUTLINED_FUNCTION_44_7(v106 + 56 * v49);
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_571();
  }

  v108 = 0;
  v109 = v86[1].n128_u64[0];
  v163 = MEMORY[0x1E69E7CC0];
  while (v109 != v108)
  {
    OUTLINED_FUNCTION_573();
    if (v69)
    {
      goto LABEL_110;
    }

    OUTLINED_FUNCTION_148_1();
    v98 = v111 & ~v110;
    v99 = *(v112 + 72);
    OUTLINED_FUNCTION_4_9();
    sub_1C702659C();
    OUTLINED_FUNCTION_173();
    sub_1C702659C();
    v49 = *(v21 + 56);
    OUTLINED_FUNCTION_294();
    sub_1C70265F0();
    if (v49)
    {
      OUTLINED_FUNCTION_3_12();
      sub_1C70265F0();
      ++v108;
      v86 = v168;
    }

    else
    {
      OUTLINED_FUNCTION_1_19();
      sub_1C70267FC();
      OUTLINED_FUNCTION_117_2(&a16);
      v113 = swift_isUniquelyReferenced_nonNull_native();
      v114 = v86;
      v169.n128_u64[0] = v86;
      if ((v113 & 1) == 0)
      {
        OUTLINED_FUNCTION_43_6();
        sub_1C716DCA8();
        v114 = v169.n128_u64[0];
      }

      v86 = v168;
      v49 = *(v114 + 16);
      OUTLINED_FUNCTION_450();
      if (v69)
      {
        OUTLINED_FUNCTION_15(v115);
        v86 = &v169;
        OUTLINED_FUNCTION_94_4(&a16);
        sub_1C716DCA8();
        OUTLINED_FUNCTION_510();
      }

      ++v108;
      *(v116 + 16) = v117;
      v163 = v116;
      OUTLINED_FUNCTION_1_19();
      sub_1C70267FC();
    }
  }

  v118 = v159;
  v119 = *(v159 + 16);
  v120 = v159 - 24;
  v121 = MEMORY[0x1E69E7CC0];
  while (v119)
  {
    if (!*(v118 + 16))
    {
      goto LABEL_111;
    }

    OUTLINED_FUNCTION_554();
    if ((v123 & 1) == 0)
    {
      v99 = v122[1];
      v166 = *v122;
      OUTLINED_FUNCTION_594(v122[2]);
      sub_1C75504FC();
      sub_1C75504FC();
      v124 = swift_isUniquelyReferenced_nonNull_native();
      v169.n128_u64[0] = v121;
      LODWORD(v168) = v49;
      if ((v124 & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C716DC6C();
      }

      OUTLINED_FUNCTION_568();
      if (v69)
      {
        v155 = v120;
        OUTLINED_FUNCTION_143_0();
        sub_1C716DC6C();
        v120 = v155;
      }

      OUTLINED_FUNCTION_375();
      *(v125 + 48) = v158;
      *(v125 + 56) = 0;
      *(v125 + 64) = v21;
      *(v125 + 72) = v98;
      *(v125 + 80) = v168;
      v118 = v159;
      v121 = v126;
    }
  }

  OUTLINED_FUNCTION_565();
  v127 = MEMORY[0x1E69E7CC0];
  while (v99 != v121)
  {
    OUTLINED_FUNCTION_529();
    if (v69)
    {
      goto LABEL_112;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_271(v128);
    OUTLINED_FUNCTION_5_16();
    sub_1C702659C();
    v49 = v164;
    OUTLINED_FUNCTION_350();
    sub_1C702659C();
    v129 = *(v49 + 24);
    OUTLINED_FUNCTION_423();
    sub_1C70265F0();
    if (v129)
    {
      OUTLINED_FUNCTION_2_11();
      sub_1C70265F0();
      ++v121;
    }

    else
    {
      OUTLINED_FUNCTION_0_15();
      sub_1C70267FC();
      v130 = swift_isUniquelyReferenced_nonNull_native();
      v169.n128_u64[0] = v127;
      if ((v130 & 1) == 0)
      {
        OUTLINED_FUNCTION_43_6();
        sub_1C716DC24();
        v127 = v169.n128_u64[0];
      }

      v49 = *(v127 + 16);
      OUTLINED_FUNCTION_305();
      if (v69)
      {
        OUTLINED_FUNCTION_15(v131);
        OUTLINED_FUNCTION_146();
        sub_1C716DC24();
        v127 = v169.n128_u64[0];
      }

      ++v121;
      *(v127 + 16) = v129;
      OUTLINED_FUNCTION_0_15();
      OUTLINED_FUNCTION_582();
      sub_1C70267FC();
    }
  }

  v132 = 0;
  OUTLINED_FUNCTION_309_0();
  v133 = *(v38 + 2);
  v134 = MEMORY[0x1E69E7CC0];
LABEL_85:
  v135 = &v38[64 * v132 + 32];
  while (v133 != v132)
  {
    if (v132 >= *(v38 + 2))
    {
      goto LABEL_113;
    }

    OUTLINED_FUNCTION_448(v135);
    if ((v137 & 1) == 0)
    {
      v138 = OUTLINED_FUNCTION_232();
      sub_1C7026698(v138, v139);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21_11();
        sub_1C716DBE8();
      }

      OUTLINED_FUNCTION_274_0();
      if (v69)
      {
        OUTLINED_FUNCTION_49_6(v140);
        OUTLINED_FUNCTION_186();
        sub_1C716DBE8();
      }

      ++v132;
      *(v134 + 16) = v99;
      OUTLINED_FUNCTION_233((v134 + (v49 << 6)), v169, v170, v171, v172);
      goto LABEL_85;
    }

    v135 = (v136 + 64);
    ++v132;
  }

  v141 = 0;
  OUTLINED_FUNCTION_346();
  v143 = *(v142 + 16);
  while (v143 != v141)
  {
    if (v141 >= *(v142 + 16))
    {
      goto LABEL_114;
    }

    ++v141;
    OUTLINED_FUNCTION_280();
    if ((v144 & 1) == 0)
    {
      OUTLINED_FUNCTION_447();
      OUTLINED_FUNCTION_481(v145);
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_580();
      if ((v146 & 1) == 0)
      {
        OUTLINED_FUNCTION_43_6();
        sub_1C716DBAC();
      }

      OUTLINED_FUNCTION_124_1();
      if (v69)
      {
        OUTLINED_FUNCTION_137_0();
        sub_1C716DBAC();
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_168(v147);
      OUTLINED_FUNCTION_446(v148);
      OUTLINED_FUNCTION_346();
    }
  }

  OUTLINED_FUNCTION_355(&v172);
  v149 = v161;
  v150[2] = v152;
  v150[3] = v149;
  OUTLINED_FUNCTION_329_0(v150);
  OUTLINED_FUNCTION_125();
}

void sub_1C700C6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v25;
  a20 = v26;
  v28 = v27;
  v30 = OUTLINED_FUNCTION_424(v29);
  v31 = type metadata accessor for PartOfWeekExtendedToken(v30);
  v32 = OUTLINED_FUNCTION_18(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v34);
  v35 = type metadata accessor for TimeExtendedToken(0);
  v36 = OUTLINED_FUNCTION_18(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_512();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_367();
  OUTLINED_FUNCTION_165(v39);
  OUTLINED_FUNCTION_515(v28[5]);
  v145 = v40;
  v142 = v28[8];
  OUTLINED_FUNCTION_302(v28[9]);
  v41 = *(v22 + 16);
  OUTLINED_FUNCTION_494(MEMORY[0x1E69E7CC0]);
LABEL_2:
  OUTLINED_FUNCTION_556();
  while (v41 != v21)
  {
    if (v21 >= *(v22 + 16))
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
      return;
    }

    v42 = OUTLINED_FUNCTION_434();
    memcpy(v42, v43, 0x41uLL);
    if (v152.n128_u8[8])
    {
      v44 = OUTLINED_FUNCTION_232();
      sub_1C7025F3C(v44, v45);
      OUTLINED_FUNCTION_117_2(&a15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716D97C();
      }

      v47 = v28[2];
      v46 = v28[3];
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_49_6(v46);
        OUTLINED_FUNCTION_94_4(&a15);
        OUTLINED_FUNCTION_374();
        sub_1C716D97C();
        OUTLINED_FUNCTION_373();
      }

      ++v21;
      v28[2] = v48;
      OUTLINED_FUNCTION_301(&a15);
      v51 = OUTLINED_FUNCTION_539(v28 + v50 * v49);
      memcpy(v51, v52, 0x41uLL);
      OUTLINED_FUNCTION_509();
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_523();
  }

  v53 = 0;
  v54 = *(v23 + 16);
  OUTLINED_FUNCTION_374();
LABEL_13:
  OUTLINED_FUNCTION_556();
  OUTLINED_FUNCTION_292();
  while (v54 != v53)
  {
    if (v53 >= *(v23 + 16))
    {
      goto LABEL_105;
    }

    v55 = OUTLINED_FUNCTION_434();
    memcpy(v55, v56, 0x42uLL);
    if (v152.n128_u8[8])
    {
      v57 = OUTLINED_FUNCTION_232();
      sub_1C7025FF8(v57, v58);
      OUTLINED_FUNCTION_117_2(&a14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716D940();
      }

      OUTLINED_FUNCTION_412();
      if (v61)
      {
        OUTLINED_FUNCTION_49_6(v59);
        OUTLINED_FUNCTION_104_1(&a14);
        sub_1C716D940();
        OUTLINED_FUNCTION_509();
      }

      ++v53;
      v28[2] = v60;
      OUTLINED_FUNCTION_301(&a14);
      v63 = OUTLINED_FUNCTION_539(v28 + v41 * v62);
      memcpy(v63, v64, 0x42uLL);
      OUTLINED_FUNCTION_373();
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_523();
  }

  v65 = 0;
  v66 = *(v24 + 16);
  v148 = MEMORY[0x1E69E7CC0];
  v67 = 56;
  v68 = v150;
LABEL_24:
  v69 = v24 + 32 + v65 * v67;
  while (v66 != v65)
  {
    if (v65 >= *(v24 + 16))
    {
      goto LABEL_106;
    }

    OUTLINED_FUNCTION_53_6(v69);
    if (v70)
    {
      v71 = OUTLINED_FUNCTION_232();
      sub_1C70260B4(v71, v72);
      OUTLINED_FUNCTION_117_2(&a13);
      v154 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716DD2C();
      }

      v41 = v68[1].n128_u64[0];
      v73 = v68[1].n128_u64[1];
      v74 = v68;
      v75 = v41 + 1;
      v68 = v150;
      if (v41 >= v73 >> 1)
      {
        OUTLINED_FUNCTION_49_6(v73);
        v148 = v78;
        sub_1C716DD2C();
        v75 = v148;
        v68 = v150;
        v74 = v154;
      }

      ++v65;
      v74[1].n128_u64[0] = v75;
      OUTLINED_FUNCTION_374();
      OUTLINED_FUNCTION_44_7(v76 + v41 * v77);
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_571();
  }

  v79 = 0;
  OUTLINED_FUNCTION_368();
  v147 = MEMORY[0x1E69E7CC0];
  while (v66 != v79)
  {
    if (v79 >= v80[1].n128_u64[0])
    {
      goto LABEL_107;
    }

    ++v79;
    OUTLINED_FUNCTION_280();
    if (v82)
    {
      v83 = v81[1];
      OUTLINED_FUNCTION_452(*v81);
      v85 = *(v84 + 32);
      sub_1C75504FC();
      sub_1C75504FC();
      OUTLINED_FUNCTION_117_2(&a12);
      v151.n128_u64[0] = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_43_6();
        sub_1C716DCF0();
        v68 = v151.n128_u64[0];
      }

      v41 = v68[1].n128_u64[0];
      OUTLINED_FUNCTION_450();
      if (v61)
      {
        OUTLINED_FUNCTION_94_4(&a12);
        sub_1C716DCF0();
        v86 = v147;
        v68 = v151.n128_u64[0];
      }

      v68[1].n128_u64[0] = v86;
      v147 = v68;
      v87 = v68 + 40 * v41;
      *(v87 + 32) = v141;
      *(v87 + 40) = v83;
      OUTLINED_FUNCTION_277(v87);
      *(v88 + 56) = 1;
      OUTLINED_FUNCTION_451(v88);
      *(v89 + 64) = v85;
      v68 = v150;
      OUTLINED_FUNCTION_292();
      v80 = v146;
    }
  }

  v90 = 0;
  v91 = *(v41 + 16);
  v92 = v41 + 32;
  OUTLINED_FUNCTION_165(MEMORY[0x1E69E7CC0]);
LABEL_44:
  v93 = v92 + 56 * v90;
  while (v91 != v90)
  {
    if (v90 >= *(v41 + 16))
    {
      goto LABEL_108;
    }

    OUTLINED_FUNCTION_53_6(v93);
    if (v94)
    {
      v95 = OUTLINED_FUNCTION_232();
      sub_1C70260B4(v95, v96);
      OUTLINED_FUNCTION_117_2(&a11);
      v155 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716DD2C();
      }

      v41 = v68[1].n128_u64[0];
      OUTLINED_FUNCTION_450();
      v68 = v150;
      if (v61)
      {
        OUTLINED_FUNCTION_49_6(v97);
        OUTLINED_FUNCTION_94_4(&a11);
        sub_1C716DD2C();
        v99 = v146;
        v68 = v150;
        v98 = v155;
      }

      ++v90;
      v98[1].n128_u64[0] = v99;
      v146 = v98;
      OUTLINED_FUNCTION_44_7(v98 + 56 * v41);
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_571();
  }

  v100 = 0;
  v101 = v68[1].n128_u64[0];
  while (v101 != v100)
  {
    OUTLINED_FUNCTION_573();
    if (v61)
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_148_1();
    v90 = v103 & ~v102;
    v91 = *(v104 + 72);
    OUTLINED_FUNCTION_4_9();
    sub_1C702659C();
    OUTLINED_FUNCTION_173();
    sub_1C702659C();
    v41 = *(v20 + 56);
    OUTLINED_FUNCTION_294();
    sub_1C70265F0();
    if (v41)
    {
      OUTLINED_FUNCTION_1_19();
      sub_1C70267FC();
      OUTLINED_FUNCTION_117_2(&a16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106 = v68;
      v151.n128_u64[0] = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_43_6();
        sub_1C716DCA8();
        v106 = v151.n128_u64[0];
      }

      v68 = v150;
      v41 = *(v106 + 16);
      OUTLINED_FUNCTION_450();
      if (v61)
      {
        OUTLINED_FUNCTION_15(v107);
        v68 = &v151;
        OUTLINED_FUNCTION_94_4(&a16);
        sub_1C716DCA8();
        OUTLINED_FUNCTION_510();
      }

      ++v100;
      *(v108 + 16) = v109;
      OUTLINED_FUNCTION_1_19();
      OUTLINED_FUNCTION_582();
      sub_1C70267FC();
    }

    else
    {
      OUTLINED_FUNCTION_3_12();
      sub_1C70265F0();
      ++v100;
      v68 = v150;
    }
  }

  v110 = v145;
  v111 = *(v145 + 16);
  v112 = MEMORY[0x1E69E7CC0];
  while (v111)
  {
    if (!*(v110 + 16))
    {
      goto LABEL_110;
    }

    OUTLINED_FUNCTION_554();
    if (v114)
    {
      v91 = *(v113 + 8);
      OUTLINED_FUNCTION_594(*(v113 + 16));
      sub_1C75504FC();
      sub_1C75504FC();
      v115 = swift_isUniquelyReferenced_nonNull_native();
      v151.n128_u64[0] = v112;
      if ((v115 & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C716DC6C();
      }

      OUTLINED_FUNCTION_568();
      if (v61)
      {
        OUTLINED_FUNCTION_143_0();
        sub_1C716DC6C();
      }

      OUTLINED_FUNCTION_375();
      *(v116 + 48) = v144;
      *(v116 + 56) = 1;
      *(v116 + 64) = v20;
      *(v116 + 72) = v90;
      *(v116 + 80) = v41;
      v110 = v145;
      v112 = v117;
    }
  }

  OUTLINED_FUNCTION_565();
  v118 = MEMORY[0x1E69E7CC0];
  while (v91 != v112)
  {
    OUTLINED_FUNCTION_529();
    if (v61)
    {
      goto LABEL_111;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_271(v119);
    OUTLINED_FUNCTION_5_16();
    sub_1C702659C();
    v41 = v149;
    OUTLINED_FUNCTION_350();
    sub_1C702659C();
    v120 = *(v149 + 24);
    OUTLINED_FUNCTION_423();
    sub_1C70265F0();
    if (v120)
    {
      OUTLINED_FUNCTION_0_15();
      sub_1C70267FC();
      v121 = swift_isUniquelyReferenced_nonNull_native();
      v151.n128_u64[0] = v118;
      if ((v121 & 1) == 0)
      {
        OUTLINED_FUNCTION_43_6();
        sub_1C716DC24();
        v118 = v151.n128_u64[0];
      }

      v41 = *(v118 + 16);
      OUTLINED_FUNCTION_305();
      if (v61)
      {
        OUTLINED_FUNCTION_15(v122);
        OUTLINED_FUNCTION_146();
        sub_1C716DC24();
        v118 = v151.n128_u64[0];
      }

      ++v112;
      *(v118 + 16) = v120;
      OUTLINED_FUNCTION_0_15();
      OUTLINED_FUNCTION_228();
      sub_1C70267FC();
    }

    else
    {
      OUTLINED_FUNCTION_2_11();
      sub_1C70265F0();
      ++v112;
    }
  }

  v123 = 0;
  v124 = *(v142 + 16);
  v125 = MEMORY[0x1E69E7CC0];
LABEL_84:
  v126 = (v142 + 32 + (v123 << 6));
  while (v124 != v123)
  {
    if (v123 >= *(v142 + 16))
    {
      goto LABEL_112;
    }

    OUTLINED_FUNCTION_448(v126);
    if (v128)
    {
      v129 = OUTLINED_FUNCTION_232();
      sub_1C7026698(v129, v130);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21_11();
        sub_1C716DBE8();
      }

      OUTLINED_FUNCTION_274_0();
      if (v61)
      {
        OUTLINED_FUNCTION_49_6(v131);
        OUTLINED_FUNCTION_186();
        sub_1C716DBE8();
      }

      ++v123;
      *(v125 + 16) = v91;
      OUTLINED_FUNCTION_233((v125 + (v41 << 6)), v151, v152, v153[0], v153[1]);
      goto LABEL_84;
    }

    v126 = (v127 + 64);
    ++v123;
  }

  v132 = 0;
  v133 = v143;
  v134 = *(v143 + 16);
  while (v134 != v132)
  {
    if (v132 >= *(v133 + 16))
    {
      goto LABEL_113;
    }

    ++v132;
    OUTLINED_FUNCTION_280();
    if (v135 == 1)
    {
      OUTLINED_FUNCTION_447();
      OUTLINED_FUNCTION_481(v136);
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_580();
      if ((v137 & 1) == 0)
      {
        OUTLINED_FUNCTION_43_6();
        sub_1C716DBAC();
      }

      OUTLINED_FUNCTION_124_1();
      if (v61)
      {
        OUTLINED_FUNCTION_137_0();
        sub_1C716DBAC();
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_277(v138);
      *(v139 + 56) = 1;
      OUTLINED_FUNCTION_446(v139);
      v133 = v143;
    }
  }

  OUTLINED_FUNCTION_355(&v153[0].n128_i64[1]);
  v140[2] = v148;
  v140[3] = v147;
  OUTLINED_FUNCTION_329_0(v140);
  OUTLINED_FUNCTION_125();
}

void sub_1C700D1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v23;
  a20 = v24;
  v373 = v20;
  v374 = v25;
  v27 = v26;
  v347 = v28;
  v386[1] = *MEMORY[0x1E69E9840];
  v358 = type metadata accessor for PartOfWeekExtendedToken(0);
  OUTLINED_FUNCTION_3_0();
  v357 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_140_1();
  v34 = OUTLINED_FUNCTION_119(v33);
  v362 = type metadata accessor for TimeExtendedToken(v34);
  OUTLINED_FUNCTION_3_0();
  v361 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v39);
  v40 = 0;
  v41 = *v27;
  OUTLINED_FUNCTION_165(v27[1]);
  v42 = v27[3];
  v367 = v27[2];
  OUTLINED_FUNCTION_319(v42);
  v365 = v43;
  OUTLINED_FUNCTION_302(v44);
  v45 = v27[7];
  v363 = v27[6];
  v348 = v45;
  v46 = v27[9];
  v360 = v27[8];
  v359 = v46;
  v47 = v41 + 32;
  v48 = *(v41 + 16);
  v352 = MEMORY[0x1E69E7CC0];
  v355 = v41 + 32;
  v356 = v48;
LABEL_2:
  v49 = v47 + 72 * v40;
  while (v48 != v40)
  {
    if (v40 >= *(v41 + 16))
    {
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
    }

    v50 = OUTLINED_FUNCTION_349();
    memcpy(v50, v51, 0x41uLL);
    v21 = v385.n128_u64[1];
    if (!v385.n128_u64[1])
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_74_1();
    if (!v52)
    {
      v70 = *(v21 + 16);
      v71 = OUTLINED_FUNCTION_129_1();
      sub_1C7025F3C(v71, v72);
      v73 = OUTLINED_FUNCTION_129_1();
      sub_1C7025F3C(v73, v74);
      goto LABEL_13;
    }

    v375 = v21;
    OUTLINED_FUNCTION_27_8();
    MEMORY[0x1EEE9AC00](v53);
    v344 = &v375;
    v345 = v54;
    v56 = (v55 + 63) >> 6;
    v57 = OUTLINED_FUNCTION_129_1();
    if (v59 <= 0xD)
    {
      sub_1C7025F3C(v57, v58);
      v60 = OUTLINED_FUNCTION_129_1();
      sub_1C7025F3C(v60, v61);
      sub_1C75504FC();
      OUTLINED_FUNCTION_127_2();
      sub_1C75504FC();
LABEL_9:
      OUTLINED_FUNCTION_318();
      MEMORY[0x1EEE9AC00](v62);
      v63 = OUTLINED_FUNCTION_73_1();
      sub_1C71FAC38(v63, v56, 8 * v56);
      OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_157();
      sub_1C71FB7FC(v64, v65, v66, v67);
      OUTLINED_FUNCTION_176();
      if (v20)
      {
LABEL_236:
        v342 = *(v69 - 256);
        swift_willThrow();

        __break(1u);
LABEL_237:

        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        __break(1u);
        return;
      }

      v22 = v68;

      v48 = v356;
      goto LABEL_11;
    }

    sub_1C7025F3C(v57, v58);
    v76 = OUTLINED_FUNCTION_129_1();
    sub_1C7025F3C(v76, v77);
    sub_1C75504FC();
    OUTLINED_FUNCTION_127_2();
    sub_1C75504FC();
    if (swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_9;
    }

    swift_slowAlloc();
    OUTLINED_FUNCTION_157();
    sub_1C71FD078(v78, v79, v80);
    OUTLINED_FUNCTION_176();
    if (v20)
    {
      goto LABEL_237;
    }

    v22 = v81;
    OUTLINED_FUNCTION_127_2();

    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();

    v48 = v356;
LABEL_11:
    v70 = *(v22 + 16);

LABEL_13:
    if (v70 > 0x63)
    {
      v75 = OUTLINED_FUNCTION_82_2();
      sub_1C7025F74(v75);
      if (v70 < v21 >> 1)
      {
        OUTLINED_FUNCTION_117_2(v381);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v376 = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_31_7();
          sub_1C716D97C();
          v49 = v376;
        }

        v84 = *(v49 + 16);
        OUTLINED_FUNCTION_337();
        if (v86)
        {
          OUTLINED_FUNCTION_60_2(v85);
          sub_1C716D97C();
          v49 = v376;
        }

        ++v40;
        *(v49 + 16) = v21;
        OUTLINED_FUNCTION_301(v381);
        v88 = OUTLINED_FUNCTION_268(v49 + v84 * v87);
        memcpy(v88, v89, v90);
        v47 = v355;
        goto LABEL_2;
      }
    }

    else
    {
      sub_1C7025F74(&v382);
    }

    sub_1C7025F74(&v382);
LABEL_17:
    v49 += 72;
    ++v40;
  }

  v91 = 0;
  OUTLINED_FUNCTION_151();
  v93 = *(v92 + 16);
  v94 = v92 + 32;
  v351 = MEMORY[0x1E69E7CC0];
  v356 = v92 + 32;
  while (2)
  {
    v95 = v94 + 72 * v91;
LABEL_28:
    if (v93 != v91)
    {
      OUTLINED_FUNCTION_83_1();
      if (v86)
      {
        goto LABEL_227;
      }

      v96 = OUTLINED_FUNCTION_349();
      memcpy(v96, v97, 0x42uLL);
      v21 = v385.n128_u64[1];
      if (v385.n128_u64[1])
      {
        OUTLINED_FUNCTION_74_1();
        if (v98)
        {
          v375 = v21;
          OUTLINED_FUNCTION_27_8();
          MEMORY[0x1EEE9AC00](v99);
          OUTLINED_FUNCTION_120_1();
          v101 = v100 >> 6;
          v102 = OUTLINED_FUNCTION_129_1();
          if (v104 <= 0xD)
          {
            sub_1C7025FF8(v102, v103);
            OUTLINED_FUNCTION_127_2();
            sub_1C75504FC();
            v105 = OUTLINED_FUNCTION_129_1();
            sub_1C7025FF8(v105, v106);
            isStackAllocationSafe = sub_1C75504FC();
            goto LABEL_34;
          }

          sub_1C7025FF8(v102, v103);
          OUTLINED_FUNCTION_127_2();
          sub_1C75504FC();
          v118 = OUTLINED_FUNCTION_129_1();
          sub_1C7025FF8(v118, v119);
          sub_1C75504FC();
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if (isStackAllocationSafe)
          {
LABEL_34:
            MEMORY[0x1EEE9AC00](isStackAllocationSafe);
            v108 = OUTLINED_FUNCTION_73_1();
            sub_1C71FAC38(v108, v101, v22);
            v109 = OUTLINED_FUNCTION_249();
            OUTLINED_FUNCTION_132_2(v109, v110, v21);
            OUTLINED_FUNCTION_176();
            if (v20)
            {
              goto LABEL_236;
            }

            v22 = v111;
            OUTLINED_FUNCTION_127_2();
          }

          else
          {
            swift_slowAlloc();
            OUTLINED_FUNCTION_157();
            sub_1C71FD078(v120, v121, v122);
            OUTLINED_FUNCTION_176();
            if (v20)
            {
              goto LABEL_237;
            }

            v22 = v123;
            OUTLINED_FUNCTION_127_2();

            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          v112 = *(v22 + 16);
        }

        else
        {
          v112 = *(v21 + 16);
          v113 = OUTLINED_FUNCTION_129_1();
          sub_1C7025FF8(v113, v114);
          v115 = OUTLINED_FUNCTION_129_1();
          sub_1C7025FF8(v115, v116);
        }

        if (v112 > 0x63)
        {
          v117 = OUTLINED_FUNCTION_82_2();
          sub_1C7026030(v117);
          if (v112 < v21 >> 1)
          {
            OUTLINED_FUNCTION_117_2(&v380);
            v124 = swift_isUniquelyReferenced_nonNull_native();
            v376 = v95;
            if ((v124 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_7();
              sub_1C716D940();
              v95 = v376;
            }

            v125 = *(v95 + 16);
            OUTLINED_FUNCTION_337();
            if (v86)
            {
              OUTLINED_FUNCTION_60_2(v126);
              sub_1C716D940();
              v95 = v376;
            }

            v91 = (v91 + 1);
            *(v95 + 16) = v21;
            OUTLINED_FUNCTION_301(&v380);
            v128 = OUTLINED_FUNCTION_267(v95 + v125 * v127);
            memcpy(v128, v129, v130);
            v94 = v356;
            continue;
          }
        }

        else
        {
          sub_1C7026030(&v382);
        }

        sub_1C7026030(&v382);
      }

      v95 += 72;
      v91 = (v91 + 1);
      goto LABEL_28;
    }

    break;
  }

  v131 = 0;
  OUTLINED_FUNCTION_266();
  v133 = *(v132 + 16);
  v134 = v132 + 32;
  v350 = MEMORY[0x1E69E7CC0];
  v368 = v132 + 32;
  while (2)
  {
    v135 = v134 + 56 * v131;
LABEL_53:
    if (v133 != v131)
    {
      OUTLINED_FUNCTION_83_1();
      if (v86)
      {
        goto LABEL_228;
      }

      OUTLINED_FUNCTION_371();
      if (v95)
      {
        OUTLINED_FUNCTION_74_1();
        if (v136)
        {
          v93 = v346;
          v375 = v95;
          OUTLINED_FUNCTION_27_8();
          MEMORY[0x1EEE9AC00](v137);
          OUTLINED_FUNCTION_120_1();
          v139 = v138 >> 6;
          v140 = OUTLINED_FUNCTION_129_1();
          if (v142 <= 0xD)
          {
            sub_1C70260B4(v140, v141);
            OUTLINED_FUNCTION_127_2();
            sub_1C75504FC();
            v143 = OUTLINED_FUNCTION_129_1();
            sub_1C70260B4(v143, v144);
            v145 = sub_1C75504FC();
            goto LABEL_59;
          }

          sub_1C70260B4(v140, v141);
          OUTLINED_FUNCTION_127_2();
          sub_1C75504FC();
          v155 = OUTLINED_FUNCTION_129_1();
          sub_1C70260B4(v155, v156);
          sub_1C75504FC();
          v145 = swift_stdlib_isStackAllocationSafe();
          if (v145)
          {
LABEL_59:
            MEMORY[0x1EEE9AC00](v145);
            v146 = OUTLINED_FUNCTION_73_1();
            sub_1C71FAC38(v146, v139, v22);
            v147 = OUTLINED_FUNCTION_35_0();
            OUTLINED_FUNCTION_132_2(v147, v148, v95);
            OUTLINED_FUNCTION_176();
            if (v20)
            {
              goto LABEL_236;
            }

            v21 = v149;
            OUTLINED_FUNCTION_127_2();
          }

          else
          {
            swift_slowAlloc();
            OUTLINED_FUNCTION_519();
            OUTLINED_FUNCTION_157();
            sub_1C71FD078(v157, v158, v159);
            OUTLINED_FUNCTION_176();
            if (v20)
            {
              goto LABEL_237;
            }

            v21 = v160;
            OUTLINED_FUNCTION_127_2();

            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          OUTLINED_FUNCTION_486();
        }

        else
        {
          v95 = *(v95 + 16);
          v150 = OUTLINED_FUNCTION_129_1();
          sub_1C70260B4(v150, v151);
          v152 = OUTLINED_FUNCTION_129_1();
          sub_1C70260B4(v152, v153);
        }

        if (v95 > 0x63)
        {
          v154 = OUTLINED_FUNCTION_82_2();
          sub_1C70260EC(v154);
          if (v95 < v21 >> 1)
          {
            OUTLINED_FUNCTION_144_0(&v379);
            v161 = swift_isUniquelyReferenced_nonNull_native();
            v376 = v135;
            if ((v161 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_7();
              sub_1C716DD2C();
            }

            OUTLINED_FUNCTION_164_0();
            OUTLINED_FUNCTION_337();
            if (v86)
            {
              OUTLINED_FUNCTION_60_2(v162);
              sub_1C716DD2C();
              v163 = v376;
            }

            ++v131;
            *(v163 + 16) = v21;
            OUTLINED_FUNCTION_405(&v379);
            OUTLINED_FUNCTION_39_7(v164);
            v134 = v368;
            continue;
          }
        }

        else
        {
          sub_1C70260EC(&v382);
        }

        sub_1C70260EC(&v382);
      }

      v135 += 56;
      ++v131;
      goto LABEL_53;
    }

    break;
  }

  v165 = 0;
  v166 = *(v366 + 16);
  v167 = v366 + 64;
  v349 = MEMORY[0x1E69E7CC0];
  v353 = v166;
  v346[0] = v366 + 64;
LABEL_77:
  v168 = (v167 + 40 * v165);
  while (v166 != v165)
  {
    OUTLINED_FUNCTION_83_1();
    if (v86)
    {
      goto LABEL_229;
    }

    v21 = *v168;
    if (*v168)
    {
      v169 = *(v168 - 3);
      v367 = *(v168 - 4);
      OUTLINED_FUNCTION_382(*(v168 - 2));
      LODWORD(v355) = *(v168 - 8);
      v354 = *(v168 - 7);
      OUTLINED_FUNCTION_74_1();
      if (v170)
      {
        OUTLINED_FUNCTION_165(v346);
        v377 = v21;
        OUTLINED_FUNCTION_318();
        v171 = v93[4] & 0x3F;
        OUTLINED_FUNCTION_86_3();
        MEMORY[0x1EEE9AC00](v172);
        OUTLINED_FUNCTION_552();
        OUTLINED_FUNCTION_348();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v173 = sub_1C75504FC();
        if (v171 <= 0xD || (v173 = swift_stdlib_isStackAllocationSafe(), (v173 & 1) != 0))
        {
          MEMORY[0x1EEE9AC00](v173);
          v174 = OUTLINED_FUNCTION_73_1();
          sub_1C71FAC38(v174, v95, &v343);
          OUTLINED_FUNCTION_362();
          OUTLINED_FUNCTION_132_2(v175, v176, v177);
          OUTLINED_FUNCTION_176();
          if (v20)
          {
            goto LABEL_236;
          }

          v95 = v178;
          OUTLINED_FUNCTION_127_2();

          OUTLINED_FUNCTION_151();
        }

        else
        {
          swift_slowAlloc();
          OUTLINED_FUNCTION_157();
          sub_1C71FD078(v180, v181, v182);
          OUTLINED_FUNCTION_176();
          if (v20)
          {
            goto LABEL_237;
          }

          v95 = v183;
          OUTLINED_FUNCTION_127_2();

          OUTLINED_FUNCTION_151();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        v166 = v353;
        v22 = *(v95 + 16);
      }

      else
      {
        v22 = *(v21 + 16);
        OUTLINED_FUNCTION_348();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_357();
        swift_bridgeObjectRetain_n();
      }

      if (v22 > 0x63)
      {
        OUTLINED_FUNCTION_135_1();
        v95 = *(v179 + 16);

        if (v22 < v95 >> 1)
        {
          OUTLINED_FUNCTION_144_0(&v378);
          v184 = swift_isUniquelyReferenced_nonNull_native();
          v382.n128_u64[0] = v168;
          if ((v184 & 1) == 0)
          {
            OUTLINED_FUNCTION_11_10();
            sub_1C716DCF0();
            v168 = v382.n128_u64[0];
          }

          OUTLINED_FUNCTION_164_0();
          v22 = v168 + 1;
          if (v168 >= v185 >> 1)
          {
            OUTLINED_FUNCTION_41_5(v185);
            OUTLINED_FUNCTION_186();
            sub_1C716DCF0();
            v186 = v382.n128_u64[0];
          }

          ++v165;
          *(v186 + 16) = v22;
          v349 = v186;
          OUTLINED_FUNCTION_378();
          *(v187 + 32) = v188;
          *(v187 + 40) = v169;
          OUTLINED_FUNCTION_433(v187);
          OUTLINED_FUNCTION_293(v189);
          OUTLINED_FUNCTION_432(v190);
          *(v191 + 64) = v21;
          v167 = v346[0];
          goto LABEL_77;
        }
      }

      else
      {
        OUTLINED_FUNCTION_357();
        swift_bridgeObjectRelease_n();
      }
    }

    v168 += 5;
    ++v165;
  }

  v192 = 0;
  v193 = *(v365 + 16);
  v194 = v365 + 32;
  v356 = MEMORY[0x1E69E7CC0];
  v368 = v365 + 32;
  while (2)
  {
    v195 = v194 + 56 * v192;
LABEL_102:
    if (v193 != v192)
    {
      OUTLINED_FUNCTION_83_1();
      if (v86)
      {
        goto LABEL_230;
      }

      OUTLINED_FUNCTION_371();
      if (v95)
      {
        OUTLINED_FUNCTION_74_1();
        if (v196)
        {
          v93 = v346;
          v375 = v95;
          OUTLINED_FUNCTION_27_8();
          MEMORY[0x1EEE9AC00](v197);
          OUTLINED_FUNCTION_120_1();
          v199 = v198 >> 6;
          v200 = OUTLINED_FUNCTION_129_1();
          if (v202 <= 0xD)
          {
            sub_1C70260B4(v200, v201);
            OUTLINED_FUNCTION_127_2();
            sub_1C75504FC();
            v203 = OUTLINED_FUNCTION_129_1();
            sub_1C70260B4(v203, v204);
            v205 = sub_1C75504FC();
            goto LABEL_108;
          }

          sub_1C70260B4(v200, v201);
          OUTLINED_FUNCTION_127_2();
          sub_1C75504FC();
          v215 = OUTLINED_FUNCTION_129_1();
          sub_1C70260B4(v215, v216);
          sub_1C75504FC();
          v205 = swift_stdlib_isStackAllocationSafe();
          if (v205)
          {
LABEL_108:
            MEMORY[0x1EEE9AC00](v205);
            v206 = OUTLINED_FUNCTION_73_1();
            sub_1C71FAC38(v206, v199, v22);
            v207 = OUTLINED_FUNCTION_35_0();
            OUTLINED_FUNCTION_132_2(v207, v208, v95);
            OUTLINED_FUNCTION_176();
            if (v20)
            {
              goto LABEL_236;
            }

            v21 = v209;
            OUTLINED_FUNCTION_127_2();
          }

          else
          {
            swift_slowAlloc();
            OUTLINED_FUNCTION_519();
            OUTLINED_FUNCTION_157();
            sub_1C71FD078(v217, v218, v219);
            OUTLINED_FUNCTION_176();
            if (v20)
            {
              goto LABEL_237;
            }

            v21 = v220;
            OUTLINED_FUNCTION_127_2();

            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          OUTLINED_FUNCTION_486();
        }

        else
        {
          v95 = *(v95 + 16);
          v210 = OUTLINED_FUNCTION_129_1();
          sub_1C70260B4(v210, v211);
          v212 = OUTLINED_FUNCTION_129_1();
          sub_1C70260B4(v212, v213);
        }

        if (v95 > 0x63)
        {
          v214 = OUTLINED_FUNCTION_82_2();
          sub_1C70260EC(v214);
          if (v95 < v21 >> 1)
          {
            OUTLINED_FUNCTION_144_0(&v383);
            v221 = swift_isUniquelyReferenced_nonNull_native();
            v376 = v195;
            if ((v221 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_7();
              sub_1C716DD2C();
            }

            OUTLINED_FUNCTION_164_0();
            OUTLINED_FUNCTION_337();
            if (v86)
            {
              OUTLINED_FUNCTION_60_2(v222);
              sub_1C716DD2C();
              v223 = v376;
            }

            ++v192;
            *(v223 + 16) = v21;
            OUTLINED_FUNCTION_405(&v383);
            OUTLINED_FUNCTION_39_7(v224);
            v194 = v368;
            continue;
          }
        }

        else
        {
          sub_1C70260EC(&v382);
        }

        sub_1C70260EC(&v382);
      }

      v195 += 56;
      ++v192;
      goto LABEL_102;
    }

    break;
  }

  v225 = 0;
  OUTLINED_FUNCTION_368();
  v355 = MEMORY[0x1E69E7CC0];
  while (v22 != v225)
  {
    OUTLINED_FUNCTION_529();
    if (v86)
    {
      goto LABEL_231;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_271(v226);
    OUTLINED_FUNCTION_4_9();
    sub_1C702659C();
    v21 = v372;
    OUTLINED_FUNCTION_296();
    sub_1C702659C();
    v95 = *(v21 + *(v362 + 48));
    if (!v95)
    {
      goto LABEL_133;
    }

    OUTLINED_FUNCTION_74_1();
    if (v227)
    {
      OUTLINED_FUNCTION_469();
      v228 = sub_1C75504FC();
      sub_1C72B8CBC(v228, v20);
      OUTLINED_FUNCTION_507();

      OUTLINED_FUNCTION_486();
    }

    else
    {
      v95 = *(v95 + 16);
    }

    if (v95 < 0x64)
    {
LABEL_133:
      OUTLINED_FUNCTION_3_12();
      OUTLINED_FUNCTION_325();
      sub_1C70265F0();
LABEL_135:
      OUTLINED_FUNCTION_3_12();
      sub_1C70265F0();
      ++v225;
      continue;
    }

    OUTLINED_FUNCTION_135_1();
    v21 = *(v229 + 16);
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_325();
    sub_1C70265F0();
    if (v95 >= v21 >> 1)
    {
      goto LABEL_135;
    }

    OUTLINED_FUNCTION_1_19();
    sub_1C70267FC();
    OUTLINED_FUNCTION_117_2(&v382.n128_i64[1]);
    v230 = swift_isUniquelyReferenced_nonNull_native();
    v382.n128_u64[0] = v95;
    if ((v230 & 1) == 0)
    {
      OUTLINED_FUNCTION_16_10();
      sub_1C716DCA8();
      v95 = v382.n128_u64[0];
    }

    OUTLINED_FUNCTION_105_2();
    if (v86)
    {
      OUTLINED_FUNCTION_41_5(v231);
      OUTLINED_FUNCTION_116_0();
      sub_1C716DCA8();
      v95 = v382.n128_u64[0];
    }

    ++v225;
    *(v95 + 16) = v21;
    v355 = v95;
    OUTLINED_FUNCTION_1_19();
    sub_1C70267FC();
  }

  v232 = 0;
  v233 = *(v363 + 16);
  v234 = v363 + 80;
  v362 = MEMORY[0x1E69E7CC0];
  v364 = v233;
  v361 = v363 + 80;
LABEL_142:
  v235 = (v234 + 56 * v232);
  while (v233 != v232)
  {
    OUTLINED_FUNCTION_114_1();
    if (v232 >= v236)
    {
      goto LABEL_232;
    }

    v21 = *(v235 - 1);
    if (v21)
    {
      v237 = *(v235 - 5);
      OUTLINED_FUNCTION_165(*(v235 - 6));
      v367 = *(v235 - 4);
      LODWORD(v366) = *(v235 - 24);
      v238 = *(v235 - 2);
      LODWORD(v365) = *v235;
      OUTLINED_FUNCTION_74_1();
      if (v239)
      {
        v371 = v346;
        v377 = v21;
        OUTLINED_FUNCTION_318();
        v240 = v93[4] & 0x3F;
        OUTLINED_FUNCTION_86_3();
        MEMORY[0x1EEE9AC00](v241);
        OUTLINED_FUNCTION_552();
        v372 = v242;
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_290();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v243 = sub_1C75504FC();
        if (v240 <= 0xD || (v243 = swift_stdlib_isStackAllocationSafe(), (v243 & 1) != 0))
        {
          MEMORY[0x1EEE9AC00](v243);
          v244 = OUTLINED_FUNCTION_73_1();
          sub_1C71FAC38(v244, v95, 8 * v95);
          OUTLINED_FUNCTION_362();
          OUTLINED_FUNCTION_132_2(v245, v246, v247);
          OUTLINED_FUNCTION_176();
          if (v20)
          {
            goto LABEL_236;
          }

          v95 = v248;
          OUTLINED_FUNCTION_127_2();

          OUTLINED_FUNCTION_147_0();
        }

        else
        {
          swift_slowAlloc();
          OUTLINED_FUNCTION_157();
          sub_1C71FD078(v251, v252, v253);
          OUTLINED_FUNCTION_176();
          if (v20)
          {
            goto LABEL_237;
          }

          v95 = v254;
          OUTLINED_FUNCTION_127_2();

          OUTLINED_FUNCTION_147_0();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        v233 = v364;
        v237 = v372;
        v249 = *(v95 + 16);
      }

      else
      {
        v249 = *(v21 + 16);
        OUTLINED_FUNCTION_348();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_290();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_357();
        swift_bridgeObjectRetain_n();
      }

      if (v249 > 0x63)
      {
        OUTLINED_FUNCTION_135_1();
        v95 = *(v250 + 16);

        if (v249 < v95 >> 1)
        {
          OUTLINED_FUNCTION_144_0(v386);
          v255 = swift_isUniquelyReferenced_nonNull_native();
          v382.n128_u64[0] = v235;
          if ((v255 & 1) == 0)
          {
            OUTLINED_FUNCTION_11_10();
            sub_1C716DC6C();
            v235 = v382.n128_u64[0];
          }

          OUTLINED_FUNCTION_164_0();
          if (v235 >= v256 >> 1)
          {
            OUTLINED_FUNCTION_41_5(v256);
            OUTLINED_FUNCTION_186();
            sub_1C716DC6C();
            v257 = v382.n128_u64[0];
          }

          ++v232;
          *(v257 + 16) = v235 + 1;
          OUTLINED_FUNCTION_405(v386);
          OUTLINED_FUNCTION_558();
          *(v258 + 32) = v259;
          *(v258 + 40) = v237;
          OUTLINED_FUNCTION_378();
          *(v260 + 48) = v261;
          OUTLINED_FUNCTION_293(v260);
          *(v262 + 64) = v238;
          *(v262 + 72) = v21;
          *(v262 + 80) = v365;
          v234 = v361;
          goto LABEL_142;
        }
      }

      else
      {
        OUTLINED_FUNCTION_357();
        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_290();
        swift_bridgeObjectRelease_n();
      }
    }

    v235 += 56;
    ++v232;
  }

  v263 = 0;
  v264 = v348;
  v265 = *(v348 + 16);
  OUTLINED_FUNCTION_165(MEMORY[0x1E69E7CC0]);
  while (v265 != v263)
  {
    if (v263 >= *(v264 + 16))
    {
      goto LABEL_233;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_5_16();
    sub_1C702659C();
    v21 = v370;
    OUTLINED_FUNCTION_296();
    sub_1C702659C();
    v266 = *(v21 + *(v358 + 28));
    if (!v266)
    {
      goto LABEL_174;
    }

    OUTLINED_FUNCTION_74_1();
    if (v267)
    {
      OUTLINED_FUNCTION_469();
      v268 = sub_1C75504FC();
      sub_1C72B8CBC(v268, v20);
      OUTLINED_FUNCTION_507();

      OUTLINED_FUNCTION_486();
    }

    else
    {
      v266 = *(v266 + 16);
    }

    if (v266 < 0x64)
    {
LABEL_174:
      OUTLINED_FUNCTION_2_11();
      sub_1C70265F0();
LABEL_176:
      OUTLINED_FUNCTION_2_11();
      OUTLINED_FUNCTION_192();
      sub_1C70265F0();
      ++v263;
      continue;
    }

    OUTLINED_FUNCTION_135_1();
    v21 = *(v269 + 16);
    OUTLINED_FUNCTION_2_11();
    sub_1C70265F0();
    if (v266 >= v21 >> 1)
    {
      goto LABEL_176;
    }

    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_192();
    sub_1C70267FC();
    OUTLINED_FUNCTION_117_2(&a11);
    v270 = swift_isUniquelyReferenced_nonNull_native();
    v382.n128_u64[0] = v266;
    if ((v270 & 1) == 0)
    {
      OUTLINED_FUNCTION_16_10();
      sub_1C716DC24();
      v266 = v382.n128_u64[0];
    }

    OUTLINED_FUNCTION_105_2();
    if (v86)
    {
      OUTLINED_FUNCTION_41_5(v271);
      OUTLINED_FUNCTION_116_0();
      sub_1C716DC24();
      v266 = v382.n128_u64[0];
    }

    ++v263;
    *(v266 + 16) = v21;
    v368 = v266;
    OUTLINED_FUNCTION_0_15();
    sub_1C70267FC();
  }

  v272 = 0;
  OUTLINED_FUNCTION_449();
  v274 = *(v273 + 16);
  v275 = v273 + 32;
  v369 = MEMORY[0x1E69E7CC0];
  v372 = v273 + 32;
  while (2)
  {
    v276 = v275 + (v272 << 6);
LABEL_184:
    if (v274 != v272)
    {
      OUTLINED_FUNCTION_114_1();
      if (v272 >= v277)
      {
        goto LABEL_234;
      }

      v278 = *v276;
      v279 = *(v276 + 16);
      v280 = *(v276 + 32);
      v385 = *(v276 + 48);
      v383 = v279;
      v384 = v280;
      v382 = v278;
      v281 = v385.n128_u64[1];
      if (v385.n128_u64[1])
      {
        OUTLINED_FUNCTION_74_1();
        if (v282)
        {
          v375 = v281;
          OUTLINED_FUNCTION_27_8();
          MEMORY[0x1EEE9AC00](v283);
          v344 = &v375;
          v345 = v284;
          v286 = (v285 + 63) >> 6;
          v287 = OUTLINED_FUNCTION_129_1();
          if (v289 <= 0xD)
          {
            sub_1C7026698(v287, v288);
            OUTLINED_FUNCTION_127_2();
            sub_1C75504FC();
            v290 = OUTLINED_FUNCTION_129_1();
            sub_1C7026698(v290, v291);
            v292 = sub_1C75504FC();
            goto LABEL_190;
          }

          sub_1C7026698(v287, v288);
          OUTLINED_FUNCTION_127_2();
          sub_1C75504FC();
          v302 = OUTLINED_FUNCTION_129_1();
          sub_1C7026698(v302, v303);
          sub_1C75504FC();
          v292 = swift_stdlib_isStackAllocationSafe();
          if (v292)
          {
LABEL_190:
            MEMORY[0x1EEE9AC00](v292);
            sub_1C71FAC38(0, v286, v346 - ((8 * v286 + 15) & 0x3FFFFFFFFFFFFFF0));
            OUTLINED_FUNCTION_296();
            OUTLINED_FUNCTION_132_2(v293, v294, v295);
            OUTLINED_FUNCTION_176();
            if (v20)
            {
              goto LABEL_236;
            }

            v21 = v296;
            OUTLINED_FUNCTION_127_2();
          }

          else
          {
            swift_slowAlloc();
            OUTLINED_FUNCTION_519();
            OUTLINED_FUNCTION_157();
            sub_1C71FD078(v304, v305, v306);
            OUTLINED_FUNCTION_176();
            if (v20)
            {
              goto LABEL_237;
            }

            v21 = v307;
            OUTLINED_FUNCTION_127_2();

            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          OUTLINED_FUNCTION_486();
        }

        else
        {
          v281 = *(v281 + 16);
          v297 = OUTLINED_FUNCTION_129_1();
          sub_1C7026698(v297, v298);
          v299 = OUTLINED_FUNCTION_129_1();
          sub_1C7026698(v299, v300);
        }

        if (v281 > 0x63)
        {
          v301 = OUTLINED_FUNCTION_82_2();
          sub_1C70266D0(v301);
          if (v281 < v21 >> 1)
          {
            OUTLINED_FUNCTION_144_0(&a12);
            v308 = swift_isUniquelyReferenced_nonNull_native();
            v376 = v276;
            if ((v308 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_7();
              sub_1C716DBE8();
              v276 = v376;
            }

            OUTLINED_FUNCTION_164_0();
            OUTLINED_FUNCTION_337();
            if (v86)
            {
              OUTLINED_FUNCTION_60_2(v309);
              sub_1C716DBE8();
              v310 = v376;
            }

            ++v272;
            *(v310 + 16) = v21;
            v369 = v310;
            OUTLINED_FUNCTION_233((v310 + (v276 << 6)), v382, v383, v384, v385);
            v275 = v372;
            continue;
          }
        }

        else
        {
          sub_1C70266D0(&v382);
        }

        sub_1C70266D0(&v382);
      }

      v276 += 64;
      ++v272;
      goto LABEL_184;
    }

    break;
  }

  v311 = 0;
  OUTLINED_FUNCTION_306();
  v313 = *(v312 + 16);
  v314 = v312 + 64;
  v367 = MEMORY[0x1E69E7CC0];
  v366 = v312 + 64;
LABEL_208:
  v315 = (v314 + 40 * v311);
  while (v313 != v311)
  {
    OUTLINED_FUNCTION_114_1();
    if (v311 >= v316)
    {
      goto LABEL_235;
    }

    v317 = *v315;
    if (*v315)
    {
      v319 = *(v315 - 4);
      v318 = *(v315 - 3);
      v320 = *(v315 - 2);
      LODWORD(v372) = *(v315 - 8);
      LODWORD(v371) = *(v315 - 7);
      LODWORD(v370) = *(v315 - 6);
      OUTLINED_FUNCTION_74_1();
      if (v321)
      {
        OUTLINED_FUNCTION_357();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_428();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_469();
        v322 = sub_1C72B8CBC(v317, v20);

        v323 = *(v322 + 16);
      }

      else
      {
        v323 = *(v317 + 16);
        OUTLINED_FUNCTION_357();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_290();
        swift_bridgeObjectRetain_n();
      }

      if (v323 > 0x63)
      {
        OUTLINED_FUNCTION_135_1();
        v325 = *(v324 + 16);

        if (v323 < v325 >> 1)
        {
          OUTLINED_FUNCTION_117_2(&a10);
          v326 = swift_isUniquelyReferenced_nonNull_native();
          v382.n128_u64[0] = v315;
          if ((v326 & 1) == 0)
          {
            OUTLINED_FUNCTION_16_10();
            sub_1C716DBAC();
            v315 = v382.n128_u64[0];
          }

          v328 = v315[2];
          v327 = v315[3];
          if (v328 >= v327 >> 1)
          {
            OUTLINED_FUNCTION_41_5(v327);
            OUTLINED_FUNCTION_321();
            sub_1C716DBAC();
            v315 = v382.n128_u64[0];
          }

          ++v311;
          v315[2] = v328 + 1;
          v367 = v315;
          v329 = &v315[5 * v328];
          v329[4] = v319;
          v329[5] = v318;
          v329[6] = v320;
          OUTLINED_FUNCTION_570(v329);
          OUTLINED_FUNCTION_451(v330);
          *(v331 + 58) = v370;
          *(v331 + 64) = v317;
          goto LABEL_208;
        }
      }

      else
      {
        OUTLINED_FUNCTION_290();
        swift_bridgeObjectRelease_n();
      }
    }

    v315 += 5;
    ++v311;
  }

  OUTLINED_FUNCTION_127_2();

  v332 = v347;
  v333 = v351;
  *v347 = v352;
  v332[1] = v333;
  v334 = v349;
  v332[2] = v350;
  v332[3] = v334;
  v335 = v355;
  v332[4] = v356;
  v332[5] = v335;
  OUTLINED_FUNCTION_558();
  *(v336 + 48) = v338;
  *(v336 + 56) = v337;
  OUTLINED_FUNCTION_378();
  *(v339 + 64) = v341;
  *(v339 + 72) = v340;
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_125();
}

void ExtendedTokenCollection.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v22;
  a20 = v23;
  v25 = OUTLINED_FUNCTION_424(v24);
  type metadata accessor for PartOfWeekExtendedToken(v25);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_140_1();
  v29 = OUTLINED_FUNCTION_119(v28);
  v218 = type metadata accessor for TimeExtendedToken(v29);
  OUTLINED_FUNCTION_3_0();
  v224 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v33);
  v34 = 0;
  v36 = *v20;
  v35 = v20[1];
  v225 = v20[2];
  OUTLINED_FUNCTION_319(v20[3]);
  v226 = v37;
  OUTLINED_FUNCTION_165(v38);
  OUTLINED_FUNCTION_586(v20[7]);
  v220 = v39;
  OUTLINED_FUNCTION_538(v40);
  v41 = v36 + 32;
  v42 = *(v36 + 16);
  v228 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v43 = (v41 + 72 * v34);
  while (v42 != v34)
  {
    if (v34 >= *(v36 + 16))
    {
      __break(1u);
      goto LABEL_107;
    }

    memcpy(v231, v43, 0x41uLL);
    v235 = &type metadata for PersonExtendedToken;
    v44 = sub_1C7026850();
    OUTLINED_FUNCTION_585(v44);
    v232 = swift_allocObject();
    memmove(&v232[1], v43, 0x41uLL);
    v45 = OUTLINED_FUNCTION_240_0();
    sub_1C7025F3C(v45, v46);
    v47 = OUTLINED_FUNCTION_240_0();
    sub_1C7025F3C(v47, v48);
    OUTLINED_FUNCTION_17_11();
    v49();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(&v232);
      sub_1C7025F74(v231);
LABEL_104:

      goto LABEL_105;
    }

    OUTLINED_FUNCTION_485();
    if (v20)
    {
      OUTLINED_FUNCTION_117_2(&a12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a10 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716D97C();
        v20 = a10;
      }

      v52 = v20[2];
      v51 = v20[3];
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        OUTLINED_FUNCTION_49_6(v51);
        OUTLINED_FUNCTION_104_1(&a12);
        sub_1C716D97C();
        v53 = v228;
        v20 = a10;
      }

      ++v34;
      v20[2] = v53;
      OUTLINED_FUNCTION_301(&a12);
      memcpy(v20 + v52 * v54 + 32, v231, 0x41uLL);
      v41 = v36 + 32;
      goto LABEL_2;
    }

    sub_1C7025F74(v231);
    v43 += 72;
    ++v34;
  }

  v55 = 0;
  v56 = *(v35 + 16);
  OUTLINED_FUNCTION_330(MEMORY[0x1E69E7CC0]);
  v57 = v35 + 32;
LABEL_14:
  v58 = (v57 + 72 * v55);
  while (v56 != v55)
  {
    if (v55 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_121;
    }

    memcpy(v231, v58, 0x42uLL);
    v235 = &type metadata for PetExtendedToken;
    v59 = sub_1C70268A4();
    OUTLINED_FUNCTION_585(v59);
    v232 = swift_allocObject();
    memmove(&v232[1], v58, 0x42uLL);
    v60 = OUTLINED_FUNCTION_240_0();
    sub_1C7025FF8(v60, v61);
    v62 = OUTLINED_FUNCTION_240_0();
    sub_1C7025FF8(v62, v63);
    OUTLINED_FUNCTION_17_11();
    v64();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(&v232);
      OUTLINED_FUNCTION_192();

      sub_1C7026030(v231);
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_485();
    if (v20)
    {
      OUTLINED_FUNCTION_117_2(&v235);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      a10 = v20;
      v227 = v57;
      if ((v65 & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716D940();
        v20 = a10;
      }

      v67 = v20[2];
      v66 = v20[3];
      if (v67 >= v66 >> 1)
      {
        OUTLINED_FUNCTION_49_6(v66);
        OUTLINED_FUNCTION_146();
        sub_1C716D940();
        v20 = a10;
      }

      OUTLINED_FUNCTION_440();
      OUTLINED_FUNCTION_301(&v235);
      memcpy(v20 + v67 * v68 + 32, v231, 0x42uLL);
      v57 = v227;
      goto LABEL_14;
    }

    sub_1C7026030(v231);
    v58 += 72;
    ++v55;
  }

  v69 = 0;
  v70 = v225;
  v71 = v225[2];
  v216 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v72 = &v225[7 * v69 + 4];
  while (v71 != v69)
  {
    v73 = v70[2];
    if (v69 >= v73)
    {
      __break(1u);
      goto LABEL_135;
    }

    v74 = OUTLINED_FUNCTION_272();
    v78 = OUTLINED_FUNCTION_587(v75, v74, v76, v77);
    OUTLINED_FUNCTION_585(v78);
    OUTLINED_FUNCTION_439();
    v232 = swift_allocObject();
    OUTLINED_FUNCTION_398(v232, v72[3].n128_u64[0], v72[2], v72[1], *v72);
    v79 = OUTLINED_FUNCTION_240_0();
    sub_1C70260B4(v79, v80);
    v81 = OUTLINED_FUNCTION_240_0();
    sub_1C70260B4(v81, v82);
    OUTLINED_FUNCTION_17_11();
    v83();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(&v232);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_192();

      sub_1C70260EC(v231);
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_485();
    if (v20)
    {
      OUTLINED_FUNCTION_117_2(v231);
      v84 = swift_isUniquelyReferenced_nonNull_native();
      a10 = v20;
      if ((v84 & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716DD2C();
        v20 = a10;
      }

      v85 = v20[3];
      if (v20[2] >= v85 >> 1)
      {
        OUTLINED_FUNCTION_49_6(v85);
        OUTLINED_FUNCTION_146();
        sub_1C716DD2C();
        v20 = a10;
      }

      OUTLINED_FUNCTION_440();
      OUTLINED_FUNCTION_404(v231);
      OUTLINED_FUNCTION_47_8(v86, v231[0], v231[1], v231[2]);
      v70 = v225;
      goto LABEL_27;
    }

    sub_1C70260EC(v231);
    v72 = (v72 + 56);
    ++v69;
  }

  OUTLINED_FUNCTION_373();
  v215 = MEMORY[0x1E69E7CC0];
  v89 = v88 + 64;
  v214 = v88 + 64;
LABEL_40:
  for (i = (v89 + 40 * v87); ; i += 5)
  {
    OUTLINED_FUNCTION_266();
    if (v91 == v92)
    {
      break;
    }

    OUTLINED_FUNCTION_114_1();
    if (v94 >= v93)
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      return;
    }

    v20 = *(i - 4);
    v95 = *(i - 3);
    v96 = *(i - 2);
    v97 = *(i - 8);
    v98 = *(i - 7);
    v99 = *i;
    v231[1].n128_u64[1] = &type metadata for GenericLocationExtendedToken;
    v231[2].n128_u64[0] = sub_1C702694C();
    OUTLINED_FUNCTION_328();
    v100 = swift_allocObject();
    v231[0].n128_u64[0] = v100;
    v225 = v20;
    *(v100 + 16) = v20;
    *(v100 + 24) = v95;
    *(v100 + 32) = v96;
    *(v100 + 40) = v97;
    *(v100 + 41) = v98;
    *(v100 + 48) = v99;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_17_11();
    v101();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(v231);
      OUTLINED_FUNCTION_464();

      OUTLINED_FUNCTION_462();
      OUTLINED_FUNCTION_194();

      goto LABEL_104;
    }

    OUTLINED_FUNCTION_483();
    if (v20)
    {
      OUTLINED_FUNCTION_117_2(&v230);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_353();
      if ((v102 & 1) == 0)
      {
        OUTLINED_FUNCTION_59_2();
        sub_1C716DCF0();
        OUTLINED_FUNCTION_182();
      }

      v104 = v20[2];
      v103 = v20[3];
      v105 = v104 + 1;
      if (v104 >= v103 >> 1)
      {
        OUTLINED_FUNCTION_15(v103);
        v20 = v229;
        OUTLINED_FUNCTION_104_1(&v230);
        sub_1C716DCF0();
        OUTLINED_FUNCTION_182();
      }

      v20[2] = v105;
      OUTLINED_FUNCTION_535(&v230);
      v107 = v20 + v104 * v106;
      *(v107 + 4) = v225;
      *(v107 + 5) = v95;
      *(v107 + 6) = v96;
      v107[56] = v97;
      v107[57] = v98;
      *(v107 + 8) = v99;
      v89 = v214;
      goto LABEL_40;
    }
  }

  v108 = 0;
  v109 = v226[2];
  OUTLINED_FUNCTION_377(MEMORY[0x1E69E7CC0]);
  v110 = 56;
LABEL_53:
  for (j = (v226 + v108 * v110 + 32); ; j = (j + 56))
  {
    OUTLINED_FUNCTION_151();
    if (v109 == v108)
    {
      break;
    }

    OUTLINED_FUNCTION_114_1();
    if (v108 >= v113)
    {
      goto LABEL_138;
    }

    v114 = OUTLINED_FUNCTION_272();
    v118 = OUTLINED_FUNCTION_587(v115, v114, v116, v117);
    OUTLINED_FUNCTION_585(v118);
    OUTLINED_FUNCTION_439();
    v232 = swift_allocObject();
    OUTLINED_FUNCTION_398(v232, j[3].n128_u64[0], j[2], j[1], *j);
    v119 = OUTLINED_FUNCTION_240_0();
    sub_1C70260B4(v119, v120);
    v121 = OUTLINED_FUNCTION_240_0();
    sub_1C70260B4(v121, v122);
    OUTLINED_FUNCTION_17_11();
    v123();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(&v232);
      OUTLINED_FUNCTION_464();
      OUTLINED_FUNCTION_462();
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_192();

      sub_1C70260EC(v231);
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_485();
    if (v20)
    {
      OUTLINED_FUNCTION_117_2(&v237);
      v124 = swift_isUniquelyReferenced_nonNull_native();
      a10 = v20;
      if ((v124 & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716DD2C();
        v20 = a10;
      }

      v125 = v20[3];
      if (v20[2] >= v125 >> 1)
      {
        OUTLINED_FUNCTION_49_6(v125);
        OUTLINED_FUNCTION_146();
        sub_1C716DD2C();
        v20 = a10;
      }

      OUTLINED_FUNCTION_440();
      OUTLINED_FUNCTION_404(&v237);
      OUTLINED_FUNCTION_47_8(v126, v231[0], v231[1], v231[2]);
      goto LABEL_53;
    }

    sub_1C70260EC(v231);
    ++v108;
  }

  v127 = 0;
  v128 = *(v112 + 16);
  v226 = MEMORY[0x1E69E7CC0];
  v129 = v218;
  while (v128 != v127)
  {
    if (v127 >= *(v112 + 16))
    {
      goto LABEL_139;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_521(v130);
    OUTLINED_FUNCTION_4_9();
    sub_1C702659C();
    v231[1].n128_u64[1] = v129;
    OUTLINED_FUNCTION_67_4();
    v231[2].n128_u64[0] = sub_1C70259B4(&qword_1EDD0A7D0, v131);
    __swift_allocate_boxed_opaque_existential_0(v231);
    OUTLINED_FUNCTION_400();
    sub_1C702659C();
    OUTLINED_FUNCTION_17_11();
    v132();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(v231);
      OUTLINED_FUNCTION_228();

      OUTLINED_FUNCTION_464();
      OUTLINED_FUNCTION_462();
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_192();

      OUTLINED_FUNCTION_3_12();
      sub_1C70265F0();
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_483();
    if (v20)
    {
      OUTLINED_FUNCTION_1_19();
      sub_1C70267FC();
      OUTLINED_FUNCTION_117_2(&a9);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_353();
      if ((v133 & 1) == 0)
      {
        OUTLINED_FUNCTION_59_2();
        sub_1C716DCA8();
        OUTLINED_FUNCTION_182();
      }

      v134 = v20[3];
      if (v20[2] >= v134 >> 1)
      {
        OUTLINED_FUNCTION_15(v134);
        v20 = v229;
        OUTLINED_FUNCTION_146();
        sub_1C716DCA8();
        OUTLINED_FUNCTION_182();
      }

      OUTLINED_FUNCTION_440();
      v226 = v20;
      OUTLINED_FUNCTION_1_19();
      sub_1C70267FC();
      v129 = v218;
    }

    else
    {
      OUTLINED_FUNCTION_3_12();
      sub_1C70265F0();
      ++v127;
    }

    OUTLINED_FUNCTION_151();
  }

  OUTLINED_FUNCTION_513(&v234);
  v224 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_382(v135 + 80);
LABEL_79:
  for (k = (v136 + 56 * v137); ; k += 56)
  {
    OUTLINED_FUNCTION_151();
    if (v139 == v140)
    {
      break;
    }

    OUTLINED_FUNCTION_114_1();
    if (v142 >= v141)
    {
      goto LABEL_140;
    }

    v20 = *(k - 6);
    v143 = *(k - 5);
    v144 = *(k - 4);
    v145 = *(k - 24);
    v147 = *(k - 2);
    v146 = *(k - 1);
    v148 = *k;
    v231[1].n128_u64[1] = &type metadata for PartOfDayExtendedToken;
    v231[2].n128_u64[0] = sub_1C70269A0();
    OUTLINED_FUNCTION_520();
    v149 = swift_allocObject();
    v231[0].n128_u64[0] = v149;
    *(v149 + 16) = v20;
    *(v149 + 24) = v143;
    *(v149 + 32) = v144;
    *(v149 + 40) = v145;
    *(v149 + 48) = v147;
    *(v149 + 56) = v146;
    *(v149 + 64) = v148;
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_348();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_17_11();
    v150();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(v231);
      OUTLINED_FUNCTION_228();

      OUTLINED_FUNCTION_464();
      OUTLINED_FUNCTION_462();
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_192();

      OUTLINED_FUNCTION_308();

      goto LABEL_104;
    }

    OUTLINED_FUNCTION_483();
    if (v20)
    {
      OUTLINED_FUNCTION_117_2(&v236);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_353();
      if ((v151 & 1) == 0)
      {
        OUTLINED_FUNCTION_59_2();
        sub_1C716DC6C();
        OUTLINED_FUNCTION_182();
      }

      OUTLINED_FUNCTION_331();
      v153 = v20[2];
      v152 = v20[3];
      v154 = v153 + 1;
      if (v153 >= v152 >> 1)
      {
        OUTLINED_FUNCTION_15(v152);
        v20 = v229;
        OUTLINED_FUNCTION_104_1(&v236);
        sub_1C716DC6C();
        OUTLINED_FUNCTION_331();
        OUTLINED_FUNCTION_182();
      }

      v20[2] = v154;
      OUTLINED_FUNCTION_404(&v236);
      OUTLINED_FUNCTION_378();
      *(v155 + 32) = v156;
      *(v155 + 40) = v143;
      *(v155 + 48) = v144;
      *(v155 + 56) = v145;
      *(v155 + 64) = v147;
      *(v155 + 72) = v146;
      *(v155 + 80) = v148;
      v136 = v219;
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_331();
  }

  v157 = 0;
  v158 = v221;
  v159 = *(v221 + 16);
  while (v159 != v157)
  {
    if (v157 >= *(v158 + 16))
    {
      goto LABEL_141;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_521(v160);
    OUTLINED_FUNCTION_5_16();
    sub_1C702659C();
    OUTLINED_FUNCTION_306();
    v231[1].n128_u64[1] = v161;
    OUTLINED_FUNCTION_66_6();
    v231[2].n128_u64[0] = sub_1C70259B4(&qword_1EC215E28, v162);
    __swift_allocate_boxed_opaque_existential_0(v231);
    OUTLINED_FUNCTION_400();
    sub_1C702659C();
    OUTLINED_FUNCTION_17_11();
    v163();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(v231);
      OUTLINED_FUNCTION_228();

      OUTLINED_FUNCTION_464();
      OUTLINED_FUNCTION_462();
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_192();

      OUTLINED_FUNCTION_308();

      OUTLINED_FUNCTION_582();

      OUTLINED_FUNCTION_2_11();
      sub_1C70265F0();
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_483();
    if (v20)
    {
      OUTLINED_FUNCTION_0_15();
      OUTLINED_FUNCTION_402(&v233);
      sub_1C70267FC();
      OUTLINED_FUNCTION_117_2(&v234);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_353();
      if ((v164 & 1) == 0)
      {
        OUTLINED_FUNCTION_59_2();
        sub_1C716DC24();
        OUTLINED_FUNCTION_182();
      }

      v165 = v20[3];
      if (v20[2] >= v165 >> 1)
      {
        OUTLINED_FUNCTION_15(v165);
        v20 = v229;
        OUTLINED_FUNCTION_146();
        sub_1C716DC24();
        OUTLINED_FUNCTION_182();
      }

      OUTLINED_FUNCTION_440();
      OUTLINED_FUNCTION_0_15();
      sub_1C70267FC();
    }

    else
    {
      OUTLINED_FUNCTION_2_11();
      sub_1C70265F0();
      ++v157;
    }

    v158 = v221;
  }

LABEL_107:
  v166 = 0;
  v167 = *(v220 + 16);
  v168 = MEMORY[0x1E69E7CC0];
LABEL_108:
  v169 = v220 + 32 + (v166 << 6);
  while (v167 != v166)
  {
    OUTLINED_FUNCTION_114_1();
    if (v166 >= v170)
    {
      goto LABEL_142;
    }

    v171 = *v169;
    v172 = *(v169 + 16);
    v173 = *(v169 + 48);
    v231[2] = *(v169 + 32);
    v231[3] = v173;
    v231[0] = v171;
    v231[1] = v172;
    v235 = &type metadata for TripExtendedToken;
    v236 = sub_1C70269F4();
    v174 = swift_allocObject();
    v232 = v174;
    v175 = *(v169 + 48);
    v177 = *v169;
    v176 = *(v169 + 16);
    *(v174 + 48) = *(v169 + 32);
    *(v174 + 64) = v175;
    *(v174 + 16) = v177;
    *(v174 + 32) = v176;
    v178 = OUTLINED_FUNCTION_240_0();
    sub_1C7026698(v178, v179);
    v180 = OUTLINED_FUNCTION_240_0();
    sub_1C7026698(v180, v181);
    OUTLINED_FUNCTION_17_11();
    v182();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(&v232);
      OUTLINED_FUNCTION_228();

      OUTLINED_FUNCTION_464();
      OUTLINED_FUNCTION_462();
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_192();

      OUTLINED_FUNCTION_308();

      OUTLINED_FUNCTION_582();

      sub_1C70266D0(v231);
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_485();
    if (v20)
    {
      v183 = swift_isUniquelyReferenced_nonNull_native();
      a10 = v168;
      if ((v183 & 1) == 0)
      {
        OUTLINED_FUNCTION_21_11();
        sub_1C716DBE8();
        v168 = a10;
      }

      v184 = v168;
      v185 = v168[2];
      v186 = v184[3];
      if (v185 >= v186 >> 1)
      {
        OUTLINED_FUNCTION_49_6(v186);
        OUTLINED_FUNCTION_146();
        sub_1C716DBE8();
        v184 = a10;
      }

      ++v166;
      v184[2] = v185 + 1;
      OUTLINED_FUNCTION_233(&v184[8 * v185], v231[0], v231[1], v231[2], v231[3]);
      v168 = v187;
      goto LABEL_108;
    }

    sub_1C70266D0(v231);
    v169 += 64;
    ++v166;
  }

LABEL_121:
  OUTLINED_FUNCTION_513(&v231[2]);
  v222 = MEMORY[0x1E69E7CC0];
  v190 = v189 + 64;
LABEL_122:
  for (m = (v190 + 40 * v188); ; m += 5)
  {
    OUTLINED_FUNCTION_558();
    if (v192 == v193)
    {
      break;
    }

    OUTLINED_FUNCTION_114_1();
    if (v195 >= v194)
    {
      goto LABEL_143;
    }

    v196 = *(m - 4);
    v197 = *(m - 3);
    v198 = *(m - 2);
    v199 = *(m - 8);
    v200 = *(m - 7);
    v201 = *(m - 6);
    v202 = *m;
    v231[1].n128_u64[1] = &type metadata for EventExtendedToken;
    v231[2].n128_u64[0] = sub_1C7026A9C();
    OUTLINED_FUNCTION_328();
    v203 = swift_allocObject();
    v231[0].n128_u64[0] = v203;
    *(v203 + 16) = v196;
    *(v203 + 24) = v197;
    *(v203 + 32) = v198;
    *(v203 + 40) = v199;
    *(v203 + 41) = v200;
    *(v203 + 42) = v201;
    *(v203 + 48) = v202;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_17_11();
    v204();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(v231);
      OUTLINED_FUNCTION_228();

      OUTLINED_FUNCTION_464();
      OUTLINED_FUNCTION_462();
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_192();

      OUTLINED_FUNCTION_308();

      goto LABEL_104;
    }

    OUTLINED_FUNCTION_483();
    if (v196)
    {
      OUTLINED_FUNCTION_117_2(&v233);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_353();
      if ((v205 & 1) == 0)
      {
        OUTLINED_FUNCTION_59_2();
        sub_1C716DBAC();
        OUTLINED_FUNCTION_182();
      }

      OUTLINED_FUNCTION_331();
      v207 = *(v196 + 2);
      v206 = *(v196 + 3);
      v208 = v207 + 1;
      if (v207 >= v206 >> 1)
      {
        OUTLINED_FUNCTION_15(v206);
        v196 = v229;
        OUTLINED_FUNCTION_104_1(&v233);
        sub_1C716DBAC();
        OUTLINED_FUNCTION_331();
        OUTLINED_FUNCTION_182();
      }

      *(v196 + 2) = v208;
      OUTLINED_FUNCTION_535(&v233);
      OUTLINED_FUNCTION_378();
      *(v209 + 32) = v210;
      *(v209 + 40) = v197;
      *(v209 + 48) = v198;
      *(v209 + 56) = v199;
      *(v209 + 57) = v200;
      *(v209 + 58) = v201;
      *(v209 + 64) = v202;
      OUTLINED_FUNCTION_306();
      goto LABEL_122;
    }

    OUTLINED_FUNCTION_331();
  }

LABEL_135:
  *v217 = v73;
  v217[1] = v223;
  v217[2] = v216;
  v217[3] = v215;
  v217[4] = v225;
  v217[5] = v226;
  v217[6] = v224;
  OUTLINED_FUNCTION_449();
  v212[7] = v213;
  v212[8] = v211;
  v212[9] = v222;
LABEL_105:
  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_125();
}

uint64_t static ExtendedTokenCollection.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v21 = a1[6];
  v17 = a1[8];
  v15 = a1[9];
  v4 = a2[3];
  v5 = a2[5];
  v19 = a1[7];
  v20 = a2[6];
  v18 = a2[7];
  v16 = a2[8];
  v14 = a2[9];
  if ((sub_1C7002298(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_98_1();
  if ((sub_1C7002298(v6, v7) & 1) == 0)
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_15_1();
  if ((sub_1C7002324(v8, v9) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C7002438(v2, v4) & 1) == 0)
  {
    return 0;
  }

  v10 = OUTLINED_FUNCTION_57_0();
  if ((sub_1C7002324(v10, v11) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C70024FC(v3, v5) & 1) == 0)
  {
    return 0;
  }

  sub_1C7002C04(v21, v20);
  if ((v12 & 1) == 0 || (sub_1C7002FDC(v19, v18) & 1) == 0 || (sub_1C70032E8(v17, v16) & 1) == 0)
  {
    return 0;
  }

  return sub_1C70033FC(v15, v14);
}

uint64_t sub_1C700FF58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001C7599D80 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001C7599DA0 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001C7599DC0 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001DLL && 0x80000001C7599DE0 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001C7599E00 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x80000001C7599E20 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x80000001C7599E40 == a2;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x80000001C7599E60 == a2;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x80000001C7599E80 == a2;
                  if (v13 || (sub_1C7551DBC() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000013 && 0x80000001C7599EA0 == a2)
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

unint64_t sub_1C701025C(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
    case 5:
    case 8:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7010348()
{
  sub_1C7551F3C();
  v0 = OUTLINED_FUNCTION_224();
  MEMORY[0x1CCA5E460](v0);
  return sub_1C7551FAC();
}

uint64_t sub_1C7010390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C700FF58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70103B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C7010254();
  *a1 = result;
  return result;
}

uint64_t sub_1C70103E0(uint64_t a1)
{
  v2 = sub_1C7026B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C701041C(uint64_t a1)
{
  v2 = sub_1C7026B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ExtendedTokenCollection.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E38);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_61_1();
  v2 = OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_70(v2, v3);
  v4 = sub_1C7026B2C();
  sub_1C75504FC();
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_365();
  sub_1C755200C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E40);
  sub_1C7026B80();
  OUTLINED_FUNCTION_46_6();
  sub_1C7551D2C();
  if (v4)
  {
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E48);
    sub_1C7026C58();
    OUTLINED_FUNCTION_37_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215698);
    sub_1C7026D30();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E50);
    sub_1C7026E08();
    OUTLINED_FUNCTION_37_10();
    OUTLINED_FUNCTION_534();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E58);
    sub_1C7026EE0();
    OUTLINED_FUNCTION_37_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E60);
    sub_1C7026F94();
    OUTLINED_FUNCTION_37_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E68);
    sub_1C702706C();
    OUTLINED_FUNCTION_37_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E70);
    sub_1C7027120();
    OUTLINED_FUNCTION_37_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E78);
    sub_1C70271F8();
    OUTLINED_FUNCTION_37_10();
  }

  v5 = OUTLINED_FUNCTION_380();
  v6(v5, v0);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

void ExtendedTokenCollection.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E90);
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v21 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_70(v21, v22);
  sub_1C7026B2C();
  OUTLINED_FUNCTION_316();
  sub_1C7551FFC();
  if (v10)
  {
    OUTLINED_FUNCTION_394();
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v20)
    {

      if ((v17 & 1) == 0)
      {
LABEL_9:
        if (!v15)
        {
          goto LABEL_11;
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    else if (!v17)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_325();

    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E40);
  LOBYTE(v46[0]) = 0;
  sub_1C70272D0();
  OUTLINED_FUNCTION_25_5();
  v45 = v47[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E48);
  LOBYTE(v46[0]) = 1;
  sub_1C70273A8();
  OUTLINED_FUNCTION_25_5();
  v44 = v47[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215698);
  LOBYTE(v46[0]) = 2;
  sub_1C7027480();
  OUTLINED_FUNCTION_316();
  sub_1C7551C1C();
  v43 = v47[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E50);
  LOBYTE(v46[0]) = 3;
  sub_1C7027558();
  OUTLINED_FUNCTION_25_5();
  v42 = v47[0];
  LOBYTE(v46[0]) = 4;
  OUTLINED_FUNCTION_316();
  sub_1C7551C1C();
  v41 = v47[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E58);
  LOBYTE(v46[0]) = 5;
  sub_1C7027630();
  OUTLINED_FUNCTION_25_5();
  v40 = v47[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E60);
  LOBYTE(v46[0]) = 6;
  sub_1C70276E4();
  OUTLINED_FUNCTION_25_5();
  v39 = v47[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E68);
  LOBYTE(v46[0]) = 7;
  sub_1C70277BC();
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_165(v47[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E70);
  LOBYTE(v46[0]) = 8;
  sub_1C7027870();
  OUTLINED_FUNCTION_25_5();
  v38 = v47[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E78);
  v48 = 9;
  sub_1C7027948();
  sub_1C7551C1C();
  v23 = OUTLINED_FUNCTION_69_0();
  v24(v23);
  v37 = a10;
  v25 = v45;
  v26 = v44;
  v46[0] = v45;
  v46[1] = v44;
  v27 = v43;
  v28 = v42;
  v46[2] = v43;
  v46[3] = v42;
  v29 = v41;
  v30 = v40;
  v46[4] = v41;
  v46[5] = v40;
  OUTLINED_FUNCTION_558();
  v46[6] = v32;
  v46[7] = v31;
  OUTLINED_FUNCTION_378();
  v46[8] = v34;
  v46[9] = v33;
  memcpy(v14, v46, 0x50uLL);
  sub_1C7027A20(v46, v47);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v47[0] = v25;
  v47[1] = v26;
  v47[2] = v27;
  v47[3] = v28;
  v47[4] = v29;
  v47[5] = v30;
  OUTLINED_FUNCTION_151();
  v47[6] = v36;
  v47[7] = v35;
  v47[8] = v38;
  v47[9] = v37;
  sub_1C7027A58(v47);
LABEL_11:
  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_125();
}

void ExtendedTokenCollection.assetScopingTokens.getter()
{
  OUTLINED_FUNCTION_124();
  v2 = ExtendedTokenCollection.allTokens.getter(v1);
  v3 = 0;
  v4 = *(v2 + 16);
  v5 = v2 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  v22 = v2;
  while (1)
  {
    if (v4 == v3)
    {
      goto LABEL_14;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    sub_1C6FB5E28(v5, &v24);
    v7 = v25;
    v8 = v26;
    __swift_project_boxed_opaque_existential_1(&v24, v25);
    v9 = ExtendedToken.isUsedForAssetScoping.getter(v7, v8);
    if (v0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v24);

LABEL_14:

      OUTLINED_FUNCTION_322();
      OUTLINED_FUNCTION_125();
      return;
    }

    if (v9)
    {
      sub_1C6F699F8(&v24, v23);
      v27 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21_11();
        sub_1C716D5D0();
      }

      v10 = *(v6 + 24);
      if (*(v6 + 16) >= v10 >> 1)
      {
        OUTLINED_FUNCTION_15(v10);
        sub_1C716D5D0();
      }

      v11 = v23[3];
      v12 = v23[4];
      v13 = OUTLINED_FUNCTION_434();
      v15 = __swift_mutable_project_boxed_opaque_existential_0(v13, v14);
      MEMORY[0x1EEE9AC00](v15);
      OUTLINED_FUNCTION_14_0();
      (*(v18 + 16))(v17 - v16);
      v19 = OUTLINED_FUNCTION_98_1();
      sub_1C702591C(v19, v20, v21, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v6 = v27;
      v2 = v22;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v24);
    }

    v5 += 40;
    ++v3;
  }

  __break(1u);
}

void sub_1C701104C()
{
  OUTLINED_FUNCTION_33();
  v191 = OUTLINED_FUNCTION_418(v3, v4, v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_140_1();
  v11 = OUTLINED_FUNCTION_119(v10);
  v196 = type metadata accessor for TimeExtendedToken(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v16);
  OUTLINED_FUNCTION_499();
  v17 = *(v1 + 64);
  OUTLINED_FUNCTION_430();
  v190 = v18;
  v209.n128_u64[0] = v2;
  v209.n128_u64[1] = v19;
  v200 = v19;
  OUTLINED_FUNCTION_498();
  v211 = v17;
  v212 = v20;
  v189 = v20;
  inited = ExtendedTokenCollection.allTokens.getter();
  v22 = 0;
  v23 = inited[2];
  for (i = (inited + 4); ; i += 40)
  {
    if (v23 == v22)
    {

      OUTLINED_FUNCTION_332();
LABEL_21:
      sub_1C6FD7FC8(v204, &qword_1EC215EA8);
      v36 = OUTLINED_FUNCTION_228();
      sub_1C7027A58(v36);
      goto LABEL_260;
    }

    v25 = inited[2];
    if (v22 >= v25)
    {
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      OUTLINED_FUNCTION_15_2(v25);
      sub_1C6FB20F8();
      v63 = v173;
LABEL_59:
      v63[2] = inited;
      v193 = v63;
      v63[v2 + 4] = v0;
      goto LABEL_60;
    }

    sub_1C6FB5E28(i, &v205);
    __swift_project_boxed_opaque_existential_1(&v205, v206);
    OUTLINED_FUNCTION_492();
    if (sub_1C702AC78(v26, v27, v28, v29))
    {
      break;
    }

    ++v22;
    __swift_destroy_boxed_opaque_existential_1(&v205);
  }

  sub_1C6F699F8(&v205, v204);
  if (!v204[3])
  {
    goto LABEL_21;
  }

  sub_1C6FD7FC8(v204, &qword_1EC215EA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215EB0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1C75604F0;
  inited[4] = v0;
  inited[5] = v2;
  sub_1C75504FC();
  sub_1C75504FC();
  v0 = MEMORY[0x1E69E7CC0];
  v30 = 4;
  v2 = &type metadata for LocationExtendedToken;
  OUTLINED_FUNCTION_220();
  while (v30 != 6)
  {
    v31 = inited[v30];
    i = *(v31 + 16);
    v23 = *(v0 + 16);
    if (__OFADD__(v23, i))
    {
      goto LABEL_263;
    }

    sub_1C75504FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || (v23 + i) > *(v0 + 24) >> 1)
    {
      sub_1C6FB2320();
      v0 = v32;
    }

    OUTLINED_FUNCTION_220();
    if (*(v31 + 16))
    {
      OUTLINED_FUNCTION_495();
      if (v33 < i)
      {
        goto LABEL_279;
      }

      OUTLINED_FUNCTION_501();
      swift_arrayInitWithCopy();

      if (i)
      {
        v34 = *(v0 + 16);
        v35 = __OFADD__(v34, i);
        v25 = v34 + i;
        if (v35)
        {
          goto LABEL_280;
        }

        *(v0 + 16) = v25;
      }
    }

    else
    {

      if (i)
      {
        goto LABEL_264;
      }
    }

    ++v30;
  }

  swift_setDeallocating();
  sub_1C6FDC9C8();
  v37 = 0;
  v38 = *(v17 + 16);
  v2 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v25 = v17 + 32 + (v37 << 6);
  while (v38 != v37)
  {
    if (v37 >= *(v17 + 16))
    {
      goto LABEL_265;
    }

    v39 = *(v25 + 48);
    v40 = *v25;
    v41 = *(v25 + 16);
    v209 = *(v25 + 32);
    v210 = v39;
    v207 = v40;
    v208 = v41;
    if ((v41.n128_u8[8] & 1) == 0 && v210.n128_u64[1])
    {
      v42 = OUTLINED_FUNCTION_288();
      sub_1C7026698(v42, v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v205 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_42_7();
        sub_1C716DBE8();
        v2 = v205;
      }

      OUTLINED_FUNCTION_407();
      if (v46)
      {
        OUTLINED_FUNCTION_96_2(v45);
        OUTLINED_FUNCTION_116_0();
        sub_1C716DBE8();
        v2 = v205;
      }

      ++v37;
      v2[1].n128_u64[0] = i;
      OUTLINED_FUNCTION_233(v2 + 224, v207, v208, v209, v210);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_563();
  }

  v47 = 0;
  v48 = *(v0 + 16);
  inited = MEMORY[0x1E69E7CC0];
  while (v48 != v47)
  {
    OUTLINED_FUNCTION_504();
    if (v46)
    {
      goto LABEL_266;
    }

    v49 = *(v0 + v25);
    v50 = *(v0 + v25 + 48);
    v51 = *(v0 + v25 + 32);
    v208 = *(v0 + v25 + 16);
    v209 = v51;
    v210.n128_u64[0] = v50;
    v207 = v49;
    if ((v51.n128_u8[8] & 1) == 0 && v50)
    {
      v52 = OUTLINED_FUNCTION_288();
      sub_1C70260B4(v52, v53);
      v54 = swift_isUniquelyReferenced_nonNull_native();
      *&v205 = inited;
      if ((v54 & 1) == 0)
      {
        OUTLINED_FUNCTION_42_7();
        sub_1C716DD2C();
        inited = v205;
      }

      OUTLINED_FUNCTION_283();
      if (v46)
      {
        OUTLINED_FUNCTION_96_2(v55);
        OUTLINED_FUNCTION_116_0();
        sub_1C716DD2C();
        inited = v205;
      }

      ++v47;
      inited[2] = i;
      OUTLINED_FUNCTION_39_7((inited + 392));
    }

    else
    {
      OUTLINED_FUNCTION_572();
    }
  }

  v56 = v2[1].n128_u64[0];
  v57 = MEMORY[0x1E69E7CC0];
LABEL_46:
  v25 = 88;
  while (v56)
  {
    if (!v2[1].n128_u64[0])
    {
      goto LABEL_267;
    }

    v0 = *(v2->n128_i64 + v25);
    OUTLINED_FUNCTION_563();
    if (v0)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_18_7();
        sub_1C6FB226C();
        v57 = v60;
      }

      v59 = *(v57 + 16);
      v58 = *(v57 + 24);
      if (v59 >= v58 >> 1)
      {
        OUTLINED_FUNCTION_15(v58);
        OUTLINED_FUNCTION_141_2();
        sub_1C6FB226C();
        v57 = v61;
      }

      *(v57 + 16) = v59 + 1;
      *(v57 + 8 * v59 + 32) = v0;
      goto LABEL_46;
    }
  }

  v0 = sub_1C7027A88(v57);

  if (v0)
  {

    goto LABEL_58;
  }

  OUTLINED_FUNCTION_517();
  v2 = MEMORY[0x1E69E7CC0];

  v0 = sub_1C7027A88(v2);

  if (v0)
  {
LABEL_58:
    OUTLINED_FUNCTION_356();
    v2 = *(v62 + 16);
    OUTLINED_FUNCTION_134_0();
    if (!v46)
    {
      goto LABEL_59;
    }

    goto LABEL_282;
  }

  OUTLINED_FUNCTION_538(MEMORY[0x1E69E7CC0]);
LABEL_60:
  v64 = 0;
  inited = v190;
  v65 = *(v190 + 16);
  v0 = MEMORY[0x1E69E7CC0];
  v66 = 40;
LABEL_61:
  v67 = (v190 - 8 + v64 * v66);
  while (v65 != v64)
  {
    v68 = v67;
    v25 = *(v190 + 16);
    if (v64 >= v25)
    {
      goto LABEL_268;
    }

    ++v64;
    v67 = v68 + 5;
    if ((v68[8] & 1) == 0)
    {
      v2 = v68[9];
      if (v2)
      {
        v70 = *v67;
        v69 = v68[6];
        sub_1C75504FC();
        sub_1C75504FC();
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v207.n128_u64[0] = v0;
        if ((v71 & 1) == 0)
        {
          OUTLINED_FUNCTION_11_10();
          sub_1C716DCF0();
          OUTLINED_FUNCTION_187();
        }

        v23 = *(v0 + 16);
        v72 = *(v0 + 24);
        if (v23 >= v72 >> 1)
        {
          OUTLINED_FUNCTION_41_5(v72);
          OUTLINED_FUNCTION_336();
          sub_1C716DCF0();
          OUTLINED_FUNCTION_187();
        }

        *(v0 + 16) = v23 + 1;
        v73 = v0 + 40 * v23;
        *(v73 + 32) = v70;
        *(v73 + 40) = v69;
        OUTLINED_FUNCTION_168(v73);
        OUTLINED_FUNCTION_451(v74);
        *(v75 + 64) = v2;
        OUTLINED_FUNCTION_220();
        goto LABEL_61;
      }
    }
  }

  v76 = 0;
  v77 = *(v0 + 16);
  inited = MEMORY[0x1E69E7CC0];
  v190 = 64;
  v78 = v193;
  while (v77 != v76)
  {
    OUTLINED_FUNCTION_504();
    if (v46)
    {
      goto LABEL_269;
    }

    OUTLINED_FUNCTION_490();
    v76 = (v76 + 1);
    if (v2)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v80;
      }

      OUTLINED_FUNCTION_105_2();
      if (v46)
      {
        OUTLINED_FUNCTION_22_10(v79);
        sub_1C6FB226C();
        inited = v81;
      }

      OUTLINED_FUNCTION_174();
      OUTLINED_FUNCTION_220();
    }
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_364();
  OUTLINED_FUNCTION_239();
  if (v0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_1C6FB20F8();
      v78 = v176;
    }

    v2 = v78[2];
    OUTLINED_FUNCTION_134_0();
    if (v46)
    {
      OUTLINED_FUNCTION_15_2(v82);
      sub_1C6FB20F8();
      v78 = v177;
    }

    OUTLINED_FUNCTION_384();
    OUTLINED_FUNCTION_239();
  }

  OUTLINED_FUNCTION_159_0();
  v0 = MEMORY[0x1E69E7CC0];
LABEL_87:
  inited = v77;
  while (v76)
  {
    OUTLINED_FUNCTION_114_1();
    if (!v25)
    {
      goto LABEL_270;
    }

    v83 = OUTLINED_FUNCTION_349();
    memcpy(v83, v84, 0x41uLL);
    if ((v208.n128_u8[8] & 1) == 0 && v210.n128_u64[1])
    {
      v85 = OUTLINED_FUNCTION_288();
      sub_1C7025F3C(v85, v86);
      v87 = swift_isUniquelyReferenced_nonNull_native();
      *&v205 = v0;
      if ((v87 & 1) == 0)
      {
        OUTLINED_FUNCTION_42_7();
        sub_1C716D97C();
        v0 = v205;
      }

      OUTLINED_FUNCTION_408();
      if (v46)
      {
        OUTLINED_FUNCTION_96_2(v88);
        OUTLINED_FUNCTION_177();
        sub_1C716D97C();
        v0 = v205;
      }

      OUTLINED_FUNCTION_299();
      v89 = OUTLINED_FUNCTION_268(v0 + 72 * v23);
      memcpy(v89, v90, v91);
      OUTLINED_FUNCTION_220();
      OUTLINED_FUNCTION_239();
      goto LABEL_87;
    }

    OUTLINED_FUNCTION_522();
  }

  if (v188)
  {
    sub_1C75504FC();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_1C6FB20F8();
      v78 = v174;
    }

    v96 = v78[2];
    v95 = v78[3];
    if (v96 >= v95 >> 1)
    {
      OUTLINED_FUNCTION_15(v95);
      OUTLINED_FUNCTION_131_0();
      sub_1C6FB20F8();
      v78 = v175;
    }

    v78[2] = v96 + 1;
    v78[v96 + 4] = v188;
  }

  else
  {
    OUTLINED_FUNCTION_557();
    inited = MEMORY[0x1E69E7CC0];
    while (v77 != 72)
    {
      OUTLINED_FUNCTION_503();
      if (v46)
      {
        goto LABEL_281;
      }

      OUTLINED_FUNCTION_270_0();
      if (v2)
      {
        sub_1C75504FC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          inited = v93;
        }

        OUTLINED_FUNCTION_105_2();
        if (v46)
        {
          OUTLINED_FUNCTION_22_10(v92);
          sub_1C6FB226C();
          inited = v94;
        }

        OUTLINED_FUNCTION_174();
        OUTLINED_FUNCTION_220();
      }
    }

    sub_1C7027AF4();
    OUTLINED_FUNCTION_507();

    OUTLINED_FUNCTION_239();
  }

  v97 = v2[1].n128_u64[0];
  v0 = MEMORY[0x1E69E7CC0];
LABEL_116:
  inited = v2[2].n128_u64;
  while (v97)
  {
    v25 = v2[1].n128_u64[0];
    if (!v25)
    {
      goto LABEL_271;
    }

    v98 = OUTLINED_FUNCTION_349();
    memcpy(v98, v99, 0x42uLL);
    if ((v208.n128_u8[8] & 1) == 0 && v210.n128_u64[1])
    {
      v100 = OUTLINED_FUNCTION_288();
      sub_1C7025FF8(v100, v101);
      v102 = swift_isUniquelyReferenced_nonNull_native();
      *&v205 = v0;
      if ((v102 & 1) == 0)
      {
        OUTLINED_FUNCTION_42_7();
        sub_1C716D940();
        v0 = v205;
      }

      OUTLINED_FUNCTION_408();
      if (v46)
      {
        OUTLINED_FUNCTION_96_2(v103);
        OUTLINED_FUNCTION_177();
        sub_1C716D940();
        v0 = v205;
      }

      OUTLINED_FUNCTION_299();
      v104 = OUTLINED_FUNCTION_267(v0 + 72 * v23);
      memcpy(v104, v105, v106);
      OUTLINED_FUNCTION_220();
      OUTLINED_FUNCTION_239();
      goto LABEL_116;
    }

    OUTLINED_FUNCTION_522();
  }

  OUTLINED_FUNCTION_557();
  inited = MEMORY[0x1E69E7CC0];
  while (v2 != -32)
  {
    OUTLINED_FUNCTION_503();
    if (v46)
    {
      goto LABEL_272;
    }

    OUTLINED_FUNCTION_270_0();
    if (v2)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v108;
      }

      OUTLINED_FUNCTION_105_2();
      if (v46)
      {
        OUTLINED_FUNCTION_22_10(v107);
        sub_1C6FB226C();
        inited = v109;
      }

      OUTLINED_FUNCTION_174();
      OUTLINED_FUNCTION_220();
    }
  }

  sub_1C7027AF4();
  OUTLINED_FUNCTION_364();
  OUTLINED_FUNCTION_369();
  if (v0)
  {
    v110 = v200;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_1C6FB20F8();
      v78 = v178;
    }

    v2 = v78[2];
    OUTLINED_FUNCTION_134_0();
    if (v46)
    {
      OUTLINED_FUNCTION_15_2(v111);
      sub_1C6FB20F8();
      v78 = v179;
    }

    OUTLINED_FUNCTION_384();
    OUTLINED_FUNCTION_369();
  }

  else
  {
    v110 = v200;
  }

  v112 = 0;
  v113 = *(v110 + 16);
  v0 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_309_0();
  while (2)
  {
    if (v113 != v112)
    {
      v25 = *(v110 + 16);
      if (v112 >= v25)
      {
        goto LABEL_273;
      }

      v97 = (v2[5].n128_u8[0] + 32) & ~v2[5].n128_u8[0];
      OUTLINED_FUNCTION_4_9();
      sub_1C702659C();
      OUTLINED_FUNCTION_350();
      sub_1C702659C();
      if (*(v23 + 56))
      {
        OUTLINED_FUNCTION_3_12();
        sub_1C70265F0();
        goto LABEL_149;
      }

      inited = *(v23 + *(v196 + 48));
      OUTLINED_FUNCTION_3_12();
      sub_1C70265F0();
      if (inited)
      {
        OUTLINED_FUNCTION_1_19();
        OUTLINED_FUNCTION_308();
        sub_1C70267FC();
        v114 = swift_isUniquelyReferenced_nonNull_native();
        v207.n128_u64[0] = v0;
        if ((v114 & 1) == 0)
        {
          OUTLINED_FUNCTION_11_10();
          sub_1C716DCA8();
          v0 = v207.n128_u64[0];
        }

        OUTLINED_FUNCTION_408();
        if (v46)
        {
          OUTLINED_FUNCTION_41_5(v115);
          OUTLINED_FUNCTION_177();
          sub_1C716DCA8();
          v0 = v207.n128_u64[0];
        }

        OUTLINED_FUNCTION_299();
        OUTLINED_FUNCTION_1_19();
        sub_1C70267FC();
        OUTLINED_FUNCTION_369();
        OUTLINED_FUNCTION_220();
      }

      else
      {
LABEL_149:
        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_308();
        sub_1C70265F0();
        ++v112;
      }

      v110 = v200;
      continue;
    }

    break;
  }

  v116 = *(v0 + 16);
  if (v116)
  {
    v97 = *(v196 + 48);
    OUTLINED_FUNCTION_191();
    v117 = v2;
    v2 = (v0 + v118);
    v110 = v117[4].n128_u64[1];
    inited = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_218();
      v23 = v198;
      sub_1C702659C();
      OUTLINED_FUNCTION_603();
      OUTLINED_FUNCTION_599();
      if (v112)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          inited = v121;
        }

        OUTLINED_FUNCTION_282_0();
        if (v46)
        {
          OUTLINED_FUNCTION_57(v119);
          sub_1C6FB226C();
          inited = v122;
        }

        OUTLINED_FUNCTION_257();
      }

      OUTLINED_FUNCTION_526();
    }

    while (!v120);
  }

  else
  {

    inited = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_364();
  if (v0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_1C6FB20F8();
      v78 = v180;
    }

    v2 = v78[2];
    OUTLINED_FUNCTION_134_0();
    if (v46)
    {
      OUTLINED_FUNCTION_15_2(v123);
      sub_1C6FB20F8();
      v78 = v181;
    }

    OUTLINED_FUNCTION_384();
  }

  OUTLINED_FUNCTION_493();
  v0 = MEMORY[0x1E69E7CC0];
  v194 = v78;
  while (v110 != v97)
  {
    OUTLINED_FUNCTION_573();
    if (v46)
    {
      goto LABEL_274;
    }

    ++v97;
    if ((*(v124 + 80) & 1) == 0)
    {
      v2 = *(v124 + 96);
      if (v2)
      {
        v125 = *(v124 + 56);
        v78 = *(v124 + 64);
        v126 = *(v124 + 88);
        v23 = *(v124 + 104);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_530();
        *(v127 - 256) = v116;
        v201 = v125;
        if ((v128 & 1) == 0)
        {
          OUTLINED_FUNCTION_11_10();
          sub_1C716DC6C();
          OUTLINED_FUNCTION_187();
        }

        v130 = *(v0 + 16);
        v129 = *(v0 + 24);
        if (v130 >= v129 >> 1)
        {
          OUTLINED_FUNCTION_41_5(v129);
          OUTLINED_FUNCTION_186();
          sub_1C716DC6C();
          OUTLINED_FUNCTION_187();
        }

        *(v0 + 16) = v130 + 1;
        v131 = v0 + 56 * v130;
        *(v131 + 32) = v201;
        *(v131 + 40) = v78;
        OUTLINED_FUNCTION_168(v131);
        *(v132 + 64) = v126;
        *(v132 + 72) = v2;
        *(v132 + 80) = v23;
        v116 = v203;
      }
    }
  }

  OUTLINED_FUNCTION_531();
  inited = MEMORY[0x1E69E7CC0];
  v133 = 56;
LABEL_185:
  v23 = v191;
  while (v116 != v78)
  {
    OUTLINED_FUNCTION_502();
    if (v46)
    {
      goto LABEL_275;
    }

    v78 = (v78 + 1);
    v2 = *(v0 + v25);
    if (v2)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v135;
      }

      OUTLINED_FUNCTION_105_2();
      if (v46)
      {
        OUTLINED_FUNCTION_22_10(v134);
        sub_1C6FB226C();
        inited = v136;
      }

      OUTLINED_FUNCTION_174();
      goto LABEL_185;
    }
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_364();
  v2 = v192;
  if (v0)
  {
    v137 = v194;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_275();
    if ((v138 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_7();
      sub_1C6FB20F8();
      v137 = v182;
    }

    v139 = *(v137 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v46)
    {
      OUTLINED_FUNCTION_15_2(v140);
      sub_1C6FB20F8();
      v137 = v183;
    }

    *(v137 + 16) = inited;
    v194 = v137;
    *(v137 + 8 * v139 + 32) = v0;
    v2 = v192;
  }

  else
  {
    OUTLINED_FUNCTION_275();
  }

  v141 = 0;
  v142 = MEMORY[0x48];
  v0 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if (v142 != v141)
    {
      v25 = *(v133 + 16);
      if (v141 >= v25)
      {
        goto LABEL_276;
      }

      OUTLINED_FUNCTION_5_16();
      sub_1C702659C();
      sub_1C702659C();
      if (v2[1].n128_u8[8])
      {
        OUTLINED_FUNCTION_2_11();
        sub_1C70265F0();
        goto LABEL_207;
      }

      inited = *(v2->n128_u64 + *(v191 + 28));
      OUTLINED_FUNCTION_2_11();
      sub_1C70265F0();
      if (inited)
      {
        OUTLINED_FUNCTION_0_15();
        OUTLINED_FUNCTION_194();
        sub_1C70267FC();
        v143 = swift_isUniquelyReferenced_nonNull_native();
        v207.n128_u64[0] = v0;
        if ((v143 & 1) == 0)
        {
          OUTLINED_FUNCTION_11_10();
          sub_1C716DC24();
          v0 = v207.n128_u64[0];
        }

        v144 = *(v0 + 24);
        if (*(v0 + 16) >= v144 >> 1)
        {
          OUTLINED_FUNCTION_41_5(v144);
          OUTLINED_FUNCTION_177();
          sub_1C716DC24();
          v0 = v207.n128_u64[0];
        }

        OUTLINED_FUNCTION_299();
        OUTLINED_FUNCTION_0_15();
        sub_1C70267FC();
        v2 = v192;
      }

      else
      {
LABEL_207:
        OUTLINED_FUNCTION_2_11();
        OUTLINED_FUNCTION_194();
        sub_1C70265F0();
        ++v141;
      }

      v133 = v199;
      continue;
    }

    break;
  }

  v145 = *(v0 + 16);
  if (v145)
  {
    v133 = *(v191 + 28);
    OUTLINED_FUNCTION_191();
    v2 = (v0 + v146);
    v147 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_210_0();
      v23 = v197;
      sub_1C702659C();
      OUTLINED_FUNCTION_603();
      OUTLINED_FUNCTION_599();
      if (v141)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          v147 = v149;
        }

        OUTLINED_FUNCTION_282_0();
        if (v46)
        {
          OUTLINED_FUNCTION_57(v148);
          sub_1C6FB226C();
          v147 = v150;
        }

        OUTLINED_FUNCTION_257();
      }

      OUTLINED_FUNCTION_526();
    }

    while (!v120);
  }

  else
  {

    v147 = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027A88(v147);
  OUTLINED_FUNCTION_364();
  v151 = v194;
  if (v0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_18_7();
      sub_1C6FB20F8();
      v151 = v184;
    }

    v2 = *(v151 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v46)
    {
      OUTLINED_FUNCTION_15_2(v152);
      sub_1C6FB20F8();
      v151 = v185;
    }

    *(v151 + 16) = v147;
    *(v151 + 8 * v2 + 32) = v0;
  }

  inited = v189;
  v195 = v151;
  OUTLINED_FUNCTION_517();
  v153 = v189 - 1;
  v0 = MEMORY[0x1E69E7CC0];
  v154 = 40;
LABEL_233:
  v155 = (v153 + v145 * v154);
  while (v133 != v145)
  {
    v156 = v155;
    v25 = v189[2];
    if (v145 >= v25)
    {
      goto LABEL_277;
    }

    ++v145;
    v155 = v156 + 5;
    if ((v156[8] & 1) == 0)
    {
      v2 = v156[9];
      if (v2)
      {
        v158 = *v155;
        v157 = v156[6];
        v159 = *(v156 + 65);
        v23 = *(v156 + 66);
        sub_1C75504FC();
        sub_1C75504FC();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_530();
        *(v160 - 256) = v153;
        v202 = v158;
        if ((v161 & 1) == 0)
        {
          OUTLINED_FUNCTION_11_10();
          sub_1C716DBAC();
          OUTLINED_FUNCTION_187();
        }

        v163 = *(v0 + 16);
        v162 = *(v0 + 24);
        if (v163 >= v162 >> 1)
        {
          OUTLINED_FUNCTION_41_5(v162);
          OUTLINED_FUNCTION_146();
          sub_1C716DBAC();
          OUTLINED_FUNCTION_187();
        }

        *(v0 + 16) = v163 + 1;
        v164 = v0 + 40 * v163;
        *(v164 + 32) = v202;
        *(v164 + 40) = v157;
        OUTLINED_FUNCTION_168(v164);
        *(v165 + 57) = v159;
        *(v165 + 58) = v23;
        *(v165 + 64) = v2;
        v153 = v203;
        goto LABEL_233;
      }
    }
  }

  OUTLINED_FUNCTION_531();
  inited = MEMORY[0x1E69E7CC0];
  while (v145 != v153)
  {
    OUTLINED_FUNCTION_502();
    if (v46)
    {
      goto LABEL_278;
    }

    OUTLINED_FUNCTION_490();
    v153 = (v153 + 1);
    if (v2)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v167;
      }

      OUTLINED_FUNCTION_283();
      if (v46)
      {
        OUTLINED_FUNCTION_22_10(v166);
        sub_1C6FB226C();
        inited = v168;
      }

      OUTLINED_FUNCTION_415();
    }
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_364();
  if (v0)
  {
    v169 = v195;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_18_7();
      sub_1C6FB20F8();
      v169 = v186;
    }

    v170 = *(v169 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v46)
    {
      OUTLINED_FUNCTION_15_2(v171);
      sub_1C6FB20F8();
      v169 = v187;
    }

    *(v169 + 16) = inited;
    *(v169 + 8 * v170 + 32) = v0;
  }

  else
  {
    v169 = v195;
  }

  sub_1C6FDE498(v169);

  v172 = OUTLINED_FUNCTION_228();
  sub_1C7027A58(v172);
LABEL_260:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C701260C()
{
  OUTLINED_FUNCTION_33();
  v202 = OUTLINED_FUNCTION_418(v3, v4, v5);
  OUTLINED_FUNCTION_3_0();
  v200 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_140_1();
  v12 = OUTLINED_FUNCTION_119(v11);
  v206 = type metadata accessor for TimeExtendedToken(v12);
  OUTLINED_FUNCTION_3_0();
  v203 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v194 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v20);
  OUTLINED_FUNCTION_499();
  v21 = *(v1 + 64);
  OUTLINED_FUNCTION_430();
  v201 = v22;
  v217.n128_u64[0] = v2;
  v217.n128_u64[1] = v23;
  v207 = v23;
  OUTLINED_FUNCTION_498();
  v219 = v21;
  v220 = v24;
  v199 = v24;
  inited = ExtendedTokenCollection.allTokens.getter();
  v26 = 0;
  v27 = *(inited + 16);
  for (i = inited + 32; ; i += 40)
  {
    if (v27 == v26)
    {

      OUTLINED_FUNCTION_332();
LABEL_21:
      sub_1C6FD7FC8(v211, &qword_1EC215EA8);
      v41 = OUTLINED_FUNCTION_228();
      sub_1C7027A58(v41);
      goto LABEL_250;
    }

    OUTLINED_FUNCTION_573();
    if (v30)
    {
      __break(1u);
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      OUTLINED_FUNCTION_15_2(v29);
      sub_1C6FB20F8();
      v66 = v179;
LABEL_57:
      *(v66 + 16) = inited;
      *(v66 + 8 * v2 + 32) = v0;
      goto LABEL_58;
    }

    sub_1C6FB5E28(i, &v213);
    __swift_project_boxed_opaque_existential_1(&v213, v214);
    OUTLINED_FUNCTION_492();
    if (sub_1C702ADA8(v31, v32, v33, v34))
    {
      break;
    }

    ++v26;
    __swift_destroy_boxed_opaque_existential_1(&v213);
  }

  sub_1C6F699F8(&v213, v211);
  if (!v211[3])
  {
    goto LABEL_21;
  }

  sub_1C6FD7FC8(v211, &qword_1EC215EA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C75604F0;
  *(inited + 32) = v0;
  *(inited + 40) = v2;
  sub_1C75504FC();
  sub_1C75504FC();
  v0 = MEMORY[0x1E69E7CC0];
  v35 = 32;
  v2 = &type metadata for LocationExtendedToken;
  v29 = &v212;
  v197 = v17;
  while (v35 != 48)
  {
    v36 = *(inited + v35);
    i = *(v36 + 16);
    v27 = *(v0 + 16);
    if (__OFADD__(v27, i))
    {
      goto LABEL_253;
    }

    sub_1C75504FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || (v27 + i) > *(v0 + 24) >> 1)
    {
      sub_1C6FB2320();
      v0 = v37;
    }

    if (*(v36 + 16))
    {
      OUTLINED_FUNCTION_495();
      if (v38 < i)
      {
        goto LABEL_269;
      }

      OUTLINED_FUNCTION_501();
      swift_arrayInitWithCopy();

      if (i)
      {
        v39 = *(v0 + 16);
        v40 = __OFADD__(v39, i);
        v29 = v39 + i;
        if (v40)
        {
          goto LABEL_270;
        }

        *(v0 + 16) = v29;
      }
    }

    else
    {

      if (i)
      {
        goto LABEL_254;
      }
    }

    v35 += 8;
  }

  swift_setDeallocating();
  sub_1C6FDC9C8();
  v42 = 0;
  v43 = *(v21 + 16);
  v2 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v29 = v21 + 32 + (v42 << 6);
  while (v43 != v42)
  {
    if (v42 >= *(v21 + 16))
    {
      goto LABEL_255;
    }

    v44 = *v29;
    v45 = *(v29 + 16);
    v46 = *(v29 + 48);
    v217 = *(v29 + 32);
    v218 = v46;
    v215 = v44;
    v216 = v45;
    if (v46.n128_u8[0] == 1)
    {
      v47 = OUTLINED_FUNCTION_288();
      sub_1C7026698(v47, v48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v213 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_42_7();
        sub_1C716DBE8();
        v2 = v213;
      }

      v27 = *(v2 + 16);
      v50 = *(v2 + 24);
      i = v27 + 1;
      if (v27 >= v50 >> 1)
      {
        OUTLINED_FUNCTION_96_2(v50);
        OUTLINED_FUNCTION_116_0();
        sub_1C716DBE8();
        v2 = v213;
      }

      ++v42;
      *(v2 + 16) = i;
      OUTLINED_FUNCTION_233((v2 + (v27 << 6)), v215, v216, v217, v218);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_563();
  }

  v51 = 0;
  v52 = *(v0 + 16);
  inited = MEMORY[0x1E69E7CC0];
  while (v52 != v51)
  {
    OUTLINED_FUNCTION_504();
    if (v30)
    {
      goto LABEL_256;
    }

    v53 = *(v0 + v29);
    v54 = *(v0 + v29 + 48);
    v55 = *(v0 + v29 + 32);
    v216 = *(v0 + v29 + 16);
    v217 = v55;
    v218.n128_u64[0] = v54;
    v215 = v53;
    if (v55.n128_u8[9] == 1)
    {
      v56 = OUTLINED_FUNCTION_288();
      sub_1C70260B4(v56, v57);
      v58 = swift_isUniquelyReferenced_nonNull_native();
      *&v213 = inited;
      if ((v58 & 1) == 0)
      {
        OUTLINED_FUNCTION_42_7();
        sub_1C716DD2C();
        inited = v213;
      }

      OUTLINED_FUNCTION_102_3();
      if (v30)
      {
        OUTLINED_FUNCTION_96_2(v59);
        OUTLINED_FUNCTION_116_0();
        sub_1C716DD2C();
        inited = v213;
      }

      ++v51;
      *(inited + 16) = i;
      OUTLINED_FUNCTION_39_7(inited + 56 * v27);
    }

    else
    {
      OUTLINED_FUNCTION_572();
    }
  }

  v60 = *(v2 + 16);
  v61 = MEMORY[0x1E69E7CC0];
LABEL_44:
  v29 = 88;
  while (v60)
  {
    if (!*(v2 + 16))
    {
      goto LABEL_257;
    }

    v0 = *(v2 + v29);
    OUTLINED_FUNCTION_563();
    if (v0)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_18_7();
        sub_1C6FB226C();
        v61 = v63;
      }

      v27 = *(v61 + 16);
      v62 = *(v61 + 24);
      if (v27 >= v62 >> 1)
      {
        OUTLINED_FUNCTION_15(v62);
        OUTLINED_FUNCTION_141_2();
        sub_1C6FB226C();
        v61 = v64;
      }

      *(v61 + 16) = v27 + 1;
      *(v61 + 8 * v27 + 32) = v0;
      goto LABEL_44;
    }
  }

  v0 = sub_1C7027A88(v61);

  if (v0)
  {

    goto LABEL_56;
  }

  OUTLINED_FUNCTION_517();
  v2 = MEMORY[0x1E69E7CC0];

  v0 = sub_1C7027A88(v2);

  if (v0)
  {
LABEL_56:
    OUTLINED_FUNCTION_356();
    v66 = v65;
    v2 = *(v65 + 16);
    OUTLINED_FUNCTION_134_0();
    if (!v30)
    {
      goto LABEL_57;
    }

    goto LABEL_272;
  }

  v66 = MEMORY[0x1E69E7CC0];
LABEL_58:
  v67 = 0;
  inited = v201;
  v68 = *(v201 + 16);
  v0 = MEMORY[0x1E69E7CC0];
  while (v68 != v67)
  {
    OUTLINED_FUNCTION_528();
    if (v30)
    {
      goto LABEL_258;
    }

    ++v67;
    if (*(v29 + 65) == 1)
    {
      v196 = v69;
      v71 = *(v29 + 40);
      v70 = *(v29 + 48);
      v195 = *(v29 + 56);
      v194[1] = *(v29 + 64);
      v2 = *(v29 + 72);
      sub_1C75504FC();
      sub_1C75504FC();
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v215.n128_u64[0] = v0;
      if ((v72 & 1) == 0)
      {
        OUTLINED_FUNCTION_11_10();
        sub_1C716DCF0();
        OUTLINED_FUNCTION_187();
      }

      v27 = *(v0 + 16);
      v73 = *(v0 + 24);
      if (v27 >= v73 >> 1)
      {
        OUTLINED_FUNCTION_41_5(v73);
        OUTLINED_FUNCTION_336();
        sub_1C716DCF0();
        OUTLINED_FUNCTION_187();
      }

      *(v0 + 16) = v27 + 1;
      v74 = v0 + 40 * v27;
      *(v74 + 32) = v71;
      *(v74 + 40) = v70;
      OUTLINED_FUNCTION_277(v74);
      OUTLINED_FUNCTION_570(v75);
      *(v76 + 57) = 1;
      *(v76 + 64) = v2;
    }
  }

  v77 = 0;
  v78 = *(v0 + 16);
  inited = MEMORY[0x1E69E7CC0];
  while (v78 != v77)
  {
    OUTLINED_FUNCTION_504();
    if (v30)
    {
      goto LABEL_259;
    }

    OUTLINED_FUNCTION_490();
    ++v77;
    if (v2)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v80;
      }

      OUTLINED_FUNCTION_102_3();
      if (v30)
      {
        OUTLINED_FUNCTION_22_10(v79);
        sub_1C6FB226C();
        inited = v81;
      }

      OUTLINED_FUNCTION_416();
    }
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_364();
  OUTLINED_FUNCTION_239();
  if (v0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v66 = v182;
    }

    v2 = *(v66 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v30)
    {
      OUTLINED_FUNCTION_15_2(v82);
      sub_1C6FB20F8();
      v66 = v183;
    }

    *(v66 + 16) = inited;
    *(v66 + 8 * v2 + 32) = v0;
    OUTLINED_FUNCTION_239();
  }

  OUTLINED_FUNCTION_159_0();
  v0 = MEMORY[0x1E69E7CC0];
LABEL_83:
  inited = v78;
  while (v77)
  {
    OUTLINED_FUNCTION_114_1();
    if (!v29)
    {
      goto LABEL_260;
    }

    v83 = OUTLINED_FUNCTION_349();
    memcpy(v83, v84, 0x41uLL);
    if (v218.n128_u8[6] == 1)
    {
      v85 = OUTLINED_FUNCTION_288();
      sub_1C7025F3C(v85, v86);
      v87 = swift_isUniquelyReferenced_nonNull_native();
      *&v213 = v0;
      if ((v87 & 1) == 0)
      {
        OUTLINED_FUNCTION_42_7();
        sub_1C716D97C();
        v0 = v213;
      }

      OUTLINED_FUNCTION_399();
      if (v30)
      {
        OUTLINED_FUNCTION_96_2(v88);
        OUTLINED_FUNCTION_177();
        sub_1C716D97C();
        v0 = v213;
      }

      OUTLINED_FUNCTION_299();
      v89 = OUTLINED_FUNCTION_268(v0 + 72 * v27);
      memcpy(v89, v90, v91);
      OUTLINED_FUNCTION_239();
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_522();
  }

  v92 = v198;
  v201 = 64;
  if (v198)
  {
    sub_1C75504FC();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v66 = v180;
    }

    v98 = *(v66 + 16);
    v97 = *(v66 + 24);
    if (v98 >= v97 >> 1)
    {
      OUTLINED_FUNCTION_15(v97);
      OUTLINED_FUNCTION_143_0();
      sub_1C6FB20F8();
      v66 = v181;
    }

    *(v66 + 16) = v98 + 1;
    v208 = v66;
    *(v66 + 8 * v98 + 32) = v92;
    v93 = v197;
  }

  else
  {
    v208 = v66;
    OUTLINED_FUNCTION_557();
    inited = MEMORY[0x1E69E7CC0];
    v93 = v197;
    while (v78 != 72)
    {
      OUTLINED_FUNCTION_503();
      if (v30)
      {
        goto LABEL_271;
      }

      OUTLINED_FUNCTION_270_0();
      if (v2)
      {
        sub_1C75504FC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          inited = v95;
        }

        OUTLINED_FUNCTION_102_3();
        if (v30)
        {
          OUTLINED_FUNCTION_22_10(v94);
          sub_1C6FB226C();
          inited = v96;
        }

        OUTLINED_FUNCTION_416();
      }
    }

    sub_1C7027AF4();
    OUTLINED_FUNCTION_507();

    OUTLINED_FUNCTION_239();
  }

  v99 = *(v2 + 16);
  v100 = v2 + 32;
  v0 = MEMORY[0x1E69E7CC0];
LABEL_111:
  inited = v2 + 32;
  while (v99)
  {
    v29 = *(v2 + 16);
    if (!v29)
    {
      goto LABEL_261;
    }

    v101 = OUTLINED_FUNCTION_349();
    memcpy(v101, v102, 0x42uLL);
    if (v218.n128_u8[2] == 1)
    {
      v103 = OUTLINED_FUNCTION_288();
      sub_1C7025FF8(v103, v104);
      v105 = swift_isUniquelyReferenced_nonNull_native();
      *&v213 = v0;
      if ((v105 & 1) == 0)
      {
        OUTLINED_FUNCTION_42_7();
        sub_1C716D940();
        v0 = v213;
      }

      OUTLINED_FUNCTION_399();
      if (v30)
      {
        OUTLINED_FUNCTION_96_2(v106);
        OUTLINED_FUNCTION_177();
        sub_1C716D940();
        v0 = v213;
      }

      OUTLINED_FUNCTION_299();
      v107 = OUTLINED_FUNCTION_267(v0 + 72 * v27);
      memcpy(v107, v108, v109);
      OUTLINED_FUNCTION_239();
      goto LABEL_111;
    }

    OUTLINED_FUNCTION_522();
  }

  OUTLINED_FUNCTION_557();
  inited = MEMORY[0x1E69E7CC0];
  while (v2 != -32)
  {
    OUTLINED_FUNCTION_503();
    if (v30)
    {
      goto LABEL_262;
    }

    OUTLINED_FUNCTION_270_0();
    if (v2)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v111;
      }

      OUTLINED_FUNCTION_102_3();
      if (v30)
      {
        OUTLINED_FUNCTION_22_10(v110);
        sub_1C6FB226C();
        inited = v112;
      }

      OUTLINED_FUNCTION_416();
    }
  }

  sub_1C7027AF4();
  OUTLINED_FUNCTION_364();
  v2 = v203;
  if (v0)
  {
    v113 = v208;
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v27 = v207;
    if ((v114 & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v113 = v184;
    }

    OUTLINED_FUNCTION_134_0();
    if (v30)
    {
      OUTLINED_FUNCTION_15_2(v115);
      sub_1C6FB20F8();
      v113 = v185;
    }

    OUTLINED_FUNCTION_171();
    v2 = v203;
  }

  else
  {
    v113 = v208;
    v27 = v207;
  }

  v116 = 0;
  v117 = *(v27 + 16);
  v0 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if (v117 != v116)
    {
      v29 = *(v27 + 16);
      if (v116 >= v29)
      {
        goto LABEL_263;
      }

      v99 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v100 = *(v2 + 72);
      OUTLINED_FUNCTION_4_9();
      sub_1C702659C();
      OUTLINED_FUNCTION_350();
      sub_1C702659C();
      OUTLINED_FUNCTION_449();
      v119 = *(v118 + 44);
      inited = v93[v119];
      if (v93[v119])
      {
        OUTLINED_FUNCTION_3_12();
        sub_1C70265F0();
        if (inited == 1)
        {
          OUTLINED_FUNCTION_1_19();
          OUTLINED_FUNCTION_308();
          sub_1C70267FC();
          v120 = swift_isUniquelyReferenced_nonNull_native();
          v215.n128_u64[0] = v0;
          if ((v120 & 1) == 0)
          {
            OUTLINED_FUNCTION_11_10();
            sub_1C716DCA8();
            v0 = v215.n128_u64[0];
          }

          OUTLINED_FUNCTION_399();
          if (v30)
          {
            OUTLINED_FUNCTION_41_5(v121);
            OUTLINED_FUNCTION_177();
            sub_1C716DCA8();
            v0 = v215.n128_u64[0];
          }

          OUTLINED_FUNCTION_299();
          OUTLINED_FUNCTION_1_19();
          sub_1C70267FC();
          v2 = v203;
          goto LABEL_149;
        }
      }

      else
      {
        OUTLINED_FUNCTION_3_12();
        sub_1C70265F0();
      }

      OUTLINED_FUNCTION_3_12();
      OUTLINED_FUNCTION_308();
      sub_1C70265F0();
      ++v116;
LABEL_149:
      v27 = v207;
      continue;
    }

    break;
  }

  v122 = *(v0 + 16);
  if (v122)
  {
    OUTLINED_FUNCTION_449();
    v99 = *(v123 + 48);
    OUTLINED_FUNCTION_191();
    v124 = v2;
    v2 = v0 + v125;
    v100 = *(v124 + 72);
    inited = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_218();
      sub_1C702659C();
      OUTLINED_FUNCTION_603();
      OUTLINED_FUNCTION_599();
      if (v116)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          inited = v128;
        }

        OUTLINED_FUNCTION_282_0();
        if (v30)
        {
          OUTLINED_FUNCTION_57(v126);
          sub_1C6FB226C();
          inited = v129;
        }

        OUTLINED_FUNCTION_257();
      }

      OUTLINED_FUNCTION_526();
    }

    while (!v127);
  }

  else
  {

    inited = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_364();
  if (v0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v113 = v186;
    }

    v2 = *(v113 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v30)
    {
      OUTLINED_FUNCTION_15_2(v130);
      sub_1C6FB20F8();
      v113 = v187;
    }

    OUTLINED_FUNCTION_171();
  }

  OUTLINED_FUNCTION_493();
  v0 = MEMORY[0x1E69E7CC0];
  v131 = 56;
LABEL_169:
  v29 = v122 + v99 * v131;
  while (v100 != v99)
  {
    if (v99 >= *(inited + 16))
    {
      goto LABEL_264;
    }

    ++v99;
    v132 = v29 + 56;
    v133 = *(v29 + 104);
    v29 += 56;
    if (v133 == 1)
    {
      v2 = *(v132 + 8);
      v208 = *v132;
      v207 = *(v132 + 16);
      LODWORD(v206) = *(v132 + 24);
      v134 = *(v132 + 32);
      v27 = *(v132 + 40);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_530();
      *(v135 - 256) = v122;
      v136 = v113;
      if ((v137 & 1) == 0)
      {
        OUTLINED_FUNCTION_11_10();
        sub_1C716DC6C();
        OUTLINED_FUNCTION_187();
      }

      v139 = *(v0 + 16);
      v138 = *(v0 + 24);
      v140 = 56;
      if (v139 >= v138 >> 1)
      {
        OUTLINED_FUNCTION_41_5(v138);
        OUTLINED_FUNCTION_186();
        sub_1C716DC6C();
        OUTLINED_FUNCTION_187();
      }

      *(v0 + 16) = v139 + 1;
      v141 = v0 + v139 * v140;
      *(v141 + 32) = v208;
      *(v141 + 40) = v2;
      OUTLINED_FUNCTION_277(v141);
      OUTLINED_FUNCTION_570(v142);
      *(v143 + 64) = v134;
      *(v143 + 72) = v27;
      *(v143 + 80) = 1;
      v113 = v136;
      v122 = v210;
      goto LABEL_169;
    }
  }

  OUTLINED_FUNCTION_531();
  inited = MEMORY[0x1E69E7CC0];
  v144 = 56;
  while (v122 != v27)
  {
    OUTLINED_FUNCTION_502();
    if (v30)
    {
      goto LABEL_265;
    }

    ++v27;
    v2 = *(v0 + v29);
    if (v2)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v146;
      }

      OUTLINED_FUNCTION_105_2();
      if (v30)
      {
        OUTLINED_FUNCTION_22_10(v145);
        sub_1C6FB226C();
        inited = v147;
      }

      OUTLINED_FUNCTION_174();
    }
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_364();
  OUTLINED_FUNCTION_369();
  if (v0)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_275();
    if ((v148 & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v113 = v188;
    }

    v2 = *(v113 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v30)
    {
      OUTLINED_FUNCTION_15_2(v149);
      sub_1C6FB20F8();
      v113 = v189;
    }

    OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_369();
  }

  else
  {
    OUTLINED_FUNCTION_275();
  }

  v150 = 0;
  v27 = MEMORY[0x48];
  v0 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if (v27 != v150)
    {
      v29 = *(v144 + 16);
      if (v150 >= v29)
      {
        goto LABEL_266;
      }

      OUTLINED_FUNCTION_5_16();
      sub_1C702659C();
      v151 = v204;
      OUTLINED_FUNCTION_350();
      sub_1C702659C();
      v152 = *(v2 + 32);
      inited = *(v151 + v152);
      if (*(v151 + v152))
      {
        OUTLINED_FUNCTION_2_11();
        sub_1C70265F0();
        if (inited == 1)
        {
          OUTLINED_FUNCTION_0_15();
          OUTLINED_FUNCTION_194();
          sub_1C70267FC();
          v153 = swift_isUniquelyReferenced_nonNull_native();
          v215.n128_u64[0] = v0;
          if ((v153 & 1) == 0)
          {
            OUTLINED_FUNCTION_11_10();
            sub_1C716DC24();
            v0 = v215.n128_u64[0];
          }

          v155 = *(v0 + 16);
          v154 = *(v0 + 24);
          v2 = v155 + 1;
          if (v155 >= v154 >> 1)
          {
            OUTLINED_FUNCTION_41_5(v154);
            OUTLINED_FUNCTION_177();
            sub_1C716DC24();
            v0 = v215.n128_u64[0];
          }

          OUTLINED_FUNCTION_299();
          OUTLINED_FUNCTION_0_15();
          sub_1C70267FC();
          OUTLINED_FUNCTION_369();
          goto LABEL_206;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_11();
        sub_1C70265F0();
      }

      OUTLINED_FUNCTION_2_11();
      OUTLINED_FUNCTION_194();
      sub_1C70265F0();
      ++v150;
LABEL_206:
      v144 = v205;
      continue;
    }

    break;
  }

  v156 = *(v0 + 16);
  if (v156)
  {
    v144 = *(v2 + 28);
    OUTLINED_FUNCTION_191();
    v2 = v0 + v157;
    v158 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_210_0();
      sub_1C702659C();
      OUTLINED_FUNCTION_603();
      OUTLINED_FUNCTION_599();
      if (v150)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          v158 = v160;
        }

        OUTLINED_FUNCTION_282_0();
        if (v30)
        {
          OUTLINED_FUNCTION_57(v159);
          sub_1C6FB226C();
          v158 = v161;
        }

        OUTLINED_FUNCTION_257();
      }

      OUTLINED_FUNCTION_526();
    }

    while (!v127);
  }

  else
  {

    v158 = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027A88(v158);
  OUTLINED_FUNCTION_364();
  if (v0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v113 = v190;
    }

    v2 = *(v113 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v30)
    {
      OUTLINED_FUNCTION_15_2(v162);
      sub_1C6FB20F8();
      v113 = v191;
    }

    OUTLINED_FUNCTION_171();
  }

  inited = v199;
  OUTLINED_FUNCTION_517();
  v27 = inited - 8;
  v0 = MEMORY[0x1E69E7CC0];
  while (v144 != v156)
  {
    OUTLINED_FUNCTION_528();
    if (v30)
    {
      goto LABEL_267;
    }

    ++v156;
    if (*(v29 + 66) == 1)
    {
      v208 = v113;
      v164 = *(v29 + 40);
      v163 = *(v29 + 48);
      v165 = *(v29 + 56);
      v166 = *(v29 + 64);
      LODWORD(v207) = *(v29 + 65);
      v2 = *(v29 + 72);
      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_530();
      *(v167 - 256) = v27;
      v209 = v166;
      if ((v168 & 1) == 0)
      {
        OUTLINED_FUNCTION_11_10();
        sub_1C716DBAC();
        OUTLINED_FUNCTION_187();
      }

      v169 = *(v0 + 16);
      OUTLINED_FUNCTION_305();
      if (v30)
      {
        OUTLINED_FUNCTION_41_5(v170);
        OUTLINED_FUNCTION_146();
        sub_1C716DBAC();
        OUTLINED_FUNCTION_187();
      }

      *(v0 + 16) = v27;
      v171 = (v0 + 40 * v169);
      v171[4] = v164;
      v171[5] = v163;
      v171[6] = v165;
      OUTLINED_FUNCTION_570(v171);
      OUTLINED_FUNCTION_451(v172);
      *(v173 + 58) = 1;
      *(v173 + 64) = v2;
      v113 = v208;
      v27 = v210;
    }
  }

  OUTLINED_FUNCTION_531();
  inited = MEMORY[0x1E69E7CC0];
  while (v156 != v27)
  {
    OUTLINED_FUNCTION_502();
    if (v30)
    {
      goto LABEL_268;
    }

    OUTLINED_FUNCTION_490();
    ++v27;
    if (v2)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v175;
      }

      OUTLINED_FUNCTION_283();
      if (v30)
      {
        OUTLINED_FUNCTION_22_10(v174);
        sub_1C6FB226C();
        inited = v176;
      }

      OUTLINED_FUNCTION_415();
    }
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_364();
  if (v0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v113 = v192;
    }

    OUTLINED_FUNCTION_134_0();
    if (v30)
    {
      OUTLINED_FUNCTION_15_2(v177);
      sub_1C6FB20F8();
      v113 = v193;
    }

    OUTLINED_FUNCTION_171();
  }

  sub_1C6FDE498(v113);

  v178 = OUTLINED_FUNCTION_228();
  sub_1C7027A58(v178);
LABEL_250:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C7013BC0()
{
  OUTLINED_FUNCTION_33();
  v325 = v1;
  v3 = v2;
  v304 = v4;
  type metadata accessor for PartOfWeekExtendedToken(0);
  OUTLINED_FUNCTION_3_0();
  v310 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_130();
  v318 = v7;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_130();
  v307 = v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_140_1();
  type metadata accessor for TimeExtendedToken(0);
  OUTLINED_FUNCTION_3_0();
  v313 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_130();
  v308 = v14;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_140_1();
  v16 = v3[1];
  v18 = v3[2];
  v17 = v3[3];
  v20 = v3[4];
  v19 = v3[5];
  v22 = v3[6];
  v21 = v3[7];
  v24 = v3[8];
  v23 = v3[9];
  v305 = *v3;
  v333[0] = *v3;
  v333[1] = v16;
  v316 = v16;
  v317 = v17;
  v333[2] = v18;
  v333[3] = v17;
  v333[4] = v20;
  v333[5] = v19;
  v315 = v19;
  v311 = v21;
  v312 = v22;
  v333[6] = v22;
  v333[7] = v21;
  v333[8] = v24;
  v333[9] = v23;
  v309 = v23;
  boxed_opaque_existential_0 = ExtendedTokenCollection.allTokens.getter();
  j = 0;
  v27 = *(boxed_opaque_existential_0 + 16);
  for (i = boxed_opaque_existential_0 + 32; ; i += 40)
  {
    if (v27 == j)
    {

      memset(v327, 0, 40);
LABEL_21:
      sub_1C6FD7FC8(v327, &qword_1EC215EA8);
      sub_1C7027A58(v325);
      goto LABEL_303;
    }

    v29 = *(boxed_opaque_existential_0 + 16);
    if (j >= v29)
    {
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      OUTLINED_FUNCTION_15_2(v29);
      sub_1C6FB20F8();
      v306 = v292;
LABEL_77:
      *(v306 + 16) = boxed_opaque_existential_0;
      *(v306 + 8 * j + 32) = v18;
      goto LABEL_78;
    }

    sub_1C6FB5E28(i, v326);
    v0 = v326[1].n128_u64[1];
    v30 = v326[2].n128_i64[0];
    v31 = __swift_project_boxed_opaque_existential_1(v326, v326[1].n128_i64[1]);
    if (sub_1C702AEB0(v31, v325, v0, v30))
    {
      break;
    }

    ++j;
    __swift_destroy_boxed_opaque_existential_1(v326);
  }

  v32 = OUTLINED_FUNCTION_221();
  sub_1C6F699F8(v32, v33);
  if (!v327[3])
  {
    goto LABEL_21;
  }

  sub_1C6FD7FC8(v327, &qword_1EC215EA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215EB0);
  boxed_opaque_existential_0 = swift_allocObject();
  *(boxed_opaque_existential_0 + 16) = xmmword_1C75604F0;
  *(boxed_opaque_existential_0 + 32) = v18;
  *(boxed_opaque_existential_0 + 40) = v20;
  sub_1C75504FC();
  sub_1C75504FC();
  v18 = MEMORY[0x1E69E7CC0];
  for (j = 32; j != 48; j += 8)
  {
    v0 = *(boxed_opaque_existential_0 + j);
    v34 = *(v0 + 16);
    v35 = *(v18 + 16);
    if (__OFADD__(v35, v34))
    {
      goto LABEL_306;
    }

    sub_1C75504FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v35 + v34 > *(v18 + 24) >> 1)
    {
      OUTLINED_FUNCTION_141_2();
      sub_1C6FB2320();
      v18 = v36;
    }

    if (*(v0 + 16))
    {
      OUTLINED_FUNCTION_495();
      if (v37 < v34)
      {
        goto LABEL_322;
      }

      swift_arrayInitWithCopy();

      if (v34)
      {
        v38 = *(v18 + 16);
        v39 = __OFADD__(v38, v34);
        v29 = v38 + v34;
        if (v39)
        {
          goto LABEL_323;
        }

        *(v18 + 16) = v29;
      }
    }

    else
    {

      if (v34)
      {
        goto LABEL_307;
      }
    }
  }

  swift_setDeallocating();
  sub_1C6FDC9C8();
  v0 = 0;
  v40 = v24 + 32;
  v41 = MEMORY[0x1E69E7CC0];
  j = *(v24 + 16);
LABEL_23:
  v42 = (v40 + (v0 << 6));
  while (j != v0)
  {
    v29 = *(v24 + 16);
    if (v0 >= v29)
    {
      goto LABEL_308;
    }

    v43 = *v42;
    v44 = v42[1];
    v45 = v42[3];
    v326[2] = v42[2];
    v326[3] = v45;
    v326[0] = v43;
    v326[1] = v44;
    v330 = &type metadata for TripExtendedToken;
    v331 = sub_1C70269F4();
    v46 = swift_allocObject();
    v329[0] = v46;
    v47 = v42[2];
    v48 = v42[3];
    v49 = v42[1];
    *(v46 + 16) = *v42;
    *(v46 + 32) = v49;
    *(v46 + 48) = v47;
    *(v46 + 64) = v48;
    if (*(v46 + 40))
    {
      v50 = OUTLINED_FUNCTION_273();
      sub_1C7026698(v50, v51);
      v52 = OUTLINED_FUNCTION_273();
      sub_1C7026698(v52, v53);
      v54 = OUTLINED_FUNCTION_273();
      sub_1C7026698(v54, v55);
    }

    else
    {
      OUTLINED_FUNCTION_419();
      v56 = OUTLINED_FUNCTION_221();
      sub_1C7026698(v56, v57);
      v58 = OUTLINED_FUNCTION_221();
      sub_1C7026698(v58, v59);
      v60 = OUTLINED_FUNCTION_221();
      sub_1C7026698(v60, v61);
      boxed_opaque_existential_0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
      OUTLINED_FUNCTION_379();
      if (swift_dynamicCast())
      {
        v63 = OUTLINED_FUNCTION_152();
        memcpy(v63, v64, 0x41uLL);
        sub_1C7025F74(v327);
LABEL_33:
        v67 = OUTLINED_FUNCTION_339();
        sub_1C70266D0(v67);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v332 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_16_10();
          sub_1C716DBE8();
          v41 = v332;
        }

        v70 = *(v41 + 16);
        v69 = *(v41 + 24);
        v71 = v70 + 1;
        if (v70 >= v69 >> 1)
        {
          OUTLINED_FUNCTION_41_5(v69);
          v73 = v72;
          OUTLINED_FUNCTION_222();
          sub_1C716DBE8();
          v71 = v73;
          v41 = v332;
        }

        ++v0;
        *(v41 + 16) = v71;
        OUTLINED_FUNCTION_233((v41 + (v70 << 6)), v326[0], v326[1], v326[2], v326[3]);
        v40 = v24 + 32;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_379();
      if (swift_dynamicCast())
      {
        v65 = OUTLINED_FUNCTION_152();
        memcpy(v65, v66, 0x42uLL);
        sub_1C7026030(v327);
        goto LABEL_33;
      }
    }

    v62 = OUTLINED_FUNCTION_339();
    sub_1C70266D0(v62);
    sub_1C70266D0(v326);
    v42 += 4;
    ++v0;
  }

  v74 = 0;
  boxed_opaque_existential_0 = MEMORY[0x1E69E7CC0];
  j = *(v18 + 16);
  v0 = &type metadata for PersonExtendedToken;
LABEL_39:
  v75 = 56 * v74 + 32;
  while (j != v74)
  {
    v29 = *(v18 + 16);
    if (v74 >= v29)
    {
      goto LABEL_309;
    }

    v76 = *(v18 + v75);
    v77 = *(v18 + v75 + 16);
    v78 = *(v18 + v75 + 32);
    v326[3].n128_u64[0] = *(v18 + v75 + 48);
    v326[1] = v77;
    v326[2] = v78;
    v326[0] = v76;
    v330 = &type metadata for LocationExtendedToken;
    v331 = sub_1C70268F8();
    OUTLINED_FUNCTION_439();
    v79 = swift_allocObject();
    v329[0] = v79;
    v80 = *(v18 + v75 + 48);
    v81 = *(v18 + v75);
    v82 = *(v18 + v75 + 32);
    *(v79 + 32) = *(v18 + v75 + 16);
    *(v79 + 48) = v82;
    *(v79 + 64) = v80;
    *(v79 + 16) = v81;
    if (*(v79 + 56))
    {
      v83 = OUTLINED_FUNCTION_273();
      sub_1C70260B4(v83, v84);
      v85 = OUTLINED_FUNCTION_273();
      sub_1C70260B4(v85, v86);
      v87 = OUTLINED_FUNCTION_273();
      sub_1C70260B4(v87, v88);
    }

    else
    {
      OUTLINED_FUNCTION_419();
      v89 = OUTLINED_FUNCTION_221();
      sub_1C70260B4(v89, v90);
      v91 = OUTLINED_FUNCTION_221();
      sub_1C70260B4(v91, v92);
      v93 = OUTLINED_FUNCTION_221();
      sub_1C70260B4(v93, v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
      OUTLINED_FUNCTION_379();
      if (swift_dynamicCast())
      {
        v96 = OUTLINED_FUNCTION_152();
        memcpy(v96, v97, 0x41uLL);
        sub_1C7025F74(v327);
LABEL_49:
        v100 = OUTLINED_FUNCTION_339();
        sub_1C70260EC(v100);
        v101 = swift_isUniquelyReferenced_nonNull_native();
        v332 = boxed_opaque_existential_0;
        if ((v101 & 1) == 0)
        {
          OUTLINED_FUNCTION_16_10();
          sub_1C716DD2C();
          boxed_opaque_existential_0 = v332;
        }

        v103 = *(boxed_opaque_existential_0 + 16);
        v102 = *(boxed_opaque_existential_0 + 24);
        if (v103 >= v102 >> 1)
        {
          OUTLINED_FUNCTION_41_5(v102);
          OUTLINED_FUNCTION_321();
          sub_1C716DD2C();
          boxed_opaque_existential_0 = v332;
        }

        ++v74;
        *(boxed_opaque_existential_0 + 16) = v103 + 1;
        OUTLINED_FUNCTION_47_8((boxed_opaque_existential_0 + 56 * v103), v326[0], v326[1], v326[2]);
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_379();
      if (swift_dynamicCast())
      {
        v98 = OUTLINED_FUNCTION_152();
        memcpy(v98, v99, 0x42uLL);
        sub_1C7026030(v327);
        goto LABEL_49;
      }
    }

    v95 = OUTLINED_FUNCTION_339();
    sub_1C70260EC(v95);
    sub_1C70260EC(v326);
    v75 += 56;
    ++v74;
  }

  j = 0;
  v104 = *(v41 + 16);
  v105 = MEMORY[0x1E69E7CC0];
LABEL_55:
  v29 = (j << 6) + 88;
  while (v104 != j)
  {
    if (j >= *(v41 + 16))
    {
      goto LABEL_310;
    }

    v18 = *(v41 + v29);
    v29 += 64;
    ++j;
    if (v18)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_13();
        sub_1C6FB226C();
        v105 = v108;
      }

      v107 = *(v105 + 16);
      v106 = *(v105 + 24);
      v0 = v107 + 1;
      if (v107 >= v106 >> 1)
      {
        OUTLINED_FUNCTION_45_6(v106);
        sub_1C6FB226C();
        v105 = v109;
      }

      *(v105 + 16) = v0;
      *(v105 + 8 * v107 + 32) = v18;
      goto LABEL_55;
    }
  }

  v18 = sub_1C7027A88(v105);

  if (v18)
  {

    goto LABEL_76;
  }

  j = 0;
  v110 = *(boxed_opaque_existential_0 + 16);
  v111 = MEMORY[0x1E69E7CC0];
  v0 = 56;
  while (v110 != j)
  {
    OUTLINED_FUNCTION_527();
    if (v112)
    {
      goto LABEL_324;
    }

    v18 = *(boxed_opaque_existential_0 + v29);
    ++j;
    if (v18)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_13();
        sub_1C6FB226C();
        v111 = v115;
      }

      v114 = *(v111 + 16);
      v113 = *(v111 + 24);
      if (v114 >= v113 >> 1)
      {
        OUTLINED_FUNCTION_15(v113);
        OUTLINED_FUNCTION_131_0();
        sub_1C6FB226C();
        v111 = v116;
      }

      *(v111 + 16) = v114 + 1;
      *(v111 + 8 * v114 + 32) = v18;
    }
  }

  v18 = sub_1C7027A88(v111);

  if (v18)
  {
LABEL_76:
    OUTLINED_FUNCTION_356();
    j = *(v117 + 16);
    v306 = v117;
    OUTLINED_FUNCTION_134_0();
    if (!v112)
    {
      goto LABEL_77;
    }

    goto LABEL_326;
  }

  v306 = MEMORY[0x1E69E7CC0];
LABEL_78:
  v118 = 0;
  v119 = v317 + 64;
  boxed_opaque_existential_0 = MEMORY[0x1E69E7CC0];
  v314 = *(v317 + 16);
LABEL_79:
  v120 = v119 + 40 * v118;
  while (v314 != v118)
  {
    v29 = *(v317 + 16);
    if (v118 >= v29)
    {
      goto LABEL_311;
    }

    v121 = *(v120 - 32);
    v122 = *(v120 - 24);
    v18 = *(v120 - 16);
    v0 = *(v120 - 8);
    j = *(v120 - 7);
    v123 = *v120;
    v326[1].n128_u64[1] = &type metadata for GenericLocationExtendedToken;
    v326[2].n128_u64[0] = sub_1C702694C();
    OUTLINED_FUNCTION_328();
    v124 = swift_allocObject();
    v326[0].n128_u64[0] = v124;
    *(v124 + 16) = v121;
    *(v124 + 24) = v122;
    *(v124 + 32) = v18;
    *(v124 + 40) = v0;
    *(v124 + 41) = j;
    *(v124 + 48) = v123;
    if (v0)
    {
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_468();
    }

    else
    {
      OUTLINED_FUNCTION_383();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_468();
      v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
      OUTLINED_FUNCTION_237();
      if (swift_dynamicCast())
      {
        v125 = OUTLINED_FUNCTION_152();
        memcpy(v125, v126, 0x41uLL);
        sub_1C7025F74(v327);
LABEL_89:
        __swift_destroy_boxed_opaque_existential_1(v326);

        v129 = swift_isUniquelyReferenced_nonNull_native();
        v328 = boxed_opaque_existential_0;
        if ((v129 & 1) == 0)
        {
          OUTLINED_FUNCTION_31_7();
          sub_1C716DCF0();
          boxed_opaque_existential_0 = v328;
        }

        OUTLINED_FUNCTION_124_1();
        if (v112)
        {
          OUTLINED_FUNCTION_77_3(v130);
          OUTLINED_FUNCTION_137_0();
          sub_1C716DCF0();
          boxed_opaque_existential_0 = v328;
        }

        ++v118;
        *(boxed_opaque_existential_0 + 16) = v0;
        v131 = boxed_opaque_existential_0 + 40 * v120;
        *(v131 + 32) = v121;
        *(v131 + 40) = v122;
        *(v131 + 48) = v18;
        *(v131 + 56) = 0;
        *(v131 + 57) = j;
        *(v131 + 64) = v123;
        v119 = v317 + 64;
        goto LABEL_79;
      }

      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_237();
      if (swift_dynamicCast())
      {
        v127 = OUTLINED_FUNCTION_152();
        memcpy(v127, v128, 0x42uLL);
        sub_1C7026030(v327);
        goto LABEL_89;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v326);

    v120 += 40;
    ++v118;
  }

  j = 0;
  v132 = *(boxed_opaque_existential_0 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  while (v132 != j)
  {
    OUTLINED_FUNCTION_527();
    if (v112)
    {
      goto LABEL_312;
    }

    v133 = *(boxed_opaque_existential_0 + v29);
    ++j;
    if (v133)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_18_7();
        sub_1C6FB226C();
        v18 = v136;
      }

      v135 = *(v18 + 16);
      v134 = *(v18 + 24);
      v0 = v135 + 1;
      if (v135 >= v134 >> 1)
      {
        OUTLINED_FUNCTION_45_6(v134);
        sub_1C6FB226C();
        v18 = v137;
      }

      *(v18 + 16) = v0;
      *(v18 + 8 * v135 + 32) = v133;
    }
  }

  v138 = sub_1C7027A88(v18);

  if (v138)
  {
    v139 = v305;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_18_7();
      sub_1C6FB20F8();
    }

    OUTLINED_FUNCTION_583();
    if (v112)
    {
      OUTLINED_FUNCTION_22_10(v140);
      sub_1C6FB20F8();
      v306 = v295;
    }

    OUTLINED_FUNCTION_518();
  }

  else
  {
    v139 = v305;
  }

  j = 0;
  v141 = v139 + 32;
  boxed_opaque_existential_0 = MEMORY[0x1E69E7CC0];
  v142 = *(v139 + 16);
  v18 = &type metadata for PetExtendedToken;
  v317 = v139 + 32;
LABEL_111:
  v143 = (v141 + 72 * j);
  while (v142 != j)
  {
    v29 = *(v139 + 16);
    if (j >= v29)
    {
      goto LABEL_313;
    }

    memcpy(v326, v143, 0x41uLL);
    v330 = &type metadata for PersonExtendedToken;
    v331 = sub_1C7026850();
    v0 = swift_allocObject();
    v144 = OUTLINED_FUNCTION_584(v0);
    memmove(v144, v143, 0x41uLL);
    if (*(v0 + 40))
    {
      v145 = OUTLINED_FUNCTION_273();
      sub_1C7025F3C(v145, v146);
      v147 = OUTLINED_FUNCTION_273();
      sub_1C7025F3C(v147, v148);
      v149 = OUTLINED_FUNCTION_273();
      sub_1C7025F3C(v149, v150);
    }

    else
    {
      OUTLINED_FUNCTION_419();
      v151 = OUTLINED_FUNCTION_221();
      sub_1C7025F3C(v151, v152);
      v153 = OUTLINED_FUNCTION_221();
      sub_1C7025F3C(v153, v154);
      v155 = OUTLINED_FUNCTION_221();
      sub_1C7025F3C(v155, v156);
      v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
      OUTLINED_FUNCTION_379();
      if (swift_dynamicCast())
      {
        v158 = OUTLINED_FUNCTION_152();
        memcpy(v158, v159, 0x41uLL);
        sub_1C7025F74(v327);
LABEL_121:
        v162 = OUTLINED_FUNCTION_339();
        sub_1C7025F74(v162);
        v163 = swift_isUniquelyReferenced_nonNull_native();
        v332 = boxed_opaque_existential_0;
        if ((v163 & 1) == 0)
        {
          OUTLINED_FUNCTION_16_10();
          sub_1C716D97C();
          boxed_opaque_existential_0 = v332;
        }

        v165 = *(boxed_opaque_existential_0 + 16);
        v164 = *(boxed_opaque_existential_0 + 24);
        if (v165 >= v164 >> 1)
        {
          OUTLINED_FUNCTION_41_5(v164);
          OUTLINED_FUNCTION_336();
          sub_1C716D97C();
          boxed_opaque_existential_0 = v332;
        }

        ++j;
        *(boxed_opaque_existential_0 + 16) = v165 + 1;
        memcpy((boxed_opaque_existential_0 + 72 * v165 + 32), v326, 0x41uLL);
        v139 = v305;
        v141 = v317;
        goto LABEL_111;
      }

      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_379();
      if (swift_dynamicCast())
      {
        v160 = OUTLINED_FUNCTION_152();
        memcpy(v160, v161, 0x42uLL);
        sub_1C7026030(v327);
        goto LABEL_121;
      }
    }

    v157 = OUTLINED_FUNCTION_339();
    sub_1C7025F74(v157);
    sub_1C7025F74(v326);
    v143 += 72;
    ++j;
  }

  v166 = v304;
  v317 = 88;
  if (v304)
  {
    sub_1C75504FC();

    goto LABEL_138;
  }

  j = 0;
  v167 = *(boxed_opaque_existential_0 + 16);
  v168 = MEMORY[0x1E69E7CC0];
  while (v167 != j)
  {
    OUTLINED_FUNCTION_527();
    if (v112)
    {
      goto LABEL_325;
    }

    ++j;
    v169 = *(boxed_opaque_existential_0 + v29);
    if (v169)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_13();
        sub_1C6FB226C();
        v168 = v172;
      }

      v170 = *(v168 + 16);
      OUTLINED_FUNCTION_238();
      if (v112)
      {
        OUTLINED_FUNCTION_45_6(v171);
        sub_1C6FB226C();
        v168 = v173;
      }

      *(v168 + 16) = v0;
      *(v168 + 8 * v170 + 32) = v169;
    }
  }

  sub_1C7027AF4();
  v166 = v174;

  if (v166)
  {
LABEL_138:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v306 = v293;
    }

    v175 = *(v306 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v112)
    {
      OUTLINED_FUNCTION_15_2(v176);
      sub_1C6FB20F8();
      v306 = v294;
    }

    *(v306 + 16) = boxed_opaque_existential_0;
    *(v306 + 8 * v175 + 32) = v166;
  }

  j = 0;
  v177 = v316 + 32;
  boxed_opaque_existential_0 = MEMORY[0x1E69E7CC0];
  v178 = *(v316 + 16);
  v179 = &unk_1F46AF1B8;
  v0 = &unk_1C7562CE0;
  v305 = v316 + 32;
LABEL_144:
  v180 = (v177 + 72 * j);
  while (v178 != j)
  {
    v29 = *(v316 + 16);
    if (j >= v29)
    {
      goto LABEL_314;
    }

    memcpy(v333, v180, 0x42uLL);
    v330 = &type metadata for PetExtendedToken;
    v331 = sub_1C70268A4();
    v181 = swift_allocObject();
    v182 = OUTLINED_FUNCTION_584(v181);
    memmove(v182, v180, 0x42uLL);
    if (*(v181 + 40))
    {
      OUTLINED_FUNCTION_475();
      OUTLINED_FUNCTION_475();
      OUTLINED_FUNCTION_475();
    }

    else
    {
      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_475();
      OUTLINED_FUNCTION_475();
      OUTLINED_FUNCTION_475();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
      if (swift_dynamicCast())
      {
        memcpy(v327, v326, 0x41uLL);
        sub_1C7025F74(v327);
LABEL_154:
        __swift_destroy_boxed_opaque_existential_1(v329);
        sub_1C7026030(v333);
        v185 = swift_isUniquelyReferenced_nonNull_native();
        v332 = boxed_opaque_existential_0;
        if ((v185 & 1) == 0)
        {
          OUTLINED_FUNCTION_16_10();
          sub_1C716D940();
          boxed_opaque_existential_0 = v332;
        }

        v187 = *(boxed_opaque_existential_0 + 16);
        v186 = *(boxed_opaque_existential_0 + 24);
        if (v187 >= v186 >> 1)
        {
          OUTLINED_FUNCTION_41_5(v186);
          OUTLINED_FUNCTION_336();
          sub_1C716D940();
          boxed_opaque_existential_0 = v332;
        }

        ++j;
        *(boxed_opaque_existential_0 + 16) = v187 + 1;
        memcpy((boxed_opaque_existential_0 + 72 * v187 + 32), v333, 0x42uLL);
        v177 = v316 + 32;
        goto LABEL_144;
      }

      OUTLINED_FUNCTION_419();
      if (swift_dynamicCast())
      {
        v183 = OUTLINED_FUNCTION_221();
        memcpy(v183, v184, 0x42uLL);
        sub_1C7026030(v326);
        goto LABEL_154;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v329);
    sub_1C7026030(v333);
    sub_1C7026030(v333);
    v180 += 72;
    ++j;
  }

  j = 0;
  v188 = *(boxed_opaque_existential_0 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  v0 = 72;
  while (v188 != j)
  {
    OUTLINED_FUNCTION_527();
    if (v112)
    {
      goto LABEL_315;
    }

    ++j;
    v179 = *(boxed_opaque_existential_0 + v29);
    if (v179)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_18_7();
        sub_1C6FB226C();
        v18 = v191;
      }

      v190 = *(v18 + 16);
      v189 = *(v18 + 24);
      if (v190 >= v189 >> 1)
      {
        OUTLINED_FUNCTION_15(v189);
        OUTLINED_FUNCTION_141_2();
        sub_1C6FB226C();
        v18 = v192;
      }

      *(v18 + 16) = v190 + 1;
      *(v18 + 8 * v190 + 32) = v179;
    }
  }

  sub_1C7027AF4();
  boxed_opaque_existential_0 = v193;

  if (boxed_opaque_existential_0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_18_7();
      sub_1C6FB20F8();
    }

    OUTLINED_FUNCTION_583();
    if (v112)
    {
      OUTLINED_FUNCTION_22_10(v194);
      sub_1C6FB20F8();
      v306 = v296;
    }

    OUTLINED_FUNCTION_518();
  }

  else
  {
    v195 = v315;
  }

  j = 0;
  v317 = MEMORY[0x1E69E7CC0];
  v18 = &qword_1EDD0A7D0;
  v196 = *(v195 + 16);
  v0 = &type metadata for PersonExtendedToken;
  while (v196 != j)
  {
    v29 = *(v195 + 16);
    if (j >= v29)
    {
      goto LABEL_316;
    }

    OUTLINED_FUNCTION_148_1();
    v179 = (v198 & ~v197);
    sub_1C702659C();
    sub_1C702659C();
    v326[1].n128_u64[1] = v313;
    OUTLINED_FUNCTION_67_4();
    v326[2].n128_u64[0] = sub_1C70259B4(&qword_1EDD0A7D0, v199);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v326);
    OUTLINED_FUNCTION_423();
    sub_1C702659C();
    if (*(boxed_opaque_existential_0 + 56))
    {
LABEL_181:
      __swift_destroy_boxed_opaque_existential_1(v326);
      OUTLINED_FUNCTION_4_9();
      sub_1C70265F0();
      sub_1C70265F0();
      ++j;
      v195 = v315;
      continue;
    }

    OUTLINED_FUNCTION_383();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
    OUTLINED_FUNCTION_237();
    if (swift_dynamicCast())
    {
      v200 = OUTLINED_FUNCTION_152();
      memcpy(v200, v201, 0x41uLL);
      sub_1C7025F74(v327);
    }

    else
    {
      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_237();
      if (!swift_dynamicCast())
      {
        goto LABEL_181;
      }

      v202 = OUTLINED_FUNCTION_152();
      memcpy(v202, v203, 0x42uLL);
      sub_1C7026030(v327);
    }

    __swift_destroy_boxed_opaque_existential_1(v326);
    OUTLINED_FUNCTION_3_12();
    sub_1C70265F0();
    OUTLINED_FUNCTION_1_19();
    sub_1C70267FC();
    boxed_opaque_existential_0 = v317;
    v204 = swift_isUniquelyReferenced_nonNull_native();
    v328 = v317;
    if ((v204 & 1) == 0)
    {
      OUTLINED_FUNCTION_31_7();
      sub_1C716DCA8();
      boxed_opaque_existential_0 = v328;
    }

    v206 = *(boxed_opaque_existential_0 + 16);
    v205 = *(boxed_opaque_existential_0 + 24);
    if (v206 >= v205 >> 1)
    {
      OUTLINED_FUNCTION_77_3(v205);
      OUTLINED_FUNCTION_336();
      sub_1C716DCA8();
      boxed_opaque_existential_0 = v328;
    }

    ++j;
    *(boxed_opaque_existential_0 + 16) = v206 + 1;
    v317 = boxed_opaque_existential_0;
    OUTLINED_FUNCTION_1_19();
    sub_1C70267FC();
    v195 = v315;
  }

  v207 = *(v317 + 16);
  if (v207)
  {
    v0 = *(v313 + 48);
    OUTLINED_FUNCTION_148_1();
    v211 = v210 + (v209 & ~v208);
    v213 = *(v212 + 72);
    v214 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_4_9();
      sub_1C702659C();
      v179 = *(v308 + v0);
      sub_1C75504FC();
      sub_1C70265F0();
      if (v179)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_19_3();
          sub_1C6FB226C();
          v214 = v216;
        }

        boxed_opaque_existential_0 = *(v214 + 16);
        v215 = *(v214 + 24);
        if (boxed_opaque_existential_0 >= v215 >> 1)
        {
          OUTLINED_FUNCTION_15(v215);
          OUTLINED_FUNCTION_186();
          sub_1C6FB226C();
          v214 = v217;
        }

        *(v214 + 16) = boxed_opaque_existential_0 + 1;
        *(v214 + 8 * boxed_opaque_existential_0 + 32) = v179;
      }

      v211 += v213;
      --v207;
    }

    while (v207);
  }

  else
  {

    v214 = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027A88(v214);
  OUTLINED_FUNCTION_487();
  j = v306;
  if (boxed_opaque_existential_0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_19_3();
      sub_1C6FB20F8();
      j = v297;
    }

    OUTLINED_FUNCTION_265();
    if (v112)
    {
      OUTLINED_FUNCTION_15(v218);
      OUTLINED_FUNCTION_177();
      sub_1C6FB20F8();
      v306 = v298;
    }

    OUTLINED_FUNCTION_253();
  }

  v18 = 0;
  v219 = v312 + 80;
  v220 = MEMORY[0x1E69E7CC0];
  v319 = *(v312 + 16);
  v317 = v312 + 80;
LABEL_207:
  boxed_opaque_existential_0 = v219 + 56 * v18;
  v321 = v220;
  while (v319 != v18)
  {
    v29 = *(v312 + 16);
    if (v18 >= v29)
    {
      goto LABEL_317;
    }

    v221 = *(boxed_opaque_existential_0 - 48);
    v0 = *(boxed_opaque_existential_0 - 40);
    j = *(boxed_opaque_existential_0 - 32);
    v222 = *(boxed_opaque_existential_0 - 24);
    v223 = *(boxed_opaque_existential_0 - 16);
    v224 = *(boxed_opaque_existential_0 - 8);
    v179 = *boxed_opaque_existential_0;
    v326[1].n128_u64[1] = &type metadata for PartOfDayExtendedToken;
    v326[2].n128_u64[0] = sub_1C70269A0();
    OUTLINED_FUNCTION_520();
    v225 = swift_allocObject();
    v326[0].n128_u64[0] = v225;
    *(v225 + 16) = v221;
    *(v225 + 24) = v0;
    *(v225 + 32) = j;
    *(v225 + 40) = v222;
    *(v225 + 48) = v223;
    *(v225 + 56) = v224;
    *(v225 + 64) = v179;
    if (v222)
    {
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_428();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_468();
    }

    else
    {
      OUTLINED_FUNCTION_383();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_428();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
      OUTLINED_FUNCTION_237();
      if (swift_dynamicCast())
      {
        v226 = OUTLINED_FUNCTION_152();
        memcpy(v226, v227, 0x41uLL);
        sub_1C7025F74(v327);
LABEL_217:
        __swift_destroy_boxed_opaque_existential_1(v326);

        v230 = swift_isUniquelyReferenced_nonNull_native();
        v220 = v321;
        v328 = v321;
        if ((v230 & 1) == 0)
        {
          OUTLINED_FUNCTION_31_7();
          sub_1C716DC6C();
          v220 = v328;
        }

        v219 = v312 + 80;
        v232 = *(v220 + 16);
        v231 = *(v220 + 24);
        v233 = v232 + 1;
        if (v232 >= v231 >> 1)
        {
          OUTLINED_FUNCTION_77_3(v231);
          v322 = v235;
          sub_1C716DC6C();
          v233 = v322;
          v219 = v312 + 80;
          v220 = v328;
        }

        ++v18;
        *(v220 + 16) = v233;
        v234 = v220 + 56 * v232;
        *(v234 + 32) = v221;
        *(v234 + 40) = v0;
        *(v234 + 48) = j;
        *(v234 + 56) = 0;
        *(v234 + 64) = v223;
        *(v234 + 72) = v224;
        *(v234 + 80) = v179;
        goto LABEL_207;
      }

      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_237();
      if (swift_dynamicCast())
      {
        v228 = OUTLINED_FUNCTION_152();
        memcpy(v228, v229, 0x42uLL);
        sub_1C7026030(v327);
        goto LABEL_217;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v326);

    boxed_opaque_existential_0 += 56;
    ++v18;
    v220 = v321;
  }

  boxed_opaque_existential_0 = 0;
  v236 = *(v220 + 16);
  j = MEMORY[0x1E69E7CC0];
  v0 = 72;
LABEL_223:
  v29 = 56 * boxed_opaque_existential_0 + 72;
  while (v236 != boxed_opaque_existential_0)
  {
    if (boxed_opaque_existential_0 >= *(v220 + 16))
    {
      goto LABEL_318;
    }

    ++boxed_opaque_existential_0;
    v18 = *(v220 + v29);
    v29 += 56;
    if (v18)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_19_3();
        sub_1C6FB226C();
        j = v239;
      }

      v237 = *(j + 16);
      OUTLINED_FUNCTION_305();
      v220 = v321;
      if (v112)
      {
        OUTLINED_FUNCTION_57(v238);
        sub_1C6FB226C();
        v220 = v321;
        j = v240;
      }

      *(j + 16) = v179;
      *(j + 8 * v237 + 32) = v18;
      goto LABEL_223;
    }
  }

  sub_1C7027A88(j);
  OUTLINED_FUNCTION_487();
  if (boxed_opaque_existential_0)
  {
    v241 = v311;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_19_3();
      sub_1C6FB20F8();
    }

    OUTLINED_FUNCTION_265();
    if (v112)
    {
      OUTLINED_FUNCTION_15(v242);
      OUTLINED_FUNCTION_177();
      sub_1C6FB20F8();
      v306 = v299;
    }

    OUTLINED_FUNCTION_253();
  }

  else
  {
    v241 = v311;
  }

  v243 = 0;
  v323 = MEMORY[0x1E69E7CC0];
  j = &qword_1EC215E28;
  v18 = *(v241 + 16);
  while (v18 != v243)
  {
    v29 = *(v241 + 16);
    if (v243 >= v29)
    {
      goto LABEL_319;
    }

    OUTLINED_FUNCTION_148_1();
    OUTLINED_FUNCTION_65_4();
    sub_1C702659C();
    boxed_opaque_existential_0 = v318;
    sub_1C702659C();
    v326[1].n128_u64[1] = v310;
    OUTLINED_FUNCTION_66_6();
    v326[2].n128_u64[0] = sub_1C70259B4(&qword_1EC215E28, v244);
    v245 = __swift_allocate_boxed_opaque_existential_0(v326);
    sub_1C702659C();
    if (v245[3])
    {
LABEL_245:
      __swift_destroy_boxed_opaque_existential_1(v326);
      OUTLINED_FUNCTION_65_4();
      sub_1C70265F0();
      sub_1C70265F0();
      v243 = (v243 + 1);
      v241 = v311;
      continue;
    }

    OUTLINED_FUNCTION_383();
    v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
    OUTLINED_FUNCTION_237();
    if (swift_dynamicCast())
    {
      v246 = OUTLINED_FUNCTION_152();
      memcpy(v246, v247, 0x41uLL);
      sub_1C7025F74(v327);
    }

    else
    {
      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_237();
      if (!swift_dynamicCast())
      {
        goto LABEL_245;
      }

      v248 = OUTLINED_FUNCTION_152();
      memcpy(v248, v249, 0x42uLL);
      sub_1C7026030(v327);
    }

    __swift_destroy_boxed_opaque_existential_1(v326);
    OUTLINED_FUNCTION_2_11();
    sub_1C70265F0();
    OUTLINED_FUNCTION_0_15();
    sub_1C70267FC();
    boxed_opaque_existential_0 = v323;
    v250 = swift_isUniquelyReferenced_nonNull_native();
    v328 = v323;
    if ((v250 & 1) == 0)
    {
      OUTLINED_FUNCTION_31_7();
      sub_1C716DC24();
      boxed_opaque_existential_0 = v328;
    }

    OUTLINED_FUNCTION_411();
    if (v112)
    {
      OUTLINED_FUNCTION_77_3(v251);
      OUTLINED_FUNCTION_137_0();
      sub_1C716DC24();
      boxed_opaque_existential_0 = v328;
    }

    v243 = (v243 + 1);
    *(boxed_opaque_existential_0 + 16) = v0;
    v323 = boxed_opaque_existential_0;
    OUTLINED_FUNCTION_0_15();
    sub_1C70267FC();
    v241 = v311;
  }

  v252 = *(v323 + 16);
  if (v252)
  {
    v0 = *(v310 + 28);
    OUTLINED_FUNCTION_148_1();
    v256 = v255 + (v254 & ~v253);
    v258 = *(v257 + 72);
    v259 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C702659C();
      v260 = *(v307 + v0);
      sub_1C75504FC();
      sub_1C70265F0();
      if (v260)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_19_3();
          sub_1C6FB226C();
          v259 = v263;
        }

        v262 = *(v259 + 16);
        v261 = *(v259 + 24);
        if (v262 >= v261 >> 1)
        {
          OUTLINED_FUNCTION_15(v261);
          OUTLINED_FUNCTION_186();
          sub_1C6FB226C();
          v259 = v264;
        }

        *(v259 + 16) = v262 + 1;
        *(v259 + 8 * v262 + 32) = v260;
      }

      v256 += v258;
      --v252;
    }

    while (v252);
  }

  else
  {

    v259 = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027A88(v259);
  OUTLINED_FUNCTION_487();
  j = v306;
  if (boxed_opaque_existential_0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_19_3();
      sub_1C6FB20F8();
      j = v300;
    }

    OUTLINED_FUNCTION_265();
    if (v112)
    {
      OUTLINED_FUNCTION_15(v265);
      OUTLINED_FUNCTION_177();
      sub_1C6FB20F8();
      v306 = v301;
    }

    OUTLINED_FUNCTION_253();
  }

  v18 = 0;
  v266 = v309 + 64;
  v267 = MEMORY[0x1E69E7CC0];
  v324 = *(v309 + 16);
  v316 = v309 + 64;
LABEL_271:
  boxed_opaque_existential_0 = v266 + 40 * v18;
  v320 = v267;
  while (v324 != v18)
  {
    v29 = *(v309 + 16);
    if (v18 >= v29)
    {
      goto LABEL_320;
    }

    v268 = *(boxed_opaque_existential_0 - 32);
    v0 = *(boxed_opaque_existential_0 - 24);
    j = *(boxed_opaque_existential_0 - 16);
    v269 = *(boxed_opaque_existential_0 - 8);
    v270 = *(boxed_opaque_existential_0 - 7);
    v271 = *(boxed_opaque_existential_0 - 6);
    v272 = *boxed_opaque_existential_0;
    v326[1].n128_u64[1] = &type metadata for EventExtendedToken;
    v326[2].n128_u64[0] = sub_1C7026A9C();
    OUTLINED_FUNCTION_328();
    v273 = swift_allocObject();
    v326[0].n128_u64[0] = v273;
    v317 = v268;
    *(v273 + 16) = v268;
    *(v273 + 24) = v0;
    *(v273 + 32) = j;
    *(v273 + 40) = v269;
    *(v273 + 41) = v270;
    LODWORD(v318) = v271;
    *(v273 + 42) = v271;
    *(v273 + 48) = v272;
    if (v269)
    {
      OUTLINED_FUNCTION_468();
      OUTLINED_FUNCTION_428();
      swift_bridgeObjectRetain_n();
    }

    else
    {
      v274 = j;
      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_468();
      OUTLINED_FUNCTION_428();
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
      OUTLINED_FUNCTION_237();
      if (swift_dynamicCast())
      {
        v275 = OUTLINED_FUNCTION_152();
        memcpy(v275, v276, 0x41uLL);
        sub_1C7025F74(v327);
LABEL_281:
        __swift_destroy_boxed_opaque_existential_1(v326);

        v279 = v320;
        v280 = swift_isUniquelyReferenced_nonNull_native();
        v328 = v320;
        if ((v280 & 1) == 0)
        {
          OUTLINED_FUNCTION_31_7();
          sub_1C716DBAC();
          v279 = v328;
        }

        v282 = *(v279 + 16);
        v281 = *(v279 + 24);
        j = v282 + 1;
        if (v282 >= v281 >> 1)
        {
          OUTLINED_FUNCTION_77_3(v281);
          OUTLINED_FUNCTION_177();
          sub_1C716DBAC();
          v279 = v328;
        }

        ++v18;
        *(v279 + 16) = j;
        v283 = v279 + 40 * v282;
        *(v283 + 32) = v317;
        *(v283 + 40) = v0;
        *(v283 + 48) = v274;
        *(v283 + 56) = 0;
        *(v283 + 57) = v270;
        *(v283 + 58) = v271;
        *(v283 + 64) = v272;
        v267 = v279;
        v266 = v309 + 64;
        goto LABEL_271;
      }

      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_237();
      if (swift_dynamicCast())
      {
        v277 = OUTLINED_FUNCTION_152();
        memcpy(v277, v278, 0x42uLL);
        sub_1C7026030(v327);
        goto LABEL_281;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v326);

    v267 = v320;

    boxed_opaque_existential_0 += 40;
    ++v18;
  }

  boxed_opaque_existential_0 = 0;
  v284 = *(v267 + 16);
  j = MEMORY[0x1E69E7CC0];
LABEL_287:
  v29 = 40 * boxed_opaque_existential_0 + 64;
  while (v284 != boxed_opaque_existential_0)
  {
    if (boxed_opaque_existential_0 >= *(v267 + 16))
    {
      goto LABEL_321;
    }

    v18 = *(v267 + v29);
    v29 += 40;
    ++boxed_opaque_existential_0;
    if (v18)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_19_3();
        sub_1C6FB226C();
        j = v286;
      }

      v0 = *(j + 16);
      v285 = *(j + 24);
      if (v0 >= v285 >> 1)
      {
        OUTLINED_FUNCTION_57(v285);
        sub_1C6FB226C();
        j = v287;
      }

      *(j + 16) = v0 + 1;
      *(j + 8 * v0 + 32) = v18;
      goto LABEL_287;
    }
  }

  sub_1C7027A88(j);
  OUTLINED_FUNCTION_487();
  v288 = v306;
  if (boxed_opaque_existential_0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_19_3();
      sub_1C6FB20F8();
      v288 = v302;
    }

    v290 = *(v288 + 16);
    v289 = *(v288 + 24);
    v291 = v288;
    if (v290 >= v289 >> 1)
    {
      OUTLINED_FUNCTION_15(v289);
      OUTLINED_FUNCTION_177();
      sub_1C6FB20F8();
      v291 = v303;
    }

    *(v291 + 16) = v290 + 1;
    v288 = v291;
    *(v291 + 8 * v290 + 32) = boxed_opaque_existential_0;
  }

  sub_1C6FDE498(v288);
  OUTLINED_FUNCTION_487();
  sub_1C7027A58(v325);
LABEL_303:
  OUTLINED_FUNCTION_25_0();
}

void ExtendedTokenCollection.assetUUIDs(for:consolidatedPersonAssetUUIDs:)()
{
  OUTLINED_FUNCTION_33();
  v285 = v1;
  v294 = type metadata accessor for PartOfWeekExtendedToken(0);
  OUTLINED_FUNCTION_3_0();
  v287 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_130();
  v291 = v5;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_140_1();
  type metadata accessor for TimeExtendedToken(0);
  OUTLINED_FUNCTION_3_0();
  v288 = v8;
  v289 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_130();
  v292 = v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_140_1();
  v296 = v12;
  v13 = v0[1];
  v15 = v0[2];
  v14 = v0[3];
  v17 = v0[4];
  v16 = v0[5];
  v19 = v0[6];
  v18 = v0[7];
  v21 = v0[8];
  v20 = v0[9];
  v286 = *v0;
  v311.n128_u64[0] = *v0;
  v311.n128_u64[1] = v13;
  v284 = v13;
  v312.n128_u64[0] = v15;
  v312.n128_u64[1] = v14;
  v302 = v16;
  v303 = v14;
  v313.n128_u64[0] = v17;
  v313.n128_u64[1] = v16;
  v297 = v19;
  v314.n128_u64[0] = v19;
  v314.n128_u64[1] = v18;
  v295 = v18;
  v315 = v21;
  v316 = v20;
  v293 = v20;
  inited = &v311;
  v23 = ExtendedTokenCollection.allTokens.getter();
  j = 0;
  v25 = *(v23 + 16);
  for (i = v23 + 32; ; i += 40)
  {
    if (v25 == j)
    {

      v306 = 0;
      v304 = 0u;
      v305 = 0u;
LABEL_21:
      sub_1C6FD7FC8(&v304, &qword_1EC215EA8);
      goto LABEL_266;
    }

    v27 = *(v23 + 16);
    if (j >= v27)
    {
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      OUTLINED_FUNCTION_57(v27);
      sub_1C6FB20F8();
      v290 = v267;
LABEL_68:
      *(v290 + 16) = v15;
      *(v290 + 8 * j + 32) = inited;
      goto LABEL_69;
    }

    sub_1C6FB5E28(i, &v308);
    v28 = OUTLINED_FUNCTION_427();
    if (v29(v28))
    {
      break;
    }

    ++j;
    __swift_destroy_boxed_opaque_existential_1(&v308);
  }

  sub_1C6F699F8(&v308, &v304);
  if (!*(&v305 + 1))
  {
    goto LABEL_21;
  }

  sub_1C6FD7FC8(&v304, &qword_1EC215EA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215EB0);
  inited = swift_initStackObject();
  inited[1] = xmmword_1C75604F0;
  inited[2].n128_u64[0] = v15;
  inited[2].n128_u64[1] = v17;
  sub_1C75504FC();
  sub_1C75504FC();
  v15 = MEMORY[0x1E69E7CC0];
  for (j = 32; j != 48; j += 8)
  {
    v30 = *(inited->n128_i64 + j);
    v31 = *(v30 + 16);
    v32 = *(v15 + 16);
    if (__OFADD__(v32, v31))
    {
      goto LABEL_269;
    }

    sub_1C75504FC();
    if (!swift_isUniquelyReferenced_nonNull_native() || v32 + v31 > *(v15 + 24) >> 1)
    {
      OUTLINED_FUNCTION_131_0();
      sub_1C6FB2320();
      v15 = v33;
    }

    if (*(v30 + 16))
    {
      OUTLINED_FUNCTION_495();
      if (v34 < v31)
      {
        goto LABEL_285;
      }

      swift_arrayInitWithCopy();

      if (v31)
      {
        v35 = *(v15 + 16);
        v36 = __OFADD__(v35, v31);
        v27 = v35 + v31;
        if (v36)
        {
          goto LABEL_286;
        }

        *(v15 + 16) = v27;
      }
    }

    else
    {

      if (v31)
      {
        goto LABEL_270;
      }
    }
  }

  swift_setDeallocating();
  sub_1C6FDC9C8();
  v37 = 0;
  v38 = *(v21 + 16);
  v39 = v21 + 32;
  v40 = MEMORY[0x1E69E7CC0];
LABEL_23:
  j = v39 + (v37 << 6);
  while (v38 != v37)
  {
    v27 = *(v21 + 16);
    if (v37 >= v27)
    {
      goto LABEL_271;
    }

    v41 = *j;
    v42 = *(j + 16);
    v43 = *(j + 48);
    v313 = *(j + 32);
    v314 = v43;
    v311 = v41;
    v312 = v42;
    v309 = &type metadata for TripExtendedToken;
    v310 = sub_1C70269F4();
    v44 = swift_allocObject();
    *&v308 = v44;
    v45 = *(j + 48);
    v47 = *j;
    v46 = *(j + 16);
    v44[3] = *(j + 32);
    v44[4] = v45;
    v44[1] = v47;
    v44[2] = v46;
    v48 = OUTLINED_FUNCTION_289();
    sub_1C7026698(v48, v49);
    v50 = OUTLINED_FUNCTION_289();
    sub_1C7026698(v50, v51);
    v52 = OUTLINED_FUNCTION_427();
    v53(v52);
    OUTLINED_FUNCTION_600();
    if (inited)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v307[0] = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        inited = v307;
        OUTLINED_FUNCTION_99();
        sub_1C716DBE8();
        v40 = v307[0];
      }

      v56 = *(v40 + 16);
      v55 = *(v40 + 24);
      v57 = v56 + 1;
      if (v56 >= v55 >> 1)
      {
        OUTLINED_FUNCTION_15(v55);
        inited = v307;
        v59 = v58;
        OUTLINED_FUNCTION_222();
        sub_1C716DBE8();
        v57 = v59;
        v40 = v307[0];
      }

      ++v37;
      *(v40 + 16) = v57;
      OUTLINED_FUNCTION_233((v40 + (v56 << 6)), v311, v312, v313, v314);
      v39 = v21 + 32;
      goto LABEL_23;
    }

    sub_1C70266D0(&v311);
    j += 64;
    ++v37;
  }

  v60 = 0;
  v61 = *(v15 + 16);
  v62 = MEMORY[0x1E69E7CC0];
LABEL_34:
  j = 56 * v60 + 32;
  while (v61 != v60)
  {
    v27 = *(v15 + 16);
    if (v60 >= v27)
    {
      goto LABEL_272;
    }

    inited = (v15 + j);
    v63 = *(v15 + j);
    v64 = *(v15 + j + 16);
    v65 = *(v15 + j + 32);
    v314.n128_u64[0] = *(v15 + j + 48);
    v312 = v64;
    v313 = v65;
    v311 = v63;
    v309 = &type metadata for LocationExtendedToken;
    v310 = sub_1C70268F8();
    OUTLINED_FUNCTION_439();
    *&v308 = swift_allocObject();
    OUTLINED_FUNCTION_398(v308, inited[3].n128_u64[0], inited[2], inited[1], *inited);
    v66 = OUTLINED_FUNCTION_289();
    sub_1C70260B4(v66, v67);
    v68 = OUTLINED_FUNCTION_289();
    sub_1C70260B4(v68, v69);
    v70 = OUTLINED_FUNCTION_427();
    v71(v70);
    OUTLINED_FUNCTION_600();
    if ((v15 + j))
    {
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v307[0] = v62;
      if ((v72 & 1) == 0)
      {
        inited = v307;
        OUTLINED_FUNCTION_99();
        sub_1C716DD2C();
        v62 = v307[0];
      }

      v74 = *(v62 + 16);
      v73 = *(v62 + 24);
      v75 = v74 + 1;
      if (v74 >= v73 >> 1)
      {
        OUTLINED_FUNCTION_15(v73);
        inited = v307;
        v77 = v76;
        OUTLINED_FUNCTION_222();
        sub_1C716DD2C();
        v75 = v77;
        v62 = v307[0];
      }

      ++v60;
      *(v62 + 16) = v75;
      OUTLINED_FUNCTION_39_7(v62 + 56 * v74);
      goto LABEL_34;
    }

    sub_1C70260EC(&v311);
    j += 56;
    ++v60;
  }

  j = 0;
  v78 = *(v40 + 16);
  v15 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v27 = (j << 6) + 88;
  while (v78 != j)
  {
    if (j >= *(v40 + 16))
    {
      goto LABEL_273;
    }

    inited = *(v40 + v27);
    v27 += 64;
    ++j;
    if (inited)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_13();
        sub_1C6FB226C();
        v15 = v81;
      }

      v80 = *(v15 + 16);
      v79 = *(v15 + 24);
      v61 = v80 + 1;
      if (v80 >= v79 >> 1)
      {
        OUTLINED_FUNCTION_15(v79);
        OUTLINED_FUNCTION_131_0();
        sub_1C6FB226C();
        v15 = v82;
      }

      *(v15 + 16) = v61;
      *(v15 + 8 * v80 + 32) = inited;
      goto LABEL_45;
    }
  }

  inited = sub_1C7027A88(v15);

  if (inited)
  {

    goto LABEL_67;
  }

  j = 0;
  v83 = *(v62 + 16);
  v15 = MEMORY[0x1E69E7CC0];
LABEL_57:
  v27 = 56 * j + 80;
  while (v83 != j)
  {
    if (j >= *(v62 + 16))
    {
      goto LABEL_287;
    }

    inited = *(v62 + v27);
    v27 += 56;
    ++j;
    if (inited)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_13();
        sub_1C6FB226C();
        v15 = v86;
      }

      OUTLINED_FUNCTION_274_0();
      if (v85)
      {
        OUTLINED_FUNCTION_15(v84);
        OUTLINED_FUNCTION_131_0();
        sub_1C6FB226C();
        v15 = v87;
      }

      *(v15 + 16) = v61;
      *(v15 + 8 * &unk_1F46AF1E0 + 32) = inited;
      goto LABEL_57;
    }
  }

  inited = sub_1C7027A88(v15);

  if (inited)
  {
LABEL_67:
    OUTLINED_FUNCTION_356();
    j = *(v88 + 16);
    v27 = *(v88 + 24);
    v290 = v88;
    v15 = j + 1;
    if (j < v27 >> 1)
    {
      goto LABEL_68;
    }

    goto LABEL_289;
  }

  v290 = MEMORY[0x1E69E7CC0];
LABEL_69:
  v89 = 0;
  v298 = *(v303 + 16);
  v90 = v303 + 64;
  v282 = MEMORY[0x1E69E7CC0];
LABEL_70:
  v15 = v90 + 40 * v89;
  while (v298 != v89)
  {
    v27 = *(v303 + 16);
    if (v89 >= v27)
    {
      goto LABEL_274;
    }

    j = *(v15 - 32);
    v91 = *(v15 - 24);
    v92 = *(v15 - 16);
    v93 = *(v15 - 8);
    v94 = *(v15 - 7);
    v95 = *v15;
    v312.n128_u64[1] = &type metadata for GenericLocationExtendedToken;
    v313.n128_u64[0] = sub_1C702694C();
    OUTLINED_FUNCTION_328();
    v96 = swift_allocObject();
    v311.n128_u64[0] = v96;
    *(v96 + 16) = j;
    *(v96 + 24) = v91;
    *(v96 + 32) = v92;
    *(v96 + 40) = v93;
    *(v96 + 41) = v94;
    *(v96 + 48) = v95;
    OUTLINED_FUNCTION_348();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_290();
    swift_bridgeObjectRetain_n();
    v97 = OUTLINED_FUNCTION_426();
    v98(v97);
    OUTLINED_FUNCTION_484();
    if (inited)
    {
      inited = v282;
      v99 = swift_isUniquelyReferenced_nonNull_native();
      *&v304 = v282;
      if ((v99 & 1) == 0)
      {
        OUTLINED_FUNCTION_90_5();
        sub_1C716DCF0();
        inited = v304;
      }

      v101 = inited[1].n128_u64[0];
      v100 = inited[1].n128_u64[1];
      v102 = v101 + 1;
      if (v101 >= v100 >> 1)
      {
        OUTLINED_FUNCTION_15(v100);
        v283 = v104;
        OUTLINED_FUNCTION_222();
        sub_1C716DCF0();
        v102 = v283;
        inited = v304;
      }

      ++v89;
      inited[1].n128_u64[0] = v102;
      v282 = inited;
      v103 = inited + 40 * v101;
      *(v103 + 4) = j;
      *(v103 + 5) = v91;
      *(v103 + 6) = v92;
      v103[56] = v93;
      v103[57] = v94;
      *(v103 + 8) = v95;
      v90 = v303 + 64;
      goto LABEL_70;
    }

    v15 += 40;
    ++v89;
  }

  j = 0;
  v105 = v282[1].n128_u64[0];
  inited = MEMORY[0x1E69E7CC0];
LABEL_81:
  v27 = 40 * j + 64;
  while (v105 != j)
  {
    if (j >= v282[1].n128_u64[0])
    {
      goto LABEL_275;
    }

    v106 = *(v282->n128_u64 + v27);
    v27 += 40;
    ++j;
    if (v106)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v108;
      }

      v15 = inited[1].n128_u64[0];
      v107 = inited[1].n128_u64[1];
      if (v15 >= v107 >> 1)
      {
        OUTLINED_FUNCTION_45_6(v107);
        sub_1C6FB226C();
        inited = v109;
      }

      inited[1].n128_u64[0] = v15 + 1;
      inited[2].n128_u64[v15] = v106;
      goto LABEL_81;
    }
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_461();
  if (v15)
  {
    v110 = v286;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v290 = v270;
    }

    OUTLINED_FUNCTION_87_3();
    if (v85)
    {
      OUTLINED_FUNCTION_15_2(v111);
      sub_1C6FB20F8();
      v290 = v271;
    }

    OUTLINED_FUNCTION_88_2();
  }

  else
  {
    v110 = v286;
  }

  v112 = 0;
  v113 = *(v110 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  j = v110 + 32;
LABEL_98:
  v114 = j + 72 * v112;
  while (v113 != v112)
  {
    v27 = *(v110 + 16);
    if (v112 >= v27)
    {
      goto LABEL_276;
    }

    OUTLINED_FUNCTION_578();
    memcpy(v115, v116, v117);
    v309 = &type metadata for PersonExtendedToken;
    v310 = sub_1C7026850();
    v118 = swift_allocObject();
    OUTLINED_FUNCTION_584(v118);
    OUTLINED_FUNCTION_578();
    memmove(v119, v120, v121);
    v122 = OUTLINED_FUNCTION_289();
    sub_1C7025F3C(v122, v123);
    v124 = OUTLINED_FUNCTION_289();
    sub_1C7025F3C(v124, v125);
    v126 = OUTLINED_FUNCTION_427();
    v127(v126);
    OUTLINED_FUNCTION_600();
    if (inited)
    {
      v128 = swift_isUniquelyReferenced_nonNull_native();
      v307[0] = v15;
      v303 = j;
      if ((v128 & 1) == 0)
      {
        inited = v307;
        OUTLINED_FUNCTION_99();
        sub_1C716D97C();
        v15 = v307[0];
      }

      v130 = *(v15 + 16);
      v129 = *(v15 + 24);
      if (v130 >= v129 >> 1)
      {
        OUTLINED_FUNCTION_15(v129);
        inited = v307;
        OUTLINED_FUNCTION_137_0();
        sub_1C716D97C();
        v15 = v307[0];
      }

      ++v112;
      *(v15 + 16) = v130 + 1;
      v131 = OUTLINED_FUNCTION_268(v15 + 72 * v130);
      memcpy(v131, v132, v133);
      j = v303;
      goto LABEL_98;
    }

    sub_1C7025F74(&v311);
    v114 += 72;
    ++v112;
  }

  v303 = 88;
  v134 = v285;
  if (v285)
  {
    sub_1C75504FC();

    goto LABEL_121;
  }

  j = 0;
  v135 = *(v15 + 16);
  inited = MEMORY[0x1E69E7CC0];
LABEL_111:
  v27 = 72 * j + 88;
  while (v135 != j)
  {
    if (j >= *(v15 + 16))
    {
      goto LABEL_288;
    }

    ++j;
    v136 = *(v15 + v27);
    v27 += 72;
    if (v136)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v138;
      }

      OUTLINED_FUNCTION_411();
      if (v85)
      {
        OUTLINED_FUNCTION_45_6(v137);
        sub_1C6FB226C();
        inited = v139;
      }

      inited[1].n128_u64[0] = v114;
      inited[2].n128_u64[v113] = v136;
      goto LABEL_111;
    }
  }

  sub_1C7027AF4();
  v134 = v140;

  if (v134)
  {
LABEL_121:
    v141 = v290;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_18_7();
      sub_1C6FB20F8();
      v141 = v268;
    }

    v142 = *(v141 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v85)
    {
      OUTLINED_FUNCTION_15_2(v143);
      sub_1C6FB20F8();
      v141 = v269;
    }

    *(v141 + 16) = inited;
    v290 = v141;
    *(v141 + 8 * v142 + 32) = v134;
  }

  v144 = 0;
  v145 = *(v284 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  j = v284 + 32;
LABEL_127:
  v146 = j + 72 * v144;
  while (v145 != v144)
  {
    v27 = *(v284 + 16);
    if (v144 >= v27)
    {
      goto LABEL_277;
    }

    OUTLINED_FUNCTION_577();
    memcpy(v147, v148, v149);
    v309 = &type metadata for PetExtendedToken;
    v310 = sub_1C70268A4();
    v150 = swift_allocObject();
    OUTLINED_FUNCTION_584(v150);
    OUTLINED_FUNCTION_577();
    memmove(v151, v152, v153);
    v154 = OUTLINED_FUNCTION_289();
    sub_1C7025FF8(v154, v155);
    v156 = OUTLINED_FUNCTION_289();
    sub_1C7025FF8(v156, v157);
    v158 = OUTLINED_FUNCTION_427();
    v159(v158);
    OUTLINED_FUNCTION_600();
    if (inited)
    {
      v160 = swift_isUniquelyReferenced_nonNull_native();
      v307[0] = v15;
      v299 = j;
      if ((v160 & 1) == 0)
      {
        inited = v307;
        OUTLINED_FUNCTION_99();
        sub_1C716D940();
        v15 = v307[0];
      }

      v162 = *(v15 + 16);
      v161 = *(v15 + 24);
      if (v162 >= v161 >> 1)
      {
        OUTLINED_FUNCTION_15(v161);
        inited = v307;
        OUTLINED_FUNCTION_137_0();
        sub_1C716D940();
        v15 = v307[0];
      }

      ++v144;
      *(v15 + 16) = v162 + 1;
      v163 = OUTLINED_FUNCTION_267(v15 + 72 * v162);
      memcpy(v163, v164, v165);
      j = v299;
      goto LABEL_127;
    }

    sub_1C7026030(&v311);
    v146 += 72;
    ++v144;
  }

  j = 0;
  v166 = *(v15 + 16);
  inited = MEMORY[0x1E69E7CC0];
  v167 = v288;
LABEL_138:
  v27 = 72 * j + 88;
  v168 = v289;
  while (v166 != j)
  {
    if (j >= *(v15 + 16))
    {
      goto LABEL_278;
    }

    ++j;
    v169 = *(v15 + v27);
    v27 += 72;
    if (v169)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v171;
      }

      OUTLINED_FUNCTION_411();
      if (v85)
      {
        OUTLINED_FUNCTION_45_6(v170);
        sub_1C6FB226C();
        inited = v172;
      }

      inited[1].n128_u64[0] = v289;
      inited[2].n128_u64[&type metadata for PetExtendedToken] = v169;
      goto LABEL_138;
    }
  }

  sub_1C7027AF4();
  OUTLINED_FUNCTION_461();
  if (v15)
  {
    v173 = v302;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v290 = v272;
    }

    OUTLINED_FUNCTION_87_3();
    if (v85)
    {
      OUTLINED_FUNCTION_15_2(v174);
      sub_1C6FB20F8();
      v290 = v273;
    }

    OUTLINED_FUNCTION_88_2();
  }

  else
  {
    v173 = v302;
  }

  v175 = 0;
  v176 = *(v173 + 16);
  v303 = MEMORY[0x1E69E7CC0];
  while (v176 != v175)
  {
    v27 = *(v173 + 16);
    if (v175 >= v27)
    {
      goto LABEL_279;
    }

    OUTLINED_FUNCTION_435();
    OUTLINED_FUNCTION_4_9();
    v15 = v296;
    sub_1C702659C();
    v312.n128_u64[1] = v168;
    OUTLINED_FUNCTION_67_4();
    v313.n128_u64[0] = sub_1C70259B4(&qword_1EDD0A7D0, v177);
    __swift_allocate_boxed_opaque_existential_0(&v311);
    OUTLINED_FUNCTION_400();
    sub_1C702659C();
    v178 = OUTLINED_FUNCTION_426();
    v179(v178);
    OUTLINED_FUNCTION_484();
    if (inited)
    {
      OUTLINED_FUNCTION_1_19();
      sub_1C70267FC();
      inited = v303;
      v180 = swift_isUniquelyReferenced_nonNull_native();
      *&v304 = v303;
      if ((v180 & 1) == 0)
      {
        OUTLINED_FUNCTION_90_5();
        sub_1C716DCA8();
        inited = v304;
      }

      OUTLINED_FUNCTION_124_1();
      if (v85)
      {
        OUTLINED_FUNCTION_15(v181);
        OUTLINED_FUNCTION_137_0();
        sub_1C716DCA8();
        inited = v304;
      }

      ++v175;
      inited[1].n128_u64[0] = v168;
      v303 = inited;
      OUTLINED_FUNCTION_1_19();
      sub_1C70267FC();
      v167 = v288;
      v168 = v289;
      v173 = v302;
    }

    else
    {
      OUTLINED_FUNCTION_3_12();
      sub_1C70265F0();
      ++v175;
      v173 = v302;
    }
  }

  j = *(v303 + 16);
  if (j)
  {
    v182 = *(v168 + 48);
    OUTLINED_FUNCTION_191();
    v185 = v183 + v184;
    v186 = *(v167 + 72);
    inited = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C702659C();
      v187 = *(v292 + v182);
      sub_1C75504FC();
      OUTLINED_FUNCTION_156();
      sub_1C70265F0();
      if (v187)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          inited = v189;
        }

        OUTLINED_FUNCTION_124_1();
        if (v85)
        {
          OUTLINED_FUNCTION_45_6(v188);
          sub_1C6FB226C();
          inited = v190;
        }

        inited[1].n128_u64[0] = type metadata accessor for TimeExtendedToken;
        inited[2].n128_u64[v292] = v187;
      }

      v185 += v186;
      --j;
    }

    while (j);
  }

  else
  {

    inited = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_461();
  if (v15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v290 = v274;
    }

    OUTLINED_FUNCTION_87_3();
    if (v85)
    {
      OUTLINED_FUNCTION_15_2(v191);
      sub_1C6FB20F8();
      v290 = v275;
    }

    OUTLINED_FUNCTION_88_2();
  }

  v192 = 0;
  v302 = *(v297 + 16);
  v193 = MEMORY[0x1E69E7CC0];
  v194 = v297 + 80;
  v296 = v297 + 80;
LABEL_182:
  v195 = (v194 + 56 * v192);
  v300 = v193;
  while (v302 != v192)
  {
    v27 = *(v297 + 16);
    if (v192 >= v27)
    {
      goto LABEL_280;
    }

    v303 = v192;
    v196 = *(v195 - 6);
    j = *(v195 - 5);
    v197 = *(v195 - 4);
    v15 = *(v195 - 24);
    v198 = *(v195 - 2);
    v199 = *(v195 - 1);
    v200 = *v195;
    v312.n128_u64[1] = &type metadata for PartOfDayExtendedToken;
    v313.n128_u64[0] = sub_1C70269A0();
    OUTLINED_FUNCTION_520();
    v201 = swift_allocObject();
    v311.n128_u64[0] = v201;
    *(v201 + 16) = v196;
    *(v201 + 24) = j;
    *(v201 + 32) = v197;
    *(v201 + 40) = v15;
    *(v201 + 48) = v198;
    *(v201 + 56) = v199;
    *(v201 + 64) = v200;
    OUTLINED_FUNCTION_348();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_290();
    swift_bridgeObjectRetain_n();
    v202 = OUTLINED_FUNCTION_426();
    v203(v202);
    OUTLINED_FUNCTION_484();
    if (inited)
    {
      v292 = j;
      inited = v300;
      v204 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v300;
      *&v304 = v300;
      if ((v204 & 1) == 0)
      {
        OUTLINED_FUNCTION_90_5();
        sub_1C716DC6C();
        v193 = v304;
      }

      v205 = v303;
      j = v196;
      v206 = v292;
      v208 = *(v193 + 16);
      v207 = *(v193 + 24);
      v209 = v208 + 1;
      v210 = v200;
      if (v208 >= v207 >> 1)
      {
        OUTLINED_FUNCTION_15(v207);
        inited = &v304;
        v213 = v212;
        sub_1C716DC6C();
        v209 = v213;
        v206 = v292;
        v205 = v303;
        v193 = v304;
      }

      v192 = v205 + 1;
      *(v193 + 16) = v209;
      v211 = v193 + 56 * v208;
      *(v211 + 32) = j;
      *(v211 + 40) = v206;
      *(v211 + 48) = v197;
      *(v211 + 56) = v15;
      *(v211 + 64) = v198;
      *(v211 + 72) = v199;
      *(v211 + 80) = v210;
      v194 = v297 + 80;
      goto LABEL_182;
    }

    v195 += 56;
    v192 = v303 + 1;
    v193 = v300;
  }

  j = 0;
  v214 = *(v193 + 16);
  inited = MEMORY[0x1E69E7CC0];
  v215 = v287;
LABEL_193:
  v27 = 56 * j + 72;
  while (v214 != j)
  {
    if (j >= *(v193 + 16))
    {
      goto LABEL_281;
    }

    ++j;
    v216 = *(v193 + v27);
    v27 += 56;
    if (v216)
    {
      v15 = v193;
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v219;
      }

      v218 = inited[1].n128_u64[0];
      v217 = inited[1].n128_u64[1];
      if (v218 >= v217 >> 1)
      {
        OUTLINED_FUNCTION_15(v217);
        sub_1C6FB226C();
        v193 = v15;
        inited = v220;
      }

      else
      {
        v193 = v15;
      }

      inited[1].n128_u64[0] = v218 + 1;
      inited[2].n128_u64[v218] = v216;
      goto LABEL_193;
    }
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_461();
  if (v15)
  {
    v221 = v295;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v290 = v276;
    }

    OUTLINED_FUNCTION_87_3();
    if (v85)
    {
      OUTLINED_FUNCTION_15_2(v222);
      sub_1C6FB20F8();
      v290 = v277;
    }

    OUTLINED_FUNCTION_88_2();
  }

  else
  {
    v221 = v295;
  }

  v223 = 0;
  v224 = *(v221 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  while (v224 != v223)
  {
    v27 = *(v221 + 16);
    if (v223 >= v27)
    {
      goto LABEL_282;
    }

    OUTLINED_FUNCTION_435();
    OUTLINED_FUNCTION_5_16();
    sub_1C702659C();
    v312.n128_u64[1] = v294;
    OUTLINED_FUNCTION_66_6();
    v313.n128_u64[0] = sub_1C70259B4(&qword_1EC215E28, v225);
    __swift_allocate_boxed_opaque_existential_0(&v311);
    sub_1C702659C();
    v226 = OUTLINED_FUNCTION_426();
    v227(v226);
    OUTLINED_FUNCTION_484();
    if (inited)
    {
      OUTLINED_FUNCTION_0_15();
      sub_1C70267FC();
      v228 = swift_isUniquelyReferenced_nonNull_native();
      *&v304 = v15;
      if ((v228 & 1) == 0)
      {
        OUTLINED_FUNCTION_90_5();
        sub_1C716DC24();
        v15 = v304;
      }

      v230 = *(v15 + 16);
      v229 = *(v15 + 24);
      if (v230 >= v229 >> 1)
      {
        OUTLINED_FUNCTION_15(v229);
        inited = &v304;
        sub_1C716DC24();
        v15 = v304;
      }

      ++v223;
      *(v15 + 16) = v230 + 1;
      OUTLINED_FUNCTION_0_15();
      sub_1C70267FC();
      v215 = v287;
      v221 = v295;
    }

    else
    {
      OUTLINED_FUNCTION_2_11();
      sub_1C70265F0();
      ++v223;
      v221 = v295;
    }
  }

  j = *(v15 + 16);
  if (j)
  {
    v231 = *(v294 + 28);
    OUTLINED_FUNCTION_191();
    v233 = v15 + v232;
    v234 = *(v215 + 72);
    inited = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_65_4();
      sub_1C702659C();
      v235 = *(v291 + v231);
      sub_1C75504FC();
      OUTLINED_FUNCTION_156();
      sub_1C70265F0();
      if (v235)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          inited = v237;
        }

        OUTLINED_FUNCTION_124_1();
        if (v85)
        {
          OUTLINED_FUNCTION_45_6(v236);
          sub_1C6FB226C();
          inited = v238;
        }

        inited[1].n128_u64[0] = v223;
        inited[2].n128_u64[v291] = v235;
      }

      v233 += v234;
      --j;
    }

    while (j);
  }

  else
  {

    inited = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_461();
  if (v15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v290 = v278;
    }

    OUTLINED_FUNCTION_87_3();
    if (v85)
    {
      OUTLINED_FUNCTION_15_2(v239);
      sub_1C6FB20F8();
      v290 = v279;
    }

    OUTLINED_FUNCTION_88_2();
  }

  v240 = 0;
  v302 = *(v293 + 16);
  v241 = v293 + 64;
  v297 = v293 + 64;
  v301 = MEMORY[0x1E69E7CC0];
LABEL_238:
  v242 = (v241 + 40 * v240);
  while (v302 != v240)
  {
    v27 = *(v293 + 16);
    if (v240 >= v27)
    {
      goto LABEL_283;
    }

    v303 = v240;
    v243 = *(v242 - 4);
    v244 = *(v242 - 3);
    v15 = *(v242 - 2);
    v245 = *(v242 - 8);
    j = *(v242 - 7);
    v246 = *(v242 - 6);
    v247 = *v242;
    v312.n128_u64[1] = &type metadata for EventExtendedToken;
    v313.n128_u64[0] = sub_1C7026A9C();
    OUTLINED_FUNCTION_328();
    v248 = swift_allocObject();
    v311.n128_u64[0] = v248;
    *(v248 + 16) = v243;
    *(v248 + 24) = v244;
    *(v248 + 32) = v15;
    *(v248 + 40) = v245;
    *(v248 + 41) = j;
    *(v248 + 42) = v246;
    *(v248 + 48) = v247;
    OUTLINED_FUNCTION_290();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v249 = OUTLINED_FUNCTION_426();
    v250(v249);
    OUTLINED_FUNCTION_484();
    if (inited)
    {
      LODWORD(v296) = v246;
      inited = v301;
      v251 = swift_isUniquelyReferenced_nonNull_native();
      *&v304 = v301;
      if ((v251 & 1) == 0)
      {
        OUTLINED_FUNCTION_90_5();
        sub_1C716DBAC();
        inited = v304;
      }

      v252 = v303;
      v253 = v243;
      v254 = v15;
      v255 = v246;
      v257 = inited[1].n128_u64[0];
      v256 = inited[1].n128_u64[1];
      if (v257 >= v256 >> 1)
      {
        OUTLINED_FUNCTION_15(v256);
        OUTLINED_FUNCTION_321();
        sub_1C716DBAC();
        v255 = v246;
        v254 = v15;
        v253 = v243;
        v252 = v303;
        inited = v304;
      }

      v240 = v252 + 1;
      inited[1].n128_u64[0] = v257 + 1;
      v301 = inited;
      v258 = inited + 40 * v257;
      *(v258 + 4) = v253;
      *(v258 + 5) = v244;
      *(v258 + 6) = v254;
      v258[56] = v245;
      v258[57] = j;
      v258[58] = v255;
      *(v258 + 8) = v247;
      v241 = v293 + 64;
      goto LABEL_238;
    }

    v242 += 5;
    v240 = v303 + 1;
  }

  v15 = 0;
  v259 = v301[1].n128_u64[0];
  inited = MEMORY[0x1E69E7CC0];
LABEL_249:
  v27 = 40 * v15 + 64;
  while (v259 != v15)
  {
    if (v15 >= v301[1].n128_u64[0])
    {
      goto LABEL_284;
    }

    j = *(v301->n128_u64 + v27);
    v27 += 40;
    ++v15;
    if (j)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v261;
      }

      OUTLINED_FUNCTION_283();
      if (v85)
      {
        OUTLINED_FUNCTION_22_10(v260);
        sub_1C6FB226C();
        inited = v262;
      }

      OUTLINED_FUNCTION_415();
      goto LABEL_249;
    }
  }

  v263 = sub_1C7027A88(inited);

  if (v263)
  {
    v264 = v290;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_1C6FB20F8();
      v264 = v280;
    }

    v266 = *(v264 + 16);
    v265 = *(v264 + 24);
    if (v266 >= v265 >> 1)
    {
      OUTLINED_FUNCTION_15_2(v265);
      sub_1C6FB20F8();
      v264 = v281;
    }

    *(v264 + 16) = v266 + 1;
    *(v264 + 8 * v266 + 32) = v263;
  }

  else
  {
    v264 = v290;
  }

  sub_1C6FDE498(v264);

LABEL_266:
  OUTLINED_FUNCTION_25_0();
}