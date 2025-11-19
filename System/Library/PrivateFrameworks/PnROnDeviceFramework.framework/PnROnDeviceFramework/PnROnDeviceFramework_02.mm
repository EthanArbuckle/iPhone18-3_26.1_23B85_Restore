uint64_t sub_25E991FB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v276 - v2;
  v4 = MEMORY[0x277D84F90];
  v290 = sub_25E97F328(MEMORY[0x277D84F90]);
  v285 = sub_25E97F328(v4);
  v289 = sub_25E97F328(v4);
  v284 = sub_25E97F328(v4);
  v291 = sub_25E97FC28(v4);
  v304 = sub_25E97FC3C(v4);
  v288 = sub_25E97F328(v4);
  v283 = sub_25E97F328(v4);
  v5 = sub_25E97FD50(v4);
  v6 = sub_25E97FC3C(v4);
  v287 = sub_25E97F328(v4);
  v282 = sub_25E97F328(v4);
  v7 = sub_25E97F328(v4);
  v281 = sub_25E97F328(v4);
  swift_beginAccess();
  v8 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    if (qword_27FD0D5C0 != -1)
    {
      swift_once();
    }

    v19 = sub_25E9D7F10();
    __swift_project_value_buffer(v19, qword_27FD0DB78);
    v20 = sub_25E9D7F00();
    v21 = sub_25E9D8120();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_25E971000, v20, v21, "PGSchemaPGClientEvent failed to init", v22, 2u);
      MEMORY[0x25F8C51A0](v22, -1, -1);
    }

LABEL_120:
    v172 = MEMORY[0x277D84F90];
LABEL_121:
    v173 = v277;
    v174 = v277[2];
    v277[2] = v172;

    v175 = v173[5];
    v173[5] = v289;

    v176 = v173[6];
    v173[6] = v284;

    v177 = v173[7];
    v173[7] = v291;

    v178 = v173[15];
    v173[15] = v7;

    v179 = v173[16];
    v173[16] = v281;

    v180 = v173[3];
    v173[3] = v290;

    v181 = v173[4];
    v173[4] = v285;

    v182 = v173[9];
    v173[9] = v288;

    v183 = v173[10];
    v173[10] = v283;

    v184 = v173[13];
    v173[13] = v287;

    v185 = v173[14];
    v173[14] = v282;

    v186 = v304;
    v187 = v173[8];
    v173[8] = v304;

    v188 = v173[11];
    v173[11] = v5;

    v189 = v173[12];
    v173[12] = v6;

    if (qword_27FD0D5C0 != -1)
    {
      swift_once();
    }

    v190 = sub_25E9D7F10();
    v302 = __swift_project_value_buffer(v190, qword_27FD0DB78);
    v191 = sub_25E9D7F00();
    v192 = sub_25E9D8120();
    v193 = os_log_type_enabled(v191, v192);
    v286 = v5;
    v279 = v6;
    v280 = v7;
    v301 = v186;
    if (v193)
    {
      v194 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v303 = v195;
      *v194 = 136315394;

      v196 = sub_25E9D7F40();
      v198 = v197;

      v199 = sub_25E9887EC(v196, v198, &v303);

      *(v194 + 4) = v199;
      *(v194 + 12) = 2080;

      v200 = sub_25E9D7F40();
      v202 = v201;

      v203 = sub_25E9887EC(v200, v202, &v303);

      *(v194 + 14) = v203;
      _os_log_impl(&dword_25E971000, v191, v192, "pgGeneratePlanContext Start Event Dict: %s, End Event Dict: %s", v194, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v195, -1, -1);
      MEMORY[0x25F8C51A0](v194, -1, -1);
    }

    v204 = sub_25E9D7F00();
    v205 = sub_25E9D8120();
    if (os_log_type_enabled(v204, v205))
    {
      v206 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      v303 = v207;
      *v206 = 136315394;

      v208 = sub_25E9D7F40();
      v210 = v209;

      v211 = sub_25E9887EC(v208, v210, &v303);

      *(v206 + 4) = v211;
      *(v206 + 12) = 2080;

      v212 = sub_25E9D7F40();
      v214 = v213;

      v215 = sub_25E9887EC(v212, v214, &v303);

      *(v206 + 14) = v215;
      _os_log_impl(&dword_25E971000, v204, v205, "pgRequestContext Start Event Dict: %s, End Event Dict: %s", v206, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v207, -1, -1);
      MEMORY[0x25F8C51A0](v206, -1, -1);
    }

    v216 = sub_25E9D7F00();
    v217 = sub_25E9D8120();
    if (os_log_type_enabled(v216, v217))
    {
      v218 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      v303 = v219;
      *v218 = 136315394;

      v220 = sub_25E9D7F40();
      v222 = v221;

      v223 = sub_25E9887EC(v220, v222, &v303);

      *(v218 + 4) = v223;
      *(v218 + 12) = 2080;

      v224 = sub_25E9D7F40();
      v226 = v225;

      v227 = sub_25E9887EC(v224, v226, &v303);

      *(v218 + 14) = v227;
      _os_log_impl(&dword_25E971000, v216, v217, "pgOverridesRequestContext Start Event Dict: %s, End Event Dict: %s", v218, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v219, -1, -1);
      MEMORY[0x25F8C51A0](v218, -1, -1);
    }

    v228 = sub_25E9D7F00();
    v229 = sub_25E9D8120();
    if (os_log_type_enabled(v228, v229))
    {
      v230 = swift_slowAlloc();
      v231 = swift_slowAlloc();
      v303 = v231;
      *v230 = 136315394;

      v232 = sub_25E9D7F40();
      v234 = v233;

      v235 = sub_25E9887EC(v232, v234, &v303);

      *(v230 + 4) = v235;
      *(v230 + 12) = 2080;

      v236 = sub_25E9D7F40();
      v238 = v237;

      v239 = sub_25E9887EC(v236, v238, &v303);

      *(v230 + 14) = v239;
      _os_log_impl(&dword_25E971000, v228, v229, "pgModelInferenceContextStart Event Dict: %s, End Event Dict: %s", v230, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v231, -1, -1);
      MEMORY[0x25F8C51A0](v230, -1, -1);
    }

    v240 = sub_25E9D7F00();
    v241 = sub_25E9D8120();
    if (os_log_type_enabled(v240, v241))
    {
      v242 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v303 = v243;
      *v242 = 136315394;

      v244 = sub_25E9D7F40();
      v246 = v245;

      v247 = sub_25E9887EC(v244, v246, &v303);

      *(v242 + 4) = v247;
      *(v242 + 12) = 2080;

      v248 = sub_25E9D7F40();
      v250 = v249;

      v251 = sub_25E9887EC(v248, v250, &v303);

      *(v242 + 14) = v251;
      _os_log_impl(&dword_25E971000, v240, v241, "pgPrescribedPlanRequestContextStart Event Dict: %s, End Event Dict: %s", v242, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v243, -1, -1);
      MEMORY[0x25F8C51A0](v242, -1, -1);
    }

    v252 = sub_25E9D7F00();
    v253 = sub_25E9D8120();
    if (os_log_type_enabled(v252, v253))
    {
      v254 = swift_slowAlloc();
      v255 = swift_slowAlloc();
      v303 = v255;
      *v254 = 136315394;
      type metadata accessor for PNRODSchemaPNRODPGModelInterface(0);

      v256 = sub_25E9D7F40();
      v258 = v257;

      v259 = sub_25E9887EC(v256, v258, &v303);

      *(v254 + 4) = v259;
      *(v254 + 12) = 2080;

      v260 = sub_25E9D7F40();
      v262 = v261;

      v263 = sub_25E9887EC(v260, v262, &v303);

      *(v254 + 14) = v263;
      _os_log_impl(&dword_25E971000, v252, v253, "pgModelInterface Event Dict: %s, pgModelIdentifier Event Dict: %s", v254, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v255, -1, -1);
      MEMORY[0x25F8C51A0](v254, -1, -1);
    }

    v264 = sub_25E9D7F00();
    v265 = sub_25E9D8120();
    if (os_log_type_enabled(v264, v265))
    {
      v266 = swift_slowAlloc();
      v267 = swift_slowAlloc();
      v303 = v267;
      *v266 = 136315394;

      v268 = sub_25E9D7F40();
      v270 = v269;

      v271 = sub_25E9887EC(v268, v270, &v303);

      *(v266 + 4) = v271;
      *(v266 + 12) = 2080;

      v272 = sub_25E9D7F40();
      v274 = v273;

      v275 = sub_25E9887EC(v272, v274, &v303);

      *(v266 + 14) = v275;
      _os_log_impl(&dword_25E971000, v264, v265, "pgOverridesMatched Event Dict: %s, pgOverridesAssetVersion Event Dict: %s", v266, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v267, -1, -1);
      MEMORY[0x25F8C51A0](v266, -1, -1);
    }
  }

  v278 = v3;
  sub_25E98FC58();
  v9 = v8;
  v298 = sub_25E9D7E70();

  if (qword_27FD0D5C0 != -1)
  {
LABEL_117:
    swift_once();
  }

  v10 = sub_25E9D7F10();
  v11 = __swift_project_value_buffer(v10, qword_27FD0DB78);
  v12 = v298;

  v294 = v11;
  v13 = sub_25E9D7F00();
  v14 = sub_25E9D8120();
  v15 = v12 >> 62;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    if (v15)
    {
      v17 = sub_25E9D8290();
    }

    else
    {
      v17 = *((v298 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v16 + 4) = v17;

    _os_log_impl(&dword_25E971000, v13, v14, "PGSchemaPGClientEvent length %ld", v16, 0xCu);
    MEMORY[0x25F8C51A0](v16, -1, -1);
  }

  else
  {
  }

  if (v15)
  {
    v23 = sub_25E9D8290();
    if (v23)
    {
      goto LABEL_15;
    }

    goto LABEL_119;
  }

  v23 = *((v298 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
LABEL_119:

    goto LABEL_120;
  }

LABEL_15:
  v280 = v7;
  v279 = v6;
  v286 = v5;
  v24 = 0;
  v297 = v298 & 0xC000000000000001;
  v292 = v298 & 0xFFFFFFFFFFFFFF8;
  v6 = MEMORY[0x277D84F90];
  *&v18 = 136315138;
  v293 = v18;
  v7 = v294;
  v295 = v23;
  while (1)
  {
    if (v297)
    {
      v25 = MEMORY[0x25F8C4B40](v24, v298);
    }

    else
    {
      if (v24 >= *(v292 + 16))
      {
        goto LABEL_116;
      }

      v25 = *(v298 + 8 * v24 + 32);
    }

    v26 = v25;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v299 = v24 + 1;
    v300 = v24;
    v27 = sub_25E9D7840();
    v301 = v26;
    if (!v27)
    {
      goto LABEL_31;
    }

    v28 = v27;
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (!v29)
    {

LABEL_31:
      v302 = 0;
      v38 = 0;
      v39 = 0xE000000000000000;
      v37 = 1;
      goto LABEL_34;
    }

    v30 = v29;
    v31 = [v29 eventMetadata];
    v302 = v30;
    if (v31 && (v32 = v31, v33 = [v31 planCycleId], v32, v33))
    {
      v34 = v278;
      sub_25E9D8100();

      v35 = sub_25E9D77F0();
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v34, 1, v35) == 1)
      {
        sub_25E981210(v34, &qword_27FD0D7D8, &qword_25E9D9BC0);
        v37 = 0;
        v38 = 0;
        v39 = 0xE000000000000000;
      }

      else
      {
        v38 = sub_25E9D77C0();
        v39 = v40;
        (*(v36 + 8))(v34, v35);
        v37 = 0;
      }

      v23 = v295;
    }

    else
    {
      v37 = 0;
      v38 = 0;
      v39 = 0xE000000000000000;
    }

LABEL_34:

    v41 = sub_25E9D7F00();
    v42 = sub_25E9D8120();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v296 = v6;
      v44 = v43;
      v45 = v37;
      v46 = swift_slowAlloc();
      v303 = v46;
      *v44 = v293;
      v47 = sub_25E9D8000();
      v49 = sub_25E9887EC(v47, v48, &v303);

      *(v44 + 4) = v49;
      v23 = v295;
      _os_log_impl(&dword_25E971000, v41, v42, "planCycleId value %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      v50 = v46;
      v37 = v45;
      v7 = v294;
      MEMORY[0x25F8C51A0](v50, -1, -1);
      v51 = v44;
      v6 = v296;
      MEMORY[0x25F8C51A0](v51, -1, -1);
    }

    v5 = v302;
    if (!v38 && v39 == 0xE000000000000000 || (sub_25E9D8300() & 1) != 0)
    {

      v52 = sub_25E9D7F00();
      v53 = sub_25E9D8120();
      v54 = os_log_type_enabled(v52, v53);
      v55 = v301;
      if (v54)
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_25E971000, v52, v53, "Empty planCycleId", v56, 2u);
        MEMORY[0x25F8C51A0](v56, -1, -1);
      }

LABEL_42:
      goto LABEL_17;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_25E983A64(0, *(v6 + 16) + 1, 1, v6);
    }

    v58 = *(v6 + 16);
    v57 = *(v6 + 24);
    if (v58 >= v57 >> 1)
    {
      v6 = sub_25E983A64((v57 > 1), v58 + 1, 1, v6);
    }

    *(v6 + 16) = v58 + 1;
    v59 = v6 + 16 * v58;
    *(v59 + 32) = v38;
    *(v59 + 40) = v39;
    if ((v37 & 1) == 0)
    {
      break;
    }

LABEL_17:
    v24 = v300 + 1;
    if (v299 == v23)
    {

      v5 = v286;
      v172 = v6;
      v6 = v279;
      v7 = v280;
      goto LABEL_121;
    }
  }

  v296 = v39;
  v60 = [v5 pgRequestContext];
  if (!v60 || (v61 = v60, v62 = [v60 startedOrChanged], v61, !v62))
  {
    v69 = [v5 pgRequestContext];
    v63 = v301;
    if (v69)
    {
      v70 = v69;
      v71 = [v69 ended];

      if (v71)
      {

        result = sub_25E9D7850();
        if (!result)
        {
          goto LABEL_144;
        }

        v72 = result;
        v73 = sub_25E9D7870();

        v74 = v285;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v303 = v74;
        sub_25E993FE0(78, v73, v38, v296, isUniquelyReferenced_nonNull_native);
        v285 = v303;
      }
    }

LABEL_56:
    v76 = [v5 pgModelInferenceContext];
    if (v76)
    {
      v77 = v76;
      v78 = [v76 startedOrChanged];

      if (v78)
      {

        v79 = [v5 pgModelInferenceContext];
        if (v79 && (v80 = v79, v81 = [v79 startedOrChanged], v80, v81))
        {
          v82 = [v81 modelInterface];
        }

        else
        {
          v82 = 0;
        }

        v95 = v291;
        v96 = swift_isUniquelyReferenced_nonNull_native();
        v303 = v95;
        v97 = v38;
        v91 = v38;
        v98 = v296;
        sub_25E994908(v82, v97, v296, v96, sub_25E97E4A4, sub_25E97ABD0, sub_25E99B4F8);
        v291 = v303;
        result = sub_25E9D7850();
        if (!result)
        {
          goto LABEL_140;
        }

        v99 = result;
        v100 = sub_25E9D7870();

        v101 = v289;
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v303 = v101;
        sub_25E993FE0(79, v100, v91, v98, v102);
        v5 = v302;
        v289 = v303;
        goto LABEL_74;
      }
    }

    v83 = [v5 pgModelInferenceContext];
    if (!v83 || (v84 = v83, v85 = [v83 ended], v84, !v85))
    {
LABEL_75:
      v108 = [v5 pgOverridesRequestContext];
      if (v108)
      {
        v109 = v108;
        v110 = [v108 startedOrChanged];

        if (v110)
        {

          result = sub_25E9D7850();
          if (!result)
          {
            goto LABEL_141;
          }

          v111 = result;
          v112 = sub_25E9D7870();

          v113 = v288;
          v114 = swift_isUniquelyReferenced_nonNull_native();
          v303 = v113;
          sub_25E993FE0(81, v112, v38, v296, v114);
          v288 = v303;
          goto LABEL_96;
        }
      }

      v115 = [v5 pgOverridesRequestContext];
      if (!v115 || (v116 = v115, v117 = [v115 ended], v116, !v117))
      {
LABEL_96:
        v142 = [v5 pgPrescribedPlanRequestContext];
        if (v142 && (v143 = v142, v144 = [v142 startedOrChanged], v143, v144))
        {

          result = sub_25E9D7850();
          if (!result)
          {
            goto LABEL_142;
          }

          v145 = result;
          v146 = sub_25E9D7870();

          v147 = v287;
          v148 = swift_isUniquelyReferenced_nonNull_native();
          v303 = v147;
          sub_25E993FE0(83, v146, v38, v296, v148);
          v287 = v303;
        }

        else
        {
          v149 = [v5 pgPrescribedPlanRequestContext];
          if (v149)
          {
            v150 = v149;
            v151 = [v149 ended];

            if (v151)
            {

              result = sub_25E9D7850();
              if (!result)
              {
                goto LABEL_147;
              }

              v152 = result;
              v153 = sub_25E9D7870();

              v154 = v282;
              v155 = swift_isUniquelyReferenced_nonNull_native();
              v303 = v154;
              sub_25E993FE0(84, v153, v38, v296, v155);
              v282 = v303;
            }
          }
        }

        v156 = [v5 pgGeneratePlanContext];
        if (v156)
        {
          v157 = v156;
          v158 = [v156 startedOrChanged];

          if (v158)
          {

            result = sub_25E9D7850();
            if (!result)
            {
              goto LABEL_143;
            }

            v159 = result;
            v160 = sub_25E9D7870();

            v161 = v280;
            v162 = swift_isUniquelyReferenced_nonNull_native();
            v303 = v161;
            sub_25E993FE0(85, v160, v38, v296, v162);

            v163 = v303;
            v164 = &v305;
            goto LABEL_112;
          }
        }

        v165 = [v5 pgGeneratePlanContext];
        if (v165)
        {
          v166 = v165;
          v167 = [v165 ended];

          if (v167)
          {

            result = sub_25E9D7850();
            if (!result)
            {
              goto LABEL_148;
            }

            v168 = result;
            v169 = sub_25E9D7870();

            v170 = v281;
            v171 = swift_isUniquelyReferenced_nonNull_native();
            v303 = v170;
            sub_25E993FE0(86, v169, v38, v296, v171);

            v163 = v303;
            v164 = &v306;
LABEL_112:
            *(v164 - 32) = v163;
            goto LABEL_17;
          }
        }

        goto LABEL_42;
      }

      v118 = [v5 pgOverridesRequestContext];
      if (v118 && (v119 = v118, v120 = [v118 ended], v119, v120))
      {
        v121 = v6;
        v122 = [v120 overridesMatched];

        if (v122)
        {
          v123 = [v122 isMatched];
        }

        else
        {
          v123 = 0;
        }

        v6 = v121;
      }

      else
      {
        v123 = 0;
      }

      v124 = v286;
      v125 = swift_isUniquelyReferenced_nonNull_native();
      v303 = v124;
      sub_25E994120(v123, v38, v296, v125);
      v286 = v303;
      v126 = [v302 pgOverridesRequestContext];
      if (v126 && (v127 = v126, v128 = [v126 ended], v127, v128))
      {
        v129 = v6;
        v130 = [v128 assetVersion];

        v131 = v38;
        if (v130)
        {
          v132 = sub_25E9D7FB0();
          v134 = v133;

LABEL_94:
          v135 = v296;

          v136 = v279;
          v137 = swift_isUniquelyReferenced_nonNull_native();
          v303 = v136;
          sub_25E994254(v132, v134, v131, v135, v137);

          v279 = v303;
          result = sub_25E9D7850();
          if (!result)
          {
            goto LABEL_146;
          }

          v138 = result;
          v139 = sub_25E9D7870();

          v140 = v283;
          v141 = swift_isUniquelyReferenced_nonNull_native();
          v303 = v140;
          sub_25E993FE0(82, v139, v131, v135, v141);
          v283 = v303;
          v6 = v129;
          v23 = v295;
          v63 = v301;
          v5 = v302;
          v38 = v131;
          goto LABEL_96;
        }
      }

      else
      {
        v131 = v38;
        v129 = v6;
      }

      v132 = 0;
      v134 = 0xE000000000000000;
      goto LABEL_94;
    }

    v86 = [v5 pgModelInferenceContext];
    if (v86 && (v87 = v86, v88 = [v86 ended], v87, v88))
    {
      v89 = v6;
      v90 = [v88 modelIdentifier];

      v91 = v38;
      if (v90)
      {
        v92 = sub_25E9D7FB0();
        v94 = v93;

LABEL_72:
        v103 = v296;

        sub_25E98F744(v92, v94, v91, v103);
        result = sub_25E9D7850();
        if (!result)
        {
          goto LABEL_145;
        }

        v104 = result;
        v105 = sub_25E9D7870();

        v106 = v284;
        v107 = swift_isUniquelyReferenced_nonNull_native();
        v303 = v106;
        sub_25E993FE0(80, v105, v91, v103, v107);
        v284 = v303;
        v6 = v89;
        v23 = v295;
        v63 = v301;
        v5 = v302;
LABEL_74:
        v38 = v91;
        goto LABEL_75;
      }
    }

    else
    {
      v91 = v38;
      v89 = v6;
    }

    v92 = 0;
    v94 = 0;
    goto LABEL_72;
  }

  v63 = v301;
  result = sub_25E9D7850();
  if (result)
  {
    v65 = result;
    v66 = sub_25E9D7870();

    v67 = v290;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v303 = v67;
    sub_25E993FE0(77, v66, v38, v296, v68);
    v290 = v303;
    goto LABEL_56;
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
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
  return result;
}

void *SELFComponent.PlanGeneration.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[16];

  return v0;
}

uint64_t SELFComponent.PlanGeneration.__deallocating_deinit()
{
  SELFComponent.PlanGeneration.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_25E993F20@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_25E993F50(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_25E993F70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D938, &qword_25E9D9998);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E993FE0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_25E978F5C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      sub_25E97D5F4();
      result = v21;
      goto LABEL_8;
    }

    sub_25E979464(v18, a5 & 1);
    v22 = *v6;
    result = sub_25E978F5C(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_14:
      result = sub_25E9D8330();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 16 * result;
    *v25 = a1;
    *(v25 + 8) = a2;
  }

  else
  {
    sub_25E99AF94(result, a3, a4, a1, a2, v24);
  }

  return result;
}

uint64_t sub_25E994120(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_25E978F5C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_25E97E1C4();
      result = v19;
      goto LABEL_8;
    }

    sub_25E97A670(v16, a4 & 1);
    v20 = *v5;
    result = sub_25E978F5C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_25E9D8330();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
  }

  else
  {
    sub_25E99AFE8(result, a2, a3, a1 & 1, v22);
  }

  return result;
}

uint64_t sub_25E994254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25E978F5C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_25E97E32C();
      v13 = v21;
      goto LABEL_8;
    }

    sub_25E97A910(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_25E978F5C(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_25E9D8330();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_25E99B030(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t sub_25E9943A4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25E978F5C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25E97E4B8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25E97ABE4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_25E978F5C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_25E9D8330();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 288 * v11;

    return sub_25E994F40(a1, v23);
  }

  else
  {
    sub_25E99B080(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_25E9944EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25E978F5C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25E97E674();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25E97B044(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_25E978F5C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_25E9D8330();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_25E99B0F4(v11, a2, a3, a1, v22);
  }
}

void *sub_25E994674(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25E978F5C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25E97E7F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25E97B300(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_25E978F5C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_25E9D8330();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 360 * v11);

    return memcpy(v23, a1, 0x168uLL);
  }

  else
  {
    sub_25E99B13C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_25E9947C0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25E978F5C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25E97E99C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25E97B5C0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_25E978F5C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_25E9D8330();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 240 * v11;

    return sub_25E994EE4(a1, v23);
  }

  else
  {
    sub_25E99B1B0(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_25E994908(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  result = sub_25E978F5C(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = result;
      a5();
      result = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    result = sub_25E978F5C(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_14:
      result = sub_25E9D8330();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    *(*(v28 + 56) + 4 * result) = a1;
  }

  else
  {
    a7(result, a2, a3, a1, v28);
  }

  return result;
}

uint64_t sub_25E994A5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_25E978F5C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_25E97ED0C();
      result = v19;
      goto LABEL_8;
    }

    sub_25E97BCA0(v16, a4 & 1);
    v20 = *v5;
    result = sub_25E978F5C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_25E9D8330();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 232 * result;
    v24 = *(a1 + 208);
    *(v23 + 192) = *(a1 + 192);
    *(v23 + 208) = v24;
    *(v23 + 224) = *(a1 + 224);
    v25 = *(a1 + 144);
    *(v23 + 128) = *(a1 + 128);
    *(v23 + 144) = v25;
    v26 = *(a1 + 176);
    *(v23 + 160) = *(a1 + 160);
    *(v23 + 176) = v26;
    v27 = *(a1 + 80);
    *(v23 + 64) = *(a1 + 64);
    *(v23 + 80) = v27;
    v28 = *(a1 + 112);
    *(v23 + 96) = *(a1 + 96);
    *(v23 + 112) = v28;
    v29 = *(a1 + 16);
    *v23 = *a1;
    *(v23 + 16) = v29;
    v30 = *(a1 + 48);
    *(v23 + 32) = *(a1 + 32);
    *(v23 + 48) = v30;
  }

  else
  {
    sub_25E99B284(result, a2, a3, a1, v22);
  }

  return result;
}

_OWORD *sub_25E994BD0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25E978F5C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25E97F080();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25E97C278(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_25E978F5C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_25E9D8330();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_25E980EA8(a1, v23);
  }

  else
  {
    sub_25E99B310(v11, a2, a3, a1, v22);
  }
}

void (*sub_25E994D20(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F8C4B40](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_25E994DA0;
  }

  __break(1u);
  return result;
}

uint64_t sub_25E994EC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 <= 0x5A)
  {
    v2 = 90;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  v3 = v2 - 90;
  if (v1 >= 0x59)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t PnRError.hashValue.getter()
{
  v1 = *v0;
  sub_25E9D8390();
  MEMORY[0x25F8C4C90](v1);
  return sub_25E9D83C0();
}

uint64_t sub_25E99516C()
{
  v1 = *v0;
  sub_25E9D8390();
  MEMORY[0x25F8C4C90](v1);
  return sub_25E9D83C0();
}

uint64_t sub_25E9951E0()
{
  v1 = *v0;
  sub_25E9D8390();
  MEMORY[0x25F8C4C90](v1);
  return sub_25E9D83C0();
}

uint64_t sub_25E995224(uint64_t a1)
{
  v2 = sub_25E995508();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_25E995260(uint64_t a1)
{
  v2 = sub_25E995508();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t static PnRError.errorDomain.getter()
{
  swift_beginAccess();
  v0 = *aPnrerror_1;

  return v0;
}

uint64_t static PnRError.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aPnrerror_1 = a1;
  *&aPnrerror_1[8] = a2;
}

unint64_t sub_25E9953BC()
{
  result = qword_27FD0D950;
  if (!qword_27FD0D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D950);
  }

  return result;
}

unint64_t sub_25E995414()
{
  result = qword_27FD0D958;
  if (!qword_27FD0D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D958);
  }

  return result;
}

uint64_t sub_25E995468()
{
  swift_beginAccess();
  v0 = *aPnrerror_1;

  return v0;
}

unint64_t sub_25E995508()
{
  result = qword_27FD0D960;
  if (!qword_27FD0D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D960);
  }

  return result;
}

uint64_t sub_25E995574()
{
  swift_beginAccess();
  if (!qword_27FD0DD78)
  {
    return 0;
  }

  v0 = qword_27FD0DD78;
  v1 = sub_25E9D7EC0();

  if (!v1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D968, &qword_25E9D9B88);
  sub_25E98F558(0, &qword_27FD0D970, 0x277D58948);
  sub_25E99622C(&qword_27FD0D978, &qword_27FD0D968, &qword_25E9D9B88);
  v2 = sub_25E9D8040();

  v3 = v2;
  if (v2 >> 62)
  {
    v4 = sub_25E9D8290();
    v3 = v2;
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v4 != 0;
  if (!v4)
  {
LABEL_13:

    return v5;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x25F8C4B40](0, v3);
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v6)
  {
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25E995714()
{
  swift_beginAccess();
  if (!qword_27FD0DD78)
  {
    return 0;
  }

  v0 = qword_27FD0DD78;
  v1 = sub_25E9D7E60();

  if (!v1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D980, &qword_25E9D9B90);
  sub_25E98F558(0, &qword_27FD0D988, 0x277D5ABF0);
  sub_25E99622C(&qword_27FD0D990, &qword_27FD0D980, &qword_25E9D9B90);
  v2 = sub_25E9D8040();

  if (v2 >> 62)
  {
    result = sub_25E9D8290();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_10:

    return 0;
  }

LABEL_5:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F8C4B40](0, v2);
    goto LABEL_8;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_8:
    v5 = v4;

    return v5;
  }

  __break(1u);
  return result;
}

void sub_25E99589C(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  if (!qword_27FD0DD78)
  {
    goto LABEL_33;
  }

  v2 = qword_27FD0DD78;
  v3 = sub_25E9D7EC0();

  if (!v3)
  {
LABEL_18:
    if (!qword_27FD0DD78)
    {
      goto LABEL_33;
    }

    v16 = qword_27FD0DD78;
    v17 = sub_25E9D7E60();

    if (!v17)
    {
      goto LABEL_33;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D980, &qword_25E9D9B90);
    sub_25E98F558(0, &qword_27FD0D988, 0x277D5ABF0);
    sub_25E99622C(&qword_27FD0D990, &qword_27FD0D980, &qword_25E9D9B90);
    v6 = sub_25E9D8040();

    if (!(v6 >> 62))
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

LABEL_22:
      if ((v6 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x25F8C4B40](0, v6);
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_37;
        }

        v18 = *(v6 + 32);
      }

      v19 = v18;

      v20 = sub_25E9D7850();
      if (v20)
      {
        v21 = v20;
        v13 = sub_25E9D7870();

        v14 = 4;
        goto LABEL_34;
      }

      goto LABEL_39;
    }

LABEL_29:
    if (!sub_25E9D8290())
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D968, &qword_25E9D9B88);
  sub_25E98F558(0, &qword_27FD0D970, 0x277D58948);
  sub_25E99622C(&qword_27FD0D978, &qword_27FD0D968, &qword_25E9D9B88);
  v4 = sub_25E9D8040();

  v5 = v4;
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  v15 = sub_25E9D8290();
  v5 = v4;
  if (!v15)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x25F8C4B40](0, v5);
    swift_unknownObjectRelease();

    goto LABEL_7;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v6)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_7:
  if (!qword_27FD0DD78)
  {
    goto LABEL_33;
  }

  v7 = qword_27FD0DD78;
  v8 = sub_25E9D7EC0();

  if (!v8)
  {
    goto LABEL_33;
  }

  sub_25E98F558(0, &qword_27FD0D998, 0x277D589A8);
  v6 = sub_25E9D8040();

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

  if (!sub_25E9D8290())
  {
LABEL_32:

LABEL_33:
    v13 = 0;
    v14 = 89;
    goto LABEL_34;
  }

LABEL_11:
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v6 + 32);
      goto LABEL_14;
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_37:
  v9 = MEMORY[0x25F8C4B40](0, v6);
LABEL_14:
  v10 = v9;

  v11 = sub_25E9D7850();
  if (v11)
  {
    v12 = v11;
    v13 = sub_25E9D7870();

    v14 = 9;
LABEL_34:
    *a1 = v14;
    a1[1] = v13;
    return;
  }

LABEL_40:
  __break(1u);
}

id sub_25E995CBC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  result = [a1 ended];
  if (result)
  {

    v7 = [a1 trpId];
    if (v7)
    {
      v8 = v7;
      sub_25E9D8100();

      v9 = sub_25E9D77F0();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v5, 1, v9) != 1)
      {
        v11 = sub_25E9D77C0();
        v12 = v13;
        (*(v10 + 8))(v5, v9);
LABEL_7:
        swift_beginAccess();
        if (qword_27FD0DD78)
        {
          v14 = qword_27FD0DD78;
          v15 = sub_25E9D7E90();

          v24 = v15;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D9A0, &qword_25E9D9BB0);
          sub_25E98F558(0, &qword_27FD0D9A8, 0x277D59868);
          sub_25E99622C(&qword_27FD0D9B0, &qword_27FD0D9A0, &qword_25E9D9BB0);
          v16 = sub_25E9D8050();

          if (v16[2])
          {
            v18 = v16[4];
            v17 = v16[5];

            if (!v12)
            {
              goto LABEL_10;
            }

            goto LABEL_14;
          }
        }

        v18 = 0;
        v17 = 0;
        if (!v12)
        {
LABEL_10:
          if (v17)
          {
            goto LABEL_18;
          }

          goto LABEL_20;
        }

LABEL_14:
        if (!v17)
        {
LABEL_18:

          return 0;
        }

        if (v11 == v18 && v12 == v17)
        {
        }

        else
        {
          v19 = sub_25E9D8300();

          if ((v19 & 1) == 0)
          {
            return 0;
          }
        }

LABEL_20:
        if (qword_27FD0DD78)
        {
          v20 = qword_27FD0DD78;
          v21 = sub_25E9D7E90();

          v24 = v21;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D9A0, &qword_25E9D9BB0);
          sub_25E98F558(0, &qword_27FD0D9A8, 0x277D59868);
          sub_25E99622C(&qword_27FD0D9B0, &qword_27FD0D9A0, &qword_25E9D9BB0);
          v22 = sub_25E9D8050();

          v23 = *(v22 + 16);

          return (v23 != 0);
        }

        return 0;
      }

      sub_25E9961C4(v5);
    }

    v11 = 0;
    v12 = 0;
    goto LABEL_7;
  }

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

uint64_t sub_25E9961C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E99622C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void SELFPnREmitter.uploadSiriTurnGrainLatency(for:)(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v49 - v4;
  v6 = a1[11];
  v49[10] = a1[10];
  v49[11] = v6;
  v7 = a1[13];
  v49[12] = a1[12];
  v49[13] = v7;
  v8 = a1[7];
  v49[6] = a1[6];
  v49[7] = v8;
  v9 = a1[9];
  v49[8] = a1[8];
  v49[9] = v9;
  v10 = a1[3];
  v49[2] = a1[2];
  v49[3] = v10;
  v11 = a1[5];
  v49[4] = a1[4];
  v49[5] = v11;
  v12 = a1[1];
  v49[0] = *a1;
  v49[1] = v12;
  v13 = PnRSiriTurnGrainSummary.createSiriTurnGrainSummarySELFEvent()();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 pnrodSiriTurnGrainSummary];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 turnid];

      if (v17)
      {
        sub_25E9D8100();

        v18 = sub_25E9D77F0();
        v19 = *(v18 - 8);
        if ((*(v19 + 48))(v5, 1, v18) != 1)
        {
          v20 = sub_25E9D77C0();
          v21 = v48;
          (*(v19 + 8))(v5, v18);
          goto LABEL_7;
        }

        sub_25E981210(v5, &qword_27FD0D7D8, &qword_25E9D9BC0);
      }
    }

    v20 = 0;
    v21 = 0;
LABEL_7:
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v22 = sub_25E9D7F10();
    __swift_project_value_buffer(v22, qword_280F6FE78);

    v23 = sub_25E9D7F00();
    v24 = sub_25E9D8120();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v49[0] = v26;
      *v25 = 136315138;
      if (v21)
      {
        v27 = v20;
      }

      else
      {
        v27 = 0;
      }

      if (!v21)
      {
        v21 = 0xE000000000000000;
      }

      v28 = sub_25E9887EC(v27, v21, v49);

      *(v25 + 4) = v28;
      _os_log_impl(&dword_25E971000, v23, v24, "Created now %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x25F8C51A0](v26, -1, -1);
      MEMORY[0x25F8C51A0](v25, -1, -1);
    }

    else
    {
    }

    v33 = [v14 wrapAsAnyEvent];
    if (v33)
    {
      v34 = v33;
      v35 = v33;
      v36 = sub_25E9D7F00();
      v37 = sub_25E9D8120();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        *(v38 + 4) = v35;
        *v39 = v34;
        v40 = v35;
        _os_log_impl(&dword_25E971000, v36, v37, "FBF reporter: store the SiriSELFEvent event %@ and send to server", v38, 0xCu);
        sub_25E981210(v39, &qword_27FD0D9B8, &qword_25E9D9BC8);
        MEMORY[0x25F8C51A0](v39, -1, -1);
        MEMORY[0x25F8C51A0](v38, -1, -1);
      }

      v41 = [objc_opt_self() sharedLogger];
      v42 = sub_25E9D7FA0();
      [v41 reportSiriInstrumentationEvent:v35 forBundleID:v42 completion:0];
    }

    v43 = v14;
    v30 = sub_25E9D7F00();
    v44 = sub_25E9D8120();

    if (os_log_type_enabled(v30, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v43;
      *v46 = v14;
      v47 = v43;
      _os_log_impl(&dword_25E971000, v30, v44, "Emitted now %@", v45, 0xCu);
      sub_25E981210(v46, &qword_27FD0D9B8, &qword_25E9D9BC8);
      MEMORY[0x25F8C51A0](v46, -1, -1);
      MEMORY[0x25F8C51A0](v45, -1, -1);
    }

    else
    {
    }

    goto LABEL_28;
  }

  if (qword_280F6FE70 != -1)
  {
    swift_once();
  }

  v29 = sub_25E9D7F10();
  __swift_project_value_buffer(v29, qword_280F6FE78);
  v30 = sub_25E9D7F00();
  v31 = sub_25E9D8120();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_25E971000, v30, v31, "uploadSiriTurnGrainLatency failed due to createSELFEvent is nil.", v32, 2u);
    MEMORY[0x25F8C51A0](v32, -1, -1);
  }

LABEL_28:
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SELFPnREmitter.uploadIESELF(for:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    v2 = a1._rawValue + 32;
    v3 = 0x279A43000uLL;
    v4 = 0x280F6F000uLL;
    v31 = "Woker.default-data-worker";
    do
    {
      sub_25E986C6C(v2, v28);
      v7 = v29;
      v8 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      if ((*(v8 + 8))(v7, v8))
      {
        v9 = v29;
        v10 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        v11 = (*(v10 + 16))(v9, v10);
        if (v11)
        {
          v12 = v11;
          v13 = [v11 *(v3 + 2576)];

          if (v13)
          {
            if (*(v4 + 3696) != -1)
            {
              swift_once();
            }

            v14 = sub_25E9D7F10();
            __swift_project_value_buffer(v14, qword_280F6FE78);
            v15 = v13;
            v16 = sub_25E9D7F00();
            v17 = sub_25E9D8120();

            if (os_log_type_enabled(v16, v17))
            {
              v18 = swift_slowAlloc();
              v19 = v4;
              v20 = swift_slowAlloc();
              *v18 = 138412290;
              *(v18 + 4) = v15;
              *v20 = v13;
              v21 = v15;
              _os_log_impl(&dword_25E971000, v16, v17, "FBF reporter: store the event %@ and send to server", v18, 0xCu);
              sub_25E981210(v20, &qword_27FD0D9B8, &qword_25E9D9BC8);
              v22 = v20;
              v4 = v19;
              MEMORY[0x25F8C51A0](v22, -1, -1);
              v23 = v18;
              v3 = 0x279A43000;
              MEMORY[0x25F8C51A0](v23, -1, -1);
            }

            v5 = [objc_opt_self() sharedLogger];
            v6 = sub_25E9D7FA0();
            [v5 reportSiriInstrumentationEvent:v15 forBundleID:v6 completion:0];
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v28);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v24 = sub_25E9D7F10();
    __swift_project_value_buffer(v24, qword_280F6FE78);
    v25 = sub_25E9D7F00();
    v26 = sub_25E9D8120();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_25E971000, v25, v26, "uploadIESELFRequest skipped due to empty IESELFEvent.", v27, 2u);
      MEMORY[0x25F8C51A0](v27, -1, -1);
    }
  }
}

uint64_t sub_25E996C78()
{
  swift_beginAccess();
  if (!qword_27FD0DD78)
  {
    return 0;
  }

  v0 = qword_27FD0DD78;
  sub_25E9D7E90();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D9A0, &qword_25E9D9BB0);
  sub_25E996EC8();
  sub_25E996F14();
  v1 = sub_25E9D8050();

  if (!v1[2])
  {

    return 0;
  }

  v2 = v1[4];
  v3 = v1[5];

  return v2;
}

id sub_25E996D80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  result = [a1 trpId];
  if (!result)
  {
    goto LABEL_4;
  }

  v9 = result;
  sub_25E9D8100();

  v10 = sub_25E9D77F0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    result = sub_25E9961C4(v7);
LABEL_4:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  v12 = sub_25E9D77C0();
  v14 = v13;
  result = (*(v11 + 8))(v7, v10);
  *a2 = v12;
  a2[1] = v14;
  return result;
}

unint64_t sub_25E996EC8()
{
  result = qword_27FD0D9A8;
  if (!qword_27FD0D9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0D9A8);
  }

  return result;
}

unint64_t sub_25E996F14()
{
  result = qword_27FD0D9B0;
  if (!qword_27FD0D9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD0D9A0, &qword_25E9D9BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D9B0);
  }

  return result;
}

void sub_25E99701C(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  if (!qword_27FD0DD78)
  {
    goto LABEL_25;
  }

  v2 = qword_27FD0DD78;
  v3 = sub_25E9D7E60();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D980, &qword_25E9D9B90);
    sub_25E98F558(0, &qword_27FD0D9C0, 0x277D5ABE0);
    sub_25E997B8C();
    v4 = sub_25E9D8040();

    if (v4 >> 62)
    {
      if (sub_25E9D8290())
      {
        goto LABEL_5;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F8C4B40](0, v4);
LABEL_8:
        v6 = v5;

        v7 = sub_25E9D7850();
        if (v7)
        {
          v8 = v7;
          v9 = 1;
LABEL_28:
          v16 = sub_25E9D7870();

LABEL_30:
          *a1 = v9;
          a1[1] = v16;
          return;
        }

        goto LABEL_34;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v4 + 32);
        goto LABEL_8;
      }

      __break(1u);
LABEL_23:
      if (!sub_25E9D8290())
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }
  }

  if (!qword_27FD0DD78 || (v10 = qword_27FD0DD78, v11 = sub_25E9D7E60(), v10, !v11))
  {
LABEL_25:
    v14 = sub_25E99B640();
    if (!v14)
    {
      v16 = 0;
      v9 = 89;
      goto LABEL_30;
    }

    v6 = v14;
    v15 = sub_25E9D7850();
    if (v15)
    {
      v8 = v15;
      v9 = 8;
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D980, &qword_25E9D9B90);
  sub_25E98F558(0, &qword_27FD0D9C0, 0x277D5ABE0);
  sub_25E997B8C();
  v4 = sub_25E9D8040();

  if (v4 >> 62)
  {
    goto LABEL_23;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:

    goto LABEL_25;
  }

LABEL_16:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x25F8C4B40](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v12 = *(v4 + 32);
  }

  v6 = v12;

  v13 = sub_25E9D7850();
  if (v13)
  {
    v8 = v13;
    v9 = 2;
    goto LABEL_28;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_25E997304(void *a1)
{
  v2 = [a1 dialogPhase];
  if (v2 < 9 && ((0x107u >> v2) & 1) != 0)
  {
    return 0;
  }

  result = [a1 aceCommandClass];
  if (result)
  {
    v4 = result;
    v5 = sub_25E9D7FB0();
    v7 = v6;

    if (v5 == 0x5664644149554153 && v7 == 0xEC00000073776569)
    {

      return 1;
    }

    else
    {
      v9 = sub_25E9D8300();

      return v9 & 1;
    }
  }

  return result;
}

uint64_t sub_25E9973EC(void *a1)
{
  v2 = [a1 dialogPhase];
  if (v2 < 9 && ((0x107u >> v2) & 1) != 0)
  {
    goto LABEL_11;
  }

  v3 = [a1 aceCommandClass];
  if (!v3)
  {
    v10 = 1;
    return v10 & 1;
  }

  v4 = v3;
  v5 = sub_25E9D7FB0();
  v7 = v6;

  if (v5 == 0x5664644149554153 && v7 == 0xEC00000073776569)
  {

LABEL_11:
    v10 = 0;
    return v10 & 1;
  }

  v9 = sub_25E9D8300();

  v10 = v9 ^ 1;
  return v10 & 1;
}

void sub_25E9974D8(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  if (!qword_27FD0DD78)
  {
    goto LABEL_12;
  }

  v2 = qword_27FD0DD78;
  v3 = sub_25E9D7E60();

  if (!v3)
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D980, &qword_25E9D9B90);
  sub_25E98F558(0, &qword_27FD0D9C8, 0x277D5A928);
  sub_25E997B8C();
  v4 = sub_25E9D8040();

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (!sub_25E9D8290())
  {
LABEL_11:

LABEL_12:
    v9 = 0;
    v10 = 89;
    goto LABEL_13;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25F8C4B40](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_16;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = sub_25E9D7850();
  if (v7)
  {
    v8 = v7;
    v9 = sub_25E9D7870();

    v10 = 7;
LABEL_13:
    *a1 = v10;
    a1[1] = v9;
    return;
  }

LABEL_16:
  __break(1u);
}

id sub_25E997694@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 requestStatus];
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

id sub_25E997720@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 requestType];
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

void sub_25E997758(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 error];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 errorDomain];

    if (v6)
    {
      v7 = sub_25E9D7FB0();
      v9 = v8;

      v10 = [a1 error];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 errorCode];

        if (v12)
        {
          v13 = sub_25E9D7FB0();
          v15 = v14;

          MEMORY[0x25F8C4910](46, 0xE100000000000000);

          MEMORY[0x25F8C4910](v13, v15);

          *a2 = v7;
          a2[1] = v9;
          return;
        }
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_25E9978A0(char *a1@<X8>)
{
  swift_beginAccess();
  if (qword_27FD0DD78 && (v2 = qword_27FD0DD78, v3 = sub_25E9D7E60(), v2, v3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D980, &qword_25E9D9B90);
    sub_25E98F558(0, &qword_27FD0D9D0, 0x277D5A7B8);
    sub_25E997B8C();
    v4 = sub_25E9D8050();

    if (*(v4 + 16))
    {
      v5 = *(v4 + 32);
    }

    else
    {
      v5 = 7;
    }
  }

  else
  {
    v5 = 7;
  }

  *a1 = v5;
}

id sub_25E9979B8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  if (([a1 stopReasonMajor] == 2 || objc_msgSend(a1, sel_stopReasonMajor) == 5) && (result = objc_msgSend(a1, sel_stopReasonMinor), !result))
  {
    v5 = 1;
  }

  else if ([a1 stopReasonMajor] == 5 && (result = objc_msgSend(a1, sel_stopReasonMinor), result == 5))
  {
    v5 = 2;
  }

  else if ([a1 stopReasonMajor] == 5 && ((result = objc_msgSend(a1, sel_stopReasonMinor), result == 1) || (result = objc_msgSend(a1, sel_stopReasonMinor), result == 9) || (result = objc_msgSend(a1, sel_stopReasonMinor), result == 4)))
  {
    v5 = 3;
  }

  else if ([a1 stopReasonMajor] == 5 && (result = objc_msgSend(a1, sel_stopReasonMinor), result == 10))
  {
    v5 = 4;
  }

  else if ([a1 stopReasonMajor] == 5 && (result = objc_msgSend(a1, sel_stopReasonMinor), !result))
  {
    v5 = 5;
  }

  else
  {
    result = [a1 stopReasonMajor];
    if (result == 5 && ((result = [a1 stopReasonMinor], result == 6) || (result = objc_msgSend(a1, sel_stopReasonMinor), result == 7)))
    {
      v5 = 6;
    }

    else
    {
      v5 = 7;
    }
  }

  *a2 = v5;
  return result;
}

unint64_t sub_25E997B8C()
{
  result = qword_27FD0D990;
  if (!qword_27FD0D990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD0D980, &qword_25E9D9B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D990);
  }

  return result;
}

uint64_t sub_25E997C24()
{
  swift_beginAccess();
  if (qword_27FD0DD78)
  {
    v0 = qword_27FD0DD78;
    v1 = sub_25E9D7E60();

    if (v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D980, &qword_25E9D9B90);
      sub_25E98F558(0, &qword_27FD0D9E0, 0x277D5A980);
      sub_25E997B8C();
      v2 = sub_25E9D8050();

      if (v2[2])
      {
        v4 = v2[4];
        v3 = v2[5];

        return v4;
      }
    }
  }

  return 0;
}

unint64_t sub_25E997D6C(void (*a1)(void))
{
  swift_beginAccess();
  if (!qword_27FD0DD78)
  {
    goto LABEL_6;
  }

  v2 = qword_27FD0DD78;
  v3 = sub_25E9D7E60();

  if (!v3)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D980, &qword_25E9D9B90);
  sub_25E98F558(0, &qword_27FD0D9D8, 0x277D5AB80);
  a1(0);
  sub_25E997B8C();
  v4 = sub_25E9D8050();

  if (!*(v4 + 16))
  {

LABEL_6:
    v5 = 0;
    v6 = 1;
    return v5 | (v6 << 32);
  }

  v5 = *(v4 + 32);

  v6 = 0;
  return v5 | (v6 << 32);
}

uint64_t SELFProcessedStreamTurnReader.bookmark.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void *SELFProcessedStreamTurnReader.init(streamIdentifier:domain:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for Bookmark();
  swift_allocObject();
  result = sub_25E98B630(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t SELFProcessedStreamTurnReader.read()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D9E8, &qword_25E9D9C58);
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();
  v5 = sub_25E9D77A0();
  v1[25] = v5;
  v6 = *(v5 - 8);
  v1[26] = v6;
  v7 = *(v6 + 64) + 15;
  v1[27] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v0;
  v1[28] = v8;
  v1[29] = v9;

  return MEMORY[0x2822009F8](sub_25E998218, 0, 0);
}

uint64_t sub_25E998218()
{
  v31 = v0;
  v1 = swift_allocObject();
  v0[30] = v1;
  *(v1 + 16) = MEMORY[0x277D84F90];
  if (qword_280F6FE70 != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v3 = sub_25E9D7F10();
  v0[31] = __swift_project_value_buffer(v3, qword_280F6FE78);

  v4 = sub_25E9D7F00();
  v5 = sub_25E9D8120();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[28];
    v6 = v0[29];
    v8 = v0[26];
    v29 = v0[25];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315394;
    swift_beginAccess();
    v11 = *(v6 + 40);
    v12 = *(v6 + 48);

    v13 = sub_25E9887EC(v11, v12, &v30);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    sub_25E98B828(v7);
    sub_25E999374();
    v14 = sub_25E9D82F0();
    v16 = v15;
    (*(v8 + 8))(v7, v29);
    v17 = sub_25E9887EC(v14, v16, &v30);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_25E971000, v4, v5, "Bookmark: %s,  Last Bookmark Time is %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v10, -1, -1);
    MEMORY[0x25F8C51A0](v9, -1, -1);
  }

  v18 = v0[29];
  v20 = v0[26];
  v19 = v0[27];
  v21 = v0[25];
  sub_25E9D7E50();
  sub_25E9D7EB0();
  v22 = sub_25E9D7EA0();
  v0[32] = v22;
  sub_25E98B828(v19);
  sub_25E9D7770();
  v24 = v23;
  v25 = *(v20 + 8);
  v0[33] = v25;
  v0[34] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v19, v21);
  v26 = *(MEMORY[0x277CE4850] + 4);
  v27 = swift_task_alloc();
  v0[35] = v27;
  *v27 = v0;
  v27[1] = sub_25E998564;
  v35 = 0;
  v36 = 0;
  v34 = 1;
  v33 = 0;

  return MEMORY[0x2821377A8](v0 + 2, v22, v24, 0, 0, 1, 0, 1);
}

uint64_t sub_25E998564()
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 256);
  v6 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = sub_25E998A8C;
  }

  else
  {
    v4 = sub_25E998690;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25E998690()
{
  v46 = v0;
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  sub_25E9D7E30();
  sub_25E999310();

  v7 = sub_25E9D7800();

  (*(v4 + 8))(v3, v5);

  v8 = sub_25E9D7F00();
  v9 = sub_25E9D8120();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[30];
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    swift_beginAccess();
    v12 = *(v10 + 16);
    if (v12 >> 62)
    {
      if (v12 < 0)
      {
        v41 = *(v10 + 16);
      }

      v13 = sub_25E9D8290();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v0[30];
    *(v11 + 4) = v13;

    _os_log_impl(&dword_25E971000, v8, v9, "Received total of %ld turns", v11, 0xCu);
    MEMORY[0x25F8C51A0](v11, -1, -1);
  }

  else
  {
    v15 = v0[30];
  }

  v16 = v0[31];
  v17 = v0[28];
  v18 = v0[29];
  sub_25E9D7790();
  sub_25E98BD88(v17);

  v19 = sub_25E9D7F00();
  v20 = sub_25E9D8120();

  if (os_log_type_enabled(v19, v20))
  {
    v42 = v0[33];
    v43 = v0[34];
    v21 = v0[29];
    v44 = v0[30];
    v22 = v0[28];
    v23 = v0[25];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v45 = v25;
    *v24 = 136315394;
    swift_beginAccess();
    v27 = *(v21 + 40);
    v26 = *(v21 + 48);

    v28 = sub_25E9887EC(v27, v26, &v45);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    sub_25E98B828(v22);
    sub_25E999374();
    v29 = sub_25E9D82F0();
    v31 = v30;
    v42(v22, v23);
    v32 = sub_25E9887EC(v29, v31, &v45);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_25E971000, v19, v20, "Task Completed, Bookmark updated: %s,  Last Bookmark Time is %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v25, -1, -1);
    MEMORY[0x25F8C51A0](v24, -1, -1);
  }

  else
  {
    v33 = v0[30];
  }

  v34 = v0[30];
  swift_beginAccess();
  v35 = *(v34 + 16);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v37 = v0[27];
  v36 = v0[28];
  v38 = v0[24];

  v39 = v0[1];

  return v39(v35);
}

uint64_t sub_25E998A8C()
{
  v17 = v0;
  v1 = v0[36];
  v2 = v0[31];
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_25E9D8240();
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  MEMORY[0x25F8C4910](0xD000000000000036, 0x800000025E9DDA60);
  v0[21] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D9F0, &qword_25E9D9C60);
  sub_25E9D8280();
  v3 = v0[19];
  v4 = v0[20];

  v5 = sub_25E9D7F00();
  v6 = sub_25E9D8130();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_25E9887EC(v3, v4, v16);
    _os_log_impl(&dword_25E971000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x25F8C51A0](v8, -1, -1);
    MEMORY[0x25F8C51A0](v7, -1, -1);
  }

  v9 = v0[36];
  v10 = v0[30];
  LOBYTE(v16[0]) = 32;
  _s20PnROnDeviceFramework20CoreAnalyticsServiceO017submitReliabilityF08category6reasonyAA0I8CategoryO_SStFZ_0(v16, v3, v4);

  _s20PnROnDeviceFramework14FileRadarUtilsO14autoBugCapture9errorType0k3SubL003subL7ContextySS_S2StFZ_0(0x6C61746146, 0xE500000000000000, 0x53494C4D4941, 0xE600000000000000);

  v12 = v0[27];
  v11 = v0[28];
  v13 = v0[24];

  v14 = v0[1];

  return v14(0);
}

void sub_25E998CE8(void *a1)
{
  if ([a1 state])
  {
    if ([a1 state] == 1)
    {
      if (qword_280F6FE70 != -1)
      {
        swift_once();
      }

      v2 = sub_25E9D7F10();
      __swift_project_value_buffer(v2, qword_280F6FE78);
      v3 = sub_25E9D7F00();
      v4 = sub_25E9D8130();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v16 = v6;
        *v5 = 136315138;
        *(v5 + 4) = sub_25E9887EC(0xD00000000000001ALL, 0x800000025E9DDAC0, &v16);
        _os_log_impl(&dword_25E971000, v3, v4, "%s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x25F8C51A0](v6, -1, -1);
        MEMORY[0x25F8C51A0](v5, -1, -1);
      }

      LOBYTE(v16) = 64;
      _s20PnROnDeviceFramework20CoreAnalyticsServiceO017submitReliabilityF08category6reasonyAA0I8CategoryO_SStFZ_0(&v16, 0xD00000000000001ALL, 0x800000025E9DDAC0);
    }

    else
    {
      if (qword_280F6FE70 != -1)
      {
        swift_once();
      }

      v10 = sub_25E9D7F10();
      __swift_project_value_buffer(v10, qword_280F6FE78);
      v11 = sub_25E9D7F00();
      v12 = sub_25E9D8130();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v16 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_25E9887EC(0xD00000000000001ALL, 0x800000025E9DDAA0, &v16);
        _os_log_impl(&dword_25E971000, v11, v12, "%s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x25F8C51A0](v14, -1, -1);
        MEMORY[0x25F8C51A0](v13, -1, -1);
      }

      LOBYTE(v16) = 65;
      _s20PnROnDeviceFramework20CoreAnalyticsServiceO017submitReliabilityF08category6reasonyAA0I8CategoryO_SStFZ_0(&v16, 0xD00000000000001ALL, 0x800000025E9DDAA0);
    }

    _s20PnROnDeviceFramework14FileRadarUtilsO14autoBugCapture9errorType0k3SubL003subL7ContextySS_S2StFZ_0(0x6C61746146, 0xE500000000000000, 0x656D6F6942, 0xE500000000000000);
  }

  else
  {
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v7 = sub_25E9D7F10();
    __swift_project_value_buffer(v7, qword_280F6FE78);
    oslog = sub_25E9D7F00();
    v8 = sub_25E9D8120();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25E971000, oslog, v8, "Received the completion state", v9, 2u);
      MEMORY[0x25F8C51A0](v9, -1, -1);
    }
  }
}

void sub_25E9990F0(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = a1;
    MEMORY[0x25F8C4950]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v8 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25E9D80A0();
    }

    sub_25E9D80C0();
    swift_endAccess();
  }

  else
  {
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v5 = sub_25E9D7F10();
    __swift_project_value_buffer(v5, qword_280F6FE78);
    oslog = sub_25E9D7F00();
    v6 = sub_25E9D8120();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_25E971000, oslog, v6, "receiving SELFProcessedEvent", v7, 2u);
      MEMORY[0x25F8C51A0](v7, -1, -1);
    }
  }
}

uint64_t sub_25E999274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25E986EB0;

  return SELFProcessedStreamTurnReader.read()();
}

unint64_t sub_25E999310()
{
  result = qword_27FD0D9F8;
  if (!qword_27FD0D9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD0D9E8, &qword_25E9D9C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D9F8);
  }

  return result;
}

unint64_t sub_25E999374()
{
  result = qword_27FD0DA00;
  if (!qword_27FD0DA00)
  {
    sub_25E9D77A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DA00);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

PnROnDeviceFramework::SelectedEvent_optional __swiftcall SelectedEvent.init(rawValue:)(Swift::Int64 rawValue)
{
  if (rawValue <= 400)
  {
    if (rawValue <= 104)
    {
      if (rawValue > 101)
      {
        if (rawValue == 102)
        {
          *v1 = 2;
        }

        else if (rawValue == 103)
        {
          *v1 = 3;
        }

        else
        {
          *v1 = 4;
        }

        return rawValue;
      }

      if (!rawValue)
      {
        *v1 = 0;
        return rawValue;
      }

      if (rawValue == 101)
      {
        v2 = 1;
LABEL_21:
        *v1 = v2;
        return rawValue;
      }
    }

    else if (rawValue > 200)
    {
      switch(rawValue)
      {
        case 201:
          *v1 = 8;
          return rawValue;
        case 301:
          *v1 = 9;
          return rawValue;
        case 302:
          *v1 = 10;
          return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 'i':
          *v1 = 5;
          return rawValue;
        case 'j':
          *v1 = 6;
          return rawValue;
        case 'k':
          *v1 = 7;
          return rawValue;
      }
    }

LABEL_25:
    *v1 = 89;
    return rawValue;
  }

  v2 = 71;
  switch(rawValue)
  {
    case 1101:
      *v1 = 13;
      return rawValue;
    case 1102:
      *v1 = 14;
      return rawValue;
    case 1103:
      *v1 = 15;
      return rawValue;
    case 1104:
      *v1 = 16;
      return rawValue;
    case 1105:
      *v1 = 17;
      return rawValue;
    case 1106:
      *v1 = 18;
      return rawValue;
    case 1107:
      *v1 = 19;
      return rawValue;
    case 1108:
      *v1 = 20;
      return rawValue;
    case 1109:
      *v1 = 21;
      return rawValue;
    case 1110:
      *v1 = 22;
      return rawValue;
    case 1111:
      *v1 = 23;
      return rawValue;
    case 1112:
      *v1 = 24;
      return rawValue;
    case 1113:
      *v1 = 25;
      return rawValue;
    case 1114:
      *v1 = 26;
      return rawValue;
    case 1115:
      *v1 = 27;
      return rawValue;
    case 1116:
      *v1 = 28;
      return rawValue;
    case 1117:
      *v1 = 29;
      return rawValue;
    case 1118:
      *v1 = 30;
      return rawValue;
    case 1119:
      *v1 = 31;
      return rawValue;
    case 1120:
      *v1 = 32;
      return rawValue;
    case 1121:
      *v1 = 33;
      return rawValue;
    case 1122:
      *v1 = 34;
      return rawValue;
    case 1123:
      *v1 = 35;
      return rawValue;
    case 1124:
      *v1 = 36;
      return rawValue;
    case 1125:
    case 1126:
    case 1127:
    case 1128:
    case 1129:
    case 1130:
    case 1131:
    case 1132:
    case 1133:
    case 1134:
    case 1135:
    case 1136:
    case 1137:
    case 1138:
    case 1139:
    case 1140:
    case 1141:
    case 1142:
    case 1143:
    case 1144:
    case 1145:
    case 1146:
    case 1147:
    case 1148:
    case 1149:
    case 1150:
    case 1151:
    case 1152:
    case 1153:
    case 1154:
    case 1155:
    case 1156:
    case 1157:
    case 1158:
    case 1159:
    case 1160:
    case 1161:
    case 1162:
    case 1163:
    case 1164:
    case 1165:
    case 1166:
    case 1167:
    case 1168:
    case 1169:
    case 1170:
    case 1171:
    case 1172:
    case 1173:
    case 1174:
    case 1175:
    case 1176:
    case 1177:
    case 1178:
    case 1179:
    case 1180:
    case 1181:
    case 1182:
    case 1183:
    case 1184:
    case 1185:
    case 1186:
    case 1187:
    case 1188:
    case 1189:
    case 1190:
    case 1191:
    case 1192:
    case 1193:
    case 1194:
    case 1195:
    case 1196:
    case 1197:
    case 1198:
    case 1199:
    case 1200:
    case 1203:
    case 1204:
    case 1205:
    case 1206:
    case 1207:
    case 1208:
    case 1209:
    case 1210:
    case 1211:
    case 1212:
    case 1213:
    case 1214:
    case 1215:
    case 1216:
    case 1217:
    case 1218:
    case 1219:
    case 1220:
    case 1221:
    case 1222:
    case 1223:
    case 1224:
    case 1225:
    case 1226:
    case 1227:
    case 1228:
    case 1229:
    case 1230:
    case 1231:
    case 1232:
    case 1233:
    case 1234:
    case 1235:
    case 1236:
    case 1237:
    case 1238:
    case 1239:
    case 1240:
    case 1241:
    case 1242:
    case 1243:
    case 1244:
    case 1245:
    case 1246:
    case 1247:
    case 1248:
    case 1249:
    case 1250:
    case 1251:
    case 1252:
    case 1253:
    case 1254:
    case 1255:
    case 1256:
    case 1257:
    case 1258:
    case 1259:
    case 1260:
    case 1261:
    case 1262:
    case 1263:
    case 1264:
    case 1265:
    case 1266:
    case 1267:
    case 1268:
    case 1269:
    case 1270:
    case 1271:
    case 1272:
    case 1273:
    case 1274:
    case 1275:
    case 1276:
    case 1277:
    case 1278:
    case 1279:
    case 1280:
    case 1281:
    case 1282:
    case 1283:
    case 1284:
    case 1285:
    case 1286:
    case 1287:
    case 1288:
    case 1289:
    case 1290:
    case 1291:
    case 1292:
    case 1293:
    case 1294:
    case 1295:
    case 1296:
    case 1297:
    case 1298:
    case 1299:
    case 1300:
    case 1311:
    case 1312:
    case 1313:
    case 1314:
    case 1315:
    case 1316:
    case 1317:
    case 1318:
    case 1319:
    case 1320:
    case 1321:
    case 1322:
    case 1323:
    case 1324:
    case 1325:
    case 1326:
    case 1327:
    case 1328:
    case 1329:
    case 1330:
    case 1331:
    case 1332:
    case 1333:
    case 1334:
    case 1335:
    case 1336:
    case 1337:
    case 1338:
    case 1339:
    case 1340:
    case 1341:
    case 1342:
    case 1343:
    case 1344:
    case 1345:
    case 1346:
    case 1347:
    case 1348:
    case 1349:
    case 1350:
    case 1351:
    case 1352:
    case 1353:
    case 1354:
    case 1355:
    case 1356:
    case 1357:
    case 1358:
    case 1359:
    case 1360:
    case 1361:
    case 1362:
    case 1363:
    case 1364:
    case 1365:
    case 1366:
    case 1367:
    case 1368:
    case 1369:
    case 1370:
    case 1371:
    case 1372:
    case 1373:
    case 1374:
    case 1375:
    case 1376:
    case 1377:
    case 1378:
    case 1379:
    case 1380:
    case 1381:
    case 1382:
    case 1383:
    case 1384:
    case 1385:
    case 1386:
    case 1387:
    case 1388:
    case 1389:
    case 1390:
    case 1391:
    case 1392:
    case 1393:
    case 1394:
    case 1395:
    case 1396:
    case 1397:
    case 1398:
    case 1399:
    case 1400:
    case 1415:
    case 1416:
    case 1417:
    case 1418:
    case 1419:
    case 1420:
    case 1421:
    case 1422:
    case 1423:
    case 1424:
    case 1425:
    case 1426:
    case 1427:
    case 1428:
    case 1429:
    case 1430:
    case 1431:
    case 1432:
    case 1433:
    case 1434:
    case 1435:
    case 1436:
    case 1437:
    case 1438:
    case 1439:
    case 1440:
    case 1441:
    case 1442:
    case 1443:
    case 1444:
    case 1445:
    case 1446:
    case 1447:
    case 1448:
    case 1449:
    case 1450:
    case 1451:
    case 1452:
    case 1453:
    case 1454:
    case 1455:
    case 1456:
    case 1457:
    case 1458:
    case 1459:
    case 1460:
    case 1461:
    case 1462:
    case 1463:
    case 1464:
    case 1465:
    case 1466:
    case 1467:
    case 1468:
    case 1469:
    case 1470:
    case 1471:
    case 1472:
    case 1473:
    case 1474:
    case 1475:
    case 1476:
    case 1477:
    case 1478:
    case 1479:
    case 1480:
    case 1481:
    case 1482:
    case 1483:
    case 1484:
    case 1485:
    case 1486:
    case 1487:
    case 1488:
    case 1489:
    case 1490:
    case 1491:
    case 1492:
    case 1493:
    case 1494:
    case 1495:
    case 1496:
    case 1497:
    case 1498:
    case 1499:
    case 1500:
    case 1515:
    case 1516:
    case 1517:
    case 1518:
    case 1519:
    case 1520:
    case 1521:
    case 1522:
    case 1523:
    case 1524:
    case 1525:
    case 1526:
    case 1527:
    case 1528:
    case 1529:
    case 1530:
    case 1531:
    case 1532:
    case 1533:
    case 1534:
    case 1535:
    case 1536:
    case 1537:
    case 1538:
    case 1539:
    case 1540:
    case 1541:
    case 1542:
    case 1543:
    case 1544:
    case 1545:
    case 1546:
    case 1547:
    case 1548:
    case 1549:
    case 1550:
    case 1551:
    case 1552:
    case 1553:
    case 1554:
    case 1555:
    case 1556:
    case 1557:
    case 1558:
    case 1559:
    case 1560:
    case 1561:
    case 1562:
    case 1563:
    case 1564:
    case 1565:
    case 1566:
    case 1567:
    case 1568:
    case 1569:
    case 1570:
    case 1571:
    case 1572:
    case 1573:
    case 1574:
    case 1575:
    case 1576:
    case 1577:
    case 1578:
    case 1579:
    case 1580:
    case 1581:
    case 1582:
    case 1583:
    case 1584:
    case 1585:
    case 1586:
    case 1587:
    case 1588:
    case 1589:
    case 1590:
    case 1591:
    case 1592:
    case 1593:
    case 1594:
    case 1595:
    case 1596:
    case 1597:
    case 1598:
    case 1599:
    case 1600:
    case 1611:
    case 1612:
    case 1613:
    case 1614:
    case 1615:
    case 1616:
    case 1617:
    case 1618:
    case 1619:
    case 1620:
    case 1621:
    case 1622:
    case 1623:
    case 1624:
    case 1625:
    case 1626:
    case 1627:
    case 1628:
    case 1629:
    case 1630:
    case 1631:
    case 1632:
    case 1633:
    case 1634:
    case 1635:
    case 1636:
    case 1637:
    case 1638:
    case 1639:
    case 1640:
    case 1641:
    case 1642:
    case 1643:
    case 1644:
    case 1645:
    case 1646:
    case 1647:
    case 1648:
    case 1649:
    case 1650:
    case 1651:
    case 1652:
    case 1653:
    case 1654:
    case 1655:
    case 1656:
    case 1657:
    case 1658:
    case 1659:
    case 1660:
    case 1661:
    case 1662:
    case 1663:
    case 1664:
    case 1665:
    case 1666:
    case 1667:
    case 1668:
    case 1669:
    case 1670:
    case 1671:
    case 1672:
    case 1673:
    case 1674:
    case 1675:
    case 1676:
    case 1677:
    case 1678:
    case 1679:
    case 1680:
    case 1681:
    case 1682:
    case 1683:
    case 1684:
    case 1685:
    case 1686:
    case 1687:
    case 1688:
    case 1689:
    case 1690:
    case 1691:
    case 1692:
    case 1693:
    case 1694:
    case 1695:
    case 1696:
    case 1697:
    case 1698:
    case 1699:
    case 1700:
      goto LABEL_25;
    case 1201:
      *v1 = 37;
      return rawValue;
    case 1202:
      *v1 = 38;
      return rawValue;
    case 1301:
      *v1 = 39;
      return rawValue;
    case 1302:
      *v1 = 40;
      return rawValue;
    case 1303:
      *v1 = 41;
      return rawValue;
    case 1304:
      *v1 = 42;
      return rawValue;
    case 1305:
      *v1 = 43;
      return rawValue;
    case 1306:
      *v1 = 44;
      return rawValue;
    case 1307:
      *v1 = 45;
      return rawValue;
    case 1308:
      *v1 = 46;
      return rawValue;
    case 1309:
      *v1 = 47;
      return rawValue;
    case 1310:
      *v1 = 48;
      return rawValue;
    case 1401:
      *v1 = 49;
      return rawValue;
    case 1402:
      *v1 = 50;
      return rawValue;
    case 1403:
      *v1 = 51;
      return rawValue;
    case 1404:
      *v1 = 52;
      return rawValue;
    case 1405:
      *v1 = 53;
      return rawValue;
    case 1406:
      *v1 = 54;
      return rawValue;
    case 1407:
      *v1 = 55;
      return rawValue;
    case 1408:
      *v1 = 56;
      return rawValue;
    case 1409:
      *v1 = 57;
      return rawValue;
    case 1410:
      *v1 = 58;
      return rawValue;
    case 1411:
      *v1 = 59;
      return rawValue;
    case 1412:
      *v1 = 60;
      return rawValue;
    case 1413:
      *v1 = 61;
      return rawValue;
    case 1414:
      *v1 = 62;
      return rawValue;
    case 1501:
      *v1 = 63;
      return rawValue;
    case 1502:
      *v1 = 64;
      return rawValue;
    case 1503:
      *v1 = 65;
      return rawValue;
    case 1504:
      *v1 = 66;
      return rawValue;
    case 1505:
      *v1 = 67;
      return rawValue;
    case 1506:
      *v1 = 68;
      return rawValue;
    case 1507:
      *v1 = 69;
      return rawValue;
    case 1508:
      *v1 = 70;
      return rawValue;
    case 1509:
      goto LABEL_21;
    case 1510:
      *v1 = 72;
      return rawValue;
    case 1511:
      *v1 = 73;
      return rawValue;
    case 1512:
      *v1 = 74;
      return rawValue;
    case 1513:
      *v1 = 75;
      return rawValue;
    case 1514:
      *v1 = 76;
      return rawValue;
    case 1601:
      *v1 = 77;
      return rawValue;
    case 1602:
      *v1 = 78;
      return rawValue;
    case 1603:
      *v1 = 79;
      return rawValue;
    case 1604:
      *v1 = 80;
      return rawValue;
    case 1605:
      *v1 = 81;
      return rawValue;
    case 1606:
      *v1 = 82;
      return rawValue;
    case 1607:
      *v1 = 83;
      return rawValue;
    case 1608:
      *v1 = 84;
      return rawValue;
    case 1609:
      *v1 = 85;
      return rawValue;
    case 1610:
      *v1 = 86;
      return rawValue;
    case 1701:
      *v1 = 87;
      return rawValue;
    case 1702:
      *v1 = 88;
      return rawValue;
    default:
      if (rawValue == 401)
      {
        *v1 = 11;
      }

      else
      {
        if (rawValue != 402)
        {
          goto LABEL_25;
        }

        *v1 = 12;
      }

      break;
  }

  return rawValue;
}

uint64_t sub_25E999998()
{
  v1 = *v0;
  sub_25E9D8390();
  MEMORY[0x25F8C4CA0](qword_25E9DA078[v1]);
  return sub_25E9D83C0();
}

uint64_t sub_25E999A20()
{
  v1 = *v0;
  sub_25E9D8390();
  MEMORY[0x25F8C4CA0](qword_25E9DA078[v1]);
  return sub_25E9D83C0();
}

uint64_t PRRequestContextMetadata.planCycleId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25E9D77F0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for PRRequestContextMetadata()
{
  result = qword_27FD0DA18;
  if (!qword_27FD0DA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

PnROnDeviceFramework::StopRecordingReason_optional __swiftcall StopRecordingReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E9D82D0();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t StopRecordingReason.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E55;
  v3 = 0x6E65657263536E4FLL;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001CLL;
  }

  v4 = 0x61546F54646C6F48;
  if (v1 != 3)
  {
    v4 = 0x525654656C707041;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x6547726576726553;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_25E999D0C()
{
  result = qword_27FD0DA08;
  if (!qword_27FD0DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DA08);
  }

  return result;
}

unint64_t sub_25E999D70()
{
  result = qword_27FD0DA10;
  if (!qword_27FD0DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DA10);
  }

  return result;
}

uint64_t sub_25E999DD0()
{
  *v0;
  *v0;
  *v0;
  sub_25E9D8010();
}

void sub_25E999F28(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E55;
  v5 = 0xEE006E6F74747542;
  v6 = 0x6E65657263536E4FLL;
  if (v2 != 5)
  {
    v6 = 0xD00000000000001CLL;
    v5 = 0x800000025E9DCB50;
  }

  v7 = 0xEA00000000006B6CLL;
  v8 = 0x61546F54646C6F48;
  if (v2 != 3)
  {
    v8 = 0x525654656C707041;
    v7 = 0xED000065746F6D65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xD000000000000011;
  v10 = 0x800000025E9DCB00;
  if (v2 != 1)
  {
    v9 = 0x6547726576726553;
    v10 = 0xEF6465746172656ELL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for SelectedEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xA8)
  {
    goto LABEL_17;
  }

  if (a2 + 88 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 88) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 88;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 88;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 88;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x59;
  v8 = v6 - 89;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SelectedEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 88 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 88) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xA8)
  {
    v4 = 0;
  }

  if (a2 > 0xA7)
  {
    v5 = ((a2 - 168) >> 8) + 1;
    *result = a2 + 88;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 88;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PnREvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xA8 && a1[16])
  {
    return (*a1 + 168);
  }

  v3 = *a1;
  v4 = v3 >= 0x59;
  v5 = v3 - 89;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PnREvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA7)
  {
    *result = a2 - 168;
    *(result + 8) = 0;
    if (a3 >= 0xA8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 88;
    }
  }

  return result;
}

uint64_t sub_25E99A254()
{
  result = sub_25E9D77F0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double SELFComponent.IFTranscript.__allocating_init()()
{
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_25E9D9920;
  return result;
}

double SELFComponent.IFTranscript.init()()
{
  *&result = 1;
  *(v0 + 16) = xmmword_25E9D9920;
  return result;
}

void sub_25E99A324(unint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v128 - v4;
  v6 = MEMORY[0x277D84F90];
  v7 = sub_25E97F328(MEMORY[0x277D84F90]);
  v130 = sub_25E97F328(v6);
  swift_beginAccess();
  v8 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    if (qword_27FD0D5D0 != -1)
    {
LABEL_87:
      swift_once();
    }

    v20 = sub_25E9D7F10();
    __swift_project_value_buffer(v20, qword_27FD0DBA8);
    v21 = sub_25E9D7F00();
    v22 = sub_25E9D8120();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v7;
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_25E971000, v21, v22, "IFTSchemaIFTClientEvent: Failed to init", v24, 2u);
      v25 = v24;
      v7 = v23;
      MEMORY[0x25F8C51A0](v25, -1, -1);
    }

    goto LABEL_75;
  }

  v129 = v5;
  v9 = v7;
  sub_25E99B37C();
  v10 = v8;
  v11 = sub_25E9D7E70();

  if (qword_27FD0D5D0 != -1)
  {
    swift_once();
  }

  v12 = sub_25E9D7F10();
  v13 = __swift_project_value_buffer(v12, qword_27FD0DBA8);

  v138 = v13;
  v14 = sub_25E9D7F00();
  v15 = sub_25E9D8120();
  v16 = v11 >> 62;
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    if (v16)
    {
      v18 = sub_25E9D8290();
    }

    else
    {
      v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v17 + 4) = v18;

    _os_log_impl(&dword_25E971000, v14, v15, "IFTSchemaIFTClientEvent length %ld", v17, 0xCu);
    MEMORY[0x25F8C51A0](v17, -1, -1);
  }

  else
  {
  }

  if (v16)
  {
    v127 = sub_25E9D8290();
    v26 = v11;
    v137 = v127;
  }

  else
  {
    v26 = v11;
    v137 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v9;
  if (!v137)
  {

LABEL_75:
    if (qword_27FD0D5D0 != -1)
    {
LABEL_84:
      swift_once();
    }

    v111 = sub_25E9D7F10();
    __swift_project_value_buffer(v111, qword_27FD0DBA8);
    v112 = sub_25E9D7F00();
    v113 = sub_25E9D8120();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v141 = v115;
      *v114 = 136315394;

      v116 = v7;
      v117 = sub_25E9D7F40();
      v118 = a1;
      v120 = v119;

      v121 = sub_25E9887EC(v117, v120, &v141);
      a1 = v118;

      *(v114 + 4) = v121;
      *(v114 + 12) = 2080;
      v122 = v130;

      v123 = sub_25E9D7F40();
      v125 = v124;

      v126 = sub_25E9887EC(v123, v125, &v141);

      *(v114 + 14) = v126;
      v7 = v116;
      _os_log_impl(&dword_25E971000, v112, v113, "queriesCreated SELF Event %s, statementEvaluated SELF Event %s", v114, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v115, -1, -1);
      MEMORY[0x25F8C51A0](v114, -1, -1);
    }

    else
    {

      v122 = v130;
    }

    *a1 = v7;
    *(a1 + 8) = v122;
    return;
  }

  v128 = a1;
  a1 = 0;
  v136 = v26 & 0xC000000000000001;
  v131 = v26 & 0xFFFFFFFFFFFFFF8;
  *&v19 = 136315138;
  v132 = v19;
  v135 = v26;
  while (1)
  {
    if (v136)
    {
      v27 = MEMORY[0x25F8C4B40](a1);
    }

    else
    {
      if (a1 >= *(v131 + 16))
      {
        goto LABEL_82;
      }

      v27 = *(v26 + 8 * a1 + 32);
    }

    v28 = v27;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v29 = sub_25E9D7840();
    v139 = (a1 + 1);
    if (!v29)
    {
      v32 = 0;
LABEL_31:
      v140 = 0;
      v40 = 0xE000000000000000;
      v39 = 1;
      goto LABEL_32;
    }

    v30 = v29;
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    v32 = v31;
    if (!v31)
    {

      goto LABEL_31;
    }

    v33 = [v31 eventMetadata];
    if (!v33)
    {
      goto LABEL_28;
    }

    v34 = v33;
    v35 = [v33 ifEventId];

    if (!v35)
    {
      goto LABEL_28;
    }

    v36 = v129;
    sub_25E9D8100();

    v37 = sub_25E9D77F0();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v36, 1, v37) == 1)
    {
      sub_25E9961C4(v36);
LABEL_28:
      v39 = 0;
      v140 = 0;
      v40 = 0xE000000000000000;
      goto LABEL_32;
    }

    v140 = sub_25E9D77C0();
    v40 = v96;
    (*(v38 + 8))(v36, v37);
    v39 = 0;
LABEL_32:

    v41 = sub_25E9D7F00();
    v42 = sub_25E9D8120();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v133 = v28;
      v134 = a1;
      v45 = v44;
      v141 = v44;
      *v43 = v132;
      v46 = sub_25E9D8000();
      v48 = v39;
      v49 = v7;
      v50 = sub_25E9887EC(v46, v47, &v141);

      *(v43 + 4) = v50;
      v7 = v49;
      v39 = v48;
      _os_log_impl(&dword_25E971000, v41, v42, "IFT ifEventId value %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      v51 = v45;
      v28 = v133;
      a1 = v134;
      MEMORY[0x25F8C51A0](v51, -1, -1);
      MEMORY[0x25F8C51A0](v43, -1, -1);
    }

    v52 = v32;
    v53 = [v52 queriesCreated];
    if (!v53)
    {
      break;
    }

    v54 = sub_25E9D7F00();
    v55 = sub_25E9D8120();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = v7;
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_25E971000, v54, v55, "Found IFTranscript SELF queriesCreated", v57, 2u);
      v58 = v57;
      v7 = v56;
      MEMORY[0x25F8C51A0](v58, -1, -1);
    }

    v59 = v28;
    v60 = sub_25E9D7850();
    if (!v60)
    {
      goto LABEL_90;
    }

    v61 = v60;
    v62 = sub_25E9D7870();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v141 = v7;
    v65 = sub_25E978F5C(v140, v40);
    v66 = v7[2];
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_81;
    }

    v69 = v64;
    if (v7[3] >= v68)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v64 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        sub_25E97D5F4();
        if ((v69 & 1) == 0)
        {
          goto LABEL_65;
        }
      }
    }

    else
    {
      sub_25E979464(v68, isUniquelyReferenced_nonNull_native);
      v70 = sub_25E978F5C(v140, v40);
      if ((v69 & 1) != (v71 & 1))
      {
        goto LABEL_92;
      }

      v65 = v70;
      if ((v69 & 1) == 0)
      {
LABEL_65:
        v7 = v141;
        v141[(v65 >> 6) + 8] |= 1 << v65;
        v99 = (v7[6] + 16 * v65);
        *v99 = v140;
        v99[1] = v40;
        v100 = v7[7] + 16 * v65;
        *v100 = 87;
        *(v100 + 8) = v62;

        v101 = v7[2];
        v91 = __OFADD__(v101, 1);
        v102 = v101 + 1;
        if (v91)
        {
          goto LABEL_83;
        }

        v7[2] = v102;
        goto LABEL_67;
      }
    }

    v7 = v141;
    v95 = v141[7] + 16 * v65;
    *v95 = 87;
    *(v95 + 8) = v62;

LABEL_67:
    v26 = v135;
    v103 = v139;
LABEL_68:
    ++a1;
    if (v103 == v137)
    {

      a1 = v128;
      goto LABEL_75;
    }
  }

  v72 = [v52 statementEvaluated];

  if (!v72)
  {

    goto LABEL_67;
  }

  if (v39)
  {
LABEL_59:

    goto LABEL_67;
  }

  v73 = [v52 eventMetadata];
  if (!v73 || (v74 = v73, v75 = [v73 sender], v74, v75 != 3))
  {

    goto LABEL_59;
  }

  v76 = sub_25E9D7F00();
  v77 = sub_25E9D8120();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = v7;
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_25E971000, v76, v77, "Found IFTranscript SELF statementEvaluated", v79, 2u);
    v80 = v79;
    v7 = v78;
    MEMORY[0x25F8C51A0](v80, -1, -1);
  }

  v81 = v40;

  v82 = sub_25E9D7850();
  if (!v82)
  {
    goto LABEL_91;
  }

  v83 = v82;
  v84 = sub_25E9D7870();

  v85 = v130;
  v86 = swift_isUniquelyReferenced_nonNull_native();
  v141 = v85;
  v87 = sub_25E978F5C(v140, v81);
  v89 = *(v85 + 16);
  v90 = (v88 & 1) == 0;
  v91 = __OFADD__(v89, v90);
  v92 = v89 + v90;
  if (v91)
  {
    __break(1u);
    goto LABEL_87;
  }

  v93 = v88;
  if (*(v85 + 24) >= v92)
  {
    if (v86)
    {
      goto LABEL_62;
    }

    v104 = v87;
    sub_25E97D5F4();
    v87 = v104;
    if ((v93 & 1) == 0)
    {
      goto LABEL_71;
    }

LABEL_63:
    v97 = v87;

    v130 = v141;
    v98 = v141[7] + 16 * v97;
    *v98 = 88;
    *(v98 + 8) = v84;
LABEL_73:
    v110 = v135;
    v103 = v139;

    v26 = v110;
    goto LABEL_68;
  }

  sub_25E979464(v92, v86);
  v87 = sub_25E978F5C(v140, v81);
  if ((v93 & 1) != (v94 & 1))
  {
    goto LABEL_92;
  }

LABEL_62:
  if (v93)
  {
    goto LABEL_63;
  }

LABEL_71:
  v105 = v141;
  v141[(v87 >> 6) + 8] |= 1 << v87;
  v106 = (v105[6] + 16 * v87);
  *v106 = v140;
  v106[1] = v81;
  v107 = v105[7] + 16 * v87;
  *v107 = 88;
  *(v107 + 8) = v84;
  v108 = v105[2];
  v91 = __OFADD__(v108, 1);
  v109 = v108 + 1;
  if (!v91)
  {
    v130 = v105;
    v105[2] = v109;
    goto LABEL_73;
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  sub_25E9D8330();
  __break(1u);
}

uint64_t SELFComponent.IFTranscript.deinit()
{
  v1 = *(v0 + 24);
  sub_25E98F5A0(*(v0 + 16));
  return v0;
}

uint64_t SELFComponent.IFTranscript.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  sub_25E98F5A0(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_25E99AF94(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_25E99AFE8(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_25E99B030(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void *sub_25E99B080(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 288 * a1), __src, 0x120uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_25E99B0F4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_25E99B13C(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 360 * a1), __src, 0x168uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_25E99B1B0(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 240 * result);
  v7 = a4[13];
  v6[12] = a4[12];
  v6[13] = v7;
  v6[14] = a4[14];
  v8 = a4[9];
  v6[8] = a4[8];
  v6[9] = v8;
  v9 = a4[11];
  v6[10] = a4[10];
  v6[11] = v9;
  v10 = a4[5];
  v6[4] = a4[4];
  v6[5] = v10;
  v11 = a4[7];
  v6[6] = a4[6];
  v6[7] = v11;
  v12 = a4[1];
  *v6 = *a4;
  v6[1] = v12;
  v13 = a4[3];
  v6[2] = a4[2];
  v6[3] = v13;
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

unint64_t sub_25E99B23C(unint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 4 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_25E99B284(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 232 * result;
  v7 = *(a4 + 208);
  *(v6 + 192) = *(a4 + 192);
  *(v6 + 208) = v7;
  *(v6 + 224) = *(a4 + 224);
  v8 = *(a4 + 144);
  *(v6 + 128) = *(a4 + 128);
  *(v6 + 144) = v8;
  v9 = *(a4 + 176);
  *(v6 + 160) = *(a4 + 160);
  *(v6 + 176) = v9;
  v10 = *(a4 + 80);
  *(v6 + 64) = *(a4 + 64);
  *(v6 + 80) = v10;
  v11 = *(a4 + 112);
  *(v6 + 96) = *(a4 + 96);
  *(v6 + 112) = v11;
  v12 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v12;
  v13 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v13;
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

_OWORD *sub_25E99B310(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_25E980EA8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_25E99B37C()
{
  result = qword_27FD0DA28;
  if (!qword_27FD0DA28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0DA28);
  }

  return result;
}

uint64_t sub_25E99B3C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25E99B424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

BOOL sub_25E99B514(void *a1)
{
  v1 = [a1 flowState];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id sub_25E99B558(void *a1)
{
  result = [a1 flowStep];
  if (result)
  {
    v2 = result;
    v3 = [result flowState];

    if (v3)
    {
      v4 = [v3 flowStateType];

      return (v4 == 142);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25E99B640()
{
  swift_beginAccess();
  if (qword_27FD0DD78)
  {
    v0 = qword_27FD0DD78;
    v1 = sub_25E9D7EE0();

    if (v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA30, &qword_25E9DA3D8);
      sub_25E98F558(0, &qword_27FD0DA38, 0x277D57710);
      sub_25E99622C(&qword_27FD0DA40, &qword_27FD0DA30, &qword_25E9DA3D8);
      sub_25E9D8040();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D9A0, &qword_25E9D9BB0);
      sub_25E98F558(0, &qword_27FD0DA48, 0x277D57500);
      sub_25E99622C(&qword_27FD0D9B0, &qword_27FD0D9A0, &qword_25E9D9BB0);
      v2 = sub_25E9D8040();

      if (v2 >> 62)
      {
        goto LABEL_4;
      }

LABEL_7:
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }
  }

  v2 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_7;
  }

LABEL_4:
  result = sub_25E9D8290();
  if (!result)
  {
LABEL_5:

    return 0;
  }

LABEL_8:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25F8C4B40](0, v2);
    goto LABEL_11;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v2 + 32);
LABEL_11:
    v4 = v5;

    return v4;
  }

  __break(1u);
  return result;
}

double SELFComponent.RG.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  return result;
}

double SELFComponent.RG.init()()
{
  *(v0 + 128) = 0;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t sub_25E99B8D4()
{
  swift_beginAccess();
  v0 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    return 0;
  }

  sub_25E98F558(0, &qword_27FD0D928, 0x277D5A478);
  v1 = v0;
  v2 = sub_25E9D7E80();

  if (v2 >> 62)
  {
    v3 = sub_25E9D8290();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

uint64_t sub_25E99B9B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v364 - v2;
  v4 = MEMORY[0x277D84F90];
  v393 = sub_25E97FC3C(MEMORY[0x277D84F90]);
  v380 = sub_25E97F328(v4);
  v373 = sub_25E97F328(v4);
  v5 = sub_25E97F328(v4);
  v372 = sub_25E97F328(v4);
  v379 = sub_25E97F328(v4);
  v371 = sub_25E97F328(v4);
  v378 = sub_25E97F328(v4);
  v370 = sub_25E97F328(v4);
  v377 = sub_25E97F328(v4);
  v369 = sub_25E97F328(v4);
  v376 = sub_25E97F328(v4);
  v368 = sub_25E97F328(v4);
  v375 = sub_25E97F328(v4);
  v367 = sub_25E97F328(v4);
  swift_beginAccess();
  v6 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    if (qword_27FD0D5A8 != -1)
    {
      swift_once();
    }

    v18 = sub_25E9D7F10();
    __swift_project_value_buffer(v18, qword_27FD0DB30);
    v19 = sub_25E9D7F00();
    v20 = sub_25E9D8120();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_25E971000, v19, v20, "RGSiriSchemaRGClientEvent: Failed to init", v21, 2u);
      MEMORY[0x25F8C51A0](v21, -1, -1);
    }

    goto LABEL_138;
  }

  v365 = v3;
  v7 = v5;
  sub_25E98F558(0, &qword_27FD0DA50, 0x277D5A3E0);
  v8 = v6;
  v9 = sub_25E9D7E70();

  if (qword_27FD0D5A8 != -1)
  {
LABEL_135:
    swift_once();
  }

  v10 = sub_25E9D7F10();
  v11 = __swift_project_value_buffer(v10, qword_27FD0DB30);

  v12 = sub_25E9D7F00();
  v13 = sub_25E9D8120();
  v14 = v9 >> 62;
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    if (v14)
    {
      v16 = sub_25E9D8290();
    }

    else
    {
      v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 4) = v16;

    _os_log_impl(&dword_25E971000, v12, v13, "rgRequestClient length %ld", v15, 0xCu);
    MEMORY[0x25F8C51A0](v15, -1, -1);
  }

  else
  {
  }

  if (v14)
  {
    v22 = sub_25E9D8290();
    v5 = v7;
    if (v22)
    {
      goto LABEL_15;
    }

    goto LABEL_137;
  }

  v22 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = v7;
  if (!v22)
  {
LABEL_137:

LABEL_138:
    v220 = v374;
    v221 = v374[2];
    v374[2] = v393;

    v222 = v220[3];
    v220[3] = v380;

    v223 = v220[4];
    v220[4] = v373;

    if (qword_27FD0D5A8 != -1)
    {
      swift_once();
    }

    v224 = sub_25E9D7F10();
    __swift_project_value_buffer(v224, qword_27FD0DB30);
    v225 = sub_25E9D7F00();
    v226 = sub_25E9D8120();
    v227 = os_log_type_enabled(v225, v226);
    v390 = v5;
    if (v227)
    {
      v228 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      v392 = v229;
      *v228 = 136315138;

      v230 = sub_25E9D7F40();
      v232 = v231;

      v233 = sub_25E9887EC(v230, v232, &v392);

      *(v228 + 4) = v233;
      _os_log_impl(&dword_25E971000, v225, v226, "RG TYPE HASHMAP RGSiriSchemaRGRequestContext:RG_TYPE %s", v228, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v229);
      MEMORY[0x25F8C51A0](v229, -1, -1);
      MEMORY[0x25F8C51A0](v228, -1, -1);
    }

    v234 = sub_25E9D7F00();
    v235 = sub_25E9D8120();
    if (os_log_type_enabled(v234, v235))
    {
      v236 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      v392 = v237;
      *v236 = 136315138;

      v238 = sub_25E9D7F40();
      v240 = v239;

      v241 = sub_25E9887EC(v238, v240, &v392);

      *(v236 + 4) = v241;
      _os_log_impl(&dword_25E971000, v234, v235, "RG START HASHMAP RGSiriSchemaRGRequestContext:Event %s", v236, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v237);
      MEMORY[0x25F8C51A0](v237, -1, -1);
      MEMORY[0x25F8C51A0](v236, -1, -1);
    }

    v242 = sub_25E9D7F00();
    v243 = sub_25E9D8120();
    if (os_log_type_enabled(v242, v243))
    {
      v244 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      v392 = v245;
      *v244 = 136315138;

      v246 = sub_25E9D7F40();
      v248 = v247;

      v249 = sub_25E9887EC(v246, v248, &v392);

      *(v244 + 4) = v249;
      _os_log_impl(&dword_25E971000, v242, v243, "RG END HASHMAP RGSiriSchemaRGRequestContext:Event %s", v244, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v245);
      MEMORY[0x25F8C51A0](v245, -1, -1);
      MEMORY[0x25F8C51A0](v244, -1, -1);
    }

    v250 = v374;
    v251 = v374[5];
    v374[5] = v390;

    v252 = v250[6];
    v250[6] = v372;

    v253 = sub_25E9D7F00();
    v254 = sub_25E9D8120();
    if (os_log_type_enabled(v253, v254))
    {
      v255 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      v392 = v256;
      *v255 = 136315138;

      v257 = sub_25E9D7F40();
      v259 = v258;

      v260 = sub_25E9887EC(v257, v259, &v392);

      *(v255 + 4) = v260;
      _os_log_impl(&dword_25E971000, v253, v254, "RG START HASHMAP RGSiriSchemaRGOverrideContext:Event %s", v255, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v256);
      MEMORY[0x25F8C51A0](v256, -1, -1);
      MEMORY[0x25F8C51A0](v255, -1, -1);
    }

    v261 = sub_25E9D7F00();
    v262 = sub_25E9D8120();
    if (os_log_type_enabled(v261, v262))
    {
      v263 = swift_slowAlloc();
      v264 = swift_slowAlloc();
      v392 = v264;
      *v263 = 136315138;

      v265 = sub_25E9D7F40();
      v267 = v266;

      v268 = sub_25E9887EC(v265, v267, &v392);

      *(v263 + 4) = v268;
      _os_log_impl(&dword_25E971000, v261, v262, "RG END HASHMAP RGSiriSchemaRGOverrideContext:Event %s", v263, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v264);
      MEMORY[0x25F8C51A0](v264, -1, -1);
      MEMORY[0x25F8C51A0](v263, -1, -1);
    }

    v269 = v374;
    v270 = v374[7];
    v374[7] = v379;

    v271 = v269[8];
    v269[8] = v371;

    v272 = sub_25E9D7F00();
    v273 = sub_25E9D8120();
    if (os_log_type_enabled(v272, v273))
    {
      v274 = swift_slowAlloc();
      v275 = swift_slowAlloc();
      v392 = v275;
      *v274 = 136315138;

      v276 = sub_25E9D7F40();
      v278 = v277;

      v279 = sub_25E9887EC(v276, v278, &v392);

      *(v274 + 4) = v279;
      _os_log_impl(&dword_25E971000, v272, v273, "RG START HASHMAP RGSiriSchemaRGValidationContext:Event %s", v274, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v275);
      MEMORY[0x25F8C51A0](v275, -1, -1);
      MEMORY[0x25F8C51A0](v274, -1, -1);
    }

    v280 = sub_25E9D7F00();
    v281 = sub_25E9D8120();
    if (os_log_type_enabled(v280, v281))
    {
      v282 = swift_slowAlloc();
      v283 = swift_slowAlloc();
      v392 = v283;
      *v282 = 136315138;

      v284 = sub_25E9D7F40();
      v286 = v285;

      v287 = sub_25E9887EC(v284, v286, &v392);

      *(v282 + 4) = v287;
      _os_log_impl(&dword_25E971000, v280, v281, "RG END HASHMAP RGSiriSchemaRGValidationContext:Event %s", v282, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v283);
      MEMORY[0x25F8C51A0](v283, -1, -1);
      MEMORY[0x25F8C51A0](v282, -1, -1);
    }

    v288 = v374;
    v289 = v374[9];
    v374[9] = v378;

    v290 = v288[10];
    v288[10] = v370;

    v291 = sub_25E9D7F00();
    v292 = sub_25E9D8120();
    if (os_log_type_enabled(v291, v292))
    {
      v293 = swift_slowAlloc();
      v294 = swift_slowAlloc();
      v392 = v294;
      *v293 = 136315138;

      v295 = sub_25E9D7F40();
      v297 = v296;

      v298 = sub_25E9887EC(v295, v297, &v392);

      *(v293 + 4) = v298;
      _os_log_impl(&dword_25E971000, v291, v292, "RG START HASHMAP RGSiriSchemaRGCatalogContext:Event %s", v293, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v294);
      MEMORY[0x25F8C51A0](v294, -1, -1);
      MEMORY[0x25F8C51A0](v293, -1, -1);
    }

    v299 = sub_25E9D7F00();
    v300 = sub_25E9D8120();
    if (os_log_type_enabled(v299, v300))
    {
      v301 = swift_slowAlloc();
      v302 = swift_slowAlloc();
      v392 = v302;
      *v301 = 136315138;

      v303 = sub_25E9D7F40();
      v305 = v304;

      v306 = sub_25E9887EC(v303, v305, &v392);

      *(v301 + 4) = v306;
      _os_log_impl(&dword_25E971000, v299, v300, "RG END HASHMAP RGSiriSchemaRGCatalogContext:Event %s", v301, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v302);
      MEMORY[0x25F8C51A0](v302, -1, -1);
      MEMORY[0x25F8C51A0](v301, -1, -1);
    }

    v307 = v374;
    v308 = v374[11];
    v374[11] = v377;

    v309 = v307[12];
    v307[12] = v369;

    v310 = sub_25E9D7F00();
    v311 = sub_25E9D8120();
    if (os_log_type_enabled(v310, v311))
    {
      v312 = swift_slowAlloc();
      v313 = swift_slowAlloc();
      v392 = v313;
      *v312 = 136315138;

      v314 = sub_25E9D7F40();
      v316 = v315;

      v317 = sub_25E9887EC(v314, v316, &v392);

      *(v312 + 4) = v317;
      _os_log_impl(&dword_25E971000, v310, v311, "RG START HASHMAP RGSiriSchemaRGInferenceContext:Event %s", v312, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v313);
      MEMORY[0x25F8C51A0](v313, -1, -1);
      MEMORY[0x25F8C51A0](v312, -1, -1);
    }

    v318 = sub_25E9D7F00();
    v319 = sub_25E9D8120();
    if (os_log_type_enabled(v318, v319))
    {
      v320 = swift_slowAlloc();
      v321 = swift_slowAlloc();
      v392 = v321;
      *v320 = 136315138;

      v322 = sub_25E9D7F40();
      v324 = v323;

      v325 = sub_25E9887EC(v322, v324, &v392);

      *(v320 + 4) = v325;
      _os_log_impl(&dword_25E971000, v318, v319, "RG END HASHMAP RGSiriSchemaRGInferenceContext:Event %s", v320, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v321);
      MEMORY[0x25F8C51A0](v321, -1, -1);
      MEMORY[0x25F8C51A0](v320, -1, -1);
    }

    v326 = v374;
    v327 = v374[13];
    v374[13] = v376;

    v328 = v326[14];
    v326[14] = v368;

    v329 = sub_25E9D7F00();
    v330 = sub_25E9D8120();
    if (os_log_type_enabled(v329, v330))
    {
      v331 = swift_slowAlloc();
      v332 = swift_slowAlloc();
      v392 = v332;
      *v331 = 136315138;

      v333 = sub_25E9D7F40();
      v335 = v334;

      v336 = sub_25E9887EC(v333, v335, &v392);

      *(v331 + 4) = v336;
      _os_log_impl(&dword_25E971000, v329, v330, "RG START HASHMAP RGSiriSchemaRGHallucinationDetectionContext:Event %s", v331, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v332);
      MEMORY[0x25F8C51A0](v332, -1, -1);
      MEMORY[0x25F8C51A0](v331, -1, -1);
    }

    v337 = sub_25E9D7F00();
    v338 = sub_25E9D8120();
    if (os_log_type_enabled(v337, v338))
    {
      v339 = swift_slowAlloc();
      v340 = swift_slowAlloc();
      v392 = v340;
      *v339 = 136315138;

      v341 = sub_25E9D7F40();
      v343 = v342;

      v344 = sub_25E9887EC(v341, v343, &v392);

      *(v339 + 4) = v344;
      _os_log_impl(&dword_25E971000, v337, v338, "RG END HASHMAP RGSiriSchemaRGHallucinationDetectionContext:Event %s", v339, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v340);
      MEMORY[0x25F8C51A0](v340, -1, -1);
      MEMORY[0x25F8C51A0](v339, -1, -1);
    }

    v345 = v374;
    v346 = v374[15];
    v374[15] = v375;

    v347 = v345[16];
    v345[16] = v367;

    v348 = sub_25E9D7F00();
    v349 = sub_25E9D8120();
    if (os_log_type_enabled(v348, v349))
    {
      v350 = swift_slowAlloc();
      v351 = swift_slowAlloc();
      v392 = v351;
      *v350 = 136315138;

      v352 = sub_25E9D7F40();
      v354 = v353;

      v355 = sub_25E9887EC(v352, v354, &v392);

      *(v350 + 4) = v355;
      _os_log_impl(&dword_25E971000, v348, v349, "RG START HASHMAP RGSiriSchemaRGGMSCallContext:Event %s", v350, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v351);
      MEMORY[0x25F8C51A0](v351, -1, -1);
      MEMORY[0x25F8C51A0](v350, -1, -1);
    }

    v356 = sub_25E9D7F00();
    v357 = sub_25E9D8120();
    if (os_log_type_enabled(v356, v357))
    {
      v358 = swift_slowAlloc();
      v359 = swift_slowAlloc();
      v392 = v359;
      *v358 = 136315138;

      v360 = sub_25E9D7F40();
      v362 = v361;

      v363 = sub_25E9887EC(v360, v362, &v392);

      *(v358 + 4) = v363;
      _os_log_impl(&dword_25E971000, v356, v357, "RG END HASHMAP RGSiriSchemaRGGMSCallContext:Event %s", v358, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v359);
      MEMORY[0x25F8C51A0](v359, -1, -1);
      MEMORY[0x25F8C51A0](v358, -1, -1);
    }
  }

LABEL_15:
  v23 = 0;
  v383 = v9 & 0xC000000000000001;
  v366 = v9 & 0xFFFFFFFFFFFFFF8;
  *&v17 = 136315138;
  v384 = v17;
  v381 = v22;
  v382 = v9;
  v387 = v11;
  while (1)
  {
    if (v383)
    {
      v24 = MEMORY[0x25F8C4B40](v23, v9);
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_133;
      }
    }

    else
    {
      if (v23 >= *(v366 + 16))
      {
        goto LABEL_134;
      }

      v24 = *(v9 + 8 * v23 + 32);
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }
    }

    v385 = v25;
    v386 = v23;
    v26 = v24;
    v27 = sub_25E9D7F00();
    v28 = sub_25E9D8120();

    v29 = os_log_type_enabled(v27, v28);
    v388 = v26;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v392 = v31;
      *v30 = v384;
      v32 = [v26 debugDescription];
      v33 = sub_25E9D7FB0();
      v35 = v34;

      v36 = sub_25E9887EC(v33, v35, &v392);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_25E971000, v27, v28, "pnrOrderedEvent value %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x25F8C51A0](v31, -1, -1);
      MEMORY[0x25F8C51A0](v30, -1, -1);
    }

    v37 = sub_25E9D7840();
    if (v37)
    {
      v38 = v37;
      objc_opt_self();
      v39 = swift_dynamicCastObjCClass();
      if (!v39)
      {
      }
    }

    else
    {
      v39 = 0;
    }

    v40 = v39;
    v41 = sub_25E9D7F00();
    v42 = sub_25E9D8120();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v391 = v39;
      v392 = v44;
      *v43 = v384;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA58, &qword_25E9DA3E0);
      v45 = sub_25E9D81B0();
      v47 = sub_25E9887EC(v45, v46, &v392);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_25E971000, v41, v42, "rgEvent Client Event value %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x25F8C51A0](v44, -1, -1);
      MEMORY[0x25F8C51A0](v43, -1, -1);
    }

    if (!v39)
    {
      goto LABEL_37;
    }

    v48 = [v40 eventMetadata];
    if (!v48)
    {
      goto LABEL_37;
    }

    v49 = v48;
    v50 = [v48 rgId];

    if (!v50)
    {
      goto LABEL_37;
    }

    v51 = v365;
    sub_25E9D8100();

    v52 = sub_25E9D77F0();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v51, 1, v52) == 1)
    {
      sub_25E981210(v51, &qword_27FD0D7D8, &qword_25E9D9BC0);
LABEL_37:
      v389 = 0;
      v7 = 0xE000000000000000;
      goto LABEL_38;
    }

    v389 = sub_25E9D77C0();
    v91 = v51;
    v7 = v92;
    (*(v53 + 8))(v91, v52);
LABEL_38:

    v54 = sub_25E9D7F00();
    v55 = sub_25E9D8120();

    v56 = os_log_type_enabled(v54, v55);
    v390 = v7;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v392 = v58;
      *v57 = v384;
      v59 = sub_25E9D8000();
      v7 = v60;
      v61 = v5;
      v62 = sub_25E9887EC(v59, v60, &v392);

      *(v57 + 4) = v62;
      v5 = v61;
      _os_log_impl(&dword_25E971000, v54, v55, "rgId value %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x25F8C51A0](v58, -1, -1);
      MEMORY[0x25F8C51A0](v57, -1, -1);
    }

    if (!v39)
    {

      v9 = v382;
      goto LABEL_17;
    }

    v63 = [v40 requestContext];
    v64 = 0x279A43000uLL;
    if (v63)
    {
      v65 = v63;
      v66 = [v63 startedOrChanged];

      if (v66)
      {
        break;
      }
    }

    v77 = [v40 requestContext];
    v7 = v389;
    if (!v77 || (v78 = v77, v79 = [v77 ended], v78, !v79))
    {
      v9 = v382;
      v71 = v388;
      goto LABEL_60;
    }

    v80 = sub_25E9D7F00();
    v81 = sub_25E9D8120();
    v82 = os_log_type_enabled(v80, v81);
    v9 = v382;
    v71 = v388;
    if (v82)
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_25E971000, v80, v81, "requestContext: ended", v83, 2u);
      MEMORY[0x25F8C51A0](v83, -1, -1);
    }

    v84 = [v40 requestContext];
    if (v84 && (v85 = v84, v86 = [v84 ended], v85, v86))
    {
      v87 = v5;
      [v86 responseSource];

      v88 = sub_25E9D8180();
      v90 = v89;
    }

    else
    {
      v87 = v5;
      v88 = 0;
      v90 = 0;
    }

    v93 = v390;

    v94 = v90;
    v95 = v389;
    sub_25E98F744(v88, v94, v389, v93);
    result = sub_25E9D7850();
    if (!result)
    {
      goto LABEL_185;
    }

    v96 = result;
    v97 = sub_25E9D7870();

    v98 = v373;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v392 = v98;
    sub_25E993FE0(50, v97, v95, v93, isUniquelyReferenced_nonNull_native);
    v373 = v392;
    v5 = v87;
    v7 = v95;
LABEL_59:
    v64 = 0x279A43000uLL;
LABEL_60:
    v100 = [v40 overrideContext];
    if (v100 && (v101 = v100, v102 = [v100 startedOrChanged], v101, v102))
    {

      v103 = sub_25E9D7F00();
      v104 = sub_25E9D8120();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_25E971000, v103, v104, "overrideContext: startedOrChanged", v105, 2u);
        MEMORY[0x25F8C51A0](v105, -1, -1);
      }

      result = sub_25E9D7850();
      if (!result)
      {
        goto LABEL_176;
      }

      v106 = result;
      v107 = sub_25E9D7870();

      v108 = swift_isUniquelyReferenced_nonNull_native();
      v392 = v5;
      sub_25E993FE0(51, v107, v7, v390, v108);
      v5 = v392;
      v64 = 0x279A43000;
    }

    else
    {
      v109 = [v40 overrideContext];
      if (v109)
      {
        v110 = v109;
        v111 = [v109 ended];

        if (v111)
        {

          v112 = sub_25E9D7F00();
          v113 = sub_25E9D8120();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            *v114 = 0;
            _os_log_impl(&dword_25E971000, v112, v113, "overrideContext: ended", v114, 2u);
            MEMORY[0x25F8C51A0](v114, -1, -1);
          }

          result = sub_25E9D7850();
          v64 = 0x279A43000uLL;
          if (!result)
          {
            goto LABEL_179;
          }

          v115 = result;
          v116 = sub_25E9D7870();

          v117 = v372;
          v118 = swift_isUniquelyReferenced_nonNull_native();
          v392 = v117;
          sub_25E993FE0(52, v116, v7, v390, v118);
          v372 = v392;
        }
      }
    }

    v119 = [v40 validationContext];
    if (v119 && (v120 = v119, v121 = [v119 *(v64 + 2352)], v120, v121))
    {

      v122 = sub_25E9D7F00();
      v123 = sub_25E9D8120();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_25E971000, v122, v123, "validationContext: startedOrChanged", v124, 2u);
        MEMORY[0x25F8C51A0](v124, -1, -1);
      }

      result = sub_25E9D7850();
      if (!result)
      {
        goto LABEL_177;
      }

      v125 = result;
      v126 = sub_25E9D7870();

      v127 = v379;
      v128 = swift_isUniquelyReferenced_nonNull_native();
      v392 = v127;
      sub_25E993FE0(53, v126, v7, v390, v128);
      v379 = v392;
      v64 = 0x279A43000;
    }

    else
    {
      v129 = [v40 validationContext];
      if (v129)
      {
        v130 = v129;
        v131 = [v129 ended];

        if (v131)
        {

          v132 = sub_25E9D7F00();
          v133 = sub_25E9D8120();
          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            *v134 = 0;
            _os_log_impl(&dword_25E971000, v132, v133, "validationContext: ended", v134, 2u);
            MEMORY[0x25F8C51A0](v134, -1, -1);
          }

          result = sub_25E9D7850();
          v64 = 0x279A43000uLL;
          if (!result)
          {
            goto LABEL_180;
          }

          v135 = result;
          v136 = sub_25E9D7870();

          v137 = v371;
          v138 = swift_isUniquelyReferenced_nonNull_native();
          v392 = v137;
          sub_25E993FE0(54, v136, v7, v390, v138);
          v371 = v392;
        }
      }
    }

    v139 = [v40 catalogContext];
    if (v139 && (v140 = v139, v141 = [v139 *(v64 + 2352)], v140, v141))
    {

      v142 = sub_25E9D7F00();
      v143 = sub_25E9D8120();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        *v144 = 0;
        _os_log_impl(&dword_25E971000, v142, v143, "catalogContext: startedOrChanged", v144, 2u);
        MEMORY[0x25F8C51A0](v144, -1, -1);
      }

      result = sub_25E9D7850();
      if (!result)
      {
        goto LABEL_178;
      }

      v145 = result;
      v146 = sub_25E9D7870();

      v147 = v378;
      v148 = swift_isUniquelyReferenced_nonNull_native();
      v392 = v147;
      sub_25E993FE0(55, v146, v7, v390, v148);
      v378 = v392;
      v64 = 0x279A43000;
    }

    else
    {
      v149 = [v40 catalogContext];
      if (v149)
      {
        v150 = v149;
        v151 = [v149 ended];

        if (v151)
        {

          v152 = sub_25E9D7F00();
          v153 = sub_25E9D8120();
          if (os_log_type_enabled(v152, v153))
          {
            v154 = swift_slowAlloc();
            *v154 = 0;
            _os_log_impl(&dword_25E971000, v152, v153, "catalogContext: ended", v154, 2u);
            MEMORY[0x25F8C51A0](v154, -1, -1);
          }

          result = sub_25E9D7850();
          v64 = 0x279A43000uLL;
          if (!result)
          {
            goto LABEL_181;
          }

          v155 = result;
          v156 = sub_25E9D7870();

          v157 = v370;
          v158 = swift_isUniquelyReferenced_nonNull_native();
          v392 = v157;
          sub_25E993FE0(56, v156, v7, v390, v158);
          v370 = v392;
        }
      }
    }

    v159 = [v40 inferenceContext];
    if (v159 && (v160 = v159, v161 = [v159 *(v64 + 2352)], v160, v161))
    {

      v162 = sub_25E9D7F00();
      v163 = sub_25E9D8120();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        *v164 = 0;
        _os_log_impl(&dword_25E971000, v162, v163, "inferenceContext: startedOrChanged", v164, 2u);
        MEMORY[0x25F8C51A0](v164, -1, -1);
      }

      result = sub_25E9D7850();
      if (!result)
      {
        goto LABEL_173;
      }

      v165 = result;
      v166 = sub_25E9D7870();

      v167 = v377;
      v168 = swift_isUniquelyReferenced_nonNull_native();
      v392 = v167;
      sub_25E993FE0(57, v166, v7, v390, v168);
      v377 = v392;
      v64 = 0x279A43000;
    }

    else
    {
      v169 = [v40 inferenceContext];
      if (v169)
      {
        v170 = v169;
        v171 = [v169 ended];

        if (v171)
        {

          v172 = sub_25E9D7F00();
          v173 = sub_25E9D8120();
          if (os_log_type_enabled(v172, v173))
          {
            v174 = swift_slowAlloc();
            *v174 = 0;
            _os_log_impl(&dword_25E971000, v172, v173, "inferenceContext: ended", v174, 2u);
            MEMORY[0x25F8C51A0](v174, -1, -1);
          }

          result = sub_25E9D7850();
          v64 = 0x279A43000uLL;
          if (!result)
          {
            goto LABEL_182;
          }

          v175 = result;
          v176 = sub_25E9D7870();

          v177 = v369;
          v178 = swift_isUniquelyReferenced_nonNull_native();
          v392 = v177;
          sub_25E993FE0(58, v176, v7, v390, v178);
          v369 = v392;
        }
      }
    }

    v179 = [v40 hallucinationDetectionContext];
    if (v179 && (v180 = v179, v181 = [v179 *(v64 + 2352)], v180, v181))
    {

      v182 = sub_25E9D7F00();
      v183 = sub_25E9D8120();
      if (os_log_type_enabled(v182, v183))
      {
        v184 = swift_slowAlloc();
        *v184 = 0;
        _os_log_impl(&dword_25E971000, v182, v183, "hallucinationDetectionContext: startedOrChanged", v184, 2u);
        MEMORY[0x25F8C51A0](v184, -1, -1);
      }

      result = sub_25E9D7850();
      if (!result)
      {
        goto LABEL_174;
      }

      v185 = result;
      v186 = sub_25E9D7870();

      v187 = v376;
      v188 = swift_isUniquelyReferenced_nonNull_native();
      v392 = v187;
      sub_25E993FE0(59, v186, v7, v390, v188);
      v376 = v392;
      v64 = 0x279A43000;
    }

    else
    {
      v189 = [v40 hallucinationDetectionContext];
      if (v189)
      {
        v190 = v189;
        v191 = [v189 ended];

        if (v191)
        {

          v192 = sub_25E9D7F00();
          v193 = sub_25E9D8120();
          if (os_log_type_enabled(v192, v193))
          {
            v194 = swift_slowAlloc();
            *v194 = 0;
            _os_log_impl(&dword_25E971000, v192, v193, "hallucinationDetectionContext: ended", v194, 2u);
            MEMORY[0x25F8C51A0](v194, -1, -1);
          }

          result = sub_25E9D7850();
          v64 = 0x279A43000uLL;
          if (!result)
          {
            goto LABEL_183;
          }

          v195 = result;
          v196 = sub_25E9D7870();

          v197 = v368;
          v198 = swift_isUniquelyReferenced_nonNull_native();
          v392 = v197;
          sub_25E993FE0(60, v196, v7, v390, v198);
          v368 = v392;
        }
      }
    }

    v199 = [v40 RGGMSCallContext];
    if (v199 && (v200 = v199, v201 = [v199 *(v64 + 2352)], v200, v201))
    {
      v7 = v5;

      v202 = sub_25E9D7F00();
      v203 = sub_25E9D8120();
      if (os_log_type_enabled(v202, v203))
      {
        v204 = swift_slowAlloc();
        *v204 = 0;
        _os_log_impl(&dword_25E971000, v202, v203, "rggmsCallContext: startedOrChanged", v204, 2u);
        MEMORY[0x25F8C51A0](v204, -1, -1);
      }

      result = sub_25E9D7850();
      v205 = v390;
      if (!result)
      {
        goto LABEL_175;
      }

      v206 = result;
      v207 = sub_25E9D7870();

      v208 = v375;
      v209 = swift_isUniquelyReferenced_nonNull_native();
      v392 = v208;
      sub_25E993FE0(61, v207, v389, v205, v209);

      v375 = v392;
      v5 = v7;
    }

    else
    {
      v210 = [v40 RGGMSCallContext];
      if (v210 && (v211 = v210, v212 = [v210 ended], v211, v7 = v390, v212))
      {

        v213 = sub_25E9D7F00();
        v214 = sub_25E9D8120();
        if (os_log_type_enabled(v213, v214))
        {
          v215 = swift_slowAlloc();
          *v215 = 0;
          _os_log_impl(&dword_25E971000, v213, v214, "rggmsCallContext: ended", v215, 2u);
          MEMORY[0x25F8C51A0](v215, -1, -1);
        }

        result = sub_25E9D7850();
        if (!result)
        {
          goto LABEL_184;
        }

        v216 = result;
        v217 = sub_25E9D7870();

        v218 = v367;
        v219 = swift_isUniquelyReferenced_nonNull_native();
        v392 = v218;
        sub_25E993FE0(61, v217, v389, v7, v219);

        v367 = v392;
      }

      else
      {
      }
    }

LABEL_17:
    v23 = v386 + 1;
    if (v385 == v381)
    {
      goto LABEL_137;
    }
  }

  v67 = sub_25E9D7F00();
  v68 = sub_25E9D8120();
  v69 = os_log_type_enabled(v67, v68);
  v7 = v389;
  if (v69)
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_25E971000, v67, v68, "requestContext: startedOrChanged", v70, 2u);
    MEMORY[0x25F8C51A0](v70, -1, -1);
  }

  v71 = v388;
  result = sub_25E9D7850();
  if (result)
  {
    v73 = result;
    v74 = sub_25E9D7870();

    v75 = v380;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v392 = v75;
    sub_25E993FE0(49, v74, v7, v390, v76);
    v380 = v392;
    v9 = v382;
    goto LABEL_59;
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
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
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
  return result;
}

uint64_t sub_25E99E3C0(unint64_t a1)
{
  v3 = v1;
  result = sub_25E99B9B4();
  if (v2)
  {
    return result;
  }

  if (qword_27FD0D5A8 == -1)
  {
    goto LABEL_3;
  }

LABEL_163:
  swift_once();
LABEL_3:
  v6 = sub_25E9D7F10();
  __swift_project_value_buffer(v6, qword_27FD0DB30);
  v7 = sub_25E9D7F00();
  v8 = sub_25E9D8120();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25E971000, v7, v8, "Enter allRGMetrics", v9, 2u);
    MEMORY[0x25F8C51A0](v9, -1, -1);
  }

  v10 = sub_25E9D7F00();
  v11 = sub_25E9D8120();

  v12 = os_log_type_enabled(v10, v11);
  v274 = a1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&__dst = v14;
    *v13 = 136315138;
    *&v243 = v3[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v15 = sub_25E9D81B0();
    v17 = sub_25E9887EC(v15, v16, &__dst);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_25E971000, v10, v11, "Compute Metrics RGHandleStart: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x25F8C51A0](v14, -1, -1);
    MEMORY[0x25F8C51A0](v13, -1, -1);
  }

  v18 = sub_25E9D7F00();
  v19 = sub_25E9D8120();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&__dst = v21;
    *v20 = 136315138;
    *&v243 = v3[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v22 = sub_25E9D81B0();
    v24 = sub_25E9887EC(v22, v23, &__dst);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_25E971000, v18, v19, "Compute Metrics RGHandleEnd: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x25F8C51A0](v21, -1, -1);
    MEMORY[0x25F8C51A0](v20, -1, -1);
  }

  if (v3[3])
  {
    a1 = v3[3];
  }

  else
  {
    a1 = sub_25E97F328(MEMORY[0x277D84F90]);
  }

  v25 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a1 + 64);
  v29 = (v26 + 63) >> 6;

  v30 = 0;
  v174 = a1;
  v171 = v29;
  if (!v28)
  {
    do
    {
LABEL_15:
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_163;
      }

      if (v31 >= v29)
      {

        v149 = *v274;
      }

      v28 = *(v25 + 8 * v31);
      ++v30;
    }

    while (!v28);
    v30 = v31;
    v32 = v3[2];
    if (v32)
    {
      goto LABEL_21;
    }

LABEL_137:
    v150 = sub_25E9D7F00();
    v154 = sub_25E9D8120();
    if (os_log_type_enabled(v150, v154))
    {
      v155 = swift_slowAlloc();
      *v155 = 0;
      v156 = "rgType failed!";
      goto LABEL_141;
    }

    goto LABEL_160;
  }

  while (1)
  {
    v32 = v3[2];
    if (!v32)
    {
      goto LABEL_137;
    }

LABEL_21:
    v33 = v3[4];
    if (!v33)
    {
      break;
    }

    v34 = (v30 << 10) | (16 * __clz(__rbit64(v28)));
    v35 = (*(a1 + 48) + v34);
    v37 = *v35;
    v36 = v35[1];
    v38 = (*(a1 + 56) + v34);
    v39 = *v38;
    v173 = *(v38 + 1);
    v40 = *(v33 + 16);

    if (v40)
    {

      v41 = sub_25E978F5C(v37, v36);
      if (v42)
      {
        v43 = (*(v33 + 56) + 16 * v41);
        *&v172 = *v43;
        *(&v172 + 1) = *(v43 + 1);

        goto LABEL_27;
      }
    }

    v172 = 0x59uLL;
LABEL_27:
    v44 = v3[5];
    if (!v44)
    {

      v150 = sub_25E9D7F00();
      v151 = sub_25E9D8120();
      if (!os_log_type_enabled(v150, v151))
      {
        goto LABEL_160;
      }

      v152 = swift_slowAlloc();
      *v152 = 0;
      v153 = "rgOverrideStart failed!";
      goto LABEL_159;
    }

    v170 = v39;
    v45 = v3[6];
    if (!v45)
    {

      v150 = sub_25E9D7F00();
      v151 = sub_25E9D8120();
      if (!os_log_type_enabled(v150, v151))
      {
        goto LABEL_160;
      }

      v152 = swift_slowAlloc();
      *v152 = 0;
      v153 = "rgOverrideEnd failed!";
      goto LABEL_159;
    }

    v46 = *(v44 + 16);
    v47 = v3[6];

    if (!v46)
    {
      goto LABEL_34;
    }

    v48 = sub_25E978F5C(v37, v36);
    if ((v49 & 1) == 0)
    {

LABEL_34:
      v169 = 0x59uLL;
      if (!*(v45 + 16))
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v50 = (*(v44 + 56) + 16 * v48);
    *&v169 = *v50;
    *(&v169 + 1) = *(v50 + 1);

    if (!*(v45 + 16))
    {
      goto LABEL_37;
    }

LABEL_35:
    v51 = sub_25E978F5C(v37, v36);
    if (v52)
    {
      v53 = (*(v45 + 56) + 16 * v51);
      *&v168 = *v53;
      *(&v168 + 1) = *(v53 + 1);

      goto LABEL_38;
    }

LABEL_37:

    v168 = 0x59uLL;
LABEL_38:
    v54 = v3[7];
    if (!v54)
    {
      goto LABEL_133;
    }

    v55 = v3[8];
    if (!v55)
    {
LABEL_135:

      v150 = sub_25E9D7F00();
      v151 = sub_25E9D8120();
      if (!os_log_type_enabled(v150, v151))
      {
        goto LABEL_160;
      }

      v152 = swift_slowAlloc();
      *v152 = 0;
      v153 = "rgValidationEnd failed!";
      goto LABEL_159;
    }

    v56 = *(v54 + 16);
    v57 = v3[8];

    if (!v56)
    {
      goto LABEL_45;
    }

    v58 = sub_25E978F5C(v37, v36);
    if ((v59 & 1) == 0)
    {

LABEL_45:
      v167 = 0x59uLL;
      if (!*(v55 + 16))
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    v60 = (*(v54 + 56) + 16 * v58);
    *&v167 = *v60;
    *(&v167 + 1) = *(v60 + 1);

    if (!*(v55 + 16))
    {
      goto LABEL_48;
    }

LABEL_46:
    v61 = sub_25E978F5C(v37, v36);
    if (v62)
    {
      v63 = (*(v55 + 56) + 16 * v61);
      *&v166 = *v63;
      *(&v166 + 1) = *(v63 + 1);

      goto LABEL_49;
    }

LABEL_48:

    v166 = 0x59uLL;
LABEL_49:
    v64 = v3[9];
    if (!v64)
    {

      v150 = sub_25E9D7F00();
      v151 = sub_25E9D8120();
      if (!os_log_type_enabled(v150, v151))
      {
        goto LABEL_160;
      }

      v152 = swift_slowAlloc();
      *v152 = 0;
      v153 = "rgCatalogStart failed!";
      goto LABEL_159;
    }

    v65 = v3[10];
    if (!v65)
    {

      v150 = sub_25E9D7F00();
      v151 = sub_25E9D8120();
      if (!os_log_type_enabled(v150, v151))
      {
        goto LABEL_160;
      }

      v152 = swift_slowAlloc();
      *v152 = 0;
      v153 = "rgCatalogEnd failed!";
      goto LABEL_159;
    }

    v66 = *(v64 + 16);
    v67 = v3[10];

    if (!v66)
    {
      goto LABEL_56;
    }

    v68 = sub_25E978F5C(v37, v36);
    if ((v69 & 1) == 0)
    {

LABEL_56:
      v165 = 0x59uLL;
      if (!*(v65 + 16))
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }

    v70 = (*(v64 + 56) + 16 * v68);
    *&v165 = *v70;
    *(&v165 + 1) = *(v70 + 1);

    if (!*(v65 + 16))
    {
      goto LABEL_59;
    }

LABEL_57:
    v71 = sub_25E978F5C(v37, v36);
    if (v72)
    {
      v73 = (*(v65 + 56) + 16 * v71);
      *&v164 = *v73;
      *(&v164 + 1) = *(v73 + 1);

      goto LABEL_60;
    }

LABEL_59:

    v164 = 0x59uLL;
LABEL_60:
    v74 = v3[11];
    if (!v74)
    {

      v150 = sub_25E9D7F00();
      v151 = sub_25E9D8120();
      if (!os_log_type_enabled(v150, v151))
      {
        goto LABEL_160;
      }

      v152 = swift_slowAlloc();
      *v152 = 0;
      v153 = "rgInferenceStart failed!";
      goto LABEL_159;
    }

    v75 = v3[12];
    if (!v75)
    {

      v150 = sub_25E9D7F00();
      v151 = sub_25E9D8120();
      if (!os_log_type_enabled(v150, v151))
      {
        goto LABEL_160;
      }

      v152 = swift_slowAlloc();
      *v152 = 0;
      v153 = "rgInferenceEnd failed!";
      goto LABEL_159;
    }

    v76 = *(v74 + 16);
    v77 = v3[12];

    if (!v76)
    {
      goto LABEL_67;
    }

    v78 = sub_25E978F5C(v37, v36);
    if ((v79 & 1) == 0)
    {

LABEL_67:
      v163 = 0x59uLL;
      if (!*(v75 + 16))
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    v80 = (*(v74 + 56) + 16 * v78);
    *&v163 = *v80;
    *(&v163 + 1) = *(v80 + 1);

    if (!*(v75 + 16))
    {
      goto LABEL_70;
    }

LABEL_68:
    v81 = sub_25E978F5C(v37, v36);
    if (v82)
    {
      v83 = (*(v75 + 56) + 16 * v81);
      *&v162 = *v83;
      *(&v162 + 1) = *(v83 + 1);

      goto LABEL_71;
    }

LABEL_70:

    v162 = 0x59uLL;
LABEL_71:
    v84 = v3[13];
    if (!v84)
    {

      v150 = sub_25E9D7F00();
      v151 = sub_25E9D8120();
      if (!os_log_type_enabled(v150, v151))
      {
        goto LABEL_160;
      }

      v152 = swift_slowAlloc();
      *v152 = 0;
      v153 = "rgHallucinationStart failed!";
      goto LABEL_159;
    }

    v85 = v3[14];
    if (!v85)
    {

      v150 = sub_25E9D7F00();
      v151 = sub_25E9D8120();
      if (!os_log_type_enabled(v150, v151))
      {
        goto LABEL_160;
      }

      v152 = swift_slowAlloc();
      *v152 = 0;
      v153 = "rgHallucinationEnd failed!";
      goto LABEL_159;
    }

    v86 = *(v84 + 16);
    v87 = v3[14];

    if (!v86)
    {
      goto LABEL_78;
    }

    v88 = sub_25E978F5C(v37, v36);
    if ((v89 & 1) == 0)
    {

LABEL_78:
      v161 = 0x59uLL;
      if (!*(v85 + 16))
      {
        goto LABEL_81;
      }

      goto LABEL_79;
    }

    v90 = (*(v84 + 56) + 16 * v88);
    *&v161 = *v90;
    *(&v161 + 1) = *(v90 + 1);

    if (!*(v85 + 16))
    {
      goto LABEL_81;
    }

LABEL_79:
    v91 = sub_25E978F5C(v37, v36);
    if (v92)
    {
      v93 = (*(v85 + 56) + 16 * v91);
      *&v160 = *v93;
      *(&v160 + 1) = *(v93 + 1);

      goto LABEL_82;
    }

LABEL_81:

    v160 = 0x59uLL;
LABEL_82:
    v94 = v3[15];
    if (!v94)
    {
LABEL_133:

      v150 = sub_25E9D7F00();
      v151 = sub_25E9D8120();
      if (!os_log_type_enabled(v150, v151))
      {
        goto LABEL_160;
      }

      v152 = swift_slowAlloc();
      *v152 = 0;
      v153 = "rgValidationStart failed!";
LABEL_159:
      _os_log_impl(&dword_25E971000, v150, v151, v153, v152, 2u);
      MEMORY[0x25F8C51A0](v152, -1, -1);
      goto LABEL_160;
    }

    v95 = v3[16];
    if (!v95)
    {
      goto LABEL_135;
    }

    v96 = *(v94 + 16);
    v97 = v3[16];

    if (!v96)
    {
      goto LABEL_89;
    }

    v98 = sub_25E978F5C(v37, v36);
    if ((v99 & 1) == 0)
    {

LABEL_89:
      v159 = 0x59uLL;
      if (!*(v95 + 16))
      {
        goto LABEL_92;
      }

      goto LABEL_90;
    }

    v100 = (*(v94 + 56) + 16 * v98);
    *&v159 = *v100;
    *(&v159 + 1) = *(v100 + 1);

    if (!*(v95 + 16))
    {
      goto LABEL_92;
    }

LABEL_90:
    v101 = sub_25E978F5C(v37, v36);
    if (v102)
    {
      v103 = (*(v95 + 56) + 16 * v101);
      *&v158 = *v103;
      *(&v158 + 1) = *(v103 + 1);

      goto LABEL_93;
    }

LABEL_92:

    v158 = 0x59uLL;
LABEL_93:
    v104 = v274;
    v105 = *v274;
    if (*(*v274 + 16))
    {
      v157 = v32;
      v106 = v25;
      v107 = v274;
      v108 = sub_25E978F5C(v37, v36);
      if (v109)
      {
        v110 = (*(v105 + 56) + 240 * v108);
        v112 = v110[1];
        v111 = v110[2];
        v243 = *v110;
        v244 = v112;
        v245 = v111;
        v113 = v110[3];
        v114 = v110[4];
        v115 = v110[5];
        v249 = v110[6];
        v248 = v115;
        v247 = v114;
        v246 = v113;
        v116 = v110[7];
        v117 = v110[8];
        v118 = v110[9];
        v253 = v110[10];
        v252 = v118;
        v251 = v117;
        v250 = v116;
        v119 = v110[11];
        v120 = v110[12];
        v121 = v110[13];
        v257 = v110[14];
        v256 = v121;
        v255 = v120;
        v254 = v119;
        memmove(&__dst, v110, 0xF0uLL);
        nullsub_1(&__dst);
        sub_25E980FDC(&v243, &v228);
      }

      else
      {
        sub_25E99FE1C(&v243);
        v270 = v255;
        v271 = v256;
        v272 = v257;
        v266 = v251;
        v267 = v252;
        v269 = v254;
        v268 = v253;
        v262 = v247;
        v263 = v248;
        v265 = v250;
        v264 = v249;
        __dst = v243;
        v259 = v244;
        v261 = v246;
        v260 = v245;
      }

      v104 = v107;
      v25 = v106;
      v32 = v157;
    }

    else
    {
      sub_25E99FE1C(&v243);
      v270 = v255;
      v271 = v256;
      v272 = v257;
      v266 = v251;
      v267 = v252;
      v269 = v254;
      v268 = v253;
      v262 = v247;
      v263 = v248;
      v265 = v250;
      v264 = v249;
      __dst = v243;
      v259 = v244;
      v261 = v246;
      v260 = v245;
    }

    v255 = v270;
    v256 = v271;
    v257 = v272;
    v251 = v266;
    v252 = v267;
    v254 = v269;
    v253 = v268;
    v247 = v262;
    v248 = v263;
    v250 = v265;
    v249 = v264;
    v243 = __dst;
    v244 = v259;
    v246 = v261;
    v245 = v260;
    if (sub_25E97F474(&v243) == 1)
    {
      v213 = xmmword_25E9D90A0;
      v215 = 0uLL;
      v214 = 0x5AuLL;
      v216 = 0x5AuLL;
      v217 = 0uLL;
      v219 = 0uLL;
      v218 = 0x5AuLL;
      v220 = 0x5AuLL;
      v221 = 0uLL;
      v223 = 0uLL;
      v222 = 0x5AuLL;
      v224 = 0x5AuLL;
      v225 = 0uLL;
      v226 = 0x5AuLL;
      v227 = 0uLL;
      nullsub_1(&v213);
      v240 = v270;
      v241 = v271;
      v242 = v272;
      v236 = v266;
      v237 = v267;
      v239 = v269;
      v238 = v268;
      v232 = v262;
      v233 = v263;
      v235 = v265;
      v234 = v264;
      v228 = __dst;
      v229 = v259;
      v231 = v261;
      v230 = v260;
      sub_25E981210(&v228, &qword_27FD0DA60, &qword_25E9DA3E8);
      v270 = v225;
      v271 = v226;
      v272 = v227;
      v266 = v221;
      v267 = v222;
      v269 = v224;
      v268 = v223;
      v262 = v217;
      v263 = v218;
      v265 = v220;
      v264 = v219;
      __dst = v213;
      v259 = v214;
      v261 = v216;
      v260 = v215;
    }

    v240 = v270;
    v241 = v271;
    v242 = v272;
    v236 = v266;
    v237 = v267;
    v239 = v269;
    v238 = v268;
    v232 = v262;
    v233 = v263;
    v235 = v265;
    v234 = v264;
    v228 = __dst;
    v229 = v259;
    v231 = v261;
    v230 = v260;
    if (sub_25E97F474(&v228) == 1)
    {
    }

    else
    {
      if (*(v32 + 16) && (v122 = sub_25E978F5C(v37, v36), (v123 & 1) != 0))
      {
        v124 = (*(v32 + 56) + 16 * v122);
        v126 = *v124;
        v125 = v124[1];
      }

      else
      {

        v126 = 0;
        v125 = 0;
      }

      *&__dst = v126;
      *(&__dst + 1) = v125;
      v104 = v274;
    }

    v225 = v270;
    v226 = v271;
    v227 = v272;
    v221 = v266;
    v222 = v267;
    v224 = v269;
    v223 = v268;
    v217 = v262;
    v218 = v263;
    v220 = v265;
    v219 = v264;
    v213 = __dst;
    v214 = v259;
    v216 = v261;
    v215 = v260;
    if (sub_25E97F474(&v213) != 1)
    {
      *&v259 = v170;
      *(&v259 + 1) = v173;
      v260 = v172;
    }

    v212[12] = v270;
    v212[13] = v271;
    v212[14] = v272;
    v212[8] = v266;
    v212[9] = v267;
    v212[11] = v269;
    v212[10] = v268;
    v212[4] = v262;
    v212[5] = v263;
    v212[7] = v265;
    v212[6] = v264;
    v212[0] = __dst;
    v212[1] = v259;
    v212[3] = v261;
    v212[2] = v260;
    if (sub_25E97F474(v212) != 1)
    {
      v261 = v169;
      v262 = v168;
    }

    v211[12] = v270;
    v211[13] = v271;
    v211[14] = v272;
    v211[8] = v266;
    v211[9] = v267;
    v211[11] = v269;
    v211[10] = v268;
    v211[4] = v262;
    v211[5] = v263;
    v211[7] = v265;
    v211[6] = v264;
    v211[0] = __dst;
    v211[1] = v259;
    v211[3] = v261;
    v211[2] = v260;
    if (sub_25E97F474(v211) != 1)
    {
      v263 = v167;
      v264 = v166;
    }

    v210[12] = v270;
    v210[13] = v271;
    v210[14] = v272;
    v210[8] = v266;
    v210[9] = v267;
    v210[11] = v269;
    v210[10] = v268;
    v210[4] = v262;
    v210[5] = v263;
    v210[7] = v265;
    v210[6] = v264;
    v210[0] = __dst;
    v210[1] = v259;
    v210[3] = v261;
    v210[2] = v260;
    if (sub_25E97F474(v210) != 1)
    {
      v265 = v165;
      v266 = v164;
    }

    v209[12] = v270;
    v209[13] = v271;
    v209[14] = v272;
    v209[8] = v266;
    v209[9] = v267;
    v209[11] = v269;
    v209[10] = v268;
    v209[4] = v262;
    v209[5] = v263;
    v209[7] = v265;
    v209[6] = v264;
    v209[0] = __dst;
    v209[1] = v259;
    v209[3] = v261;
    v209[2] = v260;
    if (sub_25E97F474(v209) != 1)
    {
      v267 = v163;
      v268 = v162;
    }

    v208[12] = v270;
    v208[13] = v271;
    v208[14] = v272;
    v208[8] = v266;
    v208[9] = v267;
    v208[11] = v269;
    v208[10] = v268;
    v208[4] = v262;
    v208[5] = v263;
    v208[7] = v265;
    v208[6] = v264;
    v208[0] = __dst;
    v208[1] = v259;
    v208[3] = v261;
    v208[2] = v260;
    if (sub_25E97F474(v208) != 1)
    {
      v269 = v161;
      v270 = v160;
    }

    v207[12] = v270;
    v207[13] = v271;
    v207[14] = v272;
    v207[8] = v266;
    v207[9] = v267;
    v207[11] = v269;
    v207[10] = v268;
    v207[4] = v262;
    v207[5] = v263;
    v207[7] = v265;
    v207[6] = v264;
    v207[0] = __dst;
    v207[1] = v259;
    v207[3] = v261;
    v207[2] = v260;
    if (sub_25E97F474(v207) != 1)
    {
      v271 = v159;
      v272 = v158;
    }

    v203 = v270;
    v204 = v271;
    v205 = v272;
    v199 = v266;
    v200 = v267;
    v201 = v268;
    v202 = v269;
    v195 = v262;
    v196 = v263;
    v197 = v264;
    v198 = v265;
    v191 = __dst;
    v192 = v259;
    v193 = v260;
    v194 = v261;
    v206[12] = v270;
    v206[13] = v271;
    v206[14] = v272;
    v206[8] = v266;
    v206[9] = v267;
    v206[11] = v269;
    v206[10] = v268;
    v206[4] = v262;
    v206[5] = v263;
    v206[7] = v265;
    v206[6] = v264;
    v206[0] = __dst;
    v206[1] = v259;
    v206[3] = v261;
    v206[2] = v260;
    if (sub_25E97F474(v206) == 1)
    {
      v127 = sub_25E978F5C(v37, v36);
      if (v128)
      {
        v129 = v127;
        v130 = *v104;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v132 = *v104;
        v175[0] = *v104;
        v133 = v104;
        a1 = v174;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25E97E99C();
          v132 = v175[0];
        }

        v134 = *(*(v132 + 48) + 16 * v129 + 8);

        v135 = (*(v132 + 56) + 240 * v129);
        v137 = v135[1];
        v136 = v135[2];
        v176 = *v135;
        v177 = v137;
        v178 = v136;
        v138 = v135[3];
        v139 = v135[4];
        v140 = v135[6];
        v181 = v135[5];
        v182 = v140;
        v179 = v138;
        v180 = v139;
        v141 = v135[7];
        v142 = v135[8];
        v143 = v135[10];
        v185 = v135[9];
        v186 = v143;
        v183 = v141;
        v184 = v142;
        v144 = v135[11];
        v145 = v135[12];
        v146 = v135[14];
        v189 = v135[13];
        v190 = v146;
        v187 = v144;
        v188 = v145;
        sub_25E97CF2C(v129, v132);

        sub_25E99FE4C(&v176);
        *v133 = v132;
        goto LABEL_130;
      }
    }

    else
    {
      v273[12] = v203;
      v273[13] = v204;
      v273[14] = v205;
      v273[8] = v199;
      v273[9] = v200;
      v273[11] = v202;
      v273[10] = v201;
      v273[4] = v195;
      v273[5] = v196;
      v273[7] = v198;
      v273[6] = v197;
      v273[0] = v191;
      v273[1] = v192;
      v273[3] = v194;
      v273[2] = v193;
      v188 = v203;
      v189 = v204;
      v190 = v205;
      v184 = v199;
      v185 = v200;
      v186 = v201;
      v187 = v202;
      v180 = v195;
      v181 = v196;
      v182 = v197;
      v183 = v198;
      v176 = v191;
      v177 = v192;
      v178 = v193;
      v179 = v194;
      sub_25E980FDC(&v176, v175);
      v147 = *v104;
      v148 = swift_isUniquelyReferenced_nonNull_native();
      v175[0] = *v104;
      sub_25E9947C0(v273, v37, v36, v148);

      *v104 = v175[0];
    }

    a1 = v174;
LABEL_130:
    v28 &= v28 - 1;
    v188 = v270;
    v189 = v271;
    v190 = v272;
    v184 = v266;
    v185 = v267;
    v186 = v268;
    v187 = v269;
    v180 = v262;
    v181 = v263;
    v182 = v264;
    v183 = v265;
    v176 = __dst;
    v177 = v259;
    v178 = v260;
    v179 = v261;
    sub_25E981210(&v176, &qword_27FD0DA60, &qword_25E9DA3E8);
    v29 = v171;
    if (!v28)
    {
      goto LABEL_15;
    }
  }

  v150 = sub_25E9D7F00();
  v154 = sub_25E9D8120();
  if (!os_log_type_enabled(v150, v154))
  {
    goto LABEL_160;
  }

  v155 = swift_slowAlloc();
  *v155 = 0;
  v156 = "rgContextEnd failed!";
LABEL_141:
  _os_log_impl(&dword_25E971000, v150, v154, v156, v155, 2u);
  MEMORY[0x25F8C51A0](v155, -1, -1);
LABEL_160:

  return 0;
}

void *SELFComponent.RG.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[16];

  return v0;
}

uint64_t SELFComponent.RG.__deallocating_deinit()
{
  SELFComponent.RG.deinit();

  return swift_deallocClassInstance();
}

double sub_25E99FE1C(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_25E9D90B0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  return result;
}

id toSISSchemaUUID(convertId:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_25E9D77F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v9)
  {
    return 0;
  }

  sub_25E9D77B0();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_25E9961C4(v3);
    return 0;
  }

  (*(v5 + 32))(v8, v3, v4);
  v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v12 = sub_25E9D77D0();
  v13 = [v11 initWithNSUUID_];

  (*(v5 + 8))(v8, v4);
  return v13;
}

unint64_t IEExecutionGrainMetricsRecord.description.getter()
{
  v0 = IEExecutionGrainMetricsRecord.dictionary.getter();
  v1 = sub_25E9A9B34(v0, 1);
  v3 = v2;

  if (v3)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002CLL;
  }
}

unint64_t IEExecutionGrainMetricsRecord.dictionary.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[7];
  v38 = v0[6];
  v39 = v0[16];
  v43 = v0[17];
  v44 = v0[19];
  v42 = v0[20];
  v40 = v0[18];
  v41 = v0[21];
  v8 = v0[22];
  v9 = v0[24];
  v45 = *(v0 + 184);
  v46 = *(v0 + 200);
  v47 = v0[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA70, &unk_25E9DA5A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25E9DA580;
  *(v10 + 32) = 0x496E6F6973736573;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 40) = 0xE900000000000064;
  *(v10 + 48) = v1;
  *(v10 + 56) = v2;
  *(v10 + 72) = v11;
  strcpy((v10 + 80), "rawSessionId");
  *(v10 + 93) = 0;
  *(v10 + 94) = -5120;
  *(v10 + 96) = v3;
  v12 = v11;
  *(v10 + 104) = v4;
  *(v10 + 120) = v11;
  *(v10 + 128) = 0x6552746E65696C63;
  *(v10 + 136) = 0xEF64497473657571;
  *(v10 + 144) = v5;
  *(v10 + 152) = v6;
  *(v10 + 168) = v11;
  *(v10 + 176) = 0x6D45646C756F6873;
  *(v10 + 184) = 0xEA00000000007469;
  v13 = MEMORY[0x277D839B0];
  *(v10 + 192) = 1;
  v14 = MEMORY[0x277D83B88];
  *(v10 + 216) = v13;
  *(v10 + 224) = 0xD000000000000011;
  *(v10 + 232) = 0x800000025E9DD550;
  *(v10 + 240) = v41;
  *(v10 + 264) = v14;
  *(v10 + 272) = 0xD000000000000011;
  *(v10 + 312) = v14;
  *(v10 + 280) = 0x800000025E9DDCE0;
  *(v10 + 288) = v42;

  v15 = sub_25E980C94(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D720, &qword_25E9DAC00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v52 = v15;
  if (v7)
  {
    *(&v49 + 1) = v12;
    *&v48 = v38;
    *(&v48 + 1) = v7;
    sub_25E980EA8(&v48, &v50);
    v16 = v51;
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v16 = sub_25E9A1988();
    v51 = v16;
    *&v50 = v17;
  }

  if (v16)
  {
    sub_25E980EA8(&v50, &v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v48, 0xD000000000000013, 0x800000025E9DD4F0, isUniquelyReferenced_nonNull_native);
    v52 = v15;
    v19 = v44;
    if (v43)
    {
LABEL_6:
      *(&v49 + 1) = v12;
      *&v48 = v39;
      *(&v48 + 1) = v43;
      sub_25E980EA8(&v48, &v50);
      goto LABEL_10;
    }
  }

  else
  {
    sub_25E981210(&v50, &qword_27FD0D908, &unk_25E9D9910);
    sub_25E9891E0(0xD000000000000013, 0x800000025E9DD4F0, &v48);
    sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
    v19 = v44;
    if (v43)
    {
      goto LABEL_6;
    }
  }

  v48 = 0u;
  v49 = 0u;
  v20 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v51 = sub_25E9A1988();
  *&v50 = v20;
  if (*(&v49 + 1))
  {
    sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_10:
  if (v51)
  {
    sub_25E980EA8(&v50, &v48);

    v21 = v52;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v48, 0x64496C6F6F74, 0xE600000000000000, v22);
    v52 = v21;
    if (v19)
    {
LABEL_12:
      *(&v49 + 1) = v12;
      *&v48 = v40;
      *(&v48 + 1) = v19;
      sub_25E980EA8(&v48, &v50);
      goto LABEL_16;
    }
  }

  else
  {

    sub_25E981210(&v50, &qword_27FD0D908, &unk_25E9D9910);
    sub_25E9891E0(0x64496C6F6F74, 0xE600000000000000, &v48);
    sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
    if (v19)
    {
      goto LABEL_12;
    }
  }

  v48 = 0u;
  v49 = 0u;
  v23 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v51 = sub_25E9A1988();
  *&v50 = v23;
  if (*(&v49 + 1))
  {
    sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_16:
  if (v51)
  {
    sub_25E980EA8(&v50, &v48);

    v24 = v52;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v48, 0x646E75426C6F6F74, 0xEC0000006449656CLL, v25);
    v52 = v24;
  }

  else
  {

    sub_25E981210(&v50, &qword_27FD0D908, &unk_25E9D9910);
    sub_25E9891E0(0x646E75426C6F6F74, 0xEC0000006449656CLL, &v48);
    sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
  }

  v26 = MEMORY[0x277D839F8];
  if (v45)
  {
    v48 = 0u;
    v49 = 0u;
    v27 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v51 = sub_25E9A1988();
    *&v50 = v27;
    if (*(&v49 + 1))
    {
      sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
    }
  }

  else
  {
    *(&v49 + 1) = MEMORY[0x277D839F8];
    *&v48 = v8;
    sub_25E980EA8(&v48, &v50);
  }

  if (v51)
  {
    sub_25E980EA8(&v50, &v48);
    v28 = v52;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v48, 0xD000000000000012, 0x800000025E9DD430, v29);
    v52 = v28;
    if (v46)
    {
      goto LABEL_25;
    }

LABEL_28:
    *(&v49 + 1) = v26;
    *&v48 = v9;
    sub_25E980EA8(&v48, &v50);
    goto LABEL_29;
  }

  sub_25E981210(&v50, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000012, 0x800000025E9DD430, &v48);
  sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
  if ((v46 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  v48 = 0u;
  v49 = 0u;
  v30 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v51 = sub_25E9A1988();
  *&v50 = v30;
  if (*(&v49 + 1))
  {
    sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_29:
  if (!v51)
  {
    sub_25E981210(&v50, &qword_27FD0D908, &unk_25E9D9910);
    sub_25E9891E0(0xD00000000000001ALL, 0x800000025E9DA590, &v48);
    sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
    if (v47)
    {
      goto LABEL_31;
    }

LABEL_33:
    v33 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v34 = sub_25E9A1988();
    goto LABEL_34;
  }

  sub_25E980EA8(&v50, &v48);
  v31 = v52;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_25E994BD0(&v48, 0xD00000000000001ALL, 0x800000025E9DA590, v32);
  v52 = v31;
  if (!v47)
  {
    goto LABEL_33;
  }

LABEL_31:
  v33 = sub_25E9A89B8();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA80, &unk_25E9DA5D0);
LABEL_34:
  v51 = v34;
  *&v50 = v33;
  sub_25E980EA8(&v50, &v48);
  v35 = v52;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  sub_25E994BD0(&v48, 0x496572756C696166, 0xEB000000006F666ELL, v36);
  return v35;
}

unint64_t sub_25E9A0AE8()
{
  v0 = IEExecutionGrainMetricsRecord.dictionary.getter();
  v1 = sub_25E9A9B34(v0, 1);
  v3 = v2;

  if (v3)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002CLL;
  }
}

unint64_t sub_25E9A0B54()
{
  v0 = IEExecutionGrainMetricsRecord.dictionary.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA88, qword_25E9DA6D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E9D9690;
  *(inited + 32) = swift_getKeyPath();
  if (*(v0 + 16) && (v2 = sub_25E978F5C(0xD000000000000012, 0x800000025E9DD430), (v3 & 1) != 0) && (sub_25E980E4C(*(v0 + 56) + 32 * v2, v12), swift_dynamicCast()))
  {
    v4 = v11;
  }

  else
  {
    v4 = 0;
  }

  *(inited + 40) = v4;
  *(inited + 48) = swift_getKeyPath();
  if (!*(v0 + 16) || (v5 = sub_25E978F5C(0xD00000000000001ALL, 0x800000025E9DA590), (v6 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_25E980E4C(*(v0 + 56) + 32 * v5, v12);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v7 = v11;
LABEL_12:
  *(inited + 56) = v7;
  v8 = sub_25E980EB8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA90, &qword_25E9DA738);
  swift_arrayDestroy();
  v9 = sub_25E9B939C(v8);

  return v9;
}

uint64_t IEExecutionGrainMetricsRecord.SELFShouldEmit.getter()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return 0;
  }

  if (*(v0 + 48) == 0xD00000000000001ELL && v1 == 0x800000025E9DDD00)
  {
    return 1;
  }

  else
  {
    return sub_25E9D8300();
  }
}

char *IEExecutionGrainMetricsRecord.getSELFEvent()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v99 - v3;
  v5 = sub_25E9D77F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v99 - v11;
  v13 = *(v0 + 40);
  v109 = *(v0 + 32);
  v108 = v13;
  v14 = *(v0 + 88);
  v111 = *(v0 + 80);
  v110 = v14;
  v15 = *(v0 + 104);
  v113 = *(v0 + 96);
  v112 = v15;
  v16 = *(v0 + 136);
  v106 = *(v0 + 128);
  v114 = v16;
  v17 = *(v0 + 144);
  v115 = *(v0 + 152);
  v18 = *(v0 + 168);
  v116 = *(v0 + 160);
  v107 = *(v0 + 208);
  v19 = [objc_allocWithZone(MEMORY[0x277D59E38]) init];
  if (!v19)
  {
    goto LABEL_15;
  }

  v20 = v19;
  v105 = v17;
  v21 = [objc_allocWithZone(MEMORY[0x277D59E58]) init];
  if (!v21)
  {

LABEL_15:
    if (qword_27FD0D598 != -1)
    {
LABEL_54:
      swift_once();
    }

    v43 = sub_25E9D7F10();
    __swift_project_value_buffer(v43, qword_27FD0DB00);
    v44 = sub_25E9D7F00();
    v45 = sub_25E9D8120();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_25E971000, v44, v45, "PNRODSchemaPNRODIntelligenceFlowActionGrainSummary init failed!", v46, 2u);
      MEMORY[0x25F8C51A0](v46, -1, -1);
    }

    return 0;
  }

  v22 = v21;
  v136 = v21;
  v23 = [objc_allocWithZone(MEMORY[0x277D59E40]) init];
  if (!v23)
  {
    if (qword_27FD0D598 != -1)
    {
      swift_once();
    }

    v55 = sub_25E9D7F10();
    __swift_project_value_buffer(v55, qword_27FD0DB00);
    v56 = sub_25E9D7F00();
    v57 = sub_25E9D8120();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_25E971000, v56, v57, "PNRODSchemaPNRODClientEventMetadata init failed!", v58, 2u);
      MEMORY[0x25F8C51A0](v58, -1, -1);
    }

    return 0;
  }

  v99 = v10;
  v101 = v6;
  v102 = v5;
  v103 = v23;
  v104 = v20;
  v24 = *(v0 + 16);
  v117[0] = *v0;
  v117[1] = v24;
  v118 = v109;
  v119 = v108;
  v25 = *(v0 + 64);
  v120 = *(v0 + 48);
  v121 = v25;
  v122 = v111;
  v123 = v110;
  v124 = v113;
  v125 = v112;
  v126 = *(v0 + 112);
  v127 = v106;
  v128 = v114;
  v129 = v105;
  v130 = v115;
  v131 = v116;
  v132 = v18;
  v100 = v18;
  v26 = *(v0 + 192);
  v133 = *(v0 + 176);
  v134 = v26;
  v135 = v107;
  v27 = sub_25E9A0B54();
  v28 = v27;
  v29 = 0;
  v30 = v27 + 64;
  v31 = 1 << *(v27 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v27 + 64);
  v34 = (v31 + 63) >> 6;
  if (v33)
  {
    while (1)
    {
      v35 = v29;
LABEL_11:
      v36 = (v35 << 9) | (8 * __clz(__rbit64(v33)));
      v37 = *(*(v28 + 48) + v36);
      v38 = *(*(v28 + 56) + v36);
      v39 = objc_allocWithZone(MEMORY[0x277D59E90]);

      v40 = [v39 init];
      if (!v40)
      {
        break;
      }

      v41 = v40;
      v33 &= v33 - 1;
      [v40 setMetricValue_];
      *&v117[0] = v41;
      v42 = v41;
      swift_setAtWritableKeyPath();

      v29 = v35;
      if (!v33)
      {
        goto LABEL_8;
      }
    }

    v92 = v103;
    if (qword_27FD0D598 != -1)
    {
      swift_once();
    }

    v93 = sub_25E9D7F10();
    __swift_project_value_buffer(v93, qword_27FD0DB00);
    v94 = sub_25E9D7F00();
    v95 = sub_25E9D8120();
    v96 = os_log_type_enabled(v94, v95);
    v97 = v104;
    if (v96)
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_25E971000, v94, v95, "PNRODSchemaPNRODMetricDurationMetric init failed!", v98, 2u);
      MEMORY[0x25F8C51A0](v98, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  while (1)
  {
LABEL_8:
    v35 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v35 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v35);
    ++v29;
    if (v33)
    {
      goto LABEL_11;
    }
  }

  v48 = v136;
  v49 = v107;
  if (v107)
  {
    sub_25E9A8130();
    v49 = v50;
  }

  v51 = v102;
  v52 = v101;
  v53 = v100;
  [v48 setFailureInfo_];

  sub_25E9D77B0();
  if ((*(v52 + 48))(v4, 1, v51) == 1)
  {
    sub_25E981210(v4, &qword_27FD0D7D8, &qword_25E9D9BC0);
    v54 = 0;
  }

  else
  {
    (*(v52 + 32))(v12, v4, v51);
    v59 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v60 = sub_25E9D77D0();
    v54 = [v59 initWithNSUUID_];

    (*(v52 + 8))(v12, v51);
  }

  [v48 setClientRequestId_];

  v61 = toSISSchemaUUID(convertId:)();
  [v48 setPlanId_];

  v62 = toSISSchemaUUID(convertId:)();
  [v48 setActionId_];

  if (v114)
  {
    v63 = sub_25E9D7FA0();
  }

  else
  {
    v63 = 0;
  }

  [v48 setToolId_];

  if (v115)
  {
    v64 = sub_25E9D7FA0();
  }

  else
  {
    v64 = 0;
  }

  [v48 setBundleId_];

  if ((v116 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (HIDWORD(v116))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  [v48 setNumActionsCreated_];
  if ((v53 & 0x8000000000000000) != 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!HIDWORD(v53))
  {
    [v48 setNumQueriesCreated_];
    v65 = v99;
    sub_25E9D77E0();
    v66 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v67 = sub_25E9D77D0();
    v68 = [v66 initWithNSUUID_];

    (*(v52 + 8))(v65, v51);
    v51 = v103;
    [v103 setPnrodId_];

    v69 = v104;
    [v104 setEventMetadata_];
    v12 = v69;
    [v69 setPnrodIntelligenceFlowActionGrainSummary_];
    if (qword_27FD0D598 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_59;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  swift_once();
LABEL_41:
  v70 = sub_25E9D7F10();
  __swift_project_value_buffer(v70, qword_27FD0DB00);
  v71 = v12;
  v72 = sub_25E9D7F00();
  v73 = sub_25E9D8120();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v117[0] = v75;
    *v74 = 136315650;
    v76 = [v71 qualifiedMessageName];
    v77 = sub_25E9D7FB0();
    v79 = v78;

    v80 = sub_25E9887EC(v77, v79, v117);

    *(v74 + 4) = v80;
    *(v74 + 12) = 2080;
    v81 = [v71 formattedJsonBody];
    if (v81)
    {
      v82 = v81;
      v83 = sub_25E9D7FB0();
      v85 = v84;
    }

    else
    {
      v85 = 0xE500000000000000;
      v83 = 0x3E4C494E3CLL;
    }

    v86 = sub_25E9887EC(v83, v85, v117);

    *(v74 + 14) = v86;
    *(v74 + 22) = 2080;
    v87 = [v71 description];
    v88 = sub_25E9D7FB0();
    v90 = v89;

    v91 = sub_25E9887EC(v88, v90, v117);

    *(v74 + 24) = v91;
    _os_log_impl(&dword_25E971000, v72, v73, "Creating %s\n%s\n%s", v74, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v75, -1, -1);
    MEMORY[0x25F8C51A0](v74, -1, -1);

    return v104;
  }

  else
  {

    return v12;
  }
}

uint64_t sub_25E9A1934()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return 0;
  }

  if (*(v0 + 48) == 0xD00000000000001ELL && v1 == 0x800000025E9DDD00)
  {
    return 1;
  }

  else
  {
    return sub_25E9D8300();
  }
}

unint64_t sub_25E9A1988()
{
  result = qword_27FD0DA78;
  if (!qword_27FD0DA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0DA78);
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_25E9A1A18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25E9A1A60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void (*sub_25E9A1B30(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7))(uint64_t, uint64_t, uint64_t)
{
  v217 = a2;
  v218 = a6;
  v206 = a5;
  v185 = a4;
  v228 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v182 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v202 = &v179 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v180 = &v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v210 = &v179 - v19;
  MEMORY[0x28223BE20](v18);
  v211 = &v179 - v20;
  v220 = sub_25E9D7A10();
  v225 = *(v220 - 8);
  v21 = *(v225 + 64);
  v22 = MEMORY[0x28223BE20](v220);
  v205 = &v179 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v223 = &v179 - v24;
  v222 = sub_25E9D7940();
  v25 = *(v222 - 1);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v222);
  v28 = &v179 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD0D598 != -1)
  {
    swift_once();
  }

  v29 = sub_25E9D7F10();
  v30 = __swift_project_value_buffer(v29, qword_27FD0DB00);

  v224 = v30;
  v31 = sub_25E9D7F00();
  v32 = sub_25E9D8140();

  v33 = os_log_type_enabled(v31, v32);
  v226 = a3;
  v227 = a7;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v232 = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_25E9887EC(v217, a3, &v232);
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_25E9887EC(v218, a7, &v232);
    _os_log_impl(&dword_25E971000, v31, v32, "start for sessionId: %s clientRequestId: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v35, -1, -1);
    MEMORY[0x25F8C51A0](v34, -1, -1);
  }

  v36 = v225;
  v37 = v223;
  v247 = MEMORY[0x277D84F90];
  sub_25E9D78E0();
  v38 = sub_25E9D7930();
  (*(v25 + 8))(v28, v222);
  v40 = *(v38 + 16);
  v41 = v211;
  if (!v40)
  {

    goto LABEL_35;
  }

  v228 = 0;
  v222 = *(v36 + 16);
  v42 = *(v36 + 80);
  v179 = v38;
  v43 = v38 + ((v42 + 32) & ~v42);
  v219 = *(v36 + 72);
  LODWORD(v209) = *MEMORY[0x277D23540];
  v208 = *MEMORY[0x277D23550];
  *&v221 = v36 + 8;
  *&v39 = 136315138;
  v181 = v39;
  v183 = xmmword_25E9D96A0;
  v44 = v202;
  v225 = v36 + 16;
  v222(v37, v43, v220);
  while (1)
  {
    sub_25E9D79A0();
    v48 = sub_25E9D7A80();
    v49 = *(v48 - 8);
    v50 = *(v49 + 48);
    if (v50(v44, 1, v48) == 1)
    {
      sub_25E981210(v44, &qword_27FD0D880, &unk_25E9D97C0);
      v51 = sub_25E9D7B90();
      (*(*(v51 - 8) + 56))(v41, 1, 1, v51);
      goto LABEL_22;
    }

    v216 = v50;
    sub_25E9D7A70();
    v214 = *(v49 + 8);
    v214(v44, v48);
    v52 = sub_25E9D7B90();
    v53 = *(v52 - 8);
    v212 = *(v53 + 48);
    v213 = v53 + 48;
    if (v212(v41, 1, v52) != 1)
    {
      v54 = v41;
      v55 = v210;
      sub_25E986774(v54, v210);
      v56 = (*(v53 + 88))(v55, v52);
      v215 = v52;
      v57 = v56;
      v59 = *(v53 + 8);
      v58 = v53 + 8;
      v60 = v55;
      v41 = v211;
      v207 = v59;
      v59(v60, v215);
      if (v57 == v209 || v57 == v208)
      {
        v184 = v58;
        sub_25E981210(v41, &qword_27FD0D888, &qword_25E9DBDA0);
        if (v228)
        {
          v62 = v228[2];
          v63 = v62[21];
          v190 = v228[3];
          v191 = v63;
          v64 = v62[8];
          v65 = v62[9];
          v66 = v62[11];
          v200 = v62[10];
          v201 = v64;
          v67 = v62[4];
          v68 = v62[5];
          v198 = v62[2];
          v199 = v67;
          v69 = v62[3];
          v203 = v68;
          v204 = v69;
          v70 = v62[6];
          v186 = v62[7];
          v187 = v66;
          v71 = v62[13];
          v196 = v62[12];
          v197 = v70;
          v188 = v71;
          v189 = v65;
          v73 = v62[14];
          v72 = v62[15];
          v75 = v62[16];
          v74 = v62[17];
          v194 = v75;
          v195 = v73;
          v192 = v72;
          v193 = v74;

          v76 = v186;

          v77 = v188;

          v190 = sub_25E9C3AB4();
          LOBYTE(v65) = v78;
          v79 = v228[4];
          v80 = sub_25E9C3AB4();
          LOBYTE(v229) = v65 & 1;
          v246 = v81 & 1;
          *&v232 = v217;
          *(&v232 + 1) = v226;
          *&v233 = v185;
          *(&v233 + 1) = v206;
          *&v234 = v218;
          *(&v234 + 1) = v227;
          *&v235 = v201;
          *(&v235 + 1) = v189;
          *&v236 = v200;
          *(&v236 + 1) = v187;
          *&v237 = v199;
          *(&v237 + 1) = v203;
          *&v238 = v198;
          *(&v238 + 1) = v204;
          *&v239 = v197;
          *(&v239 + 1) = v76;
          *&v240 = v196;
          *(&v240 + 1) = v77;
          *&v241 = v195;
          *(&v241 + 1) = v192;
          *&v242 = v194;
          *(&v242 + 1) = v193;
          *&v243 = v190;
          BYTE8(v243) = v65 & 1;
          *&v244 = v80;
          BYTE8(v244) = v81 & 1;
          v245 = v191;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D838, &qword_25E9D9480);
          v82 = swift_allocObject();
          v83 = v242;
          v84 = v244;
          *(v82 + 208) = v243;
          *(v82 + 224) = v84;
          v85 = v238;
          v86 = v240;
          v87 = v241;
          *(v82 + 144) = v239;
          *(v82 + 160) = v86;
          *(v82 + 176) = v87;
          *(v82 + 192) = v83;
          v88 = v234;
          v89 = v236;
          v90 = v237;
          *(v82 + 80) = v235;
          *(v82 + 96) = v89;
          *(v82 + 112) = v90;
          *(v82 + 128) = v85;
          v91 = v232;
          v92 = v233;
          *(v82 + 16) = v183;
          *(v82 + 32) = v91;
          *(v82 + 240) = v245;
          *(v82 + 48) = v92;
          *(v82 + 64) = v88;
          swift_beginAccess();
          sub_25E9A38E0(&v232, v230);
          sub_25E9C1384(v82);
          swift_endAccess();
          sub_25E9A393C(&v232);
        }

        type metadata accessor for IEExecutionGrainSpec();
        swift_allocObject();
        v228 = sub_25E985380();

        v93 = v205;
        v94 = v220;
        v222(v205, v223, v220);
        v95 = sub_25E9D7F00();
        v96 = sub_25E9D8140();
        if (!os_log_type_enabled(v95, v96))
        {

          (*v221)(v93, v94);
          v44 = v202;
          v41 = v211;
          v45 = v94;
LABEL_8:
          v46 = v228;
LABEL_9:
          v47 = v223;
          v228 = v46;
          sub_25E984F58(v223);
          goto LABEL_10;
        }

        LODWORD(v203) = v96;
        v204 = v95;
        v97 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        *&v232 = v201;
        *v97 = v181;
        v98 = v182;
        sub_25E9D79A0();
        v99 = v216(v98, 1, v48);
        v41 = v211;
        if (v99 == 1)
        {
          v100 = v98;
          v101 = &qword_27FD0D880;
          v102 = &unk_25E9D97C0;
        }

        else
        {
          v103 = v180;
          sub_25E9D7A70();
          v214(v98, v48);
          v104 = v215;
          if (v212(v103, 1, v215) != 1)
          {
            v107 = v97;
            v108 = v104;
            v106 = sub_25E9D7B80();
            v105 = v109;
            v110 = v108;
            v97 = v107;
            v207(v103, v110);
            goto LABEL_31;
          }

          v100 = v103;
          v101 = &qword_27FD0D888;
          v102 = &qword_25E9DBDA0;
        }

        sub_25E981210(v100, v101, v102);
        v105 = 0xE300000000000000;
        v106 = 7104878;
LABEL_31:
        v44 = v202;
        v45 = v220;
        (*v221)(v205, v220);
        v111 = sub_25E9887EC(v106, v105, &v232);

        *(v97 + 4) = v111;
        v112 = v204;
        _os_log_impl(&dword_25E971000, v204, v203, "handling event %s", v97, 0xCu);
        v113 = v201;
        __swift_destroy_boxed_opaque_existential_0(v201);
        MEMORY[0x25F8C51A0](v113, -1, -1);
        MEMORY[0x25F8C51A0](v97, -1, -1);

        goto LABEL_8;
      }
    }

LABEL_22:
    sub_25E981210(v41, &qword_27FD0D888, &qword_25E9DBDA0);
    v45 = v220;
    v46 = v228;
    if (v228)
    {
      goto LABEL_9;
    }

    v228 = 0;
    v47 = v223;
LABEL_10:
    (*v221)(v47, v45);
    v43 += v219;
    if (!--v40)
    {
      break;
    }

    v222(v47, v43, v45);
  }

  if (v228)
  {
    v114 = v228[2];
    v115 = v114[21];
    v211 = v228[3];
    v212 = v115;
    v116 = v114[9];
    v225 = v114[8];
    v117 = v114[10];
    v209 = v114[11];
    v210 = v116;
    v118 = v114[5];
    v222 = v114[4];
    v223 = v117;
    v119 = v114[2];
    v120 = v114[3];
    v121 = v114[7];
    v220 = v114[6];
    *&v221 = v119;
    v122 = v114[13];
    v219 = v114[12];
    v124 = v114[14];
    v123 = v114[15];
    v126 = v114[16];
    v125 = v114[17];
    v215 = v126;
    v216 = v124;
    v213 = v123;
    v214 = v125;

    v127 = v226;

    v128 = v227;

    v129 = v122;

    v130 = sub_25E9C3AB4();
    LOBYTE(v116) = v131;
    v132 = v228[4];
    v133 = sub_25E9C3AB4();
    LOBYTE(v229) = v116 & 1;
    v246 = v134 & 1;
    *&v232 = v217;
    *(&v232 + 1) = v127;
    *&v233 = v185;
    *(&v233 + 1) = v206;
    *&v234 = v218;
    *(&v234 + 1) = v128;
    *&v235 = v225;
    *(&v235 + 1) = v210;
    *&v236 = v223;
    *(&v236 + 1) = v209;
    *&v237 = v222;
    *(&v237 + 1) = v118;
    *&v238 = v221;
    *(&v238 + 1) = v120;
    *&v239 = v220;
    *(&v239 + 1) = v121;
    *&v240 = v219;
    *(&v240 + 1) = v129;
    *&v241 = v216;
    *(&v241 + 1) = v213;
    *&v242 = v215;
    *(&v242 + 1) = v214;
    *&v243 = v130;
    BYTE8(v243) = v116 & 1;
    *&v244 = v133;
    BYTE8(v244) = v134 & 1;
    v245 = v212;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D838, &qword_25E9D9480);
    v135 = swift_allocObject();
    v136 = v242;
    v137 = v244;
    *(v135 + 208) = v243;
    *(v135 + 224) = v137;
    v138 = v238;
    v139 = v240;
    v140 = v241;
    *(v135 + 144) = v239;
    *(v135 + 160) = v139;
    *(v135 + 176) = v140;
    *(v135 + 192) = v136;
    v141 = v234;
    v142 = v236;
    v143 = v237;
    *(v135 + 80) = v235;
    *(v135 + 96) = v142;
    *(v135 + 112) = v143;
    *(v135 + 128) = v138;
    v144 = v232;
    v145 = v233;
    *(v135 + 16) = v183;
    *(v135 + 32) = v144;
    *(v135 + 240) = v245;
    *(v135 + 48) = v145;
    *(v135 + 64) = v141;
    swift_beginAccess();
    sub_25E9A38E0(&v232, v230);
    sub_25E9C1384(v135);
    swift_endAccess();
    sub_25E9A393C(&v232);
    goto LABEL_36;
  }

LABEL_35:
  v228 = 0;
  v127 = v226;
  v128 = v227;
LABEL_36:

  v146 = sub_25E9D7F00();
  v147 = sub_25E9D8140();

  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *&v232 = v149;
    *v148 = 136315394;
    *(v148 + 4) = sub_25E9887EC(v217, v127, &v232);
    *(v148 + 12) = 2080;
    *(v148 + 14) = sub_25E9887EC(v218, v128, &v232);
    _os_log_impl(&dword_25E971000, v146, v147, "end for sessionId: %s clientRequestId: %s", v148, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v149, -1, -1);
    MEMORY[0x25F8C51A0](v148, -1, -1);
  }

  swift_beginAccess();
  v150 = v247;
  v151 = *(v247 + 2);
  if (v151)
  {

    v152 = v151 - 1;
    v153 = 32;
    *&v154 = 136315906;
    v221 = v154;
    v222 = v150;
    while (1)
    {
      v155 = *(v150 + v153 + 16);
      v232 = *(v150 + v153);
      v233 = v155;
      v156 = *(v150 + v153 + 32);
      v157 = *(v150 + v153 + 48);
      v158 = *(v150 + v153 + 80);
      v236 = *(v150 + v153 + 64);
      v237 = v158;
      v234 = v156;
      v235 = v157;
      v159 = *(v150 + v153 + 96);
      v160 = *(v150 + v153 + 112);
      v161 = *(v150 + v153 + 144);
      v240 = *(v150 + v153 + 128);
      v241 = v161;
      v238 = v159;
      v239 = v160;
      v162 = *(v150 + v153 + 160);
      v163 = *(v150 + v153 + 176);
      v164 = *(v150 + v153 + 192);
      v245 = *(v150 + v153 + 208);
      v243 = v163;
      v244 = v164;
      v242 = v162;

      sub_25E9A38E0(&v232, v230);
      v165 = sub_25E9D7F00();
      v166 = sub_25E9D8140();

      if (os_log_type_enabled(v165, v166))
      {
        v225 = v152;
        v167 = *(&v238 + 1);
        v168 = v238;
        v169 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        v229 = v223;
        *v169 = v221;
        *(v169 + 4) = sub_25E9887EC(v217, v226, &v229);
        *(v169 + 12) = 2080;
        *(v169 + 14) = sub_25E9887EC(v218, v227, &v229);
        *(v169 + 22) = 2080;
        if (v167)
        {
          v170 = v167;
        }

        else
        {
          v168 = 7104878;
          v170 = 0xE300000000000000;
        }

        v171 = sub_25E9887EC(v168, v170, &v229);

        *(v169 + 24) = v171;
        *(v169 + 32) = 2080;
        v230[10] = v242;
        v230[11] = v243;
        v230[12] = v244;
        v231 = v245;
        v230[6] = v238;
        v230[7] = v239;
        v230[8] = v240;
        v230[9] = v241;
        v230[2] = v234;
        v230[3] = v235;
        v230[4] = v236;
        v230[5] = v237;
        v230[0] = v232;
        v230[1] = v233;
        IEExecutionGrainMetricsRecord.dictionary.getter();
        v172 = sub_25E9D7F40();
        v174 = v173;

        v175 = v172;
        v152 = v225;
        v176 = sub_25E9887EC(v175, v174, &v229);

        *(v169 + 34) = v176;
        _os_log_impl(&dword_25E971000, v165, v166, "computed for sessionId: %s clientRequestId: %s %s\n%s", v169, 0x2Au);
        v177 = v223;
        swift_arrayDestroy();
        v150 = v222;
        MEMORY[0x25F8C51A0](v177, -1, -1);
        MEMORY[0x25F8C51A0](v169, -1, -1);
        sub_25E9A393C(&v232);

        if (!v152)
        {
LABEL_48:

          break;
        }
      }

      else
      {

        sub_25E9A393C(&v232);
        if (!v152)
        {
          goto LABEL_48;
        }
      }

      --v152;
      v153 += 216;
    }
  }

  return v150;
}

char *sub_25E9A2D3C()
{
  v124 = sub_25E9D78F0();
  v115 = *(v124 - 8);
  v0 = *(v115 + 64);
  v1 = MEMORY[0x28223BE20](v124);
  v3 = (&v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v1);
  v113 = &v97 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA98, &qword_25E9DA7B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v97 - v10);
  v12 = sub_25E9D7920();
  v105 = *(v12 - 8);
  v13 = *(v105 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v121 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v101 = &v97 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA0, &qword_25E9DA7B8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v97 - v22;
  if (qword_27FD0D598 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v106 = v23;
    v24 = sub_25E9D7F10();
    v97 = __swift_project_value_buffer(v24, qword_27FD0DB00);
    v25 = sub_25E9D7F00();
    v26 = sub_25E9D8140();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v12;
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_25E971000, v25, v26, "calculator start", v28, 2u);
      v29 = v28;
      v12 = v27;
      MEMORY[0x25F8C51A0](v29, -1, -1);
    }

    v30 = sub_25E9D7950();
    v31 = 0;
    v32 = *(v30 + 64);
    v99 = v30 + 64;
    v102 = v30;
    v33 = 1 << *(v30 + 32);
    v34 = v33 < 64 ? ~(-1 << v33) : -1;
    v35 = v34 & v32;
    v98 = (v33 + 63) >> 6;
    v100 = v105 + 16;
    v110 = (v105 + 32);
    v111 = v115 + 16;
    v123 = (v115 + 32);
    v117 = (v115 + 8);
    v125 = MEMORY[0x277D84F90];
    v103 = (v105 + 8);
    v114 = v3;
    v112 = v9;
    v122 = v11;
    v36 = v21;
    v107 = v21;
    v104 = v12;
LABEL_9:
    if (v35)
    {
      break;
    }

    if (v98 <= v31 + 1)
    {
      v37 = v31 + 1;
    }

    else
    {
      v37 = v98;
    }

    v38 = v37 - 1;
    while (1)
    {
      v23 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v23 >= v98)
      {
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
        (*(*(v88 - 8) + 56))(v36, 1, 1, v88);
        v109 = 0;
        goto LABEL_19;
      }

      v35 = *(v99 + 8 * v23);
      ++v31;
      if (v35)
      {
        goto LABEL_18;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  v23 = v31;
LABEL_18:
  v109 = (v35 - 1) & v35;
  v39 = __clz(__rbit64(v35)) | (v23 << 6);
  v40 = *(v102 + 56);
  v41 = (*(v102 + 48) + 16 * v39);
  v42 = v41[1];
  v120 = *v41;
  v43 = v105;
  v44 = v101;
  (*(v105 + 16))(v101, v40 + *(v105 + 72) * v39, v12);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
  v46 = *(v45 + 48);
  v47 = v107;
  *v107 = v120;
  *(v47 + 1) = v42;
  v48 = v44;
  v36 = v47;
  (*(v43 + 32))(&v47[v46], v48, v12);
  (*(*(v45 - 8) + 56))(v36, 0, 1, v45);

  v38 = v23;
LABEL_19:
  v49 = v106;
  sub_25E98B514(v36, v106, &qword_27FD0DAA0, &qword_25E9DA7B8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
  if ((*(*(v50 - 8) + 48))(v49, 1, v50) != 1)
  {
    v108 = v38;
    v51 = v49[1];
    v119 = *v49;
    v120 = v51;
    (*v110)(v121, v49 + *(v50 + 48), v12);
    v52 = sub_25E9D7910();
    v21 = 0;
    v54 = v52 + 64;
    v53 = *(v52 + 64);
    v116 = v52;
    v55 = 1 << *(v52 + 32);
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    else
    {
      v56 = -1;
    }

    v57 = v56 & v53;
    v23 = (v55 + 63) >> 6;
    v118 = v52 + 64;
    while (v57)
    {
      v58 = v21;
LABEL_36:
      v61 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v62 = v61 | (v58 << 6);
      v63 = v115;
      v64 = (*(v116 + 48) + 16 * v62);
      v66 = *v64;
      v65 = v64[1];
      v67 = v113;
      v68 = v124;
      (*(v115 + 16))(v113, *(v116 + 56) + *(v115 + 72) * v62, v124);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
      v70 = *(v69 + 48);
      v71 = v112;
      *v112 = v66;
      *(v71 + 1) = v65;
      v72 = v67;
      v9 = v71;
      (*(v63 + 32))(&v71[v70], v72, v68);
      (*(*(v69 - 8) + 56))(v9, 0, 1, v69);

      v3 = v114;
      v11 = v122;
LABEL_37:
      sub_25E98B514(v9, v11, &qword_27FD0DA98, &qword_25E9DA7B0);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
      if ((*(*(v73 - 8) + 48))(v11, 1, v73) == 1)
      {
        v12 = v104;
        (*v103)(v121, v104);

        v36 = v107;
        v31 = v108;
        v35 = v109;
        goto LABEL_9;
      }

      v74 = *v11;
      v75 = v11[1];
      (*v123)(v3, v11 + *(v73 + 48), v124);
      v76 = sub_25E9D7900();
      v78 = sub_25E9A1B30(v3, v119, v120, v76, v77, v74, v75);

      v79 = *(v78 + 2);
      v12 = *(v125 + 2);
      v11 = (v12 + v79);
      if (__OFADD__(v12, v79))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = v125;
      if (!isUniquelyReferenced_nonNull_native || v11 > *(v125 + 3) >> 1)
      {
        if (v12 <= v11)
        {
          v82 = v12 + v79;
        }

        else
        {
          v82 = v12;
        }

        v81 = sub_25E983F80(isUniquelyReferenced_nonNull_native, v82, 1, v125);
      }

      v11 = v122;
      v83 = *(v78 + 2);
      v125 = v81;
      if (v83)
      {
        if ((*(v81 + 3) >> 1) - *(v81 + 2) < v79)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        if (v79)
        {
          v84 = *(v125 + 2);
          v85 = __OFADD__(v84, v79);
          v86 = v84 + v79;
          if (v85)
          {
            goto LABEL_62;
          }

          *(v125 + 2) = v86;
        }
      }

      else
      {

        if (v79)
        {
          goto LABEL_60;
        }
      }

      (*v117)(v3, v124);
      v54 = v118;
    }

    if (v23 <= (v21 + 1))
    {
      v59 = v21 + 1;
    }

    else
    {
      v59 = v23;
    }

    v60 = v59 - 1;
    while (1)
    {
      v58 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v58 >= v23)
      {
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
        (*(*(v87 - 8) + 56))(v9, 1, 1, v87);
        v57 = 0;
        v21 = v60;
        goto LABEL_37;
      }

      v57 = *(v54 + 8 * v58);
      ++v21;
      if (v57)
      {
        v21 = v58;
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  v89 = v125;

  v90 = sub_25E9D7F00();
  v91 = sub_25E9D8140();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 134217984;
    *(v92 + 4) = *(v89 + 2);

    _os_log_impl(&dword_25E971000, v90, v91, "computed metrics for %ld requests", v92, 0xCu);
    MEMORY[0x25F8C51A0](v92, -1, -1);
  }

  else
  {
  }

  v93 = sub_25E9D7F00();
  v94 = sub_25E9D8140();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_25E971000, v93, v94, "calculator end", v95, 2u);
    MEMORY[0x25F8C51A0](v95, -1, -1);
  }

  return v125;
}