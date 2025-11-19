uint64_t sub_2684F1D1C()
{
  sub_268568990();
  result = sub_268568980();
  qword_280282E58 = result;
  return result;
}

uint64_t sub_2684F1D50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E60, &qword_26856B8D8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v258 = &v253 - v2;
  OUTLINED_FUNCTION_19_1();
  v276 = sub_268568A70();
  v3 = OUTLINED_FUNCTION_1(v276);
  v264 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v275 = &v253 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_19_1();
  v8 = sub_2685689F0();
  v9 = OUTLINED_FUNCTION_1(v8);
  v271 = v10;
  v272 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_5();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19();
  v269 = v17;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19();
  v256 = v19;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19();
  v255 = v21;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_19();
  v257 = v23;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19();
  v260 = v25;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19();
  v259 = v27;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_25_0();
  v262 = v29;
  OUTLINED_FUNCTION_19_1();
  v277 = sub_268568A20();
  v30 = OUTLINED_FUNCTION_1(v277);
  v270 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_5();
  v274 = (v34 - v35);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  v261 = v37;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_25_0();
  v263 = v39;
  OUTLINED_FUNCTION_19_1();
  v40 = sub_268568A90();
  v266 = OUTLINED_FUNCTION_1(v40);
  v267 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v266);
  OUTLINED_FUNCTION_7_5();
  v254 = (v44 - v45);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_19();
  v265 = v47;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_25_0();
  v268 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E68, &qword_26856B8E0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v53 = &v253 - v52;
  v54 = sub_268568A40();
  v55 = OUTLINED_FUNCTION_1(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  v61 = (&v253 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E70, &unk_26856B8E8);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7_5();
  v66 = (v64 - v65);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_25_0();
  v69 = v68;
  OUTLINED_FUNCTION_19_1();
  v70 = sub_268568500();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  swift_allocObject();
  sub_2685684F0();
  v73 = MEMORY[0x26D61B540]();

  v273 = v73;
  if (!v73)
  {
    if (qword_280282960 != -1)
    {
LABEL_91:
      OUTLINED_FUNCTION_0_0();
    }

    v94 = v272;
    v95 = __swift_project_value_buffer(v272, qword_28028B348);
    v96 = v271;
    (*(v271 + 16))(v15, v95, v94);
    v97 = sub_2685689E0();
    v98 = sub_268568DC0();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = OUTLINED_FUNCTION_16_0();
      *v99 = 0;
      _os_log_impl(&dword_2684CA000, v97, v98, "NotificationSRRHelper resolveMostSalientNotificationIdentifier | unable to convert entity builder to entity", v99, 2u);
      OUTLINED_FUNCTION_2();

      (*(v96 + 8))(v15, v94);
      return OUTLINED_FUNCTION_28_0();
    }

    (*(v96 + 8))(v15, v94);
    return OUTLINED_FUNCTION_28_0();
  }

  if (qword_280282950 != -1)
  {
    swift_once();
  }

  *v61 = v273;
  (*(v57 + 104))(v61, *MEMORY[0x277D5FEA8], v54);
  v74 = sub_268568A80();
  __swift_storeEnumTagSinglePayload(v53, 1, 1, v74);

  v15 = v69;
  sub_268568970();
  sub_2684D199C(v53, &qword_280282E68, &qword_26856B8E0);
  (*(v57 + 8))(v61, v54);
  sub_2684F35B0(v69, v66);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v75 = *v66;
    if (qword_280282960 != -1)
    {
LABEL_93:
      OUTLINED_FUNCTION_0_0();
    }

    v76 = v272;
    v77 = __swift_project_value_buffer(v272, qword_28028B348);
    v78 = v271;
    v79 = v269;
    (*(v271 + 16))(v269, v77, v76);
    v80 = v75;
    v81 = sub_2685689E0();
    sub_268568DE0();

    if (OUTLINED_FUNCTION_33_0())
    {
      v82 = OUTLINED_FUNCTION_4();
      v83 = v15;
      v84 = swift_slowAlloc();
      v278 = v75;
      v279[0] = v84;
      *v82 = 136315138;
      v85 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
      v86 = sub_268568B70();
      v88 = sub_2684EABEC(v86, v87, v279);

      *(v82 + 4) = v88;
      OUTLINED_FUNCTION_12_5();
      _os_log_impl(v89, v90, v91, v92, v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v78 + 8))(v269, v76);
      v93 = v83;
LABEL_18:
      sub_2684D199C(v93, &qword_280282E70, &unk_26856B8E8);
      return OUTLINED_FUNCTION_28_0();
    }

    (*(v78 + 8))(v79, v76);
LABEL_17:
    v93 = v15;
    goto LABEL_18;
  }

  v101 = v267;
  v102 = v268;
  v103 = v266;
  (*(v267 + 32))(v268, v66, v266);
  v104 = *(v101 + 16);
  v105 = v265;
  v104(v265, v102, v103);
  v106 = (*(v101 + 88))(v105, v103);
  if (v106 == *MEMORY[0x277D5FEC0])
  {
    v260 = v15;
    v107 = OUTLINED_FUNCTION_7_7();
    v108 = v103;
    v109(v107, v103);
    v110 = v270;
    v15 = v263;
    v75 = v277;
    (*(v270 + 32))(v263, v105, v277);
    v111 = v271;
    if (qword_280282960 != -1)
    {
LABEL_95:
      OUTLINED_FUNCTION_0_0();
    }

    v112 = v272;
    v113 = __swift_project_value_buffer(v272, qword_28028B348);
    v114 = v262;
    (*(v111 + 16))(v262, v113, v112);
    (*(v110 + 16))(v261, v15, v75);
    v115 = sub_2685689E0();
    v116 = sub_268568DD0();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = OUTLINED_FUNCTION_4();
      v274 = swift_slowAlloc();
      v279[0] = v274;
      *v117 = 136315138;
      sub_2684F3620(&qword_280282E88, MEMORY[0x277D5FE08]);
      v118 = v277;
      v119 = sub_2685691A0();
      v121 = v120;
      v122 = OUTLINED_FUNCTION_21_1();
      (v110)(v122, v118);
      v123 = sub_2684EABEC(v119, v121, v279);
      v15 = v263;

      *(v117 + 4) = v123;
      _os_log_impl(&dword_2684CA000, v115, v116, "NotificationSRRHelper resolveMostSalientNotificationIdentifier | resolved a candidate notification %s", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v274);
      v108 = v266;
      OUTLINED_FUNCTION_2();
      v101 = v267;
      OUTLINED_FUNCTION_2();
    }

    else
    {

      v138 = OUTLINED_FUNCTION_21_1();
      (v110)(v138, v277);
    }

    (*(v111 + 8))(v114, v272);
    sub_268568A10();
    v139 = sub_268568A60();

    v140 = OUTLINED_FUNCTION_26_1();
    v141(v140);
    (v110)(v15, v277);
    (*(v101 + 8))(v268, v108);
    v142 = v260;
    goto LABEL_27;
  }

  v124 = v271;
  if (v106 == *MEMORY[0x277D5FED0])
  {
    v125 = OUTLINED_FUNCTION_7_7();
    v127 = v126(v125, v103);
    v128 = *v105;
    v129 = v272;
    if (qword_280282960 != -1)
    {
      v127 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_2_7(v127, qword_28028B348);
    v130 = v260;
    v131 = OUTLINED_FUNCTION_30_1();
    v132(v131);

    v133 = sub_2685689E0();
    v134 = sub_268568DD0();

    if (os_log_type_enabled(v133, v134))
    {
      OUTLINED_FUNCTION_4();
      v135 = OUTLINED_FUNCTION_9_5();
      v279[0] = v135;
      *v130 = 136315138;
      v136 = MEMORY[0x26D61BE70](v128, v277);
      OUTLINED_FUNCTION_32_0(v136, v137);
      OUTLINED_FUNCTION_29_1();

      *(v130 + 4) = v102;
      _os_log_impl(&dword_2684CA000, v133, v134, "NoctificationSRRHelper resolveMostSalientNotificationIdentifier | needsDisambiguation candidates: %s", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v135);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_11_4();

      (*(v124 + 8))(v260, v272);
    }

    else
    {

      (*(v124 + 8))(v130, v129);
    }

    v159 = *(v128 + 16);
    if (v159)
    {
      v260 = v15;
      v279[0] = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_31_1();
      v160 = v279[0];
      OUTLINED_FUNCTION_20_1();
      v265 = v128;
      v163 = v128 + v162;
      v271 = *(v161 + 56);
      v272 = v164;
      v269 = (v161 - 8);
      v270 = v264 + 8;
      v165 = v274;
      do
      {
        v166 = v277;
        v167 = v161;
        v272(v165, v163, v277);
        v168 = v275;
        sub_268568A10();
        v169 = sub_268568A60();
        v171 = v170;
        (*v270)(v168, v276);
        (*v269)(v165, v166);
        v279[0] = v160;
        v173 = *(v160 + 16);
        v172 = *(v160 + 24);
        if (v173 >= v172 >> 1)
        {
          OUTLINED_FUNCTION_23_1(v172);
          v160 = v279[0];
        }

        *(v160 + 16) = v173 + 1;
        v174 = v160 + 16 * v173;
        *(v174 + 32) = v169;
        *(v174 + 40) = v171;
        v163 += v271;
        --v159;
        v161 = v167;
      }

      while (v159);

      v175 = OUTLINED_FUNCTION_15_2();
      v176(v175);
      sub_2684D199C(v260, &qword_280282E70, &unk_26856B8E8);
      return v160;
    }

    else
    {

      v190 = OUTLINED_FUNCTION_8_4();
      v191(v190);
      v192 = v15;
LABEL_46:
      sub_2684D199C(v192, &qword_280282E70, &unk_26856B8E8);
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v143 = v272;
    if (v106 == *MEMORY[0x277D5FEC8])
    {
      v144 = v15;
      v145 = OUTLINED_FUNCTION_7_7();
      v147 = v146(v145, v103);
      v148 = *v105;
      if (qword_280282960 != -1)
      {
        v147 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_2_7(v147, qword_28028B348);
      v149 = v259;
      v150 = OUTLINED_FUNCTION_30_1();
      v151(v150);

      v152 = sub_2685689E0();
      v153 = sub_268568DD0();
      v154 = OUTLINED_FUNCTION_12_1(v153);
      v155 = v258;
      if (v154)
      {
        v156 = OUTLINED_FUNCTION_4();
        *v156 = 134217984;
        *(v156 + 4) = *(v148 + 16);

        OUTLINED_FUNCTION_5_7(&dword_2684CA000, v157, v158, "NotificationSRRHelper resolveMostSalientNotificationIdentifier | Found %ld notification candidates. Using the first one");
        v149 = v259;
        OUTLINED_FUNCTION_2();
      }

      else
      {
      }

      (*(v124 + 8))(v149, v143);
      sub_2684D65A8(v148, v155);

      v193 = v277;
      if (__swift_getEnumTagSinglePayload(v155, 1, v277) != 1)
      {
        sub_268568A10();
        (*(v270 + 8))(v155, v193);
        v139 = sub_268568A60();

        v201 = OUTLINED_FUNCTION_26_1();
        v202(v201);
        v203 = OUTLINED_FUNCTION_8_4();
        v204(v203);
        v142 = v144;
LABEL_27:
        sub_2684D199C(v142, &qword_280282E70, &unk_26856B8E8);
        return v139;
      }

      v194 = OUTLINED_FUNCTION_8_4();
      v195(v194);
      sub_2684D199C(v144, &qword_280282E70, &unk_26856B8E8);
      sub_2684D199C(v155, &qword_280282E60, &qword_26856B8D8);
      return OUTLINED_FUNCTION_28_0();
    }

    else if (v106 == *MEMORY[0x277D5FED8])
    {
      v177 = OUTLINED_FUNCTION_7_7();
      v179 = v178(v177, v103);
      v75 = *v105;
      if (qword_280282960 != -1)
      {
        v179 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_2_7(v179, qword_28028B348);
      v180 = v257;
      v181 = OUTLINED_FUNCTION_30_1();
      v182(v181);

      v183 = sub_2685689E0();
      sub_268568DD0();

      v108 = v15;
      if (OUTLINED_FUNCTION_33_0())
      {
        OUTLINED_FUNCTION_4();
        v184 = OUTLINED_FUNCTION_9_5();
        v279[0] = v184;
        *v180 = 136315138;
        v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E80, &qword_26856B8F8);
        v186 = MEMORY[0x26D61BE70](v75, v185);
        OUTLINED_FUNCTION_32_0(v186, v187);
        OUTLINED_FUNCTION_29_1();

        *(v180 + 4) = v102;
        OUTLINED_FUNCTION_5_7(&dword_2684CA000, v188, v189, "NoctificationSRRHelper resolveMostSalientNotificationIdentifier | needsDisambiguationPlural candidates: %s");
        __swift_destroy_boxed_opaque_existential_0(v184);
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_11_4();

        (*(v124 + 8))(v257, v143);
      }

      else
      {

        (*(v124 + 8))(v180, v143);
      }

      v15 = 0;
      v110 = v75[2];
      v205 = MEMORY[0x277D84F90];
      v101 = MEMORY[0x277D84F90];
      while (v110 != v15)
      {
        if (v15 >= v75[2])
        {
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

        v206 = &v75[v15];
        v207 = v206[4];
        v208 = *(v207 + 16);
        v209 = *(v101 + 16);
        v111 = v209 + v208;
        if (__OFADD__(v209, v208))
        {
          goto LABEL_89;
        }

        v210 = v206[4];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v111 > *(v101 + 24) >> 1)
        {
          if (v209 <= v111)
          {
            v212 = v209 + v208;
          }

          else
          {
            v212 = v209;
          }

          v101 = sub_26854C06C(isUniquelyReferenced_nonNull_native, v212, 1, v101);
        }

        if (*(v207 + 16))
        {
          v213 = *(v101 + 16);
          if ((*(v101 + 24) >> 1) - v213 < v208)
          {
            __break(1u);
            goto LABEL_93;
          }

          v214 = v101 + ((*(v270 + 80) + 32) & ~*(v270 + 80)) + *(v270 + 72) * v213;
          swift_arrayInitWithCopy();

          if (v208)
          {
            v215 = *(v101 + 16);
            v216 = __OFADD__(v215, v208);
            v217 = v215 + v208;
            if (v216)
            {
              __break(1u);
              goto LABEL_95;
            }

            *(v101 + 16) = v217;
          }
        }

        else
        {

          if (v208)
          {
            goto LABEL_90;
          }
        }

        ++v15;
      }

      v218 = *(v101 + 16);
      if (!v218)
      {

        v249 = OUTLINED_FUNCTION_15_2();
        v250(v249);
        v192 = v108;
        goto LABEL_46;
      }

      v260 = v108;
      v279[0] = v205;
      OUTLINED_FUNCTION_31_1();
      v219 = v279[0];
      OUTLINED_FUNCTION_20_1();
      v221 = v101 + v220;
      v271 = *(v222 + 56);
      v272 = v223;
      v269 = (v264 + 8);
      v270 = v222;
      v265 = (v222 - 8);
      v224 = v274;
      do
      {
        v225 = v277;
        v272(v224, v221, v277);
        v226 = v275;
        sub_268568A10();
        v227 = sub_268568A60();
        v229 = v228;
        (*v269)(v226, v276);
        (*v265)(v224, v225);
        v279[0] = v219;
        v231 = *(v219 + 16);
        v230 = *(v219 + 24);
        if (v231 >= v230 >> 1)
        {
          OUTLINED_FUNCTION_23_1(v230);
          v219 = v279[0];
        }

        *(v219 + 16) = v231 + 1;
        v232 = v219 + 16 * v231;
        *(v232 + 32) = v227;
        *(v232 + 40) = v229;
        v221 += v271;
        --v218;
      }

      while (v218);

      v233 = OUTLINED_FUNCTION_15_2();
      v234(v233);
      sub_2684D199C(v260, &qword_280282E70, &unk_26856B8E8);
      return v219;
    }

    else
    {
      if (v106 != *MEMORY[0x277D5FEE0])
      {
        v260 = v15;
        if (qword_280282960 != -1)
        {
          v106 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_2_7(v106, qword_28028B348);
        v235 = v256;
        v236 = OUTLINED_FUNCTION_30_1();
        v237(v236);
        v238 = v254;
        v104(v254, v102, v103);
        v239 = sub_2685689E0();
        v240 = v143;
        v241 = v124;
        v242 = v103;
        v243 = sub_268568DE0();
        if (os_log_type_enabled(v239, v243))
        {
          OUTLINED_FUNCTION_4();
          v277 = OUTLINED_FUNCTION_9_5();
          v279[0] = v277;
          *v235 = 136315138;
          sub_2684F3620(&qword_280282E78, MEMORY[0x277D5FEE8]);
          v244 = sub_2685691A0();
          v246 = v245;
          v247 = *(v267 + 8);
          v247(v238, v242);
          v248 = sub_2684EABEC(v244, v246, v279);

          *(v235 + 4) = v248;
          _os_log_impl(&dword_2684CA000, v239, v243, "NotificationSRRHelper resolveMostSalientNotificationIdentifier | Received unknown result type %s", v235, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v277);
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_11_4();

          (*(v241 + 8))(v256, v272);
          v247(v268, v242);
        }

        else
        {

          v247 = *(v267 + 8);
          v247(v238, v242);
          (*(v241 + 8))(v235, v240);
          v247(v102, v242);
        }

        sub_2684D199C(v260, &qword_280282E70, &unk_26856B8E8);
        v247(v265, v242);
        return OUTLINED_FUNCTION_28_0();
      }

      if (qword_280282960 != -1)
      {
        v106 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_2_7(v106, qword_28028B348);
      v196 = v255;
      v197(v255);
      v198 = sub_2685689E0();
      v199 = sub_268568DD0();
      if (!os_log_type_enabled(v198, v199))
      {

        (*(v124 + 8))(v196, v143);
        v251 = OUTLINED_FUNCTION_8_4();
        v252(v251);
        goto LABEL_17;
      }

      v260 = v15;
      v200 = OUTLINED_FUNCTION_16_0();
      *v200 = 0;
      _os_log_impl(&dword_2684CA000, v198, v199, "NotificationSRRHelper resolveMostSalientNotificationIdentifier | No notifications found", v200, 2u);
      OUTLINED_FUNCTION_11_4();

      (*(v124 + 8))(v196, v143);
      (*(v101 + 8))(v102, v103);
      sub_2684D199C(v260, &qword_280282E70, &unk_26856B8E8);
      return OUTLINED_FUNCTION_28_0();
    }
  }
}

uint64_t sub_2684F3590(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2684F35B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E70, &unk_26856B8E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684F3620(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_7(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(v3, a2);
  v5 = *(v2 + 16);
  return result;
}

void OUTLINED_FUNCTION_5_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_5()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_11_4()
{

  JUMPOUT(0x26D61CB30);
}

void OUTLINED_FUNCTION_13_5()
{

  JUMPOUT(0x26D61CB30);
}

uint64_t OUTLINED_FUNCTION_15_2()
{
  result = *(v0 - 184);
  v2 = *(*(v0 - 192) + 8);
  v3 = *(v0 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_3()
{
  result = v0;
  v3 = *(v1 - 136);
  v4 = *(v1 - 128);
  return result;
}

void OUTLINED_FUNCTION_20_1()
{
  v1 = *(v0 - 168);
  v2 = *(v1 + 16);
  v3 = *(v1 + 80);
}

uint64_t OUTLINED_FUNCTION_23_1@<X0>(unint64_t a1@<X8>)
{

  return sub_2684DCF68(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_24_2(float a1)
{
  *v1 = a1;
  *(v3 - 112) = v2;

  return type metadata accessor for ReadNotification();
}

uint64_t OUTLINED_FUNCTION_26_1()
{
  v2 = *(*(v1 - 216) + 8);
  result = v0;
  v4 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return sub_2684DCF68(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1, unint64_t a2)
{

  return sub_2684EABEC(a1, a2, (v2 - 96));
}

BOOL OUTLINED_FUNCTION_33_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_2684F3874()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282EB0, qword_26856B9E8);
  return sub_268568B70();
}

uint64_t sub_2684F38D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_2684DBF00(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents31RNNoNewNotificationsActionGroup_transition);
  sub_2684CC8D4(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents31RNNoNewNotificationsActionGroup_sharedObjects);
  return v0;
}

uint64_t sub_2684F3918()
{
  sub_2684F38D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RNNoNewNotificationsActionGroup()
{
  result = qword_280282E98;
  if (!qword_280282E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684F39C4()
{
  sub_2684DBD70();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_2684F3AA4()
{
  result = qword_280282EA8;
  if (!qword_280282EA8)
  {
    type metadata accessor for RNNoNewNotificationsActionGroup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282EA8);
  }

  return result;
}

uint64_t type metadata accessor for FollowupNotificationsCATPatternsExecutor()
{
  result = qword_280282EB8;
  if (!qword_280282EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2684F3B88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2684F3BDC(a1, a2);
}

uint64_t sub_2684F3BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2685688F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282EC8, &unk_26856D010);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2684F3D80(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_268568700();
  (*(v5 + 8))(a2, v4);
  sub_2684F3DF0(a1);
  return v12;
}

uint64_t sub_2684F3D48()
{
  v0 = sub_268568720();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_2684F3D80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282EC8, &unk_26856D010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684F3DF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282EC8, &unk_26856D010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2684F3E58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for NotificationMetricsSummary(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationMetricsSummary(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2684F4028);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t sub_2684F4060()
{
  OUTLINED_FUNCTION_14_2();

  sub_2684F4658(v1);
  OUTLINED_FUNCTION_4_5();

  return v0;
}

uint64_t sub_2684F4094()
{
  OUTLINED_FUNCTION_14_2();

  sub_2684F659C(v3);
  OUTLINED_FUNCTION_4_5();

  sub_26853DC20(10, v0);
  OUTLINED_FUNCTION_13_6();
  if ((v2 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_2685691E0();
  swift_unknownObjectRetain_n();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(v5 + 16);

  if (__OFSUB__(v2 >> 1, v1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v6 != (v2 >> 1) - v1)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_2:
    OUTLINED_FUNCTION_16_4();
    v0 = v4;
LABEL_9:
    swift_unknownObjectRelease();
    return v0;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_4_5();
  swift_unknownObjectRelease();
  if (!v0)
  {
    v0 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  return v0;
}

uint64_t sub_2684F41AC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v4 = *(v1 + 16);

  v6 = a1(v5, v1);

  sub_26853DC20(10, v6);
  OUTLINED_FUNCTION_13_6();
  if ((v2 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_2685691E0();
  swift_unknownObjectRetain_n();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v8 + 16);

  if (__OFSUB__(v2 >> 1, v4))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v9 != (v2 >> 1) - v4)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_2:
    OUTLINED_FUNCTION_16_4();
    v1 = v7;
LABEL_9:
    swift_unknownObjectRelease();
    return v1;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_4_5();
  swift_unknownObjectRelease();
  if (!v1)
  {
    v1 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  return v1;
}

void sub_2684F42A8()
{
  v0 = sub_2684F4060();
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(v0 + 16))
    {
      break;
    }

    v4 = *(v0 + 8 * v1 + 32);
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v12 = *(v0 + 8 * v1 + 32);
      }

      v5 = sub_2685690A0();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v1;
    if (v5)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {

        v13 = MEMORY[0x26D61C170](0, v4);

        v8 = *(v13 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type);
        v7 = *(v13 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type + 8);

        swift_unknownObjectRelease();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = (*(v4 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type);
        v8 = *v6;
        v7 = v6[1];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v3 + 16);
        OUTLINED_FUNCTION_1_6();
        sub_26854BB3C();
        v3 = v15;
      }

      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_0_7(v9);
        sub_26854BB3C();
        v3 = v16;
      }

      *(v3 + 16) = v10 + 1;
      v11 = v3 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_2684F4424()
{
  v1 = sub_2684F4060();
  sub_26855D208(*(v0 + 40), v1);
  OUTLINED_FUNCTION_4_5();

  return v0;
}

unint64_t sub_2684F4460()
{
  result = sub_2684F4424();
  if (result)
  {
    sub_26855D244(*(v0 + 32), result);
    OUTLINED_FUNCTION_4_5();

    return v0;
  }

  return result;
}

uint64_t sub_2684F44A0()
{
  v4 = OUTLINED_FUNCTION_14_2();
  sub_2684DEAF0(v4);
  result = OUTLINED_FUNCTION_15_3();
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v1 == v6)
    {
LABEL_10:

      return v1 != v7;
    }

    if (v2)
    {
      result = MEMORY[0x26D61C170](v6, v0);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_12;
      }

      v8 = *(v0 + 8 * v6 + 32);
    }

    if (__OFADD__(v7, 1))
    {
      break;
    }

    v9 = *(result + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight);

    v6 = v7 + 1;
    if (v9 == 1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2684F4564()
{
  v4 = OUTLINED_FUNCTION_14_2();
  sub_2684DEAF0(v4);
  result = OUTLINED_FUNCTION_15_3();
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v1 == v6)
    {
LABEL_10:

      return v1 != v7;
    }

    if (v2)
    {
      result = MEMORY[0x26D61C170](v6, v0);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_12;
      }

      v8 = *(v0 + 8 * v6 + 32);
    }

    if (__OFADD__(v7, 1))
    {
      break;
    }

    v9 = *(result + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight);

    v6 = v7 + 1;
    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2684F4624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = 0;
  *(v5 + 72) = 0xD000000000000013;
  *(v5 + 80) = 0x8000000268571190;
  *(v5 + 16) = a1;
  *(v5 + 24) = 0;
  *(v5 + 32) = a3;
  *(v5 + 40) = a2;
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return v5;
}

void sub_2684F4658(uint64_t a1)
{
  i = a1;
  v155 = sub_2684DEAF0(a1);
  if (!v155)
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_90;
  }

  v3 = 0;
  v153 = i & 0xC000000000000001;
  v151 = i + 32;
  v4 = MEMORY[0x277D84F90];
  do
  {
    sub_2684DEAFC(v3, v153 == 0, i);
    if (v153)
    {
      v5 = MEMORY[0x26D61C170](v3, i);
    }

    else
    {
      v5 = *(v151 + 8 * v3);
    }

    if (__OFADD__(v3, 1))
    {
      goto LABEL_189;
    }

    v3 = 0;
    v6 = v4[2];
    for (i = 32; ; i += 8)
    {
      if (v6 == v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
        v15 = OUTLINED_FUNCTION_5_8();
        *(v15 + 16) = xmmword_26856A540;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
        v16 = OUTLINED_FUNCTION_5_8();
        *(v16 + 16) = xmmword_26856B420;
        *(v16 + 32) = v5;
        *(v15 + 32) = v16;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = v4[2];
          v48 = OUTLINED_FUNCTION_1_6();
          sub_26854BF10(v48, v49, v50, v4);
          v4 = v51;
        }

        OUTLINED_FUNCTION_6_5();
        v18 = v4[2];
        v17 = v4[3];
        OUTLINED_FUNCTION_11_5();
        if (v20)
        {
          v52 = OUTLINED_FUNCTION_0_7(v19);
          sub_26854BF10(v52, v53, v54, v4);
          v4 = v55;
        }

        v4[2] = v1;
        v4[v18 + 4] = v15;
        goto LABEL_87;
      }

      if (v3 >= v4[2])
      {
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
        goto LABEL_192;
      }

      v7 = *(v4 + i);
      if (!*(v7 + 16))
      {
        goto LABEL_185;
      }

      v8 = *(v7 + 32);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v14 = *(v4 + i);

        v9 = MEMORY[0x26D61C170](0, v8);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_186;
        }

        v9 = *(v8 + 32);
        v10 = *(v4 + i);
      }

      v11 = *(v9 + 16);
      v1 = *(v9 + 24);

      if (v11 == v5[2] && v1 == v5[3])
      {
        break;
      }

      v13 = sub_2685691C0();

      if (v13)
      {
        goto LABEL_27;
      }

      ++v3;
    }

LABEL_27:
    if (v3 >= v4[2])
    {
      goto LABEL_190;
    }

    v21 = *(v4 + i);
    v162 = *(v21 + 16);
    if (!v162)
    {
      goto LABEL_52;
    }

    v158 = v4;

    v22 = 0;
    v23 = 32;
    v160 = i;
    while (2)
    {
      OUTLINED_FUNCTION_12_6();
      if (v20)
      {
        goto LABEL_187;
      }

      v24 = *(v21 + v23);
      if ((v24 & 0xC000000000000001) == 0)
      {
        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_188;
        }

        v25 = *(v24 + 32);
        v26 = *(v25 + 56);
        v27 = v5[7];
        if (v26)
        {
          v28 = v5;
          v29 = v5[6];
          v30 = *(v25 + 48);
          v31 = *(v25 + 56);

          goto LABEL_35;
        }

        v34 = v5[7];

LABEL_43:
        if (!v27)
        {
LABEL_56:

          goto LABEL_58;
        }

LABEL_46:

LABEL_47:
        ++v22;
        v23 += 8;
        if (v162 != v22)
        {
          continue;
        }

        v4 = v158;
LABEL_52:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
        v39 = OUTLINED_FUNCTION_5_8();
        *(v39 + 16) = xmmword_26856B420;
        *(v39 + 32) = v5;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_268524284(v4);
          v4 = v46;
        }

        if (v3 < v4[2])
        {
          sub_26852412C();
          v1 = *(*(v4 + i) + 16);
          sub_2685241B8(v1);

          v40 = *(v4 + i);
          *(v40 + 16) = v1 + 1;
          *(v40 + 8 * v1 + 32) = v39;
          OUTLINED_FUNCTION_6_5();
          goto LABEL_87;
        }

LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
        goto LABEL_194;
      }

      break;
    }

    v35 = *(v21 + v23);

    v36 = MEMORY[0x26D61C170](0, v24);
    v37 = v5;
    v30 = *(v36 + 48);
    v26 = *(v36 + 56);

    v38 = v37;
    swift_unknownObjectRelease();
    v27 = v37[7];
    if (!v26)
    {

      v5 = v38;
      goto LABEL_43;
    }

    v28 = v38;
    v29 = v38[6];
LABEL_35:

    if (!v27)
    {

      v5 = v28;
      i = v160;
      goto LABEL_46;
    }

    if (v30 != v29 || v26 != v27)
    {
      v33 = sub_2685691C0();

      v5 = v28;
      i = v160;
      if (v33)
      {
        goto LABEL_56;
      }

      goto LABEL_47;
    }

    v5 = v28;
    i = v160;
LABEL_58:
    if (v3 >= v158[2])
    {
      goto LABEL_193;
    }

    v41 = *(v158 + i);
    if (v22 >= *(v41 + 16))
    {
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
      goto LABEL_198;
    }

    v42 = *(v41 + v23);
    OUTLINED_FUNCTION_3_7();
    if ((v42 & 0xC000000000000001) != 0)
    {

      OUTLINED_FUNCTION_10_2();
      v57 = v56;

      v58 = *(v57 + 56);

      swift_unknownObjectRelease();
      if (!v58)
      {
        goto LABEL_79;
      }

LABEL_62:
      if (!sub_268554FB4())
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_268524284(v158);
          v158 = v63;
        }

        if (v3 < v158[2])
        {
          v1 = *(v158 + i);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v158 + i) = v1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_268524270(v1);
            v1 = v65;
            *(v158 + i) = v65;
          }

          OUTLINED_FUNCTION_6_5();
          if (v22 < *(v1 + 16))
          {
            goto LABEL_85;
          }

          goto LABEL_200;
        }

LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
        goto LABEL_201;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268524284(v158);
        v158 = v62;
      }

      v1 = v158;
      if (v3 < v158[2])
      {
        v43 = *(v158 + i);
        v44 = swift_isUniquelyReferenced_nonNull_native();
        *(v158 + i) = v43;
        if ((v44 & 1) == 0)
        {
          sub_268524270(v43);
          v43 = v64;
          *(v158 + i) = v64;
        }

        OUTLINED_FUNCTION_6_5();
        OUTLINED_FUNCTION_12_6();
        if (!v20)
        {
          sub_2684F7A08(0, v43[v23 / 8]);
          sub_2684D1B64(0, 0, v5);

          goto LABEL_86;
        }

LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
        return;
      }

LABEL_198:
      __break(1u);
      goto LABEL_199;
    }

    if (*(*(v42 + 32) + 56))
    {
      goto LABEL_62;
    }

LABEL_79:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_268524284(v158);
      v158 = v60;
    }

    if (v3 >= v158[2])
    {
      goto LABEL_196;
    }

    v1 = *(v158 + i);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *(v158 + i) = v1;
    if ((v59 & 1) == 0)
    {
      sub_268524270(v1);
      v1 = v61;
      *(v158 + i) = v61;
    }

    OUTLINED_FUNCTION_6_5();
    if (v22 >= *(v1 + 16))
    {
      goto LABEL_197;
    }

LABEL_85:
    MEMORY[0x26D61BE40]();
    sub_2685248B4(*((*(v1 + v23) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_268568D20();
LABEL_86:
    v4 = v158;
LABEL_87:
    ;
  }

  while (v3 != v155);
LABEL_90:
  v66 = v4[2];
  v67 = MEMORY[0x277D84F90];
  if (!v66)
  {
    v70 = MEMORY[0x277D84F90];
LABEL_171:
    v132 = v70[2];
    if (v132)
    {
      v133 = v70 + 4;
      v134 = MEMORY[0x277D84F90];
      do
      {
        v135 = *v133;

        v137 = sub_2685636F0(v136);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = v134[2];
          v141 = OUTLINED_FUNCTION_1_6();
          sub_26854BF34(v141, v142, v143, v134);
          v134 = v144;
        }

        v139 = v134[2];
        v138 = v134[3];
        if (v139 >= v138 >> 1)
        {
          v145 = OUTLINED_FUNCTION_2_8(v138);
          sub_26854BF34(v145, v139 + 1, 1, v134);
          v134 = v146;
        }

        v134[2] = v139 + 1;
        v134[v139 + 4] = v137;
        ++v133;
        --v132;
      }

      while (v132);
    }

    goto LABEL_181;
  }

  v68 = 0;
  v69 = v4 + 4;
  v70 = MEMORY[0x277D84F90];
  v159 = v4;
  v147 = v4 + 4;
  v148 = v4[2];
  while (1)
  {
    if (v68 >= v4[2])
    {
      goto LABEL_195;
    }

    v71 = v69[v68];
    v156 = *(v71 + 16);
    if (v156)
    {
      break;
    }

LABEL_168:
    if (++v68 == v66)
    {
      goto LABEL_171;
    }
  }

  v149 = v68;
  v157 = v71 + 32;

  v150 = 0;
  v72 = 0;
  v154 = v71;
LABEL_95:
  if (v72 >= *(v71 + 16))
  {
    goto LABEL_191;
  }

  v163 = v67;
  v73 = *(v157 + 8 * v72);
  v161 = v72 + 1;
  v74 = sub_2684DEAF0(v73);
  v75 = v73 & 0xC000000000000001;

  for (j = 0; ; ++j)
  {
    if (v74 == j)
    {
      v79 = sub_2684DEAF0(v163);
      v80 = v79 != 0;
      if (v79)
      {
        v1 = v163 & 0xC000000000000001;
        OUTLINED_FUNCTION_3_7();
        v152 = v80;
        if ((v163 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_10_2();
          v81 = v108;
        }

        else
        {
          v81 = *(v163 + 32);
        }

        v82 = 0;
        v164 = MEMORY[0x277D84F90];
        while (v74 != v82)
        {
          if (v75)
          {
            v1 = MEMORY[0x26D61C170](v82, v73);
          }

          else
          {
            if (v82 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_183;
            }

            v1 = *(v73 + 8 * v82 + 32);
          }

          if (__OFADD__(v82, 1))
          {
            __break(1u);
LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          v83 = *(v1 + 32) == *(v81 + 32) && *(v1 + 40) == *(v81 + 40);
          if (v83 || (sub_2685691C0() & 1) != 0)
          {
          }

          else
          {
            sub_268569020();
            v84 = *(v164 + 16);
            sub_268569050();
            sub_268569060();
            sub_268569030();
          }

          ++v82;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
        v85 = OUTLINED_FUNCTION_5_8();
        *(v85 + 16) = xmmword_26856A540;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
        v86 = OUTLINED_FUNCTION_5_8();
        *(v86 + 16) = xmmword_26856B420;
        *(v86 + 32) = v81;
        *(v85 + 32) = v86;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = v70[2];
          v110 = OUTLINED_FUNCTION_1_6();
          sub_26854BF10(v110, v111, v112, v70);
          v70 = v113;
        }

        v4 = v159;
        v88 = v70[2];
        v87 = v70[3];
        OUTLINED_FUNCTION_11_5();
        if (v20)
        {
          v114 = OUTLINED_FUNCTION_0_7(v89);
          sub_26854BF10(v114, v115, v116, v70);
          v70 = v117;
        }

        v70[2] = v1;
        v70[v88 + 4] = v85;
        if (*(v81 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight))
        {

          goto LABEL_132;
        }

        v1 = OUTLINED_FUNCTION_5_8();
        *(v1 + 16) = xmmword_26856A540;
        *(v1 + 32) = v164;
        v102 = v70[2];
        v101 = v70[3];
        v71 = v154;
        if (v102 >= v101 >> 1)
        {
          v118 = OUTLINED_FUNCTION_2_8(v101);
          sub_26854BF10(v118, v102 + 1, 1, v70);
          v70 = v119;
        }

        v70[2] = v102 + 1;
        v70[v102 + 4] = v1;
        v150 = v152;
        v103 = v156;
        v72 = v161;
LABEL_158:
        v67 = MEMORY[0x277D84F90];
        if (v72 != v103)
        {
          goto LABEL_95;
        }

LABEL_167:

        v66 = v148;
        v68 = v149;
        v69 = v147;
        goto LABEL_168;
      }

      v90 = sub_268540688(v70);
      if (!v90)
      {
        goto LABEL_153;
      }

      v1 = v90;
      if (!*(v90 + 16) || (v91 = *(v90 + 32), , , !sub_2684DEAF0(v91)))
      {
LABEL_152:

LABEL_153:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
        v104 = OUTLINED_FUNCTION_5_8();
        *(v104 + 16) = xmmword_26856A540;
        *(v104 + 32) = v73;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v120 = v70[2];
          v121 = OUTLINED_FUNCTION_1_6();
          sub_26854BF10(v121, v122, v123, v70);
          v70 = v124;
        }

        v4 = v159;
        v71 = v154;
        v106 = v70[2];
        v105 = v70[3];
        OUTLINED_FUNCTION_11_5();
        v72 = v161;
        if (v20)
        {
          v125 = OUTLINED_FUNCTION_0_7(v107);
          sub_26854BF10(v125, v126, v127, v70);
          v72 = v161;
          v70 = v128;
        }

        v70[2] = v1;
        v70[v106 + 4] = v104;
        v150 = v80;
        v103 = v156;
        goto LABEL_158;
      }

      OUTLINED_FUNCTION_3_7();
      if ((v91 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_10_2();
        v1 = v129;

        v93 = *(v1 + 16);
        v92 = *(v1 + 24);

        swift_unknownObjectRelease();
        if (!v74)
        {
          goto LABEL_152;
        }
      }

      else
      {
        v1 = *(v91 + 32);

        v93 = *(v1 + 16);
        v92 = *(v1 + 24);

        if (!v74)
        {
          goto LABEL_152;
        }
      }

      v94 = v80;
      sub_2684DEAFC(0, v75 == 0, v73);
      if (v75)
      {
        v130 = MEMORY[0x26D61C170](0, v73);
        v96 = *(v130 + 16);
        v1 = *(v130 + 24);

        swift_unknownObjectRelease();
      }

      else
      {
        v95 = *(v73 + 32);
        v96 = *(v95 + 16);
        v1 = *(v95 + 24);
      }

      if (v93 == v96 && v92 == v1)
      {

        v80 = v94;
        if (v150)
        {
          goto LABEL_153;
        }
      }

      else
      {
        v97 = sub_2685691C0();

        v80 = v94;
        if (v150 || (v97 & 1) == 0)
        {
          goto LABEL_153;
        }
      }

      v98 = v70[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268524284(v70);
        v70 = v131;
      }

      v4 = v159;
      if (!v98)
      {
        goto LABEL_202;
      }

      if (v98 > v70[2])
      {
        goto LABEL_203;
      }

      v99 = &v70[v98];
      sub_26852412C();
      v1 = *(v99[3] + 16);
      sub_2685241B8(v1);
      v100 = v99[3];
      *(v100 + 16) = v1 + 1;
      *(v100 + 8 * v1 + 32) = v73;
      v150 = v80;
LABEL_132:
      v71 = v154;
      v72 = v161;
      v67 = MEMORY[0x277D84F90];
      if (v161 == v156)
      {
        goto LABEL_167;
      }

      goto LABEL_95;
    }

    if (v75)
    {
      v1 = MEMORY[0x26D61C170](j, v73);
    }

    else
    {
      if (j >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_180;
      }

      v1 = *(v73 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (*(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_stackSummary + 8) && (OUTLINED_FUNCTION_9_6(), v77))
    {
      sub_268569020();
      v78 = *(v163 + 16);
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
}

void sub_2684F550C(unint64_t a1)
{
  sub_2684F57AC(a1);
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v2 + 32;
    v37 = *(v2 + 16);
    v38 = v2;
    v36 = v2 + 32;
    while (v5 < *(v3 + 16))
    {
      v1 = *(v6 + 8 * v5);
      v41 = *(v1 + 16);
      if (v41)
      {
        v39 = v5;
        v40 = v1 + 32;

        v7 = 0;
LABEL_6:
        if (v7 >= *(v1 + 16))
        {
LABEL_44:
          __break(1u);
          break;
        }

        v8 = *(v40 + 8 * v7);
        if (v8 >> 62)
        {
          if (v8 < 0)
          {
            v18 = *(v40 + 8 * v7);
          }

          v9 = sub_2685690A0();
        }

        else
        {
          v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v7;
        v10 = v8 & 0xC000000000000001;

        v11 = 0;
        while (v9 != v11)
        {
          if (v10)
          {
            v13 = MEMORY[0x26D61C170](v11, v8);
          }

          else
          {
            if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_40;
            }

            v12 = *(v8 + 8 * v11 + 32);
          }

          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v14 = *(v13 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight);

          ++v11;
          if (v14 == 1)
          {
            for (i = 0; v9 != i; ++i)
            {
              if (v10)
              {
                v16 = MEMORY[0x26D61C170](i, v8);
              }

              else
              {
                if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_44;
                }

                v17 = *(v8 + 8 * i + 32);
              }

              if (__OFADD__(i, 1))
              {
                goto LABEL_41;
              }

              *(v16 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight) = 1;
            }

            break;
          }
        }

        if (v7 != v41)
        {
          goto LABEL_6;
        }

        v4 = v37;
        v3 = v38;
        v5 = v39;
        v6 = v36;
      }

      if (++v5 == v4)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:
    sub_2684F5F04(v3);
    OUTLINED_FUNCTION_4_5();

    v19 = *(v1 + 16);
    if (v19)
    {
      v20 = (v1 + 32);
      v21 = MEMORY[0x277D84F90];
      do
      {
        v22 = *v20;

        v24 = sub_2685636F0(v23);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = v21[2];
          v28 = OUTLINED_FUNCTION_1_6();
          sub_26854BF34(v28, v29, v30, v21);
          v21 = v31;
        }

        v26 = v21[2];
        v25 = v21[3];
        if (v26 >= v25 >> 1)
        {
          v32 = OUTLINED_FUNCTION_0_7(v25);
          sub_26854BF34(v32, v33, v34, v21);
          v21 = v35;
        }

        v21[2] = v26 + 1;
        v21[v26 + 4] = v24;
        ++v20;
        --v19;
      }

      while (v19);
    }

LABEL_42:
  }
}

void sub_2684F57AC(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_99;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return;
  }

  while (1)
  {
    v3 = 0;
    v86 = v1 & 0xC000000000000001;
    v82 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    v81 = xmmword_26856A540;
    v83 = v2;
    v84 = v1;
LABEL_4:
    sub_2684DEAFC(v3, v86 == 0, v1);
    if (v86)
    {
      v89 = MEMORY[0x26D61C170](v3, v1);
    }

    else
    {
      v89 = *(v82 + 8 * v3);
    }

    if (__OFADD__(v3++, 1))
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v6 = 0;
    v7 = *(v4 + 16);
    v8 = 32;
    for (i = v4; ; v4 = i)
    {
      if (v7 == v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
        v17 = OUTLINED_FUNCTION_5_8();
        *(v17 + 16) = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
        v18 = OUTLINED_FUNCTION_5_8();
        OUTLINED_FUNCTION_8_5(v18, v19, v20, v21, v22, v23, v24, v25, v81, *(&v81 + 1), v82, v83, v84, v85, v26);
        *(v27 + 32) = v89;
        *(v17 + 32) = v27;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = i[2];
          v65 = OUTLINED_FUNCTION_1_6();
          sub_26854BF10(v65, v66, v67, v68);
          i = v69;
        }

        v29 = i[2];
        v28 = i[3];
        if (v29 >= v28 >> 1)
        {
          v70 = OUTLINED_FUNCTION_2_8(v28);
          sub_26854BF10(v70, v29 + 1, 1, i);
          i = v71;
        }

        i[2] = v29 + 1;
        i[v29 + 4] = v17;
        v4 = i;
LABEL_87:
        if (v3 == v2)
        {
          return;
        }

        goto LABEL_4;
      }

      OUTLINED_FUNCTION_7_8();
      if (v9)
      {
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      v10 = *(v4 + v8);
      if (!*(v10 + 16))
      {
        goto LABEL_90;
      }

      v11 = *(v10 + 32);
      if ((v11 & 0xC000000000000001) != 0)
      {

        v12 = MEMORY[0x26D61C170](0, v11);
      }

      else
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_91;
        }

        v12 = *(v11 + 32);
      }

      v14 = *(v12 + 16);
      v13 = *(v12 + 24);

      if (v14 == *(v89 + 16) && v13 == *(v89 + 24))
      {
        break;
      }

      v16 = sub_2685691C0();

      if (v16)
      {
        goto LABEL_28;
      }

      ++v6;
      v8 += 8;
    }

LABEL_28:
    if (v6 >= i[2])
    {
      goto LABEL_95;
    }

    v4 = i[v8 / 8];
    v87 = *(v4 + 16);
    if (!v87)
    {
LABEL_53:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
      v46 = OUTLINED_FUNCTION_5_8();
      OUTLINED_FUNCTION_8_5(v46, v47, v48, v49, v50, v51, v52, v53, v81, *(&v81 + 1), v82, v83, v84, v85, v54);
      v46[2].n128_u64[0] = v89;

      if ((OUTLINED_FUNCTION_17_4() & 1) == 0)
      {
        sub_268524284(v4);
        v4 = v63;
      }

      OUTLINED_FUNCTION_7_8();
      if (v9)
      {
        goto LABEL_96;
      }

      sub_26852412C();
      v55 = *(*(v4 + v8) + 16);
      sub_2685241B8(v55);

      v56 = *(v4 + v8);
      *(v56 + 16) = v55 + 1;
      *(v56 + 8 * v55 + 32) = v46;
      goto LABEL_87;
    }

    v85 = v3;

    v30 = 0;
    v31 = 4;
    v32 = v89;
    while (1)
    {
      OUTLINED_FUNCTION_12_6();
      if (v9)
      {
        goto LABEL_92;
      }

      v33 = *(v4 + v31 * 8);
      if ((v33 & 0xC000000000000001) != 0)
      {
        v42 = *(v4 + v31 * 8);

        v43 = MEMORY[0x26D61C170](0, v33);
        v44 = v32;
        v37 = *(v43 + 48);
        v35 = *(v43 + 56);

        v45 = v44;
        swift_unknownObjectRelease();
        v1 = v44[7];
        if (!v35)
        {

          v32 = v45;
          goto LABEL_44;
        }

        v36 = v45[6];
      }

      else
      {
        if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_93;
        }

        v34 = *(v33 + 32);
        v35 = *(v34 + 56);
        v1 = v32[7];
        if (!v35)
        {
          v41 = v32[7];

LABEL_44:
          if (!v1)
          {
LABEL_57:

            goto LABEL_59;
          }

LABEL_47:

          goto LABEL_48;
        }

        v36 = v32[6];
        v37 = *(v34 + 48);
        v38 = *(v34 + 56);
      }

      if (!v1)
      {

        v32 = v89;
        goto LABEL_47;
      }

      if (v37 == v36 && v35 == v1)
      {
        break;
      }

      v40 = sub_2685691C0();

      v32 = v89;
      if (v40)
      {
        goto LABEL_57;
      }

LABEL_48:
      ++v30;
      ++v31;
      if (v87 == v30)
      {

        v2 = v83;
        v1 = v84;
        v3 = v85;
        goto LABEL_53;
      }
    }

    v32 = v89;
LABEL_59:
    if (v6 >= i[2])
    {
      goto LABEL_97;
    }

    v57 = i[v8 / 8];
    if (v30 < *(v57 + 16))
    {
      break;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    v2 = sub_2685690A0();
    if (!v2)
    {
      return;
    }
  }

  v4 = *(v57 + v31 * 8);
  OUTLINED_FUNCTION_3_7();
  if ((v4 & 0xC000000000000001) == 0)
  {
    if (*(*(v4 + 32) + 56))
    {
      goto LABEL_63;
    }

LABEL_80:
    if ((OUTLINED_FUNCTION_17_4() & 1) == 0)
    {
      sub_268524284(v4);
      v4 = v75;
    }

    OUTLINED_FUNCTION_7_8();
    if (v9)
    {
      __break(1u);
    }

    else
    {
      v61 = *(v4 + v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v8) = v61;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268524270(v61);
        v61 = v76;
        *(v4 + v8) = v76;
      }

      if (v30 < v61[2])
      {
        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  OUTLINED_FUNCTION_10_2();
  v73 = v72;

  v4 = *(v73 + 56);

  swift_unknownObjectRelease();
  if (!v4)
  {
    goto LABEL_80;
  }

LABEL_63:
  v4 = v32;
  if (sub_268554FB4())
  {

    if ((OUTLINED_FUNCTION_17_4() & 1) == 0)
    {
      sub_268524284(v32);
      v4 = v77;
    }

    OUTLINED_FUNCTION_7_8();
    if (v9)
    {
      goto LABEL_103;
    }

    v58 = v4;
    v59 = *(v4 + v8);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v58[v8 / 8] = v59;
    if ((v60 & 1) == 0)
    {
      sub_268524270(v59);
      v59 = v79;
      v58[v8 / 8] = v79;
    }

    OUTLINED_FUNCTION_12_6();
    if (!v9)
    {
      sub_2684F7A08(0, v59[v31]);
      sub_2684D1B64(0, 0, v32);

      v2 = v83;
      v1 = v84;
      v3 = v85;
      v4 = v58;
      goto LABEL_87;
    }
  }

  else
  {
    if ((OUTLINED_FUNCTION_17_4() & 1) == 0)
    {
      sub_268524284(v32);
      v4 = v78;
    }

    OUTLINED_FUNCTION_7_8();
    if (v9)
    {
      goto LABEL_104;
    }

    v61 = *(v4 + v8);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v8) = v61;
    if ((v62 & 1) == 0)
    {
      sub_268524270(v61);
      v61 = v80;
      *(v4 + v8) = v80;
    }

    if (v30 < v61[2])
    {
LABEL_86:
      MEMORY[0x26D61BE40]();
      sub_2685248B4(*((v61[v31] & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_268568D20();
      v2 = v83;
      v1 = v84;
      v3 = v85;
      goto LABEL_87;
    }

LABEL_105:
    __break(1u);
  }

  __break(1u);
}

void sub_2684F5F04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return;
  }

  v3 = 0;
  v4 = a1 + 32;
  v100 = xmmword_26856B420;
  v5 = MEMORY[0x277D84F90];
  v96 = a1 + 32;
  v97 = *(a1 + 16);
  while (1)
  {
    v6 = *(v4 + 8 * v3);
    v102 = *(v6 + 16);
    if (v102)
    {
      break;
    }

LABEL_78:
    if (++v3 == v1)
    {
      return;
    }
  }

  v98 = v3;
  v103 = v6 + 32;

  LODWORD(v99) = 0;
  v8 = 0;
  v101 = v7;
  while (2)
  {
    if (v8 < *(v7 + 16))
    {
      v9 = *(v103 + 8 * v8);
      v104 = v8 + 1;
      v10 = sub_2684DEAF0(v9);
      v11 = v9 & 0xC000000000000001;

      for (i = 0; v10 != i; ++i)
      {
        if (v11)
        {
          v13 = MEMORY[0x26D61C170](i, v9);
        }

        else
        {
          if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_82;
          }

          v13 = *(v9 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        if (*(v13 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_stackSummary + 8) && (OUTLINED_FUNCTION_9_6(), v14))
        {
          sub_268569020();
          v15 = *(v2 + 16);
          sub_268569050();
          sub_268569060();
          sub_268569030();
        }

        else
        {
        }
      }

      v16 = sub_2684DEAF0(v2);
      v17 = v16 != 0;
      if (v16)
      {
        HIDWORD(v99) = 1;
        OUTLINED_FUNCTION_3_7();
        if ((v2 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_10_2();
          v18 = v73;
        }

        else
        {
          v18 = *(v2 + 32);
        }

        v19 = 0;
        v105 = MEMORY[0x277D84F90];
        while (v10 != v19)
        {
          if (v11)
          {
            v20 = MEMORY[0x26D61C170](v19, v9);
          }

          else
          {
            if (v19 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_84;
            }

            v20 = *(v9 + 8 * v19 + 32);
          }

          if (__OFADD__(v19, 1))
          {
            goto LABEL_83;
          }

          v21 = *(v20 + 32) == *(v18 + 32) && *(v20 + 40) == *(v18 + 40);
          if (v21 || (sub_2685691C0() & 1) != 0)
          {
          }

          else
          {
            sub_268569020();
            v22 = *(v105 + 16);
            sub_268569050();
            sub_268569060();
            sub_268569030();
          }

          ++v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
        v23 = OUTLINED_FUNCTION_5_8();
        OUTLINED_FUNCTION_8_5(v23, v24, v25, v26, v27, v28, v29, v30, v96, v97, v98, v99, v100, *(&v100 + 1), v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
        v32 = OUTLINED_FUNCTION_5_8();
        *(v32 + 16) = v100;
        *(v32 + 32) = v18;
        v23[2].n128_u64[0] = v32;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = v5[2];
          v75 = OUTLINED_FUNCTION_1_6();
          sub_26854BF10(v75, v76, v77, v5);
          v5 = v78;
        }

        v34 = v5[2];
        v33 = v5[3];
        if (v34 >= v33 >> 1)
        {
          v79 = OUTLINED_FUNCTION_2_8(v33);
          sub_26854BF10(v79, v34 + 1, 1, v5);
          v5 = v80;
        }

        v5[2] = v34 + 1;
        v5[v34 + 4] = v23;
        if ((*(v18 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight) & 1) == 0 && sub_2684DEAF0(v105))
        {
          v47 = OUTLINED_FUNCTION_5_8();
          OUTLINED_FUNCTION_8_5(v47, v48, v49, v50, v51, v52, v53, v54, v96, v97, v98, v99, v100, *(&v100 + 1), v55);
          *(v56 + 32) = v105;
          v58 = v5[2];
          v57 = v5[3];
          if (v58 >= v57 >> 1)
          {
            v90 = OUTLINED_FUNCTION_2_8(v57);
            sub_26854BF10(v90, v58 + 1, 1, v5);
            v5 = v91;
          }

          v5[2] = v58 + 1;
          v5[v58 + 4] = v47;
          LODWORD(v99) = HIDWORD(v99);
        }

        else
        {
        }

        goto LABEL_43;
      }

      v35 = sub_268540688(v5);
      if (!v35)
      {
        goto LABEL_63;
      }

      i = v35;
      if (*(v35 + 16))
      {
        v36 = *(v35 + 32);

        if (sub_2684DEAF0(v36))
        {
          OUTLINED_FUNCTION_3_7();
          if ((v36 & 0xC000000000000001) != 0)
          {
            OUTLINED_FUNCTION_10_2();
            v93 = v92;

            i = *(v93 + 16);
            v38 = *(v93 + 24);

            swift_unknownObjectRelease();
            if (v10)
            {
LABEL_50:
              sub_2684DEAFC(0, v11 == 0, v9);
              if (v11)
              {
                v94 = MEMORY[0x26D61C170](0, v9);
                v41 = *(v94 + 16);
                v40 = *(v94 + 24);

                swift_unknownObjectRelease();
              }

              else
              {
                v39 = *(v9 + 32);
                v41 = *(v39 + 16);
                v40 = *(v39 + 24);
              }

              if (i == v41 && v38 == v40)
              {

                if ((v99 & 1) == 0)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                v42 = sub_2685691C0();

                if (!(v99 & 1 | ((v42 & 1) == 0)))
                {
LABEL_55:
                  v43 = v5[2];
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    if (!v43)
                    {
                      goto LABEL_86;
                    }
                  }

                  else
                  {
                    sub_268524284(v5);
                    v5 = v95;
                    if (!v43)
                    {
                      goto LABEL_86;
                    }
                  }

                  if (v43 > v5[2])
                  {
                    goto LABEL_87;
                  }

                  v44 = &v5[v43];
                  sub_26852412C();
                  v45 = *(v44[3] + 16);
                  sub_2685241B8(v45);
                  v46 = v44[3];
                  *(v46 + 16) = v45 + 1;
                  *(v46 + 8 * v45 + 32) = v9;
                  goto LABEL_68;
                }
              }

LABEL_63:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
              v59 = OUTLINED_FUNCTION_5_8();
              OUTLINED_FUNCTION_8_5(v59, v60, v61, v62, v63, v64, v65, v66, v96, v97, v98, v99, v100, *(&v100 + 1), v67);
              *(v68 + 32) = v9;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v81 = v5[2];
                v82 = OUTLINED_FUNCTION_1_6();
                sub_26854BF10(v82, v83, v84, v5);
                v5 = v85;
              }

              v70 = v5[2];
              v69 = v5[3];
              OUTLINED_FUNCTION_11_5();
              if (v72)
              {
                v86 = OUTLINED_FUNCTION_0_7(v71);
                sub_26854BF10(v86, v87, v88, v5);
                v5 = v89;
              }

              v5[2] = i;
              v5[v70 + 4] = v59;
LABEL_68:
              LODWORD(v99) = v17;
LABEL_43:
              v7 = v101;
              v8 = v104;
              v2 = MEMORY[0x277D84F90];
              if (v104 != v102)
              {
                continue;
              }

              v1 = v97;
              v3 = v98;
              v4 = v96;
              goto LABEL_78;
            }
          }

          else
          {
            v37 = *(v36 + 32);

            i = *(v37 + 16);
            v38 = *(v37 + 24);

            if (v10)
            {
              goto LABEL_50;
            }
          }
        }
      }

      goto LABEL_63;
    }

    break;
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

uint64_t sub_2684F659C(uint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  result = sub_2684DEAF0(a1);
  v4 = result;
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      sub_2684F4658(v8);
      OUTLINED_FUNCTION_4_5();

      return v1;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D61C170](i, a1);
      v6 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v6 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight))
    {
    }

    else
    {
      sub_268569020();
      v7 = *(v8 + 16);
      sub_268569050();
      sub_268569060();
      v1 = &v8;
      result = sub_268569030();
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_2684F66C4(unint64_t a1, unint64_t a2)
{
  v4 = sub_2685689F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = (&v64 - v13);
  if (qword_280282960 != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v15 = __swift_project_value_buffer(v4, qword_28028B348);
    v16 = *(v5 + 16);
    v68 = v15;
    v69 = v16;
    v70 = (v5 + 16);
    (v16)(v14);

    v17 = sub_2685689E0();
    v18 = sub_268568DD0();

    v19 = os_log_type_enabled(v17, v18);
    v71 = v9;
    v72 = v5;
    v73 = v4;
    if (v19)
    {
      LODWORD(v76) = v18;
      v20 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v78[0] = v74;
      v75 = v20;
      LODWORD(v20->isa) = 136315138;
      v21 = sub_2684DEAF0(a1);
      v22 = MEMORY[0x277D84F90];
      if (v21)
      {
        v23 = v21;
        v80 = MEMORY[0x277D84F90];
        result = sub_2684DCF68(0, v21 & ~(v21 >> 63), 0);
        if (v23 < 0)
        {
          __break(1u);
          return result;
        }

        v64 = v17;
        v65 = v14;
        v66 = a2;
        v67 = v12;
        v25 = 0;
        v22 = v80;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26D61C170](v25, a1);
          }

          else
          {
            v26 = *(a1 + 8 * v25 + 32);
          }

          v27 = sub_268554CE0();
          v29 = v28;

          v80 = v22;
          v31 = *(v22 + 16);
          v30 = *(v22 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_2684DCF68(v30 > 1, v31 + 1, 1);
            v22 = v80;
          }

          ++v25;
          *(v22 + 16) = v31 + 1;
          v32 = v22 + 16 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v29;
        }

        while (v23 != v25);
        v5 = v72;
        v4 = v73;
        a2 = v66;
        v12 = v67;
        v17 = v64;
        v14 = v65;
      }

      v80 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282ED0, &qword_26856EB00);
      sub_2684F7A60();
      v33 = sub_268568AF0();
      v35 = v34;

      v36 = sub_2684EABEC(v33, v35, v78);

      v37 = v75;
      *(&v75->isa + 4) = v36;
      _os_log_impl(&dword_2684CA000, v17, v76, "#RNStateManager.groupStacks with filter unmodified input: \n %s", v37, 0xCu);
      v9 = v74;
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x26D61CB30](v9, -1, -1);
      MEMORY[0x26D61CB30](v37, -1, -1);
    }

    v38 = *(v5 + 8);
    v38(v14, v4);
    v14 = *(a2 + 24);
    if (!v14)
    {
      sub_2684F550C(a1);
      v39 = *(a2 + 24);
      *(a2 + 24) = v40;

      v14 = *(a2 + 24);
      if (!v14)
      {
        break;
      }
    }

    v67 = v38;
    isa = v14[2].isa;
    v75 = v14 + 4;
    v76 = isa;

    v12 = 0;
    v74 = 0;
    v42 = MEMORY[0x277D84F90];
LABEL_17:
    while (v12 != v76)
    {
      if (v12 >= v14[2].isa)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v4 = v75[v12++].isa;
      v9 = sub_2684DEAF0(v4);
      a1 = v4 & 0xC000000000000001;
      a2 = v4 & 0xFFFFFFFFFFFFFF8;

      v43 = 0;
      while (v9 != v43)
      {
        if (a1)
        {
          v45 = MEMORY[0x26D61C170](v43, v4);
        }

        else
        {
          if (v43 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v44 = *(v4 + 8 * v43 + 32);
        }

        if (__OFADD__(v43, 1))
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v5 = *(v45 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight);

        v43 = (v43 + 1);
        if (v5)
        {

          goto LABEL_17;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78[0] = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2684DCF88(0, v42[2] + 1, 1);
        v42 = v78[0];
      }

      a2 = v42[2];
      v47 = v42[3];
      v9 = (a2 + 1);
      if (a2 >= v47 >> 1)
      {
        sub_2684DCF88((v47 > 1), a2 + 1, 1);
        v42 = v78[0];
      }

      v42[2] = v9;
      v42[a2 + 4] = v4;
    }

    v5 = v71;
    v4 = v73;
    v69(v71, v68, v73);

    v14 = sub_2685689E0();
    v48 = sub_268568DD0();

    if (!os_log_type_enabled(v14, v48))
    {
      goto LABEL_42;
    }

    v12 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = v49;
    v80 = v49;
    *v12 = 136315138;
    v9 = v42[2];
    v51 = MEMORY[0x277D84F90];
    if (!v9)
    {
LABEL_41:
      v56 = MEMORY[0x26D61BE70](v51, MEMORY[0x277D837D0]);
      v58 = v57;

      v59 = sub_2684EABEC(v56, v58, &v80);

      *(v12 + 4) = v59;
      _os_log_impl(&dword_2684CA000, v14, v48, "#RNStateManager.groupStacks apps after filter: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x26D61CB30](v50, -1, -1);
      MEMORY[0x26D61CB30](v12, -1, -1);
LABEL_42:

      v67(v5, v4);
      return v42;
    }

    v70 = v49;
    v75 = v12;
    LODWORD(v76) = v48;
    v79 = MEMORY[0x277D84F90];
    sub_2684DCF68(0, v9, 0);
    v52 = 0;
    v51 = v79;
    a1 = (v42 + 4);
    while (v52 < v42[2])
    {
      v77 = *(a1 + 8 * v52);
      v53 = v74;
      sub_2684F7704(&v77, v78);
      v74 = v53;
      a2 = v78[0];
      v4 = v78[1];
      v79 = v51;
      v5 = *(v51 + 16);
      v54 = *(v51 + 24);
      v12 = v5 + 1;
      if (v5 >= v54 >> 1)
      {
        sub_2684DCF68(v54 > 1, v5 + 1, 1);
        v51 = v79;
      }

      v52 = (v52 + 1);
      *(v51 + 16) = v12;
      v55 = v51 + 16 * v5;
      *(v55 + 32) = a2;
      *(v55 + 40) = v4;
      if (v9 == v52)
      {
        v4 = v73;
        v50 = v70;
        v5 = v71;
        LOBYTE(v48) = v76;
        v12 = v75;
        goto LABEL_41;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
  }

  v60 = MEMORY[0x277D84F90];
  v69(v12, v68, v4);
  v61 = sub_2685689E0();
  v62 = sub_268568DC0();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_2684CA000, v61, v62, "#RNStateManager.groupStacks No notifications provided, returning [[]]", v63, 2u);
    MEMORY[0x26D61CB30](v63, -1, -1);
  }

  v38(v12, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
  v42 = swift_allocObject();
  *(v42 + 1) = xmmword_26856A540;
  v42[4] = v60;
  return v42;
}

uint64_t sub_2684F6ED8(unint64_t a1, uint64_t a2)
{
  v4 = sub_2685689F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v77 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v70 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = (&v70 - v12);
  if (qword_280282960 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v14 = __swift_project_value_buffer(v4, qword_28028B348);
    v15 = *(v5 + 16);
    v74 = v14;
    v75 = v15;
    v76 = (v5 + 16);
    (v15)(v13);

    v16 = sub_2685689E0();
    v17 = sub_268568DD0();

    v18 = os_log_type_enabled(v16, v17);
    v78 = v5;
    v79 = v4;
    if (v18)
    {
      LODWORD(v82) = v17;
      v19 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v84[0] = v80;
      v81 = v19;
      *v19 = 136315138;
      v20 = sub_2684DEAF0(a1);
      v21 = MEMORY[0x277D84F90];
      if (v20)
      {
        v22 = v20;
        v86 = MEMORY[0x277D84F90];
        result = sub_2684DCF68(0, v20 & ~(v20 >> 63), 0);
        if (v22 < 0)
        {
          __break(1u);
          return result;
        }

        v70 = v16;
        v71 = v13;
        v72 = a2;
        v73 = v11;
        v24 = 0;
        v21 = v86;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26D61C170](v24, a1);
          }

          else
          {
            v25 = *(a1 + 8 * v24 + 32);
          }

          v26 = sub_268554CE0();
          v28 = v27;

          v86 = v21;
          v30 = *(v21 + 16);
          v29 = *(v21 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_2684DCF68(v29 > 1, v30 + 1, 1);
            v21 = v86;
          }

          ++v24;
          *(v21 + 16) = v30 + 1;
          v31 = v21 + 16 * v30;
          *(v31 + 32) = v26;
          *(v31 + 40) = v28;
        }

        while (v22 != v24);
        v5 = v78;
        v4 = v79;
        a2 = v72;
        v11 = v73;
        v16 = v70;
        v13 = v71;
      }

      v86 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282ED0, &qword_26856EB00);
      sub_2684F7A60();
      v32 = sub_268568AF0();
      v34 = v33;

      v35 = sub_2684EABEC(v32, v34, v84);

      v36 = v81;
      *(v81 + 4) = v35;
      _os_log_impl(&dword_2684CA000, v16, v82, "#RNStateManager.groupStacks with filter unmodified input: \n %s", v36, 0xCu);
      v37 = v80;
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x26D61CB30](v37, -1, -1);
      MEMORY[0x26D61CB30](v36, -1, -1);
    }

    v39 = *(v5 + 8);
    v5 += 8;
    v38 = v39;
    v39(v13, v4);
    v40 = *(a2 + 24);
    if (!v40)
    {
      sub_2684F550C(a1);
      v41 = *(a2 + 24);
      *(a2 + 24) = v42;

      v40 = *(a2 + 24);
      if (!v40)
      {
        break;
      }
    }

    v73 = v38;
    v43 = *(v40 + 16);
    v81 = (v40 + 32);
    v82 = v43;

    a1 = 0;
    v80 = 0;
    v44 = MEMORY[0x277D84F90];
    v13 = &OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight;
LABEL_17:
    while (a1 != v82)
    {
      if (a1 >= *(v40 + 16))
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v5 = v81[a1];
      v11 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v5 >> 62)
      {
        if (v5 < 0)
        {
          v51 = v81[a1];
        }

        v45 = sub_2685690A0();
      }

      else
      {
        v45 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++a1;
      v4 = v5 & 0xC000000000000001;

      v46 = 0;
      do
      {
        if (v45 == v46)
        {

          goto LABEL_17;
        }

        if (v4)
        {
          v48 = MEMORY[0x26D61C170](v46, v5);
        }

        else
        {
          if (v46 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v47 = *(v5 + 8 * v46 + 32);
        }

        if (__OFADD__(v46, 1))
        {
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        a2 = *(v48 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight);

        ++v46;
      }

      while ((a2 & 1) == 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2684DCF88(0, v44[2] + 1, 1);
        v44 = v84[0];
      }

      v4 = v44[2];
      v50 = v44[3];
      if (v4 >= v50 >> 1)
      {
        sub_2684DCF88((v50 > 1), v4 + 1, 1);
        v44 = v84[0];
      }

      v44[2] = v4 + 1;
      v44[v4 + 4] = v5;
    }

    v11 = v77;
    a2 = v79;
    v75(v77, v74, v79);

    v5 = sub_2685689E0();
    v52 = sub_268568DD0();

    if (!os_log_type_enabled(v5, v52))
    {
      goto LABEL_48;
    }

    v13 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = v53;
    v86 = v53;
    *v13 = 136315138;
    v55 = v44[2];
    v56 = MEMORY[0x277D84F90];
    if (!v55)
    {
LABEL_47:
      v61 = MEMORY[0x26D61BE70](v56, MEMORY[0x277D837D0]);
      v63 = v62;

      v64 = sub_2684EABEC(v61, v63, &v86);

      *(v13 + 4) = v64;
      _os_log_impl(&dword_2684CA000, v5, v52, "#RNStateManager.groupStacks apps after filter: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x26D61CB30](v54, -1, -1);
      MEMORY[0x26D61CB30](v13, -1, -1);
LABEL_48:

      v73(v11, a2);
      return v44;
    }

    v76 = v53;
    v81 = v13;
    LODWORD(v82) = v52;
    v85 = MEMORY[0x277D84F90];
    sub_2684DCF68(0, v55, 0);
    v57 = 0;
    v56 = v85;
    a1 = (v44 + 4);
    while (v57 < v44[2])
    {
      v83 = *(a1 + 8 * v57);
      v58 = v80;
      sub_2684F7704(&v83, v84);
      v80 = v58;
      v4 = v84[0];
      a2 = v84[1];
      v85 = v56;
      v11 = *(v56 + 16);
      v59 = *(v56 + 24);
      v13 = (v11 + 1);
      if (v11 >= v59 >> 1)
      {
        sub_2684DCF68(v59 > 1, v11 + 1, 1);
        v56 = v85;
      }

      ++v57;
      *(v56 + 16) = v13;
      v60 = v56 + 16 * v11;
      *(v60 + 32) = v4;
      *(v60 + 40) = a2;
      if (v55 == v57)
      {
        a2 = v79;
        v54 = v76;
        v11 = v77;
        LOBYTE(v52) = v82;
        v13 = v81;
        goto LABEL_47;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
  }

  v65 = MEMORY[0x277D84F90];
  v66 = v79;
  v75(v11, v74, v79);
  v67 = sub_2685689E0();
  v68 = sub_268568DC0();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_2684CA000, v67, v68, "#RNStateManager.groupStacks No notifications provided, returning [[]]", v69, 2u);
    MEMORY[0x26D61CB30](v69, -1, -1);
  }

  v38(v11, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
  v44 = swift_allocObject();
  *(v44 + 1) = xmmword_26856A540;
  v44[4] = v65;
  return v44;
}

uint64_t sub_2684F7704@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = 0xE000000000000000;
  sub_268568FD0();

  if (sub_2684DEAF0(v3))
  {
    sub_2684DEAFC(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x26D61C170](0, v3);
      v6 = *(v22 + 16);
      v4 = *(v22 + 24);

      swift_unknownObjectRelease();
    }

    else
    {
      v5 = *(v3 + 32);
      v6 = *(v5 + 16);
      v4 = *(v5 + 24);
    }
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x26D61BDA0](v6, v4);

  MEMORY[0x26D61BDA0](0xD000000000000013, 0x8000000268572070);
  v7 = sub_2684DEAF0(v3);
  if (!v7)
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282ED0, &qword_26856EB00);
    sub_2684F7A60();
    v19 = sub_268568AF0();
    v21 = v20;

    MEMORY[0x26D61BDA0](v19, v21);

    *a2 = 0x203A707061;
    a2[1] = 0xE500000000000000;
    return result;
  }

  v8 = v7;
  v25 = MEMORY[0x277D84F90];
  result = sub_2684DCF68(0, v7 & ~(v7 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v23 = a2;
    v10 = 0;
    v24 = v3 & 0xC000000000000001;
    v11 = v3;
    do
    {
      if (v24)
      {
        MEMORY[0x26D61C170](v10, v3);
      }

      else
      {
        v12 = *(v3 + 8 * v10 + 32);
      }

      v13 = sub_268554CE0();
      v15 = v14;

      v17 = *(v25 + 16);
      v16 = *(v25 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2684DCF68(v16 > 1, v17 + 1, 1);
      }

      ++v10;
      *(v25 + 16) = v17 + 1;
      v18 = v25 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v3 = v11;
    }

    while (v8 != v10);
    a2 = v23;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void *RNStateManager.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[10];

  return v0;
}

uint64_t RNStateManager.__deallocating_deinit()
{
  RNStateManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_2684F7A08(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_2685690A0();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

unint64_t sub_2684F7A60()
{
  result = qword_280282ED8;
  if (!qword_280282ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280282ED0, &qword_26856EB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282ED8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_7()
{
  if (v0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return sub_2684DEAFC(0, v3, v1);
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_8_5(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  a1[1] = a15;
  return result;
}

void OUTLINED_FUNCTION_10_2()
{

  JUMPOUT(0x26D61C170);
}

uint64_t OUTLINED_FUNCTION_15_3()
{
}

void OUTLINED_FUNCTION_16_4()
{

  sub_26853D764(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_17_4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_2684F7C18()
{
  sub_2684F7D74();
  result = sub_268568E90();
  qword_28028B340 = result;
  return result;
}

uint64_t sub_2684F7C80()
{
  v0 = sub_2685689F0();
  __swift_allocate_value_buffer(v0, qword_28028B348);
  __swift_project_value_buffer(v0, qword_28028B348);
  if (qword_280282958 != -1)
  {
    swift_once();
  }

  v1 = qword_28028B340;
  return sub_268568A00();
}

uint64_t sub_2684F7D0C()
{
  sub_2684F7D74();
  result = sub_268568E90();
  qword_28028B360 = result;
  return result;
}

unint64_t sub_2684F7D74()
{
  result = qword_280282EE0;
  if (!qword_280282EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280282EE0);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2684F7E1C()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282F10, &qword_26856BCB8);
  return sub_268568B70();
}

uint64_t sub_2684F7E80(uint64_t a1, char a2)
{
  v3 = v2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v6 = OBJC_IVAR____TtC24SiriNotificationsIntents26RNReplyFollowupActionGroup_transition;
  v7 = sub_268567E80();
  __swift_storeEnumTagSinglePayload(v3 + v6, 1, 1, v7);
  sub_2684CC878(a1, v3 + OBJC_IVAR____TtC24SiriNotificationsIntents26RNReplyFollowupActionGroup_sharedObjects);
  sub_2684CC878(a1, v12);
  type metadata accessor for RNReplyFollowupAction();
  swift_allocObject();
  v8 = sub_2684FBC80(v12, a2);
  sub_2684CC8D4(a1);
  v9 = sub_2684F818C(&qword_280282F08, type metadata accessor for RNReplyFollowupAction);
  v10 = *(v3 + 16);
  *(v3 + 16) = v8;
  *(v3 + 24) = v9;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_2684F7F7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_2684DBF00(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents26RNReplyFollowupActionGroup_transition);
  sub_2684CC8D4(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents26RNReplyFollowupActionGroup_sharedObjects);
  return v0;
}

uint64_t sub_2684F7FBC()
{
  sub_2684F7F7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RNReplyFollowupActionGroup()
{
  result = qword_280282EF0;
  if (!qword_280282EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684F8068()
{
  sub_2684DBD70();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2684F818C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2684F81D4()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282F20, &unk_26856BD80);
  return sub_268568B70();
}

void *sub_2684F8238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = a1;
  sub_2684CC878(a2, (v3 + 5));
  sub_2684CC878(a2, v20);
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v6 = qword_280282970;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *(qword_28028B398 + 16);
  v8 = v7;
  sub_268567990();
  type metadata accessor for ANReadSpokenHintAction();
  swift_allocObject();
  sub_2684E1430(a1, v20, v7, 0, 0, 0, 0, 0, &v16, v15, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v16, *(&v16 + 1), v17, *(&v17 + 1), v18, v19);
  v10 = v9;
  sub_2684CC8D4(a2);
  v11 = sub_2684F8648(&qword_280282D18, 255, type metadata accessor for ANReadSpokenHintAction);
  v12 = v3[2];
  v3[2] = v10;
  v3[3] = v11;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_2684F8398@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  sub_2684CC878(v1 + 40, __src);
  type metadata accessor for ANFollowupReturnGroup();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  memcpy((v4 + 24), __src, 0x80uLL);
  sub_2684CC878(v1 + 40, __src);
  v5 = type metadata accessor for ANFollowupFlow();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  __src[0] = ANFollowupFlow.init(notificationManager:sharedObjects:)();
  v8 = sub_2685677B0();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_2684F8648(&qword_280282A10, 255, type metadata accessor for ANFollowupFlow);
  sub_2684F8648(&qword_280282A18, 255, type metadata accessor for ANFollowupReturnGroup);
  swift_retain_n();
  *a1 = sub_2685677A0();
  v11 = *MEMORY[0x277D5B898];
  v12 = sub_268567960();
  (*(*(v12 - 8) + 104))(a1, v11, v12);
  v13 = *MEMORY[0x277D5BF50];
  v14 = sub_268567E80();
  (*(*(v14 - 8) + 104))(a1, v13, v14);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v14);
}

uint64_t sub_2684F8648(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2684F8690(uint64_t a1, const void *a2)
{
  v3 = v2;
  v6 = sub_2685689F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v33[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D58, &qword_26856BDF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33[-v16];
  v18 = type metadata accessor for ReadingRecord();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  v19 = sub_2685051E0(0, v17);
  sub_2684F8A9C(v17);
  if (v19)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v20 = __swift_project_value_buffer(v6, qword_28028B348);
    (*(v7 + 16))(v11, v20, v6);
    v21 = sub_2685689E0();
    v22 = sub_268568DC0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2684CA000, v21, v22, "AnnounceNotificationsFlowSource's initial group is ReadNotificationActionGroup", v23, 2u);
      MEMORY[0x26D61CB30](v23, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    sub_2684CC878(a2, v33);
    type metadata accessor for ANReadNotificationsActionGroup();
    swift_allocObject();
    v24 = sub_2684D4E64(a1, v33);
    sub_2684CC8D4(a2);
    v25 = &unk_280282B70;
    v26 = type metadata accessor for ANReadNotificationsActionGroup;
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v27 = __swift_project_value_buffer(v6, qword_28028B348);
    (*(v7 + 16))(v13, v27, v6);
    v28 = sub_2685689E0();
    v29 = sub_268568DC0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2684CA000, v28, v29, "AnnounceNotificationsFlowSource's initial group is PlayNotificationSoundActionGroup", v30, 2u);
      MEMORY[0x26D61CB30](v30, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    type metadata accessor for ANPlayNotificationSoundActionGroup();
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    memcpy((v24 + 24), a2, 0x80uLL);
    v25 = &unk_280282F28;
    v26 = type metadata accessor for ANPlayNotificationSoundActionGroup;
  }

  v31 = sub_2684F8B04(v25, v26);
  *(v3 + 16) = v24;
  *(v3 + 24) = v31;
  return v3;
}

uint64_t sub_2684F8A9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D58, &qword_26856BDF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2684F8B04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2684F8B4C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_2685688F0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_5_5();
  *(v2 + 16) = a1;
  sub_2684D57FC(a2, v2 + 24);
  type metadata accessor for ReadNotificationsCATs();

  sub_2685688E0();
  sub_2685686F0();
  sub_2685685F0();
  v8 = sub_2685685D0();
  sub_268516318(a2, v8);

  v9 = sub_268568710();

  __swift_destroy_boxed_opaque_existential_0(a2);
  *(v3 + 64) = v9;
  return v3;
}

uint64_t sub_2684F8C60()
{
  v0 = sub_2684FA604();
  if (v0 == 5)
  {

    return sub_268567B90();
  }

  else if (v0 == 1)
  {

    return sub_268567B70();
  }

  else
  {

    return sub_268567B80();
  }
}

uint64_t sub_2684F8CEC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_7();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2684F8D14()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_2684FA604();
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2684F8D74()
{
  OUTLINED_FUNCTION_5();
  v1[24] = v2;
  v1[25] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0) - 8) + 64);
  v1[26] = OUTLINED_FUNCTION_39();
  v4 = sub_2685679B0();
  v1[27] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[28] = v5;
  v7 = *(v6 + 64);
  v1[29] = OUTLINED_FUNCTION_39();
  v8 = sub_268567B60();
  v1[30] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[31] = v9;
  v11 = *(v10 + 64);
  v1[32] = OUTLINED_FUNCTION_39();
  v12 = sub_268567CE0();
  v1[33] = v12;
  OUTLINED_FUNCTION_2_4(v12);
  v1[34] = v13;
  v15 = *(v14 + 64);
  v1[35] = OUTLINED_FUNCTION_39();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0) - 8) + 64);
  v1[36] = OUTLINED_FUNCTION_39();
  v17 = sub_268567D90();
  v1[37] = v17;
  OUTLINED_FUNCTION_2_4(v17);
  v1[38] = v18;
  v20 = *(v19 + 64);
  v1[39] = OUTLINED_FUNCTION_39();
  v21 = sub_2685689F0();
  v1[40] = v21;
  OUTLINED_FUNCTION_2_4(v21);
  v1[41] = v22;
  v24 = *(v23 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_2684F8FD4()
{
  v78 = v1;
  v4 = *(v1[25] + 16);
  v5 = sub_2684F417C();
  v6 = v4[5];
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = sub_26855D208(v6 + 1, v5);

    if (!v2)
    {
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v33 = v1[43];
      v34 = v1[40];
      v35 = v1[41];
      v36 = __swift_project_value_buffer(v34, qword_28028B348);
      (*(v35 + 16))(v33, v36, v34);
      v37 = sub_2685689E0();
      v38 = sub_268568DE0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_2684CA000, v37, v38, "RNPromptStrategy makePromptForValue | no next app to read)", v39, 2u);
        OUTLINED_FUNCTION_2();
      }

      v40 = v1[43];
      v41 = v1[40];
      v42 = v1[41];
      v44 = v1[31];
      v43 = v1[32];
      v45 = v1[29];
      v46 = v1[30];
      v47 = v1[28];
      v75 = v1[27];

      (*(v42 + 8))(v40, v41);
      sub_268567990();
      v48 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      sub_268567A20();
      (*(v44 + 104))(v43, *MEMORY[0x277D5BB20], v46);
      (*(v47 + 104))(v45, *MEMORY[0x277D5B8D8], v75);
      sub_268568B70();
      v49 = OUTLINED_FUNCTION_7_9();
      sub_2684EBB74(v49, v50, v43, v45, 8, v51, v52, 0, v70, v71);
      sub_2685679A0();

      __swift_destroy_boxed_opaque_existential_0(v1 + 2);
      sub_2684FB8E4();
      swift_allocError();
      OUTLINED_FUNCTION_19_2();
      v76 = v1[26];
      swift_willThrow();

      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_31_2();

      __asm { BRAA            X1, X16 }
    }

    v3 = v4[7];
    v5 = v4[6];
    v0 = v5 / 4;
    sub_2684DEAFC(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) == 0)
    {
      v7 = *(v2 + 32);

      goto LABEL_5;
    }
  }

  v7 = MEMORY[0x26D61C170](0, v2);
LABEL_5:
  v8 = v5 - 4 * v0;
  v9 = v7 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type;
  v74 = *(v7 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type);
  v1[46] = v74;
  v10 = *(v9 + 8);
  v1[47] = v10;

  v11 = sub_2684DEAF0(v2);

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v12 = v8;
  v13 = v3;
  v14 = v11;
  v15 = v1[45];
  v16 = v1[40];
  v17 = v1[41];
  v18 = __swift_project_value_buffer(v16, qword_28028B348);
  v1[48] = v18;
  v19 = *(v17 + 16);
  v1[49] = v19;
  v1[50] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v15, v18, v16);

  v20 = sub_2685689E0();
  v21 = sub_268568DD0();

  v22 = os_log_type_enabled(v20, v21);
  v23 = v1[45];
  v25 = v1[40];
  v24 = v1[41];
  if (v22)
  {
    v73 = v1[45];
    v26 = swift_slowAlloc();
    v72 = v25;
    v27 = swift_slowAlloc();
    v77 = v27;
    *v26 = 134218754;
    *(v26 + 4) = v13;
    *(v26 + 12) = 2048;
    *(v26 + 14) = v12;
    *(v26 + 22) = 2080;

    v28 = sub_2684EABEC(v74, v10, &v77);
    v29 = v19;
    v30 = v18;
    v31 = v28;

    *(v26 + 24) = v31;
    v18 = v30;
    v19 = v29;
    *(v26 + 32) = 2048;
    *(v26 + 34) = v14;
    _os_log_impl(&dword_2684CA000, v20, v21, "RNPromptStrategy makePromptForValue | consecutiveSkippedGroup: %f, readGroupsModuloFour: %f, appName: %s, notificationCountForApp: %f", v26, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v27);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v32 = *(v24 + 8);
    v32(v73, v72);
  }

  else
  {

    v32 = *(v24 + 8);
    v32(v23, v25);
  }

  v1[51] = v32;
  v19(v1[44], v18, v1[40]);
  v55 = sub_2685689E0();
  v56 = sub_268568DC0();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_2684CA000, v55, v56, "RNPromptStrategy: In makePromptForValue", v57, 2u);
    OUTLINED_FUNCTION_2();
  }

  v58 = v1[44];
  v59 = v1[40];
  v60 = v1[41];
  v61 = v1[36];
  v62 = v1[25];

  v32(v58, v59);
  v63 = *(v62 + 64);
  sub_268568BB0();
  v64 = sub_268568810();
  __swift_storeEnumTagSinglePayload(v61, 0, 1, v64);
  v65 = swift_task_alloc();
  v1[52] = v65;
  *v65 = v1;
  v65[1] = sub_2684F9664;
  v66 = v1[39];
  v67 = v1[36];
  OUTLINED_FUNCTION_31_2();

  return sub_26850DD28();
}

uint64_t sub_2684F9664()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = v2[52];
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v3[53] = v0;

  if (v0)
  {
    v7 = v3[47];
    sub_2684EB7C8(v3[36], &qword_280282AF0, &qword_26856A1E0);

    v8 = sub_2684F9AC0;
  }

  else
  {
    sub_2684EB7C8(v3[36], &qword_280282AF0, &qword_26856A1E0);
    v8 = sub_2684F97A4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2684F97A4()
{
  v26 = *(v0 + 360);
  v27 = *(v0 + 352);
  v28 = *(v0 + 344);
  v29 = *(v0 + 336);
  v23 = *(v0 + 312);
  v24 = *(v0 + 304);
  v25 = *(v0 + 296);
  v30 = *(v0 + 288);
  v1 = *(v0 + 256);
  v20 = *(v0 + 272);
  v21 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  v16 = *(v0 + 216);
  v18 = *(v0 + 280);
  v19 = *(v0 + 208);
  v6 = *(v0 + 200);
  v22 = *(v0 + 192);
  sub_268516DA4(*(v0 + 368), *(v0 + 376), MEMORY[0x277D84F90], v18);

  sub_268567990();
  v17 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_268567A20();
  (*(v3 + 104))(v1, *MEMORY[0x277D5BB20], v2);
  (*(v4 + 104))(v5, *MEMORY[0x277D5B950], v16);
  v7 = OUTLINED_FUNCTION_7_9();
  sub_2684EBB74(v7, v8, v1, v5, 8, 0, 0, 0, v14, v15);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v9 = v6[7];
  __swift_project_boxed_opaque_existential_1(v6 + 3, v6[6]);
  sub_268567A90();
  (*(v20 + 16))(v19, v18, v21);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
  v10 = sub_2685680C0();
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v11 = MEMORY[0x277D5C1D8];
  v22[3] = v10;
  v22[4] = v11;
  __swift_allocate_boxed_opaque_existential_0(v22);
  sub_268567BD0();
  sub_2684EB7C8(v0 + 136, &qword_280282F30, &qword_26856DAD0);
  sub_2684EB7C8(v19, &qword_280282C00, &unk_26856A9A0);
  (*(v20 + 8))(v18, v21);
  (*(v24 + 8))(v23, v25);

  OUTLINED_FUNCTION_9_1();

  return v12();
}

uint64_t sub_2684F9AC0()
{
  v45 = v0;
  v2 = *(v0 + 424);
  v3 = *(v0 + 400);
  (*(v0 + 392))(*(v0 + 336), *(v0 + 384), *(v0 + 320));
  v4 = v2;
  v5 = sub_2685689E0();
  v6 = sub_268568DE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 424);
    v41 = *(v0 + 408);
    v9 = *(v0 + 328);
    v8 = *(v0 + 336);
    v10 = *(v0 + 320);
    OUTLINED_FUNCTION_4();
    v11 = OUTLINED_FUNCTION_7_1();
    v44 = v11;
    *v1 = 136315138;
    *(v0 + 184) = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v13 = sub_268568B70();
    v15 = sub_2684EABEC(v13, v14, &v44);

    *(v1 + 4) = v15;
    OUTLINED_FUNCTION_17_5(&dword_2684CA000, v16, v17, "RNPromptStrategy makePromptForValue | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v18 = OUTLINED_FUNCTION_34();
    v41(v18);
  }

  else
  {
    v19 = *(v0 + 408);
    v21 = *(v0 + 328);
    v20 = *(v0 + 336);
    v22 = *(v0 + 320);

    v23 = OUTLINED_FUNCTION_34();
    v19(v23);
  }

  v24 = *(v0 + 424);
  v26 = *(v0 + 248);
  v25 = *(v0 + 256);
  v27 = *(v0 + 232);
  v28 = *(v0 + 240);
  v30 = *(v0 + 216);
  v29 = *(v0 + 224);
  sub_268567990();
  v42 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_268567A20();
  (*(v26 + 104))(v25, *MEMORY[0x277D5BB20], v28);
  (*(v29 + 104))(v27, *MEMORY[0x277D5B8D8], v30);
  *(v0 + 176) = v24;
  v31 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();
  v32 = OUTLINED_FUNCTION_7_9();
  sub_2684EBB74(v32, v33, v25, v27, 8, v34, v35, 0, v39, v40);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v36 = *(v0 + 424);
  OUTLINED_FUNCTION_19_2();
  v43 = *(v0 + 208);
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v37();
}

uint64_t sub_2684F9DD0()
{
  OUTLINED_FUNCTION_5();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_2685689F0();
  v1[10] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[11] = v4;
  v6 = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_39();
  v7 = sub_268567D90();
  v1[13] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[14] = v8;
  v10 = *(v9 + 64);
  v1[15] = OUTLINED_FUNCTION_39();
  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2684F9EC0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0[9] + 64);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_2684F9F58;
  v3 = v0[15];

  return sub_26850D6EC();
}

uint64_t sub_2684F9F58()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 128);
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  if (v0)
  {
    v7 = sub_2684FA198;
  }

  else
  {
    v7 = sub_2684FA05C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2684FA05C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = v6[7];
  __swift_project_boxed_opaque_existential_1(v6 + 3, v6[6]);
  sub_268567A90();
  v8 = sub_2685680C0();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v9 = MEMORY[0x277D5C1D8];
  v5[3] = v8;
  v5[4] = v9;
  __swift_allocate_boxed_opaque_existential_0(v5);
  sub_268567BC0();
  sub_2684EB7C8(v0 + 16, &qword_280282F30, &qword_26856DAD0);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_9_1();

  return v10();
}

uint64_t sub_2684FA198()
{
  v36 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = v0[17];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = __swift_project_value_buffer(v5, qword_28028B348);
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_2685689E0();
  LOBYTE(v4) = sub_268568DE0();

  if (os_log_type_enabled(v8, v4))
  {
    v9 = v0[17];
    v11 = v0[11];
    v10 = v0[12];
    v12 = v0[10];
    OUTLINED_FUNCTION_4();
    v13 = OUTLINED_FUNCTION_7_1();
    v35 = v13;
    *v1 = 136315138;
    v0[7] = v9;
    v14 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v15 = sub_268568B70();
    v17 = sub_2684EABEC(v15, v16, &v35);

    *(v1 + 4) = v17;
    OUTLINED_FUNCTION_17_5(&dword_2684CA000, v18, v19, "RNPromptStrategy makeFlowCancelledResponse | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v20 = *(v11 + 8);
    v21 = OUTLINED_FUNCTION_34();
    v22(v21);
  }

  else
  {
    v24 = v0[11];
    v23 = v0[12];
    v25 = v0[10];

    v26 = *(v24 + 8);
    v27 = OUTLINED_FUNCTION_34();
    v28(v27);
  }

  v29 = v0[17];
  v30 = v0[15];
  v31 = v0[12];
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();
  v33 = v0[17];

  return v32();
}

uint64_t sub_2684FA390()
{
  OUTLINED_FUNCTION_5();
  v0[3] = v1;
  v2 = sub_2685689F0();
  v0[4] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v0[5] = v3;
  v5 = *(v4 + 64);
  v0[6] = OUTLINED_FUNCTION_39();
  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2684FA434()
{
  v31 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = __swift_project_value_buffer(v4, qword_28028B348);
  (*(v3 + 16))(v2, v6, v4);
  v7 = v5;
  v8 = sub_2685689E0();
  LOBYTE(v3) = sub_268568DE0();

  v9 = os_log_type_enabled(v8, v3);
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[4];
  if (v9)
  {
    v13 = v0[3];
    OUTLINED_FUNCTION_4();
    v14 = OUTLINED_FUNCTION_7_1();
    v30 = v14;
    *v1 = 136315138;
    v0[2] = v13;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v16 = sub_268568B70();
    v18 = sub_2684EABEC(v16, v17, &v30);

    *(v1 + 4) = v18;
    OUTLINED_FUNCTION_17_5(&dword_2684CA000, v19, v20, "RNPromptStrategy makeErrorResponse | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  v21 = *(v11 + 8);
  v22 = OUTLINED_FUNCTION_34();
  v23(v22);
  v24 = v0[6];
  v25 = v0[3];
  swift_willThrow();
  v26 = v25;

  OUTLINED_FUNCTION_9_1();
  v28 = v0[3];

  return v27();
}

uint64_t sub_2684FA604()
{
  v0 = sub_2685680B0();
  v1 = OUTLINED_FUNCTION_1(v0);
  v115 = v2;
  v116 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_5();
  v112 = (v5 - v6);
  v8 = MEMORY[0x28223BE20](v7);
  v114 = (&v112 - v9);
  MEMORY[0x28223BE20](v8);
  v118 = &v112 - v10;
  v11 = sub_2685689F0();
  v12 = OUTLINED_FUNCTION_1(v11);
  v119 = v13;
  v120 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_5();
  v117 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v112 - v19;
  v113 = type metadata accessor for NotificationNLv3Intent();
  v21 = OUTLINED_FUNCTION_17_2(v113);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_5();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v112 - v28;
  v30 = sub_268568560();
  v31 = OUTLINED_FUNCTION_1(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_5();
  v38 = v37 - v36;
  v39 = sub_268568080();
  v40 = OUTLINED_FUNCTION_1(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_5_5();
  v47 = v46 - v45;
  sub_268568030();
  v48 = v42[11];
  v49 = OUTLINED_FUNCTION_29_2();
  v51 = v50(v49);
  if (v51 == *MEMORY[0x277D5C128])
  {
    v52 = v42[12];
    v53 = OUTLINED_FUNCTION_29_2();
    v54(v53);
    (*(v33 + 32))(v38, v47, v30);
    v117 = v33;
    v118 = v30;
    (*(v33 + 16))(v29, v38, v30);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v55 = v120;
    v56 = __swift_project_value_buffer(v120, qword_28028B348);
    v57 = v119;
    (*(v119 + 16))(v20, v56, v55);
    sub_2684EB87C(v29, v26);
    v58 = sub_2685689E0();
    v59 = sub_268568DD0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = OUTLINED_FUNCTION_4();
      v116 = v38;
      v61 = v57;
      v62 = v60;
      v63 = swift_slowAlloc();
      v121 = v63;
      *v62 = 136315138;
      sub_2684FB88C();
      v64 = sub_268568310();
      v66 = v65;
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v26, v67);
      v68 = sub_2684EABEC(v64, v66, &v121);

      *(v62 + 4) = v68;
      _os_log_impl(&dword_2684CA000, v58, v59, "RNPromptStrategy parseInput | nlv3 parsed intent: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v61 + 8))(v20, v120);
    }

    else
    {

      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v26, v89);
      (*(v57 + 8))(v20, v55);
    }

    if (sub_26852BA90() || (sub_26852B6A4() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v29, v90);
      v91 = OUTLINED_FUNCTION_13_7();
      v92(v91);
      return 0;
    }

    else if (sub_26852BAB4() & 1) != 0 || (sub_26852B998())
    {
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v29, v98);
      v99 = OUTLINED_FUNCTION_13_7();
      v100(v99);
      return 2;
    }

    else if (sub_26852B5A8())
    {
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v29, v102);
      v103 = OUTLINED_FUNCTION_13_7();
      v104(v103);
      return 3;
    }

    else if (sub_26852B7A4())
    {
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v29, v105);
      v106 = OUTLINED_FUNCTION_13_7();
      v107(v106);
      return 4;
    }

    else
    {
      v108 = sub_26852B8AC();
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v29, v109);
      v110 = OUTLINED_FUNCTION_13_7();
      v111(v110);
      if (v108)
      {
        return 1;
      }

      else
      {
        return 5;
      }
    }
  }

  else if (v51 == *MEMORY[0x277D5C160])
  {
    v69 = v42[12];
    v70 = OUTLINED_FUNCTION_29_2();
    v71(v70);
    v72 = v115;
    v73 = v116;
    v74 = v118;
    (*(v115 + 32))(v118, v47, v116);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v75 = v120;
    v76 = __swift_project_value_buffer(v120, qword_28028B348);
    v77 = v119;
    v78 = v117;
    (*(v119 + 16))(v117, v76, v75);
    v79 = *(v72 + 16);
    v80 = v114;
    v79(v114, v74, v73);
    v81 = sub_2685689E0();
    v82 = sub_268568DD0();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = OUTLINED_FUNCTION_4();
      v113 = swift_slowAlloc();
      v121 = v113;
      *v83 = 136315138;
      v79(v112, v80, v73);
      v84 = sub_268568B70();
      v86 = v85;
      v87 = OUTLINED_FUNCTION_23_2();
      v80(v87);
      v88 = sub_2684EABEC(v84, v86, &v121);
      v74 = v118;

      *(v83 + 4) = v88;
      _os_log_impl(&dword_2684CA000, v81, v82, "RNPromptStrategy parseInput | uso parse: %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v113);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v77 + 8))(v117, v120);
    }

    else
    {

      v97 = OUTLINED_FUNCTION_23_2();
      v80(v97);
      (*(v77 + 8))(v78, v120);
    }

    v93 = sub_2684FADF8(v74);
    (v80)(v74, v73);
  }

  else
  {
    v94 = v42[1];
    v95 = OUTLINED_FUNCTION_29_2();
    v96(v95);
    return 5;
  }

  return v93;
}

uint64_t sub_2684FADF8(uint64_t a1)
{
  v88 = sub_2685679B0();
  v2 = OUTLINED_FUNCTION_1(v88);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_5();
  v87 = sub_268567B60();
  v5 = OUTLINED_FUNCTION_1(v87);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_5();
  v8 = sub_2685680B0();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_5();
  v16 = v15 - v14;
  v17 = type metadata accessor for NotificationNLv4Intent();
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_5();
  v22 = v21 - v20;
  v23 = *(v11 + 16);
  v23(v16, a1, v8);
  v23(v22, v16, v8);
  sub_268568550();
  v24 = sub_26850CCFC();
  (*(v11 + 8))(v16, v8);
  *(v22 + *(v18 + 28)) = v24;
  sub_2685683B0();
  if (v90)
  {
    sub_268568430();
    if (OUTLINED_FUNCTION_25_1())
    {

LABEL_6:
      sub_268567990();
      OUTLINED_FUNCTION_11_6();
      v25 = *MEMORY[0x277D5BBC8];
      v26 = OUTLINED_FUNCTION_8_6();
      v27(v26);
      v28 = *MEMORY[0x277D5B950];
      v29 = OUTLINED_FUNCTION_4_6();
      v30(v29);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_6_6(1, v31, v32, v33, v34, v35, v36, v37, v85, v86);
      OUTLINED_FUNCTION_12_7();

      OUTLINED_FUNCTION_2_9();
      __swift_destroy_boxed_opaque_existential_0(v89);
      return 0;
    }
  }

  else
  {
    sub_2684EB7C8(v89, &qword_280282BE0, &unk_26856D8C0);
  }

  if (sub_268565808())
  {
    goto LABEL_6;
  }

  if (sub_26856596C() & 1) != 0 || (sub_268565954())
  {
    sub_268567990();
    OUTLINED_FUNCTION_11_6();
    v39 = *MEMORY[0x277D5BBD0];
    v40 = OUTLINED_FUNCTION_8_6();
    v41(v40);
    v42 = *MEMORY[0x277D5B950];
    v43 = OUTLINED_FUNCTION_4_6();
    v44(v43);
    v38 = 2;
    v86 = 2;
    v85 = 0;
  }

  else
  {
    if (sub_26856563C())
    {
      sub_268567990();
      OUTLINED_FUNCTION_11_6();
      v53 = *MEMORY[0x277D5BBF8];
      v54 = OUTLINED_FUNCTION_8_6();
      v55(v54);
      v56 = *MEMORY[0x277D5B950];
      v57 = OUTLINED_FUNCTION_4_6();
      v58(v57);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_6_6(4, v59, v60, v61, v62, v63, v64, v65, v85, v86);
      OUTLINED_FUNCTION_12_7();

      OUTLINED_FUNCTION_2_9();
      __swift_destroy_boxed_opaque_existential_0(v89);
      return 3;
    }

    sub_2685683B0();
    if (v90)
    {
      sub_268568440();
      if (OUTLINED_FUNCTION_25_1())
      {

        sub_268567990();
        OUTLINED_FUNCTION_11_6();
        v66 = *MEMORY[0x277D5BBF8];
        v67 = OUTLINED_FUNCTION_8_6();
        v68(v67);
        v69 = *MEMORY[0x277D5B950];
        v70 = OUTLINED_FUNCTION_4_6();
        v71(v70);
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_6_6(5, v72, v73, v74, v75, v76, v77, v78, v85, v86);
        OUTLINED_FUNCTION_12_7();

        OUTLINED_FUNCTION_2_9();
        __swift_destroy_boxed_opaque_existential_0(v89);
        return 4;
      }
    }

    else
    {
      sub_2684EB7C8(v89, &qword_280282BE0, &unk_26856D8C0);
    }

    if ((sub_268565820() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_9();
      return 5;
    }

    sub_268567990();
    OUTLINED_FUNCTION_11_6();
    v79 = *MEMORY[0x277D5BC08];
    v80 = OUTLINED_FUNCTION_8_6();
    v81(v80);
    v82 = *MEMORY[0x277D5B950];
    v83 = OUTLINED_FUNCTION_4_6();
    v84(v83);
    OUTLINED_FUNCTION_9_7();
    v38 = 1;
  }

  OUTLINED_FUNCTION_6_6(1, v45, v46, v47, v48, v49, v50, v51, v85, v86);
  OUTLINED_FUNCTION_12_7();

  OUTLINED_FUNCTION_2_9();
  __swift_destroy_boxed_opaque_existential_0(v89);
  return v38;
}

void *sub_2684FB338()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  v2 = v0[8];

  return v0;
}

uint64_t sub_2684FB368()
{
  sub_2684FB338();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_2684FB3C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2684FB45C;

  return sub_2684F8CEC(a2);
}

uint64_t sub_2684FB45C(char a1)
{
  OUTLINED_FUNCTION_9();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_2684FB560()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB458;

  return sub_2684F8D74();
}

uint64_t sub_2684FB5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B460] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2684DB458;

  return MEMORY[0x2821B9D48](a1, a2, a3);
}

uint64_t sub_2684FB6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B468] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2684DB458;

  return MEMORY[0x2821B9D50](a1, a2, a3);
}

uint64_t sub_2684FB760()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB128;

  return sub_2684F9DD0();
}

uint64_t sub_2684FB7F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB458;

  return sub_2684FA390();
}

unint64_t sub_2684FB88C()
{
  result = qword_280282DF8;
  if (!qword_280282DF8)
  {
    type metadata accessor for NotificationNLv3Intent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282DF8);
  }

  return result;
}

unint64_t sub_2684FB8E4()
{
  result = qword_280282F38;
  if (!qword_280282F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282F38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RNPromptStrategyErrors(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2684FB9D4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2684FBA10()
{
  result = qword_280282F40;
  if (!qword_280282F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282F40);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_9()
{

  return sub_2684EB8E0(v0, type metadata accessor for NotificationNLv4Intent);
}

uint64_t OUTLINED_FUNCTION_4_6()
{
  v2 = *(v0 + 104);
  result = *(v1 - 136);
  v4 = *(v1 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_6(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10)
{

  return sub_2684EBB74(a1, 9, v11, v10, 8, 0, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_8_6()
{
  v2 = *(v0 + 104);
  result = *(v1 - 144);
  v4 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_6()
{
  v1 = *(v0 - 88);
  __swift_project_boxed_opaque_existential_1((v0 - 120), *(v0 - 96));

  return sub_268567A20();
}

uint64_t OUTLINED_FUNCTION_12_7()
{

  return sub_2685679A0();
}

void OUTLINED_FUNCTION_17_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_19_2()
{
  v2 = v0[44];
  v1 = v0[45];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[39];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[32];
  v9 = v0[29];
}

uint64_t OUTLINED_FUNCTION_23_2()
{
  result = v0;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_1()
{

  return swift_dynamicCast();
}

uint64_t sub_2684FBC1C()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282F50, &qword_26856C0F0);
  return sub_268568B70();
}

uint64_t sub_2684FBC80(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_2685688F0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_2684D57FC(a1, v2 + 32);
  sub_2684D57FC(a1 + 40, v2 + 72);
  type metadata accessor for UnsupportedNotificationsCATs();
  sub_2685688E0();
  sub_2685686F0();
  sub_2684D57FC(v2 + 72, v11);
  sub_2685685F0();
  v8 = sub_2685685D0();
  sub_268516318(v11, v8);

  __swift_destroy_boxed_opaque_existential_0(v11);
  v9 = sub_268568710();
  sub_2684CC8D4(a1);
  *(v3 + 112) = v9;
  *(v3 + 120) = a2;
  return v3;
}

uint64_t sub_2684FBDB4()
{
  OUTLINED_FUNCTION_5();
  v1[14] = v0;
  v2 = sub_2685679B0();
  v1[15] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[16] = v3;
  v5 = *(v4 + 64) + 15;
  v1[17] = swift_task_alloc();
  v6 = sub_268567B60();
  v1[18] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[19] = v7;
  v9 = *(v8 + 64) + 15;
  v1[20] = swift_task_alloc();
  v10 = sub_268567D90();
  v1[21] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[22] = v11;
  v13 = *(v12 + 64) + 15;
  v1[23] = swift_task_alloc();
  v14 = sub_2685689F0();
  v1[24] = v14;
  OUTLINED_FUNCTION_2_4(v14);
  v1[25] = v15;
  v17 = *(v16 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684FBF70, 0, 0);
}

uint64_t sub_2684FBF70()
{
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[14];
  v5 = __swift_project_value_buffer(v2, qword_28028B348);
  v0[28] = v5;
  v6 = *(v3 + 16);
  v0[29] = v6;
  v0[30] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_2685689E0();
  v8 = sub_268568DC0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  if (v9)
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = *(v10 + 120);

    _os_log_impl(&dword_2684CA000, v7, v8, "RNReplyFollowupAction run | presented unsupported dialog for isWatchSupported: %{BOOL}d when user attempted to reply to a notification", v11, 8u);
    OUTLINED_FUNCTION_2();
  }

  else
  {
    v12 = v0[14];
  }

  v13 = v0[27];
  v14 = v0[24];
  v15 = v0[25];
  v16 = v0[14];
  v17 = *(v15 + 8);
  v0[31] = v17;
  v0[32] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v14);
  v18 = *(v16 + 112);
  v19 = *(v16 + 120);
  v20 = swift_task_alloc();
  v0[33] = v20;
  *v20 = v0;
  v20[1] = sub_2684FC14C;
  v21 = v0[23];

  return sub_268532D40(v21, v19);
}

uint64_t sub_2684FC14C()
{
  OUTLINED_FUNCTION_5();
  v2 = *(*v1 + 264);
  v3 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  *(v5 + 272) = v0;

  if (v0)
  {
    v6 = sub_2684FC5DC;
  }

  else
  {
    v6 = sub_2684FC254;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2684FC254()
{
  v1 = v0[14];
  v2 = sub_26851C004(v0[23], v1 + 9);
  v0[35] = v2;
  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  v5 = *(MEMORY[0x277D5BFB8] + 4);
  v6 = swift_task_alloc();
  v0[36] = v6;
  v7 = sub_2684E0120();
  *v6 = v0;
  v6[1] = sub_2684FC344;

  return MEMORY[0x2821BB6A0](v2, v3, v7, v4);
}

uint64_t sub_2684FC344()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *(*v1 + 288);
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v7 + 296) = v0;

  if (v0)
  {
    v8 = sub_2684FC818;
  }

  else
  {

    v8 = sub_2684FC454;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void *sub_2684FCA7C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v2 = v0[14];

  return v0;
}

uint64_t sub_2684FCAB4()
{
  sub_2684FCA7C();

  return MEMORY[0x2821FE8D8](v0, 121, 7);
}

uint64_t sub_2684FCB0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DFF1C;

  return sub_2684FBDB4();
}

uint64_t sub_2684FCC24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RNReplyFollowupAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_10()
{
  v9 = v0[27];
  v10 = v0[26];
  v11 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];

  return sub_268567990();
}

uint64_t OUTLINED_FUNCTION_4_7()
{
  v5 = v0[31];
  v6 = v0[32];
  v2 = v0[26];
  v3 = v0[24];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_5_9()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[24];
  return v0[26];
}

uint64_t OUTLINED_FUNCTION_6_7(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10)
{

  return sub_2684EBB74(a1, a2, v11, v10, 8, a6, a7, 0, a9, a10);
}

id OUTLINED_FUNCTION_15_4(float a1)
{
  *v3 = a1;
  *(v2 + 104) = v1;

  return v1;
}

uint64_t sub_2684FCD68()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282F70, &qword_26856C228);
  return sub_268568B70();
}

void *sub_2684FCDCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2685688F0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v2[3] = 0;
  v2[2] = 0;
  v8 = v2 + 2;
  sub_2684D57FC(a2, (v2 + 4));
  sub_2684D57FC(a2 + 40, (v2 + 9));
  type metadata accessor for ReadNotificationsCATs();
  sub_2685688E0();
  sub_2685686F0();
  sub_2684D57FC((v2 + 9), v15);
  sub_2685685F0();
  v9 = sub_2685685D0();
  sub_268516318(v15, v9);

  __swift_destroy_boxed_opaque_existential_0(v15);
  v2[14] = sub_268568710();
  v2[15] = a1;
  sub_2684CC878(a2, (v2 + 16));
  sub_2684CC878(a2, v15);
  type metadata accessor for RNReadNotificationAction();
  swift_allocObject();

  v11 = sub_26851C2B8(v10, v15);
  sub_2684CC8D4(a2);
  v12 = sub_2684FDFA0(&qword_280282F68, 255, type metadata accessor for RNReadNotificationAction);
  swift_beginAccess();
  v13 = *v8;
  *v8 = v11;
  v3[3] = v12;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_2684FCFAC()
{
  v1[3] = v0;
  v2 = sub_268568810();
  v1[4] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[5] = v3;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_268567D90();
  v1[7] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[8] = v7;
  v9 = *(v8 + 64) + 15;
  v1[9] = swift_task_alloc();
  v10 = sub_2685689F0();
  v1[10] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[11] = v11;
  v13 = *(v12 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684FD124, 0, 0);
}

uint64_t sub_2684FD124()
{
  v46 = v0;
  v1 = *(v0[3] + 120);
  sub_2684F42A8();
  v3 = v2;
  v4 = sub_2684F4060();
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);

    v1 = sub_2684DEAF0(v5);

    if (qword_280282960 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v6 = v1;
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[11];
  v10 = __swift_project_value_buffer(v8, qword_28028B348);
  v0[15] = v10;
  v11 = *(v9 + 16);
  v0[16] = v11;
  v0[17] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v7, v10, v8);

  v12 = sub_2685689E0();
  v13 = sub_268568DC0();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[14];
  v17 = v0[10];
  v16 = v0[11];
  if (v14)
  {
    swift_slowAlloc();
    v45 = OUTLINED_FUNCTION_6_8();
    *v15 = 136315394;
    v18 = MEMORY[0x26D61BE70](v3, MEMORY[0x277D837D0]);
    v20 = sub_2684EABEC(v18, v19, &v45);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v6;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v21, v22, v23, v24, v25, 0x16u);
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_2();

    v26 = *(v16 + 8);
    v26(v15, v17);
  }

  else
  {

    v26 = *(v16 + 8);
    v26(v15, v17);
  }

  v0[18] = v26;
  v27 = v0[3];
  v28 = *(v27 + 112);
  v29 = *(v3 + 16);
  if (v29)
  {
    v44 = *(v27 + 112);
    v30 = v0[5];
    v45 = MEMORY[0x277D84F90];
    sub_2684DD000(0, v29, 0);
    v31 = v3;
    v32 = v45;
    v33 = (v31 + 40);
    do
    {
      v34 = v0[6];
      v35 = *(v33 - 1);
      v36 = *v33;

      sub_268568BB0();

      v45 = v32;
      v38 = *(v32 + 16);
      v37 = *(v32 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_2684DD000(v37 > 1, v38 + 1, 1);
        v32 = v45;
      }

      v39 = v0[6];
      v40 = v0[4];
      *(v32 + 16) = v38 + 1;
      (*(v30 + 32))(v32 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v38, v39, v40);
      v33 += 2;
      --v29;
    }

    while (v29);
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v0[19] = v32;
  v41 = swift_task_alloc();
  v0[20] = v41;
  *v41 = v0;
  v41[1] = sub_2684FD4B4;
  v42 = v0[9];

  return sub_26850DA30(v42, v32, *&v6, 0);
}

uint64_t sub_2684FD4B4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v4 = v3;
  v5 = *(v2 + 160);
  *v4 = *v1;
  *(v3 + 168) = v0;

  v6 = *(v2 + 152);

  if (v0)
  {
    v7 = sub_2684FD95C;
  }

  else
  {
    v7 = sub_2684FD5E4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2684FD5E4()
{
  v1 = v0[3];
  v2 = sub_26851C004(v0[9], v1 + 9);
  v0[22] = v2;
  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  v5 = *(MEMORY[0x277D5BFB8] + 4);
  v6 = swift_task_alloc();
  v0[23] = v6;
  v7 = sub_2684E0120();
  *v6 = v0;
  v6[1] = sub_2684FD6D4;

  return MEMORY[0x2821BB6A0](v2, v3, v7, v4);
}

uint64_t sub_2684FD6D4(void *a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_9_8();
  *v6 = v5;
  v8 = *(v7 + 184);
  v9 = *v2;
  OUTLINED_FUNCTION_9_8();
  *v10 = v9;
  *(v11 + 192) = v1;

  if (v1)
  {
    v12 = sub_2684FDB04;
  }

  else
  {

    v12 = sub_2684FD7E8;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2684FD7E8()
{
  v1 = *(v0 + 136);
  (*(v0 + 128))(*(v0 + 104), *(v0 + 120), *(v0 + 80));
  v2 = sub_2685689E0();
  v3 = sub_268568DC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2684CA000, v2, v3, "RNReadAppDescriptionAction run | read app description", v4, 2u);
    OUTLINED_FUNCTION_2();
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 144);
  v7 = *(v0 + 104);
  v8 = *(v0 + 88);
  v15 = *(v0 + 112);
  v16 = *(v0 + 96);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v17 = *(v0 + 48);

  v6(v7, v9);
  (*(v11 + 8))(v10, v12);

  OUTLINED_FUNCTION_9_1();

  return v13();
}

uint64_t sub_2684FD95C()
{
  v26 = v0;
  v3 = v0[21];
  v4 = OUTLINED_FUNCTION_4_8();
  v5(v4);
  v6 = v3;
  v7 = sub_2685689E0();
  v8 = sub_268568DE0();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_3_8();
    v25 = OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_10_3(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v9 = sub_268568B70();
    v11 = sub_2684EABEC(v9, v10, &v25);

    *(v2 + 4) = v11;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_2();

    v24(v23, v1);
  }

  else
  {
    v17 = v0[18];
    v19 = v0[11];
    v18 = v0[12];
    v20 = v0[10];

    v17(v18, v20);
  }

  OUTLINED_FUNCTION_7_10();

  OUTLINED_FUNCTION_9_1();

  return v21();
}

uint64_t sub_2684FDB04()
{
  v29 = v0;
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 192);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  v9 = v6;
  v10 = sub_2685689E0();
  v11 = sub_268568DE0();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_3_8();
    v28 = OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_10_3(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v12 = sub_268568B70();
    v14 = sub_2684EABEC(v12, v13, &v28);

    *(v2 + 4) = v14;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_2();

    v27(v26, v1);
  }

  else
  {
    v20 = *(v0 + 144);
    v22 = *(v0 + 88);
    v21 = *(v0 + 96);
    v23 = *(v0 + 80);

    v20(v21, v23);
  }

  OUTLINED_FUNCTION_7_10();

  OUTLINED_FUNCTION_9_1();

  return v24();
}

void *sub_2684FDCD4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v2 = v0[14];

  v3 = v0[15];

  sub_2684CC8D4((v0 + 16));
  return v0;
}

uint64_t sub_2684FDD1C()
{
  sub_2684FDCD4();

  return MEMORY[0x2821FE8D8](v0, 256, 7);
}

uint64_t sub_2684FDD74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684FDE00;

  return sub_2684FCFAC();
}

uint64_t sub_2684FDE00()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;

  OUTLINED_FUNCTION_9_1();

  return v4();
}

uint64_t sub_2684FDFA0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_1_7()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D61CB30);
}

uint64_t OUTLINED_FUNCTION_3_8()
{
  v2 = v0[12];
  v5 = v0[18];
  v3 = v0[10];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_4_8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[10];
  return v0[12];
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_10()
{
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[6];

  return swift_willThrow();
}

id OUTLINED_FUNCTION_10_3(float a1)
{
  *v3 = a1;
  *(v2 + 16) = v1;

  return v1;
}

uint64_t sub_2684FE0C8()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282F88, &qword_26856C348);
  return sub_268568B70();
}

uint64_t sub_2684FE12C()
{
  OUTLINED_FUNCTION_5();
  v1[24] = v0;
  v2 = sub_2685679B0();
  v1[25] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[26] = v3;
  v5 = *(v4 + 64) + 15;
  v1[27] = swift_task_alloc();
  v6 = sub_268567B60();
  v1[28] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[29] = v7;
  v9 = *(v8 + 64) + 15;
  v1[30] = swift_task_alloc();
  v10 = sub_2685689F0();
  v1[31] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[32] = v11;
  v13 = *(v12 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684FE2AC, 0, 0);
}

uint64_t sub_2684FE2AC()
{
  v1 = *(*(v0 + 192) + 32);
  v2 = sub_268503B1C();
  *(v0 + 296) = v2;
  if (!v2)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v6 = *(v0 + 272);
    v7 = *(v0 + 256);
    __swift_project_value_buffer(*(v0 + 248), qword_28028B348);
    v8 = OUTLINED_FUNCTION_12_2();
    v9(v8);
    v10 = sub_2685689E0();
    v11 = sub_268568DE0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2684CA000, v10, v11, "ANPlayNotificationSoundAction run | missing the next notification, not playing notification sound", v12, 2u);
      OUTLINED_FUNCTION_2();
    }

    v13 = *(v0 + 272);
    v14 = *(v0 + 248);
    v15 = *(v0 + 256);
    v17 = *(v0 + 232);
    v16 = *(v0 + 240);
    v18 = *(v0 + 216);
    v19 = *(v0 + 224);
    v20 = *(v0 + 208);
    v31 = *(v0 + 200);

    (*(v15 + 8))(v13, v14);
    sub_268567990();
    v21 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_268567A20();
    (*(v17 + 104))(v16, *MEMORY[0x277D5BC00], v19);
    (*(v20 + 104))(v18, *MEMORY[0x277D5B8D0], v31);
    *(v0 + 336) = 1;
    sub_268568B70();
    v22 = OUTLINED_FUNCTION_1_8();
    sub_2684EBB74(v22, v23, v16, v18, 8, v24, v25, 0, v29, v30);
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_2684FF3E4();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_3_9();

    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_59();

    __asm { BRAA            X1, X16 }
  }

  v3 = swift_task_alloc();
  *(v0 + 304) = v3;
  *v3 = v0;
  v3[1] = sub_2684FE59C;
  OUTLINED_FUNCTION_59();

  return sub_268503EE0();
}

uint64_t sub_2684FE59C()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v5 = *(v4 + 304);
  *v3 = *v0;
  *(v2 + 338) = v6;

  return MEMORY[0x2822009F8](sub_2684FE694, 0, 0);
}

uint64_t sub_2684FE694()
{
  if (*(v0 + 338) == 1)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v1 = *(v0 + 288);
    v2 = *(v0 + 256);
    __swift_project_value_buffer(*(v0 + 248), qword_28028B348);
    v3 = OUTLINED_FUNCTION_12_2();
    v4(v3);
    v5 = sub_2685689E0();
    v6 = sub_268568DE0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2684CA000, v5, v6, "ANPlayNotificationSoundAction run | duplicate notification, not playing notification sound", v7, 2u);
      OUTLINED_FUNCTION_2();
    }

    v8 = *(v0 + 288);
    v9 = *(v0 + 248);
    v10 = *(v0 + 256);
    v11 = *(v0 + 232);
    v12 = *(v0 + 240);
    v13 = *(v0 + 216);
    v14 = *(v0 + 224);
    v15 = *(v0 + 208);
    v44 = *(v0 + 200);
    v45 = *(v0 + 296);

    (*(v10 + 8))(v8, v9);
    sub_268567990();
    v16 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    sub_268567A20();
    (*(v11 + 104))(v12, *MEMORY[0x277D5BC00], v14);
    (*(v15 + 104))(v13, *MEMORY[0x277D5B8D0], v44);
    *(v0 + 337) = 0;
    sub_268568B70();
    v17 = OUTLINED_FUNCTION_1_8();
    sub_2684EBB74(v17, v18, v12, v13, 8, v19, v20, 0, v42, v43);
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    sub_2684FF3E4();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_3_9();

    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_59();

    __asm { BRAA            X1, X16 }
  }

  v24 = *(v0 + 296);
  v25 = *(v0 + 192);
  v26 = [objc_allocWithZone(MEMORY[0x277D47AE8]) init];
  *(v0 + 312) = v26;
  v27 = *(v24 + 32);
  v28 = *(v24 + 40);

  v29 = sub_268568B10();

  [v26 setNotificationId_];

  v30 = *MEMORY[0x277D48758];
  v31 = sub_268568B20();
  sub_2684FF438(v31, v32, v26);
  v33 = v25[9];
  __swift_project_boxed_opaque_existential_1(v25 + 5, v25[8]);
  v34 = *(MEMORY[0x277D5BFB8] + 4);
  v35 = swift_task_alloc();
  *(v0 + 320) = v35;
  sub_2684E0120();
  *v35 = v0;
  v35[1] = sub_2684FEA2C;
  OUTLINED_FUNCTION_59();

  return MEMORY[0x2821BB6A0](v36, v37, v38, v39);
}

uint64_t sub_2684FEA2C()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v6 = v5;
  v8 = *(v7 + 320);
  v9 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v10 = v9;
  *(v11 + 328) = v0;

  if (v0)
  {
    v12 = sub_2684FED9C;
  }

  else
  {

    v12 = sub_2684FEB3C;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2684FEB3C()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[35];
  v2 = v0[32];
  __swift_project_value_buffer(v0[31], qword_28028B348);
  v3 = OUTLINED_FUNCTION_12_2();
  v4(v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "PlayNotificationSoundAction run | played notification sound", v7, 2u);
    OUTLINED_FUNCTION_2();
  }

  v24 = v0[39];
  v25 = v0[37];
  v8 = v0[35];
  v26 = v0[36];
  v27 = v0[34];
  v9 = v0[32];
  v28 = v0[33];
  v10 = v0[30];
  v11 = v0[31];
  v12 = v0[28];
  v13 = v0[29];
  v15 = v0[26];
  v14 = v0[27];
  v23 = v0[25];

  (*(v9 + 8))(v8, v11);
  sub_268567990();
  v16 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  sub_268567A20();
  (*(v13 + 104))(v10, *MEMORY[0x277D5BC10], v12);
  (*(v15 + 104))(v14, *MEMORY[0x277D5B950], v23);
  v17 = OUTLINED_FUNCTION_1_8();
  sub_2684EBB74(v17, v18, v10, v14, 8, 0, 0, 0, v21, v22);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  OUTLINED_FUNCTION_9_1();

  return v19();
}

uint64_t sub_2684FED9C()
{
  v43 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[41];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v5 = __swift_project_value_buffer(v4, qword_28028B348);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2685689E0();
  v8 = sub_268568DE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[41];
    v11 = v0[32];
    v10 = v0[33];
    v12 = v0[31];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v42 = v14;
    *v13 = 136315138;
    v0[23] = v9;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v16 = sub_268568B70();
    v18 = sub_2684EABEC(v16, v17, &v42);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2684CA000, v7, v8, "ANPlayNotificationSoundAction run | error: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v20 = v0[32];
    v19 = v0[33];
    v21 = v0[31];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[41];
  v40 = v0[39];
  v41 = v0[37];
  v24 = v0[29];
  v23 = v0[30];
  v25 = v0[27];
  v26 = v0[28];
  v28 = v0[25];
  v27 = v0[26];
  sub_268567990();
  v39 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_268567A20();
  (*(v24 + 104))(v23, *MEMORY[0x277D5BC00], v26);
  (*(v27 + 104))(v25, *MEMORY[0x277D5B8D0], v28);
  v0[22] = v22;
  v29 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();
  v30 = OUTLINED_FUNCTION_1_8();
  sub_2684EBB74(v30, v31, v23, v25, 8, v32, v33, 0, v37, v38);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  swift_willThrow();

  v34 = v0[41];
  OUTLINED_FUNCTION_3_9();

  OUTLINED_FUNCTION_9_1();

  return v35();
}

uint64_t sub_2684FF11C(char a1)
{
  sub_268569260();
  MEMORY[0x26D61C3F0](a1 & 1);
  return sub_268569280();
}

uint64_t sub_2684FF1A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684FF230;

  return sub_2684FE12C();
}

uint64_t sub_2684FF230()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;

  OUTLINED_FUNCTION_9_1();

  return v4();
}

uint64_t sub_2684FF3A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANPlayNotificationSoundAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2684FF3E4()
{
  result = qword_280282F80;
  if (!qword_280282F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282F80);
  }

  return result;
}

void sub_2684FF438(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268568B10();

  [a3 setNotificationType_];
}

uint64_t getEnumTagSinglePayload for ANPlayNotificationSoundAction.ANPlayNotificationSoundActionErrors(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ANPlayNotificationSoundAction.ANPlayNotificationSoundActionErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2684FF5F0);
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

unint64_t sub_2684FF638()
{
  result = qword_280282F90;
  if (!qword_280282F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282F90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_9()
{
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[30];
  v7 = v0[27];
}

uint64_t sub_2684FF6C4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = v53 - v7;
  v8 = sub_2685689F0();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (v53 - v17);
  sub_268568910();

  v53[3] = a1;
  sub_268568900();
  v19 = sub_268567D70();

  if (!v19)
  {
LABEL_14:

    if (qword_280282960 != -1)
    {
LABEL_33:
      OUTLINED_FUNCTION_0_0();
    }

    v38 = __swift_project_value_buffer(v8, qword_28028B348);
    (*(v11 + 16))(v18, v38, v8);
    v39 = sub_2685689E0();
    v40 = sub_268568DC0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2684CA000, v39, v40, "SirikitApp unsuccessfully instantiated, since SAAppInfoFactory was unable to create the app info", v41, 2u);
      MEMORY[0x26D61CB30](v41, -1, -1);
    }

    (*(v11 + 8))(v18, v8);
    return 0;
  }

  v53[1] = v2;
  v53[2] = a2;
  v20 = sub_268500310(v19);
  if (!v20)
  {

    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v42 = __swift_project_value_buffer(v8, qword_28028B348);
    (*(v11 + 16))(v16, v42, v8);
    v43 = sub_2685689E0();
    v44 = sub_268568DC0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2684CA000, v43, v44, "SirikitApp unsuccessfully instantiated, since appInfo does not contain app name map", v45, 2u);
      MEMORY[0x26D61CB30](v45, -1, -1);
    }

    (*(v11 + 8))(v16, v8);
    return 0;
  }

  v21 = v20;
  v22 = *(v20 + 16);
  if (v22)
  {
    v53[0] = v19;
    v61 = MEMORY[0x277D84F90];
    sub_268569040();
    v24 = sub_268500374(v21);
    v25 = v21 + 64;
    v26 = v22 - 1;
    v54 = v21 + 64;
    v27 = v55;
    if ((v24 & 0x8000000000000000) == 0)
    {
      while (v24 < 1 << *(v21 + 32))
      {
        if ((*(v25 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v23 != *(v21 + 36))
        {
          goto LABEL_29;
        }

        v58 = 1 << v24;
        v59 = v24 >> 6;
        v56 = v26;
        v57 = v23;
        v28 = (*(v21 + 48) + 16 * v24);
        v30 = *v28;
        v29 = v28[1];
        v31 = (*(v21 + 56) + 16 * v24);
        v11 = v31[1];
        v60 = *v31;
        v32 = sub_268568890();
        v33 = *(v32 + 48);
        v34 = *(v32 + 52);
        swift_allocObject();

        sub_268568880();
        sub_268568BB0();
        v35 = sub_268568810();
        __swift_storeEnumTagSinglePayload(v27, 0, 1, v35);
        v8 = sub_268568860();

        v18 = &qword_280282AF0;
        sub_2684D199C(v27, &qword_280282AF0, &qword_26856A1E0);
        sub_268568BB0();
        __swift_storeEnumTagSinglePayload(v27, 0, 1, v35);
        sub_268568850();

        sub_2684D199C(v27, &qword_280282AF0, &qword_26856A1E0);
        sub_268568870();

        sub_268569020();
        v36 = *(v61 + 16);
        sub_268569050();
        sub_268569060();
        sub_268569030();
        if (v24 >= -(-1 << *(v21 + 32)))
        {
          goto LABEL_30;
        }

        v25 = v54;
        if ((*(v54 + 8 * v59) & v58) == 0)
        {
          goto LABEL_31;
        }

        if (v57 != *(v21 + 36))
        {
          goto LABEL_32;
        }

        v37 = sub_268568F50();
        if (!v56)
        {

          v19 = v53[0];
          goto LABEL_26;
        }

        v24 = v37;
        v23 = *(v21 + 36);
        v26 = v56 - 1;
        if (v37 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_26:
  v47 = sub_268568780();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  sub_268568770();
  v50 = v55;
  sub_268568BB0();

  v51 = sub_268568810();
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
  sub_268568760();

  sub_2684D199C(v50, &qword_280282AF0, &qword_26856A1E0);
  sub_268568750();

  v46 = sub_268568790();

  return v46;
}

uint64_t static SirikitApp.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_268568810();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282F98, qword_26856C420);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v35 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v35 - v25;
  v35[0] = a1;
  sub_268568740();
  v35[1] = a2;
  sub_268568740();
  v27 = *(v13 + 56);
  sub_2684D4298(v26, v16);
  sub_2684D4298(v24, &v16[v27]);
  OUTLINED_FUNCTION_2_11(v16);
  if (v28)
  {
    sub_2684D199C(v24, &qword_280282AF0, &qword_26856A1E0);
    sub_2684D199C(v26, &qword_280282AF0, &qword_26856A1E0);
    OUTLINED_FUNCTION_2_11(&v16[v27]);
    if (v28)
    {
      sub_2684D199C(v16, &qword_280282AF0, &qword_26856A1E0);
LABEL_12:
      v32 = sub_268568730();
      v33 = sub_268568730();
      v29 = sub_2685000C0(v32, v33);

      return v29 & 1;
    }

    goto LABEL_9;
  }

  sub_2684D4298(v16, v21);
  OUTLINED_FUNCTION_2_11(&v16[v27]);
  if (v28)
  {
    sub_2684D199C(v24, &qword_280282AF0, &qword_26856A1E0);
    sub_2684D199C(v26, &qword_280282AF0, &qword_26856A1E0);
    (*(v7 + 8))(v21, v4);
LABEL_9:
    sub_2684D199C(v16, &qword_280282F98, qword_26856C420);
    goto LABEL_10;
  }

  (*(v7 + 32))(v11, &v16[v27], v4);
  sub_268500294();
  v30 = sub_268568B00();
  v31 = *(v7 + 8);
  v31(v11, v4);
  sub_2684D199C(v24, &qword_280282AF0, &qword_26856A1E0);
  sub_2684D199C(v26, &qword_280282AF0, &qword_26856A1E0);
  v31(v21, v4);
  sub_2684D199C(v16, &qword_280282AF0, &qword_26856A1E0);
  if (v30)
  {
    goto LABEL_12;
  }

LABEL_10:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_2685000C0(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_2685690A0();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != result)
  {
    v19 = 0;
    return v19 & 1;
  }

  if (!v5)
  {
    goto LABEL_30;
  }

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  v21 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 < 0)
  {
    v7 = v3;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v20 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_30:
    v19 = 1;
    return v19 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = sub_2685688A0();
    v22 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = v5;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v5 = sub_2685690A0();
        goto LABEL_3;
      }

      if (v11)
      {
        v17 = MEMORY[0x26D61C170](v13 - 4, v22);
        if (v12)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v15 >= *(v21 + 16))
        {
          goto LABEL_33;
        }

        v17 = *(v22 + 8 * v13);

        if (v12)
        {
LABEL_21:
          v18 = MEMORY[0x26D61C170](v13 - 4, a2);
          goto LABEL_26;
        }
      }

      if (v15 >= *(v20 + 16))
      {
        goto LABEL_34;
      }

      v18 = *(a2 + 8 * v13);

LABEL_26:
      v19 = static SirikitLocalizedAppName.== infix(_:_:)(v17, v18);

      if (v19)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v19 & 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_268500294()
{
  result = qword_280282FA0;
  if (!qword_280282FA0)
  {
    sub_268568810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282FA0);
  }

  return result;
}

uint64_t sub_268500310(void *a1)
{
  v1 = [a1 appNameMap];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268568AB0();

  return v3;
}

uint64_t sub_268500374(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_268568F40();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2685003D8(uint64_t a1)
{
  result = sub_268567E60();
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    v5 = *(a1 + 88);
    result = type metadata accessor for AppPromptFlow.State();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2685004B8(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = *v1;
  v3 = sub_2685689F0();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_5();
  v11 = v10 - v9;
  v12 = *(v2 + 80);
  v39 = *(v2 + 88);
  v13 = type metadata accessor for AppPromptFlow.State();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_5();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v36 - v23;
  sub_268500BBC(&v36 - v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802830E0, &unk_26856C5A0);
    OUTLINED_FUNCTION_17_2(v25);
    (*(v26 + 32))(v40, v24);
  }

  else
  {
    v38 = v12;
    (*(v16 + 8))(v24, v13);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v27 = __swift_project_value_buffer(v3, qword_28028B348);
    (*(v6 + 16))(v11, v27, v3);

    v28 = sub_2685689E0();
    v29 = sub_268568DE0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v30 = 136315138;
      sub_268500BBC(v21);
      swift_getWitnessTable();
      v31 = sub_268568B80();
      v33 = sub_2684EABEC(v31, v32, &v41);

      *(v30 + 4) = v33;
      _os_log_impl(&dword_2684CA000, v28, v29, "SkipPromptFlow exitValue | SkipPromptFlow is in an invalid state: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();
    }

    (*(v6 + 8))(v11, v3);
    type metadata accessor for AppPromptFlow.ContinuationPromptFlowError();
    swift_getWitnessTable();
    v34 = swift_allocError();
    sub_268500BBC(v35);
    sub_268567D30();
  }
}

uint64_t sub_268500874()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for AppPromptFlow.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = sub_2685689F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_28028B348);
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_2685689E0();
  v16 = sub_268568DC0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v17;
    v32 = swift_slowAlloc();
    v33 = v32;
    *v17 = 136315138;
    v18 = *v1;
    v31 = v16;
    v19 = *(v18 + 120);
    swift_beginAccess();
    (*(v5 + 16))(v8, &v1[v19], v4);
    v20 = sub_2685019C0(v4);
    v21 = v4;
    v23 = v22;

    (*(v5 + 8))(v8, v21);
    v24 = sub_2684EABEC(v20, v23, &v33);

    v25 = v30;
    *(v30 + 1) = v24;
    v26 = v25;
    _os_log_impl(&dword_2684CA000, v15, v31, "SkipPromptFlow state | SkipPromptFlow transitioned to state %s", v25, 0xCu);
    v27 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x26D61CB30](v27, -1, -1);
    MEMORY[0x26D61CB30](v26, -1, -1);
  }

  else
  {
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_268500BBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3_10();
  v5 = *(v4 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_3_10();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_3_10();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for AppPromptFlow.State();
  OUTLINED_FUNCTION_17_2(v10);
  return (*(v11 + 16))(a1, &v1[v5]);
}

uint64_t sub_268500C68(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3_10();
  v5 = *(v4 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_3_10();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_3_10();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for AppPromptFlow.State();
  v11 = *(v10 - 8);
  (*(v11 + 24))(&v1[v5], a1, v10);
  swift_endAccess();
  sub_268500874();
  return (*(v11 + 8))(a1, v10);
}

uint64_t sub_268500D60()
{
  v1 = *v0;
  OUTLINED_FUNCTION_4_9();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_4_9();
  v5 = *(v4 + 88);
  type metadata accessor for AppPromptFlow();
  swift_getWitnessTable();
  return sub_268567900();
}

uint64_t sub_268500DFC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4_9();
  v2[9] = *(v4 + 80);
  OUTLINED_FUNCTION_4_9();
  v2[10] = *(v5 + 88);
  v6 = type metadata accessor for AppPromptFlow.State();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268500EE8, 0, 0);
}

uint64_t sub_268500EE8()
{
  v1 = v0[11];
  v2 = v0[8];
  sub_268500BBC(v0[13]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    v6 = v0[7];
    sub_268567C40();
    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v7 = v0[13];
    v8 = v0[9];
    v9 = v0[10];
    v11 = v0[7];
    v10 = v0[8];
    v12 = *v7;
    sub_2684D8314((v7 + 1), (v0 + 2));
    v13 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_268567860();
    sub_268501044();
    sub_268567C10();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v14 = v0[13];

  v15 = v0[1];

  return v15();
}

uint64_t sub_268501084(uint64_t a1)
{
  v2 = v1;
  v107 = a1;
  v3 = *v1;
  OUTLINED_FUNCTION_4_9();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_4_9();
  v7 = *(v6 + 88);
  v111 = type metadata accessor for AppPromptFlow.State();
  v8 = OUTLINED_FUNCTION_17_2(v111);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v110 = &v97 - v11;
  v12 = sub_2685689F0();
  v13 = OUTLINED_FUNCTION_1(v12);
  v108 = v14;
  v109 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_5();
  v105 = (v17 - v18);
  v20 = MEMORY[0x28223BE20](v19);
  v102 = &v97 - v21;
  MEMORY[0x28223BE20](v20);
  v100 = &v97 - v22;
  v106 = sub_268567E60();
  v23 = OUTLINED_FUNCTION_1(v106);
  v104 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_5();
  v99 = v28 - v27;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802830C0, &qword_26856C588);
  v29 = OUTLINED_FUNCTION_17_2(v103);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v97 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802830C8, &qword_26856C590);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  OUTLINED_FUNCTION_7_5();
  v101 = v36 - v37;
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v97 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v97 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802830D0, &qword_26856C598);
  v45 = OUTLINED_FUNCTION_1(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  v51 = &v97 - v50;
  v52 = sub_268568010();
  v53 = OUTLINED_FUNCTION_1(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_5_5();
  v60 = v59 - v58;
  (*(v47 + 16))(v51, v107, v44);
  if ((*(v47 + 88))(v51, v44) == *MEMORY[0x277D5BC38])
  {
    (*(v47 + 96))(v51, v44);
    (*(v55 + 32))(v60, v51, v52);
    sub_268568000();
    v61 = v104;
    v62 = v106;
    (*(v104 + 16))(v41, v2 + qword_280282FA8, v106);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v62);
    v63 = *(v103 + 48);
    sub_268501E60(v43, v33);
    sub_268501E60(v41, &v33[v63]);
    OUTLINED_FUNCTION_8_7(v33);
    v105 = v2;
    v107 = v43;
    v64 = v55;
    v97 = v52;
    v98 = v60;
    if (v76)
    {
      sub_2684EB7C8(v41, &qword_2802830C8, &qword_26856C590);
      OUTLINED_FUNCTION_8_7(&v33[v63]);
      v65 = v109;
      if (v76)
      {
        sub_2684EB7C8(v33, &qword_2802830C8, &qword_26856C590);
        goto LABEL_22;
      }
    }

    else
    {
      v75 = v101;
      sub_268501E60(v33, v101);
      OUTLINED_FUNCTION_8_7(&v33[v63]);
      if (!v76)
      {
        v85 = v99;
        (*(v61 + 32))(v99, &v33[v63], v62);
        sub_268501ED0();
        v86 = sub_268568B00();
        v87 = *(v61 + 8);
        v87(v85, v62);
        sub_2684EB7C8(v41, &qword_2802830C8, &qword_26856C590);
        v87(v75, v62);
        sub_2684EB7C8(v33, &qword_2802830C8, &qword_26856C590);
        v65 = v109;
        if (v86)
        {
LABEL_22:
          v77 = v108;
          if (qword_280282960 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v88 = __swift_project_value_buffer(v65, qword_28028B348);
          v79 = v100;
          (*(v77 + 16))(v100, v88, v65);
          v80 = sub_2685689E0();
          v89 = sub_268568DC0();
          if (!os_log_type_enabled(v80, v89))
          {
            v84 = 0;
            goto LABEL_28;
          }

          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_7_11(&dword_2684CA000, v90, v91, "SkipPromptFlow onResponse | User indicated that they want to read the next window.");
          v84 = 0;
          goto LABEL_26;
        }

LABEL_16:
        v77 = v108;
        if (qword_280282960 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v78 = __swift_project_value_buffer(v65, qword_28028B348);
        v79 = v102;
        (*(v77 + 16))(v102, v78, v65);
        v80 = sub_2685689E0();
        v81 = sub_268568DC0();
        if (!os_log_type_enabled(v80, v81))
        {
          v84 = 1;
LABEL_28:

          (*(v77 + 8))(v79, v65);
          v92 = v105;
          v93 = *(v105 + qword_28028B370 + 8);
          v94 = (*(v105 + qword_28028B370))(v84);
          v95 = *(v92 + qword_28028B378 + 8);
          (*(v92 + qword_28028B378))(v94);
          v96 = v110;
          sub_268567D20();
          swift_storeEnumTagMultiPayload();
          sub_268500C68(v96);
          sub_2684EB7C8(v107, &qword_2802830C8, &qword_26856C590);
          return (*(v64 + 8))(v98, v97);
        }

        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_7_11(&dword_2684CA000, v82, v83, "SkipPromptFlow onResponse | User indicated that they want to skip the next window.");
        v84 = 1;
LABEL_26:
        OUTLINED_FUNCTION_2();
        goto LABEL_28;
      }

      sub_2684EB7C8(v41, &qword_2802830C8, &qword_26856C590);
      (*(v61 + 8))(v75, v62);
      v65 = v109;
    }

    sub_2684EB7C8(v33, &qword_2802830C0, &qword_26856C588);
    goto LABEL_16;
  }

  (*(v47 + 8))(v51, v44);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v66 = v109;
  v67 = __swift_project_value_buffer(v109, qword_28028B348);
  v68 = v108;
  v69 = v105;
  (*(v108 + 16))(v105, v67, v66);
  v70 = sub_2685689E0();
  v71 = sub_268568DC0();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_2684CA000, v70, v71, "SkipPromptFlow onResponse | Received a response from the prompt flow but it did not contain a successful confirmation response. Will indicate to stop windowing.", v72, 2u);
    OUTLINED_FUNCTION_2();
  }

  (*(v68 + 8))(v69, v66);
  v112 = 1;
  v73 = v110;
  sub_268567D40();
  swift_storeEnumTagMultiPayload();
  return sub_268500C68(v73);
}

uint64_t sub_2685019C0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 8))(v5, a1);
    return 0x6574656C706D6F63;
  }

  else
  {
    v7 = *v5;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v5 + 1);
    return 0x6D6F7250646E6573;
  }
}

uint64_t *sub_268501AF8()
{
  v1 = *v0;
  v2 = qword_280282FA8;
  v3 = sub_268567E60();
  OUTLINED_FUNCTION_17_2(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + qword_28028B370 + 8);

  v6 = *(v0 + qword_28028B378 + 8);

  v7 = *(*v0 + 120);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  v10 = type metadata accessor for AppPromptFlow.State();
  OUTLINED_FUNCTION_17_2(v10);
  (*(v11 + 8))(v0 + v7);
  return v0;
}

uint64_t sub_268501BF0()
{
  sub_268501AF8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_268501C80(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802830B0, qword_26856C4E0);
  swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    sub_268501D28();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_268501D28()
{
  if (!qword_2802830B8)
  {
    v0 = sub_268567D60();
    if (!v1)
    {
      atomic_store(v0, &qword_2802830B8);
    }
  }
}

uint64_t sub_268501DA0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2684CEB80;

  return sub_268500DFC(a1);
}

uint64_t sub_268501E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802830C8, &qword_26856C590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_268501ED0()
{
  result = qword_2802830D8;
  if (!qword_2802830D8)
  {
    sub_268567E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802830D8);
  }

  return result;
}

uint64_t sub_268501F7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for AppPromptFlow.State();
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return v4;
}

uint64_t sub_268502028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for AppPromptFlow.State();

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t sub_268502074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = type metadata accessor for AppPromptFlow.State();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v9);
}

void OUTLINED_FUNCTION_7_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

id ANDirectInvocation.init(directInvocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a2;
  v3 = sub_2685689F0();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v173 = &v148 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v148 - v15);
  v17 = sub_2685675E0();
  v18 = OUTLINED_FUNCTION_1(v17);
  v174 = v19;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v24 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v175 = &v148 - v25;
  v26 = type metadata accessor for ANDirectInvocation();
  v27 = *(*(v26 - 1) + 64);
  MEMORY[0x28223BE20](v26);
  v172 = (&v148 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_268568050() == 0xD000000000000042 && 0x8000000268572340 == v29;
  if (v30)
  {
  }

  else
  {
    v31 = sub_2685691C0();

    if ((v31 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v32 = sub_268568060();
  if (!v32)
  {
LABEL_21:
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v50 = __swift_project_value_buffer(v3, qword_28028B348);
    (*(v6 + 16))(v11, v50, v3);
    v51 = sub_2685689E0();
    v52 = sub_268568DC0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2684CA000, v51, v52, "ANDirectInvocation unsuccessfully instantiated, missing non-optional values", v53, 2u);
      MEMORY[0x26D61CB30](v53, -1, -1);
    }

    v54 = sub_268568070();
    OUTLINED_FUNCTION_0_9(v54);
    (*(v55 + 8))(a1);
    (*(v6 + 8))(v11, v3);
    v56 = 1;
    v57 = v176;
    return __swift_storeEnumTagSinglePayload(v57, v56, 1, v26);
  }

  v33 = v32;
  v34 = *MEMORY[0x277D5C280];
  v35 = sub_268568B20();
  OUTLINED_FUNCTION_6_9(v35, v36);

  if (!v180)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_3_11();
  if ((OUTLINED_FUNCTION_7_12() & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  v171 = v17;
  v37 = v178;
  v169 = v177;
  v38 = *MEMORY[0x277D5C2A0];
  v39 = sub_268568B20();
  OUTLINED_FUNCTION_6_9(v39, v40);

  if (!v180)
  {
LABEL_16:

LABEL_17:

    v47 = &qword_280282BE0;
    v48 = &unk_26856D8C0;
    v49 = v179;
LABEL_18:
    sub_26850341C(v49, v47, v48);
    goto LABEL_21;
  }

  v170 = v37;
  OUTLINED_FUNCTION_3_11();
  if ((OUTLINED_FUNCTION_7_12() & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  v41 = v178;
  v167 = v177;
  v42 = *MEMORY[0x277D5C298];
  v43 = sub_268568B20();
  OUTLINED_FUNCTION_6_9(v43, v44);

  if (!v180)
  {

    sub_26850341C(v179, &qword_280282BE0, &unk_26856D8C0);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v171);
    goto LABEL_28;
  }

  v168 = v41;
  v45 = v171;
  v46 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v16, v46 ^ 1u, 1, v45);
  if (__swift_getEnumTagSinglePayload(v16, 1, v45) == 1)
  {

LABEL_28:
    v47 = &qword_280282D40;
    v48 = &qword_26856B330;
    v49 = v16;
    goto LABEL_18;
  }

  v59 = v174;
  v165 = *(v174 + 32);
  v166 = v174 + 32;
  v165(v175, v16, v45);
  v60 = *MEMORY[0x277D5C2C0];
  v61 = sub_268568B20();
  OUTLINED_FUNCTION_6_9(v61, v62);

  if (!v180)
  {
    (*(v59 + 8))(v175, v45);
LABEL_41:

    goto LABEL_16;
  }

  v63 = v45;
  v64 = sub_2684D16C0(0, &qword_280282BA8, 0x277CCABB0);
  OUTLINED_FUNCTION_3_11();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v174 + 8))(v175, v45);
LABEL_43:

    goto LABEL_19;
  }

  v161 = v64;
  v65 = v177;
  v66 = [v177 integerValue];

  v67 = *MEMORY[0x277D5C288];
  v68 = sub_268568B20();
  OUTLINED_FUNCTION_6_9(v68, v69);

  if (!v180)
  {
    (*(v174 + 8))(v175, v63);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_3_11();
  if ((OUTLINED_FUNCTION_7_12() & 1) == 0)
  {
    (*(v174 + 8))(v175, v63);
    goto LABEL_43;
  }

  v159 = v177;
  v70 = *MEMORY[0x277D5C2B8];
  v71 = sub_268568B20();
  OUTLINED_FUNCTION_5_10(v71, v72);

  if (v180)
  {
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_2_12();
    v158 = v74;
    if (v30)
    {
      v75 = 0;
    }

    else
    {
      v75 = v73;
    }

    v164 = v75;
  }

  else
  {
    sub_26850341C(v179, &qword_280282BE0, &unk_26856D8C0);
    v158 = 0;
    v164 = 0;
  }

  v76 = *MEMORY[0x277D5C2A8];
  v77 = sub_268568B20();
  OUTLINED_FUNCTION_5_10(v77, v78);

  if (v180)
  {
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_2_12();
    v157 = v80;
    if (v30)
    {
      v81 = 0;
    }

    else
    {
      v81 = v79;
    }

    v163 = v81;
  }

  else
  {
    sub_26850341C(v179, &qword_280282BE0, &unk_26856D8C0);
    v157 = 0;
    v163 = 0;
  }

  v82 = *MEMORY[0x277D5C290];
  v83 = sub_268568B20();
  OUTLINED_FUNCTION_5_10(v83, v84);

  if (v180)
  {
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_2_12();
    v156 = v86;
    if (v30)
    {
      v87 = 0;
    }

    else
    {
      v87 = v85;
    }

    v162 = v87;
  }

  else
  {
    sub_26850341C(v179, &qword_280282BE0, &unk_26856D8C0);
    v156 = 0;
    v162 = 0;
  }

  v88 = *MEMORY[0x277D5C2B0];
  v89 = sub_268568B20();
  OUTLINED_FUNCTION_5_10(v89, v90);

  if (v180)
  {
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_2_12();
    v155 = v92;
    if (v30)
    {
      v93 = 0;
    }

    else
    {
      v93 = v91;
    }

    v160 = v93;
  }

  else
  {
    sub_26850341C(v179, &qword_280282BE0, &unk_26856D8C0);
    v155 = 0;
    v160 = 0;
  }

  v94 = *MEMORY[0x277D5C278];
  v95 = sub_268568B20();
  OUTLINED_FUNCTION_5_10(v95, v96);

  if (v180)
  {
    OUTLINED_FUNCTION_3_11();
    if (swift_dynamicCast())
    {
      v97 = v177;
      v161 = [v177 integerValue];

      goto LABEL_68;
    }
  }

  else
  {
    sub_26850341C(v179, &qword_280282BE0, &unk_26856D8C0);
  }

  v161 = 0;
LABEL_68:
  v152 = v66;
  v98 = objc_opt_self();
  v99 = sub_26850310C(v33);

  v100 = sub_2685035CC(v99, v98);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v101 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v6 + 16))(v173, v101, v3);
  (*(v174 + 16))(v24, v175, v63);
  v151 = v100;
  v153 = v100;

  v102 = v164;

  v103 = v163;

  v104 = v162;

  v105 = v160;

  v154 = sub_2685689E0();
  v106 = sub_268568DD0();

  v162 = v104;
  v107 = v168;

  v163 = v103;

  v164 = v102;
  v108 = v170;

  v150 = v106;
  v109 = v106;
  v110 = v154;
  if (!os_log_type_enabled(v154, v109))
  {

    v134 = sub_268568070();
    OUTLINED_FUNCTION_0_9(v134);
    (*(v135 + 8))(a1);
    v119 = v171;
    (*(v174 + 8))(v24, v171);
    (*(v6 + 8))(v173, v3);
    v57 = v176;
    v118 = v152;
    v125 = v151;
    goto LABEL_86;
  }

  v111 = swift_slowAlloc();
  v149 = swift_slowAlloc();
  v179[0] = v149;
  *v111 = 136317698;
  *(v111 + 4) = sub_2684EABEC(v169, v108, v179);
  *(v111 + 12) = 2080;
  *(v111 + 14) = sub_2684EABEC(v167, v107, v179);
  *(v111 + 22) = 2080;
  sub_2685036B0();
  v112 = v171;
  v113 = sub_2685691A0();
  (*(v174 + 8))(v24, v112);
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_8_8();
  *(v111 + 24) = v113;
  *(v111 + 32) = 2080;
  if (v164)
  {
    v114 = v158;
  }

  else
  {
    v114 = 0;
  }

  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_8_8();
  *(v111 + 34) = v114;
  *(v111 + 42) = 2080;
  if (v163)
  {
    v115 = v157;
  }

  else
  {
    v115 = 0;
  }

  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_8_8();
  *(v111 + 44) = v115;
  *(v111 + 52) = 2080;
  if (v162)
  {
    v116 = v156;
  }

  else
  {
    v116 = 0;
  }

  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_8_8();
  *(v111 + 54) = v116;
  *(v111 + 62) = 2080;
  if (v105)
  {
    v117 = v155;
  }

  else
  {
    v117 = 0;
  }

  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_8_8();
  *(v111 + 64) = v117;
  *(v111 + 72) = 2048;
  v118 = v152;
  *(v111 + 74) = v152;
  *(v111 + 82) = 1024;
  *(v111 + 84) = v159;
  *(v111 + 88) = 2080;
  result = AFSiriAnnouncementPlatformGetName();
  v119 = v171;
  if (result)
  {
    v120 = result;
    v121 = sub_268568B20();
    v123 = v122;

    v124 = sub_2684EABEC(v121, v123, v179);

    *(v111 + 90) = v124;
    *(v111 + 98) = 2080;
    v125 = v151;
    v177 = v151;
    v126 = v153;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283170, qword_26856C670);
    v127 = sub_268568B70();
    v129 = sub_2684EABEC(v127, v128, v179);

    *(v111 + 100) = v129;
    v130 = v154;
    _os_log_impl(&dword_2684CA000, v154, v150, "ANDirectInvocation instantiated with appBundleID: %s, notificationId: %s, notificationDate: %s, notificationTitle: %s, notificationSubtitle: %s, notificationBody: %s, notificationThreadId: %s), burstIndex: %ld, isSameTypeAsLastAnnouncement: %{BOOL}d, announcePlatform: %s, announcePayload: %s", v111, 0x6Cu);
    v131 = v149;
    swift_arrayDestroy();
    MEMORY[0x26D61CB30](v131, -1, -1);
    MEMORY[0x26D61CB30](v111, -1, -1);

    v132 = sub_268568070();
    OUTLINED_FUNCTION_0_9(v132);
    (*(v133 + 8))(a1);
    (*(v6 + 8))(v173, v3);
    v57 = v176;
LABEL_86:
    v136 = v175;
    v137 = v172;
    v138 = v170;
    *v172 = v169;
    v137[1] = v138;
    v139 = v168;
    v137[2] = v167;
    v137[3] = v139;
    v165(v137 + v26[6], v136, v119);
    v140 = (v137 + v26[7]);
    v141 = v164;
    *v140 = v158;
    v140[1] = v141;
    v142 = (v137 + v26[8]);
    v143 = v163;
    *v142 = v157;
    v142[1] = v143;
    v144 = (v137 + v26[9]);
    v145 = v162;
    *v144 = v156;
    v144[1] = v145;
    v146 = (v137 + v26[10]);
    v147 = v160;
    *v146 = v155;
    v146[1] = v147;
    *(v137 + v26[11]) = v118;
    *(v137 + v26[12]) = v159;
    *(v137 + v26[13]) = v161;
    *(v137 + v26[14]) = v125;
    sub_26850364C(v137, v57);
    v56 = 0;
    return __swift_storeEnumTagSinglePayload(v57, v56, 1, v26);
  }

  __break(1u);
  return result;
}

double sub_2685030A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2685034A0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_2684EB820(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_26850310C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802831A0, &qword_26856C6B8);
    v2 = sub_2685690C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2684EB820(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2685039D0(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2685039D0(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2685039D0(v32, v33);
    v15 = *(v2 + 40);
    result = sub_268568F60();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_2685039D0(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ANDirectInvocation()
{
  result = qword_280283178;
  if (!qword_280283178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26850341C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_9(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_268503470@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_2685034A0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_268569260();
  sub_268568C00();
  v6 = sub_268569280();

  return sub_268503518(a1, a2, v6);
}

unint64_t sub_268503518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2685691C0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

id sub_2685035CC(uint64_t a1, void *a2)
{
  v3 = sub_268568AA0();

  v4 = [a2 announcePayloadFromUserData_];

  return v4;
}

uint64_t sub_26850364C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ANDirectInvocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2685036B0()
{
  result = qword_280283168;
  if (!qword_280283168)
  {
    sub_2685675E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283168);
  }

  return result;
}

uint64_t sub_26850371C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2685675E0();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2685037B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2685675E0();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_268503838()
{
  sub_2685675E0();
  if (v0 <= 0x3F)
  {
    sub_268503918();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AFSiriAnnouncementPlatform(319);
      if (v2 <= 0x3F)
      {
        sub_268503968();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_268503918()
{
  if (!qword_280283188)
  {
    v0 = sub_268568EB0();
    if (!v1)
    {
      atomic_store(v0, &qword_280283188);
    }
  }
}

void sub_268503968()
{
  if (!qword_280283190)
  {
    sub_2684D16C0(255, &qword_280283198, 0x277D5C208);
    v0 = sub_268568EB0();
    if (!v1)
    {
      atomic_store(v0, &qword_280283190);
    }
  }
}

_OWORD *sub_2685039D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_10()
{

  return sub_2684EABEC(v1, v0, (v2 - 120));
}

double OUTLINED_FUNCTION_5_10(uint64_t a1, uint64_t a2)
{

  return sub_2685030A0(a1, a2, v2, (v3 - 120));
}

double OUTLINED_FUNCTION_6_9(uint64_t a1, uint64_t a2)
{

  return sub_2685030A0(a1, a2, v2, (v3 - 120));
}

uint64_t OUTLINED_FUNCTION_7_12()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_8()
{
}

void *sub_268503A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = a1;
  return v3;
}

uint64_t sub_268503AA4()
{
  OUTLINED_FUNCTION_1_9();
  v1 = *(v0 + 40);
  sub_2684DEAFC(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {

    v2 = MEMORY[0x26D61C170](0, v1);
  }

  else
  {
    v2 = *(v1 + 32);
  }

  return v2;
}

uint64_t sub_268503B1C()
{
  OUTLINED_FUNCTION_1_9();
  v1 = *(v0 + 40);
  v2 = sub_2684DEAF0(v1);

  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return 0;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D61C170](i, v1);
      v5 = result;
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((sub_268541460() & 1) == 0)
    {

      return v5;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_268503BF8()
{
  v1 = v0;
  OUTLINED_FUNCTION_1_9();
  v2 = *(v0 + 40);
  v3 = sub_2684DEAF0(v2);

  do
  {
    if (!v3)
    {
      goto LABEL_11;
    }

    if (__OFSUB__(v3--, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v0 = MEMORY[0x26D61C170](v3, v2);
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v0 = *(v2 + 32 + 8 * v3);
    }

    v5 = sub_268541460();
  }

  while ((v5 & 1) == 0);

  v0 = *(v1 + 40);
  sub_2684DEAFC(v3, (v0 & 0xC000000000000001) == 0, v0);
  if ((v0 & 0xC000000000000001) != 0)
  {
LABEL_18:

    v3 = MEMORY[0x26D61C170](v3, v0);
LABEL_11:

    return v3;
  }

  v3 = *(v0 + 8 * v3 + 32);

  return v3;
}

uint64_t sub_268503D28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = sub_2684DEAF0(v5);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_11:
    v21[0] = a1;
    v21[1] = a2;
    MEMORY[0x28223BE20](v6);
    v19[2] = v21;
    v18 = sub_26855B7B0(sub_2684F3570, v19, v7);

    return !v18;
  }

  v8 = v6;
  v21[0] = MEMORY[0x277D84F90];
  v9 = v6 & ~(v6 >> 63);

  result = sub_2684DCF68(0, v9, 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v20 = a2;
    v11 = 0;
    v7 = v21[0];
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D61C170](v11, v5);
      }

      else
      {
        v12 = *(v5 + 8 * v11 + 32);
      }

      v14 = *(v12 + 32);
      v13 = *(v12 + 40);

      v21[0] = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2684DCF68(v15 > 1, v16 + 1, 1);
        v7 = v21[0];
      }

      ++v11;
      *(v7 + 16) = v16 + 1;
      v17 = v7 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
    }

    while (v8 != v11);

    a2 = v20;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_268503EE0()
{
  OUTLINED_FUNCTION_5();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2685689F0();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = type metadata accessor for ReadingRecord();
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268504038()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*(v0 + 32) + 32);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_2685040D0;

  return sub_268559770(120.0);
}

uint64_t sub_2685040D0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 136);
  v7 = *v0;
  *(*v0 + 144) = v2;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2685041C4()
{
  v112 = v0;
  v1 = 0;
  v2 = v0[18];
  v3 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[3];
  v110 = *(v2 + 16);
  v7 = (v6 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title);
  v8 = (v6 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle);
  v107 = (v6 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body);
  while (v110 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_55;
    }

    v9 = v0[15];
    sub_2684E6980(v0[18] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v1, v9);
    v10 = *v9 == *(v6 + 16) && *(v3 + 8) == *(v6 + 24);
    if (!v10 && (sub_2685691C0() & 1) == 0)
    {
      v11 = v0[15];
      goto LABEL_37;
    }

    v11 = v0[15];
    v12 = (v11 + v5[6]);
    v13 = v12[1];
    v14 = v7[1];
    if (v13)
    {
      if (!v14)
      {
        goto LABEL_37;
      }

      if (*v12 != *v7 || v13 != v14)
      {
        v16 = sub_2685691C0();
        v11 = v0[15];
        if ((v16 & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v14)
    {
      goto LABEL_37;
    }

    v17 = (v11 + v5[7]);
    v18 = v17[1];
    v19 = v8[1];
    if (v18)
    {
      if (!v19)
      {
        goto LABEL_37;
      }

      if (*v17 != *v8 || v18 != v19)
      {
        v21 = sub_2685691C0();
        v11 = v0[15];
        if ((v21 & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v19)
    {
      goto LABEL_37;
    }

    v22 = (v11 + v5[8]);
    v23 = v22[1];
    v24 = v107[1];
    if (v23)
    {
      if (v24)
      {
        v25 = *v22 == *v107 && v23 == v24;
        if (v25 || (v26 = sub_2685691C0(), v11 = v0[15], (v26 & 1) != 0))
        {
LABEL_45:
          v50 = v0[18];
          v51 = v0[16];

          sub_2684E6D48(v11, v51);
          if (qword_280282960 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v52 = v0[16];
          v53 = v0[14];
          v54 = v0[9];
          v55 = v0[5];
          v56 = v0[6];
          v57 = v0[3];
          v58 = __swift_project_value_buffer(v55, qword_28028B348);
          v108 = *(v56 + 16);
          v108(v54, v58, v55);
          sub_2684E6980(v52, v53);

          v59 = sub_2685689E0();
          v60 = sub_268568DD0();

          v61 = os_log_type_enabled(v59, v60);
          v62 = v0[14];
          if (v61)
          {
            v97 = v0[13];
            v99 = v0[10];
            v105 = v0[9];
            v101 = v0[6];
            v102 = v0[5];
            v63 = v0[3];
            v64 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            *v64 = 136315394;
            v0[2] = v63;
            type metadata accessor for AnnounceNotification();

            v65 = sub_268568B70();
            v67 = sub_2684EABEC(v65, v66, &v111);

            *(v64 + 4) = v67;
            *(v64 + 12) = 2080;
            sub_2684E6980(v62, v97);
            v68 = sub_268568B70();
            v70 = v69;
            sub_2684E69E4(v62);
            v71 = sub_2684EABEC(v68, v70, &v111);

            *(v64 + 14) = v71;
            _os_log_impl(&dword_2684CA000, v59, v60, "NotificationStateManager isDuplicateNotificationContent | new notification: %s, last notification record: %s", v64, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_2();

            v72 = v105;
            v106 = *(v101 + 8);
            v106(v72, v102);
          }

          else
          {
            v73 = v0[9];
            v74 = v0[5];
            v75 = v0[6];

            sub_2684E69E4(v62);
            v106 = *(v75 + 8);
            v106(v73, v74);
          }

          v76 = v0[16];
          v77 = v0[12];
          v78 = v0[3];
          v108(v0[8], v58, v0[5]);
          sub_2684E6980(v76, v77);

          v79 = sub_2685689E0();
          v80 = sub_268568DC0();

          v81 = os_log_type_enabled(v79, v80);
          v82 = v0[16];
          v83 = v0[12];
          if (v81)
          {
            v98 = v0[10];
            v109 = v0[8];
            v103 = v0[6];
            v104 = v0[5];
            v100 = v80;
            v84 = v0[3];
            v85 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            *v85 = 136315394;
            sub_2685675E0();
            sub_2685036B0();
            v86 = sub_2685691A0();
            v88 = sub_2684EABEC(v86, v87, &v111);

            *(v85 + 4) = v88;
            *(v85 + 12) = 2080;
            v89 = v83 + *(v98 + 20);
            v90 = sub_2685691A0();
            v92 = v91;
            sub_2684E69E4(v83);
            v93 = sub_2684EABEC(v90, v92, &v111);

            *(v85 + 14) = v93;
            _os_log_impl(&dword_2684CA000, v79, v100, "NotificationStateManager isDuplicateNotificationContent | new notification timestamp: %s is a duplicate of last notification record timestamp: %s", v85, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_2();

            v106(v109, v104);
          }

          else
          {
            v94 = v0[8];
            v95 = v0[5];
            v96 = v0[6];

            sub_2684E69E4(v83);
            v106(v94, v95);
          }

          sub_2684E69E4(v82);
          goto LABEL_42;
        }
      }
    }

    else if (!v24)
    {
      goto LABEL_45;
    }

LABEL_37:
    sub_2684E69E4(v11);
    ++v1;
  }

  v27 = v0[18];

  if (qword_280282960 == -1)
  {
    goto LABEL_39;
  }

LABEL_55:
  OUTLINED_FUNCTION_0_0();
LABEL_39:
  v29 = v0[6];
  v28 = v0[7];
  v30 = v0[5];
  v31 = __swift_project_value_buffer(v30, qword_28028B348);
  (*(v29 + 16))(v28, v31, v30);
  v32 = sub_2685689E0();
  v33 = sub_268568DC0();
  v34 = OUTLINED_FUNCTION_13_0(v33);
  v36 = v0[6];
  v35 = v0[7];
  v37 = v0[5];
  if (v34)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_2684CA000, v32, v33, "NotificationStateManager isDuplicateNotificationContent | no matching record, not a duplicate notification", v38, 2u);
    OUTLINED_FUNCTION_2();
  }

  (*(v36 + 8))(v35, v37);
LABEL_42:
  v39 = v110 != v1;
  v41 = v0[15];
  v40 = v0[16];
  v43 = v0[13];
  v42 = v0[14];
  v44 = v0[12];
  v46 = v0[8];
  v45 = v0[9];
  v47 = v0[7];

  v48 = v0[1];

  return v48(v39);
}